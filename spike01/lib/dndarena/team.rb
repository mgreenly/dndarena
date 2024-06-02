# frozen_string_literal: true

class Team
  attr_reader :members

  def initialize(members = [])
    @teams = members.map(&:to_creature)
  end

  def result
    42
  end
end
