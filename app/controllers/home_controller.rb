class HomeController < ApplicationController
  def index
  	@sozlers=Sozler.all
  end


def arama  
  if params[:q].blank?  
    redirect_to(root_path, alert: "Empty field!") and return  
  else  
    @parameter = params[:q].downcase  
    @results = Sozler.all.where("lower(yazar) LIKE :search", search:  "%#{@parameter}%")  
  end  
end


  def about
  end
end
