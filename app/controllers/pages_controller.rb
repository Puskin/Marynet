class PagesController < ApplicationController

  def home
  	@posts = Post.order('created_at DESC')
  end

end
