namespace :slurp do
  desc "TODO"
  task cocktail: :environment do

    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "cocktails.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      x = Cocktail.new
      x.id = row["id"]
      x.name = row["name"]
      x.format_id = row["format_id"]
      x.liquor_id = row["liquor_id"]
      x.sweetener_id = row["sweetener_id"]
      x.citrus_id = row["citrus_id"]
      x.bitters_id = row["bitters_id"]
      x.modifier_id = row["modifier_id"]
      x.soda_id = row["soda_id"]
      x.save
      puts "#{x.id}, #{x.name} saved"
    end

    puts "There are now #{Cocktail.count} rows in the cocktail table."
    
  end

end
