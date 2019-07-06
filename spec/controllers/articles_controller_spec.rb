require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe '#index' do
    it 'should return successful response' do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
      articles = create_list :article, 2
      get :index
      # json      = JSON.parse(response.body)
      # pp json
      # json_data = json['data']
      expect(json_data.length).to eq(2)
      articles.each_with_index do |article, index|
        expect(json_data[index]['attributes']).to eq({
          "title" => article.title,
          "content" => article.content,
          "slug" => article.slug
        })
      end


    end
  end


end
