class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :email, format:{ with: /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\z/}
  validates :first_name, format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/}
  validates :family_name, format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/}
  validates :first_furigana, format: { with: /\A([ぁ-ん]|ー)+\z/}
  validates :family_furigana, format: { with: /\A([ぁ-ん]|ー)+\z/}
  validates :birthday, format: { with: /\A\d{8}\z/}
  validates :recipient_family_name, format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/}
  validates :recipient_first_name, format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/}
  validates :recipient_family_furigana, format: { with: /\A([ぁ-ん]|ー)+\z/}
  validates :recipient_first_furigana, format: { with: /\A([ぁ-ん]|ー)+\z/}
  validates :zip_cord, format: { with: /\A\d{7}\z/}
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :address, presence: true
end
