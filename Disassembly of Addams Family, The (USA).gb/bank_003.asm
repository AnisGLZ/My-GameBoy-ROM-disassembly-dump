; Disassembly of "Addams Family, The (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

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
    add l
    nop
    or [hl]
    nop
    or [hl]
    nop
    or [hl]
    nop
    add l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor l
    nop
    ld l, l
    nop
    ld h, c
    nop
    ld a, e
    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$7b00], sp
    nop
    ld c, b
    nop
    ld l, e
    nop
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, l
    nop
    call $d500
    nop
    reti


    nop
    ld e, l
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    nop
    nop
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
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop

jr_003_407e:
    rst $38
    nop
    db $db
    inc a
    and [hl]
    ld l, d
    and h
    ld l, b
    and h
    ld l, b
    and h
    ld l, b
    and h
    ld l, b
    and h
    ld l, b
    and h
    ld l, b
    db $db
    inc a
    ld h, l
    ld d, [hl]
    dec h
    ld d, $25
    ld d, $25
    ld d, $25
    ld d, $25
    ld d, $25
    ld d, $a4
    ld l, b
    and h
    ld l, b
    and h
    ld l, b
    and h
    ld l, b
    and h
    ld l, b
    and h
    ld l, b
    and [hl]
    ld l, d
    db $db
    inc a
    dec h
    ld d, $25
    ld d, $25
    ld d, $25
    ld d, $25
    ld d, $25
    ld d, $65
    ld d, [hl]
    db $db
    inc a
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

jr_003_40ce:
    rst $38
    nop
    rst $38
    nop
    ret nc

    ld sp, $539d
    rst $38
    ld h, b
    sbc a
    jr nz, @-$3f

    nop
    sbc a
    jr nz, jr_003_407e

    jr nz, @+$01

    nop
    add l
    ld b, [hl]
    ld e, h
    ld h, l
    rst $38
    add e
    call nc, $aa3a
    ld l, h
    call nc, $fc3a
    ld [bc], a
    rst $28
    ld [hl], b
    sub a
    ld e, b
    sra h
    push hl
    ld d, $f2
    dec bc
    ld sp, hl
    dec b
    db $fc
    ld [bc], a
    cp $01
    ei
    rlca
    db $f4
    dec c
    jp hl


    ld a, [de]
    db $d3
    inc [hl]
    and a
    ld l, b
    ld c, a
    ret nc

    rra
    jr nz, jr_003_40ce

    ret nz

    rst $38
    nop
    ret nc

    ld sp, $4080
    ret nz

jr_003_4117:
    ld b, b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    add l
    ld b, [hl]
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_412e:
    nop
    nop
    add b
    nop
    add b
    ld b, b
    ret nz

    jr nz, jr_003_4117

jr_003_4137:
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a

jr_003_413e:
    cp $01
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, @-$3f

    ret nz

    add b
    nop
    add b
    ld b, b
    ret nz

    jr nz, jr_003_4137

    db $10
    ld a, [c]
    dec bc
    ld sp, hl
    dec b
    db $fc
    ld [bc], a

jr_003_415e:
    cp $01
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    and a
    ld l, b
    ld c, a
    ret nc

    rra
    jr nz, jr_003_412e

    ret nz

    add b
    nop
    add b
    ld b, b
    sra h
    push hl
    ld d, $f2
    dec bc

jr_003_417a:
    ld sp, hl
    dec b
    db $fc
    ld [bc], a

jr_003_417e:
    cp $01
    nop
    nop
    nop
    ld bc, $1ae9
    db $d3
    inc [hl]
    and a
    ld l, b
    ld c, a
    ret nc

    rra
    jr nz, @-$3f

    ret nz

    rst $38
    nop
    ret nc

    ld sp, $4080
    ret nz

    ld b, b
    add b
    nop

jr_003_419a:
    add b
    nop
    sbc a
    jr nz, jr_003_413e

    jr nz, @+$01

    nop
    add l
    ld b, [hl]
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    call nc, $fc3a
    ld [bc], a
    rst $38
    nop
    ret nc

    ld sp, $4080
    ret nz

    ld b, b
    sbc a
    jr nz, jr_003_417a

    nop
    sbc a
    jr nz, jr_003_415e

    jr nz, @+$01

    nop
    add l
    ld b, [hl]
    nop
    ld bc, $0101
    call nc, $aa3a
    ld l, h
    call nc, $fc3a
    ld [bc], a
    rst $38
    nop
    ret nc

    ld sp, $4080
    rst $38
    ld h, b
    sbc a
    jr nz, jr_003_419a

    nop
    sbc a
    jr nz, jr_003_417e

    jr nz, @+$01

    nop
    add l
    ld b, [hl]
    nop
    ld bc, $83ff
    call nc, $aa3a
    ld l, h
    call nc, $fc3a
    ld [bc], a
    add e
    ld b, h
    ld de, $39aa
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    ld de, $83aa
    ld b, h
    rst $38
    nop
    rst $00
    jr nz, @-$37

    nop
    rst $00
    jr nz, @-$17

    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $38
    nop
    inc bc
    add b
    add hl, sp
    nop
    pop af
    ld [$32d1], sp
    add e
    ld b, h
    rla
    sbc b
    ld bc, $ff00
    nop
    ld bc, $7182
    ld c, b
    ld sp, hl
    nop
    pop hl
    ld [hl+], a
    ld sp, hl
    nop
    ld [hl], c
    ld c, b
    ld bc, $ff82
    nop
    db $e3
    db $10
    jp $8320


    ld d, b
    inc sp
    add b
    ld bc, $f300
    nop
    di
    nop
    rst $38
    nop
    ld bc, $3f02
    nop
    add c
    add d
    pop af
    ld [$00f9], sp
    ld de, $0128
    add d
    rst $38
    nop
    pop bc
    ld [hl+], a
    add a
    ld c, b
    rrca
    sub b
    ld bc, $3902
    nop
    add hl, sp
    nop
    ld bc, $ff82
    nop
    add e
    add d
    add hl, sp
    nop
    ld sp, hl
    ld a, [bc]
    di
    inc d
    rst $20
    jr z, @-$2f

    nop
    rst $08
    nop
    rst $38
    nop
    ld bc, $1182
    jr z, jr_003_42ae

    nop
    ld bc, $3982
    nop
    ld de, $0128
    add d
    rst $38
    nop
    ld bc, $3982
    nop
    add hl, sp
    nop
    ld bc, $f180
    ld [bc], a
    di
    inc d
    rlca
    adc b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_42ae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rrca
    db $10
    inc de
    rrca
    ld d, $0e
    dec de
    rla
    ld [$0c07], sp
    dec bc
    rst $38
    nop
    nop
    nop
    ldh [rNR10], a
    jr nc, jr_003_4308

    jr nc, jr_003_42fa

    jr nz, jr_003_42ec

jr_003_42ec:
    ld h, b
    ld b, b
    ld h, b
    jr nz, jr_003_42f6

    inc bc
    dec b
    inc bc
    ld b, $05

jr_003_42f6:
    ld [bc], a
    ld bc, $0102

jr_003_42fa:
    inc bc
    ld [bc], a
    ld bc, $ff00
    nop
    ld b, b
    nop
    ret nz

    add b
    ret nz

    ld b, b
    add b
    nop

jr_003_4308:
    add b
    nop
    add b
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    rrca
    ldh a, [$7e]
    add [hl]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $8081
    rrca
    ldh a, [$08]
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld b, $06
    add hl, hl
    cpl
    ld e, $39
    cpl
    jr nc, jr_003_439b

    ld hl, $231d
    rst $38
    nop
    nop
    nop
    ld h, b
    ld h, b
    and b
    ldh [$60], a
    and b
    ret nz

    jr nz, jr_003_43dd

    sub b
    and b
    ret nc

    ld a, [de]
    ld h, $1a
    ld h, $1d
    inc hl
    ld a, $21
    rrca
    db $10
    ld [$000f], sp
    nop
    rst $38
    nop
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    and b
    ret nc

    ld [hl], b
    sub b
    ret nz

    jr nz, jr_003_43cb

    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ccf
    jr nz, jr_003_43d4

    dec e
    jr nz, jr_003_43b9

    ld [hl+], a

jr_003_439b:
    rra
    jr nz, jr_003_43b9

    jr nz, @+$19

    rst $38
    nop
    nop
    nop
    db $fc
    inc b
    inc c
    ld [$e004], sp
    inc b
    ret nc

    inc b
    or b
    inc d
    ld [hl], b
    jr nc, jr_003_43d0

    ld [hl+], a
    rra
    inc h
    rra
    ld hl, $201f

jr_003_43b9:
    rra
    ccf
    jr nz, jr_003_43bd

jr_003_43bd:
    nop
    rst $38
    nop
    inc c
    ret c

    inc b
    or b
    inc c
    ld a, b
    inc c
    ld hl, sp+$2c
    ld hl, sp-$04

jr_003_43cb:
    inc b
    nop
    nop
    rst $38
    nop

jr_003_43d0:
    rst $38
    nop
    nop
    nop

jr_003_43d4:
    ld a, a
    ld b, b
    ld b, b
    jr nz, jr_003_4438

    nop
    ld e, h
    nop
    ld e, h

jr_003_43dd:
    nop
    ld e, a
    nop
    rst $38
    nop
    nop
    nop
    db $fc
    inc b
    inc b
    ld [$10f4], sp
    db $f4
    add b
    ld [hl], h
    nop
    db $f4
    db $10
    ld e, h
    nop
    ld e, h
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld b, b
    jr nz, @+$81

    ld b, b
    nop
    nop
    rst $38
    nop
    db $f4
    add b
    ld [hl], h
    nop
    db $f4
    add b
    db $f4
    db $10
    inc b
    ld [$04fc], sp
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld b, b
    jr nz, jr_003_4439

    db $10
    db $10
    ld [$0408], sp
    inc b
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_003_4438:
    nop

jr_003_4439:
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    add b
    adc h
    ld b, b
    ld a, h
    nop
    inc a
    inc b
    nop
    nop
    nop
    nop
    rst $38
    nop
    and $e7
    and $e7
    and $e7
    and $e7
    rst $18
    ld a, [c]
    di
    ldh [$f6], a
    or $f6
    or $f6
    or $f6
    or $e8
    jp hl


    add sp, -$17
    add sp, -$17
    add sp, -$17
    pop hl
    db $f4
    push af
    ld [c], a
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    inc b
    dec b
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc
    inc b
    dec b
    ld [bc], a
    inc bc
    inc c
    dec c
    ld [bc], a
    inc bc
    ld c, $0f
    ld [bc], a
    inc bc
    db $10
    ld de, $0302
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_003_44cb

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop

Call_003_44b8:
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    rra
    ld bc, $0c3f
    ld a, [hl-]
    rrca
    jr c, jr_003_44d7

    inc e
    inc bc
    add hl, de

jr_003_44cb:
    rlca
    ld a, [de]
    dec c
    add hl, de
    ld b, $3e
    add hl, bc
    inc hl
    inc e
    nop
    nop
    nop

jr_003_44d7:
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh a, [rNR41]
    ld d, b
    and b
    or b
    ret nz

    ldh [rP1], a
    sub b
    ld h, b
    ld [hl], b
    add b
    add sp, $10
    ld [$e8f0], sp
    db $10
    db $10
    ldh [$ec], a
    db $10
    ld d, d
    dec a
    and c
    ld a, [hl]
    and c
    ld a, [hl]
    xor c
    ld [hl], a
    ld a, h
    rlca
    add [hl]
    ld a, e
    adc e
    ld [hl], h
    xor [hl]
    ld d, e
    xor e
    ld d, a
    ld a, [hl]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ccf
    ld bc, $107f
    ld a, a
    nop
    db $ec
    sbc b
    ld l, [hl]
    sub b
    ld l, [hl]
    sub b
    cp $08
    db $76
    sbc b
    ld l, $f0
    ld a, [$2a04]
    db $f4
    xor $70
    sbc b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    cp $40
    db $fd
    add [hl]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    rra
    ld bc, $0c3f
    ld a, [hl-]
    rrca
    jr c, jr_003_4559

    inc e
    inc bc
    add hl, de
    rlca
    ld a, [de]
    dec c
    add hl, de
    ld b, $3e
    add hl, bc
    nop
    nop
    nop
    nop
    nop

jr_003_4559:
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh a, [rNR41]
    ld d, b
    and b
    or b
    ret nz

    ldh [rP1], a
    sub b
    ld h, b
    ld [hl], b
    add b
    add sp, $10
    ld [$e8f0], sp
    db $10
    db $10
    ldh [rNR44], a
    inc e
    ld sp, $331e
    ld e, $33
    ld e, $33
    dec e
    inc sp
    dec e
    ld e, $01
    ld hl, $221e
    dec e
    dec hl
    inc d
    ld a, [hl+]
    dec d
    inc a
    inc bc
    ld [hl], b
    rrca
    ld a, c
    ld b, $3e
    nop
    ccf
    nop
    add sp, $10
    db $e4
    sbc b
    ld l, h
    sub b
    ld l, h
    sub b
    db $f4
    ld [$08f4], sp
    sbc h
    ld [hl], b
    db $fc
    nop
    ld [bc], a
    db $fc
    ld c, [hl]
    ld hl, sp+$68
    call c, $ba4d
    rst $38
    jr nc, @+$41

    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    rra
    ld bc, $0c3f
    ld a, [hl-]
    rrca
    jr c, jr_003_45d7

    inc e
    inc bc
    add hl, de
    rlca
    ld a, [de]
    dec c
    add hl, de
    ld b, $3e
    add hl, bc
    ld h, e
    inc e
    nop
    nop
    nop

jr_003_45d7:
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh a, [rNR41]
    ld d, b
    and b
    or b
    ret nz

    ldh [rP1], a
    sub b
    ld h, b
    ld [hl], b
    add b
    add sp, $10
    ld [$e8f0], sp
    db $10
    db $10
    ldh [$e8], a
    db $10
    ld c, d
    dec a
    ld d, c
    ld a, $55
    dec sp
    ld d, l
    dec sp
    inc a
    inc bc
    inc a
    inc bc
    ld b, e
    inc a
    ld b, l
    ld a, [hl-]
    ld d, a
    jr z, jr_003_465e

    dec hl
    ld a, $01
    ld [bc], a
    ld bc, $0102
    inc bc
    ld bc, $0003
    inc bc
    nop
    db $ec
    sbc b
    ld l, h
    sub b
    db $fc
    ld [$08fc], sp
    ld [hl], h
    sbc b
    inc [hl]
    ld hl, sp-$16
    inc d
    ld a, [hl-]
    db $e4
    ld a, [c]
    ld l, h
    db $fc
    ld h, b
    ld h, b
    ret nz

    ld h, b
    ret nz

    and b
    ret nz

    ld hl, sp+$00
    db $f4
    jr @-$02

    nop
    ld b, e
    inc a
    ld c, d
    dec a
    pop de
    ld a, [hl]
    pop de
    ld a, [hl]
    xor c
    ld [hl], a
    xor c
    ld [hl], a
    ld a, h
    rlca
    add a
    ld a, d
    adc d
    ld [hl], l
    xor [hl]
    ld d, c
    xor c
    ld d, [hl]
    ld [hl], c
    ld c, $7b
    inc b
    ld a, d
    inc b
    ld a, $00
    ccf
    nop
    add sp, $10
    db $ec
    sbc b
    ld l, [hl]
    sub b
    ld l, [hl]
    sub b
    db $fd
    ld a, [bc]

jr_003_465e:
    db $fd
    ld a, [bc]
    dec l
    ld a, [c]
    db $fd
    ld [bc], a
    dec hl
    db $f4
    and [hl]
    ld a, b
    sbc l
    ld a, d
    ld e, l
    ld a, [hl-]
    ld e, a
    jr nc, jr_003_46ae

    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_46ae:
    nop
    nop
    ldh [rP1], a
    ldh a, [rNR41]
    rrca
    nop
    rrca
    nop
    rra
    ld b, $1d
    rlca
    inc a
    rlca
    ld [hl], a
    ld a, [hl-]
    rst $10
    ld a, l
    ret z

    ld a, a
    rst $20
    ccf
    di
    ld e, h
    sbc $61
    rst $30
    inc e
    ld h, [hl]
    dec a
    db $fd
    ld [bc], a
    ei
    inc c
    ld a, a
    nop
    ld hl, sp+$10
    xor b
    ret nc

    ret c

    ld h, b

