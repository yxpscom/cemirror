set CEF_USE_GN=1
set GN_DEFINES=use_jumbo_build=true proprietary_codecs=true ffmpeg_branding=Chrome symbol_level=2 is_debug=true use_goma=false is_component_build=true
set GN_ARGUMENTS=--ide=vs2017 --sln=cef --filters=//cef/*
python ..\automate\automate-git.py --download-dir=C:\work\code\chromium_git --depot-tools-dir=C:\work\code\depot_tools --no-distrib --no-build --branch=3325 --build-log-file --verbose-build