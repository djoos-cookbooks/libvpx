#
# Cookbook Name:: libvpx
# Recipe:: package
#
# Copyright 2014, David Joos
#

libvpx_packages.each do |pkg|
    package pkg do
        action :upgrade
    end
end