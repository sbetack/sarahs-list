class ItemsController < ApplicationController
  before_action :find_item_and_category, only: [:edit, :update, :show, :destroy]

  def show
  end

  def edit
  end

  def update
    if @item.update_attributes(item_params)
      redirect_to category_item_path
    else
      @errors = @item.errors.full_messages
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to category_path(@category)
    else
      @errors = @item.errors.full_messages
      render :edit
    end
  end

  private

  def find_item_and_category
    @category = Category.find(params[:category_id])
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description)
  end

end
