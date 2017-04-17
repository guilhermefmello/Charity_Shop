class UpdateUsers < ActiveRecord::Migration
  def change
  	 @user = User.find_by(email:'test@test.com')
      # if there is no user with the email admin@email.ie
      # in the users table the above find_by() method will return nil
      # nil shows there is no record in the table with that email
      if @user != nil
        @user.update_attribute :admin, true
      end
  end
end
