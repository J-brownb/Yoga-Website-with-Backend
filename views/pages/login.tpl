{extends file="layouts/main.tpl"}
{block name="body"}

    <div class="container pt-2 mt-2 text-center">
        <div class="row">
            <div class="col-sm">
                <form method="post" action="" class="white-bg-form">
                    <h1 class="pb-5">Login</h1>
                    <div class="form-floating mb-3">
                        <input type="email" required class="form-control" id="floatingInput" name="user_email"
                            placeholder="name@example.com">
                        <label class="opacity05" for="floatingInput"><i class="fa-solid fa-envelope"></i> Email</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" required class="form-control" id="floatingPassword" name="user_pass"
                            placeholder="Password">
                        <label class="opacity05" for="floatingPassword"><i class="fa-solid fa-key"></i> Password</label>
                    </div>
                    {if $error}
                        <div class="alert alert-danger" role="alert">
                            {$error}
                        </div>
                    {/if}
                    <button type="submit" name="login" value="1" class="primary-button mt-3 mb-5">Login</button>
                    <p>Don't have an account? Sign up <a href="/Dissertation/register">here</a></p>
                </form>
            </div>
        </div>
    </div>
{/block}