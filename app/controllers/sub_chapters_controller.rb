class SubChaptersController < ApplicationController
  before_filter :get_chapter
  before_filter :get_chapters
  # GET /sub_chapters
  # GET /sub_chapters.json
  def index
    @sub_chapters = SubChapter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sub_chapters }
    end
  end

  # GET /sub_chapters/1
  # GET /sub_chapters/1.json
  def show
    @sub_chapter = SubChapter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sub_chapter }
    end
  end

  # GET /sub_chapters/new
  # GET /sub_chapters/new.json
  def new
    @sub_chapter = SubChapter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sub_chapter }
    end
  end

  # GET /sub_chapters/1/edit
  def edit
    @sub_chapter = SubChapter.find(params[:id])
  end

  # POST /sub_chapters
  # POST /sub_chapters.json
  def create
    @sub_chapter = @chapter.sub_chapters.new(params[:sub_chapter])

    if @sub_chapter.save
      redirect_to chapter_path(@chapter), notice: 'Sub chapter was successfully created.' 
    else
      render action: "new" 
    end
  end

  # PUT /sub_chapters/1
  # PUT /sub_chapters/1.json
  def update
    @sub_chapter = @chapter.sub_chapters.find(params[:id])

    if @sub_chapter.update_attributes(params[:sub_chapter])
      redirect_to chapter_path(@chapter), notice: 'Sub chapter was successfully created.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /sub_chapters/1
  # DELETE /sub_chapters/1.json
  def destroy
    @sub_chapter = SubChapter.find(params[:id])
    @sub_chapter.destroy

    respond_to do |format|
      format.html { redirect_to chpter_sub_chapters_url(@chapter) }
      format.json { head :ok }
    end
  end
  
  private
  def get_chapter
    @chapter = Chapter.find(params[:chapter_id])
  end
  
  def get_chapters
    @chapters = Chapter.all
  end
end
