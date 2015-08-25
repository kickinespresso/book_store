require 'rails_helper'

module BookStore
  RSpec.describe Category, type: :model do
    it "has a valid factory" do
      expect(FactoryGirl.build(:book_store_category)).to be_valid
    end
  end
end
