# require 'byebug'
require_relative 'card'

class Deck

  attr_reader :size, :values, :suits , :deck
  attr_writer :deck

  def initialize
    @size = 52
    @suits = [:club, :diamond, :spade, :heart]
    @values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
                'J', 'Q', 'K', 'A']
    @deck = []
    fill_deck
  end

  def fill_deck
    suits.each do |suit|
      values.each do |value|
        @deck << Card.new(suit, value)
      end
    end

  end

  def shuffle
    arr = []
    until deck.empty?
      ele = deck.sample
      arr << ele
      deck.delete(ele)
    end
    self.deck = arr
  end

  def reset_deck
    self.deck = []
    self.fill_deck
    self.shuffle
  end

end