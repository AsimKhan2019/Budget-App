class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  #has_and_belongs_to_many :categories, join_table: 'category_and_payments', dependent: :destroy
  belongs_to :category, optional: true

  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
  #validates :author_id, presence: true
end
