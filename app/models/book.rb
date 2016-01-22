class Book < ActiveRecord::Base
   attr_accessible :name, :price, :comments
end
