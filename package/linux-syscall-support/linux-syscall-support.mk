################################################################################
#
# linux-syscall-support
#
################################################################################

# Use the same version that the one used by Google-breakpad 1373
LINUX_SYSCALL_SUPPORT_VERSION = e6c7682c40c27527894fbb8bcba38f77edbbb6b7
LINUX_SYSCALL_SUPPORT_SITE = https://chromium.googlesource.com/linux-syscall-support
LINUX_SYSCALL_SUPPORT_SITE_METHOD = git
LINUX_SYSCALL_SUPPORT_LICENSE = BSD-3-Clause
LINUX_SYSCALL_SUPPORT_LICENSE_FILES = linux_syscall_support.h

# Provide only one header file.
LINUX_SYSCALL_SUPPORT_INSTALL_TARGET = NO
LINUX_SYSCALL_SUPPORT_INSTALL_STAGING = YES

define LINUX_SYSCALL_SUPPORT_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0644 $(@D)/linux_syscall_support.h \
		$(STAGING_DIR)/usr/include/linux_syscall_support.h
endef

define HOST_LINUX_SYSCALL_SUPPORT_INSTALL_CMDS
	$(INSTALL) -D -m 0644 $(@D)/linux_syscall_support.h \
		$(HOST_DIR)/include/linux_syscall_support.h
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
