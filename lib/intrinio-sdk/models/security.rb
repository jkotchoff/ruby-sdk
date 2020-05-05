=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.13.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # A financial instrument representing shares of ownership in a publicly-traded company
  class Security
    # The Intrinio ID for the Security
    attr_accessor :id

    # The Intrinio ID for the company for which the Security is issued
    attr_accessor :company_id

    # The name of the Security
    attr_accessor :name

    # The Security's type
    attr_accessor :type

    # A 2-3 digit code classifying the Security (<a href=\"https://docs.intrinio.com/documentation/security_codes\" target=\"_blank\">reference</a>)
    attr_accessor :code

    # The Security's share class (if applicable)
    attr_accessor :share_class

    # The currency in which the Security is traded on the exchange
    attr_accessor :currency

    # The normal unit of trading
    attr_accessor :round_lot_size

    # The common ticker
    attr_accessor :ticker

    # The exchange-level ticker
    attr_accessor :exchange_ticker

    # The country-composite ticker
    attr_accessor :composite_ticker

    # Alternate formats of the common ticker
    attr_accessor :alternate_tickers

    # The exchange-level OpenFIGI identifier
    attr_accessor :figi

    # Central Index Key issued by the SEC, which is the unique identifier for all owner filings
    attr_accessor :cik

    # The country-composite OpenFIGI identifier
    attr_accessor :composite_figi

    # The global-composite OpenFIGI identifier
    attr_accessor :share_class_figi

    # The OpenFIGI unique ID
    attr_accessor :figi_uniqueid

    # If true, the Security is active and has been recently traded
    attr_accessor :active

    # If true, this Security is an ETF
    attr_accessor :etf

    # If true, the Security is no longer traded on the exchange
    attr_accessor :delisted

    # If true, the Security is the primary issue for the company, otherwise it is a secondary issue on a secondary stock exchange
    attr_accessor :primary_listing

    # If true, the Security is considered by Intrinio to be the primary Security for its company
    attr_accessor :primary_security

    # The date of the first recorded stock price
    attr_accessor :first_stock_price

    # The date of the last recorded stock price (or the most recent trading day)
    attr_accessor :last_stock_price

    # The date of the last stock price adjustment (dividend, split, etc)
    attr_accessor :last_stock_price_adjustment

    # The date of the last corporate action
    attr_accessor :last_corporate_action

    # Previous tickers used by this security
    attr_accessor :previous_tickers

    # The MIC code of the exchange on which this security primarily trades
    attr_accessor :listing_exchange_mic


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'company_id' => :'company_id',
        :'name' => :'name',
        :'type' => :'type',
        :'code' => :'code',
        :'share_class' => :'share_class',
        :'currency' => :'currency',
        :'round_lot_size' => :'round_lot_size',
        :'ticker' => :'ticker',
        :'exchange_ticker' => :'exchange_ticker',
        :'composite_ticker' => :'composite_ticker',
        :'alternate_tickers' => :'alternate_tickers',
        :'figi' => :'figi',
        :'cik' => :'cik',
        :'composite_figi' => :'composite_figi',
        :'share_class_figi' => :'share_class_figi',
        :'figi_uniqueid' => :'figi_uniqueid',
        :'active' => :'active',
        :'etf' => :'etf',
        :'delisted' => :'delisted',
        :'primary_listing' => :'primary_listing',
        :'primary_security' => :'primary_security',
        :'first_stock_price' => :'first_stock_price',
        :'last_stock_price' => :'last_stock_price',
        :'last_stock_price_adjustment' => :'last_stock_price_adjustment',
        :'last_corporate_action' => :'last_corporate_action',
        :'previous_tickers' => :'previous_tickers',
        :'listing_exchange_mic' => :'listing_exchange_mic'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'company_id' => :'String',
        :'name' => :'String',
        :'type' => :'String',
        :'code' => :'String',
        :'share_class' => :'String',
        :'currency' => :'String',
        :'round_lot_size' => :'Float',
        :'ticker' => :'String',
        :'exchange_ticker' => :'String',
        :'composite_ticker' => :'String',
        :'alternate_tickers' => :'Array<String>',
        :'figi' => :'String',
        :'cik' => :'String',
        :'composite_figi' => :'String',
        :'share_class_figi' => :'String',
        :'figi_uniqueid' => :'String',
        :'active' => :'BOOLEAN',
        :'etf' => :'BOOLEAN',
        :'delisted' => :'BOOLEAN',
        :'primary_listing' => :'BOOLEAN',
        :'primary_security' => :'BOOLEAN',
        :'first_stock_price' => :'Date',
        :'last_stock_price' => :'Date',
        :'last_stock_price_adjustment' => :'Date',
        :'last_corporate_action' => :'Date',
        :'previous_tickers' => :'Array<String>',
        :'listing_exchange_mic' => :'String'
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

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'share_class')
        self.share_class = attributes[:'share_class']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'round_lot_size')
        self.round_lot_size = attributes[:'round_lot_size']
      end

      if attributes.has_key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end

      if attributes.has_key?(:'exchange_ticker')
        self.exchange_ticker = attributes[:'exchange_ticker']
      end

      if attributes.has_key?(:'composite_ticker')
        self.composite_ticker = attributes[:'composite_ticker']
      end

      if attributes.has_key?(:'alternate_tickers')
        if (value = attributes[:'alternate_tickers']).is_a?(Array)
          self.alternate_tickers = value
        end
      end

      if attributes.has_key?(:'figi')
        self.figi = attributes[:'figi']
      end

      if attributes.has_key?(:'cik')
        self.cik = attributes[:'cik']
      end

      if attributes.has_key?(:'composite_figi')
        self.composite_figi = attributes[:'composite_figi']
      end

      if attributes.has_key?(:'share_class_figi')
        self.share_class_figi = attributes[:'share_class_figi']
      end

      if attributes.has_key?(:'figi_uniqueid')
        self.figi_uniqueid = attributes[:'figi_uniqueid']
      end

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'etf')
        self.etf = attributes[:'etf']
      end

      if attributes.has_key?(:'delisted')
        self.delisted = attributes[:'delisted']
      end

      if attributes.has_key?(:'primary_listing')
        self.primary_listing = attributes[:'primary_listing']
      end

      if attributes.has_key?(:'primary_security')
        self.primary_security = attributes[:'primary_security']
      end

      if attributes.has_key?(:'first_stock_price')
        self.first_stock_price = attributes[:'first_stock_price']
      end

      if attributes.has_key?(:'last_stock_price')
        self.last_stock_price = attributes[:'last_stock_price']
      end

      if attributes.has_key?(:'last_stock_price_adjustment')
        self.last_stock_price_adjustment = attributes[:'last_stock_price_adjustment']
      end

      if attributes.has_key?(:'last_corporate_action')
        self.last_corporate_action = attributes[:'last_corporate_action']
      end

      if attributes.has_key?(:'previous_tickers')
        if (value = attributes[:'previous_tickers']).is_a?(Array)
          self.previous_tickers = value
        end
      end

      if attributes.has_key?(:'listing_exchange_mic')
        self.listing_exchange_mic = attributes[:'listing_exchange_mic']
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
          type == o.type &&
          code == o.code &&
          share_class == o.share_class &&
          currency == o.currency &&
          round_lot_size == o.round_lot_size &&
          ticker == o.ticker &&
          exchange_ticker == o.exchange_ticker &&
          composite_ticker == o.composite_ticker &&
          alternate_tickers == o.alternate_tickers &&
          figi == o.figi &&
          cik == o.cik &&
          composite_figi == o.composite_figi &&
          share_class_figi == o.share_class_figi &&
          figi_uniqueid == o.figi_uniqueid &&
          active == o.active &&
          etf == o.etf &&
          delisted == o.delisted &&
          primary_listing == o.primary_listing &&
          primary_security == o.primary_security &&
          first_stock_price == o.first_stock_price &&
          last_stock_price == o.last_stock_price &&
          last_stock_price_adjustment == o.last_stock_price_adjustment &&
          last_corporate_action == o.last_corporate_action &&
          previous_tickers == o.previous_tickers &&
          listing_exchange_mic == o.listing_exchange_mic
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, company_id, name, type, code, share_class, currency, round_lot_size, ticker, exchange_ticker, composite_ticker, alternate_tickers, figi, cik, composite_figi, share_class_figi, figi_uniqueid, active, etf, delisted, primary_listing, primary_security, first_stock_price, last_stock_price, last_stock_price_adjustment, last_corporate_action, previous_tickers, listing_exchange_mic].hash
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
