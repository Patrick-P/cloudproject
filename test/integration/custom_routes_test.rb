require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

test "that /login route opens the login page" do
 #the get  command tests login route
    get '/login'
  #makes sure request was succesfull
    assert_response :success
  end
  
    test "that /logout route opens the log out page" do
    #the get  command tests logout route
    get '/logout'
      #makes sure request was succesfull as the response is a redirect it is 
      #different it has a differnt route as it in corporate the 302 error page
    assert_response :redirect
    assert_redirected_to '/'
  end

  test "that /register route opens the sign up page" do
     #the get  command tests login register
    get '/register'
      #makes sure request was succesfull
    assert_response :success
  end
  
end
