module Banking
  class Teller
    def initialize(bank, name)
      @bank = bank
      @name = name
    end

    def get_balance_for(name, date)
      account_holders = @bank.account_holders
      account_holders.each do |account_holder|
        if account_holder.name == name
          return account_holder.get_balance date
        end
      end
      false
    end

  end
end