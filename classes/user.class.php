<?php
class User
{
    protected $Conn;
    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //Creates new user account
    public function createUser($user_data)
    {
        $sec_password = password_hash($user_data['password'], PASSWORD_DEFAULT);
        $user_reg_date = date("Y/m/d");

        $query = "INSERT INTO users (user_email, user_pass, user_name, user_surname, user_reg_date)
        VALUES (:user_email, :user_pass, :user_name, :user_surname, :user_reg_date)";
        $stmt = $this->Conn->prepare($query);
        return $stmt->execute(
            array(
                'user_email' => $user_data['email'],
                'user_pass' => $sec_password,
                'user_name' => $user_data['name'],
                'user_surname' => $user_data['surname'],
                'user_reg_date' => $user_reg_date,
            )
        );

    }

    //Logs in user
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

    //gets user by user id
    public function getUser($user_id)
    {
        $query = "SELECT * FROM users WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':user_id' => $user_id));
        return $stmt->fetch();

    }

    // Changes password 
    public function changeUserPassword($current_pass, $new_pass)
    {
        if (!password_verify($current_pass, $_SESSION['user_data']['user_pass'])) {
            // wrong pass
            return false;
        }

        $new_sec_pass = password_hash($new_pass, PASSWORD_DEFAULT);
        $query = "UPDATE users SET user_pass = :user_pass WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array('user_pass' => $new_sec_pass, 'user_id' => $_SESSION['user_data']['user_id']));
        return true;
    }


    //Deletes user
    public function deleteUser($user_id)
    {
        $query = "DELETE FROM users WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->bindValue(":user_id", $user_id);
        $stmt->execute();

    }

    //gets points of user 
    public function getUserPoints()
    {
        $query = "SELECT user_points FROM users WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array('user_id' => $_SESSION['user_data']['user_id']));
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['user_points'];
    }


}