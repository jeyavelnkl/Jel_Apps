require 'test_helper'

class EmployeessearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employeessearch_index_url
    assert_response :success
  end

end
