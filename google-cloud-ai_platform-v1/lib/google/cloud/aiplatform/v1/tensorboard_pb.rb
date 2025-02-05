# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/tensorboard.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/tensorboard.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Tensorboard" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :encryption_spec, :message, 11, "google.cloud.aiplatform.v1.EncryptionSpec"
      optional :blob_storage_path_prefix, :string, 10
      optional :run_count, :int32, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      map :labels, :string, :string, 8
      optional :etag, :string, 9
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Tensorboard = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Tensorboard").msgclass
      end
    end
  end
end
