require 'test_helper'

class ImportPathsControllerTest < ActionController::TestCase
  setup do
    @import_path = import_paths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_paths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_path" do
    assert_difference('ImportPath.count') do
      post :create, import_path: { file_count: @import_path.file_count, path_name: @import_path.path_name, total_size: @import_path.total_size }
    end

    assert_redirected_to import_path_path(assigns(:import_path))
  end

  test "should show import_path" do
    get :show, id: @import_path
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @import_path
    assert_response :success
  end

  test "should update import_path" do
    patch :update, id: @import_path, import_path: { file_count: @import_path.file_count, path_name: @import_path.path_name, total_size: @import_path.total_size }
    assert_redirected_to import_path_path(assigns(:import_path))
  end

  test "should destroy import_path" do
    assert_difference('ImportPath.count', -1) do
      delete :destroy, id: @import_path
    end

    assert_redirected_to import_paths_path
  end
end
