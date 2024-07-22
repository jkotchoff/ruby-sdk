=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.63.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # An earnings record for the identifier
  class EarningsRecord
    # The letter “Q” followed by the quarter number the earnings information applies to
    attr_accessor :quarter

    # Indicates the time of the announcement
    attr_accessor :time_of_day

    # Link for Conference Call recording
    attr_accessor :broadcast_url

    # Link to the earnings release transcript
    attr_accessor :transcript_url

    # The letter “Q” followed by the quarter number the earnings transcript applies to
    attr_accessor :transcript_quarter

    # Fiscal year in YYYY format for the earnings transcript
    attr_accessor :transcript_fiscal_year

    # Date of the conference call
    attr_accessor :conference_call_date

    # Published time of the conference call
    attr_accessor :conference_call_time

    # Publicly available phone number for replay conference call
    attr_accessor :conference_call_phone_number

    # Passcode for replay conference call
    attr_accessor :conference_call_passcode

    # Date of last earnings date update by a WSH analyst
    attr_accessor :last_confirmation_date

    # Date of Board/Shareholder Meeting
    attr_accessor :board_of_directors_meeting_date

    # The type of meeting - \"B\" indicates a Board of Directors meeting and \"S\" indicates a Shareholder meeting
    attr_accessor :board_of_directors_meeting_type

    # Website link for the company
    attr_accessor :company_website

    # Earnings Date for 1st quarter
    attr_accessor :q1_date

    # Earnings Date for 2nd quarter
    attr_accessor :q2_date

    # Earnings Date for 3rd quarter
    attr_accessor :q3_date

    # Earnings Date for 4th quarter
    attr_accessor :q4_date

    # The nature of the next reported earnings date - \"V\" indicates a Verified date, \"T\" indicates that the date was gathered from the company, but is still considered Tentative, and \"I\" indicates that the date is forecased or Inferred
    attr_accessor :type

    # Next earnings date
    attr_accessor :next_earnings_date

    # The quarter of the next earnings release
    attr_accessor :next_earnings_quarter

    # The fiscal year associated with next earnings date and next earnings quarter
    attr_accessor :next_earnings_fiscal_year

    # The release date of a preliminary earnings report
    attr_accessor :preliminary_earnings_date

    attr_accessor :security

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'quarter' => :'quarter',
        :'time_of_day' => :'time_of_day',
        :'broadcast_url' => :'broadcast_url',
        :'transcript_url' => :'transcript_url',
        :'transcript_quarter' => :'transcript_quarter',
        :'transcript_fiscal_year' => :'transcript_fiscal_year',
        :'conference_call_date' => :'conference_call_date',
        :'conference_call_time' => :'conference_call_time',
        :'conference_call_phone_number' => :'conference_call_phone_number',
        :'conference_call_passcode' => :'conference_call_passcode',
        :'last_confirmation_date' => :'last_confirmation_date',
        :'board_of_directors_meeting_date' => :'board_of_directors_meeting_date',
        :'board_of_directors_meeting_type' => :'board_of_directors_meeting_type',
        :'company_website' => :'company_website',
        :'q1_date' => :'q1_date',
        :'q2_date' => :'q2_date',
        :'q3_date' => :'q3_date',
        :'q4_date' => :'q4_date',
        :'type' => :'type',
        :'next_earnings_date' => :'next_earnings_date',
        :'next_earnings_quarter' => :'next_earnings_quarter',
        :'next_earnings_fiscal_year' => :'next_earnings_fiscal_year',
        :'preliminary_earnings_date' => :'preliminary_earnings_date',
        :'security' => :'security'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'quarter' => :'String',
        :'time_of_day' => :'String',
        :'broadcast_url' => :'String',
        :'transcript_url' => :'String',
        :'transcript_quarter' => :'String',
        :'transcript_fiscal_year' => :'String',
        :'conference_call_date' => :'Date',
        :'conference_call_time' => :'String',
        :'conference_call_phone_number' => :'String',
        :'conference_call_passcode' => :'String',
        :'last_confirmation_date' => :'Date',
        :'board_of_directors_meeting_date' => :'Date',
        :'board_of_directors_meeting_type' => :'String',
        :'company_website' => :'String',
        :'q1_date' => :'Date',
        :'q2_date' => :'Date',
        :'q3_date' => :'Date',
        :'q4_date' => :'Date',
        :'type' => :'String',
        :'next_earnings_date' => :'Date',
        :'next_earnings_quarter' => :'String',
        :'next_earnings_fiscal_year' => :'Integer',
        :'preliminary_earnings_date' => :'Date',
        :'security' => :'SecuritySummary'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'quarter')
        self.quarter = attributes[:'quarter']
      end

      if attributes.has_key?(:'time_of_day')
        self.time_of_day = attributes[:'time_of_day']
      end

      if attributes.has_key?(:'broadcast_url')
        self.broadcast_url = attributes[:'broadcast_url']
      end

      if attributes.has_key?(:'transcript_url')
        self.transcript_url = attributes[:'transcript_url']
      end

      if attributes.has_key?(:'transcript_quarter')
        self.transcript_quarter = attributes[:'transcript_quarter']
      end

      if attributes.has_key?(:'transcript_fiscal_year')
        self.transcript_fiscal_year = attributes[:'transcript_fiscal_year']
      end

      if attributes.has_key?(:'conference_call_date')
        self.conference_call_date = attributes[:'conference_call_date']
      end

      if attributes.has_key?(:'conference_call_time')
        self.conference_call_time = attributes[:'conference_call_time']
      end

      if attributes.has_key?(:'conference_call_phone_number')
        self.conference_call_phone_number = attributes[:'conference_call_phone_number']
      end

      if attributes.has_key?(:'conference_call_passcode')
        self.conference_call_passcode = attributes[:'conference_call_passcode']
      end

      if attributes.has_key?(:'last_confirmation_date')
        self.last_confirmation_date = attributes[:'last_confirmation_date']
      end

      if attributes.has_key?(:'board_of_directors_meeting_date')
        self.board_of_directors_meeting_date = attributes[:'board_of_directors_meeting_date']
      end

      if attributes.has_key?(:'board_of_directors_meeting_type')
        self.board_of_directors_meeting_type = attributes[:'board_of_directors_meeting_type']
      end

      if attributes.has_key?(:'company_website')
        self.company_website = attributes[:'company_website']
      end

      if attributes.has_key?(:'q1_date')
        self.q1_date = attributes[:'q1_date']
      end

      if attributes.has_key?(:'q2_date')
        self.q2_date = attributes[:'q2_date']
      end

      if attributes.has_key?(:'q3_date')
        self.q3_date = attributes[:'q3_date']
      end

      if attributes.has_key?(:'q4_date')
        self.q4_date = attributes[:'q4_date']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'next_earnings_date')
        self.next_earnings_date = attributes[:'next_earnings_date']
      end

      if attributes.has_key?(:'next_earnings_quarter')
        self.next_earnings_quarter = attributes[:'next_earnings_quarter']
      end

      if attributes.has_key?(:'next_earnings_fiscal_year')
        self.next_earnings_fiscal_year = attributes[:'next_earnings_fiscal_year']
      end

      if attributes.has_key?(:'preliminary_earnings_date')
        self.preliminary_earnings_date = attributes[:'preliminary_earnings_date']
      end

      if attributes.has_key?(:'security')
        self.security = attributes[:'security']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      time_of_day_validator = EnumAttributeValidator.new('String', ["Before Market", "During Market", "After Market", "Unspecified"])
      return false unless time_of_day_validator.valid?(@time_of_day)
      board_of_directors_meeting_type_validator = EnumAttributeValidator.new('String', ["B", "S"])
      return false unless board_of_directors_meeting_type_validator.valid?(@board_of_directors_meeting_type)
      type_validator = EnumAttributeValidator.new('String', ["V", "T", "I"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] time_of_day Object to be assigned
    def time_of_day=(time_of_day)
      validator = EnumAttributeValidator.new('String', ["Before Market", "During Market", "After Market", "Unspecified"])
      unless validator.valid?(time_of_day)
        fail ArgumentError, "invalid value for 'time_of_day', must be one of #{validator.allowable_values}."
      end
      @time_of_day = time_of_day
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] board_of_directors_meeting_type Object to be assigned
    def board_of_directors_meeting_type=(board_of_directors_meeting_type)
      validator = EnumAttributeValidator.new('String', ["B", "S"])
      unless validator.valid?(board_of_directors_meeting_type)
        fail ArgumentError, "invalid value for 'board_of_directors_meeting_type', must be one of #{validator.allowable_values}."
      end
      @board_of_directors_meeting_type = board_of_directors_meeting_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["V", "T", "I"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          quarter == o.quarter &&
          time_of_day == o.time_of_day &&
          broadcast_url == o.broadcast_url &&
          transcript_url == o.transcript_url &&
          transcript_quarter == o.transcript_quarter &&
          transcript_fiscal_year == o.transcript_fiscal_year &&
          conference_call_date == o.conference_call_date &&
          conference_call_time == o.conference_call_time &&
          conference_call_phone_number == o.conference_call_phone_number &&
          conference_call_passcode == o.conference_call_passcode &&
          last_confirmation_date == o.last_confirmation_date &&
          board_of_directors_meeting_date == o.board_of_directors_meeting_date &&
          board_of_directors_meeting_type == o.board_of_directors_meeting_type &&
          company_website == o.company_website &&
          q1_date == o.q1_date &&
          q2_date == o.q2_date &&
          q3_date == o.q3_date &&
          q4_date == o.q4_date &&
          type == o.type &&
          next_earnings_date == o.next_earnings_date &&
          next_earnings_quarter == o.next_earnings_quarter &&
          next_earnings_fiscal_year == o.next_earnings_fiscal_year &&
          preliminary_earnings_date == o.preliminary_earnings_date &&
          security == o.security
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [quarter, time_of_day, broadcast_url, transcript_url, transcript_quarter, transcript_fiscal_year, conference_call_date, conference_call_time, conference_call_phone_number, conference_call_passcode, last_confirmation_date, board_of_directors_meeting_date, board_of_directors_meeting_type, company_website, q1_date, q2_date, q3_date, q4_date, type, next_earnings_date, next_earnings_quarter, next_earnings_fiscal_year, preliminary_earnings_date, security].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Intrinio.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
