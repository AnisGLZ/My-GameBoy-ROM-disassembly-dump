; Disassembly of "Adventure Island (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    inc h
    ld b, b
    call nc, Call_004_6d43
    ld b, a
    inc [hl]
    ld c, d
    cp l
    ld c, l
    ld d, a
    ld d, c
    scf
    ld d, l
    ld a, a
    ld d, a
    or b
    ld e, d
    ld d, l
    ld e, [hl]
    xor h
    ld h, c
    ld a, l
    ld h, l
    ld c, b
    ld l, c
    db $fc
    ld l, h
    pop bc
    ld [hl], b
    ld e, h
    ld [hl], h
    push af
    ld [hl], a
    ld [c], a
    ld a, e
    dec b
    dec b
    stop
    dec b
    db $10
    rst $38
    rra
    rra
    dec b
    ld c, $3f
    nop
    add c
    inc a
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7e
    ld [hl], b
    inc a
    jr nc, jr_004_405b

    db $10
    dec b
    inc c
    nop
    add c
    add c
    jp $e6c3


    and $df
    rst $18
    ei
    ei
    db $fd
    db $fd
    ld l, a
    ld l, a
    rst $38
    rst $38
    rrca
    rst $08
    rlca
    rst $20

jr_004_405b:
    add hl, bc
    jp hl


    ld c, $ce
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    ldh a, [$f3]
    ldh [$e7], a
    sub b
    sub a
    ld [hl], b
    ld [hl], e
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_004_407e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld [hl+], a
    nop
    ldh [$08], a
    add sp, $0c
    db $ec
    ld c, $ee
    rrca
    rst $08
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    nop
    rlca
    db $10
    rla
    jr nc, jr_004_40e5

    ld [hl], b
    ld [hl], a
    ldh a, [$f3]
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp+$07
    rst $20
    jr @-$1f

    jr nz, jr_004_407e

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop

jr_004_40c8:
    rra
    ldh [$e7], a
    jr jr_004_40c8

    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $38
    nop
    nop
    db $fc
    inc bc
    ldh [$1f], a
    call c, $b83f
    ccf
    cp b
    ccf
    cp h
    ld a, a

jr_004_40e5:
    ld a, h
    ld a, a
    ld a, b
    nop
    pop hl
    inc c
    ret nz

    ld e, $98
    ccf
    inc a
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, [hl]
    ld a, b
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ret nz

    rra
    add e
    ccf
    and c
    ccf
    jr nc, @+$81

    ld a, b

jr_004_4108:
    nop
    add c
    inc a
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7e
    ld [hl], b
    nop
    add c
    inc a
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7e
    ld [hl], b
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    inc bc
    ld hl, sp+$41
    db $fc
    ld b, c
    db $fc
    ld [hl], b
    cp $f0
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$7b
    db $fc
    ld a, l
    db $fc
    ld sp, hl
    db $fc
    pop af
    cp $f0
    cp $f8
    nop
    add a

jr_004_414a:
    ld [hl], b
    inc bc
    ld a, b
    ld h, c
    db $fc
    ldh a, [$fe]
    ld hl, sp-$02
    db $fc
    cp $fc
    ld a, [hl]
    ld a, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rIF], a
    ldh [rIF], a
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    inc bc
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    ld bc, $03f8
    jr c, jr_004_4108

    jr jr_004_414a

    ld bc, $ff00
    nop
    rst $38
    nop
    rlca
    ldh a, [rSB]
    db $fc
    nop
    cp $70
    cp $f8
    rst $38
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rTAC]
    ret nz

    rra
    add b
    ld a, $00
    ld a, a
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    cp $00
    nop
    ld bc, $f7f0
    nop
    ld hl, sp+$01
    pop hl
    ld c, $ce
    rra
    sbc a
    ccf
    cp a
    ld a, $3e
    ld e, l
    ld e, l
    ld h, e
    ld h, e
    nop
    rra
    ret nz

    rst $00
    or b
    or e
    ld a, b
    ld a, e
    ld a, b
    ld a, c
    cp h
    cp l
    ret c

    reti


    db $e4
    db $e4
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    inc b
    ld a, a
    nop
    nop
    rra
    rst $18
    rra
    rst $18
    nop
    ldh [rTAC], a
    rst $30
    rlca
    rst $30
    rst $20
    ld bc, $81f3
    ei
    pop bc
    ld sp, hl
    pop bc
    db $fc
    ldh [$7c], a
    ld h, b
    cp $f0
    cp $f0
    cp $fc
    cp $fe
    db $fc
    db $fc
    db $fd
    db $fc
    ld sp, hl
    ld hl, sp-$0d
    ldh a, [$e7]
    ldh [$6f], a
    ld h, b
    ld a, a
    rrca
    ld hl, sp+$18
    rst $38
    ccf
    rst $38
    ccf
    ldh [$60], a
    rst $38
    ld a, a
    rst $38
    rst $38

jr_004_4225:
    ret nz

    ret nz

    ldh a, [$f7]
    nop
    rlca
    ret nz

    rst $18
    ret nz

    rst $18
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld l, e
    ld l, e
    ld e, l
    ld e, l
    ld a, $3e
    ccf
    cp a
    ccf
    cp a
    ld a, $3e
    ld e, l
    ld e, l
    ld h, e
    ld h, e
    ld [$dcea], a
    call c, $bcbc
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    cp h
    cp h
    jp c, $e6da

    and $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$01
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$03
    add b
    ccf
    nop
    rra
    jr @+$01

    ld hl, sp+$0f
    inc c
    ld a, a
    ld a, h
    rrca
    ld c, $e3
    inc hl
    ld sp, hl
    add hl, sp
    db $fc
    db $fc
    ld c, a
    ld b, c
    ld e, a
    ld b, e
    rra
    rlca
    cp a
    ccf
    cp [hl]
    ld a, $b8
    jr c, jr_004_42b7

    jr nz, jr_004_4225

    adc h
    db $fc
    db $fd
    nop
    inc bc
    ldh a, [$f7]
    nop
    rlca
    ld h, b
    inc bc
    ld hl, sp+$00
    cp $00
    rst $38
    nop
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
    rst $38
    nop
    ccf
    add b
    rra

jr_004_42b7:
    ld l, e
    ld l, e
    ld e, l
    ld e, l
    ld a, $3e
    rra
    sbc a
    rra
    rst $18
    ld c, $ce
    nop
    ldh [rP1], a
    ld hl, sp-$18
    add sp, -$24
    db $dd
    cp h
    cp l
    ld a, b
    ld a, c
    ld a, b
    ld a, e
    jr nc, jr_004_4306

    nop
    rlca
    nop
    rra
    nop
    db $fc
    ld bc, $03f8
    ldh a, [rTAC]
    ldh [rIF], a

jr_004_42e0:
    ret nz

    rra
    pop bc
    rra
    jp $831f


    ld a, a

jr_004_42e8:
    ld bc, $0fff
    rst $38
    ccf
    rst $38
    ld a, a
    dec b
    inc b
    ei
    db $db
    db $db
    ret c

    ret c

    db $fc
    db $fc
    db $ed
    db $ec
    ld l, e
    ld l, b
    ld l, e
    ld l, c
    ld h, a
    ld h, c
    rrca
    ld bc, $430f
    rra
    ld b, e

jr_004_4306:
    ccf
    ld a, $bd
    cp l
    db $dd
    db $dd
    pop bc
    pop bc
    pop hl
    push hl
    ldh a, [$f6]
    ldh a, [$f3]
    ld hl, sp-$05
    rst $38
    jr @+$01

    cp $05
    inc b
    cp a
    or a
    or a
    ld [hl], $36
    ld b, $c6
    ld b, $f6
    ret nz

    rlca
    ldh a, [rSB]
    db $fc
    nop
    cp $80
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$21
    sbc $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    add b
    ccf
    add b
    rra
    ret nz

    rrca
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp+$7e
    ld [hl], b
    ld a, h
    ld [hl], b
    inc a
    jr nc, jr_004_436a

    db $10
    ld [$3e00], sp
    add [hl]
    ld a, $86
    ld [hl], $86
    ld [hl], $86
    jr nc, jr_004_42e0

    jr nc, jr_004_42e8

    jr nc, @-$77

    nop
    rst $08
    ret c

    db $db
    ret nz

    rst $00
    ret nz

jr_004_436a:
    rst $18
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    add e
    ccf
    inc bc
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, h
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    nop
    add b
    ld hl, sp-$07
    db $fc
    db $fc
    dec b
    inc b
    ld a, [hl]
    ld a, $3e
    dec b
    inc b
    ld c, $00
    ld bc, $f800
    nop
    cp $00
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
    rst $38
    rst $18
    rst $18
    db $db
    db $db
    ld a, [de]
    ld a, [de]
    ld a, [de]
    jp c, $e202

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ldh [$87], a
    ldh a, [$c7]
    or b
    add a
    or b
    add a
    or b
    add a
    jr nc, jr_004_43e8

    nop
    rst $08
    dec b
    inc b
    nop
    db $10
    db $10
    jr c, jr_004_4402

    ld a, b
    ld a, b
    db $ec
    db $ec
    db $fc
    db $fc
    or [hl]
    or [hl]

Jump_004_43d2:
    dec b
    nop
    inc b
    nop
    ld a, a
    add b
    sbc a
    ldh [$ef], a
    ldh a, [$f3]
    db $fc
    db $fc
    inc b
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_004_43e8:
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e3], a
    db $fc
    db $fc
    inc a
    jr nc, jr_004_440d

    stop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop

jr_004_4402:
    inc a
    jr nc, jr_004_441d

    stop
    ld bc, $0300
    nop
    rlca
    nop

jr_004_440d:
    rlca
    nop
    inc bc
    nop
    nop
    ccf
    ccf
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    dec l
    dec l
    ccf
    cp a
    ccf

jr_004_441d:
    cp a
    dec sp
    cp e
    rra
    rra
    cp [hl]
    cp [hl]
    db $f4
    db $f4
    db $fc
    db $fd
    call c, $fcdd
    db $fc
    cp $fe
    cp d
    cp d
    cp $fe
    nop
    ld hl, sp+$03
    di
    rlca
    rst $20
    rrca
    rst $08
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    nop
    ccf
    nop
    rrca
    add b
    add a
    add b
    add e
    ret nz

    jp $c3c0


    ldh [$e3], a
    ldh [$e3], a
    nop
    cp $00
    ld hl, sp+$06
    ldh a, [$0d]
    ret nz

    inc sp
    nop
    rst $28
    nop
    sbc a
    nop
    ld a, a
    nop
    nop
    ld a, a
    nop
    rra
    jr nz, jr_004_4497

    jr nc, jr_004_449d

    sbc h
    inc e
    sbc a
    rra
    adc a
    rrca
    adc a
    rrca
    ld bc, $0301
    inc bc
    ld h, $a6
    rra
    sbc a
    dec sp
    cp e
    ccf
    cp a
    cpl
    cpl
    ld a, l
    ld a, l
    add b
    add b
    ret nz

    ret nz

    db $e4
    push hl
    ld a, h
    ld a, l
    db $fc
    db $fc
    xor $ee
    ld a, [$7efa]
    ld a, [hl]
    nop
    nop
    pop bc
    pop bc
    cp [hl]

jr_004_4497:
    cp [hl]
    inc b
    inc b
    ld a, a
    cp [hl]
    cp [hl]

jr_004_449d:
    db $dd
    db $dd
    db $e3
    db $e3
    db $eb
    db $eb
    db $dd
    db $dd
    cp [hl]
    cp [hl]
    inc b
    inc b
    ld a, a
    cp [hl]
    cp [hl]
    inc b
    inc b
    nop
    rra
    sbc a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    inc b
    ld b, $f0
    inc b
    ld a, [bc]
    ld hl, sp+$0f
    ldh a, [$7f]
    add b
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
    rst $38
    nop

Call_004_44d5:
    nop
    rst $38
    nop
    rst $38
    add b

Jump_004_44da:
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    rra
    ldh [rIE], a
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
    db $eb
    db $eb
    db $dd
    db $dd
    cp [hl]
    cp [hl]
    inc b
    inc b
    ld a, a
    cp [hl]
    cp [hl]
    db $dd
    db $dd
    db $e3
    db $e3
    ccf
    ccf
    inc b
    ld c, $7f
    inc b
    inc b
    ld hl, sp+$04
    inc c
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ldh a, [rIF]
    cp $01
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
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    ld hl, sp+$07
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
    ld hl, sp+$00
    rst $20
    nop
    sbc a
    nop
    ld a, a
    nop
    cp $00
    ld sp, hl
    nop
    rst $20
    nop
    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    ld b, $7f
    inc b
    inc b
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    inc b
    inc b
    ldh a, [rDIV]
    inc b
    ldh [rDIV], a
    ld b, $c0
    add b
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
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
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$fc], a
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
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
    ld hl, sp+$07
    ret nz

    ccf
    nop
    nop
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    inc b
    ld a, [bc]
    rra
    inc b
    inc b
    nop
    inc b
    inc b
    add b
    inc b
    inc b
    ret nz

    inc b
    inc b
    ldh [rIE], a
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    rst $30
    nop
    rst $08
    nop
    cp a
    nop
    ld a, a
    nop
    nop
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    inc a
    nop
    di
    nop
    rst $08
    nop
    ccf
    nop
    inc a
    jr nc, jr_004_4696

    db $10
    inc b
    inc c
    nop
    inc a
    jr nc, jr_004_469d

    db $10
    inc b
    ld c, $00
    ld bc, $0301
    inc bc
    rrca
    rrca
    dec a
    dec a
    ld a, a
    ld a, a
    rst $28
    rst $28
    cp l

jr_004_4696:
    cp l
    nop
    nop
    add b
    add b
    ret nz

    ret nz

jr_004_469d:
    ld [hl], b
    ld [hl], b
    db $fc
    db $fc
    cp $fe
    or a
    or a
    db $fd
    db $fd
    inc b
    inc b
    nop
    inc b
    ld b, $01
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    dec b
    dec b
    inc b
    inc b
    rrca
    dec de
    dec de
    rra
    rra
    rla
    rla
    cp a
    cp a
    db $fd
    db $fd
    cp $00
    ld sp, hl
    nop
    rst $20
    nop
    sbc a
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

Call_004_46d5:
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, a
    ld a, a
    adc a
    adc a
    ld [hl], b
    nop
    cp a
    add b
    ld h, b
    rra
    nop
    ld [hl], b
    adc [hl]
    adc [hl]
    cp e
    cp e
    ld a, a
    ld a, a
    pop af
    pop af
    ld c, $00
    db $fd
    ld bc, $f806
    nop
    ld c, $f1
    pop af
    cp e
    cp e
    inc b
    inc c
    nop
    jr nc, jr_004_4737

    ld e, c
    ld e, c
    inc b
    inc c
    nop
    inc c
    inc c
    sbc d
    sbc d
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    ret c

    ret c

    ld a, b
    ld a, b
    db $ed
    db $ed
    rst $38
    rst $38
    inc b
    inc b
    nop
    ld [$1c08], sp
    inc e
    ld d, $16
    ccf
    ccf
    dec a
    dec a
    ld e, a
    ld e, a
    inc b
    inc b
    rlca
    inc b
    inc b
    inc bc
    inc b
    inc b

jr_004_4737:
    ld bc, $0404
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp+$7e
    ld [hl], b
    ld a, h
    ld [hl], b
    inc a
    jr nc, jr_004_4770

    db $10
    ld [$7d00], sp
    ld a, l
    rst $28
    rst $28
    ei
    ei
    rst $38
    rst $38
    rst $18
    rst $18
    db $fd
    db $fd
    cp e
    cp e
    rst $38
    rst $38
    inc b
    nop
    inc b
    nop
    rst $38

