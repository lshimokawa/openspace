FactoryGirl.define do

  factory :user do
    name 'Lennon Shimokawa'
    nickname 'lshimokawa'
    role 'guest'
  end

  factory :event do
    name 'Agile Open Lima V'
  end

  factory :session do
    title 'Test'
    session_type 'charla'
    status 'created'
    proposed_by 'Lennon Shimokawa'
  end

  factory :location do
    name 'Ambiente 1'
  end

  factory :time_slot do
    starts '09:00'
    ends '10:00'
    location
  end

end