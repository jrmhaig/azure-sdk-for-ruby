# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_luisauthoring'

module Azure::LuisAuthoring::Profiles::Latest
  Features = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Features
  Examples = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Examples
  Model = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Model
  Apps = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Apps
  Versions = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Versions
  Train = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Train
  Permissions = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Permissions
  Pattern = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Pattern
  Settings = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Settings
  AzureAccounts = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::AzureAccounts

  module Models
    ChildEntity = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ChildEntity
    EntityLabelObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityLabelObject
    ExplicitListItem = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ExplicitListItem
    PrebuiltDomainCreateBaseObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainCreateBaseObject
    ModelInfoResponse = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelInfoResponse
    PrebuiltDomainModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainModelCreateObject
    ChildEntityModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ChildEntityModelCreateObject
    HierarchicalEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::HierarchicalEntityExtractor
    EntityModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityModelUpdateObject
    CompositeEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CompositeEntityExtractor
    ApplicationSettingUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationSettingUpdateObject
    ClosedListEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedListEntityExtractor
    ExampleLabelObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ExampleLabelObject
    PrebuiltEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltEntityExtractor
    SubClosedList = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::SubClosedList
    CompositeChildModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CompositeChildModelCreateObject
    ApplicationUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationUpdateObject
    CustomPrebuiltModel = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CustomPrebuiltModel
    ClosedList = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedList
    HierarchicalChildModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::HierarchicalChildModelUpdateObject
    ClosedListModelPatchObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedListModelPatchObject
    EntityExtractor = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityExtractor
    ModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelCreateObject
    NDepthEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::NDepthEntityExtractor
    JSONUtterance = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JSONUtterance
    AzureAccountInfoObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::AzureAccountInfoObject
    ClosedListModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedListModelUpdateObject
    AppVersionSettingObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::AppVersionSettingObject
    VersionInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::VersionInfo
    FeaturesResponseObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::FeaturesResponseObject
    PhraselistUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PhraselistUpdateObject
    FeatureInfoObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::FeatureInfoObject
    JsonModelFeatureInformation = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JsonModelFeatureInformation
    LabelExampleResponse = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::LabelExampleResponse
    HierarchicalModel = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::HierarchicalModel
    OperationStatus = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::OperationStatus
    PatternAny = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternAny
    BatchLabelExample = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::BatchLabelExample
    PrebuiltEntity = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltEntity
    ApplicationInfoResponse = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationInfoResponse
    LuisApp = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::LuisApp
    ModelFeatureInformation = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelFeatureInformation
    IntentPrediction = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::IntentPrediction
    EndpointInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EndpointInfo
    LabeledUtterance = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::LabeledUtterance
    AvailableCulture = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::AvailableCulture
    EntitiesSuggestionExample = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntitiesSuggestionExample
    ApplicationSettings = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationSettings
    ModelInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelInfo
    PublishSettings = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PublishSettings
    ApplicationCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationCreateObject
    AvailablePrebuiltEntityModel = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::AvailablePrebuiltEntityModel
    CompositeEntityModel = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CompositeEntityModel
    EnqueueTrainingResponse = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EnqueueTrainingResponse
    JSONEntity = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JSONEntity
    ModelTrainingDetails = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelTrainingDetails
    PhraselistCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PhraselistCreateObject
    ModelTrainingInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelTrainingInfo
    JSONRegexFeature = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JSONRegexFeature
    UserAccessList = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::UserAccessList
    JSONModelFeature = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JSONModelFeature
    UserCollaborator = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::UserCollaborator
    ModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelUpdateObject
    CollaboratorsArray = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CollaboratorsArray
    TaskUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::TaskUpdateObject
    ErrorResponse = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ErrorResponse
    JsonChild = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JsonChild
    OperationError = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::OperationError
    RegexEntity = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::RegexEntity
    PrebuiltDomainItem = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainItem
    EntityLabel = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityLabel
    PrebuiltDomain = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomain
    IntentsSuggestionExample = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::IntentsSuggestionExample
    EntityRoleCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityRoleCreateObject
    EntityRole = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityRole
    RegexModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::RegexModelCreateObject
    EntityModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityModelCreateObject
    PatternAnyModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternAnyModelCreateObject
    LabelTextObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::LabelTextObject
    WordListObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::WordListObject
    ExplicitListItemCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ExplicitListItemCreateObject
    ClosedListModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedListModelCreateObject
    RegexModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::RegexModelUpdateObject
    ApplicationPublishObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationPublishObject
    PatternAnyModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternAnyModelUpdateObject
    EntityPrediction = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityPrediction
    EntityRoleUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityRoleUpdateObject
    PrebuiltDomainCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainCreateObject
    ExplicitListItemUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ExplicitListItemUpdateObject
    WordListBaseUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::WordListBaseUpdateObject
    PatternRuleCreateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternRuleCreateObject
    PatternRule = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternRule
    PatternRuleUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternRuleUpdateObject
    PublishSettingUpdateObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PublishSettingUpdateObject
    RegexEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::RegexEntityExtractor
    PersonalAssistantsResponse = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PersonalAssistantsResponse
    PatternAnyEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternAnyEntityExtractor
    PrebuiltDomainObject = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainObject
    PatternRuleInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternRuleInfo
    SubClosedListResponse = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::SubClosedListResponse
    EntityModelInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityModelInfo
    HierarchicalChildEntity = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::HierarchicalChildEntity
    IntentClassifier = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::IntentClassifier
    PhraseListFeatureInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PhraseListFeatureInfo
    PatternFeatureInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternFeatureInfo
    ProductionOrStagingEndpointInfo = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ProductionOrStagingEndpointInfo
    TrainingStatus = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::TrainingStatus
    OperationStatusType = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::OperationStatusType
  end

  #
  # LuisAuthoringDataClass
  #
  class LuisAuthoringDataClass
    attr_reader :features, :examples, :model, :apps, :versions, :train, :permissions, :pattern, :settings, :azure_accounts, :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::CognitiveServices::LuisAuthoring::V3_0_preview::LuisAuthoringClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @features = @client_0.features
      @examples = @client_0.examples
      @model = @client_0.model
      @apps = @client_0.apps
      @versions = @client_0.versions
      @train = @client_0.train
      @permissions = @client_0.permissions
      @pattern = @client_0.pattern
      @settings = @client_0.settings
      @azure_accounts = @client_0.azure_accounts

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/LuisAuthoring'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def child_entity
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ChildEntity
    end
    def entity_label_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityLabelObject
    end
    def explicit_list_item
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ExplicitListItem
    end
    def prebuilt_domain_create_base_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainCreateBaseObject
    end
    def model_info_response
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelInfoResponse
    end
    def prebuilt_domain_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainModelCreateObject
    end
    def child_entity_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ChildEntityModelCreateObject
    end
    def hierarchical_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::HierarchicalEntityExtractor
    end
    def entity_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityModelUpdateObject
    end
    def composite_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CompositeEntityExtractor
    end
    def application_setting_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationSettingUpdateObject
    end
    def closed_list_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedListEntityExtractor
    end
    def example_label_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ExampleLabelObject
    end
    def prebuilt_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltEntityExtractor
    end
    def sub_closed_list
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::SubClosedList
    end
    def composite_child_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CompositeChildModelCreateObject
    end
    def application_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationUpdateObject
    end
    def custom_prebuilt_model
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CustomPrebuiltModel
    end
    def closed_list
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedList
    end
    def hierarchical_child_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::HierarchicalChildModelUpdateObject
    end
    def closed_list_model_patch_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedListModelPatchObject
    end
    def entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityExtractor
    end
    def model_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelCreateObject
    end
    def ndepth_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::NDepthEntityExtractor
    end
    def jsonutterance
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JSONUtterance
    end
    def azure_account_info_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::AzureAccountInfoObject
    end
    def closed_list_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedListModelUpdateObject
    end
    def app_version_setting_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::AppVersionSettingObject
    end
    def version_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::VersionInfo
    end
    def features_response_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::FeaturesResponseObject
    end
    def phraselist_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PhraselistUpdateObject
    end
    def feature_info_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::FeatureInfoObject
    end
    def json_model_feature_information
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JsonModelFeatureInformation
    end
    def label_example_response
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::LabelExampleResponse
    end
    def hierarchical_model
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::HierarchicalModel
    end
    def operation_status
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::OperationStatus
    end
    def pattern_any
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternAny
    end
    def batch_label_example
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::BatchLabelExample
    end
    def prebuilt_entity
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltEntity
    end
    def application_info_response
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationInfoResponse
    end
    def luis_app
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::LuisApp
    end
    def model_feature_information
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelFeatureInformation
    end
    def intent_prediction
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::IntentPrediction
    end
    def endpoint_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EndpointInfo
    end
    def labeled_utterance
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::LabeledUtterance
    end
    def available_culture
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::AvailableCulture
    end
    def entities_suggestion_example
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntitiesSuggestionExample
    end
    def application_settings
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationSettings
    end
    def model_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelInfo
    end
    def publish_settings
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PublishSettings
    end
    def application_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationCreateObject
    end
    def available_prebuilt_entity_model
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::AvailablePrebuiltEntityModel
    end
    def composite_entity_model
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CompositeEntityModel
    end
    def enqueue_training_response
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EnqueueTrainingResponse
    end
    def jsonentity
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JSONEntity
    end
    def model_training_details
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelTrainingDetails
    end
    def phraselist_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PhraselistCreateObject
    end
    def model_training_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelTrainingInfo
    end
    def jsonregex_feature
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JSONRegexFeature
    end
    def user_access_list
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::UserAccessList
    end
    def jsonmodel_feature
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JSONModelFeature
    end
    def user_collaborator
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::UserCollaborator
    end
    def model_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ModelUpdateObject
    end
    def collaborators_array
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::CollaboratorsArray
    end
    def task_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::TaskUpdateObject
    end
    def error_response
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ErrorResponse
    end
    def json_child
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::JsonChild
    end
    def operation_error
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::OperationError
    end
    def regex_entity
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::RegexEntity
    end
    def prebuilt_domain_item
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainItem
    end
    def entity_label
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityLabel
    end
    def prebuilt_domain
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomain
    end
    def intents_suggestion_example
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::IntentsSuggestionExample
    end
    def entity_role_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityRoleCreateObject
    end
    def entity_role
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityRole
    end
    def regex_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::RegexModelCreateObject
    end
    def entity_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityModelCreateObject
    end
    def pattern_any_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternAnyModelCreateObject
    end
    def label_text_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::LabelTextObject
    end
    def word_list_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::WordListObject
    end
    def explicit_list_item_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ExplicitListItemCreateObject
    end
    def closed_list_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ClosedListModelCreateObject
    end
    def regex_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::RegexModelUpdateObject
    end
    def application_publish_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ApplicationPublishObject
    end
    def pattern_any_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternAnyModelUpdateObject
    end
    def entity_prediction
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityPrediction
    end
    def entity_role_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityRoleUpdateObject
    end
    def prebuilt_domain_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainCreateObject
    end
    def explicit_list_item_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ExplicitListItemUpdateObject
    end
    def word_list_base_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::WordListBaseUpdateObject
    end
    def pattern_rule_create_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternRuleCreateObject
    end
    def pattern_rule
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternRule
    end
    def pattern_rule_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternRuleUpdateObject
    end
    def publish_setting_update_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PublishSettingUpdateObject
    end
    def regex_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::RegexEntityExtractor
    end
    def personal_assistants_response
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PersonalAssistantsResponse
    end
    def pattern_any_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternAnyEntityExtractor
    end
    def prebuilt_domain_object
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PrebuiltDomainObject
    end
    def pattern_rule_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternRuleInfo
    end
    def sub_closed_list_response
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::SubClosedListResponse
    end
    def entity_model_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::EntityModelInfo
    end
    def hierarchical_child_entity
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::HierarchicalChildEntity
    end
    def intent_classifier
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::IntentClassifier
    end
    def phrase_list_feature_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PhraseListFeatureInfo
    end
    def pattern_feature_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::PatternFeatureInfo
    end
    def production_or_staging_endpoint_info
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::ProductionOrStagingEndpointInfo
    end
    def training_status
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::TrainingStatus
    end
    def operation_status_type
      Azure::CognitiveServices::LuisAuthoring::V3_0_preview::Models::OperationStatusType
    end
  end
end
