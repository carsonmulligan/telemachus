class CreateConsignees < ActiveRecord::Migration[6.1]
  def change
    create_table :consignees do |t|
      t.string :name
      t.string :address
      t.string :poc_name
      t.string :poc_email
      t.string :poc_phone
      t.string :office_location
      t.string :shipper_consignee_relationships
      t.string :payment_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
