class Post < ActiveRecord::Base
  
  attr_accessible :title, :picture
  has_attached_file :picture, :styles => { :normal => "500x500>",:medium => "300x300>", :thumb => "100x100>" },
															:storage => :s3,
															:bucket => ENV['S3_BUCKET_NAME'],
															:s3_credentials => {
															    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
															    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
															}
																								
end
