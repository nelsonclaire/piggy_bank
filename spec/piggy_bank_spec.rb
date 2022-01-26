require_relative "../lib/piggy_bank.rb"
describe PiggyBank do
  describe "#deposit" do
    it "should accept coins" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank).to respond_to(:deposit).with(1).argument
    end
  end
  describe "#shake" do
    it "should cling when there are coins inside" do
      piggy_bank = PiggyBank.new
      piggy_bank.deposit("50p")
      expect(piggy_bank.shake).to eq "Cling!"
    end
    it "should not cling when there are no coins inside" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.shake).to eq nil
    end
  end
  describe "#break" do
    it "should break and return the number coins" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank).to respond_to(:break).with(1).argument
    end
  end
end