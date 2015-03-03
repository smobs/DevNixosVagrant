Vagrant.configure("2") do |config|


    # obvious TODO: add a nicer interface or error checking
    projects = ENV["VAGRANT_PATHS"].split(';')

    # our custom built VM
    config.vm.box = "chromaticleaves/nixos-14.04-x86_64"


    config.vm.define "HaskellDevBox" do |v|
        nil
    end

    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
    end

    # port forwarding
     config.vm.network "forwarded_port", guest: 3000, host: 8080

    # syncing project or other folders
     projects.each { |project|
        config.vm.synced_folder "../"+ project, "/" + project
        config.vm.synced_folder ".emacs.d/", "/home/vagrant/.emacs.d/"
    }

    config_path = "configuration.nix"
    config.vm.provision :nixos, :path => config_path

end
