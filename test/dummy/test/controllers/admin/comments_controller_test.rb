require "test_helper"

class Admin::CommentsControllerTest < ActionDispatch::IntegrationTest
  def comment
    @comment ||= comments :one
  end

  def test_index
    get admin_comments_url
    assert_response :success
  end

  def test_new
    get new_admin_comment_url
    assert_response :success
  end

  def test_create
    assert_difference "Comment.count" do
      post admin_comments_url, params: { comment: { content: comment.content } }
    end

    assert_redirected_to admin_comment_path(Comment.last)
  end

  def test_show
    get admin_comment_url(comment)
    assert_response :success
  end

  def test_edit
    get edit_admin_comment_url(comment)
    assert_response :success
  end

  def test_update
    patch admin_comment_url(comment), params: { comment: { content: comment.content } }
    assert_redirected_to admin_comment_path(comment)
  end

  def test_destroy
    assert_difference "Comment.count", -1  do
      delete admin_comment_url(comment)
    end

    assert_redirected_to admin_comments_path
  end
end
