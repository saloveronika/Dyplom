class SubChaptersController < ApplicationController
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
    @sub_chapter = SubChapter.new(params[:sub_chapter])

    respond_to do |format|
      if @sub_chapter.save
        format.html { redirect_to @sub_chapter, notice: 'Sub chapter was successfully created.' }
        format.json { render json: @sub_chapter, status: :created, location: @sub_chapter }
      else
        format.html { render action: "new" }
        format.json { render json: @sub_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sub_chapters/1
  # PUT /sub_chapters/1.json
  def update
    @sub_chapter = SubChapter.find(params[:id])

    respond_to do |format|
      if @sub_chapter.update_attributes(params[:sub_chapter])
        format.html { redirect_to @sub_chapter, notice: 'Sub chapter was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sub_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_chapters/1
  # DELETE /sub_chapters/1.json
  def destroy
    @sub_chapter = SubChapter.find(params[:id])
    @sub_chapter.destroy

    respond_to do |format|
      format.html { redirect_to sub_chapters_url }
      format.json { head :ok }
    end
  end
end
