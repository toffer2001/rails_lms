class CoursesController < ApplicationController
  
  before_action :set_course, only: [:show, :destroy]
  
  def index
    @courses = Course.all
  end

  def show
    # before_action
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course
    else
      render :new
    end

  end

  def destroy
    # before_action
    @course.destroy
    redirect_to courses_path
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name)
  end
end
