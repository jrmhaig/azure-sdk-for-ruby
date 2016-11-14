# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    # 
    #
    class ServiceBusQueueMessage < ServiceBusMessage

      include MsRestAzure

      # @return [String] Gets or sets the queue name.
      attr_accessor :queue_name


      #
      # Mapper for ServiceBusQueueMessage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceBusQueueMessage',
          type: {
            name: 'Composite',
            class_name: 'ServiceBusQueueMessage',
            model_properties: {
              authentication: {
                required: false,
                serialized_name: 'authentication',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceBusAuthentication'
                }
              },
              brokered_message_properties: {
                required: false,
                serialized_name: 'brokeredMessageProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceBusBrokeredMessageProperties'
                }
              },
              custom_message_properties: {
                required: false,
                serialized_name: 'customMessageProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              namespace: {
                required: false,
                serialized_name: 'namespace',
                type: {
                  name: 'String'
                }
              },
              transport_type: {
                required: false,
                serialized_name: 'transportType',
                type: {
                  name: 'Enum',
                  module: 'ServiceBusTransportType'
                }
              },
              queue_name: {
                required: false,
                serialized_name: 'queueName',
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