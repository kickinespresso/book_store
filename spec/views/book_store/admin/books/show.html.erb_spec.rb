require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :lead => "Lead",
      :excerpt => "MyText",
      :description => "MyText",
      :price => "9.99",
      :cover_type => 1,
      :num_pages => 2,
      :isbn => "Isbn",
      :year => 3,
      :buy_link => "Buy Link",
      :size => "Size",
      :cover_image => "Cover Image",
      :slug => "Slug",
      :author => nil,
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Lead/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Buy Link/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Cover Image/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
