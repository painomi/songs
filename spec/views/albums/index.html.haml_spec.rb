require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :name => "Name",
        :description => "MyText",
        :artist_id => 2,
        :media => 3,
        :release_type => 4,
        :production_type => 5
      ),
      Album.create!(
        :name => "Name",
        :description => "MyText",
        :artist_id => 2,
        :media => 3,
        :release_type => 4,
        :production_type => 5
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
