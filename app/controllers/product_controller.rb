class ProductController < ApplicationController

  def index
    @products = Product.all.includes(:variants)
  end

  def new
    @product = Product.new
    @product.variants.build.option_value_variants.build
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def product_params
    params.require(:product).permit(
      :title,
      :description, 
      variants_attributes: [:sku, :quantity, :price, option_value_ids: []]
    )
  end
end
