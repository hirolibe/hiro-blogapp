class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = '保存できました！'
      redirect_to article_path(@article)
      # redirect_to article_path(@article), notice: '保存できたよ'
    else
      flash.now[:error] = '保存に失敗しました'
      render :new # new.html.erb(=:new)を表示する
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

end