jr_004_4770:
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
    rst $38
    nop
    inc b
    ld de, $00ff
    inc b
    add hl, bc
    rst $38
    ld a, l
    rst $38
    jp nc, $95ff

    rst $38
    nop
    add e
    add e
    ld a, h
    ld l, l
    ld de, $ef6f
    ld a, l
    ld a, a
    db $dd
    db $fd
    db $db
    rst $18
    ei
    ei
    ld hl, sp-$05
    jp hl


    rst $20
    jp Jump_004_4edf


    ccf
    dec e
    cp $75
    db $fd
    rst $38
    rst $30
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    cp l
    cp a
    rst $28
    db $fd
    rst $38
    rst $28
    inc b
    inc b
    rst $38
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    ld de, $153b
    ccf
    dec d
    ccf
    dec d
    ccf
    ld d, b
    ld hl, sp+$50
    ld hl, sp+$40
    add sp, $50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$10
    cp b
    ld d, b
    ld hl, sp+$04
    stop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    cp a
    rst $38
    or a
    cp a
    cp $ff
    cp $fe
    inc b
    inc b
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    dec b
    cpl
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    ld d, b
    ld hl, sp+$50
    ld hl, sp+$10
    cp b
    ld d, b
    ld hl, sp+$50
    ld hl, sp+$40
    add sp, $50
    ld hl, sp+$50
    ld hl, sp-$08
    nop
    rst $20
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rra
    nop
    rst $20
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    or $fe
    cp a
    or a
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    rrca
    dec c
    ld [hl-], a
    ccf
    ld c, l
    ld c, a
    adc a
    ld d, a
    sbc a
    ld [hl], a
    or a
    ld a, $bb
    ld a, $be
    inc b
    add hl, bc
    nop
    inc bc
    ld [bc], a
    inc c
    rlca
    inc de
    rlca
    ld l, [hl]
    nop
    ld bc, $0600
    inc bc
    add hl, sp
    dec l
    rst $00
    cp l
    dec a
    rst $18
    db $fd
    sub a
    rst $18
    or h
    or h
    nop
    add b
    add b
    ld h, b
    ldh [$9c], a
    cp h

jr_004_488c:
    db $e3
    rst $38
    cp h
    ei
    rst $38
    db $ed
    ei
    ld l, l
    dec l
    inc b
    add hl, bc
    nop
    ret nz

    ret nz

    jr nc, jr_004_488c

    ret z

    ld hl, sp-$0a
    rst $38
    rst $38
    or $fe
    cp a
    or a
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    or b
    or b
    ld c, h
    db $fc
    or d
    ld a, [c]
    pop af
    add sp, -$07
    db $fc
    db $ed
    ld a, h
    db $fd
    ld a, h
    ld a, l
    inc b
    ld hl, $0700
    ld bc, $050f
    rra
    dec b
    rra
    ld bc, $153b
    ccf
    dec d
    ccf
    dec d
    ccf
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ld hl, sp+$10
    cp b
    ld d, b
    ld hl, sp+$50
    ld hl, sp+$04
    ld hl, $6000
    nop
    sbc h
    ld h, b
    ld h, e
    db $fc
    db $fc
    rst $18
    rst $18
    rst $18
    db $fd
    rst $28
    ld l, a
    db $fd
    db $fd
    nop
    ld h, b
    nop
    sbc h
    ld [hl], b
    ld [hl], e
    db $fc
    db $fc
    rst $18
    rst $18
    rst $18
    rst $10
    cp e
    db $eb
    rst $38
    rst $38
    inc b
    jr nz, jr_004_4906

jr_004_4906:
    dec b
    cpl
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    ld de, $153b
    ccf
    dec d
    ccf
    dec d
    ccf
    ld b, b
    add sp, $50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$04
    jr nz, jr_004_4929

jr_004_4929:
    rst $28
    ld l, [hl]
    inc a
    jr c, @-$55

    add c
    rst $00
    rst $00
    cp d
    ld a, [$dfff]
    ld l, a
    ld a, a
    ei
    ei
    rst $28
    xor $7c
    inc a
    cp c
    sub c
    rst $00
    rst $00
    cp $fa
    cp a
    rst $18
    ld a, l
    ld a, a
    ei
    ei
    inc b
    jr nz, jr_004_494c

jr_004_494c:
    dec d
    ccf
    inc d
    ld a, $15
    ccf
    dec b
    cpl
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    inc d
    ld a, $50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$40
    jp hl


    ld d, b
    ld sp, hl
    ld d, b
    ei
    ld d, b
    ei
    inc b
    rlca
    nop
    ldh [rLCDC], a
    ldh a, [$60]
    ld hl, sp+$70
    ld hl, sp-$10
    ld hl, sp+$04
    stop
    rst $28
    ld l, [hl]
    inc a
    jr c, jr_004_4929

    add c
    rst $00
    rst $00
    cp d
    ld a, [$dfff]
    ld l, a
    ld a, a
    ei
    ei
    xor $ef
    ld a, h
    inc a
    cp c
    sub c
    rst $00
    rst $00
    cp $fa
    cp a
    rst $18
    ld a, l
    ld a, a
    ei
    ei
    inc b
    dec d

jr_004_499d:
    nop
    ld a, b
    jr nc, jr_004_499d

    ld a, b
    db $fc
    ld a, b
    cp $6c
    xor $7c
    cp $15
    ccf
    dec d
    ccf
    dec d
    ccf
    dec b
    cpl
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    dec d
    ccf
    ld d, b
    ei
    ld d, c
    rst $38
    ld d, a
    rst $38
    ld d, l
    db $fd
    ld d, a
    rst $38
    ld d, a
    rst $38
    db $10
    cp a
    ld d, b
    rst $38
    ret nc

    ret c

    ldh a, [$f8]
    ld [hl], b
    ld a, b
    ldh [$f0], a
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    inc b
    jr nz, jr_004_49dc

jr_004_49dc:
    ld [$7fe9], a
    cp $77
    ld a, a
    cp $f7
    ld a, $3e
    daa
    rst $00
    add d
    ld hl, sp-$10
    rst $38
    inc b
    stop
    ld a, h
    rst $38
    scf
    rst $30
    dec a
    db $fd
    rra
    rst $38
    rrca
    ld a, a

jr_004_49f9:
    inc bc
    ld a, a
    nop
    ccf
    nop
    rrca
    dec c
    rst $38
    push hl
    rst $38
    push af
    rst $38
    push de
    rst $18
    push af
    rst $38
    push af
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    ld d, b
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$40
    add sp, $10
    cp b
    ld d, b
    ld hl, sp+$50
    ld hl, sp+$04
    jr nc, jr_004_4a22

jr_004_4a22:
    rst $38
    rst $38
    or $fe
    cp a
    or a
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    inc b
    nop
    ld [bc], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]

jr_004_4a3b:
    cp $fe
    ld [bc], a
    ld [$02ff], sp
    ld a, [bc]
    nop
    ldh [$e0], a
    db $fc
    db $fc
    rst $38
    rst $38
    ccf
    cp a
    inc a
    cp h
    jr jr_004_4aa8

    jr c, jr_004_4aac

    dec b
    ld b, e
    ld de, $0367
    cp a
    rlca
    sbc a
    db $fc
    db $fd
    ld a, $3d
    jr jr_004_49f9

    jr c, jr_004_4a3b

    add h
    jp nz, $e690

    ret nz

    db $fd
    ldh [$f9], a
    ld b, a
    add a
    ld c, $4f
    ld e, $5e
    scf
    ld e, l
    ccf
    ld d, a
    rrca
    ld c, a
    ld c, l
    adc a
    dec b
    add l
    ldh [$e1], a
    ld [hl], d
    pop af
    ld a, b
    ld a, d
    db $ec
    ld a, [$eafc]
    ldh a, [$f2]
    or d
    pop af
    and b
    and c
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    jr z, @+$01

    dec b
    rst $38
    nop
    ld [bc], a
    add hl, bc
    rst $38
    ld a, l
    rst $38
    jp nc, $95ff

    rst $38
    ld [bc], a
    ld a, [bc]
    nop
    inc e
    inc e

jr_004_4aa8:
    db $76
    db $76
    pop bc
    pop bc

jr_004_4aac:
    ld [bc], a
    stop
    ld b, a
    add a
    ld c, $4f
    ld e, $5e
    scf
    ld e, l
    ccf
    ld d, a
    rrca
    ld c, a
    ld c, l
    adc a
    dec b
    add l
    ldh [$e1], a
    ld [hl], d
    pop af
    ld a, b
    ld a, d
    db $ec
    ld a, [$eafc]
    ldh a, [$f2]
    or d
    pop af
    and b
    and c
    nop
    ld h, b
    nop
    sbc h
    ld h, b
    ld h, e
    db $fc
    db $fc
    rst $18
    rst $18
    rst $18
    db $fd
    rst $28
    ld l, a
    db $fd
    db $fd
    rst $28
    xor $7c
    inc a
    cp c
    sub c
    rst $00
    rst $00
    cp $fa
    cp a
    rst $18
    ld a, l
    ld a, a
    ei
    ei
    nop
    ld [bc], a
    add hl, bc
    rst $38
    ld a, l
    rst $38
    jp nc, $95ff

    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    jr z, @+$01

    dec b
    rst $38
    rrca
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
    rst $38
    ld [bc], a
    dec b
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rra
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
    rst $38
    nop
    rst $28
    xor $7c
    inc a
    cp c
    sub c
    rst $00
    rst $00
    cp $fa
    cp a
    rst $18
    ld a, l
    ld a, a
    ei
    ei
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    jr z, @+$01

    dec b
    rst $38
    nop
    ld [bc], a
    add hl, bc
    rst $38
    ld a, l
    rst $38
    jp nc, $95ff

    rst $38
    ld [bc], a
    inc b
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ldh a, [rP1]
    cp $00
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
    rst $38
    nop
    ccf
    nop
    ld a, a
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
    inc bc
    nop
    ld hl, sp+$00
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
    rst $38
    ld [bc], a
    dec bc
    nop
    rlca
    rlca
    inc a
    inc a
    ldh [$e0], a
    ld bc, $0701
    rlca
    inc e
    inc e
    ld [hl], b
    ld [hl], b
    ret nz

    ret nz

    add b
    add b
    ld [bc], a
    dec b
    nop
    ld [bc], a
    add hl, bc
    rst $38
    ld a, l
    rst $38
    jp nc, $95ff

    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    jr z, @+$01

    dec b
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

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
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    ld [bc], a
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    db $fc
    ld [bc], a
    dec bc
    nop
    rlca
    rlca
    inc a
    inc a
    ldh [$e0], a
    ld bc, $0701
    rlca
    inc e
    inc e
    ld [hl], b
    ld [hl], b
    ret nz

    ret nz

    add b
    add b
    ld [bc], a
    dec b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    jr z, @+$01

    dec b
    rst $38
    nop
    ld [bc], a
    add hl, bc
    rst $38
    ld a, l
    rst $38
    jp nc, $95ff

    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0502
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
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    rlca
    nop
    rra
    nop
    ccf
    nop
    ccf
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
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    inc e
    inc e
    ld [bc], a
    ld [$ff00], sp
    rst $38
    or $fe
    cp a
    or a
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rra
    rst $18
    adc a
    rst $20
    jp Jump_004_71fb


    db $fc
    jr c, jr_004_4d40

    xor $bf
    rst $28
    rst $28
    cp $ff
    rst $38
    ld a, a
    rst $38
    cp $7c
    ld a, l
    ld a, h
    cp e
    add hl, sp
    cp e
    ld de, $82c7
    rst $38
    ld b, [hl]
    cp $ff
    rst $38
    db $ed
    db $fd
    rst $38
    rst $28
    cp a
    rst $38
    push af
    cp l
    rst $38
    rst $30
    rst $28
    rst $28
    ld [bc], a
    inc b
    rst $38
    or $fe
    cp a
    or a
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    ld [bc], a
    inc b
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    cp a
    rst $38
    rst $30
    cp a
    cp $f7
    cp a
    cp [hl]
    ld [bc], a
    inc b
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    cp l
    cp a
    rst $28
    db $fd
    rst $38
    rst $28
    ld [bc], a
    inc b
    rst $38
    ret nz

    ret nz

    ld h, b
    ld h, b
    jr nc, jr_004_4d49

    ld e, $1e
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld a, [bc]
    nop
    ldh [$e0], a
    db $fc
    db $fc
    ld [bc], a
    inc b
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    cp a
    rst $38
    rst $30
    cp a
    cp $f7
    rst $38
    cp $02
    inc b
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30

jr_004_4d40:
    db $fd
    rst $38
    db $ed
    db $fd
    ld [bc], a
    ld [$edff], sp
    db $fd

jr_004_4d49:
    rst $38
    rst $28
    cp a
    rst $38
    push af
    cp l
    rst $38
    rst $30
    rst $28
    rst $28
    ld [bc], a
    inc b
    rst $38
    or $fe
    cp a
    or a
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    ld [bc], a
    inc b
    rst $38
    db $ed
    db $fd
    rst $38
    rst $28
    cp a
    rst $38
    push af
    cp l
    rst $38
    rst $30
    rst $28
    rst $28
    ld [bc], a
    inc b
    rst $38
    or $fe
    cp a
    or a
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    ld [bc], a
    inc b
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ld [bc], a
    inc b
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    cp $fe
    ld [bc], a
    ld [$17ff], sp
    sub a
    ld a, [hl]
    ld a, a
    xor $b6
    ld l, a
    rst $28
    ld a, h
    ld a, h
    ldh a, [$e3]
    add c
    rra
    rrca
    rst $38
    rst $38
    rst $38
    or $fe
    cp a
    or a
    db $fd
    rst $38
    rst $28
    db $fd
    ld a, a
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    ld [bc], a
    nop
    dec b
    dec b
    ld hl, $ff00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld e, $ff
    rra
    rst $38
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or $ff
    db $dd
    rst $38
    xor a
    rst $38
    di
    rst $38
    call c, $80ff
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    dec a
    ld b, d
    ld e, b
    jp nz, $c258

    ld e, b
    add $50
    and $60
    rst $20
    ld h, c
    rst $20
    ld h, c
    rst $20
    ld h, c
    rst $30
    ld [hl], c
    di
    pop af
    di
    pop af
    ei
    ld sp, hl
    ei
    ld sp, hl
    dec b
    db $10
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
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    ld a, a
    rst $38
    ld a, a
    dec b
    dec c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    dec b
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    dec b
    ld [$ff00], sp
    rst $38
    nop
    dec b
    rlca
    rst $38
    nop
    dec b
    dec b
    rst $38
    nop
    nop
    inc bc
    ld hl, sp+$07
    inc bc
    rlca
    di
    rrca
    rlca
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    nop
    db $fc
    inc bc
    ldh [$1f], a
    jp $cf1f


    ccf
    sbc a
    ccf
    sbc a
    ld a, a
    ccf
    ld a, a
    ccf
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
    pop af
    ld c, $c0
    ld a, a
    ld c, $07
    ld h, b
    sbc a
    rlca
    rst $38
    sbc a
    dec b
    ld a, [bc]
    rst $38
    nop
    rst $28
    nop
    rst $08
    nop
    rst $20
    nop
    add a
    nop
    rlc b
    and e
    nop
    pop de
    nop
    ret nc

    nop
    ldh [rP1], a
    ldh [rP1], a

jr_004_4eca:
    ldh a, [rP1]
    ldh [rP1], a
    ret nc

    nop
    ldh a, [rP1]
    ret nc

    nop
    ldh [rP1], a
    rst $28
    nop
    ld d, a
    nop
    cp a
    nop
    ld l, e
    nop
    ld d, l

Jump_004_4edf:
    nop
    ld hl, $0b00
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $00
    ld l, h
    nop
    jp nc, $feff

    cp $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    rst $38
    db $fc
    cp $fc
    db $fc
    sbc b
    cp h
    jr jr_004_4eca

    ld [$089c], sp
    sbc b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, $3f
    ld e, $3e
    inc e
    ld e, $0c
    inc e
    ld [$0008], sp
    nop
    sbc a
    ld b, b
    rra
    ld h, b
    cpl
    ld h, b
    cpl
    ld [hl], b
    ld d, $70
    ld d, $78
    ld a, [de]
    ld a, c
    jr jr_004_4f36

jr_004_4f36:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    cp a
    nop
    rst $10
    nop
    sbc a
    nop
    ccf
    nop
    inc bc
    nop
    ld de, $0505
    nop
    ld [de], a
    dec b
    rlca
    nop
    ld l, [hl]
    nop
    ld a, l
    nop
    add h
    nop
    ld [$1200], sp
    dec b
    dec b
    nop
    ld [bc], a
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0031
    add hl, sp
    db $10
    ccf
    add hl, de
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rra
    rrca
    ld l, a
    rlca
    ld l, a
    daa
    ld l, a
    daa
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, l
    inc c
    ld a, l
    inc c
    ld a, l
    inc c
    ld a, l
    inc c
    ld a, e
    ld [$087b], sp
    scf
    nop
    scf
    nop
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    db $f4
    nop
    db $e4
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret z

    nop
    ld b, e
    nop
    or e
    nop
    add sp, $00
    ld b, h
    nop
    cp $00
    ld sp, hl
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    ld a, [$ec00]
    nop
    ldh a, [rP1]
    ld sp, $2b00
    nop
    and e
    nop
    rlca
    nop
    ld b, b
    nop
    and c
    nop
    ld l, e
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$00
    rst $38
    inc a
    rst $38
    cp $c3
    cp $03
    rst $38
    add hl, de
    rst $38
    ld l, l

