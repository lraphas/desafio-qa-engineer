class CourseByTeacherPage
    include Capybara::DSL

    def page_header()
        find('.page-header-title')
    end

    def scroll_to_teachers_list()
        teacher_list = find('.section-header-title', text: "Todos os professores")
        scroll_to(teacher_list, align: :top)
    end

    def scroll_to_filter()
        filter_input = find('.page-header-title')
        scroll_to(filter_input, align: :top)
    end

    def filter_by_teacher(teacher)
        sleep 3
        find('.search').find('input').set teacher
        find('.search').find('input').send_keys(:enter)
    end

    def teacher_details_btn(teacher)
        find('.card-prod', text: teacher).find('a', text: "Detalhes")
    end
end
  