require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /sign_in route opens the sign in page" do
  	get '/sign_in'
  	assert_response :success
  end

    test "that /sign_out route opens the sign out page" do
  	get '/sign_out'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

    test "that /sign_up route opens the sign up page" do
  	get '/sign_up'
  	assert_response :success
  end
end
