class BaseTintasController < ApplicationController
  before_action :set_base_tinta, only: [:show, :edit, :update, :destroy]

  # GET /base_tintas
  # GET /base_tintas.json
  def index
    @base_tintas = BaseTinta.all
  end

  # GET /base_tintas/1
  # GET /base_tintas/1.json
  def show
  end

  # GET /base_tintas/new
  def new
    @base_tinta = BaseTinta.new
  end

  # GET /base_tintas/1/edit
  def edit
  end

  # POST /base_tintas
  # POST /base_tintas.json
  def create
    @base_tinta = BaseTinta.new(base_tinta_params)

    respond_to do |format|
      if @base_tinta.save
        format.html { redirect_to @base_tinta, notice: 'Base tinta was successfully created.' }
        format.json { render :show, status: :created, location: @base_tinta }
      else
        format.html { render :new }
        format.json { render json: @base_tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_tintas/1
  # PATCH/PUT /base_tintas/1.json
  def update
    respond_to do |format|
      if @base_tinta.update(base_tinta_params)
        format.html { redirect_to @base_tinta, notice: 'Base tinta was successfully updated.' }
        format.json { render :show, status: :ok, location: @base_tinta }
      else
        format.html { render :edit }
        format.json { render json: @base_tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_tintas/1
  # DELETE /base_tintas/1.json
  def destroy
    @base_tinta.destroy
    respond_to do |format|
      format.html { redirect_to base_tintas_url, notice: 'Base tinta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_tinta
      @base_tinta = BaseTinta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_tinta_params
      params.require(:base_tinta).permit(:codigo, :tipo_de_linea_id, :descripcion_base, :estado)
    end
end
