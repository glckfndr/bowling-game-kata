class BowlingGame
  def initialize
    @step = 2
  end

  def pins(rolls)
    @rolls = rolls
  end

  def score
    total_score = 0
    ind = 0
    10.times do
      total_score += @rolls[ind] + @rolls[ind + 1]
      @step = 2
      total_score += @rolls[ind + 2] if strike?(ind) || spare?(ind)
      ind += @step
    end

    total_score
  end

  private

  def spare?(ind)
    @rolls[ind] + @rolls[ind + 1] == 10
  end

  def strike?(ind)
    if @rolls[ind] == 10
      @step = 1
      return true
    end
    false
  end
end
