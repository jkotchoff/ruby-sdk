=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.64.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # Insider and institutional owners of securities covered by Intrinio
  class Owner
    # The Intrinio ID for the Owner
    attr_accessor :id

    # The Intrinio ID for the company for which the Security is issued
    attr_accessor :company_id

    # The Central Index Key issued by the SEC, which is the unique identifier all owner filings
    attr_accessor :owner_cik

    # The name of the owner
    attr_accessor :name

    # The state in which the owner is located
    attr_accessor :state

    # The state in which the owner is incorporated
    attr_accessor :state_inc

    # The country in which the owner is incorporated
    attr_accessor :country_inc

    # The owner's business address
    attr_accessor :business_address

    # The owner's business phone number
    attr_accessor :business_phone_no

    # The owner's mailing address
    attr_accessor :mailing_address

    # A boolean to include only insider owners who have filed forms 3, 4, or 5 with the SEC
    attr_accessor :institutional

    # The date and time when the data was last updated.
    attr_accessor :updated_on

    # The date and time when the data was created
    attr_accessor :created_on


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'company_id' => :'company_id',
        :'owner_cik' => :'owner_cik',
        :'name' => :'name',
        :'state' => :'state',
        :'state_inc' => :'state_inc',
        :'country_inc' => :'country_inc',
        :'business_address' => :'business_address',
        :'business_phone_no' => :'business_phone_no',
        :'mailing_address' => :'mailing_address',
        :'institutional' => :'institutional',
        :'updated_on' => :'updated_on',
        :'created_on' => :'created_on'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'company_id' => :'String',
        :'owner_cik' => :'String',
        :'name' => :'String',
        :'state' => :'String',
        :'state_inc' => :'String',
        :'country_inc' => :'String',
        :'business_address' => :'String',
        :'business_phone_no' => :'String',
        :'mailing_address' => :'String',
        :'institutional' => :'BOOLEAN',
        :'updated_on' => :'DateTime',
        :'created_on' => :'DateTime'
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

      if attributes.has_key?(:'owner_cik')
        self.owner_cik = attributes[:'owner_cik']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'state_inc')
        self.state_inc = attributes[:'state_inc']
      end

      if attributes.has_key?(:'country_inc')
        self.country_inc = attributes[:'country_inc']
      end

      if attributes.has_key?(:'business_address')
        self.business_address = attributes[:'business_address']
      end

      if attributes.has_key?(:'business_phone_no')
        self.business_phone_no = attributes[:'business_phone_no']
      end

      if attributes.has_key?(:'mailing_address')
        self.mailing_address = attributes[:'mailing_address']
      end

      if attributes.has_key?(:'institutional')
        self.institutional = attributes[:'institutional']
      end

      if attributes.has_key?(:'updated_on')
        self.updated_on = attributes[:'updated_on']
      end

      if attributes.has_key?(:'created_on')
        self.created_on = attributes[:'created_on']
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
          owner_cik == o.owner_cik &&
          name == o.name &&
          state == o.state &&
          state_inc == o.state_inc &&
          country_inc == o.country_inc &&
          business_address == o.business_address &&
          business_phone_no == o.business_phone_no &&
          mailing_address == o.mailing_address &&
          institutional == o.institutional &&
          updated_on == o.updated_on &&
          created_on == o.created_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, company_id, owner_cik, name, state, state_inc, country_inc, business_address, business_phone_no, mailing_address, institutional, updated_on, created_on].hash
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
