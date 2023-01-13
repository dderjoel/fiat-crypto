SECTION .text
	GLOBAL fiat_curve25519_solinas_mul2
fiat_curve25519_solinas_mul2:
sub rsp, 544
mov rax, rdx; preserving value of arg1 into a new reg
mov rdx, [ r8 + 0x8 ]; saving arg3[1] in rdx.
mulx r11, r10, [ r9 + 0x0 ]; hix119, lox118<- arg3[1] * arg4[0]
mov rdx, [ r8 + 0x8 ]; arg3[1] to rdx
mov [ rsp + 0x0 ], rbx; spilling calSv-rbx to mem
mov [ rsp + 0x8 ], rbp; spilling calSv-rbp to mem
mulx rbp, rbx, [ r9 + 0x8 ]; hix117, lox116<- arg3[1] * arg4[1]
mov rdx, [ r8 + 0x8 ]; arg3[1] to rdx
mov [ rsp + 0x10 ], r12; spilling calSv-r12 to mem
mov [ rsp + 0x18 ], r13; spilling calSv-r13 to mem
mulx r13, r12, [ r9 + 0x18 ]; hix113, lox112<- arg3[1] * arg4[3]
mov rdx, [ rax + 0x18 ]; arg1[3] to rdx
mov [ rsp + 0x20 ], r14; spilling calSv-r14 to mem
mov [ rsp + 0x28 ], r15; spilling calSv-r15 to mem
mulx r15, r14, [ rcx + 0x8 ]; hix6, lox5<- arg1[3] * arg2[1]
mov rdx, [ r8 + 0x0 ]; arg3[0] to rdx
mov [ rsp + 0x30 ], rsi; spilling out2 to mem
mov [ rsp + 0x38 ], rdi; spilling out1 to mem
mulx rdi, rsi, [ r9 + 0x8 ]; hix125, lox124<- arg3[0] * arg4[1]
mov rdx, [ rax + 0x18 ]; arg1[3] to rdx
mov [ rsp + 0x40 ], r15; spilling x6 to mem
mov [ rsp + 0x48 ], r12; spilling x112 to mem
mulx r12, r15, [ rcx + 0x18 ]; hix2, lox1<- arg1[3] * arg2[3]
mov rdx, [ r8 + 0x0 ]; arg3[0] to rdx
mov [ rsp + 0x50 ], r15; spilling x1 to mem
mov [ rsp + 0x58 ], r12; spilling x2 to mem
mulx r12, r15, [ r9 + 0x18 ]; hix121, lox120<- arg3[0] * arg4[3]
mov rdx, [ rax + 0x8 ]; arg1[1] to rdx
mov [ rsp + 0x60 ], r15; spilling x120 to mem
mov [ rsp + 0x68 ], rbp; spilling x117 to mem
mulx rbp, r15, [ rcx + 0x18 ]; hix18, lox17<- arg1[1] * arg2[3]
mov rdx, [ rax + 0x10 ]; arg1[2] to rdx
mov [ rsp + 0x70 ], r15; spilling x17 to mem
mov [ rsp + 0x78 ], rbp; spilling x18 to mem
mulx rbp, r15, [ rcx + 0x0 ]; hix16, lox15<- arg1[2] * arg2[0]
mov rdx, [ rcx + 0x0 ]; arg2[0] to rdx
mov [ rsp + 0x80 ], rbp; spilling x16 to mem
mov [ rsp + 0x88 ], r14; spilling x5 to mem
mulx r14, rbp, [ rax + 0x8 ]; hix24, lox23<- arg1[1] * arg2[0]
mov rdx, [ rax + 0x10 ]; arg1[2] to rdx
mov [ rsp + 0x90 ], r14; spilling x24 to mem
mov [ rsp + 0x98 ], rbp; spilling x23 to mem
mulx rbp, r14, [ rcx + 0x8 ]; hix14, lox13<- arg1[2] * arg2[1]
mov rdx, [ r8 + 0x0 ]; arg3[0] to rdx
mov [ rsp + 0xa0 ], rbp; spilling x14 to mem
mov [ rsp + 0xa8 ], r14; spilling x13 to mem
mulx r14, rbp, [ r9 + 0x0 ]; hix127, lox126<- arg3[0] * arg4[0]
mov rdx, [ rcx + 0x18 ]; arg2[3] to rdx
mov [ rsp + 0xb0 ], rbp; spilling x126 to mem
mov [ rsp + 0xb8 ], r15; spilling x15 to mem
mulx r15, rbp, [ rax + 0x0 ]; hix26, lox25<- arg1[0] * arg2[3]
mov rdx, [ rax + 0x8 ]; arg1[1] to rdx
mov [ rsp + 0xc0 ], rbp; spilling x25 to mem
mov [ rsp + 0xc8 ], r15; spilling x26 to mem
mulx r15, rbp, [ rcx + 0x8 ]; hix22, lox21<- arg1[1] * arg2[1]
add r10, r14; could be done better, if r0 has been u8 as well
mov rdx, [ r9 + 0x0 ]; arg4[0] to rdx
mov [ rsp + 0xd0 ], r15; spilling x22 to mem
mulx r15, r14, [ r8 + 0x10 ]; hix111, lox110<- arg3[2] * arg4[0]
mov rdx, -0x2 ; moving imm to reg
inc rdx; OF<-0x0, preserve CF   (debug: 6; load -2, increase it, save as -1)
adox r14, rdi
mov rdx, [ r8 + 0x0 ]; arg3[0] to rdx
mov [ rsp + 0xd8 ], rbp; spilling x21 to mem
mulx rbp, rdi, [ r9 + 0x10 ]; hix123, lox122<- arg3[0] * arg4[2]
seto dl; spill OF x141- to reg (rdx)
mov [ rsp + 0xe0 ], r15; spilling x111 to mem
mov r15, -0x2 ; moving imm to reg
inc r15; OF<-0x0, preserve CF   (debug: 6; load -2, increase it, save as -1)
adox rbx, r14
adcx r11, rbx
seto r14b; spill OF x152- to reg (r14)
inc r15; OF<-0x0, preserve CF (debug: state 2 (y: -1, n: 0))
adox rsi, r10
adox rdi, r11
mov r10b, dl; preserving value of x141 into a new reg
mov rdx, [ r8 + 0x18 ]; saving arg3[3] in rdx.
mulx r11, rbx, [ r9 + 0x0 ]; hix103, lox102<- arg3[3] * arg4[0]
mov rdx, [ r9 + 0x8 ]; arg4[1] to rdx
mov [ rsp + 0xe8 ], rdi; spilling x179 to mem
mulx rdi, r15, [ r8 + 0x10 ]; hix109, lox108<- arg3[2] * arg4[1]
seto dl; spill OF x180- to reg (rdx)
mov [ rsp + 0xf0 ], rsi; spilling x177 to mem
mov rsi, -0x2 ; moving imm to reg
inc rsi; OF<-0x0, preserve CF   (debug: 6; load -2, increase it, save as -1)
adox rbx, rbp
setc bpl; spill CF x166- to reg (rbp)
clc;
adcx r15, rbx
mov bl, dl; preserving value of x180 into a new reg
mov rdx, [ r9 + 0x8 ]; saving arg4[1] in rdx.
mov [ rsp + 0xf8 ], rdi; spilling x109 to mem
mulx rdi, rsi, [ r8 + 0x18 ]; hix101, lox100<- arg3[3] * arg4[1]
adox rsi, r12
mov rdx, [ rcx + 0x0 ]; arg2[0] to rdx
mov byte [ rsp + 0x100 ], bl; spilling byte x180 to mem
mulx rbx, r12, [ rax + 0x18 ]; hix8, lox7<- arg1[3] * arg2[0]
mov rdx, 0x0 ; moving imm to reg
adox r13, rdx
adcx r11, rsi
mov rsi, rdx;x137, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adcx rsi, r13
mov rdx, [ rax + 0x0 ]; arg1[0] to rdx
mov [ rsp + 0x108 ], rdi; spilling x101 to mem
mulx rdi, r13, [ rcx + 0x10 ]; hix28, lox27<- arg1[0] * arg2[2]
mov rdx, [ r8 + 0x8 ]; arg3[1] to rdx
mov [ rsp + 0x110 ], r13; spilling x27 to mem
mov [ rsp + 0x118 ], rsi; spilling x137 to mem
mulx rsi, r13, [ r9 + 0x10 ]; hix115, lox114<- arg3[1] * arg4[2]
mov rdx, -0x2 ; moving imm to reg
inc rdx; OF<-0x0, preserve CF   (debug: 6; load -2, increase it, save as -1)
adox r12, rdi
mov rdx, [ rcx + 0x8 ]; arg2[1] to rdx
mov [ rsp + 0x120 ], rsi; spilling x115 to mem
mulx rsi, rdi, [ rax + 0x0 ]; hix30, lox29<- arg1[0] * arg2[1]
setc dl; spill CF x138- to reg (rdx)
clc;
adcx rsi, [ rsp + 0xb8 ]
mov [ rsp + 0x128 ], rdi; spilling x29 to mem
mov dil, dl; preserving value of x138 into a new reg
mov rdx, [ r9 + 0x18 ]; saving arg4[3] in rdx.
mov [ rsp + 0x130 ], rsi; spilling x45 to mem
mov [ rsp + 0x138 ], rbx; spilling x8 to mem
mulx rbx, rsi, [ r8 + 0x10 ]; hix105, lox104<- arg3[2] * arg4[3]
setc dl; spill CF x46- to reg (rdx)
clc;
adcx r12, [ rsp + 0xa8 ]
mov [ rsp + 0x140 ], rsi; spilling x104 to mem
mov sil, dl; preserving value of x46 into a new reg
mov rdx, [ r9 + 0x10 ]; saving arg4[2] in rdx.
mov byte [ rsp + 0x148 ], bpl; spilling byte x166 to mem
mov [ rsp + 0x150 ], r11; spilling x135 to mem
mulx r11, rbp, [ r8 + 0x10 ]; hix107, lox106<- arg3[2] * arg4[2]
movzx rdx, dil;x139, copying x138 here, cause x138 is needed in a reg. It has those deps: "x139, size: 1", current hard deps: ""
lea rdx, [ rdx + rbx ]
mov rdi, [ rsp + 0xc8 ]; load m64 x26 to register64
mov rbx, [ rsp + 0x88 ];x35, copying x5 here, cause x5 is needed in a reg. It has those deps: "x35, x36, size: 2", current hard deps: ""
adox rbx, rdi
setc dil; spill CF x39- to reg (rdi)
clc;
mov [ rsp + 0x158 ], r11; spilling x107 to mem
mov r11, -0x1 ; moving imm to reg
movzx rsi, sil
adcx rsi, r11; loading flag
adcx r12, [ rsp + 0x80 ]
mov rsi, [ rsp + 0x78 ];x37, copying x18 here, cause x18 is needed in a reg. It has those deps: "x37, size: 1", current hard deps: ""
mov r11, 0x0 ; moving imm to reg
adox rsi, r11
dec r11; OF<-0x0, preserve CF (debug: state 3 (y: 0, n: -1))
movzx r10, r10b
adox r10, r11; loading flag
adox r15, [ rsp + 0xe0 ]
setc r10b; spill CF x48- to reg (r10)
clc;
movzx r14, r14b
adcx r14, r11; loading flag
adcx r15, r13
mov r14, [ rsp + 0x150 ];x144, copying x135 here, cause x135 is needed in a reg. It has those deps: "x144, x145, size: 2", current hard deps: ""
adox r14, rbp
setc r13b; spill CF x154- to reg (r13)
movzx rbp, byte [ rsp + 0x148 ]; load byte memx166 to register64
clc;
adcx rbp, r11; loading flag
adcx r15, [ rsp + 0x68 ]
setc bpl; spill CF x168- to reg (rbp)
clc;
movzx rdi, dil
adcx rdi, r11; loading flag
adcx rbx, [ rsp + 0x138 ]
setc dil; spill CF x41- to reg (rdi)
clc;
movzx r13, r13b
adcx r13, r11; loading flag
adcx r14, [ rsp + 0xf8 ]
mov r13, rdx; preserving value of x139 into a new reg
mov rdx, [ r8 + 0x18 ]; saving arg3[3] in rdx.
mov [ rsp + 0x160 ], rbx; spilling x40 to mem
mulx rbx, r11, [ r9 + 0x10 ]; hix99, lox98<- arg3[3] * arg4[2]
setc dl; spill CF x156- to reg (rdx)
clc;
mov [ rsp + 0x168 ], rbx; spilling x99 to mem
mov rbx, -0x1 ; moving imm to reg
movzx rbp, bpl
adcx rbp, rbx; loading flag
adcx r14, [ rsp + 0x48 ]
mov bpl, dl; preserving value of x156 into a new reg
mov rdx, [ rax + 0x10 ]; saving arg1[2] in rdx.
mov byte [ rsp + 0x170 ], r10b; spilling byte x48 to mem
mulx r10, rbx, [ rcx + 0x18 ]; hix10, lox9<- arg1[2] * arg2[3]
mov rdx, [ rsp + 0x118 ];x146, copying x137 here, cause x137 is needed in a reg. It has those deps: "x146, x147, size: 2", current hard deps: ""
adox rdx, r11
mov r11, rdx; preserving value of x146 into a new reg
mov rdx, [ rcx + 0x0 ]; saving arg2[0] in rdx.
mov [ rsp + 0x178 ], rbx; spilling x9 to mem
mov [ rsp + 0x180 ], r12; spilling x47 to mem
mulx r12, rbx, [ rax + 0x0 ]; hix32, lox31<- arg1[0] * arg2[0]
seto dl; spill OF x147- to reg (rdx)
mov [ rsp + 0x188 ], rbx; spilling x31 to mem
mov rbx, -0x2 ; moving imm to reg
inc rbx; OF<-0x0, preserve CF   (debug: 6; load -2, increase it, save as -1)
adox r12, [ rsp + 0x98 ]
mov rbx, 0x0 ; moving imm to reg
mov [ rsp + 0x190 ], r12; spilling x68 to mem
seto r12b; spill OF x69- to reg (r12)
mov [ rsp + 0x198 ], r14; spilling x169 to mem
mov r14, -0x3 ; moving imm to reg
inc r14; OF<-0x0, preserve CF (debug 7; load -3, increase it, save it as -2). #last resort
mov r14, -0x1 ; moving imm to reg
movzx rdx, dl
adox rdx, r14; loading flag
adox r13, rbx
setc dl; spill CF x170- to reg (rdx)
clc;
movzx rbp, bpl
adcx rbp, r14; loading flag
adcx r11, [ rsp + 0x108 ]
seto bpl; spill OF x149- to reg (rbp)
mov r14, -0x3 ; moving imm to reg
inc r14; OF<-0x0, preserve CF (debug 7; load -3, increase it, save it as -2). #last resort
mov r14, -0x1 ; moving imm to reg
movzx rdi, dil
adox rdi, r14; loading flag
adox rsi, rbx
adox r10, rbx
movzx rdi, byte [ rsp + 0x100 ]; load byte memx180 to register64
dec rbx; OF<-0x0, preserve CF (debug: state 1(0x0) (thanks Paul))
adox rdi, rbx; loading flag
adox r15, [ rsp + 0x60 ]
mov r14, 0x0 ; moving imm to reg
mov rdi, r14;x159, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adcx rdi, r13
mov r13, [ rsp + 0x120 ]; load m64 x115 to register64
mov r14, [ rsp + 0x198 ];x183, copying x169 here, cause x169 is needed in a reg. It has those deps: "x183, x184, size: 2", current hard deps: ""
adox r14, r13
mov r13, [ rsp + 0xd8 ]; load m64 x21 to register64
setc bl; spill CF x160- to reg (rbx)
clc;
adcx r13, [ rsp + 0x130 ]
mov [ rsp + 0x1a0 ], r15; spilling x181 to mem
mov r15b, dl; preserving value of x170 into a new reg
mov rdx, [ rax + 0x10 ]; saving arg1[2] in rdx.
mov [ rsp + 0x1a8 ], r14; spilling x183 to mem
mov byte [ rsp + 0x1b0 ], bl; spilling byte x160 to mem
mulx rbx, r14, [ rcx + 0x10 ]; hix12, lox11<- arg1[2] * arg2[2]
mov rdx, [ rcx + 0x10 ]; arg2[2] to rdx
mov [ rsp + 0x1b8 ], rbx; spilling x12 to mem
mov byte [ rsp + 0x1c0 ], bpl; spilling byte x149 to mem
mulx rbp, rbx, [ rax + 0x8 ]; hix20, lox19<- arg1[1] * arg2[2]
mov rdx, [ rax + 0x18 ]; arg1[3] to rdx
mov [ rsp + 0x1c8 ], rbp; spilling x20 to mem
mov [ rsp + 0x1d0 ], rdi; spilling x159 to mem
mulx rdi, rbp, [ rcx + 0x10 ]; hix4, lox3<- arg1[3] * arg2[2]
mov rdx, [ rsp + 0x180 ];x58, copying x47 here, cause x47 is needed in a reg. It has those deps: "x58, x59, size: 2", current hard deps: ""
adcx rdx, rbx
seto bl; spill OF x184- to reg (rbx)
mov [ rsp + 0x1d8 ], rdi; spilling x4 to mem
mov rdi, -0x1 ; moving imm to reg
inc rdi; OF<-0x0, preserve CF (debug: state 5 (thanks Paul))
mov rdi, -0x1 ; moving imm to reg
movzx r12, r12b
adox r12, rdi; loading flag
adox r13, [ rsp + 0x90 ]
mov r12, [ rsp + 0x128 ]; load m64 x29 to register64
seto dil; spill OF x71- to reg (rdi)
mov [ rsp + 0x1e0 ], rdx; spilling x58 to mem
mov rdx, -0x2 ; moving imm to reg
inc rdx; OF<-0x0, preserve CF   (debug: 6; load -2, increase it, save as -1)
adox r12, [ rsp + 0x190 ]
mov rdx, [ rsp + 0x110 ];x84, copying x27 here, cause x27 is needed in a reg. It has those deps: "x84, x85, size: 2", current hard deps: ""
adox rdx, r13
seto r13b; spill OF x85- to reg (r13)
mov [ rsp + 0x1e8 ], rdx; spilling x84 to mem
movzx rdx, byte [ rsp + 0x170 ]; load byte memx48 to register64
mov [ rsp + 0x1f0 ], r12; spilling x82 to mem
mov r12, -0x1 ; moving imm to reg
inc r12; OF<-0x0, preserve CF (debug: state 5 (thanks Paul))
mov r12, -0x1 ; moving imm to reg
adox rdx, r12; loading flag
adox r14, [ rsp + 0x160 ]
adox rbp, rsi
mov rdx, 0x0 ; moving imm to reg
mov rsi, rdx;x53, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adox rsi, r10
mov r10, [ rsp + 0xa0 ];x60, copying x14 here, cause x14 is needed in a reg. It has those deps: "x60, x61, size: 2", current hard deps: ""
adcx r10, r14
mov r14, [ rsp + 0x40 ];x62, copying x6 here, cause x6 is needed in a reg. It has those deps: "x62, x63, size: 2", current hard deps: ""
adcx r14, rbp
mov rdx, [ r8 + 0x18 ]; arg3[3] to rdx
mulx r12, rbp, [ r9 + 0x18 ]; hix97, lox96<- arg3[3] * arg4[3]
mov rdx, 0x0 ; moving imm to reg
mov byte [ rsp + 0x1f8 ], r13b; spilling byte x85 to mem
mov r13, rdx;x64, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adcx r13, rsi
mov rsi, [ rsp + 0x58 ];x55, copying x2 here, cause x2 is needed in a reg. It has those deps: "x55, size: 1", current hard deps: ""
adox rsi, rdx
adcx rsi, rdx
add r15b, 0x7F; load flag from rm/8 into OF, clears other flag. NOTE, if operand1 is not a byte reg, this fails.
adox r11, [ rsp + 0x140 ]
mov r15, -0x1 ; moving imm to reg
movzx rbx, bl
adcx rbx, r15; loading flag
adcx r11, [ rsp + 0x158 ]
mov rbx, [ rsp + 0x1d0 ];x173, copying x159 here, cause x159 is needed in a reg. It has those deps: "x173, x174, size: 2", current hard deps: ""
adox rbx, rbp
movzx rbp, byte [ rsp + 0x1c0 ]; load byte memx149 to register64
lea r12, [ r12 + rbp ]; r64+m8
movzx rbp, byte [ rsp + 0x1b0 ]; load byte memx160 to register64
lea r12, [ r12 + rdx ]
lea r12, [ r12 + rbp ]
mov rbp, [ rsp + 0x168 ];x187, copying x99 here, cause x99 is needed in a reg. It has those deps: "x187, x188, size: 2", current hard deps: ""
adcx rbp, rbx
adox r12, rdx
adcx r12, rdx
mov rbx, 0x26 ; moving imm to reg
mov rdx, rbx; 0x26 to rdx
mulx r15, rbx, rbp; hix233, lox232<- 0x26 * x187
mov [ rsp + 0x200 ], r15; spilling x233 to mem
mulx r15, rbp, r12; hix231, lox230<- 0x26 * x189
mov r12, [ rsp + 0xd0 ]; load m64 x22 to register64
add dil, 0xFF; load flag from rm/8 into CF, clears other flag. NOTE, if operand1 is not a byte reg, this fails.
adcx r12, [ rsp + 0x1e0 ]
mov [ rsp + 0x208 ], r12; spilling x72 to mem
mulx r12, rdi, r11; hix235, lox234<- 0x26 * x185
adox rdi, [ rsp + 0xf0 ]
mov r11, [ rsp + 0x70 ];x74, copying x17 here, cause x17 is needed in a reg. It has those deps: "x74, x75, size: 2", current hard deps: ""
adcx r11, r10
mov r10, [ rsp + 0xe8 ];x240, copying x179 here, cause x179 is needed in a reg. It has those deps: "x240, x241, size: 2", current hard deps: ""
adox r10, rbx
mov rbx, [ rsp + 0x178 ];x76, copying x9 here, cause x9 is needed in a reg. It has those deps: "x76, x77, size: 2", current hard deps: ""
adcx rbx, r14
mov r14, [ rsp + 0x50 ];x78, copying x1 here, cause x1 is needed in a reg. It has those deps: "x78, x79, size: 2", current hard deps: ""
adcx r14, r13
mov r13, 0x0 ; moving imm to reg
adcx rsi, r13
mov [ rsp + 0x210 ], rsi; spilling x80 to mem
mulx rsi, r13, [ rsp + 0x1a8 ]; hix237, lox236<- 0x26 * x183
clc;
adcx r13, [ rsp + 0xb0 ]
adcx rsi, rdi
adcx r12, r10
mov rdi, [ rsp + 0x1a0 ];x242, copying x181 here, cause x181 is needed in a reg. It has those deps: "x242, x243, size: 2", current hard deps: ""
adox rdi, rbp
mov rbp, [ rsp + 0x200 ];x251, copying x233 here, cause x233 is needed in a reg. It has those deps: "x251, x252, size: 2", current hard deps: ""
adcx rbp, rdi
mov r10, 0x0 ; moving imm to reg
adox r15, r10
adc r15, 0x0; add CF to r0's alloc
mulx r10, rdi, r15; hi_, lox254<- 0x26 * x253
mov r10, [ rsp + 0x208 ]; load m64 x72 to register64
add byte [ rsp + 0x1f8 ], 0xFF; load flag from rm/8 into CF, clears other flag. NOTE, if operand1 is not a byte reg, this fails.
adcx r10, [ rsp + 0xc0 ]
adox rdi, r13
mov r13, [ rsp + 0x1c8 ];x88, copying x20 here, cause x20 is needed in a reg. It has those deps: "x88, x89, size: 2", current hard deps: ""
adcx r13, r11
mulx r15, r11, r13; hix196, lox195<- 0x26 * x88
mov r13, [ rsp + 0x1b8 ];x90, copying x12 here, cause x12 is needed in a reg. It has those deps: "x90, x91, size: 2", current hard deps: ""
adcx r13, rbx
mov rbx, [ rsp + 0x1d8 ];x92, copying x4 here, cause x4 is needed in a reg. It has those deps: "x92, x93, size: 2", current hard deps: ""
adcx rbx, r14
mov r14, 0x0 ; moving imm to reg
mov rdx, r14;x94, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adcx rdx, [ rsp + 0x210 ]
mov [ rsp + 0x218 ], rdi; spilling x256 to mem
mov rdi, r14;x258, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adox rdi, rsi
mov rsi, r14;x260, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adox rsi, r12
mov r12, [ rsp + 0x30 ]; load m64 out2 to register64
mov [ r12 + 0x8 ], rdi; out2[1] = x258
mov rdi, r14;x262, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adox rdi, rbp
mov rbp, 0x26 ; moving imm to reg
mulx r12, r14, rbp; hi_, lox201<- 0x26 * x94
mov r12, [ rsp + 0x30 ]; load m64 out2 to register64
mov [ r12 + 0x18 ], rdi; out2[3] = x262
mov [ r12 + 0x10 ], rsi; out2[2] = x260
clc;
adcx r11, [ rsp + 0x188 ]
xchg rdx, rbp; 0x26, swapping with x94, which is currently in rdx
mulx rdi, rsi, r13; hix194, lox193<- 0x26 * x90
seto r13b; spill OF x263- to reg (r13)
mov rdx, -0x2 ; moving imm to reg
inc rdx; OF<-0x0, preserve CF   (debug: 6; load -2, increase it, save as -1)
adox rsi, [ rsp + 0x1f0 ]
adcx r15, rsi
mov rsi, 0x26 ; moving imm to reg
mov rdx, rsi; 0x26 to rdx
mulx r12, rsi, rbx; hix192, lox191<- 0x26 * x92
mov rbx, [ rsp + 0x1e8 ];x199, copying x84 here, cause x84 is needed in a reg. It has those deps: "x199, x200, size: 2", current hard deps: ""
adox rbx, rsi
adox r14, r10
mulx rsi, r10, rbp; hix206, lo_<- 0x26 * x94
adcx rdi, rbx
adcx r12, r14
mov r10, 0x0 ; moving imm to reg
adox rsi, r10
adc rsi, 0x0; add CF to r0's alloc
mulx rbx, rbp, rsi; hi_, lox217<- 0x26 * x216
add rbp, r11; could be done better, if r0 has been u8 as well
mov rbx, r10;x221, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adcx rbx, r15
mov r11, r10;x223, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
adcx r11, rdi
mov r15, [ rsp + 0x38 ]; load m64 out1 to register64
mov [ r15 + 0x8 ], rbx; out1[1] = x221
setc r14b; spill CF x224- to reg (r14)
mov rdi, r10;x264, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
test r13b, r13b; testing x263
cmovnz rdi, rdx; if !ZF, x264<- 0x26 (nzVar)
xor r13, r13
adox rdi, [ rsp + 0x218 ]
mov r10, [ rsp + 0x30 ]; load m64 out2 to register64
mov [ r10 + 0x0 ], rdi; out2[0] = x265
add r14b, 0x7F; load flag from rm/8 into OF, clears other flag. NOTE, if operand1 is not a byte reg, this fails.
adox r12, r13
mov rsi, r13;x227, copying 0x0 here, cause 0x0 is needed in a reg. It has those deps: "x33, x34, x38, x39, x42, x43, x45, x46, x53, x54, x56", current hard deps: ""
cmovo rsi, rdx; if OF, x227<- 0x26 (nzVar)
adcx rbp, rsi
mov [ r15 + 0x0 ], rbp; out1[0] = x228
mov [ r15 + 0x10 ], r11; out1[2] = x223
mov [ r15 + 0x18 ], r12; out1[3] = x225
mov rbx, [ rsp + 0x0 ]; pop
mov rbp, [ rsp + 0x8 ]; pop
mov r12, [ rsp + 0x10 ]; pop
mov r13, [ rsp + 0x18 ]; pop
mov r14, [ rsp + 0x20 ]; pop
mov r15, [ rsp + 0x28 ]; pop
add rsp, 544
ret
; cpu Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz
; ratio 1.8071
; seed 1221556934594809 
; CC / CFLAGS gcc / -march=native -mtune=native -O3 
; time needed: 624336 ms on 10000 evaluations.
; Time spent for assembling and measuring (initial batch_size=42, initial num_batches=31): 12566 ms
; number of used evaluations: 10000
; Ratio (time for assembling + measure)/(total runtime for 10000 evals): 0.020126982906640015
; number reverted permutation / tried permutation: 3312 / 4915 =67.386%
; number reverted decision / tried decision: 3187 / 5084 =62.687%
