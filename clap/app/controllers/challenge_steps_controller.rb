class ChallengeStepsController < QuizController
  before_action :set_challenge_step, only: [:show, :update]

  # GET /challenge_steps
  # GET /challenge_steps.json
  def index
    @challenge_steps = ChallengeStep.all
  end

  # GET /challenge_steps/1
  # GET /challenge_steps/1.json
  def show
  end

  # GET /challenge_steps/new
  def new
    @challenge_step = ChallengeStep.new
  end

  # GET /challenge_steps/1/edit
  def edit
  end

  # POST /challenge_steps
  # POST /challenge_steps.json
  def create
    @challenge_step = current_user.challenge_steps.build(params[:challenge_step])

    respond_to do |format|
      if @challenge_step.save
        format.html { redirect_to @challenge, notice: 'Challenge step was successfully created.' }
        format.json { render action: 'show', status: :created, location: @challenge }
      else
        format.html { render action: 'new' }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /challenge_steps/1
  # PATCH/PUT /challenge_steps/1.json
  def update
    respond_to do |format|
      if @challenge_step.update(challenge_step_params)
        next_question = @challenge.challenge_steps.where(chosen_answer: nil).first
        format.html { redirect_to [@challenge, next_question] }
      else
        format.html { render action: 'show' }
      end
    end
  end

  # DELETE /challenge_steps/1
  # DELETE /challenge_steps/1.json
  # def destroy
  #   @challenge_step.destroy
  #   respond_to do |format|
  #     format.html { redirect_to challenge_steps_url }
  #     format.json { head :no_content }
  #   end
  # end

  private

    def set_challenge
        @challenge = Challenge.find(params[:challenge_id])
      end

    def set_challenge_step
      @challenge_step = ChallengeStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def challenge_step_params
      params.require(:challenge_step).permit(:chosen_answer)
    end
end
