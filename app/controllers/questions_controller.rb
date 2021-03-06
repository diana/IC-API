class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]

  # GET /questions
  def index
    @questions = Question.all

    render json: @questions, include: [:answers]
  end

  # GET /questions/1
  def show
    render json: @question, include: [:answers]
  end

  # POST /questions
  def create
    @question = Question.new({
      question: params[:question],
      answer: params[:answer],
      scenario_id: params[:scenario_id],
      options: params[:options],
      type: params[:type]
    })

    if @question.save
      render json: @question, status: :created
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questions/1
  def update
    if @question.update({
      question: params[:question],
      answer: params[:answer],
      scenario_id: params[:scenario_id],
      options: params[:options],
      type: params[:type]
    })
      render json: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_params
      params.require(:question).permit(:question, :answer, :options, :scenario_id)
    end
end
