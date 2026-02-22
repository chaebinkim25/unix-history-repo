# assembly syntax for PDP-11

## 1. Registers

size: 16 bit

purposes:

- **`r6` (stack pointer):** memory address of system and user.
- **`r7` (program counter):** memory address of next intruction.
- **`r0` to `r5`:** general purpose.

(registers in hardware extension. not shown in pdp-11 assembly reference)

- **`ac` (accumulator):** result of arithmetic operation.
- **`mq` (multiplier quotient):** holds the lower half during * and /.
- **`sc` (step count):** keeps track of remaining bits to shift.

(memory mapped)

- **`ps` (processor status):** interrupt (bit 7-5), trace (bit 4), negative (bit 3), zero (bit 2), overflow (bit 1), carry (bit 0).

## 2. Addressing Modes

- **`R` (value):** value stored in the register R.
- **`-(R)` (decrement):** decrement the value stored in the register R and then get the value (1 for byte intructions and 2 for word instructions. In SP, always 2).
- **`(R)+` (increment):** get value stored in the register R and then increment it (1 for byte intructions and 2 for word instructions In SP, always 2).
- **`X(R)` (index):** get value stored in the memory address of (X + R). X is octal. use X. for decimal.
- **`$L` (immediate):** mark L as constant. L can be literal or named constant. 
- **`*V` (indirect):** treat V as memory address. V can be anything addressing modes.

## 3. Instruction Set

The default operand is a word. Add `b` at the end of the instruction verb to make it a byte operation. 
Exception: `add` and `sub` are word-only instructions

(arithmetic instructions)

- **`mov A, B` (move):** move word from A to B.
- **`clr A` (clear):** set A to word 0.
- **`add A, B` (add):** add A and B, store the result in `B`
- **`sub A, B` (subtract):** subtract A from B, store the result in `B`
- **`inc A` (increment):** add 1 and A, store the result in 'A'
- **`dec A` (decrement):** subtract 1 from A, store the result in `A`

(bitwise instructions)

- **`asl A` (arithmetic shift left):** move bits of A to the left by 1, pad 0 on the right.
- **`asr A` (arithmetic shift right):** move bits of A to the right by 1, pad sign bit on the left.
- **`rol A` (rotate left):** move bits of A to the left by 1, pad the leftmost bit on the right.
- **`bit A, B` (bit test):** store (A & B) != 0 to zero flag. store (A & B) < 0 to negative flag.
- **`bic A, B` (bit clear):** store (B & ~A) to B.
- **`bis A, B` (bit set):** store (B | A) to B.

(compare instructions)

- **`cmp A B` (compare):** calculate A - B and set zero flag, negative flag, and overflow flag according to the result.
- **`tst A` (test):** calculate A - 0 and set zero flag

(branch instructions)

- **`beq A` (branch if equal):** jump to A when zero flag is set.
- **`bne A` (branch if equal):** jump to A when zero flag is not set.
- **`bge A` (branch if greater than or equal):** jump to A when negative flag equals to overflow flag.
- **`blt A` (branch if less than):** jump to A when negative flag not equals to overflow flag.
- **`blo A` (branch if less than unsigned):** 
- **`bhis A` (branch if greater than unsigned):**
- **`br A` (branch relative):**
- **`jmp A` (jump):**
- **`jsr Rn, label` (jump save return):**
- **`rts Rn` (return to saved):**
- **`rti` (return from interrupt):**
- **`sys` (system trap):**






