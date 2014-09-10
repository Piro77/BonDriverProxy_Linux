# - Try to find Arib25 
# Once done this will define 
# 
#  ARIB25_FOUND - system has Arib25 
#  ARIB25_INCLUDE_DIR - the Arib25 include directory 
#  ARIB25_LIBRARIES - Link these to use Arib25 
# 
include(CheckCXXSourceCompiles)

IF (ARIB25_INCLUDE_DIR AND ARIB25_LIBRARIES)
  # Already in cache, be silent
  SET(ARIB25_FIND_QUIETLY TRUE)
ENDIF (ARIB25_INCLUDE_DIR AND ARIB25_LIBRARIES)

FIND_PATH(ARIB25_INCLUDE_DIR arib25/arib_std_b25.h PATHS /usr/local/include /usr/include ./)
 
FIND_LIBRARY(ARIB25_LIBRARIES NAMES libarib_std_b25.a arib25 libarib_std_b25 PATHS /usr/local/lib /usr/lib arib25)
 
IF(ARIB25_INCLUDE_DIR AND ARIB25_LIBRARIES) 
   SET(ARIB25_FOUND TRUE) 
ENDIF(ARIB25_INCLUDE_DIR AND ARIB25_LIBRARIES) 

IF(ARIB25_FOUND) 
  IF(NOT ARIB25_FIND_QUIETLY) 
    MESSAGE(STATUS "Found Arib25: ${ARIB25_LIBRARIES}") 
  ENDIF(NOT ARIB25_FIND_QUIETLY) 
ELSE(ARIB25_FOUND) 
  IF(Arib25_FIND_REQUIRED) 
    MESSAGE(FATAL_ERROR "Could not find Arib25") 
  ENDIF(Arib25_FIND_REQUIRED) 
ENDIF(ARIB25_FOUND)

MARK_AS_ADVANCED(
  ARIB25_INCLUDE_DIR
  ARIB25_LIBRARIES
)
