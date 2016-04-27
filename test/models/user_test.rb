require 'test_helper'
 #test the user enters a first name
class UserTest < ActiveSupport::TestCase
   test "a user should enter a first name" do
    user = User.new
    assert !user.save
    puts user.errors.inspect
    assert !user.errors[:first_name].empty?
    end
   #test the user enters a last name  
    test "a user should enter a last_name " do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
    end
     #test the user enters a profile name
    test "a user should enter a  profile name" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
    end
     #test the user enters a unique profile name
    test "a user should enter a unique profile name" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
    end

end
