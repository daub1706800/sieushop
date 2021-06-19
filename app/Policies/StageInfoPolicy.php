<?php

namespace App\Policies;

use Illuminate\Auth\Access\HandlesAuthorization;
use App\Models\StageInfo;
use App\Models\User;

class StageInfoPolicy
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
     * @param  \App\Models\StageInfo  $stageInfo
     * @return mixed
     */
    public function list(User $user)
    {
        return $user->checkPermission(config('permissions.access.stageinfo-list'));
    }

    public function view(User $user)
    {
        return $user->checkPermission(config('permissions.access.stageinfo-view'));
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
        return $user->checkPermission(config('permissions.access.stageinfo-add'));
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\StageInfo  $stageInfo
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->checkPermission(config('permissions.access.stageinfo-update'));
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\StageInfo  $stageInfo
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->checkPermission(config('permissions.access.stageinfo-delete'));
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\StageInfo  $stageInfo
     * @return mixed
     */
    public function restore(User $user, StageInfo $stageInfo)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\StageInfo  $stageInfo
     * @return mixed
     */
    public function forceDelete(User $user, StageInfo $stageInfo)
    {
        //
    }
}