Call_004_5009:
    rst $38
    ld a, l
    rst $38
    cp l
    rra
    pop af
    rra
    ld a, [c]
    rra
    di
    rra
    pop af
    ccf
    db $e3
    ccf
    db $e3
    ccf
    push hl
    ccf
    rst $20
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $05
    ld a, [bc]
    rst $38
    dec b
    dec b
    nop
    ld b, b
    nop
    cp b
    nop
    nop
    nop
    ld [$0505], sp
    nop
    pop bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    inc b
    dec b
    inc b
    nop
    ld h, c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld h, c
    rst $38
    ld sp, $30ff
    rst $38
    add h
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    inc c
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    add [hl]
    rst $38
    jp $80ff


    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$bf], a
    ldh [$bf], a
    ld a, a
    rst $00
    ld a, a
    bit 7, a
    rst $08
    ld a, a
    rst $00
    ld a, a
    jp $87ff


    rst $38
    add a
    rst $38
    add e
    ldh [$bf], a
    ldh a, [$bf]
    ld hl, sp-$31
    db $fc
    rst $30
    cp $fb
    cp $fb
    rst $38
    db $fd
    rst $38
    cp $03
    rst $38
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$7f], a
    call nz, $88ff
    dec b
    ld [$7800], sp
    nop
    add [hl]
    ld a, b
    ld h, c
    sbc [hl]
    nop
    rst $38
    dec b
    ld a, [bc]
    nop
    ld bc, $8600
    ld bc, $9f60
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    inc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    db $76
    rst $38
    and $ff
    call z, $f8ff
    rst $38
    cp $ff
    rst $38
    add hl, bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    ld d, c
    rst $38
    ld e, l
    rst $38
    cpl
    rst $38
    cp a
    nop
    nop
    nop
    cp $01
    nop
    inc bc
    ld hl, sp+$07
    nop
    rra
    ld [bc], a
    ccf
    ld bc, $077f
    nop
    nop
    add b
    ld a, a
    ldh [$80], a
    ldh a, [$ef]
    ld hl, sp-$10
    db $fc
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    add a
    ld a, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    rst $18
    and h
    rst $18
    xor b
    rst $38
    xor c
    rst $38
    or e
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a

jr_004_512b:
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    dec c
    rst $38
    ld [hl], $ff
    ld e, c
    rst $38
    or [hl]
    rst $38
    dec de
    rst $38
    jr nc, @+$01

    inc de
    rst $38

jr_004_5143:
    nop
    rst $38
    sbc $ff
    or a
    rst $38
    ld a, [hl]
    rst $38
    call nz, $8aff
    rst $38
    ld b, b
    rst $38
    ld [de], a
    rst $38
    ld c, b
    rst $38
    dec b
    nop
    dec b
    cp $38
    ld a, h
    nop
    sbc h
    add b
    ldh [$e0], a
    cp $38
    ld a, h
    nop
    sbc h
    add b
    ldh [$e0], a
    nop
    rst $30
    ld [$08eb], sp
    db $eb
    jr jr_004_5143

    jr c, @-$4b

    jr nc, jr_004_512b

    ld [hl], b
    scf
    ld [hl], b
    scf
    nop
    rst $38
    nop
    cp $00
    cp $01
    db $fc
    ld bc, $03fc
    ld sp, hl
    inc bc
    ld sp, hl
    rlca
    di
    nop

jr_004_5189:
    rra
    and b
    rrca
    or b
    rlca
    cp b
    sub e
    ld a, b
    inc sp
    ld a, b
    inc sp
    ld [hl], b
    daa
    ld [hl], b
    daa
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f1]
    ld bc, $0f0f
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    nop
    rra
    rra
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    ld hl, sp-$08
    rst $38
    rrca
    rrca
    nop
    rra
    rra
    ret nz

    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rra
    rra
    nop
    ldh [$e0], a
    rst $38
    rst $38
    ld a, a
    ld [hl], b
    inc a
    nop
    inc sp
    inc bc
    rrca
    rrca
    ld a, a
    ld [hl], b
    ld a, $00
    ld sp, $0f01
    rrca
    ld [hl], b
    scf
    ld a, b
    dec sp
    jr c, jr_004_5189

    inc a
    sbc l
    inc a
    sbc l
    inc e
    call $ce1e
    ld c, $ee
    rrca
    rst $20
    rra
    rst $08
    rra
    rst $08
    ccf
    sbc a
    ccf
    sbc a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    sbc a
    cp b
    inc sp
    cp b
    inc sp
    call c, $dc99
    sbc c
    call c, $de99
    sbc h
    cp [hl]
    inc a
    cp [hl]
    inc a
    rst $38
    ldh a, [$fc]
    nop
    di
    inc bc
    rrca
    inc c
    rst $38
    ldh a, [$fc]
    nop
    di
    inc bc
    rrca

jr_004_5227:
    inc c
    ccf
    jr c, jr_004_5227

    ldh [$f3], a

jr_004_522d:
    inc bc
    rst $08

jr_004_522f:
    rrca
    ccf
    jr c, jr_004_522f

    ldh [$f3], a
    add e
    rst $08
    rrca
    db $fc
    inc e
    ccf
    rlca
    rst $08
    ret nz

    di
    ldh a, [$fc]
    inc e
    ccf
    rlca
    rst $08
    pop bc
    di
    ldh a, [rIE]
    rrca
    ccf
    nop
    rst $08
    ret nz

    ldh a, [$30]
    rst $38
    rrca
    ccf
    nop
    rst $08
    ret nz

    ldh a, [$30]
    ccf
    jr nz, jr_004_52d3

    ld h, b
    ld h, a
    daa
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    nop
    inc e
    nop
    ld b, e
    ld b, e
    ld c, $ee
    ld c, $ee
    inc e
    call $cd1c
    jr c, jr_004_522d

    jr c, jr_004_5227

    ld [hl], b
    ld h, a
    ld [hl], b
    ld h, a
    ccf
    sbc [hl]
    ccf
    sbc [hl]
    ld a, a
    ld a, $7e
    inc a
    ld a, [hl]
    inc a
    ld a, $9c
    ld a, $9c
    rra
    adc $7c
    ld a, c
    ld a, h
    ld a, c
    ld a, h
    ld a, c
    cp $f8
    cp $fc
    cp $fc
    db $fc
    ld sp, hl
    ld a, h
    ld a, c
    rst $38
    ldh a, [$fc]
    nop
    di
    inc bc
    rrca
    inc c
    rst $38
    ldh a, [$fc]
    nop
    di
    inc bc
    rrca

jr_004_52a7:
    rrca
    ccf
    jr c, jr_004_52a7

    ldh [$f3], a
    add e
    rst $08
    rrca
    ccf
    ccf
    dec b
    ld b, $ff
    db $fc
    inc e
    ccf
    rlca
    rst $08
    pop bc
    di
    ldh a, [$fc]
    db $fc
    dec b
    rlca
    rst $38
    rrca
    ccf
    nop
    rst $08
    ret nz

    ldh a, [$30]
    rst $38
    rrca
    ccf
    nop
    rst $08
    ret nz

    ldh a, [$f0]
    cp $1c

jr_004_52d3:
    ld a, $00
    rst $08
    jp nz, $feff

    cp $1c
    cp h
    nop
    nop
    nop
    ld a, [c]
    add b
    ld [hl], b
    ld h, b
    ld a, b
    ld [hl], e
    ld a, b
    ld [hl], b
    ld a, b
    ld [hl], e
    inc a
    jr c, jr_004_5328

    jr c, jr_004_532a

    db $10
    inc a
    nop
    rra
    adc $3f
    sbc [hl]
    ccf
    sbc a
    rra
    rst $00
    rlca
    db $e3
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $78fd
    ld [hl], e
    ld a, b
    ld [hl], e
    cp h
    add hl, sp
    cp h
    add hl, sp
    cp b
    inc hl
    ld h, b
    rlca
    ld b, b
    rra
    add b
    ccf
    dec b
    rlca
    rst $38
    db $fc
    rst $38
    ldh a, [$fc]
    nop
    di
    inc bc
    rrca
    inc c
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    add b
    rst $00

jr_004_5324:
    rlca
    ccf
    jr c, jr_004_5324

jr_004_5328:
    ldh [$f3], a

jr_004_532a:
    inc bc
    rst $08
    rrca
    rst $38
    rst $38
    rst $38
    rrca
    rra
    ld bc, $e0e3
    db $fc
    inc e
    ccf
    rlca
    rst $08
    ret nz

    di
    ldh a, [rTIMA]
    rlca
    rst $38
    ccf
    rst $38
    rrca
    ccf
    nop
    rst $08
    ret nz

    ldh a, [$30]
    nop
    nop
    jr c, jr_004_534d

jr_004_534d:
    ld a, a
    jr jr_004_53cf

    ccf
    ld a, a
    jr nc, jr_004_53c4

    jr nz, jr_004_5395

    rrca
    rra
    rra
    nop
    nop
    db $fc
    nop
    cp $f8
    cp $fc
    cp $1c
    ld e, $00
    ldh [$e0], a
    db $fc
    db $fc
    ld bc, $0101
    db $fd
    ld bc, $0001
    cp $00
    nop
    ld bc, $0301
    inc bc
    rrca
    rrca
    add b
    nop
    add b
    ccf
    add b
    nop
    ret nz

    rst $18
    ret nz

    ret nz

    dec b
    inc b
    ldh [$f0], a
    ldh a, [rIE]
    ldh a, [$fc]
    nop
    di
    inc bc
    rrca
    inc c
    rst $38
    ldh a, [$fc]
    nop
    di

jr_004_5395:
    inc bc
    rrca

jr_004_5397:
    inc c
    ccf
    jr c, jr_004_5397

    ldh [$f3], a
    inc bc
    rst $08

jr_004_539f:
    rrca
    ccf

jr_004_53a1:
    jr c, jr_004_539f

jr_004_53a3:
    ldh [$f3], a

jr_004_53a5:
    add e
    rst $08
    rrca
    db $fc
    inc e
    ccf
    rlca
    rst $08
    ret nz

    di
    ldh a, [$fc]
    inc e
    ccf
    rlca
    rst $08
    pop bc
    di
    ldh a, [rIE]
    rrca
    ccf
    nop
    rst $08
    ret nz

    ldh a, [$30]
    rst $38
    rrca
    ccf
    nop

jr_004_53c4:
    rst $08
    ret nz

    ldh a, [$30]
    rst $18
    sbc a
    rst $18
    sbc a
    rst $08
    adc a
    rst $08

jr_004_53cf:
    adc a
    rst $28
    adc [hl]
    rst $20
    add [hl]
    rst $20
    add [hl]
    rst $20
    add [hl]
    db $ec
    nop
    db $ec
    nop
    sbc $10
    sbc $10
    cp [hl]
    jr nc, jr_004_53a1

    jr nc, jr_004_53a3

    jr nc, jr_004_53a5

    jr nc, jr_004_5468

    ld [hl], b
    inc a
    nop
    inc sp
    inc bc
    rrca
    rrca
    ld a, a
    ld [hl], b
    cp [hl]
    add b
    or c
    add c
    adc a
    adc a
    cp $38
    ld a, h
    nop
    sbc h
    add b
    ldh [$e0], a
    cp $38
    db $fc
    nop
    inc e
    nop
    ldh [$e0], a
    rst $38
    ldh a, [$fc]
    nop
    di
    inc bc
    rrca
    inc c
    rst $38
    ldh a, [$fc]
    nop
    di
    inc bc
    rrca

jr_004_5417:
    inc c
    ccf
    jr c, jr_004_5417

    ldh [$f3], a
    inc bc
    rst $08

jr_004_541f:
    rrca
    ccf
    jr c, jr_004_541f

    ldh [$f3], a
    add e
    rst $08
    rrca
    db $fc
    inc e
    ccf
    rlca
    rst $08
    ret nz

    di
    ldh a, [$fc]
    inc e
    ccf
    rlca
    rst $08
    pop bc
    di
    ldh a, [rIE]
    rrca
    ccf
    nop
    rst $08
    ret nz

    ldh a, [$30]
    rst $38
    rrca
    ccf
    nop
    rst $08
    ret nz

    ldh a, [$30]
    ld h, a
    ld b, $63
    ld [bc], a
    ld b, e
    ld [bc], a
    ld b, e
    ld [bc], a
    ld b, d
    ld [bc], a
    dec b
    ld b, $00
    sbc [hl]
    jr @+$20

    jr jr_004_5468

    ld [$080e], sp
    ld b, $04
    ld b, $04
    ld [bc], a
    nop
    nop
    nop
    ccf
    ccf
    dec b

jr_004_5468:
    rlca
    ld a, a
    jr nc, @+$7e

    nop
    or e
    add e
    rst $08
    call $fcfc
    cp $fc
    cp $fc
    cp $f8
    cp $38
    ld a, h
    nop
    sbc l
    add c
    db $e3
    ld h, e
    rst $38
    ld hl, sp-$08
    nop
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop
    inc bc
    inc bc
    ccf
    ccf
    dec b
    dec b
    rst $38
    rst $00
    rst $38
    nop
    add a
    nop
    jr c, jr_004_54d5

    cp $fe
    db $fc
    db $fc
    dec b
    rlca
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop
    inc bc
    inc bc
    ld a, a
    rrca
    adc a
    add b
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    nop
    add a
    nop
    jr nc, @+$32

    rst $38
    rst $38
    ld h, a
    ld b, $63
    ld a, [bc]
    ld b, e
    ld a, [de]
    ld b, e
    ld a, [de]
    ld b, d
    ld a, [de]
    nop
    cp h
    nop
    db $fd
    nop
    db $fd
    sbc [hl]
    jr @+$20

    ld e, b
    ld c, $68
    ld c, $68
    ld b, $f4

jr_004_54d5:
    ld b, $f4
    ld [bc], a
    ld hl, sp+$00
    ld sp, hl
    ld a, a
    ld [hl], b
    inc a
    nop
    or e
    add e
    rrca
    rrca
    ld a, a
    ld [hl], b
    ld a, $00
    ld sp, $8f01
    adc a
    cp $38
    ld a, h
    nop
    sbc h
    add b
    pop hl
    pop hl
    cp $38
    ld a, h
    nop
    sbc h
    add b
    pop hl
    pop hl
    ld a, a
    ld [hl], b
    inc a
    nop
    inc sp
    inc bc
    rrca
    rrca
    ld a, a
    ld [hl], b
    ld a, $00
    ld sp, $0f01
    rrca
    cp $38
    ld a, h
    nop
    sbc h
    add b
    ldh [$e0], a
    cp $38
    ld a, h
    nop
    sbc h
    add b
    ldh [$e0], a
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    dec b
    add hl, bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    nop
    add hl, bc
    add hl, bc
    jr nz, jr_004_553b

jr_004_553b:
    rlca
    rlca
    add hl, sp
    ccf
    ld b, d
    ld a, a
    or d
    rst $38
    add h
    rst $38
    db $e3
    rst $38
    adc l
    adc h
    ld [hl], d
    ld bc, $ffff
    inc b
    rst $38
    inc b
    rst $38
    xor d
    rst $38
    ld [de], a
    rst $38
    rra
    rra
    rst $08
    ld [$c728], sp
    ldh a, [$f0]
    ld c, h
    db $fc
    ld d, d
    cp $95
    rst $38
    and l
    rst $38
    ld de, $def1
    ret nz

    and c
    ld e, $09
    ld [de], a
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop

jr_004_5578:
    inc e
    nop
    inc e
    ld [$081c], sp
    ld e, $08
    ld e, $0c
    ld e, $8c
    ld e, $8c
    ld e, $cc
    ld e, $cc
    ld e, $cc
    add hl, bc
    db $10
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc d
    ld [hl], c
    adc d
    ld [hl], c
    add l
    ld a, b
    ld b, l
    jr c, jr_004_55ea

    inc a
    ld hl, $101e
    rrca
    rrca
    nop
    jr z, jr_004_5578

    inc d
    db $e3
    ld a, [bc]
    pop af
    ld a, [bc]
    pop af
    pop af
    inc b
    nop
    ld c, $a2
    inc e
    inc e
    nop
    ld d, c
    adc [hl]
    ld d, c
    adc [hl]
    ld d, c
    adc [hl]
    add hl, hl
    add $2a
    call nz, Call_004_6094
    adc [hl]
    ld [hl], b
    ld [hl], b
    add hl, bc
    inc sp
    nop
    ld bc, $0700
    nop
    inc e
    inc bc
    jr nc, jr_004_55e8

    jr nz, jr_004_55fa

    ld h, b
    rra
    ld b, b
    ccf
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_004_55e8:
    rst $38
    nop

