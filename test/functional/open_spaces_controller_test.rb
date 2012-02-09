require 'test_helper'

class OpenSpacesControllerTest < ActionController::TestCase
  setup do
    @open_space = open_spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_space" do
    assert_difference('OpenSpace.count') do
      post :create, open_space: @open_space.attributes
    end

    assert_redirected_to open_space_path(assigns(:open_space))
  end

  test "should show open_space" do
    get :show, id: @open_space
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_space
    assert_response :success
  end

  test "should update open_space" do
    put :update, id: @open_space, open_space: @open_space.attributes
    assert_redirected_to open_space_path(assigns(:open_space))
  end

  test "should destroy open_space" do
    assert_difference('OpenSpace.count', -1) do
      delete :destroy, id: @open_space
    end

    assert_redirected_to open_spaces_path
  end
end
