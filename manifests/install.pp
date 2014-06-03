class aws_powershell::install {

  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  ensure_resource('file', "${aws_powershell::download_dir}", {'ensure' => 'directory'} ) ->

  case downcase($::osfamily) {
    'windows': {

      download_file { 'mssqlcmd_installer':
        url                    => "${aws_powershell::package_source}\${aws_powershell::package_name}",
        destination_directory  => "${aws_powershell::download_dir}"
      } ->

      package { 'AWS Tools for Windows':
        ensure          => installed,
        provider        => windows,
        source          => "${aws_powershell::download_dir}\${aws_powershell::package_name}",
        install_options => ['/qn']
      }
    }
    default: {
      fail('This module only works on Windows based systems.')
    }
  }
}