class StudentsController < ApplicationController
  
  # before_action :set_student, only: [:show, :update, :destroy]
  before_action :authenticate_student, only: [:show]
  before_action :set_student, only: [:show]

  # GET /students
  def index
    @students = Student.all

    render json: @students
  end

  # GET /students/1
  def show
    render json: @student
  end

  # POST /students
  def create
    @student = Student.new(student_params)

    if @student.save
      render json: @student, status: :created, location: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /students/1
  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy
  end

  # GET /students/current
  def current
    render json: current_student
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_params
      # params.require(:student).permit(:name, :email, :password_digest, :birth_date, :main_program)
      params.require(:student).permit(:name, :email, :password, :password_confirmation, :birth_date, :main_program)
    end
end
