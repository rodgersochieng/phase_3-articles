require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author_1 = Author.new("F.BETT")
author_2 = Author.new("P.PETERS")

magazine_1 = Magazine.new("Peoples Daily", "News")
magazine_2 = Magazine.new("The Standard", "Auctions")

article_1 = Article.new(author_1, magazine_1, "Dairing Abroad")
article_2 = Article.new(author_1, magazine_2, "Kenyans Abroad")
article_3 = Article.new(author_2, magazine_1, "Should I")
article_4 = Article.new(author_2, magazine_2, "Life from the other side")

pp author_1.articles
pp author_2.articles







### DO NOT REMOVE THIS
binding.pry

0
