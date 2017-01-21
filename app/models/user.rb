class User < ApplicationRecord

  has_many :orders

  belongs_to :amenity
  belongs_to :address

end