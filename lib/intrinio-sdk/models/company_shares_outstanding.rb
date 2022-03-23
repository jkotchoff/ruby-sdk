=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.27.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # The summary of a company that submits filings to the SEC and has a security traded primarily on a US exchange
  class CompanySharesOutstanding
    # The xbrl concept axis member reported to the SEC.
    attr_accessor :xbrl_axis

    # Provides information about the class of stock as reported in XBRL
    attr_accessor :xbrl_member

    # The description of the security type
    attr_accessor :title_of_security

    # The symbol under which the security is traded in the exchange
    attr_accessor :trading_symbol

    # The name of the secuirty exchange
    attr_accessor :security_exchange_name

    # The amount of stock currently held by all shareholders
    attr_accessor :shares_outstanding


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'xbrl_axis' => :'xbrl_axis',
        :'xbrl_member' => :'xbrl_member',
        :'title_of_security' => :'title_of_security',
        :'trading_symbol' => :'trading_symbol',
        :'security_exchange_name' => :'security_exchange_name',
        :'shares_outstanding' => :'shares_outstanding'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'xbrl_axis' => :'String',
        :'xbrl_member' => :'String',
        :'title_of_security' => :'String',
        :'trading_symbol' => :'String',
        :'security_exchange_name' => :'String',
        :'shares_outstanding' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'xbrl_axis')
        self.xbrl_axis = attributes[:'xbrl_axis']
      end

      if attributes.has_key?(:'xbrl_member')
        self.xbrl_member = attributes[:'xbrl_member']
      end

      if attributes.has_key?(:'title_of_security')
        self.title_of_security = attributes[:'title_of_security']
      end

      if attributes.has_key?(:'trading_symbol')
        self.trading_symbol = attributes[:'trading_symbol']
      end

      if attributes.has_key?(:'security_exchange_name')
        self.security_exchange_name = attributes[:'security_exchange_name']
      end

      if attributes.has_key?(:'shares_outstanding')
        self.shares_outstanding = attributes[:'shares_outstanding']
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
          xbrl_axis == o.xbrl_axis &&
          xbrl_member == o.xbrl_member &&
          title_of_security == o.title_of_security &&
          trading_symbol == o.trading_symbol &&
          security_exchange_name == o.security_exchange_name &&
          shares_outstanding == o.shares_outstanding
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [xbrl_axis, xbrl_member, title_of_security, trading_symbol, security_exchange_name, shares_outstanding].hash
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
