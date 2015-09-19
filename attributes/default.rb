#
# Cookbook Name:: libvpx
# Attributes:: default
#
# Copyright 2014-2015, Escape Studios
#

default['libvpx']['install_method'] = :source
default['libvpx']['git_repository'] = 'https://chromium.googlesource.com/webm/libvpx'
default['libvpx']['prefix'] = '/usr/local'
default['libvpx']['compile_flags'] = []
default['libvpx']['git_revision'] = 'HEAD'
default['libvpx']['packages'] = ['libvpx-dev', 'libvpx0']
