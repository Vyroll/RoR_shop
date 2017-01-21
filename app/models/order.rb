class Order < ApplicationRecord

  has_many :order_elements

  belongs_to :user
  belongs_to :shipping
  belongs_to :status
  belongs_to :address

end