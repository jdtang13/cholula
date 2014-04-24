require 'test_helper'

class AnnotCommentsControllerTest < ActionController::TestCase
  setup do
    @annot_comment = annot_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annot_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create annot_comment" do
    assert_difference('AnnotComment.count') do
      post :create, annot_comment: { body: @annot_comment.body }
    end

    assert_redirected_to annot_comment_path(assigns(:annot_comment))
  end

  test "should show annot_comment" do
    get :show, id: @annot_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @annot_comment
    assert_response :success
  end

  test "should update annot_comment" do
    patch :update, id: @annot_comment, annot_comment: { body: @annot_comment.body }
    assert_redirected_to annot_comment_path(assigns(:annot_comment))
  end

  test "should destroy annot_comment" do
    assert_difference('AnnotComment.count', -1) do
      delete :destroy, id: @annot_comment
    end

    assert_redirected_to annot_comments_path
  end
end
