# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents a server.
    #
    class Server < TrackedResource

      include MsRestAzure

      # @return [String] Kind of sql server.  This is metadata used for the
      # Azure portal experience.
      attr_accessor :kind

      # @return [String] The fully qualified domain name of the server.
      attr_accessor :fully_qualified_domain_name

      # @return [ServerVersion] The version of the server. Possible values
      # include: '2.0', '12.0'
      attr_accessor :version

      # @return [String] Administrator username for the server. Can only be
      # specified when the server is being created (and is required for
      # creation).
      attr_accessor :administrator_login

      # @return [String] The administrator login password (required for server
      # creation).
      attr_accessor :administrator_login_password

      # @return The ID of the Active Azure Directory object with admin
      # permissions on this server. Legacy parameter, always null. To check for
      # Active Directory admin, query .../servers/{serverName}/administrators.
      attr_accessor :external_administrator_sid

      # @return [String] The display name of the Azure Active Directory object
      # with admin permissions on this server. Legacy parameter, always null.
      # To check for Active Directory admin, query
      # .../servers/{serverName}/administrators
      attr_accessor :external_administrator_login

      # @return [ServerState] The state of the server. Possible values include:
      # 'Ready', 'Disabled'
      attr_accessor :state


      #
      # Mapper for Server class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Server',
          type: {
            name: 'Composite',
            class_name: 'Server',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              fully_qualified_domain_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.fullyQualifiedDomainName',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: false,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              administrator_login: {
                required: false,
                serialized_name: 'properties.administratorLogin',
                type: {
                  name: 'String'
                }
              },
              administrator_login_password: {
                required: false,
                serialized_name: 'properties.administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              external_administrator_sid: {
                required: false,
                read_only: true,
                serialized_name: 'properties.externalAdministratorSid',
                type: {
                  name: 'String'
                }
              },
              external_administrator_login: {
                required: false,
                read_only: true,
                serialized_name: 'properties.externalAdministratorLogin',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'ServerState'
                }
              }
            }
          }
        }
      end
    end
  end
end