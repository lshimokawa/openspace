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
  description: 'La comunidad Agile Perú organiza el Agile Open Lima V, evento de difusión de metodologías ágiles en formato Open Space. Puedes ver las fotos de las ediciones anteriores aquí para que te des una idea. En este evento encontrarás charlas, conversatorios y workshops sobre temas de metodologías ágiles: Scrum, Extreme Programming, Lean, Kanban, Software Craftmanship, frameworks y herrmientas de desarrollo de software. Además se organizarán Coding Dojos para los interesados en mejorar su técnica de programación.',
  starting_at: DateTime.new(2012, 02, 25, 9, 0),
  ending_at: DateTime.new(2012, 02, 25, 18, 0),
  where: 'Universidad San Martín de Porres. Facultad de Arquitectura e Ingeniería',
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

bienvenida = AgendaDetail.create(title: 'Bienvenida',   starts: '09:00', ends: '09:30', event: aol5)
marketplace = AgendaDetail.create(title: 'Marketplace',  starts: '09:30', ends: '11:00', event: aol5)
s1 = AgendaDetail.create(title: 'Sesiones 1',   starts: '11:00', ends: '12:00', event: aol5)
s2= AgendaDetail.create(title: 'Sesiones 2',   starts: '12:00', ends: '13:00', event: aol5)
almuerzo = AgendaDetail.create(title: 'Almuerzo',     starts: '13:00', ends: '14:00', event: aol5)
s3 = AgendaDetail.create(title: 'Sesiones 3',   starts: '14:00', ends: '15:00', event: aol5)
s4 = AgendaDetail.create(title: 'Sesiones 4',   starts: '15:00', ends: '16:00', event: aol5)
s5 = AgendaDetail.create(title: 'Sesiones 5',   starts: '16:00', ends: '17:00', event: aol5)
cierre = AgendaDetail.create(title: 'Cierre',       starts: '17:00', ends: '18:00', event: aol5)

Slot.create(agenda_detail: bienvenida, location: auditorio)
Slot.create(agenda_detail: marketplace, location: auditorio)
Slot.create(agenda_detail: s1, location: g101)
Slot.create(agenda_detail: s1, location: g102)
Slot.create(agenda_detail: s1, location: g103)
Slot.create(agenda_detail: s1, location: g104)
Slot.create(agenda_detail: s1, location: g105)
Slot.create(agenda_detail: s1, location: g106)
Slot.create(agenda_detail: s2, location: g101)
Slot.create(agenda_detail: s2, location: g102)
Slot.create(agenda_detail: s2, location: g103)
Slot.create(agenda_detail: s2, location: g104)
Slot.create(agenda_detail: s2, location: g105)
Slot.create(agenda_detail: s2, location: g106)
Slot.create(agenda_detail: almuerzo, location: patio)
Slot.create(agenda_detail: s3, location: g101)
Slot.create(agenda_detail: s3, location: g102)
Slot.create(agenda_detail: s3, location: g103)
Slot.create(agenda_detail: s3, location: g104)
Slot.create(agenda_detail: s3, location: g105)
Slot.create(agenda_detail: s3, location: g106)
Slot.create(agenda_detail: s4, location: g101)
Slot.create(agenda_detail: s4, location: g102)
Slot.create(agenda_detail: s4, location: g103)
Slot.create(agenda_detail: s4, location: g104)
Slot.create(agenda_detail: s4, location: g105)
Slot.create(agenda_detail: s4, location: g106)
Slot.create(agenda_detail: s5, location: g101)
Slot.create(agenda_detail: s5, location: g102)
Slot.create(agenda_detail: s5, location: g103)
Slot.create(agenda_detail: s5, location: g104)
Slot.create(agenda_detail: s5, location: g105)
Slot.create(agenda_detail: s5, location: g106)
Slot.create(agenda_detail: cierre, location: auditorio)

Session.create(
  title: 'Gamestorming', 
  proposed_by: 'Lennon Shimokawa', 
  session_type: 'workshop',
  description: 'Juegos para innovadores y agentes de cambio. Los juegos pueden ayudar a las organizaciones a resolver problemas complejos a través de la participación colaborativa, eliminan barreras, mejoran la comunicación y generan nuevas ideas, conceptos y estrategias. Iniciaremos revisando los fundamentos del Gamestorming, etapas y diseño de juegos. En la parte central del taller los asistentes participarán en juegos facilitados por el expositor para aplicar técnicas de Gamestorming. Finalmente se realizará un conversatorio para compartir experiencias y conclusiones. Contenido basado en el libro Gamestorming de Dave Gray.', 
  event: aol5, 
  user: admin
)