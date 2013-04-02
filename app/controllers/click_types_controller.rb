class ClickTypesController < ApplicationController
  # GET /click_types
  # GET /click_types.json
  def index
    @click_types = ClickType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @click_types }
    end
  end

  # GET /click_types/1
  # GET /click_types/1.json
  def show
    @click_type = ClickType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @click_type }
    end
  end

  # GET /click_types/new
  # GET /click_types/new.json
  def new
    @click_type = ClickType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @click_type }
    end
  end

  # GET /click_types/1/edit
  def edit
    @click_type = ClickType.find(params[:id])
  end

  # POST /click_types
  # POST /click_types.json
  def create
    @click_type = ClickType.new(params[:click_type])

    respond_to do |format|
      if @click_type.save
        format.html { redirect_to @click_type, notice: 'Click type was successfully created.' }
        format.json { render json: @click_type, status: :created, location: @click_type }
      else
        format.html { render action: "new" }
        format.json { render json: @click_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /click_types/1
  # PUT /click_types/1.json
  def update
    @click_type = ClickType.find(params[:id])

    respond_to do |format|
      if @click_type.update_attributes(params[:click_type])
        format.html { redirect_to @click_type, notice: 'Click type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @click_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /click_types/1
  # DELETE /click_types/1.json
  def destroy
    @click_type = ClickType.find(params[:id])
    @click_type.destroy

    respond_to do |format|
      format.html { redirect_to click_types_url }
      format.json { head :no_content }
    end
  end
end
