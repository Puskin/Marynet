class Post < ActiveRecord::Base
  
  attr_accessible :title, :picture
  has_attached_file :picture, :styles => { :normal => "500x500>",:medium => "300x300>", :thumb => "100x100>" },
															:path => "posts/:id/:style/:filename"
										
end
