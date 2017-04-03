#!/bin/bash

#
#function install_os {
#    apt-get update
#    apt-get install curl git build-essential python-dev python-setuptools swig libasound2-dev libpulse-dev vlc-nox sox libsox-fmt-mp3 -y
#    apt-get -y remove python-pip
#    run_python -m easy_install pip
#}

#function install_shairport-sync {
#
#    apt-get install autoconf libdaemon-dev libasound2-dev libpopt-dev libconfig-dev avahi-daemon libavahi-client-dev libssl-dev libsoxr-dev -y
#
#    install_shairport-sync_from_source
#}
#

function install_os {
    # Install homebrew
    ## /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
    brew update
    
    # Pour packages
    brew install curl git build-essential python-dev python-setuptools swig libasound2-dev libpulse-dev vlc-nox sox libsox-fmt-mp3 pip
    # brew install autoconf libdaemon-dev libasound2-dev libpopt-dev libconfig-dev avahi-daemon libavahi-client-dev libssl-dev libsoxr-dev
    
    # Cleanup
    brew cleanup
}

function install_shairport-sync {

    brew install autoconf libdaemon-dev libasound2-dev libpopt-dev libconfig-dev avahi-daemon libavahi-client-dev libssl-dev libsoxr-dev -y

    install_shairport-sync_from_source
}
