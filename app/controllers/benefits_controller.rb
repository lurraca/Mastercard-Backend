class BenefitsController < ApplicationController
  # GET /benefits
  # GET /benefits.json
  def index
    @benefits = Benefit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @benefits }
    end
  end

  # GET /benefits/1
  # GET /benefits/1.json
  def show
    @benefit = Benefit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @benefit }
    end
  end

  def by_business
    @benefits = Benefit.where("business_id = ?", params[:id])
  end

  # GET /benefits/new
  # GET /benefits/new.json
  def new
    @benefit = Benefit.new

	form_data
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @benefit }
    end
  end

  def form_data
    @benefit_types = BenefitType.all.collect {|bt| [bt.name, bt.id]}
    @business = Business.all.collect {|b| [b.name, b.id]}
  end

  # GET /benefits/1/edit
  def edit
    @benefit = Benefit.find(params[:id])
	form_data
  end

  # POST /benefits
  # POST /benefits.json
  def create
    @benefit = Benefit.new(params[:benefit])

    respond_to do |format|
      if @benefit.save
        Version.first.increase_number
        format.html { redirect_to @benefit, notice: 'Benefit was successfully created.' }
        format.json { render json: @benefit, status: :created, location: @benefit }
      else
        format.html { render action: "new" }
        format.json { render json: @benefit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /benefits/1
  # PUT /benefits/1.json
  def update
    @benefit = Benefit.find(params[:id])

    respond_to do |format|
      if @benefit.update_attributes(params[:benefit])
        Version.first.increase_number
        format.html { redirect_to @benefit, notice: 'Benefit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @benefit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benefits/1
  # DELETE /benefits/1.json
  def destroy
    @benefit = Benefit.find(params[:id])
    @benefit.destroy
    Version.first.increase_number

    respond_to do |format|
      format.html { redirect_to benefits_url }
      format.json { head :no_content }
    end
  end

  def all_active
    @benefits = Benefit.where{(begin_date <= Date.today) & (end_date >= Date.today)}
  end
end
