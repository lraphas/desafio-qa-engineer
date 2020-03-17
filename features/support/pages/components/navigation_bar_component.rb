class NavigationBarComponent
  include Capybara::DSL

  def search_online_courses_btn()
    find(:xpath, '//*[@id="b_home"]/header/nav/div/div/div/a[1]')
  end

  def search_by_contest_btn()
    find(:xpath, '//*[@id="b_home"]/header/nav/div/div/div/a[2]')
  end

  def search_by_teacher_btn()
    find(:xpath, '//*[@id="b_home"]/header/nav/div/div/div/a[3]')
  end

  def search_by_subject_btn()
    find(:xpath, '//*[@id="b_home"]/header/nav/div/div/div/a[4]')
  end

  def search_by_region_btn()
    find(:xpath, '//*[@id="b_home"]/header/nav/div/div/div/a[5]')
  end

  def show_all_lectures_btn()
    find(:xpath, '//*[@id="b_home"]/header/nav/div/div/div/a[6]')
  end
end
  