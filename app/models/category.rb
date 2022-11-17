class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_many :payments, dependent: :destroy
  # has_and_belongs_to_many :payments, join_table: 'category_and_payments', dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon, presence: true
  # validates :author_id, presence: true
end
