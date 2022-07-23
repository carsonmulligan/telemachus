class Consignee < ApplicationRecord
  belongs_to :user
  has_many :shipments
  has_many :shippers
  has_many :users
end
