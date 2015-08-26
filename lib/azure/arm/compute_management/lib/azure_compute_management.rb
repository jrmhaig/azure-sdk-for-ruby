# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.


require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'ERB'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'ms_rest_azure'

require 'azure_compute_management/module_definition'
require 'azure_compute_management/version'

module Azure::ARM::Compute
  autoload :AvailabilitySets,                                   'azure_compute_management/availability_sets.rb'
  autoload :VirtualMachineImages,                               'azure_compute_management/virtual_machine_images.rb'
  autoload :VirtualMachineExtensionImages,                      'azure_compute_management/virtual_machine_extension_images.rb'
  autoload :VirtualMachineExtensions,                           'azure_compute_management/virtual_machine_extensions.rb'
  autoload :UsageOperations,                                    'azure_compute_management/usage_operations.rb'
  autoload :VirtualMachineSizes,                                'azure_compute_management/virtual_machine_sizes.rb'
  autoload :VirtualMachines,                                    'azure_compute_management/virtual_machines.rb'
  autoload :ComputeManagementClient,                            'azure_compute_management/compute_management_client.rb'

  module Models
    autoload :InstanceViewStatus,                                 'azure_compute_management/models/instance_view_status.rb'
    autoload :AvailabilitySetProperties,                          'azure_compute_management/models/availability_set_properties.rb'
    autoload :AvailabilitySetListResult,                          'azure_compute_management/models/availability_set_list_result.rb'
    autoload :VirtualMachineSize,                                 'azure_compute_management/models/virtual_machine_size.rb'
    autoload :VirtualMachineSizeListResult,                       'azure_compute_management/models/virtual_machine_size_list_result.rb'
    autoload :PurchasePlan,                                       'azure_compute_management/models/purchase_plan.rb'
    autoload :OSDiskImage,                                        'azure_compute_management/models/osdisk_image.rb'
    autoload :DataDiskImage,                                      'azure_compute_management/models/data_disk_image.rb'
    autoload :VirtualMachineImageProperties,                      'azure_compute_management/models/virtual_machine_image_properties.rb'
    autoload :VirtualMachineExtensionImageProperties,             'azure_compute_management/models/virtual_machine_extension_image_properties.rb'
    autoload :VirtualMachineExtensionInstanceView,                'azure_compute_management/models/virtual_machine_extension_instance_view.rb'
    autoload :VirtualMachineExtensionProperties,                  'azure_compute_management/models/virtual_machine_extension_properties.rb'
    autoload :UsageName,                                          'azure_compute_management/models/usage_name.rb'
    autoload :Usage,                                              'azure_compute_management/models/usage.rb'
    autoload :ListUsagesResult,                                   'azure_compute_management/models/list_usages_result.rb'
    autoload :VirtualMachineCaptureParameters,                    'azure_compute_management/models/virtual_machine_capture_parameters.rb'
    autoload :ComputeLongRunningOperationProperties,              'azure_compute_management/models/compute_long_running_operation_properties.rb'
    autoload :ApiErrorBase,                                       'azure_compute_management/models/api_error_base.rb'
    autoload :InnerError,                                         'azure_compute_management/models/inner_error.rb'
    autoload :ApiError,                                           'azure_compute_management/models/api_error.rb'
    autoload :ComputeLongRunningOperationResult,                  'azure_compute_management/models/compute_long_running_operation_result.rb'
    autoload :Plan,                                               'azure_compute_management/models/plan.rb'
    autoload :HardwareProfile,                                    'azure_compute_management/models/hardware_profile.rb'
    autoload :ImageReference,                                     'azure_compute_management/models/image_reference.rb'
    autoload :VirtualHardDisk,                                    'azure_compute_management/models/virtual_hard_disk.rb'
    autoload :OSDisk,                                             'azure_compute_management/models/osdisk.rb'
    autoload :DataDisk,                                           'azure_compute_management/models/data_disk.rb'
    autoload :StorageProfile,                                     'azure_compute_management/models/storage_profile.rb'
    autoload :AdditionalUnattendContent,                          'azure_compute_management/models/additional_unattend_content.rb'
    autoload :WinRMListener,                                      'azure_compute_management/models/win_rmlistener.rb'
    autoload :WinRMConfiguration,                                 'azure_compute_management/models/win_rmconfiguration.rb'
    autoload :WindowsConfiguration,                               'azure_compute_management/models/windows_configuration.rb'
    autoload :SshPublicKey,                                       'azure_compute_management/models/ssh_public_key.rb'
    autoload :SshConfiguration,                                   'azure_compute_management/models/ssh_configuration.rb'
    autoload :LinuxConfiguration,                                 'azure_compute_management/models/linux_configuration.rb'
    autoload :VaultCertificate,                                   'azure_compute_management/models/vault_certificate.rb'
    autoload :VaultSecretGroup,                                   'azure_compute_management/models/vault_secret_group.rb'
    autoload :OSProfile,                                          'azure_compute_management/models/osprofile.rb'
    autoload :NetworkInterfaceReferenceProperties,                'azure_compute_management/models/network_interface_reference_properties.rb'
    autoload :NetworkProfile,                                     'azure_compute_management/models/network_profile.rb'
    autoload :VirtualMachineExtensionHandlerInstanceView,         'azure_compute_management/models/virtual_machine_extension_handler_instance_view.rb'
    autoload :VirtualMachineAgentInstanceView,                    'azure_compute_management/models/virtual_machine_agent_instance_view.rb'
    autoload :DiskInstanceView,                                   'azure_compute_management/models/disk_instance_view.rb'
    autoload :VirtualMachineInstanceView,                         'azure_compute_management/models/virtual_machine_instance_view.rb'
    autoload :VirtualMachineProperties,                           'azure_compute_management/models/virtual_machine_properties.rb'
    autoload :VirtualMachineListResult,                           'azure_compute_management/models/virtual_machine_list_result.rb'
    autoload :DeleteOperationResult,                              'azure_compute_management/models/delete_operation_result.rb'
    autoload :AvailabilitySet,                                    'azure_compute_management/models/availability_set.rb'
    autoload :VirtualMachineImage,                                'azure_compute_management/models/virtual_machine_image.rb'
    autoload :VirtualMachineImageResource,                        'azure_compute_management/models/virtual_machine_image_resource.rb'
    autoload :VirtualMachineExtensionImage,                       'azure_compute_management/models/virtual_machine_extension_image.rb'
    autoload :VirtualMachineExtension,                            'azure_compute_management/models/virtual_machine_extension.rb'
    autoload :NetworkInterfaceReference,                          'azure_compute_management/models/network_interface_reference.rb'
    autoload :VirtualMachine,                                     'azure_compute_management/models/virtual_machine.rb'
    autoload :StatusLevelTypes,                                   'azure_compute_management/models/status_level_types.rb'
    autoload :OperatingSystemTypes,                               'azure_compute_management/models/operating_system_types.rb'
    autoload :UsageUnit,                                          'azure_compute_management/models/usage_unit.rb'
    autoload :ComputeOperationStatus,                             'azure_compute_management/models/compute_operation_status.rb'
    autoload :VirtualMachineSizeTypes,                            'azure_compute_management/models/virtual_machine_size_types.rb'
    autoload :CachingTypes,                                       'azure_compute_management/models/caching_types.rb'
    autoload :DiskCreateOptionTypes,                              'azure_compute_management/models/disk_create_option_types.rb'
    autoload :PassNames,                                          'azure_compute_management/models/pass_names.rb'
    autoload :ComponentNames,                                     'azure_compute_management/models/component_names.rb'
    autoload :SettingNames,                                       'azure_compute_management/models/setting_names.rb'
    autoload :ProtocolTypes,                                      'azure_compute_management/models/protocol_types.rb'
    autoload :OperationStatus,                                    'azure_compute_management/models/operation_status.rb'
  end
end