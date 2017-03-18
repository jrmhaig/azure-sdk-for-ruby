# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Parameters that define the VM to check security groups for.
    #
    class SecurityGroupViewParameters

      include MsRestAzure

      # @return [String] ID of the target VM.
      attr_accessor :target_resource_id


      #
      # Mapper for SecurityGroupViewParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SecurityGroupViewParameters',
          type: {
            name: 'Composite',
            class_name: 'SecurityGroupViewParameters',
            model_properties: {
              target_resource_id: {
                required: true,
                serialized_name: 'targetResourceId',
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
