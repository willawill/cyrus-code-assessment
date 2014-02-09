class DataParserNotFoundError < NameError; end
class DataParser
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

