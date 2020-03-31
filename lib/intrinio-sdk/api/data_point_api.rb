=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module Intrinio
  class DataPointApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Data Point (Number)
    # Returns a numeric value for the given `tag` and the entity with the given `identifier`
    # @param identifier An identifier for an entity such as a Company, Security, Index, etc (Ticker, FIGI, ISIN, CUSIP, CIK, LEI, Intrinio ID)
    # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
    # @param [Hash] opts the optional parameters
    # @return [Float]
    def get_data_point_number(identifier, tag, opts = {})
      data, _status_code, _headers = get_data_point_number_with_http_info(identifier, tag, opts)
      return data
    end

    # Data Point (Number)
    # Returns a numeric value for the given &#x60;tag&#x60; and the entity with the given &#x60;identifier&#x60;
    # @param identifier An identifier for an entity such as a Company, Security, Index, etc (Ticker, FIGI, ISIN, CUSIP, CIK, LEI, Intrinio ID)
    # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Float, Fixnum, Hash)>] Float data, response status code and response headers
    def get_data_point_number_with_http_info(identifier, tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DataPointApi.get_data_point_number ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling DataPointApi.get_data_point_number"
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling DataPointApi.get_data_point_number"
      end
      # resource path
      local_var_path = "/data_point/{identifier}/{tag}/number".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'tag' + '}', tag.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Float')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataPointApi#get_data_point_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Data Point (Text)
    # Returns a text value for the given `tag` for the Security with the given `identifier`
    # @param identifier An identifier for an entity such as a Company, Security, Index, etc (Ticker, FIGI, ISIN, CUSIP, CIK, LEI, Intrinio ID)
    # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_data_point_text(identifier, tag, opts = {})
      data, _status_code, _headers = get_data_point_text_with_http_info(identifier, tag, opts)
      return data
    end

    # Data Point (Text)
    # Returns a text value for the given &#x60;tag&#x60; for the Security with the given &#x60;identifier&#x60;
    # @param identifier An identifier for an entity such as a Company, Security, Index, etc (Ticker, FIGI, ISIN, CUSIP, CIK, LEI, Intrinio ID)
    # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_data_point_text_with_http_info(identifier, tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DataPointApi.get_data_point_text ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling DataPointApi.get_data_point_text"
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling DataPointApi.get_data_point_text"
      end
      # resource path
      local_var_path = "/data_point/{identifier}/{tag}/text".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'tag' + '}', tag.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataPointApi#get_data_point_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
