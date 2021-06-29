# KARIM'S NOTES
# This is a controller. JUst like dotnet. It control things.
# The routing depends on the config/routes.rb. Learn about it.

# we autogenerate controllers using this command:
# bin/rails generate controller <controller name (capitalized plural)> <method name> <parameters>

# like:
# bin/rails generate controller Articles index --skip-routes
# the --skip-routes prevents the routes to be created as well because we already created them before.

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  # note that we can freely change the @article or @articles for the view part
  def show
    @article = Article.find(params[:id])
  end
end
