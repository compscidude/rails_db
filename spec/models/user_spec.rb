require 'rails_helper'

RSpec.describe User, type: :model do

  # it 'it cannot use the duplicate email' do
  #     user = build(:user)
  #     expect(user).to_not be_valid
  # end 


       it 'user age cannot be less than 18' do
            user = build(:user)
            user.age = 17
            expect(user).to_not be_valid
        end

        it 'user age over 18 is valid' do
            user = build(:user)
            user.age = 18
            expect(user).to be_valid
        end
        
        it 'user age under 10 is invalid' do
            user = build(:user)
            user.age = 9
            expect(user).to_not be_valid
        end 

        it 'user deletion also deletes posts' do 
            user = create(:user)
            user.posts.create(content: "hello")
            expect{user.destroy}.to change{Post.all.count}.from(1).to(0)
        end 
        


end
