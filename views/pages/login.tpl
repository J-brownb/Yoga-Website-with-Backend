{extends file="layouts/main.tpl"}
{block name ="body"}
  <div class="banner">
    <div class="bannercontent pb-5">
      <h1>Login or Register</h1>
      <p>Login or create an account to save poses to your routine.</p>
    </div>
  </div>
  <div class="container pb-5">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/awad-assignment/index.php">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Login</li>
      </ol>
    </nav>
    {if $error}
      <div class="alert alert-danger" role="alert">
        {$error}
      </div>
    {/if}
    {if $success}
      <div class="alert alert-success" role="alert">
        {$success}
      </div>
    {/if}
    <div class="container pt-5">
      <div class="row">
        <div class="col-sm">
          <h2>Login to Your Account</h2>
          <form id="login-form" method="post" action="">
            <div class="mb-3">
              <label class="form-label" for="login_email">Email address</label>
              <input type="email" class="form-control" id="login_email" name="email" />
            </div>
            <div class="mb-3">
              <label class="form-label" for="login_password">Password</label>
              <input type="password" class="form-control" id="login_password" name="password" />
            </div>
            <button type="submit" name="login" value="1" class="btn btn-primary">Login</button>
        </div>
        </form>
        <div class="col-sm">
          <h2>Register for an Account</h2>
          <form id="registration-form" method="post" action="">
            <div class="mb-3">
              <label class="form-label" for="name">First Name</label>
              <input type="text" class="form-control" id="name" name="name" />
            </div>
            <div class="mb-3">
              <label class="form-label" for="surname">Last Name</label>
              <input type="text" class="form-control" id="surname" name="surname" />
            </div>
            <div class="mb-3">
              <label class="form-label" for="reg_email">Email address</label>
              <input type="email" class="form-control" id="reg_email" name="email" />
            </div>

            <div class="mb-3">
              <label class="form-label" for="reg_password">Password</label>
              <input type="password" class="form-control" id="reg_password" name="password" />
            </div>
            <div class="mb-3">
              <label class="form-label" for="reg_password_confirm">Confirm Password</label>
              <input type="password" class="form-control" id="reg_password_confirm" name="password_confirm" />
            </div>
            <button type="submit" name="register" value="1" class="btn btn-primary">Register</button>
          </form>
        </div>
      </div>
    </div>
  </div>
{/block}