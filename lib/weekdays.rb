require 'date'
Dir["./errors/*.rb"].each { |file| require file }

module Weekdays
  class Converter
    class << self
      def monday(date)
        date = string_to_date(date) if date.class == String
        raise WeekendError if weekend?(date)
        date_to_string(date + (1 - date.wday))
      end

      def friday(date)
        date = string_to_date(date) if date.class == String
        raise WeekendError if weekend?(date)
        date_to_string(date + (5 - date.wday))
      end

      private

      def string_to_date(string)
        Date.parse(string)
      rescue ArgumentError
        raise InvalidDateError.new
      end

      def date_to_string(date)
        date.to_s
      end

      def weekend?(date)
        return true if date.saturday? || date.sunday?

        false
      end
    end
  end
end
