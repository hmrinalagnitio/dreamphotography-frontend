<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
class WacthList extends Model
{
    use HasFactory;
    public static function countWatchlist($contest_id){
        $countWatchlist = WacthList :: where(['user_id' => Auth::user()->id,
        'contest_id'=> $contest_id])->count();
        return $countWatchlist ;
       }
} 
