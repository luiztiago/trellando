class Member < OpenStruct

  def initialize(params)
    super(params)
  end

  def cards
    @_cards ||= board_cards.select { |card| card.idMembers.include?(id) }
  end

  def total_points
    @_total_points ||= cards.map(&:points).sum
  end

  def average_points
    (total_points / cards.count.to_f).round(2)
  end
end
