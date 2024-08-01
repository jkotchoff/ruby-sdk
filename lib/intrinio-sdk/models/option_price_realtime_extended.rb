=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.64.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # An extended option price contains extended price information for a specific options contract.
  class OptionPriceRealtimeExtended
    # The price of the bid at open
    attr_accessor :bid_open

    # The high bid so far today
    attr_accessor :bid_high

    # The low bid so far today
    attr_accessor :bid_low

    # The price of the ask at open
    attr_accessor :ask_open

    # The high ask so far today
    attr_accessor :ask_high

    # The low ask so far today
    attr_accessor :ask_low

    # The price of the trade at open
    attr_accessor :trade_open

    # The high trade so far today
    attr_accessor :trade_high

    # The low trade so far today
    attr_accessor :trade_low

    # The price of ask at close today
    attr_accessor :ask_close

    # The price of bid at close today
    attr_accessor :bid_close

    # The price of the last trade of the day
    attr_accessor :trade_close

    # The mark price
    attr_accessor :mark


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bid_open' => :'bid_open',
        :'bid_high' => :'bid_high',
        :'bid_low' => :'bid_low',
        :'ask_open' => :'ask_open',
        :'ask_high' => :'ask_high',
        :'ask_low' => :'ask_low',
        :'trade_open' => :'trade_open',
        :'trade_high' => :'trade_high',
        :'trade_low' => :'trade_low',
        :'ask_close' => :'ask_close',
        :'bid_close' => :'bid_close',
        :'trade_close' => :'trade_close',
        :'mark' => :'mark'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bid_open' => :'Float',
        :'bid_high' => :'Float',
        :'bid_low' => :'Float',
        :'ask_open' => :'Float',
        :'ask_high' => :'Float',
        :'ask_low' => :'Float',
        :'trade_open' => :'Float',
        :'trade_high' => :'Float',
        :'trade_low' => :'Float',
        :'ask_close' => :'Float',
        :'bid_close' => :'Float',
        :'trade_close' => :'Float',
        :'mark' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'bid_open')
        self.bid_open = attributes[:'bid_open']
      end

      if attributes.has_key?(:'bid_high')
        self.bid_high = attributes[:'bid_high']
      end

      if attributes.has_key?(:'bid_low')
        self.bid_low = attributes[:'bid_low']
      end

      if attributes.has_key?(:'ask_open')
        self.ask_open = attributes[:'ask_open']
      end

      if attributes.has_key?(:'ask_high')
        self.ask_high = attributes[:'ask_high']
      end

      if attributes.has_key?(:'ask_low')
        self.ask_low = attributes[:'ask_low']
      end

      if attributes.has_key?(:'trade_open')
        self.trade_open = attributes[:'trade_open']
      end

      if attributes.has_key?(:'trade_high')
        self.trade_high = attributes[:'trade_high']
      end

      if attributes.has_key?(:'trade_low')
        self.trade_low = attributes[:'trade_low']
      end

      if attributes.has_key?(:'ask_close')
        self.ask_close = attributes[:'ask_close']
      end

      if attributes.has_key?(:'bid_close')
        self.bid_close = attributes[:'bid_close']
      end

      if attributes.has_key?(:'trade_close')
        self.trade_close = attributes[:'trade_close']
      end

      if attributes.has_key?(:'mark')
        self.mark = attributes[:'mark']
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
          bid_open == o.bid_open &&
          bid_high == o.bid_high &&
          bid_low == o.bid_low &&
          ask_open == o.ask_open &&
          ask_high == o.ask_high &&
          ask_low == o.ask_low &&
          trade_open == o.trade_open &&
          trade_high == o.trade_high &&
          trade_low == o.trade_low &&
          ask_close == o.ask_close &&
          bid_close == o.bid_close &&
          trade_close == o.trade_close &&
          mark == o.mark
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bid_open, bid_high, bid_low, ask_open, ask_high, ask_low, trade_open, trade_high, trade_low, ask_close, bid_close, trade_close, mark].hash
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
