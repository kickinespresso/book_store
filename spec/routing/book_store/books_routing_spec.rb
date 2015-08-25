require "rails_helper"

module BookStore
  RSpec.describe BooksController, type: :routing do
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/book_store/books").to route_to("books#index")
      end

      it "routes to #new" do
        expect(:get => "/book_store/books/new").not_to be_routable
      end

      it "routes to #show" do
        expect(:get => "/book_store/books/1").to route_to("books#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/book_store/books/1/edit").not_to be_routable
      end

      it "routes to #create" do
        expect(:post => "/book_store/books").not_to be_routable
      end

      it "routes to #update via PUT" do
        expect(:put => "/book_store/books/1").not_to be_routable
      end

      it "routes to #update via PATCH" do
        expect(:patch => "/book_store/books/1").not_to be_routable
      end

      it "routes to #destroy" do
        expect(:delete => "/book_store/books/1").not_to be_routable
      end

    end
  end
end
