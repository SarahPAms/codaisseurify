require "rails_helper"

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without a birth date" do
      artist = Artist.new(born: "")
      artist.valid?
      expect(artist.errors).to have_key(:born)
    end

    it "is invalid if the death date is after today" do
      artist = Artist.new(died: 2.days.from_now)
      artist.valid?
      expect(artist.errors).to have_key(:died)
    end
  end
end
