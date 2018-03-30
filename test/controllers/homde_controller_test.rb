require 'test_helper'

class HomdeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homde_index_url
    assert_response :success
  end

end
