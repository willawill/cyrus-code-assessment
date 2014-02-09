require_relative "lib/require_helper.rb"

task :display_records do |t|
  parser = 
  raw_input = CommaParser.new("inputs/comma.txt").parse_record_data + PipeParser.new("inputs/pipe.txt").parse_record_data + SpaceParser.new("inputs/space.txt").parse_record_data
  records = RecordGenerator.generate_record_set(raw_input)
  display_manager = DisplayManager.new(records)
  puts "Output 1"
  puts display_manager.sorted_by_gender_then_last_name
  puts "Output 2"
  puts display_manager.sorted_by_birth_date
  puts "Output 3"
  puts display_manager.sorted_by_last_name
end

task :default => [:display_records]