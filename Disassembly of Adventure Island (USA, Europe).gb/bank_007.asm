; Disassembly of "Adventure Island (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    jr nz, jr_007_4042

    sub l
    ld b, e
    cp l
    ld b, [hl]
    pop de
    ld c, c
    add c
    ld c, h
    ld b, $50
    inc sp
    ld d, e
    ld e, l
    ld d, [hl]
    ld c, h
    ld e, c
    ld [hl], c
    ld e, c
    sub h
    ld e, c
    ld [c], a
    ld e, b
    ld [bc], a
    ld e, c
    ld [hl+], a
    ld e, c
    nop
    nop
    ld h, b
    ld e, d
    dec c
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    adc a
    cp $bf
    ld hl, sp-$31
    rst $08

jr_007_402d:
    dec c
    ld a, [bc]
    ld bc, $0a0d
    nop
    ld [hl+], a
    rst $38
    db $e4
    cp a
    ld sp, hl
    sbc a
    di
    ld e, $e7
    cp h
    rst $08
    cp b
    rst $28
    ld [hl], b
    rst $28

jr_007_4042:
    ret nc

    rst $20
    jr c, jr_007_402d

    ret c

    rst $20
    dec a
    db $e3
    rst $38
    ld d, c
    ld a, a
    dec l
    ccf
    ld a, [de]
    ld a, [de]
    nop
    nop
    rst $08
    db $fd
    ld a, a
    pop af
    sbc a
    db $fd
    and $7e
    ld sp, hl
    rra
    cp $06
    cp $02
    db $fc
    inc e
    ldh [$60], a
    add b
    add b
    dec c
    inc c
    nop
    ld [$080f], sp
    rrca
    inc sp
    ccf
    scf
    rra
    daa
    dec a
    daa
    ccf
    inc hl
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    adc a
    cp $bf
    ld hl, sp-$31
    rst $08
    dec c
    ld b, $00
    ld h, l
    rst $38
    add hl, hl
    rst $38
    cp e
    cp $d3
    ld a, [hl]
    rst $10
    ld a, h
    rst $10
    db $fc
    and c
    cp $20
    rst $38
    ldh a, [$af]
    ld hl, sp-$79
    rst $38
    dec h
    rst $38
    push af
    sbc a
    sbc l
    inc bc
    inc bc
    dec c
    ld [$c000], sp
    nop
    ld h, b
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    db $e4
    ld a, d
    cp $17
    db $fd
    cpl
    ld sp, hl
    ld e, a
    pop af
    cp a
    pop hl
    ld a, [hl]
    jp nz, $c27e

    db $fc
    add h
    db $fc
    add h
    ld h, d
    rst $38
    inc h
    rst $38
    xor b
    rst $38
    rst $10
    ld a, a
    ret c

    ld a, a
    db $d3
    rst $38
    and e
    db $fc
    ld hl, $f0fe
    xor a
    ld hl, sp-$79
    rst $38
    dec h
    rst $38
    push af
    sbc a
    sbc l
    inc bc
    inc bc
    dec c
    inc b
    nop
    rrca
    rst $38
    add hl, de
    rst $38
    rst $20
    rst $38
    rra
    ld sp, hl
    rst $38
    pop hl
    cp $02
    db $fc
    inc b
    cp $06
    ld [bc], a
    cp $7c
    db $fc
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    add b
    add b
    dec c
    inc b
    nop
    ld [$080f], sp
    rrca
    inc sp
    ccf
    scf
    rra
    daa
    dec a
    daa
    ccf
    inc hl
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    adc a
    cp $bf
    ld hl, sp-$31
    rst $08
    nop
    nop
    dec c
    inc b
    ld bc, $ff62
    inc h
    rst $38
    xor a
    rst $38
    ret c

    ld a, a
    ret nc

    ld a, a
    db $d3
    cp $ab
    cp $29
    rst $38
    db $fd
    and a
    db $fd
    add a
    db $fc
    daa
    cp $f7
    sbc [hl]
    rst $38
    cp [hl]
    db $e3
    ld a, a
    jp $87fc


    ld [$08f8], sp
    ld hl, sp-$70
    ldh a, [$60]
    ldh [rNR32], a
    db $fc
    add d
    ld a, [hl]
    xor $1e
    pop af
    rrca
    ld a, [c]
    ld c, $fc
    inc c
    ld hl, sp-$78
    ld hl, sp-$78
    db $fc
    add h
    ld a, h
    call nz, $c47c
    ld a, [hl]
    ld [c], a
    dec c
    inc b
    nop
    ret nz

    nop
    ld h, b
    add b
    ld hl, sp+$00
    ld hl, sp+$00

jr_007_416a:
    ld hl, sp-$20
    ld a, b
    ld hl, sp+$7c
    db $fc
    jr c, jr_007_416a

    inc l
    db $fc
    ld [$18f8], sp
    ld hl, sp+$30
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$0d
    inc b
    nop
    ld [hl], e
    nop
    ld a, [hl]
    ld h, c
    rra
    ld e, $71
    ld a, a
    jp Jump_007_45ff


    dec sp
    ld l, [hl]
    ld e, l
    ld l, [hl]
    ld e, l
    call nz, $88bb
    rst $38
    add sp, -$01
    jr nz, @+$01

    jr c, @+$01

    jr nz, @+$01

    dec c
    ld c, $00
    jr jr_007_41ba

    inc a
    inc h
    ld a, [hl]
    ld b, d
    db $fd
    add a
    ld sp, hl
    sbc a
    pop hl
    rst $38
    db $e3
    rst $38
    db $76
    ld a, [hl]
    inc a
    inc a
    sbc a
    di
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl

jr_007_41ba:
    rst $38
    ld [bc], a
    rst $38
    jp nz, Jump_000_34ff

    rst $38
    rrca
    rst $38
    ld sp, hl
    add a
    db $fc
    ld b, e
    ld a, [hl]
    dec a
    ccf
    ld h, c
    ld a, a

jr_007_41cc:
    cp a
    rst $18
    dec a
    rst $28
    rst $30
    rst $30
    add b
    nop
    ldh [$80], a
    ldh a, [rP1]
    ld hl, sp+$00
    jr jr_007_41cc

    ld a, h
    ld hl, sp+$3c
    ret c

    ld a, b
    or b
    ld [hl], b
    or b
    ld l, $de
    jp hl


    ccf
    sbc $ee
    ldh a, [$30]
    ret nc

    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    nop
    rlca
    nop
    rra
    ld [bc], a
    ccf
    nop
    ccf
    nop
    ld a, a
    inc bc
    ld a, l
    rlca
    ld a, h
    rla
    ld l, l
    ld [hl], $e9
    or [hl]
    ld a, b
    ld c, a
    ld hl, sp-$09
    ld a, [hl]
    ld a, c
    rrca
    ld c, $10
    rra
    ld h, b
    ld a, a
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$20
    db $fc

jr_007_4219:
    nop
    cp $f8
    adc $fc
    rlca
    cp $8f
    db $76
    sbc $ec
    db $db
    rst $28
    adc d
    ld [hl], a
    ld [hl-], a
    rst $38
    ld c, e
    rst $38
    db $fd
    rrca
    nop
    rst $38
    ld bc, $0dff
    ld [de], a
    nop
    ret nz

    ret nz

    jr nz, jr_007_4219

    ret nz

    ret nz

    dec c

jr_007_423c:
    inc b
    nop
    add b
    add b
    ret nz

    ld b, b
    dec c
    inc b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0500
    inc b
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0d01
    ld [$8000], sp
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$c0], a
    ret nz

    and b
    and b
    ret nc

    ldh a, [rOBP0]
    ld hl, sp+$24
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    adc h
    db $f4
    jr c, jr_007_423c

    ldh a, [rNR10]
    ldh [$e0], a
    dec c
    inc b
    add b
    ld [hl], c
    ld a, a
    ld h, c
    ccf
    ld b, c
    ld a, a
    sub h
    rst $38
    add b
    rst $38
    ld h, c
    ld a, a
    ld e, $1f
    ldh a, [$bf]
    ld c, a
    ld a, a
    push de
    cp [hl]
    ld a, e
    ld a, h
    rrca
    rrca
    dec b
    ld b, $0e
    rrca
    dec de
    rra
    add hl, sp
    cpl
    ret nz

    ret nz

    ldh [rNR41], a
    ret nz

    ld b, b
    ldh a, [$f0]
    ld hl, sp+$08
    db $fc
    inc b
    cp $32
    cp $c2
    ld a, a
    rst $00
    rst $38
    db $fc
    rst $38
    db $10
    ld hl, sp+$4f
    rst $38
    add a
    ld a, [hl]
    jp nz, $e23e

    db $fc
    db $fc
    dec c
    inc c
    nop
    rlca
    rlca
    ccf
    add hl, sp
    ld sp, hl
    rst $00
    and $1e
    sbc b
    ld a, b
    ld h, b
    ldh [$80], a
    add b
    dec c
    inc e
    nop
    inc b
    inc b
    dec bc
    rrca
    ld [de], a
    rra
    inc d
    rra
    jr nz, jr_007_4318

    dec c
    inc d
    nop
    jr c, jr_007_4316

    call nz, $09fc
    ld sp, hl
    ld e, $ff
    ld [$e1ff], sp
    rst $38
    dec c
    jr jr_007_42eb

jr_007_42eb:
    add b
    add b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    di
    sbc a
    ldh a, [$ef]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    rst $38
    rst $30
    cp b
    ld a, a
    call c, $ff37
    rst $38
    and d
    ld a, a
    pop af
    rst $38
    ld hl, sp-$51
    ld hl, sp+$4f
    ld [hl], c
    ld a, a
    ld h, c

jr_007_4316:
    ccf
    ld d, l

jr_007_4318:
    ld a, a
    add b
    rst $38
    cp h
    rst $38
    ld b, e
    ld b, e
    rlca
    rlca
    ld a, b
    ld e, a
    daa
    ccf
    ld [hl], l
    ld e, [hl]
    dec sp
    inc a
    rst $38
    xor a
    adc d
    rst $38
    ld b, a
    ld a, a
    inc h
    inc a
    jr c, jr_007_436b

    di
    sbc a
    ldh a, [$ef]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    call nz, Call_000_1cff
    rst $38
    cp $f7
    cp b
    ld a, a
    call c, $ff37
    rst $38
    db $d3
    ccf
    ld [hl], c
    cp a
    ret c

    rst $18
    rrca
    ld a, [bc]
    ld [hl], c
    ld a, a
    ld h, c
    ccf
    ld b, c
    ld a, a
    sub h
    rst $38
    add b
    rst $38
    ld h, c
    ld a, a
    ld e, $1f
    ld [hl], b
    ld e, a
    cpl
    ccf
    ld [hl], l
    ld e, [hl]
    dec sp
    inc a
    rrca
    rrca

jr_007_436b:
    dec e
    ld e, $36
    ccf
    ld h, e
    ld a, a
    db $e4
    cp h
    di
    sbc a
    ldh a, [$ef]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    jr @+$01

    cp $ef
    or b
    ld a, a
    ld hl, sp+$2f
    rst $38
    rst $38
    pop de
    ccf
    db $f4
    ccf
    cp $eb
    ld a, $2b
    dec c
    nop

jr_007_4395:
    ld a, [bc]
    ld a, h
    db $fc
    add e
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    add b
    add b
    ld a, [bc]
    ld c, $00
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_007_4395

    db $10
    ldh a, [$2c]
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ld sp, hl
    cp a
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, h
    db $fc
    add e
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $ff
    ld sp, $00ff

jr_007_43d3:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld c, $00
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_007_43d3

    ld c, h
    db $fc
    add d
    cp $41
    rst $38
    ld hl, $3fff
    rst $38
    ldh [$e0], a
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, h
    db $fc
    add e

jr_007_43f5:
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ld [$07ff], sp
    db $fc
    inc bc
    cp $81
    rst $38
    pop hl
    rst $38
    rra
    rra
    ld a, [bc]
    ld a, [bc]
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_007_43f5

    db $10
    ldh a, [rNR23]
    ld hl, sp+$14
    db $fc
    add d
    ld a, [hl]
    pop hl
    ccf
    ld sp, hl
    rst $38
    rlca
    rlca
    ld a, [bc]
    ld [$3f00], sp
    nop
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add hl, bc
    or $1b
    or $1b
    db $fc
    rrca
    db $fc
    rlca
    rst $38
    sbc a
    ldh [rIE], a
    ret nz

    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$c0]
    ldh a, [$b0]
    ldh [$60], a
    ret nc

    ld [hl], b
    ld d, b
    or b
    ld hl, sp-$08
    ld b, $fe
    ld bc, $71ff
    rst $38
    sbc [hl]
    cp $10
    ldh a, [rNR10]
    ldh a, [$03]
    ld [bc], a
    rlca
    inc b
    rrca
    dec bc
    inc b
    rlca
    ld [$700f], sp
    ld a, a
    rst $38
    sbc a
    ld a, a
    ld b, b
    dec sp
    ccf
    rra
    dec d
    dec de
    rra
    ld c, $0e
    ld a, [bc]
    ld [$e000], sp
    ld a, a
    rst $38
    rra
    rst $38
    add b
    ld a, a
    ret nc

    ld l, a
    db $eb
    add h
    add h
    rst $38
    nop
    rst $38

jr_007_4490:
    nop
    rst $38
    rst $38
    ld a, [bc]
    ld c, $00
    jr c, jr_007_4490

    db $fc
    db $e4
    call c, $8874
    ld hl, sp-$78
    ld hl, sp-$72
    cp $ff
    ld a, c
    cp $02
    db $fc
    call c, $f8a8
    ld hl, sp-$28
    ld [hl], b
    ld [hl], b
    ld a, [bc]
    ld [$8200], sp
    rst $38
    call c, Call_000_24ff
    daa
    ld [bc], a
    inc bc
    ld a, [bc]
    ld b, $01
    ld a, [bc]
    ld [de], a
    nop
    inc bc
    rst $38
    rlca
    cp $1f

Call_007_44c4:
    ld hl, sp-$01
    pop hl
    cp $02
    cp $3a
    db $ec
    inc a
    push bc
    db $fd
    ld b, e
    ld a, [hl]
    daa
    inc a
    rra
    add hl, de
    rra
    inc de
    ccf
    ld h, $7f
    ld c, a
    ld a, [hl]
    ld a, e
    rlca
    rlca
    ld [c], a
    ld [hl+], a
    rst $10
    push af
    adc a
    ld sp, hl
    sbc $f2
    ld a, $26
    ld a, l
    ld c, a
    rst $38
    sbc a
    rst $30
    dec a
    adc $4e
    add b
    add b
    ld a, [bc]
    inc b
    nop
    ld a, [bc]
    ld b, $80
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    rrca
    inc e
    rla
    ld e, $13
    rra
    add hl, de
    ccf
    inc l
    ccf
    ld a, $2f
    dec sp
    inc e
    inc e
    ld a, [bc]
    inc h
    nop
    ld [bc], a
    nop
    inc b
    ld bc, $0208
    ld bc, HeaderLogo
    inc c
    ld a, [bc]
    inc c
    nop
    ld [bc], a
    ld bc, $0608

jr_007_4521:
    jr nc, jr_007_452c

    ld b, b
    scf
    rlca
    ld hl, sp+$7c
    add e
    jr jr_007_4531

    and b

jr_007_452c:
    ld c, l
    ret nc

    inc h
    ret nc

    daa

jr_007_4531:
    ld a, [bc]
    ld a, [bc]
    nop
    ret nz

    jr nz, jr_007_4537

jr_007_4537:
    ret nz

    nop
    rrca
    inc e
    db $e3
    ldh [rNR34], a
    add b
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    add b
    ld a, [bc]
    rrca
    nop
    ldh [rP1], a
    add b
    ld a, [bc]
    dec bc
    nop
    inc b
    nop
    dec b
    ld a, [bc]
    rrca
    nop
    ld [bc], a
    ld bc, $0304
    ld [$1007], sp
    rrca
    jr nz, jr_007_4572

    jr nz, jr_007_4584

    ld b, b
    rra
    ld b, b
    inc e
    jp $1c01


    inc c
    ld [hl-], a
    jr jr_007_4597

    db $10
    ld l, a

jr_007_4572:
    jr nz, jr_007_45d3

    ld h, b
    sbc b
    ld b, $e0
    inc d
    add b
    ld h, h
    db $10
    call z, $ce21
    jr nz, @-$5f

    ld b, b
    sbc h
    ld b, e

jr_007_4584:
    jr nz, @-$62

    nop
    and b
    nop
    nop
    ldh a, [rTAC]
    ldh [$0e], a
    nop
    rra
    nop
    ldh [$0b], a
    sub b
    inc b
    inc sp
    db $10

jr_007_4597:
    ld h, h
    ld hl, $5840
    add c
    jr nc, jr_007_4521

    ld b, b
    ld h, $88
    ld b, c

jr_007_45a2:
    db $10
    add a

jr_007_45a4:
    ld hl, $410e
    ld e, $81
    ld a, $0a
    rlca
    nop

jr_007_45ad:
    ret nz

    nop
    nop
    ldh a, [rP1]
    inc c
    ldh [rSC], a
    call c, $9e01
    ld b, b
    rra
    ld b, b
    sbc a
    add b
    ccf
    add b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    dec d
    ld bc, $1134
    inc b
    nop
    ld [hl+], a
    jr jr_007_45f2

    ld [$1002], sp

jr_007_45d3:
    ld [hl+], a
    inc c
    ld sp, $010c
    add b
    db $10
    add d
    inc c
    ld b, b
    add d
    ld b, b
    add b
    jr nz, jr_007_45a2

    jr nz, jr_007_45a4

    jr nz, @-$3e

    nop
    add b
    add b
    nop
    ld b, b
    jr nz, jr_007_45ad

    nop
    and b
    db $10
    ld h, b
    db $10

jr_007_45f2:
    ldh [rP1], a
    ld b, b
    db $10
    jr nz, jr_007_4608

    nop
    and b
    nop
    and b
    nop
    ret nz

    nop

Jump_007_45ff:
    ld h, b
    nop
    jr nc, jr_007_4603

jr_007_4603:
    jr nc, jr_007_4605

jr_007_4605:
    jr jr_007_4637

    adc h

jr_007_4608:
    jr nz, @-$6e

    nop
    and b
    nop
    add b
    ld a, [bc]
    ld c, $00
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0100
    ld bc, $0200
    nop
    inc b
    ld bc, $0308
    db $10
    rlca
    db $10
    rlca
    jr nz, jr_007_4638

    ld b, b
    rra
    ld b, b
    rra
    add b
    ccf
    add b
    ccf
    nop
    cp h
    nop
    ld [hl], b
    nop
    ld b, b

jr_007_4637:
    ld a, [bc]

jr_007_4638:
    inc b
    nop
    ld [bc], a
    ld a, h
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop bc
    nop
    ld bc, $0000
    nop
    ld bc, $0300
    ld l, h
    ld bc, $01dc
    nop
    rst $38

jr_007_465c:
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ei
    ld bc, $01c6
    ld e, $62
    dec c
    inc b
    sbc d
    nop
    sbc $00
    sbc h
    jr nz, jr_007_46ca

    nop
    ld hl, sp+$00
    call c, $8c20
    ld [hl], b
    inc b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld b, b
    jr nz, jr_007_465c

    rra
    ldh [rP1], a
    ld a, a
    nop
    rra
    ld a, [bc]
    add hl, bc
    nop
    inc e
    nop
    inc c
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    inc e
    nop
    inc a
    nop
    ld a, b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    add b
    ld a, [bc]
    rrca
    nop
    ld bc, $0600
    ld bc, $0608
    stop
    ld l, $0a
    stop
    ld a, [bc]
    nop
    add hl, bc
    add hl, bc
    dec de
    nop
    ld bc, $0002
    ld b, $09
    rrca
    nop
    inc b
    nop

jr_007_46ca:
    ld [$1300], sp
    nop
    nop
    inc b
    inc b
    ld l, e
    ld l, b
    sub [hl]
    ret nz

    inc a
    nop
    rst $00
    add hl, sp
    add d
    add hl, bc
    ld c, $00
    ld a, $00
    ldh a, [rP1]
    pop hl
    nop
    adc a
    nop
    ccf
    nop
    ld e, $00
    ld c, b
    and b
    add b
    ld [hl], b
    nop
    ldh a, [$09]
    stop
    inc a
    nop
    ldh a, [rP1]
    ret nz

    add hl, bc
    dec b
    nop
    inc c
    ld bc, $0338
    ldh a, [rTMA]
    add hl, bc
    dec de
    nop
    add b
    ld h, b
    nop
    ld hl, sp+$00
    ld b, $00
    nop
    inc bc
    inc bc
    inc b
    ld b, $19
    ld [$1827], sp
    ld hl, $3000
    nop
    ld de, $0102
    ld bc, $0d09
    nop
    ld l, h
    ld bc, $0174
    ld [hl], h
    ld bc, $8338

jr_007_4726:
    nop
    push bc
    nop
    db $fd
    nop
    ei
    nop
    rlca
    db $10
    rst $20
    ldh [rSB], a
    inc c
    ld bc, $011c
    nop
    inc bc
    jr c, jr_007_473d

    ld hl, sp+$03
    nop

jr_007_473d:
    rlca
    ld bc, $03e0
    ret nz

    add a
    jr nz, @-$77

    ld [hl], b
    ld b, a
    or b
    ld h, $d0
    ld h, $d0
    ld h, $d0
    ld h, h
    sub c
    ld b, b
    or e
    ld bc, $07f6
    add sp, $04
    db $eb
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    inc b
    ld bc, $0601
    ld [bc], a
    dec e
    ld [$0027], sp
    add hl, sp
    nop
    jr nc, jr_007_476b

jr_007_476b:
    stop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    ld bc, $0909
    nop
    ld l, h
    ld bc, $0174
    ld [hl], h
    ld bc, $8338
    nop
    push bc
    nop
    ei
    nop
    ld h, a
    nop
    dec de
    nop
    scf
    nop
    ld h, c
    ld c, h
    add c
    sbc h
    ld bc, $0300
    ld a, b
    inc bc
    ld hl, sp+$03
    nop
    rlca
    ld bc, $03e0
    ret nz

    add a
    jr nz, jr_007_4726

    ld [hl], b
    ld b, a

jr_007_47a1:
    or b
    ld h, $d0
    ld h, $d0
    ld h, $d0
    ld h, h
    sub c
    ld b, b
    or e
    ld bc, $07f6
    add sp, $04
    db $eb
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    add hl, bc
    jr jr_007_47bb

jr_007_47bb:
    ld bc, $0201
    inc bc
    ld bc, $0901
    ld d, $00
    inc e
    inc e
    inc hl
    ccf
    sub b
    sbc a
    ld a, b
    rst $38
    db $10
    rst $38
    add a
    rst $38
    pop hl
    inc c
    jp $8718


    jr nc, jr_007_47e6

    ld h, b
    ld c, $60
    inc e
    pop bc
    jr jr_007_47a1

    nop
    inc bc
    nop
    ld hl, sp+$78
    add a
    rst $38
    nop

jr_007_47e6:
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    jr nz, jr_007_47f3

