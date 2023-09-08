=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.46.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # Returns a list of companies with its shares and positions sourced from Zacks.
  class ZacksInstitutionalHoldingCompanyDetail
    # The Zacks common exchange ticker
    attr_accessor :ticker

    # The company name of the stock listed
    attr_accessor :name

    # Exhange where the stock is traded whose shares are held by the institution
    attr_accessor :exchange

    # The number of shares shares outstanding for the stock
    attr_accessor :shares_outstanding

    # The last close price of the stock listed
    attr_accessor :last_close_price

    # Last closing price of the stock listed
    attr_accessor :last_close_date

    # Percentage of shares outstanding held by institutions in the stock listed
    attr_accessor :institutional_shares_held_percent

    # Number of shares bought by institutions in the stock listed
    attr_accessor :institutional_shares_buy

    # Number of shares sold by institutions in the stock listed
    attr_accessor :institutional_shares_sell

    # Number of institutions who increased their shares held in the stock listed
    attr_accessor :institutional_positions_increase

    # Number of institutions who decrease their shares held in the stock listed
    attr_accessor :institutional_positions_decrease

    # Number of institutions who did not change their shares held in the stock listed
    attr_accessor :institutional_positions_unchanged

    # Total number of institutions who hold shares in the stock listed
    attr_accessor :institutional_positions_total


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ticker' => :'ticker',
        :'name' => :'name',
        :'exchange' => :'exchange',
        :'shares_outstanding' => :'shares_outstanding',
        :'last_close_price' => :'last_close_price',
        :'last_close_date' => :'last_close_date',
        :'institutional_shares_held_percent' => :'institutional_shares_held_percent',
        :'institutional_shares_buy' => :'institutional_shares_buy',
        :'institutional_shares_sell' => :'institutional_shares_sell',
        :'institutional_positions_increase' => :'institutional_positions_increase',
        :'institutional_positions_decrease' => :'institutional_positions_decrease',
        :'institutional_positions_unchanged' => :'institutional_positions_unchanged',
        :'institutional_positions_total' => :'institutional_positions_total'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'ticker' => :'String',
        :'name' => :'String',
        :'exchange' => :'String',
        :'shares_outstanding' => :'Float',
        :'last_close_price' => :'Float',
        :'last_close_date' => :'Date',
        :'institutional_shares_held_percent' => :'Float',
        :'institutional_shares_buy' => :'Float',
        :'institutional_shares_sell' => :'Float',
        :'institutional_positions_increase' => :'Float',
        :'institutional_positions_decrease' => :'Float',
        :'institutional_positions_unchanged' => :'Float',
        :'institutional_positions_total' => :'Float'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'exchange')
        self.exchange = attributes[:'exchange']
      end

      if attributes.has_key?(:'shares_outstanding')
        self.shares_outstanding = attributes[:'shares_outstanding']
      end

      if attributes.has_key?(:'last_close_price')
        self.last_close_price = attributes[:'last_close_price']
      end

      if attributes.has_key?(:'last_close_date')
        self.last_close_date = attributes[:'last_close_date']
      end

      if attributes.has_key?(:'institutional_shares_held_percent')
        self.institutional_shares_held_percent = attributes[:'institutional_shares_held_percent']
      end

      if attributes.has_key?(:'institutional_shares_buy')
        self.institutional_shares_buy = attributes[:'institutional_shares_buy']
      end

      if attributes.has_key?(:'institutional_shares_sell')
        self.institutional_shares_sell = attributes[:'institutional_shares_sell']
      end

      if attributes.has_key?(:'institutional_positions_increase')
        self.institutional_positions_increase = attributes[:'institutional_positions_increase']
      end

      if attributes.has_key?(:'institutional_positions_decrease')
        self.institutional_positions_decrease = attributes[:'institutional_positions_decrease']
      end

      if attributes.has_key?(:'institutional_positions_unchanged')
        self.institutional_positions_unchanged = attributes[:'institutional_positions_unchanged']
      end

      if attributes.has_key?(:'institutional_positions_total')
        self.institutional_positions_total = attributes[:'institutional_positions_total']
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
          name == o.name &&
          exchange == o.exchange &&
          shares_outstanding == o.shares_outstanding &&
          last_close_price == o.last_close_price &&
          last_close_date == o.last_close_date &&
          institutional_shares_held_percent == o.institutional_shares_held_percent &&
          institutional_shares_buy == o.institutional_shares_buy &&
          institutional_shares_sell == o.institutional_shares_sell &&
          institutional_positions_increase == o.institutional_positions_increase &&
          institutional_positions_decrease == o.institutional_positions_decrease &&
          institutional_positions_unchanged == o.institutional_positions_unchanged &&
          institutional_positions_total == o.institutional_positions_total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ticker, name, exchange, shares_outstanding, last_close_price, last_close_date, institutional_shares_held_percent, institutional_shares_buy, institutional_shares_sell, institutional_positions_increase, institutional_positions_decrease, institutional_positions_unchanged, institutional_positions_total].hash
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
