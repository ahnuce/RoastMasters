class RoastsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_roast, only: [:show, :edit, :update, :destroy]

  # GET /roasts
  # GET /roasts.json
  def index
    @roasts = Roast.all
  end

  # GET /roasts/1
  # GET /roasts/1.json
  def show
    @comments = Comment.where(roast_id: @roast).order("created_at DESC")
  end

  # GET /roasts/new
  def new
    @roast = Roast.new
  end

  # GET /roasts/1/edit
  def edit
  end

  # POST /roasts
  # POST /roasts.json
  def create
    @user = current_user
    @roast = @user.roasts.build(roast_params)

    respond_to do |format|
      if @roast.save
        format.html { redirect_to @roast, notice: 'Roast was successfully created.' }
        format.json { render :show, status: :created, location: @roast }
      else
        format.html { render :new }
        format.json { render json: @roast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roasts/1
  # PATCH/PUT /roasts/1.json
  def update
    respond_to do |format|
      if @roast.update(roast_params)
        format.html { redirect_to @roast, notice: 'Roast was successfully updated.' }
        format.json { render :show, status: :ok, location: @roast }
      else
        format.html { render :edit }
        format.json { render json: @roast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roasts/1
  # DELETE /roasts/1.json
  def destroy
    @roast = Roast.find(params[:id])
    @roast.destroy
    redirect_to roasts_path, :notice => "Roast Topic Deleted"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roast
      @roast = Roast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roast_params
      params.require(:roast).permit(:body, :user_id)
    end
end
