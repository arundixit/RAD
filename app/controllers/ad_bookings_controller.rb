class AdBookingsController < ApplicationController
  # GET /ad_bookings
  # GET /ad_bookings.json
  def index
    @ad_bookings = AdBooking.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_bookings }
    end
  end

  # GET /ad_bookings/1
  # GET /ad_bookings/1.json
  def show
    @ad_booking = AdBooking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_booking }
    end
  end

  # GET /ad_bookings/new
  # GET /ad_bookings/new.json
  def new
    @ad_booking = AdBooking.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_booking }
    end
  end

  # GET /ad_bookings/1/edit
  def edit
    @ad_booking = AdBooking.find(params[:id])
  end

  # POST /ad_bookings
  # POST /ad_bookings.json
  def create
    @ad_booking = AdBooking.new(params[:ad_booking])

    respond_to do |format|
      if @ad_booking.save
        format.html { redirect_to @ad_booking, notice: 'Ad booking was successfully created.' }
        format.json { render json: @ad_booking, status: :created, location: @ad_booking }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_bookings/1
  # PUT /ad_bookings/1.json
  def update
    @ad_booking = AdBooking.find(params[:id])

    respond_to do |format|
      if @ad_booking.update_attributes(params[:ad_booking])
        format.html { redirect_to @ad_booking, notice: 'Ad booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_bookings/1
  # DELETE /ad_bookings/1.json
  def destroy
    @ad_booking = AdBooking.find(params[:id])
    @ad_booking.destroy

    respond_to do |format|
      format.html { redirect_to ad_bookings_url }
      format.json { head :no_content }
    end
  end
end
