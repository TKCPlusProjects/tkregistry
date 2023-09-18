vcpkg_download_distfile(ARCHIVE
  URLS "https://github.com/TKCPlusProjects/tkgl/releases/download/1.0.0/tkgl-1.0.0.zip"
  FILENAME "tkgl-1.0.0.zip"
  SHA512 443d5b11c84af3091db498dac294581ba750acd94a0248060b7826a5093229ecf4bd3eef2117add80072fdf5e8056f395c89d99cbba5fe6cf2bc63b3d793eb70
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
