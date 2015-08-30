FactoryGirl.define do
  factory :book_store_author, :class => 'BookStore::Author' do
    name Faker::Name.name
    description Faker::Lorem.sentence
  end

end
