# coding: utf-8

require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(商品コード 商品名 商品名カナ 金額 仕入値 販売状況)
  csv << csv_column_names
  @datas.each do |product|
    csv_column_values = [
      product.code,
      product.name,
      product.name_kana,
      product.price,
      product.purchase_cost,
      product.availability
    ]
    csv << csv_column_values
  end
end