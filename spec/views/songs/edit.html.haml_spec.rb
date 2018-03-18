require 'rails_helper'

RSpec.describe "songs/edit", type: :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :name => "MyString",
      :description => "MyText",
      :lyricist => 1,
      :composer => 1,
      :arranger => 1
    ))
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(@song), "post" do

      assert_select "input[name=?]", "song[name]"

      assert_select "textarea[name=?]", "song[description]"

      assert_select "input[name=?]", "song[lyricist]"

      assert_select "input[name=?]", "song[composer]"

      assert_select "input[name=?]", "song[arranger]"
    end
  end
end
