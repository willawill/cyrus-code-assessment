require_relative "lib/comma_parser.rb"
require_relative "lib/record.rb"
require_relative "lib/display_manager.rb"
require_relative "lib/record_generator.rb"

task :display_records do |t|
  parser = CommaParser.new("spec/fixtures/comma.txt")
  raw_input = parser.parse_record_data
  records = RecordGenerator.generate_record_set(raw_input)
  display_manager = DisplayManager.new(records)
  puts "Output 1"
  puts display_manager.sorted_by_gender_then_last_name
end

task :default => [:display_records]