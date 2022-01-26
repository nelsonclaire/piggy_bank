class PiggyBank
    def initialize
      @coins = []
    end
    def deposit(coin)
      @coins.push(coin)
    end
    def shake
      if @coins.length > 0
        return "Cling!"
      else
        return nil
      end
    end
    def break(piggy_bank)
        return @@coin_count
    end
end
