require "minitest/autorun"
require_relative "../src/app.rb"

# require "minitest/reporters"
# Minitest::Reporters.use!
# Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new(:color => true)
# Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new(:color => true)
# Minitest::Reporters.use! [Minitest::Reporters::ProgressReporter.new(:color => true)]

class TestApp < Minitest::Test
  def setup
    @blog = App::Blog.new
  end

  def test_load_articles
    @blog.load
    articles = @blog.list_articles
    assert_equal 6, articles.length

    assert_equal [App::Category.new(1, "css")], articles.first.categories
  end

  def test_load_categories
    categories = @blog.list_categories
    assert_equal 4, categories.length
  end

  def test_list_articles_by_category
    categories = @blog.list_articles("ruby")
    assert_equal 2, categories.length
  end

end
