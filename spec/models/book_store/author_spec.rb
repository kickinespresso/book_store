require 'rails_helper'

module BookStore
  RSpec.describe Author, type: :model do
    it "has a valid factory" do
      expect(FactoryGirl.build(:book_store_author)).to be_valid
    end
  end



end
