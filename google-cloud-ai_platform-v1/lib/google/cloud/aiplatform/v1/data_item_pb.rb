# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/data_item.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/data_item.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.DataItem" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      map :labels, :string, :string, 3
      optional :payload, :message, 4, "google.protobuf.Value"
      optional :etag, :string, 7
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        DataItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DataItem").msgclass
      end
    end
  end
end
