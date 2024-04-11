{extends file="layouts/nav.tpl"}
{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row pb-5">
            <div class="col text-center">
                <h1>{$lessonData.lesson_title}</h1>
                <p>{$lessonData.lesson_description}</p>

        </div>
    </div>
    {if $qerror}
        <div class="alert alert-danger" role="alert">
            {$qerror}
    </div> {/if}
    {if $success}
        <div class="alert alert-success" role="alert">
            {$success}
        </div>
        <div>
            <form method="post">
                <button type="submit" name="claim-badge" value="1" class="primary-button mt-3 mb-5">Claim Your Badge</button>
            </form>
        </div>
    {/if}
    {if $error}
        <div class="alert alert-danger" role="alert">
            {$error}
        </div>
    {/if}
    <div class="container">
        {for $i=1 to 5}
            <div class="row">
                <div class="col">
                    <p>{$lessonData["lesson_question_{$i}"]}
                        <i class="fa-solid fa-circle-info mt-4" type="button" class="btn btn-secondary" data-bs-toggle="tooltip"
                            data-bs-placement="right" data-bs-title="{$lessonData["question_{$i}_hint" ]}"></i>
                    </p>
                    <form method="post">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="q{$i}_option1" id="q{$i}_option1"
                                value="q{$i}_a">
                            <label class="form-check-label" for="q{$i}_option1">
                                {$lessonData["question{$i}_option1"]}
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="q{$i}_option2" id="q{$i}_option2"
                                value="q{$i}_b">
                            <label class="form-check-label" for="q{$i}_option2">
                                {$lessonData["question{$i}_option2"]}
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="q{$i}_option3" id="q{$i}_option3"
                                value="q{$i}_c">
                            <label class="form-check-label" for="q{$i}_option3">
                                {$lessonData["question{$i}_option3"]}
                            </label>
                        </div>
                </div>
            </div>
        {/for}
        <button type="submit" name="submit-answers" value="1" class="primary-button mt-3 mb-5">Submit
            Answers</button>
    </div>

    </form>
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

    </body>
{/block}