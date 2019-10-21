class ImmobilesController < ApplicationController
  before_action :set_immobile, only: [:show, :edit, :update, :destroy]

  # GET /immobiles
  # GET /immobiles.json
  def index
    @immobiles = current_user.immobile.all
  end

  # GET /immobiles/1
  # GET /immobiles/1.json
  def show
  end

  # GET /immobiles/new
  def new
    @immobile = Immobile.new
  end

  # GET /immobiles/1/edit
  def edit
  end

  # POST /immobiles
  # POST /immobiles.json
  def create
    @immobile = current_user.immobile.create(immobile_params)
    # byebug
    respond_to do |format|
      if @immobile.save
        format.html { redirect_to @immobile, notice: "Immobile was successfully created." }
        format.json { render :show, status: :created, location: @immobile }
      else
        format.html { render :new }
        format.json { render json: @immobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /immobiles/1
  # PATCH/PUT /immobiles/1.json
  def update
    respond_to do |format|
      if @immobile.update(immobile_params)
        format.html { redirect_to @immobile, notice: "Immobile was successfully updated." }
        format.json { render :show, status: :ok, location: @immobile }
      else
        format.html { render :edit }
        format.json { render json: @immobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /immobiles/1
  # DELETE /immobiles/1.json
  def destroy
    @immobile.destroy
    respond_to do |format|
      format.html { redirect_to immobiles_url, notice: "Immobile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_immobile
    @immobile = Immobile.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def immobile_params
    params.require(:immobile).permit(:title, :description, :value, :history, :user_id)
  end
end
