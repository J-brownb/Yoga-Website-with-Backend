{extends file="layouts/nav.tpl"}
{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row pb-5">
            <div class="col text-center">
                {if $bizLogo}
                    <img src="https://logo.clearbit.com/{$bizLogo}" alt="{$stockDetails.response[0].full_name} logo" width="128"
                        height="128" class="m5" class="img-fluid">
                {else}
                    <img src="./images/noimage.png">
                {/if}
                <h1>{$stockDetails.response[0].full_name} ({$stockDetails.response[0].symbol})</h1>
                <p>{$stockDetails.response[0].lesson_description}</p>
                <p>{$stockDetails.response[0].exch}</p>
            </div>
        </div>
        <div class="row pb-5 justify-content-center">
            <div class="col-md-6 col-12">
                <h3>Overview</h3>
                <p class="box-value">{$priceDetails.response[0].c}
                    ({$priceDetails.response[0].ccy})</p>
                <p>
                    {if ({$priceDetails.response[0].ch} > 0)}
                        <span class="green">
                            {$priceDetails.response[0].ch}
                        {else}
                            <span class="red">
                                {$priceDetails.response[0].ch}</span>
                        {/if}
                        {if ({$priceDetails.response[0].cp} > 0)}
                            <span class="green">
                                (+{$priceDetails.response[0].cp})</span>
                        {else}
                            <span class="red">
                                ({$priceDetails.response[0].cp})</span>
                        {/if}
                </p>
                <p>High: {$priceDetails.response[0].h} | Low: {$priceDetails.response[0].l}</p>
                <!-- Button trigger modal -->
                <button type="submit" class="primary-button" data-bs-toggle="modal" data-bs-target="#portfolioModal">
                    Add To Portfolio
                </button>
            </div>
            <div class="col-md-4 col-12 detail-box">
                <h3>{$stockDetails.response[0].full_name} Discussion</h3>
                {if $Comments}
                    <div class="comment-section">
                        {foreach $Comments as $comment}
                            <div class="comment">
                                <p>{$comment.comment}</p>
                                <small class="opacity05">- {$comment.user_first_name} | posted on {$comment.comment_date}</p>
                                    </small>

                            </div>
                        {/foreach}
                    </div>
                {else}
                    <p>No comments yet! Be the first to contribute.</p>
                {/if}
                <form method="post" action="" class="mt-3">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Add a Comment.." aria-label="Add a Comment"
                            aria-describedby="Add a Comment" name="comment" required>
                        <button type="submit" name="stockComment" value="1" class="primary-button" type="button"><i
                                class="fa-solid fa-paper-plane"></i></button>
                    </div>
                </form>
                {if $commentSuccess}
                    <div class="alert alert-success" role="alert">
                        {$commentSuccess}
                    </div>
                {/if}
                {if $commentError}
                    <div class="alert alert-danger" role="alert">
                        {$commentError}
                    </div>
                {/if}
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row text-center ">
            <div class="col mb-5 mt-3">
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
    <div class="modal fade" id="portfolioModal" tabindex="-1" aria-labelledby="portfolioModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="portfolioModalLabel">Add to Portfolio</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="" class="">
                    <div class="form-floating mb-3 col">
                        <input type="text" class="form-control" id="floatingInput" name="stock_name"
                            placeholder="Stock Name" value="{$stockDetails.response[0].full_name}" required>
                        <label class="opacity05" for="floatingInput">Stock Name</label>
                    </div>
                    <div class="form-floating mb-3 col">
                        <input type="text" class="form-control" id="floatingInput" name="stock_price"
                            placeholder="Stock Price" value="{$priceDetails.response[0].c|my_number_format}" required>
                        <label class="opacity05" for="floatingInput">Stock Price
                            ({$priceDetails.response[0].ccy})</label>
                    </div>
                    <div class="form-floating mb-3 col">
                        <input type="text" class="form-control" id="floatingInput" name="stock_currency"
                            placeholder="Stock Currency" value="{$priceDetails.response[0].ccy}">
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
            <div class="footer text-center pt-3 ms-sm-auto">
                <div class="container">
                    <div class="row">
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