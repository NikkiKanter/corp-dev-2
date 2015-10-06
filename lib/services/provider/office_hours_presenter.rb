module Services
  module Provider
    class OfficeHoursPresenter
      @days = [
        {short: 'sun', long: 'Sunday'},
        {short: 'mon', long: 'Monday'},
        {short: 'tue', long: 'Tuesday'},
        {short: 'wed', long: 'Wednesday'},
        {short: 'thu', long: 'Thursday'},
        {short: 'fri', long: 'Friday'},
        {short: 'sat', long: 'Saturday'}
      ] 

      def self.call(office_hours)
        @days.inject([]) do |arr, day|
          hours = office_hours.hours.attributes[day[:short]]
          arr << present_hours(hours, day) if should_add(hours)
          arr
        end
      end

      def self.should_add(hours)
        open = hours.attributes['open']
        close = hours.attributes['close']
        open.present? || close.present?
      end

      def self.present_hours(hours, day)
        {
          open:hours.attributes['open'], 
          close: hours.attributes['close'], 
          day: day[:long]
        }
      end    
    end
  end
end
