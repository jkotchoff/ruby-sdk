=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.29.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # A single institutional holding for an owner.
  class InstitutionalHolding
    # The CUSIP number for the security report by the Institutional Owner
    attr_accessor :cusip

    # The ticker symbol for the security
    attr_accessor :ticker

    # The name of the security
    attr_accessor :security_name

    # The type of the security
    attr_accessor :security_type

    # The class of stock held
    attr_accessor :title_of_class

    # The stock exchange where the security is traded
    attr_accessor :stock_exchange

    # The date when the filing was submitted to the SEC by the company
    attr_accessor :filing_date

    # The market value in amount of dollars of the holding in the listed security
    attr_accessor :value

    # The number of shares held in the listed security
    attr_accessor :amount

    # Shares
    attr_accessor :type

    # Segregate the holdings of securities of a class according to the nature of the investment discretion held by the Manager.
    attr_accessor :investment_discretion

    # A code for other managerial authority of the securities listed
    attr_accessor :other_manager

    # The number of shares where the insitutional holder has sole voting authority
    attr_accessor :sole_voting_authority

    # The number of shares where the insitutional holder has shared voting authority
    attr_accessor :shared_voting_authority

    # The number of shares where the insitutional holder has no voting authority
    attr_accessor :no_voting_authority


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cusip' => :'cusip',
        :'ticker' => :'ticker',
        :'security_name' => :'security_name',
        :'security_type' => :'security_type',
        :'title_of_class' => :'title_of_class',
        :'stock_exchange' => :'stock_exchange',
        :'filing_date' => :'filing_date',
        :'value' => :'value',
        :'amount' => :'amount',
        :'type' => :'type',
        :'investment_discretion' => :'investment_discretion',
        :'other_manager' => :'other_manager',
        :'sole_voting_authority' => :'sole_voting_authority',
        :'shared_voting_authority' => :'shared_voting_authority',
        :'no_voting_authority' => :'no_voting_authority'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cusip' => :'String',
        :'ticker' => :'String',
        :'security_name' => :'String',
        :'security_type' => :'String',
        :'title_of_class' => :'String',
        :'stock_exchange' => :'String',
        :'filing_date' => :'Date',
        :'value' => :'Float',
        :'amount' => :'Float',
        :'type' => :'String',
        :'investment_discretion' => :'String',
        :'other_manager' => :'String',
        :'sole_voting_authority' => :'Float',
        :'shared_voting_authority' => :'Float',
        :'no_voting_authority' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'cusip')
        self.cusip = attributes[:'cusip']
      end

      if attributes.has_key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end

      if attributes.has_key?(:'security_name')
        self.security_name = attributes[:'security_name']
      end

      if attributes.has_key?(:'security_type')
        self.security_type = attributes[:'security_type']
      end

      if attributes.has_key?(:'title_of_class')
        self.title_of_class = attributes[:'title_of_class']
      end

      if attributes.has_key?(:'stock_exchange')
        self.stock_exchange = attributes[:'stock_exchange']
      end

      if attributes.has_key?(:'filing_date')
        self.filing_date = attributes[:'filing_date']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'investment_discretion')
        self.investment_discretion = attributes[:'investment_discretion']
      end

      if attributes.has_key?(:'other_manager')
        self.other_manager = attributes[:'other_manager']
      end

      if attributes.has_key?(:'sole_voting_authority')
        self.sole_voting_authority = attributes[:'sole_voting_authority']
      end

      if attributes.has_key?(:'shared_voting_authority')
        self.shared_voting_authority = attributes[:'shared_voting_authority']
      end

      if attributes.has_key?(:'no_voting_authority')
        self.no_voting_authority = attributes[:'no_voting_authority']
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
          cusip == o.cusip &&
          ticker == o.ticker &&
          security_name == o.security_name &&
          security_type == o.security_type &&
          title_of_class == o.title_of_class &&
          stock_exchange == o.stock_exchange &&
          filing_date == o.filing_date &&
          value == o.value &&
          amount == o.amount &&
          type == o.type &&
          investment_discretion == o.investment_discretion &&
          other_manager == o.other_manager &&
          sole_voting_authority == o.sole_voting_authority &&
          shared_voting_authority == o.shared_voting_authority &&
          no_voting_authority == o.no_voting_authority
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cusip, ticker, security_name, security_type, title_of_class, stock_exchange, filing_date, value, amount, type, investment_discretion, other_manager, sole_voting_authority, shared_voting_authority, no_voting_authority].hash
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
