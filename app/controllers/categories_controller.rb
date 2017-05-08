class CategoriesController < ApplicationController
  before_action :find_category, only: [:edit, :update, :show, :destroy]
  def index
    @categories = Category.all
  end

  def show
  end

  private

  def find_category
    @category = Category.find(params[:category_id])
  end

end
