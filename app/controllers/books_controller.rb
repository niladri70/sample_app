class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.create(params[:book])
  	redirect_to books_index_path
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
	  @book.update_attributes(params[:book])  	
	  redirect_to books_index_path
  end

  def destroy
  	@book = Book.find(params[:id])
  	@book.delete
  	redirect_to books_index_path
  end

  


end
