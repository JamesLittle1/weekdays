require 'date'
Dir["./errors/*.rb"].each { |file| require file }

module Weekdays
  class Converter
    class << self
      DAYS = { monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5 }
      def monday(date)
        logic(date, DAYS[:monday])
      end

      def tuesday(date)
        logic(date, DAYS[:tuesday])
      end

      def wednesday(date)
        logic(date, DAYS[:wednesday])
      end

      def thursday(date)
        logic(date, DAYS[:thursday])
      end

      def friday(date)
        logic(date, DAYS[:friday])
      end

      private

      def logic(date, num)
        date = string_to_date(date) if date.class == String
        raise WeekendError if weekend?(date)
        date_to_string(date + (num - date.wday))
      end

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
