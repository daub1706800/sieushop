<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('is-admin', function($user){
            if($user->loaitaikhoan == 2)
            {
                return true;
            }
            return false;
        });

        Gate::define('is-company', function($user){
            if($user->loaitaikhoan == 1)
            {
                return true;
            }
            return false;
        });

        // Account
        Gate::define('account-list', 'App\Policies\AccountPolicy@list');
        Gate::define('account-view', 'App\Policies\AccountPolicy@view');
        Gate::define('account-add', 'App\Policies\AccountPolicy@add');
        Gate::define('account-update', 'App\Policies\AccountPolicy@update');
        Gate::define('account-delete', 'App\Policies\AccountPolicy@delete');

        // Category
        Gate::define('category-list', 'App\Policies\CategoryPolicy@list');
        Gate::define('category-view', 'App\Policies\CategoryPolicy@view');
        Gate::define('category-add', 'App\Policies\CategoryPolicy@add');
        Gate::define('category-update', 'App\Policies\CategoryPolicy@update');
        Gate::define('category-delete', 'App\Policies\CategoryPolicy@delete');

        // Company
        Gate::define('company-list', 'App\Policies\CompanyPolicy@list');
        Gate::define('company-view', 'App\Policies\CompanyPolicy@view');
        Gate::define('company-add', 'App\Policies\CompanyPolicy@add');
        Gate::define('company-update', 'App\Policies\CompanyPolicy@update');
        Gate::define('company-delete', 'App\Policies\CompanyPolicy@delete');

        // Department
        Gate::define('department-list', 'App\Policies\DepartmentPolicy@list');
        Gate::define('department-view', 'App\Policies\DepartmentPolicy@view');
        Gate::define('department-add', 'App\Policies\DepartmentPolicy@add');
        Gate::define('department-update', 'App\Policies\DepartmentPolicy@update');
        Gate::define('department-delete', 'App\Policies\DepartmentPolicy@delete');

        // Field
        Gate::define('field-list', 'App\Policies\FieldPolicy@list');
        Gate::define('field-view', 'App\Policies\FieldPolicy@view');
        Gate::define('field-add', 'App\Policies\FieldPolicy@add');
        Gate::define('field-update', 'App\Policies\FieldPolicy@update');
        Gate::define('field-delete', 'App\Policies\FieldPolicy@delete');

        // News
        Gate::define('news-list', 'App\Policies\NewsPolicy@list');
        Gate::define('news-view', 'App\Policies\NewsPolicy@view');
        Gate::define('news-add', 'App\Policies\NewsPolicy@add');
        Gate::define('news-update', 'App\Policies\NewsPolicy@update');
        Gate::define('news-delete', 'App\Policies\NewsPolicy@delete');
        Gate::define('news-browse', 'App\Policies\NewsPolicy@browse');
        Gate::define('news-publish', 'App\Policies\NewsPolicy@publish');

        // NewsVideo
        Gate::define('newsvideo-list', 'App\Policies\NewsVideoPolicy@list');
        Gate::define('newsvideo-view', 'App\Policies\NewsVideoPolicy@view');
        Gate::define('newsvideo-add', 'App\Policies\NewsVideoPolicy@add');
        Gate::define('newsvideo-update', 'App\Policies\NewsVideoPolicy@update');
        Gate::define('newsvideo-delete', 'App\Policies\NewsVideoPolicy@delete');
        Gate::define('newsvideo-browse', 'App\Policies\NewsVideoPolicy@browse');
        Gate::define('newsvideo-publish', 'App\Policies\NewsVideoPolicy@publish');

        // Stage
        Gate::define('stage-list', 'App\Policies\StagePolicy@list');
        Gate::define('stage-view', 'App\Policies\StagePolicy@view');
        Gate::define('stage-add', 'App\Policies\StagePolicy@add');
        Gate::define('stage-update', 'App\Policies\StagePolicy@update');
        Gate::define('stage-delete', 'App\Policies\StagePolicy@delete');
        Gate::define('stage-browse', 'App\Policies\StagePolicy@browse');
        Gate::define('stage-publish', 'App\Policies\StagePolicy@publish');

        // StageInfo
        Gate::define('stageinfo-list', 'App\Policies\StageInfoPolicy@list');
        Gate::define('stageinfo-view', 'App\Policies\StageInfoPolicy@view');
        Gate::define('stageinfo-add', 'App\Policies\StageInfoPolicy@add');
        Gate::define('stageinfo-update', 'App\Policies\StageInfoPolicy@update');
        Gate::define('stageinfo-delete', 'App\Policies\StageInfoPolicy@delete');

        // Permission
        Gate::define('permission-list', 'App\Policies\PermissionPolicy@list');
        Gate::define('permission-view', 'App\Policies\PermissionPolicy@view');
        Gate::define('permission-add', 'App\Policies\PermissionPolicy@add');
        Gate::define('permission-update', 'App\Policies\PermissionPolicy@update');
        Gate::define('permission-delete', 'App\Policies\PermissionPolicy@delete');

        // Product
        Gate::define('product-list', 'App\Policies\ProductPolicy@list');
        Gate::define('product-view', 'App\Policies\ProductPolicy@view');
        Gate::define('product-add', 'App\Policies\ProductPolicy@add');
        Gate::define('product-update', 'App\Policies\ProductPolicy@update');
        Gate::define('product-delete', 'App\Policies\ProductPolicy@delete');

        // Product Category
        Gate::define('procat-list', 'App\Policies\ProductCategoryPolicy@list');
        Gate::define('procat-view', 'App\Policies\ProductCategoryPolicy@view');
        Gate::define('procat-add', 'App\Policies\ProductCategoryPolicy@add');
        Gate::define('procat-update', 'App\Policies\ProductCategoryPolicy@update');
        Gate::define('procat-delete', 'App\Policies\ProductCategoryPolicy@delete');

        // Role
        Gate::define('role-list', 'App\Policies\RolePolicy@list');
        Gate::define('role-view', 'App\Policies\RolePolicy@view');
        Gate::define('role-add', 'App\Policies\RolePolicy@add');
        Gate::define('role-update', 'App\Policies\RolePolicy@update');
        Gate::define('role-delete', 'App\Policies\RolePolicy@delete');

        // Storage
        Gate::define('storage-list', 'App\Policies\StoragePolicy@list');
        Gate::define('storage-view', 'App\Policies\StoragePolicy@view');
        Gate::define('storage-add', 'App\Policies\StoragePolicy@add');
        Gate::define('storage-update', 'App\Policies\StoragePolicy@update');
        Gate::define('storage-delete', 'App\Policies\StoragePolicy@delete');
    }
}
