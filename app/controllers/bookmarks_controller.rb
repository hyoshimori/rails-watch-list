class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
  end

  def update

  end
  private
  def bookmarks_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
