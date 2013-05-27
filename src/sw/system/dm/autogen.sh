#!/bin/sh -e

autoreconf --install --symlink

libdir() {
        echo $(cd $1/$(gcc -print-multi-os-directory); pwd)
}

args="--prefix=\`pwd\`/.. --host=or32-elf CC=or32-elf-gcc"

echo
echo "Configuration done. Before proceeding you need:"
echo " * to ensure you have the OpTiMSoC toolchain installed. You can either" 
echo "   directly set it using the --with-optimsoc-newlib=/path/to/newlib/ switch"
echo "   or by setting the environment variable OPTIMSOC_NEWLIB."
echo " * you need an OpenRISC compiler (e.g., or32-elf-gcc)."
echo " * to decide for an installation path. In most cases we recommend to use"
echo "   this folder as installation directory (documentation assumes this)."
echo "   But you can freely choose the prefix."
echo 
echo "Usual configuration step:"
echo
echo "    mkdir build; cd build;"
echo "    ../configure CFLAGS='-g -O0' $args"
echo "    make"
echo "    make install"
echo