<?php

return [
    'module_parent' => [
        'chuyenmuc' => [
            'name' => 'category',
            'display' => 'Chuyên mục',
        ],
        'congty' => [
            'name' => 'company',
            'display' => 'Công ty',
        ],
        'danhgia' => [
            'name' => 'comment',
            'display' => 'Bình luận',
        ],
        'giaidoan' => [
            'name' => 'stage',
            'display' => 'Giai đoạn',
        ],
        'congviec' => [
            'name' => 'stageinfo',
            'display' => 'Công việc',
        ],
        'kho' => [
            'name' => 'storage',
            'display' => 'Kho',
        ],
        'linhvuc' => [
            'name' => 'field',
            'display' => 'Lĩnh vực',
        ],
        'loaisanpham' => [
            'name' => 'procat',
            'display' => 'Loại sản phẩm',
        ],
        'quyen' => [
            'name' => 'permission',
            'display' => 'Quyền',
        ],
        'sanpham' => [
            'name' => 'product',
            'display' => 'Sản phẩm',
        ],
        'so' => [
            'name' => 'department',
            'display' => 'Sở',
        ],
        'tintuc' => [
            'name' => 'news',
            'display' => 'Tin tức',
        ],
        'tintucvideo' => [
            'name' => 'newsvideo',
            'display' => 'Tin tức Video',
        ],
        'users' => [
            'name' => 'account',
            'display' => 'Tài khoản'
        ],
        'vaitro' => [
            'name' => 'role',
            'display' => 'Vai trò',
        ],
    ],

    'module_childrent' => [
        'Danh sách' => [
            'name' => 'list', // Xem danh sách
            'display' => 'Danh sách',
        ],
        'Xem' => [
            'name' => 'view', // Xem chi tiết
            'display' => 'Xem',
        ],
        'Thêm' => [
            'name' => 'add', // Thêm mới
            'display' => 'Thêm',
        ],
        'Sửa' => [
            'name' => 'update', // Cập nhật
            'display' => 'Sửa',
        ],
        'Xóa' => [
            'name' => 'delete', // Xóa
            'display' => 'Xóa',
        ],
        'Duyệt bài' => [
            'name' => 'browse', // Duyệt
            'display' => 'Duyệt bài',
        ],
        'Xuất bản' => [
            'name' => 'publish', // Xuất bản
            'display' => 'Xuất bản',
        ],
        'Thu hồi' => [
            'name' => 'recall', // Thu hồi
            'display' => 'Thu hồi',
        ],
    ],

    'access' => [
        'category-list' => 'category-list',
        'category-view' => 'category-view',
        'category-add' => 'category-add',
        'category-update' => 'category-update',
        'category-delete' => 'category-delete',

        'company-list' => 'company-list',
        'company-view' => 'company-view',
        'company-add' => 'company-add',
        'company-update' => 'company-update',
        'company-delete' => 'company-delete',

        'comment-list' => 'comment-list',
        'comment-view' => 'comment-view',
        'comment-add' => 'comment-add',
        'comment-update' => 'comment-update',
        'comment-delete' => 'comment-delete',

        'stage-list' => 'stage-list',
        'stage-view' => 'stage-view',
        'stage-add' => 'stage-add',
        'stage-update' => 'stage-update',
        'stage-delete' => 'stage-delete',
        'stage-browse' => 'stage-browse',
        'stage-publish' => 'stage-publish',

        'stageinfo-list' => 'stageinfo-list',
        'stageinfo-view' => 'stageinfo-view',
        'stageinfo-add' => 'stageinfo-add',
        'stageinfo-update' => 'stageinfo-update',
        'stageinfo-delete' => 'stageinfo-delete',

        'storage-list' => 'storage-list',
        'storage-view' => 'storage-view',
        'storage-add' => 'storage-add',
        'storage-update' => 'storage-update',
        'storage-delete' =>'storage-delete',

        'field-list' => 'field-list',
        'field-view' => 'field-view',
        'field-add' => 'field-add',
        'field-update' => 'field-update',
        'field-delete' => 'field-delete',

        'procat-list' => 'procat-list',
        'procat-view' => 'procat-view',
        'procat-add' => 'procat-add',
        'procat-update' => 'procat-update',
        'procat-delete' => 'procat-delete',

        'permission-list' => 'permission-list',
        'permission-view' => 'permission-view',
        'permission-add' => 'permission-add',
        'permission-update' => 'permission-update',
        'permission-delete' => 'permission-delete',

        'product-list' => 'product-list',
        'product-view' => 'product-view',
        'product-add' => 'product-add',
        'product-update' => 'product-update',
        'product-delete' => 'product-delete',

        'department-list' => 'department-list',
        'department-view' => 'department-view',
        'department-add' => 'department-add',
        'department-update' => 'department-update',
        'department-delete' => 'department-delete',

        'news-list' => 'news-list',
        'news-view' => 'news-view',
        'news-add' => 'news-add',
        'news-update' => 'news-update',
        'news-delete' => 'news-delete',
        'news-browse' => 'news-browse',
        'news-publish' => 'news-publish',
        'news-recall' => 'news-recall',

        'newsvideo-list' => 'newsvideo-list',
        'newsvideo-view' => 'newsvideo-view',
        'newsvideo-add' => 'newsvideo-add',
        'newsvideo-update' => 'newsvideo-update',
        'newsvideo-delete' => 'newsvideo-delete',
        'newsvideo-browse' => 'newsvideo-browse',
        'newsvideo-publish' => 'newsvideo-publish',
        'newsvideo-recall' => 'newsvideo-recall',

        'account-list' => 'account-list',
        'account-view' => 'account-view',
        'account-add' => 'account-add',
        'account-update' => 'account-update',
        'account-delete' => 'account-delete',

        'role-list' => 'role-list',
        'role-view' => 'role-view',
        'role-add' => 'role-add',
        'role-update' => 'role-update',
        'role-delete' => 'role-delete',
    ],
];
