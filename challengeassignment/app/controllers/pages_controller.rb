class PagesController < ApplicationController

  layout "admin"
  
  def index
   # @page=Page.all
   @page = Page.visible
  end

  def show
    @page = Page.find_by_id(params["id"])
  end


  def new
    @page = Page.new
  end

  def create
  
  end

  def edit
    @page = Page.find_by_id(params["id"])
  end

  def update
    
  end
 

  def delete
    @page = Page.find_by_id(params["id"])
  end

  def destroy
    
  end

  private
  

  def pages_params
   params.require(:page).permit(:name , :position , :permalink , :visible )    
  end
end
