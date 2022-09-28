<?php

namespace App\Http\Middleware;

use Closure;
use Session;
use Auth;
class CustomAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle( $request, Closure $next)
    {
    
        if(!isset(Auth::user()->id)){
            return redirect()->route('login');
        }
        return $next($request);
    }
}
