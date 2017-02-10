class RoastImagesController < ApplicationController
  before_action :set_roast_image, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /roast_images
  # GET /roast_images.json
  def index
    @roast_images = RoastImage.all
  end

  # GET /roast_images/1
  # GET /roast_images/1.json
  def show
  end

  # GET /roast_images/new
  def new
    @roast_image = RoastImage.new
  end

  # GET /roast_images/1/edit
  def edit
  end

  # POST /roast_images
  # POST /roast_images.json
  def create
    @roast_image = RoastImage.new(roast_image_params)

    respond_to do |format|
      if @roast_image.save
        format.html { redirect_to @roast_image, notice: 'Roast image was successfully created.' }
        format.json { render :show, status: :created, location: @roast_image }
      else
        format.html { render :new }
        format.json { render json: @roast_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roast_images/1
  # PATCH/PUT /roast_images/1.json
  def update
    respond_to do |format|
      if @roast_image.update(roast_image_params)
        format.html { redirect_to @roast_image, notice: 'Roast image was successfully updated.' }
        format.json { render :show, status: :ok, location: @roast_image }
      else
        format.html { render :edit }
        format.json { render json: @roast_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roast_images/1
  # DELETE /roast_images/1.json
  def destroy
    @roast_image.destroy
    respond_to do |format|
      format.html { redirect_to roast_images_url, notice: 'Roast image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roast_image
      @roast_image = RoastImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roast_image_params
      params.fetch(:roast_image, {})
    end
end
