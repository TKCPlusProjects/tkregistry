vcpkg_download_distfile(ARCHIVE
  URLS "https://github.com/TKCPlusProjects/tkcore/releases/download/1.0.5/tkcore-1.0.5.zip"
  FILENAME "tkcore-1.0.5.zip"
  SHA512 c27e0977fa4d0d04ec117cf4a408bb7117ee61b81752d78ab635c2eb6249fae876340f1c3cce122aa91494fb2473f8e65fc5fb02678ffac36600a5f68a4164ec
)

vcpkg_extract_source_archive(
  SOURCE_PATH
  ARCHIVE "${ARCHIVE}"
  NO_REMOVE_ONE_LEVEL
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    -DRELEASE_VERSION=1.0.5
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
