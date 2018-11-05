class WelcomeController < ApplicationController
  def index
    @articles = display(Article.all)
    @projects = display(Project.all)
  end

  private

  def display(object)
  	object.order("created_at desc").limit(5)
  end
end
