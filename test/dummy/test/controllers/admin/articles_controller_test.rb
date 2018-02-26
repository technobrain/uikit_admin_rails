require "test_helper"

class Admin::ArticlesControllerTest < ActionDispatch::IntegrationTest
  def article
    @article ||= articles :one
  end

  def test_index
    get admin_articles_url
    assert_response :success
  end

  def test_new
    get new_admin_article_url
    assert_response :success
  end

  def test_create
    assert_difference "Article.count" do
      post admin_articles_url, params: { article: { content: article.content, title: article.title } }
    end

    assert_redirected_to admin_article_path(Article.last)
  end

  def test_show
    get admin_article_url(article)
    assert_response :success
  end

  def test_edit
    get edit_admin_article_url(article)
    assert_response :success
  end

  def test_update
    patch admin_article_url(article), params: { article: { content: article.content, title: article.title } }
    assert_redirected_to admin_article_path(article)
  end

  def test_destroy
    assert_difference "Article.count", -1  do
      delete admin_article_url(article)
    end

    assert_redirected_to admin_articles_path
  end
end
