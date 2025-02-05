# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/artifact.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/value_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/artifact.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Artifact" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :uri, :string, 6
      optional :etag, :string, 9
      map :labels, :string, :string, 10
      optional :create_time, :message, 11, "google.protobuf.Timestamp"
      optional :update_time, :message, 12, "google.protobuf.Timestamp"
      optional :state, :enum, 13, "google.cloud.aiplatform.v1.Artifact.State"
      optional :schema_title, :string, 14
      optional :schema_version, :string, 15
      optional :metadata, :message, 16, "google.protobuf.Struct"
      optional :description, :string, 17
    end
    add_enum "google.cloud.aiplatform.v1.Artifact.State" do
      value :STATE_UNSPECIFIED, 0
      value :PENDING, 1
      value :LIVE, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Artifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Artifact").msgclass
        Artifact::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Artifact.State").enummodule
      end
    end
  end
end
