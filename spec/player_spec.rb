require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'


RSpec.describe Player do

  it 'exists' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    expect(player).to be_an_instance_of(Player)
  end

  it 'has a name' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    expect(player.name).to eq('Clarisa')
  end

  it 'has a deck' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    expect(player.deck).to eq(deck)
  end

  it 'loses' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    expect(player.has_lost?).to be(false)
  end

  it 'removes a card' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    expect(player.deck.remove_card).to eq(card1)
  end


  it 'confirms a player loses when they have no more card' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    expect(player.deck.remove_card).to eq(card1)
    expect(player.has_lost?).to be(false)
    expect(player.deck.remove_card).to eq(card2)
    expect(player.has_lost?).to be(false)
    expect(player.deck.remove_card).to eq(card3)
    expect(player.has_lost?).to be(true)
    expect(player.deck).to eq(deck)
  end

  #This test is personal practice re-writing the test above
  it 'confirms a player loses when they have no more card' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    
    expect(player.has_lost?).to be(false)
    3.times do
      player.deck.remove_card
    end
    expect(player.has_lost?).to be(true)
    expect(player.deck).to eq(deck)
  end


end