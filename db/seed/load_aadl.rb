require 'csv'

index = 0
CSV.foreach(ARGV[1]) do |row|
  index += 1
  if (index > 1)
    Hold.create(bib_record: row[0].to_i,
                 user_hash: row[1],
              request_date: row[1],
             material_code: row[2],
          fulfillment_date: row[3],
                    copies: row[4].to_i,
               branch_code: row[5],
             cancel_status: row[6])
    if index % 1000 == 0
      p row
      puts 'so far ' + index.to_s
    end
  end
end
