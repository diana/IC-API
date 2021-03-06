class AttemptsController < ApplicationController
  before_action :set_attempt, only: [:show, :update, :destroy]

  # GET /attempts
  def index
    @attempts = Attempt.all

    render json: @attempts, include: [:answers]
  end

  # GET /attempts/1
  def show
    render json: @attempt, include: [:answers]
  end

  # POST /attempts
  def create
    @attempt = Attempt.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      game_id: params[:game_id]
    })

    if @attempt.save
      render json: @attempt, status: :created, location: @attempt
    else
      render json: @attempt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attempts/1
  def update
    if @attempt.update(attempt_params)
      render json: @attempt
    else
      render json: @attempt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attempts/1
  def destroy
    @attempt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attempt
      @attempt = Attempt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attempt_params
      params.permit(:first_name, :last_name, :game_id, :username)
    end
end
