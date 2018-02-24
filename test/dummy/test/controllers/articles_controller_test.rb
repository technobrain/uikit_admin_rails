require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  def article
    @article ||= articles :one
  end

  def test_index
    get articles_url
    assert_response :success
  end

  def test_new
    get new_article_url
    assert_response :success
  end

  def test_create
    assert_difference "Article.count" do
      post articles_url, params: { article: { content: article.content, title: article.title } }
    end

    assert_redirected_to article_path(Article.last)
  end

  def test_show
    get article_url(article)
    assert_response :success
  end

  def test_edit
    get edit_article_url(article)
    assert_response :success
  end

  def test_update
    patch article_url(article), params: { article: { content: article.content, title: article.title } }
    assert_redirected_to article_path(article)
  end

  def test_destroy
    assert_difference "Article.count", -1  do
      delete article_url(article)
    end

    assert_redirected_to articles_path
  end
end
