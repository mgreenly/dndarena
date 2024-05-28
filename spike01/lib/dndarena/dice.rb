# frozen_string_literal: true

class Dice
  attr_reader :desc, :rgen, :count, :size, :bonus

  def initialize(desc, generator: nil)
    @rgen = generator || Random.new
    @desc = desc.gsub(/\s+/, '')
    _, @count, @size, @bonus = /(\d*)d(\d+)([+-]\d+)*/.match(@desc).to_a.map(&:to_i)
  end

  def result
    Array(1..count).map { |_i| rgen.rand(1..size) + bonus }.sum
  end
end
