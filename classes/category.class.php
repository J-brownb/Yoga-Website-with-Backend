<?php
class Category
{
    protected $Conn;

    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //creates slug for cat pages
        public function createSlug($str, $delimiter = '-')
        {
            $slug = strtolower(trim(preg_replace('/[\s-]+/', $delimiter, preg_replace('/[^A-Za-z0-9-]+/', $delimiter, preg_replace('/[&]/', 'and', preg_replace('/[\']/', '', iconv('UTF-8', 'ASCII//TRANSLIT', $str))))), $delimiter));
            return $slug;
    
        }

        
    //gets cat by slug
    public function getCatBySlug($slug)
    {
        $query = "SELECT pose_categories.*
                  FROM pose_categories 
                  WHERE pose_categories.cat_slug = :cat_slug";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "cat_slug" => $slug
        ]);
        $cat = $stmt->fetch(PDO::FETCH_ASSOC);


        return $cat;
    }


    //gets all categories 
    public function getAllCategories()
    {
        $query = "SELECT * FROM pose_categories ORDER BY cat_name ASC";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    

    //gets specific category
    public function getCategory($category_id)
    {
        $query = "SELECT * FROM pose_categories WHERE cat_id = :cat_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "cat_id" => $category_id
        ]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    //gets the daily featured category
    public function getFeaturedCategory()
    {
        $query = "SELECT * FROM pose_categories
        WHERE cat_featured = 1";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    //sets the daily featured category (via cronjob)
    public function setFeaturedCategory()
    {
        $query = "UPDATE pose_categories SET cat_featured = 0 WHERE cat_featured = 1";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        $query = "UPDATE pose_categories SET cat_featured = 1 ORDER BY RAND() LIMIT 1";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
    }

}