module VagrantPlugins
  module Upp
    #
    # Invoke vagrant up --no-provision && vagrant sandbox on
    #
    class Command < Vagrant.plugin('2', :command)
      def self.synopsis
        'starts with no provision and sandbox mode on'
      end

      def execute
        unless Vagrant.has_plugin? 'sahara'
          fail VagrantPlugins::Upp::SaharaNotInstallError
        end

        opt = OptionParser.new
        argv = parse_options opt

        with_target_vms(argv) do |vm|
          vm.action :up, provision_enabled: false
          vm.env.cli %w(sandbox on)
        end
        0
      end
    end
  end
end
