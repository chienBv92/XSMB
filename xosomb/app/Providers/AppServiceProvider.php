<?php

namespace App\Providers;

use App\Models\Province;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        view()->composer('client.layout.menu_left', function ($view) {
            $query = Province::where('del_flg', 0);
            $queryMB = $query->where('region', 1)->where('type', 0)->orderBy('parent_id', 'ASC')->get();
            $queryMT = $query->where('region', 2)->where('type', 0)->orderBy('parent_id', 'ASC')->get();
            $queryMN = $query->where('region', 3)->where('type', 0)->orderBy('parent_id', 'ASC')->get();
            $queryXSDT = $query->where('type', 1)->orderBy('parent_id', 'ASC')->get();

            //$province_all = $query->get();
            $view->with(['provinceMB' => $queryMB,
                'provinceMT' => $queryMT,
                'provinceMN' => $queryMN,
                'provinceDT' => $queryXSDT]);
        });
    }
}
