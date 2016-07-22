module Panel
  class ResultSearchPage < Generic
    def result_search
      page.find(:css, '.tit-search-result').text
    end

    def select_product
      first(:css, 'img.lazy').click
    end
  end
end