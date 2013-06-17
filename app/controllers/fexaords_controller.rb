class FexaordsController < ApplicationController
  # GET /fexaords
  # GET /fexaords.json
  def index
    @fexaords = Fexaord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fexaords }
    end
  end

  # GET /fexaords/1
  # GET /fexaords/1.json
  def show
    @fexaord = Fexaord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fexaord }
    end
  end

  # GET /fexaords/new
  # GET /fexaords/new.json
  def new
    @fexaord = Fexaord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fexaord }
    end
  end

  # GET /fexaords/1/edit
  def edit
    @fexaord = Fexaord.find(params[:id])
  end

  # POST /fexaords
  # POST /fexaords.json
  def create
    @fexaord = Fexaord.new(params[:fexaord])

    respond_to do |format|
      if @fexaord.save
        format.html { redirect_to @fexaord, notice: 'Fexaord was successfully created.' }
        format.json { render json: @fexaord, status: :created, location: @fexaord }
      else
        format.html { render action: "new" }
        format.json { render json: @fexaord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fexaords/1
  # PUT /fexaords/1.json
  def update
    @fexaord = Fexaord.find(params[:id])

    respond_to do |format|
      if @fexaord.update_attributes(params[:fexaord])
        format.html { redirect_to @fexaord, notice: 'Fexaord was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fexaord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fexaords/1
  # DELETE /fexaords/1.json
  def destroy
    @fexaord = Fexaord.find(params[:id])
    @fexaord.destroy

    respond_to do |format|
      format.html { redirect_to fexaords_url }
      format.json { head :no_content }
    end
  end
end
