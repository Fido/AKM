require 'test_helper'

class FinalesControllerTest < ActionController::TestCase
  setup do
    @final = finales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create final" do
    assert_difference('Final.count') do
      post :create, :final => @final.attributes
    end

    assert_redirected_to final_path(assigns(:final))
  end

  test "should show final" do
    get :show, :id => @final.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @final.to_param
    assert_response :success
  end

  test "should update final" do
    put :update, :id => @final.to_param, :final => @final.attributes
    assert_redirected_to final_path(assigns(:final))
  end

  test "should destroy final" do
    assert_difference('Final.count', -1) do
      delete :destroy, :id => @final.to_param
    end

    assert_redirected_to finales_path
  end
end
