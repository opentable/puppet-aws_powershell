puppet-aws_powershell
==============

This is the Puppet module to install the AWS PowerShell command line tools. These tools are used to manage AWS instances using PowerShell cmdlets

[![Build Status](https://travis-ci.org/opentable/puppet-aws_powershell.png?branch=master)](https://travis-ci.org/opentable/puppet-aws_powershell)

Usage
--
The module consists of a single class

```puppet
include 'aws_powershell'
```

Unless specified, this will install the latest version of the AWS PowerShell tools. If you want to install from a different location or a custom version, then you can tell the module to do this:

```puppet
class { 'aws_powershell':
  package_name   => 'MyPackageName.msi',
  package_source => 'http://mypackagelocation.com'
}
```
Limitations
--

This module is tested on the following platforms:

* Windows Server 2008 R2 

More support will be added. It is tested with the OSS version of Puppet only.

Contribute:
--

* Fork it
* Create a branch
* Improve/fix (with spec tests)
* Push new branch
* Submit a PR
