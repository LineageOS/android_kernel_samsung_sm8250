#!/bin/bash
function make-kernel-clang() {
    ARCH=arm64 CC=clang LD=ld.lld LLVM=1 make O=../out $@
}

make-kernel-clang vendor/kona-perf_defconfig
mv ../out/.config{,_a}

make-kernel-clang vendor/kona-perf_defconfig vendor/samsung/kona-sec-common.config
mv ../out/.config{,_b}
scripts/diffconfig -m ../out/.config_{a,b} > arch/arm64/configs/vendor/samsung/kona-sec-common.config

for x in bloomxq c1q c2q f2q gts7l gts7lwifi gts7xl gts7xlwifi r8q x1q y2q z3q; do
    make-kernel-clang vendor/kona-perf_defconfig vendor/samsung/kona-sec-common.config vendor/samsung/$x.config
    mv ../out/.config{,_c}
    scripts/diffconfig -m ../out/.config_{b,c} > arch/arm64/configs/vendor/samsung/$x.config
done
