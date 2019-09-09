<?php

class ModelExtensionDBlogModulePost extends Model
{

    public function updateViewed($post_id)
    {
        $this->db->query("UPDATE " . DB_PREFIX . "bm_post SET viewed = (viewed + 1) WHERE post_id = '" . (int)$post_id . "'");
    }

    public function getPosts($data = array())
    {
        $sql = "SELECT p.post_id ";

        if (!empty($data['filter_category_id'])) {
            $sql .= " FROM " . DB_PREFIX . "bm_post_to_category p2c";
            $sql .= " LEFT JOIN " . DB_PREFIX . "bm_post p ON (p2c.post_id = p.post_id)";
        } else {
            $sql .= " FROM " . DB_PREFIX . "bm_post p ";
        }

        $sql .= " LEFT JOIN " . DB_PREFIX . "bm_post_description pd ON (p.post_id = pd.post_id) "
            . "LEFT JOIN " . DB_PREFIX . "bm_post_to_store p2s ON (p.post_id = p2s.post_id) "
            . "Left JOIN " . DB_PREFIX . "bm_review r ON (p.post_id = r.post_id) "
            . "WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' "
            . "AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "' "
            . "AND p.date_published < NOW()"
            . "AND p.status = '1' ";
        if (!empty($data['filter_name']) && !empty($data['filter_description'])) {
            $sql .= " AND ( pd.title LIKE '%" . $data['filter_name'] . "%' OR pd.description LIKE '%" . $data['filter_description'] . "%' )";
        } else {

            if (!empty($data['filter_name'])) {
                $sql .= " AND pd.title LIKE '%" . $data['filter_name'] . "%'";
            }

            if (!empty($data['filter_description'])) {
                $sql .= " AND pd.description LIKE '%" . $data['filter_description'] . "%'";
            }
        }

        if (!empty($data['filter_tag'])) {
            $sql .= " AND pd.tag LIKE '%" . $data['filter_tag'] . "%'";
        }

        if (!empty($data['filter_date_published'])) {
            $date = preg_split("/-/", $data['filter_date_published']);

            $sql .= "AND YEAR(p.date_published) = " . $date[1] . " AND MONTH(p.date_published) = " . $date[0];
        }
        if (!empty($data['filter_user_id'])) {
            $sql .= " AND p.user_id = '" . (int)$data['filter_user_id'] . "'";
        }

        if (!empty($data['filter_category_id'])) {
            $sql .= " AND p2c.category_id = '" . (int)$data['filter_category_id'] . "'";
        }

        $sql .= " GROUP BY p.post_id";

        if (isset($data['order']) && ($data['order'] == 'ASC')) {
            $sql .= " ORDER BY p.date_published  ASC";
        } else {
            $sql .= " ORDER BY p.date_published  DESC";
        }

        if (isset($data['start']) || isset($data['limit'])) {
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }

            if ($data['limit'] < 1) {
                $data['limit'] = 20;
            }

            $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
        }
        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getPostLayoutId($post_id)
    {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "bm_post_to_layout "
            . "WHERE post_id = '" . (int)$post_id
            . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

        if ($query->num_rows) {
            return $query->row['layout_id'];
        } else {
            return 0;
        }
    }

    public function getTotalPosts($data = array())
    {
        $sql = "SELECT COUNT(DISTINCT p.post_id) AS total ";

        if (!empty($data['filter_category_id'])) {
            $sql .= " FROM " . DB_PREFIX . "bm_post_to_category p2c";
            $sql .= " LEFT JOIN " . DB_PREFIX . "bm_post p ON (p2c.post_id = p.post_id)";
        } else {
            $sql .= " FROM " . DB_PREFIX . "bm_post p ";
        }

        $sql .= " LEFT JOIN " . DB_PREFIX . "bm_post_description pd ON (p.post_id = pd.post_id) "
            . "LEFT JOIN " . DB_PREFIX . "bm_post_to_store p2s ON (p.post_id = p2s.post_id) "
            . "Left JOIN " . DB_PREFIX . "bm_review r ON (p.post_id = r.post_id) "
            . "WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' "
            . "AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "' "
            . "AND p.status = '1' ";
        if (!empty($data['filter_name']) && !empty($data['filter_description'])) {
            $sql .= " AND ( pd.title LIKE '%" . $data['filter_name'] . "%' OR pd.description LIKE '%" . $data['filter_description'] . "%' )";
        } else {

            if (!empty($data['filter_name'])) {
                $sql .= " AND pd.title LIKE '%" . $data['filter_name'] . "%'";
            }

            if (!empty($data['filter_description'])) {
                $sql .= " AND pd.description LIKE '%" . $data['filter_description'] . "%'";
            }
        }
        if (!empty($data['filter_category_id'])) {
            $sql .= " AND p2c.category_id = '" . (int)$data['filter_category_id'] . "'";
        }
        if (!empty($data['filter_user_id'])) {
            $sql .= " AND p.user_id = '" . (int)$data['filter_user_id'] . "'";
        }

        if (!empty($data['filter_date_published'])) {
            $date = preg_split("/-/", $data['filter_date_published']);
            $sql .= "AND YEAR(p.date_published) = " . $date[1] . " AND MONTH(p.date_published) = " . $date[0];
        }

        if (!empty($data['filter_tag'])) {
            $sql .= " AND pd.tag LIKE '%" . $data['filter_tag'] . "%'";
        }

        $query = $this->db->query($sql);

        return $query->row['total'];
    }

