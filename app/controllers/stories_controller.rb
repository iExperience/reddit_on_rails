class StoriesController < ApplicationController
  def index
    @stories = Story.get_stories
  end
end