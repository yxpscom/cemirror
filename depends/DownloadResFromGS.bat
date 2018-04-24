@rem When Run Command [gclient runhooks]

@rem Download_Failed===========================
@rem download_from_google_storage --no_resume --platform=win32 --directory --recursive --no_auth --num_threads=16 --bucket chromium-apache-win32  --boto=E:\_ChromiumDev\gclient_chromium_src\.boto src/third_party/apache-win32 
@rem Download_Failed===========================

call WgetGS.bat  gs://chromium-gn/c0d03f78af494365ff38c663297a20fe61da29ea                       src/buildtools/win/gn.exe
call WgetGS.bat  gs://chromium-clang-format/c8455d43d052eb79f65d046c6b02c169857b963b             src/buildtools/win/clang-format.exe
call WgetGS.bat  gs://chromium-browser-clang/rc/f87131fc898652b637554cf22097a077e13142dc         src/build/toolchain/win/rc/win/rc.exe
call WgetGS.bat  gs://chromium-browser-clang/orderfiles/21176fbe8d968157213705f1a56f080b17b50895 src/chrome/build\chrome.x64.orderfile
call WgetGS.bat  gs://chromium-browser-clang/orderfiles/5e1a0b338acb6d2e8108b5e12a328bf071641128 src/chrome/build\chrome.x86.orderfile
call WgetGS.bat  gs://chromium-browser-clang/orderfiles/3c2e495e166f81aa17d41e12b051f6aaffd3d894 src/chrome/build\chrome_child.x64.orderfile
call WgetGS.bat  gs://chromium-browser-clang/orderfiles/ffa047cd9e619f85cd90b876a85c22574aef7369 src/chrome/build\chrome_child.x86.orderfile
call WgetGS.bat  gs://chromium-luci/dd9791d5ac0e667a17ded140c3bf0bf9673b0da5                     src/tools/luci-go/win64\isolate.exe

call wgetgs.bat  gs://syzygy-archive/tho  src/third_party/syzygy/binaries/benchmark.zip
call wgetgs.bat  gs://syzygy-archive/builds/official/8164b24ebde9c5649c9a09e88a7fc0b0fcbd1bc5/benchmark.zip  c:\users\leo_xp~1\appdata\local\temp\benchmark.zip
call wgetgs.bat  gs://syzygy-archive/builds/official/8164b24ebde9c5649c9a09e88a7fc0b0fcbd1bc5/binaries.zip   c:\users\leo_xp~1\appdata\local\temp\binaries.zip
call wgetgs.bat  gs://syzygy-archive/builds/official/8164b24ebde9c5649c9a09e88a7fc0b0fcbd1bc5/symbols.zip    c:\users\leo_xp~1\appdata\local\temp\symbols.zip

