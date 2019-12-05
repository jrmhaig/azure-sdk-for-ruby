# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # Pattern.Any Entity Extractor.
    #
    class PatternAnyEntityExtractor

      include MsRestAzure

      # @return The ID of the Entity Model.
      attr_accessor :id

      # @return [String] Name of the Entity Model.
      attr_accessor :name

      # @return [Integer] The type ID of the Entity Model.
      attr_accessor :type_id

      # @return [Enum] Possible values include: 'Entity Extractor', 'Child
      # Entity Extractor', 'Hierarchical Entity Extractor', 'Hierarchical Child
      # Entity Extractor', 'Composite Entity Extractor', 'List Entity
      # Extractor', 'Prebuilt Entity Extractor', 'Intent Classifier',
      # 'Pattern.Any Entity Extractor', 'Closed List Entity Extractor', 'Regex
      # Entity Extractor'
      attr_accessor :readable_type

      # @return [Array<EntityRole>]
      attr_accessor :roles

      # @return [Array<ExplicitListItem>]
      attr_accessor :explicit_list


      #
      # Mapper for PatternAnyEntityExtractor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Pattern.Any Entity Extractor',
          type: {
            name: 'Composite',
            class_name: 'PatternAnyEntityExtractor',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeId',
                type: {
                  name: 'Number'
                }
              },
              readable_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'readableType',
                type: {
                  name: 'String'
                }
              },
              roles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityRoleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityRole'
                      }
                  }
                }
              },
              explicit_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'explicitList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExplicitListItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExplicitListItem'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end