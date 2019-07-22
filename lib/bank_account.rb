class BankAccount
  attr_accessor :name, :balance, :staus

  def initialize(name)
    @name = name
    @balance = 1000
    @staus = "open"
  end
end
