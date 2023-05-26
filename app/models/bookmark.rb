class Bookmark < ApplicationRecord
  belongs_to :article
  validates :article_id, uniqueness: true
end
