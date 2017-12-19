class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products_all = Product.all
    filter_params = {}
    if params[:category] && params[:category] != ""
      filter_params.merge!(:category=>params[:category])
    end
    if params[:price] =="" || params[:price] == nil
      params[:price] = 'desc'
    end
    @products = @products_all.where(filter_params).order(:sale_price => params[:price]).paginate(page: params[:page],:per_page => 8)
    @categories = []
    @products_all.each do |p|
      @categories << p.category if !@categories.include? p.category
    end
  end

  def show
  end

  def about
    
  end
  def contact
    
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

end
