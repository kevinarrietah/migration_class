class ProductsController < ApplicationController
  
  def index
      @products = ProducFinder.new(
        page: params[:page],
        name: params[:product_name],
        store_id: params[:store_id]
      ).search
  end

  def show
    @product = Product.find(params[:id])
  end
end
