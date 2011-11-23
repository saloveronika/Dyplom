require 'test_helper'

class SubChaptersControllerTest < ActionController::TestCase
  setup do
    @sub_chapter = sub_chapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_chapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_chapter" do
    assert_difference('SubChapter.count') do
      post :create, sub_chapter: @sub_chapter.attributes
    end

    assert_redirected_to sub_chapter_path(assigns(:sub_chapter))
  end

  test "should show sub_chapter" do
    get :show, id: @sub_chapter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_chapter.to_param
    assert_response :success
  end

  test "should update sub_chapter" do
    put :update, id: @sub_chapter.to_param, sub_chapter: @sub_chapter.attributes
    assert_redirected_to sub_chapter_path(assigns(:sub_chapter))
  end

  test "should destroy sub_chapter" do
    assert_difference('SubChapter.count', -1) do
      delete :destroy, id: @sub_chapter.to_param
    end

    assert_redirected_to sub_chapters_path
  end
end
