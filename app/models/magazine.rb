class Magazine
  attr_accessor :name, :category
   @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @author = []
    @@all << self

  end
   
  def self.all
    @@all 
  end

  def contributors 
    articles = Article.all.filter {|article| self == article.magazine}
    articles.map{|article| article.author}
  end

  def self.find_by_name(name)
    all.find {|magazine|magazine.name == name}
  end

  def article_titles
    articles = Article.all.filter {|article| self == article.magazine}
    articles.map{|article|article.title}
  end

  def contributing_authors
    articles =Article.all.filter {|article| self == article.magazine}
    all_authors = articles.map{|article| article.author}
    uniq_authors = all_authors.uniq 
    uniq_authors.filter{|author| all_authors.count(author)>2}
  end


end
