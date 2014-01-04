#
# Cookbook Name:: libvpx
# Library:: helpers
#
# Copyright 2014, David Joos
#

module Libvpx
    module Helpers
        def libvpx_packages
        [
            "libvpx-dev", 
            "libvpx0"
        ]
        end
    end
end

class Chef::Recipe
    include Libvpx::Helpers
end