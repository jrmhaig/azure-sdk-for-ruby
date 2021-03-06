# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Contains information about a node that was targeted by a user-induced
    # operation.
    #
    class NodeResult

      include MsRestAzure

      # @return [String] The name of a Service Fabric node.
      attr_accessor :node_name

      # @return [String] The node instance id.
      attr_accessor :node_instance_id


      #
      # Mapper for NodeResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeResult',
          type: {
            name: 'Composite',
            class_name: 'NodeResult',
            model_properties: {
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              node_instance_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeInstanceId',
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
