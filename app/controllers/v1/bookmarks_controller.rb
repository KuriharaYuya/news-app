module V1
  class BookmarksController < ApplicationController
    def index
      bookmarks = Bookmark.all
      render json: bookmarks, status: :ok
    end
  end
end
