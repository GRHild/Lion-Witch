class WardrobeItemsController < ApplicationController
<<<<<<< HEAD

  def index
    @wardrobe_items = WardrobeItem.all
=======
  def index
    @wardrobe_items = WardrobeItem.all

    respond_to do |format|
      format.html
      format.json { render json: @wardrobe_items }
    end
>>>>>>> day-3-start
  end

  def show
    @wardrobe_item = WardrobeItem.find(params[:id])
  end
<<<<<<< HEAD
=======

  def new
    @wardrobe_item = WardrobeItem.new
  end

  def create
    @wardrobe_item = WardrobeItem.create(wardrobe_item_params)

    if @wardrobe_item.save
      redirect_to @wardrobe_item
    else
      render action: 'new'
    end
  end

  private

  def wardrobe_item_params
    params.require(:wardrobe_item).permit(:garment, :label, :season, :color)
  end
>>>>>>> day-3-start
end
