class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

 def create
    @book = Book.new(user_params)
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def new
    @book = Book.new
  end

  private

    def user_params
      params.require(:book).permit(:isbn, :book_name)
    end

end
