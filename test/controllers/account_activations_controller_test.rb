require 'test_helper'

class AccountActivationsControllerTest < ActionController::TestCase
  setup do
    @account_activation = account_activations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_activations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_activation" do
    assert_difference('AccountActivation.count') do
      post :create, account_activation: {  }
    end

    assert_redirected_to account_activation_path(assigns(:account_activation))
  end

  test "should show account_activation" do
    get :show, id: @account_activation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_activation
    assert_response :success
  end

  test "should update account_activation" do
    patch :update, id: @account_activation, account_activation: {  }
    assert_redirected_to account_activation_path(assigns(:account_activation))
  end

  test "should destroy account_activation" do
    assert_difference('AccountActivation.count', -1) do
      delete :destroy, id: @account_activation
    end

    assert_redirected_to account_activations_path
  end
end
