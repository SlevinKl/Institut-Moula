require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get display" do
    get dashboards_display_url
    assert_response :success
  end
end
