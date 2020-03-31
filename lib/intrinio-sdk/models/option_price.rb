=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # An option price contains price information for a specific options contract.
  class OptionPrice
    # The date of the price, in the format YYYY-MM-DD
    attr_accessor :date

    # The closing price of the options contract.
    attr_accessor :close

    # The closing bid price of the options contract.
    attr_accessor :close_bid

    # The closing ask price of the options contract.
    attr_accessor :close_ask

    # The cumulative volume of this options contract that traded that day.
    attr_accessor :volume

    # The cumulative volume of this options contract that traded on the bid price that day.
    attr_accessor :volume_bid

    # The cumulative volume of this options contract that traded on the ask price that day.
    attr_accessor :volume_ask

    # The number of trades executed that for this options contract on that day.
    attr_accessor :trades

    # The total number of this options contract that are still open.
    attr_accessor :open_interest

    # The change in the total number of this options contract that are still open from the previous day.
    attr_accessor :open_interest_change

    # The total number of this options contract that are still open at the start of the next day.
    attr_accessor :next_day_open_interest

    # The estimated volatility of the Security's price. Volatility is a statistical measure of dispersion of returns for the Security. Standard deviation of a Security's returns and a market index is an example of a measurement of volatility. Implied volatility approximates the future value of an option, and the option's current value takes this into consideration.
    attr_accessor :implied_volatility

    # The change in implied volatility for that day.
    attr_accessor :implied_volatility_change

    # Delta measures the degree to which an options contract is exposed to shifts in the price of the underlying Security. Values of delta range from 0.0 to 1.0 for call options and -1.0 to 0.0 for put options. For example, if a put option has a delta of -0.50, if the price of the underlying Security increases by $1, the price of the put option will decrease by $0.50.
    attr_accessor :delta


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date' => :'date',
        :'close' => :'close',
        :'close_bid' => :'close_bid',
        :'close_ask' => :'close_ask',
        :'volume' => :'volume',
        :'volume_bid' => :'volume_bid',
        :'volume_ask' => :'volume_ask',
        :'trades' => :'trades',
        :'open_interest' => :'open_interest',
        :'open_interest_change' => :'open_interest_change',
        :'next_day_open_interest' => :'next_day_open_interest',
        :'implied_volatility' => :'implied_volatility',
        :'implied_volatility_change' => :'implied_volatility_change',
        :'delta' => :'delta'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date' => :'String',
        :'close' => :'Float',
        :'close_bid' => :'Float',
        :'close_ask' => :'Float',
        :'volume' => :'Integer',
        :'volume_bid' => :'Integer',
        :'volume_ask' => :'Integer',
        :'trades' => :'Integer',
        :'open_interest' => :'Integer',
        :'open_interest_change' => :'Integer',
        :'next_day_open_interest' => :'Integer',
        :'implied_volatility' => :'Float',
        :'implied_volatility_change' => :'Float',
        :'delta' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'close')
        self.close = attributes[:'close']
      end

      if attributes.has_key?(:'close_bid')
        self.close_bid = attributes[:'close_bid']
      end

      if attributes.has_key?(:'close_ask')
        self.close_ask = attributes[:'close_ask']
      end

      if attributes.has_key?(:'volume')
        self.volume = attributes[:'volume']
      end

      if attributes.has_key?(:'volume_bid')
        self.volume_bid = attributes[:'volume_bid']
      end

      if attributes.has_key?(:'volume_ask')
        self.volume_ask = attributes[:'volume_ask']
      end

      if attributes.has_key?(:'trades')
        self.trades = attributes[:'trades']
      end

      if attributes.has_key?(:'open_interest')
        self.open_interest = attributes[:'open_interest']
      end

      if attributes.has_key?(:'open_interest_change')
        self.open_interest_change = attributes[:'open_interest_change']
      end

      if attributes.has_key?(:'next_day_open_interest')
        self.next_day_open_interest = attributes[:'next_day_open_interest']
      end

      if attributes.has_key?(:'implied_volatility')
        self.implied_volatility = attributes[:'implied_volatility']
      end

      if attributes.has_key?(:'implied_volatility_change')
        self.implied_volatility_change = attributes[:'implied_volatility_change']
      end

      if attributes.has_key?(:'delta')
        self.delta = attributes[:'delta']
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
          date == o.date &&
          close == o.close &&
          close_bid == o.close_bid &&
          close_ask == o.close_ask &&
          volume == o.volume &&
          volume_bid == o.volume_bid &&
          volume_ask == o.volume_ask &&
          trades == o.trades &&
          open_interest == o.open_interest &&
          open_interest_change == o.open_interest_change &&
          next_day_open_interest == o.next_day_open_interest &&
          implied_volatility == o.implied_volatility &&
          implied_volatility_change == o.implied_volatility_change &&
          delta == o.delta
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [date, close, close_bid, close_ask, volume, volume_bid, volume_ask, trades, open_interest, open_interest_change, next_day_open_interest, implied_volatility, implied_volatility_change, delta].hash
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
