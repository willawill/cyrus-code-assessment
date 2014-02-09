require 'date'

class DisplayManager
  attr_reader :record_set

  def initialize _record_set
    @record_set = _record_set
  end

  def sorted_by_gender_then_last_name
    @record_set.sort do |first_record, second_record|
      [first_record.gender, first_record.last_name] <=> [second_record.gender, second_record.last_name]
    end
  end

  def sorted_by_birth_date
    @record_set.sort do |first_record, second_record|
      parse_date(first_record.date_of_birth) <=> parse_date(second_record.date_of_birth)
    end
  end

  def sorted_by_last_name
    @record_set.sort do |first_record, second_record|
      second_record.last_name <=> first_record.last_name
    end
  end

  def parse_date birth_date
    month, day,year = birth_date.split("/") 
    Date.new(year.to_i, month.to_i, day.to_i) rescue Date.new
  end
end