jr_003_46da:
    ld [hl], b
    add b
    ret nc

    and b

jr_003_46de:
    cp b
    ld b, b
    adc b
    ld [hl], b
    sbc b
    ld h, b
    adc b
    ld [hl], b
    ld [hl], b
    add b
    jr jr_003_46da

    ret z

    ld [hl], b
    jr jr_003_46de

    ldh a, [rP1]
    add sp, $30
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    ccf
    ld [bc], a
    dec a
    inc bc
    inc a
    inc bc
    ccf
    ld a, [bc]
    ld sp, $310f
    rrca
    jr @+$09

jr_003_470a:
    db $10
    rrca
    add hl, de
    ld c, $1d
    rlca
    ld a, $0b
    inc hl
    inc e
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$a0]
    ld [hl], b
    ldh [$30], a
    ldh [$b0], a
    ld h, b
    ldh [rP1], a
    ldh a, [$60]
    jr nc, jr_003_470a

    ld hl, sp-$70
    ld [$e8f0], sp
    db $10
    db $10
    ldh [$ec], a
    stop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    ccf
    ld [bc], a
    dec a
    inc bc
    inc a
    inc bc
    ccf
    ld a, [bc]
    ld sp, $310f
    rrca
    jr @+$09

jr_003_474c:
    db $10
    rrca
    add hl, de
    ld c, $1d
    rlca
    ld a, $0b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$a0]
    ld [hl], b
    ldh [$30], a
    ldh [$b0], a
    ld h, b
    ldh [rP1], a
    ldh a, [$60]
    jr nc, jr_003_474c

    ld hl, sp-$70
    ld [$e8f0], sp
    db $10
    db $10
    ldh [rP1], a
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    ccf
    ld [bc], a
    dec a
    inc bc
    inc a
    inc bc
    ccf
    ld a, [bc]
    ld sp, $310f
    rrca
    jr @+$09

jr_003_478a:
    db $10
    rrca
    add hl, de
    ld c, $1d
    rlca
    ld a, $0b
    ld h, e
    inc e
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$a0]
    ld [hl], b
    ldh [$30], a
    ldh [$b0], a
    ld h, b
    ldh [rP1], a
    ldh a, [$60]
    jr nc, jr_003_478a

    ld hl, sp-$70
    ld [$e8f0], sp
    db $10
    db $10
    ldh [$e8], a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    rra
    ld bc, $011e
    rra
    rlca
    ld e, $07
    ld a, $07
    ld [hl], a
    ld a, [hl-]
    rst $10
    ld a, l
    ret z

    ld a, a
    rst $20
    ccf
    di
    ld e, h
    sbc $61
    rst $30

jr_003_480b:
    inc e
    ld h, [hl]
    dec a
    db $fd
    ld [bc], a
    ei
    inc c
    ld a, a
    nop
    ld hl, sp+$50
    cp b
    ldh a, [$d8]
    jr nc, jr_003_480b

    add b
    ld hl, sp-$50

jr_003_481e:
    cp b
    ld b, b
    adc b
    ld [hl], b
    sbc b
    ld h, b
    adc b
    ld [hl], b
    ld [hl], b
    add b
    jr @-$0e

    ret z

    ld [hl], b
    jr jr_003_481e

    ldh a, [rP1]
    add sp, $30
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld l, $1b
    dec h
    ld e, $31
    rrca
    jr c, jr_003_4857

    inc e
    inc bc
    dec e
    ld b, $19
    rrca
    jr jr_003_4857

    inc a
    dec bc
    inc hl
    inc e
    nop
    nop
    nop

jr_003_4857:
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ld [hl], b
    and b
    ld d, b
    and b
    or b
    ld b, b
    ldh a, [rP1]
    sbc b
    ld h, b
    inc l
    ret c

    inc c
    ld hl, sp-$44
    ld b, b
    add sp, -$50
    ld d, b
    ldh [$ec], a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld l, $1b
    dec h
    ld e, $31
    rrca
    jr c, jr_003_4899

    inc e
    inc bc
    dec e
    ld b, $19
    rrca
    jr jr_003_4899

    inc a
    dec bc
    nop
    nop
    nop
    nop
    nop

jr_003_4899:
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ld [hl], b
    and b
    ld d, b
    and b
    or b
    ld b, b
    ldh a, [rP1]
    sbc b
    ld h, b
    inc l
    ret c

    inc c
    ld hl, sp-$44
    ld b, b
    add sp, -$50
    ld d, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld l, $1b
    dec h
    ld e, $31
    rrca
    jr c, jr_003_48d7

    inc e
    inc bc
    dec e
    ld b, $19
    rrca
    jr jr_003_48d7

    inc a
    dec bc
    ld h, e
    inc e
    nop
    nop
    nop

jr_003_48d7:
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ld [hl], b
    and b
    ld d, b
    and b
    or b
    ld b, b
    ldh a, [rP1]
    sbc b
    ld h, b
    inc l
    ret c

    inc c
    ld hl, sp-$44
    ld b, b
    add sp, -$50
    ld d, b
    ldh [$e8], a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    nop
    nop
    nop

jr_003_4917:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ccf
    nop
    ld l, $1b
    dec h
    ld e, $31
    rrca
    jr c, jr_003_4945

    ld [hl], a
    ld a, [hl-]
    rst $10
    ld a, l
    ret z

    ld a, a
    rst $20

jr_003_4945:
    ccf
    di
    ld e, h
    sbc $61
    rst $30
    inc e
    ld h, [hl]
    dec a
    db $fd
    ld [bc], a
    ei
    inc c
    ld a, a
    nop
    ld [hl], b
    and b
    ld d, b
    and b
    or b
    ld b, b

jr_003_495a:
    ldh a, [rP1]
    ret nc

    jr nz, jr_003_4917

    ld b, b
    adc b
    ld [hl], b
    sbc b
    ld h, b
    adc b
    ld [hl], b
    ld [hl], b
    add b
    jr jr_003_495a

    ret z

    ld [hl], b
    jr @-$0e

    ldh a, [rP1]
    add sp, $30
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, $01
    ccf
    ld [$0d37], sp
    ld [hl-], a
    rrca
    jr jr_003_4991

    dec de
    ld b, $1b
    inc c
    dec e
    ld b, $3e

jr_003_4991:
    inc bc

jr_003_4992:
    inc hl
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$a0]

Call_003_49a2:
    ld d, b
    ldh [$e0], a
    nop
    sub b
    ld h, b
    ld [hl], b
    ret nz

    ld [$f8f0], sp
    and b
    ldh a, [rP1]
    jr jr_003_4992

    db $ec
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, $01
    ccf
    ld [$0d37], sp
    ld [hl-], a
    rrca
    jr jr_003_49d3

    dec de
    ld b, $1b
    inc c
    dec e
    ld b, $3e

jr_003_49d3:
    dec bc

jr_003_49d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$a0]
    ld d, b
    ldh [$e0], a
    nop
    sub b
    ld h, b
    ld [hl], b
    ret nz

    ld [$f8f0], sp
    and b
    ldh a, [rP1]
    jr jr_003_49d4

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, $01
    ccf
    ld [$0d37], sp
    ld [hl-], a
    rrca
    jr jr_003_4a11

    dec de
    ld b, $1b
    inc c
    dec c
    ld b, $3e

jr_003_4a11:
    dec bc

jr_003_4a12:
    ld h, e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$a0]
    ld d, b
    ldh [$e0], a
    nop
    sub b
    ld h, b
    ld [hl], b
    ret nz

    ld [$f8f0], sp
    and b
    ldh a, [rP1]
    jr jr_003_4a12

    add sp, $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, $01
    ccf
    ld [$0d37], sp
    ld [hl-], a
    rrca
    jr jr_003_4a53

    dec de
    ld b, $1b
    inc c
    dec e
    ld b, $3e

jr_003_4a53:
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ccf
    nop
    ld a, $01
    ccf
    ld [$0d37], sp
    ld a, [hl-]
    rlca
    ld [hl], a
    ld a, [hl-]
    rst $10
    ld a, l
    ret z

    ld a, a
    rst $20
    ccf
    di
    ld e, h
    sbc $61
    rst $30
    inc e
    ld h, [hl]
    dec a
    db $fd
    ld [bc], a
    ei
    inc c
    ld a, a
    nop
    ldh a, [rP1]
    ldh a, [$a0]
    ld d, b
    ldh [$e0], a
    nop
    sub b
    ld h, b

jr_003_4abe:
    cp b
    ld b, b
    adc b
    ld [hl], b
    sbc b
    ld h, b
    adc b
    ld [hl], b
    ld [hl], b
    add b
    jr @-$0e

    ret z

    ld [hl], b
    jr jr_003_4abe

    ldh a, [rP1]
    add sp, $30
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, c
    ccf
    ld e, b
    scf
    ld a, [hl]
    dec l

jr_003_4ae0:
    ld a, h
    dec hl

jr_003_4ae2:
    ld a, l
    ld a, [hl+]
    ld a, l
    dec hl
    ld a, h
    dec hl
    ld a, [hl]
    dec l
    add hl, sp
    rla
    ld sp, $190e
    ld b, $3c
    dec bc

jr_003_4af2:
    inc hl
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    ret nz

    jr nc, jr_003_4ae0

jr_003_4b00:
    jr nc, jr_003_4ae2

    or b
    ld b, b
    ldh [rP1], a
    or b
    ld h, b
    ld [hl], b
    ret nz

    sbc b
    ld [hl], b
    cp b
    ret nc

    jr jr_003_4b00

    jr nc, jr_003_4af2

    db $ec
    stop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, c
    ccf
    ld e, b
    scf
    ld a, [hl]
    dec l

jr_003_4b22:
    ld a, h
    dec hl

jr_003_4b24:
    ld a, l
    ld a, [hl+]
    ld a, l
    dec hl
    ld a, h
    dec hl
    ld a, [hl]
    dec l
    add hl, sp
    rla
    ld sp, $190e
    ld b, $3c
    dec bc

jr_003_4b34:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    ret nz

    jr nc, jr_003_4b22

jr_003_4b42:
    jr nc, jr_003_4b24

    or b
    ld b, b
    ldh [rP1], a
    or b
    ld h, b
    ld [hl], b
    ret nz

    sbc b
    ld [hl], b
    cp b
    ret nc

    jr jr_003_4b42

    jr nc, jr_003_4b34

    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, c
    ccf
    ld e, b
    scf
    ld a, [hl]
    dec l

jr_003_4b60:
    ld a, h
    dec hl

jr_003_4b62:
    ld a, l
    ld a, [hl+]
    ld a, l
    dec hl
    ld a, h
    dec hl
    ld a, [hl]
    dec l
    add hl, sp
    rla
    ld sp, $190e
    ld b, $3c
    dec bc

jr_003_4b72:
    ld h, e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    ret nz

    jr nc, jr_003_4b60

jr_003_4b80:
    jr nc, jr_003_4b62

    or b
    ld b, b
    ldh [rP1], a
    or b
    ld h, b
    ld [hl], b
    ret nz

    sbc b
    ld [hl], b
    cp b
    ret nc

    jr jr_003_4b80

    jr nc, jr_003_4b72

    add sp, $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, c
    ccf
    ld e, b
    scf
    nop
    nop
    nop

jr_003_4bb7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    ret nz

    ld a, [hl]
    dec l

jr_003_4bd6:
    ld a, h
    dec hl

jr_003_4bd8:
    ld a, l
    ld a, [hl+]
    ld a, l
    dec hl
    inc a
    rlca
    ld [hl], a
    ld a, [hl-]
    rst $10
    ld a, l
    ret z

    ld a, a
    rst $20
    ccf
    di
    ld e, h
    sbc $61
    rst $30
    inc e
    ld h, [hl]
    dec a
    db $fd
    ld [bc], a
    ei
    inc c
    ld a, a
    nop
    jr nc, jr_003_4bd6

    jr nc, jr_003_4bd8

jr_003_4bf8:
    or b
    ld b, b

jr_003_4bfa:
    ldh a, [rP1]
    ret nc

    jr nz, jr_003_4bb7

    ld b, b
    adc b
    ld [hl], b
    sbc b
    ld h, b
    adc b
    ld [hl], b
    ld [hl], b
    add b
    jr jr_003_4bfa

    ret z

    ld [hl], b
    jr @-$0e

    ldh a, [rP1]
    add sp, $30
    ld hl, sp+$00
    ld [$0700], sp
    nop
    rrca
    nop
    rra
    nop
    jr c, jr_003_4c25

    ld e, $01
    ccf
    nop
    ld a, [hl]
    dec hl
    ld b, a

jr_003_4c25:
    inc a
    ld c, e
    ccf
    ld l, c
    ccf
    dec sp
    ld c, $26
    add hl, de
    scf
    inc e
    jr c, jr_003_4c41

    ld a, $03
    ld b, b
    nop
    db $f4
    nop
    ld a, b
    add b
    cp h
    ld b, b
    and b

jr_003_4c3d:
    ld b, b
    inc e
    ldh [$b8], a

jr_003_4c41:
    ld b, b
    db $e4
    jr jr_003_4c3d

    add b
    ld hl, sp-$20
    sbc b
    ld h, b
    db $fc
    nop
    or h
    ld c, b
    db $f4
    ld [$f80c], sp
    inc e
    ldh a, [$67]
    jr jr_003_4bf8

    ld a, [hl]
    and c
    ld a, [hl]
    xor c
    ld [hl], a
    ld a, h
    rlca
    add [hl]
    ld a, e
    adc e
    ld [hl], h
    xor [hl]
    ld d, e
    xor e
    ld d, a
    ld a, [hl]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ccf
    ld bc, $107f
    ld a, a
    nop
    db $fc
    nop
    ld l, [hl]
    sub b
    ld l, [hl]
    sub b
    cp $08
    db $76
    sbc b
    ld l, $f0
    ld a, [$2a04]
    db $f4
    xor $70
    sbc b
    ld [hl], b
    xor b
    ld [hl], b
    xor b

jr_003_4c8b:
    ld [hl], b
    xor b
    ld [hl], b
    cp $40
    db $fd
    add [hl]
    rst $38
    nop
    rla
    ld [$102f], sp
    rra
    nop
    cp b
    rlca
    rra
    nop
    inc a
    inc bc
    ld a, b
    daa
    reti


    ld h, $58
    daa
    call z, Call_003_4f33
    jr c, jr_003_4d14

    ccf
    dec sp
    ld c, $24
    dec de
    ld h, $19
    scf
    inc e
    ld a, d
    add h
    cp h
    ld b, b
    sbc $20
    ret nc

    jr nz, jr_003_4c8b

    jr nc, jr_003_4d3b

    add b
    ld [hl-], a
    call z, $d42a
    ld [hl+], a
    call c, $807c
    db $fc
    jr nc, @-$32

jr_003_4ccb:
    jr nc, jr_003_4ccb

    nop
    inc b
    ld hl, sp-$26
    inc h
    ld a, [$5804]
    cpl
    adc [hl]
    ld [hl], e
    add a
    ld a, b
    xor c
    ld [hl], a
    ld a, h
    rlca
    add [hl]
    ld a, e
    adc e
    ld [hl], h
    xor [hl]
    ld d, e
    xor e
    ld d, a
    ld a, [hl]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ccf
    ld bc, $107f
    ld a, a
    nop
    ld b, $fc
    ld c, $f8
    cp $00
    cp $08
    db $76
    sbc b
    ld l, $f0
    ld a, [$2a04]
    db $f4
    xor $70
    sbc b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    cp $40
    db $fd
    add [hl]
    rst $38
    nop

jr_003_4d14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc

jr_003_4d3b:
    nop
    rrca
    nop
    rra
    nop
    rra
    ld bc, $0c3f
    ld a, [hl-]
    rrca
    jr c, jr_003_4d57

    inc e
    inc bc
    add hl, de
    rlca
    ld a, [de]
    dec c
    add hl, de
    ld b, $1e
    ld de, $0817
    nop
    nop
    nop

