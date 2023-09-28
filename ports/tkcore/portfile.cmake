vcpkg_download_distfile(ARCHIVE
  URLS "https://github.com/TKCPlusProjects/tkcore/releases/download/1.0.3/tkcore-1.0.3.zip"
  FILENAME "tkcore-1.0.3.zip"
  SHA512 2926add0b37f3303e356e8f0d67ff120a9cc4dcaa47805cf573e45f49f2d146be0f91b5efc376ebf49ad749654b73a14d6a83b36a8380bee8bd4405dc0682875
)

vcpkg_extract_source_archive(
  SOURCE_PATH
  ARCHIVE "${ARCHIVE}"
  NO_REMOVE_ONE_LEVEL
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    -DRELEASE_VERSION=1.0.3
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
