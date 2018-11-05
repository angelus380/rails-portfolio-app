class DashboardController < ApplicationController
  http_basic_authenticate_with name: "insert_name", password: "insert_password"

  def index
  	@articles = Article.all
    @projects = Project.all

    render layout: "dashboard"
  end
end
