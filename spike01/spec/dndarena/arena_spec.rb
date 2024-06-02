# frozen_string_literal: true

RSpec.describe Arena do
  it 'has a result of 42' do
    subject = described_class.new
    expect(subject.result).to equal(42)
  end
end
