class WelcomeController < ApplicationController
  def index
    @articles = pages_for(Article.all.order("created_at desc"))
    @projects = pages_for(Project.all.order("created_at desc"))
  end

  private

  def pages_for(object)
  	object.paginate(page: params[:page], per_page: 1)
  end
end
