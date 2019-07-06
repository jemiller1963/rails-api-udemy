class ArticleSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :slug
end
