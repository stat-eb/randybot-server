class JoysticksController < ApplicationController
  before_action :set_joystick, only: [:show, :edit, :update, :destroy]
  
  # prevent authentication errors, actually quite stupid to do
  protect_from_forgery :except => :update

  # GET /joysticks
  # GET /joysticks.json
  def index
    @joysticks = Joystick.all
  end

  # GET /joysticks/1
  # GET /joysticks/1.json
  def show
  end

  # GET /joysticks/new
  def new
    @joystick = Joystick.new
  end

  # GET /joysticks/1/edit
  def edit
  end

  # POST /joysticks
  # POST /joysticks.json
  def create
    @joystick = Joystick.new(joystick_params)

    respond_to do |format|
      if @joystick.save
        format.html { redirect_to @joystick, notice: 'Joystick was successfully created.' }
        format.json { render :show, status: :created, location: @joystick }
      else
        format.html { render :new }
        format.json { render json: @joystick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joysticks/1
  # PATCH/PUT /joysticks/1.json
  def update
	if true
		@joystick.update(joystick_params)
		respond_to do |format|
			format.html { head  :no_content }
			format.json { head  :no_content }
		end
		return
	end
	
    respond_to do |format|
      if @joystick.update(joystick_params)
        format.html { redirect_to @joystick, notice: 'Joystick was successfully updated.' }
        format.json { render :show, status: :ok, location: @joystick }
      else
        format.html { render :edit }
        format.json { render json: @joystick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joysticks/1
  # DELETE /joysticks/1.json
  def destroy
    @joystick.destroy
    respond_to do |format|
      format.html { redirect_to joysticks_url, notice: 'Joystick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joystick
      @joystick = Joystick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joystick_params
      params.require(:joystick).permit(:x, :y)
    end
end
