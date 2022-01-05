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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/area120/tables/version"

require "googleauth"

module Google
  module Area120
    module Tables
      ##
      # Create a new client object for TablesService.
      #
      # By default, this returns an instance of
      # [Google::Area120::Tables::V1alpha1::TablesService::Client](https://googleapis.dev/ruby/google-area120-tables-v1alpha1/latest/Google/Area120/Tables/V1alpha1/TablesService/Client.html)
      # for version V1alpha1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the TablesService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About TablesService
      #
      # The Tables Service provides an API for reading and updating tables.
      # It defines the following resource model:
      #
      # - The API has a collection of Table
      #   resources, named `tables/*`
      #
      # - Each Table has a collection of Row
      #   resources, named `tables/*/rows/*`
      #
      # - The API has a collection of
      #   Workspace
      #   resources, named `workspaces/*`.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1alpha1`.
      # @return [TablesService::Client] A client object for the specified version.
      #
      def self.tables_service version: :v1alpha1, &block
        require "google/area120/tables/#{version.to_s.downcase}"

        package_name = Google::Area120::Tables
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Area120::Tables.const_get package_name
        package_module.const_get(:TablesService).const_get(:Client).new(&block)
      end
    end
  end
end

helper_path = ::File.join __dir__, "tables", "helpers.rb"
require "google/area120/tables/helpers" if ::File.file? helper_path
