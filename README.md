# Writing a Kernel

Writing a kernel is a monumental task, and we require many working parts.  

Our first task is building a bootloader.  

## Building a Bootloader  

A bootloader runs before a kernel.
It's repsonsible for:  
- Being loaded by the BIOS or UEFI
- Switching CPU modes 
- Loading a kernel binary into memory
- Jumping to your kernel's entry point. 