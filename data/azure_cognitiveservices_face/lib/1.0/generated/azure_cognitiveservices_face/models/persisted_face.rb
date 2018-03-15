# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # PersonFace object.
    #
    class PersistedFace

      include MsRestAzure

      # @return The persistedFaceId of the target face, which is persisted and
      # will not expire. Different from faceId created by Face - Detect and
      # will expire in 24 hours after the detection call.
      attr_accessor :persisted_face_id

      # @return [String] User-provided data attached to the face. The size
      # limit is 1KB.
      attr_accessor :user_data


      #
      # Mapper for PersistedFace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PersistedFace',
          type: {
            name: 'Composite',
            class_name: 'PersistedFace',
            model_properties: {
              persisted_face_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'persistedFaceId',
                type: {
                  name: 'String'
                }
              },
              user_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userData',
                constraints: {
                  MaxLength: 1024
                },
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