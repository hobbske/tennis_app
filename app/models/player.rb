class Player < ActiveRecord::Base
class Player < User
  has_many :playermatches
  has_many :matches, through: :playermatches
  belongs_to :playermatches
  has_many :groups
  belongs_to :groups

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Player.create! row.to_hash
    end
  end
end
end

