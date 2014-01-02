class MenuItemsController < ApplicationController
  helper_method :menu_items

  def index
    @menu_items = MenuItem.all
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def new
    @menu_item = MenuItem.new
    @menu_items = MenuItem.find(:all)
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)

    if @menu_item.save
      redirect_to menu_items_path,
        notice: "Menu item created successfully!"
    else
      render :new
    end
  end

  def destroy
    @menu_item = MenuItem.find_by_id(params[:id])
      if @menu_item.destroy
        redirect_to menu_items_path
      end
  end

  def edit
    # @menu_item = MenuItem.find(params[:id])
  end

  private
  def menu_items
    @menu_items ||= MenuItem.all
  end

  def menu_item_params
    params.require(:menu_item).permit(:id, :name, :description, :price_in_cents)
  end
end
