FROM yshurik/mxe-qt:gcc7

# 32 bit Windows executable, split into an executable and dependant dlls
RUN make MXE_PLUGIN_DIRS="$MXE_PLUGIN_DIRS" MXE_TARGETS="i686-w64-mingw32.shared" \
  qtdeclarative \
  qtquickcontrols \
  qtserialport \
  qtscript \
  zlib

ENV PATH='/mxe/usr/bin/':$PATH