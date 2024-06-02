# frozen_string_literal: true

class Arena
  attr_reader :teams

  def initialize(teams = [])
    @teams = teams
  end

  def result
    42
  end
end
