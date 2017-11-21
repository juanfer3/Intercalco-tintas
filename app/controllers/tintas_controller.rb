class TintasController < ApplicationController
  before_action :set_tinta, only: [:show, :edit, :update, :destroy]

  # GET /tintas
  # GET /tintas.json
  def index
    @tintas = Tinta.all
  end

  # GET /tintas/1
  # GET /tintas/1.json
  def show
  end

  # GET /tintas/new
  def new
    @tinta = Tinta.new
    @tinta.formula_tintas.build

  end

  # GET /tintas/1/edit
  def edit
  end

  # POST /tintas
  # POST /tintas.json
  def create
    @tinta = Tinta.new(tinta_params)

    respond_to do |format|
      if @tinta.save
        format.html { redirect_to @tinta, notice: 'Tinta was successfully created.' }
        format.json { render :show, status: :created, location: @tinta }
      else
        format.html { render :new }
        format.json { render json: @tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tintas/1
  # PATCH/PUT /tintas/1.json
  def update
    respond_to do |format|
      if @tinta.update(tinta_params)
        format.html { redirect_to @tinta, notice: 'Tinta was successfully updated.' }
        format.json { render :show, status: :ok, location: @tinta }
      else
        format.html { render :edit }
        format.json { render json: @tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tintas/1
  # DELETE /tintas/1.json
  def destroy
    @tinta.destroy
    respond_to do |format|
      format.html { redirect_to tintas_url, notice: 'Tinta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tinta
      @tinta = Tinta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tinta_params
      params.require(:tinta).permit(:codigo, :pantone, :malla_id, :tipo_de_unidad, :cantida, :mezcla_total, :estado,
      formula_tintas_attributes:[:tinta_id, :base_tinta_id, :cantidad, :estado])
    end
end
