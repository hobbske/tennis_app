class Group < ActiveRecord::Base
  belongs_to :players
  has_many :players, through: :playermatches
end
