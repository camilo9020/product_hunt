class ProductsController < ApplicationController
  
	before_action :private_access, except: [:index, :show]



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
		
		redirect_to products_path , notice: "El producto ha sido creado con exitó."
	else
		render :new
	end		
end

#GET products/:id
def show
	@product= Product.find(params[:id])

end

#GET products/:id/edit
def edit
	@product= Product.find(params[:id])
end

#PATCH products/:id
def update
	@product= Product.find(params[:id])
	if @product.update(product_params)
		redirect_to '/products', notice: "El producto ha sido modificado con exitó"
	else
		render :edit	
		end 	
end

def destroy
	product= Product.find(params[:id])	
	product.destroy
	redirect_to products_path, notice: "El producto fue eliminado con exitó"
end


private
def product_params
	params.require(:product).permit(:name, :url, :description)	
end

end
