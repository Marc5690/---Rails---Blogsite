require 'test_helper'

class EmailAddressControllerTest < ActionDispatch::IntegrationTest
  test "should get addEmail" do
    get email_address_addEmail_url
    assert_response :success
  end

end
