require 'spec_helper'

describe Banking::Teller do

  before do
    account_holder_mock = double('AccountHolder')
    account_holder_mock.should_receive(:name).and_return('test name')
    account_holder_mock.should_receive(:get_balance).and_return(5)
    bank_mock = double('Bank')
    bank_mock.should_receive(:account_holders).and_return([account_holder_mock])
    @sut = Banking::Teller.new bank_mock, 'test name'
  end

  describe '#get_balance_for' do
      before do
        @date = Time.now
      end

      subject { @sut.get_balance_for 'test name', @date }

      it 'should return correct balance for the date' do
        should == 5
      end
    end
end