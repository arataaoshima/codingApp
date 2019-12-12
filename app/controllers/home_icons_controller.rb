class HomeIconsController < ApplicationController
  before_action :set_home_icon, only: [:show, :edit, :update, :destroy]

  # GET /home_icons
  # GET /home_icons.json
  def index
    @home_icons = HomeIcon.all
  end

  # GET /home_icons/1
  # GET /home_icons/1.json
  def show
  end

  # GET /home_icons/new
  def new
    @home_icon = HomeIcon.new
  end

  # GET /home_icons/1/edit
  def edit
  end

  # POST /home_icons
  # POST /home_icons.json
  def create
    @home_icon = HomeIcon.new(home_icon_params)

    respond_to do |format|
      if @home_icon.save
        format.html { redirect_to @home_icon, notice: 'Home icon was successfully created.' }
        format.json { render :show, status: :created, location: @home_icon }
      else
        format.html { render :new }
        format.json { render json: @home_icon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_icons/1
  # PATCH/PUT /home_icons/1.json
  def update
    respond_to do |format|
      if @home_icon.update(home_icon_params)
        format.html { redirect_to @home_icon, notice: 'Home icon was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_icon }
      else
        format.html { render :edit }
        format.json { render json: @home_icon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_icons/1
  # DELETE /home_icons/1.json
  def destroy
    @home_icon.destroy
    respond_to do |format|
      format.html { redirect_to home_icons_url, notice: 'Home icon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_icon
      @home_icon = HomeIcon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_icon_params
      params.require(:home_icon).permit(:icon_name, :icon_iamge, :level_id)
    end
end
