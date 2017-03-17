require "csv"

CSV.foreach('db/pdata.csv') do |row|
  Product.create(:code=>row[0], :name => row[1], :name_kana => row[2], :price => row[3], :purchase_cost => row[4], :availability => row[5], :created_at => row[6], :updated_at => row[7])
end

