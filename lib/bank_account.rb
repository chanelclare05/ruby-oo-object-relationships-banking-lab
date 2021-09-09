class BankAccount
    attr_accessor :balance, :status
    attr_reader :name

    def initialize (name)
        @balance = 1000
        @name = name
        @status = 'open'
    end 

    def deposit(deposit)
        self.balance += deposit
    end 

    def display_balance
        "Your balance is $#{self.balance}."
    end 

    def valid?
        (self.status == 'open' && self.balance > 0 ? true : false)
    end 

    def close_account
        self.status = 'closed'
    end 
end
