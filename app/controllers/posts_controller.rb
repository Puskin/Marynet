# coding: utf-8

class PostsController < ApplicationController
 
  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(params[:post])  	
  	if @post.save
  		flash[:success] = 'Post zapisany' 
  		redirect_to root_path
  	else
  		flash.now[:error] = 'Coś nie bangla' 
  		render 'new'
  	end
  end

end
