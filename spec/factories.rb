Factory.define :user do |f|
  f.name 'Lennon Shimokawa'
  f.nickname 'lshimokawa'
end

Factory.define :event do |f|
  f.name 'Agile Open Lima V'
end

Factory.define :session do |f|
  f.title 'Test'
  f.status 'created'
  f.proposed_by 'Lennon Shimokawa'
end

Factory.define :location do |f|
  f.name 'Ambiente 1'
end

Factory.define :time_slot do |f|
  f.starts '09:00'
  f.ends '10:00'
end