jr_007_47f3:
    cp [hl]
    db $e3
    ld e, a
    ld [hl], e
    ld l, $3a
    inc d
    inc e
    ld [$0908], sp
    ld d, $00
    ld bc, $0301
    inc bc
    ld b, $07
    inc bc
    inc bc
    dec b
    dec b
    dec bc
    rrca
    ld [de], a
    rra
    inc h
    ccf
    inc h
    ccf
    ld [hl+], a
    ccf
    ld sp, $1c2f
    inc de
    rrca
    ld [$0707], sp
    add hl, bc
    dec b
    ld bc, $0300
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    inc sp
    nop
    ld b, c
    jr nz, jr_007_4847

    inc c
    jr nz, jr_007_4856

    ld b, c
    jr c, @+$44

    ld hl, $f9cf
    rrca
    rst $30
    rrca
    rst $38
    and a
    rst $38
    sbc b

jr_007_4847:
    rst $38
    ld c, a
    rst $38
    jr nz, @+$01

    jr @+$01

    ld a, a
    rst $30
    dec c
    cp $1f
    db $f4
    rst $38
    rst $38

jr_007_4856:
    adc e
    db $fc
    cpl
    db $fc
    ld a, a
    rst $10
    ld a, h
    call nc, $fe8e
    add [hl]
    db $fc
    add d
    cp $29
    rst $38
    ld bc, $86ff
    cp $78
    ld hl, sp+$0e
    ld a, [$fcf4]
    xor [hl]
    ld a, d
    call c, $f03c
    ldh a, [$b8]
    ld a, b
    ld l, h
    db $fc

jr_007_487a:
    add $fe
    daa
    dec a
    ld [$080f], sp

jr_007_4881:
    rrca
    inc sp
    ccf
    scf
    rra
    daa
    dec a
    daa
    ccf
    inc hl
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    adc a
    cp $bf
    ld hl, sp-$31
    rst $08
    nop
    nop
    add hl, bc
    inc b
    ld bc, $e060
    jr nz, jr_007_4881

    xor a
    rst $28
    ret c

    ld a, a
    ret nc

    ld a, a
    db $d3
    cp $ab
    cp $29
    rst $38
    db $fd
    and a
    db $fd
    add a
    db $fc
    daa
    cp $f7
    sbc [hl]
    rst $38
    cp [hl]
    db $e3
    ld a, a
    jp $87fc


    add hl, bc
    inc b
    nop
    add b
    add b
    ld h, b
    ldh [rNR32], a
    db $fc
    add d
    ld a, [hl]
    xor $1e
    pop af
    rrca
    ld a, [c]
    ld c, $fc
    inc c
    ld hl, sp-$78
    ld hl, sp-$78
    db $fc
    add h
    ld a, h
    call nz, $c47c
    ld a, [hl]
    ld [c], a
    cp [hl]
    ld [c], a
    ld e, a
    ld [hl], c
    cpl
    add hl, sp
    rla
    dec e
    ld a, [bc]
    ld c, $04
    inc b
    add hl, bc
    inc d
    nop
    ldh a, [rP1]
    ret nz

    inc c
    add d
    jr c, @+$09

    ld h, b
    inc e
    ret nz

    jr c, jr_007_487a

    ld [hl], b
    ld b, $61
    inc c
    ld b, e

Call_007_48fc:
    jr @+$08

jr_007_48fe:
    db $10
    inc b
    pop bc
    add b
    ld [hl], e
    ldh [rNR30], a
    ld sp, $08cc
    or $00
    cp $09
    dec bc
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    add hl, bc
    inc b
    nop
    ret nz

    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh a, [rTAC]
    ldh [rIF], a
    nop
    rrca
    ret nz

    ld e, $80
    ld e, $00
    ccf
    add b
    ccf
    add b
    ccf
    nop
    dec sp
    jp nz, $e415

    dec bc
    ret nz

    nop
    nop
    rra
    ret nz

    inc de
    inc c
    pop bc
    db $10
    adc $00
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    ld bc, $0df0
    ld h, b
    dec de
    add b
    inc hl
    add b
    db $10
    ld h, b
    ld [$00f0], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ei
    inc bc
    db $f4
    nop
    rst $28
    nop
    rst $18
    nop
    ld e, a
    add b
    inc a
    add c
    jr c, jr_007_48fe

    jr nc, jr_007_497b

jr_007_497b:
    ld h, b
    ld b, $40
    add hl, de
    inc b
    ld [hl+], a
    add hl, de
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $20
    ldh [rNR24], a
    ldh a, [$0e]
    inc b
    ei
    inc bc
    db $fc
    nop
    rra
    and b
    rlca
    or b
    ld bc, $00b6
    ld b, $00
    sub [hl]
    nop
    ld a, [bc]
    ret nc

    inc b
    ret c

    add hl, bc
    ld d, $00
    jr nz, jr_007_49c7

    ret nc

    ldh a, [rOBP0]
    ld hl, sp+$28
    ld hl, sp+$04
    db $fc
    nop
    nop
    nop
    add b
    nop
    ret nz

    ld b, b
    or b
    db $10
    db $ec
    inc c
    ld [hl], d
    ld [bc], a
    db $fc
    add d
    ld a, h
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [bc], a
    ld [hl], b

jr_007_49c7:
    adc [hl]
    nop
    xor $00
    db $ec
    nop
    nop
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    ld b, e
    inc bc
    daa
    inc b
    rrca
    ld [$181f], sp
    ccf
    inc h
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    inc h
    rra
    jr jr_007_49fa

    ld [$0427], sp
    ld b, e
    inc bc
    dec bc
    ld [$0e00], sp
    ld c, $1f
    add hl, de
    rra
    db $10
    ccf

jr_007_49fa:
    jr z, jr_007_4a7b

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, b
    ccf
    jr nc, jr_007_4a23

    ld de, $0e0e
    dec bc
    ld [$2000], sp
    nop
    stop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0b01

jr_007_4a23:
    dec c
    nop
    ld bc, $0300
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    ld b, $00
    rlca
    ld bc, $0106
    ld [bc], a
    ld bc, $0002
    inc bc
    nop
    ld bc, $0100
    dec bc
    rlca
    nop
    jp nz, $ed00

    nop
    inc c
    nop
    inc e
    ld b, c
    inc e
    nop
    ld a, $00
    cp $00
    ld a, $c0
    nop
    db $fc
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    dec bc
    ld [$0100], sp
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld bc, $031e
    jr c, jr_007_4a6a

jr_007_4a6a:
    ld [hl], b
    nop
    ld h, b
    dec bc
    add hl, bc
    nop
    ld bc, $3e00
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_007_4a7b:
    nop
    pop af
    nop
    rst $28
    ret nz

    rra
    add b
    ccf
    nop
    ld a, [hl]
    nop
    ld [hl], b
    dec bc
    ld [$6000], sp
    add b
    ld h, b
    add b
    jr nc, @-$3e

    db $10
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [$30], a
    call nz, Call_000_0ce0
    ret nz

    ld c, $00
    ld [bc], a
    dec bc
    dec bc
    nop
    ld h, b
    add b
    jr jr_007_4b09

    ld b, $78
    ld bc, $003e
    ccf
    nop
    rra
    nop
    nop
    ccf
    nop
    ld [bc], a
    rlca
    nop
    ld bc, $0100
    dec bc
    ld [$0100], sp
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, HeaderLogo
    add h
    nop
    ld h, h
    add b
    ld a, [hl-]
    add b
    ld a, e
    ld a, [bc]
    ldh a, [rNR34]
    and b
    ld e, e
    nop
    ld d, b
    nop

jr_007_4ad5:
    ld b, b
    dec bc
    ld [$e000], sp
    nop
    ldh [rP1], a
    jr nc, jr_007_4ae3

    db $10
    ld b, b
    jr jr_007_4ae3

jr_007_4ae3:
    jr jr_007_4ae5

jr_007_4ae5:
    jr c, jr_007_4ae7

jr_007_4ae7:
    db $fc
    nop
    db $fc
    nop
    ld a, $80
    ld c, $e0
    ld [bc], a
    dec bc
    ld [$3300], sp
    add h
    inc de
    ret nz

    ld bc, $00c0
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld b, b
    jr nz, jr_007_4ad5

    rra
    ldh [rP1], a
    ld a, a

jr_007_4b09:
    nop
    rra
    dec bc
    ld [$8000], sp
    ld h, $80
    inc sp
    ret nz

    inc de
    ret nz

    inc de
    ret nz

    rla
    ld b, b
    rla
    nop
    rla
    nop
    ld c, $00
    ld a, [hl]
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    dec bc
    ld b, e
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    dec bc
    dec e
    nop
    add b
    nop
    ret nz

    dec bc
    ld [de], a
    nop
    ld bc, $0301
    inc bc
    dec bc
    inc b
    rlca
    dec bc
    inc b
    rrca
    ld c, $0f
    dec bc
    ld c, $00
    ld a, $3e
    rst $38
    rst $20
    rst $38
    reti


    rst $20
    cp l
    rst $38
    reti


    rst $38
    rst $20
    sbc a
    rst $38
    ld l, a
    rst $38
    rla
    rst $38
    inc b
    rst $38
    jr @+$01

    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$21
    rst $38
    add a
    rst $38
    and b
    rst $38
    ret z

    ld a, a
    reti


    ld l, [hl]
    db $eb
    ld b, h
    rst $00
    inc h
    rst $20
    ret z

    rst $08
    ld [$070f], sp
    rlca
    nop
    nop
    add hl, bc
    rst $38
    dec b
    rst $38
    ld b, $fe
    inc b
    db $fc
    ld e, $fa
    rst $38
    pop hl
    rst $38
    add hl, bc
    rst $38
    push bc
    cp [hl]
    and $9c
    db $f4
    sbc b
    ld hl, sp-$70
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$0b], a
    inc d
    nop
    rst $38
    add b
    rst $38
    sbc h
    xor $e8
    inc e
    db $10
    jr c, jr_007_4bc1

    jr c, jr_007_4bc3

    jr c, jr_007_4bc5

    jr c, jr_007_4bdf

    dec bc
    stop
    ld a, $20
    ld a, [hl]
    ld c, [hl]
    ldh a, [$90]
    cp $80
    rst $38
    sbc h
    rst $20
    add h
    rst $38
    pop bc
    ld a, [hl]
    ld a, [hl]
    dec bc
    stop
    ld e, $10
    ld a, $20

jr_007_4bc1:
    ld a, [hl]
    ld c, b

jr_007_4bc3:
    cp $98

jr_007_4bc5:
    rst $38
    add b
    rst $38
    ld sp, hl
    ld c, $08
    ld c, $0e
    dec bc
    stop
    ld a, a
    ld b, b
    ld a, [hl]
    ld a, b
    inc e
    db $10
    ld a, $20
    ccf
    inc a
    rst $20
    add h
    cp $c0
    ld a, [hl]

jr_007_4bdf:
    ld a, [hl]
    ld b, $07
    inc bc
    inc bc
    dec bc
    inc b
    ld bc, $060b
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0601
    rlca
    inc e
    rra
    inc h
    ccf
    ld b, [hl]
    ld a, a
    dec sp
    dec sp
    ld h, a
    rst $38
    ld [hl], l
    xor a

Call_007_4c00:
    ld [hl], l
    rst $28
    ld h, e
    rst $18
    add a
    rst $38
    ld [hl], e
    ld a, a
    add c
    rst $38
    dec de
    rst $38
    ccf
    push hl
    ld e, d
    rst $38
    add $ff
    rst $38
    cp e
    cp $86
    ld a, d
    adc $72
    sbc $bc
    cp h
    add c
    rst $38
    rst $20
    cp $ff
    sbc b
    rst $38
    add l
    rst $38
    cp a
    ld h, d
    ld a, [hl]
    ld [hl+], a
    ld a, $23
    ccf
    inc hl
    ld a, $17
    inc e
    rrca
    add hl, bc
    rra
    inc de
    ccf
    ld h, $7f
    ld c, a
    ld a, $3b
    rlca
    rlca
    ld a, [$cffa]
    ld a, l
    rst $08
    ld sp, hl
    ld e, [hl]
    ld [hl], d
    ld a, $26
    ld a, l
    ld c, a
    rst $38
    sbc a
    rst $30
    dec a
    adc $4e
    add b
    add b
    dec bc
    inc b
    nop
    dec bc
    ld b, $80
    dec bc
    ld [de], a
    nop
    ld a, [hl]
    ld b, b
    rst $38
    sbc h
    rst $20
    add h
    rst $38
    ret nz

    ld a, a
    ld a, h
    rrca
    add hl, bc
    ld a, [hl]
    ld b, d
    ld a, h
    ld a, h
    dec bc
    stop
    ld a, h
    ld b, b
    cp $9c
    or $84
    cp $c2
    rst $38
    cp b
    rst $08
    adc h
    rst $38
    pop bc
    ld a, [hl]
    ld a, [hl]
    dec bc
    ld b, b

jr_007_4c7e:
    nop
    dec bc
    nop
    dec d
    ld bc, $0c1c
    ld [hl-], a
    jr jr_007_4caf

    jr nc, @+$51

    jr nz, jr_007_4ceb

    nop
    ld hl, sp+$44
    and b
    db $10
    adc c
    ld [hl-], a
    ld [$3007], sp
    ld bc, $0006
    ld bc, $0815
    nop
    ldh a, [rTAC]
    ldh [$0e], a
    nop
    ld e, $00
    rst $20
    ld [$0a91], sp
    jr nc, @+$19

    ld h, b
    ld c, d
    add b
    inc a
    nop

jr_007_4caf:
    ei
    nop
    ei
    nop
    rst $30
    nop
    jr nc, jr_007_4c7e

    jr @+$22

    dec bc
    db $10
    inc bc
    ld [$c018], sp
    inc h
    jr jr_007_4cc9

    jr nz, jr_007_4cc4

jr_007_4cc4:
    rrca
    nop
    cp b
    inc bc
    db $f4

jr_007_4cc9:
    add hl, bc
    ld h, d
    inc e
    pop bc
    ld c, $e0
    rlca
    jr nc, @-$3b

    jr @-$7d

    ld e, h
    nop
    adc [hl]
    ld [hl], b
    ld b, $e0
    rla
    ret nz

    inc hl
    nop
    ld a, [bc]
    ld [$0812], sp
    ld [de], a
    ret nz

    ld [bc], a
    inc h
    ret


    inc d
    ld hl, $11c8

jr_007_4ceb:
    db $e4
    ld [$8670], sp
    jr c, @+$45

    sbc h
    ld hl, $11cc
    adc $10
    and $08
    ld h, a
    ld [$0473], sp
    nop
    add b
    add b
    ld h, b
    ret nz

    db $10
    and b
    db $10
    ld h, b
    ld [$0850], sp
    jr nc, jr_007_4d0b

jr_007_4d0b:
    ld h, b
    ld [$0850], sp
    jr nz, @+$1a

    nop
    jr z, jr_007_4d14

jr_007_4d14:
    sub b
    nop
    sbc b
    nop
    call z, Call_007_4c00
    nop
    ld h, [hl]
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0b15
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0300
    ld l, h
    ld bc, $01dc
    inc e
    ld bc, $05f8
    ldh [rNR33], a
    nop
    di
    ld [$f103], sp
    ld a, [bc]
    ld bc, $6206
    dec c
    inc b
    sbc d
    nop
    sbc $00
    sbc h
    jr nz, jr_007_4da5

    nop
    ld hl, sp+$00
    call c, $8c20
    ld [hl], b
    inc b
    ld [hl], e
    ld [hl], e
    rst $38
    adc [hl]
    cp $85
    ld a, h
    ld c, e
    rst $38
    ld hl, sp-$01
    rst $38
    and l
    cp e
    ld l, $3d
    xor [hl]
    or l
    ret nz

    rst $38
    call nc, $c8ff
    rst $38
    db $e3
    rst $38
    db $fc
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    add hl, sp
    ld a, a
    db $10
    rra
    inc d
    rra
    ld [$070f], sp
    rlca
    ld a, [bc]
    dec c
    inc de
    inc e
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    ld a, [hl]
    ld a, [c]
    ld [hl], d
    db $ec
    ld [hl], d
    db $ed
    cp a
    di
    rrca
    rst $38

jr_007_4da5:
    daa
    rst $38
    add $ff
    ld c, $ff
    ld e, $ff
    ld l, h
    cp $a4
    cp $94
    cp $c6
    ld a, a
    ld [de], a
    rra
    ld h, $3d
    ccf
    ld a, $05
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $1501
    ld c, $00
    ld a, $ff
    ld a, $cf
    rst $30
    ccf
    call nz, $887f
    db $fc
    sub b
    ldh a, [$90]
    ldh a, [$d0]
    ldh a, [rNR41]
    jr nz, jr_007_4df2

    rrca
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld [hl], c
    rst $38
    ld a, c
    or $79
    rst $38
    add hl, sp
    ld a, a

jr_007_4df2:
    add hl, de
    ld d, $14
    rra
    ld [$070f], sp
    rlca
    ld a, [bc]
    dec c
    inc de
    inc e
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    ld a, [hl]
    ld a, [c]
    ld [hl], d
    db $ec
    ld [hl], d
    db $ed
    cp a
    di
    rst $08
    ld a, a
    rst $00
    cp a
    add $bf
    adc [hl]
    ld a, a
    ld e, $ff
    ld l, h
    cp $a4
    cp $94
    cp $c6
    ld a, a
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc c
    ld a, [$ee0e]
    ld e, $00
    cp $02
    cp $7c
    db $fc
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    add b
    add b
    dec d
    inc b
    nop
    ldh a, [$f0]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    cp $02
    cp $06
    cp $ca
    cp $fe
    sbc a
    rst $38

jr_007_4e4f:
    sbc [hl]
    cp $3e
    cp $3c
    db $fc
    jr jr_007_4e4f

    inc b
    db $fc
    ld [bc], a
    cp $09
    rst $38
    ld h, $3d
    dec de
    ld a, [de]
    rlca
    dec b
    ld b, $05
    ld [bc], a
    inc bc
    inc b
    rlca
    dec b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    dec d
    ld c, $00
    ld a, $ff
    call c, $fe3e
    sbc a
    ld h, a
    rst $18
    ld h, b
    rst $20
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [rLCDC], a
    ld b, b
    dec d
    rrca
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    ld e, $3f
    dec a
    ld a, a
    jr c, jr_007_4f11

    ld [hl], a
    rst $38
    ld h, b
    rst $38
    ld h, a
    rst $38
    inc [hl]
    ld a, a
    db $10
    ccf
    ld [de], a
    rra
    ld [$070f], sp
    rlca
    ld [$130f], sp
    ld e, $00
    ldh a, [$f0]
    db $fc
    db $fc
    adc $cc
    or [hl]
    adc $b7
    cp $cf
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld l, $ff
    sbc [hl]
    rst $38
    ld a, $ff
    inc a
    cp $1c
    cp $38
    db $fc
    jr c, @-$02

    db $fc
    ld a, $1f
    db $10
    ld c, $09
    ld [bc], a
    inc bc

jr_007_4ecc:
    rlca
    ld b, $09
    rrca
    ld a, [bc]
    rrca
    ld b, $07
    ld bc, $1501
    stop
    rst $10
    ccf
    jr jr_007_4ecc

    db $fc
    inc b
    db $fc
    db $e4
    ld e, $fe
    ld [hl+], a
    cp $0c
    db $fc
    ldh a, [$f0]
    ld d, b
    ld [hl], b
    dec d
    ld c, $00
    cp [hl]
    db $e3
    ld e, a
    ld [hl], e
    ld l, $3a
    inc d
    inc e
    ld [$1508], sp
    ld d, $00
    ld b, d
    rst $38
    jr c, @+$01

    ccf
    rst $20
    ld a, a
    ldh a, [$af]
    cp c
    sub a
    sbc l
    bit 1, a
    jp hl


    cpl
    ld sp, hl
    sbc a
    ld a, c
    ld c, a
    dec a
    daa