jr_003_4d57:
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh a, [rNR41]
    ld d, b
    and b
    or b
    ret nz

    ldh [rP1], a
    sub b
    ld h, b
    ld [hl], b
    add b
    add sp, $10
    ld [$e8f0], sp
    db $10
    db $10
    ldh [$e8], a

jr_003_4d73:
    db $10
    ld a, [hl+]
    dec e
    dec hl
    inc e
    inc h
    rra
    inc h
    rra
    dec de
    rrca
    inc c
    rlca
    rrca
    nop
    ld c, $03
    dec bc
    rlca
    ld c, $07
    dec bc
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ccf
    ld bc, $107f
    ld a, a
    nop
    db $ec
    sbc b
    ld h, [hl]
    sbc h
    or d
    ld c, h
    or d
    ld c, h
    jp c, $ce24

    jr nc, jr_003_4d73

    inc l
    ld l, d
    sub h
    sub [hl]
    ld l, b
    sbc e
    ld [hl], b
    xor c
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    rst $38
    ld b, b
    db $fd
    add [hl]
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    nop
    add sp, $10
    ld e, b
    jr nz, jr_003_4dff

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec c
    ld [bc], a
    dec bc
    inc b
    ld b, $00
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra

jr_003_4dff:
    nop
    rra
    ld bc, $0c3f
    ld a, [hl-]
    rrca
    jr c, jr_003_4e17

    inc e
    inc bc
    add hl, de
    rlca
    sbc d
    dec c
    reti


    ld b, $7f
    nop
    add hl, sp
    ld b, $29
    ld d, $5a

jr_003_4e17:
    dec [hl]
    ld l, [hl]
    ld sp, $245b
    ld e, b
    daa
    inc [hl]
    dec bc
    dec bc
    inc b
    ld c, $03

Call_003_4e24:
    dec bc
    rlca
    ld c, $07
    ld c, $07
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ccf
    ld bc, $107f
    ld a, a
    nop

jr_003_4e34:
    sbc h
    ld a, b
    ld h, h
    cp b
    ld d, h
    xor b
    and h
    ld e, b
    inc h
    ret c

    inc c
    ldh a, [$f8]
    nop
    jr z, jr_003_4e34

    add sp, $70
    sbc b
    ld [hl], b
    sbc b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    cp $40
    db $fd
    add [hl]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld e, $1e
    ld c, $0e
    ld c, $0e
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec e
    dec hl
    inc e
    inc h
    rra
    inc h
    rra
    dec de
    rrca
    inc c
    rlca
    rrca
    nop
    ld c, $03
    dec bc
    rlca
    ld c, $07
    set 0, a
    ld a, [hl]
    ld a, a
    ld a, [bc]
    rlca
    ccf
    ld bc, $107f
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    jr z, @+$12

    jr z, jr_003_4ee4

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    rra
    ld bc, $0c3f

jr_003_4ee4:
    ld a, [hl-]
    rrca
    jr c, jr_003_4ef7

    inc e
    inc bc
    add hl, de
    rlca
    ld a, [hl-]
    dec c
    ld sp, hl
    ld b, $ff
    nop
    ld [$0007], sp
    nop
    nop

jr_003_4ef7:
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh a, [rNR41]
    ld d, b
    and b
    or b
    ret nz

    ldh [rP1], a
    sub b
    ld h, b
    ld [hl], b
    add b
    add sp, $10
    ld [$ecf0], sp
    inc d
    ld [de], a
    ld [c], a
    db $eb
    di
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_003_4f33:
    add b
    jr c, jr_003_4f36

jr_003_4f36:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_003_4f65

    add hl, de
    rrca
    inc c
    rlca
    inc c
    rlca
    inc c
    rlca
    ld b, $03
    dec bc
    inc b
    ld c, $03
    dec bc

jr_003_4f65:
    rlca
    ld c, $07
    ld c, $07
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ccf
    ld bc, $107f
    ld a, a
    nop

jr_003_4f74:
    dec e
    jp hl


    db $fc
    ld [$f80c], sp
    adc h
    ld hl, sp-$74
    ld hl, sp-$74
    ldh a, [$f8]
    nop
    jr z, jr_003_4f74

    add sp, $70
    sbc b
    ld [hl], b
    sbc b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    cp $40
    db $fd
    add [hl]
    rst $38
    nop
    ldh [$e0], a
    ld a, b
    ld a, b
    inc a
    inc a
    ld a, $3e
    ld e, $1e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld e, $1e
    ld e, $1e
    inc a
    inc a
    ld a, b
    ld a, b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh a, [rNR41]
    ld d, b
    and b
    or b
    ret nz

    ldh [rP1], a
    sub b
    ld h, b
    ld [hl], b
    add b
    add sp, $10
    ld [$e8f0], sp
    db $10
    db $10
    ldh [$e8], a
    ldh a, [rNR32]
    add sp, -$04
    ld [$f80c], sp
    adc h
    ld hl, sp-$74
    ld hl, sp-$74
    ldh a, [$f8]
    nop
    jr z, @-$0e

    add sp, $70
    sbc b
    ld [hl], b
    sbc b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    cp $40
    db $fd
    add [hl]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld d, b
    ld a, [hl]
    ld [hl+], a
    ld b, a
    inc a
    ld b, b
    ccf
    ld l, a
    ccf
    ld a, a
    ccf
    ld a, a
    inc a
    ld a, [hl]
    ld [hl-], a
    ld a, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    ld hl, sp-$78
    db $fc
    ldh a, [$f8]
    adc b
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    nop
    rst $38
    nop
    cp $77
    rst $38
    nop
    ld [$0800], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $fe81
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    rrca
    inc c
    rlca
    ld b, $07
    ld b, $0f
    inc c
    rrca
    inc c
    rlca
    ld b, $03
    inc bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    cp $32
    rst $38
    ld a, c
    rst $08
    db $fd
    rst $08
    db $fd
    rst $38
    ld a, c
    rst $38
    ld sp, $01ff
    cp $02
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld b, b
    ld hl, sp-$41
    rst $38
    ld a, a
    db $fd
    ld a, a
    ei
    ld a, a
    or $7f
    db $fd
    ld a, a
    jp c, $f47f

    ld a, a
    jp hl


    ld a, a
    rst $30
    ld a, a
    rst $28
    ld a, a
    sbc $7f
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld b, b
    cp $02
    rrca
    db $fd
    ei
    cp $af
    cp $4d
    cp $9d
    cp $3d
    cp $7d
    cp $ed
    cp $dd
    cp $bd
    cp $7d
    cp $ff
    cp $ff
    cp $ff
    db $fd
    cp $02
    ld a, a
    ld b, b
    rst $38
    cp a
    ldh [$7f], a
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    adc $71
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    adc $71
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    ldh [$7f], a
    rst $38
    cp a
    ld a, a
    ld b, b
    cp $02
    rst $38
    db $fd
    rlca
    cp $f3
    ld e, $fb
    ld c, $fb
    ld b, $3b
    adc $f3
    ld e, $fb
    ld c, $3b
    add $fb
    ld b, $fb
    ld c, $f3
    ld e, $07
    cp $ff
    db $fd
    cp $02
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld c, $01
    ld de, $750e
    ld a, [bc]
    pop af
    ld c, [hl]
    cp a
    ld h, b
    sub d
    ld l, a
    sub h
    ld l, e
    ld a, h
    dec bc
    cp d
    ld h, a
    rst $20
    ld a, c
    ld b, e
    inc a
    ld [hl], l
    dec hl
    nop
    nop
    ldh a, [$80]
    ld hl, sp-$60
    ld hl, sp+$00
    adc h
    ld [hl], b
    inc b
    ld hl, sp+$24
    ret c

    inc b
    ld hl, sp-$78
    ld [hl], b
    ld hl, sp+$00
    inc d
    add sp, -$64
    ld l, b
    ld l, $f0
    di
    ld c, [hl]
    push hl
    ld e, $d3
    ld l, [hl]
    inc sp
    dec c
    ld de, $100e
    rrca
    db $10
    rrca
    dec bc
    inc b
    ld c, $01
    ld a, [bc]
    rlca
    rrca
    ld b, $0f
    ld b, $0f
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $eb
    ld d, [hl]
    rst $18
    jr nc, jr_003_51aa

    xor $11
    xor $e9
    ld d, $3d
    add $af
    ld [hl], d
    cp [hl]
    ld [hl], b
    cp b
    ld [hl], b
    xor b
    ld [hl], b
    ld a, b
    nop

jr_003_51aa:
    ld a, h
    nop
    inc a
    nop
    inc a
    nop
    jr jr_003_51b2

jr_003_51b2:
    nop
    nop
    nop
    nop
    rrca
    ld bc, $011f
    rra
    nop
    ld sp, $200e
    rra
    inc h
    dec de
    jr nz, jr_003_51e3

    ld de, $1f0e
    nop
    jr z, jr_003_51e1

    add hl, sp
    ld d, $74
    rrca
    rst $08
    ld [hl], d
    and a
    ld a, b
    bit 6, [hl]
    nop
    nop
    ldh [rP1], a
    ldh a, [rLCDC]
    ldh a, [rP1]
    ld [hl], b
    add b
    adc b
    ld [hl], b
    xor [hl]

jr_003_51e1:
    ld d, b
    adc a

jr_003_51e3:
    ld [hl], d
    db $fd
    ld b, $49
    or $29
    sub $3e
    ret nc

    ld e, l
    and $e7
    sbc [hl]
    jp nz, $ae3c

    call nc, $6ad7
    ei
    inc c
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld l, b
    cp h
    ld h, e
    push af
    ld c, [hl]
    ld a, l
    ld c, $1d
    ld c, $15
    ld c, $1e
    nop
    ld a, $00
    inc a
    nop
    inc a
    nop
    jr jr_003_5212

jr_003_5212:
    nop
    nop
    call z, $88b0
    ld [hl], b
    ld [$08f0], sp
    ldh a, [$d0]
    jr nz, @+$72

    add b
    ld d, b
    ldh [$f0], a
    ld h, b
    ldh a, [$60]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    ld b, $0a
    rlca
    ld c, $01
    dec bc
    inc b
    db $10
    rrca
    ld de, $000e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_003_525e

jr_003_525e:
    inc a
    nop
    inc a
    nop
    ld a, h
    nop
    ld a, b
    nop
    xor b
    ld [hl], b
    cp [hl]
    ld [hl], b
    xor a
    ld [hl], d
    dec a
    add $e9
    ld d, $11
    xor $df
    jr nc, @+$35

    dec c
    ld [hl], l
    dec hl
    ld b, e
    inc a
    rst $20
    ld a, c
    cp d
    ld h, a
    ld a, h
    dec bc
    sub h
    ld l, e
    sub d
    ld l, a
    cp a
    ld h, b
    pop af
    ld c, [hl]
    ld [hl], l
    ld a, [bc]
    ld de, $0e0e
    ld bc, $000f
    rrca
    nop
    rlca
    nop
    db $eb
    ld d, [hl]
    db $d3
    ld l, [hl]
    push hl
    ld e, $f3
    ld c, [hl]
    ld l, $f0
    sbc h
    ld l, b
    inc d
    add sp, -$08
    nop
    adc b
    ld [hl], b
    inc b
    ld hl, sp+$24
    ret c

    inc b
    ld hl, sp-$74
    ld [hl], b
    ld hl, sp+$00
    ld hl, sp-$60
    ldh a, [$80]
    ld a, a
    nop
    add b
    db $10
    add a
    jr nz, @-$6f

    ld b, b
    adc a
    nop
    adc b
    rlca
    sbc a
    ld bc, $0f94
    sub c
    ld c, $88
    rlca
    sub e
    inc c
    sub b
    rrca
    sbc b
    rrca
    cp b
    rlca

jr_003_52d0:
    db $e3
    dec a
    jp $fe3c


    nop
    ld bc, $f100
    add b
    ld hl, sp-$5f
    ld hl, sp-$7d
    add hl, bc
    or $71
    call z, $f805
    ld b, h
    cp c
    ld [$21f3], sp
    sbc $01
    db $fc
    push hl
    jr @+$0f

    ldh a, [$93]
    ld l, h
    daa
    call c, Call_003_7bc4
    adc b
    ld [hl], a
    xor c
    ld [hl], a
    pop af
    ld c, $84
    ld a, e
    adc e
    ld [hl], h
    adc [hl]
    ld [hl], c
    ld a, [hl-]
    rst $10
    ld a, [hl]
    add a
    adc b
    rlca
    adc d
    rlca
    add d
    rrca
    adc d
    rla
    sbc a
    jr nz, jr_003_52d0

    ld b, b
    ld a, a
    add b
    ld d, h
    rst $28
    db $ed
    ld d, [hl]
    jp hl


    ld d, [hl]
    rst $10
    jr c, @+$03

    cp $c9
    ld [hl], $3d
    add $2f
    ld a, [c]
    cp a
    ld [hl], b
    xor c
    ld [hl], b
    xor c
    ld [hl], b
    xor c
    ld [hl], b
    xor c
    ld [hl], b
    rst $38
    add b
    rst $38
    add b
    cp $00
    nop
    nop
    nop
    nop
    inc c
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    jr @+$09

    jr nc, jr_003_5353

    ld [de], a
    dec c
    db $10
    rrca
    ld [$0f07], sp
    nop
    rra
    nop
    rra
    ld [$003f], sp
    ld a, a

jr_003_5353:
    ld hl, $0000
    stop
    stop
    ldh a, [$80]
    ld hl, sp-$60
    ld hl, sp+$00
    cp b
    ld b, b
    ld b, h
    cp b
    ld d, [hl]
    xor b
    ld b, h
    cp b
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    ld [$00fc], sp
    cp $44
    ld a, a
    db $10
    rst $38
    ld h, c
    rst $38
    ld hl, $21ff
    ld a, a
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, d
    ld a, a
    ld b, $0f
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp $00
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    cp $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [hl+], a
    cp $30
    ld hl, sp+$20
    ld hl, sp+$20
    ld hl, sp+$20
    cp $80
    rst $38
    add b
    rst $38
    nop
    ld a, a
    db $10
    rst $38
    ld h, c
    rst $38
    ld hl, $21ff
    ld a, a
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_003_541a

    ld d, b
    ld a, [hl+]
    ld [bc], a
    dec b
    nop
    nop
    nop
    and c
    nop
    dec bc
    nop
    sbc a
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    cp $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ld d, l
    nop
    xor d
    jr nz, jr_003_5439

    nop
    ld [bc], a
    nop
    ld [$c000], sp
    nop
    ld hl, sp+$00
    cp $00
    ld a, a
    db $10
    rst $38
    ld h, c
    ld d, l
    ld bc, $20aa
    ld d, l
    inc b
    nop
    nop
    ld [$0000], sp
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    rlca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld b, h
    ld d, l
    ld b, h

jr_003_541a:
    xor d
    nop
    ld d, h
    db $10
    jr nz, jr_003_5420

jr_003_5420:
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    ld d, d
    nop
    nop
    nop
    db $e4
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc c

jr_003_5439:
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    db $10
    dec b
    jr nz, jr_003_544e

    db $10
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_544e:
    ld bc, $2000
    nop
    nop
    nop
    nop
    nop
    stop
    stop
    ldh a, [$80]
    ld hl, sp-$60
    ld hl, sp+$00
    db $10
    ld b, b
    nop
    xor b
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_003_5472

jr_003_5472:
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$2100], sp
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    inc hl
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ld b, b
    nop
    inc b
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    inc b
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_003_54c4

jr_003_54c4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_003_54e8

jr_003_54e8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld bc, $0100
    nop
    daa
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_003_5522

jr_003_5522:
    nop
    nop
    call nz, $e000
    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    jr @+$09

    db $10
    rrca
    ld [de], a
    dec c
    db $10
    rrca
    ld [$0f07], sp
    nop
    db $10
    rrca
    dec de
    inc c
    jr c, jr_003_55b9

    ld h, a
    add hl, sp
    nop
    nop
    nop
    nop
    nop

