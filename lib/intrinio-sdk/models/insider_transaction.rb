=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.47.7

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # A transaction where the owner is considered an insider of that company. Criteria for being an insider include being a director, officer, or 10%+ owner in the company. Transactions are detailed for both non-derivative and derivative transactions by the insider.
  class InsiderTransaction
    # (true/false) A boolean indicating whether or not the owner is a director in the company
    attr_accessor :director

    # (true/false) A boolean indicating whether or not the owner is a officer in the company
    attr_accessor :officer

    # (true/false) A boolean indicating whether or not the owner has a ten percent or greater interest in the company
    attr_accessor :ten_percent_owner

    # (true/false) A boolean indicating whether or not the owner has another relationship with the company beside, direct, officer, or significant owner in the company
    attr_accessor :other_relation

    # The officer title of the owner in the company
    attr_accessor :officer_title

    # (true) A boolean indicating the transaction is a derivative transaction, which may or may not become common stock due to various possible exercise or conversion requirements
    attr_accessor :derivative_transaction

    # The ticker symbol for the company’s common stock
    attr_accessor :ticker

    # The name of the derivative security transacted
    attr_accessor :security_title

    # The conversion or exercise price of the derivative security transacted
    attr_accessor :conversion_exercise_price

    # The date of the transaction
    attr_accessor :transaction_date

    # The date of the transaction had it not a directly identifiable date
    attr_accessor :deemed_execution_date

    # A symbol representing the transaction type; P = Purchase | S = Sale | A  = Award | M = Conversion to Common | C = Conversion | X = Exercise of Derivative More Transaction Codes
    attr_accessor :transaction_type_code

    # A symbol representing whether or not the derivative securities are Acquired or Disposed; A = Acquisition | D = Disposition
    attr_accessor :acquisition_disposition_code

    # The number of derivative securities involved in the subject transaction
    attr_accessor :amount_of_shares

    # The exercise date of the derivative securities
    attr_accessor :exercise_date

    # The expiration date of the derivative securities
    attr_accessor :expiration_date

    # The name of the underlying non-derivative security related to this derivative transaction
    attr_accessor :underlying_security_title

    # The number of non-derivative shares involved in the subject transaction
    attr_accessor :underlying_shares

    # The price of the derivative securities
    attr_accessor :transaction_price

    # The total number of derivative securities owned following the subject transaction
    attr_accessor :total_shares_owned

    # A symbol representing the ownership of the securities transacted; D = Direct Ownership | I = Indirect Ownership
    attr_accessor :ownership_type_code

    # The company associated with the filing
    attr_accessor :company

    # The owner associated with the filing
    attr_accessor :owner


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'director' => :'director',
        :'officer' => :'officer',
        :'ten_percent_owner' => :'ten_percent_owner',
        :'other_relation' => :'other_relation',
        :'officer_title' => :'officer_title',
        :'derivative_transaction' => :'derivative_transaction',
        :'ticker' => :'ticker',
        :'security_title' => :'security_title',
        :'conversion_exercise_price' => :'conversion_exercise_price',
        :'transaction_date' => :'transaction_date',
        :'deemed_execution_date' => :'deemed_execution_date',
        :'transaction_type_code' => :'transaction_type_code',
        :'acquisition_disposition_code' => :'acquisition_disposition_code',
        :'amount_of_shares' => :'amount_of_shares',
        :'exercise_date' => :'exercise_date',
        :'expiration_date' => :'expiration_date',
        :'underlying_security_title' => :'underlying_security_title',
        :'underlying_shares' => :'underlying_shares',
        :'transaction_price' => :'transaction_price',
        :'total_shares_owned' => :'total_shares_owned',
        :'ownership_type_code' => :'ownership_type_code',
        :'company' => :'company',
        :'owner' => :'owner'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'director' => :'BOOLEAN',
        :'officer' => :'BOOLEAN',
        :'ten_percent_owner' => :'BOOLEAN',
        :'other_relation' => :'BOOLEAN',
        :'officer_title' => :'String',
        :'derivative_transaction' => :'BOOLEAN',
        :'ticker' => :'String',
        :'security_title' => :'String',
        :'conversion_exercise_price' => :'Float',
        :'transaction_date' => :'Date',
        :'deemed_execution_date' => :'Date',
        :'transaction_type_code' => :'String',
        :'acquisition_disposition_code' => :'String',
        :'amount_of_shares' => :'Float',
        :'exercise_date' => :'Date',
        :'expiration_date' => :'Date',
        :'underlying_security_title' => :'String',
        :'underlying_shares' => :'Float',
        :'transaction_price' => :'Float',
        :'total_shares_owned' => :'Float',
        :'ownership_type_code' => :'String',
        :'company' => :'CompanySummary',
        :'owner' => :'OwnerSummary'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'director')
        self.director = attributes[:'director']
      end

      if attributes.has_key?(:'officer')
        self.officer = attributes[:'officer']
      end

      if attributes.has_key?(:'ten_percent_owner')
        self.ten_percent_owner = attributes[:'ten_percent_owner']
      end

      if attributes.has_key?(:'other_relation')
        self.other_relation = attributes[:'other_relation']
      end

      if attributes.has_key?(:'officer_title')
        self.officer_title = attributes[:'officer_title']
      end

      if attributes.has_key?(:'derivative_transaction')
        self.derivative_transaction = attributes[:'derivative_transaction']
      end

      if attributes.has_key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end

      if attributes.has_key?(:'security_title')
        self.security_title = attributes[:'security_title']
      end

      if attributes.has_key?(:'conversion_exercise_price')
        self.conversion_exercise_price = attributes[:'conversion_exercise_price']
      end

      if attributes.has_key?(:'transaction_date')
        self.transaction_date = attributes[:'transaction_date']
      end

      if attributes.has_key?(:'deemed_execution_date')
        self.deemed_execution_date = attributes[:'deemed_execution_date']
      end

      if attributes.has_key?(:'transaction_type_code')
        self.transaction_type_code = attributes[:'transaction_type_code']
      end

      if attributes.has_key?(:'acquisition_disposition_code')
        self.acquisition_disposition_code = attributes[:'acquisition_disposition_code']
      end

      if attributes.has_key?(:'amount_of_shares')
        self.amount_of_shares = attributes[:'amount_of_shares']
      end

      if attributes.has_key?(:'exercise_date')
        self.exercise_date = attributes[:'exercise_date']
      end

      if attributes.has_key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.has_key?(:'underlying_security_title')
        self.underlying_security_title = attributes[:'underlying_security_title']
      end

      if attributes.has_key?(:'underlying_shares')
        self.underlying_shares = attributes[:'underlying_shares']
      end

      if attributes.has_key?(:'transaction_price')
        self.transaction_price = attributes[:'transaction_price']
      end

      if attributes.has_key?(:'total_shares_owned')
        self.total_shares_owned = attributes[:'total_shares_owned']
      end

      if attributes.has_key?(:'ownership_type_code')
        self.ownership_type_code = attributes[:'ownership_type_code']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'owner')
        self.owner = attributes[:'owner']
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
          director == o.director &&
          officer == o.officer &&
          ten_percent_owner == o.ten_percent_owner &&
          other_relation == o.other_relation &&
          officer_title == o.officer_title &&
          derivative_transaction == o.derivative_transaction &&
          ticker == o.ticker &&
          security_title == o.security_title &&
          conversion_exercise_price == o.conversion_exercise_price &&
          transaction_date == o.transaction_date &&
          deemed_execution_date == o.deemed_execution_date &&
          transaction_type_code == o.transaction_type_code &&
          acquisition_disposition_code == o.acquisition_disposition_code &&
          amount_of_shares == o.amount_of_shares &&
          exercise_date == o.exercise_date &&
          expiration_date == o.expiration_date &&
          underlying_security_title == o.underlying_security_title &&
          underlying_shares == o.underlying_shares &&
          transaction_price == o.transaction_price &&
          total_shares_owned == o.total_shares_owned &&
          ownership_type_code == o.ownership_type_code &&
          company == o.company &&
          owner == o.owner
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [director, officer, ten_percent_owner, other_relation, officer_title, derivative_transaction, ticker, security_title, conversion_exercise_price, transaction_date, deemed_execution_date, transaction_type_code, acquisition_disposition_code, amount_of_shares, exercise_date, expiration_date, underlying_security_title, underlying_shares, transaction_price, total_shares_owned, ownership_type_code, company, owner].hash
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
