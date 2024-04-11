<!DOCTYPE html>
<html lang="en">
<title>{$view_name} - Moneywise</title>
<head>
    <link rel="stylesheet" href="/Dissertation/css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Ubuntu:wght@700&display=swap"
        rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<header>
    {if $user_data}
    {else}
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
            <a class="navbar-brand pt-3" href="/Dissertation/dashboard"> <img src="/Dissertation/images/mobile-logo.png" width="240"
                    height="75" class="img-fluid"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/Dissertation/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/Dissertation#features">Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/Dissertation#about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/Dissertation#benefits">Benefits</a>
                        </li>
                    </ul>
                    <div class="d-flex">
                        <a href="/Dissertation/register"><button class="primary-button">Join Today</button></a>
                        <a href="/Dissertation/login"><button class="secondary-button">Login</button></a>
                    </div>
                </div>
            </div>
        </nav>
    {/if}
</header>

<body id="page-{$view_name}">
    {block name="body"}{/block}
    <script src="/Dissertation/js/scripts-vendor.min.js"></script>
    <script src="/Dissertation/js/js.min.js"></script>
    <script src="https://kit.fontawesome.com/fd9a509bf6.js" crossorigin="anonymous"></script>
</body>
</html>