require "rspec"
require "card"

describe Card do
  subject(:card) {Card.new(:clubs, "10")}

  describe "#initialize" do
    context "with valid arguments" do
      it "create a new card correctly" do
        expect(card.suit).to be(:clubs)
        expect(card.value).to eq("10")
      end

    end

  end

end