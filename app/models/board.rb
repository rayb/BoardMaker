class Board < ActiveRecord::Base
  attr_accessible :category_id, :name, :show, :state_id
end
