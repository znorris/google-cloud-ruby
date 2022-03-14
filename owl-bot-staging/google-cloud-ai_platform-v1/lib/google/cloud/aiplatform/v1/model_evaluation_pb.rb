# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/model_evaluation.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/model_evaluation.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.ModelEvaluation" do
      optional :name, :string, 1
      optional :metrics_schema_uri, :string, 2
      optional :metrics, :message, 3, "google.protobuf.Value"
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      repeated :slice_dimensions, :string, 5
      optional :model_explanation, :message, 8, "google.cloud.aiplatform.v1.ModelExplanation"
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        ModelEvaluation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelEvaluation").msgclass
      end
    end
  end
end
