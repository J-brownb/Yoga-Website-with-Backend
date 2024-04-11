{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar Nav -->
            <div class="col-md-3 col-lg-2 d-md-block p-0 bg-body-tertiary">
                <div class="d-flex flex-column flex-shrink-0 p-3">
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="nav-item">
                            <a href="/Dissertation/" class="nav-link link-body-emphasis" aria-current="page">
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
                            <a href="/Dissertation/stock-viewer" class="nav-link active">
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
            <main class="pt-3 mt-2 col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="container">
                    <div class="row pb-5">
                        <div class="col text-center pt-5">
                            <h1>Search For Any Stock</h1>
                            <p>Powered by 30+ exchange rate data sources, search stock exchange rate data for 30+ Countries
                                and 25,000+ Stocks.</p>
                            <form method="post" action="">
                                <input class="form-control p-3 m-4" type="search" name="searchTerm"
                                    placeholder="Search by company name or ticker.." aria-label="Search">
                                <button class="primary-button" type="submit">Search</button>
                            </form>

                        </div>
                    </div>
                </div>
                {if isset($error)}
                    <div class="alert alert-danger" role="alert">
                        {$error}
                    </div>
                {/if}
                {if isset($searchResults.response) && is_array($searchResults.response)}
                    <div class="row">
                        {foreach $searchResults.response as $result}
                            <div class="col-sm-1 col-md-3 col-lg-4 pb-5">
                                {if isset($result.name)}
                                    <strong>
                                        <p>{$result.name}</p>
                                    </strong>
                                {/if}
                                {if isset($result.short_name)}
                                    <p>Ticker {$result.short_name}</p>
                                {/if}
                                {if isset($result.country)}
                                    <p>Country: {$result.country}</p>
                                {/if}
                                {if isset($result.locality)}
                                    <p>Locality: {$result.locality}</p>
                                {/if}
                                {if isset($result.exch)}
                                    <p>Exchange: {$result.exch}</p>
                                {/if}
                                {if isset($result.ccy)}
                                    <p>Currency: {$result.ccy}</p>
                                {/if}
                                <button class="primary-button" type="submit">More Information</button>
                            </div>
                        {/foreach}

                    {else}
                    {/if}
                </div>

        </div>
    </div>
    </main>
{/block}