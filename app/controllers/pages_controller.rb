class PagesController < ApplicationController

  def home  	
  	@posts = Post.page(params[:page]).per_page(5).order('created_at DESC')
  end

end
