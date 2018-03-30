class BookController < ApplicationController
  before_action :authenticate_user!
  layout 'application'
  def list
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id]);
  end

  def new
    @book = Book.new
    @subjects = Subject.all
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to :action => 'list'
    else
      @subjects = Subject.all
      render :action => 'new'
    end
  end

  def book_params
    params.require(:books).permit(:title, :isbn, :price, :author, :description, :subject_id, {bookimage: []})
  end

  def edit
    @book = Book.find(params[:id])
    @subjects = Subject.all
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_param)
      redirect_to :action => 'show', :id => @book
    else
      @subjects = Subjects.all
      render :action => 'edit'
    end
  end

  def book_param
    params.require(:book).permit(:title, :isbn, :price, :auther, :description, :subject_id, {bookimage: []})
  end

  def delete
    Book.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def show_subject
    @subject = Subject.find(paramns[:id])
  end
end
