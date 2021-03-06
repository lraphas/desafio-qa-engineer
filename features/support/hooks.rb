Before do
  page.current_window.resize_to(1366, 768)
  @navigation_bar_component = NavigationBarComponent.new
  @course_by_teacher_page = CourseByTeacherPage.new
  @teacher_page = TeacherPage.new
  @course_page = CoursePage.new
end
  
After do |scenario|
  screenshot = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
  embed(screenshot, "image/png", "Screenshot")
end