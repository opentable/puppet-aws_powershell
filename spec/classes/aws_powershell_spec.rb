require 'spec_helper'

describe 'aws_powershell', :type => :class do

  let(:facts) { {
      :osfamily  => 'Windows'
  } }
  let(:params) {{
      :package_name    => 'AWSToolsAndSDKForNet.msi',
      :package_source  => 'http://sdk-for-net.amazonwebservices.com/latest',
      :download_dir    => 'c:\temp'
  }}

  it { should compile.with_all_deps }

  context 'using params defaults the install class' do
    it { should contain_class('aws_powershell::install') }

    it { should contain_download_file('AWSToolsAndSDKForNet.msi')
      .with_url('http://sdk-for-net.amazonwebservices.com/latest/AWSToolsAndSDKForNet.msi')
      .with_destination_directory('c:\temp')
    }

    it { should contain_package('AWS Tools for Windows')
      .with_ensure('installed')
      .with_provider('windows')
      .with_source('c:\temp\AWSToolsAndSDKForNet.msi')
      .with_install_options('/qn')
    }
  end

  context 'using an internal package provider the install class' do

    let(:facts) { {
        :osfamily  => 'Windows'
    } }
    let(:params) {{
        :package_name    => 'AWSTools.msi',
        :package_source  => 'http://mypackageserver.com/windows',
        :download_dir    => 'c:\temp'
    }}

    it { should contain_class('aws_powershell::install') }

    it { should contain_download_file('AWSTools.msi')
      .with_url('http://mypackageserver.com/windows/AWSTools.msi')
      .with_destination_directory('c:\temp')
    }

    it { should contain_package('AWS Tools for Windows')
      .with_ensure('installed')
      .with_provider('windows')
      .with_source('c:\temp\AWSTools.msi')
      .with_install_options('/qn')
    }
  end

  context 'when trying to install aws_powershell on Debian based systems' do
    let(:facts) { {
        :osfamily  => 'debian'
    } }

    it do
      expect {
        should contain_class('aws_powershell')
      }.to raise_error(Puppet::Error, /^This module only works on Windows based systems./)
    end
  end

  context 'when trying to install aws_powershell on RedHat based systems' do
    let(:facts) { {
        :osfamily  => 'radhat'
    } }

    it do
      expect {
        should contain_class('aws_powershell')
      }.to raise_error(Puppet::Error, /^This module only works on Windows based systems./)
    end
  end

end