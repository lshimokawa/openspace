# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(provider: 'twitter', uid: '8223712', name: "Lennon Shimokawa", nickname: "lshimokawa", role: "admin")

aol5 = Event.create(
  name: 'Agile Open Lima V', 
  description: 'Open Space sobre metodologías ágiles organizado por la comunidad Agile Perú.',
  starting_at: '2012-02-25 09:00:00',
  ending_at: '2012-02-25 18:00:00',
  where: 'Universidad San Martín de Porres',
  hashtag: '#agileopenlima'
)

aol5.locations.create(name: 'Auditorio')
aol5.locations.create(name: 'Aula 1')
aol5.locations.create(name: 'Aula 2')
aol5.locations.create(name: 'Aula 3')
aol5.locations.create(name: 'Aula 4')

Session.create(
  title: 'Gamestorming', 
  proposed_by: 'Lennon Shimokawa', 
  session_type: 'workshop',
  description: 'Juegos para innovadores y agentes de cambio. Los juegos pueden ayudar a las organizaciones a resolver problemas complejos a través de la participación colaborativa, eliminan barreras, mejoran la comunicación y generan nuevas ideas, conceptos y estrategias. Iniciaremos revisando los fundamentos del Gamestorming, etapas y diseño de juegos. En la parte central del taller los asistentes participarán en juegos facilitados por el expositor para aplicar técnicas de Gamestorming. Finalmente se realizará un conversatorio para compartir experiencias y conclusiones. Contenido basado en el libro Gamestorming de Dave Gray.', 
  event: aol5, 
  user: admin
)