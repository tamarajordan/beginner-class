class CoursesController < ApplicationController
  def show
    @course = Course.find_by(id: params[:id])
    @lessons = Lesson.where(course_id: @course.id)
    @recommendations = Recommendation.where(course_id: @course.id)
    @marketing_content = MarketingContent.find_by(course_id: @course.id)
    @recommended_courses = Course.where.not(id: @course.id)
    @page_title = "#{@course.instructor} #{@course.name}"
  end
end
