# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # QnADTO - Either QnaId or QnADTO needs to be present in a PromptDTO object
    #
    class PromptDTOQna < QnADTO

      include MsRestAzure


      #
      # Mapper for PromptDTOQna class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PromptDTO_qna',
          type: {
            name: 'Composite',
            class_name: 'PromptDTOQna',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              },
              answer: {
                client_side_validation: true,
                required: true,
                serialized_name: 'answer',
                constraints: {
                  MaxLength: 25000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'source',
                constraints: {
                  MaxLength: 300
                },
                type: {
                  name: 'String'
                }
              },
              questions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'questions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetadataDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetadataDTO'
                      }
                  }
                }
              },
              context: {
                client_side_validation: true,
                required: false,
                serialized_name: 'context',
                type: {
                  name: 'Composite',
                  class_name: 'QnADTOContext'
                }
              }
            }
          }
        }
      end
    end
  end
end
