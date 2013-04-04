require 'spec_helper'

describe Cada do

  describe '#day' do
    it 'should step per day between the start and end dates and execute the block' do
      steps = []
      described_class.day '2011-02-02'.to_date, '2011-02-03'.to_date do |date|
        steps << date
      end

      steps.size.should == 2
      steps[0].should == '2011-02-02'.to_date
      steps[1].should == '2011-02-03'.to_date
    end
  end

  describe '#month' do
    it 'should step per month between the start and end dates and execute the block' do
      steps = []
      described_class.month '2011-02-02'.to_date, '2011-04-04'.to_date do |date|
        steps << date
      end

      steps.size.should == 3
      steps[0].should == '2011-02-02'.to_date
      steps[1].should == '2011-03-02'.to_date
      steps[2].should == '2011-04-02'.to_date
    end
  end

  it 'should raise an error if a date range used does not exist' do
    expect {
      described_class.meh 1.day.ago, 1.day.ago
    }.to raise_error(
      NoMethodError,
      '`meh` is not a valid range. Use `day`, `month`, `week`, etc'
    )
  end

end
