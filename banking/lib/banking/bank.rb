module Banking
  class Bank
    attr_reader :account_holders
    attr_reader :bank_managers
    def initialize
         @account_holders = []
         @bank_managers = []
    end

    def create_account_holder(name)
      account_holder = AccountHolder.new self, name
      @account_holders.push account_holder
      account_holder
    end

    def create_bank_manager(name)
      bank_manager = BankManager.new self, name
      @bank_managers.push bank_manager
      bank_manager
    end

    def transfer_to(name, quantity)
      account_holders.each do | account_holder |
          if account_holder.name == name
            account_holder.add_balance quantity
            return true
          end
      end
      false
    end
  end
end