class LecturesController < ApplicationController
  before_action :set_lecture, only: %i[ show edit update destroy ]

  # GET /lectures or /lectures.json
  def index
    @lectures = Lecture.teachers_lectures
  end

  # GET /lectures/1 or /lectures/1.json
  def show
    set_lecture
  end

  # GET /lectures/new
  def new
    @lecture = Lecture.new
  end

  # GET /lectures/1/edit
  def edit
    set_lecture
    @lecture.attendances
  end

  # POST /lectures or /lectures.json
  def create
    @lecture = Lecture.new(lecture_params)
    @lecture.save
    respond_to do |format|
      if @lecture.save
        format.html { redirect_to @lecture, notice: "Lecture was successfully created." }
        format.json { render :show, status: :created, location: @lecture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lectures/1 or /lectures/1.json
  def update
    respond_to do |format|
      if @lecture.update(lecture_params)
        format.html { redirect_to @lecture, notice: "Lecture was successfully updated." }
        format.json { render :show, status: :ok, location: @lecture }
      else form
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lectures/1 or /lectures/1.json
  def destroy
    @lecture.destroy
    respond_to do |format|
      format.html { redirect_to lectures_url, notice: "Lecture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture
      @lecture = Lecture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lecture_params
      params.require(:lecture).permit(:name, :classroom_number, :id, :description, :duration)
    end

    # def self_columns
    #   super.reject { |column| column.name  == 'teachers_id' || column.name == 'students_id'}
    # end
end