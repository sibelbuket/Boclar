require 'test_helper'

class BorcsControllerTest < ActionController::TestCase
  setup do
    @borc = borcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borc" do
    assert_difference('Borc.count') do
      post :create, borc: @borc.attributes
    end

    assert_redirected_to borc_path(assigns(:borc))
  end

  test "should show borc" do
    get :show, id: @borc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borc
    assert_response :success
  end

  test "should update borc" do
    put :update, id: @borc, borc: @borc.attributes
    assert_redirected_to borc_path(assigns(:borc))
  end

  test "should destroy borc" do
    assert_difference('Borc.count', -1) do
      delete :destroy, id: @borc
    end

    assert_redirected_to borcs_path
  end
end
