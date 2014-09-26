# Author::    Paul Stack  (mailto:pstack@opentable.com)
# Copyright:: Copyright (c) 2013 OpenTable Inc
# License::   MIT
#

# == Class: `aws_powershell::params`
#
# This private class is meant to be called from `aws_powrshell`.
# It sets the vairables according to platform
#
class aws_powershell::params {
  $package_name     = 'AWSToolsAndSDKForNet.msi'
  $package_source   = 'http://sdk-for-net.amazonwebservices.com/latest'
  $download_dir     = 'c:\temp'
}
