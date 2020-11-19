=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.16.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module Intrinio
  class MunicipalityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # All Municipalities
    # Returns all Municipalities. When parameters are specified, returns matching municipalities.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :has_financials Return municipalities with financials
    # @option opts [String] :government_name Return municipalities with a government name matching the given query
    # @option opts [String] :government_type Return municipalities with the given government type
    # @option opts [String] :area_name Return municipalities with an area name matching the given query
    # @option opts [String] :area_type Return municipalities with the given area type
    # @option opts [String] :city Return municipalities in the given city
    # @option opts [String] :state Return municipalities in the given state
    # @option opts [Float] :zipcode Return municipalities in the given zipcode
    # @option opts [Float] :population_greater_than Return municipalities with a population greater than the given number
    # @option opts [Float] :population_less_than Return municipalities with a population less than the given number
    # @option opts [Float] :enrollment_greater_than Return municipalities with an enrollment greater than the given number
    # @option opts [Float] :enrollment_less_than Return municipalities with an enrollment less than the given number
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseMunicipalities]
    def get_all_municipalities(opts = {})
      data, _status_code, _headers = get_all_municipalities_with_http_info(opts)
      return data
    end

    # All Municipalities
    # Returns all Municipalities. When parameters are specified, returns matching municipalities.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :has_financials Return municipalities with financials
    # @option opts [String] :government_name Return municipalities with a government name matching the given query
    # @option opts [String] :government_type Return municipalities with the given government type
    # @option opts [String] :area_name Return municipalities with an area name matching the given query
    # @option opts [String] :area_type Return municipalities with the given area type
    # @option opts [String] :city Return municipalities in the given city
    # @option opts [String] :state Return municipalities in the given state
    # @option opts [Float] :zipcode Return municipalities in the given zipcode
    # @option opts [Float] :population_greater_than Return municipalities with a population greater than the given number
    # @option opts [Float] :population_less_than Return municipalities with a population less than the given number
    # @option opts [Float] :enrollment_greater_than Return municipalities with an enrollment greater than the given number
    # @option opts [Float] :enrollment_less_than Return municipalities with an enrollment less than the given number
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseMunicipalities, Fixnum, Hash)>] ApiResponseMunicipalities data, response status code and response headers
    def get_all_municipalities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MunicipalityApi.get_all_municipalities ..."
      end
      if @api_client.config.client_side_validation && opts[:'area_type'] && !['Borough', 'Census Borough', 'Census County', 'Census Division', 'Census Parish', 'City', 'City And County', 'County', 'Municipality', 'Parish'].include?(opts[:'area_type'])
        fail ArgumentError, 'invalid value for "area_type", must be one of Borough, Census Borough, Census County, Census Division, Census Parish, City, City And County, County, Municipality, Parish'
      end
      # resource path
      local_var_path = "/municipalities"

      # query parameters
      query_params = {}
      query_params[:'has_financials'] = opts[:'has_financials'] if !opts[:'has_financials'].nil?
      query_params[:'government_name'] = opts[:'government_name'] if !opts[:'government_name'].nil?
      query_params[:'government_type'] = opts[:'government_type'] if !opts[:'government_type'].nil?
      query_params[:'area_name'] = opts[:'area_name'] if !opts[:'area_name'].nil?
      query_params[:'area_type'] = opts[:'area_type'] if !opts[:'area_type'].nil?
      query_params[:'city'] = opts[:'city'] if !opts[:'city'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'zipcode'] = opts[:'zipcode'] if !opts[:'zipcode'].nil?
      query_params[:'population_greater_than'] = opts[:'population_greater_than'] if !opts[:'population_greater_than'].nil?
      query_params[:'population_less_than'] = opts[:'population_less_than'] if !opts[:'population_less_than'].nil?
      query_params[:'enrollment_greater_than'] = opts[:'enrollment_greater_than'] if !opts[:'enrollment_greater_than'].nil?
      query_params[:'enrollment_less_than'] = opts[:'enrollment_less_than'] if !opts[:'enrollment_less_than'].nil?
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
        :return_type => 'ApiResponseMunicipalities')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MunicipalityApi#get_all_municipalities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Municipality by ID
    # Returns the Municipality with the given ID
    # @param id An Intrinio ID of a Municipality
    # @param [Hash] opts the optional parameters
    # @return [Municipality]
    def get_municipality_by_id(id, opts = {})
      data, _status_code, _headers = get_municipality_by_id_with_http_info(id, opts)
      return data
    end

    # Municipality by ID
    # Returns the Municipality with the given ID
    # @param id An Intrinio ID of a Municipality
    # @param [Hash] opts the optional parameters
    # @return [Array<(Municipality, Fixnum, Hash)>] Municipality data, response status code and response headers
    def get_municipality_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MunicipalityApi.get_municipality_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MunicipalityApi.get_municipality_by_id"
      end
      # resource path
      local_var_path = "/municipalities/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Municipality')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MunicipalityApi#get_municipality_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Financials for a Municipality
    # Returns financial statement data for the Municipality with the given ID
    # @param id An Intrinio ID of a Municipality
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :fiscal_year Return financials for the given fiscal year
    # @return [ApiResponseMunicipalitiyFinancials]
    def get_municipality_financials(id, opts = {})
      data, _status_code, _headers = get_municipality_financials_with_http_info(id, opts)
      return data
    end

    # Financials for a Municipality
    # Returns financial statement data for the Municipality with the given ID
    # @param id An Intrinio ID of a Municipality
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :fiscal_year Return financials for the given fiscal year
    # @return [Array<(ApiResponseMunicipalitiyFinancials, Fixnum, Hash)>] ApiResponseMunicipalitiyFinancials data, response status code and response headers
    def get_municipality_financials_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MunicipalityApi.get_municipality_financials ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MunicipalityApi.get_municipality_financials"
      end
      # resource path
      local_var_path = "/municipalities/{id}/financials".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'fiscal_year'] = opts[:'fiscal_year'] if !opts[:'fiscal_year'].nil?

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
        :return_type => 'ApiResponseMunicipalitiyFinancials')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MunicipalityApi#get_municipality_financials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
