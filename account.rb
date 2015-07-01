# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount

  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    #@position = @position - amount
    if amount <= @position
        add_transaction(amount * -1)
    else
        add_transaction(@position * -1)
          
    end
      
    "Your final balance is #{@position} euros"
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
  end

  def deposit(amount)
      add_transaction(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
  end

  def transactions_history(args = {})
    if @password == args[:password]
       @transactions.join(",")
      else
        "Wrong password"
      
    end
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
  end

  def iban
      "#{@iban[0..3]}**************#{@iban[30..33]}"
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
  end

  def to_s
    "Owner: #{@name}\nIBAN: #{iban}\nCurrent amount: #{@position}"
    # TODO: Displays the account owner, the hidden iban and the position of the account
  end
  
  private

  def add_transaction(amount)
    @position += amount
    @transactions << amount
    # TODO: add the amount in the transactions array
    # TODO: update the current position (which represents the balance of the account)
  end
end

account = BankAccount.new("Bruce Lee", "FR14-2004-1010-0505-0001-3M02-606", 200, "brucelit")
account.deposit(500)
puts account.transactions_history({ :password => "brucelit"})


