#
# Cookbook Name:: libvpx
# Attributes:: default
#
# Copyright 2014, David Joos
#

default['libvpx']['install_method'] = :source
default['libvpx']['git_repository'] = "http://git.chromium.org/webm/libvpx.git"
default['libvpx']['prefix'] = "/usr/local"

# JW 07-06-11: Hash of commit or a HEAD should be used - not a tag. Sync action of Git
# provider will always attempt to update the git clone if a tag is used.
default['libvpx']['git_revision'] = "0491c2cfc89cded04de386ae691654c7653aac9b" # v0.9.6