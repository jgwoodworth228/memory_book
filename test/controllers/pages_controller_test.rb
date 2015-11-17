require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post :create, page: { book_id: @page.book_id, page_bullet_01: @page.page_bullet_01, page_bullet_02: @page.page_bullet_02, page_image_caption: @page.page_image_caption, page_image_url: @page.page_image_url, user_id: @page.user_id }
    end

    assert_redirected_to page_path(assigns(:page))
  end

  test "should show page" do
    get :show, id: @page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page
    assert_response :success
  end

  test "should update page" do
    patch :update, id: @page, page: { book_id: @page.book_id, page_bullet_01: @page.page_bullet_01, page_bullet_02: @page.page_bullet_02, page_image_caption: @page.page_image_caption, page_image_url: @page.page_image_url, user_id: @page.user_id }
    assert_redirected_to page_path(assigns(:page))
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete :destroy, id: @page
    end

    assert_redirected_to pages_path
  end
end
