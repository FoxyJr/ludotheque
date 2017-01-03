class JeusController < ApplicationController
  before_action :set_jeu, only: [:show, :edit, :update, :destroy]

  # GET /jeus
  # GET /jeus.json
  def index
    @jeus = Jeu.all
  end

  # GET /jeus/1
  # GET /jeus/1.json
  def show
  end

  # GET /jeus/new
  def new
    @jeu = Jeu.new
  end

  # GET /jeus/1/edit
  def edit
  end

  # POST /jeus
  # POST /jeus.json
  def create
    @jeu = Jeu.new(jeu_params)
    @jeu.consoles.build

    respond_to do |format|
      if @jeu.save
        format.html { redirect_to @jeu, notice: 'Le jeu a été ajouté.' }
        format.json { render :show, status: :created, location: @jeu }
      else
        format.html { render :new }
        format.json { render json: @jeu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jeus/1
  # PATCH/PUT /jeus/1.json
  def update
    respond_to do |format|
      if @jeu.update(jeu_params)
        format.html { redirect_to @jeu, notice: 'Les informations sur le jeu ont été mises à jour' }
        format.json { render :show, status: :ok, location: @jeu }
      else
        format.html { render :edit }
        format.json { render json: @jeu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jeus/1
  # DELETE /jeus/1.json
  def destroy
    @jeu.destroy
    respond_to do |format|
      format.html { redirect_to jeus_url, notice: 'Le jeu a été enlevé' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jeu
      @jeu = Jeu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jeu_params
      params.require(:jeu).permit(:title, :description, :rank, :console)
    end
end
