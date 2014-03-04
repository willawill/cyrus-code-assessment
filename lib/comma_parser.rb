require_relative 'data_parser.rb'

class CommaParser < DataParser
  attr_accessor :raw_data

  def initialize  file_name
    @raw_data = CSV.read(file_name)
  end

  def parse_record_data
    @raw_data.inject([]) do |result,record_data|
      record_data.collect!(&:strip)
      result  << format_hash(record_data)
    end
  end

  private
  def format_hash(input_arr)
    return {last_name: input_arr[0].downcase,
                  first_name: input_arr[1].downcase,
                  gender: input_arr[2].downcase,
                  favorite_color: input_arr[3].downcase,
                  date_of_birth:  input_arr[4]}
  end
  register_reader :comma
end
