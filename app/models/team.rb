class Team
  attr_reader :name, :motto

  TEAM = Array.new

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
  end

  def self.all
    TEAM
  end
end
