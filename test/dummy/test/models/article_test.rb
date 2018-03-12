require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def article
    # @article ||= Article.new
    @article ||= articles(:one)
  end

  def test_valid
    assert article.valid?
  end

  def test_invalid
    assert !Article.new.valid?
  end
end
