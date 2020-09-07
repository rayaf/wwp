class TweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet, only: [ :show, :destroy ]
  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all.order("created_at DESC")
    @tweet = Tweet.new
    @tags = Tag.all
    @usuarios = User.all
      #@tweets = current_user.feed.order("created_at DESC")
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = current_user.tweets.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to tweets_path, notice: 'Tweet was successfully created.' }
        format.json { render :index, status: :created, location: @tweet }
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @comentarios = Comentario.where(tweet_id: @tweet.id)
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_path, notice: 'Tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet_params
      params.require(:tweet).permit(:texto, :user_id)
    end
end
