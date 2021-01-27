require "test_helper"

class PictureTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get picture_tags_new_url
    assert_response :success
  end

  test "should get create" do
    get picture_tags_create_url
    assert_response :success
  end
end
