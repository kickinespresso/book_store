require 'rails_helper'

module BookStore
  RSpec.describe Book, type: :model do
    it "has a valid factory" do
      expect(FactoryGirl.build(:book_store_book)).to be_valid
    end
  end
end
