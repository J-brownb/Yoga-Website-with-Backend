{extends file="layouts/main.tpl"}
{block name ="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>Your Reviews</h1>
            <p>View the reviews you've added here</p>
        </div>
    </div>
    <div class="container pt-5 pb-5">
        <div class="row centre">
            {if $reviews}
                {foreach $reviews as $review}
                    <div class="col-md-3 pb-3">
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-star mb-3"></i> {$review.review_rating}/5
                                <h6 class="card-subtitle text-muted">{$review.pose_name}</h6>
                            </div>
                            <div class="card-body">
                                <p class="card-text">{$review.review_text}</p>
                            </div>
                        </div>
                    </div>
                {/foreach}
            {else}
                <strong>
                    <p>You have not left any reviews yet, why not <a href="/awad-assignment/all-poses">view all poses</a>.
                    </p>
                </strong>
            {/if}
        </div>
    </div>

{/block}