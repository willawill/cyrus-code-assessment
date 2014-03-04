require_relative 'data_parser.rb'

class PipeParser < DataParser
  include AttributeHelper
  attr_accessor :raw_data

  def initialize file_name
    @raw_data = File.open(file_name, "r").map do |line|
      line.split("|").collect!(&:strip)
    end
  end

  def parse_record_data
    @raw_data.inject([]) do |result, record_data|
      result << {last_name: record_data[0].downcase,
                 first_name: record_data[1].downcase,
                 middle_name: record_data[2],
                 gender: normalize_gender(record_data[3]),
                 favorite_color: record_data[4].downcase,
                 date_of_birth: normalize_date(record_data[5])
               }
               end
    end
  register_reader :pipe
end