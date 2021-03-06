# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # The recurrence schedule occurrence.
    #
    class RecurrenceScheduleOccurrence

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [DayOfWeek] The day of the week. Possible values include:
      # 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday',
      # 'Saturday'
      attr_accessor :day

      # @return [Integer] The occurrence.
      attr_accessor :occurrence


      #
      # Mapper for RecurrenceScheduleOccurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecurrenceScheduleOccurrence',
          type: {
            name: 'Composite',
            class_name: 'RecurrenceScheduleOccurrence',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              day: {
                client_side_validation: true,
                required: false,
                serialized_name: 'day',
                type: {
                  name: 'Enum',
                  module: 'DayOfWeek'
                }
              },
              occurrence: {
                client_side_validation: true,
                required: false,
                serialized_name: 'occurrence',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
