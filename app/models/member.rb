class Member
  attr_reader :name, :power, :bio

  MEMBERS = Array.new

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
  end

  def self.all
    MEMBERS
  end

  def self.clear
    MEMBERS = []
  end
end
