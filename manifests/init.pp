class aws_powershell (
  $package_name = $aws_powershell::params::package_name,
  $package_source = $aws_powershell::params::package_source,
  $download_dir = $aws_powershell::params::download_dir
) inherits aws_powershell::params{

  validate_string($package_name)
  validate_string($package_source)
  validate_string($download_dir)

  class{'aws_powershell::install'} ->
  Class['aws_powershell']
}