=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.62.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # Zacks estimates for EBITDA, EBITDA margin, EBIT, Enterprise Value, Cash Flow Per Share, and Pretax Income
  class ZacksEBITDAConsensus
    # The Zacks common exchange ticker
    attr_accessor :ticker

    # The company name
    attr_accessor :company_name

    # Fiscal year of the estimate
    attr_accessor :estimate_year

    # Fiscal month of the estimate
    attr_accessor :estimate_month

    # Whether the estimate year and month are fiscal year (fy) or quarter (fq)
    attr_accessor :period

    # The type of estimate (ebitda, ebitda, ebit, enterprise_value, cash_flow_per_share, pretax_income)
    attr_accessor :consensus_type

    # The number of estimates
    attr_accessor :estimate_count

    # The highest estimate
    attr_accessor :high

    # The lowest estimate
    attr_accessor :low

    # The mean value of all estimates
    attr_accessor :mean

    # The standard deviation of all estimates
    attr_accessor :std_dev


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ticker' => :'ticker',
        :'company_name' => :'company_name',
        :'estimate_year' => :'estimate_year',
        :'estimate_month' => :'estimate_month',
        :'period' => :'period',
        :'consensus_type' => :'consensus_type',
        :'estimate_count' => :'estimate_count',
        :'high' => :'high',
        :'low' => :'low',
        :'mean' => :'mean',
        :'std_dev' => :'std_dev'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'ticker' => :'String',
        :'company_name' => :'String',
        :'estimate_year' => :'Float',
        :'estimate_month' => :'Float',
        :'period' => :'String',
        :'consensus_type' => :'String',
        :'estimate_count' => :'Float',
        :'high' => :'Float',
        :'low' => :'Float',
        :'mean' => :'Float',
        :'std_dev' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end

      if attributes.has_key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.has_key?(:'estimate_year')
        self.estimate_year = attributes[:'estimate_year']
      end

      if attributes.has_key?(:'estimate_month')
        self.estimate_month = attributes[:'estimate_month']
      end

      if attributes.has_key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.has_key?(:'consensus_type')
        self.consensus_type = attributes[:'consensus_type']
      end

      if attributes.has_key?(:'estimate_count')
        self.estimate_count = attributes[:'estimate_count']
      end

      if attributes.has_key?(:'high')
        self.high = attributes[:'high']
      end

      if attributes.has_key?(:'low')
        self.low = attributes[:'low']
      end

      if attributes.has_key?(:'mean')
        self.mean = attributes[:'mean']
      end

      if attributes.has_key?(:'std_dev')
        self.std_dev = attributes[:'std_dev']
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
          ticker == o.ticker &&
          company_name == o.company_name &&
          estimate_year == o.estimate_year &&
          estimate_month == o.estimate_month &&
          period == o.period &&
          consensus_type == o.consensus_type &&
          estimate_count == o.estimate_count &&
          high == o.high &&
          low == o.low &&
          mean == o.mean &&
          std_dev == o.std_dev
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ticker, company_name, estimate_year, estimate_month, period, consensus_type, estimate_count, high, low, mean, std_dev].hash
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
