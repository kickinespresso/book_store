require "rails_helper"

module BookStore
  RSpec.describe CategoriesController, type: :routing do
    describe "routing" do
=begin

      it "routes to #index" do
        expect(:get => "/book_store/categories").to route_to("categories#index")
      end
=end

      it "routes to #new" do
        expect(:get => "/book_store/categories/new").not_to be_routable
      end

=begin
      it "routes to #show" do
        expect(:get => "/book_store/categories/1").to route_to("categories#show", :id => "1")
      end
=end

      it "routes to #edit" do
        expect(:get => "/book_store/categories/1/edit").not_to be_routable
      end

      it "routes to #create" do
        expect(:post => "/book_store/categories").not_to be_routable
      end

      it "routes to #update via PUT" do
        expect(:put => "/book_store/categories/1").not_to be_routable
      end

      it "routes to #update via PATCH" do
        expect(:patch => "/book_store/categories/1").not_to be_routable
      end

      it "routes to #destroy" do
        expect(:delete => "/book_store/categories/1").not_to be_routable
      end

    end
  end
end
