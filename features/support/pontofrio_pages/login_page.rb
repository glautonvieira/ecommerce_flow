module Panel
  class LoginPage < Generic
    def fill_email(email)
      fill_in('Email', :with => email)
    end

    def fill_password(pass)
      fill_in('Senha', :with => pass)
    end

    def click_login
      click_button('btnClienteLogin')
    end

    def login(email, pass)
      fill_email(email)
      fill_password(pass)
      click_login
    end

    def text_address
      page.find(:css, 'div.page-title h2').text
    end
  end
end
