require 'spec_helper'

describe Banking::Bank do

  before do
    @sut = Banking::Bank.new
  end

  describe '#create_account_holder' do

    subject { @sut.create_account_holder('Test Name') }

    it 'should create an account holder' do
      subject.class.should == Banking::AccountHolder
    end
  end

  describe '#create_bank_manager' do

    subject { @sut.create_bank_manager('Test Name') }

    it 'should create a bank manager' do
      subject.class.should == Banking::BankManager
    end
  end

  describe '#transfer_to' do

      before do
        @sut.create_account_holder 'test name'
      end
      subject { @sut.transfer_to('test name', 15) }

      it 'should successfully transfer a quantity to an account holder' do
        should == true
      end
    end
end