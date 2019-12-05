# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_06_01
  #
  # A service client - single point of access to the REST API.
  #
  class AzureNetAppFilesManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] Subscription credentials which uniquely identify
    # Microsoft Azure subscription. The subscription ID forms part of the URI
    # for every service call.
    attr_accessor :subscription_id

    # @return [String] Version of the API to be used with the client request.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [Operations] operations
    attr_reader :operations

    # @return [Accounts] accounts
    attr_reader :accounts

    # @return [Pools] pools
    attr_reader :pools

    # @return [Volumes] volumes
    attr_reader :volumes

    # @return [MountTargets] mount_targets
    attr_reader :mount_targets

    # @return [Snapshots] snapshots
    attr_reader :snapshots

    #
    # Creates initializes a new instance of the AzureNetAppFilesManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @operations = Operations.new(self)
      @accounts = Accounts.new(self)
      @pools = Pools.new(self)
      @volumes = Volumes.new(self)
      @mount_targets = MountTargets.new(self)
      @snapshots = Snapshots.new(self)
      @api_version = '2019-06-01'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end

    #
    # Check resource name availability
    #
    # Check if a resource name is available.
    #
    # @param location [String] The location
    # @param name [String] Resource name to verify.
    # @param type [CheckNameResourceTypes] Resource type used for verification.
    # Possible values include: 'Microsoft.NetApp/netAppAccounts',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots'
    # @param resource_group [String] Resource group name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ResourceNameAvailability] operation results.
    #
    def check_name_availability(location, name, type, resource_group, custom_headers:nil)
      response = check_name_availability_async(location, name, type, resource_group, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Check resource name availability
    #
    # Check if a resource name is available.
    #
    # @param location [String] The location
    # @param name [String] Resource name to verify.
    # @param type [CheckNameResourceTypes] Resource type used for verification.
    # Possible values include: 'Microsoft.NetApp/netAppAccounts',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots'
    # @param resource_group [String] Resource group name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_name_availability_with_http_info(location, name, type, resource_group, custom_headers:nil)
      check_name_availability_async(location, name, type, resource_group, custom_headers:custom_headers).value!
    end

    #
    # Check resource name availability
    #
    # Check if a resource name is available.
    #
    # @param location [String] The location
    # @param name [String] Resource name to verify.
    # @param type [CheckNameResourceTypes] Resource type used for verification.
    # Possible values include: 'Microsoft.NetApp/netAppAccounts',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots'
    # @param resource_group [String] Resource group name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_name_availability_async(location, name, type, resource_group, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'type is nil' if type.nil?
      fail ArgumentError, 'resource_group is nil' if resource_group.nil?

      body = ResourceNameAvailabilityRequest.new
      unless name.nil? && type.nil? && resource_group.nil?
        body.name = name
        body.type = type
        body.resource_group = resource_group
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      # Serialize Request
      request_mapper = Azure::NetApp::Mgmt::V2019_06_01::Models::ResourceNameAvailabilityRequest.mapper()
      request_content = self.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.NetApp/locations/{location}/checkNameAvailability'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'location' => location},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::NetApp::Mgmt::V2019_06_01::Models::ResourceNameAvailability.mapper()
            result.body = self.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Check file path availability
    #
    # Check if a file path is available.
    #
    # @param location [String] The location
    # @param name [String] Resource name to verify.
    # @param type [CheckNameResourceTypes] Resource type used for verification.
    # Possible values include: 'Microsoft.NetApp/netAppAccounts',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots'
    # @param resource_group [String] Resource group name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ResourceNameAvailability] operation results.
    #
    def check_file_path_availability(location, name, type, resource_group, custom_headers:nil)
      response = check_file_path_availability_async(location, name, type, resource_group, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Check file path availability
    #
    # Check if a file path is available.
    #
    # @param location [String] The location
    # @param name [String] Resource name to verify.
    # @param type [CheckNameResourceTypes] Resource type used for verification.
    # Possible values include: 'Microsoft.NetApp/netAppAccounts',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots'
    # @param resource_group [String] Resource group name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_file_path_availability_with_http_info(location, name, type, resource_group, custom_headers:nil)
      check_file_path_availability_async(location, name, type, resource_group, custom_headers:custom_headers).value!
    end

    #
    # Check file path availability
    #
    # Check if a file path is available.
    #
    # @param location [String] The location
    # @param name [String] Resource name to verify.
    # @param type [CheckNameResourceTypes] Resource type used for verification.
    # Possible values include: 'Microsoft.NetApp/netAppAccounts',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes',
    # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots'
    # @param resource_group [String] Resource group name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_file_path_availability_async(location, name, type, resource_group, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'type is nil' if type.nil?
      fail ArgumentError, 'resource_group is nil' if resource_group.nil?

      body = ResourceNameAvailabilityRequest.new
      unless name.nil? && type.nil? && resource_group.nil?
        body.name = name
        body.type = type
        body.resource_group = resource_group
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      # Serialize Request
      request_mapper = Azure::NetApp::Mgmt::V2019_06_01::Models::ResourceNameAvailabilityRequest.mapper()
      request_content = self.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.NetApp/locations/{location}/checkFilePathAvailability'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'location' => location},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::NetApp::Mgmt::V2019_06_01::Models::ResourceNameAvailability.mapper()
            result.body = self.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_netapp'
        sdk_information = "#{sdk_information}/0.18.2"
        add_user_agent_information(sdk_information)
    end
  end
end