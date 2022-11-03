<header class="page-header">
    <input type="hidden" id="hidden_url" class="hidden_url" value="{{ redirect()->back()->getTargetUrl()}} ">
   
    <div class="top-header-mobile">
         <!-- Right Side Of Navbar -->
         <ul class="navbar-nav ms-auto clearfix">
                        
            <!-- Authentication Links -->
            @guest
                @if (Route::has('login'))
                    {{-- <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li> --}}
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">Login</a>
                    </li>
                @endif

                @if (Route::has('register'))
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                    </li>
                @endif
            @else
                <li class="nav-item dropdown">
                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        {{ Auth::user()->name }}
                    </a>

                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </div>
                </li>
            @endguest
        </ul>
        
    </div>
    <div class="middle-header">
        <div class="container clearfix">

            <div class="logo">
                <a href="{{ route('home') }}"><img src="{{ asset('') }}assets/images/logo.png" class="img-fluid" alt="Dream Photography"></a>
            </div>

            <div class="toggle-menu"><i class="fa fa-bars" aria-hidden="true"></i></div>

            <div class="right-header">
                <div class="top-header clearfix">
                    <div class="language">
                        <i class="fa fa-language" aria-hidden="true"></i>
                        <select>
              <option>Language</option>
            </select>
                    </div>
                    <div class="login-register">
                         <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto clearfix">
                        
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                {{-- <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li> --}}
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">Login</a>
                                </li>
                            @endif

                            {{-- @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif --}}
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                        
                    </div>
                    <div class="support-logo">
                        <ul class="clearfix">
                            <li>
                                <a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-1.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-2.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-3.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-4.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#" target="_blank"><img src="{{ asset('') }}assets/images/support-5.png" alt=""></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <nav class="nav-primary">
                    <ul class="clearfix">
                        <li><a href="my-account.html" class="active">My Account</a></li>
                        <li><a href="contests-list.html">Contests List</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                        <li><a href="status.html">Status</a></li>
                        <li><a href="#">Results</a></li>
                        <li><a href="participants-list.html">Participants List</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>