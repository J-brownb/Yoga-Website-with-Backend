{extends file="layouts/nav.tpl"}
{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row pb-5">
            <div class="col text-center">
                <h1>Your Settings</h1>
                <p>View and delete your previous submissions and update your pay details.</p>
            </div>
            {if $financeSuccess}
                <div class="alert alert-success" role="alert">
                    {$financeSuccess}
                </div>
            {/if}
            {if $financeError}
                <div class="alert alert-danger" role="alert">
                    {$financeError}
                </div>
            {/if}
            {if $budgetSuccess}
                <div class="alert alert-success" role="alert">
                    {$budgetSuccess}
                </div>
            {/if}
            {if $budgetError}
                <div class="alert alert-danger" role="alert">
                    {$budgetError}
                </div>
            {/if}
            {if $paySuccess}
                <div class="alert alert-success" role="alert">
                    {$paySuccess}
                </div>
            {/if}
            {if $payError}
                <div class="alert alert-danger" role="alert">
                    {$payError}
                </div>
            {/if}
        </div>
        <div class="row pb-5">
            <div class="col">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link setting-tabs active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home"
                            type="button" role="tab" aria-controls="home" aria-selected="true">Finance Entries</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link setting-tabs" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile"
                            type="button" role="tab" aria-controls="profile" aria-selected="false">Budget
                            Entries</button>
                    </li>
                    <!-- New Tab Button -->
                    <li class="nav-item" role="presentation">
                        <button class="nav-link setting-tabs" id="new-tab" data-bs-toggle="tab" data-bs-target="#new" type="button"
                            role="tab" aria-controls="new" aria-selected="false">Update
                            Pay</button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        {if $allFinancesData}
                            <div class="table-responsive">
                                <table class="table table-striped mt-3">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="theader">Entry Date</th>
                                            <th scope="col" class="theader">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {foreach from=$allFinancesData item=finances}
                                            <tr>
                                                <td>{$finances.input_date}</td>
                                                <td>
                                                    <form id="deleteForm{$finances.submission_id}" action="" method="post">
                                                        <input type="hidden" name="submission_id" value="{$finances.submission_id}">
                                                        <button type="button" class="btn btn-danger"
                                                            onclick="confirmDelete({$finances.submission_id})">Delete Entry</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        {/foreach}
                                     </tbody>
                                </table>
                            </div>
                        {else}
                            <div class="container mt-3">
                            <div class="row justify-content-center align-items-center detail-box pt-5 pb-5">
                            <div class=" col-md-8 col-11">
                            <h1>{$user_data['user_first_name']}, say hello to your finances!👋</h1>
                                        <p>Use the button below to input your financial details to get an overview of your total funds,
                                            visualise your finances over time and save money more effectively by setting custom goals.</p>
                                            <a href="/Dissertation/finances"><button class="primary-button">Update Finances</button></a>

                                        <div class="col">
                                            {if $success}
                                                <div class="alert alert-success" role="alert">
                                                    {$success}
                                                </div>
                                            {/if}
                                            {if $error}
                                                <div class="alert alert-danger" role="alert">
                                                    {$error}
                                                </div>
                                            {/if}
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-11">
                                    <img src="/Dissertation/images/finance-preview-white.png"
                                    width="600" height="400" class="img-fluid rounded-3 shadow-sm">
                                    </div>
                                </div>
                       
                        </div>
                    {/if}
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    {if $allBudgetData}
                    <div class="table-responsive">
                        <table class="table table-striped mt-3">
                            <thead>
                                <tr>
                                    <th scope="col" class="theader">Entry Date</th>
                                    <th scope="col" class="theader">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$allBudgetData item=budget}
                                <tr>
                                    <td>{$budget.input_date}</td>
                                    <td>
                                    <form id="deleteFormBudget{$budget.submission_id}" action="" method="post">
                                    <input type="hidden" name="budget_submission_id" value="{$budget.submission_id}">
                                    <button type="button" class="btn btn-danger"
                                        onclick="confirmDeleteBudget({$budget.submission_id})">Delete Entry</button>
                                </form>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                        <div class="container mt-3">
                        <div class="row justify-content-center align-items-center detail-box pt-5 pb-5">
                                <div class=" col-md-8 col-11">
                                <h1>{$user_data['user_first_name']}, say hello to your budget!👋</h1>
                            <p>Use the button below to input your budget details to get insights about where you are spending the most and how much remaining income you have and view customised insighs about your budget.</p>
                            <a href="/Dissertation/budgeting-tool"><button class="primary-button">Update Budget</button></a>

                            <div class="col">
                            {if $success}
                                <div class="alert alert-success" role="alert">
                                    {$success}
                                </div>
                            {/if}
                            {if $error}
                                <div class="alert alert-danger" role="alert">
                                    {$error}
                                </div>
                            {/if}
                        </div>
                        </div>
                        <div class="col-md-3 col-11">
                        <img src="/Dissertation/images/budget-preview-white.png"
                        width="600" height="400" class="img-fluid rounded-3 shadow-sm">  
                        </div>
                    </div>
            
                </div>
                        {/if}
                    </div>
                    <div class="container mt-3 mb-5 pb-5">
                    <div class="tab-pane fade" id="new" role="tabpanel" aria-labelledby="new-tab">
                        <div class="row mt-4">
                            <form action="" method="post">
                                <div class="form-floating mb-3">
                                    <input type="text" required class="form-control" id="floatingUserPay" name="user_pay"
                                        placeholder="user_pay">
                                    <label class="opacity05" for="floatingUserPay">Pay Amount</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <select class="form-select" required id="floatingUserPayFrequency"
                                        name="user_pay_frequency" aria-label="User Pay Frequency">
                                        <option value="" disabled selected>Select Frequency</option>
                                        <option value="Weekly">Weekly</option>
                                        <option value="Monthly">Monthly</option>
                                    </select>
                                    <label class="opacity05" for="floatingUserPayFrequency">Pay
                                        Frequency</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="date" required class="form-control" id="floatingUserPaydate"
                                        name="user_next_payday" placeholder="user_next_payday">
                                    <label class="opacity05" for="floatingUserPaydate">Next Payday</label>
                                </div>
                                <button type="submit" class="primary-button">Update</button>
                            </form>
                        </div>
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
                    advice, always consult with a qualified financial advisor before making any financial decisions.
                </p>
            </div>
        </div>
    </div>
</div>
    </main>

{/block}