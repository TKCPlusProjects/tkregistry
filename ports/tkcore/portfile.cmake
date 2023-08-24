vcpkg_download_distfile(ARCHIVE
  URLS "https://github.com/TKCPlusProjects/tkcore/releases/download/1.0.0/tkcore-1.0.0.zip"
  FILENAME "tkcore-1.0.0.zip"
  SHA512 57f7ff7673584bd8a384db7e90faf589031ab4ca95c59ea34a1c7505a7e9e735ecdc050117d5fe11170de1fcc50eae9a27c988fcb02d1ae53f9e3527b99b0e66
)

vcpkg_extract_source_archive(
  SOURCE_PATH
  ARCHIVE "${ARCHIVE}"
  NO_REMOVE_ONE_LEVEL
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    -DRELEASE_VERSION=1.0.0
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
