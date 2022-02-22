class HomeController < ApplicationController
  def index
  end
  
  def about
  	#instant variable -> @about_me
  	@about_me = "My name is MPPM"
  	#local variable -> about_me
  	@answer = 2 + 2
  end
end
