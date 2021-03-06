class StocksController < ApplicationController
  def search
    if params[:stock]
      sleep 1
      @stock = Stock.find_by_ticker(params[:stock])
      @stock ||= Stock.new_from_lookup(params[:stock])
    end
    
    if @stock
      render partial: 'lookup'
      #render json: @stock
    else
      #http://guides.rubyonrails.org/layouts_and_rendering.html#using-render
      render status: :not_found, nothing: true
    end
    
  end
end
