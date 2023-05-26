# controller spec
require 'rails_helper'

RSpec.describe V1::ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
    it ' returns a proper json response' do
      article = Article.create(title: 'title', content: 'content')
      get :index
      body = JSON.parse(response.body)
      expect(body[0]['title']).to eq(article.title)
      expect(body[0]['content']).to eq(article.content)
    end
  end
end
