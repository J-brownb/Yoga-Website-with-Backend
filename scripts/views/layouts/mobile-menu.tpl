    {* MOBILE MENU *}
    <nav class="navbar navbar-expand-lg navbar-light bg-light d-sm-none">
        <div class="container-fluid">
            <a class="navbar-brand pt-3" href="/Dissertation/dashboard"> <img src="./images/mobile-logo.png" width="240"
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
                            <img src="./images/Icon.jpg" alt="" width="32" height="32" class="rounded-circle me-2">
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