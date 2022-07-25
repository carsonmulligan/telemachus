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
shipment1 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4755, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment2 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4756, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment3 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4757, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment4 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4758, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment5 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4759, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)

shipment6 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4760, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment7 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4761, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment8 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4762, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment9 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4763, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment10 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4764, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)

shipment11 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4765, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment12 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4766, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment13 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4767, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment14 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4768, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment15 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4769, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)

shipment16 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4770, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment17 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4771, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment18 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4772, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment19 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4773, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment20 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4774, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)

shipment21 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4775, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment22 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4776, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment23 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4777, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment24 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4778, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment25 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4779, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)

shipment26 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4780, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment27 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4781, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment28 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4782, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment29 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4783, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
shipment30 = Shipment.create(origin: 'SFO', destination: 'FRA', transport_mode: 'Air', commodity: 'Computer Equipment', reference_number: 4784, consignee_id: consignee1.id, shipper_id: shipper1.id, user_id: user1.id)
