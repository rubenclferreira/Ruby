class Transaction

  def initialize(amount)
    @t = Time.now.strftime("%d/%m/%y at %H:%M%P")
    @amount = amount
    # Initialize amount and date of transaction
  end

  def to_s
    "#{@amount} on #{@t}"
    # Nicely print transaction infos using Time#strftime.
  end
end