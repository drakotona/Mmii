class MiisController < ApplicationController
  before_action :set_mii, only: %i[ show edit update destroy ]

  # GET /miis or /miis.json
  def index
    @miis = Mii.all
  end

  # GET /miis/1 or /miis/1.json
  def show
  end

  # GET /miis/new
  def new
    @mii = Mii.new
  end

  # GET /miis/1/edit
  def edit
  end

  # POST /miis or /miis.json
  def create
    @mii = Mii.new(mii_params)

    respond_to do |format|
      if @mii.save
        format.html { redirect_to mii_url(@mii), notice: "Mii was successfully created." }
        format.json { render :show, status: :created, location: @mii }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miis/1 or /miis/1.json
  def update
    respond_to do |format|
      if @mii.update(mii_params)
        format.html { redirect_to mii_url(@mii), notice: "Mii was successfully updated." }
        format.json { render :show, status: :ok, location: @mii }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miis/1 or /miis/1.json
  def destroy
    @mii.destroy!

    respond_to do |format|
      format.html { redirect_to miis_url, notice: "Mii was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mii
      @mii = Mii.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mii_params
      params.require(:mii).permit(:name, :lastname, :nickname, :slogan, :image, :age, :keyword, :description)
    end
end
