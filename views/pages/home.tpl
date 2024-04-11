{extends file="layouts/main.tpl"}
{block name="body"}
    {if $user_data}
        <div class="container-fluid">
            <div class="row">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <a class="navbar-brand pt-3" href="#"> <img src="./images/Moneywise logo.png" width="300"
                                height="100"></a>
                        <div class="dropdown user-menu">
                            <a href="#"
                                class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                                <strong>{$user_data['user_first_name']}</strong>
                            </a>
                            <ul class="dropdown-menu text-small shadow">
                                <li><a class="dropdown-item" href="/Dissertation/settings">Settings</a></li>
                                <li><a class="dropdown-item" href="#">Profile</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="/Dissertation/logout">Sign out</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Sidebar Nav -->
                <div class="col-md-3 col-lg-2 d-md-block p-0 bg-body-tertiary">
                    <div class="d-flex flex-column flex-shrink-0 p-3">
                        <ul class="nav nav-pills flex-column mb-auto mt-3">
                            <li class="nav-item">
                                <a href="/Dissertation/" class="nav-link active" aria-current="page">
                                    <i class="fas fa-home me-2"></i>
                                    Home
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
                    </div>
                </div>
                <main class="pt-5 col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <div class="container">
                        <div class="row pb-5">
                            <div class="col text-center">
                                <h1>Welcome, {$user_data['user_first_name']}</h1>
                            </div>
                        </div>
                    <div class="row text-center ">
                        {if $financesData}
                        <h2>Here's how your finances are looking..</h2>
                <div class="col detail-box">
                    <h3>Total funds</h3>
                    <p>£{$financesData[0]['savings_current_account'] + $financesData[0]['savings_account1'] + {$financesData[0]['savings_investments']}
                        + $financesData[0]['savings_account2']+ $financesData[0]['savings_account3']+
                        $financesData[0]['savings_investments']+ $financesData[0]['savings_other']}
                    </p>
                </div>
                <div class="col detail-box">
                    <h3>Fund breakdown</h3>
                    <div>
                        <canvas id="pie-chart"></canvas>
                    </div>
                </div>
                <div class="col detail-box">
                    <h3>Next payday</h3>
                </div>
                {else}
                <div class="col detail-box pt-5 pb-5">
                    <h2>There's nothing here yet 😭</h2>
                                <p>Get started by <a href="/Dissertation/budgeting-tool">updating your budget</a> and <a
                                        href="/Dissertation/finances">submitting your finances!</a></p>
                            </div>
                        {/if}
                    </div>
                    <div class="section row pt-5 pb-5 text-center">
                        <h2>Take the next step in your financial journey</h2>
                        <div class="col detail-box">
                            <h3> <i class="fa-solid fa-book"></i> Take a lesson</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                            <a href="/Dissertation/financial-academy"><button class="primary-button">Join Today</button></a>
                        </div>
                        <div class="col detail-box">
                            <h3><i class="fa-solid fa-chart-pie"></i> Update your finances</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                            <a href="/Dissertation/financial-academy"><button class="primary-button">Join Today</button></a>
                        </div>
                        <div class="col detail-box">
                            <h3><i class="fa-solid fa-chart-line"></i> Search stocks</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                            <a href="/Dissertation/financial-academy"><button class="primary-button">Join Today</button></a>
                        </div>
                    </div>                    </div>

                </main>
            {else}
                <div class="alternate-bg changing-text">
                    <div class="container pt-5 pb-5">
                        <div class="row pt-5 pb-5">
                            <div class="col pb-5">
                                <h1 class="title underlined-header">Take control of your <span>finances</span></h1>
                                <p class="pt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque imperdiet
                                    tincidunt nibh, ac tincidunt augue consectetur id. Nulla convallis scelerisque turpis eu
                                    venenatis. Proin tempus ante velleoconsectetur, vitae egestas sem aliquet. </p>
                                <a href="/Dissertation/register"><button class="secondary-button">Join Today</button></a>

                            </div>
                            <div class="col">
                                <img src="https://placehold.co/600x400">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container pt-5 pb-5 section">
                    <div class="row pt-3">
                        <div class="col">
                            <h2 id="features">Features</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                        </div>
                    </div>
                    <div class="row pt-5">
                        <div class="col">
                            <h3>Feature <i class="fa-solid fa-wallet"></i></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                        </div>
                        <div class="col">
                            <h3>Feature <i class="fa-solid fa-wallet"></i></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                        </div>
                    </div>
                    <div class="row pb-5">
                        <div class="col">
                            <h3>Feature <i class="fa-solid fa-wallet"></i></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                        </div>
                        <div class="col">
                            <h3>Feature <i class="fa-solid fa-wallet"></i></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                        </div>
                    </div>
                </div>
                <div class="alternate-bg">
                    <div class="container pt-5 pb-5 section">
                        <div class="row pt-5 pb-5">
                            <div class="col">
                                <img src="https://placehold.co/600x300">
                            </div>
                            <div class="col">
                                <h2 id="about">About</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque imperdiet tincidunt nibh, ac
                                    tincidunt augue consectetur id. Nulla convallis scelerisque turpis eu venenatis. Proin
                                    tempus ante vel leo consectetur, vitae egestas sem aliquet. </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container pt-5 pb-5 section">
                    <div class="row pt-3">
                        <div class="col">
                            <h2 id="benefits">Benefits</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, quisque imperdiet tincidunt nibh.</p>
                        </div>
                        <div class="row pt-5">
                            <div class="col text-center">
                                <h3>Benefit</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="col text-center">
                                <h3>Benefit</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="col text-center">
                                <h3>Benefit</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="col text-center">
                                <h3>Benefit</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="row pb-5">
                            <div class="col text-center">
                                <h3>Benefit</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="col text-center">
                                <h3>Benefit</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="col text-center">
                                <h3>Benefit</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="col text-center">
                                <h3>Benefit</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="alternate-bg section">
                    <div class="container pt-5 pb-5">
                        <div class="row">
                            <div class="col-10">
                                <h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Quisque imperdiet tincidunt
                                    nibh,
                                    ac
                                    tincidunt augue consectetur id. </h2>
                            </div>
                            <div class="col pt-3">
                                <a href="/Dissertation/register"><button class="secondary-button">Sign Up</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            {/if}
            <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
            <script>
                const savingsInvestments = {$financesData[0]['savings_investments']};
                const savingsCurrentAccount = {$financesData[0]['savings_current_account']};
                const savingsAccount = {$financesData[0]['savings_account1'] + $financesData[0]['savings_account2']+ $financesData[0]['savings_account3'] + $financesData[0]['savings_other']};

                const data = {
                    labels: ['Savings', 'Investments', 'Current Account'],
                    datasets: [{
                        label: 'My First Dataset',
                        data: [savingsAccount, savingsInvestments, savingsCurrentAccount],
                        backgroundColor: ['#023045', '#cdff1a', '#74526c'],
                        hoverOffset: 4,
                    }],
                };

                const options = {
                    plugins: {
                        legend: {
                            position: 'bottom',
                        },
                    },
                };

                const chartConfig = {
                    type: 'pie',
                    data: data,
                    options: options,
                };

                new Chart(document.getElementById("pie-chart"), chartConfig);
            </script>
{/block}