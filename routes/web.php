<?php

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

Route::prefix('/')->group(function () {
    Route::get('/', [
        'as' => 'home',
        'uses' => function (){
            return view('frontend.home');
        }
    ]);

    Route::get('contact', [
        'as' => 'contact',
        'uses' => function(){
            return view('frontend.contact.contact');
        }
    ]);

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

    Route::get('gadget', [
        'as' => 'gadget',
        'uses' => function(){
            return view('frontend.gadget.gadget');
        }
    ]);

    Route::get('detail', [
        'as' => 'detail',
        'uses' => function(){
            return view('frontend.detail.detail');
        }
    ]);
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
            'middleware' => 'can:department-list'
        ]);
        Route::post('/store', [
            'as'   => 'department.store',
            'uses' => 'App\Http\Controllers\DepartmentController@store',
            'middleware' => 'can:department-add'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'department.edit',
            'uses' => 'App\Http\Controllers\DepartmentController@edit',
            'middleware' => 'can:department-view'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'department.update',
            'uses' => 'App\Http\Controllers\DepartmentController@update',
            'middleware' => 'can:department-update'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'department.delete',
            'uses' => 'App\Http\Controllers\DepartmentController@delete',
            'middleware' => 'can:department-delete'
        ]);
    });
    /* Module Lĩnh vực */
    Route::prefix('field')->group(function () {
        Route::get('/', [
            'as'   => 'field.index',
            'uses' => 'App\Http\Controllers\FieldController@index',
            'middleware' => 'can:field-list'
        ]);
        Route::post('/store', [
            'as'   => 'field.store',
            'uses' => 'App\Http\Controllers\FieldController@store',
            'middleware' => 'can:field-add'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'field.edit',
            'uses' => 'App\Http\Controllers\FieldController@edit',
            'middleware' => 'can:field-view'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'field.update',
            'uses' => 'App\Http\Controllers\FieldController@update',
            'middleware' => 'can:field-update'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'field.delete',
            'uses' => 'App\Http\Controllers\FieldController@delete',
            'middleware' => 'can:field-delete'
        ]);
    });
    /* Module Chuyên mục */
    Route::prefix('category')->group(function () {
        Route::get('/', [
            'as'   => 'category.index',
            'uses' => 'App\Http\Controllers\CategoryController@index',
            'middleware' => 'can:category-list'
        ]);
        Route::post('/store', [
            'as'   => 'category.store',
            'uses' => 'App\Http\Controllers\CategoryController@store',
            'middleware' => 'can:category-add'
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'category.edit',
            'uses' => 'App\Http\Controllers\CategoryController@edit',
            'middleware' => 'can:category-view'
        ]);
        Route::post('/update/{id}', [
            'as'   => 'category.update',
            'uses' => 'App\Http\Controllers\CategoryController@update',
            'middleware' => 'can:category-update'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'category.delete',
            'uses' => 'App\Http\Controllers\CategoryController@delete',
            'middleware' => 'can:category-delete'
        ]);
    });
    /* Module Công ty */
    Route::prefix('company')->group(function () {
        Route::get('/', [
            'as'   => 'company.index',
            'uses' => 'App\Http\Controllers\CompanyController@index',
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'company.edit',
            'uses' => 'App\Http\Controllers\CompanyController@edit',
        ]);
        Route::post('/update/{id}', [
            'as'   => 'company.update',
            'uses' => 'App\Http\Controllers\CompanyController@update',
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'company.delete',
            'uses' => 'App\Http\Controllers\CompanyController@delete',
        ]);
    });
    /* Module Tài khoản */
    Route::prefix('account')->group(function () {
        Route::get('/', [
            'as'   => 'account.index',
            'uses' => 'App\Http\Controllers\AccountController@index',
        ]);
        Route::post('/store', [
            'as'   => 'account.store',
            'uses' => 'App\Http\Controllers\AccountController@store',
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'account.edit',
            'uses' => 'App\Http\Controllers\AccountController@edit',
        ]);
        Route::post('/update/{id}', [
            'as'   => 'account.update',
            'uses' => 'App\Http\Controllers\AccountController@update',
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'account.delete',
            'uses' => 'App\Http\Controllers\AccountController@delete',
        ]);
        Route::get('/random-password', [
            'as'   => 'account.random-password',
            'uses' => 'App\Http\Controllers\AccountController@random_password',
        ]);
    });
    /* Module Vai trò */
    Route::prefix('role')->group(function () {
        Route::get('/', [
            'as'   => 'role.index',
            'uses' => 'App\Http\Controllers\RoleController@index',
        ]);
        Route::post('/store', [
            'as'   => 'role.store',
            'uses' => 'App\Http\Controllers\RoleController@store',
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'role.edit',
            'uses' => 'App\Http\Controllers\RoleController@edit',
        ]);
        Route::post('/update/{id}', [
            'as'   => 'role.update',
            'uses' => 'App\Http\Controllers\RoleController@update',
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'role.delete',
            'uses' => 'App\Http\Controllers\RoleController@delete',
        ]);
    });
    /* Module Quyền */
    Route::prefix('permission')->group(function () {
        Route::get('/add', [
            'as'   => 'permission.add',
            'uses' => 'App\Http\Controllers\PermissionController@add',
            'middleware' => 'can:permission-list'
        ]);
        Route::post('/store', [
            'as'   => 'permission.store',
            'uses' => 'App\Http\Controllers\PermissionController@store',
            'middleware' => 'can:permission-add'
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'permission.delete',
            'uses' => 'App\Http\Controllers\PermissionController@delete',
            'middleware' => 'can:permission-delete'
        ]);
        Route::get('/change-status-on', [
            'as'   => 'permission.change-status-on',
            'uses' => 'App\Http\Controllers\PermissionController@change_status_on',
        ]);
        Route::get('/change-status-off', [
            'as'   => 'permission.change-status-off',
            'uses' => 'App\Http\Controllers\PermissionController@change_status_off',
        ]);
        Route::get('/check-permission-checked', [
            'as'   => 'permission.check-permission-checked',
            'uses' => 'App\Http\Controllers\PermissionController@check_permission_checked',
        ]);
        Route::post('/update', [
            'as'   => 'permission.update',
            'uses' => 'App\Http\Controllers\PermissionController@update',
            'middleware' => 'can:permission-update'
        ]);
        Route::get('/check-permission', [
            'as'   => 'permission.check-permission',
            'uses' => 'App\Http\Controllers\PermissionController@check_permission',
        ]);
    });
    /* Module Tin tức */
    Route::prefix('news')->group(function () {
        Route::get('/', [
            'as'   => 'news.index',
            'uses' => 'App\Http\Controllers\NewsController@index',
        ]);
        Route::get('/add', [
            'as'   => 'news.add',
            'uses' => 'App\Http\Controllers\NewsController@add',
        ]);
        Route::post('/store', [
            'as'   => 'news.store',
            'uses' => 'App\Http\Controllers\NewsController@store',
        ]);
        Route::get('/edit/{id}', [
            'as'   => 'news.edit',
            'uses' => 'App\Http\Controllers\NewsController@edit',
        ]);
        Route::post('/update/{id}', [
            'as'   => 'news.update',
            'uses' => 'App\Http\Controllers\NewsController@update',
        ]);
        Route::get('/delete/{id}', [
            'as'   => 'news.delete',
            'uses' => 'App\Http\Controllers\NewsController@delete',
        ]);
        Route::get('/update-duyet', [
            'as'   => 'news.update-duyet',
            'uses' => 'App\Http\Controllers\NewsController@update_duyet',
        ]);
        Route::get('/update-xuatban', [
            'as'   => 'news.update-xuatban',
            'uses' => 'App\Http\Controllers\NewsController@update_xuatban',
        ]);
    });
    /* Module Tin tức 2*/
    Route::prefix('tintuc')->group(function () {
        Route::get('/Tintuc', [
            'as' => 'tintuc.Tintuc',
            'uses' => 'App\Http\Controllers\TintucController@printTintuc',
            'middleware' => 'can:news-list'
        ]);
        Route::get('/viewhistoryTintuc/{id}', [
            'as' => 'tintuc.viewhistoryTintuc',
            'uses' => 'App\Http\Controllers\TintucController@viewhistoryTintuc',
            'middleware' => 'can:news-list'
        ]);
        Route::get('/addtintuc', [
            'as' => 'tintuc.addTintuc',
            'uses' => 'App\Http\Controllers\TintucController@addTintuc',
            'middleware' => 'can:news-add'
        ]);
        Route::post('/doaddtintuc', [
            'as' => 'tintuc.doaddTintuc',
            'uses' => 'App\Http\Controllers\TintucController@doaddTintuc',
        ]);
        Route::get('/deleteTintuc/{id}', [
            'as' => 'tintuc.deleteTintuc',
            'uses' => 'App\Http\Controllers\TintucController@deleteTintuc',
            'middleware' => 'can:news-delete'

        ]);
        Route::get('/detailTintuc/{id}', [
            'as' => 'tintuc.detailTintuc',
            'uses' => 'App\Http\Controllers\TintucController@detailTintuc',
            'middleware' => 'can:news-view'
        ]);
        Route::post('/editTintuc', [
            'as' => 'tintuc.editTintuc',
            'uses' => 'App\Http\Controllers\TintucController@editTintuc',
            'middleware' => 'can:news-update'
        ]);
        Route::get('/deleteVideo/{id}', [
            'as' => 'tintuc.deleteVideo',
            'uses' => 'App\Http\Controllers\TintucController@deleteVideo',
            'middleware' => 'can:news-delete'
        ]);
        Route::post('/addVideo', [
            'as' => 'tintuc.addVideo',
            'uses' => 'App\Http\Controllers\TintucController@addVideo',
            'middleware' => 'can:news-update'
        ]);
        Route::get('/acceptTintuc/{id}', [
            'as' => 'tintuc.acceptTintuc',
            'uses' => 'App\Http\Controllers\TintucController@acceptTintuc',
            'middleware' => 'can:news-browse'
        ]);
        Route::get('/postTintuc/{id}', [
            'as' => 'tintuc.postTintuc',
            'uses' => 'App\Http\Controllers\TintucController@postTintuc',
            'middleware' => 'can:news-publish'
        ]);
        Route::get('/removeTintuc', [
            'as' => 'tintuc.removeTintuc',
            'uses' => 'App\Http\Controllers\TintucController@removeTintuc',
        ]);
    });
    /* Module Thông tin tài khoản */
    Route::prefix('profile')->group(function () {
        // Profile
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
        // Company
        Route::get('/company', [
            'as'   => 'profile.company.index',
            'uses' => 'App\Http\Controllers\ProfileController@index_company',
        ]);
        Route::get('/company/create', [
            'as'   => 'profile.company.create',
            'uses' => 'App\Http\Controllers\ProfileController@create_company',
        ]);
        Route::post('/company/store', [
            'as'   => 'profile.company.store',
            'uses' => 'App\Http\Controllers\ProfileController@store_company',
        ]);
        Route::post('/company/update/{id}', [
            'as'   => 'profile.company.update',
            'uses' => 'App\Http\Controllers\ProfileController@update_company',
            'middleware' => 'can:company-update'
        ]);
        Route::get('/company/delete/{id}', [
            'as'   => 'profile.company.delete',
            'uses' => 'App\Http\Controllers\ProfileController@delete_company',
            'middleware' => 'can:company-delete'
        ]);
        // Account
        Route::get('/account', [
            'as'   => 'profile.account.index',
            'uses' => 'App\Http\Controllers\ProfileController@index_account',
            'middleware' => 'can:account-list'
        ]);
        Route::post('/account/store', [
            'as'   => 'profile.account.store',
            'uses' => 'App\Http\Controllers\ProfileController@store_account',
            'middleware' => 'can:account-add'
        ]);
        Route::get('/account/edit/{id}', [
            'as'   => 'profile.account.edit',
            'uses' => 'App\Http\Controllers\ProfileController@edit_account',
            'middleware' => 'can:account-view'
        ]);
        Route::post('/account/update/{id}', [
            'as'   => 'profile.account.update',
            'uses' => 'App\Http\Controllers\ProfileController@update_account',
            'middleware' => 'can:account-update'
        ]);
        Route::get('/account/delete/{id}', [
            'as'   => 'profile.account.delete',
            'uses' => 'App\Http\Controllers\ProfileController@delete_account',
            'middleware' => 'can:account-delete'
        ]);
        Route::get('/account/random-password', [
            'as'   => 'profile.account.random-password',
            'uses' => 'App\Http\Controllers\ProfileController@random_password',
        ]);
        // Role
        Route::get('/role', [
            'as'   => 'profile.role.index',
            'uses' => 'App\Http\Controllers\ProfileController@index_role',
            'middleware' => 'can:role-list'
        ]);
        Route::post('/role/store', [
            'as'   => 'profile.role.store',
            'uses' => 'App\Http\Controllers\ProfileController@store_role',
            'middleware' => 'can:role-add'
        ]);
        Route::get('/role/edit/{id}', [
            'as'   => 'profile.role.edit',
            'uses' => 'App\Http\Controllers\ProfileController@edit_role',
            'middleware' => 'can:role-view'
        ]);
        Route::post('/role/update/{id}', [
            'as'   => 'profile.role.update',
            'uses' => 'App\Http\Controllers\ProfileController@update_role',
            'middleware' => 'can:role-update'
        ]);
        Route::get('/role/delete/{id}', [
            'as'   => 'profile.role.delete',
            'uses' => 'App\Http\Controllers\ProfileController@delete_role',
            'middleware' => 'can:role-delete'
        ]);
    });
    /* Module Kho */
    Route::prefix('storages')->group(function () {
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

