class Article < ApplicationRecord
  scope :sort, lambda{order("articles.id ASC")}
  :join_table => "article"
end
