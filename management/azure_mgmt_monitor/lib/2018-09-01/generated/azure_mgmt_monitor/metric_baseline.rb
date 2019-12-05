# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_09_01
  #
  # MetricBaseline
  #
  class MetricBaseline
    include MsRestAzure

    #
    # Creates and initializes a new instance of the MetricBaseline class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MonitorManagementClient] reference to the MonitorManagementClient
    attr_reader :client

    #
    # **Gets the baseline values for a specific metric**.
    #
    # @param resource_uri [String] The identifier of the resource. It has the
    # following structure:
    # subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/{providerName}/{resourceName}.
    # For example:
    # subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/vms/providers/Microsoft.Compute/virtualMachines/vm1
    # @param metric_name [String] The name of the metric to retrieve the baseline
    # for.
    # @param timespan [String] The timespan of the query. It is a string with the
    # following format 'startDateTime_ISO/endDateTime_ISO'.
    # @param interval [Duration] The interval (i.e. timegrain) of the query.
    # @param aggregation [String] The aggregation type of the metric to retrieve
    # the baseline for.
    # @param sensitivities [String] The list of sensitivities (comma separated) to
    # retrieve.
    # @param result_type [ResultType] Allows retrieving only metadata of the
    # baseline. On data request all information is retrieved. Possible values
    # include: 'Data', 'Metadata'
    # @param metricnamespace [String] Metric namespace to query metric definitions
    # for.
    # @param filter [String] The **$filter** is used to describe a set of
    # dimensions with their concrete values which produce a specific metric�s time
    # series, in which a baseline is requested for.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BaselineResponse] operation results.
    #
    def get(resource_uri, metric_name, timespan:nil, interval:nil, aggregation:nil, sensitivities:nil, result_type:nil, metricnamespace:nil, filter:nil, custom_headers:nil)
      response = get_async(resource_uri, metric_name, timespan:timespan, interval:interval, aggregation:aggregation, sensitivities:sensitivities, result_type:result_type, metricnamespace:metricnamespace, filter:filter, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # **Gets the baseline values for a specific metric**.
    #
    # @param resource_uri [String] The identifier of the resource. It has the
    # following structure:
    # subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/{providerName}/{resourceName}.
    # For example:
    # subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/vms/providers/Microsoft.Compute/virtualMachines/vm1
    # @param metric_name [String] The name of the metric to retrieve the baseline
    # for.
    # @param timespan [String] The timespan of the query. It is a string with the
    # following format 'startDateTime_ISO/endDateTime_ISO'.
    # @param interval [Duration] The interval (i.e. timegrain) of the query.
    # @param aggregation [String] The aggregation type of the metric to retrieve
    # the baseline for.
    # @param sensitivities [String] The list of sensitivities (comma separated) to
    # retrieve.
    # @param result_type [ResultType] Allows retrieving only metadata of the
    # baseline. On data request all information is retrieved. Possible values
    # include: 'Data', 'Metadata'
    # @param metricnamespace [String] Metric namespace to query metric definitions
    # for.
    # @param filter [String] The **$filter** is used to describe a set of
    # dimensions with their concrete values which produce a specific metric�s time
    # series, in which a baseline is requested for.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_uri, metric_name, timespan:nil, interval:nil, aggregation:nil, sensitivities:nil, result_type:nil, metricnamespace:nil, filter:nil, custom_headers:nil)
      get_async(resource_uri, metric_name, timespan:timespan, interval:interval, aggregation:aggregation, sensitivities:sensitivities, result_type:result_type, metricnamespace:metricnamespace, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # **Gets the baseline values for a specific metric**.
    #
    # @param resource_uri [String] The identifier of the resource. It has the
    # following structure:
    # subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/{providerName}/{resourceName}.
    # For example:
    # subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/vms/providers/Microsoft.Compute/virtualMachines/vm1
    # @param metric_name [String] The name of the metric to retrieve the baseline
    # for.
    # @param timespan [String] The timespan of the query. It is a string with the
    # following format 'startDateTime_ISO/endDateTime_ISO'.
    # @param interval [Duration] The interval (i.e. timegrain) of the query.
    # @param aggregation [String] The aggregation type of the metric to retrieve
    # the baseline for.
    # @param sensitivities [String] The list of sensitivities (comma separated) to
    # retrieve.
    # @param result_type [ResultType] Allows retrieving only metadata of the
    # baseline. On data request all information is retrieved. Possible values
    # include: 'Data', 'Metadata'
    # @param metricnamespace [String] Metric namespace to query metric definitions
    # for.
    # @param filter [String] The **$filter** is used to describe a set of
    # dimensions with their concrete values which produce a specific metric�s time
    # series, in which a baseline is requested for.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_uri, metric_name, timespan:nil, interval:nil, aggregation:nil, sensitivities:nil, result_type:nil, metricnamespace:nil, filter:nil, custom_headers:nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      fail ArgumentError, 'metric_name is nil' if metric_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceUri}/providers/microsoft.insights/baseline/{metricName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'metricName' => metric_name},
          skip_encoding_path_params: {'resourceUri' => resource_uri},
          query_params: {'timespan' => timespan,'interval' => interval,'aggregation' => aggregation,'sensitivities' => sensitivities,'resultType' => result_type,'api-version' => @client.api_version,'metricnamespace' => metricnamespace,'$filter' => filter},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Monitor::Mgmt::V2018_09_01::Models::BaselineResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # **Lists the baseline values for a resource**.
    #
    # @param resource_uri [String] The identifier of the resource. It has the
    # following structure:
    # subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/{providerName}/{resourceName}.
    # For example:
    # subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/vms/providers/Microsoft.Compute/virtualMachines/vm1
    # @param time_series_information [TimeSeriesInformation] Information that need
    # to be specified to calculate a baseline on a time series.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CalculateBaselineResponse] operation results.
    #
    def calculate_baseline(resource_uri, time_series_information, custom_headers:nil)
      response = calculate_baseline_async(resource_uri, time_series_information, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # **Lists the baseline values for a resource**.
    #
    # @param resource_uri [String] The identifier of the resource. It has the
    # following structure:
    # subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/{providerName}/{resourceName}.
    # For example:
    # subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/vms/providers/Microsoft.Compute/virtualMachines/vm1
    # @param time_series_information [TimeSeriesInformation] Information that need
    # to be specified to calculate a baseline on a time series.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def calculate_baseline_with_http_info(resource_uri, time_series_information, custom_headers:nil)
      calculate_baseline_async(resource_uri, time_series_information, custom_headers:custom_headers).value!
    end

    #
    # **Lists the baseline values for a resource**.
    #
    # @param resource_uri [String] The identifier of the resource. It has the
    # following structure:
    # subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/{providerName}/{resourceName}.
    # For example:
    # subscriptions/b368ca2f-e298-46b7-b0ab-012281956afa/resourceGroups/vms/providers/Microsoft.Compute/virtualMachines/vm1
    # @param time_series_information [TimeSeriesInformation] Information that need
    # to be specified to calculate a baseline on a time series.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def calculate_baseline_async(resource_uri, time_series_information, custom_headers:nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'time_series_information is nil' if time_series_information.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Monitor::Mgmt::V2018_09_01::Models::TimeSeriesInformation.mapper()
      request_content = @client.serialize(request_mapper,  time_series_information)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '{resourceUri}/providers/microsoft.insights/calculatebaseline'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'resourceUri' => resource_uri},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Monitor::Mgmt::V2018_09_01::Models::CalculateBaselineResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end