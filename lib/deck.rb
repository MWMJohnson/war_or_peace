class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end


  def rank_of_card_at(i)
     @cards[i].rank
  end

  def high_ranking_cards
    highest_ranked_cards = @cards.select do |card|
      card.rank >= 11
    end
  end


  def percent_high_ranking
      num_highest_ranked_cards = @cards.count do |card|
        card.rank >= 11
      end
      num_of_total_cards = @cards.count
      percent_of_highest_ranked_cards = num_highest_ranked_cards.to_f / num_of_total_cards.to_f * 100
      percentage_rounded = (percent_of_highest_ranked_cards).round(2)
  end

  def remove_card
      @cards.delete_at(0)
  end


  def add_card(card)
      @cards << card
  end

end