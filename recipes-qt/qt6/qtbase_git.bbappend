FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

DEPENDS:append = " drm-lease-manager"
DEPENDS:remove:class-native = " drm-lease-manager"
DEPENDS:remove:class-nativesdk = " drm-lease-manager"

SRC_URI:append = " file://0001-Add-drm-lease-client-support-to-eglfs-kms-backend.patch"

PACKAGECONFIG_GRAPHICS = " gles2"
QT_QPA_DEFAULT_PLATFORM = "wayland"

PACKAGECONFIG:append = " eglfs kms gbm examples "
PACKAGECONFIG:remove:class-native = " eglfs kms gbm examples"
PACKAGECONFIG:remove:class-nativesdk = " eglfs kms gbm examples"

# Extended PACKAGECONFIG
PACKAGECONFIG[pcre2] = "-DFEATURE_pcre2=ON,-DFEATURE_pcre2=OFF"
PACKAGECONFIG[ico] = "-DFEATURE_ico=ON,-DFEATURE_ico=OFF"
PACKAGECONFIG[textmarkdownreader] = "-DFEATURE_textmarkdownreader=ON,-DFEATURE_textmarkdownreader=OFF"
PACKAGECONFIG[textmarkdownwriter] = "-DFEATURE_textmarkdownwriter=ON,-DFEATURE_textmarkdownwriter=OFF"
PACKAGECONFIG[textodfwriter] = "-DFEATURE_textodfwriter=ON,-DFEATURE_textodfwriter=OFF"
PACKAGECONFIG[vnc] = "-DFEATURE_vnc=ON,-DFEATURE_vnc=OFF"
