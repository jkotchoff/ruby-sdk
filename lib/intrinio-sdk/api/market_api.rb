=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.63.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module Intrinio
  class MarketApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Market Status
    # Returns the market status.
    # @param [Hash] opts the optional parameters
    # @return [MarketStatusResult]
    def get_market_status(opts = {})
      data, _status_code, _headers = get_market_status_with_http_info(opts)
      return data
    end

    # Market Status
    # Returns the market status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MarketStatusResult, Fixnum, Hash)>] MarketStatusResult data, response status code and response headers
    def get_market_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MarketApi.get_market_status ..."
      end
      # resource path
      local_var_path = "/market/status"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

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
        :return_type => 'MarketStatusResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#get_market_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
