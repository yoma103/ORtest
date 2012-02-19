class PagesController < ApplicationController
  def home
      @title = "Home"
  end

  def contact
      @title = "contacts"
  end
    
def about
    @title = "about"
    end
end
