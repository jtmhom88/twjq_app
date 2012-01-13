class SearchesController < ApplicationController
  
  def new
  end
  
  def index
    @Searches = Search.all
  end

  def create
    @search = Search.create params[:search_text]
    redirect_to searches_path
  end
end
