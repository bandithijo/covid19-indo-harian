require 'test_helper'

class CasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cases_index_url
    assert_response :success
  end

end
