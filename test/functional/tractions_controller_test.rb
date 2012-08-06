require 'test_helper'

class TractionsControllerTest < ActionController::TestCase
  setup do
    @traction = tractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traction" do
    assert_difference('Traction.count') do
      post :create, traction: { idea: @traction.idea, name: @traction.name, value: @traction.value }
    end

    assert_redirected_to traction_path(assigns(:traction))
  end

  test "should show traction" do
    get :show, id: @traction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traction
    assert_response :success
  end

  test "should update traction" do
    put :update, id: @traction, traction: { idea: @traction.idea, name: @traction.name, value: @traction.value }
    assert_redirected_to traction_path(assigns(:traction))
  end

  test "should destroy traction" do
    assert_difference('Traction.count', -1) do
      delete :destroy, id: @traction
    end

    assert_redirected_to tractions_path
  end
end
