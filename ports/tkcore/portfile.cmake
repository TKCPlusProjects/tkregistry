vcpkg_download_distfile(ARCHIVE
  URLS "https://github.com/TKCPlusProjects/tkcore/releases/download/1.0.2/tkcore-1.0.2.zip"
  FILENAME "tkcore-1.0.2.zip"
  SHA512 6455e67ea519ff296a666e03ed430f0888849205333393013f3d740d8997fb6628fb81ded7d5d279b7eb816200e733a708bb39b88693265d9c7b6a9db56ccd57
)

vcpkg_extract_source_archive(
  SOURCE_PATH
  ARCHIVE "${ARCHIVE}"
  NO_REMOVE_ONE_LEVEL
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    -DRELEASE_VERSION=1.0.2
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
