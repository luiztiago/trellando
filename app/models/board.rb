class Board < OpenStruct

  def initialize(params)
    super(params)
  end

  def cards
    @_cards ||= self[:cards].map { |card| Card.new(card) }
  end

  def cards_with_members
    @_cards_with_members ||= cards.select { |card| card.idMembers.present? }
  end

  def members
    @_members ||= self[:members].map { |member| Member.new(member) }
  end

  def average_cards_per_member
    (cards.count / members.count.to_f).round(2)
  end

  def find_card(id)
    all_cards.find { |card| card.id == id }
  end
end
