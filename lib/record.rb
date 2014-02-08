class Record
  include Comparable
  ATTRIBUTES = :last_name, :first_name, :gender, :favoriate_color, :date_of_birth
  ATTRIBUTES.each { |atr| attr_accessor atr }
  
  def initialize args
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end
  end

  def == anotherRecord
    ATTRIBUTES.each do |atr|
      false if self.send(atr) !=  anotherRecord.send(atr)
    end
    true
  end
end
