require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a title" do
      song = Song.new(title: "")
      song.valid?
      expect(song.errors).to have_key(:title)
    end

    it "is invalid with more than 50 characters in the title" do
      song = Song.new(title: "a"*51)
      song.valid?
      expect(song.errors).to have_key(:title)
    end

    it "is invalid without a genre" do
      song = Song.new(genre: "")
      song.valid?
      expect(song.errors).to have_key(:genre)
    end
  end
end