jr_004_55ea:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    add hl, bc
    inc b
    ld a, [hl]
    add hl, bc
    inc b
    ld a, $1c

jr_004_55fa:
    inc e
    add hl, bc
    ld [de], a
    nop
    db $fc
    db $fc
    ld [hl], c
    ld [hl], b
    ld b, a
    ld b, b
    inc e
    inc bc
    jr nc, jr_004_5617

    jr nz, jr_004_5629

    ld h, b
    rra
    ld b, b
    ccf
    add hl, bc
    jr nc, jr_004_5611

jr_004_5611:
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38

jr_004_5617:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_004_5628:
    rst $38

jr_004_5629:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc e
    nop
    inc e
    ld [$3f40], sp
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    add hl, bc
    jr nc, jr_004_5664

jr_004_5664:
    ld c, $f0
    jr c, jr_004_5628

    ld h, e
    add e
    rst $08
    rrca
    sbc a
    rra
    cp a
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    nop
    add hl, bc
    ld c, $ff
    ld [hl], b
    rrca
    inc e
    inc bc
    add $c1
    di
    ldh a, [$f9]
    ld hl, sp-$03
    db $fc
    db $fc
    db $fc
    cp $fe
    inc e
    ld [$081e], sp
    ld e, $0c
    ld e, $8c
    ld e, $8c
    ld e, $cc
    ld e, $cc
    ld e, $cc
    nop
    nop
    inc e
    inc e
    add hl, bc
    inc b
    ld a, $09
    inc b
    ld a, [hl]
    add hl, bc
    inc b
    ld a, a
    add hl, bc
    ld b, b
    nop
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $03
    db $fc
    ld [hl], b
    rrca
    sbc h
    inc bc
    and $01
    dec sp
    ret nz

    dec c
    ldh a, [rTIMA]
    ld hl, sp+$06
    ld hl, sp+$02
    db $fc
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    add hl, bc
    ld b, b
    nop
    ret nz

    ccf
    add b
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
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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
    rst $38
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, c
    ld a, $41
    ld a, $43
    inc a
    add hl, bc
    inc b
    nop
    inc bc
    nop
    rra
    ld bc, $0ffe
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp+$00
    cp $78
    cp a
    cp $07
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add hl, bc
    ld hl, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $0e
    ldh a, [$39]
    ret nz

    ld h, a
    add b
    call c, $b003
    rrca
    and b
    rra
    ld h, b
    rra
    ld b, b
    ccf
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld b, d
    inc a
    ld b, d
    inc a
    ld b, d
    inc a
    ld h, [hl]
    jr jr_004_579a

    jr @+$36

    ld [$091c], sp
    ld b, e
    nop
    add hl, bc
    nop
    dec b
    dec h
    rst $38
    pop hl
    rst $38
    ld b, c
    rst $38
    ld [hl], c
    rst $38
    reti


    rst $38
    ld c, $fe
    inc e
    db $fc
    ldh a, [$f0]
    dec b
    ld d, $00
    ld h, c
    ld h, c
    sub c
    pop af
    xor l
    db $ed
    push de

jr_004_579a:
    db $dd
    push de
    db $dd
    dec b
    inc b
    nop
    ldh [$e0], a
    sbc b
    ld hl, sp+$0d
    db $fd
    dec c
    db $fd
    add [hl]
    cp $c6
    cp $05
    inc b
    nop
    add a
    add a
    ld hl, sp-$01
    ld c, h
    rst $38
    inc h
    rst $38
    rst $20
    rst $38
    ld hl, $00ff
    nop
    rst $38
    rst $38
    add h
    rst $38
    ret


    rst $38
    ld [hl], c
    rst $38
    ld e, e
    rst $38
    jp z, $0eff

    rst $38
    nop
    nop
    rst $38
    rst $38
    adc c
    rst $38
    inc b
    rst $38
    rrca
    rst $38
    ld sp, hl
    rst $38
    ld hl, $30ff
    rst $38
    nop
    nop
    add b
    add b
    ld a, a
    rst $38
    sub d
    rst $38
    rlca
    rst $38
    call c, Call_004_73ff
    rst $38
    ld b, c
    rst $38
    jp nc, $ffff

    rst $38
    add c
    rst $38
    or a
    rst $38
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    jr nc, jr_004_5838

    rrca
    rrca
    dec b
    stop
    db $eb
    db $eb
    inc e
    inc e
    rst $20
    rst $20
    sbc d
    ld a, [$fd0d]
    dec c
    db $fd
    add [hl]
    cp $c6
    cp $9d
    sbc l
    ld h, [hl]
    ld a, [hl]
    ld [de], a
    ld e, $ed
    db $ed
    sub c
    pop af
    dec l
    db $ed
    ld d, l
    db $dd
    push de
    db $dd
    db $e3
    rst $38
    daa
    rst $38
    dec [hl]
    rst $38
    inc e
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ld [de], a
    rst $38
    cp [hl]
    rst $38
    db $e4
    rst $38
    inc c
    rst $38

jr_004_5838:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

    db $10
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $13ff
    rst $38
    ld a, b
    rst $38
    ld c, b
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp nc, $ffff

    rst $38
    add c
    rst $38
    or a
    rst $38
    ld c, h
    ld a, a

jr_004_5868:
    ld e, d
    ld a, a
    jr nc, @+$41

    rrca
    rrca
    dec b
    stop
    db $fc
    db $fc
    dec sp
    dec sp
    add $c7
    or h
    or a
    ld h, [hl]
    ld [hl], a
    xor d
    cp e
    cp d
    cp e
    and e
    and e
    ld a, [de]
    ld a, [de]
    rst $20
    rst $20
    inc l
    rst $28
    inc sp
    rst $30
    ld d, $f6
    ld de, $14f1
    rst $30
    ld [hl-], a
    di
    nop
    jp $803c


    ld b, e
    inc a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    and b
    rra
    nop
    rst $38
    nop
    rst $20
    jr jr_004_5909

    cp l
    jr jr_004_5868

    jr jr_004_590a

    adc h
    cpl
    add $2f
    add $00
    jp Jump_000_003c


    jp Jump_000_003c


    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld h, b
    rra
    nop
    rst $38
    nop
    rst $20
    jr jr_004_590a

    cp h
    add hl, de
    cp [hl]
    inc e
    ld e, a
    adc [hl]
    cpl
    add $2f
    rst $00
    dec h
    rst $38
    pop hl
    rst $38
    ld b, c
    rst $38
    ld [hl], c
    rst $38
    reti


    rst $38
    ld c, $fe
    inc e
    db $fc
    ldh a, [$f0]
    dec b
    stop
    xor e
    cp e
    xor d
    cp e
    or h
    or a
    adc c
    adc a
    rlca
    rlca
    dec b
    ld b, $00
    ld b, e
    ld a, a
    ld h, c
    ld a, a
    and b
    cp a
    or c
    cp a
    add hl, de
    rra
    ld b, $06
    dec b
    inc b
    nop
    call c, $e383
    ret nz

    db $fc
    ldh [$8f], a
    adc h
    ld [hl], e

jr_004_5909:
    ld [hl], d

jr_004_590a:
    db $fd
    ldh [$e2], a
    ret nz

    db $dd
    add d
    scf
    jp $07cf


    ccf
    rrca
    adc $32
    inc bc
    db $fd
    add a
    ld a, e
    ld a, a
    rlca
    cp a
    rra
    sbc h
    inc bc
    ld [c], a
    add c
    db $fd
    ldh [$f2], a
    pop af
    ld c, $0d
    db $fd
    ldh [$e2], a
    pop bc
    call c, Call_000_3783
    rst $00
    ld c, a
    adc a
    cp a
    ld c, a

jr_004_5936:
    add hl, bc
    pop af
    ld c, $f6
    cp a

jr_004_593b:
    ld c, a
    ld e, a
    adc a
    cpl
    rst $00
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    inc a
    ccf
    inc [hl]
    ccf
    ld h, a
    ld a, a
    pop hl
    rst $38
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$0c
    db $fc
    sbc $fe
    ld [hl], d
    cp $43
    rst $38
    dec b
    jr nz, jr_004_5963

jr_004_5963:
    and b
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld h, a
    sbc b
    jr jr_004_5936

    rra
    rst $28
    cpl
    add $5f
    adc [hl]
    ld e, [hl]
    adc h
    cp l
    jr jr_004_593b

    jr jr_004_5998

    ld b, d
    nop
    rst $38
    and b
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $e3
    inc e
    inc e
    add c
    cpl
    rst $00
    cpl
    add $5f

jr_004_5998:
    adc [hl]
    ld e, [hl]
    adc h
    cp h
    add hl, de
    cp h
    add hl, de
    jr jr_004_59e4

    nop
    rst $20
    dec b
    jr nz, jr_004_59a6

jr_004_59a6:
    jr c, jr_004_59ab

    ld b, h
    add hl, sp
    add d

jr_004_59ab:
    ld a, h
    add e
    ld a, h
    add c
    ld a, [hl]
    pop bc
    ld a, $41
    cp [hl]
    ld b, c
    cp [hl]
    nop
    ld hl, sp+$00
    and $18
    ld b, e
    and h
    add hl, de
    and d
    inc e
    ld d, c
    adc [hl]
    add hl, hl
    add $29
    add $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld c, b
    rst $38

jr_004_59e4:
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc e
    rst $38
    dec [hl]
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
    rst $38
    inc c
    rst $38
    db $e4
    rst $38
    cp [hl]
    rst $38
    dec b
    jr nz, jr_004_5a09

jr_004_5a09:
    ld b, c
    cp [hl]
    ld b, d
    dec a
    ld [hl+], a
    dec e
    ld e, $01
    ld bc, $1e0e
    ld bc, $0d32
    ld [hl+], a
    ld e, l
    ld sp, $42c6
    adc h
    or d
    ld c, h
    inc b
    ld hl, sp+$04
    ld hl, sp-$5e
    ld e, h
    ld d, d
    adc h
    add hl, hl
    add $12
    rst $38
    ccf
    rst $38
    ld hl, $e7ff
    rst $38
    inc [hl]
    rst $38
    db $fc
    rst $38
    rrca
    rrca
    nop
    nop
    ld [$08ff], sp
    rst $38
    ld c, $ff
    jp z, Jump_004_5bff

    rst $38
    ld [hl], c
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc de
    rst $38
    ld de, $30ff
    rst $38
    jr nz, @+$01

    ld sp, hl
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    daa
    rst $38
    db $e3
    rst $38
    ld b, c
    rst $38
    ld [hl], e
    rst $38
    sbc $ff
    rrca
    rst $38
    ld hl, sp-$08
    dec b
    ld [hl+], a
    nop
    ld h, c
    ld e, $41
    cp [hl]
    ld b, c
    cp [hl]
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, h
    ld b, h
    add hl, sp
    jr c, jr_004_5a7d

    add hl, hl
    add $29

jr_004_5a7d:
    add $51
    adc [hl]
    ld d, d
    adc h
    and h
    add hl, de
    and h
    add hl, de
    jr @+$45

    nop
    db $e4
    dec b
    ld [de], a
    nop
    ldh [$e0], a
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$0c
    db $fc
    sbc $fe
    ld [hl], d
    cp $43
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    stop
    dec b

jr_004_5aaf:
    nop
    ld b, $06
    stop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld a, $9e
    ld a, $9e
    ld a, $9e
    ld a, $8e
    inc a
    adc l
    inc a
    adc l
    inc e
    call $e0e0
    add b
    adc a
    nop
    scf
    ld [$1c63], sp
    nop
    ld e, [hl]
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    nop
    nop
    nop
    rst $38
    nop
    rst $20
    jr jr_004_5aaf

    inc a
    add b
    ld a, [hl]
    nop
    ld a, a
    nop
    rst $38
    ld b, $04
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e3], a
    ld a, h
    ld a, l
    cp h
    inc a
    ld b, $06
    nop
    ldh a, [$f0]
    db $e4
    db $e4
    rst $08
    rst $08
    sbc a
    sbc a
    ld a, $3e
    ld b, $06
    nop
    ld a, [bc]
    ld a, [bc]
    add hl, de
    add hl, de
    ld a, l
    ld a, l
    ld a, h

jr_004_5b1a:
    ld a, h

jr_004_5b1b:
    ld a, [hl]
    ld a, [hl]
    ld b, $10
    rst $38
    nop

jr_004_5b21:
    rst $38
    nop

jr_004_5b23:
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
    rst $38
    nop
    rst $38
    inc e
    call $c51c
    inc c
    push hl
    ld [$08e3], sp
    db $e3
    ld [$00e3], sp
    rst $30
    nop
    rst $30
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld b, a
    ld d, b
    rlca
    jr nc, jr_004_5b4d

    jr nc, jr_004_5b4b

jr_004_5b4b:
    ld a, [de]
    nop

jr_004_5b4d:
    ld c, $00
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    cp [hl]
    nop
    sbc [hl]
    ld b, $05
    nop
    cp d
    jr c, jr_004_5b1b

    jr c, jr_004_5b1a

    jr nc, jr_004_5bdc

    ld [hl], b
    rst $28
    ldh [$ef], a
    ldh [$87], a
    add b
    nop
    nop
    ldh [$64], a
    ld hl, sp+$3c
    ld hl, sp+$3c
    db $f4
    jr nc, jr_004_5b23

    jr nz, jr_004_5b21

    jr nz, jr_004_5b7b

jr_004_5b7b:
    jr nz, jr_004_5b83

    ld [de], a
    nop
    ld c, a
    ld a, b
    add a
    db $fc

jr_004_5b83:
    add e
    rst $38
    add d
    rst $38
    add d
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    rst $38
    ret z

    rst $38
    add h
    rst $38
    add e
    cp $83
    cp $83
    db $fc
    add a
    db $fc
    add a
    db $fc
    add a
    pop bc
    ld a, a
    and c
    rst $38
    ld hl, $23ff
    cp $13
    cp $13
    cp $11
    rst $38
    ld de, $ffff
    ld [$08ff], sp
    rst $38
    ld [$18ff], sp
    rst $30
    inc e
    rst $20
    inc a
    rst $20
    inc a
    rst $00
    ld a, h
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ld hl, sp+$4f
    pop hl
    ccf
    pop hl
    ccf
    ld [c], a
    ld a, $e2
    ld a, $f2
    ld e, $f4
    inc e
    db $f4

jr_004_5bdc:
    inc a
    ld hl, sp+$48
    nop
    ld bc, $fc00
    nop
    xor $00
    sub $00
    jr c, jr_004_5bea

jr_004_5bea:
    cp $00
    ld a, [hl]
    add b
    sbc h
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    ld [$08e3], sp
    db $e3
    ld [$0ce3], sp
    push hl
    inc e
    push bc

Jump_004_5bff:
    add h
    rst $38
    add h
    rst $38
    ld c, b
    ld a, a
    jr z, jr_004_5c46

    jr z, jr_004_5c48

    jr z, jr_004_5c4a

    inc e
    rla
    inc e
    rla
    db $fc
    add a
    db $fc
    add a
    ld a, b
    rst $08
    jr c, @-$0f

    jr c, @-$0f

    jr c, @-$0f

    inc e
    rst $30
    inc e
    rst $30
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    rst $00
    ld a, h
    rst $00
    ld a, h
    adc a
    ld hl, sp-$71
    ld sp, hl
    adc a
    ld a, [$fa0f]
    rla
    db $fc
    daa
    db $fc
    ld hl, sp+$4f
    ld hl, sp-$71
    db $fc
    add a
    db $fc

jr_004_5c46:
    rlca
    db $fc

jr_004_5c48:
    rlca
    db $fc

jr_004_5c4a:
    rlca
    db $fc
    rlca
    cp $03
    ld hl, sp+$48
    ld hl, sp-$78
    db $fc
    add h
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    ld b, $20
    nop
    ld e, $13
    ld e, $13
    ld e, $13
    ld a, $23
    ccf
    ld hl, $213f
    ccf
    jr nz, jr_004_5cb0

    jr nz, jr_004_5c91

    di
    ld e, $f3
    ld e, $f3
    ld a, $e3
    ccf
    pop hl
    ccf
    pop hl
    cp a
    ldh [$bf], a
    ldh [$0a], a
    rst $38
    ld [de], a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $21ff
    rst $38
    and c
    rst $38
    and c

jr_004_5c91:
    rst $38
    ld b, e
    cp $83
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $feff
    inc bc
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp $03

