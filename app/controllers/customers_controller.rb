class CustomersController < ApplicationController
  def index
    log __method__
    @customers = Customer.all

    log '@customers', @customers.to_a
  end

  def create
    log __method__
  end

  def new
    log __method__
  end

  def edit
    log __method__
  end

  def show
    @c = Customer.find(params[:id])
  end

  def update
    log __method__
  end

  def destroy
    log __method__
  end
end
