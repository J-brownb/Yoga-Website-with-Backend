{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="banner">
        <div class="bannercontent pb-5">
            <h1>Moon Phases</h1>
            <p>View the upcoming moon phases for Ipswich</p>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/awad-assignment/">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Moon Phases</li>
        </ol>
    </nav>
    <div class="container pt-5 pb-5">
        <div class="row centre">
            {foreach $dates as $key => $date}
                <div class="col-lg-3 results pb-5">
                    <div class="moonimage" style="background-image: url('./images/moons/{$moon_phases[$key]}.jpg');">
                    </div>
                    <h3 class="pt-3">{$moon_phases[$key]}</h3>
                    <p>{$date}</p>
                </div>
            {/foreach}
        </div>
    </div>



{/block}