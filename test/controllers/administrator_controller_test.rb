require 'test_helper'

class AdministratorControllerTest < ActionDispatch::IntegrationTest
  test "should get list_users" do
    get administrator_list_users_url
    assert_response :success
  end

end
