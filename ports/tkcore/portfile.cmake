vcpkg_download_distfile(ARCHIVE
  URLS "https://github.com/TKCPlusProjects/tkcore/releases/download/1.0.1/tkcore-1.0.1.zip"
  FILENAME "tkcore-1.0.1.zip"
  SHA512 746fd342865b97e6bc5e19a4de37e7974ef0045fecc0217ba4e3b6c37e2e0ba1f45b4851b812a4c21638fcccd054d6eaebf451f407b5e8a117b5e43d9b5c52b0
)

vcpkg_extract_source_archive(
  SOURCE_PATH
  ARCHIVE "${ARCHIVE}"
  NO_REMOVE_ONE_LEVEL
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    -DRELEASE_VERSION=1.0.1
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
