class Review < ActiveRecord::Base

  def self.find_reviews_for_top
    find(:all, :order => "title") #titleでソート
  end

end
