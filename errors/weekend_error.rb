class WeekendError < StandardError
  def initialize(msg = 'Date input is weekend, this is not allowed in this gem')
    super(msg)
  end
end