jr_003_55b9:
    nop
    ldh a, [$80]
    ld hl, sp-$60
    ld hl, sp+$00
    cp b
    ld b, b
    ld b, h
    cp b
    ld d, h
    xor b
    ld b, h
    cp b
    db $fc
    nop
    add h
    ld a, b
    inc b
    ld hl, sp-$14
    jr jr_003_55dd

    ldh a, [$f6]
    ld c, h
    ld d, e
    inc a
    push hl
    ld a, e
    xor e
    ld [hl], l
    xor e
    ld [hl], l
    ld a, l

jr_003_55dd:
    ld b, $84
    ld a, e
    adc e
    ld [hl], h
    xor [hl]
    ld [hl], c
    ld a, [$7e57]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [c], a
    inc e
    push de
    ld l, [hl]
    db $ed
    ld d, [hl]
    db $ed
    ld d, [hl]
    sbc $30
    ld de, $e9ee
    ld d, $3d
    add $af
    ld [hl], d
    cp [hl]
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    cp $80
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    nop
    add h
    ld a, e
    add h
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    add b
    ld hl, $21de
    sbc $f7
    ld [$07f8], sp
    db $fd
    ld [bc], a
    ld a, h
    inc bc
    ld a, [hl]
    ld bc, $003f
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    db $10
    rra
    ldh [$bf], a
    ld b, b
    ld a, $c0
    ld a, [hl]
    add b
    db $fc
    nop
    jr nc, jr_003_5682

jr_003_5682:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ld a, [hl]
    rlca
    ld a, [$ae57]
    ld [hl], c
    adc e
    ld [hl], h
    add h
    ld a, e
    ld a, h
    rlca
    xor b
    ld [hl], a
    xor b
    ld [hl], a
    ldh [$7f], a
    ld d, e
    inc a
    rst $38
    nop
    rst $38
    add b
    cp $80
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    cp [hl]
    ld [hl], b
    xor a
    ld [hl], d
    dec a
    add $e9
    ld d, $11
    xor $1e
    ldh a, [$0d]
    or $0d
    or $05
    cp $e2
    inc e
    ld h, [hl]
    add hl, sp
    jr c, jr_003_56df

    jr jr_003_56e9

    db $10
    rrca
    nop
    rrca
    inc bc

jr_003_56df:
    inc c
    rlca
    ld [$000f], sp
    rrca
    nop
    rrca
    nop
    rlca

jr_003_56e9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_56f1:
    nop
    nop
    nop
    ld [hl], $cc
    inc c
    ldh a, [$0c]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp-$20
    jr jr_003_56f1

    ld [$00f8], sp
    ld hl, sp+$00
    ld hl, sp-$60
    ldh a, [$80]
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_5710:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ccf
    nop
    ld l, a
    db $10
    ld a, a
    nop
    rst $18
    jr nz, jr_003_5710

    jr nz, @-$5f

    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_003_5748

jr_003_5748:
    db $fc
    nop
    xor $10
    ld a, d
    add h
    ld a, e
    add h
    ld a, c
    add [hl]
    ld sp, hl
    ld b, $8f
    ld [hl], b
    adc b
    ld [hl], a
    ld [hl], a
    nop
    nop

jr_003_575b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ld c, $11
    xor $ae
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, $01
    ccf
    nop
    dec hl
    inc d
    dec hl
    inc d
    ld [hl+], a
    dec e
    ld hl, $1e1e
    ld hl, $0e15
    dec d
    ld c, $15
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$a0]
    ld e, b
    ldh [$e4], a
    jr jr_003_575b

    ld l, b
    ld [hl], h
    ret z

    ld [$f8f0], sp
    and b
    ldh a, [rP1]
    jr @-$1e

    add sp, $10
    ld de, $1b0e
    inc b
    rrca
    nop
    add hl, bc
    rlca
    add hl, bc
    rlca
    rrca
    nop
    ld c, $03
    ld b, $03
    inc b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    rra
    nop
    rra
    nop
    rlca
    nop
    db $ec
    sbc b
    ld l, h
    sub b
    db $fc
    nop
    db $fc
    ld [$9874], sp
    db $fc
    nop
    db $e4
    ret c

    db $e4
    ret c

    call nz, Call_003_44b8
    cp b
    ld b, h
    cp b
    ld b, h
    cp b
    ld b, h
    cp b
    rst $38
    nop
    cp a
    nop
    cp h
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, $01
    ccf
    ld [$0d37], sp
    ld [hl-], a
    rrca
    jr jr_003_582f

    dec de
    ld b, $1b
    inc c
    dec c
    ld b, $16

jr_003_582f:
    dec bc

jr_003_5830:
    inc hl
    inc e
    ld a, [hl+]
    dec e
    nop
    nop
    nop
    nop

Call_003_5838:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$a0]
    ld d, b
    ldh [$e0], a
    nop
    sub b
    ld h, b
    ld [hl], b
    ret nz

    ld [$f8f0], sp
    and b
    ldh a, [rP1]
    jr jr_003_5830

    add sp, $10
    db $ec
    sbc b
    ld a, a
    nop
    ld d, e
    dec l
    ld h, e
    dec e
    inc a
    inc bc
    rrca
    nop
    ld b, $03
    ld b, $03
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    dec b
    inc bc
    rlca
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    ld l, h
    sub b
    db $fc
    nop
    db $fc
    ld [$9874], sp
    db $fc
    nop
    db $e4
    ret c

    db $e4
    ret c

    call nz, Call_003_44b8
    cp b
    call nz, Call_003_44b8
    cp b
    db $fc
    nop
    cp a
    nop
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, $01
    ccf
    ld [$0d37], sp
    ld [hl-], a
    rrca
    jr jr_003_58ad

    dec de
    ld b, $1b
    inc c
    dec e
    ld b, $26

jr_003_58ad:
    dec de

jr_003_58ae:
    ld b, e
    inc a
    ld c, d
    dec a
    pop de
    ld a, [hl]
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$a0]
    ld d, b
    ldh [$e0], a
    nop
    sub b
    ld h, b
    ld [hl], b
    ret nz

    ld [$f8f0], sp
    and b
    ldh a, [rP1]
    jr jr_003_58ae

    add sp, $10
    db $ec
    sbc b
    ld l, h
    sub b
    pop de
    ld a, a
    xor c
    ld [hl], a
    xor b
    ld [hl], a
    rst $38
    inc b
    add [hl]
    ld a, e
    adc [hl]
    ld [hl], e
    xor h
    ld d, e
    xor l
    ld d, e
    or $03
    dec b
    inc bc
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    db $fc
    nop
    db $fc
    ld [$9874], sp
    db $fc
    nop
    db $e4
    ret c

    db $e4
    ret c

    call nz, Call_003_44b8
    cp b
    call nz, Call_003_44b8
    cp b
    db $fc
    nop
    cp [hl]
    nop
    cp a
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc b
    dec b
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld [bc], a
    inc bc
    inc d
    dec d
    ld b, $07
    ld d, $17
    ld a, [bc]
    dec bc
    inc d
    dec d
    inc c
    dec c
    jr jr_003_5953

    ld a, [de]
    dec de
    inc e
    dec e
    ld [bc], a
    inc bc
    ld e, $1f
    ld b, $07
    jr nz, jr_003_5967

    ld a, [bc]
    dec bc
    ld e, $1f
    inc c
    dec c
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld [bc], a

jr_003_5953:
    inc bc
    jr z, jr_003_597f

    ld b, $07
    ld a, [hl+]
    dec hl
    ld a, [bc]
    dec bc
    inc l
    add hl, hl
    inc c
    dec c
    dec l
    ld l, $2f
    jr nc, jr_003_5996

    ld [hl-], a
    ld [bc], a

jr_003_5967:
    inc bc
    inc sp
    inc [hl]
    ld b, $07
    dec [hl]
    ld [hl], $0a
    dec bc
    inc sp
    inc [hl]
    inc c
    dec c
    scf
    jr c, jr_003_59b0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_003_597f:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, e
    ld b, e
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld b, l
    ld b, e
    ld b, e
    ld c, e
    ld c, h
    ld b, e
    ld c, l
    ld b, h
    ld b, l
    ld b, e
    ld c, [hl]
    ld c, a

jr_003_5996:
    ld b, a
    ld c, b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, b
    ld d, c
    ld e, b
    ld b, e
    ld d, h
    ld d, l
    ld e, c
    ld b, e
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_003_59b0:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [hl], h
    ld [hl], l
    ld a, b
    ld a, c
    ld [hl], h
    ld [hl], l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    nop
    ld bc, $0f00
    nop
    rra
    dec c

jr_003_5a00:
    inc sp
    rra
    scf
    rra
    rra
    dec c
    ccf
    rrca
    ld a, a
    dec sp
    rst $18
    ld [hl], b
    ld a, a
    inc hl
    rra
    inc c
    scf
    inc e
    scf
    inc e
    rra
    ld [$000c], sp
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$40
    jr c, jr_003_5a00

    ld a, $e0
    rst $38
    call z, $cefb
    rst $38
    or h
    cp $f4
    rst $38
    call nz, $cefb
    rst $38
    inc c
    rst $38
    ld h, b
    sbc [hl]
    ldh a, [$fc]
    ld h, b
    ldh a, [rP1]
    ld b, $01
    rrca
    ld b, $39
    rrca
    ld a, l
    rla
    rst $28
    ccf
    push bc
    ld a, a
    add h
    rst $38
    db $fd
    ld a, a
    ld a, a
    ld [hl], $7f
    ld [hl], $ef
    ld a, c
    rst $08
    ld a, a
    ld h, a
    ccf
    ld [hl], e
    rra
    ccf
    inc c
    dec e
    nop
    add b
    nop
    ret nz

    add b
    ldh a, [$80]
    ld hl, sp-$60
    db $fc
    ldh [$dc], a
    ldh a, [$fe]
    and b
    cp $80
    rst $38
    jr @-$07

    sbc h
    ld h, a
    db $fc
    rst $38
    ld hl, sp-$02
    nop
    db $fc
    add b
    ldh a, [$c0]
    ret nz

    nop
    ld bc, $0300
    ld bc, $0107
    rrca
    ld bc, $0d1f
    scf
    inc e
    inc a
    inc e
    ld a, h
    db $10
    ld l, h
    jr c, jr_003_5ad7

    ld a, b
    ld l, l
    jr c, jr_003_5ace

    ld de, $071e
    rlca
    ld bc, $0001
    nop
    nop
    ldh [$80], a
    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ld a, [hl]
    ret nz

    rst $38
    sbc b
    rst $20
    inc a
    rst $30
    inc a
    ld e, $0d
    ccf
    jr jr_003_5b12

    inc a
    rst $30
    sbc h
    ld a, [hl]
    ret z

    ld a, b
    ret nz

    ld hl, sp-$80
    ldh a, [rP1]
    ret nz

    nop
    ld [hl], b
    ld h, b
    cp c
    pop af
    db $fd
    ld [hl], c
    ld a, [hl]
    inc c
    ld e, $08
    inc c
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    adc h
    ld hl, sp+$78
    ld [hl], b
    ld [bc], a
    ld [bc], a

jr_003_5ace:
    rlca
    ld b, $1a
    inc d
    inc l
    jr c, jr_003_5b09

    jr jr_003_5aef

jr_003_5ad7:
    nop
    add b
    add b
    ld b, b
    add b
    ld c, [hl]
    adc h
    sub e
    ld e, $1f
    inc e
    ld c, $00
    nop
    nop
    ld e, $18
    scf
    inc a
    ld e, $00
    jr nz, @+$22

    ld [hl], b

jr_003_5aef:
    ld h, b
    db $76
    ld h, h
    dec hl
    ld c, $0f
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    rlca
    jr jr_003_5b13

    jr jr_003_5b15

    jr jr_003_5b17

    dec c

jr_003_5b09:
    rlca
    rra
    inc bc
    ld a, a
    ld e, $e7
    ld a, l
    rst $00
    ld a, l

jr_003_5b12:
    rst $08

jr_003_5b13:
    ld a, h
    ld a, a

jr_003_5b15:
    jr nc, jr_003_5b4e

jr_003_5b17:
    ld a, [bc]
    nop
    nop
    nop
    nop
    jr c, jr_003_5b1e

jr_003_5b1e:
    ld a, h
    jr c, @-$38

    ld a, h
    add a
    db $fc
    ld a, a
    ld sp, hl
    cp $83

jr_003_5b28:
    rst $38
    ld [hl], c

jr_003_5b2a:
    cp a
    xor $93
    cp $53
    cp $ff
    xor h
    db $fd
    ld [hl-], a
    db $db
    push af
    or $6b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_003_5b28

    jr nc, jr_003_5b2a

    ldh [$c0], a
    ldh [$c0], a

jr_003_5b4e:
    ret nz

    nop
    ldh [$c0], a
    or b
    ldh [$30], a
    ldh [$30], a
    ldh [$0d], a
    rlca
    add hl, de
    rrca
    add hl, de
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    add hl, de
    cp a
    ld b, h
    ei
    ld a, $3e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop

jr_003_5bba:
    rlca
    inc bc
    inc e
    rlca
    ld a, $1b
    ld h, h
    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld h, h
    ccf
    ld a, a
    dec de
    db $fc
    ld h, a
    sbc h
    rst $30
    inc e
    rst $30
    adc a
    ei
    rst $00
    ld a, h
    ld l, a
    dec sp
    ccf
    dec de
    ld [hl], e
    jr nz, jr_003_5bba

    ld [hl], e
    sbc h
    rst $30
    ld e, $f3
    ccf
    rst $28
    ld [hl], a
    call c, $cf3b
    db $fc
    rst $20
    db $ec
    rlca
    add $83
    rst $00
    add e
    jp $8380


    ld bc, $01b3
    cp $b3
    adc $7b
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh a, [$80]
    ld hl, sp+$30
    call z, $f878
    jr nc, @-$02

    add b
    sbc $8c
    di
    sbc [hl]
    db $e3
    ld a, $e3
    ld a, [hl]
    cp $1c
    call c, $de80
    adc h
    db $db
    adc [hl]
    ld h, a
    inc a
    ld h, e
    ccf
    ld h, b
    ccf
    ld sp, $1f1f
    ld c, $0f
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    ei
    ld c, a
    ld hl, sp-$05
    or b
    ld [hl], a
    jp $c7bc


    inc a
    rst $38
    adc a
    ei
    ei
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or e
    ld e, $7e
    inc a
    cp h
    nop
    ret nz

    add b
    ld h, b
    ret nz

    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_003_5c87:
    nop
    nop
    nop
    ld [hl], b
    nop
    ld hl, sp+$70
    adc h
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    adc a
    ld b, $cf
    add [hl]
    and $80
    ldh a, [$60]
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    db $e4
    ld b, b
    ld a, b
    jr nc, jr_003_5c87

    ld a, b
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    nop
    inc c
    nop
    ld e, $0c
    inc sp

jr_003_5cc7:
    ld e, $3e
    inc e
    inc e
    nop
    nop
    nop
    jr nz, jr_003_5cd0

jr_003_5cd0:
    ld [hl], b
    jr nz, jr_003_5cc7

    ld h, b
    cp $64
    ld a, e
    ld c, $03
    nop
    rlca
    ld [bc], a
    dec c
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor $c4
    sbc $0c
    adc l
    ld [bc], a
    add e
    ld bc, $0306
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $04
    inc b
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld e, $07
    jr c, @+$21

jr_003_5d3e:
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ldh [$7f], a
    pop af
    ld a, a
    ei
    ld l, [hl]
    xor $55
    push af
    ld l, d
    ld a, e
    dec [hl]
    ld l, [hl]
    dec sp
    inc a
    inc bc
    ld h, [hl]
    dec a
    jp $ff7d


    nop
    ret nz

    nop
    ld [hl], b
    ret nz

    jr c, jr_003_5d3e

    inc h
    ret c

    inc l
    ret nc

    ld [hl+], a
    call c, $e01e
    cp d
    db $ec
    xor $54
    ld d, [hl]
    xor b
    cp b
    ld d, b
    db $ec
    cp b
    ld c, h
    ld hl, sp+$1c
    ldh a, [$f4]
    ret z

