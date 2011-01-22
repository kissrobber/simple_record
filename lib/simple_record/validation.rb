# This is actually still used to continue support for this.
# ActiveModel does not work the same way so need to continue using this, will change name.

module SimpleRecord
  module Validation

    if defined?(:valid?) # from ActiveModel
      alias_method :am_valid?, :valid?
    end


    def valid?
      puts 'in rails2 valid?'
      errors.clear

#            run_callbacks(:validate)
      validate

      if new_record?
#                run_callbacks(:validate_on_create)
        validate_on_create
      else
#                run_callbacks(:validate_on_update)
        validate_on_update
      end

      # And now ActiveModel validations too
      if defined?(:am_valid?)
        am_valid?
      end

      errors.empty?
    end


    def invalid?
      !valid?
    end


    def read_attribute_for_validation(key)
      @attributes[key.to_s]
    end

    def validate
      true
    end

    def validate_on_create
      true
    end

    def validate_on_update
      true
    end


  end
end

