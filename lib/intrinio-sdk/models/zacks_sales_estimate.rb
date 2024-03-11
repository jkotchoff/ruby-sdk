=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.53.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # Zacks consensus sales estimates from analysts for thousands of stocks.  Zacks storied research team aggregates and validates the estimates.  Each sales Estimate includes metadata about the corresponding Company.
  class ZacksSalesEstimate
    attr_accessor :company

    # The period end date
    attr_accessor :date

    # The company’s fiscal year for the reported period
    attr_accessor :fiscal_year

    # The company’s fiscal quarter for the reported period
    attr_accessor :fiscal_period

    # The closest calendar year for the company’s fiscal year
    attr_accessor :calendar_year

    # The closest calendar quarter for the company’s fiscal year
    attr_accessor :calendar_period

    # The number of estimates for the period
    attr_accessor :count

    # The sales estimate mean estimate for the period
    attr_accessor :mean

    # The sales estimate median estimate for the period
    attr_accessor :median

    # The sales estimate high estimate for the period
    attr_accessor :high

    # The sales estimate low estimate for the period
    attr_accessor :low

    # The sales estimate standard deviation estimate for the period
    attr_accessor :standard_deviation

    # The analyst revisions percent change in estimate for the period of 1 week.
    attr_accessor :analyst_revisions_percent_change_1w

    # The analyst revisions going up for the period of 1 week.
    attr_accessor :analyst_revisions_up_1w

    # The analyst revisions going down for the period of 1 week.
    attr_accessor :analyst_revisions_down_1w

    # The analyst revisions percent change in estimate for the period of 1 month.
    attr_accessor :analyst_revisions_percent_change_1m

    # The analyst revisions going up for the period of 1 month.
    attr_accessor :analyst_revisions_up_1m

    # The analyst revisions going down for the period of 1 month.
    attr_accessor :analyst_revisions_down_1m

    # The analyst revisions percent change in estimate for the period of 3 months.
    attr_accessor :analyst_revisions_percent_change_3m

    # The analyst revisions going up for the period of 3 months.
    attr_accessor :analyst_revisions_up_3m

    # The analyst revisions going down for the period of 3 months.
    attr_accessor :analyst_revisions_down_3m


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'company' => :'company',
        :'date' => :'date',
        :'fiscal_year' => :'fiscal_year',
        :'fiscal_period' => :'fiscal_period',
        :'calendar_year' => :'calendar_year',
        :'calendar_period' => :'calendar_period',
        :'count' => :'count',
        :'mean' => :'mean',
        :'median' => :'median',
        :'high' => :'high',
        :'low' => :'low',
        :'standard_deviation' => :'standard_deviation',
        :'analyst_revisions_percent_change_1w' => :'analyst_revisions_percent_change_1w',
        :'analyst_revisions_up_1w' => :'analyst_revisions_up_1w',
        :'analyst_revisions_down_1w' => :'analyst_revisions_down_1w',
        :'analyst_revisions_percent_change_1m' => :'analyst_revisions_percent_change_1m',
        :'analyst_revisions_up_1m' => :'analyst_revisions_up_1m',
        :'analyst_revisions_down_1m' => :'analyst_revisions_down_1m',
        :'analyst_revisions_percent_change_3m' => :'analyst_revisions_percent_change_3m',
        :'analyst_revisions_up_3m' => :'analyst_revisions_up_3m',
        :'analyst_revisions_down_3m' => :'analyst_revisions_down_3m'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'company' => :'CompanySummary',
        :'date' => :'Date',
        :'fiscal_year' => :'Integer',
        :'fiscal_period' => :'String',
        :'calendar_year' => :'Integer',
        :'calendar_period' => :'String',
        :'count' => :'Integer',
        :'mean' => :'Float',
        :'median' => :'Float',
        :'high' => :'Float',
        :'low' => :'Float',
        :'standard_deviation' => :'Float',
        :'analyst_revisions_percent_change_1w' => :'Float',
        :'analyst_revisions_up_1w' => :'Float',
        :'analyst_revisions_down_1w' => :'Float',
        :'analyst_revisions_percent_change_1m' => :'Float',
        :'analyst_revisions_up_1m' => :'Float',
        :'analyst_revisions_down_1m' => :'Float',
        :'analyst_revisions_percent_change_3m' => :'Float',
        :'analyst_revisions_up_3m' => :'Float',
        :'analyst_revisions_down_3m' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'fiscal_year')
        self.fiscal_year = attributes[:'fiscal_year']
      end

      if attributes.has_key?(:'fiscal_period')
        self.fiscal_period = attributes[:'fiscal_period']
      end

      if attributes.has_key?(:'calendar_year')
        self.calendar_year = attributes[:'calendar_year']
      end

      if attributes.has_key?(:'calendar_period')
        self.calendar_period = attributes[:'calendar_period']
      end

      if attributes.has_key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.has_key?(:'mean')
        self.mean = attributes[:'mean']
      end

      if attributes.has_key?(:'median')
        self.median = attributes[:'median']
      end

      if attributes.has_key?(:'high')
        self.high = attributes[:'high']
      end

      if attributes.has_key?(:'low')
        self.low = attributes[:'low']
      end

      if attributes.has_key?(:'standard_deviation')
        self.standard_deviation = attributes[:'standard_deviation']
      end

      if attributes.has_key?(:'analyst_revisions_percent_change_1w')
        self.analyst_revisions_percent_change_1w = attributes[:'analyst_revisions_percent_change_1w']
      end

      if attributes.has_key?(:'analyst_revisions_up_1w')
        self.analyst_revisions_up_1w = attributes[:'analyst_revisions_up_1w']
      end

      if attributes.has_key?(:'analyst_revisions_down_1w')
        self.analyst_revisions_down_1w = attributes[:'analyst_revisions_down_1w']
      end

      if attributes.has_key?(:'analyst_revisions_percent_change_1m')
        self.analyst_revisions_percent_change_1m = attributes[:'analyst_revisions_percent_change_1m']
      end

      if attributes.has_key?(:'analyst_revisions_up_1m')
        self.analyst_revisions_up_1m = attributes[:'analyst_revisions_up_1m']
      end

      if attributes.has_key?(:'analyst_revisions_down_1m')
        self.analyst_revisions_down_1m = attributes[:'analyst_revisions_down_1m']
      end

      if attributes.has_key?(:'analyst_revisions_percent_change_3m')
        self.analyst_revisions_percent_change_3m = attributes[:'analyst_revisions_percent_change_3m']
      end

      if attributes.has_key?(:'analyst_revisions_up_3m')
        self.analyst_revisions_up_3m = attributes[:'analyst_revisions_up_3m']
      end

      if attributes.has_key?(:'analyst_revisions_down_3m')
        self.analyst_revisions_down_3m = attributes[:'analyst_revisions_down_3m']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          company == o.company &&
          date == o.date &&
          fiscal_year == o.fiscal_year &&
          fiscal_period == o.fiscal_period &&
          calendar_year == o.calendar_year &&
          calendar_period == o.calendar_period &&
          count == o.count &&
          mean == o.mean &&
          median == o.median &&
          high == o.high &&
          low == o.low &&
          standard_deviation == o.standard_deviation &&
          analyst_revisions_percent_change_1w == o.analyst_revisions_percent_change_1w &&
          analyst_revisions_up_1w == o.analyst_revisions_up_1w &&
          analyst_revisions_down_1w == o.analyst_revisions_down_1w &&
          analyst_revisions_percent_change_1m == o.analyst_revisions_percent_change_1m &&
          analyst_revisions_up_1m == o.analyst_revisions_up_1m &&
          analyst_revisions_down_1m == o.analyst_revisions_down_1m &&
          analyst_revisions_percent_change_3m == o.analyst_revisions_percent_change_3m &&
          analyst_revisions_up_3m == o.analyst_revisions_up_3m &&
          analyst_revisions_down_3m == o.analyst_revisions_down_3m
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [company, date, fiscal_year, fiscal_period, calendar_year, calendar_period, count, mean, median, high, low, standard_deviation, analyst_revisions_percent_change_1w, analyst_revisions_up_1w, analyst_revisions_down_1w, analyst_revisions_percent_change_1m, analyst_revisions_up_1m, analyst_revisions_down_1m, analyst_revisions_percent_change_3m, analyst_revisions_up_3m, analyst_revisions_down_3m].hash
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
