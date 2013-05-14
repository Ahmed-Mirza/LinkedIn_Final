class SearchesController < ApplicationController
  
  def search_history
    @searches = Search.all
  end
  
  def search_display # show
    @search = Search.find(params[:id])
  end
  
  def search_page
    require 'oauth'
    require 'json'
    @search = Search.new
    @return = Return.new
  end
  

  def create
    @search = Search.new(params[:search])
    
    if @search.save
      redirect_to results_path, :notice => "Your Search has been stored"
    else
      render "new"
    end
  end
  
  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    redirect_to history_path,:notice => "Your Search has been Deleted"
  end
  
end
