# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/endpoint.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/cloud/aiplatform/v1/io_pb'
require 'google/cloud/aiplatform/v1/machine_resources_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/endpoint.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Endpoint" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      repeated :deployed_models, :message, 4, "google.cloud.aiplatform.v1.DeployedModel"
      map :traffic_split, :string, :int32, 5
      optional :etag, :string, 6
      map :labels, :string, :string, 7
      optional :create_time, :message, 8, "google.protobuf.Timestamp"
      optional :update_time, :message, 9, "google.protobuf.Timestamp"
      optional :encryption_spec, :message, 10, "google.cloud.aiplatform.v1.EncryptionSpec"
      optional :network, :string, 13
      optional :enable_private_service_connect, :bool, 17
      optional :model_deployment_monitoring_job, :string, 14
      optional :predict_request_response_logging_config, :message, 18, "google.cloud.aiplatform.v1.PredictRequestResponseLoggingConfig"
    end
    add_message "google.cloud.aiplatform.v1.DeployedModel" do
      optional :id, :string, 1
      optional :model, :string, 2
      optional :display_name, :string, 3
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :explanation_spec, :message, 9, "google.cloud.aiplatform.v1.ExplanationSpec"
      optional :service_account, :string, 11
      optional :disable_container_logging, :bool, 15
      optional :enable_access_logging, :bool, 13
      optional :private_endpoints, :message, 14, "google.cloud.aiplatform.v1.PrivateEndpoints"
      oneof :prediction_resources do
        optional :dedicated_resources, :message, 7, "google.cloud.aiplatform.v1.DedicatedResources"
        optional :automatic_resources, :message, 8, "google.cloud.aiplatform.v1.AutomaticResources"
      end
    end
    add_message "google.cloud.aiplatform.v1.PrivateEndpoints" do
      optional :predict_http_uri, :string, 1
      optional :explain_http_uri, :string, 2
      optional :health_http_uri, :string, 3
      optional :service_attachment, :string, 4
    end
    add_message "google.cloud.aiplatform.v1.PredictRequestResponseLoggingConfig" do
      optional :enabled, :bool, 1
      optional :sampling_rate, :double, 2
      optional :bigquery_destination, :message, 3, "google.cloud.aiplatform.v1.BigQueryDestination"
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Endpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Endpoint").msgclass
        DeployedModel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployedModel").msgclass
        PrivateEndpoints = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PrivateEndpoints").msgclass
        PredictRequestResponseLoggingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictRequestResponseLoggingConfig").msgclass
      end
    end
  end
end
