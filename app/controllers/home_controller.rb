class HomeController < ApplicationController
  def index
    @chapters = Chapter.all
     
  end
  
  def show
    @chapter = Chapter.find(params[:id])
    @sub_chapter = @chapter.sub_chapters.find(params[:id])
  end
end
