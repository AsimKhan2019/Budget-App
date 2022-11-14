class Payment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_to_many :categories, join_table: 'category_and_payments', dependent: :destroy
  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, numericality: { greater_than: 0 }
end