jr_007_4f11:
    ld a, $32
    ld e, a
    ld a, c
    ld a, a
    ld a, h
    ld [hl], a
    ld e, [hl]
    add hl, sp
    add hl, sp
    nop
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ld a, $7f
    dec a
    ld a, a
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld [hl], a
    rst $38
    ld h, b
    rst $38
    ld [hl], e
    rst $38
    inc [hl]
    ld a, a
    ld [hl], b
    ld a, a
    sbc b
    rst $38
    ld b, a
    ld a, a
    jr nz, jr_007_4f78

    inc e
    dec de
    nop
    ldh [$e0], a
    ld hl, sp-$08
    call z, $b6cc
    call z, $feb6
    rst $08
    cp $ff
    ld a, [hl]
    rst $38
    ld l, $ff
    ld c, $ff
    sbc [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    inc e
    cp $bc
    cp $3e
    rst $38
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    ld sp, hl
    ld l, [hl]
    rst $30
    ld l, [hl]
    rst $30
    db $76
    ld sp, hl
    ld sp, $387f
    ld a, a
    ld e, $3f
    dec bc

jr_007_4f78:
    inc e
    inc de
    inc e
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$44
    ld hl, sp-$46
    db $f4
    ld a, [de]
    db $f4
    ld l, [hl]
    ei
    ld h, [hl]
    sbc a
    db $76
    rst $28
    db $76
    rst $28
    ld l, [hl]
    sbc a
    ld c, h
    cp $9c
    cp $24
    cp $62
    cp a
    ld a, [c]
    rra
    ld [hl+], a
    ccf
    ld c, a
    ld a, h
    ld [hl], l
    ld [hl], a
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld bc, $1501
    ld c, $00
    ld e, $ff
    ld a, $cf
    db $e4
    ld a, $c4
    cp $48
    ld hl, sp+$50
    ldh a, [rOBP0]
    ld hl, sp-$18
    ld hl, sp+$10
    db $10
    dec d
    rrca
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$44
    ld hl, sp-$46
    db $f4
    ld a, [de]
    db $f4
    ld l, [hl]
    ei
    ld d, $ff
    ld h, [hl]
    rst $38
    add a
    rst $38
    dec c
    rst $38
    ld c, c
    rst $38
    sub d
    rst $38
    ld h, d
    rst $38
    ld h, [hl]
    cp a
    cp $1f
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$44
    ld hl, sp-$46
    db $f4
    ld a, [de]
    db $f4
    ld l, [hl]
    ei
    db $76
    sbc a
    db $76
    rst $28
    ld [hl], a
    rst $28
    ld l, l
    sbc a
    ld c, c
    rst $38
    sub d
    rst $38
    ld h, d
    rst $38
    ld h, [hl]
    cp a
    cp $1f
    dec d
    nop
    ld a, [bc]
    rrca
    nop
    add hl, de
    ld b, $7f
    ld bc, $037e
    ld a, a
    rra
    ld a, d
    ld a, a
    ld sp, hl
    cp $71
    ld a, [hl]
    ret nc

    rst $38
    ld b, b
    ld a, a
    ld h, e
    ld a, a
    inc e
    rra
    jr nz, jr_007_5060

    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a

jr_007_5027:
    jr c, jr_007_5029

jr_007_5029:
    ld hl, sp+$18
    ldh [$e0], a
    jr c, jr_007_5027

    inc c
    db $fc
    adc b
    ld [hl], b
    ret c

    add sp, -$28
    add sp, -$74
    ld [hl], h
    call nz, Call_000_37fc
    rst $38
    add hl, hl
    rst $38
    ld [hl], c
    rst $38
    adc d
    cp $04
    db $fc
    inc d
    db $fc
    rrca
    nop
    add hl, de
    ld b, $7f
    ld bc, $037e
    ld a, a
    rra
    ld a, d
    ld a, a
    ld sp, hl
    cp $71
    ld a, [hl]
    ret nc

    rst $38
    ld b, b
    ld a, a
    ld hl, $503f
    ld a, a
    add [hl]

jr_007_5060:
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    ld b, d
    ld a, a

jr_007_5067:
    jr c, jr_007_5069

jr_007_5069:
    ld hl, sp+$18
    ldh [$e0], a
    jr c, jr_007_5067

    inc c
    db $fc
    adc b
    ld [hl], b
    ret c

    add sp, -$28
    add sp, -$74
    ld [hl], h
    ld h, h
    db $fc
    sub h
    db $fc
    jr z, @-$06

    db $76
    or $09
    rst $38
    dec b
    rst $38
    ld d, $fe
    rrca
    nop
    add hl, de
    ld b, $7f
    ld bc, $037e
    ld a, a
    rra
    ld a, d
    ld a, a
    ld sp, hl
    cp $71
    ld a, [hl]
    ret nc

    rst $38
    ld b, b
    ld a, a
    jr nz, jr_007_50dc

    jr nz, jr_007_50de

    ld b, b
    ld a, a
    add d
    rst $38
    sub c
    rst $38
    adc b
    rst $38

jr_007_50a7:
    jr c, jr_007_50a9

jr_007_50a9:
    ld hl, sp+$18
    ldh [$e0], a
    jr c, jr_007_50a7

    inc c
    db $fc
    adc b
    ld [hl], b
    ret c

    add sp, -$28
    add sp, -$74
    ld [hl], h
    sub h
    db $fc
    ld h, h
    db $fc
    ld [$78f8], sp
    ld hl, sp+$0e
    cp $05
    rst $38
    sub l
    rst $38
    inc bc
    nop
    ld b, $01
    rra
    nop
    rra
    nop
    rra
    rlca
    ld a, [hl]
    ld a, a
    ld a, $3f
    ld a, h
    ld a, a
    ld d, h
    ld a, a
    sub b
    rst $38
    adc b

jr_007_50dc:
    rst $38
    ld b, h

jr_007_50de:
    ld a, a
    ld [hl+], a
    ccf
    db $10
    rra
    db $10
    rra
    db $10
    rra
    adc $00
    ld a, $c6
    ld hl, sp+$38
    adc $fe
    inc bc
    rst $38
    add $fe
    xor d
    cp $aa
    cp $01
    rst $38
    dec h
    rst $38
    add hl, de
    rst $38
    ld [bc], a
    cp $1c
    db $fc
    ld [bc], a
    cp $01
    rst $38
    dec b
    rst $38
    inc bc
    nop
    ld b, $01
    rra
    nop
    rra
    nop
    rra
    rlca
    ld a, [hl]
    ld a, a
    ld e, $1f
    inc a
    ccf
    ld [hl], h
    ld a, a
    ld d, b
    ld a, a
    adc b
    rst $38
    sbc h
    rst $38
    add d
    rst $38
    ld h, b
    ld a, a
    jr @+$21

    db $10
    rra
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld c, h
    ld a, e
    ld e, [hl]
    add hl, hl
    cpl
    ld [$080f], sp
    rrca
    rlca
    rlca
    ld a, [bc]
    stop
    cp $fe
    cp $02
    cp $62
    sbc h
    db $f4
    sbc b
    ld hl, sp-$70
    ldh a, [rOBP0]
    ld hl, sp-$10
    ldh a, [$0a]
    stop
    ld a, h
    ld a, a
    rst $38
    adc e
    rst $38
    adc h
    ld a, e
    ld e, [hl]
    add hl, hl
    cpl
    ld [$080f], sp
    rrca
    rlca
    rlca
    ld a, [bc]
    stop
    cp $fe
    cp $22
    cp $62
    sbc h
    db $f4
    sbc b
    ld hl, sp-$70
    ldh a, [rOBP0]
    ld hl, sp-$10
    ldh a, [$0a]
    stop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    sbc a
    rst $38
    sub b
    ldh a, [$90]
    ldh a, [rOBP0]
    ld hl, sp-$10
    ldh a, [$0a]
    stop
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    ld a, [bc]
    ld a, [de]
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b
    ld b, $07
    ld c, $0f
    dec bc
    ld c, $09
    ld c, $08
    rrca
    ld e, h
    ld e, a
    and [hl]
    rst $30
    xor e
    rst $38
    ret nc

    rst $38
    add h
    rst $38
    ld e, h
    ld a, a
    db $fc
    add b
    sbc $60
    rst $20
    jr c, @+$01

    db $fc
    inc bc
    cp $cd
    rst $38
    call $cf33
    db $fd
    adc $fd
    nop
    rst $38
    db $fc
    rst $08
    ld a, c

jr_007_51c6:
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld a, [bc]
    ld b, $00
    add b
    nop
    add b
    nop
    ld a, [bc]
    inc b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, [bc]
    inc b
    add b
    ld b, b
    ret nz

    jr nz, jr_007_51c6

    sub b
    ldh a, [$88]
    ld hl, sp+$27
    daa
    rrca
    ld [$090f], sp
    rrca
    dec bc
    dec b
    dec b
    nop

jr_007_51f5:
    nop
    ld [bc], a

jr_007_51f7:
    inc bc
    ld bc, $0a01
    stop
    ld bc, $ffff
    cp $ff
    ld bc, $29ff
    rst $10
    ld a, l
    sub d
    cp $10
    rst $38
    rst $28
    rst $28
    ld a, [bc]
    stop
    ret z

    ld hl, sp-$10
    jr nc, jr_007_51f5

    jr nz, jr_007_51f7

    and b
    ld b, b
    ld b, b
    nop
    nop
    add b
    add b
    ld a, [bc]
    ld [de], a
    nop
    ld h, b
    ld h, b
    ldh a, [$90]
    rst $38
    rst $38
    ldh [$bf], a
    db $ec
    or a
    db $ec
    or a
    rst $28
    or b
    rst $28
    or a
    db $ec
    or a
    db $ec
    or a
    pop hl
    cp a
    ld [c], a
    cp [hl]
    db $e4
    cp h
    add sp, -$48
    ldh a, [$b0]
    ldh a, [$90]
    ld a, [bc]
    inc b
    nop
    db $fc
    db $fc
    ld [bc], a
    cp $c2
    ld a, [hl]
    call nz, $c87c
    ld a, b
    ret nc

    ld [hl], b
    ldh [$60], a
    ret nz

    ld b, b
    ld a, [bc]
    inc c
    nop
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ld h, b
    ld h, b
    ld a, [bc]
    ld e, $00
    jr jr_007_5268

jr_007_5268:
    inc [hl]
    ld [$1867], sp
    rst $38
    rlca
    rst $38
    rra
    ld hl, sp-$41
    ldh a, [rIE]
    ld [c], a
    rst $38
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    add b
    rst $38
    ld a, [bc]
    inc c
    nop
    ld b, b
    nop
    add b
    nop
    add b
    add b
    ret nz

    ret nz

    call nz, Call_007_7cc4
    db $fc
    db $fc
    add h
    ld a, h
    call nz, $c47c
    cp h
    and h
    ld a, [bc]
    inc b
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0a01
    inc d
    nop
    inc bc
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld a, c
    rst $00
    rst $38
    and b
    rst $20
    cp b
    and $fd
    and d
    rst $38
    sbc h
    rst $38
    sub h
    rst $38
    db $fc
    rst $38
    sub e
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    ld l, [hl]
    ld l, [hl]
    inc e
    inc d
    adc h
    adc h
    ld b, h
    call nz, $c444
    ld b, h
    call nz, Call_007_6eee
    push de
    ld a, a
    push de
    ld a, a
    push de
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    ld a, a
    rst $38
    sub c
    rst $38
    ld de, $11ff
    rst $38
    xor $ee
    ld a, [bc]
    ld b, $01
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0a01
    stop
    inc bc
    rst $38
    db $10
    rst $38
    jr z, @+$01

    adc e
    db $fc
    rst $38
    ld [hl], b
    cp $03
    xor $97
    xor d
    rst $18
    sub c
    rst $38
    sub c
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    ld l, [hl]
    ld l, [hl]
    sbc h
    sub h
    adc h
    adc h
    ld b, h
    call nz, Call_007_44c4
    call nz, Call_007_6e44
    xor $75
    rst $38
    dec [hl]
    rst $38
    push de
    rst $38
    ld de, $11ff
    rst $38
    rst $38
    rst $38
    ld de, $11ff
    rst $38
    ld de, $eeff
    xor $0a
    nop
    ld c, $00
    nop
    ld hl, sp-$08
    ld b, $fe
    ld a, c
    rlca
    ld a, $01
    ccf
    nop
    rra
    nop
    rra
    nop
    inc c
    inc bc
    jr nc, jr_007_5387

    ld b, b
    ld a, a
    sbc b
    rst $20
    cp a
    ret c

    and a
    and $a1
    pop hl
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    add hl, de
    add hl, de
    ld h, $3f
    sub c
    sbc a
    ld c, b
    rst $08
    cp h
    ld a, a
    pop bc
    ccf
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld a, l
    add e
    rst $38
    dec a
    rst $38
    ld b, d
    rst $38
    add e
    rst $38
    add b
    nop
    nop
    add e
    add e
    ld b, h
    rst $00
    add hl, hl
    xor $ab
    db $ec
    rla
    ld hl, sp-$61
    ld hl, sp-$22
    ld [hl], h
    sbc $fc
    sbc h

jr_007_5387:
    ld hl, sp+$0c
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$50
    ld [hl], b
    ldh a, [$f0]
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld c, $06
    ld bc, $0203
    inc bc
    ld [bc], a
    ld bc, $0e01
    ld b, $00
    rst $38
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    sub l
    rst $38
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    add l
    ld a, a
    db $e3
    inc e
    rst $38
    nop
    rst $38
    add c
    cp l
    db $d3
    sbc c
    rst $38
    and b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld c, $04
    add b
    ld c, $06
    nop
    ld c, $04
    add b
    ld c, $06
    nop
    sbc c
    rst $38
    sbc c
    rst $38
    xor d
    xor $44
    ld b, h
    ld c, $24
    nop
    ld bc, $0201
    inc bc
    inc c
    rrca
    jr nc, @+$41

    ld c, b
    ld a, a
    ld e, b
    ld l, a
    cp b
    rst $18
    xor b
    rst $28
    or b
    rst $38
    or b
    rst $38
    nop
    nop
    add hl, de
    add hl, de
    ld h, $3f
    ld de, $081f
    rrca
    ld l, b
    ld l, a
    sub c
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld hl, $40ff
    rst $38
    ld a, l
    jp $fd7f


    rst $38
    jp nz, $83ff

    rst $38
    add b
    ld c, $04
    nop
    ld b, b
    ret nz

    jr nz, @-$1e

    and b
    ldh [rNR10], a
    ldh a, [$98]
    ld hl, sp-$24
    ld [hl], h
    call c, $98fc
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$54
    ld a, h
    db $f4
    db $fc

jr_007_5444:
    ld d, c
    ld e, a
    ld [de], a
    rra
    ld [de], a
    rra
    inc d
    rra
    inc c
    rrca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld c, $06
    ld bc, $0203
    inc bc
    ld [bc], a
    ld bc, $0e01
    ld b, $00
    or h
    db $fc
    inc h
    db $e4
    jr nz, jr_007_5444

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld c, $04
    add b
    ld c, $06
    nop
    ld c, $04
    add b
    ld c, $12
    nop
    inc bc
    nop
    inc b
    nop
    ld [$0c00], sp
    nop
    ld [$0400], sp
    nop
    dec b
    nop
    dec b
    nop
    ld [bc], a
    ld c, $11
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    ld c, $12
    nop
    ld [hl], $22
    ld e, l
    ld b, c
    ld a, $41
    ld a, $00
    ld a, a
    nop
    ld a, $00
    inc e
    nop
    ld [$090e], sp
    nop
    inc c
    inc c
    ld [de], a
    jr jr_007_54d4

    db $10
    cpl
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0a0e
    nop
    inc bc
    inc b
    ld b, $09
    rrca
    db $10
    rrca
    db $10
    rrca
    rla
    ld a, [hl]
    ld a, a
    ld a, $3f
    ld a, h
    ld a, a
    ld d, h
    ld a, a
    sub b
    rst $38

jr_007_54d4:
    adc b
    rst $38
    ld b, h
    ld a, a
    ld [hl+], a
    ccf
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld c, $20
    nop
    adc $8e
    ccf
    rst $38
    db $fc
    rst $38
    ret


    rst $38
    jr nz, @+$01

    ld b, h
    rst $38
    rst $30
    cp e
    db $76
    cp d
    ld hl, $19df
    rst $38
    dec h
    rst $38
    ld [bc], a
    cp $1c
    db $fc
    ld [bc], a
    cp $01
    rst $38
    dec b
    rst $38
    ld c, $04
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    ld c, $16
    nop
    ld bc, $0701
    rlca
    rrca
    add hl, bc
    rra
    ld de, $4f4f
    cp a
    pop af
    rst $08
    db $fd
    cp a
    ld sp, hl
    sbc a
    pop af
    adc a
    rst $38
    adc a
    ld sp, hl
    ld a, a
    ld [hl], c
    rrca
    rrca
    ld c, $04
    nop
    ld b, $06
    ret


    rst $08
    jr nc, @+$01

    ld a, [c]
    rst $38
    dec d
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    sub b
    rst $38
    jr @+$01

    jr z, @+$01

    dec b
    rst $38
    inc b
    rst $38
    adc e
    ei
    ld [hl], e
    ld [hl], e
    nop
    nop
    jr nz, jr_007_5570

    ldh a, [$f0]
    sbc e
    ld a, [$fa0b]
    rrca
    db $fc
    add [hl]
    db $fc
    sub [hl]
    db $fc
    ld e, a
    db $fc
    dec c
    ld a, [$f21d]
    ld a, a
    ldh a, [$fe]
    ldh a, [$7c]
    ldh [$fc], a
    ldh [$e0], a
    ldh [$0e], a
    jr jr_007_556f

jr_007_556f:
    ld [bc], a

jr_007_5570:
    nop
    dec b
    nop
    dec b
    nop
    ld h, d
    ld h, b
    sub d
    ldh a, [rIF]
    nop
    add hl, de
    ld b, $7f
    ld bc, $037e
    ld a, a
    rra
    ld a, d
    ld a, a
    ld sp, hl
    cp $71
    ld a, [hl]
    ret nc

    rst $38
    ld b, b
    ld a, a
    jr nz, jr_007_55ce

    ld d, c
    ld a, a
    add a
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    ld b, e
    ld a, a

jr_007_5599:
    jr c, jr_007_559b

jr_007_559b:
    ld hl, sp+$18
    ldh [$e0], a
    jr c, jr_007_5599

    inc c
    db $fc
    adc b
    ld [hl], b
    ret c

    add sp, -$28
    add sp, -$71
    ld a, a
    ccf
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $13
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    cp $02
    db $fc
    inc b
    nop
    nop
    ld bc, $0701

jr_007_55ce:
    rlca
    rrca
    add hl, bc
    rra
    ld de, $4d4f
    cp a
    ld sp, hl
    rst $00
    db $fd
    cp a
    ld sp, hl
    sbc a
    pop af
    adc a
    db $fd
    adc a
    ei
    ld a, a
    ld [hl], c
    rrca
    dec c
    inc bc
    inc bc
    nop
    nop
    add $c6
    add hl, hl
    rst $28
    ldh a, [rIE]
    inc [hl]
    rst $38
    sbc d
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $38
    ld h, b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    jr z, @+$01

    dec h
    rst $38
    inc b
    rst $38
    dec bc
    ei
    adc c
    ld sp, hl
    ld [hl], b
    ld [hl], b
    ld c, $10
    nop
    ld b, $00
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    dec b
    rrca
    add hl, bc
    rra
    inc de
    ld c, a
    ld c, l
    cp a
    pop af
    rst $08
    db $fd
    cp a
    ld sp, hl
    adc a
    ld sp, hl
    add a
    rst $38
    adc a
    ld sp, hl
    ld a, a
    ld [hl], c
    rrca
    rrca
    ld c, $04
    nop
    or $f6
    add hl, sp
    rst $38
    sub b
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    ld l, d
    rst $38
    sbc d
    rst $38
    inc d
    rst $38
    jr nz, @+$01

    jr z, @+$01

    ld [$05ff], sp
    rst $38
    add h
    rst $38
    set 7, e
    inc sp
    inc sp
    nop
    nop
    ld c, $00
    ld a, [bc]
    ld a, [bc]
    ld d, $00
    inc b
    inc b
    rrca
    dec bc
    rra
    ld [de], a
    rra
    inc d
    ccf
    jr nz, jr_007_5688

    nop
    rra
    jr @+$09

    rlca
    inc e
    rra
    jr nc, jr_007_56b4

    ld de, $1b0e
    rla
    dec de
    rla
    ld sp, $262e
    ccf
    add hl, sp
    ccf
    db $fc
    rst $00
    db $fd
    rrca
    rst $38
    ld e, $ff

jr_007_5688:
    ld [$e1ff], sp
    ldh a, [rP1]
    sbc b
    ld h, b
    cp $80
    ld a, [hl]
    ret nz

    cp $f8
    ld e, [hl]
    cp $9f
    ld a, a
    adc [hl]
    ld a, [hl]
    dec bc
    rst $38
    ld [bc], a
    cp $84
    db $fc
    ld [$84f8], sp
    db $fc
    call nz, $ec7c
    db $fc
    cp $12
    ld a, a
    ld [hl], c
    ld a, a
    ld hl, $417f
    rst $38
    sub h
    rst $38

jr_007_56b4:
    add b
    ld a, a
    ld h, c
    rra
    ld e, $5f
    ld [hl], b
    ccf
    ccf
    ld e, l
    db $76
    dec de
    inc e
    rrca
    rrca
    dec e
    ld e, $3e
    scf
    ld a, a
    ld h, e
    cp h
    db $e4

jr_007_56cb:
    sbc a
    di
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    jr jr_007_56cb

    cp $bf
    ld [hl], b
    rst $28
    jr c, @+$01

    rst $38
    rst $18
    ld sp, $34ff
    db $eb
    cp $2b
    ld a, $fe
    add d
    call c, $e4fc
    ld a, h
    ret z

    ld hl, sp-$50
    ldh a, [$f0]
    ld d, b
    ld hl, sp+$48
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    ld b, h
    db $f4
    adc h
    ret z

    jr c, jr_007_5714

    ldh a, [$e0]
    ldh [$0a], a
    inc b
    add b
    rra
    rra
    ccf
    jr nz, jr_007_574e

    ld h, $3d
    cpl
    inc d
    rla

jr_007_5714:
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld a, [bc]
    stop
    cp $fe
    rst $38
    ld bc, $31ff
    adc $7a
    call z, Call_007_48fc
    ld hl, sp+$24
    db $fc
    ld hl, sp-$08
    ld a, [bc]
    stop
    ld a, a
    ld [hl], c
    ccf
    ld h, c
    ld a, a
    ld b, c
    rst $38
    sub h
    rst $38
    add b
    ld a, a
    ld h, c
    rra
    ld e, $bf
    ldh a, [$7f]
    ld c, a
    cp l
    sub $7b
    ld a, h
    rrca
    rrca
    dec b
    ld b, $0f
    ld c, $1f
    dec de

jr_007_574e:
    cpl
    add hl, sp
    sbc a
    di
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    rst $38
    cp a
    ld a, b
    rst $30
    inc e
    rst $38
    rst $38
    cp a
    ld h, d
    rst $38
    pop af
    xor a
    ld hl, sp+$4f
    ld hl, sp-$02
    add d
    call c, $e4fc
    ld a, h
    ret z

    ld hl, sp-$50
    ldh a, [$f8]
    ret c

    ld hl, sp+$48
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    ld b, h
    db $f4
    adc h
    ret z

    jr c, jr_007_5799

    ldh a, [$e0]
    ldh [$0a], a
    inc b
    add b
    inc e
    nop
    rra
    jr @+$09

    rlca
    inc e
    rra
    jr nc, jr_007_57d8

jr_007_5799:
    ld de, $1b0e
    rla
    dec de
    rla
    ld sp, $262e
    ccf
    ld a, $3f
    db $fc
    rst $00
    db $fd
    rrca
    rst $38
    ld e, $ff
    ld [$e1ff], sp
    ldh a, [rP1]
    sbc b
    ld h, b
    cp $80
    ld a, [hl]
    ret nz

    cp $f8
    ld e, [hl]
    cp $9f
    ld a, a
    adc [hl]
    ld a, [hl]
    dec bc
    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld [$84f8], sp
    db $fc
    call nz, $ec7c
    db $fc
    cp $12
    ld a, a
    ld [hl], c
    ld a, a
    ld hl, $557f
    rst $38
    add b
    rst $38

jr_007_57d8:
    cp h
    ld b, e
    ld b, e
    rlca
    rlca
    ld e, a
    ld a, b
    ccf
    daa
    ld e, l
    db $76
    dec sp
    inc a
    xor a
    rst $38
    cp $8b
    ld a, a
    ld b, a
    inc a
    inc h
    jr jr_007_5807

    inc bc
    inc b
    ld b, $09
    rrca
    db $10
    rrca
    db $10
    rrca
    rla
    ld a, [hl]
    ld a, a
    ld e, $1f
    inc a
    ccf
    ld [hl], h
    ld a, a
    ld d, b
    ld a, a
    adc b
    rst $38
    sbc h
    rst $38

jr_007_5807:
    add d
    rst $38
    ld h, b
    ld a, a
    jr jr_007_582c

    db $10
    rra
    ld a, [bc]
    ld c, $00
    ld [$1008], sp
    stop
    nop
    add b
    add b
    ld c, h
    call z, $c040
    add b
    add b
    db $10
    db $10
    ld [$0a08], sp
    sub [hl]
    nop
    inc b
    inc b
    rrca
    dec bc
    rra

jr_007_582c:
    ld [de], a
    rra
    inc d
    ccf
    jr nz, @+$0c

    inc d
    nop
    jr c, jr_007_586e

    db $fc
    call nz, Call_000_0dfd
    rst $38
    ld e, $ff
    ld [$e1ff], sp
    ld a, [bc]
    ld e, b
    nop
    add b
    add b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    ld a, a
    ld [hl], c
    ld a, a
    ld hl, $417f
    rst $38
    sub h
    rst $38
    add b
    ld a, a
    ld h, c
    rra
    ld e, $5f
    ld [hl], b
    ccf
    ccf
    ld e, l
    db $76
    dec de
    inc e
    rrca
    rrca
    dec e
    ld e, $3e
    scf
    ld a, a
    ld h, e
    cp h
    db $e4

jr_007_586b:
    sbc a
    di
    rst $28

jr_007_586e:
    ldh a, [rIE]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    jr jr_007_586b

    cp $bf
    ld [hl], b
    rst $28
    jr c, @+$01

    rst $38
    rst $18
    ld sp, $34ff
    db $eb
    cp $2b
    ld a, $80
    add b
    ret nz

    ret nz

    ldh [$60], a
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [$50]
    ld hl, sp+$48
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    ld b, h
    db $f4
    adc h
    ret z

    jr c, jr_007_58b4

    ldh a, [$e0]
    ldh [$0a], a
    inc b
    add b
    ld a, a
    ld [hl], c
    ccf
    ld h, c
    ld a, a
    ld b, c
    rst $38
    sub h
    rst $38
    add b

jr_007_58b4:
    ld a, a
    ld h, c
    rra
    ld e, $bf
    ldh a, [$7f]
    ld c, a
    cp l
    sub $7b
    ld a, h
    rrca
    rrca
    dec b
    ld b, $0f
    ld c, $1f
    dec de
    cpl
    add hl, sp
    ld a, [bc]
    stop
    ld a, [hl]
    ld b, b
    rst $38
    sbc h
    rst $38
    ld hl, sp+$3f
    ld hl, $427e
    db $fc
    adc h
    rst $38
    add b
    rst $38
    rst $38
    ld a, [bc]
    ld b, b
    nop
    ld a, [bc]
    nop
    ld [bc], a
    rrca
    ld b, c
    ld b, d
    ld d, c
    ld d, d
    ld h, c
    ld h, d
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld h, c
    ld h, d
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld h, c
    ld h, d
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld [hl], c
    ld [hl], d
    ld [bc], a
    rrca
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld [hl], b
    ld [hl], c
    inc d
    ld [bc], a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld hl, $5c00
    ld a, [$c413]
    rst $20
    ld h, d
    ld l, e
    ld de, $c459
    ld a, [hl+]
    ld b, a
    ld [de], a
    and a
    jr z, jr_007_596b

    inc de

jr_007_595f:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_595f

jr_007_596b:
    ret


    ld bc, $0030
    jr z, jr_007_5971

jr_007_5971:
    ld hl, $596c
    ld a, [hl+]
    ld [$c200], a
    ld a, [hl+]
    ld [$c201], a
    ld a, [hl+]
    ld [$c202], a
    ld a, [hl+]
    ld [$c203], a
    ld a, [hl+]
    ld [$c204], a
    ld hl, $6e80
    ld a, [hl+]
    ld [$c205], a
    ld a, [hl+]
    ld [$c206], a
    ret


    ld b, $08
    ldh a, [rLCDC]
    bit 2, a
    jr z, jr_007_599e

    ld b, $10

jr_007_599e:
    ld a, b
    ldh [$a9], a
    ld hl, $ffc1
    ld a, [hl+]
    add $10
    ldh [$a4], a
    ld a, [hl+]
    adc $00
    ldh [$a5], a
    ld a, [hl+]
    add $08
    ldh [$a6], a
    ld a, [hl+]
    adc $00
    ldh [$a7], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, d
    ld l, e
    rst $20
    ldh a, [$be]
    ld l, a
    ld h, $c0

Jump_007_59c5:
    ld c, $00
    inc de
    ld a, [de]
    sla a
    rr c
    dec de
    ld a, [de]
    sla a
    rr c
    srl c
    ld a, c
    ldh [$a8], a
    ld a, [de]
    and $7f
    bit 6, a
    jr z, jr_007_59e1

    or $80

jr_007_59e1:
    ld c, a
    ld b, $00
    ldh a, [$c8]
    bit 6, a
    jr z, jr_007_59f0

    ldh a, [$a9]
    add c
    cpl
    inc a
    ld c, a

jr_007_59f0:
    bit 7, c
    jr z, jr_007_59f5

    dec b

jr_007_59f5:
    ldh a, [$a4]
    add c
    ld [hl], a
    cp $88
    jr c, jr_007_5a05

    xor a
    ld [hl], a
    inc de
    inc de
    ld a, [de]
    ld c, a
    jr jr_007_5a42

jr_007_5a05:
    inc hl
    inc de
    ld a, [de]
    and $7f
    bit 6, a
    jr z, jr_007_5a10

    or $80

jr_007_5a10:
    ld c, a
    ld b, $00
    ldh a, [$c8]
    bit 5, a
    jr z, jr_007_5a1f

    ld a, $08
    add c
    cpl
    inc a
    ld c, a

jr_007_5a1f:
    bit 7, c
    jr z, jr_007_5a24

    dec b

jr_007_5a24:
    ldh a, [$a6]
    add c
    ld [hl], a
    cp $b0
    jr c, jr_007_5a34

    xor a
    ld [hl-], a
    ld [hl], a
    inc de
    ld a, [de]
    ld c, a
    jr jr_007_5a42

jr_007_5a34:
    inc hl
    inc de
    ld a, [de]
    ld c, a
    and $fe
    ld [hl+], a
    ldh a, [$c8]
    ld b, a
    ldh a, [$a8]
    xor b
    ld [hl+], a

jr_007_5a42:
    ld a, l
    cp $a0
    jr nc, jr_007_5a4d

    inc de
    bit 0, c
    jp z, Jump_007_59c5

jr_007_5a4d:
    ldh [$be], a
    ret


    ld bc, $0000
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld hl, $c428
    set 1, [hl]
    ldh a, [$92]
    and $0f
    ld hl, $5a50
    rst $18
    ld b, a
    ld hl, $ffc1
    ld a, [hl]
    add b
    ld [hl], a
    ld hl, $ffc3
    ld a, [hl]
    add b
    ld [hl], a
    ldh a, [$92]
    bit 0, a
    ret nz

    ld hl, $ffdd
    dec [hl]
    jr nz, jr_007_5a89

    xor a
    ld [$c426], a

jr_007_5a89:
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld e, h
    call z, $155c
    ld e, l
    ld c, a
    ld e, l
    sbc [hl]
    ld e, l
    db $db
    ld e, l
    and b
    ld l, b
    db $fc
    ld h, a
    ld e, $5e
    ld e, [hl]
    ld e, [hl]
    ld [$155e], a
    ld e, a
    ld d, d
    ld e, a
    and c
    ld e, [hl]
    and a
    ld l, b
    ld c, [hl]
    ld l, b
    adc h
    ld e, a
    ret c

    ld e, a
    inc c
    ld h, b
    adc c
    ld h, b
    ret


    ld h, b
    ld c, a
    ld h, b
    xor [hl]
    ld l, b
    nop
    nop
    rrca

jr_007_5c31:
    ld h, c
    ld c, a
    ld h, c
    or a
    ld h, c
    db $f4
    ld h, c
    dec a
    ld h, d
    add e
    ld h, c
    or l
    ld l, b
    nop
    nop
    jp Jump_000_0062


    ld h, e
    ld sp, $7163
    ld h, e
    sbc a
    ld h, e
    sub l
    ld h, d
    cp h
    ld l, b
    nop
    nop
    rst $30
    ld h, e
    dec a
    ld h, h
    xor b
    ld h, h
    reti


    ld h, h

jr_007_5c58:
    ld [hl], h
    ld h, h
    ld bc, $c365
    ld l, b
    nop
    nop
    dec [hl]
    ld h, l
    xor h
    ld h, l
    db $ec
    ld h, l
    dec e
    ld h, [hl]
    ld c, [hl]
    ld h, [hl]
    ld [hl], d
    ld h, l
    jp z, Jump_000_0068

    nop
    adc b
    ld h, [hl]
    push bc
    ld h, [hl]
    ld b, d
    ld h, a
    ld l, d
    ld h, a
    or [hl]
    ld h, a

jr_007_5c7a:
    ld [$d167], sp
    ld l, b
    nop
    nop
    add hl, de
    inc e
    ld hl, $1c31
    daa
    ld sp, $401c
    ld d, a
    inc e
    ld c, h
    add hl, hl
    inc e
    ld d, h
    add hl, hl
    inc e
    ld e, l
    add hl, hl
    inc e
    ld [hl], c
    ld sp, $761c
    ld sp, $7e1c
    ld d, a
    rla
    add [hl]
    inc sp
    jr jr_007_5c31

    inc sp
    ld a, [de]
    dec c
    inc bc
    jr jr_007_5cb7

    inc b
    inc e
    inc de
    add hl, bc
    jr jr_007_5cc6

    inc bc
    rla
    ld hl, $1a04
    dec hl
    dec b
    inc e
    jr nc, jr_007_5cc0

jr_007_5cb7:
    ld a, [de]
    dec [hl]
    inc bc
    jr @+$38

    inc b
    jr jr_007_5d06

    inc bc

jr_007_5cc0:
    jr @+$58

    inc b
    inc e
    ld l, c
    dec c

jr_007_5cc6:
    jr jr_007_5d47

    inc bc
    jr jr_007_5c58

    inc b
    jr jr_007_5ce7

    dec d
    cpl
    ld a, [de]
    inc e
    cpl
    inc e
    dec h
    ld d, a
    inc e
    ld sp, $1629
    ld a, [hl-]
    cpl
    ld de, $2f43
    ld d, $4e
    ld d, a
    inc d
    ld d, l
    cpl
    inc e
    ld h, l

jr_007_5ce7:
    add hl, hl
    add hl, de
    ld l, d
    cpl
    inc e
    ld [hl], d
    dec hl
    jr jr_007_5c7a

    inc sp
    ld de, $3394
    inc e
    dec bc
    add hl, bc
    jr jr_007_5d07

    inc b
    ld a, [de]
    rra
    dec b
    jr jr_007_5d25

    inc bc
    jr jr_007_5d36

    dec b
    add hl, de
    jr c, jr_007_5d1a

jr_007_5d06:
    inc de

jr_007_5d07:
    ld b, a
    inc b
    inc d
    ld e, a
    inc bc
    inc d
    ld l, h
    dec b
    jr jr_007_5d8a

    ld c, $19
    add c
    ld b, $13
    rla
    ld d, $3c
    rla

jr_007_5d1a:
    dec e
    inc a
    ld d, $25

jr_007_5d1e:
    ld e, d
    add hl, de
    ld sp, $163f
    add hl, sp
    ccf

jr_007_5d25:
    dec de
    ld b, e
    ccf
    rla
    ld c, c
    dec a
    add hl, de
    ld d, e
    inc l
    inc de
    ld h, b
    ccf
    jr @+$68

    ccf
    rla
    ld l, a

jr_007_5d36:
    inc a
    inc e
    dec bc
    add hl, bc
    ld a, [de]
    dec c
    inc b
    jr jr_007_5d4f

    inc bc
    ld d, $2b
    dec c
    inc e
    dec a
    dec bc
    dec d

jr_007_5d47:
    ld c, [hl]
    inc b
    inc de
    ld e, c
    dec b
    add hl, de
    ld h, b
    ld [de], a

jr_007_5d4f:
    ld a, [de]
    add hl, de
    inc e
    cpl
    inc e
    inc hl
    ld d, a
    ld a, [de]
    dec hl
    cpl
    dec de
    jr nc, jr_007_5d8b

    inc e
    jr c, @+$2b

    add hl, de
    ld b, b
    inc sp
    dec de
    ld b, a
    inc sp
    inc e
    ld c, l
    add hl, hl
    inc e
    ld d, [hl]
    jr z, @+$1c

    ld e, a
    inc sp
    inc e
    ld h, [hl]
    ld sp, $6c1c
    ld sp, $711a
    cpl
    dec de
    db $76
    cpl
    inc e
    ld a, l
    ld d, a
    inc e
    adc c
    dec hl
    inc e
    sub h
    add hl, hl
    inc e
    ld [$1809], sp
    ld c, $03
    rla

jr_007_5d8a:
    inc de

jr_007_5d8b:
    dec b
    add hl, de
    ld h, $04
    ld a, [de]
    ld h, e
    inc bc
    ld a, [de]
    ld a, d
    inc b
    inc e
    add b
    inc de
    jr jr_007_5d1e

    inc bc
    ld d, $90
    inc b
    inc d
    inc d
    add hl, de
    ld c, [hl]
    ld de, $2f34
    rla
    dec sp
    ld c, [hl]
    inc d
    ld b, l
    cpl
    ld de, $4e55
    ld de, $2f65
    ld de, $2f6d
    inc de
    ld a, e
    cpl
    rla
    add c
    ld c, [hl]
    inc d
    add [hl]
    cpl
    inc d
    adc l
    ld c, [hl]
    inc e
    add hl, bc
    ld [$130f], sp
    dec b
    db $10
    ld a, [hl+]
    inc bc
    inc e
    dec hl
    ld c, $10
    ld c, c
    inc b
    ld de, $0563
    db $10
    ld l, e
    inc bc
    inc e
    ld [hl], d
    ld de, $9215
    inc b
    ld d, $14
    inc d
    ld e, $17
    inc e
    ld c, [hl]
    inc d
    ld h, $4e
    add hl, de
    jr nc, jr_007_5e43

    ld de, $2f32
    inc e
    ld b, c
    ld sp, $441c
    ld sp, $4f17
    ld c, [hl]
    ld c, $55
    ld c, [hl]
    rla
    ld h, h
    cpl
    inc e
    ld l, d
    ld d, a
    inc e
    ld [hl], b
    add hl, hl
    ld de, $4e79
    inc d
    adc d
    ld c, [hl]
    inc d
    adc l
    ld c, [hl]
    add hl, de
    sub e
    dec hl
    add hl, de
    rlca
    inc bc
    add hl, de
    inc c
    ld [$2010], sp
    dec b
    ld de, $045b
    jr jr_007_5e84

    inc bc
    dec d
    ld a, l
    rrca
    dec d
    inc d
    dec h
    ld e, d
    ld [de], a
    ld l, $5b
    ld [de], a
    scf
    ld d, a
    ld [de], a
    ccf

jr_007_5e2a:
    ld e, e
    inc e
    ld c, h
    ld d, a
    inc e
    ld d, h
    inc l
    inc e
    ld h, c
    dec hl
    inc de
    ld l, l
    dec [hl]
    inc e
    ld [hl], a
    ld d, a
    rla
    ld a, e
    inc sp
    inc e
    add h
    add hl, hl
    inc e
    adc d
    ld d, a

jr_007_5e43:
    inc e
    sub l
    add hl, hl
    ld a, [de]
    add hl, bc
    add hl, bc
    rla
    ld c, $05
    ld d, $13
    inc bc
    inc e
    ld b, a
    ld [de], a
    jr jr_007_5e9d

    dec b
    rla
    ld e, b
    inc b
    rla
    ld h, l
    inc bc
    rla
    sub b
    dec b
    ld d, $1c
    ld d, $57
    inc e
    dec de
    ld sp, $2119
    ld sp, $3016
    ld a, $16
    ld b, c
    ld e, b
    ld d, $48
    ld sp, $5016
    ld sp, $5816
    ld sp, $5e16
    ld sp, $7316
    dec hl
    inc e
    ld a, d
    ld d, a
    ld [de], a
    ld a, [hl]
    scf
    inc e

jr_007_5e84:
    add e
    ld sp, $881c
    ld sp, $9216
    inc l
    add hl, de
    inc c
    inc bc
    jr @+$10

    dec b
    add hl, de
    ld h, $09
    ld [de], a
    ld [hl], $04
    ld de, $054b
    inc e
    ld l, h

jr_007_5e9d:
    inc d
    jr jr_007_5e2a

    inc bc
    jr @+$1a

    jr jr_007_5eea

    inc d
    ld a, [de]
    ld b, h
    ld c, $22
    ld b, h
    inc d
    inc hl
    ld h, h
    inc e
    ld a, [hl+]
    ld b, [hl]
    ld d, $31
    ld b, b
    ld [de], a
    jr c, jr_007_5efa

    ld a, [de]
    add hl, sp
    ld l, b
    ld d, $40
    ld b, e
    inc d
    ld c, d
    ld b, e
    jr jr_007_5f10

    ld l, b
    inc de
    ld d, a
    ld b, e
    inc d
    ld e, [hl]
    ld b, c
    jr jr_007_5f2c

    ld b, c
    ld a, [de]
    ld l, c
    ld b, h
    ld [de], a
    ld l, h
    ld h, h
    dec de
    ld b, $01
    db $10
    inc c
    inc bc
    inc d
    ld [de], a
    inc b
    ld c, $19
    dec b
    db $10
    dec l
    inc bc
    inc d
    ld [hl], $04
    ld c, $4d
    dec b
    ld a, [de]
    ld e, a
    inc b

jr_007_5eea:
    ld c, $17
    ld d, $3c
    ld [hl-], a
    ld [bc], a
    ccf
    ld c, l
    dec bc
    ccf
    ld h, [hl]
    rrca
    ccf
    ld [hl], c
    inc b
    ccf

jr_007_5efa:
    sub l
    dec c
    ccf
    and b
    dec bc
    ccf
    inc l
    inc bc
    db $10
    inc [hl]
    dec b
    inc bc
    ld d, e
    db $10
    rlca
    ld l, h
    ld [$9903], sp
    dec b
    inc b
    and [hl]

jr_007_5f10:
    ld [$ac05], sp
    dec bc
    inc bc
    inc d
    inc e
    inc e
    ld a, [hl-]
    inc e
    dec hl
    ld c, h
    inc e
    jr nc, jr_007_5f76

    inc e
    ld a, [hl-]
    ld a, [hl-]
    inc e
    ld b, l
    ld c, h
    inc e
    ld e, c
    ld c, e
    inc e
    ld l, l
    ld c, h
    inc e

jr_007_5f2c:
    ld [hl], e
    ld c, h
    ld a, [de]
    add b
    rra
    dec de
    adc d
    ld hl, $9116
    inc sp
    inc e
    sub [hl]
    ld d, a
    inc d
    sub a
    inc [hl]
    inc e
    rlca
    ld [$0d1c], sp
    ld de, $0a19
    inc bc
    rla
    ld b, b
    inc b
    jr jr_007_5f9a

    inc bc
    jr jr_007_5fb5

    dec b
    inc d
    ld a, c
    inc b
    inc de
    inc e
    ld e, $46
    ld d, $27
    ld b, l
    ld [de], a
    add hl, hl
    ld b, h
    ld d, $30
    ld b, b
    jr jr_007_5f97

    ld b, e
    inc e
    inc a
    ld b, [hl]
    ld c, $44
    ld b, c
    rla
    ld c, d
    ld b, c
    rla
    ld e, b
    ld b, b
    ld d, $61
    ld b, h
    add hl, de
    ld h, a
    ld b, h
    ld [de], a
    ld l, l

jr_007_5f76:
    ld b, h
    jr jr_007_5fe6

    ld l, b
    ld [de], a
    ld [hl], d
    ld l, c
    inc d
    inc de
    ld bc, $2910
    inc b
    ld d, $45
    inc bc
    ld [de], a
    ld c, [hl]
    dec b
    dec d
    ld l, c
    inc b
    add hl, de
    inc e
    dec c
    add hl, sp
    inc e
    inc de
    add hl, sp
    ld a, [de]
    ld hl, $1a38

jr_007_5f97:
    dec l
    jr c, jr_007_5fb6

jr_007_5f9a:
    dec [hl]
    ld e, e
    inc e
    inc a
    add hl, sp
    inc e
    ld b, c
    add hl, sp
    add hl, de
    ld c, c
    ld sp, $501c
    ld d, a
    inc e
    ld e, c
    dec hl
    add hl, de
    ld e, a
    ld sp, $6516
    ld sp, $6d19
    cpl
    dec de

jr_007_5fb5:
    ld [hl], c

jr_007_5fb6:
    cpl
    inc e
    ld a, d
    dec e
    inc e
    ld a, h
    ld e, e
    inc e
    add c
    ld d, a
    inc e
    adc [hl]
    add hl, sp
    inc e
    sub h
    add hl, sp
    inc e
    rla
    add hl, bc
    inc e
    ld [hl+], a
    add hl, bc
    ld d, $45
    inc bc
    ld d, $50
    inc b
    inc d
    ld h, b
    dec b
    ld [de], a
    ld a, [hl]
    ld b, $11
    ld d, $13
    dec a
    db $10
    ld a, [hl+]
    dec sp
    inc d
    ld l, $3c
    db $10
    ld a, [hl-]
    dec sp
    rla

jr_007_5fe6:
    ld b, [hl]
    dec a
    add hl, de
    ld c, e
    ccf
    jr jr_007_604c

    ccf
    add hl, de
    ld h, [hl]
    ld l, h
    db $10
    ld [hl], c
    dec sp
    jr jr_007_6004

    inc b
    ld d, $19
    inc bc
    add hl, de
    ld [hl+], a
    ld [$3d14], sp
    inc bc
    add hl, de
    ld b, c
    dec c
    add hl, de

jr_007_6004:
    ld d, [hl]
    inc de
    inc d
    ld e, d
    dec b
    dec d
    ld l, h
    inc bc
    ld d, $1c
    rrca
    inc l
    inc e
    jr jr_007_603e

    inc e
    inc h
    jr z, jr_007_6027

    cpl
    ld e, l
    inc e
    dec [hl]
    ld d, a
    inc e
    ccf
    jr z, jr_007_603c

    ld c, b
    ld e, e
    rla
    ld c, [hl]
    inc sp
    inc e
    ld c, a

jr_007_6027:
    ld e, b
    add hl, de
    ld d, l
    inc sp
    inc e
    ld e, e
    add hl, hl
    dec d
    ld l, c
    add hl, hl
    ld a, [de]
    ld [hl], c
    ld e, e
    db $10
    db $76
    ld e, l
    db $10
    add b
    ld e, l
    ld [de], a
    adc e

jr_007_603c:
    dec hl
    ld [de], a

jr_007_603e:
    adc a
    ld e, e
    ld d, $17
    dec b
    ld d, $23
    inc b
    ld d, $36
    inc bc
    ld [de], a
    ld h, c
    ld a, [bc]

jr_007_604c:
    dec d
    ld [hl], h
    inc b
    inc de
    inc e
    ld a, [de]
    ld e, e
    ld d, $27
    ld d, a
    ld d, $2f
    ld d, c
    rla
    add hl, sp
    ld d, c
    ld d, $46
    ld d, b
    ld d, $48
    ld e, e
    dec e
    ld e, b
    ld d, c
    dec e
    ld h, b
    ld d, c
    inc e
    ld l, a
    ld d, b
    inc e
    db $76
    ld d, b
    dec de
    ld a, [hl]
    ld d, c
    rla
    adc d
    ld c, a
    inc e
    sub h
    ld d, b
    inc e
    rlca
    ld [$1117], sp
    inc b
    ld d, $19
    inc bc
    db $10
    dec a
    dec b
    ld d, $56
    inc b
    rla
    ld h, e
    inc bc
    dec d
    ld a, [de]
    rrca
    cpl
    inc e
    inc de
    cpl
    inc e
    ld a, [de]
    ld e, e
    inc e
    rra
    ld d, a
    add hl, de
    ld a, [hl+]
    ld e, d
    inc de
    dec [hl]
    ld e, d
    ld d, $41
    dec hl
    jr jr_007_60ec

    cpl
    inc de
    ld e, a
    ld e, e
    inc e
    ld h, a
    jr z, jr_007_60c5

    ld [hl], e
    add hl, hl
    add hl, de
    ld a, h
    dec hl
    inc e
    adc d
    ld d, a
    inc d
    adc a
    inc sp
    inc e
    sub h
    jr z, jr_007_60cf

    ld a, [bc]
    inc b
    add hl, de
    add hl, de
    inc bc
    ld c, $38
    inc bc
    inc e
    add hl, sp
    ld c, $18
    ld h, c

jr_007_60c5:
    ld b, $1c
    ld [hl], e
    inc d
    rla
    dec d
    ld de, $1a4f
    rla

jr_007_60cf:
    ld c, a
    ld d, $27
    ld e, e
    rla
    ld l, $51
    ld d, $31
    ld d, a
    rla
    jr c, jr_007_612d

    inc d
    ld b, b
    cpl
    dec d
    ld b, l
    cpl
    jr jr_007_6138

    ld c, a
    dec e
    ld e, b
    ld d, c
    jr @+$6b

    ld d, b
    dec e

jr_007_60ec:
    ld [hl], h
    ld d, c
    ld d, $84
    ld e, d
    ld d, $8b
    ld e, e
    inc e
    sub [hl]
    ld d, b
    inc e
    sub a
    ld e, e
    ld d, $08
    add hl, bc
    ld d, $13
    inc bc
    ld d, $1b
    inc b
    inc de
    ld [hl+], a
    dec b
    inc de
    ld c, e
    inc b
    dec d
    ld e, [hl]
    inc bc
    ld d, $62
    ld [de], a
    dec d
    inc e
    ld [de], a
    jr z, jr_007_612a

    ld e, $5b
    ld d, $27
    add hl, hl
    jr jr_007_6146

    cpl
    inc d
    ld [hl], $2f
    ld d, $3b
    cpl
    ld d, $4f
    ld d, a
    ld d, $57
    ld e, e
    jr jr_007_6194

jr_007_612a:
    cpl
    jr jr_007_61a1

jr_007_612d:
    cpl
    jr @+$7f

    cpl
    add hl, de
    adc b
    cpl
    inc e
    sub a
    jr z, @+$1a

jr_007_6138:
    rlca
    dec b
    inc e
    dec bc
    add hl, bc
    add hl, de
    dec sp
    dec c
    ld [de], a
    ld c, d
    inc bc
    add hl, de
    ld e, c
    inc d

jr_007_6146:
    ld [de], a
    ld h, e
    inc b
    ld d, $81
    dec b
    inc de
    sub b
    inc bc
    ld de, $121c
    ld a, $18
    ld e, $2f
    ld d, $33
    ld a, $1c
    ld d, d
    ld d, a
    add hl, de
    ld e, b
    inc sp
    rla
    ld e, a
    cpl
    ld d, $6c
    ld a, $1c
    add d
    ld sp, $871c
    ld e, b
    inc e
    sub d
    dec hl
    inc e
    sub [hl]
    ld e, e
    inc e
    inc c
    add hl, bc
    dec d
    dec l
    inc b
    ld d, $30
    ld de, $4010
    inc bc
    ld de, $0567
    inc d
    ld a, [hl]
    inc b
    ld de, $0b1c
    ld e, e
    inc d
    ld c, $3f
    add hl, de
    inc de
    ccf
    inc d
    inc hl
    inc a
    db $10
    ld a, [hl+]
    dec sp
    db $10

jr_007_6194:
    ld [hl], $3b
    ld d, $3c
    dec a
    ld d, $49
    ccf
    ld d, $55
    ccf
    ld a, [de]
    ld e, d

jr_007_61a1:
    inc a
    rla
    ld h, [hl]
    ld l, h
    inc e
    ld l, a
    dec hl
    rla
    dec de
    inc b
    inc e
    jr nz, jr_007_61b6

    dec d
    scf
    inc bc
    rla
    ld b, c
    db $10
    rla
    ld e, e

jr_007_61b6:
    dec b
    inc d
    jr jr_007_61cf

    ld h, h
    inc d
    rra
    ld l, b
    add hl, de
    ld a, [hl+]
    ld d, a
    rla
    scf
    ld h, h
    ld d, $3b
    ld b, b
    jr jr_007_620d

    ld b, b
    ld d, $4e
    ld b, e
    inc e
    ld d, h

jr_007_61cf:
    ld b, [hl]
    ld [de], a
    ld d, a
    ld b, h
    ld c, $5c
    ld b, h
    db $10
    ld h, a
    ld l, b
    inc de
    ld l, b
    ld b, h
    ld [de], a
    add hl, de
    inc bc
    ld [de], a
    inc l
    inc b
    ld a, [de]
    ld sp, $1405
    ld a, [hl-]
    inc b
    ld [de], a
    ld b, l
    inc bc
    rrca
    ld c, l
    dec b
    inc de
    ld d, h
    inc b
    inc d
    ld h, c
    inc bc
    jr jr_007_6209

    dec d
    ld c, c
    dec d
    ld [hl+], a
    ld c, a
    inc de
    add hl, hl
    ld e, e
    rla
    ld sp, $185a
    scf
    ld c, c
    inc de
    ld a, $49
    ld a, [de]
    ld b, a

jr_007_6209:
    ld d, a
    inc de
    ld d, c
    ld b, a

jr_007_620d:
    dec d
    ld e, e
    ld c, a
    inc de
    ld h, l
    ld e, e
    ld d, $6e
    ld e, d
    inc de
    ld a, d
    ld b, a
    ld a, [de]
    add e
    ld e, e
    rla
    adc b
    ld c, c
    db $10
    adc a
    ld b, a
    ld d, $97
    ld e, e
    ld a, [de]
    add hl, bc
    ld [$0e14], sp
    inc b
    inc d
    inc e
    inc bc
    ld d, $1d
    dec b
    ld a, [de]
    rra
    ld [de], a
    dec d
    ld b, e
    inc b
    ld a, [de]
    ld e, e
    rrca
    ld d, $86
    inc bc
    dec e
    add hl, de
    add hl, bc
    ccf
    db $10
    dec d
    ccf
    ld [de], a
    ld hl, $195f
    dec h
    ld d, a
    rrca
    inc l
    ccf
    db $10
    inc sp
    ccf
    rrca
    jr c, jr_007_6292

    inc e
    ld b, c
    ccf
    ld [de], a
    ld c, b
    ld e, a
    inc e
    ld d, l
    ld l, d
    ld [de], a
    ld e, e
    ld e, a
    inc e
    ld h, b
    ld d, a
    ld [de], a
    ld h, l
    ld e, a
    inc e
    ld l, [hl]
    ccf
    inc e
    ld [hl], e
    ld l, e
    ld [de], a
    ld a, b
    ld e, a
    ld e, $7d
    ld l, e
    ld [de], a
    add h
    ld e, a
    ld e, $87
    ld l, d
    ld [de], a
    adc e
    ld e, a
    ld [de], a
    adc [hl]
    ld e, a
    ld [de], a
    sub [hl]
    ld e, a
    db $10
    rrca
    inc bc
    inc de
    inc e
    inc b
    inc c
    inc [hl]
    dec b
    add hl, de
    dec sp
    dec c
    jr jr_007_62d9

    inc b
    rla
    ld a, c
    inc bc

jr_007_6292:
    inc d
    sub d
    dec b
    rrca
    inc e
    dec c
    ccf
    jr jr_007_62ae

    ccf
    add hl, de
    inc hl
    ccf
    add hl, de
    jr z, jr_007_62e1

    rla
    ld [hl-], a
    dec a
    jr jr_007_62e8

    ccf
    jr jr_007_62f5

    ccf
    db $10
    ld c, a
    dec sp

jr_007_62ae:
    jr @+$57

    ccf
    ld a, [de]
    ld h, [hl]
    ld l, h
    add hl, de
    ld l, c
    ld d, a
    db $10
    ld l, a
    dec sp
    inc d
    dec e
    inc bc
    add hl, de
    scf
    add hl, bc
    inc d
    ld l, b
    dec b
    inc d
    inc e
    rrca
    dec hl
    inc e
    inc d
    ld d, a
    ld a, [de]
    inc h
    ld d, a
    ld a, [de]
    add hl, hl
    cpl
    dec d
    ld b, h
    ld e, d
    inc de
    ld c, b
    ld e, h
    rla
    ld d, h
    ld e, d

jr_007_62d9:
    ld [de], a
    ld e, [hl]
    ld e, d
    ld [de], a
    ld h, [hl]
    ld e, d
    inc e
    ld [hl], d

jr_007_62e1:
    ld d, a
    inc de
    ld a, [hl]
    ld [hl], $1c
    add l
    ld e, e

jr_007_62e8:
    ld d, $8e
    ld e, h
    inc e
    sub [hl]
    dec hl
    inc e
    dec hl
    ld [$380f], sp
    dec b
    dec c

jr_007_62f5:
    ld a, [hl-]
    inc bc
    dec d
    ld c, a
    inc b
    inc e
    ld l, a
    ld [de], a
    jr jr_007_6379

    dec b
    db $10
    dec de
    inc de
    inc a
    ld l, $0c
    ccf
    ld c, [hl]
    ld a, [bc]
    inc a
    ld l, d
    dec c
    ccf
    sub h
    ld b, $3f
    or b
    rlca
    ccf
    ld [hl+], a
    inc b
    inc bc
    ld sp, $0407
    scf
    ld c, $05
    ld c, h
    ld [$7404], sp
    dec b
    dec b
    ld a, b
    rrca
    inc bc
    sub b
    ld de, $9504
    inc bc
    dec c
    and h
    ld c, $04
    xor d
    dec bc
    dec b
    dec d
    add hl, de
    dec bc
    ld e, e
    inc e
    ld d, $2b
    rla
    rra
    cpl
    add hl, de
    inc hl
    ld a, $1c
    dec [hl]
    ld d, a
    ld a, [de]
    ld a, $2f
    rla
    ld c, c
    dec hl
    ld d, $59
    dec hl
    inc e
    ld h, e
    dec hl
    inc e
    ld l, l
    ld d, a
    ld a, [de]
    ld [hl], c
    cpl
    dec de
    db $76
    cpl
    inc e
    ld a, d
    ld d, a
    add hl, de
    add b
    ld a, $1c
    adc l
    ld a, $19
    rlca
    add hl, bc
    ld d, $0a
    inc bc
    dec d
    inc e
    inc b
    add hl, de
    scf
    dec b
    add hl, de
    ld h, a
    inc d
    inc d
    add l
    dec b
    rrca
    db $10
    ld de, $173b
    ld [hl+], a
    ccf
    db $10

jr_007_6379:
    add hl, hl
    dec sp
    rla
    dec l
    ccf
    jr jr_007_63b7

    ccf
    inc de
    ld b, h
    inc a
    ld e, $50
    ld h, e
    rla
    ld d, l
    ccf
    rla
    ld h, b
    ld l, h
    ld d, $69
    ld l, h
    inc d
    ld l, a
    inc a
    jr jr_007_63a3

    inc b
    rla
    ld b, d
    inc de
    inc de
    ld c, e
    inc bc
    inc d
    ld l, l
    dec b
    dec e
    inc e
    ld a, [bc]
    ld d, a

jr_007_63a3:
    ld a, [de]
    db $10
    inc a
    ld e, $1a
    ld a, [hl-]
    inc e
    rra
    ld d, a
    add hl, de
    jr z, jr_007_63eb

    inc e
    dec l
    ld a, [hl-]
    jr jr_007_63f1

    inc a
    ld [de], a
    ld c, b

jr_007_63b7:
    dec sp
    inc e
    ld d, c
    ld a, [hl-]
    ld d, $58
    inc a
    inc e
    ld e, [hl]
    ld d, a
    ld d, $6c
    inc a
    inc e
    ld [hl], c
    ld a, [hl-]
    inc l
    rra
    ld b, h
    dec l
    ld h, $43
    ld a, [hl+]
    ld [hl-], a
    ld h, h
    ld l, $39
    ld b, h
    dec l
    ld b, d
    ld b, c
    inc l
    ld c, e
    ld b, h
    ld sp, $4358
    inc l
    ld h, [hl]
    ld b, e
    inc l
    ld l, d
    ld l, b
    inc l
    ld d, $05
    ld l, $1a
    inc b
    cpl
    ld b, h
    inc bc

jr_007_63eb:
    jr nc, @+$50

    dec b
    jr c, @+$57

    rlca

jr_007_63f1:
    dec l
    ld h, d
    inc bc
    jr z, jr_007_645d

    dec b
    rla
    inc e
    dec c
    ld c, e
    inc e
    inc d
    ld a, [hl-]
    add hl, de
    rra
    ld a, [hl-]
    inc e
    dec hl
    dec l
    dec de
    scf
    inc h
    inc e
    ccf
    ld c, e
    inc e
    ld b, a
    ld c, d
    inc e
    ld c, h
    ld a, [hl-]
    dec de
    ld d, l
    rra
    ld a, [de]
    ld e, a
    inc h
    dec de
    ld l, c
    jr nz, jr_007_6436

    ld [hl], a
    ld d, a
    dec de
    ld a, l
    ld hl, $831a
    dec hl
    inc e
    adc h
    ld a, [hl-]
    ld a, [de]
    sub c
    jr nz, jr_007_6441

    sbc b
    inc sp
    inc e
    rlca
    ld [$1c15], sp
    dec b
    jr jr_007_64a2

    inc bc
    ld d, $70

jr_007_6436:
    inc b
    dec d
    ld [hl], h
    inc bc
    jr @-$69

    dec b
    ld [de], a
    ld [de], a
    inc e
    ld b, h

jr_007_6441:
    ld [de], a
    dec h
    ld b, e
    jr jr_007_6473

    ld b, h
    db $10
    ld sp, $1268
    dec [hl]
    ld b, c
    ld d, $39
    ld b, c
    ld [de], a
    ld b, l
    ld l, c
    ld [de], a
    ld d, l
    ld b, e
    jr jr_007_64b2

    ld b, e
    db $10
    ld e, a
    ld b, h
    db $10

jr_007_645d:
    ld l, e
    ld l, b
    inc de
    ld [hl], c
    ld b, h
    inc d
    ld d, $04
    jr jr_007_6488

    dec b
    inc d
    ld l, $03
    jr jr_007_64b2

    ld bc, $4d10
    inc b
    inc c
    ld l, c

jr_007_6473:
    dec b
    ld de, $1113
    ld c, b
    jr jr_007_648f

    cpl
    ld de, $481a
    dec d
    inc h
    cpl
    inc e
    ld l, $2f
    dec de
    inc sp
    cpl
    ld a, [de]

jr_007_6488:
    dec sp
    ld c, b
    rla
    ld b, c
    ld c, b
    dec d
    ld d, c

jr_007_648f:
    inc h
    inc de
    ld d, [hl]
    inc h
    ld [de], a
    ld h, d
    ld c, b
    jr jr_007_64ff

    rra
    ld a, [de]
    ld l, e
    jr nz, jr_007_64b9

    rlca
    add hl, bc
    rla
    ld a, [hl+]
    inc b

jr_007_64a2:
    jr jr_007_64da

    dec b
    jr jr_007_64e8

    inc bc
    db $10
    rla
    dec d
    inc a
    inc e
    ld c, $57
    ld h, $08
    ccf

jr_007_64b2:
    jr c, jr_007_64c3

    ccf
    ld c, d
    db $10
    ld e, d
    ld d, d

jr_007_64b9:
    inc bc
    ccf
    adc [hl]
    inc bc
    ccf
    and h
    ld c, $3f
    or e
    inc c

jr_007_64c3:
    ccf
    add hl, hl
    ld de, $2a05
    inc bc
    inc bc
    ld c, h
    inc bc
    ld b, $5c
    inc bc
    ld c, $82
    inc bc
    inc b
    sub b
    ld de, $ac05
    dec bc
    inc bc
    dec c

jr_007_64da:
    ld [de], a
    ld de, $1a2b
    add hl, de
    ld a, $1c
    inc l
    ld a, $1a
    ccf
    inc sp
    ld [de], a
    ld c, l

jr_007_64e8:
    ld a, $12
    ld h, l
    dec hl
    ld a, [de]
    adc [hl]
    ld a, $0e
    dec d
    dec b
    inc de
    rla
    inc b
    rla
    ld [hl+], a
    inc bc
    ld [de], a
    ld d, c
    add hl, bc
    rla
    ld a, a
    dec b
    inc e

jr_007_64ff:
    add c
    ld de, $1f11
    rrca
    rra
    inc l
    db $10

jr_007_6507:
    rra
    ld b, l
    rrca
    inc h
    ld c, [hl]
    rrca
    ld hl, $0858
    inc h
    ld h, c
    ld b, $1f
    add b
    rlca
    ld hl, $0588
    rra
    adc h
    ld a, [bc]
    inc h
    sbc b
    inc de
    inc h
    and d
    dec d
    ld hl, $0f22
    inc b
    inc l
    inc c
    inc bc
    inc [hl]
    ld [de], a
    dec b
    ld d, d
    rla
    inc bc
    ld l, h
    inc de
    ld b, $7a
    inc bc
    ld b, $14
    ld a, [de]
    ld de, $1c2b
    dec e
    ld c, h
    ld e, $2c
    ld c, l
    ld e, $38
    ld c, l
    ld a, [de]
    dec a
    rra
    ld a, [de]
    ld b, l
    ld hl, $461c
    ld c, h
    add hl, de
    ld c, l
    jr nz, jr_007_656b

    ld h, c
    ld c, e
    dec de
    ld h, d
    jr nz, jr_007_6571

    ld [hl], h
    ld c, h
    inc e
    add a
    ld c, e
    inc e
    adc a
    ld c, h
    inc e
    rlca
    add hl, bc
    inc de
    ld hl, $1503
    ld a, [hl-]
    dec b
    dec d
    ld d, h
    inc bc
    jr jr_007_65c1

jr_007_656b:
    inc b
    dec d
    ld l, c
    inc bc
    jr jr_007_6507

jr_007_6571:
    dec b
    inc de
    inc e
    dec c
    ld d, a
    add hl, de
    dec d
    dec hl
    ld e, $1e
    ld h, e
    rla
    inc hl
    ccf
    ld e, $28
    ld h, e
    ld e, $2d
    ld h, e
    jr jr_007_65b9

    ccf
    jr jr_007_65c6

    ccf
    ld e, $41
    ld h, e
    ld e, $4b
    ld h, e
    ld e, $51
    ld h, d
    add hl, de
    ld e, c
    inc a
    rla
    ld h, b
    ld l, h
    add hl, de
    ld l, c
    ld l, h
    inc e
    ld [hl], b
    dec hl
    inc e
    add hl, bc
    ld c, $18
    rlca
    inc b
    dec d
    add hl, de
    inc bc
    dec d
    scf
    dec b
    dec d
    ld a, [de]
    dec bc
    cpl
    inc e
    inc d
    inc l
    inc d
    ld a, [de]
    cpl
    jr @+$1f

    cpl

jr_007_65b9:
    add hl, de
    dec hl
    ld e, e
    add hl, de
    jr nc, jr_007_65ea

    inc e
    add hl, sp

jr_007_65c1:
    jr z, jr_007_65da

    ld a, $2f
    inc e

jr_007_65c6:
    ld d, c
    ld e, e
    rla
    ld e, c
    inc sp
    inc e
    ld e, e
    ld d, a
    add hl, de
    ld h, b
    inc sp
    rla
    ld h, a
    cpl
    ld d, $72
    ld e, d
    ld d, $79
    ld d, a

jr_007_65da:
    ld a, [de]
    add d
    cpl
    ld d, $91
    ld e, d
    inc e
    sub a
    ld d, a

jr_007_65e3:
    jr jr_007_660b

    dec b
    inc e
    inc a
    inc d
    inc e

jr_007_65ea:
    ld c, [hl]
    ld a, [bc]
    db $10
    ld [de], a
    ld [$1a3e], sp
    ld hl, $1057
    ld h, $5d
    ld a, [de]
    dec l
    ld a, $12
    ld a, $58
    inc e
    ld d, e
    dec hl
    inc d
    ld e, d
    dec [hl]
    ld a, [de]
    ld e, a
    inc sp
    ld [de], a
    ld l, e
    ld a, $12
    add e
    dec hl

jr_007_660b:
    inc e
    adc l
    ld a, $1a
    rra
    ld [$2419], sp
    dec b
    add hl, de
    ld c, l
    inc b
    rrca
    ld l, l
    inc bc
    inc d
    db $76
    dec b
    db $10
    db $10
    db $10
    dec sp
    ld e, $18
    ld h, d
    ld e, $2b
    ld h, e
    ld e, $2f
    ld h, e
    db $10
    ld a, [hl-]
    dec sp
    ld e, $46
    ld h, e
    rla
    ld c, l
    inc a
    ld e, $51
    ld h, e
    ld e, $5a
    ld h, d
    rla
    ld h, b
    ld l, h
    rla
    ld l, c
    ld l, h
    jr @+$0d

    inc b
    rla
    inc h
    ld [de], a
    dec d
    scf
    dec b
    ld d, $95
    inc bc
    jr jr_007_65e3

    inc b
    inc de
    inc e
    rrca
    add hl, hl
    rra
    ld a, [de]
    ld h, e
    inc e
    jr nz, jr_007_66ae

    inc e
    inc h
    ld d, [hl]
    rra
    cpl
    ld h, e
    inc e
    add hl, sp
    add hl, hl
    rra
    ld b, e
    ld h, e
    ld a, [de]
    ld d, c
    ld d, l
    jr jr_007_66c8

    ld h, c
    jr jr_007_66df

    ld h, c
    rra
    ld a, a
    ld h, e
    rra
    adc c
    ld h, d
    inc e
    sub a
    ld d, a
    inc e
    ld [$1609], sp
    inc de
    inc b
    rla
    ld a, [hl+]
    dec b
    inc e
    ld c, c
    inc c
    jr jr_007_66ec

    inc bc
    ld d, $69
    inc b
    inc d
    ld d, $0b
    ld c, c
    db $10
    ld de, $1949
    dec e
    ld e, e
    rla
    inc hl
    ld c, a
    db $10
    ld l, $47
    jr jr_007_66d8

    ld c, a
    db $10
    ld c, h
    ld b, a
    ld d, $55
    ld c, c
    inc e
    ld e, h
    ld c, c
    add hl, de
    ld h, d
    ld e, e
    db $10
    ld [hl], h
    ld e, d
    ld d, $7d
    ld c, c
    add hl, de

jr_007_66ae:
    add [hl]
    ld c, a
    add hl, de
    adc d
    ld b, a
    ld d, $18
    ld [$3a16], sp
    inc bc
    rla
    ld e, l
    inc b
    ld a, [de]
    ld h, a
    dec b
    dec bc
    ld [hl], h
    dec b
    ld [de], a
    sub l
    inc bc
    ld d, $18
    dec de

jr_007_66c8:
    ld b, c
    add hl, de
    rra
    ld b, [hl]
    jr jr_007_66fe

    ld b, h
    inc d
    ld [hl-], a
    ld h, h
    ld d, $39
    ld b, b
    ld [de], a
    ld b, e
    ld l, c

jr_007_66d8:
    add hl, de
    ld c, h
    ld b, c
    inc e
    ld d, b
    ld b, [hl]
    ld [de], a

jr_007_66df:
    ld e, h
    dec a
    inc e
    ld l, d
    ld h, h
    ld [de], a
    ld [hl], e
    ld l, b
    ld d, $77
    ld b, c
    ld d, $80

jr_007_66ec:
    ld b, e
    ld [de], a
    add d
    ld l, b
    ld de, $4391
    dec d
    sbc h
    ld b, h
    add hl, de
    sbc e
    ld b, h
    ld d, $26
    dec b
    db $10
    ld b, d

jr_007_66fe:
    dec b
    ld d, $5e
    rlca
    db $10
    ld l, h
    inc b
    ld a, [de]
    sub l
    ld bc, $1813
    ld [de], a
    cpl
    ld d, $19
    dec hl
    rla
    ld e, $2f
    ld d, $23
    dec hl
    ld d, $30
    dec hl
    ld d, $31
    ld a, $16
    add hl, sp
    ld a, $16
    ld d, l
    dec hl
    ld d, $5f
    dec hl
    ld d, $6a
    dec hl
    add hl, de
    ld [hl], c
    ld sp, $781a
    cpl
    inc d
    ld a, a
    cpl
    inc e
    add d
    ld e, e
    dec d
    adc b
    inc sp
    ld d, $91
    dec hl
    add hl, de
    sub h
    ld e, e
    inc e
    ld c, [hl]
    ld de, $5d14
    ld b, $0d
    ld a, [de]
    ld a, [bc]
    ld d, l
    rra
    dec de
    ld h, d
    jr jr_007_6778

    ld h, c
    ld a, [de]
    scf
    inc h
    jr jr_007_6792

    ld h, c
    inc d
    ld e, a
    ld e, d
    inc d
    ld h, h
    ld e, d
    jr jr_007_67cd

    ld h, c
    ld a, [de]
    add a
    inc h
    dec de
    sub c
    inc h
    jr @+$18

    inc bc
    jr jr_007_67b8

    inc b
    jr jr_007_67d2

    dec b
    add hl, de
    inc e
    ld [$1c3a], sp
    inc c
    ld a, [hl-]
    dec d
    ld a, [de]
    dec sp
    inc e
    inc hl
    ld d, a
    inc de

jr_007_6778:
    jr z, jr_007_67b5

    ld e, $2e
    ld a, [hl-]
    dec d
    ld a, [hl-]
    inc a
    inc e
    ld c, b
    ld a, [hl-]
    inc e
    ld c, [hl]
    ld a, [hl-]
    jr jr_007_67dc

    inc a
    inc e
    ld [hl], b
    ld a, [hl-]
    ld a, [hl+]
    jr jr_007_67f7

    add hl, hl
    inc [hl]
    ld h, h

jr_007_6792:
    add hl, hl
    jr c, jr_007_67fd

    ld a, [hl+]
    ccf
    ld b, h
    ld a, [hl+]
    ld b, h
    ld l, b
    ld h, $5b
    ld h, h
    ld a, [hl+]
    ld h, a
    ld h, h
    ld h, $6b
    ld b, h
    ld e, $55
    db $10
    ld e, $0f
    ld [$1b2c], sp
    inc bc
    inc l
    inc sp
    inc b
    add hl, sp
    ld b, b
    rlca
    ld l, $60

jr_007_67b5:
    dec b
    rla
    db $10

jr_007_67b8:
    dec d
    ld h, [hl]
    ld d, $1c
    dec hl
    inc e
    dec hl
    ld d, e
    db $10
    ld l, $54
    inc e
    jr nc, jr_007_6819

    db $10
    scf
    ld h, [hl]
    ld d, $44
    ld d, e
    ld a, [de]

jr_007_67cd:
    ld c, d
    ld d, d
    inc e
    ld c, l
    ld d, d

jr_007_67d2:
    inc e
    ld c, a
    ld d, e
    ld a, [de]
    ld d, e
    ld d, d
    dec c
    ld d, [hl]
    ld d, h
    ld a, [de]

jr_007_67dc:
    ld e, c
    ld d, d
    inc e
    ld e, a
    ld d, e
    dec c
    ld h, e
    ld d, h
    add hl, de
    ld h, [hl]
    ld d, d
    inc e
    ld l, c
    ld d, e
    ld c, $71
    dec sp
    ld a, [de]
    add d
    inc a
    db $10
    add e
    ld h, [hl]
    ld d, $8a
    dec hl
    rrca

jr_007_67f7:
    sub c
    dec sp
    inc e
    dec a
    ld a, [bc]
    dec de

jr_007_67fd:
    dec de
    inc c
    dec e
    jr jr_007_6812

    dec e
    dec de
    dec d
    dec e
    jr jr_007_6821

    dec e
    rla
    dec e
    dec e
    dec de
    ld [hl+], a
    dec e
    dec e
    daa
    dec e

jr_007_6812:
    inc e
    dec hl
    dec e
    jr @+$31

    dec e
    dec de

jr_007_6819:
    inc [hl]
    dec e
    jr jr_007_6855

    dec e
    add hl, de
    inc a
    dec e

jr_007_6821:
    jr jr_007_6863

    dec e
    rla
    ld b, h
    dec e
    inc de
    dec c
    inc b
    db $10
    inc de
    dec b
    rla
    ld d, $01
    db $10
    dec de
    inc bc
    add hl, de
    rra
    inc e
    inc d
    dec h
    inc b
    db $10
    dec l
    inc bc
    rrca
    ld [hl-], a
    dec b
    ld [de], a
    ld [hl], $04
    inc de
    dec sp
    dec b
    jr jr_007_6889

    add hl, de
    ld c, $46
    inc bc
    add hl, de
    ld c, d
    ld a, [de]
    dec de
    dec de
    inc c
    dec e
    jr jr_007_6864

    dec e

jr_007_6855:
    dec de
    dec d
    dec e
    jr jr_007_6873

    dec e
    rla
    dec e
    dec e
    dec de
    ld [hl+], a

Call_007_6860:
    dec e
    dec e
    daa

jr_007_6863:
    dec e

jr_007_6864:
    inc e
    dec hl
    dec e
    jr jr_007_6898

    dec e
    dec de
    inc [hl]
    dec e
    jr jr_007_68a7

    dec e

Call_007_6870:
    add hl, de
    inc a
    dec e

jr_007_6873:
    jr jr_007_68b5

    dec e
    rla
    ld b, h

Jump_007_6878:
    dec e
    inc de
    dec c
    inc bc
    db $10
    inc de
    inc b
    dec d
    ld d, $03
    db $10
    dec de
    dec b
    inc de
    jr nz, jr_007_688c

    inc d

jr_007_6889:
    dec h
    inc bc
    db $10

jr_007_688c:
    dec l
    dec b
    rrca
    ld [hl-], a
    inc b
    ld [de], a
    ld [hl], $03
    inc de
    dec sp
    inc b
    ld [de], a

jr_007_6898:
    ld b, d
    inc bc
    ld c, $46
    dec b
    add hl, de
    ld c, d
    rlca
    ld [bc], a
    ld a, [de]
    rlca
    ld [bc], a
    ld d, $13
    ld l, l

jr_007_68a7:
    ld [bc], a
    ld [de], a
    ld b, $02
    ld a, [de]
    ld [de], a
    ld l, [hl]
    ld [bc], a
    jr @+$0f

    ld [bc], a
    inc e
    ld [de], a
    ld l, a

jr_007_68b5:
    ld [bc], a
    ld a, [de]
    inc c
    ld [bc], a
    dec d
    inc de
    ld [hl], b
    ld [bc], a
    jr jr_007_68cd

    ld [bc], a
    ld [de], a
    inc c
    ld [hl], c
    ld [bc], a
    jr jr_007_68cd

    ld [bc], a
    jr jr_007_68db

    ld [hl], d
    ld [bc], a
    ld a, [de]
    inc c

jr_007_68cd:
    ld [bc], a
    inc e
    ld [de], a
    ld [hl], e
    ld [bc], a
    ld a, [de]
    inc c
    ld [bc], a
    inc de
    inc de
    ld [hl], h
    nop
    nop
    nop

jr_007_68db:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_6e44:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld l, a
    xor $6f
    inc e
    ld [hl], b
    cp b
    ld [hl], b
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld [$0a02], sp
    ld [bc], a
    ld d, $02
    rla
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    ld e, $02
    inc e
    ld [bc], a
    rra
    ld [bc], a
    dec e
    ld [bc], a
    inc [hl]
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    dec [hl]
    ld [bc], a
    inc sp
    ld [bc], a
    inc h
    ld [bc], a
    ld hl, $1502
    ld [bc], a
    dec d
    ld [bc], a
    dec d
    ld [bc], a
    dec d
    ld [bc], a
    dec d
    ld [bc], a
    dec d
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    ld [bc], a
    inc bc
    nop

Call_007_6eee:
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [de], a
    inc bc
    daa
    inc bc
    ld hl, $1503
    inc bc
    dec d
    inc bc
    dec d
    ld [bc], a
    dec bc
    inc bc
    dec de
    inc bc
    inc [hl]
    inc bc
    ld a, [hl+]
    inc bc
    cpl
    inc bc
    cpl
    inc bc
    dec l
    inc bc
    dec l
    inc bc
    ld sp, $4403
    inc bc
    ld c, [hl]
    inc bc
    ld h, $03
    rra
    inc bc
    ld b, a
    inc bc
    ld b, a
    inc bc
    ld c, l
    inc bc
    inc de
    inc bc
    ld a, $03
    rla
    inc bc
    jr c, jr_007_6f30

    ld c, c
    inc bc
    ld b, b

jr_007_6f30:
    inc bc
    dec sp
    inc bc
    ld a, [hl-]
    inc bc
    ld c, e
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    ld de, $0a03
    inc bc
    add hl, de
    inc bc
    ld a, [de]
    inc bc
    scf
    inc bc
    scf
    inc bc
    scf
    inc bc
    ld b, d
    inc bc
    ld l, h
    inc bc
    ld l, h
    inc bc
    dec [hl]
    inc bc
    ld c, a
    inc bc
    ld c, a
    inc bc
    ld [hl], $03
    ld [hl], $03
    ld [hl], $02
    ld h, $02
    ld h, $02
    inc hl
    inc bc
    ld d, d
    inc bc
    ld d, [hl]
    inc bc
    ld e, b
    inc bc
    ld e, d
    inc bc
    ld e, h
    inc bc
    ld e, [hl]
    inc bc
    ld h, b
    inc bc
    ld h, e
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    sub h
    ld [hl], c
    and b
    ld [hl], c
    xor h
    ld [hl], c
    cp b
    ld [hl], c
    rst $00
    ld [hl], c
    db $d3
    ld [hl], c
    ld [c], a
    ld [hl], c
    pop af
    ld [hl], c
    inc bc
    ld [hl], d
    dec d
    ld [hl], d
    daa
    ld [hl], d
    ld [hl], $72
    ld b, l
    ld [hl], d
    ld d, a
    ld [hl], d
    ld l, c
    ld [hl], d
    ld a, e
    ld [hl], d
    adc l
    ld [hl], d
    sbc a
    ld [hl], d
    or c
    ld [hl], d
    ret nz

    ld [hl], d
    jp nc, $e472

    ld [hl], d
    or $72
    ld [$1a73], sp
    ld [hl], e
    inc l
    ld [hl], e
    ld b, h
    ld [hl], e
    ld d, [hl]
    ld [hl], e
    ld l, b
    ld [hl], e
    ld a, d
    ld [hl], e
    adc h
    ld [hl], e
    sbc [hl]
    ld [hl], e
    or b
    ld [hl], e
    jp nz, $d473

    ld [hl], e
    and $73
    ld hl, sp+$73
    ld a, [bc]
    ld [hl], h
    inc e
    ld [hl], h
    inc [hl]
    ld [hl], h
    ld b, b
    ld [hl], h
    ld c, h
    ld [hl], h
    ld e, e
    ld [hl], h
    ld l, d
    ld [hl], h
    ld a, c
    ld [hl], h
    ld a, a
    ld [hl], h
    sub c
    ld [hl], h
    and e
    ld [hl], h
    or l
    ld [hl], h
    rst $00
    ld [hl], h
    sub $74
    push hl
    ld [hl], h
    rst $30
    ld [hl], h
    add hl, bc
    ld [hl], l
    dec de
    ld [hl], l
    ld a, [hl+]
    ld [hl], l
    add hl, sp
    ld [hl], l
    ld c, [hl]
    ld [hl], l
    ld h, e
    ld [hl], l
    ld l, h
    ld [hl], l
    ld a, [hl]
    ld [hl], l
    sub b
    ld [hl], l
    and d
    ld [hl], l
    or h
    ld [hl], l
    ret


    ld [hl], l
    call z, $cf75
    ld [hl], l
    push de
    ld [hl], l
    db $db
    ld [hl], l
    sbc $75
    db $e4
    ld [hl], l
    ld [$f075], a
    ld [hl], l
    ld [bc], a
    db $76
    ld de, $2976
    db $76
    jr c, jr_007_7088

    ld b, a
    db $76
    ld d, [hl]
    db $76
    ld h, l
    db $76
    ld [hl], h
    db $76
    add e
    db $76
    sub d
    db $76
    sbc b
    db $76
    sbc [hl]
    db $76
    and h
    db $76
    xor d
    db $76
    or e
    db $76
    cp c
    db $76
    cp a
    db $76
    push bc
    db $76
    bit 6, [hl]
    pop de
    db $76
    rst $10
    db $76
    db $dd
    db $76
    db $e3
    db $76
    jp hl


    db $76
    rst $28
    db $76
    ld hl, sp+$76
    ld bc, $0d77
    ld [hl], a
    add hl, de
    ld [hl], a
    dec h
    ld [hl], a
    ld sp, $3d77
    ld [hl], a
    ld b, e
    ld [hl], a
    ld c, c
    ld [hl], a
    ld c, h
    ld [hl], a
    ld d, d
    ld [hl], a
    ld d, l
    ld [hl], a
    ld e, e
    ld [hl], a
    ld h, c
    ld [hl], a
    ld h, a
    ld [hl], a
    ld l, l
    ld [hl], a
    ld [hl], e
    ld [hl], a
    ld a, c
    ld [hl], a

Call_007_7060:
    add l
    ld [hl], a
    sub c
    ld [hl], a
    sbc l
    ld [hl], a
    and e
    ld [hl], a
    xor a
    ld [hl], a
    cp e
    ld [hl], a
    rst $00
    ld [hl], a
    db $d3
    ld [hl], a

Jump_007_7070:
    rst $18
    ld [hl], a
    pop af
    ld [hl], a
    inc bc
    ld a, b
    inc bc
    ld a, b
    inc bc
    ld a, b
    dec l
    ld a, b
    ld e, l
    ld a, b
    sub b
    ld a, b
    jp $c978


    ld a, b
    rst $08
    ld a, b
    push de
    ld a, b

jr_007_7088:
    db $db
    ld a, b
    db $db
    ld a, b
    db $db
    ld a, b
    db $db
    ld a, b
    db $db
    ld a, b
    db $db
    ld a, b
    db $ed
    ld a, b
    ld sp, hl
    ld a, b
    dec b
    ld a, c
    ld de, $1d79
    ld a, c
    add hl, hl
    ld a, c
    dec [hl]
    ld a, c
    ld b, a
    ld a, c
    ld d, e
    ld a, c
    ld e, a
    ld a, c
    ld l, e
    ld a, c
    ld [hl], a
    ld a, c
    add e
    ld a, c
    adc a
    ld a, c
    sbc e
    ld a, c
    and a
    ld a, c
    xor d
    ld a, c
    or b
    ld a, c
    ret z

    ld a, c
    adc $79
    call nc, $da79
    ld a, c
    ldh [$79], a
    and $79
    ld a, [c]
    ld a, c
    ld a, [c]
    ld a, c
    ld hl, sp+$79
    cp $79
    inc b
    ld a, d
    db $10
    ld a, d
    inc e
    ld a, d
    ld [hl+], a
    ld a, d
    jr z, jr_007_7150

    ld sp, $377a
    ld a, d
    dec a
    ld a, d
    ld c, a
    ld a, d
    ld d, l
    ld a, d
    ld e, e
    ld a, d
    ld h, c
    ld a, d
    ld l, d
    ld a, d
    ld [hl], b
    ld a, d
    ld a, h
    ld a, d
    adc b
    ld a, d
    adc [hl]
    ld a, d
    sub h
    ld a, d
    and b
    ld a, d
    xor h
    ld a, d
    cp b
    ld a, d
    call nz, $ca7a
    ld a, d
    ret nc

    ld a, d
    sub $7a
    call c, $e87a
    ld a, d
    db $f4
    ld a, d
    nop
    ld a, e
    inc c
    ld a, e
    jr jr_007_7185

    inc h
    ld a, e
    daa
    ld a, e
    dec l
    ld a, e
    add hl, sp
    ld a, e
    ld b, l
    ld a, e
    ld c, [hl]
    ld a, e
    ld d, a
    ld a, e
    ld h, e
    ld a, e
    ld l, a
    ld a, e
    ld [hl], l
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl]
    ld a, e
    adc d
    ld a, e
    sbc h
    ld a, e
    and d
    ld a, e
    xor e
    ld a, e
    or h
    ld a, e
    cp l
    ld a, e
    jp $cc7b


    ld a, e
    jp nc, $d57b

    ld a, e
    pop hl
    ld a, e
    db $ed
    ld a, e
    di
    ld a, e
    ld sp, hl
    ld a, e
    rst $38
    ld a, e
    dec b
    ld a, h
    ld de, $1d7c
    ld a, h
    add hl, hl
    ld a, h
    cpl
    ld a, h
    dec sp
    ld a, h
    ld b, c
    ld a, h
    ld b, a
    ld a, h

