class AttendancesController < ApplicationController
    before_action :get_lecture
    before_action :set_attendance, only: %i[ show edit update destroy ]
   
     # GET /attendances or /attendances.json
     def index
      @attendances = @lecture.attendances
     end
   
     # GET /attendances/1 or /attendances/1.json
     def show
  
     end
   
     # GET /attendances/new
     def new
       @attendance = @lecture.attendances.build
     end
   
     # GET /attendances/1/edit
     def edit
     end
   
     # POST /attendances or /attendances.json
     def create
       @attendance = @lecture.attendances.build(attendance_params)

   
       respond_to do |format|
         if @attendance.save
           format.html { redirect_to lecture_attendance_path(@lecture, @attendance), notice: "Attendance was successfully created." }
           format.json { render :show, status: :created, location: @attendance }
         else
           format.html { render :new, status: :unprocessable_entity }
           format.json { render json: @attendance.errors, status: :unprocessable_entity }
         end
       end
     end
   
     # PATCH/PUT /attendances/1 or /attendances/1.json
     def update
       respond_to do |format|
         if @attendance.update(attendance_params)
           format.html { redirect_to lecture_attendance_path(@lecture), notice: "Attendance was successfully updated." }
           format.json { render :show, status: :ok, location: @attendance }
         else
           format.html { render :edit, status: :unprocessable_entity }
           format.json { render json: @attendance.errors, status: :unprocessable_entity }
         end
       end
     end
   
     # DELETE /attendances/1 or /attendances/1.json
     def destroy
       @attendance.destroy
       respond_to do |format|
         format.html { redirect_to lecture_attendances_path(@lecture), notice: "Attendance was successfully destroyed." }
         format.json { head :no_content }
       end
     end
   
     private
       # Use callbacks to share common setup or constraints between actions.
       def set_attendance
         @attendance = @lecture.attendances.find(params[:id])
       end

       def get_lecture
         @lecture = Lecture.find(params[:lecture_id])
       end
   
       # Only allow a list of trusted parameters through.
       def attendance_params
         params.require(:attendance).permit(:student_name, :student_id, :status)
       end
   end
   