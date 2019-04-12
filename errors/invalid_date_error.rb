class InvalidDateError < StandardError
  def initialize(msg = 'Date input is invalid, please try again')
    super(msg)
  end
end
