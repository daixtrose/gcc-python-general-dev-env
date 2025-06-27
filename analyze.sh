#!/usr/bin/env bash
set -Eeuo pipefail

# grep aarch64 accessed_libraries.txt | while read file; do basename $file; done | sort -u > aarch64_libraries.txt
# grep -v aarch64 accessed_libraries.txt | while read file; do basename $file; done | sort -u > regular_libraries.txt
# grep -A1 --no-group-separator "\----" regular-packages.txt | grep -v "\---" | sed -e'/^$/d' | while read file; do echo "${file} \\"; done | sort -u
# grep -A1 --no-group-separator "\----" aarch64-packages.txt | grep -v "\---" | sed -e'/^$/d' | while read file; do echo "${file} \\"; done | sort -u
# See https://stackoverflow.com/a/17841619
# function join_by {
#   local d=${1-} f=${2-}
#   if shift 2; then
#     printf %s "$f" "${@/#/$d}"
#   fi
# }
function join_by { local IFS="$1"; shift; echo "$*"; }

#head -2 aarch64_libraries.txt | while read file; do 

# readarray -t arr2 < <(printf '%s\n' "First value." "Second value.")
# printf '%s\n' "${arr2[@]}"

# readarray -t libs < <(cat aarch64_libraries.txt)

# printf '%s\t' "${libs[@]}"
#echo $(join_by ' ' ${libs[@]})
# cat aarch64_libraries.txt | read -e -a libs

# libs="_asyncio.cpython-38-x86_64-linux-gnu.so _bcrypt.abi3.so _bisect.cpython-38-x86_64-linux-gnu.so _blake2.cpython-38-x86_64-linux-gnu.so _bz2.cpython-38-x86_64-linux-gnu.so _cffi_backend.cpython-38-x86_64-linux-gnu.so _constant_time.abi3.so _contextvars.cpython-38-x86_64-linux-gnu.so _csv.cpython-38-x86_64-linux-gnu.so _ctypes.cpython-38-x86_64-linux-gnu.so _datetime.cpython-38-x86_64-linux-gnu.so _decimal.cpython-38-x86_64-linux-gnu.so _elementtree.cpython-38-x86_64-linux-gnu.so _hashlib.cpython-38-x86_64-linux-gnu.so _heapq.cpython-38-x86_64-linux-gnu.so _json.cpython-38-x86_64-linux-gnu.so _lzma.cpython-38-x86_64-linux-gnu.so _multibytecodec.cpython-38-x86_64-linux-gnu.so _multiprocessing.cpython-38-x86_64-linux-gnu.so _opcode.cpython-38-x86_64-linux-gnu.so _openssl.abi3.so _pickle.cpython-38-x86_64-linux-gnu.so _posixsubprocess.cpython-38-x86_64-linux-gnu.so _queue.cpython-38-x86_64-linux-gnu.so _random.cpython-38-x86_64-linux-gnu.so _sha3.cpython-38-x86_64-linux-gnu.so _sha512.cpython-38-x86_64-linux-gnu.so _socket.cpython-38-x86_64-linux-gnu.so _sodium.abi3.so _speedups.cpython-38-x86_64-linux-gnu.so _ssl.cpython-38-x86_64-linux-gnu.so _struct.cpython-38-x86_64-linux-gnu.so _uuid.cpython-38-x86_64-linux-gnu.so array.cpython-38-x86_64-linux-gnu.so binascii.cpython-38-x86_64-linux-gnu.so fcntl.cpython-38-x86_64-linux-gnu.so grp.cpython-38-x86_64-linux-gnu.so libX11.so.6 libXau.so.6 libXdmcp.so.6 libXext.so.6 libXrender.so.1 libbsd.so.0 libc.so libc.so.6 libcairo.so.2 libcdt.so.5 libcgraph.so.6 libcrypt.so.2 libcrypto.so.1.1 libdatrie.so.1 libdl.so libdl.so.2 libexpat.so.1 libffi.so.7 libfl.so.2 libfontconfig.so.1 libfreetype.so.6 libfribidi.so.0 libgcc.so libgcc_s.so libgcc_s.so.1 libglib-2.0.so.0 libgmp.so.10 libgobject-2.0.so.0 libgraphite2.so.3 libgvc.so.6 libgvplugin_core.so.6 libgvplugin_dot_layout.so.6 libgvplugin_pango.so.6 libharfbuzz.so.0 liblto_plugin.so libm.so libm.so.6 libmpc.so.3 libmpfr.so.6 libpango-1.0.so.0 libpangocairo-1.0.so.0 libpangoft2-1.0.so.0 libpathplan.so.4 libpcre.so.3 libpixman-1.so.0 libpng16.so.16 libpthread.so libpthread.so.0 libpython3.8.so.1.0 librt.so libssl.so.1.1 libstdc++.so libstdc++.so.6 libthai.so.0 libutil.so.1 libuuid.so.1 libxcb-render.so.0 libxcb-shm.so.0 libxcb.so.1 libxdot.so.4 libz.so.1 math.cpython-38-x86_64-linux-gnu.so pyexpat.cpython-38-x86_64-linux-gnu.so select.cpython-38-x86_64-linux-gnu.so termios.cpython-38-x86_64-linux-gnu.so unicodedata.cpython-38-x86_64-linux-gnu.so zlib.cpython-38-x86_64-linux-gnu.so"  

#for file in ${libs[@]}; do
#for file in ld-linux-aarch64.so.1 ld-linux-armhf.so.3 libSegFault.so libacl.so.1 libapparmor.so libarchive.so libattr.so.1 libbz2.so.1 libc.so libc.so.6 libcap.so libcap.so.2 libcrypto.so.1.1 libdl.so libdl.so.2 libfl.so.2 libgcc.so libgcc_s.so libgcc_s.so.1 libgmp.so.10 liblto_plugin.so liblxc.so liblzma.so.5 liblzo2.so.2 libm.so libm.so.6 libmpc.so.3 libmpfr.so.6 libpthread.so libpthread.so.0 librt.so libseccomp.so libseccomp.so.2 libssl.so.1.1 libstdc++.so libstdc++.so.6 libutil.so.1 libuuid.so libxml2.so.2 libz.so.1 libzstd.so.1 ; do
# for file in $(cat aarch64_libraries.txt); do
for file in ; do
    echo "################################################################################"
    echo "${file}"
    echo "--------------------------------------------------------------------------------"
    /usr/bin/apt-file search -a amd64,arm64v8 --package-only $file
    echo
done


