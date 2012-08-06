class TractionsController < ApplicationController
  # GET /tractions
  # GET /tractions.json
  def index
    @tractions = Traction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tractions }
    end
  end

  # GET /tractions/1
  # GET /tractions/1.json
  def show
    @traction = Traction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @traction }
    end
  end

  # GET /tractions/new
  # GET /tractions/new.json
  def new
    @traction = Traction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @traction }
    end
  end

  # GET /tractions/1/edit
  def edit
    @traction = Traction.find(params[:id])
  end

  # POST /tractions
  # POST /tractions.json
  def create
    @traction = Traction.new(params[:traction])

    respond_to do |format|
      if @traction.save
        format.html { redirect_to @traction, notice: 'Traction was successfully created.' }
        format.json { render json: @traction, status: :created, location: @traction }
      else
        format.html { render action: "new" }
        format.json { render json: @traction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tractions/1
  # PUT /tractions/1.json
  def update
    @traction = Traction.find(params[:id])

    respond_to do |format|
      if @traction.update_attributes(params[:traction])
        format.html { redirect_to @traction, notice: 'Traction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @traction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tractions/1
  # DELETE /tractions/1.json
  def destroy
    @traction = Traction.find(params[:id])
    @traction.destroy

    respond_to do |format|
      format.html { redirect_to tractions_url }
      format.json { head :no_content }
    end
  end
end
