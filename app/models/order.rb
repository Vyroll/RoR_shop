class Order < ApplicationRecord
  belongs_to :order_element
  has_many :users
  has_many :shippings
  has_many :statuses
  has_many :addresses
end
