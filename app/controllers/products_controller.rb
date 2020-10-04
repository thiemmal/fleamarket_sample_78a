class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @parents = Category.all.order("id ASC").limit(13)
  end

  def show
  end

  def edit
  end

  def new
    @parents = Category.all.order("id ASC").limit(13)
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
