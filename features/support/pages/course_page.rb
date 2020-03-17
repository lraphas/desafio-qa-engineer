class CoursePage
    include Capybara::DSL

    def page_header()
        find('.cur-details-info-title')
    end

    def get_retail_price()
        retail_price = find('.cur-details-shopping-price').text
        result = retail_price.scan(/\d+/)
        result = result[0].to_f
        return result
    end

    def get_installment_price()
        installment_price = find('.cur-details-shopping-installments').text
        result = installment_price.scan(/\d+/)
        result = (result[0].to_i * result[1].to_f)
        return result
    end
end
  