vcpkg_download_distfile(ARCHIVE
  URLS "https://github.com/TKCPlusProjects/tkcore/releases/download/1.0.4/tkcore-1.0.4.zip"
  FILENAME "tkcore-1.0.4.zip"
  SHA512 df254ccc158899029fb2c7fcc0827f42d5452c5935fdbc127889d571bb6759d6fed3d4a8d180d82a6be6768b4b260a2e6207538b1dc214a06ca9fa918613eba1
)

vcpkg_extract_source_archive(
  SOURCE_PATH
  ARCHIVE "${ARCHIVE}"
  NO_REMOVE_ONE_LEVEL
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    -DRELEASE_VERSION=1.0.4
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