jr_004_5cb0:
    db $fc
    rlca
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    db $fd
    rlca
    ei
    ei
    db $fd
    db $fd
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld b, $04
    rst $28
    db $e3
    db $e3
    jp Jump_000_06c3


    inc b
    ld bc, $0406
    nop
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_004_5d29

    jr nz, jr_004_5d4b

    ld [hl], b
    ld c, a
    ld a, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$7f], a
    ret nc

    ld a, a
    ret z

    pop bc
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    inc bc
    cp $83
    cp $83
    cp $c3
    cp $e7
    cp h
    rst $20
    cp h
    rst $30
    sbc h
    rst $30
    sbc h
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [$bf], a
    ret nz

    ld a, a
    ret nz

    ld a, a

jr_004_5d29:
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [$bf], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, $06
    nop
    ldh [$e0], a
    and $e6
    db $f4
    db $f4
    pop af
    pop af
    ei

jr_004_5d4b:
    ei
    ld b, $08
    nop
    ld a, c
    ld a, c
    inc sp
    inc sp
    and a
    and a
    adc a
    adc a
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ld hl, sp+$47
    rst $00
    add b
    add b
    pop bc
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ld hl, $1e3f
    ld e, $03
    cp $83
    cp $83
    cp $83
    cp $83
    rst $38
    call nz, $38fc
    jr c, jr_004_5d86

jr_004_5d86:
    nop
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [$bf], a
    ret nz

    ld a, a
    ret nz

    rst $38
    ld b, b
    ld a, a
    jr nc, jr_004_5dd4

    rrca
    rrca
    inc e
    call $cd1c
    inc a
    adc l
    inc a
    adc l
    ld a, $9e
    ld a, $9e
    ld a, $8e
    ld a, $8e
    ld b, $04
    nop
    inc e
    nop
    ld h, e
    inc e
    add b
    ld a, a
    ld bc, $e7fe
    jr @+$1a

    rst $20
    rrca
    ldh a, [$38]
    rst $00
    ldh [$1f], a
    nop
    rst $38
    rra
    ldh [$f1], a
    ld c, $80
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld c, c
    or a
    xor h
    ld a, e
    res 7, [hl]
    pop bc
    ld a, [hl]
    and d
    ld e, l
    ld a, [hl]
    add c

jr_004_5dd4:
    jp $f03c


    ldh a, [$e1]
    pop hl
    add $c7
    sbc c
    sbc a
    ld hl, $413f
    ld a, a
    ld b, c
    ld a, a
    add d
    rst $38
    ld b, b
    ld b, b
    cp c
    ld sp, hl
    dec h
    db $fd
    inc hl
    cp $13
    cp $13
    cp $11
    rst $38
    ld de, $f7ff
    rst $30
    rst $38
    ld [$08ff], sp
    rst $38
    jr @-$07

    inc e
    rst $20
    inc a
    rst $20
    inc a
    rst $00
    ld a, h
    add c
    add c
    add $47
    ld hl, sp+$3f
    ldh [$3f], a

jr_004_5e0e:
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ld hl, sp+$4f
    ld a, b
    ld c, b
    db $fc
    add h
    rst $38
    add e
    cp $83
    cp $83
    db $fc
    add a
    db $fc
    add a
    db $fc
    add a
    ld b, $06
    nop
    inc e
    nop
    and d
    inc e
    pop hl
    ld e, $31
    adc $0e
    pop af

jr_004_5e33:
    nop
    rst $38
    dec e
    ld [c], a
    cp [hl]
    ld c, l
    ld a, a
    add [hl]
    ld a, a
    add d
    ld a, $c1
    pop bc
    ld a, $3f
    ret nz

    ldh [$1f], a
    jr c, jr_004_5e0e

    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rrca
    ldh a, [rP1]
    rst $38
    ld b, $00

jr_004_5e55:
    add hl, bc
    nop
    nop
    jr c, @+$0a

    ld c, h
    inc a
    add [hl]
    ld a, [hl]
    inc bc
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add hl, bc
    inc b
    nop
    jr jr_004_5e73

    inc l
    inc e
    ld b, a
    inc a
    add b
    ld a, a
    nop
    rst $38

jr_004_5e73:
    nop
    rst $38
    ld a, $80
    ld a, $80
    ld e, [hl]
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, [hl]

jr_004_5e80:
    ld b, b
    ld e, [hl]
    ld b, c
    ld l, h

jr_004_5e84:
    ld h, c
    nop

jr_004_5e86:
    ldh a, [rP1]

jr_004_5e88:
    ldh a, [$08]
    ldh [$08], a
    ld h, b
    jr jr_004_5eef

    jr @-$5e

    jr jr_004_5e33

    jr jr_004_5e55

    ldh [$e0], a
    add b
    adc a
    nop
    scf
    ld [$1c63], sp
    nop
    ld e, [hl]
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e3], a
    ld a, h
    ld a, l
    cp h
    inc a
    nop
    nop
    nop
    rst $38
    nop
    rst $20
    jr jr_004_5e80

    inc a
    add b
    ld a, [hl]

jr_004_5ec0:
    nop
    ld a, a

jr_004_5ec2:
    nop
    rst $38
    nop
    nop
    ld bc, $fc00
    nop
    xor $00
    sub $00
    jr c, jr_004_5ed0

jr_004_5ed0:
    cp $00
    ld a, [hl]
    add b
    sbc h
    add hl, bc
    inc b
    nop
    ld b, b
    ld b, b

jr_004_5eda:
    add hl, bc

jr_004_5edb:
    inc b
    ldh [$f0], a
    ldh a, [$f1]
    pop af
    ei
    ei
    add hl, bc
    ld [$0100], sp
    ld bc, $0303
    add a
    add a
    adc a
    adc a
    ld l, b

jr_004_5eef:
    ld h, e
    ld [hl], b

jr_004_5ef1:
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld d, b
    ld d, a
    ld d, b
    ld d, [hl]
    jr jr_004_5ec0

    jr jr_004_5ec2

    jr c, jr_004_5e84

    jr c, jr_004_5e86

    jr c, jr_004_5e88

jr_004_5f08:
    ld a, b
    nop
    ld a, b
    nop
    ld hl, sp+$00
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld b, a
    ld d, b
    rlca
    jr nc, jr_004_5f1b

    jr nc, jr_004_5f19

jr_004_5f19:
    ld a, [de]
    nop

jr_004_5f1b:
    ld c, $00
    nop
    cp d
    jr c, jr_004_5edb

    jr c, jr_004_5eda

    jr nc, @+$79

    ld [hl], b
    rst $28
    ldh [$ef], a
    ldh [$87], a
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop

jr_004_5f36:
    cp [hl]
    nop
    sbc [hl]
    add hl, bc
    dec b
    nop
    ldh [$64], a
    ld hl, sp+$3c
    ld hl, sp+$3c
    db $f4
    jr nc, jr_004_5ef1

    jr nz, jr_004_5eef

    jr nz, jr_004_5f49

jr_004_5f49:
    jr nz, jr_004_5f4b

jr_004_5f4b:
    nop
    add hl, bc
    ld b, $fb
    pop af
    pop af
    db $e4
    db $e4
    rst $08

jr_004_5f54:
    rst $08
    sbc a

jr_004_5f56:
    sbc a
    ld a, $3e
    add hl, bc
    inc b
    rst $28
    db $e3
    db $e3
    set 1, e
    add hl, de
    add hl, de
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld d, b
    ld d, [hl]
    jr nc, @+$38

    jr nc, @+$38

    jr c, jr_004_5faa

    jr c, jr_004_5fac

    jr c, jr_004_5fae

    inc a
    dec a
    inc a
    dec a
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    jr nc, jr_004_5f08

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ld e, $80
    jr nz, jr_004_5f36

    rra
    rra
    cp e
    jr c, jr_004_5f56

    jr c, jr_004_5f54

    jr nc, jr_004_6016

    ld [hl], b
    rst $28
    ldh [$ef], a
    ldh [$86], a
    add b
    ld [$6068], sp
    ld h, b

jr_004_5faa:
    ld [hl], b
    ld [hl], a

jr_004_5fac:
    and b
    daa

jr_004_5fae:
    sbc b
    inc bc
    ld a, h
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $f6
    nop
    ld hl, sp+$00
    cp $00
    cp $00
    rra
    ldh [$e3], a
    ld a, h
    ld a, l
    cp h
    inc a
    ld a, [hl]
    ld a, [hl]
    ld e, $1e
    ld c, [hl]
    ld c, [hl]
    xor $ee
    rst $20
    rst $20
    db $f4
    db $f4
    pop af

jr_004_5fd5:
    pop af
    ei
    ei
    add hl, bc
    inc b
    rst $38
    cp $fe
    ld a, h
    ld a, h
    ld a, c
    ld a, c
    inc sp
    inc sp
    and a
    and a
    adc a
    adc a
    jr c, jr_004_6024

    jr jr_004_6006

    jr jr_004_6008

    db $10
    rla
    db $10
    rla
    ld [$080b], sp
    dec bc

jr_004_5ff5:
    inc c
    dec c
    jr nc, @-$7e

    jr nc, @-$7e

    jr nz, @-$7e

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a

jr_004_6006:
    ldh [$60], a

jr_004_6008:
    ld h, b
    ld [hl], b
    ld [hl], a
    and b
    daa
    sbc b
    inc bc
    ld a, h
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38

jr_004_6016:
    nop
    ld b, $f6
    nop
    ld hl, sp+$00
    cp $00
    cp $00
    rra
    ldh [$e3], a
    ld a, h

jr_004_6024:
    ld a, l
    cp h
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ld e, $80
    jr nz, jr_004_5fd5

    rra
    rra
    cp e
    jr c, jr_004_5ff5

    jr c, @-$47

    jr nc, jr_004_60b5

    ld [hl], b
    rst $28
    ldh [$ef], a
    ldh [$86], a
    add b
    ld [$0068], sp
    nop
    nop
    rrca
    nop
    scf
    ld [$1c63], sp
    nop
    ld e, [hl]
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    nop
    nop
    nop
    db $fc
    nop
    xor $00
    sub $00
    jr c, jr_004_6062

jr_004_6062:
    cp $00
    ld a, [hl]
    add b
    sbc h
    inc c
    dec c
    inc b
    dec b
    add hl, bc
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add hl, bc
    inc b
    nop
    rst $38
    nop
    ld c, a
    nop
    add b
    or b
    ret nz

    rst $18
    ret nz

    pop de
    adc $c0
    cp a
    add b
    ld a, a
    nop
    sbc e

Call_004_6094:
    jr jr_004_60a7

    ld d, h
    ld bc, $01ec
    db $fc
    ld [bc], a
    ld a, [$f707]
    rrca
    ld l, a
    sbc h
    inc e
    cp [hl]
    ld a, $dc
    dec e

jr_004_60a7:
    ldh [$03], a
    ldh a, [rTAC]
    ldh [rTAC], a
    ld e, b
    dec de
    inc a
    dec a
    ld a, b
    ld a, c
    ld c, $ee

jr_004_60b5:
    rla
    rst $00
    dec de
    jp $c31b


    dec de
    jp $e30b


    rla
    rst $10
    ccf
    cp a
    add hl, bc

jr_004_60c4:
    jr nz, jr_004_60c6

jr_004_60c6:
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], a
    jr nz, jr_004_60f3

    jr jr_004_60d1

    ld a, h
    nop
    ld a, [hl]

jr_004_60d1:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld b, $f6
    nop
    ld hl, sp+$00
    cp $00
    cp $00
    ld e, $e0
    ld [c], a
    ld a, h
    ld a, h
    cp h
    inc a
    nop
    nop
    ld a, $9e
    ld a, $9e
    ld a, $9e
    ld a, $8e
    inc a
    adc l
    inc a

jr_004_60f3:
    adc l
    inc e
    call Call_004_5009
    nop
    ld a, a
    nop
    ld c, a
    nop
    nop
    jr nc, jr_004_6140

    ld e, a
    ld b, b
    ld d, c
    ld c, [hl]
    ld b, b
    ccf

jr_004_6106:
    nop
    ld a, a
    nop
    cp d
    jr c, jr_004_60c6

    jr c, jr_004_60c4

    jr nc, @+$78

    ld [hl], b
    xor $e0
    xor $e0
    add [hl]
    add b
    ld [$1c68], sp
    call $c51c
    inc c
    push hl
    ld [$08e3], sp
    db $e3
    ld [$00e3], sp
    rst $30
    nop
    rst $30
    add hl, bc
    ld sp, $ff00
    dec e

jr_004_612e:
    ld [c], a
    cp [hl]
    ld c, l
    ld a, a
    add [hl]
    ld a, a

jr_004_6134:
    add d
    ld a, $c1
    pop bc
    ld a, $3f
    ret nz

    ldh [$1f], a
    jr c, jr_004_6106

    rrca

jr_004_6140:
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rrca
    ldh a, [rP1]
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld e, $00
    jr nz, jr_004_6179

    rra
    rra
    ld c, $ee
    ld d, $c6
    ld a, [de]
    jp nz, $c21a

    ld a, [de]
    jp nz, $a22a

    ld [hl], $b6
    ld e, $1e
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_004_612e

    jr c, jr_004_6134

jr_004_6179:
    ld a, h
    ld a, l
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr @-$65

    ld c, $6e
    rlca
    ld [hl], a
    nop
    nop
    nop
    rst $38
    nop
    rst $20
    jr @-$3b

    inc a
    add b
    ld a, [hl]
    nop
    ld a, a
    nop
    rst $38
    add hl, bc
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e3], a
    ld a, h
    ld a, l
    cp h
    inc a
    add hl, bc
    nop
    inc b
    inc b
    stop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, $1e
    inc c
    db $ec
    jr jr_004_61e1

    ldh a, [$f7]
    nop
    rrca
    nop
    db $fc
    ld [bc], a
    ld a, [$0606]
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    nop

jr_004_61e1:
    ld a, a
    nop
    sbc a
    nop
    rst $28
    nop
    rst $30
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    ld sp, hl
    nop
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, [hl]
    nop
    ld a, $00
    ld a, $00
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, h
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
    rst $38
    nop
    rst $38
    nop
    inc b
    ld de, $3fff
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    inc b
    db $10
    ld a, [hl]
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    nop
    ldh [rP1], a
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
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
    rst $38
    nop
    cp $00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    ld a, [hl]
    nop
    inc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, $00
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
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rst $00
    nop
    pop af
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    di
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    di
    nop
    rst $08
    nop
    ccf
    nop
    ld hl, sp+$00
    db $e3
    nop
    adc a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_004_6306:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_004_630b:
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$cf]

jr_004_6322:
    jr nc, jr_004_630b

    jr jr_004_6306

    rra
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    ld c, $f3
    inc c
    rst $20
    jr @-$17

    jr jr_004_63b5

    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    nop
    db $fc
    nop
    ld a, h
    nop
    ld a, h
    nop
    inc a
    nop
    ld a, $00
    ld e, $00
    inc c
    add c
    add c
    nop
    inc a
    ld bc, $011d
    dec e
    ld bc, $811d
    sbc c
    jp $c3db


    jp $e7e7


    nop
    inc a
    add b
    cp h
    add b
    cp h
    add b
    sbc h
    ret nz

    call c, $d8c0
    jp $e7c3


    rst $20
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, $00
    ld a, h
    nop
    ld a, b
    nop
    jr nz, jr_004_6322

    sbc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38

jr_004_63b5:
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    nop
    ld [hl], c
    nop
    ccf
    nop
    ld c, [hl]
    ld de, $1971
    ld a, e
    add hl, de
    ld a, e
    inc e
    ld a, l
    inc e
    ld a, l
    nop
    jp Jump_004_7e00


    add c
    cp l
    jp $04c3


    ld [$00ff], sp
    inc c
    nop
    db $fc
    nop
    ld [hl-], a
    adc b
    adc [hl]
    sbc b
    cp [hl]
    sbc b
    cp [hl]
    sbc b
    cp [hl]
    sbc b
    cp [hl]
    nop
    add c
    nop
    rst $38
    nop
    ld a, $c1
    db $dd
    jp $e3db


    db $eb
    db $e3
    db $eb
    rst $20
    rst $28
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    inc e
    ld a, l
    inc e
    dec e
    nop
    ld h, c
    nop
    ld a, [hl]
    nop
    ld e, $20
    ld l, [hl]
    jr nc, jr_004_64c0

    inc a
    ld a, h
    nop
    rlca
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $38
    ld a, [hl]

