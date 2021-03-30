class SearchsController < ApplicationController
  def index
        @parameter = params[:search]  
    #   @results = Course.all.where("name LIKE :search", search: @parameter)  
  

  end 
  def searchR
  end

  def displayR
  end
end
