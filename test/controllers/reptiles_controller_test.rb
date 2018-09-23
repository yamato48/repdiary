require 'test_helper'

class ReptilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reptile = reptiles(:one)
  end

  test "should get index" do
    get reptiles_url
    assert_response :success
  end

  test "should get new" do
    get new_reptile_url
    assert_response :success
  end

  test "should create reptile" do
    assert_difference('Reptile.count') do
      post reptiles_url, params: { reptile: {
        birthday: @reptile.birthday, comeday: @reptile.comeday,
        image: @reptile.image, name: @reptile.name
      } }
    end

    assert_redirected_to reptile_url(Reptile.last)
  end

  test "should show reptile" do
    get reptile_url(@reptile)
    assert_response :success
  end

  test "should get edit" do
    get edit_reptile_url(@reptile)
    assert_response :success
  end

  test "should update reptile" do
    patch reptile_url(@reptile), params: { reptile: {
      birthday: @reptile.birthday, comeday: @reptile.comeday,
      image: @reptile.image, name: @reptile.name
    } }
    assert_redirected_to reptile_url(@reptile)
  end

  test "should destroy reptile" do
    assert_difference('Reptile.count', -1) do
      delete reptile_url(@reptile)
    end

    assert_redirected_to reptiles_url
  end
end
