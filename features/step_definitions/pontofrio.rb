Given(/^I access the Pontofrio.com.br$/) do
  expect(home_page.title_page).to eq('Pontofrio.com: as Melhores Marcas e Produtos!')
end

When(/^I search for "([^"]*)"$/) do |search_text|
  @text = search_text
  home_page.fill_search_product(search_text)
  home_page.click_search_button
end

Then(/^I see the search results$/) do
  expect(result_search_page.result_search).to eq("Você buscou por pneu.")
end

When(/^I select the first item of the list$/) do
  result_search_page.select_product
end

Then(/^I see the details of the selected product page$/) do
  expect(product_detail_page.text_product).to eq('Pneu Aro 13 Altimax General Tire RT 175/70 R13 82T')
end

When(/^I add product to cart$/) do
  product_detail_page.click_add_to_cart
  expect(my_cart_page.title_my_cart_page).to eq('Confira os itens adicionados')
end

Then(/^I check if the product has been added to the cart$/) do
  cart_page.click_finalize_buy
  visit 'http://pontofrio.com.br'
  home_page.click_go_to_cart
  expect(my_cart_page.text_product_cart).to eq('Pneu Aro 13 Altimax General Tire RT 175/70 R13 82T General Tire Vendido e entregue por Pontofrio')
end

When(/^I inform login$/) do
  cart_page.click_finalize_buy
  login_page.login(Settings.email, Settings.pass)
end

Then(/^I see the address page$/) do
  expect(address_page.text_address).to eq('Cadastre um endereço')
end

Then(/^I will see that no product was found$/) do
  expect(home_page.product_not_found_message).to eq('Sua busca não retornou nenhum produto. Tente novamente, seguindo uma das sugestões abaixo:')
end
