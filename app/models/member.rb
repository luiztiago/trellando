class Member < OpenStruct

  def initialize(params)
    super(params)
  end

  def cards
    @_cards ||= board_cards.select { |card| card.idMembers.include?(id) }
  end
end
