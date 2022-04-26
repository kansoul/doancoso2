<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\ProductType;
use App\Cart;
use Session;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('page.trangchu',function($view){
            $loai_sp1 = ProductType::where('description',1)->paginate(10);
            
            $view->with('loai_sp1',$loai_sp1);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp2 = ProductType::where('description',2)->paginate(10);
            
            $view->with('loai_sp2',$loai_sp2);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp3 = ProductType::where('description',3)->paginate(10);
            
            $view->with('loai_sp3',$loai_sp3);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp4 = ProductType::where('description',4)->paginate(10);
            
            $view->with('loai_sp4',$loai_sp4);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp5 = ProductType::where('description',5)->paginate(10);
            
            $view->with('loai_sp5',$loai_sp5);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp6 = ProductType::where('description',6)->paginate(10);
            
            $view->with('loai_sp6',$loai_sp6);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp7 = ProductType::where('description',7)->paginate(10);
            
            $view->with('loai_sp7',$loai_sp7);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp8 = ProductType::where('description',8)->paginate(10);
            
            $view->with('loai_sp8',$loai_sp8);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp9 = ProductType::where('description',9)->paginate(10);
            
            $view->with('loai_sp9',$loai_sp9);
        });
        view()->composer('page.trangchu',function($view){
            $loai_sp10 = ProductType::where('description',10)->paginate(10);
            
            $view->with('loai_sp10',$loai_sp10);
        });

        view()->composer(['page.trangchu','header','page.dat_hang'],function($view){
            if(Session('cart')){
                $oldCart = Session::get('cart');
                $cart = new Cart($oldCart);
                $view->with(['cart'=>Session::get('cart'), 'product_cart'=>$cart->items,'totalPrice'=>$cart->totalPrice,'totalQty'=>$cart->totalQty]);
            }
        });


    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
