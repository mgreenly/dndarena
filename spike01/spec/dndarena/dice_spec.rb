# frozen_string_literal: true

RSpec.describe Dice do
  it 'parses count from "d6"' do
    result = described_class.new('d6')
    expect(result.count).to equal(0)
  end

  it 'parses size from "d6"' do
    result = described_class.new('d6')
    expect(result.size).to equal(6)
  end

  it 'parses bonus from "d6"' do
    result = described_class.new('d6')
    expect(result.bonus).to equal(0)
  end

  it 'parses count from "3d6"' do
    result = described_class.new('3d6')
    expect(result.count).to equal(3)
  end

  it 'parses size from "3d6"' do
    result = described_class.new('3d6')
    expect(result.size).to equal(6)
  end

  it 'parses bonus from "3d6"' do
    result = described_class.new('3d6')
    expect(result.bonus).to equal(0)
  end

  it 'parses count from "3d6+2"' do
    result = described_class.new('3d6+2')
    expect(result.count).to equal(3)
  end

  it 'parses size from "3d6+2"' do
    result = described_class.new('3d6+2')
    expect(result.size).to equal(6)
  end

  it 'parses bonus from "3d6+2"' do
    result = described_class.new('3d6+2')
    expect(result.bonus).to equal(2)
  end

  it 'parses count from "3d6-4"' do
    result = described_class.new('3d6-4')
    expect(result.count).to equal(3)
  end

  it 'parses size from "3d6-4"' do
    result = described_class.new('3d6-4')
    expect(result.size).to equal(6)
  end

  it 'parses bonus from "3d6-4"' do
    result = described_class.new('3d6-4')
    expect(result.bonus).to equal(-4)
  end

  it 'parses count from "3 d 6 + 2"' do
    result = described_class.new('3 d 6 + 2')
    expect(result.count).to equal(3)
  end

  it 'parses size from "3 d 6 + 2"' do
    result = described_class.new('3 d 6 + 2')
    expect(result.size).to equal(6)
  end

  it 'parses bonus from "3 d 6 + 2"' do
    result = described_class.new('3 d 6 + 2')
    expect(result.bonus).to equal(2)
  end
end