jr_007_7150:
    ld c, l
    ld a, h
    ld d, e
    ld a, h
    ld h, d
    ld a, h
    ld l, [hl]
    ld a, h
    ld [hl], h
    ld a, h
    ld a, d
    ld a, h
    add b
    ld a, h
    xor d
    ld a, h
    call nc, $da7c
    ld a, h
    ldh [$7c], a
    cp $7c
    inc e
    ld a, l
    ld a, [hl-]
    ld a, l
    ld e, b
    ld a, l
    ld a, c
    ld a, l
    sbc d
    ld a, l
    call nz, $fa7d
    ld a, l
    daa
    ld a, [hl]
    ld d, c
    ld a, [hl]
    ld [hl], l
    ld a, [hl]
    sbc c
    ld a, [hl]
    cp l
    ld a, [hl]
    db $e4
    ld a, [hl]
    dec bc
    ld a, a
    inc hl

jr_007_7185:
    ld a, a
    dec sp
    ld a, a
    ld a, $7f
    ld b, c
    ld a, a
    ld b, a
    ld a, a
    ld d, e
    ld a, a
    ld l, e
    ld a, a
    ld [hl], c
    ld a, a
    ld h, h
    ld a, b
    nop
    ld h, h
    nop
    ld [bc], a
    ld [hl], h
    ld a, b
    jr nz, jr_007_7212

    nop
    inc hl
    ld h, l
    ld a, b
    nop
    ld h, l
    nop
    ld [bc], a
    ld [hl], l
    ld a, b
    inc h
    ld [hl], l
    nop
    daa
    ld l, b
    ld a, b
    inc b
    ld l, b
    nop
    ld b, $78
    ld a, b
    jr nc, jr_007_722e

    nop
    inc sp
    ld l, b
    ld a, b
    ld [hl], b
    ld l, b
    nop
    ld [hl], d
    ld l, b
    ld [$7874], sp
    ld a, b
    db $76
    ld a, b
    nop
    adc c
    ld l, b
    ld hl, sp+$12
    ld l, b
    add b
    db $10
    ld a, b
    ld hl, sp-$74
    ld a, b
    add b
    adc e
    ld l, b
    ld a, b
    inc d
    ld l, b
    nop
    ld d, $68
    ld [$7840], sp
    ld a, b
    inc [hl]
    ld a, b
    nop
    scf
    ld h, h
    ld a, b
    inc d
    ld h, h
    nop
    ld d, $64
    ld [$7440], sp
    ld a, b
    ret c

    ld [hl], h
    nop
    db $db
    ld h, b
    ld [hl], h
    adc [hl]
    ld h, b
    ld a, h
    sbc b
    ld h, b
    inc b
    sbc d
    ld [hl], b
    ld [hl], h
    sbc h
    ld [hl], b
    ld a, h
    sbc [hl]
    ld [hl], b
    add h
    sbc l
    ld h, b
    ld [hl], h
    xor b
    ld h, b
    ld a, h
    xor d
    ld h, b
    inc b
    ld h, d
    ld [hl], b
    ld [hl], h
    ld d, h
    ld [hl], b
    ld a, h
    ld d, [hl]

