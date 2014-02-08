class Record
  include Comparable
  attr_accessor :last_name, :first_name, :gender, :favoriate_color, :date_of_birth

  def initialize args
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end
  end
end
