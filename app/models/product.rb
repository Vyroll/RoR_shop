class Product < ApplicationRecord
  belongs_to :order_element
  has_many :categories
end
