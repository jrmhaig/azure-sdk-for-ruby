# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Response for Import/Export Status operation.
    #
    class ImportExportOperationResponsePropertiesModel

      include MsRestAzure

      # @return [String] The request type of the operation.
      attr_accessor :request_type

      # @return The request type of the operation.
      attr_accessor :request_id

      # @return [String] The name of the server.
      attr_accessor :server_name

      # @return [String] The name of the database.
      attr_accessor :database_name

      # @return [String] The status message returned from the server.
      attr_accessor :status

      # @return [String] The operation status last modified time.
      attr_accessor :last_modified_time

      # @return [String] The operation queued time.
      attr_accessor :queued_time

      # @return [String] The blob uri.
      attr_accessor :blob_uri

      # @return [String] The error message returned from the server.
      attr_accessor :error_message


      #
      # Mapper for ImportExportOperationResponsePropertiesModel class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImportExportOperationResponseProperties',
          type: {
            name: 'Composite',
            class_name: 'ImportExportOperationResponsePropertiesModel',
            model_properties: {
              request_type: {
                required: false,
                read_only: true,
                serialized_name: 'requestType',
                type: {
                  name: 'String'
                }
              },
              request_id: {
                required: false,
                read_only: true,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                required: false,
                read_only: true,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                required: false,
                read_only: true,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'lastModifiedTime',
                type: {
                  name: 'String'
                }
              },
              queued_time: {
                required: false,
                read_only: true,
                serialized_name: 'queuedTime',
                type: {
                  name: 'String'
                }
              },
              blob_uri: {
                required: false,
                read_only: true,
                serialized_name: 'blobUri',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                required: false,
                read_only: true,
                serialized_name: 'errorMessage',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end