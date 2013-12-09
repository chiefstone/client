set( MIRALL_VERSION_MAJOR 1 )
set( MIRALL_VERSION_MINOR 5 )
set( MIRALL_VERSION_PATCH 0 )
set( MIRALL_SOVERSION 0 )

set( MIRALL_VERSION_SUFFIX "" CACHE STRING "e.g. beta1, beta2, rc1" )
set( MIRALL_VERSION_BUILD  "0" CACHE STRING "Integer ID. Generated by the build system")

# Composite defines
# Used e.g. for libraries Keep at x.y.z.
set( MIRALL_VERSION "${MIRALL_VERSION_MAJOR}.${MIRALL_VERSION_MINOR}.${MIRALL_VERSION_PATCH}" )
# Version with Build ID. Used in the installer
set( MIRALL_VERSION_FULL ${MIRALL_VERSION} )
set( MIRALL_VERSION_STRING ${MIRALL_VERSION} )
set( MIRALL_VERSION_FULL "${MIRALL_VERSION_FULL}.${MIRALL_VERSION_BUILD}" )

if( MIRALL_VERSION_SUFFIX )
  set( MIRALL_VERSION_STRING "${MIRALL_VERSION} ${MIRALL_VERSION_SUFFIX} (build ${MIRALL_VERSION_BUILD})" )
else( MIRALL_VERSION_SUFFIX )
  set( MIRALL_VERSION_STRING "${MIRALL_VERSION} (build ${MIRALL_VERSION_BUILD})" )
endif( MIRALL_VERSION_SUFFIX )
