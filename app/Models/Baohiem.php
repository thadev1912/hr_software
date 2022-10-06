<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Baohiem extends Model
{ 
    protected $table='baohiem';
    protected $filltable=[
                'id',
                'ma_bhxh',
                'loai_bhxh',
                'ngaycap',
                'ngayhethan',
                'noicap',


    ];
    use HasFactory;
}
