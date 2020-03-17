When("i click on By Teacher item on the navigation bar") do
  @navigation_bar_component.search_by_teacher_btn().click
end

# Search by Teachers List
Then("i must visualize the courses by teacher's page") do  
  expect(@course_by_teacher_page.page_header().text).to eql "Cursos por professor"
  @course_by_teacher_page.scroll_to_teachers_list()
end

And("when i click on teacher {string} details button") do |teacher|
  @course_by_teacher_page.teacher_details_btn(teacher).click
end

# Search by Filter
When("when i type {string} on the filter input") do |teacher|
  @course_by_teacher_page.scroll_to_filter()
  @course_by_teacher_page.filter_by_teacher(teacher)
end

Then("i must visualize the course list page from {string}") do |teacher|
  expect(@teacher_page.page_header().text).to eql teacher
end

# Validate amount of courses on Teacher's Page
Then("i can validate if the amount of courses describe on header's page matches with amount of course listed") do
  puts "Amount of Courses description: #{@teacher_page.get_amount_courses}"
  puts "Amount of Courses listed on page: #{@teacher_page.get_amount_courses_list}"
  expect(@teacher_page.get_amount_courses).to eql @teacher_page.get_amount_courses_list()
end

When("i click on {string} course") do |course|
  @course = course
  @teacher_page.course_details_btn(course).click
end

Then("i must visualize the course page") do
  expect(@course_page.page_header().text).to eql @course
end

And("i can compare the list price with the installment price") do
  puts "Retail Price: R$#{@course_page.get_retail_price}"
  puts "Installment Price: R$#{@course_page.get_installment_price}"
  expect(@course_page.get_retail_price).to eql @course_page.get_installment_price()
end