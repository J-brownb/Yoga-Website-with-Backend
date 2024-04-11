    {* MOBILE MENU *}
    <nav class="navbar navbar-expand-lg navbar-light bg-light d-sm-none">
        <div class="container-fluid">
            <a class="navbar-brand pt-3" href="/Dissertation/dashboard"> <img src="/Dissertation/images/mobile-logo.png" width="240"
                    height="75" class="img-fluid mob-logo"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/Dissertation/dashboard"> <i
                                class="fas fa-home"></i>
                            Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/Dissertation/budgeting-tool"> <i
                                class="fa-solid fa-wallet"></i>
                            Budgeting</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/Dissertation/stock-viewer"> <i
                                class="fa-solid fa-chart-line"></i> Stocks</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/Dissertation/finances"> <i
                                class="fa-solid fa-chart-pie"></i>
                            Finances</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/Dissertation/financial-academy"> <i
                                class="fa-solid fa-book"></i> Academy</a>
                    </li>
                    <hr>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="/Dissertation/images/Icon.jpg" alt="" width="32" height="32" class="rounded-circle me-2">
                            <strong>{$user_data['user_first_name']}</strong>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="/Dissertation/settings">Settings</a></li>
                            <li><a class="dropdown-item" href="/Dissertation/profile">Profile</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="/Dissertation/logout">Sign out</a></li>
                        </ul>
                    </li>
                    <li class="nav-item" id="mobDark">
                    <a class="nav-link"> <i class="fa-solid fa-moon"></i> Dark Mode</a>
                </li>
                <li class="nav-item d-none" id="mobLight">
                <a class="nav-link"> <i class="fa-solid fa-sun"></i> Light Mode</a>
            </li>
                </ul>
            </div>
        </div>
    </nav>
    {* MAIN MENU *}
    <div class="container-fluid d-none d-sm-block" id="collapsed-main">
        <div class="row">
            <!-- Sidebar Nav -->
            <div class="collapsed-sidebar shadow col-md-2 col-lg-1 d-md-block p-0">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                    <ul class="nav nav-pills flex-column mb-auto mt-3">
                        <li class="nav-item">
                            <a href="/Dissertation/dashboard" class="nav-link link-body-emphasis">
                                <i class="fas fa-home"></i>
                                <p class="tiny mt-1">Dashboard</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-wallet"></i>
                                <p class="tiny mt-1">Budgeting</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/stock-viewer" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-chart-line"></i>
                                <p class="tiny mt-1">Stocks</p>
                                </a>
                        </li>
                        <li>
                            <a href="/Dissertation/finances" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-chart-pie"></i>
                                <p class="tiny mt-1">Finances</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/financial-academy" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-book"></i>
                                <p class="tiny mt-1">Academy</p>
                            </a>
                        </li>
                    </ul>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto mt-3" id="expand">
                        <li class="nav-link link-body-emphasis">
                            <i class="fa-solid fa-circle-chevron-right" style="color: #023045;"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Large Nav -->
    <div class="container-fluid d-none d-sm-block">
        <div class="row">
        <div class="sidebar shadow col-md-3 col-lg-2 d-md-block p-0">
        <div class="d-flex flex-column flex-shrink-0 p-3">
        <a class="navbar-brand pt-3" href="/Dissertation/dashboard"> <img src="/Dissertation/images/white-bg-logo.png" width="200"
        height="75" class="img-fluid desktop-logo"></a>
                    <ul class="nav nav-pills flex-column mb-auto mt-3">
                        <li class="nav-item">
                            <a href="/Dissertation/dashboard" class="nav-link link-body-emphasis">
                                <i class="fas fa-home"></i> Dashboard
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-wallet"></i>
                                Budgeting
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/stock-viewer" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-chart-line"></i>
                                Stocks
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/finances" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-chart-pie"></i>
                                Finances
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/financial-academy" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-book"></i>
                                Academy
                            </a>
                        </li>
                    </ul>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto mt-3 border" id="collapse">
                        <li class="nav-link link-body-emphasis">
                            <i class="fa-solid fa-circle-chevron-left" style="color: #023045;"></i> Collapse Sidebar
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <main class="full col-md-9 pt-3 ms-sm-auto col-lg-10">
    <nav class="navbar navbar-expand-lg navbar-light bg-light pb-4  d-none d-sm-block">
            <div class="container-fluid flex-row justify-content-end">
                <a class="navbar-brand pt-3" href="#"> </a>
                <div class="dropdown user-menu">
                    <a href="#"
                        class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="/Dissertation/images/Icon.jpg" alt="" width="32" height="32"
                            class="rounded-circle me-2">
                        <strong>{$user_data['user_first_name']}</strong>
                    </a>
                    <ul class="dropdown-menu text-small shadow">
                        <li><a class="dropdown-item" href="/Dissertation/settings">Settings</a></li>
                        <li><a class="dropdown-item" href="/Dissertation/profile">Profile</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="/Dissertation/logout">Sign out</a></li>
                    </ul>
                </div>
                <i class="fa-solid fa-moon me-5" id="dark"></i>
                <i class="fa-solid fa-sun me-5 d-none" id="light"></i>
            </div>
</nav>
