require 'test_helper'

class EmailAddressControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get addEmail" do
    get email_address_controller_addEmail_url
    assert_response :success
  end

end
