require_dependency "book_store/application_controller"

module BookStore
  class BooksController < ApplicationController
    before_action :set_book, only: [:show]

    # GET /books
    def index
      @books = Book.order('year DESC, position ASC').page(params[:page])
      @books_groups = @books.group_by {|b| b.year}

    end

    # GET /books/1
    def show
    end


    private
      # Use callbacks to share common setup or constraints between actions.
      def set_book
        @book = Book.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def book_params
        params.require(:book).permit(:title, :lead, :excerpt, :description, :price, :cover_type, :num_pages, :isbn, :year, :buy_link, :size, :cover_image, :slug, :author_id, :category_id)
      end
  end
end
