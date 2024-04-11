{extends file="layouts/mobile-menu.tpl"}
{extends file="layouts/main.tpl"}
{block name="body"}
    {* MAIN MENU *}
    <div class="container-fluid" id="collapsed-main">
        <div class="row">
            <!-- Sidebar Nav -->
            <div class="collapsed-sidebar shadow col-md-2 col-lg-1 d-md-block p-0">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                    <ul class="nav nav-pills flex-column mb-auto mt-3">
                        <li class="nav-item">
                            <a href="/Dissertation/dashboard" class="nav-link link-body-emphasis">
                                <i class="fas fa-home"></i>
                                <p class="tiny">Dashboard</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link link-body-emphasis" aria-current="page">
                                <i class="fa-solid fa-wallet"></i>
                                <p class="tiny">Budgeting</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/stock-viewer" class="nav-link active mb-2">
                                <i class="fa-solid fa-chart-line"></i>
                                <p class="tiny white">Stocks</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/finances" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-chart-pie"></i>
                                <p class="tiny">Finances</p>
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/financial-academy" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-book"></i>
                                <p class="tiny">Academy</p>
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
                    <a class="navbar-brand pt-3" href="/Dissertation"> <img src="./images/white-bg-logo.png" width="200"
                            height="75" class="img-fluid desktop-logo"></a>
                    <ul class="nav nav-pills flex-column mb-auto mt-3">
                        <li class="nav-item">
                            <a href="/Dissertation/dashboard" class="nav-link link-body-emphasis">
                                <i class="fas fa-home"></i>
                                Dashboard
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/budgeting-tool" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-wallet"></i>
                                Budgeting
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/stock-viewer" class="nav-link active" aria-current="page">
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
    {* <button id="dark-mode">Dark</button> *}
    <main class="full col-md-9 pt-3 ms-sm-auto col-lg-10">
        <nav class="navbar navbar-expand-lg navbar-light bg-light pb-4  d-none d-sm-block">
            <div class="container-fluid flex-row justify-content-end">
                <a class="navbar-brand pt-3" href="#"> </a>
                <div class="dropdown user-menu">
                    <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="./images/Icon.jpg" alt="" width="32" height="32" class="rounded-circle me-2">
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
        {if $user_data['invest_lesson_complete'] == 1}
            <div class="container">
                <div class="row pb-5">
                    <div class="col text-center pt-5">
                        <h1>Search For Any Stock</h1>
                        <p>Powered by 30+ exchange rate data sources, search stock exchange rate data for 30+ Countries
                            and 25,000+ Stocks.</p>
                        <form method="post" action="" class="mx-5">
                            <input class="form-control p-3 mb-3" type="search" name="searchTerm" required
                                placeholder="Search by company name or ticker.." aria-label="Search">
                            <button class="primary-button" id="search-stocks" name="searchStocks" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        {else}
            <div class="container mb-5 mt-5 pb-5 pt-5">
                <div class="row justify-content-center align-items-center detail-box pt-5 pb-5">
                    <div class=" col-md-8 col-11">
                        <h1>Search For Any Stock</h1>
                        <p>Powered by 30+ exchange rate data sources, search stock exchange
                            rate data for 30+ Countries and 25,000+ Stocks. <br> <br> Our stock search allows you to
                            search the world's leading companies and add them to your own personalised portfolio to keep
                    track of your investing journey progress.</p>
                <div class="alert alert-warning" role="alert">Investing puts your capital at risk and
                    you may get back less than invested. You'll need to complete our <a class="purple-dark"
                                href="/Dissertation/lesson/1"> beginner investing</a> lesson before you can view
                            stocks.</div>
                    </div>
                    <div class="col-md-3 col-11">
                        <img src="/Dissertation/images/stock-preview-white.png" width="600" height="400"
                            class="img-fluid rounded-3 shadow-sm">

                    </div>
                </div>
            {/if}
            <div class="container">
                <div class="row">
                    <div class="col">
                        {if isset($error)}
                            <div class="alert alert-danger" role="alert">
                                {$error}
                            </div>

                        {/if}
                    </div>
                    <div class="row justify-content-center">
                        {if isset($searchResults.response) && is_array($searchResults.response)}
                            {foreach $searchResults.response as $result}
                                <div class="detail-box col-md-3 col-11">
                                    {if isset($result.name)}
                                        <strong>
                                            <p>{$result.name} ({if isset($result.short_name)}{$result.short_name}{/if})</p>
                                        </strong>
                                    {/if}

                                    {if isset($result.country)}
                                        <p>Country: {$result.country}{if isset($result.locality)}, {$result.locality}{/if}</p>
                                    {/if}

                                    {if isset($result.exch)}
                                        <p>Exchange: {$result.exch}</p>
                                    {/if}
                                    {if isset($result.ccy)}
                                        <p>Currency: {$result.ccy}</p>
                                    {/if}
                                    <a href="/Dissertation/stock-detail/{$result.id}"><button class="primary-button">More
                                            Information</button></a>
                                </div>
                            {/foreach}
                        {else}
                        {/if}
                    </div>
                    <div class="row">
                        {if $portfolioSuccess}
                            <div class="alert alert-success" role="alert">
                                {$portfolioSuccess}
                            </div>
                        {/if}
                        {if $portfolioError}
                            <div class="alert alert-danger" role="alert">
                                {$portfolioError}
                            </div>
                        {/if}
                        {if $deleteSuccess}
                            <div class="alert alert-success" role="alert">
                                {$deleteSuccess}
                            </div>
                        {/if}
                        {if $deleteErorr}
                            <div class="alert alert-danger" role="alert">
                                {$deleteError}
                            </div>
                        {/if}
                    </div>
                </div>
                {if $portfolioData}
                    <div class="container mb-5">
                        <h2 class="mt-3 mb-5 pb-5 text-center">Your Portfolio</h2>
                        <div class="row gx-5 m-2">
                            <div class="col-12 col-md-4">
                                <canvas id="portfolio-pie"></canvas>
                            </div>
                            <div class="col-12 col-md-8">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="theader">Stock Name</th>
                                                <th scope="col" class="theader">Price</th>
                                                <th scope="col" class="theader">Shares</th>
                                                <th scope="col" class="theader">Value</th>
                                                <th scope="col" class="theader">Action</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            {foreach $portfolioData as $data}
                                                <tr>
                                                    <td>{$data.stock_name}</td>
                                                    <td>{$data.stock_price}</td>
                                                    <td>{$data.number_shares}</td>
                                                    {assign var="totalValue" value=$data.stock_price * $data.number_shares}
                                                    <td>{$totalValue|my_number_format} ({$data.stock_currency})</td>
                                                    <td>
                                                        <form action="" method="post" id="deleteForm{$data.submission_id}">
                                                            <input type="hidden" name="submission_id" value="{$data.submission_id}">
                                                            <button type="button" class="btn btn-danger"
                                                                onclick="confirmDelete({$data.submission_id})"><i
                                                                    class="fa-solid fa-trash-can"></i></button>
                                                        </form>

                                                    </td>
                                                </tr>
                                            {/foreach}
                                        </tbody>
                                    </table>
                                    <div class="col text-center">
                                        <!-- Button trigger modal -->
                                        <button type="submit" class="primary-button mt-3" data-bs-toggle="modal"
                                            data-bs-target="#portfolioModal">
                                            Add To Portfolio
                                        </button>
                                        <div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                {elseif $user_data['invest_lesson_complete'] == 1}
                    <div class="container mb-5 pb-5">
                        <div class="row justify-content-center align-items-center detail-box pt-5 pb-5">
                            <div class="col-md-8 col-11">
                                <h1>{$user_data['user_first_name']}, say hello to your portfolio!👋</h1>
                                <p>Add stocks to your personalised portfolio and track your total investment value.</p>
                                    <button type="submit" class="primary-button mt-3" data-bs-toggle="modal"
                                        data-bs-target="#portfolioModal">
                                        Add To Portfolio
                                    </button>
                                </div>
                                <div class="col-md-3 col-11">
                                    <img src="/Dissertation/images/stock-preview-white.png" width="600" height="400"
                                        class="img-fluid rounded-3 shadow-sm">
                                </div>
                            </div>
                        {/if}
                    </div>
                        <!-- Modal -->
                        <div class="modal fade" id="portfolioModal" tabindex="-1" aria-labelledby="portfolioModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="portfolioModalLabel">Add to Portfolio</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form method="post" action="" class="">
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="stock_name"
                                                    placeholder="Stock Name" required>
                                                <label class="opacity05" for="floatingInput">Stock Name</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="stock_price"
                                                    placeholder="Stock Price" required>
                                                <label class="opacity05" for="floatingInput">Stock Price</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="stock_currency"
                                                    placeholder="Stock Currency">
                                                <label class="opacity05" for="floatingInput">Stock Currency</label>
                                            </div>
                                            <div class="form-floating mb-3 col">
                                                <input type="text" class="form-control" id="floatingInput" name="number_shares"
                                                    placeholder="Number of Shares" required>
                                                <label class="opacity05" for="floatingInput">Number of Shares</label>
                                            </div>
                                            <button type="submit" name="submitPortfolio" value="1"
                                                class="primary-button mt-3 mb-5">Submit</button>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer text-center pt-3 ms-sm-auto">
                <div class="container">
                    <div class=" row">
                        <div class="col">
                            <p>The tools provided on this website are for educational purposes only. They do not constitute
                                financial
                                advice, always consult with a qualified financial advisor before making any financial
                                decisions.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <script>
            let stockData = [];

            
                                    {foreach $portfolioData as $data}
                var stockName = "{$data.stock_name}";
                var totalValue = "{$data.stock_price * $data.number_shares}";
                stockData.push({ stockName: stockName, totalValue: totalValue });
                
                                    {/foreach}

            const data = {
                labels: stockData.map(stock => stock.stockName),
                datasets: [{
                    data: stockData.map(stock => parseFloat(stock.totalValue)),
                    backgroundColor: ['#023045', '#cdff1a', '#74526c', '#3366cc', '#ffcc00', '#ff6666', '#4d4dff',
                        '#33cc33', '#9933ff', '#ff9933', '#ff5050', '#66ff99', '#6666ff', '#ff6666', '#ff3300',
                        '#ccff66', '#ff9966', '#6699ff'
                    ],
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

            // Render Chart.js chart
            new Chart(document.getElementById("portfolio-pie"), chartConfig);
        </script>

    {/block}