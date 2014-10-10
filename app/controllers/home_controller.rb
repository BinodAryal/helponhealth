class HomeController < ApplicationController
  def index
  end

  def news
  	@news = News.all
  end
  
  def information
  	@informations = Information.all
  end

end
