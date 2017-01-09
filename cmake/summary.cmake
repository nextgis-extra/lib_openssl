################################################################################
# Project:  openssl
# Purpose:  CMake build scripts
# Author:   Dmitry Baryshnikov, dmitry.baryshnikov@nextgis.com
################################################################################
# Copyright (C) 2015, 2017, NextGIS <info@nextgis.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
################################################################################

message(STATUS "Configuring OpenSSL version ${VERSION}")
# TODO:
#[[
no-asan         [default]  OPENSSL_NO_ASAN
no-crypto-mdebug [default]  OPENSSL_NO_CRYPTO_MDEBUG
no-crypto-mdebug-backtrace [default]  OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE
no-ec_nistp_64_gcc_128 [default]  OPENSSL_NO_EC_NISTP_64_GCC_128
no-egd          [default]  OPENSSL_NO_EGD
no-fuzz-afl     [default]  OPENSSL_NO_FUZZ_AFL
no-fuzz-libfuzzer [default]  OPENSSL_NO_FUZZ_LIBFUZZER
no-heartbeats   [default]  OPENSSL_NO_HEARTBEATS
no-md2          [default]  OPENSSL_NO_MD2 (skip dir)
no-msan         [default]  OPENSSL_NO_MSAN
no-rc5          [default]  OPENSSL_NO_RC5 (skip dir)
no-sctp         [default]  OPENSSL_NO_SCTP
no-ssl-trace    [default]  OPENSSL_NO_SSL_TRACE
no-ssl3         [default]  OPENSSL_NO_SSL3
no-ssl3-method  [default]  OPENSSL_NO_SSL3_METHOD
no-ubsan        [default]  OPENSSL_NO_UBSAN
no-unit-test    [default]  OPENSSL_NO_UNIT_TEST
no-weak-ssl-ciphers [default]  OPENSSL_NO_WEAK_SSL_CIPHERS
no-zlib         [default]
no-zlib-dynamic [default]
]]
message(STATUS "Configuring for ${CMAKE_SYSTEM_NAME}")
message(STATUS "CC            =${CMAKE_C_COMPILER}")
message(STATUS "CFLAG         =${CMAKE_C_FLAGS}")
message(STATUS "SHARED_CFLAG  =${SHARED_CFLAG}")

#[[
DEFINES       =DSO_DLFCN HAVE_DLFCN_H NDEBUG OPENSSL_THREADS OPENSSL_NO_STATIC_ENGINE OPENSSL_PIC OPENSSL_IA32_SSE2 OPENSSL_BN_ASM_MONT OPENSSL_BN_ASM_MONT5 OPENSSL_BN_ASM_GF2m SHA1_ASM SHA256_ASM SHA512_ASM RC4_ASM MD5_ASM AES_ASM VPAES_ASM BSAES_ASM GHASH_ASM ECP_NISTZ256_ASM POLY1305_ASM
LFLAG         =
PLIB_LFLAG    =-Wl,-search_paths_first
EX_LIBS       =
APPS_OBJ      =
CPUID_OBJ     =x86_64cpuid.o
UPLINK_OBJ    =
BN_ASM        =asm/x86_64-gcc.o x86_64-mont.o x86_64-mont5.o x86_64-gf2m.o rsaz_exp.o rsaz-x86_64.o rsaz-avx2.o
EC_ASM        =ecp_nistz256.o ecp_nistz256-x86_64.o
DES_ENC       =des_enc.o fcrypt_b.o
AES_ENC       =aes-x86_64.o vpaes-x86_64.o bsaes-x86_64.o aesni-x86_64.o aesni-sha1-x86_64.o aesni-sha256-x86_64.o aesni-mb-x86_64.o
BF_ENC        =bf_enc.o
CAST_ENC      =c_enc.o
RC4_ENC       =rc4-x86_64.o rc4-md5-x86_64.o
RC5_ENC       =rc5_enc.o
MD5_OBJ_ASM   =md5-x86_64.o
SHA1_OBJ_ASM  =sha1-x86_64.o sha256-x86_64.o sha512-x86_64.o sha1-mb-x86_64.o sha256-mb-x86_64.o
RMD160_OBJ_ASM=
CMLL_ENC      =cmll-x86_64.o cmll_misc.o
MODES_OBJ     =ghash-x86_64.o aesni-gcm-x86_64.o
PADLOCK_OBJ   =e_padlock-x86_64.o
CHACHA_ENC    =chacha-x86_64.o
POLY1305_OBJ  =poly1305-x86_64.o
BLAKE2_OBJ    =
]]
message(STATUS "PROCESSOR     =${CMAKE_SYSTEM_PROCESSOR}")
message(STATUS "RANLIB        =${CMAKE_RANLIB}")
#[[
ARFLAGS       =
]]
message(STATUS "PERL          =${PERL_EXECUTABLE}")
message(STATUS "")
if(SIXTY_FOUR_BIT)
    message(STATUS "SIXTY_FOUR_BIT mode")
endif()
if(THIRTY_TWO_BIT)
    message(STATUS "THIRTY_TWO_BIT mode")
endif()
if(SIXTY_FOUR_BIT_LONG)
    message(STATUS "SIXTY_FOUR_BIT_LONG mode")
endif()
message(STATUS "")
