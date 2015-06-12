class Playermatch < ActiveRecord::Base
  belongs_to :player
  belongs_to :match
  belongs_to :group
  belongs_to :user
end
