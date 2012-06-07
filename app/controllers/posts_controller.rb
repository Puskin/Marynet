# coding: utf-8

class PostsController < ApplicationController

  def index
    @posts = Post.order('created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
  end
 
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

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html
      format.js
    end
  end

end
