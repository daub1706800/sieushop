<?php

namespace App\Policies;

use App\Models\ProductCategory;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ProductCategoryPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\ProductCategory  $productCategory
     * @return mixed
     */
    public function list(User $user)
    {
        return $user->checkPermission(config('permissions.access.procat-list'));
    }

    public function view(User $user)
    {
        return $user->checkPermission(config('permissions.access.procat-view'));
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
    }

    public function add(User $user)
    {
        return $user->checkPermission(config('permissions.access.procat-add'));
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\ProductCategory  $productCategory
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->checkPermission(config('permissions.access.procat-update'));
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\ProductCategory  $productCategory
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->checkPermission(config('permissions.access.procat-delete'));
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\ProductCategory  $productCategory
     * @return mixed
     */
    public function restore(User $user, ProductCategory $productCategory)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\ProductCategory  $productCategory
     * @return mixed
     */
    public function forceDelete(User $user, ProductCategory $productCategory)
    {
        //
    }
}
