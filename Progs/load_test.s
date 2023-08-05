.text

_start:
    la x5, msg
    addi x6, x0, 0

_read_str:
    lb x7, 0(x5)
    addi x5, x5, 1
    bne x7, x6, _read_str

_end:
    jal x0, _end

.data
msg:    .string "Hello world!"
