class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    @answer.question = @question
    if @answer.save!
      redirect_to questions_path, notice: "Answer submitted"
    else
      render :new # jumps to view "new"
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end

end
