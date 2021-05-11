class CoursesController < ApplicationController

    before_action :set_course, only: [:show, :edit, :update, :destroy]

    skip_before_action :authenticate_user!, only: [:index, :show]

    def new
      @course = Course.new
    end

    def create
      @course = Course.new(course_params)
      @course.save
  
      # no need for app/views/restaurants/create.html.erb
      redirect_to courses_path(@course)
    end

    def index
      @courses = Course.all
    end

    def show
      @course = Course.find(params[:id])
    end

    def edit
      @course = Course.find(params[:id])
    end

    def update
      if @course.update(course_params)
        @courses = Course.find(params[:id])
        @course.update(params[:course])
        redirect_to @courses, notice: 'As informações foram atualizadas.'
      else
        render :edit
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end
    

    def course_params
      params.require(:course).permit(:nome, :descricao, :duracao, :eixo )
    end

end
