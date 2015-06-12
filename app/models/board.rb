class Board < OpenStruct

  def initialize(params)
    super(params)
    set_cards
  end

  def all_cards
    @_cards ||= cards.map { |card| Card.new(card) }
  end

  def find_card(id)
    all_cards.find { |card| card.id == id }
  end
end