class BusinessesController < ApplicationController
  # GET /businesses
  # GET /businesses.json
  def index
    @list_active = true
    @businesses = Business.where("active = ?", @list_active)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @businesses }
    end
  end

  def by_category
    @businesses = Business.by_category(params[:id])
    respond_to do |format|
      format.html {render action: "index"}
      format.json
    end
  end

  def inactive
    @list_active = false
    @businesses = Business.where("active = ?", @list_active)

    respond_to do |format|
      format.html { render action: "index"}
      format.json { render json: @businesses }
    end
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    @business = Business.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business }
    end
  end

  # GET /businesses/new
  # GET /businesses/new.json
  def new
    @business = Business.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business }
    end
  end

  # GET /businesses/1/edit
  def edit
    @business = Business.find(params[:id])
  end

  # POST /businesses
  # POST /businesses.json
  def create
    @business = Business.create(params[:business])

    respond_to do |format|
      if @business.save
        Version.first.increase_number
        format.html { redirect_to @business, notice: 'Business was successfully created.' }
        format.json { render json: @business, status: :created, location: @business }
      else
        format.html { render action: "new" }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /businesses/1
  # PUT /businesses/1.json
  def update
    @business = Business.find(params[:id])

    respond_to do |format|
      if @business.update_attributes(params[:business])
        Version.first.increase_number
        format.html { redirect_to @business, notice: 'Business was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    Version.first.increase_number

    respond_to do |format|
      format.html { redirect_to businesses_url }
      format.json { head :no_content }
    end
  end

  def from_list
    @list = params[:list].split(',')
    @businesses = Business.where(:id => @list).order(:name)
  end
end
