module ExtractMethod
  Order = Struct.new(:name, :amount)

  class CustomOwes
    def initialize(name:, orders:)
      @name = name
      @orders = orders
    end

    def print_owing
      outstanding = 0.0

      # print banner
      puts '*************************'
      puts '***** Customer Owes *****'
      puts '*************************'

      # calculate outstanding
      @orders.each { |order| outstanding += order.amount }

      # print details
      puts "name: #{@name}"
      puts "amount: #{outstanding}"
    end
  end
end
