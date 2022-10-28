<?php

namespace App\Http\Middleware;
use Illuminate\Contracts\Auth\Guard;
use Auth;
use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        if (! $request->expectsJson()) {
            return route('login');
        }
    }
    public function handle($request,Closure $next,...$guards)
     {
        if(Auth::check()&&(Auth::user()->permision==1))
          {
            return $next($request);
          }
          return redirect()->route('dangnhap')->with('thongbao','Bạn không có quyền truy cập vào trang này');
     }
}
