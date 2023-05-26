module V1
  class BookmarksController < ApplicationController
    def index
      bookmarks = Bookmark.all
      render json: bookmarks, status: :ok
    end

    def create
      article_id = params[:articleId]
      bookmark = Bookmark.new(article_id:)
      bookmark.save!
      render json: bookmark, status: :created
    end

    def destroy
      bookmark = Bookmark.find(params[:id])
      bookmark.destroy!
      render json: bookmark, status: :ok
    end
  end
end
