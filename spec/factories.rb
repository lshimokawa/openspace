FactoryGirl.define do

  factory :user do
    uid '12345'
    provider 'twitter'
    name 'Lennon Shimokawa'
    nickname 'lshimokawa'
    role 'assistant'
  end

  factory :event do
    name 'Agile Open Lima V'
  end

  factory :session do
    title 'Test'
    session_type 'charla'
    status 'created'
    proposed_by 'Lennon Shimokawa'
    user
    event
  end

  factory :location do
    name 'Ambiente 1'
  end

  factory :agenda do
    title 'Punto de la agenda'
    starts '09:00'
    ends '10:00'
    event
  end
  
  factory :slot do
    agenda
    location
    session
  end

end