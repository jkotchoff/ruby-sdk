=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.29.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # Returns a list of institutional owners and the value of their interests sourced from Zacks.
  class ZacksInstitutionalHoldingOwnerDetail
    # The owner's name
    attr_accessor :name

    # The Central Index Key (CIK) assigned to the company by the SEC as a unique identifier, used in SEC filings
    attr_accessor :cik

    # The owner's address
    attr_accessor :address

    # The owner's city and state (City, ST)
    attr_accessor :city_state

    # The owner's location code. ('D' = Domestic, 'C' = Canadian, 'F' = Foreign)
    attr_accessor :location_code

    # The owner's phone number
    attr_accessor :phone_number

    # The owner's postal code
    attr_accessor :postal_code

    # The owner's website url
    attr_accessor :url

    # The owner's investment style ('I' = Income, 'V' = Value, 'G' = Growth, 'B' =  Growth at a Reasonable Price, 'A' = Aggressive Growth, 'P' = Passive/Index, 'D' = Deep Value)
    attr_accessor :investment_style

    # Count of equity holdings only, doesn't include bonds or other funds held
    attr_accessor :number_of_holdings

    # Market value of equity holdings in 1,000s. Sum of shares held times last close price.
    attr_accessor :total_holdings_value

    # Annual portfolio turnover in terms of percentage of total value.
    attr_accessor :portfolio_turnover_percent

    # If 'Y', the owner is a fund? ('Y' = Yes, 'N' = No)
    attr_accessor :is_fund

    # Fund ticker if the institution is a fund
    attr_accessor :fund_ticker

    # Does the fund have a manager. ('Y' = Yes, 'N' = No)
    attr_accessor :has_fund_manager

    # The fund manager's city
    attr_accessor :fund_manager_city

    # The fund manager's name
    attr_accessor :fund_manager_name

    # The fund manager's state
    attr_accessor :fund_manager_state

    # If 'Y', the company files the SEC 13F report. ('Y' = Yes, 'N' = No)
    attr_accessor :files_13f

    # If 'Y', the owner is an ETF. ('Y' = Yes, 'N' = No)
    attr_accessor :is_etf

    # The the last updated date
    attr_accessor :last_updated_on


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'cik' => :'cik',
        :'address' => :'address',
        :'city_state' => :'city_state',
        :'location_code' => :'location_code',
        :'phone_number' => :'phone_number',
        :'postal_code' => :'postal_code',
        :'url' => :'url',
        :'investment_style' => :'investment_style',
        :'number_of_holdings' => :'number_of_holdings',
        :'total_holdings_value' => :'total_holdings_value',
        :'portfolio_turnover_percent' => :'portfolio_turnover_percent',
        :'is_fund' => :'is_fund',
        :'fund_ticker' => :'fund_ticker',
        :'has_fund_manager' => :'has_fund_manager',
        :'fund_manager_city' => :'fund_manager_city',
        :'fund_manager_name' => :'fund_manager_name',
        :'fund_manager_state' => :'fund_manager_state',
        :'files_13f' => :'files_13f',
        :'is_etf' => :'is_etf',
        :'last_updated_on' => :'last_updated_on'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'cik' => :'String',
        :'address' => :'String',
        :'city_state' => :'String',
        :'location_code' => :'String',
        :'phone_number' => :'String',
        :'postal_code' => :'String',
        :'url' => :'String',
        :'investment_style' => :'String',
        :'number_of_holdings' => :'Float',
        :'total_holdings_value' => :'Float',
        :'portfolio_turnover_percent' => :'Float',
        :'is_fund' => :'String',
        :'fund_ticker' => :'String',
        :'has_fund_manager' => :'String',
        :'fund_manager_city' => :'String',
        :'fund_manager_name' => :'String',
        :'fund_manager_state' => :'String',
        :'files_13f' => :'String',
        :'is_etf' => :'String',
        :'last_updated_on' => :'Date'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'cik')
        self.cik = attributes[:'cik']
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'city_state')
        self.city_state = attributes[:'city_state']
      end

      if attributes.has_key?(:'location_code')
        self.location_code = attributes[:'location_code']
      end

      if attributes.has_key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.has_key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'investment_style')
        self.investment_style = attributes[:'investment_style']
      end

      if attributes.has_key?(:'number_of_holdings')
        self.number_of_holdings = attributes[:'number_of_holdings']
      end

      if attributes.has_key?(:'total_holdings_value')
        self.total_holdings_value = attributes[:'total_holdings_value']
      end

      if attributes.has_key?(:'portfolio_turnover_percent')
        self.portfolio_turnover_percent = attributes[:'portfolio_turnover_percent']
      end

      if attributes.has_key?(:'is_fund')
        self.is_fund = attributes[:'is_fund']
      end

      if attributes.has_key?(:'fund_ticker')
        self.fund_ticker = attributes[:'fund_ticker']
      end

      if attributes.has_key?(:'has_fund_manager')
        self.has_fund_manager = attributes[:'has_fund_manager']
      end

      if attributes.has_key?(:'fund_manager_city')
        self.fund_manager_city = attributes[:'fund_manager_city']
      end

      if attributes.has_key?(:'fund_manager_name')
        self.fund_manager_name = attributes[:'fund_manager_name']
      end

      if attributes.has_key?(:'fund_manager_state')
        self.fund_manager_state = attributes[:'fund_manager_state']
      end

      if attributes.has_key?(:'files_13f')
        self.files_13f = attributes[:'files_13f']
      end

      if attributes.has_key?(:'is_etf')
        self.is_etf = attributes[:'is_etf']
      end

      if attributes.has_key?(:'last_updated_on')
        self.last_updated_on = attributes[:'last_updated_on']
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
          name == o.name &&
          cik == o.cik &&
          address == o.address &&
          city_state == o.city_state &&
          location_code == o.location_code &&
          phone_number == o.phone_number &&
          postal_code == o.postal_code &&
          url == o.url &&
          investment_style == o.investment_style &&
          number_of_holdings == o.number_of_holdings &&
          total_holdings_value == o.total_holdings_value &&
          portfolio_turnover_percent == o.portfolio_turnover_percent &&
          is_fund == o.is_fund &&
          fund_ticker == o.fund_ticker &&
          has_fund_manager == o.has_fund_manager &&
          fund_manager_city == o.fund_manager_city &&
          fund_manager_name == o.fund_manager_name &&
          fund_manager_state == o.fund_manager_state &&
          files_13f == o.files_13f &&
          is_etf == o.is_etf &&
          last_updated_on == o.last_updated_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, cik, address, city_state, location_code, phone_number, postal_code, url, investment_style, number_of_holdings, total_holdings_value, portfolio_turnover_percent, is_fund, fund_ticker, has_fund_manager, fund_manager_city, fund_manager_name, fund_manager_state, files_13f, is_etf, last_updated_on].hash
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
