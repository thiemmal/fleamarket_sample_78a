# fleamarket_sample_78a DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|gender|string||
|first_name|string|null: false|
|family_name|string|null: false|
|first_furigana|string|null: false|
|family_furigana|string|null: false|
|birthday|integer|null: false|
|recipient|string||
|recipient_furigana|string||
|zip_cord|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|mansion|string||
|tel|integer||
### Association
- has_many :products

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|details|text||
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|brand_id|integer|foreign_key: true|
|condition|string|null: false|
|fee_side|string|null: false|
|origin|string|null: false|
|days|string|null: false|
|price|integer|null: false|
### Association
- belongs_to :user, foreign_key: 'user_id'
- belongs_to :category
- belongs_to :brand
- has_many :images

## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|path||
### Association
- has_many :products
- has_ancestry

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|product_id|integer|null: false|
### Association
- has_many :products

