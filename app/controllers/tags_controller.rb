class TagsController < ApplicationController
  before_action :authenticate_user!

  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
    @tag = Tag.find_by(texto: params[:texto])
    @tweets = @tag.tweets
  end
end
