require_dependency "book_store/application_controller"

  module BookStore
    class AuthorsController < ApplicationController
      before_action :set_author, only: [:show]

      # GET /authors
      def index
        @authors = Author.order('name ASC').page(params[:page])
      end

      # GET /authors/1
      def show
      end


      private
      # Use callbacks to share common setup or constraints between actions.
      def set_author
        @author = Author.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def author_params
        params.require(:author).permit(:name, :description, :slug)
      end
    end
  end
