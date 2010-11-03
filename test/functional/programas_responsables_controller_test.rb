require 'test_helper'

class ProgramasResponsablesControllerTest < ActionController::TestCase
  setup do
    @programas_responsable = programas_responsables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programas_responsables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programas_responsable" do
    assert_difference('ProgramasResponsable.count') do
      post :create, :programas_responsable => @programas_responsable.attributes
    end

    assert_redirected_to programas_responsable_path(assigns(:programas_responsable))
  end

  test "should show programas_responsable" do
    get :show, :id => @programas_responsable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @programas_responsable.to_param
    assert_response :success
  end

  test "should update programas_responsable" do
    put :update, :id => @programas_responsable.to_param, :programas_responsable => @programas_responsable.attributes
    assert_redirected_to programas_responsable_path(assigns(:programas_responsable))
  end

  test "should destroy programas_responsable" do
    assert_difference('ProgramasResponsable.count', -1) do
      delete :destroy, :id => @programas_responsable.to_param
    end

    assert_redirected_to programas_responsables_path
  end
end
