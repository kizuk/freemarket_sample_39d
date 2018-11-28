## users table
|column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|phone_num|integer|null: false,unique: true|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|zipcode|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|adress|integer|null: false|
|building|string|---|
|introduction|text|---|
|icon|string|------|
|birth_day|string|--|

### Association
- has_many :credit_cards, dependent: :destroy
- has_many :items, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :comments, dependent: :destroy

## credit_cards table
|column|Type|Options|
|------|----|-------|
|number|integer|null: false,unique: true|
|expire|integer|null: false|
|security|integer|null: false|

### Association
- belongs_to :user

## items table
|column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index|
|explain|text|null: false|
|category_l_id|references|null: false,add_index,foreign_key: true|
|category_m_id|references|null: false, add_index?,foreign_key: true|
|category_s_id|references|null: false,add_index,foreign_key: true|
|size|stirng|-----|
|condition|string|null: false|
|brand_id|references|foreign_key: true|
|shipping_cost|string|null: false|
|area|string|null: false|
|shipping_date|string|null: false|
|price|integer|null: false|
|status|string|null: false|

### Association
- has_many :comments, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :images, dependent: :destroy
- has_one :category_l
- has_one :category_m
- has_one :category_s
- has_one :brand, dependent: :destroy
- belongs_to :user

## images table
|column|Type|Options|
|------|----|-------|
|image_url|string|null: false|
|item_id|references|null: false,foreign_key: true|

### Association
- belongs_to :item

## categories_l table
|column|Type|Options|
|------|----|-------|
|genre|string|----|

### Association
- has_many :categories_m
- belongs_to :items

## categories_m table
|column|Type|Options|
|------|----|-------|
|genre|string|----|
|category_l_id|reference|null: false, foreign_key: true|

### Association
- has_many :categories_s
- belongs_to :item
- belongs_to :category_l

## categories_s table
|column|Type|Options|
|------|----|-------|
|genre|string|----|
|category_m_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :category_m


## brands table
|column|Type|Options|
|------|----|-------|
|brand_name|string|unique: true,add_index|

### Association
- has_many :items

## comments table
|column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## likes table
|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item
