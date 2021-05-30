<?php

namespace App\Policies;

use App\Models\Field;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class FieldPolicy
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
     * @param  \App\Models\Field  $field
     * @return mixed
     */
    public function list(User $user)
    {
        return $user->checkPermission(config('permissions.access.field-list'));
    }

    public function view(User $user)
    {
        return $user->checkPermission(config('permissions.access.field-view'));
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
        return $user->checkPermission(config('permissions.access.field-add'));
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Field  $field
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->checkPermission(config('permissions.access.field-update'));
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Field  $field
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->checkPermission(config('permissions.access.field-delete'));
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Field  $field
     * @return mixed
     */
    public function restore(User $user, Field $field)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Field  $field
     * @return mixed
     */
    public function forceDelete(User $user, Field $field)
    {
        //
    }
}
