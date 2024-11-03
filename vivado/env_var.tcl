##############################################################################
## This file is part of 'SLAC Firmware Standard Library'.
## It is subject to the license terms in the LICENSE.txt file found in the
## top-level directory of this distribution and at:
##    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
## No part of 'SLAC Firmware Standard Library', including this file,
## may be copied, modified, propagated, or distributed except according to
## the terms contained in the LICENSE.txt file.
##############################################################################

## \file vivado/env_var.tcl
# \brief This script set all the common ruckus environmental variables for Vivado

########################################################
## Set Common Environmental variables
########################################################

# Project Variables
set PRJ_PART         $::env(PRJ_PART)
set BOARD_PART       $::env(BOARD_PART)
set BOARD_REPO       $::env(BOARD_REPO)
set PROJECT          $::env(PROJECT)
set PRJ_VERSION      $::env(PRJ_VERSION)
set PROJ_DIR         $::env(PROJ_DIR)
set TOP_DIR          $::env(TOP_DIR)
set IMAGES_DIR       $::env(IMAGES_DIR)
set OUT_DIR          $::env(OUT_DIR)
set SYN_DIR          $::env(SYN_DIR)
set IMPL_DIR         $::env(IMPL_DIR)
set VIVADO_DIR       $::env(VIVADO_DIR)
set VIVADO_PROJECT   $::env(VIVADO_PROJECT)
set VIVADO_VERSION   $::env(VIVADO_VERSION)
set VIVADO_INSTALL   $::env(VIVADO_INSTALL)
set RUCKUS_DIR       $::env(RUCKUS_DIR)
set VIVADO_PROJECT_SIM       $::env(VIVADO_PROJECT_SIM)
set VIVADO_PROJECT_SIM_TIME  $::env(VIVADO_PROJECT_SIM_TIME)

# Vivado Vitis Variables
set VITIS_PRJ $::env(VITIS_PRJ)
set VITIS_LIB $::env(VITIS_LIB)
set VITIS_ELF $::env(VITIS_ELF)

# Vivado SDK Variables
set SDK_PRJ $::env(SDK_PRJ)
set SDK_LIB $::env(SDK_LIB)
set SDK_ELF $::env(SDK_ELF)

# Partial Reconfiguration Variables
set RECONFIG_CHECKPOINT $::env(RECONFIG_CHECKPOINT)
set RECONFIG_ENDPOINT   $::env(RECONFIG_ENDPOINT)
set RECONFIG_PBLOCK     $::env(RECONFIG_PBLOCK)

########################################################
## Set Non-Environmental variables
########################################################
set vivado_cmd [catch {
   set PRJ_TOP  [get_property top [current_fileset]]
   set SIM_TOP  [get_property top [get_filesets sim_1]]
} _RESULT]
