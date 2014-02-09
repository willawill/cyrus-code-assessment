require_relative "lib/require_helper.rb"

task :display_records do |t|
  raw_input =  [{file_name: "inputs/comma.txt", type: :comma},
                {file_name: "inputs/space.txt", type: :space},
                {file_name: "inputs/pipe.txt", type: :pipe}
                ].inject([]) do |result, input| 
                  result << 
                    DataParser.create(input[:type], input[:file_name]).parse_record_data
                end

  records = RecordGenerator.generate_record_set(raw_input.flatten)
  display_manager = DisplayManager.new(records)
  puts "Output 1"
  puts display_manager.sorted_by_gender_then_last_name
  puts "Output 2"
  puts display_manager.sorted_by_birth_date
  puts "Output 3"
  puts display_manager.sorted_by_last_name
end

task :default => [:display_records]