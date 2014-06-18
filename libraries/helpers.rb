#
# Cookbook Name:: libvpx
# Library:: helpers
#
# Copyright 2014, Escape Studios
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