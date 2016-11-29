require_dependency "book_store/application_controller"

  module BookStore
    class AuthorsController < ApplicationController
      before_action :set_author, only: [:show]

      # GET /authors
      def index
        @authors = Author.order('last_name ASC').page(params[:page])
        respond_to do |format|
          format.html
          format.all { redirect_to(:action => action_name ) }
        end
      end

      # GET /authors/1
      def show
        respond_to do |format|
          format.html
          format.all { redirect_to(:action => action_name ) }
        end
      end


      private
      # Use callbacks to share common setup or constraints between actions.
      def set_author
        @author = Author.find(params[:id])

      rescue ActiveRecord::RecordNotFound
        flash[:notice] = 'Author does not exist'
        redirect_to :action => 'index'

      end

      # Only allow a trusted parameter "white list" through.
      def author_params
        params.require(:author).permit(:name, :description, :slug)
      end
    end
  end
