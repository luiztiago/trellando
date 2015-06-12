class Board < OpenStruct

  def initialize(params)
    super(params)
  end

  def cards
    @_cards ||= self[:cards].map { |card| Card.new(card) }
  end

  def members
    @_members ||= self[:members].map { |member| Member.new(member) }
  end

  def find_card(id)
    all_cards.find { |card| card.id == id }
  end
end
