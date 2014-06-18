#
# Cookbook Name:: libvpx
# Recipe:: source
#
# Copyright 2014, Escape Studios
#

include_recipe "build-essential"
include_recipe "git"
include_recipe "yasm"

libvpx_packages.each do |pkg|
    package pkg do
        action :purge
    end
end

creates_libvpx = "#{node['libvpx']['prefix']}/bin/vpxenc"

file "#{creates_libvpx}" do
    action :nothing
end

git "#{Chef::Config[:file_cache_path]}/libvpx" do
    repository node['libvpx']['git_repository']
    reference node['libvpx']['git_revision']
    action :sync
    notifies :delete, "file[#{creates_libvpx}]", :immediately
end

bash "compile_libvpx" do
    cwd "#{Chef::Config[:file_cache_path]}/libvpx"
    code <<-EOH
        ./configure --prefix=#{node['libvpx']['prefix']}
        make clean && make && make install
    EOH
    creates "#{creates_libvpx}"
end