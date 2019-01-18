
int main()
{
   register int r1=30;
   register int r2=10;
   int r3 = r1 + r2,r4 =r1-r2 ,r5 = r1 * r2 ,r6 = r1/r2 ,r7 = r1 & r2 ,r8 = r1 | r2,r9 = r1 ^ r2;
   
 
}


gcc -O0 -S -masm=intel practice.c -o practice_O0.asm
as -g practice_intel.asm -o practice_intel.o
as -g practice_intel.asm -o practice_intel.o
ld -g -o practice_intel practice_intel.o -lc --entry main
ld -g -o practice_intel practice_intel.o -lc --entry main
gcc -c -g practice_intel.asm -o practice_intel.o
gcc -g practice_intel.o -o practice_intel
gcc practice.c -o practice.o
objdump -S pratice.o 

