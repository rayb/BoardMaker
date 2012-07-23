class Board < ActiveRecord::Base
  attr_accessible :category_id, :name, :show, :state_id

  def self.filtered_boards(filter)
    puts "filter from model: #{filter}"
    where("name like '%#{filter}%'")
  end

end

