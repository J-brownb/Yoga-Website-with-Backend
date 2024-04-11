<?php
class User
{
    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }
    //create new user
    public function createUser($user_data)
    {
        $user_first_name = $user_data['user_first_name'];
        $user_surname = $user_data['user_surname'];
        $user_email = $user_data['user_email'];
        $user_pass = password_hash($user_data['user_pass'], PASSWORD_DEFAULT);

        $query = "INSERT INTO users (user_first_name, user_surname, user_email, user_pass) VALUES (:user_first_name, :user_surname, :user_email, :user_pass)";
        $stmt = $this->Conn->prepare($query);
        return $stmt->execute(
            array(
                'user_first_name' => $user_first_name,
                'user_surname' => $user_surname,
                'user_email' => $user_email,
                'user_pass' => $user_pass
            )
        );
    }

    
    //update pay details for user
    public function updatePay($user_id, $user_data)
    {
        $user_pay_frequency = $user_data['user_pay_frequency'];
        $user_pay = $user_data['user_pay']; 
        $user_next_payday = $user_data['user_next_payday'];

    
        $query = "UPDATE users SET user_pay_frequency = :user_pay_frequency, user_pay = :user_pay, user_next_payday = :user_next_payday WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
    
        return $stmt->execute(
            array(
                'user_id' => $user_id,
                'user_pay_frequency' => $user_pay_frequency,
                'user_pay' => $user_pay,
                'user_next_payday' => $user_next_payday
            )
        );
    }

    public function updateDetails($user_id, $user_data)
    {
        $user_first_name = $user_data['user_first_name'];
        $user_surname = $user_data['user_surname']; 
        $user_email = $user_data['user_email'];

    
        $query = "UPDATE users SET user_first_name = :user_first_name, user_surname = :user_surname, user_email = :user_email WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
    
        return $stmt->execute(
            array(
                'user_id' => $user_id,
                'user_first_name' => $user_first_name,
                'user_surname' => $user_surname,
                'user_email' => $user_email
            )
        );
    }



    //update password 
    public function updatePassword($current_pass, $new_pass) {
        if(!password_verify($current_pass, $_SESSION['user_data']['user_pass'])) {
        // wrong pass
        return false;
        }
        $new_sec_pass = password_hash($new_pass, PASSWORD_DEFAULT);
        $query = "UPDATE users SET user_pass = :user_pass WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array('user_pass' => $new_sec_pass, 'user_id' =>
        $_SESSION['user_data']['user_id']));
        return true;
        }
    

//login user
    public function loginUser($email, $password)
    {
        $query = "SELECT * FROM users WHERE user_email = :user_email";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array('user_email' => $email));
        $attempt = $stmt->fetch();
        if ($attempt && password_verify($password, $attempt['user_pass'])) {
            return $attempt;
        } else {
            return false;
        }
    }


//check email address in use already
public function getUserByEmail($email) {
    $query = "SELECT * FROM users WHERE user_email = :user_email";
    $stmt = $this->Conn->prepare($query);
    $stmt->execute(['user_email' => $email]);
    return $stmt->fetch(PDO::FETCH_ASSOC); 
    
}
    //gets all details for user
    public function getUser($user_id)
    {
        $query = "SELECT * FROM users WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':user_id' => $user_id));
        return $stmt->fetch();
    }



}