jr_007_7212:
    ld [hl], b
    inc b
    ld h, c
    ld h, b
    db $f4
    ld h, d
    ld h, b
    db $fc
    xor d
    ld h, b
    add h
    xor b
    ld [hl], b
    db $f4
    ld h, b
    ld [hl], b
    db $fc
    ld d, [hl]
    ld [hl], b
    add h
    ld d, l
    ld h, b
    ld a, d
    nop
    ld h, b
    ld [bc], a
    ld [bc], a
    ld [hl], b

jr_007_722e:
    ld a, b
    ld b, d
    ld [hl], b
    nop
    ld b, h
    ld [hl], b
    ld [$6047], sp
    ld a, d
    nop
    ld h, b
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld a, b
    ld d, b
    ld [hl], b
    nop
    ld d, d
    ld [hl], b
    rlca
    ld b, a
    ld h, l
    ld [hl], h
    ld l, b
    ld h, l
    ld a, h
    ld l, d
    ld h, l
    inc b
    ld a, $75
    ld [hl], h
    jr z, jr_007_72c7

    ld a, h
    ld a, [hl+]
    ld [hl], l
    inc b
    dec l
    ld h, l
    ld [hl], h
    ld c, $65
    ld a, h
    ld l, d
    ld h, l
    inc b
    jr jr_007_72d6

    ld [hl], h
    ld e, b
    ld [hl], l
    ld a, h
    ld a, [hl+]
    ld [hl], l
    inc b
    ld e, e
    ld h, c
    ld [hl], h
    ld c, b
    ld h, c
    ld a, h
    ld c, d
    ld h, c
    inc b
    ld c, h
    ld [hl], c

