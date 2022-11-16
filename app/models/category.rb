class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_many :payments, dependent: :destroy
  #has_and_belongs_to_many :payments, join_table: 'category_and_payments', dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon, presence: true
  #validates :author_id, presence: true
end

# class Category < ApplicationRecord
#   has_many :category_purchases
#   has_many :purchases, through: :category_purchases
# end

# class CategoryPurchase < ApplicationRecord
#   belongs_to :category
#   belongs_to :purchase
# end
