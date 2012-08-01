class BenefitTypesController < ApplicationController
  # GET /benefit_types
  # GET /benefit_types.json
  def index
    @benefit_types = BenefitType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @benefit_types }
    end
  end

  # GET /benefit_types/1
  # GET /benefit_types/1.json
  def show
    @benefit_type = BenefitType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @benefit_type }
    end
  end

  # GET /benefit_types/new
  # GET /benefit_types/new.json
  def new
    @benefit_type = BenefitType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @benefit_type }
    end
  end

  # GET /benefit_types/1/edit
  def edit
    @benefit_type = BenefitType.find(params[:id])
  end

  # POST /benefit_types
  # POST /benefit_types.json
  def create
    @benefit_type = BenefitType.new(params[:benefit_type])

    respond_to do |format|
      if @benefit_type.save
        format.html { redirect_to @benefit_type, notice: 'Benefit type was successfully created.' }
        format.json { render json: @benefit_type, status: :created, location: @benefit_type }
      else
        format.html { render action: "new" }
        format.json { render json: @benefit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /benefit_types/1
  # PUT /benefit_types/1.json
  def update
    @benefit_type = BenefitType.find(params[:id])

    respond_to do |format|
      if @benefit_type.update_attributes(params[:benefit_type])
        format.html { redirect_to @benefit_type, notice: 'Benefit type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @benefit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benefit_types/1
  # DELETE /benefit_types/1.json
  def destroy
    @benefit_type = BenefitType.find(params[:id])
    @benefit_type.destroy

    respond_to do |format|
      format.html { redirect_to benefit_types_url }
      format.json { head :no_content }
    end
  end
end
