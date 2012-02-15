# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(provider: 'twitter', uid: '8223712', name: "Lennon Shimokawa", nickname: "lshimokawa")

Event.create(
  name: 'Agile Open Lima V', 
  description: 'Open Space sobre metodologías ágiles organizado por Agile Perú',
  when: '25/02/2012',
  where: 'Universidad San Martín de Porres',
  hashtag: '#agileopenlima'
)

Session.create(title: 'Gamestorming', description: 'Juegos para innovadores y agentes de cambio', user: admin)