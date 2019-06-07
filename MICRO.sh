ant="1895000000;"
var=";" # Here between quotes goes the speed of the new processor

sed -i -e 's/'$ant'/'$var'/' ./CRYSTALS-DILITHIUM_c/Reference_Implementation/Dilithium_weak/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./CRYSTALS-DILITHIUM_c/Reference_Implementation/Dilithium_medium/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./CRYSTALS-DILITHIUM_c/Reference_Implementation/Dilithium_recommended/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./CRYSTALS-DILITHIUM_c/Reference_Implementation/Dilithium_very_high/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./CRYSTALS-DILITHIUM_c/Optimized_Implementation/Dilithium_weak/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./CRYSTALS-DILITHIUM_c/Optimized_Implementation/Dilithium_medium/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./CRYSTALS-DILITHIUM_c/Optimized_Implementation/Dilithium_recommended/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./CRYSTALS-DILITHIUM_c/Optimized_Implementation/Dilithium_very_high/benchmarks.c

sed -i -e 's/'$ant'/'$var'/' ./FALCON_c/Reference_Implementation/falcon512/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./FALCON_c/Reference_Implementation/falcon768/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./FALCON_c/Reference_Implementation/falcon1024/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./FALCON_c/Optimized_Implementation/falcon512/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./FALCON_c/Optimized_Implementation/falcon768/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./FALCON_c/Optimized_Implementation/falcon1024/benchmarks.c

sed -i -e 's/'$ant'/'$var'/' ./GeMSS_c/Reference_Implementation/GeMSS128/src/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./GeMSS_c/Reference_Implementation/GeMSS192/src/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./GeMSS_c/Reference_Implementation/GeMSS256/src/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./GeMSS_c/Optimized_Implementation/GeMSS128/src/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./GeMSS_c/Optimized_Implementation/GeMSS192/src/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./GeMSS_c/Optimized_Implementation/GeMSS256/src/benchmarks.c
          
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Reference_Implementation/luov-8-63-256/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Reference_Implementation/luov-8-90-351/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Reference_Implementation/luov-8-117-404/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Reference_Implementation/luov-48-49-242/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Reference_Implementation/luov-64-68-330/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Reference_Implementation/luov-80-86-399/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Optimized_Implementation/luov-8-63-256/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Optimized_Implementation/luov-8-90-351/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Optimized_Implementation/luov-8-117-404/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Optimized_Implementation/luov-48-49-242/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Optimized_Implementation/luov-64-68-330/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./LUOV_c/Optimized_Implementation/luov-80-86-399/benchmarks.c

sed -i -e 's/'$ant'/'$var'/' ./MQDSS_c/Reference_Implementation/mqdss-48/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./MQDSS_c/Reference_Implementation/mqdss-64/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./MQDSS_c/Optimized_Implementation/mqdss-48/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./MQDSS_c/Optimized_Implementation/mqdss-64/benchmarks.c

sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Reference_Implementation/picnicl1fs/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Reference_Implementation/picnicl1ur/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Reference_Implementation/picnicl3fs/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Reference_Implementation/picnicl3ur/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Reference_Implementation/picnicl5fs/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Reference_Implementation/picnicl5ur/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Optimized_Implementation/picnicl1fs/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Optimized_Implementation/picnicl1ur/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Optimized_Implementation/picnicl3fs/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Optimized_Implementation/picnicl3ur/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Optimized_Implementation/picnicl5fs/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./PICNIC_c/Optimized_Implementation/picnicl5ur/benchmarks.c

sed -i -e 's/'$ant'/'$var'/' ./qTESLA_c/Reference_Implementation/qTesla_128/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./qTESLA_c/Reference_Implementation/qTesla_192/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./qTESLA_c/Reference_Implementation/qTesla_256/benchmarks.c

sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/Ia/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/Ib/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/Ic/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/IIIb/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/IIIc/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/IVa/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/Vc/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/VIa/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Reference_Implementation/VIb/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/Ia/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/Ib/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/Ic/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/IIIb/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/IIIc/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/IVa/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/Vc/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/VIa/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./RAINBOW_c/Optimized_Implementation/VIb/benchmarks.c

sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-haraka-128f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-haraka-128s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-haraka-192f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-haraka-192s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-haraka-256f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-haraka-256s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-sha256-128f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-sha256-128s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-sha256-192f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-sha256-192s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-sha256-256f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-sha256-256s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-shake256-128f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-shake256-128s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-shake256-192f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-shake256-192s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-shake256-256f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Reference_Implementation/sphincs-shake256-256s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-haraka-128f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-haraka-128s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-haraka-192f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-haraka-192s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-haraka-256f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-haraka-256s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-sha256-128f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-sha256-128s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-sha256-192f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-sha256-192s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-sha256-256f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-sha256-256s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-shake256-128f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-shake256-128s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-shake256-192f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-shake256-192s/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-shake256-256f/benchmarks.c
sed -i -e 's/'$ant'/'$var'/' ./SPHINCS+_c/Optimized_Implementation/sphincs-shake256-256s/benchmarks.c

