class ProductsController < ApplicationController
  def index
  	 @products= Product.all
  end

  def new
  	@product=Product.new
	
  end


def create
	#paramans= { product: {name: "...", description: "...", url: "..."}}
	@product= Product.new(product_params)
	if @product.save
		redirect_to '/products'
	else
		render :new
	end		
end

private
def product_params
	params.require(:product).permit(:name, :url, :description)	
end

end