Jump_007_7273:
    ld [hl], h
    ld l, $71
    ld a, h
    jr c, @+$73

    inc b
    dec sp
    ld h, c
    ld [hl], h
    ld a, [bc]
    ld h, c
    ld a, h
    ld c, d
    ld h, c
    inc b
    inc c
    ld [hl], c
    ld [hl], h
    ld [$7c71], sp
    jr c, jr_007_72fc

    inc b
    dec sp
    ld h, l
    ld [hl], h
    ld c, [hl]
    ld h, l
    ld a, h
    inc e
    ld h, l
    inc b
    ld e, $75
    ld [hl], h
    jr z, jr_007_730f

    ld a, h
    ld a, [hl+]
    ld [hl], l
    inc b
    dec l
    ld h, b
    ld [hl], h
    ld c, [hl]
    ld h, b
    ld a, h
    inc e
    ld h, b
    inc b
    ld e, $70
    ld [hl], h
    inc a
    ld [hl], b
    ld a, h
    ld e, [hl]
    ld [hl], b
    inc b
    ld e, l
    ld h, c
    ld [hl], h
    ld c, [hl]
    ld h, c
    ld a, h
    inc e
    ld h, c
    inc b
    ld e, $71
    ld a, h
    ld l, h
    ld [hl], c
    inc b
    ld l, a
    ld h, b
    db $f4
    inc c
    ld h, b
    db $fc
    ld a, [bc]
    ld h, b

jr_007_72c7:
    add h
    ld [$f470], sp
    inc l
    ld [hl], b
    db $fc
    ld a, [hl+]
    ld [hl], b
    add h
    add hl, hl
    ld h, c
    db $f4
    inc c
    ld h, c

jr_007_72d6:
    db $fc
    ld a, [bc]
    ld h, c
    add h
    ld [$f471], sp
    ld a, [de]
    ld [hl], c
    db $fc
    jr jr_007_7353

    add h
    rrca
    ld h, b
    db $f4
    jr c, jr_007_7348

    db $fc
    ld l, $60
    add h
    ld [$f470], sp
    ld e, $70
    db $fc
    inc e
    ld [hl], b
    add h
    dec sp
    ld h, b
    db $f4
    jr z, jr_007_735a

    db $fc
    ld c, d

jr_007_72fc:
    ld h, b
    add h
    ld c, b
    ld [hl], b
    db $f4
    ld a, [de]
    ld [hl], b
    db $fc
    ld c, [hl]
    ld [hl], b
    add h
    ld c, l
    ld h, b
    db $f4
    inc c
    ld h, b
    db $fc
    ld a, [bc]
    ld h, b

