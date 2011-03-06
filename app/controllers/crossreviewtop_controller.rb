class CrossreviewtopController < ApplicationController
  def index
    @reviews = Review.find_reviews_for_top
  end

  protected

  def authorize
    
  end

end
