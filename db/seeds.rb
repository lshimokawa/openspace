# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(provider: 'twitter', uid: '8223712', name: "Lennon Shimokawa", nickname: "lshimokawa")
admin.role = "admin"

aol6 = Event.create(
  name: 'Agile Open Lima VI', 
  description: 'La comunidad Agile Perú organiza el Agile Open Lima VI, evento de difusión de metodologías ágiles en formato Open Space.',
  starting_at: DateTime.new(2012, 8, 26, 9, 0),
  ending_at: DateTime.new(2012, 8, 26, 15, 0),
  where: 'Universidad Peruana Unión (UPeU) - Sede Ñaña - Altura Km. 19.5 Carretera Central',
  website: 'http://agileopenlima.eventbrite.com',
  hashtag: 'agileopenlima'
)

jardin = aol6.locations.create(name: 'Jardín')

bienvenida = Agenda.create(title: 'Bienvenida y desayuno', starts: '09:00', ends: '10:00', event: aol6)
marketplace = Agenda.create(title: 'Marketplace', starts: '10:00', ends: '11:00', event: aol6)
s1 = Agenda.create(title: 'Sesiones 1', starts: '11:00', ends: '12:00', event: aol6)
s2= Agenda.create(title: 'Sesiones 2', starts: '12:00', ends: '13:00', event: aol6)
br = Agenda.create(title: 'Break', starts: '13:00', ends: '13:30', event: aol6)
s3 = Agenda.create(title: 'Sesiones 3', starts: '13:30', ends: '14:30', event: aol6)
cierre = Agenda.create(title: 'Cierre', starts: '14:30', ends: '15:00', event: aol6)

Slot.create(agenda: bienvenida, location: jardin)
Slot.create(agenda: marketplace, location: jardin)
Slot.create(agenda: br, location: jardin)
Slot.create(agenda: cierre, location: jardin)