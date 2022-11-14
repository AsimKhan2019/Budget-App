class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # attr_accessor :name, :email, :password, :password_confirmation

  has_many :payments, dependent: :destroy
  validates :name, presence: true, length: { maximum: 250 }
  has_many :categories, dependent: :destroy
end
