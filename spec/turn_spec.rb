require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'


RSpec.describe Turn do

  it 'exists for players' do
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    cards1 = [card1, card2, card5, card8]
    cards2 = [card3, card4, card6, card7]

    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)

    player1 = Player.new('Megan', deck1)
    player2 = Player.new('Aurora', deck2)


    turn = Turn.new(player1, player2)
    expect(player1).to be_an_instance_of(Player)
    expect(player2).to be_an_instance_of(Player)
    
  end

  it 'shows spoils_of_war' do
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    cards1 = [card1, card2, card5, card8]
    cards2 = [card3, card4, card6, card7]

    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)

    player1 = Player.new('Megan', deck1)
    player2 = Player.new('Aurora', deck2)


    turn = Turn.new(player1, player2)
    expect(turn.spoils_of_war).to eq([])
    
    
  end

  it 'classifies turns' do
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    cards1 = [card1, card2, card5, card8]
    cards2 = [card3, card4, card6, card7]

    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)

    player1 = Player.new('Megan', deck1)
    player2 = Player.new('Aurora', deck2)

    turn = Turn.new(player1, player2)
    expect(turn.type).to eq(:basic)
    
  end

  it 'decides a winner' do
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    cards1 = [card1, card2, card5, card8]
    cards2 = [card3, card4, card6, card7]

    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)

    player1 = Player.new('Megan', deck1)
    player2 = Player.new('Aurora', deck2)

    turn = Turn.new(player1, player2)
    expect(turn.winner).to eq(player2)
    
  end










end