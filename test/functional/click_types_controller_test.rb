require 'test_helper'

class ClickTypesControllerTest < ActionController::TestCase
  setup do
    @click_type = click_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:click_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create click_type" do
    assert_difference('ClickType.count') do
      post :create, click_type: { name: @click_type.name }
    end

    assert_redirected_to click_type_path(assigns(:click_type))
  end

  test "should show click_type" do
    get :show, id: @click_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @click_type
    assert_response :success
  end

  test "should update click_type" do
    put :update, id: @click_type, click_type: { name: @click_type.name }
    assert_redirected_to click_type_path(assigns(:click_type))
  end

  test "should destroy click_type" do
    assert_difference('ClickType.count', -1) do
      delete :destroy, id: @click_type
    end

    assert_redirected_to click_types_path
  end
end
