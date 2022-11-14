class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_tom_many :payments, join_table: 'category_and_payments', dependent: :destory

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon, presence: true
end
