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
|recipient受取人名|string||
|recipient_furigana|string||
|zip_cord郵便番号|integer|null: false|
|prefecture都道府県|string|null: false|
|city市町村|string|null: false|
|address番地|string|null: false|
|mansionマンション名部屋番号|string||
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
|fee_side送料の負担は誰|string|null: false|
|origin発送地|string|null: false|
|days発送までの日数|string|null: false|
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

