module Panel
  class HomePage < Generic
    def title_page
      page.title
    end

    def fill_search_product(text)
      fill_in('ctl00_TopBar_PaginaSistemaArea1_ctl41_txtBusca', :with => text)
    end

    def click_search_button
      click_on('Buscar')
    end

    def click_go_to_cart
      page.find(:css, 'span.navbar-cart-description').click
    end

    def close
      page.driver.quit unless Capybara.javascript_driver == :poltergeist
    end

    def product_not_found_message
      page.find(:css, '#divBuscaVaziaSuperior > p').text
    end
  end
end
