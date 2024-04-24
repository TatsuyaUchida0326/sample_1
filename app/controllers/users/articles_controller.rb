class Users::ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /users/articles
  def index
    @articles = Article.all
  end

  # GET /users/articles/:id
  def show
  end

  # GET /users/articles/new
  def new
    @article = Article.new
  end

  # POST /users/articles
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to [:users, @article], notice: 'Article was successfully created.'
    else
      render :new
    end
  end
  
  def set_article
    @article = Article.find(params[:id])
    logger.debug "Loaded article with ID: #{@article.id}"
  end
  
  # GET /users/articles/:id/edit
  def edit
  end

  # PATCH/PUT /users/articles/:id
  def update
    if @article.update(article_params)
      redirect_to [:users, @article], notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/articles/:id
  def destroy
    @article.destroy
    redirect_to users_articles_url, notice: 'Article was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:title, :content, :image)
  end
end
