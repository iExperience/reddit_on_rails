class Story < ActiveRecord::Base

  def self.get_stories
    # get an array from API
    response = RestClient.get("http://www.reddit.com/top.json?limit=10")
    parsed_response = JSON.parse(response)
    stories = parsed_response["data"]["children"]

    # [
    #   {:title => "hey!"}, 
    #   {:title => "hi!"}, 
    #   {:title => "cool story bro!"}
    # ]
    stories
  end

end