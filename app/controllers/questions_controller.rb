class QuestionsController < ApplicationController

  def index

    @pending_questions = current_user.pending_questions
    # @questions = Question.all
  end

  def new
    @place = Place.find(params[:place_id])
    @question = Question.new
  end

  def create
    @place = Place.find(params[:place_id])
    @question = Question.new(question_params)
    @question.place = @place
    @question.user = current_user
    if @question.save
      redirect_to place_path(@place), notice: "Question submitted"
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end

end
