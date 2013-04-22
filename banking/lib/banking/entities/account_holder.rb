module Banking
  class AccountHolder
    attr_reader :name
    def initialize(bank, name)
      @bank = bank
      @name = name
      @account = Account.new
      @transactions = {}
    end

    def add_balance(quantity, date = nil)
      date = date.nil? ? Time.now: date
      @account.add_to_balance quantity
      @transactions[date] = get_balance
    end

    def get_balance(date = nil)
      puts @transactions[date]
      date.nil? ? @account.balance : @transactions[date]
    end

    def withdraw_from_account (quantity)
      @account.withdraw_from_balance quantity
    end

    def transfer_to(name, quantity)
      if withdraw_from_account quantity
        @bank.transfer_to name, quantity
      else
        false
      end
    end

  end
end