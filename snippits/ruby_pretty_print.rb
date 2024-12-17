# pretty print an object, different ways
Rails.logger.info("obj: #{obj.to_yaml}")
pp(obj)
puts(obj.inspect)

