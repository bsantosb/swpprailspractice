class ArticlesController < ApplicationController


def edit
  @article = Article.find(params[:id])
end
def update
  @article = Article.find(params[:id])
 if @article.update(article_params)
   redirect_to @article
 else
  render 'edit'
 end
end


  def show
   @article = Article.find(params[:id])
   #http://localhost:3000/articles/id
  end

 def new
  @article = Article.new
 end
 def create
  @article = Article.new(article_params)
 if @article.save
  redirect_to @article # Go to article list
 else
  render 'new' # Show the new form again
 end

  def create
    @article = Article.new(article_params)
    # Initialize new model with filtered parameter.
    @article.save
    # Store the model to DB
    # Returns success or failure as a boolean value
    redirect_to @article
    # Redirect automatically to 'show' action, defined later.
  end

  private 
  def article_params
    params.require(:article).permit(:title, :text)
    # Whitelist our controller parameters to prevent wrongful mass assignment
  end
end
