class HeroPhrasesController < ApplicationController
  before_action :set_hero_phrase, only: [:show, :edit, :update, :destroy]

  # GET /hero_phrases
  # GET /hero_phrases.json
  def index
    @hero_phrases = HeroPhrase.all
  end

  # GET /hero_phrases/1
  # GET /hero_phrases/1.json
  def show
  end

  # GET /hero_phrases/new
  def new
    @hero_phrase = HeroPhrase.new
  end

  # GET /hero_phrases/1/edit
  def edit
  end

  # POST /hero_phrases
  # POST /hero_phrases.json
  def create
    @hero_phrase = HeroPhrase.new(hero_phrase_params)

    respond_to do |format|
      if @hero_phrase.save
        format.html { redirect_to @hero_phrase, notice: 'Hero phrase was successfully created.' }
        format.json { render :show, status: :created, location: @hero_phrase }
      else
        format.html { render :new }
        format.json { render json: @hero_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hero_phrases/1
  # PATCH/PUT /hero_phrases/1.json
  def update
    respond_to do |format|
      if @hero_phrase.update(hero_phrase_params)
        format.html { redirect_to @hero_phrase, notice: 'Hero phrase was successfully updated.' }
        format.json { render :show, status: :ok, location: @hero_phrase }
      else
        format.html { render :edit }
        format.json { render json: @hero_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hero_phrases/1
  # DELETE /hero_phrases/1.json
  def destroy
    @hero_phrase.destroy
    respond_to do |format|
      format.html { redirect_to hero_phrases_url, notice: 'Hero phrase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero_phrase
      @hero_phrase = HeroPhrase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hero_phrase_params
      params.require(:hero_phrase).permit(:text)
    end
end
