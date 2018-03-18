require 'rails_helper'

RSpec.describe "songs/new", type: :view do
  before(:each) do
    assign(:song, Song.new(
      :name => "MyString",
      :description => "MyText",
      :lyricist => 1,
      :composer => 1,
      :arranger => 1
    ))
  end

  it "renders new song form" do
    render

    assert_select "form[action=?][method=?]", songs_path, "post" do

      assert_select "input[name=?]", "song[name]"

      assert_select "textarea[name=?]", "song[description]"

      assert_select "input[name=?]", "song[lyricist]"

      assert_select "input[name=?]", "song[composer]"

      assert_select "input[name=?]", "song[arranger]"
    end
  end
end
