require 'csv'

index = 0
CSV.foreach(ARGV[1]) do |row|
  index += 1
  if (index > 1)
    Hold.create(bib_record: row[0].to_i,
                 user_hash: row[1],
              request_date: row[2],
             material_code: row[3],
          fulfillment_date: row[4],
                    copies: row[5].to_i,
               branch_code: row[6],
             cancel_status: row[7])
    if index % 1000 == 0
      p row
      puts 'so far ' + index.to_s
    end
  end
end

p "seeding materials from open holds"
Material.seed_materials_from_holds
p "done!"
