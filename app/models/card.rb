class Card < OpenStruct

  def initialize(params)
    super(params)
  end

  def points
    name[/(\d)/].to_i
  end
end
