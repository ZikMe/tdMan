require 'test_helper'

class TdVersionsControllerTest < ActionController::TestCase
  setup do
    @td_version = td_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:td_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create td_version" do
    assert_difference('TdVersion.count') do
      post :create, td_version: { comment: @td_version.comment, name: @td_version.name }
    end

    assert_redirected_to td_version_path(assigns(:td_version))
  end

  test "should show td_version" do
    get :show, id: @td_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @td_version
    assert_response :success
  end

  test "should update td_version" do
    patch :update, id: @td_version, td_version: { comment: @td_version.comment, name: @td_version.name }
    assert_redirected_to td_version_path(assigns(:td_version))
  end

  test "should destroy td_version" do
    assert_difference('TdVersion.count', -1) do
      delete :destroy, id: @td_version
    end

    assert_redirected_to td_versions_path
  end
end
