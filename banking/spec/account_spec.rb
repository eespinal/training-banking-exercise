require 'spec_helper'

describe Banking::Account do

  before do
    @sut = Banking::Account.new
  end

  describe '#add_to_balance' do

    before do
      @sut.add_to_balance 10
    end
    subject { @sut.balance }

    it 'should add correct quantity to balance' do
      should == 10
    end
  end

  describe '#withdraw_from_balance' do

    before do
      @sut.add_to_balance 10
      @sut.withdraw_from_balance 5
    end
    subject { @sut.balance }

    it 'should withdraw correct quantity to balance' do
      should == 5
    end
  end

end