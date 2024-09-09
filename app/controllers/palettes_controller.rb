class PalettesController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [ :index, :show ]

  def index
    @palettes = Palette.all
  end

  def show
    @palette = Palette.find(params[:id])
  end

  def new
    @palette = Palette.new
  end

  def create
    @palette = Palette.new(palette_params)

    if @palette.save
      redirect_to @palette
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @palette = Palette.find(params[:id])
  end

  def update
    @palette = Palette.find(params[:id])

    if @palette.update(palette_params)
      redirect_to @palette
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @palette = Palette.find(params[:id])
    @palette.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def palette_params
      params.require(:palette).permit(:name, :is_color_history, :is_favorite, :is_locked)
    end
end
