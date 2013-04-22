require 'spec_helper'

describe Banking::AccountHolder do

  before do
    @bank_mock = double('Bank')
    @sut = Banking::AccountHolder.new @bank_mock, 'Carlos'
  end

  describe '#get_balance' do
    before do
      @sut.add_balance 10
    end
    subject { @sut.get_balance }

    it 'should return correct balance' do
      should == 10
    end
  end

  describe '#withdraw_from_balance' do
    before do
      @sut.add_balance 10
      @sut.withdraw_from_account 5
    end
    subject { @sut.get_balance }

    it 'should withdraw from balance' do
      should == 5
    end
  end

  describe '#transfer_to' do
    before do
      @sut.add_balance 15
      @bank_mock.should_receive(:transfer_to).and_return(true)
    end
    subject { @sut.transfer_to 'Test Name', 10 }

    it 'should successfully transfer a quantity to another account holder' do
      should == true
    end
  end

  describe 'get balance for date' do

      before do
        @date = Time.now
        @sut.add_balance 5, @date
      end
      subject { @sut.get_balance @date }

      it 'should return correct balance for date' do
        should == 5
      end
    end

end