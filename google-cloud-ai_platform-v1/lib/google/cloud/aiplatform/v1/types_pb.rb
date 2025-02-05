# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/types.proto

require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/types.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.BoolArray" do
      repeated :values, :bool, 1
    end
    add_message "google.cloud.aiplatform.v1.DoubleArray" do
      repeated :values, :double, 1
    end
    add_message "google.cloud.aiplatform.v1.Int64Array" do
      repeated :values, :int64, 1
    end
    add_message "google.cloud.aiplatform.v1.StringArray" do
      repeated :values, :string, 1
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        BoolArray = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BoolArray").msgclass
        DoubleArray = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DoubleArray").msgclass
        Int64Array = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Int64Array").msgclass
        StringArray = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StringArray").msgclass
      end
    end
  end
end
