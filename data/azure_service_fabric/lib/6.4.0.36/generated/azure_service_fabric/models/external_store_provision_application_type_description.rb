# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the operation to register or provision an application type
    # using an application package from an external store instead of a package
    # uploaded to the Service Fabric image store.
    #
    class ExternalStoreProvisionApplicationTypeDescription < ProvisionApplicationTypeDescriptionBase

      include MsRestAzure


      def initialize
        @Kind = "ExternalStore"
      end

      attr_accessor :Kind

      # @return [String] The path to the '.sfpkg' application package from
      # where the application package can be downloaded using HTTP or HTTPS
      # protocols. The application package can be stored in an external store
      # that provides GET operation to download the file. Supported protocols
      # are HTTP and HTTPS, and the path must allow READ access.
      attr_accessor :application_package_download_uri

      # @return [String] The application type name represents the name of the
      # application type found in the application manifest.
      attr_accessor :application_type_name

      # @return [String] The application type version represents the version of
      # the application type found in the application manifest.
      attr_accessor :application_type_version


      #
      # Mapper for ExternalStoreProvisionApplicationTypeDescription class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExternalStore',
          type: {
            name: 'Composite',
            class_name: 'ExternalStoreProvisionApplicationTypeDescription',
            model_properties: {
              async: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Async',
                type: {
                  name: 'Boolean'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              application_package_download_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationPackageDownloadUri',
                type: {
                  name: 'String'
                }
              },
              application_type_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationTypeName',
                type: {
                  name: 'String'
                }
              },
              application_type_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationTypeVersion',
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