jr_007_730f:
    add h
    ld [$f470], sp
    ld a, $70
    db $fc
    ld l, d
    ld [hl], b
    add h
    ld l, c
    ld h, b
    db $f4
    jr z, jr_007_737e

    db $fc
    ld c, d
    ld h, b
    add h
    ld c, b
    ld [hl], b
    db $f4
    ld a, $70
    db $fc
    inc a
    ld [hl], b
    add h
    ld e, e
    ld h, c
    ld [hl], b
    ld c, b
    ld h, c
    ld a, b
    ld c, d
    ld h, c
    nop
    ld c, h
    ld h, c
    ld [$714e], sp
    ld [hl], b
    ld l, b
    ld [hl], c
    ld a, b
    ld l, d
    ld [hl], c
    nop
    ld l, h
    ld [hl], c
    ld [$666f], sp
    db $f4
    ld c, d
    ld h, [hl]

jr_007_7348:
    db $fc
    ld c, b
    ld h, [hl]
    add h
    ld a, $76
    db $f4
    inc l
    db $76
    db $fc
    inc e

jr_007_7353:
    db $76
    add h
    dec de
    ld h, [hl]
    db $f4
    ld c, d
    ld h, [hl]

jr_007_735a:
    db $fc
    ld c, b
    ld h, [hl]
    add h
    ld a, $76
    db $f4
    ld a, [bc]
    db $76
    db $fc
    ld [$8476], sp
    ld l, a
    ld h, [hl]
    db $f4
    ld c, d
    ld h, [hl]
    db $fc
    ld c, b
    ld h, [hl]
    add h
    ld a, $76
    db $f4
    jr jr_007_73eb

    db $fc
    ld c, $76
    add h
    dec c
    ld h, [hl]
    db $f4
    ld c, d
    ld h, [hl]

jr_007_737e:
    db $fc
    ld c, b
    ld h, [hl]
    add h
    ld a, $76
    db $f4
    ld l, h
    db $76
    db $fc
    ld l, d
    db $76
    add h
    ld l, c
    ld h, [hl]
    db $f4
    ld c, d
    ld h, [hl]
    db $fc
    ld c, b
    ld h, [hl]
    add h
    ld a, $76
    db $f4
    ld e, b
    db $76
    db $fc
    ld c, [hl]
    db $76
    add h
    ld c, l
    ld h, [hl]
    db $f4
    ld c, d
    ld h, [hl]
    db $fc
    ld c, b
    ld h, [hl]
    add h
    ld a, $76
    db $f4
    inc l
    db $76
    db $fc
    inc e
    db $76
    add h
    dec de
    ld h, [hl]
    db $f4
    ld c, d
    ld h, [hl]
    db $fc
    ld c, b
    ld h, [hl]
    add h
    ld e, $76
    db $f4
    ld a, [hl-]
    db $76
    db $fc
    jr c, jr_007_7436

    add h
    cpl
    ld h, [hl]
    db $f4
    jr z, jr_007_742c

    db $fc
    ld a, [hl+]
    ld h, [hl]
    add h
    ld e, $76
    db $f4
    ld a, [bc]
    db $76
    db $fc
    ld [$8476], sp
    ld l, a
    ld h, b
    db $f4
    ld c, h
    ld h, b
    db $fc
    ld c, d
    ld h, b
    add h
    ld c, b
    ld [hl], b
    db $f4
    ld l, h
    ld [hl], b
    db $fc
    ld l, d
    ld [hl], b
    add h
    ld l, c
    ld h, d
    db $f4
    ld e, d
    ld h, d
    db $fc

jr_007_73eb:
    ld e, b
    ld h, d
    add h
    ld c, [hl]
    ld [hl], d
    db $f4
    inc c
    ld [hl], d
    db $fc
    ld a, [bc]
    ld [hl], d
    add h
    add hl, bc
    ld h, b
    db $f4
    ld a, [de]
    ld h, b
    db $fc
    ld e, [hl]
    ld h, b
    add h
    ld l, [hl]
    ld [hl], b
    db $f4
    inc a
    ld [hl], b
    db $fc
    jr jr_007_7478

    add h
    rrca
    ld h, b
    db $f4
    ld l, $60
    db $fc
    jr c, jr_007_7471

    add h
    ld l, [hl]
    ld [hl], b
    db $f4
    ld e, $70
    db $fc
    inc e
    ld [hl], b
    add h
    rrca
    ld h, b
    db $f4
    ld l, $60
    db $fc
    jr c, jr_007_7483

    add h
    ld l, [hl]
    ld [hl], b
    db $f4
    inc l
    ld [hl], b
    db $fc
    ld a, [hl+]
    ld [hl], b

jr_007_742c:
    add h
    jr z, jr_007_742f

jr_007_742f:
    db $f4
    ld a, $00
    db $fc
    ld e, l
    ld h, b
    ld a, h

jr_007_7436:
    sbc $70
    ld [hl], h
    db $fc
    ld [hl], b
    ld a, h
    cp $70
    inc b
    db $dd
    ld h, b
    ld a, h
    ld a, [$7470]
    xor $70
    ld a, h
    ld hl, sp+$70
    inc b
    db $dd
    ld h, b
    ld a, h
    cp b
    ld h, b
    inc b
    cp d
    ld [hl], b
    ld [hl], h
    ret c

    ld [hl], b
    ld a, h
    jp c, Jump_000_0470

    db $dd
    ld l, b
    ld [hl], h
    ld b, b
    ld l, b
    ld a, h
    ld b, h
    ld l, b
    inc b
    ld b, [hl]
    ld a, b
    ld [hl], h
    inc d
    ld a, b
    ld a, h
    rla
    ld l, b
    ld [hl], h
    inc [hl]
    ld l, b
    ld a, h
    ld b, h
    ld h, b

jr_007_7471:
    inc b
    ld [hl], $78
    ld [hl], h
    inc d
    ld a, b
    ld a, h

jr_007_7478:
    rla
    ld [hl], b
    ld a, b
    ld b, d
    ld [hl], b
    add b
    ld b, e
    ld h, h
    adc b
    ld h, [hl]
    ld h, h

jr_007_7483:
    sub b
    ld h, h
    ld h, h
    ld a, b
    nop
    ld h, h
    nop
    ld [bc], a
    ld [hl], h
    ld a, b
    jr nz, jr_007_7503

    nop
    inc hl
    ld h, h
    adc b
    ld h, [hl]
    ld h, h
    sub b
    ld h, h
    ld h, l
    ld a, b
    nop
    ld h, l
    nop
    ld [bc], a
    ld [hl], l
    ld a, b
    inc h
    ld [hl], l
    nop
    daa
    ld h, b
    ld [hl], h
    ld l, b
    ld h, b
    ld a, h
    ld l, d
    ld h, b
    inc b
    ld a, $70
    ld [hl], h
    inc a
    ld [hl], b
    ld a, h
    ld e, [hl]
    ld [hl], b
    inc b
    ld e, l
    ld h, b
    ld [hl], h
    ld c, $60
    ld a, h
    ld l, d
    ld h, b
    inc b
    jr @+$72

    ld [hl], h
    inc a
    ld [hl], b
    ld a, h
    ld e, [hl]
    ld [hl], b
    inc b
    ld e, l
    ld h, b
    ld [hl], h
    ld l, b
    ld h, b
    ld a, h
    ld l, d
    ld h, b
    inc b
    ld a, $70
    ld a, h
    ld l, h
    ld [hl], b
    inc b
    ld l, a
    ld h, b
    ld [hl], h
    ld c, $60
    ld a, h
    ld l, d
    ld h, b
    inc b
    jr jr_007_7550

    ld a, h
    ld l, h
    ld [hl], b
    inc b
    ld l, a
    ld h, b
    db $f4
    inc c
    ld h, b
    db $fc
    ld a, [bc]
    ld h, b
    add h
    ld [$f470], sp
    ld l, $70
    db $fc
    inc l
    ld [hl], b
    add h
    dec hl
    ld h, c
    db $f4
    inc c
    ld h, c
    db $fc
    ld a, [bc]
    ld h, c
    add h
    ld [$f471], sp
    ld a, [de]

jr_007_7503:
    ld [hl], c
    db $fc
    jr jr_007_7578

    add h
    rrca
    ld h, b
    db $f4
    jr z, jr_007_756d

    db $fc
    ld e, $60
    add h
    ld [$f470], sp
    ld a, [de]
    ld [hl], b
    db $fc
    ld a, [hl-]
    ld [hl], b
    add h
    add hl, sp
    ld h, b
    nop
    ld h, b
    ld h, b
    ld [$7062], sp
    ld a, b
    ld h, h
    ld [hl], b
    nop
    ld h, [hl]
    ld [hl], b
    ld [$6071], sp
    nop
    ld h, b
    ld h, b
    ld [$7062], sp
    ld a, b
    ld [hl], d
    ld [hl], b
    nop
    ld [hl], h
    ld [hl], b
    ld [$5077], sp
    ld a, b
    nop
    ld d, b
    nop
    ld [bc], a
    ld d, b
    ld [$6004], sp
    ld a, b
    ld b, $60
    nop
    db $10
    ld h, b
    ld [$7012], sp
    nop
    dec d
    ld d, b
    ld a, b

jr_007_7550:
    ld d, $50
    nop
    jr nz, jr_007_75a5

    ld [$6022], sp
    ld a, b
    inc h
    ld h, b
    nop
    db $10
    ld h, b
    ld [$7026], sp
    nop
    dec d
    ld h, b
    nop
    ld d, d
    ld h, b
    ld [$7054], sp
    nop
    ld d, a
    ld h, b

jr_007_756d:
    ld [hl], h
    ld l, b
    ld h, b
    ld a, h
    ld l, d
    ld h, b
    inc b
    ld l, h
    ld [hl], b
    ld a, h
    ld a, h

jr_007_7578:
    ld [hl], b
    inc b
    ld a, [hl]
    ld [hl], b
    inc b
    ld e, c
    ld h, b
    ld [hl], h
    ld l, b
    ld h, b
    ld a, h
    ld l, d
    ld h, b
    inc b
    ld l, h
    ld [hl], b
    ld [hl], h
    ld e, d
    ld [hl], b
    ld a, h
    ld l, [hl]
    ld [hl], b
    inc b
    ld e, c
    ld h, b
    ld [hl], h
    ld l, b
    ld h, b
    ld a, h
    ld l, d
    ld h, b
    inc b
    ld l, h
    ld [hl], b
    ld [hl], h
    ld a, b
    ld [hl], b
    ld a, h
    ld a, d
    ld [hl], b
    inc b
    ld e, c
    ld h, b
    ld [hl], h
    ld c, b

jr_007_75a5:
    ld h, b
    ld a, h
    ld c, d
    ld h, b
    inc b
    ld l, h
    ld [hl], b
    ld [hl], h
    ld c, h
    ld [hl], b
    ld a, h
    ld c, [hl]
    ld [hl], b
    inc b
    ld e, c
    ld h, b
    ld [hl], h
    ld c, b
    ld h, b
    ld a, h
    ld c, d
    ld h, b
    inc b
    ld c, h
    ld [hl], b
    ld [hl], h
    ld c, [hl]
    ld [hl], b
    ld a, h
    inc a
    ld [hl], b
    inc b
    ld e, h
    ld [hl], b
    inc c
    ld e, a
    ld [hl], b
    db $fc
    ld e, l
    ld [hl], b
    db $fc
    ld e, a
    ld [hl], b
    ld a, b
    ld a, $f0
    add b
    ccf
    ldh a, [$74]
    ld a, $70
    db $fc
    ccf
    ld [hl], b
    ld a, h
    dec sp
    ld [hl], b
    ld a, b
    inc c
    ldh a, [$80]
    dec c
    ld [hl], b
    ld a, b
    ld a, [bc]
    ldh a, [$80]
    dec bc
    ld [hl], b
    ld a, b
    ld [$8070], sp
    add hl, bc
    ld h, b
    ld [hl], h
    ld a, d
    ld h, b
    ld a, h
    ld a, h
    ld h, b
    inc b
    ld a, [hl]
    ld [hl], b
    ld [hl], h
    ld c, b
    ld [hl], b
    ld a, h
    ld c, d
    ld [hl], b
    inc b
    ld c, l
    ld h, b
    ld [hl], h
    ld a, d
    ld h, b
    ld a, h
    ld c, [hl]
    ld [hl], b
    ld [hl], h
    ld c, b
    ld [hl], b
    ld a, h
    ld l, b
    ld [hl], b
    inc b
    ld l, e
    ld d, b
    ld [hl], h
    ld a, d
    ld d, b
    ld a, h
    ld c, [hl]
    ld h, b
    ld [hl], h
    ld e, b
    ld h, b
    ld a, h
    ld e, d
    ld h, b
    inc b
    ld e, h
    ld [hl], b
    ld [hl], h
    inc a
    ld [hl], b
    ld a, h
    ld a, $70
    inc b
    ld e, a
    ld h, b
    ld [hl], h
    ld c, b
    ld h, b
    ld a, h
    ld c, d
    ld [hl], b
    ld [hl], h
    ld a, [hl]
    ld [hl], b
    ld a, h
    inc c
    ld [hl], b
    inc b
    rrca
    ld h, b
    ld [hl], h
    ld c, b
    ld h, b
    ld a, h
    ld c, d
    ld [hl], b
    ld [hl], h
    ld c, [hl]
    ld [hl], b
    ld a, h
    ld l, b
    ld [hl], b
    inc b
    ld l, e
    ld h, b
    ld [hl], h
    ld c, b
    ld h, b
    ld a, h
    ld c, d
    ld [hl], b
    ld [hl], h
    ld a, b
    ld [hl], b
    ld a, h
    ld a, d
    ld [hl], b
    inc b
    ld a, l
    ld h, b
    ld [hl], h
    ld c, b
    ld h, b
    ld a, h
    ld c, d
    ld [hl], b
    ld [hl], h
    ld a, [hl]
    ld [hl], b
    ld a, h
    ld [$0470], sp
    dec bc
    ld h, b
    ld [hl], h
    ld c, b
    ld h, b
    ld a, h
    ld c, d
    ld [hl], b
    ld [hl], h
    ld a, [hl]
    ld [hl], b
    ld a, h
    inc c
    ld [hl], b
    inc b
    rrca
    ld h, b
    ld [hl], h
    ld c, h
    ld h, b
    ld a, h
    ld c, d
    ld [hl], b
    ld [hl], h
    ld c, [hl]
    ld [hl], b
    ld a, h
    ld l, b
    ld [hl], b
    inc b
    ld l, e
    ld h, b
    ld [hl], h
    ld c, b
    ld h, b
    ld a, h
    ld c, d
    ld [hl], b
    ld [hl], h
    ld a, [hl]
    ld [hl], b
    ld a, h
    jr jr_007_7700

    inc b
    dec de
    ld [hl], e
    ld a, b
    ld h, h
    ld [hl], e
    nop
    ld h, a
    ld [hl], e
    ld hl, sp+$66
    ld [hl], e
    add b
    ld h, l
    di
    ld hl, sp+$66
    di
    add b
    ld h, l
    di
    ld a, b
    ld h, h
    di
    nop
    ld h, a
    ld a, b
    db $f4
    db $ec
    ld a, b
    ld a, h
    ld [$0478], a
    db $ed
    ld [hl], b
    ld a, b
    ld a, [hl]
    ldh a, [$80]
    ld a, a
    ld [hl], b
    ld a, b
    ld a, h
    ldh a, [$80]
    ld a, l
    ld [hl], b
    ld a, b
    ld a, d
    ld [hl], b
    add b
    ld a, e
    ld [hl], b
    ld a, b
    cp h
    ld [hl], b
    add b
    cp l
    ld [hl], b
    ld a, b
    cp [hl]
    ld [hl], b
    add b
    cp a
    ld [hl], b
    ld a, b
    ret z

    ld [hl], b
    add b
    ret


    ld [hl], b
    ld a, b
    ld a, b
    ld [hl], b
    add b
    ld a, c
    ld [hl], b
    ld a, b
    adc $70
    nop
    bit 6, b
    ld a, b
    call z, Call_000_0070
    bit 6, b
    ld a, b
    xor h
    ld [hl], b
    nop
    cp c
    ld [hl], b
    ld [hl], h
    xor [hl]
    ld [hl], b
    ld a, h
    cp b
    ld [hl], b
    inc b
    cp c
    ld [hl], b
    ld [hl], h
    cp d
    ld [hl], b
    ld a, h
    cp b
    ld [hl], b
    inc b

jr_007_7700:
    cp c
    ld [hl], b
    ld [hl], b
    xor [hl]
    ld [hl], b
    ld a, b
    cp b
    ld [hl], b
    nop
    cp b
    ld [hl], b
    ld [$70b9], sp
    ld [hl], b
    cp d
    ld [hl], b
    ld a, b
    cp b
    ld [hl], b
    nop
    cp b
    ld [hl], b
    ld [$70b9], sp
    ld [hl], b
    add sp, $70
    ld a, b
    xor [hl]
    ld [hl], b
    nop
    call c, $0870
    rst $18
    ld [hl], b
    ld [hl], b
    add sp, $70
    ld a, b
    ret nz

    ld [hl], b
    nop
    call c, $0870
    rst $18
    ld [hl], b
    ld [hl], b
    ldh [rSVBK], a
    ld a, b
    ld [c], a
    ld [hl], b
    nop
    ld [c], a
    ld [hl], b
    adc b
    pop hl
    ld [hl], b
    ld a, b
    ld a, [c]
    ld [hl], b
    add b
    di
    ld [hl], b
    ld a, b
    db $f4
    ld [hl], b
    add b
    push af
    ld [hl], b
    ld a, h
    push af
    ld [hl], b
    ld a, b
    add b
    ld [hl], b
    nop
    add e
    ld [hl], b
    ld a, h
    pop af
    ld [hl], b
    ld a, b
    call nz, Call_000_0070
    rst $00
    ld [hl], h
    ld a, b
    or $74
    add b
    rst $30
    ld [hl], h
    ld a, b
    or $74
    add b
    rst $30
    ld [hl], h
    ld a, b
    or $74
    add b
    rst $30
    ld [hl], h
    ld a, b
    or $74
    add b
    rst $30
    ld [hl], b
    ld a, b
    or h
    ld [hl], b
    add b
    or l
    ld [hl], b
    ld [hl], b
    ldh [rSVBK], a
    ld a, b
    ldh [rSVBK], a
    nop
    ldh [rSVBK], a
    ld [$70e1], sp
    ldh a, [$e0]
    add sp, $78
    ldh [rSVBK], a
    add b
    ldh [$e8], a
    ld [$70e1], sp
    ld [hl], b
    ld [c], a
    ld [hl], b
    ld a, b
    ld [c], a
    ld [hl], b
    nop
    ld [c], a
    ld [hl], b
    ld [$70e3], sp
    ld a, b
    or [hl]
    ld [hl], b
    add b
    or a
    db $e4
    ld hl, sp-$50
    db $e4
    add b
    and [hl]
    ld [hl], h
    ld a, b
    and [hl]
    ld [hl], h
    nop
    or c
    ld [hl], b
    ld [hl], b
    db $e4
    ld [hl], b
    ld a, b
    and $70
    nop
    and $70
    ld [$70e7], sp
    ld [hl], b
    ldh a, [rSVBK]
    ld a, b
    ldh a, [rSVBK]
    nop
    ldh a, [rSVBK]
    ld [$73f1], sp
    ld [hl], b
    ldh a, [rSVBK]
    ld a, b
    ldh a, [$74]
    nop
    ldh a, [rSVBK]
    ld [$74f1], sp
    ld [hl], b
    ldh a, [rTIMA]
    ld a, b
    ldh a, [rSB]
    nop
    ldh a, [$72]
    ld [$60f1], sp
    ld a, b
    and [hl]
    ld h, b
    nop
    or b
    ld h, b
    ld [$70f4], sp
    ld a, b
    ret nz

    ld [hl], b
    nop
    call nz, $0870
    rst $00
    ld h, b
    ld hl, sp-$20
    ld h, b
    add b
    jp nc, $8860

    ret nc

    ld [hl], b
    ld hl, sp-$1a
    ld [hl], b
    add b
    db $e4
    ld [hl], b
    adc b
    db $e3
    ld d, b
    ld [hl], b
    or [hl]
    ld d, b
    ld a, b

Jump_007_7808:
    ret nz

    ld d, b
    nop
    jp nz, $0850

    call nz, Call_007_6860
    or $60
    ld [hl], b
    add b
    ld h, b
    ld a, b
    add d
    ld h, b
    nop
    add h
    ld h, b
    ld [$6086], sp
    db $10
    sub b
    ld [hl], b
    ld a, b
    sub d
    ld [hl], b
    nop
    sub h
    ld [hl], b
    ld [$70a6], sp
    db $10
    or c
    ld d, b
    ld [hl], b
    or [hl]
    ld d, b
    ld a, b
    ret nz

    ld d, b
    nop
    jp nz, $0850

    call nz, Call_007_6860
    add $60
    ld [hl], b
    ret nc

    ld h, b
    ld a, b
    jp nc, JoypadTransitionInterrupt

    call nc, Call_000_0860
    sub $60
    db $10
    ldh [rSVBK], a
    ld l, b
    ld [c], a
    ld [hl], b
    ld [hl], b
    db $e4
    ld [hl], b
    ld a, b
    and $70
    nop
    ldh a, [rSVBK]
    ld [$70f2], sp
    db $10
    push af
    ld d, b
    ld l, b
    add b

Jump_007_7860:
    ld d, b
    ld [hl], b
    add d
    ld d, b
    ld a, b
    add h
    ld d, b
    nop
    add [hl]
    ld d, b
    ld [$6090], sp
    ld l, b
    sub d
    ld h, b

Jump_007_7870:
    ld [hl], b
    sub h
    ld h, b
    ld a, b
    sub [hl]
    ld h, b
    nop
    or d
    ld h, b
    ld [$60e0], sp
    db $10
    ld [c], a
    ld [hl], b
    ld l, b
    jp nz, Jump_007_7070

    db $e4
    ld [hl], b
    ld a, b
    and $70
    nop
    ldh a, [rSVBK]
    ld [$70f2], sp
    db $10
    rst $30
    ld d, b
    ld l, b
    add b
    ld d, b
    ld [hl], b
    add d
    ld d, b
    ld a, b
    add h
    ld d, b
    nop
    add [hl]
    ld d, b
    ld [$6090], sp
    ld l, b
    and b
    ld h, b
    ld [hl], b
    and d
    ld h, b
    ld a, b
    and h
    ld h, b
    nop
    or d
    ld h, b
    ld [$60e0], sp
    db $10
    ld [c], a
    ld [hl], b
    ld l, b
    jp nz, Jump_007_7070

    db $e4
    ld [hl], b
    ld a, b
    and $70
    nop
    ldh a, [rSVBK]
    ld [$70f2], sp
    db $10
    rst $30
    ld [hl], b
    ld a, b
    ret nc

    ld [hl], b
    add b
    pop de
    ld [hl], b
    ld a, b
    jp nc, $8070

    db $d3
    ld [hl], b
    ld a, b
    call nc, $8070
    push de
    ld [hl], b
    ld a, b
    sub $70
    add b
    rst $10
    ld [hl], b
    ld a, b
    ld l, b
    ld [hl], b
    nop
    ld l, d
    ld [hl], b
    ld [$006c], sp
    ld a, b
    ld a, [hl+]
    nop
    nop
    ld a, [hl-]
    nop
    ld [$703d], sp
    ld a, b
    ld [$0070], sp
    ld a, [bc]
    nop
    ld a, b
    ld a, [hl+]
    nop
    nop
    dec l
    ld [hl], b
    ld a, b
    inc c
    ld [hl], b
    nop
    ld c, $00
    ld a, b
    ld a, [hl+]
    nop
    nop
    dec l
    ld [hl], b
    ld a, b
    jr jr_007_7979

    nop
    ld a, [de]
    nop
    ld a, b
    ld l, $00
    nop
    add hl, sp
    ld [hl], b
    db $76
    inc e
    ld [hl], b
    ld a, [hl]
    ld e, $00
    ld [hl], a
    ld a, [hl+]
    nop
    ld a, a
    dec l
    ld [hl], b
    db $76
    jr z, jr_007_7991

    ld a, [hl]
    ld e, $00
    ld [hl], a
    ld a, [hl+]
    nop
    ld a, a
    dec l
    ld [hl], b
    ld a, b
    inc c
    ld [hl], b
    nop
    ld c, $00
    ld a, b
    ld a, [hl+]
    nop
    nop
    dec l
    ld [hl], b
    ld a, b
    ld a, $70
    nop
    ld c, b
    ld [hl], b
    ld [$004a], sp
    ld a, b
    ld c, h
    nop
    nop
    ld c, [hl]
    nop
    ld [$7059], sp
    ld a, b
    jr nz, @+$72

    nop
    ld [hl+], a
    nop
    ld a, b
    inc h
    nop
    nop
    daa
    ld [hl], b
    ld a, b
    jr nz, @+$72

    nop
    ld [hl+], a
    nop
    ld a, b
    inc h
    nop
    nop
    daa
    ld [hl], b
    ld a, b
    jr nc, jr_007_79d3

    nop
    ld [hl-], a
    nop
    ld a, b
    inc h
    nop
    nop
    daa
    ld [hl], b
    ld a, b
    ld b, h
    ld [hl], b
    nop
    ld b, [hl]
    nop
    ld a, b
    ld b, b
    nop
    nop
    ld b, e
    ld l, h
    ld a, b

