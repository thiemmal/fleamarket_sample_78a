class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    
  end

  def new
    @product = Product.new
    @product.images.new

  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show

  end

  def edit
    
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  def product_params
    params.require(:product).permit(:name, :details, :price, :condition, :fee_side, :origin, :days, images_attributes: [:url]).merge(user_id: current_user.id)
  end

end
