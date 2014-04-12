require 'vagrant'
require 'vagrant-upp/version'
require 'vagrant-upp/errors'
require 'vagrant-upp/command'

module VagrantPlugins
  module Upp
    #
    class Plugin < Vagrant.plugin('2')
      name 'upp'
      description <<-DESC
      up with no provision and sandbox on
      DESC

      command('upp') do
        Command
      end
    end
  end
end
