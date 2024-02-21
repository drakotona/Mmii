class Mii2sController < ApplicationController
  before_action :set_mii2, only: %i[ show edit update destroy ]

  # GET /mii2s or /mii2s.json
  def index
    @mii2s = Mii2.all
  end

  # GET /mii2s/1 or /mii2s/1.json
  def show
  end

  # GET /mii2s/new
  def new
    @mii2 = Mii2.new
  end

  # GET /mii2s/1/edit
  def edit
  end

  # POST /mii2s or /mii2s.json
  def create
    @mii2 = Mii2.new(mii2_params)

    respond_to do |format|
      if @mii2.save
        format.html { redirect_to mii2_url(@mii2), notice: "Mii2 was successfully created." }
        format.json { render :show, status: :created, location: @mii2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mii2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mii2s/1 or /mii2s/1.json
  def update
    respond_to do |format|
      if @mii2.update(mii2_params)
        format.html { redirect_to mii2_url(@mii2), notice: "Mii2 was successfully updated." }
        format.json { render :show, status: :ok, location: @mii2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mii2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mii2s/1 or /mii2s/1.json
  def destroy
    @mii2.destroy!

    respond_to do |format|
      format.html { redirect_to mii2s_url, notice: "Mii2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mii2
      @mii2 = Mii2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mii2_params
      params.require(:mii2).permit(:name, :lastname, :nickname, :slogan, :image, :age, :keyword, :description)
    end
end
