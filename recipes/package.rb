#
# Cookbook Name:: libvpx
# Recipe:: package
#
# Copyright 2014-2015, Escape Studios
#

node['libvpx']['packages'].each do |pkg|
  package pkg do
    action :upgrade
  end
end
