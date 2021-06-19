<?php

namespace App\Policies;

use Illuminate\Auth\Access\HandlesAuthorization;
use App\Models\Stage;
use App\Models\User;

class StagePolicy
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
     * @param  \App\Models\Stage  $stage
     * @return mixed
     */
    public function list(User $user)
    {
        return $user->checkPermission(config('permissions.access.stage-list'));
    }

    public function view(User $user)
    {
        return $user->checkPermission(config('permissions.access.stage-view'));
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
        return $user->checkPermission(config('permissions.access.stage-add'));
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Stage  $stage
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->checkPermission(config('permissions.access.stage-update'));
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Stage  $stage
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->checkPermission(config('permissions.access.stage-delete'));
    }

    public function browse(User $user)
    {
        return $user->checkPermission(config('permissions.access.stage-browse'));
    }

    public function publish(User $user)
    {
        return $user->checkPermission(config('permissions.access.stage-publish'));
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Stage  $stage
     * @return mixed
     */
    public function restore(User $user, Stage $stage)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Stage  $stage
     * @return mixed
     */
    public function forceDelete(User $user, Stage $stage)
    {
        //
    }
}
