class SparringsController < ApplicationController
  before_action :set_sparring, only: [:show, :edit, :update, :destroy]

  # GET /sparrings
  # GET /sparrings.json
  def index
    @sparrings = Sparring.all
  end

  # GET /sparrings/1
  # GET /sparrings/1.json
  def show
  end

  # GET /sparrings/new
  def new
    @sparring = Sparring.new
  end

  # GET /sparrings/1/edit
  def edit
  end

  # POST /sparrings
  # POST /sparrings.json
  def create
    @sparring = Sparring.new(sparring_params)

    respond_to do |format|
      if @sparring.save
        format.html { redirect_to @sparring, notice: 'Sparring was successfully created.' }
        format.json { render :show, status: :created, location: @sparring }
      else
        format.html { render :new }
        format.json { render json: @sparring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sparrings/1
  # PATCH/PUT /sparrings/1.json
  def update
    respond_to do |format|
      if @sparring.update(sparring_params)
        format.html { redirect_to @sparring, notice: 'Sparring was successfully updated.' }
        format.json { render :show, status: :ok, location: @sparring }
      else
        format.html { render :edit }
        format.json { render json: @sparring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sparrings/1
  # DELETE /sparrings/1.json
  def destroy
    @sparring.destroy
    respond_to do |format|
      format.html { redirect_to sparrings_url, notice: 'Sparring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sparring
      @sparring = Sparring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sparring_params
      params.require(:sparring).permit(:matchnumber, :start, :competitornumber)
    end
end
