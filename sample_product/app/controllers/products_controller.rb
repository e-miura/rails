#coding: utf-8

class ProductsController < ApplicationController

  def index
    @datas = Product.all

    respond_to do |format|
      format.html
      format.csv do
        send_data render_to_string, filename: "item-#{Time.now.strftime("%Y%m%d")}.csv", type: :csv
      end
    end
  end

  def detail
    @item = Product.find(params[:id])
  end

end