jr_003_5d76:
    db $fc
    nop
    rlca
    nop
    ld e, $07
    jr c, @+$21

jr_003_5d7e:
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ldh [$7f], a
    pop af
    ld a, a
    ei
    ld l, [hl]
    rst $38
    ld [hl], l
    xor $7b
    ld [hl], h
    ccf
    ld a, b
    ccf
    ccf
    inc e
    ld e, $0b
    inc c
    rlca
    rrca
    nop
    ret nz

    nop
    ld [hl], b
    ret nz

    jr c, jr_003_5d7e

    inc h
    ret c

    inc l
    ret nc

    ld [hl+], a
    call c, $e01e
    cp d
    db $ec
    cp $54
    xor $b8
    ld b, h
    ld hl, sp+$0c
    ld hl, sp-$08
    jr nc, @+$72

    ret nz

    jr nz, jr_003_5d76

    ldh [rP1], a
    rlca
    nop
    ld e, $07
    jr c, @+$21

jr_003_5dbe:
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ldh [$7f], a
    pop af
    ld a, a
    ei
    ld l, [hl]
    rst $38
    ld [hl], l
    xor $7b
    ld [hl], h
    ccf
    ld a, b
    ccf
    ccf
    rra
    ld e, a
    daa
    rst $00
    ld a, b
    db $fd
    nop
    ret nz

    nop
    ld [hl], b
    ret nz

    jr c, jr_003_5dbe

    inc h
    ret c

    inc l
    ret nc

    ld [hl+], a
    call c, $e01e
    cp d
    db $ec
    cp $54
    xor $b8
    ld b, h
    ld hl, sp+$0c
    ld hl, sp-$04
    add h
    call z, $8478
    ld hl, sp-$04
    nop
    rlca
    nop
    jr jr_003_5e03

    ld a, $19
    ld l, c
    ld [hl], $6a
    dec [hl]
    jp hl


jr_003_5e03:
    db $76
    xor $71
    xor $3b
    rst $38
    ld d, l
    ei
    ld l, [hl]
    ld [hl], c
    ccf
    ld [hl], b
    ccf
    inc a
    rlca
    ld a, $1b
    ld h, a
    inc a
    ld a, [hl]
    nop
    ret nz

    nop
    ld [hl], b
    ret nz

    ld hl, sp+$30
    inc l
    ret c

    and h
    ld e, b
    ld h, $dc
    and $1c
    xor $b8
    cp $54
    cp [hl]
    db $ec
    inc d
    ld hl, sp+$0c
    ld hl, sp+$78
    ret nz

    ld hl, sp-$50
    call z, $fc78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    jr nz, jr_003_5ec0

    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    and e
    rst $38
    ld bc, $103f
    ld l, $10
    ld a, $10
    ld a, $00
    inc e
    nop
    nop
    nop
    rra
    nop
    ccf
    rra
    rst $38
    inc e
    db $fc
    dec de
    db $fc
    db $db
    db $fc
    db $db
    rst $38
    ret nc

    rst $38
    rst $18
    rst $38
    adc l
    rst $38
    dec b
    rst $38
    ld b, a
    cp a
    ld b, b
    ld hl, sp+$40
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp+$40
    ld b, h
    cp b
    db $e4
    jr jr_003_5ec9

    cp b
    cp $40
    cp $fc
    cp $54
    rst $38
    ld d, h
    rst $38
    db $fc
    rst $38
    nop
    rrca
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    jr nz, jr_003_5f22

    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    inc hl
    rst $38
    add c
    rst $38
    db $10
    ld l, $10
    ld a, $10
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    rra

jr_003_5ec0:
    rst $38
    inc e
    db $fc
    dec de
    db $fc
    db $db
    db $fc
    db $db
    rst $38

jr_003_5ec9:
    ret nc

    rst $38
    adc a
    rst $38
    dec b
    rst $38
    ld b, l
    cp a
    ld b, a
    rst $38
    ld b, b
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp+$40
    ld b, h
    cp b
    db $e4
    jr jr_003_5f2b

    cp b
    cp $40
    cp $fc
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    db $fc
    rst $38
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    jr nz, @+$81

    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    inc hl
    rst $38
    ld bc, $91ff
    rst $28
    db $10
    ld a, $10
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    rra

jr_003_5f22:
    rst $38
    rra
    rst $38
    dec e
    rst $38
    sbc $ff
    rst $18
    rst $38

jr_003_5f2b:
    adc b
    cp $05
    rst $38
    ld b, h
    cp [hl]
    ld b, l
    rst $38
    ld b, [hl]
    rst $38
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$20
    db $fc
    ret nc

    db $fc
    ld hl, sp-$02
    nop
    xor a
    ld d, h
    rst $38
    inc b
    xor a
    ld d, h
    rst $38
    inc c
    rst $38
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    jr nz, jr_003_5fe4

    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    inc hl
    rst $38
    add c
    rst $38
    db $10
    ld l, $11
    ccf
    db $10
    ld a, a
    nop
    nop
    nop
    add c
    nop
    ld b, b
    nop
    rra
    nop
    ccf
    rra
    rst $38
    ld e, $fe
    dec e
    db $fc
    db $db
    db $fc
    db $db
    rst $38
    ret nc

    rst $38
    adc a
    rst $38
    dec b
    rst $38
    ld b, l
    cp a
    ld b, a
    rst $38
    ld b, b
    db $fc
    nop
    nop
    nop
    ld [bc], a
    nop
    inc b
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp+$40
    ld c, c
    or b
    db $e4
    jr jr_003_5fed

    cp b
    cp $40
    cp $5c
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    db $fc
    rst $38
    nop
    rrca
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    ld b, $01
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

jr_003_5fe4:
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and b
    ld b, b
    ret nz

jr_003_5fed:
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_003_5ffc

jr_003_5ffc:
    jr c, jr_003_5ffe

jr_003_5ffe:
    ld a, $00
    ld l, $00
    rlca
    nop
    dec b
    ld [bc], a
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld e, $00
    cp [hl]
    nop
    ld [$e000], a
    nop
    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [hl-], a
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld d, a
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add [hl]
    nop
    rst $28
    nop
    ld a, a
    add b
    push af
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rlca
    nop
    dec c
    ld [bc], a
    rrca
    nop
    dec de
    nop
    jr jr_003_608c

jr_003_608c:
    inc e
    nop
    jr jr_003_6090

jr_003_6090:
    inc c
    nop
    nop
    nop
    nop
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
    nop
    add b
    nop
    ldh [rP1], a
    ld [hl], b
    add b
    ld hl, sp+$00
    ret c

    nop
    jr jr_003_60ac

jr_003_60ac:
    jr c, jr_003_60ae

jr_003_60ae:
    jr jr_003_60b0

jr_003_60b0:
    jr nc, jr_003_60b2

jr_003_60b2:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rrca
    nop
    ld l, a
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
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    ld l, [hl]
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld l, a
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
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    ld de, $6e0e
    ld de, $15ea
    xor $11
    pop af
    ld c, $ff
    nop
    ld a, a
    nop
    ld a, $01
    inc e
    inc bc
    inc c
    inc bc
    ld c, $01
    rrca
    nop
    rlca
    nop
    ldh a, [rP1]
    db $fc
    nop
    ld [c], a
    inc e
    db $dd
    ld [hl+], a
    cp [hl]
    ld b, c
    or [hl]
    ld c, c
    cp [hl]
    ld b, c
    db $dd
    ld [hl+], a
    db $e3
    inc e
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$0e]
    ldh a, [rNR23]
    ldh [$e0], a
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    ld c, $07
    inc c
    rlca
    inc e
    rrca
    jr c, @+$21

    ld a, b
    ccf
    ld [hl], b
    ccf
    pop af
    ld a, [hl]
    di
    ld a, l
    ld a, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    db $fc
    ld [hl], b
    add $fc
    ld l, a
    sub d
    sub e
    ld l, l
    xor d
    ld d, l
    sub d
    ld l, l
    xor $11
    nop
    rst $38

jr_003_61ce:
    cp $01
    add e
    cp $01
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
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
    nop
    add b
    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nc, jr_003_61ce

    db $10
    ldh [rNR23], a
    ldh a, [$98]
    ld [hl], b
    db $10
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    dec e
    rrca
    inc a
    rra
    jr c, jr_003_622f

jr_003_6210:
    ld a, b
    ccf
    ld a, c
    ld a, $3c
    rra
    rra
    nop
    nop
    nop
    jr nz, jr_003_621c

jr_003_621c:
    ld hl, sp+$20
    db $ec
    ld hl, sp-$12
    sub b
    sub e
    ld l, h
    xor e
    ld d, h
    xor e
    ld d, l
    sub e
    ld l, l
    xor $11
    nop
    rst $38
    db $fc

jr_003_622f:
    add a
    call z, $867b
    db $fd

jr_003_6234:
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add b
    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nz, jr_003_6210

    jr nc, @-$1e

    jr nc, jr_003_6234

    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0103
    rlca
    inc bc
    rlca
    inc bc
    rrca
    rlca
    ld c, $07
    ld c, $07
    inc e
    rrca
    inc e
    rrca
    inc e
    rrca
    ld e, $0f
    rrca
    nop
    ld [hl], b
    nop
    ld hl, sp+$70
    db $ec
    ld hl, sp-$14
    sub b
    sub d
    ld l, h
    xor d
    ld d, h
    xor e
    ld d, h
    xor e
    ld d, h
    sub e
    ld l, l
    rst $28
    ld de, $ff00
    ld a, b
    rst $08
    ld c, b
    or a
    call z, Call_000_007b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_003_629e:
    nop
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
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    ccf
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ldh [rIE], a
    rst $30
    ld [$ffff], sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    inc bc
    db $fc
    ld sp, hl
    ld b, $03
    db $fc
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1c00], sp
    ld [$0815], sp
    ld [hl], a
    dec c
    pop bc
    ld a, [hl]
    pop hl
    ld e, $c7
    ld a, l
    ld a, l
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    rlca
    nop
    inc a
    nop
    rst $38
    inc a
    rst $30
    ret


    ret


    or [hl]
    push de
    xor d
    ld c, c
    or [hl]
    db $76
    adc c
    add b
    rst $38
    cp a
    pop bc
    jp Jump_003_7e7e


    nop
    ld [hl], b
    nop
    ld c, $00
    rst $38
    nop
    ld sp, hl
    rst $30
    rst $38
    nop
    stop
    jr z, jr_003_638c

    xor b
    db $10
    xor $30
    ld b, c
    cp [hl]
    ld b, a
    cp b
    ld h, c
    cp [hl]
    cp [hl]
    nop
    add b
    nop
    nop
    nop

jr_003_638c:
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld [$1c00], sp
    ld [$0815], sp
    ld [hl], a
    dec c
    pop bc
    ld a, [hl]
    pop hl
    ld e, $c7
    ld a, l
    ld a, l
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    rst $38
    inc a
    pop bc
    rst $38
    add b
    rst $38
    and d
    db $dd
    push de
    xor d
    add b
    rst $38
    add b
    rst $38
    cp a
    pop bc
    jp Jump_003_7e7e


    nop
    rst $38
    nop
    ld sp, hl
    rst $30
    rst $38
    nop
    nop
    nop
    nop
    nop
    stop
    jr z, jr_003_63f0

    xor b
    db $10
    xor $30
    ld b, c
    cp [hl]
    ld b, a
    cp b
    ld h, c
    cp [hl]
    cp [hl]
    nop
    add b
    nop
    nop
    nop

jr_003_63f0:
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1c00], sp
    ld [$0815], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    rst $38
    inc a
    rst $30
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
    stop
    jr z, jr_003_6466

    xor b
    db $10
    ld [hl], a
    dec c
    pop bc
    ld a, [hl]
    pop hl
    ld e, $c7
    ld a, l
    ld a, l
    nop
    ld bc, $0000
    nop

jr_003_6466:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    rlca
    nop
    ret


    or [hl]
    push de
    xor d
    ld c, c
    or [hl]
    ld [hl], a
    adc b
    add b
    rst $38
    cp a
    pop bc
    jp Jump_003_7e7e


    nop
    ld [hl], b
    nop
    ld c, $00
    ld [hl], b
    nop
    ld c, $00
    ld [hl], b
    nop
    rst $38
    nop
    ld sp, hl
    rst $30

jr_003_6496:
    rst $38
    nop
    xor $30
    ld b, c
    cp [hl]
    ld b, a
    cp b
    ld h, c
    cp [hl]
    cp [hl]
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    ldh [rP1], a
    nop
    nop
    rlca
    nop
    rra
    nop
    jr c, jr_003_64cf

jr_003_64c0:
    ld h, b
    rra
    ld b, b
    ccf
    rst $00
    inc a
    cp a
    ld h, b
    rst $38
    nop
    cp a
    ld h, b
    rst $00
    inc a

jr_003_64ce:
    ld b, b

jr_003_64cf:
    ccf
    ld h, b
    rra
    jr c, jr_003_64e3

    rra
    nop
    rlca
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    jr c, jr_003_64c0

    inc c
    ldh a, [rDIV]

jr_003_64e3:
    ld hl, sp-$3a
    ld a, h
    ld a, [$fe0c]
    nop
    ld a, [$c60c]
    ld a, h
    inc b
    ld hl, sp+$0c
    ldh a, [$38]
    ldh [$f0], a
    nop
    ret nz

    nop
    nop
    nop
    rlca
    nop
    dec e
    ld [bc], a
    jr nc, jr_003_650f

    ld a, h
    rlca
    ld a, [hl]
    inc hl
    rst $18
    jr nc, jr_003_6496

    ld a, b
    rst $00
    jr c, jr_003_64ce

    inc a
    pop hl
    ld a, $70

jr_003_650f:
    rra

jr_003_6510:
    ld a, b
    rrca

jr_003_6512:
    inc a
    rlca

jr_003_6514:
    rra
    nop
    rlca
    nop
    nop
    nop

jr_003_651a:
    ret nz

    nop
    ldh a, [rP1]
    ld a, b
    ret nz

    inc a
    ldh [rNR32], a
    ldh a, [$0e]
    ld hl, sp-$7a
    ld a, b
    add $38
    ld [c], a
    inc a
    or $18
    db $fc
    adc b
    ld a, h
    ret nz

    jr jr_003_6514

    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    nop
    rlca
    nop
    dec e
    ld [bc], a
    inc sp
    ld c, $63
    inc e
    ld h, e
    inc a
    rst $00
    inc a
    rst $00
    jr c, jr_003_6510

    jr c, jr_003_6512

    jr c, jr_003_6514

    inc a
    ld h, e
    inc a
    ld h, e
    inc e
    inc sp
    ld c, $1d
    ld b, $07
    nop
    nop
    nop
    ret nz

    nop
    ld [hl], b
    add b
    sbc b
    ldh [$8c], a
    ld [hl], b
    adc h
    ld a, b
    add $78
    add $38
    add $38
    add $38
    add $78
    adc h
    ld a, b
    adc h
    ld [hl], b
    sbc b
    ldh [rSVBK], a
    ret nz

    ret nz

    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    inc a
    rlca

jr_003_6580:
    ld a, b
    rrca
    ld [hl], b
    rra
    pop hl
    ld a, $c3
    inc a
    rst $00
    jr c, jr_003_651a

    ld a, b
    rst $18
    jr nc, jr_003_660d

    inc hl
    ld a, h
    rlca
    jr nc, jr_003_65a3

    dec e
    ld b, $07
    nop
    nop
    nop
    ret nz

    nop
    ld [hl], b
    add b
    jr jr_003_6580

    ld a, h
    ret nz

    db $fc

jr_003_65a3:
    adc b
    or $18
    ld [c], a
    inc a
    add $38
    add [hl]
    ld a, b
    ld c, $f8
    inc e
    ldh a, [$3c]
    ldh [$78], a
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    inc bc
    nop
    ld bc, $0f00
    nop
    ld a, $07
    ld a, b
    rra
    rst $38
    nop
    and h
    ld e, e
    rst $30
    ld e, e
    rst $30
    ld e, e
    rst $38
    nop
    ld h, b
    ccf
    jr nc, jr_003_65ef

    inc e
    rlca
    rlca
    inc bc
    inc bc
    nop
    ld bc, $8000
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$40
    inc a
    ldh a, [$fe]
    nop
    ld c, d
    or h
    ld l, [hl]
    or h
    ld l, [hl]
    or h
    cp $00
    inc e
    ldh a, [$78]

