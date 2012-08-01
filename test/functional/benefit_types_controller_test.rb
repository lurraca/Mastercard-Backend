require 'test_helper'

class BenefitTypesControllerTest < ActionController::TestCase
  setup do
    @benefit_type = benefit_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:benefit_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create benefit_type" do
    assert_difference('BenefitType.count') do
      post :create, benefit_type: { name: @benefit_type.name }
    end

    assert_redirected_to benefit_type_path(assigns(:benefit_type))
  end

  test "should show benefit_type" do
    get :show, id: @benefit_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @benefit_type
    assert_response :success
  end

  test "should update benefit_type" do
    put :update, id: @benefit_type, benefit_type: { name: @benefit_type.name }
    assert_redirected_to benefit_type_path(assigns(:benefit_type))
  end

  test "should destroy benefit_type" do
    assert_difference('BenefitType.count', -1) do
      delete :destroy, id: @benefit_type
    end

    assert_redirected_to benefit_types_path
  end
end
