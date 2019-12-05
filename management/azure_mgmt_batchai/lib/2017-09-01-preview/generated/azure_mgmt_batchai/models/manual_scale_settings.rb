# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # Manual scale settings for the cluster.
    #
    class ManualScaleSettings

      include MsRestAzure

      # @return [Integer] The desired number of compute nodes in the Cluster.
      # Default is 0. If autoScaleSettings are not specified, then the Cluster
      # starts with this target. Default value: 0 .
      attr_accessor :target_node_count

      # @return [DeallocationOption] Determines what to do with the job(s)
      # running on compute node if the Cluster size is decreasing. The default
      # value is requeue. Possible values include: 'requeue', 'terminate',
      # 'waitforjobcompletion', 'unknown'. Default value: 'requeue' .
      attr_accessor :node_deallocation_option


      #
      # Mapper for ManualScaleSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManualScaleSettings',
          type: {
            name: 'Composite',
            class_name: 'ManualScaleSettings',
            model_properties: {
              target_node_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetNodeCount',
                default_value: 0,
                type: {
                  name: 'Number'
                }
              },
              node_deallocation_option: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeDeallocationOption',
                default_value: 'requeue',
                type: {
                  name: 'Enum',
                  module: 'DeallocationOption'
                }
              }
            }
          }
        }
      end
    end
  end
end