class SubmissionsController < ApplicationController
  before_action :set_submission, only: %i[ show edit update destroy ]

  # GET /submissions or /submissions.json
  def index
    @submissions = Submission.all
  end

  # GET /submissions/1 or /submissions/1.json
  def show
  end

  # GET /submissions/new
  def new
    # @submission = Submission.new
  end

  # GET /submissions/1/edit
  def edit
  end

  # POST /submissions or /submissions.json
  def create
    # @question = Admin::Question.find(params[:id])
    @quiz = Quiz.first
    @question_last = Admin::Question.select(:id).last
    @submission = Submission.new(submission_params)
    respond_to do |format|
      if @submission.save
        if @submission.question_id != @question_last.id
          format.html { redirect_to quiz_path(@submission.question_id + 1) }
          format.json { render :show, status: :created, location: @submission }
        else
          calculate_score(@submission.result_id)
          format.html { redirect_to result_path(@submission.result_id)}
          format.json { render :show, status: :created, location: @submission }
        end
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  def calculate_score(result_id)
    @result = Result.find_by(id: result_id)
    @submissions = Submission.where(result_id: result_id)
    @total = @submissions.count.to_i
    @correct = @submissions.where(is_correct: 'true').count.to_i
    @score = (@correct.to_f/@total.to_f) * 100
    @result.update(score: @score)
  end

  # PATCH/PUT /submissions/1 or /submissions/1.json
  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to submission_url(@submission), notice: "Submission was successfully updated." }
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1 or /submissions/1.json
  def destroy
    @submission.destroy

    respond_to do |format|
      format.html { redirect_to submissions_url, notice: "Submission was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def submission_params
      params.require(:submission).permit(:answer, :question_id, :is_correct, :user_id, :result_id)
    end
end
