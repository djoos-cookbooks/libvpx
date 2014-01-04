#
# Cookbook Name:: libvpx
# Recipe:: default
#
# Copyright 2014, David Joos
#

case node['libvpx']['install_method']
    when :source
        include_recipe "libvpx::source"
    when :package
        include_recipe "libvpx::package"
end