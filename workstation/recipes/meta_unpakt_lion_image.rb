# Base recipe for Lion
include_recipe "pivotal_workstation::meta_osx_base"
include_recipe "pivotal_workstation::meta_osx_development"
include_recipe "unpakt_workstation::meta_unpakt_ruby_development"
include_recipe "unpakt_workstation::meta_unpakt_specifics"
include_recipe "pivotal_workstation::function_keys"
include_recipe "pivotal_workstation::flycut"
