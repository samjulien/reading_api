module Api
	class BooksController < ApplicationController
		def index
			books = Book.all

			if rating = params[:rating]
			  books = books.where(rating: rating)
			end
			render json: books, status: 200
		end

		def show
			render json: Book.find(params[:id]), status: 200
		end

		def create
		  book = Book.new(book_params)
			if book.save
			  render json: book, status: 201, location: [:api, book]
			else
			  render json: book.errors, status: 422
			end
		end

		def destroy
			book = Book.find(params[:id])
			book.destroy!
			render nothing: true, status: 204
		end

		private 

		def book_params
		  params.require(:book).permit(:title, :rating, 
		  	:author, :genre_id, :review, :amazon_id)
		end

	end
end