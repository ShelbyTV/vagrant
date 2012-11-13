This is a vagrant project for creating a box ready to install and run the Shelby rails app on Ubuntu 11.04 for amd64.

# CHANGELOG:

* v0.2.3

  Updated all apt managed packages

  Upgraded Chef (10.16.2) and Ohai (6.14.0) to latest versions

  Installed latest version (4.2.4) of VirtualBox Guest Extensions

* v0.2.2

	Upgraded Chef gem to latest version (10.12.0)

	Installed latest version (4.1.20) of VirtualBox Guest Extensions

	ssh agent forwarding turned on by default in the packaged box

	Webrick hacks

		remove excessive logger warnings

		turn off reverse DNS lookup to speed up request handling

	Added new libraries to Chef recipe for Shelby Rails App

		libqt4-dev, libqtwebkit-dev, xvfb, jackd1, imagemagick - for headless Webkit acceptance testing with Capybara

	Removed obsolete dependencies from Chef recipe for Shelby Rails App

		Redis

* v0.2.1

    Upgraded to work with newest version of Vagrant (1.0.0)

    Added onboard Postfix server for relaying emails to SendGrid

    Fixed environment variables for the Vagrantfile so that specifying NFS or VirtualBox shared folders works

* v0.2

    Switched to use NFS mounting by default for vagrant shared folder

    Added environment variables to the Vagrantfile to allow dynamic configuration of shared folder

    Installed latest version (4.1.8) of VirtualBox Guest Extensions on the packaged box

* v0.1

	First version of the box

---

# NOTES

If you want to modify and repackage the box, there is a fix needed to allow host only networking to work on the newly packaged box:

Just before packaging the box, ssh into the running VM and delete /etc/udev/rules.d/70-persistent-net.rules  This will prevent the packaged box from having an improper MAC address set on its interfaces when booting up.

This fix was found at: https://github.com/mitchellh/vagrant/issues/454

---

Here's how to update the VirtualBox Guest Additions if you've got a newer version of VirtualBox than the one your vagrant box was packaged for:

http://till.klampaeckel.de/blog/archives/155-VirtualBox-Guest-Additions-and-vagrant.html