# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module DataCatalog
      module V1
        # A taxonomy is a collection of hierarchical policy tags that classify data
        # along a common axis.
        #
        # For example, a "data sensitivity" taxonomy might contain the following policy
        # tags:
        #
        # ```
        # + PII
        #   + Account number
        #   + Age
        #   + SSN
        #   + Zipcode
        # + Financials
        #   + Revenue
        # ```
        #
        # A "data origin" taxonomy might contain the following policy tags:
        #
        # ```
        # + User data
        # + Employee data
        # + Partner data
        # + Public data
        # ```
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of this taxonomy in URL format.
        #
        #     Note: Policy tag manager generates unique taxonomy IDs.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. User-defined name of this taxonomy.
        #
        #     The name can't start or end with spaces, must contain only Unicode letters,
        #     numbers, underscores, dashes, and spaces, and be at most 200 bytes long
        #     when encoded in UTF-8.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of this taxonomy. If not set, defaults to empty.
        #
        #     The description must contain only Unicode characters, tabs, newlines,
        #     carriage returns, and page breaks, and be at most 2000 bytes long when
        #     encoded in UTF-8.
        # @!attribute [r] policy_tag_count
        #   @return [::Integer]
        #     Output only. Number of policy tags in this taxonomy.
        # @!attribute [r] taxonomy_timestamps
        #   @return [::Google::Cloud::DataCatalog::V1::SystemTimestamps]
        #     Output only. Creation and modification timestamps of this taxonomy.
        # @!attribute [rw] activated_policy_types
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::Taxonomy::PolicyType>]
        #     Optional. A list of policy types that are activated for this taxonomy. If not set,
        #     defaults to an empty list.
        class Taxonomy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Defines policy types where the policy tags can be used for.
          module PolicyType
            # Unspecified policy type.
            POLICY_TYPE_UNSPECIFIED = 0

            # Fine-grained access control policy that enables access control on
            # tagged sub-resources.
            FINE_GRAINED_ACCESS_CONTROL = 1
          end
        end

        # Denotes one policy tag in a taxonomy, for example, SSN.
        #
        # Policy tags can be defined in a hierarchy. For example:
        #
        # ```
        # + Geolocation
        #   + LatLong
        #   + City
        #   + ZipCode
        # ```
        #
        # Where the "Geolocation" policy tag contains three children.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of this policy tag in the URL format.
        #
        #     The policy tag manager generates unique taxonomy IDs and policy tag IDs.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. User-defined name of this policy tag.
        #
        #     The name can't start or end with spaces and must be unique within the
        #     parent taxonomy, contain only Unicode letters, numbers, underscores, dashes
        #     and spaces, and be at most 200 bytes long when encoded in UTF-8.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of this policy tag. If not set, defaults to empty.
        #
        #     The description must contain only Unicode characters,
        #     tabs, newlines, carriage returns and page breaks, and be at most 2000 bytes
        #     long when encoded in UTF-8.
        # @!attribute [rw] parent_policy_tag
        #   @return [::String]
        #     Resource name of this policy tag's parent policy tag. If empty, this is a
        #     top level tag. If not set, defaults to an empty string.
        #
        #     For example, for the "LatLong" policy tag in the example above, this field
        #     contains the resource name of the "Geolocation" policy tag, and, for
        #     "Geolocation", this field is empty.
        # @!attribute [r] child_policy_tags
        #   @return [::Array<::String>]
        #     Output only. Resource names of child policy tags of this policy tag.
        class PolicyTag
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#create_taxonomy CreateTaxonomy}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the project that the taxonomy will belong to.
        # @!attribute [rw] taxonomy
        #   @return [::Google::Cloud::DataCatalog::V1::Taxonomy]
        #     The taxonomy to create.
        class CreateTaxonomyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#delete_taxonomy DeleteTaxonomy}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the taxonomy to delete.
        #
        #     Note: All policy tags in this taxonomy are also deleted.
        class DeleteTaxonomyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#update_taxonomy UpdateTaxonomy}.
        # @!attribute [rw] taxonomy
        #   @return [::Google::Cloud::DataCatalog::V1::Taxonomy]
        #     The taxonomy to update. You can update only its description, display name,
        #     and activated policy types.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Specifies fields to update. If not set, defaults to all fields you can
        #     update.
        #
        #     For more information, see [FieldMask]
        #     (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask).
        class UpdateTaxonomyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#list_taxonomies ListTaxonomies}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the project to list the taxonomies of.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return. Must be a value between 1 and 1000
        #     inclusively. If not set, defaults to 50.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The pagination token of the next results page. If not set,
        #     the first page is returned.
        #
        #     The token is returned in the response to a previous list request.
        class ListTaxonomiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#list_taxonomies ListTaxonomies}.
        # @!attribute [rw] taxonomies
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::Taxonomy>]
        #     Taxonomies that the project contains.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Pagination token of the next results page. Empty if there are no
        #     more results in the list.
        class ListTaxonomiesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#get_taxonomy GetTaxonomy}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the taxonomy to get.
        class GetTaxonomyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#create_policy_tag CreatePolicyTag}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the taxonomy that the policy tag will belong to.
        # @!attribute [rw] policy_tag
        #   @return [::Google::Cloud::DataCatalog::V1::PolicyTag]
        #     The policy tag to create.
        class CreatePolicyTagRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#delete_policy_tag DeletePolicyTag}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the policy tag to delete.
        #
        #     Note: All of its descendant policy tags are also deleted.
        class DeletePolicyTagRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#update_policy_tag UpdatePolicyTag}.
        # @!attribute [rw] policy_tag
        #   @return [::Google::Cloud::DataCatalog::V1::PolicyTag]
        #     The policy tag to update. You can update only its description, display
        #     name, and parent policy tag fields.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Specifies the fields to update.
        #
        #     You can update only display name, description, and parent policy tag.
        #     If not set, defaults to all updatable fields.
        #     For more information, see [FieldMask]
        #     (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask).
        class UpdatePolicyTagRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#list_policy_tags ListPolicyTags}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the taxonomy to list the policy tags of.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return. Must be a value between 1 and 1000
        #     inclusively.
        #     If not set, defaults to 50.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The pagination token of the next results page. If not set, returns the
        #     first page.
        #
        #     The token is returned in the response to a previous list request.
        class ListPolicyTagsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#list_policy_tags ListPolicyTags}.
        # @!attribute [rw] policy_tags
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::PolicyTag>]
        #     The policy tags that belong to the taxonomy.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Pagination token of the next results page. Empty if there are no
        #     more results in the list.
        class ListPolicyTagsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client#get_policy_tag GetPolicyTag}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the policy tag.
        class GetPolicyTagRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
