FactoryGirl.define do


  after(:build) { |object| puts "Built #{object.name}"}

  sequence :email do |n|
    "random_email#{n}@gmail.com"
  end

  sequence :name do |n|
    "User-#{n}"
  end

  factory :user do

    sequence(:name) { |n| "User-#{n}" }
    email "Kevin@gmail.com"
    age 15

    # traits
    trait :no_email do
      email ""
    end 

    trait :no_name do
      name ""
    end 

    trait :no_age do
      age ""
    end 

    # Children of :user (inheritance)
    
    factory :user2 do
      name "Tommy"
      email 'Tommy@gmail.com'
    end 

    factory :user3 do
      name
      email
      age 20
    end 

    # traits that are defined the latest will override the previous one
    factory :no_name_user, traits: [:no_name]
    factory :no_age_user, traits: [:no_age]
    factory :no_email_user, traits: [:no_email]
    factory :no_data_user, traits: [:no_name, :no_age, :no_email]
    

  end



  

 


end




