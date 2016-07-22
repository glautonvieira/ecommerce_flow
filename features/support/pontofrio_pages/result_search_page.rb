module Panel
  class ResultSearchPage < Generic
    def result_search
      page.find(:css, '.tit-search-result').text
    end

    def select_product(num)
      num = num.to_i-1
      element = page.find(:xpath, "/html/body/div[2]/div[2]/div[2]/div[1]/div[2]/div[3]/div/ul/li[1]/div/a")
      product = element[:title]
      element.click
      product
    end
  end
end
