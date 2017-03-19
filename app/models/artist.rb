class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  validates :name, presence: true
  validates :born, presence: true
  validates_associated :died, before: 1.hour.from_now, :before_message => "must have died today or earlier"

end
