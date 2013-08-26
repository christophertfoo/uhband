FactoryGirl.define do
  factory :student do
    sequence(:first_name) { |n| "First_#{n}" }
    sequence(:last_name) { |n| "Last_#{n}" }

    sequence(:id_num) { |n| n.to_s.rjust(6, '0') }
  end

  factory :ensemble do
    sequence(:name) { |n| "Ensemble_#{n}" }
    sequence(:semester) { |n| "#{n % 2 == 0 ? "Fall" : "Spring"} #{2000 + n}" }
  end

  factory :infraction do
    sequence(:name) { |n| "Infraction_#{n}" }
  end

  factory :permission do
    superior { create(:user) }
    subordinate { create(:user) }
    edit false
  end

  factory :membership do
    student { create(:student) }
    section { create(:section) }
  end

  factory :section do
    sequence(:name) { |n| "Section_#{n}" }
    ensemble { create(:ensemble) }
  end

  factory :entry do
    membership { create(:membership) }
    event { create(:event) }
    infraction { create(:infraction) }
  end
  
  factory :note do
    sequence(:note) { |n| "Note_#{n}" }
    entry { create(:entry) }
    student { create(:student) }
  end

  factory :event do
    sequence(:name) { |n| "Event_#{n}" }
    time { Time.current }
    event_type { create(:event_type) }
  end

  factory :event_type do
    sequence(:name) { |n| "Event_Type_#{n}" }
    ensemble { create(:ensemble) }
  end

  factory :letter_grade do
    sequence(:grade) do |n|
      "#{((n % 26) + 65).chr}#{
        if(n % 3 == 1)
          "+"
        elsif(n % 3 == 2)
          "-"
        end 
      }"
    end
    
    sequence(:min_points) { |n| n }
    sequence(:max_points) { |n| n + 1 }
  end
  
  factory :rule do
    point_value "2"
    event_type { create(:event_type) }
    infraction { create(:infraction) }
  end
end