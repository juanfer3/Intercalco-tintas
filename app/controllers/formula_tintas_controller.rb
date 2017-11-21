class FormulaTintasController < ApplicationController
  before_action :set_formula_tinta, only: [:show, :edit, :update, :destroy]

  # GET /formula_tintas
  # GET /formula_tintas.json
  def index
    @formula_tintas = FormulaTinta.all
  end

  # GET /formula_tintas/1
  # GET /formula_tintas/1.json
  def show
  end

  # GET /formula_tintas/new
  def new
    @formula_tinta = FormulaTinta.new
  end

  # GET /formula_tintas/1/edit
  def edit
  end

  # POST /formula_tintas
  # POST /formula_tintas.json
  def create
    @formula_tinta = FormulaTinta.new(formula_tinta_params)

    respond_to do |format|
      if @formula_tinta.save
        format.html { redirect_to @formula_tinta, notice: 'Formula tinta was successfully created.' }
        format.json { render :show, status: :created, location: @formula_tinta }
      else
        format.html { render :new }
        format.json { render json: @formula_tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formula_tintas/1
  # PATCH/PUT /formula_tintas/1.json
  def update
    respond_to do |format|
      if @formula_tinta.update(formula_tinta_params)
        format.html { redirect_to @formula_tinta, notice: 'Formula tinta was successfully updated.' }
        format.json { render :show, status: :ok, location: @formula_tinta }
      else
        format.html { render :edit }
        format.json { render json: @formula_tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formula_tintas/1
  # DELETE /formula_tintas/1.json
  def destroy
    @formula_tinta.destroy
    respond_to do |format|
      format.html { redirect_to formula_tintas_url, notice: 'Formula tinta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_tinta
      @formula_tinta = FormulaTinta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formula_tinta_params
      params.require(:formula_tinta).permit(:tinta_id, :base_tinta_id, :cantidad, :estado)
    end
end
