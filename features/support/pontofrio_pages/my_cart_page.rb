module Panel
  class MyCartPage < Generic
    def title_my_cart_page
      page.find(:css, '#body > section > div.fullCart > div > p').text
    end

    def text_product_cart
      page.find(:css, 'td.produto').text
    end
  end
end