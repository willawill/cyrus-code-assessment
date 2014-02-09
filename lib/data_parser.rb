require 'csv'
class DataParserNotFoundError < NameError; end
class DataParser
  include AttributeHelper

  @@subclasses = {}
  def self.create(type, file_name)
    klass = @@subclasses[type.to_sym]
    if klass
      klass.new(file_name)
    else
      raise DataParserNotFoundError, "Data parser for this #{type} doesn't exist"
    end
  end

  def self.register_reader name
    @@subclasses[name] = self
  end
end

class CommaParser < DataParser
  attr_accessor :raw_data

  def initialize  file_name
    @raw_data = CSV.read(file_name)
  end

  def parse_record_data
    @raw_data.inject([]) do |result,record_data|
      record_data.collect!(&:strip)
      result  << {last_name: record_data[0].downcase,
                  first_name: record_data[1].downcase,
                  gender: record_data[2].downcase,
                  favorite_color: record_data[3].downcase,
                  date_of_birth:  record_data[4]}
    end
  end
  register_reader :comma
end

class SpaceParser < DataParser

  attr_accessor :raw_data

  def initialize file_name
    @raw_data = File.open(file_name, "r").map do |line|
      line.split(" ").collect!(&:strip)
    end
  end

  def parse_record_data
    @raw_data.inject([]) do |result, record_data|
      result << {last_name: record_data[0].downcase,
                 first_name: record_data[1].downcase,
                 middle_name: record_data[2].downcase,
                 gender: normalize_gender(record_data[3]),
                 date_of_birth: normalize_date(record_data[4]),
                 favorite_color: record_data[5].downcase
               }
               end
    end
  register_reader :space
end

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

