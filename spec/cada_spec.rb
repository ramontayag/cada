require 'spec_helper'

RSpec.describe Cada do

  describe '#day' do
    it 'steps per day between the start and end dates and execute the block' do
      steps = []
      described_class.day '2011-02-02'.to_date, '2011-02-03'.to_date do |date|
        steps << date
      end

      expect(steps.size).to eq 2
      expect(steps[0]).to eq '2011-02-02'.to_date
      expect(steps[1]).to eq '2011-02-03'.to_date
    end
  end

  describe '#month' do
    it 'steps per month between the start and end dates and execute the block' do
      steps = []
      described_class.month '2011-02-02'.to_date, '2011-04-04'.to_date do |date|
        steps << date
      end

      expect(steps.size).to eq 3
      expect(steps[0]).to eq '2011-02-02'.to_date
      expect(steps[1]).to eq '2011-03-02'.to_date
      expect(steps[2]).to eq '2011-04-02'.to_date
    end
  end

  it 'raises an error if a date range used does not exist' do
    expect {
      described_class.meh 1.day.ago, 1.day.ago
    }.to raise_error(
      NoMethodError,
      '`meh` is not a valid range. Use `day`, `month`, `week`, etc'
    )
  end

end
