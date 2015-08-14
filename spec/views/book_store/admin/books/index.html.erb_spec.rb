require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
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
      ),
      Book.create!(
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
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Lead".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Buy Link".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Image".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
