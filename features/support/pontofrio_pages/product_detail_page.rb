module Panel
  class ProductDetailPage < Generic
    def text_product
      # page.find(:xpath, '//*[@id="ctl00_Conteudo_upMasterProdutoBasico"]/div[2]/h1/b').text
      page.find(:css, 'div.produtoNome > h1 > b').text
    end

    def click_add_to_cart
      page.find(:id, 'btnAdicionarCarrinho').click
    end
  end
end



# //*[@id="ctl00_Conteudo_upMasterProdutoBasico"]/div[2]/h1/b

