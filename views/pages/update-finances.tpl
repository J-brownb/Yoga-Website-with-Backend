{* {extends file="layouts/main.tpl"}
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
                            <a href="/Dissertation/stock-viewer" class="nav-link link-body-emphasis">
                                <i class="fa-solid fa-chart-line"></i>
                                Stocks
                            </a>
                        </li>
                        <li>
                            <a href="/Dissertation/finances" class="nav-link active">
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
                <div class="row pt-5 pb-5 text-center ">
                    <form method="post" action="" class="white-bg-form">
                        <h1 class="pb-5">Update Finances</h1>
                        <div class="form-floating mb-3 col">
                            <i class="bi bi-envelope"></i>
                            <input type="text" class="form-control" id="floatingInput" name="savings_current_account"
                                placeholder="Current Account Balance">
                            <label class="opacity05" for="floatingInput">Current Account Balance</label>
                        </div>
                        <div class="row g-2">
                            <div class="form-floating mb-3 col">
                                <i class="bi bi-envelope"></i>
                                <input type="text" class="form-control" id="floatingInput" name="savings_account1"
                                    placeholder="Savings Account #1 Balance">
                                <label class="opacity05" for="floatingInput">Savings Account #1 Balance</label>
                            </div>
                            <div class="form-floating mb-3 col-4">
                                <input type="text" class="form-control" id="floatingInput" name="savings_account1_interest"
                                    placeholder="Savings Account #1 Interest">
                                <label class="opacity05" for="floatingInput">Interest %</label>
                            </div>
                        </div>
                        <div class="row g-2">
                            <div class="form-floating mb-3 col-8">
                                <i class="bi bi-envelope"></i>
                                <input type="text" class="form-control" id="floatingInput" name="savings_account2"
                                    placeholder="Savings Account #2 Balance">
                                <label class="opacity05" for="floatingInput">Savings Account #2 Balance</label>
                            </div>
                            <div class="form-floating mb-3 col-4">
                                <input type="text" class="form-control" id="floatingInput" name="savings_account2_interest"
                                    placeholder="Savings Account #2 Interest">
                                <label class="opacity05" for="floatingInput">Interest %</label>
                            </div>
                        </div>
                        <div class="row g-2">
                            <div class="form-floating mb-3 col-8">
                                <i class="bi bi-envelope"></i>
                                <input type="text" class="form-control" id="floatingInput" name="savings_account3"
                                    placeholder="Savings Account #3 Balance">
                                <label class="opacity05" for="floatingInput">Savings Account #3 Balance</label>
                            </div>
                            <div class="form-floating mb-3 col-4">
                                <input type="text" class="form-control" id="floatingInput" name="savings_account3_interest"
                                    placeholder="Savings Account #3 Interest">
                                <label class="opacity05" for="floatingInput">Interest %</label>
                            </div>
                        </div>
                        <div class="form-floating mb-3 col">
                            <i class="bi bi-envelope"></i>
                            <input type="text" class="form-control" id="floatingInput" name="savings_investments"
                                placeholder="Investment Account Balance">
                            <label class="opacity05" for="floatingInput">Investment Account Balance</label>
                        </div>
                        <div class="form-floating mb-3 col">
                            <i class="bi bi-envelope"></i>
                            <input type="text" class="form-control" id="floatingInput" name="savings_other"
                                placeholder="Other Savings">
                            <label class="opacity05" for="floatingInput">Other Savings</label>
                        </div>
                        <div class="form-floating mb-3 col">
                            <i class="bi bi-envelope"></i>
                            <input type="date" class="form-control" id="floatingInput" name="input_date" placeholder="Date">
                            <label class="opacity05" for="floatingInput">Date</label>
                        </div>
                        {if $success}
                            <div class="alert alert-success" role="alert">
                                {$success}
                            </div>
                        {/if}
                        <button type="submit" name="Submit Finances" value="1"
                            class="primary-button mt-3 mb-5">Submit</button>
                    </form>
                </div>
        </div>
    </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
{/block} *}