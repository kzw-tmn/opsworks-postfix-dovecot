# encoding: UTF-8
#
# Cookbook Name:: dovecot
# Library:: auth
# Author:: Xabier de Zuazo (<xabier@onddo.com>)
# Copyright:: Copyright (c) 2013-2014 Onddo Labs, SL. (www.onddo.com)
# License:: Apache License, Version 2.0
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

module Dovecot
  # Helpers module to check if the configuration contains a valid user or passdb
  module Auth
    def self.authdb?(type, auth)
      auth.is_a?(Hash) && auth.length > 0 &&
        (auth[type].is_a?(Hash) || auth[type].is_a?(Array))
    end

    def self.passdb?(auth)
      authdb?('passdb', auth)
    end

    def self.userdb?(auth)
      authdb?('userdb', auth)
    end
  end
end
