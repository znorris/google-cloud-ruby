# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networksecurity/v1beta1/tls.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/networksecurity/v1beta1/tls.proto", :syntax => :proto3) do
    add_message "google.cloud.networksecurity.v1beta1.GrpcEndpoint" do
      optional :target_uri, :string, 1
    end
    add_message "google.cloud.networksecurity.v1beta1.ValidationCA" do
      oneof :type do
        optional :grpc_endpoint, :message, 2, "google.cloud.networksecurity.v1beta1.GrpcEndpoint"
        optional :certificate_provider_instance, :message, 3, "google.cloud.networksecurity.v1beta1.CertificateProviderInstance"
      end
    end
    add_message "google.cloud.networksecurity.v1beta1.CertificateProviderInstance" do
      optional :plugin_instance, :string, 1
    end
    add_message "google.cloud.networksecurity.v1beta1.CertificateProvider" do
      oneof :type do
        optional :grpc_endpoint, :message, 2, "google.cloud.networksecurity.v1beta1.GrpcEndpoint"
        optional :certificate_provider_instance, :message, 3, "google.cloud.networksecurity.v1beta1.CertificateProviderInstance"
      end
    end
  end
end

module Google
  module Cloud
    module NetworkSecurity
      module V1beta1
        GrpcEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.GrpcEndpoint").msgclass
        ValidationCA = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.ValidationCA").msgclass
        CertificateProviderInstance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.CertificateProviderInstance").msgclass
        CertificateProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.CertificateProvider").msgclass
      end
    end
  end
end
