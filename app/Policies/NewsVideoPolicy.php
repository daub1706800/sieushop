<?php

namespace App\Policies;

use Illuminate\Auth\Access\HandlesAuthorization;
use App\Models\NewsVideo;
use App\Models\User;

class NewsVideoPolicy
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
     * @param  \App\Models\NewsVideo  $newsVideo
     * @return mixed
     */
    public function list(User $user)
    {
        return $user->checkPermission(config('permissions.access.newsvideo-list'));
    }

    public function view(User $user)
    {
        return $user->checkPermission(config('permissions.access.newsvideo-view'));
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
        return $user->checkPermission(config('permissions.access.newsvideo-add'));
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\NewsVideo  $newsVideo
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->checkPermission(config('permissions.access.newsvideo-update'));
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\NewsVideo  $newsVideo
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->checkPermission(config('permissions.access.newsvideo-delete'));
    }

    public function browse(User $user)
    {
        return $user->checkPermission(config('permissions.access.newsvideo-browse'));
    }

    public function publish(User $user)
    {
        return $user->checkPermission(config('permissions.access.newsvideo-publish'));
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\NewsVideo  $newsVideo
     * @return mixed
     */
    public function restore(User $user, NewsVideo $newsVideo)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\NewsVideo  $newsVideo
     * @return mixed
     */
    public function forceDelete(User $user, NewsVideo $newsVideo)
    {
        //
    }
}
