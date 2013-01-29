class AdFrequenciesController < ApplicationController
  # GET /ad_frequencies
  # GET /ad_frequencies.json
  def index
    @ad_frequencies = AdFrequency.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_frequencies }
    end
  end

  # GET /ad_frequencies/1
  # GET /ad_frequencies/1.json
  def show
    @ad_frequency = AdFrequency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_frequency }
    end
  end

  # GET /ad_frequencies/new
  # GET /ad_frequencies/new.json
  def new
    @ad_frequency = AdFrequency.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_frequency }
    end
  end

  # GET /ad_frequencies/1/edit
  def edit
    @ad_frequency = AdFrequency.find(params[:id])
  end

  # POST /ad_frequencies
  # POST /ad_frequencies.json
  def create
    @ad_frequency = AdFrequency.new(params[:ad_frequency])

    respond_to do |format|
      if @ad_frequency.save
        format.html { redirect_to @ad_frequency, notice: 'Ad frequency was successfully created.' }
        format.json { render json: @ad_frequency, status: :created, location: @ad_frequency }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_frequencies/1
  # PUT /ad_frequencies/1.json
  def update
    @ad_frequency = AdFrequency.find(params[:id])

    respond_to do |format|
      if @ad_frequency.update_attributes(params[:ad_frequency])
        format.html { redirect_to @ad_frequency, notice: 'Ad frequency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_frequencies/1
  # DELETE /ad_frequencies/1.json
  def destroy
    @ad_frequency = AdFrequency.find(params[:id])
    @ad_frequency.destroy

    respond_to do |format|
      format.html { redirect_to ad_frequencies_url }
      format.json { head :no_content }
    end
  end
end
