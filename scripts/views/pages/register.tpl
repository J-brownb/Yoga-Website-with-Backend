{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container pt-2 mt-2 text-center">
        <div class="row">
            <div class="col-sm">
                <form method="post" action="" class="white-bg-form">
                    <h1 class="pb-5">Register</h1>
                    <div class="row g-2">
                        <div class="form-floating mb-3 col">
                            <i class="bi bi-envelope"></i>
                            <input type="text" required class="form-control" id="floatingInput" name="user_first_name"
                                placeholder="First Name">
                            <label class="opacity05" for="floatingInput">First Name</label>
                        </div>
                        <div class="form-floating mb-3 col">
                            <input type="text" required class="form-control" id="floatingInput" name="user_surname"
                                placeholder="Last Name">
                            <label class="opacity05" for="floatingInput">Last Name</label>
                        </div>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" required class="form-control" id="floatingInput" name="user_email"
                            placeholder="Email Address">
                        <label class="opacity05" for="floatingEmail">Email</label>
                    </div>
                    <div class="form-floating mb-3 password-input-container">
                        <input type="password" enz-enable enz-theme="light" enz-min-password-score="4"
                            enz-css-success-class="field-ok" enz-css-fail-class="field-invalid" required
                            class="form-control" id="floatingPassword" name="user_pass" placeholder="Password">
                        <i class="fa-solid fa-eye password-eye-icon text-muted"></i>
                        <label class="opacity05" for="floatingPassword"><i class="fa-solid fa-key"></i> Password</label>
                    </div>
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
                    <button id="register" type="submit" name="register" value="1"
                        class=" primary-button mt-3 mb-3">Register</button>
                    <div class="d-none alert alert-warning" id="password-notice" role="alert">
                        Please consider using a stronger password.
                    </div>
                    <p>Already registered? Login <a href="/Dissertation/login">here</a></p>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="https://cdn.enzoic.com/js/enzoic.min.js">
    </script>
{/block}