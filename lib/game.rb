class Game

  attr_reader :choice, :result
  attr_accessor :rps

  def initialize
    @rps = [:rock, :paper, :scissors]
  end

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def self.option(choice)
    @choice = choice.to_sym
  end

  def win_lose_draw(choice)
    random_ai
    choice_index = rps.index(choice)
    if rps(choice_index) == rps(rand_rps - 1)
      @result = "WON"
    elsif rps(choice_index) == rps(rand_rps + 1)
      @result = "LOST"
    else
      @result = "DREW"
    end
  end

private

  attr_reader :rand_rps

  def random_ai
    random = rps.sample
    @rand_rps = rps.index(random)
  end

end
