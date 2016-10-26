module App
  class Blog
    attr_accessor :articles

    def initialize
      @articles = []
    end

    def load
      # categories = File.open("../data/categories.csv", "rb").read
      articles = File.open("data/articles.csv", "rb").read
      articles.split("\n")[1..-1].each{|row|
        columns = row.split(';')
        @articles << Article.new(columns[0], columns[1], columns[2])
      }
      @articles
    end

    def list_articles(category=nil)
      if category.nil?
        @articles
      else
        []
      end
    end

    def list_categories
      []
    end
  end

  class Article
    attr_accessor :id, :title, :text, :categories

    def initialize(id, title, text)
      @id = id
      @title = title
      @text = text
      @categories = []
    end
  end

  class Category
    attr_accessor :id, :name

    def initialize(id, name)
      @id = id
      @name = name
    end
  end
end
