class Player < ActiveRecord::Base
  has_many :playermatches
  has_many :matches, through: :playermatches

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Player.create! row.to_hash
    end
  end
  end

