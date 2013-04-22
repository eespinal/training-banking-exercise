require 'spec_helper'

describe Banking::BankManager do

  before do
    account_holder_mock = double('AccountHolder')
    bank_mock = double('Bank', :account_holders => [account_holder_mock])
    @sut = Banking::BankManager.new bank_mock, 'Test Name'
  end

  describe '#get_all_account_holders' do

    subject { @sut.get_all_account_holders }

    it 'should return a list of all account holders' do
      subject.length.should == 1
    end

  end

  describe '#get_account_holders_ordered_by' do

      before do
        @account_holders_mocks = []
        for i in 0..4 do
          account_holder_mock = double('AccountHolder')
          account_holder_mock.should_receive(:get_balance).any_number_of_times.and_return(i)
          @account_holders_mocks.push account_holder_mock
        end
        bank_mock = double('Bank', :account_holders => @account_holders_mocks)
        @sut = Banking::BankManager.new bank_mock, 'Test Name'
      end

      describe 'get account holders ordered by top 5' do
        before do
          @balances = [4,3,2,1,0]
        end
        subject { (@sut.get_account_holders_ordered_by lambda { |x| x.get_balance}).reverse }

        it 'should return a list of top five account holders by balance' do
          for i in 0..4 do
            subject[i].get_balance.should == @balances[i]
          end

        end
      end

      describe 'should return a list of bottom five account balance by balance' do

        before do
          @balances = [0,1,2,3,4]
        end

        subject { @sut.get_account_holders_ordered_by lambda { |x| x.get_balance}}

        it 'should return a list of bottom five account holders by balance' do
          for i in 0..4 do
            subject[i].get_balance.should == @balances[i]
          end

        end
        end

    end
end
