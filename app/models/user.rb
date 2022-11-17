class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :payments, foreign_key: 'author_id', dependent: :destroy
  validates :name, presence: true, length: { maximum: 250 }
  has_many :categories, foreign_key: 'author_id', class_name: 'Category', dependent: :destroy
end