jr_003_65ef:
    ldh [$f0], a
    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ld a, $07
    ld a, b
    rra
    rst $38
    nop
    sub c
    ld l, [hl]
    db $dd
    ld l, [hl]
    db $dd
    ld l, [hl]
    rst $38
    nop
    ld h, b

jr_003_660d:
    ccf
    jr nc, jr_003_662f

    inc e
    rlca
    rlca
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp-$40
    inc a
    ldh a, [$fe]
    nop
    ld [de], a
    db $ec
    jp c, $daec

    db $ec
    cp $00
    inc e
    ldh a, [$78]

jr_003_662f:
    ldh [$f0], a
    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld a, a
    nop
    ldh [$bf], a
    add sp, -$41
    rst $38
    cp a
    rst $38
    add b
    add $bb
    rst $20
    cp e
    rst $38
    cp e
    rst $38
    add b
    ldh [$bf], a
    ld [$ffbf], a
    cp a
    rst $38
    add b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    pop bc
    ld a, [hl]
    push de
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    nop
    dec c
    or $6d
    or $ff
    or $ff
    nop
    pop bc
    ld a, [hl]
    push de
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    rrca
    ld a, $1f

jr_003_6682:
    ld a, $1f
    ld a, [hl]
    ccf
    ld a, a
    ccf
    ld a, a
    dec sp
    ld a, a
    dec sp
    ld a, a
    scf
    ld a, a
    rrca
    ccf
    rra
    ccf
    nop
    jr nz, jr_003_66b5

    ccf
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    ret nz

    jr nc, jr_003_6682

    sub b
    ld h, b
    cp b
    ld h, b
    inc h
    ret c

    xor b
    ret nc

    db $10
    ldh [rNR10], a
    ldh [$90], a
    ldh [$e0], a
    ret nz

    ldh [rP1], a
    db $10

jr_003_66b5:
    ldh [$f0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    dec e
    ld a, [hl]
    dec e

jr_003_66c4:
    ld a, [hl]
    dec a
    cp $7d
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    nop
    jr nz, jr_003_66f5

    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    ret nz

    jr nc, jr_003_66c4

    sub b
    ld h, b
    cp b
    ld h, b
    inc h
    ret c

    xor b
    ret nc

    db $10
    ldh [$90], a
    ldh [$e0], a
    ret nz

    ldh [rP1], a
    db $10

jr_003_66f5:
    ldh [$f0], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    dec e
    ld a, a
    dec sp
    cp $67
    rst $38
    rrca
    ld a, a
    ccf
    rst $38
    nop
    add b
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ret c

    ldh a, [$8c]
    ld hl, sp-$5c
    ret c

    xor [hl]

jr_003_6725:
    ret c

    ret


    or $d6
    add sp, $18
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    cp h
    ld [hl], b
    call c, Call_003_5838
    jr nc, @+$5e

    jr c, @+$60

    inc a
    cpl
    ld e, $2f
    inc e
    rla
    dec bc
    rrca
    rlca
    rrca
    inc b
    inc b
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    inc bc
    inc bc
    nop
    ld b, $00
    rrca
    ld b, $1e
    inc c
    db $fc
    ld [$40fc], sp
    cp $7c
    rst $38
    ld b, h
    push hl
    jp c, $d0ee

    ld sp, hl
    ld l, [hl]
    db $fd
    ld d, $57
    and d
    ld [hl], d
    add b
    ret nc

    jr nz, jr_003_6725

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    sbc [hl]
    ld a, h
    rst $38
    ld c, $2f
    inc e
    rra
    rlca
    rrca
    inc b
    inc b
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
    ld b, b
    cp $7c
    rst $38
    ld b, h
    push hl
    jp c, $d0ee

    ld sp, hl

jr_003_67a9:
    ld l, [hl]
    db $fd
    ld d, $57
    and d
    ld [hl], d
    add b
    ret nc

    jr nz, @-$4e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    inc bc
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    rla
    ld c, $16
    dec c
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    ld b, b
    cp $7c
    rst $38
    ld b, h
    push hl
    jp c, $d0ee

    ld sp, hl
    ld l, [hl]
    db $fd
    ld d, $df
    ld [hl+], a
    ld a, [$d800]
    jr nz, jr_003_67a9

    nop
    jr jr_003_67f4

jr_003_67f4:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    sbc a
    ld a, l
    rst $38
    ld c, $2f
    inc e
    rra
    rlca
    ld l, a
    inc b
    ld a, a
    dec sp
    ccf
    dec c
    rrca
    dec b
    rlca
    nop
    ld [$0a07], sp
    dec b
    dec bc
    inc b
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$e0]
    cp b
    ld [hl], b
    ld e, h
    cp b
    cp [hl]
    ld e, h
    cp $1c
    db $fc
    ld b, b
    cp $7c
    rst $38
    ld b, h
    push hl
    ld e, d
    xor $50
    ld sp, hl
    ld l, $bd
    ld d, $07
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld hl, sp+$7f
    pop bc
    ld a, a
    adc a
    ld a, b
    ld hl, sp+$40
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_6860:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    rlca
    db $fc
    inc a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add e
    cp $1e
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    cp $ff
    cp $f9
    cp $c1
    cp $0f
    ld hl, sp+$78
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    ld [hl], c
    ld a, $71
    ld a, $7b
    inc e
    ld a, [hl-]
    inc e
    ld a, [hl-]
    inc e
    ld a, $08
    inc e
    ld [$001c], sp
    ld [$0800], sp
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    or e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld c, $07
    ld c, $07
    rrca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0103
    inc bc
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, [hl]
    rst $38
    cp $ff
    rst $28
    rst $38
    nop
    ld hl, $21c0
    ret nz

    ld h, c
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    cp $00
    cp $00
    cp $d8
    cp $fc
    cp $fc
    cp $00
    call nz, $c4f8
    ld hl, sp-$14
    ld [hl], b
    add sp, $70
    add sp, $70
    ld hl, sp+$20
    ld [hl], b
    jr nz, jr_003_69a3

    nop
    jr nz, jr_003_6936

jr_003_6936:
    jr nz, jr_003_6938

jr_003_6938:
    inc bc
    nop
    rrca
    nop
    rra
    ld bc, $0c37
    ccf
    ld [$007f], sp
    ld a, a
    ld de, $316e
    ld a, a
    ld de, $007f
    ccf
    ld [$0c37], sp
    rra
    ld bc, $000f
    inc bc
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$80
    ld a, h
    ret nz

    or $18
    cp $08
    rst $38
    nop
    ld a, a
    call nz, $c63b
    ld a, a
    call nz, Call_000_00ff
    cp $08
    or $18
    ld a, h
    ret nz

    ld hl, sp-$80
    ldh [rP1], a
    nop
    nop
    inc a
    nop
    ld [hl], d
    inc a
    db $fd
    ld h, [hl]
    rst $20
    ld e, d
    rst $20
    ld e, d
    rst $38
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    ccf
    rrca
    dec a
    rra
    ld a, a
    ccf
    ld a, a

jr_003_69a3:
    ccf
    db $dd
    ld a, [hl]
    rst $38
    ld a, l
    db $db
    ld a, l
    ret


    ld a, [hl]
    ld h, h
    ccf
    ld h, c
    ccf
    jr nc, jr_003_69d1

    inc a
    rrca
    rrca
    inc bc
    inc bc
    nop
    ret nz

    nop
    or b
    ret nz

    inc a
    ldh a, [$0c]
    ld hl, sp-$7e
    db $fc
    ld b, [hl]
    db $fc
    and l
    ld a, [hl]
    ld d, e
    cp [hl]
    rst $38
    cp [hl]
    sbc a
    ld a, [hl]
    db $76
    db $fc
    cp $fc
    db $fc

jr_003_69d1:
    ld hl, sp-$44
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld c, $0b
    rra
    db $10
    jr c, @+$29

    ld a, c
    ld b, [hl]
    ld a, b
    rlca
    ld a, c
    ld b, $78
    rlca
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ld [hl], b
    ret nc

    ld hl, sp+$08
    inc a
    call nz, Call_003_629e
    ld a, $c0
    sbc [hl]
    ld h, b
    ld a, $c0
    cp $02
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld c, $0b
    rra
    db $10
    jr c, @+$29

    ld a, c
    ld b, [hl]
    ld a, c
    ld b, $79
    ld b, $78
    rlca
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ld [hl], b
    ret nc

    ld hl, sp+$08
    inc a
    call nz, Call_003_629e
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    ld a, $c0
    cp $02
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0700
    dec b
    rrca
    ld [$131c], sp
    inc a
    inc hl
    inc a
    inc bc

jr_003_6a72:
    inc a
    inc bc
    inc a
    inc bc
    ccf
    jr nz, jr_003_6a79

jr_003_6a79:
    nop
    nop
    nop
    ldh a, [$c0]
    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    jr c, jr_003_6a72

    db $fc
    inc b
    ld c, $f2
    ld a, a
    add c
    rrca
    ldh a, [$7f]
    add b
    ld a, a
    add b
    rst $38
    ld bc, $0000
    nop
    nop
    rlca
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld c, $0b
    rra
    db $10
    dec sp
    inc h
    ld [hl], d
    ld c, l
    ld [hl], d
    dec c
    ld [hl], b
    rrca
    ld a, c
    ld b, $7f
    ld b, b
    nop
    nop
    nop
    nop
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ld [hl], b
    ret nc

    ld hl, sp+$08
    call c, Call_003_4e24
    or d
    ld c, [hl]
    or b
    ld c, $f0
    sbc [hl]
    ld h, b
    cp $02
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld c, $0b
    rra
    db $10
    inc a
    inc hl
    ld a, b
    ld b, a
    ld a, h
    inc bc
    ld a, a
    nop
    ld a, b
    rlca
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ld [hl], b
    ret nc

    ld hl, sp+$08
    inc e
    db $e4
    cp $02
    ld a, $c0
    ld e, $e0
    ld a, $c0
    cp $02
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld c, $0b
    rra
    db $10
    ccf
    jr nz, @+$81

    ld b, c
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ld [hl], b
    ret nc

    ld hl, sp+$08
    db $ec
    inc [hl]
    or $1a
    or $0c
    or $1c
    adc $78
    cp $02
    nop
    nop
    nop
    nop
    ld a, a
    inc e
    ld h, $1c
    ld h, $1c
    ld a, $1c
    ld a, $04
    ld a, $04
    ld a, $04
    ld a, $04
    ld a, $04
    ld a, $00
    ld a, $00
    ld a, $04
    ld a, $00
    ld a, $22
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    cp $92
    cp $0c
    cp $0c
    cp $82
    ld a, h
    ld b, h
    jr c, jr_003_6bbe

    db $10
    stop
    nop
    nop
    nop
    jr jr_003_6bb6

    ld a, $26
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_003_6bce

    db $10
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a

jr_003_6bb6:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_003_6bee

jr_003_6bbe:
    ld hl, sp-$38
    db $fc
    inc b
    call c, $8e74
    ld a, [$72de]
    db $fc
    inc b
    db $fc
    inc b

jr_003_6bcc:
    ld hl, sp+$08

jr_003_6bce:
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    inc e
    nop
    ld [hl], $14
    ld h, e
    ld [hl+], a
    ld h, e
    ld [hl+], a
    ld b, c
    nop
    ld a, a
    ld a, $6b
    ld a, $aa
    ld a, a
    xor d
    ld d, l
    xor d
    ld d, l
    db $eb
    ld d, l

jr_003_6bee:
    ld a, a
    inc d
    cp [hl]
    nop
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_003_6c02

jr_003_6c02:
    ld a, [hl]
    nop
    adc a
    ld a, [hl]
    rst $38
    ld [$b44a], sp
    rst $18
    jr nz, jr_003_6bcc

    ld b, d
    cp a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld l, e
    inc d
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    db $eb
    ld d, l
    ld a, a
    inc d
    cp [hl]
    nop
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld l, e
    inc d
    db $eb
    inc d
    db $eb
    ld a, $eb
    ld a, $eb
    ld a, $7f

jr_003_6c4f:
    ld a, $41
    ld a, $a7
    jr jr_003_6c71

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
    ld c, b
    xor $90
    xor e
    ld d, h
    cp d
    ld b, l
    xor [hl]
    ld d, c
    ld [$7b55], a
    dec d
    cp a
    inc b
    xor [hl]
    nop
    dec b

jr_003_6c71:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_003_6c84

jr_003_6c84:
    cp $00
    adc a
    ld a, [hl]
    ld a, a
    adc b
    sbc $20
    swap h
    cp a

jr_003_6c8f:
    ld b, d
    ccf
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld a, d
    ld bc, $304f
    ld [hl], l
    ld a, [bc]
    daa
    jr jr_003_6ce0

    inc b
    ld [de], a
    dec c
    jr jr_003_6cb1

    inc sp
    inc c
    ld [hl], a
    ld [$304f], sp
    ld a, h

jr_003_6cb1:
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld [hl], b
    add b
    cp b
    ld b, b
    ret c

    jr nz, jr_003_6c4f

    ld [hl], b
    rlca
    ret z

    dec e
    jp nz, $c619

    ld b, e
    cp h
    xor a
    ld d, b
    inc a

jr_003_6ccf:
    ret nz

    ld a, b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld a, [de]
    ld bc, $0817

