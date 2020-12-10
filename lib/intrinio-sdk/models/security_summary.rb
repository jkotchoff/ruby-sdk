=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.17.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # The summary of a financial instrument representing shares of ownership in a publicly-traded company
  class SecuritySummary
    # The Intrinio ID for Security
    attr_accessor :id

    # The Intrinio ID for the Company for which the Security is issued
    attr_accessor :company_id

    # The name of the Security
    attr_accessor :name

    # A 2-3 digit code classifying the Security (<a href=\"https://docs.intrinio.com/documentation/security_codes\" target=\"_blank\">reference</a>)
    attr_accessor :code

    # The currency in which the Security is traded on the exchange
    attr_accessor :currency

    # The common/local ticker of the Security
    attr_accessor :ticker

    # The country-composite ticker of the Security
    attr_accessor :composite_ticker

    # The OpenFIGI identifier
    attr_accessor :figi

    # The country-composite OpenFIGI identifier
    attr_accessor :composite_figi

    # The global-composite OpenFIGI identifier
    attr_accessor :share_class_figi

    # If true, the Security is the primary issue for the company, otherwise it is a secondary issue on a secondary stock exchange
    attr_accessor :primary_listing


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'company_id' => :'company_id',
        :'name' => :'name',
        :'code' => :'code',
        :'currency' => :'currency',
        :'ticker' => :'ticker',
        :'composite_ticker' => :'composite_ticker',
        :'figi' => :'figi',
        :'composite_figi' => :'composite_figi',
        :'share_class_figi' => :'share_class_figi',
        :'primary_listing' => :'primary_listing'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'company_id' => :'String',
        :'name' => :'String',
        :'code' => :'String',
        :'currency' => :'String',
        :'ticker' => :'String',
        :'composite_ticker' => :'String',
        :'figi' => :'String',
        :'composite_figi' => :'String',
        :'share_class_figi' => :'String',
        :'primary_listing' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'company_id')
        self.company_id = attributes[:'company_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end

      if attributes.has_key?(:'composite_ticker')
        self.composite_ticker = attributes[:'composite_ticker']
      end

      if attributes.has_key?(:'figi')
        self.figi = attributes[:'figi']
      end

      if attributes.has_key?(:'composite_figi')
        self.composite_figi = attributes[:'composite_figi']
      end

      if attributes.has_key?(:'share_class_figi')
        self.share_class_figi = attributes[:'share_class_figi']
      end

      if attributes.has_key?(:'primary_listing')
        self.primary_listing = attributes[:'primary_listing']
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
          id == o.id &&
          company_id == o.company_id &&
          name == o.name &&
          code == o.code &&
          currency == o.currency &&
          ticker == o.ticker &&
          composite_ticker == o.composite_ticker &&
          figi == o.figi &&
          composite_figi == o.composite_figi &&
          share_class_figi == o.share_class_figi &&
          primary_listing == o.primary_listing
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, company_id, name, code, currency, ticker, composite_ticker, figi, composite_figi, share_class_figi, primary_listing].hash
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
