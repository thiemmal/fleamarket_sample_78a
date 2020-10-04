class Product < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  #belongs_to :category
  	
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :name, presence: true
  validates :price, presence: true
  validates :condition, presence: true
  validates :fee_side, presence: true
  validates :origin, presence: true
  validates :days, presence: true
end
