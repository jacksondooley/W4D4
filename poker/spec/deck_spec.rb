require 'rspec'
require 'deck'

describe Deck do
  subject(:test_deck) { Deck.new}

  describe "initialize" do
    it "instantiates a deck correctly" do
      expect(test_deck.size).to eq(52)
      expect(test_deck.suits).to eq([:club, :diamond, :spade, :heart])
      expect(test_deck.values).to eq(['2', '3', '4', '5', '6', '7', '8', '9', '10',
                                  'J', 'Q', 'K', 'A'])
      expect(test_deck.deck.length).to eq(52)
    end
  end

  describe "#fill_deck" do
    it "deck contain 52 cards" do
      expect(test_deck.deck.length).to eq(52)
    end

    it "deck contain unique card" do
      expect(test_deck.deck).to eq(test_deck.deck.uniq)
    end
  end  

  describe "#shuffle" do 
    it "return shuffle deck" do
      expect(test_deck.deck).to_not eq(test_deck.shuffle)
    end
  end

  describe "#reset_deck" do 
    it  "fill deck again and shuffle it" do 
      expect(test_deck.reset_deck).to receive(:fill_deck)
      expect(test_deck.reset_deck).to receive(:shuffle) 
    end
  end

end