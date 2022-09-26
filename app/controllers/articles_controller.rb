class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def new
    
    end

    def create
        #render plain:  params[:article] - USE THIS TO RENDER FORM RESPONSE AS LOCAL HTML
        @article = Article.new(params.require(:article).permit(:title, :description))
        #render plain: @article.inspect - USE THIS TO RENDER THE ARTICLE WITH ID AND ATTRIBUTES AS AN OBJECT
        @article.save
        redirect_to @article
    end

end 