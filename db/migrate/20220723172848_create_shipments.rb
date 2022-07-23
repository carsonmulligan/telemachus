class CreateShipments < ActiveRecord::Migration[6.1]
  def change
    create_table :shipments do |t|
      t.string :origin
      t.string :destination
      t.string :transport_mode
      t.string :commodity
      t.integer :reference_number
      t.references :shipper, null: false, foreign_key: true
      t.references :consignee, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
