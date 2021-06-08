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
    // Route::get('/', [
    //     'as' => 'home',
    //     'uses' => function (){
    //         return view('frontend.home');
    //     }
    // ]);

    // phan nay danh cho giao dien
    Route::get('/', [
        'as' => 'home',
        'uses' => 'App\Http\Controllers\GiaoDienController@home'
    ]);
    Route::get('gadget', [
        'as' => 'gadget',
        'uses' => 'App\Http\Controllers\GiaoDienController@gadget'
    ]);
    Route::get('contact', [
        'as' => 'contact',
        'uses' => 'App\Http\Controllers\GiaoDienController@contact'
    ]);
    Route::get('detail', [
        'as' => 'detail',
        'uses' => 'App\Http\Controllers\GiaoDienController@detail'
    ]);
    Route::get('tinchuyenmuc/{id}', [
        'as' => 'tinchuyenmuc',
        'uses' => 'App\Http\Controllers\GiaoDienController@tinchuyenmuc'
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

Route::prefix('admin')->group(function () {
    Route::get('/', function () {
        return view('admin.home');
    })->middleware(['auth', 'verified'])->name('admin.home');

    /* Module Sở ngành */
    Route::prefix('department')->group(function () {
        Route::get('/', [
            'as'   => 'department.index',
            'uses' => 'App\Http\Controllers\DepartmentController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'department.store',
            'uses' => 'App\Http\Controllers\DepartmentController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'department.edit',
            'uses' => 'App\Http\Controllers\DepartmentController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'department.update',
            'uses' => 'App\Http\Controllers\DepartmentController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'department.delete',
            'uses' => 'App\Http\Controllers\DepartmentController@delete',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/view', [
            'as'   => 'department.view',
            'uses' => 'App\Http\Controllers\DepartmentController@view',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Lĩnh vực */
    Route::prefix('field')->group(function () {
        Route::get('/', [
            'as'   => 'field.index',
            'uses' => 'App\Http\Controllers\FieldController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'field.store',
            'uses' => 'App\Http\Controllers\FieldController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'field.edit',
            'uses' => 'App\Http\Controllers\FieldController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'field.update',
            'uses' => 'App\Http\Controllers\FieldController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'field.delete',
            'uses' => 'App\Http\Controllers\FieldController@delete',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Chuyên mục */
    Route::prefix('category')->group(function () {
        Route::get('/', [
            'as'   => 'category.index',
            'uses' => 'App\Http\Controllers\CategoryController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'category.store',
            'uses' => 'App\Http\Controllers\CategoryController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'category.edit',
            'uses' => 'App\Http\Controllers\CategoryController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'category.update',
            'uses' => 'App\Http\Controllers\CategoryController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'category.delete',
            'uses' => 'App\Http\Controllers\CategoryController@delete',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Công ty */
    Route::prefix('company')->group(function () {
        Route::get('/', [
            'as'   => 'company.index',
            'uses' => 'App\Http\Controllers\CompanyController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'company.edit',
            'uses' => 'App\Http\Controllers\CompanyController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'company.update',
            'uses' => 'App\Http\Controllers\CompanyController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'company.delete',
            'uses' => 'App\Http\Controllers\CompanyController@delete',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/view', [
            'as'   => 'company.view',
            'uses' => 'App\Http\Controllers\CompanyController@view',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Tin tức */
    Route::prefix('news')->group(function () {
        Route::get('/', [
            'as'   => 'news.index',
            'uses' => 'App\Http\Controllers\NewsController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/add', [
            'as'   => 'news.add',
            'uses' => 'App\Http\Controllers\NewsController@add',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'news.store',
            'uses' => 'App\Http\Controllers\NewsController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'news.edit',
            'uses' => 'App\Http\Controllers\NewsController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'news.update',
            'uses' => 'App\Http\Controllers\NewsController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'news.delete',
            'uses' => 'App\Http\Controllers\NewsController@delete',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/duyet/{id}', [
            'as'   => 'news.update-duyet',
            'uses' => 'App\Http\Controllers\NewsController@update_duyet',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/xuatban/{id}', [
            'as'   => 'news.update-xuatban',
            'uses' => 'App\Http\Controllers\NewsController@update_xuatban',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/history', [
            'as'   => 'news.history',
            'uses' => 'App\Http\Controllers\NewsController@history',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/remove/{id}', [
            'as'   => 'news.remove',
            'uses' => 'App\Http\Controllers\NewsController@remove',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/view', [
            'as'   => 'news.view',
            'uses' => 'App\Http\Controllers\NewsController@view',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/log/{id}', [
            'as'   => 'news.log',
            'uses' => 'App\Http\Controllers\NewsController@log',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Kho */
    Route::prefix('storages')->group(function () {
        Route::get('/', [
            'as'   => 'admin.storage.index',
            'uses' => 'App\Http\Controllers\AdminStorageController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'admin.storage.store',
            'uses' => 'App\Http\Controllers\AdminStorageController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'admin.storage.edit',
            'uses' => 'App\Http\Controllers\AdminStorageController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'admin.storage.update',
            'uses' => 'App\Http\Controllers\AdminStorageController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'admin.storage.delete',
            'uses' => 'App\Http\Controllers\AdminStorageController@delete',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/view', [
            'as'   => 'admin.storage.view',
            'uses' => 'App\Http\Controllers\AdminStorageController@view',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Loại sản phẩm */
    Route::prefix('productcategory')->group(function () {
        Route::get('/', [
            'as'   => 'admin.productcategory.index',
            'uses' => 'App\Http\Controllers\AdminProductCategoryController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'admin.productcategory.store',
            'uses' => 'App\Http\Controllers\AdminProductCategoryController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'admin.productcategory.edit',
            'uses' => 'App\Http\Controllers\AdminProductCategoryController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'admin.productcategory.update',
            'uses' => 'App\Http\Controllers\AdminProductCategoryController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'admin.productcategory.delete',
            'uses' => 'App\Http\Controllers\AdminProductCategoryController@delete',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Sản phẩm */
    Route::prefix('product')->group(function () {
        Route::get('/', [
            'as'   => 'admin.product.index',
            'uses' => 'App\Http\Controllers\AdminProductController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/add', [
            'as'   => 'admin.product.add',
            'uses' => 'App\Http\Controllers\AdminProductController@add',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'admin.product.store',
            'uses' => 'App\Http\Controllers\AdminProductController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'admin.product.edit',
            'uses' => 'App\Http\Controllers\AdminProductController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'admin.product.update',
            'uses' => 'App\Http\Controllers\AdminProductController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'admin.product.delete',
            'uses' => 'App\Http\Controllers\AdminProductController@delete',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/view', [
            'as'   => 'admin.product.view',
            'uses' => 'App\Http\Controllers\AdminProductController@view',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/input-change', [
            'as'   => 'admin.product.input-change',
            'uses' => 'App\Http\Controllers\AdminProductController@input_change',
            'middleware' => 'can:is-admin'
        ]);
        // Stage
        Route::get('/stage/{product_id}', [
            'as'   => 'admin.stage.index',
            'uses' => 'App\Http\Controllers\StageController@index',
            // 'middleware' => 'can:product-list'
        ]);
        Route::post('/stage/{product_id}', [
            'as'   => 'admin.stage.store',
            'uses' => 'App\Http\Controllers\StageController@store',
        ]);
        Route::get('/stage/edit/{id}', [
            'as'   => 'admin.stage.edit',
            'uses' => 'App\Http\Controllers\StageController@edit',
            // 'middleware' => 'can:product-view'
        ]);
        Route::post('/stage/update/{id}', [
            'as'   => 'admin.stage.update',
            'uses' => 'App\Http\Controllers\StageController@update',
            // 'middleware' => 'can:product-update'
        ]);
        Route::get('/stage/delete/{id}', [
            'as'   => 'admin.stage.delete',
            'uses' => 'App\Http\Controllers\StageController@delete',
            // 'middleware' => 'can:product-delete'
        ]);
        Route::get('/stage/stage-info/{stage_id}/{product_id}', [
            'as'   => 'admin.stage-info.index',
            'uses' => 'App\Http\Controllers\StageController@stage_info_index',
            // 'middleware' => 'can:product-list'
        ]);
        Route::get('/stage/stage-info/add/{stage_id}/{product_id}', [
            'as'   => 'admin.stage-info.add',
            'uses' => 'App\Http\Controllers\StageController@stage_info_add',
            // 'middleware' => 'can:product-add'
        ]);
        Route::post('/stage/store-info/store/{stage_id}/{product_id}', [
            'as'   => 'admin.stage-info.store',
            'uses' => 'App\Http\Controllers\StageController@stage_info_store',
        ]);
        Route::get('/stage/stage-info/edit/{stageInfo_id}/{stage_id}/{product_id}', [
            'as'   => 'admin.stage-info.edit',
            'uses' => 'App\Http\Controllers\StageController@stage_info_edit',
        ]);
        Route::post('/stage/stage-info/update/{stageInfo_id}/{stage_id}/{product_id}', [
            'as'   => 'admin.stage-info.update',
            'uses' => 'App\Http\Controllers\StageController@stage_info_update',
        ]);
        Route::get('/stage/stage-info/delete/{stageInfo_id}/{stage_id}/{product_id}', [
            'as'   => 'admin.stage-info.delete',
            'uses' => 'App\Http\Controllers\StageController@stage_info_delete',
        ]);
        Route::get('/stage/ajax/count-stage-info', [
            'as' => 'admin.stage-info.count',
            'uses' => 'App\Http\Controllers\StageController@stage_info_count',
        ]);
        Route::get('/stage/ajax/render-stage-info', [
            'as' => 'admin.stage-info.render',
            'uses' => 'App\Http\Controllers\StageController@stage_info_render',
        ]);
        Route::get('/stage/ajax/render-add-stage-info', [
            'as' => 'admin.stage-info.render-add',
            'uses' => 'App\Http\Controllers\StageController@stage_info_render_add',
        ]);
    });

    /* Module Tài khoản */
    Route::prefix('account')->group(function () {
        Route::get('/', [
            'as'   => 'account.index',
            'uses' => 'App\Http\Controllers\AccountController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'account.store',
            'uses' => 'App\Http\Controllers\AccountController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'account.edit',
            'uses' => 'App\Http\Controllers\AccountController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'account.update',
            'uses' => 'App\Http\Controllers\AccountController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'account.delete',
            'uses' => 'App\Http\Controllers\AccountController@delete',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/random-password', [
            'as'   => 'account.random-password',
            'uses' => 'App\Http\Controllers\AccountController@random_password',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/verify/{id}', [
            'as'   => 'account.verify',
            'uses' => 'App\Http\Controllers\AccountController@verify',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Vai trò */
    Route::prefix('role')->group(function () {
        Route::get('/', [
            'as'   => 'role.index',
            'uses' => 'App\Http\Controllers\RoleController@index',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'role.store',
            'uses' => 'App\Http\Controllers\RoleController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'role.edit',
            'uses' => 'App\Http\Controllers\RoleController@edit',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'role.update',
            'uses' => 'App\Http\Controllers\RoleController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'role.delete',
            'uses' => 'App\Http\Controllers\RoleController@delete',
            'middleware' => 'can:is-admin'
        ]);
    });

    /* Module Quyền */
    Route::prefix('permission')->group(function () {
        Route::get('/add', [
            'as'   => 'permission.add',
            'uses' => 'App\Http\Controllers\PermissionController@add',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/store', [
            'as'   => 'permission.store',
            'uses' => 'App\Http\Controllers\PermissionController@store',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'permission.delete',
            'uses' => 'App\Http\Controllers\PermissionController@delete',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/change-status-on', [
            'as'   => 'permission.change-status-on',
            'uses' => 'App\Http\Controllers\PermissionController@change_status_on',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/change-status-off', [
            'as'   => 'permission.change-status-off',
            'uses' => 'App\Http\Controllers\PermissionController@change_status_off',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/check-permission-checked', [
            'as'   => 'permission.check-permission-checked',
            'uses' => 'App\Http\Controllers\PermissionController@check_permission_checked',
            'middleware' => 'can:is-admin'
        ]);
        Route::post('/update', [
            'as'   => 'permission.update',
            'uses' => 'App\Http\Controllers\PermissionController@update',
            'middleware' => 'can:is-admin'
        ]);
        Route::get('/check-permission', [
            'as'   => 'permission.check-permission',
            'uses' => 'App\Http\Controllers\PermissionController@check_permission',
            'middleware' => 'can:is-admin'
        ]);
    });
});

Route::prefix('dasboard')->group(function() {
    Route::get('/', function () {
        return view('admin.home');
    })->middleware(['auth', 'verified'])->name('dasboard.home');

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
            'middleware' => 'can:news-list'
        ]);
        Route::get('/log/{id}', [
            'as' => 'tintuc.viewlogTintuc',
            'uses' => 'App\Http\Controllers\TintucController@viewlogTintuc',
            'middleware' => 'can:news-list'
        ]);
        Route::get('/add-news', [
            'as' => 'tintuc.addTintuc',
            'uses' => 'App\Http\Controllers\TintucController@addTintuc',
            'middleware' => 'can:news-add'
        ]);
        Route::post('/add-news', [
            'as' => 'tintuc.doaddTintuc',
            'uses' => 'App\Http\Controllers\TintucController@doaddTintuc',
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
        Route::get('/delete-video/{id}', [
            'as' => 'tintuc.deleteVideo',
            'uses' => 'App\Http\Controllers\TintucController@deleteVideo',
            'middleware' => 'can:news-delete'
        ]);
        Route::post('/add-video', [
            'as' => 'tintuc.addVideo',
            'uses' => 'App\Http\Controllers\TintucController@addVideo',
            'middleware' => 'can:news-update'
        ]);
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
            'middleware' => 'can:account-list'
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
        Route::get('/random-password', [
            'as'   => 'profile.account.random-password',
            'uses' => 'App\Http\Controllers\ProfileController@random_password',
        ]);
    });

    /* Module Vai trò */
    Route::prefix('role')->group(function () {
        Route::get('/', [
            'as'   => 'profile.role.index',
            'uses' => 'App\Http\Controllers\ProfileController@index_role',
            'middleware' => 'can:role-list'
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
            'middleware' => 'can:storage-list'
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
            'middleware' => 'can:procat-list'
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
            'middleware' => 'can:product-list'
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
        // Stage
        Route::get('/stage/{product_id}', [
            'as'   => 'stage.index',
            'uses' => 'App\Http\Controllers\StageController@index',
            // 'middleware' => 'can:product-list'
        ]);
        Route::post('/stage/{product_id}', [
            'as'   => 'stage.store',
            'uses' => 'App\Http\Controllers\StageController@store',
        ]);
        Route::get('/stage/edit/{id}', [
            'as'   => 'stage.edit',
            'uses' => 'App\Http\Controllers\StageController@edit',
            // 'middleware' => 'can:product-view'
        ]);
        Route::post('/stage/update/{id}', [
            'as'   => 'stage.update',
            'uses' => 'App\Http\Controllers\StageController@update',
            // 'middleware' => 'can:product-update'
        ]);
        Route::get('/stage/delete/{id}', [
            'as'   => 'stage.delete',
            'uses' => 'App\Http\Controllers\StageController@delete',
            // 'middleware' => 'can:product-delete'
        ]);
        Route::get('/stage/stage-info/{stage_id}/{product_id}', [
            'as'   => 'stage-info.index',
            'uses' => 'App\Http\Controllers\StageController@stage_info_index',
            // 'middleware' => 'can:product-list'
        ]);
        Route::get('/stage/stage-info/add/{stage_id}/{product_id}', [
            'as'   => 'stage-info.add',
            'uses' => 'App\Http\Controllers\StageController@stage_info_add',
            // 'middleware' => 'can:product-add'
        ]);
        Route::post('/stage/store-info/store/{stage_id}/{product_id}', [
            'as'   => 'stage-info.store',
            'uses' => 'App\Http\Controllers\StageController@stage_info_store',
        ]);
        Route::get('/stage/stage-info/edit/{stageInfo_id}/{stage_id}/{product_id}', [
            'as'   => 'stage-info.edit',
            'uses' => 'App\Http\Controllers\StageController@stage_info_edit',
        ]);
        Route::post('/stage/stage-info/update/{stageInfo_id}/{stage_id}/{product_id}', [
            'as'   => 'stage-info.update',
            'uses' => 'App\Http\Controllers\StageController@stage_info_update',
        ]);
        Route::get('/stage/stage-info/delete/{stageInfo_id}/{stage_id}/{product_id}', [
            'as'   => 'stage-info.delete',
            'uses' => 'App\Http\Controllers\StageController@stage_info_delete',
        ]);
        Route::get('/stage/ajax/count-stage-info', [
            'as' => 'stage-info.count',
            'uses' => 'App\Http\Controllers\StageController@stage_info_count',
        ]);
        Route::get('/stage/ajax/render-stage-info', [
            'as' => 'stage-info.render',
            'uses' => 'App\Http\Controllers\StageController@stage_info_render',
        ]);
        Route::get('/stage/ajax/render-add-stage-info', [
            'as' => 'stage-info.render-add',
            'uses' => 'App\Http\Controllers\StageController@stage_info_render_add',
        ]);
    });
});




