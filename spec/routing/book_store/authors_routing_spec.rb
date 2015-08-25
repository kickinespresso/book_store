require "rails_helper"

module BookStore
  RSpec.describe AuthorsController, type: :routing do
    describe "routing" do


      it "routes to #index" do
        expect(:get => authors_path).to route_to(:controller => "book_store/authors", :action => "index")
      end


      it "routes to #new" do
        expect(:get => "/book_store/authors/new").not_to be_routable
      end

      it "routes to #show" do
        expect(:get => "/book_store/authors/1").to route_to("/book_store/authors#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/book_store/authors/1/edit").not_to be_routable
      end

      it "routes to #create" do
        expect(:post => "/book_store/authors").not_to be_routable
      end

      it "routes to #update via PUT" do
        expect(:put => "/book_store/authors/1").not_to be_routable
      end

      it "routes to #update via PATCH" do
        expect(:patch => "/book_store/authors/1").not_to be_routable
      end

      it "routes to #destroy" do
        expect(:delete => "/book_store/authors/1").not_to be_routable
      end

    end
  end
end
