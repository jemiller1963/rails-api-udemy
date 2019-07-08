# class ArticleSerializer < ActiveModel::Serializer
class ArticleSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  set_type :articles
  attributes :title, :content, :slug
  # attributes :id, :title, :content, :slug

end
