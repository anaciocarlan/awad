class Quote < ActiveRecord::Base
  attr_accessible :author, :id, :quote
  
  def self.to_csv(options = {})
	CSV.generate(options) do |csv|
		csv << column_names
		all.each do |quote|
			csv << quote.attributes.values_at(*column_names)
		end
	end
  end
  
  def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		Quote.create! row.to_hash
	end
  end
end
