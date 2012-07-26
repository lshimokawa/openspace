# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(provider: 'twitter', uid: '8223712', name: "Lennon Shimokawa", nickname: "lshimokawa", role: "admin")
admin = User.create(provider: 'twitter', uid: '185697990', name: "Karen Da Cruz", nickname: "karen_dax", role: "admin")


aol5 = Event.create(
  name: 'Agile Open Lima V', 
  description: 'La comunidad Agile Perú organiza el Agile Open Lima V, evento de difusión de metodologías ágiles en formato Open Space. Puedes ver las fotos de las ediciones anteriores aquí para que te des una idea. En este evento encontrarás charlas, conversatorios y workshops sobre temas de metodologías ágiles: Scrum, Extreme Programming, Lean, Kanban, Software Craftmanship, frameworks y herrmientas de desarrollo de software. Además se organizarán Coding Dojos para los interesados en mejorar su técnica de programación.',
  starting_at: DateTime.new(2012, 02, 25, 9, 0),
  ending_at: DateTime.new(2012, 02, 25, 18, 0),
  where: 'Universidad San Martín de Porres. Facultad de Arquitectura e Ingeniería',
  latitude: -12.072381,
  longitude: -76.941923,
  website: 'http://agileopenlima.eventbrite.com',
  hashtag: 'agileopenlima'
)

auditorio = aol5.locations.create(name: 'Auditorio Primus Interpares')
patio = aol5.locations.create(name: 'Zona de almuerzo')
g101 = aol5.locations.create(name: 'Aula 101', description: 'Pabellón Generales')
g102 = aol5.locations.create(name: 'Aula 102', description: 'Pabellón Generales')
g103 = aol5.locations.create(name: 'Aula 103', description: 'Pabellón Generales')
g104 = aol5.locations.create(name: 'Aula 104', description: 'Pabellón Generales')
g105 = aol5.locations.create(name: 'Aula 105', description: 'Pabellón Generales')
g106 = aol5.locations.create(name: 'Aula 106', description: 'Pabellón Generales')

bienvenida = Agenda.create(title: 'Bienvenida', starts: '09:00', ends: '09:30', event: aol5)
marketplace = Agenda.create(title: 'Marketplace', starts: '09:30', ends: '11:00', event: aol5)
s1 = Agenda.create(title: 'Sesiones 1', starts: '11:00', ends: '12:00', event: aol5)
s2= Agenda.create(title: 'Sesiones 2', starts: '12:00', ends: '13:00', event: aol5)
almuerzo = Agenda.create(title: 'Almuerzo', starts: '13:00', ends: '14:00', event: aol5)
s3 = Agenda.create(title: 'Sesiones 3', starts: '14:00', ends: '15:00', event: aol5)
s4 = Agenda.create(title: 'Sesiones 4', starts: '15:00', ends: '16:00', event: aol5)
s5 = Agenda.create(title: 'Sesiones 5', starts: '16:00', ends: '17:00', event: aol5)
cierre = Agenda.create(title: 'Cierre', starts: '17:00', ends: '18:00', event: aol5)

Slot.create(agenda: bienvenida, location: auditorio)
Slot.create(agenda: marketplace, location: auditorio)
Slot.create(agenda: s1, location: g101)
Slot.create(agenda: s1, location: g102)
Slot.create(agenda: s1, location: g103)
Slot.create(agenda: s1, location: g104)
Slot.create(agenda: s1, location: g105)
Slot.create(agenda: s1, location: g106)
Slot.create(agenda: s2, location: g101)
Slot.create(agenda: s2, location: g102)
Slot.create(agenda: s2, location: g103)
Slot.create(agenda: s2, location: g104)
Slot.create(agenda: s2, location: g105)
Slot.create(agenda: s2, location: g106)
Slot.create(agenda: almuerzo, location: patio)
Slot.create(agenda: s3, location: g101)
Slot.create(agenda: s3, location: g102)
Slot.create(agenda: s3, location: g103)
Slot.create(agenda: s3, location: g104)
Slot.create(agenda: s3, location: g105)
Slot.create(agenda: s3, location: g106)
Slot.create(agenda: s4, location: g101)
Slot.create(agenda: s4, location: g102)
Slot.create(agenda: s4, location: g103)
Slot.create(agenda: s4, location: g104)
Slot.create(agenda: s4, location: g105)
Slot.create(agenda: s4, location: g106)
Slot.create(agenda: s5, location: g101)
Slot.create(agenda: s5, location: g102)
Slot.create(agenda: s5, location: g103)
Slot.create(agenda: s5, location: g104)
Slot.create(agenda: s5, location: g105)
Slot.create(agenda: s5, location: g106)
Slot.create(agenda: cierre, location: auditorio)

Session.create(
  title: 'Gamestorming', 
  proposed_by: 'Lennon Shimokawa', 
  session_type: 'workshop',
  description: 'Juegos para innovadores y agentes de cambio. Los juegos pueden ayudar a las organizaciones a resolver problemas complejos a través de la participación colaborativa, eliminan barreras, mejoran la comunicación y generan nuevas ideas, conceptos y estrategias. Iniciaremos revisando los fundamentos del Gamestorming, etapas y diseño de juegos. En la parte central del taller los asistentes participarán en juegos facilitados por el expositor para aplicar técnicas de Gamestorming. Finalmente se realizará un conversatorio para compartir experiencias y conclusiones. Contenido basado en el libro Gamestorming de Dave Gray.', 
  event: aol5, 
  user: admin
)