    public function getPostsByCategoryId($category_id = 0)
    {
        $sql = "SELECT p.post_id, p.image, pd.tag, pd.title, pd.meta_title, p.date_added, p.date_published, "
            . "pd.meta_description, pd.meta_keyword, pd.description, "
            . "pd.short_description, AVG(r.rating) as rating FROM " . DB_PREFIX . "bm_post p "
            . "LEFT JOIN " . DB_PREFIX . "bm_post_description pd ON (p.post_id = pd.post_id) "
            . "LEFT JOIN " . DB_PREFIX . "bm_post_to_store p2s ON (p.post_id = p2s.post_id) "
            . "LEFT JOIN " . DB_PREFIX . "bm_post_to_category p2c ON (p.post_id = p2c.post_id) "
            . "LEFT JOIN " . DB_PREFIX . "bm_review r ON (p.post_id = r.post_id) "
            . "WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' ";
        if ($category_id) {
            $sql .= "AND p2c.category_id = '" . $category_id . "' ";
        }
        $sql .= "AND p.status = 1 GROUP BY p.post_id";

        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getPost($post_id)
    {
        $sql = "SELECT p.post_id, p.user_id,p.limit_access_user,p.limit_users,p.limit_access_user_group,p.limit_user_groups,p.user_id, p.image,p.image_title,p.image_alt, p.images_review, pd.tag, pd.title, pd.meta_title, p.date_added, p.date_modified, p.date_published, p.review_display, p.viewed, k.product_id,  "
            . "pd.meta_description, pd.meta_keyword, pd.description, "
            . "pd.short_description, COUNT(DISTINCT r.review_id) as review, ROUND(AVG(r.rating)) as rating "
            . "FROM " . DB_PREFIX . "bm_post AS p "
            . "LEFT JOIN " . DB_PREFIX . "bm_post_description AS pd "
            . "ON (p.post_id = pd.post_id) "
            . "Left JOIN " . DB_PREFIX . "bm_post_to_product AS k "
            . "ON (p.post_id = k.post_id) "
            . "Left JOIN " . DB_PREFIX . "bm_review AS r ON (p.post_id = r.post_id) "
            . "WHERE p.post_id = '" . $post_id . "' "
            . "AND p.status = '1' "
            . "AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' ";
        $sql .= "GROUP BY p.post_id ";

        $query = $this->db->query($sql);

        if (empty($query->row['post_id'])) {
            return false;
        }
        if (empty($query->row['rating'])) {
            $query->row['rating'] = 0;
        }

        return $query->row;
    }

    public function getPostRelated($post_id) {
        $product_data = array();

        $query = $this->db->query("
            SELECT * FROM " . DB_PREFIX . "bm_post_to_product pr LEFT JOIN " . DB_PREFIX . "product p ON (pr.product_id = p.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE pr.post_id = '" . (int)$post_id . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");

        foreach ($query->rows as $result) {
            $product_data[] = $this->getProduct($result['product_id']);
        }

        return $product_data;
    }

    public function getProduct($product_id) {
        $query = $this->db->query("SELECT DISTINCT *, pd.name AS name, p.image, m.name AS manufacturer, (SELECT price FROM " . DB_PREFIX . "product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = '" . (int)$this->config->get('config_customer_group_id') . "' AND pd2.quantity = '1' AND ((pd2.date_start = '0000-00-00' OR pd2.date_start < NOW()) AND (pd2.date_end = '0000-00-00' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM " . DB_PREFIX . "product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = '" . (int)$this->config->get('config_customer_group_id') . "' AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW()) AND (ps.date_end = '0000-00-00' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special, (SELECT points FROM " . DB_PREFIX . "product_reward pr WHERE pr.product_id = p.product_id AND pr.customer_group_id = '" . (int)$this->config->get('config_customer_group_id') . "') AS reward, (SELECT ss.name FROM " . DB_PREFIX . "stock_status ss WHERE ss.stock_status_id = p.stock_status_id AND ss.language_id = '" . (int)$this->config->get('config_language_id') . "') AS stock_status, (SELECT wcd.unit FROM " . DB_PREFIX . "weight_class_description wcd WHERE p.weight_class_id = wcd.weight_class_id AND wcd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS weight_class, (SELECT lcd.unit FROM " . DB_PREFIX . "length_class_description lcd WHERE p.length_class_id = lcd.length_class_id AND lcd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS length_class, (SELECT AVG(rating) AS total FROM " . DB_PREFIX . "review r1 WHERE r1.product_id = p.product_id AND r1.status = '1' GROUP BY r1.product_id) AS rating, (SELECT COUNT(*) AS total FROM " . DB_PREFIX . "review r2 WHERE r2.product_id = p.product_id AND r2.status = '1' GROUP BY r2.product_id) AS reviews, p.sort_order FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) LEFT JOIN " . DB_PREFIX . "manufacturer m ON (p.manufacturer_id = m.manufacturer_id) WHERE p.product_id = '" . (int)$product_id . "' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");

        if ($query->num_rows) {
            return array(
                'product_id'       => $query->row['product_id'],
                'name'             => $query->row['name'],
                'description'      => $query->row['description'],
                'meta_title'       => $query->row['meta_title'],
                'meta_description' => $query->row['meta_description'],
                'meta_keyword'     => $query->row['meta_keyword'],
                'tag'              => $query->row['tag'],
                'model'            => $query->row['model'],
                'sku'              => $query->row['sku'],
                'upc'              => $query->row['upc'],
                'ean'              => $query->row['ean'],
                'jan'              => $query->row['jan'],
                'isbn'             => $query->row['isbn'],
                'mpn'              => $query->row['mpn'],
                'location'         => $query->row['location'],
                'quantity'         => $query->row['quantity'],
                'stock_status'     => $query->row['stock_status'],
                'image'            => $query->row['image'],
                'manufacturer_id'  => $query->row['manufacturer_id'],
                'manufacturer'     => $query->row['manufacturer'],
                'price'            => ($query->row['discount'] ? $query->row['discount'] : $query->row['price']),
                'special'          => $query->row['special'],
                'reward'           => $query->row['reward'],
                'points'           => $query->row['points'],
                'tax_class_id'     => $query->row['tax_class_id'],
                'date_available'   => $query->row['date_available'],
                'weight'           => $query->row['weight'],
                'weight_class_id'  => $query->row['weight_class_id'],
                'length'           => $query->row['length'],
                'width'            => $query->row['width'],
                'height'           => $query->row['height'],
                'length_class_id'  => $query->row['length_class_id'],
                'subtract'         => $query->row['subtract'],
                'rating'           => round($query->row['rating']),
                'reviews'          => $query->row['reviews'] ? $query->row['reviews'] : 0,
                'minimum'          => $query->row['minimum'],
                'sort_order'       => $query->row['sort_order'],
                'status'           => $query->row['status'],
                'date_added'       => $query->row['date_added'],
                'date_modified'    => $query->row['date_modified'],
                'viewed'           => $query->row['viewed']
            );
        } else {
            return false;
        }
    }

    public function getTotalPostsByCategoryId($category_id = 0)
    {
        $sql = "SELECT COUNT(DISTINCT p.post_id) AS total "
            . "FROM " . DB_PREFIX . "bm_post AS p ";
        if ($category_id) {
            $sql .= "LEFT JOIN " . DB_PREFIX . "bm_post_to_category p2c ON (p.post_id = p2c.post_id) "
                . "WHERE p2c.category_id = '" . $category_id . "' ";
        }
        $sql .= "AND p.status = '1'";

        $query = $this->db->query($sql);
        return $query->row['total'];
    }

    public function getNextPost($post_id, $category_id = 0)
    {
        $sql = "SELECT p.post_id, p.user_id, p.image, pd.tag, pd.title, pd.meta_title, p.date_added, p.date_modified, p.review_display, p.viewed,   "
            . "pd.meta_description, pd.meta_keyword, pd.description, "
            . "pd.short_description, COUNT(DISTINCT r.review_id) as review, ROUND(AVG(r.rating)) as rating ";
        if ($category_id) {
            $sql .= " FROM " . DB_PREFIX . "bm_post_to_category p2c";
            $sql .= " LEFT JOIN " . DB_PREFIX . "bm_post p ON (p2c.post_id = p.post_id)";
        } else {
            $sql .= " FROM " . DB_PREFIX . "bm_post p ";
        }
        $sql .= "LEFT JOIN " . DB_PREFIX . "bm_post_description AS pd "
            . "ON (p.post_id = pd.post_id) "
            . "Left JOIN " . DB_PREFIX . "bm_review AS r ON (p.post_id = r.post_id) "
            . "WHERE p.post_id > '" . (int)$post_id . "' "
            . "AND p.status = 1 "
            . "AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' ";

        if ($category_id) {
            $sql .= "AND p2c.category_id = '" . (int)$category_id . "' ";
        }
        $sql .= " GROUP BY p.post_id ";
        $sql .= " ORDER BY p.date_added ";
        $sql .= " ASC ";

        $query = $this->db->query($sql);

        if (empty($query->row['post_id'])) {
            return false;
        }

        if (empty($query->row['rating'])) {
            $query->row['rating'] = 0;
        }
        return $query->row;
    }

    public function getPostVideos($post_id)
    {

        $query = $this->db->query("SELECT pv.post_id AS post_id, pv.text AS text, pv.width as width, pv.height as  height, pv.sort_order as  sort_order, pv.video as  video 
            FROM " . DB_PREFIX . "bm_post_video pv WHERE pv.post_id = '" . (int)$post_id . "' ORDER BY pv.sort_order");

        $post_video_data = array();
        if (!empty($query->rows))
            foreach ($query->rows as $video) {
                $text = (!empty($video['text'])) ? unserialize($video['text']) : array();
                $post_video_data[] = array(
                    'post_id'    => $video['post_id'],
                    'video'      => $video['video'],
                    'text'       => (isset($text[(int)$this->config->get('config_language_id')])) ? $text[(int)$this->config->get('config_language_id')] : '',
                    'width'      => $video['width'],
                    'sort_order' => $video['sort_order'],
                    'height'     => $video['height']
                );
            }
        return $post_video_data;
    }

    public function getPrevPost($post_id, $category_id = 0)
    {
        $sql = "SELECT p.post_id, p.user_id, p.image, pd.tag, pd.title, pd.meta_title, p.date_added, p.date_modified, p.review_display, p.viewed,   "
            . "pd.meta_description, pd.meta_keyword, pd.description, "
            . "pd.short_description, COUNT(DISTINCT r.review_id) as review, ROUND(AVG(r.rating)) as rating ";
        if ($category_id) {
            $sql .= " FROM " . DB_PREFIX . "bm_post_to_category p2c";
            $sql .= " LEFT JOIN " . DB_PREFIX . "bm_post p ON (p2c.post_id = p.post_id)";
        } else {
            $sql .= " FROM " . DB_PREFIX . "bm_post p ";
        }
        $sql .= "LEFT JOIN " . DB_PREFIX . "bm_post_description AS pd "
            . "ON (p.post_id = pd.post_id) "
            . "Left JOIN " . DB_PREFIX . "bm_review AS r ON (p.post_id = r.post_id) "
            . "WHERE p.post_id < '" . (int)$post_id . "' "
            . "AND p.status = 1 "
            . "AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' ";

        if ($category_id) {
            $sql .= "AND p2c.category_id = '" . (int)$category_id . "' ";
        }
        $sql .= " GROUP BY p.post_id ";
        $sql .= " ORDER BY p.post_id ";
        $sql .= " DESC   ";

        $query = $this->db->query($sql);
        if (empty($query->row['post_id'])) {
            return false;
        }

        if (empty($query->row['rating'])) {
            $query->row['rating'] = 0;
        }
        return $query->row;
    }

    public function getAuthor($user_id)
    {
        $sql = "SELECT * "
            . "FROM " . DB_PREFIX . "user "
            . "WHERE user_id = '" . $user_id . "'";

        $query = $this->db->query($sql);
        return $query->row;
    }

    public function editPost($post_id, $data)
    {
        // edited
        if (!empty($data['post_description'])) {
            foreach ($data['post_description'] as $language_id => $value) {
                $implode = array();

                if (isset($value['name'])) {
                    $implode[] = "name='" . $this->db->escape($value['name']) . "'";
                }

                if (isset($value['description'])) {
                    $implode[] = "description='" . $this->db->escape($value['description']) . "'";
                }

                if (count($implode) > 0) {
                    $this->db->query("UPDATE " . DB_PREFIX . "bm_post_description SET " . implode(',', $implode) . "
                    WHERE post_id = '" . $post_id . "' AND language_id='" . $language_id . "'");
                }
            }
        }
    }

}
