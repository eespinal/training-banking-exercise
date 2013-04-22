module Banking
  class BankManager
    # @param [Bank] bank
    def initialize(bank, name)
      @bank = bank
      @name = name
    end
    def get_all_account_holders
      @bank.account_holders
    end

    def get_account_holders_ordered_by(criteria)
      account_holders = @bank.account_holders
      account_holders.sort_by! do |x|
        criteria.call x
      end
    end
  end
end
