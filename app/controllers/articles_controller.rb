class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        #render plain:  params[:article] - USE THIS TO RENDER FORM RESPONSE AS LOCAL HTML
        #render plain: @article.inspect - USE THIS TO RENDER THE ARTICLE WITH ID AND ATTRIBUTES AS AN OBJECT
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice] = "Article was created successfully."
            redirect_to @article
        else 
            render 'new'
        end
    end

end 