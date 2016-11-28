class FichacortaController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fichacortum, only: [:show, :edit, :update, :destroy]

  # GET /fichacorta
  # GET /fichacorta.json
  def index
    @fichacorta = Fichacortum.all
  end

  # GET /fichacorta/1
  # GET /fichacorta/1.json
  def show
  end

  # GET /fichacorta/new
  def new
    @fichacortum = Fichacortum.new
  end

  # GET /fichacorta/1/edit
  def edit
  end

  # POST /fichacorta
  # POST /fichacorta.json
  def create
    @fichacortum = Fichacortum.new(fichacortum_params)

    respond_to do |format|
      if @fichacortum.save
        format.html { redirect_to @fichacortum, notice: 'Fichacortum was successfully created.' }
        format.json { render :show, status: :created, location: @fichacortum }
      else
        format.html { render :new }
        format.json { render json: @fichacortum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fichacorta/1
  # PATCH/PUT /fichacorta/1.json
  def update
    respond_to do |format|
      if @fichacortum.update(fichacortum_params)
        format.html { redirect_to @fichacortum, notice: 'Fichacortum was successfully updated.' }
        format.json { render :show, status: :ok, location: @fichacortum }
      else
        format.html { render :edit }
        format.json { render json: @fichacortum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fichacorta/1
  # DELETE /fichacorta/1.json
  def destroy
    @fichacortum.destroy
    respond_to do |format|
      format.html { redirect_to fichacorta_url, notice: 'Fichacortum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fichacortum
      @fichacortum = Fichacortum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fichacortum_params
      params.require(:fichacortum).permit(:productomatnr, :ferid, :fob, :preciosug, :productominmb, :prvregcod)
    end
end
