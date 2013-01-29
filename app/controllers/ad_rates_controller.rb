class AdRatesController < ApplicationController
  # GET /ad_rates
  # GET /ad_rates.json
  def index
    @ad_rates = AdRate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_rates }
    end
  end

  # GET /ad_rates/1
  # GET /ad_rates/1.json
  def show
    @ad_rate = AdRate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_rate }
    end
  end

  # GET /ad_rates/new
  # GET /ad_rates/new.json
  def new
    @ad_rate = AdRate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_rate }
    end
  end

  # GET /ad_rates/1/edit
  def edit
    @ad_rate = AdRate.find(params[:id])
  end

  # POST /ad_rates
  # POST /ad_rates.json
  def create
    @ad_rate = AdRate.new(params[:ad_rate])

    respond_to do |format|
      if @ad_rate.save
        format.html { redirect_to @ad_rate, notice: 'Ad rate was successfully created.' }
        format.json { render json: @ad_rate, status: :created, location: @ad_rate }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_rates/1
  # PUT /ad_rates/1.json
  def update
    @ad_rate = AdRate.find(params[:id])

    respond_to do |format|
      if @ad_rate.update_attributes(params[:ad_rate])
        format.html { redirect_to @ad_rate, notice: 'Ad rate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_rates/1
  # DELETE /ad_rates/1.json
  def destroy
    @ad_rate = AdRate.find(params[:id])
    @ad_rate.destroy

    respond_to do |format|
      format.html { redirect_to ad_rates_url }
      format.json { head :no_content }
    end
  end
end
