Factory.define :user do |f|
  f.name 'Lennon Shimokawa'
  f.nickname 'lshimokawa'
end

Factory.define :session do |f|
  f.title 'My Test Session'
  f.status 'created'
  f.proposed_by 'Lennon Shimokawa'
end