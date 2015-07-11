require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @photo = photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post :create, photo: { color: @photo.color, file_created_at: @photo.file_created_at, file_name: @photo.file_name, height: @photo.height, md5: @photo.md5, path_name: @photo.path_name, perceptual_hash: @photo.perceptual_hash, status: @photo.status, width: @photo.width }
    end

    assert_redirected_to photo_path(assigns(:photo))
  end

  test "should show photo" do
    get :show, id: @photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo
    assert_response :success
  end

  test "should update photo" do
    patch :update, id: @photo, photo: { color: @photo.color, file_created_at: @photo.file_created_at, file_name: @photo.file_name, height: @photo.height, md5: @photo.md5, path_name: @photo.path_name, perceptual_hash: @photo.perceptual_hash, status: @photo.status, width: @photo.width }
    assert_redirected_to photo_path(assigns(:photo))
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete :destroy, id: @photo
    end

    assert_redirected_to photos_path
  end
end
