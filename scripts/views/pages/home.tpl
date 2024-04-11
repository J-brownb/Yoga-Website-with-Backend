{* <title>HTML Elements Reference</title> *}

{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="alternate-bg changing-text">
        <div class="container pt-5 pb-5">
            <div class="row pt-5 pb-5">
                <div class="col-md-6 col-12 pb-5">
                    <h1 class="title underlined-header">Take control of your <span>Finances</span></h1>
                    <p class="pt-3">Welcome to Moneywise, the only service you’ll ever need to manage your budget, savings
                        and investments. We’ve already helped hundreds of individuals like you take control of their
                        finances. Sign up and start your journey to better financial literacy. </p>
                    <a href="/Dissertation/register"><button class="secondary-button">Join Today</button></a>
                </div>
                <div class="col-md-6 col-12">
                    <img src="https://www.scalexp.com/wp-content/uploads/2023/05/Graphic-11-1024x751.png" width="600"
                        height="400" class="img-fluid">
                </div>
            </div>
        </div>
    </div>
    <div class="container pt-5 pb-5 section d-none d-md-block" id="features">
        <div class="row pt-3 pb-5">
            <div class="col">
                <h2>Features</h2>
                <p>Moneywise offers a complete suite of tools to help get your finances in shape. </p>
            </div>
        </div>
    </div>
    <div class="container justify-content-center d-none d-md-block pb-5 mb-3">
        <div class="row pb-3">
            <div class="col-md-3">
                <div class="nav flex-column nav-pills me-3 mt-5 pt-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <button class="home-nav-link nav-link active" id="v-pills-home-tab" data-bs-toggle="pill"
                        data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home"
                        aria-selected="true">Finances</button>
                    <button class="home-nav-link nav-link" id="v-pills-profile-tab" data-bs-toggle="pill"
                        data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile"
                        aria-selected="false">Budgeting</button>
                    <button class="home-nav-link nav-link" id="v-pills-messages-tab" data-bs-toggle="pill"
                        data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages"
                        aria-selected="false">Investing</button>
                    <button class="home-nav-link nav-link" id="v-pills-settings-tab" data-bs-toggle="pill"
                        data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings"
                        aria-selected="false">Learn</button>
                </div>
            </div>
            <div class="col-md-9">
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel"
                        aria-labelledby="v-pills-home-tab">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5">
                                <img src="/Dissertation/images/finance-preview.png"
                                width="600" height="400" class="img-fluid rounded-3 shadow-sm">
                                </div>
                                <div class="col-md-7  mt-5 pt-3">
                                    <h3 class="purple">Finance Tracker <i class="fa-solid fa-chart-pie"></i></h3>
                                    <p>Our finance tracker gives you an overview of your financial net worth and see a
                                        complete view of all your assets.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5">
                                <img src="/Dissertation/images/budget-preview.png"
                                width="600" height="400" class="img-fluid rounded-3 shadow-sm">
                                </div>
                                <div class="col-md-7 mt-5 pt-3">
                                    <h3 class="purple">Budgeting Tool <i class="fa-solid fa-wallet"></i></h3>
                                    <p>Our budgeting tool helps you track and visualise where you are spending the most
                                        money and identify
                                        where you can save.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5">
                                <img src="/Dissertation/images/stock-preview.png"
                                width="600" height="400" class="img-fluid rounded-3 shadow-sm">
                                </div>
                                <div class="col-md-7  mt-5 pt-3">
                                    <h3 class="purple">Stock Search <i class="fa-solid fa-chart-line"></i></h3>
                                    <p>Search over 25,000 stocks worldwide and add them to your own portfolio with our stock
                                        search tool.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5">
                                <img src="/Dissertation/images/lesson-preview.png"
                                width="600" height="400" class="img-fluid rounded-3 shadow-sm">
                                </div>
                                <div class="col-md-7  mt-5 pt-3">
                                    <h3 class="purple">Moneywise Academy <i class="fa-solid fa-book"></i></h3>
                                    <p>Our financial academy aims to improve your financial literacy, with lessons on
                                        investing, saving and
                                        budgeting.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="container pt-5 pb-3 section d-md-none" id="features">
        <div class="row pt-3">
            <div class="col">
                <h2>Features</h2>
                <p>Moneywise offers a complete suite of tools to help get your finances in shape. </p>
            </div>
        </div>
        <div class="d-md-none">
            <div class="row pt-5">
                <div class="col-md-6 col-12">
                    <h3 class="purple">Finance Tracker <i class="fa-solid fa-chart-pie"></i></h3>
                    <p>Our finance tracker gives you an overview of your financial net worth and see a complete view of
                        all
                        your assets.</p>
                </div>
                <div class="col-md-6 col-12 ">
                    <h3 class="purple">Budgeting Tool <i class="fa-solid fa-wallet"></i></h3>
                    <p>Our budgeting tool helps you track and visualise where you are spending the most money and
                        identify
                        where you can save.</p>
                </div>
            </div>
            <div class="row pb-5">
                <div class="col-md-6 col-12 ">
                    <h3 class="purple">Stock Search <i class="fa-solid fa-chart-line"></i></h3>
                    <p>Search over 25,000 stocks worldwide and add them to your own portfolio with our stock search
                        tool.
                    </p>
                </div>
                <div class="col-md-6 col-12 ">
                    <h3 class="purple">Moneywise Academy <i class="fa-solid fa-book"></i></h3>
                    <p>Our financial academy aims to improve your financial literacy, with lessons on investing, saving
                        and
                        budgeting.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="alternate-bg" id="about">
        <div class="container pt-5 pb-5 section">
            <div class="row pt-5 pb-5">
            <div class="col-md-6 col-12">
                    <img src="https://assets.materialup.com/uploads/29ea58e1-53e0-459f-914d-66a4d607cb20/financeapp.png" width="600"
                        height="400" class="img-fluid">
                </div>
                <div class="col-md-6 col-12">
                    <h2>About</h2>
                    <p>We're on a mission to improve financial literacy in the UK, helping people stay out of debt,
                        maximize
                        their earnings through better saving and investing, and enhancing their overall financial
                        knowledge.
                    </p>
                    <p> By providing accessible resources and guidance, we strive to empower individuals to take control
                        of
                        their financial futures and achieve their goals.
                    </p>
                    <a href="/Dissertation/#benefits"><button class="secondary-button">Explore the Benefits</button></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container pt-5 pb-5 section" id="benefits">
        <div class="row pt-3">
            <div class="col text-center">
                <h2>Benefits</h2>
                <p>Still thinking about it? Take a look at the many benefits of signing up to Moneywise. </p>
            </div>
        </div>
        <div class="row pt-3 justify-content-center text-center">
            <div class="col-md-3 col-11 icon-box">
                <i class="fa-solid fa-right-left"></i>
                <h3>Income & Outgoings</h3>
                <p>Track income and outgoings to calculate remaining income. </p>
            </div>
            <div class="col-md-3 col-11 icon-box">
                <i class="fa-solid fa-money-bill-transfer"></i>
                <h3>Budget</h3>
                <p>See where you are spending the most each month. </p>
            </div>
            <div class="col-md-3 col-11 icon-box">
                <i class="fa-solid fa-chart-pie"></i>
                <h3>Net Worth</h3>
                <p>Combine all your assets to see your overall net worth. </p>
            </div>
            <div class="col-md-3 col-11 icon-box">
                <i class="fa-solid fa-money-bill-trend-up"></i>
                <h3>Search Stocks</h3>
                <p>Search over 25,000 stocks and start your investing journey. </p>
            </div>
            <div class="col-md-3 col-11 icon-box">
                <i class="fa-solid fa-chart-simple"></i>
                <h3>Visualise Your Finances</h3>
                <p>See your finances differently with interactive charts.</p>
            </div>
            <div class="col-md-3 col-11 icon-box">
                <i class="fa-solid fa-chart-line"></i>
                <h3>Portfolio </h3>
                <p>Keep track of your investments with a personalised portfolio. </p>
            </div>
        </div>
    </div>
    <div class="alternate-bg section">
        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-10">
                    <h2>Ready to get started? <br> Create your free account today and take the next step in your
                        financial
                        journey. </h2>
                </div>
                <div class="col pt-3">
                    <a href="/Dissertation/register"><button class="secondary-button">Sign Up</button></a>
                </div>
            </div>
        </div>
    </div>
{/block}