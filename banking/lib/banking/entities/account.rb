module Banking
  class Account
    attr_reader :balance
    def initialize
      @balance = 0
    end
    def add_to_balance(quantity)
      @balance += quantity
    end

    def withdraw_from_balance(quantity)
      if quantity < @balance
        @balance -= quantity
        true
      else
        false
      end
    end
  end
end

