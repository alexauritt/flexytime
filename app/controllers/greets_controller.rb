class GreetsController < ApplicationController
  # GET /greets
  # GET /greets.json
  def index
    @greets = Greet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @greets }
    end
  end

  # GET /greets/1
  # GET /greets/1.json
  def show
    @greet = Greet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @greet }
    end
  end

  # GET /greets/new
  # GET /greets/new.json
  def new
    @greet = Greet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @greet }
    end
  end

  # GET /greets/1/edit
  def edit
    @greet = Greet.find(params[:id])
  end

  # POST /greets
  # POST /greets.json
  def create
    @greet = Greet.new(params[:greet])

    respond_to do |format|
      if @greet.save
        format.html { redirect_to @greet, notice: 'Greet was successfully created.' }
        format.json { render json: @greet, status: :created, location: @greet }
      else
        format.html { render action: "new" }
        format.json { render json: @greet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /greets/1
  # PUT /greets/1.json
  def update
    @greet = Greet.find(params[:id])

    respond_to do |format|
      if @greet.update_attributes(params[:greet])
        format.html { redirect_to @greet, notice: 'Greet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @greet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greets/1
  # DELETE /greets/1.json
  def destroy
    @greet = Greet.find(params[:id])
    @greet.destroy

    respond_to do |format|
      format.html { redirect_to greets_url }
      format.json { head :no_content }
    end
  end
end