jr_003_6ce0:
    dec d
    ld a, [bc]
    dec de
    inc b
    rra
    nop
    ld d, $09
    inc e
    inc bc
    rla
    ld [$041b], sp
    rla
    ld [$001c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld [hl], b
    add b
    cp b
    ld b, b
    ret c

    jr nz, jr_003_6c8f

    ld [hl], b
    scf
    ld hl, sp+$3d
    ld [c], a
    add hl, sp
    and $43
    cp h
    cpl
    ret nc

    sbc h
    ld h, b
    ret z

    jr nc, @-$16

    stop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld e, $01
    rla
    ld [$0817], sp
    inc de
    inc c
    dec de
    inc b
    inc de
    inc c
    jr @+$09

    inc de

jr_003_6d2b:
    inc c
    inc de
    inc c
    rla
    ld [$001f], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld [hl], b
    add b
    cp b
    ld b, b
    ret c

    jr nz, jr_003_6ccf

    ld [hl], b
    or a
    ld a, b
    dec a
    ld [c], a
    add hl, sp
    and $c3
    inc a
    cpl
    ret nc

    cp h
    ld b, b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld b, $02
    dec b
    nop
    dec b
    nop
    ld b, $00
    nop
    nop
    nop
    nop

jr_003_6d6a:
    nop
    nop

jr_003_6d6c:
    nop
    nop
    nop

jr_003_6d6f:
    nop
    ld bc, $0300
    nop
    inc bc
    ld bc, $0103
    ld a, b
    nop
    add sp, $20
    adc b
    add b
    ld l, b
    nop
    ld l, a
    nop
    ld l, a
    inc bc
    db $ec
    inc b
    cpl
    inc c
    ld hl, $2106
    rlca
    ld [hl], a
    inc d
    rst $28
    jr z, jr_003_6d6f

    ld d, b
    sbc h
    add b
    dec e
    ld de, $0203
    ldh a, [rP1]
    cp h
    jr nz, jr_003_6d2b

    ld [$02b3], sp
    or l
    nop
    push af
    nop
    ei
    add b
    ldh [rLCDC], a
    jr nz, jr_003_6d6a

    jr nz, jr_003_6d6c

    ld h, b
    nop
    ld b, b
    nop
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    add b
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    add h
    sbc $50
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $18
    ld [hl], c
    rst $38
    ld bc, $0103
    inc bc
    ld bc, $0102
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    cp $f7
    ld a, [$f2ff]
    rst $38
    cp $01
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    jr c, jr_003_6e6c

    inc d
    ld [$000e], sp
    rlca
    nop
    inc bc
    ld bc, $0307
    rrca
    rlca
    rla
    rrca
    dec bc
    rlca

jr_003_6e6c:
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ret nz

    add b
    ldh [$c0], a
    ldh a, [$e0]
    ld hl, sp-$10
    call c, $fee8
    call z, $f87c
    cp b
    ld [hl], b
    ld d, b
    jr nz, jr_003_6eb7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    rlca

jr_003_6eb7:
    nop
    ld [hl], b
    nop
    ld [hl], b
    jr nz, jr_003_6f0d

    jr nz, jr_003_6f2f

    jr nz, jr_003_6f31

    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    or b
    ld h, b
    ldh a, [rNR41]
    ldh a, [$e0]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    dec bc
    rlca
    rla
    rrca
    cpl
    rra
    ld e, a
    ccf
    cp e
    ld [hl], a
    ld a, a
    ld [hl-], a
    ld a, $1c
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    adc d
    inc b
    call c, $f880
    ret nz

    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b

jr_003_6f0d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    add b
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $28
    ld e, a
    rst $38
    ld a, a
    rst $38
    nop
    nop

jr_003_6f2f:
    nop
    nop

jr_003_6f31:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    rst $38
    add b
    ei
    adc [hl]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld a, [bc]
    inc b
    dec e
    ld c, $3e
    rra
    ld a, a
    inc sp
    dec sp
    rla
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld b, b
    add b
    and b
    ret nz

    ret nc

    ldh [$e8], a
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    ldh [rP1], a
    ld [hl], b
    nop
    jr z, jr_003_6fa4

    inc e
    ld [$0008], sp
    rra
    nop
    rra
    rrca
    rra
    add hl, bc
    dec de
    dec c
    rra
    rrca
    rra
    rrca

jr_003_6fa4:
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    nop
    inc e
    nop
    inc e
    nop
    inc e
    ld [$0814], sp
    inc e
    ld [$001c], sp
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    rrca
    rlca
    rra
    inc bc
    dec sp
    ld bc, $2051
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    jr c, jr_003_700e

    ld a, h

jr_003_6fff:
    jr c, jr_003_6fff

    ld c, h
    db $dd
    xor $fa
    db $fc
    db $f4
    ld hl, sp-$18
    ldh a, [$d0]
    ldh [$a0], a
    ret nz

jr_003_700e:
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    cp e
    ld h, a
    rst $38
    rlca
    ld [$0f07], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    cp $82
    db $fc
    ld a, h
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    xor d
    ld b, h
    sub c
    ld l, [hl]
    add b
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    xor [hl]
    ld b, b
    dec de
    db $e4

jr_003_7092:
    ld de, $fbee
    inc b
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    xor d
    ld b, h
    ld de, $00ee
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    and b
    ld b, b
    jr nz, jr_003_7092

    jr nz, @-$3e

    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0700
    rlca
    rrca
    rrca
    rra
    rra
    dec e
    inc e
    jr nc, jr_003_7116

    jr nz, jr_003_7108

    jr nz, jr_003_710a

    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    add sp, -$29
    db $e4
    ld e, e
    ld [c], a
    db $dd
    db $e4
    db $db
    xor b
    rla
    inc h
    dec de
    ld [hl+], a
    dec e

jr_003_7108:
    and h
    dec de

jr_003_710a:
    jr z, jr_003_7123

    inc h
    dec de
    ld l, $11
    dec sp
    inc b
    ld de, $1b0e
    inc b

jr_003_7116:
    ld c, $00
    add b
    nop
    ldh a, [$60]
    db $fc
    ld e, h
    cp $7e
    rst $38
    ld a, a
    or a

jr_003_7123:
    rlca
    add c
    ld bc, $0080
    and b
    nop
    sub b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    jr z, @+$19

    inc h
    dec de
    ld [hl+], a
    dec e
    inc h
    dec de
    jr z, jr_003_719b

    inc h
    dec de
    ld [hl+], a
    dec e
    inc h
    dec de
    jr z, jr_003_71a3

    inc h
    dec de
    ld l, $11
    dec sp
    inc b
    ld de, $1b0e
    inc b
    ld c, $00
    add b
    nop
    add b

jr_003_719b:
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b

jr_003_71a3:
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld [hl], $00
    ld h, c
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    sbc h
    nop
    cp [hl]
    inc e
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld b, l
    rst $38
    ld [hl], b
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_003_71e4

jr_003_71e4:
    ld a, h
    jr z, @-$02

    ld l, b
    db $fc
    db $10
    sub d
    ld l, h
    cp d
    ld b, h
    db $fc
    add b
    cp $f8
    cp $ac
    rst $38
    adc b
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld b, d
    nop
    ret nz

    nop
    sbc h
    nop
    cp [hl]
    inc e
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    daa
    ld a, a
    inc hl
    ld a, a
    inc hl
    ld a, a
    add hl, sp
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_003_7224

jr_003_7224:
    ld a, h
    jr z, @-$02

    ld l, b
    db $fc
    db $10
    sub d
    ld l, h
    cp d
    ld b, h
    db $fc
    add b
    cp $f8
    cp $6c
    rst $38
    ld [$008f], sp
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    sbc h
    nop
    cp [hl]
    inc e
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld c, a
    rst $38
    ld b, l
    rst $38
    ld [hl], b
    ld a, c
    nop
    nop
    nop
    stop
    stop
    ld de, $8200
    nop
    nop
    nop
    jr z, jr_003_7266

jr_003_7266:
    ld a, h
    jr z, @-$02

    ld [$649a], sp
    ld b, c
    cp [hl]
    dec b
    ld a, [$649a]
    cp $b8
    rst $38
    adc h
    rst $18
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3b00
    ld bc, $037f
    ld a, a
    inc de
    ld a, a
    ld hl, $017f
    ld [hl], a
    ld b, e
    ld [hl], e
    ld b, c
    ld sp, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_003_72a4

jr_003_72a4:
    cp $00
    rst $38
    cp $d7
    rst $38
    cp e
    rst $10
    cp e
    rst $10
    cp e
    rst $10
    rst $38
    rst $38
    db $db
    cp $da
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh a, [rP1]
    or b
    nop
    or b
    nop
    jr nc, jr_003_72d4

jr_003_72d4:
    jr nc, jr_003_72d6

jr_003_72d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    rlca
    ld bc, $010f
    rrca
    inc bc
    rrca
    inc bc
    rrca
    ld bc, $000f
    ld b, $00
    ld b, $00
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_003_7300

jr_003_7300:
    cp $00
    rst $38
    cp $d7
    rst $38
    cp e
    sub $bb
    sub $bb
    rst $10
    rst $38
    rst $38
    db $db
    cp $da
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3b00
    ld bc, $037f
    ld a, a
    ld [de], a
    ld a, a
    jr nz, jr_003_73ce

    ld bc, $4377
    ld [hl], e
    ld b, c
    ld sp, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_003_7364

jr_003_7364:
    cp $00
    rst $38
    sub d
    sub e
    ld l, l
    dec b
    ld a, [$be41]
    sub e
    ld l, l
    rst $38
    sub e
    db $db
    cp $da
    inc h
    inc h
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_003_73ab

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_003_73bb

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_003_73cb

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_003_73db

    ld [hl-], a

jr_003_73ab:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_003_73eb

    scf
    ld a, [hl-]
    dec sp
    inc a
    ld a, [hl-]
    dec a
    ld a, $3f
    ld b, b

jr_003_73bb:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, c
    ld c, c

jr_003_73cb:
    ld c, c
    ld c, l
    ld c, [hl]

jr_003_73ce:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_003_73db:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_003_73eb:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76

jr_003_73f6:
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub b
    sub d
    sub b
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp e
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $c6cb

    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_003_7457

    rst $38

jr_003_7457:
    rlca
    nop
    cpl
    ret z

    add hl, bc
    di
    ld [bc], a
    inc a
    rst $38
    rrca
    adc b
    sbc a
    pop hl
    ld de, $4b48
    cp $2f
    jr jr_003_73f6

    call nz, Call_003_49a2
    inc bc
    add d
    add b
    ret nz

    ret nz

    jr nz, jr_003_74ba

    inc hl
    ld sp, $3488
    ld d, [hl]
    db $10
    db $fd
    ld bc, $403e
    rst $08
    rla
    db $f4
    or [hl]
    ld e, a
    ld l, $98
    call z, $2001
    ldh [$28], a
    jr jr_003_7493

    ld [bc], a
    add h
    ld bc, $c05f
    ld [hl], a

jr_003_7493:
    di
    reti


    ld hl, sp-$02
    ld a, [hl]
    ld hl, $4c1f
    ld b, a
    db $d3
    push hl
    rst $28
    ld b, a
    ld [bc], a
    ccf
    ret nz

    rst $08
    rst $30
    cp h
    ld c, h
    cp $40
    rra
    call nc, $8147
    pop af
    ld hl, sp+$7c
    ld [hl+], a
    rst $28
    add hl, bc
    cp e
    call c, $fa6d
    db $e3
    dec e
    ld a, a

jr_003_74ba:
    ld e, a
    ld b, e
    call nz, $01c0
    ld b, b
    ld a, d
    ld e, c
    ld e, $8f
    ld b, e
    jp c, $8c58

    dec sp
    ld h, e
    add hl, bc
    add d
    rst $38
    nop
    cp [hl]
    xor $6f
    ret nz

    ldh [$0c], a
    ld a, h
    ld bc, $c13f
    ret nc

    rlca
    db $f4
    inc b
    ld [hl+], a
    and $b9
    inc a
    adc [hl]
    add hl, de
    inc c
    rst $00
    and d
    call c, $d7f6
    dec e
    cp d
    ld b, e
    rst $28
    and b
    ld h, e
    ret c

    ld e, $e9
    inc c
    sbc b
    ld [de], a
    ld c, $94
    ret


    ret c

    rra
    ld d, b
    rra
    adc b
    ld bc, $c760
    sbc b
    inc [hl]
    or $85
    inc a
    ld hl, $c88f
    daa
    ld hl, sp+$0d
    cp $07
    ld a, h
    add d
    ld h, e
    rst $30
    scf
    set 4, b
    ld d, $09
    inc bc
    add b
    rst $08
    rst $20
    or c
    ldh a, [$d8]
    jr jr_003_7522

    ld c, $03
    rra
    ld h, a

jr_003_7522:
    or a
    set 4, l
    db $10
    ld [$4140], sp
    rst $10
    rst $28
    or $f9
    adc h
    add [hl]
    ld [hl], b
    jr nc, @+$40

    dec e

jr_003_7533:
    inc e
    or b
    ret nz

    inc hl
    ld [hl], b
    ld a, [hl]
    dec sp
    rrca
    rst $00
    ld h, c
    ei
    jr nz, @+$32

    db $76
    dec hl
    inc e
    adc d
    ld c, a
    ld b, $83
    inc b
    adc c
    cp [hl]
    rst $38
    ld e, a
    cp h
    ld b, b
    dec h
    inc bc
    inc bc
    db $fd
    ldh [$f4], a
    db $76
    dec b
    ld bc, $a080
    ld sp, $ece8
    dec a
    dec e
    add b
    add b

jr_003_7560:
    ld h, b
    ld [hl], b
    dec sp
    db $ec
    ld [hl], $59
    inc [hl]
    sub [hl]
    dec c
    ld a, [bc]
    ld b, $02
    db $fc
    rst $18
    rra
    set 6, d
    inc c
    add e
    jr nc, jr_003_7581

    inc bc
    ret nc

    rst $38
    dec a
    adc a
    ldh a, [$5c]
    rra
    add e
    ld b, $01
    db $fc

jr_003_7581:
    jr nz, jr_003_7592

    ret nz

    ldh [$3e], a
    inc c
    ld b, $cf
    or b
    ld h, l
    xor [hl]
    ld a, $0f
    inc bc
    ret nz

    adc a
    ccf

jr_003_7592:
    call z, $fcf3
    pop hl
    jr c, jr_003_75f9

    and [hl]
    or h
    ld sp, hl
    ld [bc], a
    nop
    add b
    inc c
    inc bc
    rra
    rlca
    ret nz

    ret z

    inc sp

jr_003_75a5:
    add hl, bc
    jp nz, $bc40

    jr z, jr_003_7533

    rst $00
    push af
    db $f4
    add b
    rla
    ld b, [hl]
    inc [hl]
    sbc h
    nop
    inc sp
    call z, Call_000_3c03
    ret nc

    rla
    call nz, $fc02
    and b
    daa
    jp z, $fc02

    add b
    sub b
    db $e4
    jr c, jr_003_75a5

    ld b, a
    ld b, d
    ld h, d
    jr c, jr_003_7560

    ldh [$38], a
    jr nz, jr_003_7592

    inc e
    ld b, a
    inc a
    pop bc
    inc sp
    add sp, $0a
    sub d
    add b
    add h
    ld a, [bc]
    ld [hl-], a
    rrca
    jp $9df8


    ld [bc], a
    ccf
    ld b, b
    ld d, e
    db $e4
    dec b
    ccf
    ld b, b
    inc de

jr_003_75e9:
    ld hl, sp+$02
    ccf
    nop
    inc hl
    ld hl, sp+$00
    sbc c
    and $79
    ld d, h
    add b
    ld e, a
    sbc [hl]
    ld [de], a
    db $fc

jr_003_75f9:
    add c
    jr nz, jr_003_7662

    ret


    ld d, $44
    sbc l
    daa
    add hl, sp
    jp c, $9e75

    daa
    inc [hl]
    ld a, [bc]
    ld c, b
    adc l
    ret nc

    add hl, hl
    and [hl]
    ld l, b
    and b
    daa
    ld sp, hl
    cp $23
    ld [hl+], a
    ld [$b189], sp
    rla
    cpl
    ldh [rNR43], a
    ld c, $6c
    and b
    xor b
    ld a, [de]
    add hl, sp
    ld [bc], a
    and c
    jr z, jr_003_768e

    or [hl]
    adc c
    sbc h
    add hl, hl
    inc bc
    db $ed
    cp [hl]
    adc c
    ld h, l
    ld [hl], c
    cp $59
    nop
    ld b, b
    inc d
    add hl, bc
    ld c, d
    ld d, e
    rrca
    ld [hl], h
    ld h, c
    ld a, [hl]
    jr nc, jr_003_764c

    di
    ld sp, hl
    jr jr_003_75e9

    inc d
    jp c, $ff8c

    xor c
    ld c, a
    call nz, Call_003_6860
    ld a, [hl-]
    dec hl

jr_003_764c:
    ld a, [bc]
    ret nz

    ld l, c
    ld a, [hl-]
    ld b, [hl]
    ld d, e
    sub h
    dec h
    add hl, sp
    ld b, b
    ld d, e
    sub h
    ld d, h
    dec a
    rlca
    ld bc, $e0c4
    jr c, jr_003_76ac

    inc bc
    inc b

jr_003_7662:
    adc b

jr_003_7663:
    ld [hl+], a
    ld c, c
    add d
    ld h, h
    sub b
    inc h
    ld l, h
    ld l, e
    db $10
    ld [hl], d
    inc a
    xor h
    pop bc
    db $e4
    ld sp, hl
    dec bc
    ld c, $c0
    jr nc, jr_003_7663

    ld de, $6b8e
    ld d, [hl]
    push de
    or b
    add [hl]
    ld bc, $3084
    inc c
    ld c, e
    ld [bc], a
    add $c6
    ld d, $05
    sub c
    jr nz, jr_003_76d4

    cp b
    ret nz

    ld h, e

jr_003_768e:
    sbc b
    ld l, $3b
    add a
    db $d3
    db $f4
    ld e, d
    ld a, $81
    ld b, e
    ret nc

    add hl, bc
    ld a, [hl-]
    ld b, [hl]
    or e
    xor h
    ld [hl], e
    inc a
    db $ec
    ld c, e
    jr @+$1a

    ld b, $6b
    db $eb
    ld [bc], a
    jp nz, Jump_000_0002

    sbc e

jr_003_76ac:
    ldh [rPCM12], a
    dec a
    add l
    ld h, e
    ret c

    ld b, h
    add hl, sp
    jr nc, @+$4e

    ld [de], a
    push de
    inc d
    rst $08
    ld sp, $f1c4
    or a
    ld [bc], a
    nop
    add a
    ld c, $c3
    xor l
    set 4, b
    add b
    sbc h
    ld c, b
    dec d
    call nz, $1e87
    ld [$f031], sp
    cp $1f
    ld c, b
    pop af

jr_003_76d4:
    ld hl, sp-$10
    ld d, e
    adc $11
    db $fd
    ld c, d
    ld hl, $d894
    ret z

    sbc a
    scf
    adc [hl]
    inc sp
    adc h
    inc a
    ld c, $0c
    ld [hl], e
    ld a, h
    ld hl, sp+$5f
    add hl, bc
    ld hl, sp+$04
    ld a, a
    inc a
    ld b, a
    di
    sub b
    ld a, a
    inc l
    ld b, e
    inc de
    add c
    and $00
    ld b, $73
    db $fc
    jr c, @+$41

    pop hl
    jp $e70d


    ccf
    and $c9
    ld sp, $6a3a
    inc de
    db $e3
    db $f4
    cp $3c
    rst $08
    sub d
    jr c, @-$67

    ld e, $43
    jp $d81c


    rrca
    ret nc

    adc c
    adc c
    ld a, l
    cpl
    ld b, a
    ld [$0398], a
    ccf
    add e
    sub e
    ei
    ld c, e
    inc c
    rst $08
    di
    adc h
    rst $38
    add hl, sp
    rst $08
    ld a, [c]
    jr c, @+$01

    rlca
    inc d
    or b
    jr jr_003_7741

    inc bc
    ld [de], a
    adc d
    sbc l
    inc a
    ccf
    add a
    inc sp
    ld hl, sp-$05
    ld c, a
    inc de

jr_003_7741:
    ld [hl], h
    db $e4
    nop
    sub l
    ld l, c
    xor d
    ld [hl], d
    sbc l
    sbc $29
    ld a, b
    sub d
    ld d, [hl]
    nop
    dec h
    adc l
    ld d, l
    inc bc
    ld a, $8f
    adc [hl]
    inc d
    ld a, [bc]
    ld [bc], a
    nop
    jr nz, jr_003_775c

jr_003_775c:
    ld a, [hl]
    rra
    inc bc
    ldh [$f3], a
    adc d

jr_003_7762:
    ld [c], a
    sub b
    jr nz, jr_003_7762

    nop
    ld [de], a
    nop
    add c
    inc bc
    add c
    rrca
    jp hl


    or c
    inc b
    ld bc, $f7e5
    sbc [hl]
    ld b, $9b
    sub [hl]
    add b
    scf
    add hl, bc
    ld [bc], a
    ccf
    nop
    ld c, $23
    adc d
    db $e3
    jr c, @-$10

    ld b, b
    nop
    ld e, $c3
    or c
    db $e4
    add hl, sp
    push hl
    ld a, c
    ld a, d
    ld l, a
    sbc d
    rst $20
    ld a, [hl-]
    adc $bb
    or b
    push hl
    cp c
    adc [hl]
    add c
    inc bc
    ld a, $d4
    ld l, l
    rst $38
    ld a, d
    rrca
    rst $30
    call nz, $080d
    and [hl]
    ld a, c
    db $fd
    db $ed
    ld [bc], a
    pop hl
    ld a, b
    ld a, [hl]
    daa
    adc e
    db $e3
    ld b, e
    adc $95
    ld [bc], a
    db $eb
    ld a, d
    cp $c7
    cp d
    rrca
    call nz, $0f30
    sbc l
    ld l, a
    ld a, e
    rst $38
    dec de
    pop bc
    and a
    add b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    ld [bc], a
    dec b
    inc b
    ld b, $01
    dec b
    inc bc
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_003_7801

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld a, [de]
    jr nz, jr_003_7812

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $1c
    ld h, $26
    daa
    jr z, jr_003_7823

    daa
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_003_7801:
    dec l
    ld l, $2f
    jr nc, jr_003_7837

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_003_7847

    ld a, [hl-]
    dec sp
    inc a
    ld a, [hl-]

jr_003_7812:
    dec a
    ld a, $3f
    dec sp
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, d
    ld b, l
    ld a, [hl-]
    ld a, [hl-]
    ld b, d
    ld b, d
    dec sp
    ld b, h

jr_003_7823:
    dec sp
    ccf
    nop
    add b
    and b
    ld d, b
    ld c, b
    inc e
    ld a, [de]
    dec bc
    ld [bc], a
    ld b, $42
    and c
    ld [hl], b
    ret z

    ld l, h
    ld a, [hl-]
    rra
    db $10

jr_003_7837:
    adc b
    call nz, $e0a1
    ld hl, sp+$50
    ld a, [hl-]
    ld a, [hl+]
    inc c
    rlca
    ld b, h
    db $e3
    ld [hl], c
    ret z

    db $ec
    ld h, d

jr_003_7847:
    ld sp, $901d
    ret z

    and h
    ld [hl], d
    ld c, c
    db $10
    ld c, b
    dec l
    jr z, @-$6a

    add h
    db $e4
    pop hl
    ld h, b
    sbc b
    jr nc, jr_003_787f

    ld l, $92
    call nz, Call_000_11e3
    ld a, b
    or h
    ld [hl], $4f
    ld sp, $449c
    dec h
    sub e
    add hl, de
    sub h
    ld l, $3f
    ld a, $a0
    rst $08
    add b
    ret nc

    xor d
    jr nz, jr_003_78a6

    adc l
    ld de, $46a4
    jp nz, $e0f0

    cp l
    jr nc, jr_003_7897

    ld c, h

jr_003_787f:
    and a
    ld d, b
    and d
    inc de
    ld c, c
    and h
    ld [hl], $a3
    ld a, [bc]
    xor h
    ld b, e
    ld bc, $daa0
    add l
    ld [hl], d
    sbc c
    ld e, h
    sub c
    pop de
    xor b
    sub h
    ld a, [bc]
    sbc h

jr_003_7897:
    ld a, $b9
    ld l, b
    xor [hl]
    reti


    add b
    ldh a, [$ab]
    ld h, b
    ld [hl-], a
    db $dd
    ld de, $52b8
    jp hl


jr_003_78a6:
    or h
    ld a, [$3e8d]
    dec e
    ld c, d
    add l
    sbc $68
    pop af
    ld c, b
    or l
    ld e, d
    add hl, de
    ld c, h
    ld a, [bc]
    ld c, d
    ld [bc], a
    or l
    nop
    ld h, l
    add h
    add hl, de
    add hl, bc
    dec bc
    ret nz

    xor c
    sub b
    sbc b
    ld e, h
    or d
    ld d, e
    dec l
    add [hl]
    db $db
    xor l
    sub [hl]
    ld e, c
    cp [hl]
    ld b, [hl]
    dec d
    ld a, [hl-]
    adc [hl]
    add e
    ld h, c
    nop
    dec hl
    ld d, l
    sbc d
    ld h, h
    dec b
    adc c
    db $d3
    daa
    sub l
    inc c
    db $10
    ld c, a
    inc b
    dec d
    cp e
    db $e4
    and c
    ld a, d
    dec de
    ld l, h
    ld a, [hl-]
    push hl
    ccf
    cp a
    ld c, l
    and c
    sbc b
    inc l
    add b
    ld e, e
    add hl, bc
    adc l
    add l
    db $dd
    ld h, c
    ld a, [$ccaa]
    ld c, e
    dec hl
    add b
    ld b, $6d
    db $76
    ld hl, sp+$58
    sbc l
    and e
    add hl, sp
    ld [bc], a
    ld [bc], a
    ld b, h
    or l
    cp c
    ld sp, hl
    dec l
    ld b, [hl]
    cp c
    xor b
    xor a
    xor $ad
    ld [de], a
    ld e, h
    inc a
    ld [hl], $ab
    or e
    xor l
    jp c, $d7ba

    sbc l
    xor [hl]
    ld [de], a
    dec e
    and [hl]
    call z, $fa6d
    db $dd
    ld a, b
    ld d, h
    add e
    add e
    adc a
    sub a
    ld l, a
    ld h, c
    reti


    cp b
    ccf
    cp e
    sub e
    ld d, e
    or h
    db $fc
    cp d
    sub e
    dec l
    ld b, b
    inc c
    rlca
    dec bc
    ei
    ldh a, [$c2]
    cp a
    ld a, a
    call nz, $ed8d
    ld h, a
    sub e
    push af
    ld [hl], c
    rla
    add b
    ret nc

    and $35
    cp c
    ld l, h
    inc e
    ld h, b
    dec [hl]
    sbc $57
    inc e
    sub a
    add hl, hl
    rst $10
    ld d, a
    ld e, $74
    dec l
    xor b
    add h
    call c, $3544
    ld a, [c]
    ld [hl], d
    ld e, $f6
    ld [hl], l
    inc h
    ld [bc], a
    nop
    sub h
    add hl, hl
    db $ed
    add [hl]
    ld h, b
    ldh [rNR11], a
    di
    adc c
    ld [hl+], a
    ld d, a
    db $dd
    ld l, b
    adc c
    sub $97
    push af
    sub $67
    and d
    call nc, Call_000_202e
    ld h, a
    ld e, a
    jr nz, jr_003_79c0

    db $10
    inc b
    ld d, c
    ld a, b
    ret nc

    ld c, $7c
    sub [hl]
    ld l, b
    ld [hl], $31
    adc [hl]
    ret nc

    ld d, l
    ld [hl], b
    inc b
    adc b
    ret nz

    ret c

    call z, $0311
    sub $95
    sbc [hl]
    cpl
    adc e
    db $e3
    ret c

    ld l, d
    ld hl, $d286
    jr nz, jr_003_79cf

    dec bc
    ld b, d
    and h
    ret


    ld c, d
    ld c, e
    sub l
    dec h
    inc [hl]
    ld d, $40
    ld bc, $3900
    ld h, d
    ld e, d
    sub b
    dec h
    ret nz

    ld [de], a
    ld d, [hl]
    sub l
    ld b, b
    add hl, hl
    ld h, d

jr_003_79c0:
    ld h, e
    sbc c
    ld h, $59
    sbc d
    ld h, b
    sbc b
    dec h
    cp c
    xor d
    ld e, l
    sub [hl]
    ld h, $89
    ld d, d

jr_003_79cf:
    ld l, e
    sub [hl]
    ld h, [hl]
    reti


    ld d, c
    ld bc, $fbfb
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ld bc, $0101
    nop
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ld bc, $c300
    ld bc, $f9fb
    rst $38
    ldh [rNR23], a
    rlca
    rrca
    nop
    ld a, a
    ld [hl], b
    ccf
    jr nz, jr_003_7a21

    nop
    ccf
    nop
    db $fc
    ret c

    rst $38
    nop
    inc b
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf

jr_003_7a21:
    pop af
    ld bc, $1018
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ld bc, $0001
    nop
    rlca
    inc bc
    rst $38
    nop
    inc sp
    inc a
    cp $00
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ld bc, $8001
    nop

jr_003_7a55:
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    sbc e
    db $e4
    rst $18
    db $e4
    db $fd
    or $fe
    di
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    ld d, b
    sbc $50
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rlca
    ld hl, sp+$0f
    db $f4
    rst $38
    db $f4
    rst $30
    db $e4
    sbc l
    ld [$cbec], a
    xor $c7
    rst $38
    rst $00
    rst $38
    add b
    rst $38
    ld b, h
    ei
    res 6, c
    and c
    sub e
    sub d
    pop bc
    ld b, c
    rst $38
    ld a, a
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_003_7a55

    ld a, b
    rst $08
    ld c, b
    or [hl]
    ld e, c
    rst $38
    ld bc, $7f84
    add [hl]
    ld a, a
    rst $30
    ld a, a
    rst $38
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    inc hl
    sbc $55
    rst $18
    ld d, l
    sbc e
    sub d
    scf
    ld a, [hl+]
    scf
    dec hl
    rst $38
    db $dd
    rst $38
    inc a
    inc b
    rst $38
    ld b, $ff
    rst $30
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    cp $7f
    rst $38
    ld a, a
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ld bc, $0200
    nop
    ei
    ei
    ld sp, hl
    ld sp, hl
    add hl, bc
    ld [$0001], sp
    ld a, a
    ld l, [hl]
    ccf
    scf
    pop bc
    ld bc, $0038
    rst $38
    ei
    rst $38
    ldh [rNR23], a
    rlca
    rrca
    nop
    ld a, a
    ld [hl], b
    ccf
    jr nz, jr_003_7b21

    nop
    ccf
    nop
    dec de
    dec bc
    rst $38
    nop
    inc b
    db $fc
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
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld l, a
    ccf
    rra

jr_003_7b21:
    ld bc, $0e01
    nop
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ld bc, $0001
    nop
    ei
    ei
    rst $38
    nop
    inc sp
    inc a
    cp $00
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $18
    nop
    ei
    ei

jr_003_7b47:
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ld bc, $8001
    nop

jr_003_7b55:
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    sbc e
    db $e4
    rst $18
    db $e4
    db $fd
    or $fe
    di
    rst $38
    jr nz, jr_003_7b47

    ld d, b
    rst $18
    ld d, b
    rst $38
    jr nz, @+$01

    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    inc b
    rlca
    ld hl, sp+$0f
    push af
    rst $38
    push af
    rst $30
    push hl
    sbc l
    ld [$caed], a
    xor $c7
    rst $38
    rst $00
    ei
    adc e
    pop af
    sub c
    ld [hl], e
    ld d, d
    ld hl, $8021
    add b
    add b
    add b
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_003_7b55

    ld a, b
    rst $08
    ld c, b
    or [hl]
    ld e, c
    rst $38
    ld hl, $7f84
    add [hl]
    ld a, a
    rst $30
    ld a, a
    rst $38
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    call c, $de53
    ld d, l
    sbc a
    sub l
    dec de
    ld [de], a
    scf
    ld a, [hl+]
    scf
    dec hl
    rst $38
    db $dd
    rst $38

Call_003_7bc4:
    inc a
    inc b
    rst $38
    ld b, $ff
    rst $30
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    cp $7f
    rst $38
    ld a, a
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    scf
    dec b
    ld bc, $0000
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    rst $38
    ld a, a
    cp a
    scf
    sub c
    ld bc, $0000
    ei
    ei
    rst $38
    ldh [rNR23], a
    rlca
    rrca
    nop
    ld a, a
    ld [hl], b
    ccf
    jr nz, jr_003_7c21

    nop
    ccf
    nop
    ei
    ld a, [$00ff]
    inc b
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_003_7c11:
    rst $38
    nop
    rst $38
    jr nz, jr_003_7c11

    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf

jr_003_7c21:
    ld bc, $e001
    nop
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ld bc, $0001
    nop
    sbc e
    adc e
    rst $38
    nop
    inc sp
    inc a
    cp $00
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a

jr_003_7c4f:
    ccf
    ccf
    ld bc, $8001
    nop

jr_003_7c55:
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    sbc e
    db $e4
    rst $18
    db $e4
    db $fd
    or $fe
    di
    rst $18
    ld d, b
    rst $38

jr_003_7c68:
    jr nz, jr_003_7c68

    nop
    ld a, a
    nop
    rst $38
    jr nz, jr_003_7c4f

    inc b
    db $db
    ld e, e
    pop de
    ld d, c
    rlca
    ld hl, sp+$0f
    push af
    rst $38
    push af
    rst $30
    push hl
    sbc l
    ld [$caed], a
    xor $c7
    rst $38
    rst $00
    db $d3
    jp nc, $c1c1

    ld b, b
    ld b, b
    nop
    nop
    add b
    add b
    add b
    add b
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_003_7c55

    ld a, b
    rst $08
    ld c, b
    or [hl]
    ld e, c
    rst $38
    ld hl, $7f84
    add [hl]
    ld a, a
    rst $30
    ld a, a
    rst $38
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    call c, $de53
    ld d, l
    sbc a
    sub l
    dec de
    ld [de], a
    scf
    ld a, [hl+]
    scf
    dec hl
    rst $38
    db $dd
    rst $38
    inc a
    inc b
    rst $38
    ld b, $ff
    rst $30
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    cp $7f
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_003_7e7e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
