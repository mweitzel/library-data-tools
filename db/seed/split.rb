require 'csv'

CSV.open(ARGV[0].split('.')[0]+"_small.csv", 'wb') do |csv|
#  csv << ["asdf","qwer","asldkjf"]
  index = 0
  CSV.foreach(ARGV[0]) do |row|
    if index % 100 == 0
      csv << row
      puts index 
    end
    # puts ARGV[0] + index.to_s
    index += 1
  end
end