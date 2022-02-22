class FirendsController < ApplicationController
  before_action :set_firend, only: %i[ show edit update destroy ]

  # GET /firends or /firends.json
  def index
    @firends = Firend.all
  end

  # GET /firends/1 or /firends/1.json
  def show
  end

  # GET /firends/new
  def new
    @firend = Firend.new
  end

  # GET /firends/1/edit
  def edit
  end

  # POST /firends or /firends.json
  def create
    @firend = Firend.new(firend_params)

    respond_to do |format|
      if @firend.save
        format.html { redirect_to firend_url(@firend), notice: "Firend was successfully created." }
        format.json { render :show, status: :created, location: @firend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @firend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firends/1 or /firends/1.json
  def update
    respond_to do |format|
      if @firend.update(firend_params)
        format.html { redirect_to firend_url(@firend), notice: "Firend was successfully updated." }
        format.json { render :show, status: :ok, location: @firend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @firend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firends/1 or /firends/1.json
  def destroy
    @firend.destroy

    respond_to do |format|
      format.html { redirect_to firends_url, notice: "Firend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firend
      @firend = Firend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def firend_params
      params.require(:firend).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
