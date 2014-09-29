# puppet-aws_powershell

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with windowsfeature](#setup)
    * [What windowsfeature affects](#what-windowsfeature-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with windowfeature](#beginning-with-windowsfeature)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

The aws_powershell module installs the AWS PowerShell command line tools. These tools are used to manage AWS instances using PowerShell cmdlets.

[![Build Status](https://travis-ci.org/opentable/puppet-aws_powershell.png?branch=master)](https://travis-ci.org/opentable/puppet-aws_powershell)


##Module Description

The [AWS Tools for Windows PowerShell](http://aws.amazon.com/powershell/) lets developers and administrators manage their AWS services from the Windows
PowerShell scripting environment. Now you can manage your AWS resources with the same Windows PowerShell tools you use to manage your Windows environment.

##Setup
###What download_file affects
 * Installs the AWS PowerShell commands line tools. It does not add them to the path.

###Setup Requirements
* aws_powershell makes use of Powershell so you will need to have at least version 2.0 installed in order to use this module.

##Begining

To install with defaults

   include aws_powershell

To install a custom version or a custom location:

   class { 'aws_powershell':
     package_name   => 'MyPackageName.msi',
     package_source => 'http://mypackagelocation.com'
  }

##Usage

###Classes and Defined Types

####Class: `aws_powershell`

**Parameters within `aws_powershell`:**
#####`package_name`
The name of the msi package to download

#####`package_source`
The http(s) location where the package can be located

#####`download_dir`
The directory to download the package to

##Reference

###Classes
####Public Classes
* [`aws_powershell`](#class-aws_poweshell): Install the AWS commandline tools.


#Limitations

This module is tested on the following platforms:

* Windows 2008
* Windows 2008 R2
* Windows 2012
* Windows 2012 R2

It is tested with the OSS version of Puppet only.

###Contributing

Please read CONTRIBUTING.md for full details on contributing to this project.
