class ArticlesController < ApplicationController

    def index
        articles = Article.all
        render json: ArticleSerializer.new(articles)
    end

    def show
        article = Article.find(params[:id])
        render json: ArticleSerializer.new(article)
    end

    def create
        article = Article.new(article_params)
        
        if article.save
            render json: ArticleSerializer.new(article)
        else
            render json: {error: "Article did not save"}
        end
    end

    private

    def article_params
        params.require(:article).permit(:name, :number, :price, :size, :location, :category)
    end

end
