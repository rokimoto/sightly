require 'rails_helper'

RSpec.describe User, type: :model do

# Test Cases for the User Model, including the attributes declared when creating a new user.

   # First Test Case: Model responds to being called by the username attribute
   it 'responds to a username' do
      user = FactoryGirl.build(:user_with_name)
      expect(user).to respond_to(:username)
   end
   # 2nd Case: Model responds to be being called by name attribute
   it 'responds to a name' do
      user = FactoryGirl.build(:user_with_name)
      expect(user).to respond_to(:name)
   end
   # 3rd Case: Model not created without a username
   it 'is invalid without a username' do
     user = FactoryGirl.build(:user_without_username)
     expect(user).to be_invalid
  end
   # 4th Case: Model not created without a password
   it 'is invalid without a password' do
      user = FactoryGirl.build(:user_without_password)
      expect(user).to be_invalid
   end
   # 5th Case: Password not valid without length >= 8
   it 'password rejected if less than 8 chars' do
      user = FactoryGirl.build(:user_short_pass)
      expect(user).to be_invalid
   end
   # 6th Case: Password valid when length > 8
   it 'password passes when password > 8 chars' do
      user = FactoryGirl.build(:user_10char_pass)
      expect(user).to be_valid
   end
   # 7th Case: Password not valid without one character == /0123456789/
   it 'password rejected if it does not contain a number' do
      user = FactoryGirl.build(:user_pass_nonum)
      expect(user).to be_invalid
   end
   # 8th Case: Model not created if email does not contain @ symbol as well as a .
   it 'email invalid without an @ symbol and a .' do
      user = FactoryGirl.build(:user_wrong_email)
      expect(user).to be_invalid
   end


end
