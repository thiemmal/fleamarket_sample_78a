class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_parents

  def index
    @products = Product.order("created_at DESC").first(5)
  end

  def new
    @product = Product.new
    @product.images.new
    @parents = Category.all.order("id ASC").limit(13)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    product = Product.find(params[:id])
    if product.user_id == current_user.id
      if product.destroy
      else
        redirect_to root_path, alert: "削除が失敗しました"
      end
    end
  end

  def show
    @product = Product.find(params[:id])
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
    params.require(:product).permit(:name, :details, :price, :prefecture_id,:condition_id, :fee_side,:days_id, images_attributes: [:url]).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end
end
