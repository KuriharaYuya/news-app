# rspec model test for article
require 'rails_helper'

RSpec.describe Article, type: :model do
  # 実際にデータを流すのか、単に定義を検証するだけなのか
  describe 'validations' do
    it 'validates presence of title' do
      article = Article.new(title: '', content: 'content')
      expect(article.valid?).to be(false)
      expect(article.errors[:title]).to include("can't be blank")
    end
  end
  describe 'associations' do
    it 'has many bookmarks' do
      association = described_class.reflect_on_association(:bookmarks)
      expect(association.macro).to eq(:has_many)
    end
  end
end
