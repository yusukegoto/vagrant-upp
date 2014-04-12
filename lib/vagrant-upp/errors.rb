module VagrantPlugins
  module Upp
    #
    # Error class of Sahara not installed
    #
    class SaharaNotInstallError < Vagrant::Errors::VagrantError
      error_message <<-ERR
Need to install vagrant plugin 'sahara'
$ vagrant plugin install sahara
      ERR
    end
  end
end
