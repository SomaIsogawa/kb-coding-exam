class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        student = Student.new(student_params)
        if student.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def student_params
        params.require(:student).permit(:name)
        params.require(:student).permit(:profile)
        params.require(:student).permit(:mentor)
        params.require(:student).permit(:grade)
      end

end
