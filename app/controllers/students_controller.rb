class StudentsController < ApplicationController
    def new

    end

    def create
        student = Student.new(params.require(:student).permit(:first_name, :last_name))
        if student.save
            redirect_to student_path(student)
        else
            redirect_to new_student_path
        end


    end

    def show

    end

    def edit

    end

    def update

    end
end