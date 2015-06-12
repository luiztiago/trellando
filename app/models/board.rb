class Board < OpenStruct

  def initialize(params)
    super(params)
  end

  def cards
    @_cards ||= self[:cards].map { |card| Card.new(card) }
  end

  def members
    @_members ||= self[:members].map { |member| Member.new(member.merge(board_cards: cards)) }
  end

  def members_with_cards
    @_members_with_cards ||= members.select { |member| member_ids_with_cards.include?(member.id) }
  end

  def average_points_per_member
    (total_points / members_with_cards.count.to_f).round(2)
  end

  def average_cards_per_member
    (cards_with_members.count / members_with_cards.count.to_f).round(2)
  end

  def find_card(id)
    all_cards.find { |card| card.id == id }
  end

  def total_points
    cards_with_members.map(&:points).sum
  end

  private

  def cards_with_members
    @_cards_with_members ||= cards.select { |card| card.idMembers.present? }
  end

  def member_ids_with_cards
    @_member_ids_with_cards ||= cards_with_members.flat_map(&:idMembers).uniq
  end
end
