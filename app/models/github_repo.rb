class GithubRepo

  attr_reader :name, :url

  def initialize(hash)
    
    @name = hash["name"]
    @url = hash["html_url"]
    @token = hash["token"]
    #binding.pry
    self.new_repo
  end

  def new_repo
    #binding.pry
  	 response = Faraday.post "https://api.github.com/user/repos", {name: @name}.to_json, {'Authorization' => "token #{@token}", 'Accept' => 'application/json'}
  end

end