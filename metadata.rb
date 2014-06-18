name             "libvpx"
maintainer       "Escape Studios"
maintainer_email "dev@escapestudios.com"
license          "MIT"
description      "Installs/Configures libvpx"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.3"

supports "ubuntu"

depends "git"
depends "build-essential"
depends "yasm"