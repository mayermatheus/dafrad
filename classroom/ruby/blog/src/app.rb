module App
  class Blog
    attr_accessor :articles

    def initialize
      @articles = []
    end

    def load
      
      @articles
    end

    def list_articles(category=nil)
      []
    end

    def list_categories
      []
    end
  end

  class Article
    attr_accessor :id, :title, :text, :categories

    def initialize
      @categories = []
    end
  end

  class Category
    attr_accessor :id, :name
  end
end
