require 'test_helper'

class ExpedientsControllerTest < ActionController::TestCase
  setup do
    @expedient = expedients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expedients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expedient" do
    assert_difference('Expedient.count') do
      post :create, :expedient => @expedient.attributes
    end

    assert_redirected_to expedient_path(assigns(:expedient))
  end

  test "should show expedient" do
    get :show, :id => @expedient.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @expedient.to_param
    assert_response :success
  end

  test "should update expedient" do
    put :update, :id => @expedient.to_param, :expedient => @expedient.attributes
    assert_redirected_to expedient_path(assigns(:expedient))
  end

  test "should destroy expedient" do
    assert_difference('Expedient.count', -1) do
      delete :destroy, :id => @expedient.to_param
    end

    assert_redirected_to expedients_path
  end
end
