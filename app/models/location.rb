class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      location = find_by_address(row["address"]) || new
      location = row.to_hash
      location.save
    end
  end

end
