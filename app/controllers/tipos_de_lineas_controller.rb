class TiposDeLineasController < ApplicationController
  before_action :set_tipo_de_linea, only: [:show, :edit, :update, :destroy]

  # GET /tipos_de_lineas
  # GET /tipos_de_lineas.json
  def index
    @tipos_de_lineas = TipoDeLinea.all
  end

  # GET /tipos_de_lineas/1
  # GET /tipos_de_lineas/1.json
  def show
  end

  # GET /tipos_de_lineas/new
  def new
    @tipo_de_linea = TipoDeLinea.new
  end

  # GET /tipos_de_lineas/1/edit
  def edit
  end

  # POST /tipos_de_lineas
  # POST /tipos_de_lineas.json
  def create
    @tipo_de_linea = TipoDeLinea.new(tipo_de_linea_params)

    respond_to do |format|
      if @tipo_de_linea.save
        format.html { redirect_to @tipo_de_linea, notice: 'Tipo de linea was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_de_linea }
      else
        format.html { render :new }
        format.json { render json: @tipo_de_linea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_de_lineas/1
  # PATCH/PUT /tipos_de_lineas/1.json
  def update
    respond_to do |format|
      if @tipo_de_linea.update(tipo_de_linea_params)
        format.html { redirect_to @tipo_de_linea, notice: 'Tipo de linea was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_de_linea }
      else
        format.html { render :edit }
        format.json { render json: @tipo_de_linea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_de_lineas/1
  # DELETE /tipos_de_lineas/1.json
  def destroy
    @tipo_de_linea.destroy
    respond_to do |format|
      format.html { redirect_to tipos_de_lineas_url, notice: 'Tipo de linea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_linea
      @tipo_de_linea = TipoDeLinea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_de_linea_params
      params.require(:tipo_de_linea).permit(:descripcion_linea, :caracteristica, :estado)
    end
end
