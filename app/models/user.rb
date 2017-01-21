class User < ApplicationRecord
  belongs_to :order
  has_many :amenities
  has_many :addresses
end
