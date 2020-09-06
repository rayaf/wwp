class LikesController < ApplicationController

  before_action :find_tweet

  def create
    @tweet.likes.create(user_id: current_user.id)
    redirect_to tweet_path(@tweet)
  end

  def destroy
    find_like
    @like.destroy
    redirect_to tweet_path(@tweet)
  end

  private

  def find_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end

  def find_like
    @like = @tweet.likes.find(params[:id])
  end
end


