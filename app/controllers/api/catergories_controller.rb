class Api::CatergoriesController < ApplicationController
before_action :set_catergory, only [:show]


  def index
    render json: Catergory.all
  end

  def show
    render json: @catergory
  end

  def create
    if catergory.save
      render json: catergory
    else
      render json: catergory.errors, status: 422
    end

  end

  def update
    if @catergory.update(catergory_params)
      render json: @catergory

    else 
      render json: @catergory.errors, status: 422
      return 
    end

  end

  def destroy
    # should we destory or change the active flag to 0?
  end

  private
  def set_catergory
    @catergory = Category.find(params[:id])
  end

  # def catergories_params
  #   params.permit()
  # end

end