jr_007_7979:
    ld h, b
    ld l, h
    nop
    ld h, d
    ld a, h
    ld a, b
    ld d, b
    ld a, h
    nop
    ld d, e
    ld [hl], b
    ld a, b
    ld h, h
    ld [hl], b
    nop
    ld h, [hl]
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld [hl], e
    ld [hl], b
    ld a, b

jr_007_7991:
    ld h, h
    ld [hl], b
    nop
    ld [hl], h
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld [hl], e
    ld [hl], b
    ld a, b
    ld h, h
    ld [hl], b
    nop
    halt
    ld a, b
    ld [hl], b
    nop
    nop
    ld [hl], e
    ld [hl], b
    ld a, h
    dec [hl]
    ld [hl], b
    ld a, b
    ld [hl], $70
    add b
    scf
    ld [hl], b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld a, b
    ld b, d
    ld [hl], b
    nop
    ld d, $70
    ld [$0036], sp
    ld [hl], b
    ld h, b
    nop
    ld a, b
    ld h, d
    nop
    nop
    ld b, h
    nop
    ld [$7047], sp
    ld a, b
    add b
    ld [hl], b
    nop
    add e
    ld [hl], h
    ld a, b
    add h
    ld [hl], h
    nop

jr_007_79d3:
    add a
    ld [hl], b
    ld a, b
    sub b
    ld [hl], b
    nop
    sub e
    ld [hl], b
    ld a, b
    sub h
    ld [hl], b
    nop
    sub a
    ld [hl], b
    ld a, b
    and b
    ld [hl], b
    nop
    and e
    ld l, d
    ld a, b
    and b
    ld l, d
    nop
    and h
    ld a, d
    ld a, b
    or b
    ld a, d
    nop
    or e
    ld [hl], b
    ld a, b
    and [hl]
    ld [hl], b
    nop
    and e
    ld [hl], b
    ld a, b
    or h
    ld [hl], b
    nop
    or a
    ldh a, [$78]
    or h
    ldh a, [rP1]
    or a
    ld l, e
    ld a, b
    db $e4
    ld l, e
    nop
    and $7b
    ld a, b
    ldh a, [$7b]
    add b
    pop af
    ld l, e
    ld hl, sp-$1a
    ld l, e
    add b
    db $e4
    ld a, e
    ld a, b
    ldh a, [$7b]
    add b
    pop af
    ld [hl], b
    ld a, b
    call nz, Call_000_0070
    pop de
    ld [hl], b
    ld a, b
    add $70
    nop
    pop de
    ld [hl], b
    ld [hl], h
    jp nc, Jump_007_7c70

    call nc, Call_000_0470
    rst $10
    ld [hl], b
    ld a, b
    jp nz, $8070

    jp Jump_007_7870


    ret nz

    ld [hl], b
    add b
    pop bc
    ld l, c
    ld [hl], h
    sub b
    ld l, c
    ld a, h
    sub d
    ld l, c
    add h
    sub b
    ld a, c
    ld [hl], h
    sub h
    ld a, c
    ld a, h
    sub [hl]
    ld a, c
    add h
    sub l
    ld [hl], b
    ld a, b
    and b
    ld [hl], b
    nop
    and e
    ld [hl], d
    ld a, b
    or h
    ld [hl], d
    add b
    or l
    ld [hl], d
    ld a, b
    or [hl]
    ld [hl], d
    add b
    or a
    ld [hl], b
    ld [hl], h
    and b
    ld [hl], b
    ld a, h
    and d
    ld [hl], b
    add h
    and c
    ld [hl], b
    ld a, b
    and h
    ld [hl], b
    add b
    and l
    ld h, c
    ld a, b
    call nz, Call_000_0061
    add $71
    ld a, b
    ret nc

    ld [hl], c
    nop
    db $d3
    ld h, c
    ld a, b
    call nz, Call_000_0061
    add $71
    ld a, b
    call nc, Call_000_0071
    rst $10
    ld [hl], b
    ld a, b
    or d
    ld [hl], b
    add b
    or e
    ld [hl], b
    ld a, b
    jp nz, $8070

    jp Jump_007_7273


    add [hl]
    ld [hl], b
    ld a, b
    add h
    ld [hl], b
    add b
    add h
    ld [hl], e
    dec b
    add a
    ld a, l
    ld [hl], l
    add [hl]
    ld [hl], c
    ld [hl], a
    add h
    ld [hl], c
    rst $38
    add h
    ld l, [hl]
    ld [bc], a
    add a
    ld a, a
    ld a, e
    add [hl]
    ld [hl], d
    ld a, b
    add h
    ld [hl], d
    add b
    add h
    ld l, l
    ld a, h
    add a
    ld [hl], e
    ld [hl], h
    add [hl]
    ld [hl], c
    ld a, c
    add h
    ld [hl], c
    add c
    add h
    ld a, h
    inc b
    add a
    ld [hl], b
    ld a, b
    sub b
    ld [hl], b
    nop
    sub e
    ld [hl], b
    ld a, b
    sub h
    ld [hl], b
    nop
    sub a
    ld [hl], b
    ld a, b
    db $e4
    ld [hl], b
    nop
    rst $20
    ld [hl], b
    ld a, b
    ldh a, [rSVBK]
    nop
    di
    ld h, d
    ld a, b
    and h
    ld h, d
    nop
    and [hl]
    ld [hl], d
    ld a, b
    and b
    ld [hl], d
    nop
    and e
    ld h, d
    ld a, b
    and h
    ld h, d
    nop
    and [hl]
    ld [hl], d
    ld a, b
    or b
    ld [hl], d
    nop
    or e
    ld h, b
    ld a, b
    call nz, JoypadTransitionInterrupt
    jp nc, $f870

    add $70
    nop
    rst $00
    ld h, b
    ld a, b
    call nc, JoypadTransitionInterrupt
    sub $70
    ld hl, sp-$30
    ld [hl], b
    nop
    pop de
    ld h, l
    ld a, b
    add b
    ld h, l
    add b
    add b
    ld [hl], l
    ld a, b
    add d
    ld [hl], l
    nop
    add l
    ld h, b
    ld a, b
    ld [c], a
    ld h, b
    nop
    db $f4
    ld [hl], b
    ld a, b
    add [hl]
    ld [hl], b
    nop
    pop hl
    ld [hl], b
    ld a, h
    jp Jump_007_7808


    add b
    ld [$8180], sp
    dec b
    ld a, b
    add d
    dec b
    add b
    add d
    dec d
    ld a, b
    add h
    dec d
    add b
    add l
    inc bc
    ld a, b
    add d
    inc bc
    add b
    add d
    inc de
    ld a, b
    add [hl]
    inc de
    add b
    add a
    ld [hl], b
    ld [hl], h
    and [hl]
    ld [hl], b
    ld a, h
    or b
    ld [hl], b
    inc b
    or e
    ld [hl], b
    ld [hl], h
    and [hl]
    ld [hl], b
    ld a, h
    or h
    ld [hl], b
    inc b
    or a
    ld h, b
    ld a, b
    call nz, JoypadTransitionInterrupt
    add $70
    ld a, b
    ret nc

    ld [hl], b
    nop
    db $d3
    ld h, b
    ld a, b
    call nz, JoypadTransitionInterrupt
    add $70
    ld a, b
    call nc, Call_000_0070
    rst $10
    ld [hl], b
    ld a, b
    ldh [rSVBK], a
    add b
    pop hl
    ld [hl], b
    ld a, b
    ld [c], a
    ld [hl], b
    add b
    db $e3
    ld [hl], b
    ld a, h
    jp Jump_007_7860


    db $e4
    ld h, b
    nop
    and $70
    ld a, b
    ldh a, [rSVBK]
    nop
    di
    ld h, b
    ld [hl], h
    sub b
    ld h, b
    ld a, h
    sub d
    ld h, b
    inc b
    sub h
    ldh a, [$f4]
    sub h
    ldh a, [$7c]
    sub d
    ldh a, [$84]
    sub c
    ld [hl], b
    ld a, b
    sub [hl]
    ld [hl], b
    add b
    sub a
    ld h, b
    ld a, b
    and d
    ld h, b
    nop
    and h
    ld [hl], b
    ld a, l
    and c
    ld [hl], d
    ld [hl], h
    add b
    ld [hl], d
    ld a, h
    add d
    ld [hl], d
    inc b
    add l
    ld [hl], d
    ld [hl], h
    add [hl]
    ld [hl], d
    ld a, h
    add d
    ld [hl], d
    inc b
    add l
    ld [hl], b
    ld a, b
    db $e4
    ld [hl], b
    nop
    rst $20
    nop
    ld [hl], h
    sub b
    nop
    ld a, h
    sub d
    nop
    add h
    sub c
    nop
    ld a, b
    sub h
    nop
    add b
    sub l
    ld [hl], b
    db $fc
    sub a
    ld l, e
    ld [hl], b
    and b
    ld [hl], b
    ld a, b
    and d
    ld [hl], b
    nop
    and h
    ld l, e
    adc b
    and c
    ld [hl], b
    ld [hl], b
    and [hl]
    ld [hl], b
    ld a, b
    or b
    ld [hl], b
    nop
    or d
    ld [hl], b
    adc b
    and a
    ld [hl], b
    ld a, b
    ldh [rSVBK], a
    add b
    pop hl
    ld [hl], b
    ld a, b
    jp nz, $8070

    jp Jump_007_7870


    db $f4
    ld [hl], b
    add b
    push af
    ld [hl], b
    ld hl, sp-$0a
    ld [hl], b
    nop
    rst $30
    ld h, b
    ld a, b
    or h
    ld h, b
    nop
    or [hl]
    ld [hl], b
    ld a, b
    ld [c], a
    ld [hl], b
    nop
    di
    ld h, b
    ld a, b
    or h
    ld h, b
    nop
    or [hl]
    ld [hl], b
    ld a, b
    add b
    ld [hl], b
    nop
    add e
    ld h, b
    ld a, b
    or h
    ld h, b
    nop
    or [hl]
    ld [hl], b
    ld a, b
    add h
    ld [hl], b
    nop
    add a
    nop
    ld a, b
    and [hl]
    nop
    add b
    and a
    nop
    ld a, b
    or b
    nop
    add b
    or b
    db $10
    ld a, b
    or d
    db $10
    add b
    or e
    ld [hl], b
    ld a, b
    db $f4
    ld [hl], b
    nop
    rst $30
    ld [hl], b
    ld hl, sp-$0a
    ld [hl], b
    add b
    push af
    ld [hl], b
    ld a, b
    ret nc

    ld [hl], b
    nop
    db $d3
    ld [hl], b
    ld a, b
    call nc, Call_000_0070
    rst $10
    ld [hl], b
    ld l, h
    sub b
    ld [hl], b
    ld [hl], h
    sub d
    ld [hl], b
    ld a, h
    sub h
    ld [hl], b
    inc b
    sub [hl]
    ld [hl], b
    inc c
    di
    ld [hl], b
    ld [hl], b
    and b
    ld [hl], b
    ld a, b
    and d
    ld [hl], b
    nop
    and h
    ld [hl], b
    adc b
    and c
    nop
    ld a, b

Jump_007_7c70:
    and $00
    add b
    rst $20
    nop
    ld a, b
    ldh a, [rP1]
    add b
    pop af
    nop
    ld a, b
    db $e4
    nop
    add b
    push hl
    ld b, b
    ld [$50e4], sp
    ld [$60e4], sp
    ld [$70e4], sp
    ld [hl], b
    or b
    ld [hl], b
    ld a, b
    or d
    ld [hl], b
    nop
    or h
    ld [hl], b
    ld [$80f0], sp
    ld [hl], b
    or b
    add b
    ld a, b
    or d
    add b
    nop
    or h
    add b
    ld [$10f0], sp
    ld [$20e4], sp
    ld [$30e4], sp
    ld [$40e5], sp
    ld [$50e6], sp
    ld [$60e6], sp
    ld [$f0e6], sp
    ld [hl], b
    ret nc

    ldh a, [$78]
    jp nc, Jump_000_00f0

    call nc, Call_000_08f0
    sub $00
    ld [hl], b
    ret nc

    nop
    ld a, b

Call_007_7cc4:
    jp nc, RST_00

    call nc, $0800
    sub $10
    ld [$20e6], sp
    ld [$30e6], sp
    ld [$70e7], sp
    ld a, b
    ldh [rSVBK], a
    add b
    pop hl
    ld [hl], b
    ld a, b
    ld [c], a
    ld [hl], b
    add b
    db $e3
    ld h, b
    ld l, b
    add b
    ld h, b
    ld [hl], b
    add d
    ld h, b
    ld a, b
    add h
    ld h, b
    nop
    add [hl]
    ld h, b
    ld [$70b2], sp
    ld l, b
    and b
    ld [hl], b
    ld [hl], b
    and d
    ld [hl], b
    ld a, b
    and h
    ld [hl], b
    nop
    and [hl]
    ld [hl], b
    ld [$60b1], sp
    ld l, b
    ret nc

    ld h, b
    ld [hl], b
    jp nc, Jump_007_7860

    call nc, JoypadTransitionInterrupt
    sub $60
    ld [$70f6], sp
    ld l, b
    db $e4
    ld [hl], b
    ld [hl], b
    and $70
    ld a, b
    ldh a, [rSVBK]
    nop
    ld a, [c]
    ld [hl], b
    ld [$60f5], sp
    ld l, b
    sub b
    ld h, b
    ld [hl], b
    sub d
    ld h, b
    adc b
    sub d
    ld h, b
    sub b
    sub b
    ld [hl], b
    ld l, b
    and b
    ld [hl], b
    ld [hl], b
    and d
    ld [hl], b
    ld a, b
    and h
    ld [hl], b
    add b
    and h
    ld [hl], b
    adc b
    and d
    ld [hl], b
    sub b
    and c
    ld h, b
    ld l, b
    sub h
    ld h, b
    ld [hl], b
    sub [hl]
    ld h, b
    adc b
    sub [hl]
    ld h, b
    sub b
    sub h
    ld [hl], b
    ld l, b
    and b
    ld [hl], b
    ld [hl], b
    and d
    ld [hl], b
    ld a, b
    or h
    ld [hl], b
    add b
    or h
    ld [hl], b
    adc b
    and d
    ld [hl], b
    sub b
    and c
    ld h, b
    ld l, b
    add b
    ld h, b
    ld [hl], b
    add d
    ld h, b
    ld a, b
    add h
    ld h, b
    nop
    add [hl]
    ld h, b
    ld [$7090], sp
    ld h, b
    sub d
    ld [hl], b
    ld l, b
    sub h
    ld [hl], b
    ld [hl], b
    sub [hl]
    ld [hl], b
    ld a, b
    and [hl]
    ld [hl], b
    nop
    or b
    ld [hl], b
    ld [$60b3], sp
    ld l, b
    or h
    ld h, b
    ld [hl], b
    ret nc

    ld h, b
    ld a, b
    add h
    ld h, b
    nop
    add [hl]
    ld h, b
    ld [$70d2], sp
    ld h, b
    call nc, Call_007_6870
    sub $70
    ld [hl], b
    ldh a, [rSVBK]
    ld a, b
    ld a, [c]
    ld [hl], b
    nop
    db $f4
    ld [hl], b
    ld [$60f7], sp
    ld l, b
    ld a, [c]
    ld h, b
    ld [hl], b
    db $f4
    ld h, b
    ld a, b
    add b
    ld h, b
    add b
    add b
    ld h, b
    adc b
    db $f4
    ld h, b
    sub b
    ld a, [c]
    ld [hl], b
    ld [hl], b
    add d
    ld [hl], b
    ld a, b
    add h
    ld [hl], b
    add b
    add h
    ld [hl], b
    adc b
    add d
    nop
    ld [hl], b
    sub h
    nop
    ld a, b
    sub [hl]
    nop
    add b
    sub [hl]
    nop
    adc b
    sub l
    ld h, b
    ld l, b
    ld a, [c]
    ld h, b
    ld [hl], b
    db $f4
    ld h, b
    ld a, b
    add b
    ld h, b
    add b
    add b
    ld h, b
    adc b
    db $f4
    ld h, b
    sub b
    ld a, [c]
    ld [hl], b
    ld l, b
    add [hl]
    ld [hl], b
    ld [hl], b
    sub b
    ld [hl], b
    ld a, b
    sub d
    ld [hl], b
    add b
    sub d
    ld [hl], b
    adc b
    sub b
    ld [hl], b
    sub b
    add [hl]
    nop
    ld l, b
    db $e4
    nop
    ld [hl], b
    and $00
    ld a, b
    sub [hl]
    nop
    add b
    sub [hl]
    nop
    adc b
    and $00
    sub b
    push hl
    ld l, b
    ld a, b
    add b
    ld l, b
    nop
    add d
    ld l, b
    ld [$6884], sp
    db $10
    add [hl]
    ld a, b
    ld [hl], b
    sub b
    ld a, b
    ld a, b
    sub d

jr_007_7e0c:
    ld a, b
    nop
    sub h
    ld a, b
    ld [$7896], sp
    db $10
    and h
    ld [$a670], sp

jr_007_7e18:
    ld [$b078], sp
    ld [$b200], sp
    ld [$b408], sp
    ld [$d010], sp
    ld [$d318], sp
    ld l, b
    ld a, b
    or $68
    nop
    call nc, Call_000_0868
    sub $78
    ld [hl], b
    sub b
    ld a, b
    ld a, b
    db $e4
    ld a, b
    nop
    and $78
    ld [$78f0], sp
    db $10
    ld a, [c]
    ld [$a670], sp
    ld [$b078], sp
    ld [$f400], sp
    ld [$b408], sp
    ld [$d010], sp
    ld [$d318], sp
    ld d, b
    nop
    or b
    ld d, b
    ld [$50b2], sp
    db $10
    or h
    ld h, b
    ld [hl], b
    add [hl]
    ld h, b
    ld a, b
    sub b

jr_007_7e60:
    ld h, b
    db $10
    and h
    ld h, b
    jr jr_007_7e0c

    ld [hl], b
    ld a, b
    sub d
    ld [hl], b
    nop
    sub h
    ld [hl], b
    ld [$7096], sp
    db $10
    and b
    ld [hl], b
    jr jr_007_7e18

    ld d, b
    nop
    ret nc

    ld d, b
    ld [$50d2], sp
    db $10
    call nc, Call_007_7060
    add [hl]
    ld h, b
    ld a, b
    sub b
    ld h, b
    db $10
    and h
    ld h, b
    jr @-$58

    ld [hl], b
    ld a, b
    sub d
    ld [hl], b
    nop
    sub h
    ld [hl], b
    ld [$7096], sp
    db $10
    and b
    ld [hl], b
    jr @-$5b

    ld h, b
    ld [hl], b
    sub $60
    ld a, b
    and $60
    nop

jr_007_7ea1:
    ldh a, [$60]
    ld [$60f2], sp
    db $10
    db $f4
    ld h, b
    jr jr_007_7ea1

    ld [hl], b
    ld [hl], b
    db $e4
    ld [hl], b
    ld a, b
    sub d
    ld [hl], b
    nop
    sub h
    ld [hl], b
    ld [$7096], sp
    db $10
    and b
    ld [hl], b
    jr jr_007_7e60

    ld e, b
    ld l, b
    add b
    ld e, b
    ld [hl], b
    add d
    ld e, b
    ld a, b
    add h
    ld e, b
    nop
    and b
    ld e, b
    ld [$68a2], sp
    ld l, b
    or d
    ld l, b
    ld [hl], b
    or h
    ld l, b
    ld a, b
    ret nc

    ld l, b
    nop
    jp nc, Jump_007_6878

    sub $78
    ld [hl], b
    ld a, [c]
    ld a, b
    ld a, b
    db $f4
    ld a, b
    nop
    rst $30
    ld e, b
    ld l, b
    add b
    ld e, b
    ld [hl], b
    add d
    ld e, b
    ld a, b
    add h
    ld e, b
    nop
    and b
    ld e, b
    ld [$68a2], sp
    ld l, b
    or d
    ld l, b
    ld [hl], b
    or h
    ld l, b
    ld a, b
    ret nc

    ld l, b
    nop
    jp nc, Jump_007_6878

    and h
    ld a, b
    ld [hl], b
    and [hl]
    ld a, b
    ld a, b
    or b
    ld a, b
    nop
    rst $30
    ld h, b
    ld [hl], b
    add b
    ld h, b
    ld a, b
    add d
    ld h, b
    nop
    add h
    ld h, b
    ld [$7086], sp
    ld [hl], b
    and b
    ld [hl], b
    ld a, b
    and d
    ld [hl], b
    nop
    and h
    ld [hl], b
    ld [$60a7], sp
    ld [hl], b
    sub b
    ld h, b
    ld a, b
    sub d
    ld h, b
    nop
    sub h
    ld h, b
    ld [$7096], sp
    ld [hl], b
    and b
    ld [hl], b
    ld a, b
    and d
    ld [hl], b
    nop
    and h
    ld [hl], b
    ld [$70a7], sp
    ld a, h
    pop hl
    ld [hl], b
    ld a, h
    db $e3
    ld [hl], b
    ld a, b
    or [hl]
    ldh a, [$80]
    or a
    ld h, b
    ld a, b
    ret nz

    ld h, d
    add b
    ret nz

    ldh a, [$78]
    ret nz

    ld a, [c]
    add b
    pop bc
    ld h, b
    ld [hl], b
    ret nz

    ld h, b
    ld a, b
    call nz, JoypadTransitionInterrupt
    add $e0
    adc b
    jp nz, Jump_007_7070

    jp nz, $f8f0

    add $f0
    add b
    call nz, $88f0
    pop bc
    ld [hl], b
    ld a, b
    or h
    ld [hl], b
    add b
    or l
    ld [hl], b
    ld a, b
    or [hl]
    ld [hl], b
    add b
    or a
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