jr_004_6462:
    nop
    ld b, [hl]
    nop
    ld a, [hl-]
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld b, $30
    ld [hl], b
    ld a, $7e
    inc e
    dec e
    ld c, $6e
    inc bc
    ld [hl], e
    nop
    ld a, h
    nop
    ld e, a
    nop
    inc hl
    inc e
    ld a, h
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    cp b
    ld b, a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_004_6462

    jr nc, @+$01

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
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf

jr_004_64c0:
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    inc e
    ld a, l
    inc e
    dec e
    nop
    ld h, c
    nop
    ld a, [hl]
    nop
    ld e, $20
    ld l, [hl]
    jr nc, jr_004_6560

    inc a
    ld a, h
    jr c, jr_004_6570

    nop
    ld b, [hl]
    nop
    ld a, [hl-]
    nop
    ld a, h

jr_004_64f8:
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld b, $30
    ld [hl], b
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add c
    ld a, [hl]
    jp $c33c


    inc a
    rst $38
    nop
    rst $38
    or h
    rst $38
    ld a, e
    rst $38
    adc $04
    ld [$00ff], sp
    ld a, h
    nop
    inc a
    nop
    inc a
    nop
    inc e
    nop
    ld e, $00
    ld e, $00
    inc c
    ld bc, $0001
    ld e, $00
    ld e, $00
    ld a, $00
    ld a, $00
    ld a, h
    nop
    ld a, b
    nop
    jr nz, jr_004_64f8

    sbc [hl]
    nop
    ld a, a
    nop
    ld a, [hl]
    nop

jr_004_6560:
    inc a
    nop
    inc a
    nop
    jr jr_004_6566

jr_004_6566:
    jr jr_004_6568

jr_004_6568:
    inc c
    nop
    nop
    nop
    ld a, $00
    ld e, $00

jr_004_6570:
    ld e, $00
    inc e
    nop
    inc a
    nop
    jr c, jr_004_6578

jr_004_6578:
    ld [hl], b
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    ccf
    ret nz

    rst $18
    ld b, b
    ld e, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld [hl], b
    ld [hl], a
    or b
    or a
    or b
    or a
    rrca
    ldh [rIF], a
    ldh [$1f], a
    ret nz

    rra
    ret nz

    ccf
    add b
    ccf
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, e
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    cp b
    cp e
    ret c

    db $db
    ret c

    db $db
    call c, $dcdd
    db $dd
    ld [bc], a
    ld b, $ee
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    nop
    ld a, a
    add b
    cp a
    add b
    cp a
    ret nz

    sbc $c0
    sbc $e1
    db $ec
    db $e3
    add sp, -$09
    ldh a, [rP1]
    ldh [rNR34], a
    nop
    ld e, [hl]
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ld h, b
    ld l, a
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, e
    cp h
    dec a
    cp [hl]
    ld a, $5f
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    sbc a
    rra
    rst $18
    rra
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ld [bc], a
    ld [$02fd], sp
    ld [$00fe], sp
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0201
    ld a, [bc]
    nop
    ld [bc], a
    ld [$3fff], sp
    ccf
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    ccf
    ret nz

    rst $08
    ldh a, [$f3]
    db $fc
    db $fc
    ld [bc], a
    ld [$00ff], sp
    ccf
    nop
    rrca
    ld [hl], b
    ld [hl], e
    inc a
    inc a
    ld [bc], a
    inc b
    rra
    ld [bc], a
    inc b
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $08
    ldh a, [$f3]
    db $fc
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    ld [bc], a
    dec b
    nop
    inc a
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, a
    nop
    ld a, [hl]
    nop
    inc a
    nop
    inc a
    nop
    jr jr_004_66f7

jr_004_66f7:
    jr jr_004_66f9

jr_004_66f9:
    inc c
    nop
    nop
    nop
    ld a, $00
    ld e, $00
    ld e, $00
    inc e
    nop
    inc a
    nop
    jr c, jr_004_6709

jr_004_6709:
    ld [hl], b
    nop
    nop
    rst $38
    rst $38
    inc sp
    inc sp
    ld bc, $00cd
    cp $00
    cp $01
    db $fd
    inc bc
    dec sp
    rst $00
    rst $00
    db $e3
    db $e3
    ret nz

    call c, $bf80
    nop
    ld a, a
    nop
    ld a, a
    add b
    or e
    call z, $ffcc
    rst $38
    nop
    add e
    nop
    ld a, h
    ld a, h
    ld [bc], a
    rlca
    rst $38
    db $fc
    db $fc
    ld a, b
    ld a, e
    nop
    pop hl
    nop
    sbc [hl]
    ld e, $02
    rlca
    ld a, a
    ld a, h
    ld a, h
    jr c, @+$3d

    nop
    add a
    nop
    ld a, c
    ld a, b
    ld [bc], a
    rlca
    cp $7c
    ld a, h
    jr c, @+$3a

    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f3]
    ld b, b
    ld c, a
    nop
    cp a
    nop
    cp $01
    ld sp, hl
    rlca
    rlca
    adc [hl]
    adc [hl]
    nop
    ld [hl], c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e1], a
    cp $fe
    rst $38
    rst $38
    rrca
    rrca
    inc bc
    di
    nop
    db $fc
    nop
    rst $38
    nop
    rrca
    ldh a, [$f7]
    ldh a, [$f0]
    nop
    ld [hl], c
    nop
    ccf
    nop
    ld c, [hl]
    ld de, $1971
    ld a, e
    add hl, de
    ld a, e
    inc e
    ld a, l
    inc e
    ld a, l
    rst $38
    rst $38
    cp $fe
    ld b, $06
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld bc, $cfc7
    ld bc, $0029
    and $00
    rst $18
    nop
    rst $18
    nop
    inc a
    jp $e7d3


    rst $28
    jr c, jr_004_67eb

    jr c, @-$45

    db $10
    ld d, c
    db $10
    ld d, d
    db $10
    ld d, d
    nop
    ld c, d
    nop
    cp [hl]
    nop
    pop bc
    nop
    inc c
    nop
    db $fc
    nop
    ld [hl-], a
    inc c
    adc [hl]
    inc e
    cp [hl]
    inc e
    cp [hl]
    inc e
    cp [hl]
    inc e
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    ld bc, $01fc
    db $fc
    inc bc
    ld hl, sp+$03
    ld hl, sp+$00
    jp $c11c


    inc a
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    cp [hl]

jr_004_67eb:
    nop
    cp l
    nop
    cp l
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e3], a
    db $fc
    db $fd
    db $fc
    db $fd
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [hl]
    inc bc
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rIF]
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [$bd], a
    nop
    cp l
    nop
    cp l
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld [bc], a
    inc b
    ld a, [hl]
    ld a, a
    ld a, a
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    rst $28
    rst $28
    ld [bc], a
    ld b, $f7
    ld [bc], a
    ld [$00fb], sp
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$05
    db $fc
    db $fd
    cp $fe
    nop
    cp $01
    db $fc
    ld bc, $03fc
    ld hl, sp+$03
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rIF]
    ldh [rP1], a
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    and b
    cpl
    and b
    cpl
    and b
    cpl
    or b
    scf
    or b
    scf
    ret c

    dec de
    ret c

    dec de
    call c, $dc1d
    dec e
    xor $0e
    xor $0e
    ld a, a
    nop
    cp a
    add b
    rst $18
    ret nz

    rst $28
    ldh [$f7], a
    ldh a, [$fb]
    ld hl, sp-$03
    db $fc
    cp $fe
    ld a, a
    nop
    cp a
    add b
    rst $18
    ret nz

    rst $28
    ldh [$f7], a
    ldh a, [$fb]
    ld hl, sp-$03
    db $fc
    cp $fe
    ld a, l
    ld bc, $81bd
    db $dd
    pop bc
    xor $e0
    or $f0
    ld a, [$fdf8]
    db $fc
    cp $fe
    rst $30
    ldh a, [$f7]
    ldh a, [$fb]
    ld hl, sp-$05
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    ld [bc], a
    inc b
    ld a, [hl]
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    rra
    rst $18
    rra
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fe
    cp $00
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    ei
    ei
    db $fd
    db $fd
    cp $fe
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ldh [rP1], a
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rlca
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    nop
    ld a, $00
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    ld a, $00
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
    rst $38
    ld [bc], a
    nop
    inc b
    inc b
    stop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fc
    cp $fc
    cp $0c
    ld c, $00
    ldh a, [rP1]
    cp $70
    cp $fc
    cp $fc
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, $7e
    jr c, jr_004_69b0

    nop
    ld b, a
    ld bc, $077f
    ld a, [hl]
    inc a
    ld a, h

jr_004_697f:
    jr c, jr_004_69fd

    jr c, jr_004_69ff

    jr c, jr_004_6a01

    jr c, jr_004_697f

    ld [hl], b
    ld hl, sp+$70
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    rst $38
    cp $ff
    cp $fd
    ld hl, sp-$07
    ldh a, [$fa]
    pop af
    ei
    nop
    dec b
    ld [bc], a
    push af
    ld [bc], a
    or $00
    ld [$50c4], a
    adc a
    sub h
    dec bc

jr_004_69b0:
    db $10
    rrca
    ld d, b
    rrca

jr_004_69b4:
    ld c, b
    rlca
    ld l, b
    rlca
    ld l, d
    dec b
    add sp, $47
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
    rst $38
    nop
    rst $38
    nop
    inc b
    ld de, $0fff
    rst $20
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    ccf
    adc a
    ccf
    sbc [hl]
    ccf
    sbc [hl]
    ld a, $9c
    rst $38
    rst $00
    rst $08
    add e
    or e
    ld bc, $10ad
    and [hl]
    jr jr_004_6a41

    jr nz, jr_004_6a0e

    ld b, b
    adc a
    ld b, e
    inc a
    ld a, [hl]
    jr c, jr_004_6a6e

    jr jr_004_6a70

    inc e
    ld a, $1c
    ld a, $08
    ld e, $00

jr_004_69fb:
    inc e
    nop

jr_004_69fd:
    jr jr_004_69fb

jr_004_69ff:
    inc b
    rrca

jr_004_6a01:
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    inc b
    dec bc
    rst $38
    inc b
    stop
    push af

jr_004_6a0e:
    ld [c], a
    db $f4
    db $e3
    db $f4
    db $e3
    db $f4
    ld h, e
    db $f4
    ld b, d
    ld [hl], h
    ld b, d
    ld l, b
    ld b, $08
    rlca
    ld [hl], h
    inc hl
    jr c, jr_004_69b4

    inc a
    add hl, de
    ld a, h
    dec e
    db $fc
    dec a
    ld hl, sp+$7b
    add b
    rlca
    nop
    ccf
    ld a, $9c
    ld e, l
    adc b
    ld e, l
    adc b
    ld e, d
    add c
    inc h
    jp $e619


    ld bc, $02fe
    db $fc
    ld e, a
    adc a
    ld e, a
    adc a

jr_004_6a41:
    rra
    adc a
    cp a
    rra
    cp a
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    nop
    rra
    nop
    rst $28
    ret nz

    rst $28
    ldh [$f6], a
    ldh [$f6], a
    ldh a, [$f9]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    nop
    rst $08
    nop
    or a
    jr nz, jr_004_6ada

    ld [hl], b
    ei
    ld [hl], b
    ei
    ld hl, sp-$03
    ld hl, sp-$03
    db $fc
    db $fc
    inc b

jr_004_6a6e:
    ld a, [bc]
    rst $38

jr_004_6a70:
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    ld a, h
    cp $7c
    cp $7c
    cp $00

jr_004_6a87:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_004_6a8c:
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$cf]
    jr nc, jr_004_6a8c

    jr jr_004_6a87

    rra
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    ld c, $f3
    inc c
    rst $20
    jr @-$17

    jr jr_004_6b36

    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]

jr_004_6ada:
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, [hl-]
    ld a, a
    ld [hl-], a
    ld a, a
    jr nc, jr_004_6b61

    ld [hl], b
    ld hl, sp+$70
    ld hl, sp-$10
    ld hl, sp-$20
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$e0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rP1]
    or b
    nop
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_004_6b0c:
    ld a, a
    add b
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38

jr_004_6b36:
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    jr @+$01

    ld bc, $0ffe
    pop af
    ld e, $ef
    ld hl, sp-$71
    cp $03
    ld a, a
    ld hl, sp+$07
    rst $38
    db $fc
    ld a, a
    ld b, b
    ccf
    ld d, a
    jr c, jr_004_6b0c

    rla
    inc a
    inc bc
    cp a

jr_004_6b61:
    inc e
    sbc h
    rlca
    adc $83
    inc e
    rst $38
    pop hl
    ccf
    db $fc
    rst $00
    ld a, $f3
    rrca
    ld hl, sp+$1f
    pop hl
    cp $07
    ld hl, sp-$01
    sbc a
    db $fc
    and $3c
    or $9c
    ld a, l
    ldh [rNR33], a
    ldh a, [$7b]
    add c
    ei
    ld h, c
    rst $20
    jp $c03f


    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    and c
    rra
    and b
    rra
    xor h
    rra
    and b
    rra
    xor h
    rra
    ld a, b
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    ld a, [c]
    pop bc
    db $fd
    ldh a, [$fe]
    ld hl, sp-$02
    db $fc
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $71
    rst $38

jr_004_6be8:
    ld [$80ff], sp
    ld a, a
    add a
    ld a, a
    cp b
    ld a, a
    ld b, [hl]
    ccf
    ld b, c
    ccf
    ld e, [hl]
    ccf
    cpl
    rst $00
    xor a
    rst $08
    rra
    rst $08
    ld e, a
    adc a
    cp a
    rra
    cp a
    rra
    cp a
    rra
    ld e, a
    adc a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    cp b
    ld b, a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_004_6be8

    jr nc, @+$01

    nop
    rst $38
    nop

jr_004_6c1e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $10
    nop
    or a
    db $10
    dec sp
    nop
    rst $38
    nop
    rst $38
    nop
    and $00
    jp c, $ba10

    jr jr_004_6c1e

    inc a
    ld a, [hl]
    ccf
    ld a, a
    jr nc, jr_004_6ce3

    jr c, @+$7e

    ld a, h
    cp $fc
    cp $04
    ld [$c7ff], sp
    rst $38
    add e
    rst $00
    add c
    jp $c381


    nop
    add c
    nop
    ld bc, $0100
    nop
    nop
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add c
    ld a, [hl]
    jp $c33c


    inc a
    nop
    rst $38
    db $10
    rst $28
    dec bc
    db $fd
    ld a, b
    and a
    inc a
    db $db
    ld [hl], d
    cp l
    rst $38
    ld e, d
    db $dd
    rst $20
    nop
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    ld bc, $01fb
    ei
    ld bc, $01fb
    ei
    inc bc
    rst $30
    inc bc
    rst $30
    rlca
    rst $30
    rlca
    rst $28
    rlca
    rst $28

Call_004_6cdd:
    rrca
    rst $18
    rrca
    rst $18
    ld c, $df

jr_004_6ce3:
    ld c, $df
    ld c, $df
    ld e, $bf
    ld e, $bf
    inc e
    cp [hl]
    inc e
    cp [hl]
    inc a
    ld a, [hl]
    inc b
    ld a, [bc]
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc b
    nop
    ld a, [bc]
    ld a, [bc]
    dec b
    rst $38
    ld a, h
    db $fc
    ld a, b
    ld a, b
    jr nc, jr_004_6d78

    jr nz, @+$39

    nop
    adc a
    nop
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    cp $fc
    cp $7c
    ld a, a
    ld a, $3f
    ld e, $3f
    rra
    sbc a
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    nop
    cp $00
    db $fc
    ld bc, $01f9
    pop af
    inc bc
    ld [c], a
    ld b, $c4
    inc c
    adc b
    inc c
    nop
    ld l, d
    ld b, d
    jp z, $9a82

    ld [bc], a
    sbc d
    nop

Call_004_6d43:
    inc a
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    sbc a
    rrca

jr_004_6d4d:
    rst $18
    rrca
    call z, $cd04
    inc b
    xor $06
    and $02
    or $02
    rst $30
    inc bc
    ret nz

    sbc a
    ldh [$cf], a
    ldh [$cf], a

jr_004_6d61:
    ld [hl], b
    daa
    ld [hl], b
    daa
    ld a, b
    inc hl
    inc a
    ld de, $105e
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop

jr_004_6d78:
    add b
    nop
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    ld [hl], b
    jr nc, jr_004_6e08

    jr c, jr_004_6d4d

    inc e
    db $dd
    inc b
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_004_6d61

    db $10
    cp a
    db $10
    rst $18
    ld [$08df], sp
    rst $28
    inc b
    ld a, [bc]
    ld de, $f800
    inc bc
    di
    rlca
    rst $30
    rlca
    rst $20
    rrca
    db $ed
    rrca
    add sp, $1d
    ret c

    add hl, de
    ret nc

    nop
    ld a, a
    add b
    sbc a
    ldh [$ef], a
    ldh [$af], a
    or b
    add a
    sub b
    add a
    add b
    add a
    sub b
    add a
    add hl, de
    ret nc

    ld a, [de]
    ret nc

    ld [hl-], a
    and b
    ld [hl-], a
    and b
    ld h, $80
    cpl
    nop
    rrca
    nop
    rra
    nop
    ret nc

    ld b, a
    ret nc

    ld b, e
    sbc b
    inc bc
    xor b
    ld bc, $01ac
    inc [hl]
    nop
    or [hl]
    nop
    cp d
    nop
    nop
    rst $38
    nop
    pop af
    inc b
    ldh [rTIMA], a
    ldh [$0b], a
    ret nz

    dec bc
    add b
    dec bc
    add b
    dec de
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b

jr_004_6e08:
    ccf
    add b
    add hl, sp
    jp nz, RST_10

    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rSB], a
    ret nz

    inc bc
    add b
    rlca
    nop
    dec de
    nop
    scf
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    rst $30
    nop
    rst $28
    nop
    xor $00
    db $ec
    nop
    push hl
    nop
    push hl
    nop
    push bc
    nop
    rlc b
    adc e
    nop
    rla
    nop
    rla
    nop
    cpl
    nop
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    ld a, a
    nop
    dec e
    ld h, $80
    ccf
    adc e
    ld [hl], $82
    dec a
    call nz, $e19f
    adc [hl]
    ldh a, [$e7]
    db $fc
    nop
    db $db
    ld h, b
    inc bc
    pop af
    ld b, a
    or e
    rlca
    di
    rst $00
    ld [hl], e
    rrca
    rst $20
    rra
    rst $08
    ld a, [bc]
    dec b
    rst $38
    cp $fe
    jr c, jr_004_6ead

    nop
    rst $00
    ld bc, $c7ff
    ld a, [bc]
    dec b
    rst $38
    jp Jump_000_00c3


    inc a
    nop
    rst $38
    inc a
    rst $38
    cp $0a
    inc b
    rst $38
    ret nz

    sbc a
    ldh [$cf], a
    ldh [$cf], a
    ld [hl], b
    daa
    ld [hl], b
    daa
    ld a, b
    inc hl
    inc a
    ld de, $105e
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a

jr_004_6ead:
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, [c]
    push hl
    ldh a, [$a7]
    cp c
    ld [de], a
    jr jr_004_6f13

    jr jr_004_6f0d

    add hl, bc
    ld h, d
    nop
    ld [hl], a
    nop
    ld a, a
    rra
    rst $08
    ccf
    adc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sub e
    ld h, a
    inc hl
    ld h, e
    add hl, hl
    ld h, e
    add hl, hl
    nop
    nop
    rst $38
    nop
    ld a, [bc]
    inc c
    rst $38
    ret nz

    rra
    nop
    rlca
    ld hl, sp+$03
    db $fc
    pop af
    db $fc
    ld sp, hl
    jr c, jr_004_6f23

    call nz, $fe00
    call nz, $f801
    ld b, $e0
    rra
    rst $00
    rra
    adc a
    ld hl, $3e81
    add b
    ld a, a
    ld a, $7f
    ccf
    ld a, [bc]
    ld de, $ff00
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

jr_004_6f0d:
    nop
    rst $38
    nop
    ld a, [bc]
    inc b
    rst $38

jr_004_6f13:
    pop bc
    jp $3c00


    nop
    rst $38
    ld a, $ff
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$80
    ccf
    add b

jr_004_6f23:
    ccf
    add b
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld h, e
    ld l, c
    ld b, e
    add hl, de
    inc bc
    cp c
    inc bc
    ld hl, sp+$00
    ld hl, sp+$07
    ldh a, [rTAC]
    di
    rrca
    db $e3
    ld a, [bc]
    dec b
    rst $38
    cp $fe
    jr c, jr_004_6f80

    nop
    rst $00
    nop
    rst $38
    ld bc, $c7ff
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    inc bc

jr_004_6f57:
    ld sp, hl
    rlca
    di
    rlca
    di
    rrca
    rst $20
    nop
    ldh a, [rIF]
    nop
    rst $38
    rrca
    ld a, [bc]
    add hl, bc
    rst $38
    ld a, l
    nop
    nop
    rst $38
    nop
    ld a, [bc]
    inc c
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$c7]
    ldh a, [$e7]
    ld hl, sp-$0d
    ld hl, sp-$0d
    db $fc
    ld sp, hl
    rrca

jr_004_6f80:
    db $e4
    inc e
    ret z

    jr @-$36

    jr jr_004_6f57

    ld [hl], $a0
    ld [hl], l
    ld h, c
    ld l, l
    ld b, c
    ld l, l
    ld b, c
    ld a, l
    ld [hl], b
    ld a, c
    ld [hl], b
    ld hl, sp-$30
    ret c

    add b
    jp z, $d780

    nop
    cp a
    nop
    ld a, a
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    ld bc, $01fb
    ei
    ld bc, $00fd
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    ld e, a
    ld [$84af], sp
    or a
    add h
    rst $10
    jp nz, $c2d7

    db $eb
    ld h, c
    db $eb
    ld h, c
    di
    ld [hl], c
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$1f]
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp d
    nop
    cp l
    nop
    db $dd
    nop
    db $dd
    nop
    sbc $00
    sbc $00
    xor $00
    rst $28
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    add b
    ccf
    add b
    rra
    ret nz

    rra
    ret nz

    rrca
    ld h, b
    rrca
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    ld bc, $0180
    add b
    ld bc, $0100
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ld h, b
    rlca
    ld [hl], b
    rlca
    or b
    inc bc
    cp b
    inc bc
    cp b
    ld bc, $01b8
    cp h
    nop
    cp h
    nop
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    rst $20
    rra
    rst $08
    ccf
    sbc a
    ld a, a
    ccf
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ldh [$cf], a
    ldh a, [$e7]
    ld hl, sp-$0d
    db $fc
    ld sp, hl
    cp $fc
    rlca
    nop
    di
    ldh a, [$fc]
    db $fc
    rra
    rra
    pop hl
    ld bc, $60fe
    rst $38
    cp $ff
    rst $38
    ld hl, sp+$00
    add c
    ld bc, $1f1f
    rst $38
    rst $38
    cp $fe
    add hl, sp
    jr c, @-$77

    ld bc, $87ff
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    stop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    inc e
    db $e3
    rst $38
    nop
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

    ccf
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    ld hl, sp+$07
    db $e3
    inc e
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
    rst $38
    inc a
    jp Jump_000_00ff


    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
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
    rst $38
    nop
    rst $38
    nop
    ld a, [bc]
    ld [de], a
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
    inc bc
    ldh a, [rIF]
    ld hl, sp+$07
    ldh [$1f], a
    add b
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
    nop
    ld b, b
    ld b, b
    ld a, b
    ld a, b
    ld a, a
    ccf
    ld a, a
    ld l, a
    ccf
    dec a
    ccf
    ccf
    ccf
    dec sp
    ccf
    ccf
    ccf
    scf
    ld a, a
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    ld l, a
    ld a, a
    ld a, a
    ccf
    dec sp
    ccf
    ccf
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld e, $1e
    cp $fc
    cp $f6
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    call c, $fcfc
    db $fc
    ld l, h
    cp $fe
    cp $be
    cp $f6
    cp $fe
    db $fc
    call c, $fcfc
    nop
    nop
    db $e3
    db $e3
    db $fc
    db $fc
    ld a, [bc]
    ld a, [bc]
    rst $38
    nop
    nop
    rst $00
    rst $00
    ccf
    ccf
    ld a, [bc]
    ld a, [bc]
    rst $38
    nop
    cp $00
    ld hl, sp+$03
    db $e3
    rrca
    rst $08
    rra
    sbc a
    ccf
    cp a
    ccf
    ccf
    ld a, [bc]
    inc b
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    ldh a, [$fc]
    ldh [$fe], a
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    ld a, a
    inc bc
    ld a, a
    inc bc
    ccf
    ld bc, $7f00
    nop
    rra
    ret nz

    rst $00
    ldh a, [$f3]
    ld hl, sp-$07
    db $fc
    db $fd
    db $fc
    db $fc
    cp $fe
    rst $38
    cp a
    rst $38
    rst $30

Jump_004_71fb:
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ei
    ld a, [bc]
    inc c
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [$fe], a
    nop
    ldh a, [$0a]
    add hl, bc
    nop
    rst $38
    rrca
    rst $38
    ld bc, $001f
    inc bc
    ld a, [bc]
    add hl, bc
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
    ret nz

    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    inc bc
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ldh [rIE], a
    cp $ff
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp+$1f
    db $fc
    rst $38
    cp $03
    ld a, [bc]
    ld b, $ff
    ld a, [$e2ff]
    rst $38
    jp nz, $caff

    cp a
    jp z, $cabf

    cp a
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ld a, [bc]
    dec b
    rst $38
    xor a
    rst $38
    and a
    rst $38
    and e
    rst $38
    and e
    rst $38
    and e
    db $fd
    and e
    db $fd
    rlca
    rst $38
    rra
    ld hl, sp+$3f
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    ldh [rIE], a
    ld hl, sp+$1f
    db $fc
    rst $38
    cp $03
    cp $ff
    rst $38
    ld bc, $ffff
    rst $38
    ld bc, $ffff
    rst $38
    add b
    rst $38
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    ccf
    ldh [$1f], a
    rst $38
    rlca
    ld a, [bc]
    inc b
    rst $38
    ld bc, $ffff
    cp $03
    cp $ff
    db $fc
    rlca
    ld hl, sp-$01
    ldh [rIE], a
    ld b, $06
    ld a, [bc]
    ld b, $0e
    inc c
    inc c
    ld a, [bc]
    ld b, $0d
    jp z, $cabf

    cp a
    jp z, $e2bf

    cp a
    ld [c], a
    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    and e
    db $fd
    and e
    db $fd
    and e
    db $fd
    and e
    db $fd
    adc e
    db $fd
    adc e
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    add b
    rst $38
    add b
    ld a, [bc]
    inc b
    rst $38
    nop
    rst $38

jr_004_733a:
    rst $38
    rst $38

jr_004_733c:
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    db $10
    rst $38
    jr c, jr_004_733a

    jr c, jr_004_733c

    ld a, h
    rst $00
    ld a, h
    rst $00
    cp $83
    rst $38
    add c
    jr nz, @+$01

    ld [hl], b
    rst $18
    ld a, b
    rst $08
    inc a
    rst $20
    inc a
    rst $20
    ld a, $e3
    ld a, [hl]
    jp $81ff


    ld a, [bc]
    inc b
    dec b
    inc b
    inc b
    ld a, [bc]
    inc b
    ld b, $0a
    ld b, $02
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    add sp, -$41
    add sp, -$41
    ld [$eabf], a
    cp a
    jp z, $fcbf

    add b
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    ld a, [bc]
    add hl, bc
    nop
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec hl
    db $fd
    dec hl
    db $fd
    dec hl
    db $fd
    rrca
    rrca
    ld h, e
    ld h, e
    dec sp
    dec sp
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec b
    dec b
    inc b
    inc b
    ld b, $06
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    jr nz, @+$01

    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add a
    ld a, [bc]
    ld a, [bc]
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    rra
    nop
    rrca
    nop
    inc bc
    ld a, [bc]
    inc c
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
    ld bc, $06ff
    rst $38
    jr @+$01

    ld bc, $03ff
    rst $38
    inc b

Call_004_73ff:
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ei
    rst $38
    ld c, d
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [de]
    rst $38
    db $10
    rst $38
    ld [$3dff], sp
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    add c
    rst $38
    jp $ffff


    rst $38
    ccf
    rst $38
    ld b, e
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nc

    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ldh [rIE], a
    sbc b
    rst $38
    ld h, [hl]
    rst $38
    ld de, $0cff
    rst $38
    ld b, $ff
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    adc h
    rst $38
    ld a, [bc]
    nop
    ld [$3fc0], sp
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
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

jr_004_7477:
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
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
    inc bc
    db $fc
    inc bc
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    di
    inc c

jr_004_74b5:
    di
    inc c
    pop hl
    ld e, $c0
    ccf
    nop
    rst $38
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
    rst $38
    nop
    ld a, a
    add b
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_004_74b5

    jr nz, jr_004_7477

    ld h, b
    rrca
    ldh a, [rSB]
    cp $00
    nop
    ld bc, $0801
    inc b
    inc bc
    rlca
    dec b
    rrca
    rrca
    ccf
    scf
    ld a, a
    ld a, a
    nop
    nop
    add b
    add b
    ld [$c004], sp
    ldh [$a0], a
    ldh a, [$f0]
    db $fc
    db $ec
    cp $fe
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    xor $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [$0303]
    rra
    rra
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$03
    di
    rlca
    rst $00
    rra
    sbc a
    ccf
    ccf
    nop
    ldh a, [rTAC]
    add a
    ccf
    ccf
    ld [$ff0a], sp
    nop
    cp $00
    db $fc
    ld bc, $01fd
    ld sp, hl
    inc bc
    di
    rlca
    rst $00
    rra
    sbc a
    ccf
    ccf
    nop
    ld a, a
    nop
    ccf
    add b
    cp a
    add b
    sbc a
    ret nz

    rst $08
    ldh [$e3], a
    ld hl, sp-$07
    db $fc
    db $fc
    nop
    ldh a, [rTAC]
    add a
    rra
    rra
    ld c, a
    ld c, a
    rst $20
    rst $20
    rst $30
    rst $30
    di
    di
    ld sp, hl
    ld sp, hl
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
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
    nop
    ld [$ff04], sp
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ccf
    ld [$ff07], sp
    nop
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    db $fc
    ld [$ff04], sp
    ld a, a
    ld a, $7f
    jr jr_004_7622

    nop
    add hl, sp
    ld [$0009], sp
    cp $7c
    cp $18
    cp $00
    sbc h
    ld [$0009], sp
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    cp $03
    rst $38
    inc bc
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    ld hl, sp+$3f
    rst $38
    ld a, a
    ret nz

    rst $38
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rlca
    rst $38
    rra
    ld hl, sp+$3f
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ldh [rIE], a
    ld hl, sp+$1f
    db $fc
    rlca
    cp $03
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [rIE], a

