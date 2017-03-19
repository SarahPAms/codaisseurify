require 'rails_helper'

RSpec.describe Song, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "association with artist" do
    let(:artist) { create :artist }

    it "belongs to a user" do
      song = artist.songs.new(title: "something")

      expect(song.artist).to eq(artist)
    end
  end
end
