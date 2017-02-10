require 'test_helper'

class RoastImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roast_image = roast_images(:one)
  end

  test "should get index" do
    get roast_images_url
    assert_response :success
  end

  test "should get new" do
    get new_roast_image_url
    assert_response :success
  end

  test "should create roast_image" do
    assert_difference('RoastImage.count') do
      post roast_images_url, params: { roast_image: {  } }
    end

    assert_redirected_to roast_image_url(RoastImage.last)
  end

  test "should show roast_image" do
    get roast_image_url(@roast_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_roast_image_url(@roast_image)
    assert_response :success
  end

  test "should update roast_image" do
    patch roast_image_url(@roast_image), params: { roast_image: {  } }
    assert_redirected_to roast_image_url(@roast_image)
  end

  test "should destroy roast_image" do
    assert_difference('RoastImage.count', -1) do
      delete roast_image_url(@roast_image)
    end

    assert_redirected_to roast_images_url
  end
end
