
function prepareEnv() {
  unset JDG_ADMIN_USERNAME
  unset JDG_ADMIN_PASSWORD
  unset JDG_NODE_NAME
  unset JDG_HTTPS_NAME
  unset JDG_HTTPS_PASSWORD
  unset JDG_HTTPS_KEYSTORE_DIR
  unset JDG_HTTPS_KEYSTORE
  unset JDG_SECDOMAIN_USERS_PROPERTIES
  unset JDG_SECDOMAIN_ROLES_PROPERTIES
  unset JDG_SECDOMAIN_NAME
  unset JDG_SECDOMAIN_PASSWORD_STACKING
}

function preConfigure() {
  convertEnv
}

function preConfigureEnv() {
  convertEnv
}

function convertEnv() {
  ADMIN_USERNAME=${ADMIN_USERNAME:-${JDG_ADMIN_USERNAME:-$DEFAULT_ADMIN_USERNAME}}
  ADMIN_PASSWORD=${ADMIN_PASSWORD:-$JDG_ADMIN_PASSWORD}
  NODE_NAME=${NODE_NAME:-$JDG_NODE_NAME}
  HTTPS_NAME=${HTTPS_NAME:-$JDG_HTTPS_NAME}
  HTTPS_PASSWORD=${HTTPS_PASSWORD:-$JDG_HTTPS_PASSWORD}
  HTTPS_KEYSTORE_DIR=${HTTPS_KEYSTORE_DIR:-$JDG_HTTPS_KEYSTORE_DIR}
  HTTPS_KEYSTORE=${HTTPS_KEYSTORE:-$JDG_HTTPS_KEYSTORE}
  SECDOMAIN_USERS_PROPERTIES=${SECDOMAIN_USERS_PROPERTIES:-${JDG_SECDOMAIN_USERS_PROPERTIES:-users.properties}}
  SECDOMAIN_ROLES_PROPERTIES=${SECDOMAIN_ROLES_PROPERTIES:-${JDG_SECDOMAIN_ROLES_PROPERTIES:-roles.properties}}
  SECDOMAIN_NAME=${SECDOMAIN_NAME:-$JDG_SECDOMAIN_NAME}
  SECDOMAIN_PASSWORD_STACKING=${SECDOMAIN_PASSWORD_STACKING:-$JDG_SECDOMAIN_PASSWORD_STACKING}
}
