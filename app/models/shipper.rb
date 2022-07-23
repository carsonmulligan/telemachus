class Shipper < ApplicationRecord
  belongs_to :user
  has_many :shipments
  has_many :consignees
  has_many :users
end
