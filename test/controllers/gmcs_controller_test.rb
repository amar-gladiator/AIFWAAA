require 'test_helper'

class GmcsControllerTest < ActionController::TestCase
  setup do
    @gmc = gmcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gmcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gmc" do
    assert_difference('Gmc.count') do
      post :create, gmc: {  }
    end

    assert_redirected_to gmc_path(assigns(:gmc))
  end

  test "should show gmc" do
    get :show, id: @gmc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gmc
    assert_response :success
  end

  test "should update gmc" do
    patch :update, id: @gmc, gmc: {  }
    assert_redirected_to gmc_path(assigns(:gmc))
  end

  test "should destroy gmc" do
    assert_difference('Gmc.count', -1) do
      delete :destroy, id: @gmc
    end

    assert_redirected_to gmcs_path
  end
end
