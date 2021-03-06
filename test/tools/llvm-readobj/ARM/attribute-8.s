@ RUN: llvm-mc -triple armv7-elf -filetype asm -o - %s | FileCheck %s
@ RUN: llvm-mc -triple armv7-eabi -filetype obj -o - %s \
@ RUN:   | llvm-readobj -arm-attributes - | FileCheck %s --check-prefix=CHECK-OBJ
.eabi_attribute  Tag_CPU_arch, 8
@CHECK:   .eabi_attribute 6, 8
@CHECK-OBJ: Tag: 6
@CHECK-OBJ-NEXT: Value: 8
@CHECK-OBJ-NEXT: TagName: CPU_arch
@CHECK-OBJ-NEXT: Description: ARM v6T2

.eabi_attribute  Tag_FP_arch, 8
@CHECK:   .eabi_attribute 10, 8
@CHECK-OBJ: Tag: 10
@CHECK-OBJ-NEXT: Value: 8
@CHECK-OBJ-NEXT: TagName: FP_arch
@CHECK-OBJ-NEXT: Description: ARMv8-a FP-D16

.eabi_attribute  Tag_ABI_align_needed, 8
@CHECK:   .eabi_attribute 24, 8
@CHECK-OBJ: Tag: 24
@CHECK-OBJ-NEXT: Value: 8
@CHECK-OBJ-NEXT: TagName: ABI_align_needed
@CHECK-OBJ-NEXT: Description: 8-byte alignment, 256-byte extended alignment

.eabi_attribute  Tag_ABI_align_preserved, 8
@CHECK:   .eabi_attribute 25, 8
@CHECK-OBJ: Tag: 25
@CHECK-OBJ-NEXT: Value: 8
@CHECK-OBJ-NEXT: TagName: ABI_align_preserved
@CHECK-OBJ-NEXT: Description: 8-byte stack alignment, 256-byte data alignment

