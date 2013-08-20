class LetterGradesController < ApplicationController
  before_action :set_letter_grade, only: [:show, :edit, :update, :destroy]

  # GET /letter_grades
  # GET /letter_grades.json
  def index
    @letter_grades = LetterGrade.all
  end

  # GET /letter_grades/1
  # GET /letter_grades/1.json
  def show
  end

  # GET /letter_grades/new
  def new
    @letter_grade = LetterGrade.new
  end

  # GET /letter_grades/1/edit
  def edit
  end

  # POST /letter_grades
  # POST /letter_grades.json
  def create
    @letter_grade = LetterGrade.new(letter_grade_params)

    respond_to do |format|
      if @letter_grade.save
        format.html { redirect_to @letter_grade, notice: 'Letter grade was successfully created.' }
        format.json { render action: 'show', status: :created, location: @letter_grade }
      else
        format.html { render action: 'new' }
        format.json { render json: @letter_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /letter_grades/1
  # PATCH/PUT /letter_grades/1.json
  def update
    respond_to do |format|
      if @letter_grade.update(letter_grade_params)
        format.html { redirect_to @letter_grade, notice: 'Letter grade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @letter_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /letter_grades/1
  # DELETE /letter_grades/1.json
  def destroy
    @letter_grade.destroy
    respond_to do |format|
      format.html { redirect_to letter_grades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_letter_grade
      @letter_grade = LetterGrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_grade_params
      params.require(:letter_grade).permit(:grade, :min_points, :max_points)
    end
end
