# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'open-uri'

 puts 'Deleting database'

 Service.destroy_all
 Activity.destroy_all

 puts 'creating seeds services & activities'

service1 = Service.create!(
  name: 'Assistance Administrative',
  fullname: 'ASSISTANCE ADMINISTRATIVE À DOMICILE',
  definition: 'L\'assistance administrative à domicile couvre des activités touchant aux formalités administratives quotidiennes.',
  option: '',
  presample: 'Elle couvre des activités telles que l\'appui et l\'aide:',
  conditions: 'Plafond annuel des dépenses ouvrant droit au crédit d\'impôt:',
  plafond: '12000 €uros'
)
service1.logo.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564481/sap/logo-assistance-administrative.svg'),
  filename: 'logo-assistance-administrative.svg',
  content_type: 'logo/svg'
)
service1.image.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564527/sap/assistance-administrative.webp') ,
  filename: 'assistance-administrative.webp',
  content_type: 'image/webp'
)

service2 = Service.create!(
  name: 'Assistance Informatique',
  fullname: 'ASSISTANCE INFORMATIQUE À DOMICILE',
  definition: 'La prestation comprend l\'initiation ou la formation au fonctionnement du matériel informatique et aux logiciels non professionnels en vue de permettre leur utilisation courante.',
  option: 'PC, Mac, tablette, smartphone',
  presample: 'La prestation comprend aussi, le cas échéant:',
  conditions: 'Plafond annuel des dépenses ouvrant droit au crédit d\'impôt:',
  plafond: '3000 €uros'
)
service2.logo.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564481/sap/logo-assistance-informatique.svg'),
  filename: 'logo-assistance-informatique.svg',
  content_type: 'logo/svg'
)
service2.image.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564527/sap/assistance-informatique.webp') ,
  filename: 'assistance-informatique.webp',
  content_type: 'image/webp'
)

service3 = Service.create!(
  name: 'Petit Bricolage',
  fullname: 'PETITS TRAVAUX DE BRICOLAGE',
  definition: 'L\'activité de petit bricolage concerne des prestations de bricolage élémentaire qui ne nécessitent pas un savoir faire particulier dans un temps restreint.',
  option: '',
  presample: 'Elle concerne des prestations telles que:',
  conditions: 'Plafond annuel des dépenses ouvrant droit au crédit d\'impôt:',
  plafond: '500 €uros'
)
service3.logo.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564481/sap/logo-bricolage.svg'),
  filename: 'logo-bricolage.svg',
  content_type: 'logo/svg'
)
service3.image.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564527/sap/bricolage.webp'),
  filename: 'bricolage.webp',
  content_type: 'image/webp'
)

service4 = Service.create!(
  name: 'Courses & Livraisons',
  fullname: 'COURSES & LIVRAISONS',
  definition: 'Cette activité s\'inscrit dans un objectif de facilitation de la vie quotidienne des personnes.',
  option: '',
  presample: 'Il peut donc s\'agir de:',
  conditions: 'La prestation de livraison de courses ne peut être exercée qu\'à condition d\'être comprise dans une offre globale de services incluant une activité exercée au domicile',
  plafond: ''
)
service4.logo.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564482/sap/logo-courses.svg'),
  filename: 'logo-courses.svg',
  content_type: 'logo/svg'
)
service4.image.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564527/sap/courses.webp'),
  filename: 'courses.webp',
  content_type: 'image/webp'
)

service5 = Service.create!(
  name: 'Vigilance du Domicile',
  fullname: 'VIGILANCE DU DOMICILE EN VOTRE ABSENCE',
  definition: 'Cette prestation n\'est pas un service de sécurité, avec vidéosurveillance, rondes et alarme. Il s\'agit d\'une vigilance simple de l\'habitation principale ou secondaire pendant l\'absence de son occupant habituel.',
  option: '',
  presample: 'La prestation comprend selon le cas échéant:',
  conditions: 'Plafond annuel des dépenses ouvrant droit au crédit d\'impôt:',
  plafond: '12000 €uros'
)
service5.logo.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564482/sap/logo-vigilance.svg'),
  filename: 'logo-vigilance.svg',
  content_type: 'logo/webp'
)
service5.image.attach(
  io: URI.open('https://res.cloudinary.com/bessiere/image/upload/v1683564527/sap/vigilance.webp') ,
  filename: 'vigilance.webp',
  content_type: 'image/webp'
)

activity1 = Activity.create!(sample:'Au traitement et classement de documents;', service: service1)
activity2 = Activity.create!(sample:'Au suivi de factures;', service: service1)
activity3 = Activity.create!(sample:'A la gestion du courrier;', service: service1)
activity4 = Activity.create!(sample:'Aux démarches administratives.', service: service1)

activity5 = Activity.create!(sample:'Installation et mise en service de votre ordinateur;', service: service2)
activity6 = Activity.create!(sample:'Configuration des logiciels à vos besoins;', service: service2)
activity7 = Activity.create!(sample:'Configuration de messagerie;', service: service2)
activity8 = Activity.create!(sample:'Traitement antivirus;', service: service2)
activity9 = Activity.create!(sample:'Partage d\'astuces pour une meilleure utilisation.', service: service2)

activity10 = Activity.create!(sample:'Montage de meubles;', service: service3)
activity11 = Activity.create!(sample:'Petit travaux de peinture;', service: service3)
activity12 = Activity.create!(sample:'Fixation d\'étagère, tableaux, tringles à rideaux;', service: service3)
activity13 = Activity.create!(sample:'Remplacement de joint;', service: service3)
activity14 = Activity.create!(sample:'Et bien d\'autres...', service: service3)

activity14 = Activity.create!(sample:'Livraison de courses de produits du quotidien;', service: service4)
activity15 = Activity.create!(sample:'Réception de vos livraisons à domicile;', service: service4)

activity16 = Activity.create!(sample:'Inspection périodique du domicile;', service: service5)
activity17 = Activity.create!(sample:'Arrosage des plantes;', service: service5)
activity18 = Activity.create!(sample:'Relève du courrier;', service: service5)
activity19 = Activity.create!(sample:'Garde d\'animaux;', service: service5)
activity20 = Activity.create!(sample:'Simulation de présence.', service: service5)

 puts 'seed completed'
