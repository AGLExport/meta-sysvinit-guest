DESCRIPTION = "Qt6 modules for sysvinit guest"
LICENSE = "MIT"

PACKAGE_ARCH = "${MACHINE_ARCH}"

inherit packagegroup

PACKAGEGROUP_DISABLE_COMPLEMENTARY = "1"

# Core Packages
RDEPENDS:${PN} += " \
    qtbase \
    qtdeclarative \
    qtapplicationmanager \
    qtquick3d \
    qtquicktimeline \
    qtwayland \
    qtmultimedia \
    qtimageformats \
    qtscxml \
    qtsvg \
    qttranslations \
    qtvirtualkeyboard \
"

# Languages
RDEPENDS:${PN} += " \
    qttranslations-qtbase \
    qttranslations-qtdeclarative \
"

