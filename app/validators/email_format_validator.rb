class EmailFormatValidator < ActiveModel::EachValidator
  EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  def validate_each(record, attribute, value)
    if self.class.invalid?(value)
      record.errors.add(attribute, (options[:message] || :email_format))
    end
  end

  def self.valid?(value)
    value =~ EMAIL_REGEXP
  end

  def self.invalid?(value)
    !valid?(value)
  end
end