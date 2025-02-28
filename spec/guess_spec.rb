require "./lib/guess"
require "./lib/card"


RSpec.describe(Guess) do
  it("exists") do
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expect(guess).to(be_a(Guess))
  end

  it(" is a card") do
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expect(guess.card).to(eq(card))
  end

  it("can give a response") do
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expect(guess.response).to(eq("10 of Hearts"))
  end

  it("can guess correctly") do
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expect(guess.correct?).to(eq(true))
  end

  it("can give feedback!") do
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expect(guess.feedback).to(eq("Correct!"))
  end

  it(" is a card") do
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    expect(guess.card).to(eq(card))
  end

  it("can give a response") do
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    expect(guess.response).to(eq("2 of Diamonds"))
  end

  it("can guess incorrectly") do
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    expect(guess.correct?).to(eq(false))
  end
end
