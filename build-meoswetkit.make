api = 2
core = 7.x

projects[drupal][version] = 7.32
projects[drupal][type] = core

; Patches for Drupal Core
projects[drupal][patch][405360] = http://drupal.org/files/issues/aria-describedby_2.patch
projects[drupal][patch][728702]  = http://drupal.org/files/issues/install-redirect-on-empty-database-728702-36.patch
projects[drupal][patch][1470656] = http://drupal.org/files/drupal-1470656-14.patch
projects[drupal][patch][865536]  = http://drupal.org/files/drupal-865536-204.patch
projects[drupal][patch][1772316] = http://drupal.org/files/drupal7-allow_change_system-requirements-1772316-18.patch
projects[drupal][patch][2289867] = http://drupal.org/files/issues/D7_port_fix_w3c_url_validation_html5_changes-2289867-1.patch

; Added patch against error: Fatal error: Call to undefined function db_table_exists() in
;/home/dev-meos/domains/meoswetkit.dev-meos.tk/docroot/modules/user/user.module on line 4026
; https://www.drupal.org/node/2148761   https://www.drupal.org/node/2278487
projects[drupal][patch][2289867] = http://drupal.org/files/1093420-22.patch

;; Patches from https://github.com/amcgowanca/drupal_installkit
; Enables multi-profile inheritance with deep dependency checking.
projects[drupal][patch][] = "https://raw.github.com/amcgowanca/drupal_installkit/7.x-1.x/patches/core/1356276-D7-inheritable-profiles.patch"
; Allow for profiles to be loaded during install in system_list().
projects[drupal][patch][] = "https://raw.github.com/amcgowanca/drupal_installkit/7.x-1.x/patches/core/drupal-system_list-include_profiles_during_install_as_modules.patch"

; Install profile
projects[meoswetkit][type] = "profile"
projects[meoswetkit][download][type] = "git"
projects[meoswetkit][download][url] = "git@github.com:frederickjh/meoswetkit.git"
