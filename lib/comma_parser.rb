require "csv"
class CommaParser
  attr_reader :raw_data
  def initialize  file_name
    @raw_data = CSV.read(file_name)
  end

  def parse_record_data
    @raw_data.inject([])  do  |result,record_data|
      record_data.collect!(&:strip)
      result  <<  {last_name: record_data[0], first_name: record_data[1], gender: record_data[2], favorite_color: record_data[3], date_of_birth:  record_data[4]}
    end
  end
end
