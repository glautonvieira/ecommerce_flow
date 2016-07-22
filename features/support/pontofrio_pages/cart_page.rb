module Panel
  class CartPage < Generic
    def text_product_cart
      page.find(:css, 'td.produto > a > strong').text
    end

    def click_finalize_buy
      first(:xpath, '//*[@id="body"]/section/div[1]/div/div[5]/a[2]').click
    end
  end
end
