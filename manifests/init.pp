# Author::    Paul Stack  (mailto:pstack@opentable.com)
# Copyright:: Copyright (c) 2013 OpenTable Inc
# License::   MIT

# == Class: `aws_powershell`
#
# === Requirements/Dependencies
#
# === Parameters
#
# [*package_name*] The name of the msi package to download
#
# [*package_source*] The http(s) location where the package can be located
#
# [*download_dir*] The directory to download the package to
#
# === Examples
#
class aws_powershell (
  $package_name = $aws_powershell::params::package_name,
  $package_source = $aws_powershell::params::package_source,
  $download_dir = $aws_powershell::params::download_dir
) inherits aws_powershell::params{

  validate_string($package_name)
  validate_string($package_source)
  validate_string($download_dir)

  class{'aws_powershell::install':} ->
  Class['aws_powershell']
}
