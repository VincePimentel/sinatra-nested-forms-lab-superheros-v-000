class Team
  attr_reader :name, :motto

  TEAMS = Array.new

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
  end

  def self.all
    TEAMS
  end
end
