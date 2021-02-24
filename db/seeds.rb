# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'

# puts 'Deleting database'

# Service.destroy_all

# puts 'creating seed for service'

# file = URI.open('https://res.cloudinary.com/bessiere/image/upload/v1613800150/assistance_administrative.png')
# log = URI.open('https://res.cloudinary.com/bessiere/image/upload/v1613800247/logo_administratif.png')
# service = Service.create!(
#   name: 'Assistance Administrative',
#   fullname: 'ASSISTANCE ADMINISTRATIVE A DOMICILE',
#   definition: 'L\'assistance administrative à domicile couvre des activités touchant aux formalités administratives quotidiennes.',
#   conditions: 'Plafond annuel des dépenses ouvrant droit au crédit d\'impôt: <strong>12000 €uros</strong>.'
# )
# service.logo.attach(io: log, filename: 'logo_administratif.png', content_type: 'image/png')
# service.image.attach(io: file, filename: 'assistance_administrative.png', content_type: 'image/png')

# puts 'seed completed'
