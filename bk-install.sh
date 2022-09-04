#!/bin/bash
cd ..
mv googletest/ googletest-src/
# remove previous installation
rm -r googletest/ 
rm -r googletest-build/ 
mkdir googletest-build
mkdir googletest
cd googletest-build
cmake \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=../googletest \
-DBUILD_GMOCK=Off \
-DBUILD_SHARED_LIBS=On \
-DINSTALL_GTEST=On \
-Dgtest_force_shared_crt=On \
-Dgmock_build_tests=Off \
-Dgtest_build_samples=Off \
-Dgtest_build_tests=Off \
-Dgtest_disable_pthreads=Off \
-Dgtest_hide_internal_symbols=Off \
../googletest-src
make -j 8
make install
cd ..
rm -r googletest-build
cp googletest-src/bk.cmake googletest

