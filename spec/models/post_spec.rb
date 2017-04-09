require 'rails_helper'

RSpec.describe Post, type: :model do
  

      before(:each) do
          @user = create(:user)
          @post =  build(:post, user_id: @user.id)

      end
      
      it 'cannot be empty' do
          @post.content = ""
          expect(@post).to_not be_valid
      end 
      
      it 'content should be at most 140 charaters' do
          @post.content = "*" * 141
          expect(@post).to_not be_valid
      end

      it 'post should belong to the user' do
          post = @user.posts.build(content: "content is random")
          expect(post.user_id).to eql(@user.id)
      end   
      
      it 'should get the most recent post' do
          post = create(:post , created_at: 3.years.ago  )
          post2 = create(:post, created_at: 2.minute.ago )
          post3 = create(:post, created_at: 2.weeks.ago  )
          expect(Post.first).to eql(post2)
      end 

      it 'should have three posts' do
          posts = create_list(:post, 3)
          expect(Post.all.size).to eql(3)
      end 







      
    
end
