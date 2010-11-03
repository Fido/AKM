require 'test_helper'

class AvancesControllerTest < ActionController::TestCase
  setup do
    @avance = avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avance" do
    assert_difference('Avance.count') do
      post :create, :avance => @avance.attributes
    end

    assert_redirected_to avance_path(assigns(:avance))
  end

  test "should show avance" do
    get :show, :id => @avance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @avance.to_param
    assert_response :success
  end

  test "should update avance" do
    put :update, :id => @avance.to_param, :avance => @avance.attributes
    assert_redirected_to avance_path(assigns(:avance))
  end

  test "should destroy avance" do
    assert_difference('Avance.count', -1) do
      delete :destroy, :id => @avance.to_param
    end

    assert_redirected_to avances_path
  end
end
