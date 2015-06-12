class Group < ActiveRecord::Base
  belongs_to :players
  has_many :playermatches
  has_many :players, through: :playermatches
  has_many :users
end
