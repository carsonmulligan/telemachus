# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Dependencies
require 'open-uri'

# Reset seeds
User.destroy_all
Consignee.destroy_all
Shipper.destroy_all
Shipment.destroy_all

# Create User
user1 = User.create(email: 'carlos.miguel@gmail.com', password: '121212')

# Create Consignee
consignee1 = Consignee.create(name: 'Tim AG', address: 'Schoßbergstr. 21 65201 Wiesbaden, Germany',
                         poc_name: 'Sebastian Novak', poc_email: 'sebastian.novak@mainfreight.com',
                         poc_phone: '+49-0611.2709-0', office_location: 'FRA',
                         shipper_consignee_relationships: 'Super Micro',
                         payment_type: 'Etherium', user_id: user1.id)

# Create Shipper
shipper1 = Shipper.create(name: 'Super Micro', address: '728 Rock Ave. San Jose CA 95131',
                          poc_name: 'Alice Liang', poc_email: 'alice.liang@supermicro.com',
                          poc_phone: '408-503-8000', office_location: 'SFO',
                          shipper_consignee_relationships: 'Tim AG, SISINTHKG, SISDIDBKK, COMGROMXP',
                          payment_type: 'Etherium', user_id: user1.id)

# Create Shipments
shipment1 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Copmuter Equipment: HS 8471.90.0000', reference_number: 4755, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment2 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Copmuter Equipment: HS 8471.90.0000', reference_number: 4756, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment3 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Copmuter Equipment: HS 8471.90.0000', reference_number: 4757, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment4 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Copmuter Equipment: HS 8471.90.0000', reference_number: 4758, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment5 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Copmuter Equipment: HS 8471.90.0000', reference_number: 4759, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
