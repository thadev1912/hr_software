<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nhanvien extends Model
{
    use HasFactory;
    protected $table='nhanvien';
    protected $filltable= [
              'id',
               'id_nv',
               'hoten_nv',            
               'diachi_nv',
               'gioitinh_nv',
               'sdt_nv',    
    ];
}
