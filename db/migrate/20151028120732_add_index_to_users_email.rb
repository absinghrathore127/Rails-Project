class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	add_index :users, :email, unique: true 
  	add_index :users, :password
     end
     private

  def create_activation_digest
    # Create the token and digest.
  end
  def remember
  self.remember_token = User.new_token
  update_attribute(:remember_digest, User.digest(remember_token))
end
end
