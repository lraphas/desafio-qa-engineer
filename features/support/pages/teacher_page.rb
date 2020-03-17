class TeacherPage
    include Capybara::DSL

    def page_header()
        find('.section-header-title')
    end

    def course_details_btn(course)
        find('.card-prod', text: course).find('a', text: "Detalhes")
    end

    def course_title()
        find('.cur-details-info-title')
    end

    def get_amount_courses()
        amount_courses = find('.cur-details-info-features').text
        result = amount_courses.scan(/\d+/)
        result = result[0].to_i
        return result
    end

    def get_amount_courses_list()
        amount_courses_list = Array.new 
        amount_courses_list = find('.js-card-prod-container').all('.card-prod ')
        result = amount_courses_list.size
        return result
    end
end
  