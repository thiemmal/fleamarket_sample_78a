class Product < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :category, foreign_key: 'category_id'
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
end
