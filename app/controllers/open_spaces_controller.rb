class OpenSpacesController < ApplicationController
  # GET /open_spaces
  # GET /open_spaces.json
  def index
    @open_spaces = OpenSpace.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @open_spaces }
    end
  end

  # GET /open_spaces/1
  # GET /open_spaces/1.json
  def show
    @open_space = OpenSpace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @open_space }
    end
  end

  # GET /open_spaces/new
  # GET /open_spaces/new.json
  def new
    @open_space = OpenSpace.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @open_space }
    end
  end

  # GET /open_spaces/1/edit
  def edit
    @open_space = OpenSpace.find(params[:id])
  end

  # POST /open_spaces
  # POST /open_spaces.json
  def create
    @open_space = OpenSpace.new(params[:open_space])

    respond_to do |format|
      if @open_space.save
        format.html { redirect_to @open_space, notice: 'Open space was successfully created.' }
        format.json { render json: @open_space, status: :created, location: @open_space }
      else
        format.html { render action: "new" }
        format.json { render json: @open_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /open_spaces/1
  # PUT /open_spaces/1.json
  def update
    @open_space = OpenSpace.find(params[:id])

    respond_to do |format|
      if @open_space.update_attributes(params[:open_space])
        format.html { redirect_to @open_space, notice: 'Open space was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @open_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_spaces/1
  # DELETE /open_spaces/1.json
  def destroy
    @open_space = OpenSpace.find(params[:id])
    @open_space.destroy

    respond_to do |format|
      format.html { redirect_to open_spaces_url }
      format.json { head :no_content }
    end
  end
end
