module Panel
  class AddressPage < Generic
    def text_address
      page.find(:css, '#checkout_endereco > p').text
    end
  end
end
