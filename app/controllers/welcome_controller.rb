class WelcomeController < ApplicationController
  def index
    @projects = Project.all
    @articles = Article.all
  end
end
