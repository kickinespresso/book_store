require_dependency "book_store/application_controller"

module BookStore
  class CategoriesController < ApplicationController
    before_action :set_category, only: [:show]

    # GET /categories
    def index
      @categories = Category.page(params[:page])
    end

    # GET /categories/1
    def show
    end


    private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def category_params
        params.require(:category).permit(:title, :description, :slug)
      end
  end
end
