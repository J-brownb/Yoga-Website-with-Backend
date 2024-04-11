{* {extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar Nav -->
            <div class="col-md-3 col-lg-2 d-md-block p-0 bg-body-tertiary">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                    <a href="/"
                        class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                        <span class="fs-4">Logo</span>
                    </a>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="nav-item">
                            <a href="/Dissertation/" class="nav-link link-body-emphasis" aria-current="page">
                                <i class="fas fa-home me-2"></i>
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link active">
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
                            <a href="/Dissertation/net-worth" class="nav-link link-body-emphasis">
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
                </div>
            </div>
            <main class="pt-3 mt-2 col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="container">
                    <div class="row pb-5">
                        <div class="col text-center pt-5">
                            <h1>Update Your Budget</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices lorem at fringilla
                                vehicula.</p>
                            <button class="primary-button">Update</button>
                        </div>
                    </div>
                </div>
                <div class="row pt-5 pb-5 text-center ">
                    <div class="col">
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingOne">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#flush-collapseOne" aria-expanded="false"
                                        aria-controls="flush-collapseOne">
                                        Income
                                    </button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse"
                                    aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <form method="post" action="" class="white-bg-form">
                                            <div class="row g-2">
                                                <div class="form-floating mb-3 col">
                                                    <i class="bi bi-envelope"></i>
                                                    <input type="text" required class="form-control" id="floatingInput"
                                                        name="user_first_name" placeholder="First Name">
                                                    <label class="opacity05" for="floatingInput">First Name</label>
                                                </div>
                                                <div class="form-floating mb-3 col">
                                                    <input type="text" required class="form-control" id="floatingInput"
                                                        name="user_surname" placeholder="Last Name">
                                                    <label class="opacity05" for="floatingInput">Last Name</label>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="email" required class="form-control" id="floatingInput"
                                                    name="user_email" placeholder="Email Address">
                                                <label class="opacity05" for="floatingPassword">Email</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="password" required class="form-control" id="floatingPassword"
                                                    name="user_pass" placeholder="Password">
                                                <label class="opacity05" for="floatingPassword">Password</label>
                                            </div>
                                            <h3>Total: </h3>
                                            <button type="submit" name="submit-income" value="1"
                                                class="primary-button mt-3 mb-5">Submit</button>
                                            </p>
                                        </form>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headinTwo">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#flush-collapseTwo" aria-expanded="false"
                                            aria-controls="flush-collapseTwo">
                                            Outgoings
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <form method="post" action="" class="white-bg-form">
                                                <div class="form-floating mb-3">
                                                    <input type="email" required class="form-control" id="floatingInput"
                                                        name="user_email" placeholder="Email Address">
                                                    <label class="opacity05" for="floatingPassword">Email</label>
                                                </div>
                                                <div class="form-floating mb-3">
                                                    <input type="password" required class="form-control"
                                                        id="floatingPassword" name="user_pass" placeholder="Password">
                                                    <label class="opacity05" for="floatingPassword">Password</label>
                                                </div>
                                                <h3>Total: </h3>
                                                <button type="submit" name="register" value="1"
                                                    class="primary-button mt-3 mb-5">Register</button>
                                                </p>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
{/block} *}