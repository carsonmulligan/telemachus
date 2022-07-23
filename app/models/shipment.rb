class Shipment < ApplicationRecord
  belongs_to :shipper
  belongs_to :consignee
  belongs_to :user
end