jr_004_7622:
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    ld bc, $02f9
    ld a, [c]
    inc b
    db $e4
    nop
    ldh [$0c], a
    adc h
    ld a, $3e
    ld h, [hl]
    ld h, [hl]
    db $f4
    db $f4
    dec [hl]
    dec [hl]
    ld a, c
    ld a, c
    db $db
    db $db
    nop
    rra
    ret nz

    rst $00
    ldh a, [$f1]
    db $fc
    db $fc
    ld [$ff08], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    ret nz

    rst $00
    ldh a, [$f1]
    db $fc
    db $fc
    ld [$fe04], sp
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    rst $00
    rst $00
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    db $fc
    ld [$fe06], sp
    ld [$fc06], sp
    ld sp, hl
    ld sp, hl
    nop
    db $fc
    ld bc, $02f9
    ld a, [$f202]
    inc b
    db $f4
    dec b
    push af
    dec b
    push af
    dec b
    push hl
    nop
    rra
    nop
    rrca
    ld h, b
    ld l, a
    ldh [$ef], a
    ldh [$e7], a
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f3]
    add hl, bc
    jp hl


    dec bc
    rr [hl]
    sbc [hl]
    inc l
    xor h
    inc hl
    inc hl
    ld l, h
    ld l, h
    ld [hl], c
    ld [hl], c
    rlca
    rlca
    or e
    or e
    daa
    daa
    ld c, a
    ld c, a
    sbc a
    sbc a
    ccf
    ccf
    ld [$ff06], sp
    inc bc
    inc bc
    ld bc, $00c1
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$ff07], sp
    ccf
    ccf
    rlca
    rlca
    ld bc, $00c1
    ld hl, sp+$00
    db $fc
    rra
    rra
    rst $00
    rst $00
    rst $30
    rst $30
    di
    di
    ld sp, hl
    ld sp, hl
    ld [$fd04], sp
    db $fc
    db $fc
    ld [$f904], sp
    pop af
    pop af
    di
    di
    db $e3
    db $e3
    rst $00
    rst $00
    rrca
    rrca
    rra
    rra
    add hl, bc
    jp hl


    dec bc
    db $eb
    dec bc
    rl e
    db $d3
    rla
    rst $10
    rla
    rst $10
    rla
    rst $10
    rla
    rst $10
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$07
    db $fc
    db $fd
    add a
    add a
    scf
    scf
    ld [$7704], sp
    ld [hl], e
    ld [hl], e
    dec de
    dec de
    add hl, de
    add hl, de
    dec c
    dec c
    ei
    ei
    ld [$f104], sp
    ld [$e00a], sp
    ld [$0004], sp
    ld [$8008], sp
    ld [$c004], sp
    ccf
    cp a
    ccf
    cp a
    ccf
    ccf
    rrca
    rrca
    ld h, a
    ld h, a
    inc sp
    inc sp
    dec de
    dec de
    dec bc
    dec bc
    ld [$ff04], sp
    ld [$fe04], sp
    ld [$fc04], sp
    ld [$fd04], sp
    rra
    rra
    ld c, a
    ld c, a
    ld l, a
    ld l, a
    daa
    daa
    or a
    or a
    sub e
    sub e
    db $db
    db $db
    set 1, e
    rla
    sub a
    scf
    or a
    daa
    daa
    ld [$6f04], sp
    ld c, a
    ld c, a
    ld [$5f04], sp
    ld [$fc04], sp
    ld [$fe0c], sp
    inc c
    inc c
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [$000a], sp
    ld [$c004], sp
    add b
    add b
    ld [$000a], sp
    ld [$c006], sp
    ld [$8004], sp
    ld [$0006], sp
    add hl, hl
    xor c
    dec h
    and l
    inc [hl]
    or h
    ld [de], a
    jp nc, $d919

    inc e
    call c, $de1e
    rra
    sbc a
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    di
    di
    ld b, a
    ld b, a
    rla
    rla
    rst $20
    rst $20
    rrca
    rrca
    rst $38
    rst $38
    jp hl


    jp hl


    db $e4
    db $e4
    or $f6
    di
    di
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    ld [$5f04], sp
    rra
    rra
    ccf
    ccf
    ld [$7f06], sp
    ccf
    ccf
    rst $38
    ldh [rIE], a
    rra
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0008
    add hl, bc
    add hl, bc
    ld de, $ff00
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
    rst $38
    ret nz

    ccf
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$3f
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [$f3]
    inc c
    db $fd
    ld [bc], a
    cp $01
    cp $01
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $01fe
    cp $01
    cp $0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$7f], a
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    adc a
    ld [hl], b
    ld [hl], e
    adc h
    db $fd
    ld [bc], a
    cp $01
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ldh [$1f], a
    sbc [hl]
    ld h, c
    ld a, a
    add b
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
    rst $38
    nop
    cp $01
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
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
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [rSB], a
    cp $00
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
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$03], a
    db $fc
    inc e
    db $e3
    ld a, a
    add b
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
    rst $38
    nop
    cp $01
    ld a, l
    add d
    cp e
    ld b, h
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
    cp $00
    db $fd
    nop
    adc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    add hl, sp
    nop
    ld a, [hl]
    nop
    rra
    nop
    rst $08
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
    rst $38
    nop
    ccf
    nop
    adc a
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    cp $00
    db $fc
    nop
    ld [hl], c
    nop
    ld a, $00
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    add e
    nop
    nop
    nop
    xor $00
    ld a, l
    nop
    dec sp
    nop
    sbc e
    nop
    xor $00
    rst $08
    nop
    dec b
    nop
    nop
    nop
    ld [hl], e
    nop
    db $ec
    nop
    rst $38
    nop
    rra
    nop
    rst $28
    nop
    rst $30
    nop
    or $00
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $18
    nop
    rst $28
    nop
    adc a
    nop
    rlca
    nop
    rlca
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$03
    ldh a, [rTAC]
    ldh [rIF], a
    ret nz

    rrca
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc bc
    ret nz

    nop
    db $ec
    nop
    sbc $fe
    ld bc, $00ff
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ldh [$1f], a
    sbc h
    ld h, e
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [$03]
    ldh a, [rDIV]
    ld h, b
    adc a
    and b
    ld c, a
    ret nz

    cpl
    ret nc

    ld h, $f8
    nop
    db $fc
    nop
    nop
    sbc c
    nop
    ld h, a
    nop
    ld [hl], a
    nop
    or [hl]
    nop
    xor [hl]
    nop
    rrca
    add hl, bc
    dec b
    nop
    rst $30
    nop
    add d
    nop
    ld a, b
    nop
    call c, $8e00
    nop
    ld b, $09
    dec b
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, h
    nop
    add hl, de
    add hl, bc
    dec b
    nop
    di
    nop
    call z, Call_000_1900
    nop
    ld [hl], a
    nop
    rst $28
    nop
    rst $08
    nop
    ld [bc], a
    nop
    nop
    rra
    nop
    rrca
    ld h, b
    rlca
    ldh a, [$03]
    ld hl, sp+$01
    ld hl, sp+$01
    ldh [$09], a
    dec b
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$00
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    pop af
    ld c, $fb
    inc b
    ei
    inc b
    di
    inc c
    rst $08
    jr nc, @+$11

    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTMA]
    ld sp, hl
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop

jr_004_7a76:
    rra
    ldh [$e7], a
    jr jr_004_7a76

    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
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
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ldh [rIF], a
    ret nz

    add hl, de
    add b
    ld [hl], $80
    ccf
    inc bc
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    cp $00
    ld hl, sp+$01
    ldh a, [rTAC]
    ldh [$0d], a
    ldh [$0b], a
    ret nz

    dec b
    ret nz

    nop
    add b
    nop
    nop
    jr jr_004_7ad3

jr_004_7ad3:
    rst $30
    nop
    rst $38
    nop
    rra
    nop
    rst $08
    nop
    rst $28
    nop
    rst $00
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc a
    ld b, d
    ld e, d
    ld b, e
    ld c, e
    ld h, e
    ld h, e
    ld h, a
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    db $10
    rst $10
    db $10
    rla
    ld a, b
    ld a, e
    jr c, @+$3d

    nop
    cp $00
    cp $00

jr_004_7b05:
    cp $01
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $03fd
    ei
    db $e3
    db $eb
    ld b, c
    ld e, l
    add b
    cp [hl]
    add b
    or [hl]
    add b
    or e
    add b
    or e
    add h
    or l
    inc c
    ld l, l
    jr @+$5d

jr_004_7b22:
    adc h
    xor l
    adc h
    xor l
    call nz, Call_004_46d5
    ld d, [hl]
    ld b, [hl]
    ld d, [hl]
    ld [bc], a

jr_004_7b2d:
    sbc d
    ld [hl+], a
    xor d
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, [$fa02]
    inc bc
    ei
    ld b, $f6
    inc b
    push af
    inc b
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld e, a
    ld h, b

jr_004_7b49:
    ld l, a
    ld h, b
    ld l, a
    jr nc, jr_004_7b05

    db $10
    ld d, a
    inc bc
    ei
    inc bc
    ei
    dec b
    push af
    ld b, $f6
    ld b, $f6
    ld b, $f6
    ld a, [bc]
    ld [$ea0a], a
    inc c
    ld l, l
    inc c
    ld l, l
    ld [$086b], sp
    ld l, e

jr_004_7b68:
    inc c
    db $ed
    inc e
    db $dd
    jr jr_004_7b49

    ld [$23cb], sp

jr_004_7b71:
    xor e

jr_004_7b72:
    ld sp, $71b5
    ld [hl], l
    ld sp, $1135
    sub l

jr_004_7b7a:
    jr nz, jr_004_7b22

    jr nz, jr_004_7b2d

    ld b, b
    ld e, c

jr_004_7b80:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    ld b, b
    ld e, a
    ld h, b

jr_004_7b8f:
    ld l, a
    ld [$08eb], sp
    ld [$ea08], a

jr_004_7b96:
    jr jr_004_7b72

    ld de, $11d5
    push de
    ld sp, $63b5
    ld l, e
    db $10
    ld d, a
    adc b
    xor e
    adc b
    xor e
    call nz, Call_004_44d5
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld h, e
    ld l, e
    and e
    xor e
    inc c
    db $ed
    jr jr_004_7b8f

    jr @-$23

    db $10
    rst $10
    jr nc, jr_004_7b71

    jr nz, jr_004_7b68

    ld h, e
    ld l, e
    ld h, c
    ld l, c
    db $10
    rst $10
    jr nc, jr_004_7b7a

    jr c, jr_004_7b80

    ld a, b
    ld a, e
    ld a, b
    ld a, e
    or h
    or l
    adc $ce
    jp c, Jump_004_44da

    ld d, l
    add $d6
    jp nz, Jump_004_43d2

    ld e, e
    ld h, e
    ld l, e
    ld hl, $22a9
    xor d
    scf
    or a
    add hl, bc
    nop
    add hl, bc
    jr nz, @-$4f

    jr nz, jr_004_7b96

    db $10
    rst $10
    db $10
    ld d, a
    adc b
    xor e
    adc b
    xor e
    call c, Call_004_6cdd
    ld l, l
    nop
    rst $38
    inc a
    jp Jump_000_00ff


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
    nop
    rst $38
    nop
    cp $00
    cp $81
    ld a, l
    jp $c63b


    ld [hl], $cc
    inc c
    add b
    nop
    ld b, l
    ld d, l
    adc [hl]
    xor [hl]
    adc d
    xor d
    ld a, [de]
    ld e, d
    ld d, $56
    dec [hl]
    or l
    nop
    add b
    nop
    nop
    and d
    xor d
    ret nc

    call nc, $d5d1
    or e
    or e
    and [hl]
    and [hl]
    adc l
    adc l
    add hl, bc
    inc b
    nop
    add hl, bc
    inc b
    or $b5
    or l
    xor l
    xor l
    ld l, e
    ld l, e
    db $db
    db $db
    ld d, $16
    inc b
    inc b
    cp d
    cp d
    or l
    or l
    xor l
    xor l
    ld l, e
    ld l, e
    ld e, e
    ld e, e
    ld e, d
    ld e, d
    ld de, $2011
    jr nz, jr_004_7c8d

    dec sp
    db $dd
    db $dd
    xor [hl]
    xor [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    rst $20
    rst $20
    add h
    add h
    nop
    nop
    or [hl]
    or [hl]
    db $db
    db $db
    db $dd
    db $dd
    db $eb
    db $eb
    ld l, l
    ld l, l
    db $76
    db $76
    inc hl
    inc hl
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ldh [$ef], a
    ldh a, [$f7]
    ld a, b
    ld a, e
    nop
    nop
    cp $00
    db $fc
    ld bc, $03f8
    ldh a, [rP1]
    ldh a, [rTAC]
    ldh a, [rTAC]

jr_004_7c8d:
    ret nz

    ld bc, $3e80
    nop
    ld h, c
    nop
    rst $30
    nop
    rst $28
    nop
    reti


    nop
    halt
    rst $38
    nop
    db $fc
    nop
    ld a, e
    nop
    call z, $f200
    nop
    ld sp, hl
    nop
    call z, $b400
    nop
    db $fc
    nop
    ld a, $00
    db $dd
    add hl, bc
    dec b
    nop
    add hl, sp
    nop
    ld b, h
    add hl, bc
    dec b
    nop
    ld a, b
    nop
    cp $00
    nop
    nop
    ldh [rP1], a
    inc de
    nop
    inc b
    add hl, bc
    dec b
    nop
    ld [hl], b
    nop
    adc b
    nop
    nop
    nop
    ld c, $00
    sub c
    nop
    ld b, b
    add hl, bc
    dec b
    nop
    inc a
    nop
    rst $38
    add hl, bc
    dec b
    nop
    add hl, sp
    nop
    ld b, h
    add hl, bc
    dec b
    nop
    ld c, $00
    ld de, $0000
    nop
    ldh [rP1], a
    inc de
    nop
    inc b
    add hl, bc
    dec b
    nop
    ld bc, $0700
    nop
    rlca
    nop
    rra
    nop
    inc sp
    nop
    ld l, l
    nop
    ld a, a
    nop
    rra
    nop
    rst $20
    nop
    ei
    nop
    ccf
    nop
    rst $08
    nop
    rst $30
    nop
    rst $00
    nop
    cp e
    nop
    ei
    nop
    ei
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

jr_004_7d49:
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $18
    jr nz, jr_004_7d49

    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop

jr_004_7d61:
    cp $01
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ret nz

    ccf
    inc a
    jp Jump_000_00ff


    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    rst $38
    nop
    ldh a, [rIF]
    rst $08
    jr nc, jr_004_7d61

    ld b, b
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    db $fd
    ld [bc], a
    ld a, [$f202]
    inc bc
    di
    dec b
    push hl
    dec c
    db $ed
    dec c
    call $dd1d
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    ld l, a
    nop
    rst $38
    nop
    pop af
    nop
    adc $00

Jump_004_7e00:
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    dec sp
    nop
    ld a, l
    nop
    ei
    nop
    adc [hl]
    nop
    ld [hl], a
    nop
    rst $38
    nop
    pop af
    nop
    adc $00
    cp a
    nop
    rst $38
    nop
    inc sp
    nop
    call $ff00
    nop
    cp $00
    rst $38
    nop
    rst $00
    nop
    dec sp
    nop
    ld a, l
    nop
    ld bc, $8300
    nop
    ld a, e
    nop
    ldh a, [rP1]
    rst $28
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    sbc c
    nop
    ld h, [hl]
    nop
    rst $38
    nop
    cp $00
    dec a
    nop
    rst $00
    nop
    dec sp
    nop
    ld a, l
    nop
    add b
    nop
    add e
    nop
    add [hl]
    nop
    ld b, l
    nop
    rst $28
    nop
    rst $18
    nop
    ccf
    nop
    rst $38
    nop
    rst $30
    nop
    rst $28
    nop
    ld a, h
    nop
    cp e
    nop
    rst $38
    nop
    rst $00
    nop
    dec sp
    nop
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    pop af
    nop
    adc $00
    cp a
    nop
    rst $38
    nop
    rst $08
    nop
    cp c
    nop
    halt
    ld a, a
    nop
    rst $38
    nop
    rst $00
    nop
    dec sp
    nop
    ld a, l
    nop
    rra
    nop
    rst $28
    nop
    or $00
    sbc c
    nop
    ld [hl], a
    nop
    rst $28
    nop
    cp $00
    ld sp, hl
    ld e, $9e
    ld l, $ae
    inc b
    inc b
    nop
    ret nz

    nop
    xor $00
    sbc c
    nop
    ld [hl], a
    nop
    rst $38
    rst $08
    ret nc

    rst $10
    ret z

    ld e, a
    ld b, b
    adc a
    add b
    rlca
    ld [hl], b
    inc bc
    ld hl, sp+$01
    call z, $b400
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    sbc a
    ld h, b
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    nop
    cp $00
    ld a, a
    nop
    ret c

    nop
    or a
    nop
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_004_7f02

jr_004_7f02:
    nop
    ld a, a
    nop
    ccf
    add b
    rra
    ret nz

    rra
    ld b, b
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    db $fc
    inc bc
    ld sp, hl
    ld b, $f7
    ld [$10ef], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    sbc h
    nop
    ei
    nop
    jp $b900


    nop
    inc c
    nop
    nop
    nop
    ld hl, sp+$00
    rst $30
    nop
    ld a, a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $08
    nop
    add a
    nop
    nop
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$39
    add $7e
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

    ccf
    db $ec
    inc de
    cp $01
    rst $38
    nop
    di
    inc c
    db $ed
    ld [de], a
    cp $01
    rst $38
    nop
    ld a, [hl]
    add c
    inc a
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    db $fc
    inc bc
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    inc d
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    di
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    rst $08
    add hl, bc
    dec b
    rst $38
    db $fc
    rst $38
    di
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    jp Jump_000_3cff


    add hl, bc
    rlca
    rst $38
    sbc a
    sbc a
    ld h, a
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $18
    add hl, bc
    nop
    nop
    nop
    ld l, e
    ld b, $d3
    inc b
    rst $20
    add hl, bc
    adc $0b
    sbc [hl]
    rrca
    cp a
    rrca
    ld e, e
    rlca
    push af
    rlca
    db $76
    rlca
    or $05
    ld a, l
    inc bc
    rst $18
    nop
    or d
    ld bc, $00ff
    nop
    nop
    nop
    nop
    ld a, h
    ld [bc], a
    db $fc
    nop
    ld hl, sp+$01
    pop af
    inc bc
    pop hl
    rlca
    call nz, $ac07
    inc bc
    dec de
    nop
    dec de
    nop
    dec de
    nop
    ld a, [bc]
    nop
    ld h, b
    nop
    db $dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
