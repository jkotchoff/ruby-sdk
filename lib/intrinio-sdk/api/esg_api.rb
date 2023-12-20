=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.48.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module Intrinio
  class ESGApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # ESG Companies
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :country 
    # @option opts [String] :industry 
    # @option opts [String] :ticker 
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseESGCompanies]
    def get_esg_companies(opts = {})
      data, _status_code, _headers = get_esg_companies_with_http_info(opts)
      return data
    end

    # ESG Companies
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :country 
    # @option opts [String] :industry 
    # @option opts [String] :ticker 
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseESGCompanies, Fixnum, Hash)>] ApiResponseESGCompanies data, response status code and response headers
    def get_esg_companies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ESGApi.get_esg_companies ..."
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ESGApi.get_esg_companies, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/esg/companies"

      # query parameters
      query_params = {}
      query_params[:'country'] = opts[:'country'] if !opts[:'country'].nil?
      query_params[:'industry'] = opts[:'industry'] if !opts[:'industry'].nil?
      query_params[:'ticker'] = opts[:'ticker'] if !opts[:'ticker'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

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
        :return_type => 'ApiResponseESGCompanies')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ESGApi#get_esg_companies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ESG Company Comprehensive Ratings History
    # 
    # @param identifier ISIN, Intrinio ID, or Ticker
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseESGCompanyComprehensiveRatingHistory]
    def get_esg_company_comprehensive_ratings(identifier, opts = {})
      data, _status_code, _headers = get_esg_company_comprehensive_ratings_with_http_info(identifier, opts)
      return data
    end

    # ESG Company Comprehensive Ratings History
    # 
    # @param identifier ISIN, Intrinio ID, or Ticker
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseESGCompanyComprehensiveRatingHistory, Fixnum, Hash)>] ApiResponseESGCompanyComprehensiveRatingHistory data, response status code and response headers
    def get_esg_company_comprehensive_ratings_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ESGApi.get_esg_company_comprehensive_ratings ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ESGApi.get_esg_company_comprehensive_ratings"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ESGApi.get_esg_company_comprehensive_ratings, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/esg/{identifier}/comprehensive".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

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
        :return_type => 'ApiResponseESGCompanyComprehensiveRatingHistory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ESGApi#get_esg_company_comprehensive_ratings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ESG Company Ratings History
    # 
    # @param identifier ISIN, Intrinio ID, or Ticker
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseESGCompanyRatingHistory]
    def get_esg_company_ratings(identifier, opts = {})
      data, _status_code, _headers = get_esg_company_ratings_with_http_info(identifier, opts)
      return data
    end

    # ESG Company Ratings History
    # 
    # @param identifier ISIN, Intrinio ID, or Ticker
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseESGCompanyRatingHistory, Fixnum, Hash)>] ApiResponseESGCompanyRatingHistory data, response status code and response headers
    def get_esg_company_ratings_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ESGApi.get_esg_company_ratings ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ESGApi.get_esg_company_ratings"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ESGApi.get_esg_company_ratings, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/esg/{identifier}".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

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
        :return_type => 'ApiResponseESGCompanyRatingHistory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ESGApi#get_esg_company_ratings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ESG Latest
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :country 
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseESGLatest]
    def get_esg_latest(opts = {})
      data, _status_code, _headers = get_esg_latest_with_http_info(opts)
      return data
    end

    # ESG Latest
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :country 
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseESGLatest, Fixnum, Hash)>] ApiResponseESGLatest data, response status code and response headers
    def get_esg_latest_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ESGApi.get_esg_latest ..."
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ESGApi.get_esg_latest, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/esg"

      # query parameters
      query_params = {}
      query_params[:'country'] = opts[:'country'] if !opts[:'country'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

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
        :return_type => 'ApiResponseESGLatest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ESGApi#get_esg_latest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ESG Latest Comprehensive
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :country 
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseESGLatestComprehensive]
    def get_esg_latest_comprehensive(opts = {})
      data, _status_code, _headers = get_esg_latest_comprehensive_with_http_info(opts)
      return data
    end

    # ESG Latest Comprehensive
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :country 
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseESGLatestComprehensive, Fixnum, Hash)>] ApiResponseESGLatestComprehensive data, response status code and response headers
    def get_esg_latest_comprehensive_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ESGApi.get_esg_latest_comprehensive ..."
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ESGApi.get_esg_latest_comprehensive, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/esg/comprehensive"

      # query parameters
      query_params = {}
      query_params[:'country'] = opts[:'country'] if !opts[:'country'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

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
        :return_type => 'ApiResponseESGLatestComprehensive')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ESGApi#get_esg_latest_comprehensive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
