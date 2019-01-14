# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2.2/generated/azure_cognitiveservices_customvisiontraining/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::Customvisiontraining::V2_2
  autoload :CustomvisiontrainingClient,                         '2.2/generated/azure_cognitiveservices_customvisiontraining/customvisiontraining_client.rb'

  module Models
    autoload :ImageIdCreateBatch,                                 '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_id_create_batch.rb'
    autoload :Domain,                                             '2.2/generated/azure_cognitiveservices_customvisiontraining/models/domain.rb'
    autoload :BoundingBox,                                        '2.2/generated/azure_cognitiveservices_customvisiontraining/models/bounding_box.rb'
    autoload :ImageTagCreateBatch,                                '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_tag_create_batch.rb'
    autoload :RegionProposal,                                     '2.2/generated/azure_cognitiveservices_customvisiontraining/models/region_proposal.rb'
    autoload :ImageRegionCreateEntry,                             '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_region_create_entry.rb'
    autoload :ImageRegionProposal,                                '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_region_proposal.rb'
    autoload :ImageRegionCreateResult,                            '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_region_create_result.rb'
    autoload :ImageUrl,                                           '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_url.rb'
    autoload :ImageTag,                                           '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_tag.rb'
    autoload :Prediction,                                         '2.2/generated/azure_cognitiveservices_customvisiontraining/models/prediction.rb'
    autoload :Image,                                              '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image.rb'
    autoload :ImagePrediction,                                    '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_prediction.rb'
    autoload :ImageCreateSummary,                                 '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_create_summary.rb'
    autoload :PredictionQueryTag,                                 '2.2/generated/azure_cognitiveservices_customvisiontraining/models/prediction_query_tag.rb'
    autoload :ImageFileCreateEntry,                               '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_file_create_entry.rb'
    autoload :PredictionQueryToken,                               '2.2/generated/azure_cognitiveservices_customvisiontraining/models/prediction_query_token.rb'
    autoload :ImageUrlCreateEntry,                                '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_url_create_entry.rb'
    autoload :StoredImagePrediction,                              '2.2/generated/azure_cognitiveservices_customvisiontraining/models/stored_image_prediction.rb'
    autoload :ImageIdCreateEntry,                                 '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_id_create_entry.rb'
    autoload :PredictionQueryResult,                              '2.2/generated/azure_cognitiveservices_customvisiontraining/models/prediction_query_result.rb'
    autoload :ImageTagCreateSummary,                              '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_tag_create_summary.rb'
    autoload :TagPerformance,                                     '2.2/generated/azure_cognitiveservices_customvisiontraining/models/tag_performance.rb'
    autoload :ImageRegionCreateSummary,                           '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_region_create_summary.rb'
    autoload :IterationPerformance,                               '2.2/generated/azure_cognitiveservices_customvisiontraining/models/iteration_performance.rb'
    autoload :ImageCreateResult,                                  '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_create_result.rb'
    autoload :ImagePerformance,                                   '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_performance.rb'
    autoload :ImageFileCreateBatch,                               '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_file_create_batch.rb'
    autoload :ProjectSettings,                                    '2.2/generated/azure_cognitiveservices_customvisiontraining/models/project_settings.rb'
    autoload :ImageTagCreateEntry,                                '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_tag_create_entry.rb'
    autoload :Project,                                            '2.2/generated/azure_cognitiveservices_customvisiontraining/models/project.rb'
    autoload :ImageRegion,                                        '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_region.rb'
    autoload :Iteration,                                          '2.2/generated/azure_cognitiveservices_customvisiontraining/models/iteration.rb'
    autoload :ImageUrlCreateBatch,                                '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_url_create_batch.rb'
    autoload :Export,                                             '2.2/generated/azure_cognitiveservices_customvisiontraining/models/export.rb'
    autoload :Region,                                             '2.2/generated/azure_cognitiveservices_customvisiontraining/models/region.rb'
    autoload :Tag,                                                '2.2/generated/azure_cognitiveservices_customvisiontraining/models/tag.rb'
    autoload :ImageRegionCreateBatch,                             '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_region_create_batch.rb'
    autoload :DomainType,                                         '2.2/generated/azure_cognitiveservices_customvisiontraining/models/domain_type.rb'
    autoload :ImageCreateStatus,                                  '2.2/generated/azure_cognitiveservices_customvisiontraining/models/image_create_status.rb'
    autoload :OrderBy,                                            '2.2/generated/azure_cognitiveservices_customvisiontraining/models/order_by.rb'
    autoload :Classifier,                                         '2.2/generated/azure_cognitiveservices_customvisiontraining/models/classifier.rb'
    autoload :ExportPlatformModel,                                '2.2/generated/azure_cognitiveservices_customvisiontraining/models/export_platform_model.rb'
    autoload :ExportStatusModel,                                  '2.2/generated/azure_cognitiveservices_customvisiontraining/models/export_status_model.rb'
    autoload :ExportFlavorModel,                                  '2.2/generated/azure_cognitiveservices_customvisiontraining/models/export_flavor_model.rb'
    autoload :TagType,                                            '2.2/generated/azure_cognitiveservices_customvisiontraining/models/tag_type.rb'
  end
end