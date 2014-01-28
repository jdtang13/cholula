#require 'epub-parser-0.1.5'
include ActionView::Helpers::AssetTagHelper

class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
	
	respond_to :json

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show

  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book }
      else
        format.html { render action: 'new' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end
  
  def create_annotation
  
	@book = Book.find(params[:id])
	if (user_signed_in?) 
  
		analysis = Analysis.find_by_user_id_and_book_id(current_user, @book)
		if (analysis == nil)
			analysis = Analysis.new(:user_id => current_user, :book => @book)
		end
		
		# todo: prevent people from spamming the same annotation over and over again
		#if (analysis.annotations.empty?)
			@annotation = Annotation.create(:body => params[:body], :quoted_text => params[:quoted_text], :user => current_user, :book => @book, :analysis => analysis)
		#else
		#	analysis.annotations.find_by_user_id
		#end
		render :json => @annotation.to_json # pass information back to AJAX form
		
		respond_to do |format|
			format.js {}
			format.html { render :action => "show" } 
		end
		
	else 
		respond_to do |format|
			format.html { redirect_to @book, notice: 'Not logged in.' }
    end
	
	end 
	
  end
  

  def epub
    send_file "perks_of_wallflower.epub"
  end

  def epub
    send_file "perks_of_wallflower.epub"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:author, :title, :content)
    end
end
