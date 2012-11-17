class UserAtEventsController < ApplicationController
  # GET /user_at_events
  # GET /user_at_events.json
  def index
    @user_at_events = UserAtEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_at_events }
    end
  end

  # GET /user_at_events/1
  # GET /user_at_events/1.json
  def show
    @user_at_event = UserAtEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_at_event }
    end
  end

  # GET /user_at_events/new
  # GET /user_at_events/new.json
  def new
    @user_at_event = UserAtEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_at_event }
    end
  end

  # GET /user_at_events/1/edit
  def edit
    @user_at_event = UserAtEvent.find(params[:id])
  end

  # POST /user_at_events
  # POST /user_at_events.json
  def create
    @user_at_event = UserAtEvent.new(params[:user_at_event])

    respond_to do |format|
      if @user_at_event.save
        format.html { redirect_to @user_at_event, notice: 'User at event was successfully created.' }
        format.json { render json: @user_at_event, status: :created, location: @user_at_event }
      else
        format.html { render action: "new" }
        format.json { render json: @user_at_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_at_events/1
  # PUT /user_at_events/1.json
  def update
    @user_at_event = UserAtEvent.find(params[:id])

    respond_to do |format|
      if @user_at_event.update_attributes(params[:user_at_event])
        format.html { redirect_to @user_at_event, notice: 'User at event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_at_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_at_events/1
  # DELETE /user_at_events/1.json
  def destroy
    @user_at_event = UserAtEvent.find(params[:id])
    @user_at_event.destroy

    respond_to do |format|
      format.html { redirect_to user_at_events_url }
      format.json { head :no_content }
    end
  end
end
