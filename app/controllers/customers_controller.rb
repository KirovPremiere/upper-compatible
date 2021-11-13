class CustomersController < ApplicationController
  def top
    @big_fours = BigFour.all
  end
  
  def about
  end
  
  def info
  end
  
  def show
    @customer = current_customer
  end
  
  def edit
    @customer = current_customer
  end
  
  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to customers_path(current_customer)
    else
      render :edit
    end
  end
  
  
  
  private
  
  def customer_params
    params.require(:customer).permit(:name,:sex,:birthday,:email)
  end
  

end
