class ArticlesController < ApplicationController

    def index
        articles = Article.all
        render json: ArticleSerializer.new(articles, {include: [:location]})
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

    def update 
        article = Article.find(params[:id])
        if article.update(article_params)
            render json: ArticleSerializer.new(article)
        else 
            render json: {error: "Article could not save"}
        end
    end 

    def destroy 
        article = Article.find(params[:id])
        article.destroy 
        render json: {message: "Article successfully deleted #{article.name}"}
    end 

    private

    def article_params
        params.require(:article).permit(:name, :number, :price, :size, :location_id, :category, :location)
    end

end
