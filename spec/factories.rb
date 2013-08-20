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
end