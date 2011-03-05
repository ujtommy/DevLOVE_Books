module BooksHelper
  def format2yen(price)
    "#{number_with_delimiter(price)} 円"
  end
  def format2page(page)
    "#{number_with_delimiter(page)} ページ"
  end
end
