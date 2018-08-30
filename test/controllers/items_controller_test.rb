require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get catalog" do
    get items_catalog_url
    assert_response :success
  end

end
