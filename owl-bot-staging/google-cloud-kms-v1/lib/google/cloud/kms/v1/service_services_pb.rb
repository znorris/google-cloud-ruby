# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/kms/v1/service.proto for package 'google.cloud.kms.v1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/kms/v1/service_pb'

module Google
  module Cloud
    module Kms
      module V1
        module KeyManagementService
          # Google Cloud Key Management Service
          #
          # Manages cryptographic keys and operations using those keys. Implements a REST
          # model with the following objects:
          #
          # * [KeyRing][google.cloud.kms.v1.KeyRing]
          # * [CryptoKey][google.cloud.kms.v1.CryptoKey]
          # * [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion]
          # * [ImportJob][google.cloud.kms.v1.ImportJob]
          #
          # If you are using manual gRPC libraries, see
          # [Using gRPC with Cloud KMS](https://cloud.google.com/kms/docs/grpc).
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.kms.v1.KeyManagementService'

            # Lists [KeyRings][google.cloud.kms.v1.KeyRing].
            rpc :ListKeyRings, ::Google::Cloud::Kms::V1::ListKeyRingsRequest, ::Google::Cloud::Kms::V1::ListKeyRingsResponse
            # Lists [CryptoKeys][google.cloud.kms.v1.CryptoKey].
            rpc :ListCryptoKeys, ::Google::Cloud::Kms::V1::ListCryptoKeysRequest, ::Google::Cloud::Kms::V1::ListCryptoKeysResponse
            # Lists [CryptoKeyVersions][google.cloud.kms.v1.CryptoKeyVersion].
            rpc :ListCryptoKeyVersions, ::Google::Cloud::Kms::V1::ListCryptoKeyVersionsRequest, ::Google::Cloud::Kms::V1::ListCryptoKeyVersionsResponse
            # Lists [ImportJobs][google.cloud.kms.v1.ImportJob].
            rpc :ListImportJobs, ::Google::Cloud::Kms::V1::ListImportJobsRequest, ::Google::Cloud::Kms::V1::ListImportJobsResponse
            # Returns metadata for a given [KeyRing][google.cloud.kms.v1.KeyRing].
            rpc :GetKeyRing, ::Google::Cloud::Kms::V1::GetKeyRingRequest, ::Google::Cloud::Kms::V1::KeyRing
            # Returns metadata for a given [CryptoKey][google.cloud.kms.v1.CryptoKey], as well as its
            # [primary][google.cloud.kms.v1.CryptoKey.primary] [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion].
            rpc :GetCryptoKey, ::Google::Cloud::Kms::V1::GetCryptoKeyRequest, ::Google::Cloud::Kms::V1::CryptoKey
            # Returns metadata for a given [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion].
            rpc :GetCryptoKeyVersion, ::Google::Cloud::Kms::V1::GetCryptoKeyVersionRequest, ::Google::Cloud::Kms::V1::CryptoKeyVersion
            # Returns the public key for the given [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion]. The
            # [CryptoKey.purpose][google.cloud.kms.v1.CryptoKey.purpose] must be
            # [ASYMMETRIC_SIGN][google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose.ASYMMETRIC_SIGN] or
            # [ASYMMETRIC_DECRYPT][google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose.ASYMMETRIC_DECRYPT].
            rpc :GetPublicKey, ::Google::Cloud::Kms::V1::GetPublicKeyRequest, ::Google::Cloud::Kms::V1::PublicKey
            # Returns metadata for a given [ImportJob][google.cloud.kms.v1.ImportJob].
            rpc :GetImportJob, ::Google::Cloud::Kms::V1::GetImportJobRequest, ::Google::Cloud::Kms::V1::ImportJob
            # Create a new [KeyRing][google.cloud.kms.v1.KeyRing] in a given Project and Location.
            rpc :CreateKeyRing, ::Google::Cloud::Kms::V1::CreateKeyRingRequest, ::Google::Cloud::Kms::V1::KeyRing
            # Create a new [CryptoKey][google.cloud.kms.v1.CryptoKey] within a [KeyRing][google.cloud.kms.v1.KeyRing].
            #
            # [CryptoKey.purpose][google.cloud.kms.v1.CryptoKey.purpose] and
            # [CryptoKey.version_template.algorithm][google.cloud.kms.v1.CryptoKeyVersionTemplate.algorithm]
            # are required.
            rpc :CreateCryptoKey, ::Google::Cloud::Kms::V1::CreateCryptoKeyRequest, ::Google::Cloud::Kms::V1::CryptoKey
            # Create a new [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] in a [CryptoKey][google.cloud.kms.v1.CryptoKey].
            #
            # The server will assign the next sequential id. If unset,
            # [state][google.cloud.kms.v1.CryptoKeyVersion.state] will be set to
            # [ENABLED][google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState.ENABLED].
            rpc :CreateCryptoKeyVersion, ::Google::Cloud::Kms::V1::CreateCryptoKeyVersionRequest, ::Google::Cloud::Kms::V1::CryptoKeyVersion
            # Import wrapped key material into a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion].
            #
            # All requests must specify a [CryptoKey][google.cloud.kms.v1.CryptoKey]. If a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] is
            # additionally specified in the request, key material will be reimported into
            # that version. Otherwise, a new version will be created, and will be
            # assigned the next sequential id within the [CryptoKey][google.cloud.kms.v1.CryptoKey].
            rpc :ImportCryptoKeyVersion, ::Google::Cloud::Kms::V1::ImportCryptoKeyVersionRequest, ::Google::Cloud::Kms::V1::CryptoKeyVersion
            # Create a new [ImportJob][google.cloud.kms.v1.ImportJob] within a [KeyRing][google.cloud.kms.v1.KeyRing].
            #
            # [ImportJob.import_method][google.cloud.kms.v1.ImportJob.import_method] is required.
            rpc :CreateImportJob, ::Google::Cloud::Kms::V1::CreateImportJobRequest, ::Google::Cloud::Kms::V1::ImportJob
            # Update a [CryptoKey][google.cloud.kms.v1.CryptoKey].
            rpc :UpdateCryptoKey, ::Google::Cloud::Kms::V1::UpdateCryptoKeyRequest, ::Google::Cloud::Kms::V1::CryptoKey
            # Update a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion]'s metadata.
            #
            # [state][google.cloud.kms.v1.CryptoKeyVersion.state] may be changed between
            # [ENABLED][google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState.ENABLED] and
            # [DISABLED][google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState.DISABLED] using this
            # method. See [DestroyCryptoKeyVersion][google.cloud.kms.v1.KeyManagementService.DestroyCryptoKeyVersion] and [RestoreCryptoKeyVersion][google.cloud.kms.v1.KeyManagementService.RestoreCryptoKeyVersion] to
            # move between other states.
            rpc :UpdateCryptoKeyVersion, ::Google::Cloud::Kms::V1::UpdateCryptoKeyVersionRequest, ::Google::Cloud::Kms::V1::CryptoKeyVersion
            # Update the version of a [CryptoKey][google.cloud.kms.v1.CryptoKey] that will be used in [Encrypt][google.cloud.kms.v1.KeyManagementService.Encrypt].
            #
            # Returns an error if called on a key whose purpose is not
            # [ENCRYPT_DECRYPT][google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose.ENCRYPT_DECRYPT].
            rpc :UpdateCryptoKeyPrimaryVersion, ::Google::Cloud::Kms::V1::UpdateCryptoKeyPrimaryVersionRequest, ::Google::Cloud::Kms::V1::CryptoKey
            # Schedule a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] for destruction.
            #
            # Upon calling this method, [CryptoKeyVersion.state][google.cloud.kms.v1.CryptoKeyVersion.state] will be set to
            # [DESTROY_SCHEDULED][google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState.DESTROY_SCHEDULED],
            # and [destroy_time][google.cloud.kms.v1.CryptoKeyVersion.destroy_time] will be set to the time
            # [destroy_scheduled_duration][google.cloud.kms.v1.CryptoKey.destroy_scheduled_duration] in the
            # future. At that time, the [state][google.cloud.kms.v1.CryptoKeyVersion.state] will
            # automatically change to
            # [DESTROYED][google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState.DESTROYED], and the key
            # material will be irrevocably destroyed.
            #
            # Before the [destroy_time][google.cloud.kms.v1.CryptoKeyVersion.destroy_time] is reached,
            # [RestoreCryptoKeyVersion][google.cloud.kms.v1.KeyManagementService.RestoreCryptoKeyVersion] may be called to reverse the process.
            rpc :DestroyCryptoKeyVersion, ::Google::Cloud::Kms::V1::DestroyCryptoKeyVersionRequest, ::Google::Cloud::Kms::V1::CryptoKeyVersion
            # Restore a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] in the
            # [DESTROY_SCHEDULED][google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState.DESTROY_SCHEDULED]
            # state.
            #
            # Upon restoration of the CryptoKeyVersion, [state][google.cloud.kms.v1.CryptoKeyVersion.state]
            # will be set to [DISABLED][google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState.DISABLED],
            # and [destroy_time][google.cloud.kms.v1.CryptoKeyVersion.destroy_time] will be cleared.
            rpc :RestoreCryptoKeyVersion, ::Google::Cloud::Kms::V1::RestoreCryptoKeyVersionRequest, ::Google::Cloud::Kms::V1::CryptoKeyVersion
            # Encrypts data, so that it can only be recovered by a call to [Decrypt][google.cloud.kms.v1.KeyManagementService.Decrypt].
            # The [CryptoKey.purpose][google.cloud.kms.v1.CryptoKey.purpose] must be
            # [ENCRYPT_DECRYPT][google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose.ENCRYPT_DECRYPT].
            rpc :Encrypt, ::Google::Cloud::Kms::V1::EncryptRequest, ::Google::Cloud::Kms::V1::EncryptResponse
            # Decrypts data that was protected by [Encrypt][google.cloud.kms.v1.KeyManagementService.Encrypt]. The [CryptoKey.purpose][google.cloud.kms.v1.CryptoKey.purpose]
            # must be [ENCRYPT_DECRYPT][google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose.ENCRYPT_DECRYPT].
            rpc :Decrypt, ::Google::Cloud::Kms::V1::DecryptRequest, ::Google::Cloud::Kms::V1::DecryptResponse
            # Signs data using a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] with [CryptoKey.purpose][google.cloud.kms.v1.CryptoKey.purpose]
            # ASYMMETRIC_SIGN, producing a signature that can be verified with the public
            # key retrieved from [GetPublicKey][google.cloud.kms.v1.KeyManagementService.GetPublicKey].
            rpc :AsymmetricSign, ::Google::Cloud::Kms::V1::AsymmetricSignRequest, ::Google::Cloud::Kms::V1::AsymmetricSignResponse
            # Decrypts data that was encrypted with a public key retrieved from
            # [GetPublicKey][google.cloud.kms.v1.KeyManagementService.GetPublicKey] corresponding to a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] with
            # [CryptoKey.purpose][google.cloud.kms.v1.CryptoKey.purpose] ASYMMETRIC_DECRYPT.
            rpc :AsymmetricDecrypt, ::Google::Cloud::Kms::V1::AsymmetricDecryptRequest, ::Google::Cloud::Kms::V1::AsymmetricDecryptResponse
            # Signs data using a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] with [CryptoKey.purpose][google.cloud.kms.v1.CryptoKey.purpose]
            # MAC, producing a tag that can be verified by another source with the
            # same key.
            rpc :MacSign, ::Google::Cloud::Kms::V1::MacSignRequest, ::Google::Cloud::Kms::V1::MacSignResponse
            # Verifies MAC tag using a [CryptoKeyVersion][google.cloud.kms.v1.CryptoKeyVersion] with [CryptoKey.purpose][google.cloud.kms.v1.CryptoKey.purpose]
            # MAC, and returns a response that indicates whether or not the verification
            # was successful.
            rpc :MacVerify, ::Google::Cloud::Kms::V1::MacVerifyRequest, ::Google::Cloud::Kms::V1::MacVerifyResponse
            # Generate random bytes using the Cloud KMS randomness source in the provided
            # location.
            rpc :GenerateRandomBytes, ::Google::Cloud::Kms::V1::GenerateRandomBytesRequest, ::Google::Cloud::Kms::V1::GenerateRandomBytesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
