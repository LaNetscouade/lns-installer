<?php
/**
 * @file
 * Enables modules and site configuration for a minimal site installation.
 */

/**
 * Creates a batch for the config importer to process.
 *
 * @see lns_installer_install_tasks_alter()
 */
function config_install_batch() {

  // Match up the site uuids, the install_base_system install task will have
  // installed the system module and created a new UUID.
  $system_site = $sync->read('system.site');
  \Drupal::configFactory()->getEditable('system.site')->set('uuid', $system_site['uuid'])->save();
}

