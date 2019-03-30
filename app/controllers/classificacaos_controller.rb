class ClassificacaosController < ApplicationController
  before_action :set_classificacao, only: [:show, :edit, :update, :destroy]

  # GET /classificacaos
  # GET /classificacaos.json
  def index
    @classificacaos = Classificacao.all
  end

  # GET /classificacaos/1
  # GET /classificacaos/1.json
  def show
  end

  # GET /classificacaos/new
  def new
    @classificacao = Classificacao.new
  end

  # GET /classificacaos/1/edit
  def edit
  end

  # POST /classificacaos
  # POST /classificacaos.json
  def create
    @classificacao = Classificacao.new(classificacao_params)

    respond_to do |format|
      if @classificacao.save
        format.html { redirect_to @classificacao, notice: 'Classificacao was successfully created.' }
        format.json { render :show, status: :created, location: @classificacao }
      else
        format.html { render :new }
        format.json { render json: @classificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classificacaos/1
  # PATCH/PUT /classificacaos/1.json
  def update
    respond_to do |format|
      if @classificacao.update(classificacao_params)
        format.html { redirect_to @classificacao, notice: 'Classificacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @classificacao }
      else
        format.html { render :edit }
        format.json { render json: @classificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classificacaos/1
  # DELETE /classificacaos/1.json
  def destroy
    @classificacao.destroy
    respond_to do |format|
      format.html { redirect_to classificacaos_url, notice: 'Classificacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classificacao
      @classificacao = Classificacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classificacao_params
      params.require(:classificacao).permit(:nome, :idade_minima)
    end
end
