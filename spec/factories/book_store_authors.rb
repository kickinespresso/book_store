FactoryGirl.define do
  factory :book_store_author, :class => 'BookStore::Author' do
    name "MyString"
    description "MyText"
    slug "MyString"
  end

end
