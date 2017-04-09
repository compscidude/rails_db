class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.reference :user, index: true

      t.timestamps
    end
  
    add_foreign_key :posts, :users
    add_index :posts, [:user_id, :created_at]
    # Retrieve all the posts associated with a given user ID in reverse order of creation.
    # This is a multiple key index, which means that Active Record uses both keys at the same time
  end
end
