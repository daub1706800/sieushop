<?php

use App\Models\Company;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes(['verify' => true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Company::getTenant();

Route::prefix('/')->group(function () {
    // phan nay danh cho giao dien
    Route::get('/', [
        'as' => 'home',
        'uses' => 'App\Http\Controllers\GiaoDienController@home'
    ]);
    Route::get('product', [
        'as' => 'frontend.product.index',
        'uses' => 'App\Http\Controllers\GiaoDienController@index_product'
    ]);
    Route::get('contact', [
        'as' => 'contact',
        'uses' => 'App\Http\Controllers\GiaoDienController@contact'
    ]);
    Route::get('detail/{id}', [
        'as' => 'detail',
        'uses' => 'App\Http\Controllers\GiaoDienController@detail'
    ]);
    Route::get('detailvideo/{id}', [
        'as' => 'detailvideo',
        'uses' => 'App\Http\Controllers\GiaoDienController@detailvideo'
    ]);
    Route::get('tinchuyenmuc/{id}', [
        'as' => 'tinchuyenmuc',
        'uses' => 'App\Http\Controllers\GiaoDienController@tinchuyenmuc'
    ]);
    Route::get('loadvideo', [
        'as' => 'loadvideo',
        'uses' => 'App\Http\Controllers\GiaoDienController@loadvideo'
    ]);
    Route::get('tinvideo', [
        'as' => 'tinvideo',
        'uses' => 'App\Http\Controllers\GiaoDienController@tinvideo'
    ]);
    // phan nay danh cho giao dien

    // Route::get('contact', [
    //     'as' => 'contact',
    //     'uses' => function(){
    //         return view('frontend.contact.contact');
    //     }
    // ]);

    Route::get('review', [
        'as' => 'review',
        'uses' => function(){
            return view('frontend.review.review');
        }]);

    Route::get('video', [
        'as' => 'video',
        'uses' => function(){
            return view('frontend.video.video');
        }
    ]);

    // Route::get('gadget', [
    //     'as' => 'gadget',
    //     'uses' => function(){
    //         return view('frontend.gadget.gadget');
    //     }
    // ]);

    // Route::get('detail', [
    //     'as' => 'detail',
    //     'uses' => function(){
    //         return view('frontend.detail.detail');
    //     }
    // ]);
});

Route::get('count-badge', [
    'as' => 'count-badge',
    'uses' => 'App\Http\Controllers\AdminController@count_badge'
]);

/* Route Administrator */
Route::middleware(['auth', 'verified', 'can:is-admin'])->group(function () {
    Route::prefix('admin')->group(function () {
        Route::get('/', function () {
            return view('admin.home');
        })->name('admin.home');

        /* Module Sở ngành */
        Route::prefix('department')->group(function () {
            Route::get('/', [
                'as'   => 'department.index',
                'uses' => 'App\Http\Controllers\DepartmentController@index'
            ]);
            Route::post('/store', [
                'as'   => 'department.store',
                'uses' => 'App\Http\Controllers\DepartmentController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'department.edit',
                'uses' => 'App\Http\Controllers\DepartmentController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'department.update',
                'uses' => 'App\Http\Controllers\DepartmentController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'department.delete',
                'uses' => 'App\Http\Controllers\DepartmentController@delete'
            ]);
            Route::post('/view', [
                'as'   => 'department.view',
                'uses' => 'App\Http\Controllers\DepartmentController@view'
            ]);
        });
    
        /* Module Lĩnh vực */
        Route::prefix('field')->group(function () {
            Route::get('/', [
                'as'   => 'field.index',
                'uses' => 'App\Http\Controllers\FieldController@index'
            ]);
            Route::post('/store', [
                'as'   => 'field.store',
                'uses' => 'App\Http\Controllers\FieldController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'field.edit',
                'uses' => 'App\Http\Controllers\FieldController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'field.update',
                'uses' => 'App\Http\Controllers\FieldController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'field.delete',
                'uses' => 'App\Http\Controllers\FieldController@delete'
            ]);
        });
    
        /* Module Chuyên mục */
        Route::prefix('category')->group(function () {
            Route::get('/', [
                'as'   => 'category.index',
                'uses' => 'App\Http\Controllers\CategoryController@index'
            ]);
            Route::post('/store', [
                'as'   => 'category.store',
                'uses' => 'App\Http\Controllers\CategoryController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'category.edit',
                'uses' => 'App\Http\Controllers\CategoryController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'category.update',
                'uses' => 'App\Http\Controllers\CategoryController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'category.delete',
                'uses' => 'App\Http\Controllers\CategoryController@delete'
            ]);
        });
    
        /* Module Công ty */
        Route::prefix('company')->group(function () {
            Route::get('/', [
                'as'   => 'company.index',
                'uses' => 'App\Http\Controllers\CompanyController@index'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'company.edit',
                'uses' => 'App\Http\Controllers\CompanyController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'company.update',
                'uses' => 'App\Http\Controllers\CompanyController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'company.delete',
                'uses' => 'App\Http\Controllers\CompanyController@delete'
            ]);
            Route::post('/view', [
                'as'   => 'company.view',
                'uses' => 'App\Http\Controllers\CompanyController@view'
            ]);
        });
    
        /* Module Tin tức */
        Route::prefix('news')->group(function () {
            Route::get('/', [
                'as'   => 'news.index',
                'uses' => 'App\Http\Controllers\NewsController@index'
            ]);
            Route::get('/add', [
                'as'   => 'news.add',
                'uses' => 'App\Http\Controllers\NewsController@add'
            ]);
            Route::post('/store', [
                'as'   => 'news.store',
                'uses' => 'App\Http\Controllers\NewsController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'news.edit',
                'uses' => 'App\Http\Controllers\NewsController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'news.update',
                'uses' => 'App\Http\Controllers\NewsController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'news.delete',
                'uses' => 'App\Http\Controllers\NewsController@delete'
            ]);
            Route::get('/duyet/{id}', [
                'as'   => 'news.update-duyet',
                'uses' => 'App\Http\Controllers\NewsController@update_duyet'
            ]);
            Route::get('/xuatban/{id}', [
                'as'   => 'news.update-xuatban',
                'uses' => 'App\Http\Controllers\NewsController@update_xuatban'
            ]);
            Route::post('/history', [
                'as'   => 'news.history',
                'uses' => 'App\Http\Controllers\NewsController@history'
            ]);
            Route::get('/remove/{id}', [
                'as'   => 'news.remove',
                'uses' => 'App\Http\Controllers\NewsController@remove'
            ]);
            Route::post('/view', [
                'as'   => 'news.view',
                'uses' => 'App\Http\Controllers\NewsController@view'
            ]);
            Route::get('/log/{id}', [
                'as'   => 'news.log',
                'uses' => 'App\Http\Controllers\NewsController@log'
            ]);
            Route::get('/change-status', [
                'as'   => 'news.change-status',
                'uses' => 'App\Http\Controllers\NewsController@change_status'
            ]);
            Route::get('/delete-video', [
                'as'   => 'news.delete-video',
                'uses' => 'App\Http\Controllers\NewsController@delete_video'
            ]);
        });

        /* Module Video tin tức */
        Route::prefix('video')->group(function () {
            Route::get('/', [
                'as'   => 'admin.video.index',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@index'
            ]);
            Route::get('/add', [
                'as'   => 'admin.video.add',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@add'
            ]);
            Route::post('/store', [
                'as'   => 'admin.video.store',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'admin.video.edit',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'admin.video.update',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'admin.video.delete',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@delete'
            ]);
            Route::get('/duyet/{id}', [
                'as'   => 'admin.video.update-duyet',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@update_duyet'
            ]);
            Route::get('/xuatban/{id}', [
                'as'   => 'admin.video.update-xuatban',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@update_xuatban'
            ]);
            Route::post('/history', [
                'as'   => 'admin.video.history',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@history'
            ]);
            Route::get('/remove/{id}', [
                'as'   => 'admin.video.remove',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@remove'
            ]);
            Route::post('/view', [
                'as'   => 'admin.video.view',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@view'
            ]);
            Route::get('/log/{id}', [
                'as'   => 'admin.video.log',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@log'
            ]);
            Route::get('/change-status', [
                'as'   => 'admin.video.change-status',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@change_status'
            ]);
            Route::get('/delete-video', [
                'as'   => 'admin.video.delete-video',
                'uses' => 'App\Http\Controllers\AdminNewsVideoController@delete_video'
            ]);
        });

        /* Module Quảng cáo */
        Route::prefix('advertise')->group(function () {
            Route::get('/', [
                'as' => 'advertise.index',
                'uses' => 'App\Http\Controllers\AdvertiseController@index'
            ]);
            Route::get('/add', [
                'as' => 'advertise.add',
                'uses' => 'App\Http\Controllers\AdvertiseController@add'
            ]);
            Route::post('/store', [
                'as' => 'advertise.store',
                'uses' => 'App\Http\Controllers\AdvertiseController@store'
            ]);
            Route::get('/edit/{id}', [
                'as' => 'advertise.edit',
                'uses' => 'App\Http\Controllers\AdvertiseController@edit'
            ]);
            Route::post('/update{id}', [
                'as' => 'advertise.update',
                'uses' => 'App\Http\Controllers\AdvertiseController@update'
            ]);
            Route::get('/delete/{id}', [
                'as' => 'advertise.delete',
                'uses' => 'App\Http\Controllers\AdvertiseController@delete'
            ]);
            Route::get('/change-status', [
                'as' => 'advertise.change-status',
                'uses' => 'App\Http\Controllers\AdvertiseController@change_status'
            ]);
            Route::post('view', [
                'as' => 'advertise.view',
                'uses' => 'App\Http\Controllers\AdvertiseController@view'
            ]);
        });

        /* Module Kho */
        Route::prefix('storages')->group(function () {
            Route::get('/', [
                'as'   => 'admin.storage.index',
                'uses' => 'App\Http\Controllers\AdminStorageController@index'
            ]);
            Route::post('/store', [
                'as'   => 'admin.storage.store',
                'uses' => 'App\Http\Controllers\AdminStorageController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'admin.storage.edit',
                'uses' => 'App\Http\Controllers\AdminStorageController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'admin.storage.update',
                'uses' => 'App\Http\Controllers\AdminStorageController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'admin.storage.delete',
                'uses' => 'App\Http\Controllers\AdminStorageController@delete'
            ]);
            Route::post('/view', [
                'as'   => 'admin.storage.view',
                'uses' => 'App\Http\Controllers\AdminStorageController@view'
            ]);
        });
    
        /* Module Loại sản phẩm */
        Route::prefix('productcategory')->group(function () {
            Route::get('/', [
                'as'   => 'admin.productcategory.index',
                'uses' => 'App\Http\Controllers\AdminProductCategoryController@index'
            ]);
            Route::post('/store', [
                'as'   => 'admin.productcategory.store',
                'uses' => 'App\Http\Controllers\AdminProductCategoryController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'admin.productcategory.edit',
                'uses' => 'App\Http\Controllers\AdminProductCategoryController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'admin.productcategory.update',
                'uses' => 'App\Http\Controllers\AdminProductCategoryController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'admin.productcategory.delete',
                'uses' => 'App\Http\Controllers\AdminProductCategoryController@delete'
            ]);
        });
    
        /* Module Sản phẩm */
        Route::prefix('product')->group(function () {
            Route::get('/', [
                'as'   => 'admin.product.index',
                'uses' => 'App\Http\Controllers\AdminProductController@index'
            ]);
            Route::get('/add', [
                'as'   => 'admin.product.add',
                'uses' => 'App\Http\Controllers\AdminProductController@add'
            ]);
            Route::post('/store', [
                'as'   => 'admin.product.store',
                'uses' => 'App\Http\Controllers\AdminProductController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'admin.product.edit',
                'uses' => 'App\Http\Controllers\AdminProductController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'admin.product.update',
                'uses' => 'App\Http\Controllers\AdminProductController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'admin.product.delete',
                'uses' => 'App\Http\Controllers\AdminProductController@delete'
            ]);
            Route::post('/view', [
                'as'   => 'admin.product.view',
                'uses' => 'App\Http\Controllers\AdminProductController@view'
            ]);
            Route::post('/input-change', [
                'as'   => 'admin.product.input-change',
                'uses' => 'App\Http\Controllers\AdminProductController@input_change'
            ]);
        });
    
        /* Module Giai đoạn sản phẩm */
        Route::prefix('stage')->group(function () {
            Route::get('/{product_id}', [
                'as'   => 'admin.stage.index',
                'uses' => 'App\Http\Controllers\AdminStageController@index'
            ]);
            Route::post('/{product_id}', [
                'as'   => 'admin.stage.store',
                'uses' => 'App\Http\Controllers\AdminStageController@store',
            ]);
            Route::get('/edit/{id}/{product_id}', [
                'as'   => 'admin.stage.edit',
                'uses' => 'App\Http\Controllers\AdminStageController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'admin.stage.update',
                'uses' => 'App\Http\Controllers\AdminStageController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'admin.stage.delete',
                'uses' => 'App\Http\Controllers\AdminStageController@delete'
            ]);
            Route::get('/stage-info/{stage_id}/{product_id}', [
                'as'   => 'admin.stage-info.index',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_index'
            ]);
            Route::get('/stage-info/add/{stage_id}/{product_id}', [
                'as'   => 'admin.stage-info.add',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_add'
            ]);
            Route::post('/store-info/store/{stage_id}/{product_id}', [
                'as'   => 'admin.stage-info.store',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_store',
            ]);
            Route::get('/stage-info/edit/{stageInfo_id}/{stage_id}/{product_id}', [
                'as'   => 'admin.stage-info.edit',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_edit',
            ]);
            Route::post('/stage-info/update/{stageInfo_id}/{stage_id}/{product_id}', [
                'as'   => 'admin.stage-info.update',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_update',
            ]);
            Route::get('/stage-info/delete/{stageInfo_id}/{stage_id}/{product_id}', [
                'as'   => 'admin.stage-info.delete',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_delete',
            ]);
            Route::get('/stage/ajax/count-stage-info', [
                'as' => 'admin.stage-info.count',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_count',
            ]);
            Route::get('/ajax/render-stage-info', [
                'as' => 'admin.stage-info.render',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_render',
            ]);
            Route::get('/ajax/render-add-stage-info', [
                'as' => 'admin.stage-info.render-add',
                'uses' => 'App\Http\Controllers\AdminStageController@stage_info_render_add',
            ]);
        });
    
        /* Module Tài khoản */
        Route::prefix('account')->group(function () {
            Route::get('/', [
                'as'   => 'account.index',
                'uses' => 'App\Http\Controllers\AccountController@index'
            ]);
            Route::post('/store', [
                'as'   => 'account.store',
                'uses' => 'App\Http\Controllers\AccountController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'account.edit',
                'uses' => 'App\Http\Controllers\AccountController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'account.update',
                'uses' => 'App\Http\Controllers\AccountController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'account.delete',
                'uses' => 'App\Http\Controllers\AccountController@delete'
            ]);
            Route::get('/verify/{id}', [
                'as'   => 'account.verify',
                'uses' => 'App\Http\Controllers\AccountController@verify'
            ]);
            Route::get('/delete-role', [
                'as'   => 'account.delete-role',
                'uses' => 'App\Http\Controllers\AccountController@delete_role'
            ]);
            Route::get('/change-role', [
                'as'   => 'account.change-role',
                'uses' => 'App\Http\Controllers\AccountController@change_role'
            ]);
        });
    
        /* Module Vai trò */
        Route::prefix('role')->group(function () {
            Route::get('/', [
                'as'   => 'role.index',
                'uses' => 'App\Http\Controllers\RoleController@index'
            ]);
            Route::post('/store', [
                'as'   => 'role.store',
                'uses' => 'App\Http\Controllers\RoleController@store'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'role.edit',
                'uses' => 'App\Http\Controllers\RoleController@edit'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'role.update',
                'uses' => 'App\Http\Controllers\RoleController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'role.delete',
                'uses' => 'App\Http\Controllers\RoleController@delete'
            ]);
        });
    
        /* Module Quyền */
        Route::prefix('permission')->group(function () {
            Route::get('/add', [
                'as'   => 'permission.add',
                'uses' => 'App\Http\Controllers\PermissionController@add'
            ]);
            Route::post('/store', [
                'as'   => 'permission.store',
                'uses' => 'App\Http\Controllers\PermissionController@store'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'permission.delete',
                'uses' => 'App\Http\Controllers\PermissionController@delete'
            ]);
            Route::get('/change-status-on', [
                'as'   => 'permission.change-status-on',
                'uses' => 'App\Http\Controllers\PermissionController@change_status_on'
            ]);
            Route::get('/change-status-off', [
                'as'   => 'permission.change-status-off',
                'uses' => 'App\Http\Controllers\PermissionController@change_status_off'
            ]);
            Route::get('/check-permission-checked', [
                'as'   => 'permission.check-permission-checked',
                'uses' => 'App\Http\Controllers\PermissionController@check_permission_checked'
            ]);
            Route::post('/update', [
                'as'   => 'permission.update',
                'uses' => 'App\Http\Controllers\PermissionController@update'
            ]);
            Route::get('/check-permission', [
                'as'   => 'permission.check-permission',
                'uses' => 'App\Http\Controllers\PermissionController@check_permission'
            ]);
        });
    }); 
});

/* Route Company */
Route::middleware(['auth', 'verified', 'can:is-company'])->group(function () {
    Route::prefix('dasboard')->group(function() {
        Route::get('/', function () {
            return view('admin.home');
        })->name('dasboard.home');
    
        Route::get('verify-email', function () {
            return view('auth.verify');
        })->name('dasboard.verify');
    
        /* Module Công ty */
        Route::prefix('company')->group(function() {
            Route::get('/', [
                'as'   => 'profile.company.index',
                'uses' => 'App\Http\Controllers\ProfileController@index_company',
            ]);
            Route::get('/create', [
                'as'   => 'profile.company.create',
                'uses' => 'App\Http\Controllers\ProfileController@create_company',
            ]);
            Route::post('/store', [
                'as'   => 'profile.company.store',
                'uses' => 'App\Http\Controllers\ProfileController@store_company',
            ]);
            Route::post('/update/{id}', [
                'as'   => 'profile.company.update',
                'uses' => 'App\Http\Controllers\ProfileController@update_company',
                'middleware' => 'can:company-update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'profile.company.delete',
                'uses' => 'App\Http\Controllers\ProfileController@delete_company',
                'middleware' => 'can:company-delete'
            ]);
        });
    
        /* Module Tin tức */
        Route::prefix('news')->group(function () {
            Route::get('/', [
                'as' => 'tintuc.Tintuc',
                'uses' => 'App\Http\Controllers\TintucController@printTintuc',
                'middleware' => 'can:news-list'
            ]);
            Route::get('/history/{id}', [
                'as' => 'tintuc.viewhistoryTintuc',
                'uses' => 'App\Http\Controllers\TintucController@viewhistoryTintuc',
            ]);
            Route::get('/log/{id}', [
                'as' => 'tintuc.viewlogTintuc',
                'uses' => 'App\Http\Controllers\TintucController@viewlogTintuc',
            ]);
            Route::get('/add-news', [
                'as' => 'tintuc.addTintuc',
                'uses' => 'App\Http\Controllers\TintucController@addTintuc',
                'middleware' => 'can:news-add'
            ]);
            Route::post('/add-news', [
                'as' => 'tintuc.doaddTintuc',
                'uses' => 'App\Http\Controllers\TintucController@doaddTintuc',
                'middleware' => 'can:news-add'
            ]);
            Route::get('/delete-news/{id}', [
                'as' => 'tintuc.deleteTintuc',
                'uses' => 'App\Http\Controllers\TintucController@deleteTintuc',
                'middleware' => 'can:news-delete'
            ]);
            Route::get('/edit/{id}', [
                'as' => 'tintuc.detailTintuc',
                'uses' => 'App\Http\Controllers\TintucController@detailTintuc',
                'middleware' => 'can:news-view'
            ]);
            Route::post('/edit', [
                'as' => 'tintuc.editTintuc',
                'uses' => 'App\Http\Controllers\TintucController@editTintuc',
                'middleware' => 'can:news-update'
            ]);
            Route::post('/editloai', [
                'as' => 'tintuc.editloaiTintuc',
                'uses' => 'App\Http\Controllers\TintucController@editloaiTintuc',
                'middleware' => 'can:news-update'
            ]);
            // Route::get('/delete-video/{id}', [
            //     'as' => 'tintuc.deleteVideo',
            //     'uses' => 'App\Http\Controllers\TintucController@deleteVideo',
            //     'middleware' => 'can:news-delete'
            // ]);
            // Route::post('/add-video', [
            //     'as' => 'tintuc.addVideo',
            //     'uses' => 'App\Http\Controllers\TintucController@addVideo',
            //     'middleware' => 'can:news-update'
            // ]);
            Route::get('/accept-news', [
                'as' => 'tintuc.acceptTintuc',
                'uses' => 'App\Http\Controllers\TintucController@acceptTintuc',
                'middleware' => 'can:news-browse'
            ]);
            Route::get('/post-news', [
                'as' => 'tintuc.postTintuc',
                'uses' => 'App\Http\Controllers\TintucController@postTintuc',
                'middleware' => 'can:news-publish'
            ]);
            Route::get('/remove-news', [
                'as' => 'tintuc.removeTintuc',
                'uses' => 'App\Http\Controllers\TintucController@removeTintuc',
            ]);
            Route::get('/view/{id}', [
                'as' => 'tintuc.viewTintuc',
                'uses' => 'App\Http\Controllers\TintucController@viewTintuc',
                'middleware' => 'can:news-view'
            ]);
        });

        /* Module Video tin tức */
        Route::prefix('video')->group(function () {
            Route::get('/', [
                'as'   => 'video.index',
                'uses' => 'App\Http\Controllers\NewsVideoController@index',
                'middleware' => 'can:newsvideo-list'
            ]);
            Route::get('/add', [
                'as'   => 'video.add',
                'uses' => 'App\Http\Controllers\NewsVideoController@add',
                'middleware' => 'can:newsvideo-add'
            ]);
            Route::post('/store', [
                'as'   => 'video.store',
                'uses' => 'App\Http\Controllers\NewsVideoController@store',
                'middleware' => 'can:newsvideo-add'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'video.edit',
                'uses' => 'App\Http\Controllers\NewsVideoController@edit',
                'middleware' => 'can:newsvideo-view'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'video.update',
                'uses' => 'App\Http\Controllers\NewsVideoController@update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'video.delete',
                'uses' => 'App\Http\Controllers\NewsVideoController@delete',
                'middleware' => 'can:newsvideo-delete'
            ]);
            Route::get('/duyet/{id}', [
                'as'   => 'video.update-duyet',
                'uses' => 'App\Http\Controllers\NewsVideoController@update_duyet',
                'middleware' => 'can:newsvideo-browse'
            ]);
            Route::get('/xuatban/{id}', [
                'as'   => 'video.update-xuatban',
                'uses' => 'App\Http\Controllers\NewsVideoController@update_xuatban',
                'middleware' => 'can:newsvideo-publish'
            ]);
            Route::post('/history', [
                'as'   => 'video.history',
                'uses' => 'App\Http\Controllers\NewsVideoController@history'
            ]);
            Route::get('/remove/{id}', [
                'as'   => 'video.remove',
                'uses' => 'App\Http\Controllers\NewsVideoController@remove',
                'middleware' => 'can:newsvideo-recall'
            ]);
            Route::post('/view', [
                'as'   => 'video.view',
                'uses' => 'App\Http\Controllers\NewsVideoController@view'
            ]);
            Route::get('/log/{id}', [
                'as'   => 'video.log',
                'uses' => 'App\Http\Controllers\NewsVideoController@log'
            ]);
            Route::get('/change-status', [
                'as'   => 'video.change-status',
                'uses' => 'App\Http\Controllers\NewsVideoController@change_status'
            ]);
            Route::get('/delete-video', [
                'as'   => 'video.delete-video',
                'uses' => 'App\Http\Controllers\NewsVideoController@delete_video'
            ]);
        });
    
        /* Module Thông tin */
        Route::prefix('profile')->group(function () {
            Route::get('/', [
                'as'   => 'profile.index',
                'uses' => 'App\Http\Controllers\ProfileController@index',
            ]);
            Route::post('/change/{id}', [
                'as'   => 'profile.change',
                'uses' => 'App\Http\Controllers\ProfileController@changeAvatar',
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'profile.edit',
                'uses' => 'App\Http\Controllers\ProfileController@edit',
            ]);
            Route::post('/update/{id}', [
                'as'   => 'profile.update',
                'uses' => 'App\Http\Controllers\ProfileController@update',
            ]);
        });
    
        /* Module Tài khoản */
        Route::prefix('account')->group(function () {
            Route::get('/', [
                'as'   => 'profile.account.index',
                'uses' => 'App\Http\Controllers\ProfileController@index_account',
            ]);
            Route::post('/store', [
                'as'   => 'profile.account.store',
                'uses' => 'App\Http\Controllers\ProfileController@store_account',
                'middleware' => 'can:account-add'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'profile.account.edit',
                'uses' => 'App\Http\Controllers\ProfileController@edit_account',
                'middleware' => 'can:account-view'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'profile.account.update',
                'uses' => 'App\Http\Controllers\ProfileController@update_account',
                'middleware' => 'can:account-update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'profile.account.delete',
                'uses' => 'App\Http\Controllers\ProfileController@delete_account',
                'middleware' => 'can:account-delete'
            ]);
            Route::get('/verify/{id}', [
                'as'   => 'profile.account.verify',
                'uses' => 'App\Http\Controllers\ProfileController@verify'
            ]);
            Route::get('/delete-role', [
                'as'   => 'profile.account.delete-role',
                'uses' => 'App\Http\Controllers\ProfileController@delete_role_user'
            ]);
        });
    
        /* Module Vai trò */
        Route::prefix('role')->group(function () {
            Route::get('/', [
                'as'   => 'profile.role.index',
                'uses' => 'App\Http\Controllers\ProfileController@index_role',
            ]);
            Route::post('/store', [
                'as'   => 'profile.role.store',
                'uses' => 'App\Http\Controllers\ProfileController@store_role',
                'middleware' => 'can:role-add'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'profile.role.edit',
                'uses' => 'App\Http\Controllers\ProfileController@edit_role',
                'middleware' => 'can:role-view'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'profile.role.update',
                'uses' => 'App\Http\Controllers\ProfileController@update_role',
                'middleware' => 'can:role-update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'profile.role.delete',
                'uses' => 'App\Http\Controllers\ProfileController@delete_role',
                'middleware' => 'can:role-delete'
            ]);
        });
    
        /* Module Kho */
        Route::prefix('storage')->group(function () {
            Route::get('/', [
                'as'   => 'storage.index',
                'uses' => 'App\Http\Controllers\StorageController@index',
            ]);
            Route::post('/store', [
                'as'   => 'storage.store',
                'uses' => 'App\Http\Controllers\StorageController@store',
                'middleware' => 'can:storage-add'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'storage.edit',
                'uses' => 'App\Http\Controllers\StorageController@edit',
                'middleware' => 'can:storage-view'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'storage.update',
                'uses' => 'App\Http\Controllers\StorageController@update',
                'middleware' => 'can:storage-update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'storage.delete',
                'uses' => 'App\Http\Controllers\StorageController@delete',
                'middleware' => 'can:storage-delete'
            ]);
            Route::post('/view', [
                'as'   => 'storage.view',
                'uses' => 'App\Http\Controllers\StorageController@view',
            ]);
        });
    
        /* Module Loại sản phẩm */
        Route::prefix('productcategory')->group(function () {
            Route::get('/', [
                'as'   => 'productcategory.index',
                'uses' => 'App\Http\Controllers\ProductCategoryController@index',
            ]);
            Route::post('/store', [
                'as'   => 'productcategory.store',
                'uses' => 'App\Http\Controllers\ProductCategoryController@store',
                'middleware' => 'can:procat-add'
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'productcategory.edit',
                'uses' => 'App\Http\Controllers\ProductCategoryController@edit',
                'middleware' => 'can:procat-view'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'productcategory.update',
                'uses' => 'App\Http\Controllers\ProductCategoryController@update',
                'middleware' => 'can:procat-update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'productcategory.delete',
                'uses' => 'App\Http\Controllers\ProductCategoryController@delete',
                'middleware' => 'can:procat-delete'
            ]);
        });
    
        /* Module Sản phẩm */
        Route::prefix('product')->group(function () {
            Route::get('/', [
                'as'   => 'product.index',
                'uses' => 'App\Http\Controllers\ProductController@index',
            ]);
            Route::get('/add', [
                'as'   => 'product.add',
                'uses' => 'App\Http\Controllers\ProductController@add',
                'middleware' => 'can:product-add'
            ]);
            Route::post('/store', [
                'as'   => 'product.store',
                'uses' => 'App\Http\Controllers\ProductController@store',
            ]);
            Route::get('/edit/{id}', [
                'as'   => 'product.edit',
                'uses' => 'App\Http\Controllers\ProductController@edit',
                'middleware' => 'can:product-view'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'product.update',
                'uses' => 'App\Http\Controllers\ProductController@update',
                'middleware' => 'can:product-update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'product.delete',
                'uses' => 'App\Http\Controllers\ProductController@delete',
                'middleware' => 'can:product-delete'
            ]);
            Route::post('/view', [
                'as'   => 'product.view',
                'uses' => 'App\Http\Controllers\ProductController@view',
            ]);
        });
    
        /* Module Giai đoạn sản phẩm */
        Route::prefix('stage')->group(function () {
            Route::get('/{product_id}', [
                'as'   => 'stage.index',
                'uses' => 'App\Http\Controllers\StageController@index',
            ]);
            Route::post('/{product_id}', [
                'as'   => 'stage.store',
                'uses' => 'App\Http\Controllers\StageController@store',
            ]);
            Route::get('/edit/{id}/{product_id}', [
                'as'   => 'stage.edit',
                'uses' => 'App\Http\Controllers\StageController@edit',
                'middleware' => 'can:stage-view'
            ]);
            Route::post('/update/{id}', [
                'as'   => 'stage.update',
                'uses' => 'App\Http\Controllers\StageController@update',
                // 'middleware' => 'can:product-update'
            ]);
            Route::get('/delete/{id}', [
                'as'   => 'stage.delete',
                'uses' => 'App\Http\Controllers\StageController@delete',
                // 'middleware' => 'can:product-delete'
            ]);
            Route::get('/stage-info/{stage_id}/{product_id}', [
                'as'   => 'stage-info.index',
                'uses' => 'App\Http\Controllers\StageController@stage_info_index',
                // 'middleware' => 'can:product-list'
            ]);
            Route::get('/stage-info/add/{stage_id}/{product_id}', [
                'as'   => 'stage-info.add',
                'uses' => 'App\Http\Controllers\StageController@stage_info_add',
                // 'middleware' => 'can:product-add'
            ]);
            Route::post('/store-info/store/{stage_id}/{product_id}', [
                'as'   => 'stage-info.store',
                'uses' => 'App\Http\Controllers\StageController@stage_info_store',
            ]);
            Route::get('/stage-info/edit/{stageInfo_id}/{stage_id}/{product_id}', [
                'as'   => 'stage-info.edit',
                'uses' => 'App\Http\Controllers\StageController@stage_info_edit',
            ]);
            Route::post('/stage-info/update/{stageInfo_id}/{stage_id}/{product_id}', [
                'as'   => 'stage-info.update',
                'uses' => 'App\Http\Controllers\StageController@stage_info_update',
            ]);
            Route::get('/stage-info/delete/{stageInfo_id}/{stage_id}/{product_id}', [
                'as'   => 'stage-info.delete',
                'uses' => 'App\Http\Controllers\StageController@stage_info_delete',
            ]);
            Route::get('/ajax/count-stage-info', [
                'as' => 'stage-info.count',
                'uses' => 'App\Http\Controllers\StageController@stage_info_count',
            ]);
            Route::get('/ajax/render-stage-info', [
                'as' => 'stage-info.render',
                'uses' => 'App\Http\Controllers\StageController@stage_info_render',
            ]);
            Route::get('/ajax/render-add-stage-info', [
                'as' => 'stage-info.render-add',
                'uses' => 'App\Http\Controllers\StageController@stage_info_render_add',
            ]);
        });
    });
});