call wgetgs.bat  gs://chromium-apache-win32/4dca3606f57e1ea9bde5d1e088bda0ae0d4ad3e0             src/third_party/apache-win32\bin\libeay32.dll
call wgetgs.bat  gs://chromium-apache-win32/199cb003a5a40db260f29128ae630f298aaf7702             src/third_party/apache-win32\bin\libapriconv-1.dll
call wgetgs.bat  gs://chromium-apache-win32/4e51ce1a90b99d7b08a0ed1d151eee023d43966c             src/third_party/apache-win32\bin\libaprutil-1.dll
call wgetgs.bat  gs://chromium-apache-win32/d76ccf8a113227d63927616a45d7c8eb8df44cc7             src/third_party/apache-win32\bin\libapr-1.dll
call wgetgs.bat  gs://chromium-apache-win32/11ba0c1941b9c46ad279f33c2db3e3c628197ae8             src/third_party/apache-win32\bin\httpd.exe
call wgetgs.bat  gs://chromium-apache-win32/923f8e771902c6da79ae720817cba8b389a6b275             src/third_party/apache-win32\bin\php5ts.dll
call wgetgs.bat  gs://chromium-apache-win32/02c3d37fac86cd239fe02a1842134775e40a3331             src/third_party/apache-win32\bin\ssleay32.dll
call wgetgs.bat  gs://chromium-apache-win32/eb6e8b068a8db9dfa80180ea16b0927b33760298             src/third_party/apache-win32\modules\mod_asis.so
call wgetgs.bat  gs://chromium-apache-win32/49345ed7627a7019402c46db98bca55a6da80ace             src/third_party/apache-win32\modules\mod_alias.so
call wgetgs.bat  gs://chromium-apache-win32/230b1d13ba0c4c90089e5e239b2f206ce313bb1e             src/third_party/apache-win32\bin\libhttpd.dll
call wgetgs.bat  gs://chromium-apache-win32/27b23f5fc9f2ace1ae53edbee3f32ef0a5d37287             src/third_party/apache-win32\bin\openssl.exe
call wgetgs.bat  gs://chromium-apache-win32/b2a72bb8447cda2800be56db3959bb8bac68e810             src/third_party/apache-win32\modules\mod_authz_host.so
call wgetgs.bat  gs://chromium-apache-win32/c54ee354a2cdc075b9b4379cf58aba90ebea774b             src/third_party/apache-win32\bin\zlib1.dll
call wgetgs.bat  gs://chromium-apache-win32/333d1d54b459797d9419fce049e7d5efe7fb0a69             src/third_party/apache-win32\modules\mod_cgi.so
call wgetgs.bat  gs://chromium-apache-win32/99b9959e5fbec830fd08a8d398c52f23894dd485             src/third_party/apache-win32\modules\mod_autoindex.so
call wgetgs.bat  gs://chromium-apache-win32/2c7b52a7f6b9651a9ba19119d3d842247d541af6             src/third_party/apache-win32\bin\apachemonitor.exe
call wgetgs.bat  gs://chromium-apache-win32/b7dd1e015a88c96e03bb8845636472bb256e862b             src/third_party/apache-win32\modules\mod_mime.so
call wgetgs.bat  gs://chromium-apache-win32/5926b9d7d4f1e3aae31c10e0498923cb2fbc19a9             src/third_party/apache-win32\modules\mod_headers.so
call wgetgs.bat  gs://chromium-apache-win32/3158bdd7fabd47b3ff5188d3dd9cee42c97b334a             src/third_party/apache-win32\modules\mod_env.so
call wgetgs.bat  gs://chromium-apache-win32/f6eebd3da324d7a4c36593677ccefcb626ac9548             src/third_party/apache-win32\modules\mod_log_config.so
call wgetgs.bat  gs://chromium-apache-win32/ee17b7f92645403edb0c3bb80ceeb49791989995             src/third_party/apache-win32\modules\mod_rewrite.so
call wgetgs.bat  gs://chromium-apache-win32/81c42674bc5865c3df35a9f47e3bc6910d89c4b1             src/third_party/apache-win32\modules\php5apache2_2.dll
call wgetgs.bat  gs://chromium-apache-win32/8c81e5e9fa1d6d07d5235e553b42ac02be49b996             src/third_party/apache-win32\modules\mod_ssl.so
call wgetgs.bat  gs://v8-wasm-fuzzer/f6b95b7dd8300efa84b6382f16cfcae4ec9fa108                    src/v8/test/fuzzer/wasm_corpus.tar.gz
call wgetgs.bat  gs://chromium-nodejs/8.9.1/b8a7c3e2e5f3e88a3e9c132bec496b917d1f2fd8             src/third_party/node/win/node.exe
call wgetgs.bat  gs://chromium-nodejs/050c85d20f7cedd7f5c39533c1ba89dcdfa56a08                   src/third_party/node/node_modules.tar.gz 
call wgetgs.bat  gs://chromium-binary-patching/5d0e8fed8e9e091e184adb2e2e0e668def9cd2c5          src/chrome/installer/zucchini/testdata\setup1.exe
call wgetgs.bat  gs://chromium-binary-patching/c3a974589d50956a3c8c17572fee078b9276ad9b          src/chrome/installer/zucchini/testdata\chrome64_2.exe
call wgetgs.bat  gs://chromium-binary-patching/4970ef6f342f6a0da9ae7a4ed462f93ef68f142c          src/chrome/installer/zucchini/testdata\chrome64_1.exe
call wgetgs.bat  gs://chromium-binary-patching/12194273e8d509b6e81e4a6b63621081e1426028          src/chrome/installer/zucchini/testdata\setup2.exe   
