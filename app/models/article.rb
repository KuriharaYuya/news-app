class Article < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true
end
