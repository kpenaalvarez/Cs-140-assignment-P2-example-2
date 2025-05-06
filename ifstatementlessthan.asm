# Title:	lab  A P2		Filename: if statement less than
# Author: 	Kevin Peña	Date: 5/5/25
# Description:
# Input:
# Output:
################# Data segment #####################
.data
f: .word 0

################# Code segment #####################
.text
.globl main

main:

#initialize variables

  li  $t1, 5   #g = 5
  li  $t2, 2   #h = 2
  li  $t3, 10   #i = 10
  li  $t4, 12   #j = 12

#compare i and j

  blt $t3, $t4, less_than  # if i < j, and go to less_than branch if true


#else
  sub $t0, $t1, $t2 #f = g - h
  j done

less_than:

  add $t0, $t1, $t2 #f = g + h

done:
  sw $t0, f #stores f in memory
  li $v0, 1 #print int
  move $a0, $t0 # move f to $a0 to print
  syscall

  li $v0, 10
  syscall

