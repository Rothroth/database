class Article < ApplicationRecord
  scope :sort, lambda{order("articles.id ASC")}
end
