=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.46.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # The realtime stock price of a security.
  class RealtimeStockPrice
    # The price of the last trade.
    attr_accessor :last_price

    # The date and time when the last trade occurred.
    attr_accessor :last_time

    # The size of the last trade.
    attr_accessor :last_size

    # The price of the top bid order.
    attr_accessor :bid_price

    # The size of the top bid order.
    attr_accessor :bid_size

    # The price of the top ask order.
    attr_accessor :ask_price

    # The size of the top ask order.
    attr_accessor :ask_size

    # The price at the open of the trading day.
    attr_accessor :open_price

    # The price at the close of the trading day. (IEX only)
    attr_accessor :close_price

    # The high price for the trading day.
    attr_accessor :high_price

    # The low price for the trading day.
    attr_accessor :low_price

    # The number of shares exchanged during the trading day on the exchange.
    attr_accessor :exchange_volume

    # The number of shares exchanged during the trading day for the whole market.
    attr_accessor :market_volume

    # The date and time when the data was last updated.
    attr_accessor :updated_on

    # The source of the data.
    attr_accessor :source

    # The listing venue where the trade took place. Available only where source is SIP. Listing Venue Modifiers include: Q – Nasdaq | N – NYSE | A – NYSE American | P – NYSE Arca | u – Other OTC Markets | V – Investors Exchange LLC 
    attr_accessor :listing_venue

    # When applicable, indicates any sales condition modifiers associated with the trade. Sales Condition Modifers include: @ – Regular Sale | A – Acquisition | B – Bunched Trade | C – Cash Sale | D – Distribution | E – Placeholder | F – Intermarket Sweep | G – Bunched Sold Trade  | H – Priced Variation Trade | I – Odd Lot Trade | K – Rule 155 Trade (AMEX) | L – Sold Last | M – Market Center Official Close | N – Next Day | O – Opening Prints  | P – Prior Reference Price | Q – Market Center Official Open | R – Seller | S – Split Trade | T – Form T | U – Extended Trading Hours (Sold Out of Sequence)  | V – Contingent Trade | W – Average Price Trade | X – Cross/Periodic Auction Trade | Y – Yellow Flag Regular Trade | Z – Sold (Out of Sequence)  | 1 – Stopped Stock (Regular Trade) | 4 – Derivatively Priced | 5 – Re-Opening Prints | 6 – Closing Prints | 7 – Qualified Contingent Trade (QCT)  | 8 – Placeholder for 611 Exempt | 9 – Corrected Consolidated Close (Per Listing Market) 
    attr_accessor :sales_conditions

    # When applicable, indicates any quote condition modifiers associated with the trade. Quote Condition Modifiers include: R – Regular | A – Slow on Ask | – Slow on Bid | C – Closing | D – News Dissemination | F – Slow on ASK (LRP or Gap Quote)  | E – Slow on Bid (LRP or Gap Quote) | G – Trading Range Indication | H – Slow on Bid and Ask | I – Order Imbalance  |  J – Due to Related - News Dissemination | K – Due to Related - News Pending | O – Open | L – Closed  | M – Volatility Trading Pause | N – Non-Firm Quote | O – Opening | P – News Pending | S – Due to Related  | T – Resume | U – Slow on Bid and Ask (LRP or Gap Quote) | V – In View of Common | W – Slow on Bid and Ask (LRP or Gap Quote)  | X – Equipment Changeover | Y – Sub-Penny Trading | Z – No Open / No Resume | F – Fast Trading | U – Slow on Bid and Ask (Non-Firm)  | One-Sided – One-Sided | X – Order Influx | 0 – Special Opening Quote | Halted – Halted | Benchmark – Benchmark | Implied – Implied  | Exchange Best – Exchange Best | 1 – Market Wide Circuit Breaker Level 1 | 2 – Market Wide Circuit Breaker Level 2  | 3 – Market Wide Circuit Breaker Level 3 | Rotation – Rotation | Auto Exec Eligible – Auto Exec Eligible | Bid Side Firm – Bid Side Firm  | Ask Side Firm – Ask Side Firm | 4 – On Demand Intraday Auction | I – Indicative Value (OPRA) | 45 – Additional Information Required (CTS)  | 46 – Regulatory Concern (CTS) | 47 – Merger Effective | 49 – Corporate Action (CTS) | 50 – New Security Offering (CTS)  | 51 – Intraday Indicative Value Unavailable (CTS) 
    attr_accessor :quote_conditions

    # The market center character code.
    attr_accessor :market_center_code

    # Whether or not the current trade is from a darkpool or not.
    attr_accessor :is_darkpool

    attr_accessor :security


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'last_price' => :'last_price',
        :'last_time' => :'last_time',
        :'last_size' => :'last_size',
        :'bid_price' => :'bid_price',
        :'bid_size' => :'bid_size',
        :'ask_price' => :'ask_price',
        :'ask_size' => :'ask_size',
        :'open_price' => :'open_price',
        :'close_price' => :'close_price',
        :'high_price' => :'high_price',
        :'low_price' => :'low_price',
        :'exchange_volume' => :'exchange_volume',
        :'market_volume' => :'market_volume',
        :'updated_on' => :'updated_on',
        :'source' => :'source',
        :'listing_venue' => :'listing_venue',
        :'sales_conditions' => :'sales_conditions',
        :'quote_conditions' => :'quote_conditions',
        :'market_center_code' => :'market_center_code',
        :'is_darkpool' => :'is_darkpool',
        :'security' => :'security'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'last_price' => :'Float',
        :'last_time' => :'DateTime',
        :'last_size' => :'Float',
        :'bid_price' => :'Float',
        :'bid_size' => :'Float',
        :'ask_price' => :'Float',
        :'ask_size' => :'Float',
        :'open_price' => :'Float',
        :'close_price' => :'Float',
        :'high_price' => :'Float',
        :'low_price' => :'Float',
        :'exchange_volume' => :'Float',
        :'market_volume' => :'Float',
        :'updated_on' => :'DateTime',
        :'source' => :'String',
        :'listing_venue' => :'String',
        :'sales_conditions' => :'String',
        :'quote_conditions' => :'String',
        :'market_center_code' => :'String',
        :'is_darkpool' => :'BOOLEAN',
        :'security' => :'RealtimeStockPriceSecurity'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'last_price')
        self.last_price = attributes[:'last_price']
      end

      if attributes.has_key?(:'last_time')
        self.last_time = attributes[:'last_time']
      end

      if attributes.has_key?(:'last_size')
        self.last_size = attributes[:'last_size']
      end

      if attributes.has_key?(:'bid_price')
        self.bid_price = attributes[:'bid_price']
      end

      if attributes.has_key?(:'bid_size')
        self.bid_size = attributes[:'bid_size']
      end

      if attributes.has_key?(:'ask_price')
        self.ask_price = attributes[:'ask_price']
      end

      if attributes.has_key?(:'ask_size')
        self.ask_size = attributes[:'ask_size']
      end

      if attributes.has_key?(:'open_price')
        self.open_price = attributes[:'open_price']
      end

      if attributes.has_key?(:'close_price')
        self.close_price = attributes[:'close_price']
      end

      if attributes.has_key?(:'high_price')
        self.high_price = attributes[:'high_price']
      end

      if attributes.has_key?(:'low_price')
        self.low_price = attributes[:'low_price']
      end

      if attributes.has_key?(:'exchange_volume')
        self.exchange_volume = attributes[:'exchange_volume']
      end

      if attributes.has_key?(:'market_volume')
        self.market_volume = attributes[:'market_volume']
      end

      if attributes.has_key?(:'updated_on')
        self.updated_on = attributes[:'updated_on']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'listing_venue')
        self.listing_venue = attributes[:'listing_venue']
      end

      if attributes.has_key?(:'sales_conditions')
        self.sales_conditions = attributes[:'sales_conditions']
      end

      if attributes.has_key?(:'quote_conditions')
        self.quote_conditions = attributes[:'quote_conditions']
      end

      if attributes.has_key?(:'market_center_code')
        self.market_center_code = attributes[:'market_center_code']
      end

      if attributes.has_key?(:'is_darkpool')
        self.is_darkpool = attributes[:'is_darkpool']
      end

      if attributes.has_key?(:'security')
        self.security = attributes[:'security']
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
          last_price == o.last_price &&
          last_time == o.last_time &&
          last_size == o.last_size &&
          bid_price == o.bid_price &&
          bid_size == o.bid_size &&
          ask_price == o.ask_price &&
          ask_size == o.ask_size &&
          open_price == o.open_price &&
          close_price == o.close_price &&
          high_price == o.high_price &&
          low_price == o.low_price &&
          exchange_volume == o.exchange_volume &&
          market_volume == o.market_volume &&
          updated_on == o.updated_on &&
          source == o.source &&
          listing_venue == o.listing_venue &&
          sales_conditions == o.sales_conditions &&
          quote_conditions == o.quote_conditions &&
          market_center_code == o.market_center_code &&
          is_darkpool == o.is_darkpool &&
          security == o.security
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [last_price, last_time, last_size, bid_price, bid_size, ask_price, ask_size, open_price, close_price, high_price, low_price, exchange_volume, market_volume, updated_on, source, listing_venue, sales_conditions, quote_conditions, market_center_code, is_darkpool, security].hash
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
