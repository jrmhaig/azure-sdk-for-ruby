# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_12_01_preview
  module Models
    #
    # The properties of an IoT hub.
    #
    class IotHubProperties

      include MsRestAzure

      # @return [Array<SharedAccessSignatureAuthorizationRule>] The shared
      # access policies you can use to secure a connection to the IoT hub.
      attr_accessor :authorization_policies

      # @return [Array<IpFilterRule>] The IP filter rules.
      attr_accessor :ip_filter_rules

      # @return [String] The provisioning state.
      attr_accessor :provisioning_state

      # @return [String] The hub state.
      attr_accessor :state

      # @return [String] The name of the host.
      attr_accessor :host_name

      # @return [Hash{String => EventHubProperties}] The Event Hub-compatible
      # endpoint properties. The only possible keys to this dictionary is
      # events. This key has to be present in the dictionary while making
      # create or update calls for the IoT hub.
      attr_accessor :event_hub_endpoints

      # @return [RoutingProperties]
      attr_accessor :routing

      # @return [Hash{String => StorageEndpointProperties}] The list of Azure
      # Storage endpoints where you can upload files. Currently you can
      # configure only one Azure Storage account and that MUST have its key as
      # $default. Specifying more than one storage account causes an error to
      # be thrown. Not specifying a value for this property when the
      # enableFileUploadNotifications property is set to True, causes an error
      # to be thrown.
      attr_accessor :storage_endpoints

      # @return [Hash{String => MessagingEndpointProperties}] The messaging
      # endpoint properties for the file upload notification queue.
      attr_accessor :messaging_endpoints

      # @return [Boolean] If True, file upload notifications are enabled.
      attr_accessor :enable_file_upload_notifications

      # @return [CloudToDeviceProperties]
      attr_accessor :cloud_to_device

      # @return [String] IoT hub comments.
      attr_accessor :comments

      # @return [IotHubPropertiesDeviceStreams] The device streams properties
      # of iothub.
      attr_accessor :device_streams

      # @return [Capabilities] The capabilities and features enabled for the
      # IoT hub. Possible values include: 'None', 'DeviceManagement'
      attr_accessor :features


      #
      # Mapper for IotHubProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotHubProperties',
          type: {
            name: 'Composite',
            class_name: 'IotHubProperties',
            model_properties: {
              authorization_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authorizationPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SharedAccessSignatureAuthorizationRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SharedAccessSignatureAuthorizationRule'
                      }
                  }
                }
              },
              ip_filter_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipFilterRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IpFilterRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IpFilterRule'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              host_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'hostName',
                type: {
                  name: 'String'
                }
              },
              event_hub_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventHubEndpoints',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EventHubPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EventHubProperties'
                      }
                  }
                }
              },
              routing: {
                client_side_validation: true,
                required: false,
                serialized_name: 'routing',
                type: {
                  name: 'Composite',
                  class_name: 'RoutingProperties'
                }
              },
              storage_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageEndpoints',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StorageEndpointPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageEndpointProperties'
                      }
                  }
                }
              },
              messaging_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'messagingEndpoints',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MessagingEndpointPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MessagingEndpointProperties'
                      }
                  }
                }
              },
              enable_file_upload_notifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableFileUploadNotifications',
                type: {
                  name: 'Boolean'
                }
              },
              cloud_to_device: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cloudToDevice',
                type: {
                  name: 'Composite',
                  class_name: 'CloudToDeviceProperties'
                }
              },
              comments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'comments',
                type: {
                  name: 'String'
                }
              },
              device_streams: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deviceStreams',
                type: {
                  name: 'Composite',
                  class_name: 'IotHubPropertiesDeviceStreams'
                }
              },
              features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'features',
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
