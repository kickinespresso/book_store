FactoryGirl.define do
  factory :book_store_book, :class => 'BookStore::Book' do
    title "MyString"
    lead "MyString"
    excerpt "MyText"
    description "MyText"
    price "9.99"
    cover_type 1
    num_pages 1
    isbn "MyString"
    year 1
    buy_link "MyString"
    size "MyString"
    cover_image "MyString"
    author nil
    category nil
  end

end
