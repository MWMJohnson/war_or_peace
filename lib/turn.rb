class Turn

  attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
    @type = :basic
    
  end

  # def player1_first_card
  #   player1_first_card = @player1.deck.rank_of_card_at(0)
  # end

  # def type
  #   @player1.player1_first_card
    # player2_first_card = @player2.deck.rank_of_card_at(0)

    

    # if player1_first_card = player2_first_card
    #   @first_card_match = true
    # else 
    #   @first_card_match = false
    # end

    # player1_third_card = @player1.deck.rank_of_card_at(2)
    # player2_third_card = @player2.deck.rank_of_card_at(2)

    # if player1_third_card = player2_third_card
    #   @third_card_match = true
    # else 
    #   @third_card_match = false
    # end

    

    # if @first_card_match && @third_card_match == true
    #   @type = :mutually_assured_destruction
    # elsif @first_card_match == true && @third_card_match == false
    #   @type = :war
    # else
    #   @type = :basic
    # end

    # if @player1.deck.rank_of_card_at(0) && @player2.deck.rank_of_card_at(0) != 0
    #   @type = :basic
    # end

    # if @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)
    #   @type = :war
    # end

   

   
     
  # end


end