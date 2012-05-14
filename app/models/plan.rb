class Plan < ActiveRecord::Base
  attr_accessible :name, :posts_month, :price

  has_many :users
  
end
