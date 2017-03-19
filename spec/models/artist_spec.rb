require 'rails_helper'

RSpec.describe Artist, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe "association with songs" do
  let(:artist) { create :artist }
  let!(:songs) {create :songs, artist: artist}

  it "has many songs" do
    song1 = artist.songs.new(title: "Bleep blap bloop")
    song2 = artist.songs.new(title: "Yaddah yaddah yaddah")

    expect(artist.songs).to include(song1)
    expect(artist.songs).to include(song2)
  end

  it "deletes associated songs" do
    expect { artist.destroy }.to change(songs, :count).by(-1)
  end
end
