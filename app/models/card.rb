class Board < OpenStruct

  def initialize(params)
    super(params)
  end

  def points
    name[/(\d)/]
  end
end