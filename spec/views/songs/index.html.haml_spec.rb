require 'rails_helper'

RSpec.describe "songs/index", type: :view do
  before(:each) do
    assign(:songs, [
      Song.create!(
        :name => "Name",
        :description => "MyText",
        :lyricist => 2,
        :composer => 3,
        :arranger => 4
      ),
      Song.create!(
        :name => "Name",
        :description => "MyText",
        :lyricist => 2,
        :composer => 3,
        :arranger => 4
      )
    ])
  end

  it "renders a list of songs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
