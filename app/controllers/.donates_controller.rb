class DonatesController < ApplicationController
  before_action :set_donate, only: [:show, :edit, :update, :destroy]

  # GET /donates
  # GET /donates.json
  def index
    @donates = Donate.all
  end

  # GET /donates/1
  # GET /donates/1.json
  def show
  end

  # GET /donates/new
  def new
    @donate = Donate.new
  end

  # GET /donates/1/edit
  def edit
  end

  # POST /donates
  # POST /donates.json
  def create
    @donate = Donate.new(donate_params)

    respond_to do |format|
      if @donate.save
        format.html { redirect_to @donate, notice: 'Donate was successfully created.' }
        format.json { render :show, status: :created, location: @donate }
      else
        format.html { render :new }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donates/1
  # PATCH/PUT /donates/1.json
  def update
    respond_to do |format|
      if @donate.update(donate_params)
        format.html { redirect_to @donate, notice: 'Donate was successfully updated.' }
        format.json { render :show, status: :ok, location: @donate }
      else
        format.html { render :edit }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donates/1
  # DELETE /donates/1.json
  def destroy
    @donate.destroy
    respond_to do |format|
      format.html { redirect_to donates_url, notice: 'Donate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donate
      @donate = Donate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def donate_params
      params.fetch(:donate, {})
    end
end
