# KARIM'S NOTES
# This is a controller. JUst like dotnet. It control things.
# The routing depends on the config/routes.rb. Learn about it.

# we autogenerate controllers using this command:
# bin/rails generate controller <controller name (capitalized plural)> <method name> <parameters>

# like:
# bin/rails generate controller Articles index --skip-routes
# the --skip-routes prevents the routes to be created as well because we already created them before.

class ArticlesController < ApplicationController

  # basic authentication brought to u by rails
  http_basic_authenticate_with name: "karim", password: "123",
  except: [:index,:show]

  def index
    puts "PRINTER #{'masaaaa'}"
    mot = Motor.new()
    puts mot.brand
    @articles = Article.all
  end

  # note that we can freely change the @article or @articles for the view part
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end
