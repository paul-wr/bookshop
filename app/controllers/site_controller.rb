class SiteController < ApplicationController
   def index
    @books = Book.all
  end

  def about
  end

  def contact
  end

  def fiction
    @books = Book.all
  end
  
  def biography
    @books = Book.all
  end
  
  def thriller
    @books = Book.all
  end
  
  def education
    @books = Book.all
  end
  
  def health
    @books = Book.all
  end
  
  def mind_body_spirit
    @books = Book.all
  end  
  
  def home_garden
    @books = Book.all
  end
  
  def cooking
    @books = Book.all
  end
  
end
