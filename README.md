# Installing an Unpakt workstation

* Install a machine with Lion.
* Register with Apple if you feel so inclined (I usually hit command-Q)
* Set timezone
* Create Unpakt user "Unpakt" "unpakt".  Make sure it's an administrator.
* Install XCode:
  * Run "App Store" app (built into Lion)
  * Search for "Xcode"
  * Click "Free" -> "Install" on Xcode
  * Wait for install to finish. It's a 1.5gb file, so it can take a while
  * Open XCode and accept terms and conditions
  * Download and install the Command Line Tools for XCode from: [https://developer.apple.com/downloads/index.action](https://developer.apple.com/downloads/index.action)
* Wait for install to finish
* Download & run the bootstrap code:
  
`bash <(curl https://raw.github.com/Unpakt/unpakt_cookbooks/master/boot.sh)`

* During the 1-hour installation, you will be prompted to install java.  You don't need to do anything; java will be installed automatically by one of the chef recipes, and the manual installation is not required (there's a dependency issue which brings up the java-install-dialogue (chef->ohai->java), and we couldn't find a natural way around it).
* Wait for ~1 hour while things are downloaded & compiled.
* Reboot when it has finished.
