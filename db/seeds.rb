# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(provider: 'twitter', uid: '8223712', name: "Lennon Shimokawa", nickname: "lshimokawa", role: "admin")

adtg = Event.create(
  name: 'ADTG Open Lima', 
  description: 'La comunidad ADTG Perú en conjunto con GDG Lima, comunidades oficiales de Google en Perú desea invitarlos a participar gratuitamente de este evento de Tecnologías Google en formato Open Space.',
  starting_at: DateTime.new(2012, 8, 11, 9, 0),
  ending_at: DateTime.new(2012, 8, 11, 18, 0),
  where: 'Universidad Peruana de Ciencias Aplicadas. Prolongación Primavera 2390 Monterrico.',
  latitude: -12.104028,
  longitude: -76.963049,
  website: 'http://adtgopenlima.eventbrite.com',
  hashtag: 'gdevperu'
)

rotonda = adtg.locations.create(name: 'Rotonda Central')
aula_magna = adtg.locations.create(name: 'Aula Magna')
b41 = adtg.locations.create(name: 'Aula B41')
b42 = adtg.locations.create(name: 'Aula B42')
b43 = adtg.locations.create(name: 'Aula B43')
b44 = adtg.locations.create(name: 'Aula B44')
b45 = adtg.locations.create(name: 'Aula B45')
b51 = adtg.locations.create(name: 'Aula B51')
b54 = adtg.locations.create(name: 'Aula B54')

bienvenida = Agenda.create(title: 'Bienvenida', starts: '09:00', ends: '09:30', event: adtg)
marketplace = Agenda.create(title: 'Marketplace', starts: '09:30', ends: '11:00', event: adtg)
s1 = Agenda.create(title: 'Sesiones 1', starts: '11:00', ends: '12:00', event: adtg)
s2= Agenda.create(title: 'Sesiones 2', starts: '12:00', ends: '13:00', event: adtg)
almuerzo = Agenda.create(title: 'Almuerzo', starts: '13:00', ends: '14:00', event: adtg)
s3 = Agenda.create(title: 'Sesiones 3', starts: '14:00', ends: '15:00', event: adtg)
s4 = Agenda.create(title: 'Sesiones 4', starts: '15:00', ends: '16:00', event: adtg)
s5 = Agenda.create(title: 'Sesiones 5', starts: '16:00', ends: '17:00', event: adtg)
cierre = Agenda.create(title: 'Cierre', starts: '17:00', ends: '18:00', event: adtg)

Slot.create(agenda: bienvenida, location: rotonda)
Slot.create(agenda: marketplace, location: rotonda)
Slot.create(agenda: cierre, location: rotonda)