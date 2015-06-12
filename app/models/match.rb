class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :player
  has_many :playermatches
  has_many :players, through: :playermatches
end
