; Disassembly of "Addams Family, The (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    nop
    nop
    inc bc
    nop
    ld a, $01
    cpl
    db $10
    scf
    inc c
    ccf
    ld [$007f], sp
    ld a, a
    jr nz, jr_004_4030

    ld h, l
    ld a, a
    jr nz, jr_004_4094

    nop
    ccf
    ld [$0c37], sp
    cpl
    db $10
    ld a, $01
    inc bc
    nop
    nop
    nop
    ldh [$80], a
    ld a, [hl]
    ret nz

    ld a, [$f604]

jr_004_4029:
    jr jr_004_4029

    adc b
    rst $38
    nop
    rst $38
    add d

jr_004_4030:
    ld a, l
    db $d3
    db $fd
    add d
    rst $38
    nop
    or $88
    xor $18
    cp $04
    ld a, [hl]
    ret nz

    ldh [$80], a
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
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

Call_004_4072:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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

jr_004_4094:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$1007], sp
    rrca
    db $10
    rrca

jr_004_40c8:
    db $10
    rrca
    ld [$0707], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_004_40e6:
    ld b, b
    add b
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
    jr nz, jr_004_40c8

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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_004_40e6

    ld [$30f0], sp
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
    inc bc
    nop
    rlca
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
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
    inc bc
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
    rst $38
    nop
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
    rst $00
    nop
    rst $38
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
    ld hl, sp+$00
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
    ldh [rP1], a
    nop
    nop
    ld hl, sp+$00
    ldh [rP1], a
    cp $00
    rst $38
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    rra
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
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
    ccf
    nop
    rst $38
    nop
    db $e3
    nop
    nop
    nop
    nop
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
    add b
    nop
    cp $00
    nop
    nop
    cp $00
    ldh [rP1], a
    ret nz

    nop
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
    inc bc
    nop
    ld b, $00
    inc c
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    ld b, $00
    ld [bc], a
    nop
    ld b, $00
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    nop
    jr nc, jr_004_427b

jr_004_427b:
    ld h, b
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
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    rlca
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
    ret nz

    nop
    ldh [rP1], a
    jr nz, jr_004_42ab

jr_004_42ab:
    jr nc, jr_004_42ad

jr_004_42ad:
    jr jr_004_42af

jr_004_42af:
    ld [$0c00], sp
    nop
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
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
    nop
    nop
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
    inc c
    nop
    jr c, jr_004_42e9

jr_004_42e9:
    ld h, b
    nop
    ret nz

    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_004_42f3

jr_004_42f3:
    jr jr_004_42f5

jr_004_42f5:
    inc c
    nop
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld b, $00
    inc c
    nop
    ld [$0800], sp
    nop
    ld e, $00
    ld [de], a
    nop
    ld [de], a
    nop
    ld [hl-], a
    nop
    ld [hl+], a
    nop
    jr nc, jr_004_4343

jr_004_4343:
    ld [hl], b
    nop
    ret nc

    nop
    sub b
    nop
    stop
    jr jr_004_434d

jr_004_434d:
    inc c
    nop
    inc b
    nop
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    inc hl
    nop
    ld hl, $2100
    nop
    ld hl, $2000
    nop
    jr nz, jr_004_436f

jr_004_436f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
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

    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nz, jr_004_4397

jr_004_4397:
    jr nz, jr_004_4399

jr_004_4399:
    ldh [rP1], a
    and b
    nop
    jr nz, jr_004_439f

jr_004_439f:
    jr nz, jr_004_43a1

jr_004_43a1:
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_43c3

jr_004_43c3:
    stop
    jr jr_004_43c7

jr_004_43c7:
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0300], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $00
    inc c
    nop
    ld [$1800], sp
    nop
    stop
    stop
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_004_4409

jr_004_4409:
    stop
    jr jr_004_440d

jr_004_440d:
    ld [$1800], sp
    nop
    ldh a, [rP1]
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
    jr jr_004_4423

jr_004_4423:
    ld [$0c00], sp
    nop
    inc c
    nop
    ld c, $00
    dec de
    nop
    ld de, $1000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_004_4438:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_004_445b

jr_004_445b:
    jr nc, jr_004_445d

jr_004_445d:
    ld a, b
    nop
    ret z

    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld [bc], a

Call_004_446a:
    nop
    ld [bc], a
    nop
    ld b, $00
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
    ld bc, $0300
    nop
    inc bc
    nop
    adc h
    nop
    add h
    nop
    add h
    nop
    ld b, $00
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    inc c
    nop

jr_004_4491:
    ld [$1800], sp
    nop
    jr nc, jr_004_4497

jr_004_4497:
    jr nz, jr_004_4499

jr_004_4499:
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld b, $00
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
    nop
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
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_004_44d5

jr_004_44d5:
    stop
    stop
    jr nc, jr_004_44db

jr_004_44db:
    jr nz, jr_004_44dd

jr_004_44dd:
    ld h, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld [hl], a
    nop
    db $dd
    ld [hl+], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    db $dd
    ld [hl+], a
    ld c, l
    ld [hl-], a
    ld h, l
    ld a, [de]
    jr nc, jr_004_4503

    dec e
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    nop
    nop
    nop

jr_004_4503:
    nop
    ld [hl], b
    nop
    ret c

    jr nz, jr_004_4491

    ld [hl], b
    adc b
    ld [hl], b
    sbc $20
    sbc [hl]
    ld h, h
    ccf
    call z, $8e7f
    rst $38
    rra
    ccf
    add hl, de

Call_004_4518:
    ld a, a
    inc e
    ld a, [hl]
    dec a
    ld a, a
    ld a, $7f
    ccf
    ld bc, $0300
    nop
    ld [bc], a
    ld bc, $0102

jr_004_4528:
    inc bc
    nop
    ld bc, $0f00
    nop
    rrca
    inc b
    rra
    ld b, $ff
    ld c, $ff
    rst $38
    rst $38
    di
    rst $38
    rst $20
    rst $28
    ld d, a
    rst $38
    ld c, a
    rst $38
    rst $38
    db $dd
    nop
    ld [hl], a
    adc b
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl], a
    adc b
    ld [hl], $c9
    sub h
    ld l, e
    pop bc
    ld a, $77
    ld [$0894], sp
    sub h
    ld [$0894], sp
    call nc, $d408
    adc b
    db $f4
    adc b
    cp $98
    ret nz

    nop
    ld h, b
    add b
    jr nz, @-$3e

    jr nz, jr_004_4528

    ld h, b
    add b
    ld b, b
    add b
    ret nz

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
    dec b
    ld [bc], a
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
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
    rst $38
    ccf
    rst $38
    rra
    cp a
    rra
    ccf
    rrca
    ccf
    rlca
    ld a, a
    add hl, de
    ld a, a
    inc l
    ld a, a
    ld a, $7f
    ld e, $3f
    ld c, $1f
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    ld bc, $0103
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    di
    rst $38
    ld b, $ff
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, [hl]
    rst $38
    ld b, b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld hl, sp+$40
    ld hl, sp+$50
    ld hl, sp-$10
    cp $9c
    cp $1c
    cp [hl]
    nop
    sub h
    ld [$0894], sp
    call nc, $d408
    adc b
    call nc, $d488
    ld [$009c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_460d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_461b:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$20
    ldh a, [$e0]
    ldh a, [rLCDC]
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
    ld [hl], a
    nop
    db $dd
    ld [hl+], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    db $dd
    ld [hl+], a
    ld c, l
    ld [hl-], a
    ld h, l
    ld a, [de]
    jr nc, jr_004_467f

    dec e
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    rrca

jr_004_467f:
    inc bc
    ld [hl], b
    nop
    ret c

    jr nz, jr_004_460d

    ld [hl], b
    adc b
    ld [hl], b
    ret c

    jr nz, jr_004_461b

    ld h, b
    ld a, $c0
    ld a, [hl]
    add h
    rst $18
    inc c
    ccf
    ld c, $3f
    rra
    ccf
    add hl, de
    ld a, a
    inc e
    ld a, [hl]
    dec a
    rst $38
    ld a, $ff
    ccf
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld [bc], a
    ld bc, $0102

jr_004_46ac:
    rrca
    nop
    rrca
    inc b
    rra
    ld b, $ff
    ld c, $ff
    rst $38
    rst $38
    di
    rst $38
    rst $20
    rst $28
    ld d, a
    rst $38
    ld c, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    db $dd
    nop
    ld [hl], a
    adc b
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl], a
    adc b
    ld [hl], $c9
    sub h
    ld l, e
    pop bc
    ld a, $b7
    ld [$0894], sp
    call nc, $d408
    adc b
    call nc, $d488
    adc b
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    add b
    jr nz, @-$3e

    jr nz, jr_004_46ac

    ld h, b
    add b
    ld b, b
    add b
    ret nz

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
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
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
    nop
    db $f4
    adc b
    cp $18
    cp [hl]
    inc e
    cp [hl]
    inc e
    cp [hl]
    nop
    call nc, $d408
    adc b
    call nc, $d488
    ld [$0894], sp
    inc d
    ld [$001c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    rra
    cp a
    rra
    ccf
    rrca
    ccf
    rlca
    ld a, a
    add hl, de
    ld a, a
    inc l
    ld a, a
    ld a, $7f
    ld e, $3f
    ld c, $1f
    nop
    inc bc
    ld bc, $0103
    inc bc
    nop
    ld bc, $0100
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    di
    rst $38
    ld b, $ff

jr_004_476f:
    ld c, a
    rst $38
    adc a
    rst $38
    ld c, [hl]
    rst $38
    jr nz, jr_004_476f

    ld d, b
    ld hl, sp-$10
    ld hl, sp-$20
    ldh a, [$e0]
    ldh a, [rLCDC]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $00
    rrca
    nop
    rrca
    ld bc, $010f
    rrca
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
    ld bc, $0700
    nop
    ccf
    nop
    rst $38
    jr nc, @+$01

    pop hl
    cp $e3
    db $fc
    rst $00
    ld hl, sp+$0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $00
    ld a, [hl]
    inc bc
    rst $38
    inc hl
    rst $38
    ld b, c
    rst $38
    ld b, b
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc l
    rst $38
    adc $ff
    xor $ff
    and $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$c0]
    ldh a, [$d0]
    ldh [$c0], a
    ld hl, sp-$40
    db $ec
    sbc b
    ld a, [c]
    inc a
    cp $1c
    rst $38
    nop
    ld a, a
    nop
    ld c, a
    jr nc, jr_004_4896

    ld sp, $013f
    ccf
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0307
    inc bc
    ld bc, $0103
    rlca
    inc bc
    rlca
    inc bc
    rrca
    ld b, $ff
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $28
    db $fc
    rst $08
    ld hl, sp-$71
    ld hl, sp+$1f
    ldh a, [$3f]
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28

jr_004_4896:
    db $fd
    rst $08
    db $fd
    rst $08
    db $fc
    rst $00
    cp $c7
    cp $c7
    rst $38
    db $ec
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    db $fd
    ld hl, sp-$01
    cp $fe
    db $fc
    cp $fc
    rst $38
    sbc $ff
    sbc $ff
    rst $08
    rst $38
    rst $20
    ld a, a
    pop af
    cp $04
    db $fc
    ld [$18fc], sp
    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$e0]
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
    add b
    nop
    add b
    nop
    add b
    nop
    rrca
    inc b
    rra
    inc c
    ccf
    jr jr_004_4926

    jr jr_004_4968

    add hl, sp
    ld a, a
    rra
    rra
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
    pop af
    ld a, a
    ldh a, [$7f]
    rst $38
    rst $38
    rst $38
    pop af
    pop af
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
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3

jr_004_4926:
    rst $38
    pop hl
    rst $38
    ld h, c
    ld a, a
    ccf
    ccf
    inc c
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
    ccf
    ldh a, [$9f]
    ld hl, sp-$01
    db $fc
    rst $38
    db $e3
    db $e3
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
    ret nz

    add b
    ret nz

    add b
    ldh [rLCDC], a
    ldh [rLCDC], a

jr_004_4968:
    ldh a, [$e0]
    ldh a, [$60]
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
    nop
    rst $38
    nop
    ld a, a
    nop
    ld c, a
    jr nc, jr_004_49d6

    ld sp, $013f
    ccf
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0307
    inc bc
    ld bc, $0103
    ld b, $03
    inc b
    inc bc
    dec c
    rlca
    rst $38
    cp a

Call_004_49a2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $7f
    db $fc
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_004_49d6:
    cp a
    rst $38
    ccf
    rst $20
    ccf
    pop hl
    ccf
    ldh a, [$1f]
    ld hl, sp-$01
    db $ec
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    db $fd
    ld hl, sp-$01
    cp $fe
    db $fc
    cp $fc
    rst $38
    cp $df
    cp $cf
    rst $38
    rst $00
    rst $38
    rst $20
    ld a, a
    add hl, bc
    rlca
    dec de
    rrca
    inc sp
    rra
    rra
    rrca
    rrca
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
    nop
    nop
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc h
    db $fc
    ret c

    ld hl, sp+$60
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
    rra
    db $fc
    rra
    cp $ff
    cp $ff
    rra
    rra
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
    di
    ccf
    di
    rra
    rst $38
    rra
    rst $38
    ld c, $fe
    cp b
    ld hl, sp-$10
    ldh a, [$c0]
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
    ret nz

    add b
    ret nz

    add b
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
    rst $38
    nop
    ld a, a
    nop
    ld c, a
    jr nc, jr_004_4af6

    ld sp, $013f
    ccf
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0307
    inc bc
    ld bc, $0103
    rlca
    inc bc
    rlca
    inc bc
    rrca
    rlca
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    cp $9f
    db $fc
    rra
    db $fc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_004_4af6:
    rst $18
    ld a, e
    rst $10
    ld a, l
    rst $00
    ld a, h
    rst $00
    ld a, h
    db $e3
    cp $ff
    db $ec
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    db $fd
    ld hl, sp-$01
    cp $fe
    db $fc
    cp $fc
    rst $28
    cp $e7
    cp $f7
    rst $38
    di
    ld a, a
    ld sp, hl
    rra
    ld c, $07
    inc e
    rrca
    ccf
    rra
    ccf
    jr jr_004_4ba1

    jr nz, jr_004_4b8b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$7f
    ldh a, [rIE]
    pop hl
    rst $38
    pop hl
    rst $38
    inc sp
    ccf
    dec de
    rra
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
    db $e3
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    pop af
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
    db $fc
    rrca
    cp $07
    rst $38
    add e
    rst $38
    jp Jump_004_63ff


    ld a, a

jr_004_4b8b:
    ccf
    ccf
    inc c
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
    ret nz

jr_004_4ba1:
    add b
    ret nz

    add b
    ldh [$c0], a
    ldh [$c0], a
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
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $e7
    ld hl, sp-$31
    ei
    rra
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    ret c

    rst $20
    sbc $ff
    db $ec
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    db $fd
    ld hl, sp-$01
    cp $fe
    db $fc
    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc b
    rra
    ld [$183f], sp
    ccf
    db $10
    ld a, a
    ld a, $7e
    inc a
    ld a, h
    jr nc, jr_004_4c5f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ccf
    rst $20
    ld a, a
    rst $38
    ld a, a
    rst $38
    adc a
    adc a
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
    nop

jr_004_4c5f:
    nop
    pop af
    sbc a
    ld hl, sp-$71
    db $fc
    adc a
    rst $38
    adc a
    rst $38
    sbc h
    db $fc
    ld hl, sp-$08
    ld h, b
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
    rst $38
    add c
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    inc e
    rra
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
    ret nz

    add b
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rNR41]
    ldh a, [$c0]
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
    rrca
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    ld a, a
    nop
    adc [hl]
    ld [hl], c
    rst $38
    nop
    push bc
    dec sp
    call z, $cc77
    ld [hl], a
    rst $38
    ld b, $ce
    ld [hl], a
    adc $71
    cp $03
    jp $f17d


    ld a, $3f
    ld bc, $003f
    ccf
    ld bc, $0c3f
    ld [hl], e
    rrca
    db $fc
    ld b, a
    db $fc
    add e
    db $fd
    ld b, d
    rst $38
    ld b, b
    cp $61
    rst $38
    ld h, c
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld e, h
    rst $38
    ld a, a
    rst $38
    rst $38
    ld e, a
    pop af
    cp a
    pop hl
    cp a
    ld d, e
    cp l
    ld b, e
    db $fc
    cp a
    xor a
    ldh a, [rTAC]
    ld sp, hl
    ld d, a
    xor c
    ld sp, hl
    rlca
    and e
    ld e, [hl]
    rlca
    db $fc
    sbc a
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    and $ff
    and $ff
    add $ff
    ld b, $7f
    add [hl]
    cp $90
    rst $38
    call nc, $95fe
    cp $11
    ld a, [c]
    dec c
    di
    inc c
    cp $01
    ei
    inc l
    ld sp, hl
    db $76
    db $fc
    rst $00
    rst $38
    ld hl, $061f
    rlca
    ld [bc], a
    inc bc
    nop
    inc bc
    nop

Call_004_4d48:
    ld bc, $f000
    nop
    cp $40
    db $db
    or [hl]
    db $db
    or [hl]
    db $db
    or [hl]
    rst $38
    nop
    db $db
    or [hl]
    rst $38
    sub d
    rst $38
    nop
    inc bc
    cp $fe
    ld hl, sp+$3f
    ld bc, $003f
    ccf
    ld bc, $0c3f
    ld [hl], e
    rrca
    db $fc
    ld b, a
    db $fc
    add e
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld h, b
    cp $61
    rst $38
    ld [hl], c
    rst $38
    ld a, b
    rst $38
    ld e, h
    rst $38
    ld a, a
    rst $38
    rst $38
    ld e, a
    pop af
    cp a
    pop hl
    cp a
    ld d, e
    cp l
    ld b, e
    db $fc
    cp a
    xor a
    ldh a, [rTAC]
    ld sp, hl
    ld d, a
    xor c
    rst $38
    ld bc, $07f9
    and e
    ld e, [hl]
    rlca
    db $fc
    sbc a
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $ffff
    ccf
    ld bc, $003f
    ccf
    ld bc, $0c3f
    ld [hl], e
    rrca
    db $fc
    ld b, a
    db $fc
    add e
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    cp $71
    rst $38
    ld a, c
    rst $38
    ld e, h
    rst $38
    ld a, a
    rst $38
    rst $38
    ld e, a
    pop af
    cp a
    pop hl
    cp a
    ld d, e
    cp l
    ld b, e
    db $fc
    cp a
    xor a
    ldh a, [rTAC]
    ld sp, hl
    ld d, a
    xor c
    rst $38
    ld bc, $01ff
    ld sp, hl
    rlca
    and e
    ld e, [hl]
    rlca
    db $fc
    sbc a
    ldh a, [rIE]
    ld bc, $ffff
    ld a, a
    nop
    pop hl
    ld a, $e9
    ld d, [hl]
    xor c
    ld d, [hl]
    add e
    ld a, [hl]
    db $d3
    ld l, [hl]
    and $3c
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    rrca
    ldh a, [$3f]
    rrca
    inc bc
    inc de
    rrca
    inc hl
    dec e
    cpl
    db $10
    ld e, e
    dec h
    ld e, e
    dec h
    adc a
    ld [hl], b
    add d
    ld a, l
    sbc d
    ld h, l
    ld c, a
    jr nc, jr_004_4e4f

    dec c
    rrca
    nop
    ret nz

    nop
    ret nz

    add b
    add b
    nop
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$60]
    ld hl, sp+$30
    ld hl, sp-$10
    db $fc

jr_004_4e35:
    ld a, b
    db $fc
    jr c, jr_004_4e35

    jr c, @-$06

    ld [hl], b
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    rlca
    ccf
    rra
    ld a, a
    jr c, jr_004_4ecc

    scf
    rst $28

jr_004_4e4f:
    ld a, a
    rst $28
    ld a, a
    rst $28
    ld a, a
    ld [hl], a
    ccf
    ld a, b
    ccf
    ccf
    rra
    rra
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
    ret nz

    nop
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$60]
    ld hl, sp-$50
    ld hl, sp-$50
    ld hl, sp-$50
    ld [hl], b
    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop

jr_004_4e80:
    nop
    nop

jr_004_4e82:
    nop
    nop

jr_004_4e84:
    rlca
    rlca
    rlca
    nop
    ld [$1007], sp
    rrca
    ld [de], a
    rrca
    ld hl, $211f
    rra
    ld hl, $101f
    rrca
    db $10
    rrca
    ld [$0707], sp
    nop
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
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    ld h, b
    and b
    jr nc, jr_004_4e80

    jr nc, jr_004_4e82

    jr nc, jr_004_4e84

    ld h, b
    and b
    ld h, b
    and b
    ret nz

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
    rlca
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    nop

jr_004_4ecc:
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop

jr_004_4eee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4ef6:
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rrca
    ld [$131c], sp
    jr jr_004_4f23

    add hl, sp
    ld h, $32

Jump_004_4f0f:
    dec l
    ld [hl-], a
    dec l
    ld [hl-], a
    dec l
    add hl, sp
    daa
    jr jr_004_4f2f

    inc e
    inc de
    rrca
    ld [$0704], sp
    nop
    nop
    nop
    nop
    nop

jr_004_4f23:
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_004_4eee

    and b

jr_004_4f2f:
    ret nz

    and b
    ret nz

    and b
    ret nz

    jr nz, jr_004_4ef6

jr_004_4f36:
    ld b, b
    add b

jr_004_4f38:
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    dec de
    inc b
    dec a
    ld [bc], a
    inc a
    inc bc
    ld a, b
    rlca
    db $76
    dec c
    ld [hl], d
    dec c
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld a, e
    ld c, $79
    ld b, $70
    rra
    ld [hl], c
    rra
    ld a, e
    ld c, $7f
    nop
    jr nc, @+$11

    rrca
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [$80], a
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    ret nz

    jr nc, jr_004_4f36

    jr nc, jr_004_4f38

    ld a, b
    add b
    ld hl, sp+$00
    db $10
    ldh [$e0], a
    nop
    db $10
    rrca
    rrca
    nop
    db $10
    rrca
    rrca
    nop
    db $10
    rrca
    rrca
    nop
    db $10
    rrca
    rrca
    nop
    rrca
    nop
    rlca
    nop
    dec c
    nop
    ld bc, $0200
    nop

Call_004_4f9a:
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh [$e0], a
    nop
    db $10
    ldh [$e0], a
    nop
    db $10
    ldh [$e0], a
    nop
    db $10
    ldh [$e0], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

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
    db $10
    rrca
    rra
    nop
    jr nz, @+$21

    rra
    nop
    jr nz, @+$21

    rra
    nop
    jr nz, @+$21

    rra
    nop
    rra
    nop
    rrca
    nop
    dec de
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop

Jump_004_4fdf:
    nop
    db $10
    ldh [$c0], a
    nop
    jr nz, @-$3e

    ret nz

    nop
    jr nz, @-$3e

    ret nz

    nop
    jr nz, @-$3e

    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop

jr_004_4ff6:
    add b
    nop

jr_004_4ff8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc b
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    ld l, l
    ld [de], a
    ld l, b
    rra
    ld h, l
    ld a, [de]
    ld h, l
    ld a, [de]
    ld [hl], b
    rrca
    ld a, b
    rrca
    ld a, b
    rlca
    ld [hl], b
    rra
    ld [hl], c
    rra
    ld a, e
    ld c, $7f
    nop
    jr nc, @+$11

    rrca
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    add b
    ld h, b
    add b
    ldh [$80], a
    ld h, b
    add b
    ldh [rP1], a
    ld h, b
    ret nz

    jr nc, jr_004_4ff6

jr_004_5036:
    jr nc, jr_004_4ff8

jr_004_5038:
    ld a, b
    add b
    ld hl, sp+$00
    db $10
    ldh [$e0], a
    nop
    ld [hl], $08
    ld a, e
    inc b
    ld a, e
    inc b
    db $db
    inc h
    ret nz

    ccf
    jp c, $ca35

    dec [hl]
    pop hl
    rra
    push hl
    ld a, [de]
    push af
    ld a, [de]
    ldh a, [$1f]
    ld [hl], c
    rra
    ld a, e
    ld c, $7f
    nop
    jr nc, jr_004_506d

    rrca
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

    nop
    ret nz

    nop
    ret nz

jr_004_506d:
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    jr nc, jr_004_5036

jr_004_5076:
    jr nc, jr_004_5038

jr_004_5078:
    ld a, b
    add b
    ld hl, sp+$00
    db $10
    ldh [$e0], a
    nop
    dec de
    inc b
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    ld l, l
    ld [de], a
    ld h, b
    rra
    ld l, l
    ld a, [de]
    ld h, l
    ld a, [de]
    ld [hl], b
    rrca
    ld [hl], d
    dec c
    ld a, d
    dec c
    ld [hl], b
    rra
    ld [hl], c
    rra
    ld a, e
    ld c, $7f
    nop
    jr nc, jr_004_50ad

    rrca
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    add b
    ld h, b
    add b
    ld h, b

jr_004_50ad:
    add b
    ldh [$80], a
    ldh [rP1], a
    ldh [rLCDC], a
    jr nc, jr_004_5076

    jr nc, jr_004_5078

    ld a, b
    add b
    ld hl, sp+$00
    db $10
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
    inc bc
    nop
    ld h, h
    inc bc
    sub h
    ld h, e
    sub h
    ld h, e
    sbc b
    ld h, a
    ld b, b
    ccf
    ld b, d
    dec a
    ld c, [hl]
    ld sp, $1926
    dec h
    jr jr_004_5101

    jr jr_004_50f7

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_004_50ef

    ld h, c
    ld e, $86
    ld a, b
    adc $30
    ret


jr_004_50ef:
    ld [hl], $c3
    inc a
    ld h, [hl]
    sbc c
    ld h, h
    sbc e
    ld h, h

jr_004_50f7:
    sbc e
    ld sp, $32ce
    call z, Call_000_00cc
    nop
    nop
    nop

jr_004_5101:
    nop
    nop
    nop

jr_004_5104:
    ldh [rP1], a
    sub b
    ld h, b
    sub b
    ld h, b
    ld d, b
    jr nz, @+$4a

    jr nc, @-$35

    jr nc, jr_004_5177

    sbc c
    inc h
    db $db
    ld h, b
    sbc a
    add c
    ld e, $12
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld b, c
    ld a, $99
    ld h, [hl]
    sub l
    ld h, d
    ld c, l
    ld [hl-], a
    ld c, c
    ld [hl], $e2
    inc e
    inc h
    ret c

    ld [hl-], a
    call z, $8e51
    adc c
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
    ret nz

    nop
    jr nz, jr_004_5104

    db $10
    ldh [$08], a
    ldh a, [$88]
    ld [hl], b
    adc b
    ld [hl], b
    ld b, h
    jr c, jr_004_5173

    jr jr_004_5175

    jr jr_004_5171

    nop
    ld de, $110e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_5162:
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    dec bc
    dec sp
    inc d

jr_004_516c:
    add hl, sp
    rla
    jr c, @+$19

    scf

jr_004_5171:
    inc c
    dec [hl]

jr_004_5173:
    ld a, [de]
    dec [hl]

jr_004_5175:
    ld e, $19

jr_004_5177:
    rlca

jr_004_5178:
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
    ld hl, sp+$08
    ret z

    ldh a, [$e8]
    ldh a, [$f8]
    ld [$e010], sp
    sub b
    ldh [$f0], a
    db $10
    jr nc, @-$3e

    jr nc, jr_004_5178

    ld hl, sp-$70
    jr z, jr_004_516c

    add sp, $30
    db $10
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
    nop
    nop
    nop
    nop
    nop
    cpl
    inc e
    cpl
    ld e, $2f
    ld e, $2f
    ld e, $2f
    dec e
    cpl
    dec e
    rra
    ld bc, $1f20
    ld [hl+], a
    dec e
    dec hl
    inc d
    dec hl
    dec d
    ccf
    inc bc
    ld a, [hl]
    rrca
    ld a, l
    ld b, $3e
    nop
    ccf
    nop
    add sp, $10
    inc l
    ret nc

    xor h
    ld e, b
    xor h
    ld e, b
    xor h
    ld e, b
    db $ec
    sbc b
    db $fc
    ld hl, sp-$04
    add b
    or $7c
    or $78

jr_004_51f4:
    or h
    ret c

    ld [hl], a
    cp b
    rst $38
    jr nc, jr_004_523a

    nop
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
    dec bc
    dec sp
    inc d

jr_004_520a:
    add hl, sp
    rla
    jr c, @+$19

    scf
    inc c
    dec [hl]
    ld a, [de]
    dec [hl]
    ld e, $19
    rlca

jr_004_5216:
    db $10
    rrca
    add hl, de
    ld c, $1d
    rlca
    ld a, $0b
    ld l, a
    inc e
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    ret z

    ldh a, [$e8]
    ldh a, [$f8]
    ld [$e010], sp
    sub b
    ldh [$f0], a
    db $10
    jr nc, jr_004_51f4

    jr nc, jr_004_5216

    ld hl, sp-$70
    jr z, jr_004_520a

jr_004_523a:
    add sp, $30
    db $10
    ldh [$e8], a
    db $10
    ld e, a
    inc a
    ld e, a
    ld a, $5f
    ld a, [hl-]
    ld e, a
    dec sp
    ld e, a
    dec sp
    ccf
    inc bc
    ld b, e
    inc a
    ld b, l
    ld a, [hl-]
    ld d, a
    add hl, hl
    ld d, a
    dec hl
    ccf
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    nop
    inc bc
    nop
    inc l
    ret c

    xor h
    ld d, b
    xor h
    ld e, b
    xor h
    ld e, b
    db $ec
    sbc b
    db $fc
    ret z

    ld a, [$fa14]
    db $e4
    jp nc, $dcec

    ldh [$a0], a
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld hl, sp+$00
    db $fc
    jr @-$02

    nop
    ld l, a
    inc e
    ld e, a
    inc a
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    ld [hl], a
    cp a
    ld [hl], a
    ld a, a
    rlca
    add a
    ld a, d
    adc e
    ld [hl], l
    xor a
    ld d, c
    xor l
    ld d, [hl]
    ld a, l
    ld c, $7f
    inc b
    ld a, [hl]
    inc b
    ld a, $00
    ccf
    nop
    add sp, $10
    inc l
    ret c

    xor [hl]
    ld d, b
    xor [hl]
    ld d, b
    xor a
    ld e, d
    rst $28
    sbc d
    rst $38
    ld a, [c]
    rst $38
    ld [bc], a
    rst $28
    db $f4
    or $78
    db $f4
    ld a, b
    ld [hl], l
    jr c, jr_004_5338

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
    nop
    nop
    rlca
    nop
    rrca
    ld [bc], a
    ld c, $05
    ld c, $05
    ld c, $05
    ld a, l
    inc bc
    xor l
    ld d, [hl]
    xor l
    ld d, e
    add [hl]
    ld a, c
    adc h
    ld [hl], e
    db $76
    inc bc
    rst $08
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $02
    ld a, [c]
    db $fc
    ld a, [$7e3c]
    jp nz, $f804

    db $e4
    jr c, jr_004_5371

    add h
    ld c, h
    or b
    ld c, h
    ld hl, sp+$3e
    db $e4
    ld c, d
    or h
    ld a, d
    call z, Call_004_78f7
    db $fc
    ld [hl], e
    rst $38
    scf
    ld a, a
    rla
    ccf
    inc bc
    rrca
    dec b
    rrca
    ld b, $07
    nop
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rra
    nop
    ccf
    ld [$003f], sp
    add [hl]
    ld a, b
    ld a, h
    add b
    scf
    ret z

    call z, $fcfb
    ei
    rst $38
    call nz, Call_000_38ff
    rst $38
    ld [bc], a
    rst $30
    ld a, [$bcfb]
    ld a, [$f41c]
    cp b

jr_004_5338:
    db $f4
    cp b
    rst $38
    and b
    rst $38
    ld b, e
    rst $38
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
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
    rrca
    nop
    rra
    dec bc
    dec sp
    inc d
    add hl, sp
    rla
    db $10

jr_004_5371:
    rrca
    ld [de], a
    dec c
    db $10
    rrca
    ld [$0f07], sp
    nop
    db $10
    rrca
    inc de
    inc c
    jr c, jr_004_5387

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5387:
    nop
    db $fc
    inc b
    db $e4
    ld hl, sp-$0c
    ld hl, sp-$04
    inc b
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
    ld hl, sp-$1c
    jr jr_004_53ab

    ldh a, [$7e]
    add hl, sp
    ld a, a
    inc a
    db $fc
    ld a, e
    cp $75
    cp $75
    ld a, a

jr_004_53ab:
    ld b, $97
    ld l, e
    adc e
    ld [hl], h
    rst $38
    ld bc, $070e
    ld c, $07
    ld c, $07
    ld c, $07
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp d
    ld c, h
    ld a, [$9d1c]
    ld l, [hl]
    cp l
    ld d, [hl]
    cp l
    ld d, [hl]
    cp $30
    pop af
    xor $e9
    ld d, $f9
    add $ed
    ld [hl], d

Call_004_53d4:
    xor $70
    add sp, $70
    add sp, $70
    ld a, [hl]
    add b
    ld a, a
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
    rra
    nop
    ccf
    dec bc
    dec sp
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    ret z

    ldh a, [$e8]
    ldh a, [$39]
    rla
    jr c, jr_004_543b

    scf
    inc c
    dec [hl]
    ld a, [de]
    dec a
    ld b, $65
    ld a, [hl-]
    ei
    ld a, l
    db $fd
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, h
    rst $18
    ld h, c
    rst $38
    inc e
    ld a, a
    dec a
    db $fd

jr_004_543b:
    ld [bc], a
    ei
    inc c
    ld a, a
    nop
    ld hl, sp+$08
    db $10
    ldh [$90], a
    ldh [$f0], a
    db $10
    ld d, b
    and b
    cp b
    ld b, b
    adc b
    ld [hl], b
    sbc b
    ld h, b
    adc b
    ld [hl], b
    ldh a, [$80]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp-$10
    ldh a, [rP1]
    add sp, $30
    ld hl, sp+$00
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, $08
    ld b, $09
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    dec b
    ld d, $05
    dec b
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$32

    ld sp, $3032
    jr nc, jr_004_54cf

    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_004_54cf

    ld l, $39
    jr nc, jr_004_54d6

    ld sp, $3032
    jr nc, jr_004_54de

    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_004_54eb

    dec sp
    add hl, sp
    jr nc, jr_004_54e5

    jr nc, jr_004_54f3

    jr nc, jr_004_54e9

    daa
    jr z, jr_004_54e5

    ld a, [hl+]
    dec hl
    inc l
    ld a, [hl-]
    dec sp
    cpl
    jr nc, jr_004_54f4

    jr nc, jr_004_5502

    jr nc, jr_004_54f8

    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_004_54cf:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_004_54d6:
    ld c, e
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld c, h
    ld c, l

jr_004_54de:
    ld c, [hl]
    ld c, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_004_54e5:
    ld d, h
    dec a
    ld a, $3f

jr_004_54e9:
    ld b, b
    ld b, c

jr_004_54eb:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld b, [hl]
    ld e, c
    ld e, d
    ld e, e

jr_004_54f3:
    ld e, h

jr_004_54f4:
    ld e, l
    dec a
    ld a, $3f

jr_004_54f8:
    ld b, b
    ld b, c
    ld d, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld b, [hl]
    ld h, c
    ld h, d
    ld h, e

jr_004_5502:
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld h, [hl]
    ld l, e
    ld l, h
    ld l, c
    ld l, d
    ld h, [hl]
    ld l, l
    ld l, [hl]
    ld l, c
    ld l, d
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, d
    ld a, e
    ld a, [hl]
    ld a, a
    add b
    add c
    ld a, [hl]
    ld a, a
    add d
    add e
    ld a, [hl]
    ld a, a
    add h
    add l
    ld a, [hl]
    ld a, a
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
    adc l
    sub b
    sub c
    adc l
    sub d
    sub e
    adc l
    adc e
    adc h
    adc l
    sub h
    sub l
    adc l
    sub [hl]
    sub a
    adc l
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    adc l
    sbc l
    sbc [hl]
    adc l
    sbc a
    and b
    adc l
    and c
    and d
    adc l
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    inc l
    inc c
    ret nz

    nop
    ld e, b
    db $10
    ld a, [de]
    ld [bc], a
    ld [$3a64], sp
    dec de
    db $10
    add a
    call nz, $22a2
    ld [$f011], sp
    adc b
    xor $5d

jr_004_5577:
    ld sp, $a8cf
    di
    jp nz, $c6f8

    ld sp, hl
    daa
    cp h
    db $d3
    ret nc

    ld b, b
    jr c, jr_004_5596

    jr @+$0d

    ld [hl], l
    adc c
    adc a
    ld l, h
    ld d, b
    ld d, e
    push de
    inc d
    rst $38
    add d
    jr c, @+$06

    rlca
    inc b

jr_004_5596:
    add d
    ldh [$90], a
    ld a, b
    ld [hl], b
    ld c, $27
    ld c, [hl]
    ld [$4d9c], sp
    and d
    ld hl, $8a6f
    jr nz, jr_004_5577

Jump_004_55a7:
    ld l, c
    adc e
    sbc h
    ld a, b
    rst $30
    ld l, $af
    adc l
    ld l, c
    jp Jump_000_00ba


    cp $9c
    dec [hl]
    or b
    rla
    rst $28
    ret nc

    ld a, [hl-]
    db $f4
    push bc
    ld c, a
    ld h, b
    rra
    ld [$3564], a
    di
    ld c, $bc
    ld a, h
    ld b, e
    ret c

    ld e, a
    or e
    or e
    jp $e021


    sub b
    sbc c
    and b
    db $10
    rrca
    add b
    ld b, b
    db $fd
    ret nz

    rlca
    ld a, [hl]
    ld d, c
    jr nz, @-$48

    or a
    add b
    ld b, d
    ld [$0001], sp
    add b
    ret nz

    ld b, b
    ld [hl], b
    jr z, @+$1a

    rlca
    jr z, jr_004_55f2

    ld bc, $e2db
    ld d, $80
    cp a

jr_004_55f2:
    dec c
    adc b
    jp $b0e2


    ret nz

    rst $30
    sub b
    push hl
    call c, Call_004_6b39
    sbc b
    dec de
    and $25
    jp hl


    add c
    ld a, [hl]
    ld l, b
    ld l, e
    adc h
    dec de
    push af
    or a
    ldh a, [$0d]
    ld hl, sp+$07
    ld sp, $6a27
    ld [hl], l
    xor d
    ret


    rst $38

jr_004_5616:
    jr nz, jr_004_5616

    ld b, l
    adc a
    inc e
    pop hl
    rst $00
    sbc b
    ld a, c
    or $0e
    ld a, h
    sub e
    sub a
    dec sp
    db $10
    inc b
    rst $00
    ld l, a
    or [hl]
    call c, Call_000_1fee
    rst $28
    db $e4
    db $10
    dec a
    ldh a, [$03]
    ld a, a
    ld l, [hl]
    cp b
    ld [hl], e
    db $10
    dec b
    xor [hl]
    ld h, a
    ld l, b
    or e
    rrca
    inc e
    add c
    rst $00
    add b
    add hl, sp
    db $f4
    ld [$e003], sp
    and l
    rla
    ei
    db $ed
    xor $09
    adc c
    call nz, $c5b4
    db $f4
    ld h, $f0
    adc d

jr_004_5655:
    jr jr_004_568f

    ld [hl], a
    adc a
    sbc h
    ld h, a
    db $76
    ld b, e
    pop af
    ld l, $e8
    rrca
    cp b
    dec bc
    db $e3
    nop
    ld hl, sp+$40
    ld e, $c2
    sra a
    sbc $05
    pop af
    ei
    sbc a
    ld a, [hl]
    ld b, $7e
    ldh a, [rLCDC]
    cpl
    ldh a, [$73]
    db $ed
    xor l
    rra
    ld c, $73
    ldh [$8f], a
    add hl, sp
    add e
    or d
    inc e
    ld a, l
    jr nz, jr_004_5655

    ldh [rTIMA], a
    jp nz, $c03f

    inc hl
    db $fd
    sbc a
    add d

jr_004_568f:
    db $db
    and d
    nop
    rst $38
    ld d, e
    call c, Call_004_4d48
    ld e, d
    jr jr_004_56e5

jr_004_569a:
    or $6c
    inc e
    add hl, sp
    ret nz

    ld h, e
    ldh [$27], a
    ccf
    ld b, a
    inc sp
    jr nc, jr_004_569a

    cpl
    inc c

Call_004_56a9:
    ld sp, $83f8
    rra
    ld [$f433], sp
    ld b, $3f
    inc de
    db $e4
    ld b, b
    ldh a, [$08]
    rrca
    nop
    ld bc, $7b68
    pop bc
    add b
    inc a
    jr jr_004_56c6

    db $dd
    rla
    ld c, h
    dec bc
    inc bc

jr_004_56c6:
    add b
    or b
    ld a, h
    dec d
    ld [hl], c

jr_004_56cb:
    dec de
    and b
    inc e
    db $fd
    inc bc
    rrca
    or b
    jr nc, jr_004_56cb

    ld d, e
    db $e4
    sub [hl]
    call c, Call_000_337c
    ret nz

    scf
    ld [$3f0a], a
    pop bc
    di
    and h
    inc de
    jr c, @-$7b

jr_004_56e5:
    inc bc
    add b
    jr nc, @+$32

    rlca
    inc bc
    ld b, b
    ld h, b
    jr nz, @+$0e

    add hl, bc
    ld [hl], h
    ld b, b
    ld [hl], e
    rst $08
    ret nz

    sub b
    ld hl, sp+$22
    rla
    inc [hl]
    ld [$4260], sp
    db $10
    ld d, l
    db $e4
    ld bc, $2600
    ret


    or b
    ccf
    dec bc
    add a
    pop af
    ld a, h
    rst $28
    cpl
    call z, $fc70
    jp $e41f


    and [hl]
    jp c, Jump_000_3813

    inc bc
    di
    ld hl, sp-$3d
    ccf
    rst $08

jr_004_571c:
    add e
    db $fc
    db $fc
    ccf
    rst $08
    sub b
    jr c, jr_004_571c

    rlca
    adc a
    jr nz, jr_004_5749

    or a
    ld [bc], a
    rrca
    ld [hl], e
    ldh [rTAC], a
    ld [hl+], a
    ld [$ec78], sp
    inc b
    nop
    db $d3
    inc sp
    add b
    add b
    sub [hl]
    add a
    inc bc
    ld [bc], a
    ld d, [hl]
    ld c, $0e
    add h
    db $ec
    jr jr_004_577f

    ld h, $e9
    or h
    ld bc, $c20f

jr_004_5749:
    nop
    db $fc
    nop
    xor c
    ld [$0a54], a
    inc de
    ld l, c
    and a
    db $d3
    ldh [rIF], a
    add e
    ld e, h
    ld d, b
    ld bc, $72cd
    sub $6a
    ld l, d
    inc d
    ld l, [hl]
    ret z

    dec b
    db $fc
    ld b, $01
    ld b, b
    dec [hl]
    ld [$900e], a
    ld e, e
    and a
    ldh a, [$86]
    ccf
    call z, $fe81
    ld a, l
    ccf
    ret nz

    ld [hl], h
    add $a0
    xor b
    add hl, bc
    add e
    pop bc
    dec sp
    and a

jr_004_577f:
    ld c, a
    inc bc
    ld bc, $4c76
    ret nc

    add h
    ld a, [hl+]
    ld l, $43
    and $64
    dec d
    rla
    ld b, [hl]
    ld d, c
    or h
    ld [hl], l
    rra
    ld c, b
    ld d, d
    dec [hl]
    dec h
    ld c, e
    ld c, c
    sub d
    add h
    xor c
    inc l
    ld c, e
    sub e
    ld a, [bc]
    or l
    inc [hl]
    ld c, l
    sub e
    add h
    ld a, [c]
    ret nc

    jr c, jr_004_57be

    ld l, b
    cp c
    ld b, b
    ld d, b
    sbc b
    ld b, [hl]
    add hl, de
    ld [hl], e
    ld c, h
    ld c, h
    ld [hl], b
    pop af
    adc l
    ld h, e
    call nc, $3dd5
    ld d, c
    ld d, h
    push de
    ld d, l
    ld e, l

jr_004_57be:
    sbc l
    nop
    push de
    push bc
    ld a, c
    ld h, b
    ld e, b
    adc b
    ld [hl], e
    push af
    xor b
    ld [hl+], a
    sub $85
    xor c
    ld l, h
    ld e, e
    sub a
    dec b
    ret


    cp b
    ld d, c
    rla
    ld d, b
    ld b, c
    cp l
    ld l, a
    db $ed
    and h
    ld de, $5e6b
    ld d, a
    or l
    push af
    ld a, a
    ld h, b
    ld b, b
    ld a, b
    add sp, $07
    db $76
    ld e, b
    cp h
    sbc c
    add [hl]
    ld h, h
    ld e, c
    ld [hl], $55
    sub a
    ld h, [hl]
    ld e, c
    or a
    add l
    db $e3
    ld l, b
    ld a, [de]
    ld h, $92
    ld a, c
    ld d, [hl]
    rst $00
    rst $30
    push bc
    sub a
    ld l, d
    jp c, $bdd6

    or c
    ld l, h
    db $db
    rla
    ld sp, hl
    xor l
    sub b
    ld e, e
    or [hl]
    jp c, Jump_004_700e

    ld [hl], h
    rla
    ld de, $24c8
    inc e
    and a
    ld sp, $3ece
    and c
    add sp, -$7f
    call nc, $dd00
    ld h, b
    add hl, bc
    ld [hl], e
    db $76
    sbc l
    ret nz

    and c
    sbc $44
    sbc $57
    sbc l
    jp hl


    ld a, d

Call_004_582e:
    sbc $d7
    cp [hl]
    dec [hl]
    inc bc
    rst $18
    ld b, a
    reti


    ld hl, sp-$6d
    rst $18
    add $ea
    ld bc, $e080
    ld e, b
    ld e, $09
    add h
    ld e, e
    ld a, b
    ld b, d
    inc c
    sbc [hl]
    pop hl
    ld c, h
    jp nc, $ae15

    ld hl, $6888
    rst $18
    add a
    dec h
    add hl, hl
    ld d, d
    ld [hl+], a
    adc c
    ld [hl+], a
    ld l, b
    and d
    ld a, [hl+]
    adc e
    ld h, $10
    sub d
    ld l, $8c
    inc hl
    dec h
    and d
    ld l, b
    adc [hl]
    dec e
    inc e
    adc l
    jr z, @-$6f

    ld l, e
    rst $20
    ld e, a
    ld b, d
    ld l, [hl]
    ldh [$e2], a
    ld [$d1fd], sp
    adc a
    ldh a, [$f8]
    pop hl
    ld e, h
    ld [hl], a
    ld e, $54
    ld hl, $c23f
    inc sp
    ld a, d
    ld d, [hl]
    sub [hl]
    dec h
    adc c
    ld l, d
    sub a
    ld c, h
    call z, Call_000_0101
    ld l, e
    sbc c
    ld sp, $0da4
    ld a, c
    ld [$2390], a
    add sp, $3d
    rra
    add h
    db $10
    ld [$0101], sp
    cp e
    ld b, b
    ld c, $94
    xor $00
    jr nc, @-$62

    db $dd
    rrca
    adc l
    ld l, $84
    ldh [rDIV], a
    inc a
    rrca
    dec bc
    pop bc
    ld b, c
    xor d
    ld e, d
    and [hl]
    xor b
    ld b, l
    ld d, h
    ld c, [hl]
    ld b, c
    inc bc
    xor [hl]
    ret nz

    ld e, $cf
    res 0, l
    inc [hl]
    dec d
    inc a
    rst $30
    rlca
    dec de
    adc [hl]
    add d
    sbc e
    sub [hl]
    pop hl
    dec sp
    dec b
    ld b, h
    and l
    add d
    rrca
    ld [hl], a
    ld h, b
    ld [c], a
    ld e, l
    daa
    ld c, d
    inc a
    ld [bc], a
    rst $10
    sbc $54
    dec bc
    dec a
    add c
    add e
    sbc h
    jr nc, jr_004_5915

    ld sp, hl
    ld d, l

jr_004_58e4:
    inc a
    ld b, b
    cpl
    jp nz, $7e03

    ld c, c
    sbc [hl]
    ld a, c
    rlca
    pop af
    ld [hl], c
    sbc $a5
    ld e, c
    ld e, [hl]
    ld e, c
    or $4c
    rlca
    jr jr_004_58fa

jr_004_58fa:
    sbc d
    ld a, [hl-]
    ret nc

    ld bc, $9a7b
    ld a, [$eec5]
    cp [hl]
    db $ec
    ei
    inc sp
    add b
    sbc a
    jr nc, jr_004_591b

    ld bc, $00fa
    cp $80
    ld a, a
    add b
    jr nz, jr_004_58e4

    adc b

jr_004_5915:
    jr c, jr_004_5958

    sbc $10
    ld a, a
    add c

jr_004_591b:
    rst $18
    ld b, c
    rst $30
    add b
    ld a, l
    or $1f
    ld a, c
    push bc
    ld b, a
    xor $78
    adc c
    db $fd
    adc [hl]
    rst $38
    rrca
    cp [hl]
    rrca
    xor $07
    ei
    ld [bc], a
    ld b, h
    rst $38
    add d
    and b
    nop
    inc c
    nop
    inc bc
    add c
    nop
    ld [hl], b
    ld l, b
    inc e
    jr jr_004_5944

    add a
    ld b, b
    pop hl

jr_004_5944:
    ret nz

    jr jr_004_59bf

    nop
    ret nz

    jr nz, jr_004_597b

    nop
    inc c
    dec b
    add hl, bc
    add h
    add b
    daa
    ldh a, [$88]
    dec hl
    nop
    cp $f1

jr_004_5958:
    rrca
    cp a
    ret nz

    sub h
    ld de, $8cdb
    or $c9
    ld a, c
    and h
    ld e, h
    ld l, b
    add hl, hl
    db $ec
    inc e
    ld bc, $7f26
    or b
    ld e, a
    db $ec
    ld h, a
    ei
    and b
    cp $f0
    rra
    jp $d3a0


    di
    ldh [rSB], a
    adc h

jr_004_597b:
    ld a, h
    ld a, a
    adc d
    rra
    ret z

    dec sp
    dec [hl]
    sub d
    push bc
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_004_59c4

    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld de, $1f1e
    jr nz, jr_004_59d6

    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld de, $0026
    nop
    daa

jr_004_59bf:
    jr z, jr_004_59ea

    ld a, [hl+]
    dec hl
    inc l

jr_004_59c4:
    nop
    nop
    dec l
    nop
    ld l, $00
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    cpl
    jr nc, jr_004_5a04

    nop
    nop
    nop

jr_004_59d6:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_004_59ea:
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    ld c, c
    ld c, d

jr_004_59f0:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    ld d, b
    ld d, c
    ld de, $0052
    nop
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_004_5a04:
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_004_5a44

    ld a, [de]
    dec de
    nop
    inc e
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld hl, $5e00
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    ld d, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_004_5a43:
    inc l

jr_004_5a44:
    nop
    ld l, b
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, @+$03

    cp $80

jr_004_5a4f:
    ld h, b
    rrca
    db $d3
    rst $20
    push af
    ld b, c
    and c
    ld e, b
    ld h, h
    ld d, a
    jr jr_004_59f0

    ld h, [hl]
    ld d, l
    ld c, c
    cp l
    cp $01
    ld bc, $1fbf
    cpl
    ldh [$a8], a
    ld e, b
    ld l, d
    ld h, $3a
    sub c
    sbc d
    xor d
    ld h, h
    xor e
    reti


    ld b, b
    ld h, b
    ld e, h
    ld a, [de]
    rla
    rst $20
    ld d, l
    ld l, c
    and d
    ld d, c
    inc c
    add l
    ld b, d
    nop
    and b
    ld h, b
    add sp, $59
    ld a, [$5aae]
    add l
    and [hl]
    sub c
    ret z

    call nc, Call_000_0d62
    ld b, b
    nop
    ld a, [hl+]
    sub l
    ld b, b
    db $10
    inc c
    ld a, [bc]
    adc e
    ld b, a
    and e
    nop
    jr z, jr_004_5a4f

    ld a, [hl-]
    inc c
    add hl, de
    rst $38
    jr jr_004_5a43

    call nc, Call_004_75aa
    ld a, [hl-]
    add h
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    dec b
    rlca
    ld [$0708], sp
    ld bc, $a0c0
    ld [hl], b
    ld c, b
    db $10
    ld b, $0b
    inc bc
    nop
    add b
    and c
    ld b, b

jr_004_5ac5:
    jr z, jr_004_5b33

    ld a, [hl-]
    rla
    rrca
    adc b
    jp $1140


    ld c, b
    xor h
    ld e, d
    cpl
    jr @-$72

    add $a3
    ld b, b
    jr jr_004_5ac5

    ld a, d
    ld a, $01
    adc l
    push bc
    jr nz, jr_004_5b00

    ld a, a
    ret nz

    and b
    ld [hl], b
    ld c, b
    inc l
    ld a, [de]
    ld c, $ff
    ld a, e
    cp a
    db $dd
    ld [hl], b
    adc b
    ld a, [hl-]
    ld b, $0e
    cp $7f
    cp a
    ld e, a
    rst $08
    and a
    db $e3
    pop de
    ld [c], a
    jp hl


    ld a, a
    or a
    ld e, a
    db $eb
    rst $20

jr_004_5b00:
    ld sp, hl
    db $fd
    ld a, [hl]
    cp a
    ccf
    ret z

    adc a
    ldh a, [$d9]
    ld [hl+], a
    db $fd
    cp $df
    ld l, a
    cp e
    db $dd
    rst $28
    ld [hl], a
    dec sp
    db $ed
    ld a, d
    ld a, [hl]
    ld a, l
    and c
    rst $18
    rst $28
    sub a
    db $fc
    ld b, [hl]
    add hl, bc
    ld de, $be7c
    ld c, l
    ld h, $b4
    jp c, $a6cd

    db $d3
    ld e, c
    cp c
    call nz, Call_004_71ee
    ld [hl-], a
    sbc h
    call z, $26ce
    cp e

jr_004_5b33:
    ldh [rHDMA2], a
    sub l
    ld a, [$debc]
    rst $18
    cpl
    sub a
    db $db
    jp hl


    db $f4
    db $fc
    add c
    xor $fb
    ld a, c
    cp a
    ld e, a
    ld l, a
    rst $10
    set 7, d
    daa
    inc de
    ld a, [hl]
    ccf
    db $ec
    ld d, b
    ret c

    inc h
    sub b
    cp $fb
    ld a, e
    cp l
    jp hl


    ld l, [hl]
    rst $20
    ld a, h
    ld l, l
    cp e
    ld l, [hl]
    ld a, a
    cp e
    xor l
    ld l, d
    di
    ld l, c

jr_004_5b64:
    cp l
    ld e, d
    db $ed
    dec d
    or a
    sub a
    ld c, [hl]
    and $d3
    jp hl


    call $7e16
    dec b
    rlca
    ld hl, sp+$4c
    ld l, $12
    ld b, [hl]
    ld a, a
    ccf
    rra
    rst $08
    daa
    db $eb
    dec d
    ld a, d
    cp h
    pop af
    ld a, a
    jr c, jr_004_5b64

    xor b
    rst $30
    sbc b
    db $fd
    adc [hl]
    rst $08
    dec de
    rst $00
    and c
    xor a
    add a
    db $db
    sbc l
    jp c, $b2de

    cp a
    jp $adf2


    dec e
    and l
    db $fd
    dec [hl]
    sbc e
    jp nz, $8e1e

    rst $00
    jp $f0a1


    ld [$a977], sp
    ret c

    db $e4
    ld b, [hl]

jr_004_5bab:
    add hl, bc
    dec b
    add $a3
    ld a, d
    inc sp
    jr nz, jr_004_5c0b

    add b
    ld hl, sp+$7e
    ld c, b
    rst $18
    ld a, [de]
    ld b, c
    jr jr_004_5bab

    cp [hl]
    inc hl
    dec e
    ld a, [c]
    adc c
    ld a, e
    inc e
    ld de, $03eb
    ei
    add l
    db $fc
    add a
    ld a, h
    scf
    rst $10
    cpl
    push af
    cp d
    cp $a0
    ld c, a
    ld l, a
    sub l
    push de
    and $97
    ld [$dcf9], a
    rst $18
    pop de
    ld e, c
    and b
    or c
    rla
    db $ec
    db $db
    ld b, h
    nop
    add c
    dec sp
    jp $f7ef


    inc b
    scf
    ld c, b
    rst $20
    ld c, e
    and [hl]
    xor $af
    ld [hl], h
    or e
    db $ed
    call nc, Call_004_60fe
    cp a
    db $db
    rst $08
    inc d
    adc e
    ld h, b
    xor b
    ld l, $86
    add e
    ldh a, [$74]
    cpl
    rst $00
    sub c
    db $f4
    ld a, $2f
    ld [de], a

jr_004_5c0b:
    ld [hl], a
    and h
    ld a, a
    jr @+$04

    ld bc, $20a0
    inc c
    ld bc, $fc01
    ld b, $2d
    add a
    sub b
    db $fc
    pop bc
    ld a, $40
    db $e3
    ldh a, [$ef]
    dec de
    dec b
    pop af
    ld hl, sp+$5f
    ccf
    adc e
    di
    ld hl, sp+$7f
    ld e, c
    ld c, $73
    db $fc
    ei
    ccf
    rst $00
    cp b
    and h
    ld a, a
    dec l
    rst $00
    ld [c], a
    inc a
    ld a, l
    cpl
    adc a
    ld [hl], c
    push hl
    ld e, $47
    rst $08
    db $f4
    add l
    daa
    ld e, c
    sbc $24
    dec c
    ld de, $cf4d
    db $d3
    sub $3e
    ld a, l
    rst $18
    ld d, l
    call nc, $269f
    set 6, d
    pop bc
    ld hl, $c33f
    di
    ld a, h
    ccf
    ld a, [hl]
    adc $f7
    add h
    and $5c
    adc a
    ldh a, [$79]
    ld h, h
    ld b, c
    nop
    db $e3
    cp h
    db $76
    dec a
    rst $08
    and d

Call_004_5c70:
    ret c

    cp c
    dec l
    res 6, e
    ld l, h
    ld d, a
    ccf
    ld [$a4f3], sp
    db $76
    dec l
    ld c, e
    and d
    call c, $2db8
    res 4, e
    ld l, h
    ld d, [hl]
    scf
    add l
    ld [hl], a
    ld l, b
    rst $38
    ld bc, $f0c7
    inc a
    rst $28
    dec e
    push hl
    reti


    jp c, $9b5e

    add l
    ld [hl], e
    cp h
    sbc a
    ld a, e
    ld e, [hl]
    ld [hl], h
    dec [hl]
    ld e, h
    dec de
    rst $08
    inc sp
    db $fc
    rrca
    ccf
    push bc
    ld a, [$bf14]
    and c
    sub d
    ld [hl], h
    and d
    ld a, c
    db $76
    adc d
    pop af
    call c, Call_000_2bff
    jp hl


    inc bc
    ld a, [hl]
    sub c
    ld c, d
    ld e, l
    cp d
    ld a, $91
    dec hl
    jp hl


    inc [hl]
    and c
    inc b
    db $76
    xor b
    jp c, $925e

    and l
    ld a, [de]
    inc h
    add hl, hl
    inc c
    ld b, [hl]
    pop de
    call nc, $aa21
    ld e, c
    ld b, b
    ld sp, $fcec
    dec a
    xor b
    ld c, d
    add hl, bc
    and $40
    sbc [hl]
    ld d, h
    ld d, c
    ld d, $3c
    ld b, [hl]
    sub c
    db $e4
    xor c
    ld a, [hl-]
    ret


    or h

jr_004_5ce8:
    ld a, c
    jr nz, jr_004_5d4d

    db $10
    ld b, l
    ld l, $9b
    ld c, c
    sub d

Call_004_5cf1:
    add h
    xor c
    inc l
    ld c, e
    sub l
    add l
    ld l, c
    rst $20
    xor h
    adc a
    dec h
    xor h
    cp $4a
    jp c, Jump_004_7913

    ccf
    inc d
    jp $9d31


    ld b, h
    add hl, hl
    sub h
    ld [hl], l
    dec h
    ld [hl], l
    dec sp
    jp z, $7dd3

    ld c, [hl]
    ld d, h
    dec d
    dec h
    ld d, c
    ld d, [hl]
    cpl
    ret c

    ld h, l
    ld [hl], c
    ld e, [hl]
    ld e, b
    rrca
    push hl
    adc d
    rst $20
    ld c, l
    ld a, [hl+]
    add h
    ld d, $39
    ld c, c
    db $10
    dec h
    cp l
    ld [hl], c
    ld e, h
    adc $f5
    and [hl]
    daa
    ld d, a
    adc $d2
    xor l
    ld a, e
    ld e, a
    ld d, a
    ld hl, sp+$0c
    db $fc
    dec l
    dec de
    and [hl]
    cp c
    add [hl]
    ld h, d
    jr jr_004_5ce8

    ld sp, $1fbc
    reti


    ld b, $49
    sub h
    ld h, l
    sbc c
    add b
    db $dd

jr_004_5d4d:
    add $8a
    db $10
    ld h, e
    ld sp, hl
    xor b
    ld e, d
    ld c, a
    ld [hl], e
    cp b
    rst $38
    dec sp
    ld d, b
    ld [hl], b
    dec e
    ld e, b
    rra
    db $d3
    dec sp
    or [hl]
    ld a, [hl]
    ld a, b
    adc a
    add c
    ld hl, $6db2
    dec de
    ld h, [hl]
    pop hl
    cp d
    ld a, [hl]
    ld e, a
    or h
    adc c
    cp [hl]
    ld [hl], b
    inc e
    inc h
    ld c, $09
    ccf
    ret nz

    rlca
    dec e
    ret


    ld [hl], d
    call c, Call_000_3dd7
    pop de
    add l
    pop hl
    sub e
    cp h
    db $db
    dec a
    call $dc33
    ld d, l
    ld a, [hl-]
    push bc
    and e
    cp $f2
    ld b, d
    sub e
    ld e, d
    pop bc
    rlca
    adc [hl]
    ld d, d
    ld [hl], h
    sbc h
    add b
    ld b, a
    sub e
    inc hl
    db $fc
    ld hl, sp+$43
    ld [hl], c
    ld [hl], e
    push hl
    inc de
    ld a, [hl-]
    pop bc
    or e
    db $f4
    push hl
    ld b, l
    ld de, $4d4d
    db $fd
    ld a, a
    res 4, e
    and d
    inc bc
    cpl
    db $f4
    db $f4
    ld [hl], h
    cp a
    sub d
    pop de
    add sp, $36
    rrca
    add h
    ld h, c
    jr c, @+$57

    inc b
    add [hl]
    pop hl
    ret c

    ld a, [hl]
    ld hl, $ee88
    add l
    ld a, d
    add hl, hl
    ccf
    rst $00
    ld [hl], c
    db $fc
    adc a
    rra
    set 4, c
    db $fc
    cp c
    dec a
    rst $20
    ld sp, $5dce
    adc l
    sbc c
    cp h
    ld l, l
    rlca
    ld a, $cd
    and e
    sbc h
    and [hl]
    daa
    push bc
    db $dd
    ret nz

    or b
    adc l
    and h
    jp hl


    db $f4
    sbc $e2
    and d
    ld h, l
    inc l
    ld e, $44
    rst $08
    or e
    ldh a, [$6e]
    and b
    sbc [hl]
    push bc
    inc l
    adc a
    sub l
    and $99
    sbc h
    or [hl]
    sbc [hl]
    dec d
    db $e3
    call z, Call_000_3b8c
    or a
    or d
    xor $77
    sub a
    db $dd
    xor [hl]
    sub d
    adc h
    sbc [hl]
    ld l, b
    ld [$c842], a
    adc [hl]
    add b
    pop af
    ld a, l
    ld c, e
    and c
    add l
    ld a, [$7d23]
    ld b, c
    add hl, hl
    sbc d
    add [hl]
    ld a, [hl-]
    adc [hl]
    push de
    db $fc
    ld [hl], c
    ld [$8ed3], sp
    ret nc

    ld a, b
    cp $89
    or b
    rst $10
    sub c
    ld [de], a
    xor h
    rst $00
    ld c, d
    rst $10
    call nz, Call_000_353f
    ld h, e
    call nc, Call_000_3dff
    adc a
    ld a, h
    ld d, h
    db $ed
    call Call_004_7aeb
    db $e4
    di
    inc d
    call $cc30
    rst $20
    add hl, hl
    ld hl, sp+$3b
    ld e, b
    ld c, l
    ccf
    call Call_004_75bf
    ld a, [de]
    push bc
    ld sp, $2724
    dec c
    ld a, $ed
    add l
    ld [c], a
    rst $30
    ld e, a
    rla
    pop hl
    sbc d
    db $fc
    ccf
    dec c
    ld b, [hl]
    ld l, l
    ld [$8f58], sp
    dec sp
    ld sp, $00a2
    ld d, c
    inc sp
    db $fc
    ld bc, $aeee
    and h
    dec e
    xor h
    ld a, $06
    add e
    ldh [$88], a
    ret z

    dec de
    ld d, [hl]
    db $dd
    cp c
    ld l, [hl]
    call Call_004_74cf
    rst $18
    dec l
    db $dd
    ld d, e
    db $fc
    dec sp
    ccf
    ld hl, sp+$63
    ld a, c
    ld l, e
    ld b, c
    ld [hl], h
    add l
    and c
    inc sp
    db $d3
    dec sp
    jp Jump_004_4fdf


    ccf
    or l
    dec e
    ld c, a
    ld d, l
    ld a, [hl]
    sbc a
    rst $00
    ld a, [$d600]
    ldh [rKEY1], a
    ld a, $08
    add d
    or [hl]
    jr z, jr_004_5eea

    db $10
    add h
    add b
    ld h, e
    ret c

    add hl, bc
    ccf
    ld [$fcf3], a
    ld a, l
    ccf
    rst $00
    dec a
    rst $08
    ld [hl], e
    rra
    ret z

    and e
    cp h
    ld [hl], c
    ld h, [hl]
    db $f4
    ld l, l
    or $39
    ld a, b
    and e
    ret


    ei
    ld d, [hl]
    add hl, sp
    db $10
    rlca
    jp c, $ce69

    ld h, l
    ld c, a
    and h
    rst $10
    ld [$fbf7], a
    pop bc
    ld a, [hl]
    ld a, a
    ld a, a
    adc a
    db $db
    db $eb
    rst $20
    ei
    ld a, c
    sbc $de
    ld a, a
    add hl, sp

jr_004_5eea:
    rst $18
    xor $f7
    ld hl, sp+$79
    ld a, [$77fe]
    sbc l
    sub $eb
    cp c
    inc b
    add c
    or [hl]
    ld d, [hl]
    ld l, a
    ret


    ld c, d
    dec c
    ld [c], a
    cp h
    ld [hl], c
    ld a, [c]
    cp $7c
    and e
    sbc l
    ld b, a
    ld e, c
    inc d
    add l
    db $76
    db $db
    dec hl
    call z, $65a4
    db $76
    db $fc
    and $76
    xor a
    dec sp
    rst $08
    ld e, a
    ldh a, [$95]
    ld a, e
    ld a, [hl]
    ld [de], a
    rst $18
    ld a, a
    pop de
    xor b
    db $f4
    ld a, [bc]
    dec b
    dec c
    rst $38
    ld b, l
    and h
    ld d, c
    push de
    and $d3
    ld a, d
    or l
    jp c, Jump_004_6f2b

    ld l, $9d
    call $d3a7
    sbc c
    ld hl, sp-$0c
    ld l, [hl]
    dec c
    add hl, hl
    sub $0a
    inc sp
    push hl
    cp $f6
    or d
    ld e, c
    xor h
    or [hl]
    adc e
    dec a
    sub c
    db $fc
    pop bc
    adc c
    inc a
    ld d, d
    dec l
    add l
    ld b, d

jr_004_5f51:
    jp hl


    ret nc

    db $fc
    ld a, [hl-]
    ccf
    rst $08
    cpl
    db $d3
    push af
    xor c
    xor $ff
    ld a, l
    rst $18
    ld e, a
    rst $28
    rst $10
    ei
    ld a, [$0dc3]
    add [hl]
    xor a
    rst $18
    db $ec
    ld hl, sp+$53
    cp $1b
    ld h, c
    pop bc
    ccf
    call c, $f02f
    db $fd
    dec e
    ld a, a
    db $10
    adc c
    dec sp
    rst $10
    rst $08
    add sp, $6e
    ld b, c
    sbc b
    rst $18
    rlca
    cp a
    db $d3
    rst $28
    rst $30
    ld b, $36
    sbc h
    ldh a, [$7f]
    add e
    or c
    jp c, Jump_004_4438

    jr nz, jr_004_5f51

    add hl, de
    cpl
    cp a
    set 5, e
    db $fd
    db $76
    rra
    ld b, [hl]
    rst $38
    ld a, h

Call_004_5f9d:
    ld a, $de
    ei
    ld a, l
    xor [hl]
    adc h
    ld bc, $de4e
    ld h, l
    ld [hl+], a
    ld sp, $f531
    db $eb
    ld e, $ff
    adc $67
    or b
    ld a, h
    adc l
    and a
    ld a, [hl+]
    adc h
    di
    ld a, a
    cp e
    ld a, c
    db $dd
    ld c, $7f
    ld c, e
    and e
    adc $7c
    cp d
    ld e, l
    ld l, l
    or a
    sbc e
    ld c, l
    and [hl]
    or e
    ld [hl], e
    xor c
    call c, Call_004_65ea
    add hl, sp
    sbc c
    sbc h
    ld c, l
    ld [$ac3b], a
    rst $10
    set 6, [hl]
    rlca
    rlca
    adc l
    add [hl]
    add sp, $34
    ld d, h
    inc bc
    ld l, e
    cp [hl]
    and [hl]
    xor e
    xor e
    ld d, [hl]
    dec hl
    ld c, a
    jp $f123


    add hl, hl
    ld c, $7f
    or b
    jr @-$18

    dec b
    ld a, [hl]
    ld a, d
    sbc b
    inc bc
    ret nc

    db $ec
    ld a, $0c
    adc b
    inc e
    rst $28
    add hl, hl
    call z, Call_000_1071
    pop bc
    db $10
    ld c, [hl]
    ld [hl-], a
    adc h
    db $f4
    inc sp
    ld a, [de]
    add e
    db $fc
    rlca
    dec a
    rst $08
    sub h
    ld [hl], b
    db $eb
    ld b, $cf
    db $d3
    sub h
    cp $3e
    adc a
    pop hl
    inc b
    rst $38
    rla
    sub [hl]
    push af
    push bc
    ld [hl], e
    ld e, l
    ld c, e
    ld hl, sp+$60
    ld a, $54
    rra
    inc sp
    or l
    push af
    ld d, l
    push de
    sub l
    ld l, h
    db $f4
    ld d, a
    dec de
    cp b
    ld d, b
    ld bc, $6081
    ld a, b
    ld h, $0b
    add e
    ld h, b
    ld hl, sp+$44
    adc h
    ld e, a
    rst $10
    ret z

    ld e, d

jr_004_6042:
    jr jr_004_6083

    and c
    xor b
    ld [hl], d
    ld e, $5b
    ld d, $e5
    ret nz

    jr z, jr_004_605c

    add [hl]
    adc b
    sbc [hl]
    add hl, hl
    ld l, b
    rst $08
    ld [hl], e
    call c, Call_000_38e3
    call z, $0413
    add b

jr_004_605c:
    ld d, c
    rst $08
    db $e3
    ld hl, sp-$04
    ccf
    rrca
    add e
    ldh [$f0], a
    ld a, $0e
    add e
    ret nz

    ldh [$3c], a
    dec c
    ld [bc], a
    nop
    nop
    sbc c
    and [hl]
    ld a, c
    and b
    nop
    inc b
    ld bc, $8100
    cp h
    rra
    rst $00
    ldh a, [$fc]
    ccf
    rlca
    jp $bcf0


jr_004_6083:
    rra
    dec b
    pop bc
    ldh a, [$6c]
    rrca
    ld [bc], a
    ret nz

    ldh a, [$34]
    ldh [$30], a
    ld c, $02
    add b
    ret nz

    jr nz, jr_004_60ba

    ld d, e
    inc b
    ld b, b
    jr nz, @-$3e

    inc de
    ld [$3040], sp
    adc b
    ld bc, $2080
    jr nc, jr_004_60a8

    add hl, bc
    sub h
    add b
    sbc c

jr_004_60a8:
    ld h, [hl]
    sbc c
    sbc b
    rlca
    ld bc, $7040
    jr jr_004_60b4

    nop
    xor c
    and b

jr_004_60b4:
    ld c, $9d
    and a
    xor c
    add l
    add hl, sp

jr_004_60ba:
    add hl, de
    ld e, a
    ld d, $13
    jr jr_004_6042

    add hl, sp
    ld a, [bc]
    inc bc
    ret nc

    ret nc

    ccf
    ld c, $49
    db $76
    xor l
    sbc b
    ld c, $0a
    ld d, d
    ld h, [hl]
    nop
    ld b, b
    ld a, [de]
    ld h, d
    ld l, b
    and [hl]
    nop
    ldh a, [$38]
    rra
    rlca
    ld b, a
    pop af
    call z, $31ff
    rst $08
    ldh a, [$dc]
    ccf
    ld c, $ec
    dec h
    dec e
    ld a, h
    ld d, c
    ld h, l
    add e
    push hl
    or a
    dec a
    sbc $77
    dec a
    ld c, b
    inc hl
    db $db
    ld b, e
    ret nz

    ret nz

    ld [hl-], a
    ld [$0c02], sp
    nop
    sbc c
    ld l, b

Call_004_60fe:
    jr z, jr_004_611c

    rst $38
    jr nc, jr_004_6151

    inc de
    ld [bc], a
    ld l, b
    and h
    adc [hl]
    cp c
    or [hl]
    ld h, a
    and a
    ld c, a
    ldh a, [rP1]
    ccf
    ld c, $47
    pop af
    ret c

    rst $38
    inc hl
    call z, Call_000_3cf1
    rra
    rlca
    add a

jr_004_611c:
    pop af
    ld [c], a
    jp c, $c03d

    ld h, e
    cp h
    db $db
    dec a
    call $dc33
    ld d, l
    ld a, [hl-]
    push bc
    and h
    ld h, c
    cp c
    ld l, $58
    ld [$a890], sp
    ld l, $0e
    add e
    ldh [rBCPS], a
    cpl
    rrca
    ld b, e
    db $fc
    cp c
    ccf
    ld c, e
    db $e3
    ld a, h
    ccf
    ld b, e
    add e
    nop
    ld b, b
    inc [hl]
    inc b
    ld sp, $6002
    ld [$c00f], sp
    inc sp
    ld l, h
    inc a

jr_004_6151:
    ld d, c
    adc a
    jp $18ec


    dec b
    pop bc
    and b
    ld e, h
    ld e, $05
    jp $bce0


    db $fc
    daa
    set 0, c
    db $fd
    inc l
    ld a, a
    ld d, h
    ld h, d
    inc a
    rst $28
    dec e
    adc e
    ld [hl], d
    add sp, -$49
    ld l, $0b
    ld h, h
    ret nc

    ld d, a
    ccf
    ret nz

    or $ad
    xor l
    ld l, e
    db $db
    inc de
    db $fd
    or e
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_004_61c4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    rra
    jr nz, jr_004_61d5

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_004_61e8

    nop
    nop
    nop
    nop
    nop

jr_004_61c4:
    ld a, [hl+]
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop
    nop
    nop
    jr nc, @+$33

    ld [hl-], a

jr_004_61d5:
    inc sp
    inc [hl]
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_004_6218

    ld a, [hl-]
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_004_61e8:
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    daa
    add hl, hl
    ld c, a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld d, b
    ld d, c
    ld d, d
    inc b
    dec b
    nop
    nop
    nop
    nop
    ld d, e
    ld d, h
    ld [$0a09], sp
    nop

jr_004_6218:
    nop
    nop
    ld d, l
    ld d, [hl]
    dec c
    ld c, $57
    ld e, b
    nop
    nop
    ld e, c
    ld e, d
    inc de
    inc d
    ld e, e
    ld d, $00
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    inc e
    ld h, b
    ld h, c
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    dec h
    ld h, $68
    daa
    ld l, c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    dec bc
    ld l, d
    dec c
    ld c, $57
    ld e, b
    ld l, e
    nop
    ld de, $1312
    inc d
    ld e, e
    ld d, $6c
    nop
    nop
    ld l, l
    ld e, a
    inc e
    ld h, b
    ld h, c
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, b
    daa
    ld l, c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    dec bc
    ld l, d
    dec c
    ld c, $57
    ld e, b
    nop
    nop
    ld de, $1312
    inc d
    ld e, e
    ld d, $00
    nop
    nop
    ld l, l
    ld e, a
    inc e
    ld h, b
    ld h, c
    ld [hl], l
    db $76
    db $76
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    ld a, b
    ld [hl], h
    ld l, b
    daa
    ld l, c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld a, c
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    ld a, d
    nop
    ld a, e
    ld [$0a09], sp
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    dec c
    ld c, $57
    ld e, b
    nop
    nop
    ld a, a
    add b
    inc de
    inc d
    ld e, e
    ld d, $00
    ld e, h
    add c
    add d
    ld e, a
    inc e
    ld h, b
    ld h, c
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    dec h
    ld h, $68
    daa
    ld l, c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    add e
    dec c
    ld c, $57
    ld e, b
    ld [hl], l
    db $76
    add h
    add l
    inc de
    inc d
    ld e, e
    ld d, $00
    ld e, h
    add [hl]
    add a
    ld e, a
    inc e
    ld h, b
    ld h, c
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    dec h
    ld h, $68
    daa
    ld l, c
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    adc d
    adc e
    nop
    nop
    nop
    nop
    nop
    adc h
    adc l
    adc [hl]
    inc [hl]
    nop
    nop
    nop
    adc a
    sub b
    sub c
    sub d
    sub e
    ld a, [hl-]
    nop
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    ld b, b
    nop
    ld b, c
    ld b, d
    sbc c
    sbc d
    sbc e
    ld b, [hl]
    ld b, a
    nop
    nop
    ld c, b
    ld c, c
    sbc h
    ld c, e
    ld c, h
    nop
    nop
    nop
    ld a, b
    sbc l
    daa
    add hl, hl
    ld c, a
    nop
    halt
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_004_6389

    rst $38

jr_004_6389:
    ld [$c284], sp
    and c
    ld [hl], b
    adc b
    inc de
    cp $04
    call c, Call_000_1f2a
    ret nc

    dec c
    ld d, a
    ld l, e
    db $ed
    adc $2f
    jr jr_004_63e1

    ldh [$f0], a
    jr nz, jr_004_6412

    add hl, hl
    ld a, [hl]
    and b
    ld a, l
    add c
    sub $e2
    rst $30
    ld h, c
    ld [hl], b
    ld l, h
    dec sp
    ld e, [hl]
    xor [hl]
    sbc $af
    or a
    ld [hl], e
    push de
    cp [hl]
    db $e4
    ld [hl], l
    add [hl]
    sbc $ce
    rst $30
    ei
    pop bc
    ld hl, sp-$64
    scf
    sub a
    sbc $ee
    rst $30
    db $eb
    sbc l
    cp $11
    ld a, a
    and c
    sbc l
    and l
    rst $20
    ei
    dec b
    or d
    ld h, $77
    or [hl]
    ld e, [hl]
    xor e
    ld h, [hl]
    add hl, de
    ld [$aeda], sp
    ld e, e
    or [hl]
    ld e, a
    ld l, h
    ld [hl], a
    ld h, e

jr_004_63e1:
    ld [hl], c
    db $76
    ld h, h
    ld c, e
    and [hl]
    db $d3
    jp hl


    or [hl]
    ei
    ld h, b
    cp $f7
    ld a, d
    add e
    ld e, e
    ld c, $87
    jp $aca2


    ldh a, [rBCPS]
    dec hl
    ld e, e
    xor a
    and l
    add hl, sp
    db $dd
    ld [hl], b
    xor a

Jump_004_63ff:
    scf
    or b
    ld e, b
    jr z, jr_004_6408

    dec b
    sbc c
    ret nc

    ret c

jr_004_6408:
    ld a, [hl]
    or a
    ld e, l
    pop hl
    ld a, [c]
    cp e
    cp l
    sub $f7
    ld a, e

jr_004_6412:
    cp [hl]
    ld hl, $e830
    add c
    ld [de], a
    daa
    dec d
    adc e
    add $5f
    ret nz

    nop
    dec bc
    ld hl, sp+$02
    nop
    rlca
    add b
    sub a
    ld [$1419], a
    sub c
    sbc $5f
    sub h
    ld c, d
    and l
    adc a
    rst $20
    dec hl
    db $fd
    adc c
    ld [hl-], a
    ld l, e
    dec sp
    db $dd
    rst $28
    rlca
    ld a, [$747e]
    rst $38
    ld h, a
    ld [$9a6f], a
    ld h, l
    ld sp, hl
    db $fc
    cp $ff
    ld bc, $c080
    jr nz, jr_004_645c

    ld e, b
    inc l
    xor [hl]
    ld d, a
    ld a, h
    ld a, $0a
    dec c
    inc b
    jp $cae1


    push af
    ld d, b
    jr z, jr_004_6464

jr_004_645c:
    inc b
    ld c, $13
    ld b, c
    and c
    jp nz, $1428

jr_004_6464:
    call z, $f366
    ld a, c
    db $fd
    and $ff
    ld a, [hl]
    ld b, e
    ld a, [hl-]
    ld l, c
    rst $30
    cp $c3
    and a
    dec bc
    ccf
    add b
    db $10
    ld de, $0330
    ld [hl], b
    add b
    rst $38
    adc d
    ld b, l
    sbc h
    ld a, [$dc48]
    ld l, h
    dec e
    sub e
    ld b, b
    ld h, l
    and h
    and l
    rst $00
    or e
    db $ed
    ld a, [$7bfb]
    cp [hl]
    ld e, l
    rst $28
    ld c, c
    add e
    xor l
    or a
    inc [hl]
    sbc e
    ld c, [hl]
    rrca
    db $e4
    rst $30
    ei
    sbc l
    ld a, $50
    inc d
    dec h
    ld de, $7046
    adc h
    inc bc
    ld bc, $34c6
    ld c, $03
    add b
    ld d, b
    inc d
    ld [bc], a
    and b
    xor b
    sub l
    dec h
    ld d, b
    ld h, [hl]
    pop de
    or d
    dec b
    add c
    ld h, d
    cp h
    xor a
    dec d
    ld b, l
    ld d, h
    ld [hl+], a
    dec d
    nop
    add b
    jr nz, jr_004_64db

    dec b
    ld l, h
    and c
    ld [hl], $cc
    ld bc, $0e3a
    add a
    dec e
    jp nz, $2271

    add a
    dec d
    jp $e08a


    ld l, b
    xor b

jr_004_64db:
    ld h, b
    jr jr_004_64e3

    ld de, $ab44
    ld a, [hl+]
    push bc

jr_004_64e3:
    pop af
    ld a, h
    jr nz, jr_004_64ef

    inc bc
    nop
    jp nz, $8e38

    adc d
    add d
    and b

jr_004_64ef:
    ld d, h
    dec d
    ld a, [bc]
    and d
    xor b
    ccf
    rrca
    jp $e8a0


    inc e
    rlca
    nop
    and b
    ld a, [hl+]
    rra
    add a
    ld e, e
    ld b, h
    db $10
    jr z, jr_004_650f

    inc hl
    xor b
    pop bc
    call nz, $9c82
    ld b, l
    sub $06

jr_004_650e:
    adc b

jr_004_650f:
    ld e, e
    ld d, [hl]
    db $dd
    cp c
    ld l, [hl]
    push bc
    nop
    ldh [$38], a
    dec b
    ld b, c
    ld e, b
    xor d
    ld [$4572], sp
    ld bc, $68a0
    dec e
    rlca
    ld b, b
    cp h
    cpl
    sub b
    dec h
    inc bc
    ret nz

    ldh a, [$82]
    and b
    ret


    call nz, Call_000_3e50
    adc a
    and b
    ld [hl], h
    dec e
    sub e
    ld e, e
    ld c, c
    jp hl


    ld b, $9f
    jr jr_004_650e

    ld b, $79
    add d
    ld c, $a3
    xor b
    push af

Jump_004_6545:
    dec a
    ld c, e
    ld a, [c]
    db $fc
    call nz, $0831
    ld h, d
    jr @-$21

    scf
    ld e, e
    ld h, [hl]
    ldh [$fc], a
    ccf
    inc b
    ld hl, $8108
    jr nz, jr_004_65bb

    ld l, c
    ld e, h
    ret nz

    rrca
    add e
    add sp, -$36
    dec b
    jr nc, jr_004_658e

    ld a, c
    ld d, h
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc b
    dec b

jr_004_6577:
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e

jr_004_658e:
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc b
    add d
    and b
    ld d, b
    ld c, b
    inc e
    inc c
    ld c, $08
    add h
    ld b, d
    and c
    jr nc, @-$66

    inc l
    ld a, [hl-]
    ld b, $05
    adc b
    add c
    add b
    ld b, b
    ld c, b
    adc h
    ld e, b
    inc bc
    jr @-$72

    add $a3
    ld [hl], c
    ret z

    db $ec
    ld a, d
    inc a
    inc bc

jr_004_65bb:
    sub b
    ret z

jr_004_65bd:
    and h
    ld h, b
    jr c, jr_004_65bd

    ld h, d
    ld [bc], a
    ld a, a
    ret nz

    and b
    ld [hl], b
    ld c, b
    inc l
    ld a, [de]
    ld [$7ffe], sp
    cp a
    sbc a
    rst $08
    rst $10
    db $fc
    ld [hl], $04
    ldh [rSVBK], a
    inc h
    rla
    and $43
    inc hl
    ld l, l
    adc b
    and b
    ld h, a
    jr z, jr_004_65f8

    ld l, h
    ld [$7c18], sp
    cp [hl]
    ld h, e
    ld b, l
    and e
    ld e, b

Call_004_65ea:
    inc h
    add d
    ld a, [hl-]
    jr jr_004_6577

    and l
    ld [hl], h
    sub [hl]
    ldh [$f0], a
    ld h, e
    ei
    db $fc
    ld a, a

jr_004_65f8:
    ld c, $7f
    ld a, $5f
    cpl
    ld h, a
    db $d3
    db $dd
    or $e7
    ld a, [hl]
    cp b
    db $db
    xor [hl]
    scf
    di
    dec b
    call z, Call_004_582e
    inc [hl]
    dec bc
    xor $06
    add b
    ret nz

    ld a, [hl]
    ret nz

    jr nz, jr_004_6655

    push de
    ld c, a
    ld [hl], d
    db $eb
    adc h
    ld [c], a
    ld d, c
    ld h, b
    jr z, jr_004_6670

    and h
    ld h, b
    or b
    ld h, l
    ld a, [c]
    rlca
    inc bc
    cp a
    push de
    rst $08
    ld a, [c]
    adc e
    ld sp, hl
    ld a, [hl]
    ld e, a
    or b
    rla
    db $dd
    db $ed
    rst $30
    ld a, d
    db $fd
    adc [hl]
    ld a, a
    ld b, e
    cp a
    ret nz

    db $76
    cp c
    ld h, h
    ld c, $13
    ld [hl], b
    ld a, a
    and b
    ld l, $4f
    ldh a, [rTIMA]
    push de
    ld a, [hl]
    ld b, b
    and h
    ld d, d
    cpl
    inc bc
    and $0d
    sub $fe
    nop
    ld [hl], c
    add l

jr_004_6655:
    inc e
    ld a, b
    db $10
    and l
    call nc, $f80e
    ret nz

    ld h, d
    xor [hl]
    ret c

    rst $00
    ld hl, sp+$07
    inc e
    db $fd
    ld bc, $403e
    adc $10
    ld a, [c]
    inc b
    db $fd
    sub a
    ld b, c
    sbc a

jr_004_6670:
    ld hl, $c859
    ld c, l
    cp c
    ld a, [hl]
    and b
    ld c, a
    or b
    dec de
    db $e4
    rlca
    or b
    dec a
    cp $e1
    ld a, e
    and [hl]
    dec e
    pop hl
    dec bc
    xor e
    call nz, $f114
    nop
    ld l, e
    sbc $e0
    add a
    ld hl, sp+$1c
    rst $30
    ld l, d
    or [hl]
    ld e, e
    ld sp, $0ba0
    jp $0ae1


    ld a, a
    cp c
    db $e3
    add hl, de
    db $e3
    ld h, $19
    add hl, bc
    ld c, $25
    ld [hl], a
    adc d
    or $ce
    pop af
    cp e
    ld a, h
    ld b, a
    ld l, l
    add e
    ld e, h
    ld hl, $ee90
    xor h
    ld b, [hl]
    daa
    dec d
    adc e
    add $63
    ld l, h
    ld a, [bc]
    inc bc
    cp $3f
    ld hl, $c991
    ld h, h
    ld a, [c]
    sub d
    db $dd
    ld b, d
    db $dd
    ld [bc], a
    sub a
    rrca
    db $ec
    inc de
    add hl, hl
    and h
    reti


    or $f7
    sbc l
    ld c, [hl]
    sbc a
    adc $17
    ei
    ld [bc], a
    add l
    ld b, h
    and e
    ld d, d
    add hl, hl
    ld d, h
    jp z, $f575

    ld d, d
    ld d, l
    dec d
    ld h, l
    ld h, c
    ld e, d
    ld d, a
    dec d
    and $21
    ld h, d
    ld e, c
    ld d, $65
    and c
    ld l, d

jr_004_66f1:
    ld d, [hl]
    sbc e
    and a
    reti


    ld [hl], h
    jr nz, jr_004_6705

    or $84
    ld h, b
    daa
    add $03
    ld a, h
    jr nz, @+$39

    push bc
    ld b, $2d
    add d

jr_004_6705:
    ld h, c
    jr jr_004_672e

    cp b
    ld a, [bc]
    ld h, d
    ld [c], a
    ld d, $34
    inc bc
    ld a, $c0
    ld d, e
    call z, $300d
    jp $0cd0


    db $fd
    adc d
    ret nz

    ld [hl], e
    db $e4
    sbc a
    add hl, de
    ld c, h
    pop af
    add b
    rst $28
    ld [$b50f], sp
    xor b
    ldh a, [$3e]
    call z, $dcc3
    adc b
    ld e, l

jr_004_672e:
    rrca
    add $c5
    xor a
    dec e
    db $e3
    jp nz, $bb1c

    ld de, $d8d6
    add hl, sp
    adc h
    ld l, a
    sbc h
    rlca
    add hl, bc
    ld a, a
    ld a, $08
    ld [hl], d
    inc d
    rrca
    ld [de], a
    call Call_004_5cf1
    rst $38
    inc bc
    call $bcf1
    cp a
    sub c
    ld d, l
    and l
    ld l, b
    db $fd
    ld a, e
    ld d, e
    ld d, h
    db $dd
    pop af
    inc a
    rst $18
    inc sp
    add l
    ld d, b
    add b
    dec d
    ld d, l
    ld e, l
    ld e, c
    ld d, [hl]
    rst $08
    pop af
    ld c, h
    db $fc
    ld e, b

jr_004_676a:
    jr nz, jr_004_66f1

    sub h
    cp a
    inc sp
    sub $96
    jp c, Jump_000_3873

    jr nz, jr_004_676a

    db $76
    ld [hl], a
    add h
    and c
    dec h
    ret


    adc b
    adc b
    adc a
    ldh [rTMA], a
    ld a, [hl]
    sbc a
    and a
    jr nc, jr_004_6792

    rst $30
    ld [bc], a
    adc $70
    ld l, h
    add a
    ld e, $c0
    ld [hl], e
    xor $8a
    inc bc

jr_004_6792:
    rst $08
    inc sp
    db $fc
    and b
    and e
    rst $10
    inc h
    add sp, -$01
    inc a
    rrca
    db $d3
    sbc b
    ei
    ld sp, $661f
    cp [hl]
    ccf
    ld [bc], a
    adc e
    ld [hl], e

jr_004_67a8:
    jr nz, @+$01

    ld de, $b0cd
    sbc [hl]
    ld b, [hl]
    ld e, a
    rst $20
    or $f4
    ld b, b
    inc a
    ret z

    rst $00
    dec b
    add b
    rrca
    call z, $3cb0
    dec bc
    rlca
    ret


    ld [hl], d

jr_004_67c1:
    db $fc
    xor a
    ld [hl], a
    set 6, e
    ld a, h
    ld a, a
    inc hl
    push hl
    ld b, h
    dec c
    rst $10
    ld a, [hl+]
    rlca
    sub c
    call nc, Call_000_3ace
    adc d
    ld b, e
    ld d, h
    add b
    ld a, $d1
    call nc, $e009
    ld c, b
    adc b
    db $10
    jr nz, jr_004_67a8

    ld hl, $4086
    sub l
    ld a, [hl+]
    ld sp, $e780
    pop hl
    ld b, l
    ld d, c
    call nc, Call_000_2d95
    ld c, l
    jr c, jr_004_67c1

    ld a, [$bef2]
    or b
    inc l
    dec hl
    db $10
    ret nz

    ld sp, $e78c
    ld a, l
    jr nz, @-$4c

    ld l, h
    cp e
    inc [hl]
    dec h
    jr nc, jr_004_684a

    ld [hl-], a
    dec b
    adc a
    ld a, d
    ld [de], a
    rst $20
    xor b
    adc $68
    call z, $ba01
    call nc, $ed7e
    ld [hl], l
    jr c, @+$43

    nop
    ld b, h
    nop
    inc b
    dec b
    ld bc, $29a0
    and d
    dec b
    ld h, a
    sub b
    ld d, h

jr_004_6825:
    dec l
    dec c
    ccf
    ld c, a
    db $d3
    db $ec
    rst $38
    pop bc
    ret nc

    inc hl
    nop
    ret nz

    ld [$1305], sp
    call z, Call_000_27eb
    dec c
    ld d, c
    inc h
    xor d
    nop
    rrca
    ld [hl], l
    call $7a02
    call z, Call_004_5c70
    dec de
    nop
    pop bc
    ld [de], a
    inc a
    dec c

jr_004_684a:
    ld [hl-], a
    ld b, h
    and d
    inc c
    add [hl]
    jp nz, $d90f

    add h
    di
    ld a, $8f
    ld e, d
    ld e, b
    cp $39
    db $d3
    call nz, Call_000_0cf8
    rlca
    nop
    nop
    nop
    ld [$0800], sp
    ld [bc], a
    nop
    and b
    jr jr_004_6886

    rla
    db $f4
    db $e3
    nop
    ret nz

    jr nz, jr_004_6878

    ld a, $00
    add b
    and b
    inc [hl]
    dec l
    inc c

jr_004_6878:
    rst $08
    jr nc, jr_004_68ba

    nop
    ld c, e
    jp Jump_004_7df3


    ld h, e
    sbc e
    ldh [$ba], a
    sub c
    dec c

jr_004_6886:
    ret nz

    ld d, b
    inc h
    inc h
    ld a, [c]
    ld [hl], l
    db $10
    ei
    ld l, b
    ldh a, [rNR50]
    ld a, [bc]
    ld bc, $3df4
    jr c, jr_004_6825

    inc hl
    nop
    ld [$3530], a
    db $e4
    inc c
    rrca
    dec bc
    ldh a, [$f0]
    inc [hl]
    ld de, $0000
    ldh a, [rNR23]
    ld c, h
    ld bc, $9540
    or b
    cp a
    ccf
    jp nc, $10e4

    sbc a
    ld b, b
    sbc $a3
    db $fc
    ld [c], a
    jr c, @+$50

jr_004_68ba:
    db $10
    ld hl, sp-$10
    scf
    inc bc
    set 2, a
    dec sp
    ld b, $40
    sub e
    add b
    ld de, $4e39
    ld l, e
    ld a, [$5704]
    ld c, a
    db $e4
    inc b
    nop
    nop
    ld bc, $0302
    inc b
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    inc de
    inc d
    dec d
    ld d, $00
    rla
    jr jr_004_6907

    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $00
    rra
    jr nz, jr_004_6919

    ld [hl+], a
    nop
    ld bc, $0302
    inc b
    nop
    inc hl
    ld b, $24
    dec h
    nop

Call_004_6904:
    ld h, $0b
    daa

jr_004_6907:
    jr z, jr_004_6909

jr_004_6909:
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    nop
    ld bc, $2e2d
    inc b
    nop
    dec b
    cpl
    rlca
    ld [$0a09], sp

jr_004_6919:
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    inc de
    jr nc, jr_004_6956

    ld [hl-], a
    nop
    dec b
    inc sp
    inc [hl]
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    dec [hl]
    ld [hl], $37
    nop
    nop
    jr c, jr_004_6976

    ld a, [hl-]
    dec sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    inc a
    dec a
    ld a, $3f
    nop
    dec b
    ld b, b
    ld b, c
    ld [$0a09], sp
    dec bc

jr_004_6956:
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_004_6965

    rst $38

jr_004_6965:
    ld [$c284], sp
    and c
    ld [hl], b
    adc b
    dec sp
    cp $07
    dec c
    add a
    ld b, e
    pop hl
    ld [hl], c
    jr z, jr_004_69e1

    ld d, d

jr_004_6976:
    daa
    rlca
    adc h
    add $22
    ld [hl], c
    ld l, b
    xor h
    ld [hl], d
    cpl
    inc c
    add [hl]
    ld b, [hl]
    and h
    ld [hl], c
    add a
    ldh a, [rSB]
    ld sp, hl
    rlca
    nop
    cp a
    pop bc
    rrca
    add b
    inc bc
    add b
    add b
    ret nz

    add e
    nop
    rra
    ld [de], a
    ret nz

    inc bc
    jp nz, Jump_000_205c

    ld [hl], b
    nop
    jr @+$05

    ld hl, sp-$3c
    jp z, $1609

    sbc h
    rst $08
    ldh [$c2], a
    ld bc, $10f8
    rrca
    ld b, e
    and h
    pop bc
    ld d, b
    inc d
    call nz, Call_004_6904
    ld bc, $1f0f
    add h
    inc bc
    ldh [$0a], a
    ld b, b
    inc c
    nop
    ld bc, $d483
    nop
    rlca
    ldh a, [rP1]
    cp $8a
    nop
    xor d
    rlca
    ld [$4972], a
    ld [hl+], a
    ld a, $1f
    ld e, [hl]
    adc c
    rlc b
    pop af
    cp b
    adc h
    ld [de], a
    sbc b
    nop
    and a
    jr nz, jr_004_6a04

    inc de
    cp e
    xor b

jr_004_69e1:
    nop
    rlca
    ld l, b
    and [hl]
    ld c, [hl]
    ld l, [hl]
    inc d
    xor b
    inc [hl]
    jr nz, @+$09

    ld d, a
    cp [hl]
    ret nz

    sbc a
    rst $20
    ld a, [$0aee]
    inc c
    rlca
    inc bc
    sbc [hl]
    rrca
    push af
    rlca
    inc b
    inc a
    ld e, $00
    rlca
    add d
    ld [hl-], a
    nop
    ld [hl], a

jr_004_6a04:
    call nz, Call_000_356e
    sub [hl]
    ret nz

    ld d, d
    sbc a
    db $e3
    add a
    ei
    ld hl, $919f
    ret z

    reti


    inc l
    ld d, h
    add hl, hl
    db $d3
    jp nz, Jump_000_2d6b

    sub h
    ld c, c
    sbc a
    rst $30
    ld b, a
    inc b
    or d
    ld d, l
    ld h, l
    or h
    ld d, c
    daa
    ld e, c
    ld a, b
    dec l
    ld e, $c1
    or l
    and c
    sub $6a
    ldh [$7b], a
    nop
    cp $b9
    ld e, e
    res 7, a
    db $ec
    add e
    cp $0e
    add $02
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    ld c, $04
    nop
    rrca
    db $10
    ld de, $0012
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_004_6a81

    ld a, [de]
    dec de
    nop
    inc b
    inc e
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_004_6a95

    inc b
    ld bc, $a0c0
    ld [hl], b
    ld c, b
    jr jr_004_6a90

    inc c
    rlca
    add d
    ret nz

    pop bc

jr_004_6a81:
    nop
    sub b
    ld d, h
    ld a, [hl+]
    inc b
    dec bc
    ld b, $03
    ld h, c
    ld b, b

jr_004_6a8b:
    ld c, b
    xor h
    ld e, d
    ld l, $04

jr_004_6a90:
    nop
    add $a3
    ld [hl], c
    ret z

jr_004_6a95:
    db $ec
    ld a, d
    ccf
    dec e
    ld bc, $a448
    ld [hl], d
    ld b, b
    inc d
    add d
    scf
    ld bc, $0000
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_004_6aab

    rst $38

jr_004_6aab:
    rlca
    add h
    ld b, d
    ld h, b
    adc a
    ld hl, sp+$54
    ld [hl], $1b
    rlca
    add l
    jp nz, Jump_000_0fe1

    ldh a, [$33]
    push hl
    ldh [rIF], a
    adc e
    inc a
    ld bc, $0820
    db $e4
    ld e, [hl]
    inc sp
    rla
    ld a, a
    cp l
    add c
    rst $28
    ld h, b
    ld c, e
    reti


    ld a, [c]
    ld b, $07
    cp h
    dec h
    ld de, $0243
    ld a, [hl]
    ld d, l
    ld l, $07
    and h
    nop
    inc de
    add hl, sp
    ld a, e
    jp nz, $ff62

    scf
    cp h
    dec c
    jp hl


    inc bc
    ld a, d
    ld a, h
    pop bc
    jr jr_004_6a8b

    jp nz, Jump_004_4f0f

    and e
    db $eb
    db $f4
    db $fc
    cp $3f
    cp a
    jp hl


    rlca
    rst $00
    jp hl


    ld [hl], c
    cp d
    inc c
    ld d, [hl]
    and b
    db $10
    inc b
    ld [bc], a
    dec b
    ld c, [hl]
    xor d
    jr nz, jr_004_6b57

    inc h
    ld a, [de]
    nop
    add d
    ld b, d
    ld d, c
    xor b
    ld h, $3b
    inc d
    db $db
    db $76
    ld [hl-], a
    adc e
    ld h, h
    ld b, b
    ld [hl], d
    ld bc, $c029
    ld b, d
    ld [hl], c
    dec hl
    db $f4
    ld d, h
    xor d
    ld [hl-], a
    add hl, de
    rra
    ld c, a
    and a
    db $eb
    push af
    ldh a, [$fa]
    add hl, hl
    dec d
    db $ed
    sub [hl]
    add sp, $34
    inc d
    ld [bc], a
    nop
    ret nz

    ld [$d06f], sp

jr_004_6b37:
    ld a, [hl+]
    sbc e

Call_004_6b39:
    nop
    ld bc, $6056
    ld [$050e], sp
    ld b, $c6
    scf
    dec de
    ld l, b
    ld b, c
    ld e, d
    db $ed
    xor a
    ret nc

    ld [bc], a
    ld [bc], a
    inc b
    db $10
    ld [$0400], sp
    ld bc, $9001
    ld [$7c2f], sp

jr_004_6b57:
    ld a, [hl]
    call nc, Call_004_6bea
    dec b
    add d
    ld bc, $9440
    ld e, d
    add hl, hl
    rla
    sbc d
    inc a
    cp h
    inc c
    ld h, b
    jr nc, jr_004_6b37

    add l
    ld b, $82
    ld b, c
    db $e4
    inc de
    ld e, d
    ld b, b
    ld h, b
    jr @+$1e

    dec b
    ld b, $86
    rst $28
    ld a, e
    cp a
    ld l, b
    ld a, [de]
    dec e
    rlca
    rlca
    add a
    rrca
    adc d
    ld a, b
    ld a, h
    dec e
    ld e, $94
    ld b, e
    db $e3
    ld a, [c]
    adc b
    ld c, l
    ld a, [hl]
    sbc l
    sbc d
    add $b6
    ld sp, hl
    ld l, l
    rst $08
    ld c, d
    adc b
    db $eb
    add $1a
    ld [hl], d
    and c
    db $d3
    ld d, [hl]
    call nc, Call_004_446a
    ld [hl], d
    add sp, $00
    add h
    call $1440
    ld e, d
    ld [$1b17], sp
    sbc a
    scf
    rlca
    add a
    cp l
    pop hl
    ld a, [c]
    add sp, -$79
    ld d, a
    xor h
    inc de
    inc sp
    or d
    ld a, [de]
    ld [$1007], sp
    ld c, d
    dec h
    add hl, de
    ld c, b
    ld d, d
    and b
    inc de
    cp $02
    ld d, l
    push de
    ld h, l
    ld d, b
    ld b, b
    jr z, jr_004_6bd8

    inc bc
    ld b, b
    ret nc

    ld a, [hl+]
    ld a, [bc]
    add a
    add [hl]
    ld [bc], a
    inc de
    rst $08

jr_004_6bd8:
    pop af
    call c, Call_004_75d7
    ld e, l
    ld [hl], a
    ld h, h
    rst $38
    ld a, [hl+]

jr_004_6be1:
    adc d
    and e
    sub h
    push hl
    ld e, l
    rla
    ld h, e
    ld hl, sp-$02

Call_004_6bea:
    ld b, e
    pop de
    ld b, [hl]
    sbc $07
    dec h
    ld c, c
    ld d, e
    xor b
    ld [$1044], a
    and [hl]
    ld h, c
    sbc d
    ld [$321b], sp
    add b
    cp b
    ld a, b
    ld e, l
    and h
    ld [$0003], sp
    ret nz

    nop
    ld [$0001], sp
    ret nz

    jr z, jr_004_6be1

    add h
    ld b, b
    push de
    ld d, [hl]
    push hl
    ld b, $15
    ld b, l
    ld d, d
    and b
    xor e
    dec d
    push bc
    ld d, e
    ld a, [$8a1e]
    ld d, b
    dec h
    ld d, [hl]
    add hl, bc
    dec e
    ld b, a
    ld d, d
    xor b
    ld [$472f], a
    ret c

    and l
    ld bc, $0000
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0203
    inc b
    dec b
    ld bc, $0206
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1200
    nop
    inc de
    inc d
    dec d
    nop
    ld d, $00
    nop
    rla
    nop
    nop
    jr jr_004_6c6e

    ld a, [de]
    dec de
    nop
    nop
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    nop
    jr nz, jr_004_6c84

    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b

jr_004_6c68:
    db $10
    jr nz, jr_004_6c7d

    ld b, $03
    ld b, c

jr_004_6c6e:
    pop bc
    nop
    ret z

    ld l, b
    nop
    inc d
    dec bc
    inc bc
    add c
    ld [c], a
    nop
    and b
    ld l, h
    ld e, b
    nop

jr_004_6c7d:
    inc bc
    nop
    add b
    and c
    ld d, c
    sub b
    inc d

jr_004_6c84:
    ld e, $1f
    ld de, $c889
    ld h, d
    nop
    nop
    inc [hl]
    db $76
    add hl, sp
    ld a, [de]
    inc b
    add b
    ld [hl+], a
    ld d, c
    add hl, bc
    inc d
    adc b
    ld bc, $831a
    add b
    ret nz

    ld b, b
    sub b
    ld b, h
    call z, Call_000_0400
    ld [bc], a
    adc $67
    inc sp
    and b
    jr z, jr_004_6cbf

    dec bc
    ld b, b
    add b
    add b
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_004_6cb5

    and [hl]

jr_004_6cb5:
    cpl
    add h
    ld b, d
    and c
    ld [hl+], a
    pop af
    ei
    ld [bc], a
    inc e
    inc [hl]

jr_004_6cbf:
    ld h, l
    sub c
    ld [hl+], a
    ld [hl], c
    ld c, b
    xor b
    or l
    rst $38
    rla
    ld l, c
    inc [hl]
    sbc [hl]
    adc h
    cp b
    db $e4
    ld b, [hl]
    ld [hl+], a
    ld [hl], h
    ld h, l
    rst $00
    db $e4
    ld c, h
    cp b
    call nc, Call_004_4f9a
    jr z, jr_004_6c68

    dec l
    inc d
    adc e
    ld h, l
    ld [hl-], a
    db $dd
    ld c, [hl]
    cp a
    ld d, a
    xor h
    inc d
    inc b
    inc b
    ld bc, $7cf9
    rst $38
    ld e, a
    add c
    nop
    add b
    ld h, b
    inc sp
    db $dd
    xor $ff
    ld a, a
    and b
    db $10
    inc c
    ld b, $03
    pop af
    ld sp, hl
    ld b, c
    ld h, d
    ld hl, $c818
    ld h, a
    cp d
    sbc $72
    ret nz

    and d
    jr nz, jr_004_6d29

    db $d3
    adc c
    call nc, Call_004_7df2
    ld b, b
    and c
    ld d, c
    jr jr_004_6d23

    rst $20
    push af
    dec b
    or $ff
    ld a, h
    cp a
    pop bc
    rrca
    ldh a, [$03]
    db $fc
    cp $ff
    rra

jr_004_6d23:
    cp a
    ret nz

    ld [hl], $57
    ei
    push af

jr_004_6d29:
    push hl
    ld l, a
    ld b, $bc
    xor [hl]
    ld b, a
    rst $10
    sub b
    db $fd
    ld hl, sp+$03
    cp h
    ccf
    rra
    ld [hl], a
    or a
    ldh [$2e], a
    db $f4
    ld a, a
    ld a, [hl]
    ld e, l
    rst $28
    scf

jr_004_6d41:
    sub c
    and e
    db $d3
    dec c
    adc b
    jp Jump_000_1ebd


    ld b, b
    db $fc
    ld h, c
    dec [hl]

Jump_004_6d4d:
    ld a, d
    ld c, e
    dec h
    ld h, h
    ld [hl], d
    ld a, c
    ld [hl+], a
    ld d, e
    ld d, c
    pop af
    sub a
    rla
    adc d
    pop af
    ld sp, hl
    push bc
    xor $77
    ld a, $bd
    ld d, $0a
    dec b
    jp nz, $d6ac

    ld l, e
    ld b, l
    and d
    jp nc, $f469

    ld a, d
    ld d, c
    ld e, [hl]
    xor a
    ld d, b
    jr z, jr_004_6d41

    ld e, a
    cpl
    sub a
    ei
    and e
    ret z

    ld a, e
    ld [hl], e
    call c, Call_000_31e8
    dec sp
    rst $00
    and [hl]
    and a
    ld e, e
    sub h
    ldh [$92], a
    and e
    sub c
    and $5c
    cpl
    adc [hl]
    cpl
    sub h
    push bc
    ld a, c
    ld h, h
    ld c, d
    ld d, l
    ld [hl-], a
    sbc l
    ld sp, $cc99
    rst $10
    jp z, $8de9

    add hl, hl
    db $ec
    add [hl]
    ld h, a
    xor h
    sbc $6b
    rst $00
    ld [c], a
    db $fd
    sbc [hl]
    adc a
    ld h, c
    and b
    ld [$b933], a
    db $ec
    cp $82
    ret nz

    nop
    inc c
    jr @+$0e

    rst $00
    add e
    call $e2f9
    ldh a, [rPCM34]
    cp e
    adc h
    push bc
    add e
    jp nz, Jump_004_55a7

    or $8d
    sbc b
    rst $08
    ld [hl], c
    cp l
    dec b
    ld b, e
    ld d, c
    ld d, l
    push de
    ld a, l
    ld h, c
    ld e, b
    sub $d6
    inc b
    inc a
    inc a
    jp Jump_000_3c33


    rst $08
    rrca
    rst $10
    jp Jump_000_09f2


    add d
    jp $f0f0


    db $fc
    inc a
    rrca
    dec b
    dec d
    ld [bc], a
    inc a
    call z, Call_000_3df8
    ld a, a
    ld e, c
    sub [hl]
    add l
    xor c
    ld l, h
    ld e, c
    sub h
    ld e, b
    ld d, [hl]
    inc de
    add e
    rlca
    inc sp
    ld a, $08
    ld h, c
    rrca
    call nz, Call_000_0004
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0403], sp
    inc bc
    inc b
    add hl, bc

jr_004_6e14:
    ld a, [bc]
    add hl, bc
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $10
    ld c, $0f
    add hl, bc
    dec bc
    add hl, bc
    ld de, $100e
    ld [de], a
    inc de
    inc bc
    inc b
    inc d
    dec d
    rlca
    ld b, $16
    ld [$0608], sp
    ld [$1708], sp
    jr jr_004_6e4f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    ld [bc], a
    ldh [rSVBK], a
    ld c, b
    jr z, jr_004_6e42

jr_004_6e42:
    ld [bc], a
    ld [bc], a
    add d
    ret nz

    ret nz

    add b
    ld d, b
    nop
    inc c
    add hl, de
    ld a, [bc]
    dec b
    add e

jr_004_6e4f:
    ld b, b
    ret nc

    add sp, -$7c
    ld a, [hl+]
    daa
    dec d
    adc b
    add $21
    pop af
    xor b
    and h
    ld [hl], d
    cpl
    ld e, $8b
    ld b, c
    ld h, e
    nop
    sub b
    ld d, h
    ld b, h
    ld c, $08
    add c
    ld b, h
    ld h, b
    sub b
    stop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_004_6e75

    rst $38

jr_004_6e75:
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
    jr jr_004_6e14

    call nz, Call_004_49a2
    inc bc
    add d
    add b
    ret nz

    ret nz

    jr nz, jr_004_6ed8

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
    jr jr_004_6eb1

    ld [bc], a
    add h
    ld a, $df
    ld l, a
    sub a

jr_004_6eb1:
    ret z

    jr nz, jr_004_6ec5

    ld [bc], a
    ccf
    sbc a
    rst $00
    db $e3
    ldh a, [$08]
    ld b, $05
    dec sp
    sbc [hl]
    rst $08
    add sp, $34
    ld sp, $0cf8

jr_004_6ec5:
    rlca
    ld [bc], a
    ld [bc], a
    ccf
    ret nz

    rst $08
    rst $30
    cp h
    ld h, c
    nop
    rst $38
    ld h, b
    ccf
    rst $18
    pop de
    adc d
    sub l
    ld d, d
    xor l

jr_004_6ed8:
    rla
    xor h
    ld d, [hl]
    sbc a
    sub c
    add h
    ld e, e
    db $ed
    ld [c], a
    rst $38
    inc b
    ld [bc], a
    add b
    nop
    ld [c], a
    cp c
    db $fc
    ld e, $7f
    nop
    add [hl]
    ld b, b
    ld h, c
    adc d
    ld c, e
    db $e4
    add hl, de
    ld l, d
    nop
    inc e
    ld c, h
    inc bc
    or c
    adc b
    inc e
    ld b, $80
    nop
    inc sp
    rra
    add hl, bc
    rst $30
    nop
    ld h, b
    adc [hl]
    rrca
    nop
    rra
    adc $03
    pop af
    nop
    ld a, h
    nop
    ccf
    nop
    ld e, $c7
    ld [hl], b
    add b
    dec h
    sub d
    dec l
    sbc b
    and h
    or [hl]
    ld b, l
    nop
    add c
    ld b, $28
    db $fc
    ccf
    ld e, $d1
    xor c
    inc de
    rst $00
    ret z

    nop
    ldh a, [rP1]
    inc c

Jump_004_6f2b:
    dec de
    rst $08
    pop hl
    di
    ld hl, sp+$0c
    add $00
    ld e, $4e
    pop hl
    inc bc
    ld sp, $fae3
    ld c, $01
    sub e
    add b
    ld e, $6f
    rst $30
    inc c
    ld hl, sp+$30
    nop
    ld [$c16a], sp
    db $f4
    ld d, b
    xor $04
    ld a, [hl]
    ret nz

    db $e4
    ld d, [hl]
    ld l, e
    add hl, hl
    or a
    inc hl
    ld a, l
    ret z

    db $fd
    dec sp
    ccf
    add b
    ld [hl], d
    ld [hl], c
    inc bc
    ld a, h
    and c
    rst $10
    ld a, a
    adc b
    ld [hl+], a
    add b
    ld b, h
    ld a, c
    pop bc
    ld a, $65
    ld a, a
    sub c
    ld e, [hl]
    ld [c], a
    ld d, h
    jp hl


    xor c
    jp c, $77ca

    ld sp, $ecdf
    ld [hl], a
    jp c, $e22d

    sub c
    add hl, sp
    sub h
    add h
    ld [hl+], a
    inc d
    rlca
    jp c, $13b1

    xor h
    ld h, [hl]
    add hl, de
    db $e3
    dec b
    cp c
    ldh [$cf], a
    ld [de], a
    dec bc
    ld h, c
    ld h, h
    rst $38
    ld [$414a], sp
    ld a, h
    and [hl]
    rla
    rst $08
    ld [hl], c
    ld l, h
    rst $38
    db $10
    ret z

    di
    ret nz

    pop bc
    ld d, a
    ld c, $83
    db $fc
    db $db
    scf
    dec b
    inc sp
    ld a, b
    ld d, l
    daa
    ret


    ld d, b
    ld l, h
    ld [de], a
    dec c
    jp nz, $dca0

    dec hl
    ccf
    call $fcd3
    inc a
    add hl, bc
    dec c
    or b
    sbc b
    reti


    dec a
    call $fce3
    ret z

    daa
    adc [hl]
    inc de
    jr c, @+$73

    ccf
    rst $00
    inc bc
    db $fc
    ld a, a
    ld e, c
    rst $08
    di
    push bc
    ld l, e
    inc bc
    sbc c
    ld hl, $3fc4
    inc c
    ld b, b
    or b
    ld b, $39
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    ld [bc], a
    dec b
    inc b
    ld b, $07
    ld [$0707], sp
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    rlca
    dec de
    rlca
    dec de
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    db $10
    inc h

Jump_004_700e:
    rlca
    ld [$c284], sp
    ld b, b
    db $10
    ld a, b
    ld d, h
    ld a, [hl+]
    add hl, de
    ld c, $87
    call nz, Call_004_5162
    jr c, jr_004_705f

    nop
    ld a, [bc]
    ld b, $8a
    add b
    nop
    ldh [$80], a
    inc h
    ld a, d
    ccf
    ld e, $00
    nop
    ld b, b
    ld d, d
    add hl, sp
    inc l
    sub b
    dec b
    dec b
    sub h
    ret nz

    ld b, b
    ld a, d
    ld a, [$fd7d]
    ld a, [hl]
    cp $7f
    rst $18
    rrca
    xor a
    daa
    ld [hl], a
    rlca
    ld d, a
    daa
    ld [hl], a
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    xor b
    xor b
    call nc, Call_000_0fd4
    xor a
    ld e, a
    rst $18
    ld c, a
    rst $38
    ld d, a
    rst $30

jr_004_705f:
    ld c, e
    rst $18
    ld bc, $20ad
    ld [hl], d
    ld d, d
    rst $18
    xor d
    xor d
    push hl
    push hl
    ld a, [$fdfa]
    db $fd
    sbc $de
    adc l
    xor l
    jr nz, jr_004_70e7

    ld d, d
    rst $18
    ld a, d
    ld a, [$fd7d]
    ld e, [hl]
    sbc $0f
    xor a
    daa
    ld [hl], a
    rrca
    xor a
    ld e, a
    rst $18
    ld a, a
    rst $38
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    xor b
    xor b
    call nc, $7fd4
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld d, a
    rst $10
    ld a, [bc]
    xor [hl]
    jr nz, jr_004_7118

    jr nz, jr_004_7116

    ld d, b
    rst $18
    xor d
    xor d
    push hl
    push hl
    ld a, [$5dfa]
    ld e, l
    ld c, $ae
    and a
    rst $30
    and b
    ldh a, [$50]
    rst $18
    ld a, d
    ld a, [$fd7d]
    ld a, [hl]
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    xor b
    xor b
    call nc, $7fd4
    rst $38
    ld a, [hl]
    cp $4c
    db $dd
    ld bc, $21a3
    ld [hl], e
    ld hl, $5073
    reti


    ld d, b

Call_004_70e6:
    rst $18

jr_004_70e7:
    ld a, [hl+]
    ld a, [hl+]
    dec h
    and l
    sbc d
    jp c, Jump_004_6d4d

    ld h, $76
    and a
    rst $30
    ld d, b
    ret c

    ld d, b
    rst $18
    ld a, d
    ld a, [$fd7d]
    ld a, [hl]
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $80
    add b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    jr z, @+$2a

    inc d

jr_004_7116:
    sub h
    ld a, h

jr_004_7118:
    db $fd
    ld a, c
    ei
    ld c, c
    ei
    ld d, c
    db $d3
    ld [$20ad], sp
    ld [hl], h
    jr nz, @+$74

    ld d, d
    rst $18
    adc d
    jp z, Jump_004_6545

    ld c, d
    ld l, d
    ld c, l
    ld l, l
    adc [hl]
    xor $25
    push af
    jr nz, jr_004_71a7

    ld d, d
    rst $18
    ld a, d
    ld a, [$fd7d]
    ld a, [hl]
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $7c
    db $fd
    ld a, h
    db $fd
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_004_7171

    db $10
    sub b
    adc b
    ret z

    sub h
    call nc, $db59
    add hl, bc
    xor e
    inc h
    ld [hl], l
    ld d, b
    reti


    ld d, b
    ret c

    ld d, b
    ld a, [$7722]
    ld d, l
    db $dd
    ld c, d
    ld l, d
    ld b, h
    ld h, h
    sbc d
    jp c, $dc9c

    inc e
    sbc h

jr_004_7171:
    ld [$222a], sp
    ld [hl], a
    ld d, [hl]
    sbc $7a
    ld a, [$fd7d]
    ld a, [hl]
    cp $7f
    rst $38
    ld a, [hl]
    cp $7c
    db $fd
    ld e, h
    db $dd
    inc c
    xor l
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @-$5e

    sub b
    ret nc

    ld [$9448], sp
    call nc, Call_004_7626
    ld d, e
    db $db
    ld d, e
    db $db
    ld d, c
    reti


    jr nz, jr_004_7213

    ld [bc], a
    and a
    ld [bc], a
    daa
    dec h
    db $fd

jr_004_71a7:
    ld a, [hl+]
    xor d
    ld h, h
    ld h, h
    ld a, [$fdfa]
    db $fd
    ld hl, sp-$06
    ld d, d
    ld d, a
    ld [bc], a
    daa
    dec h
    db $fd
    ld a, d
    ld a, [$fd7d]
    ld a, [hl]
    cp $7e
    cp $5c
    db $dd
    ld c, $ae
    daa
    ld [hl], a
    daa
    ld [hl], a
    add b
    add b
    ld b, b
    ld b, b
    nop
    nop
    nop
    add b
    add b
    ret nz

    db $10
    sub b
    jr z, jr_004_71fd

    call nc, Call_004_53d4
    db $db
    ld d, e
    db $db
    daa
    ld [hl], a
    daa
    ld [hl], a
    add hl, bc
    xor l
    ld b, b
    ld e, d
    ld [bc], a
    rlca
    dec b
    db $fd
    xor d
    xor d
    push hl
    push hl
    ld a, [$fdfa]

Call_004_71ee:
    db $fd
    db $fc
    db $fc
    ld hl, sp-$06
    ld [bc], a
    rlca
    dec b
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_71fd:
    nop
    nop
    nop
    jr nz, jr_004_7222

    ld [hl], b
    nop
    ld d, b
    jr nz, jr_004_7277

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_7213:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_721a

jr_004_721a:
    nop
    add b
    add b
    ld b, b
    ld b, b
    sub l
    sub l
    adc b

jr_004_7222:
    xor b
    jr nz, jr_004_7297

    ld d, d
    rst $18
    nop
    nop
    nop
    nop
    db $10
    stop
    jr nz, jr_004_7244

    inc d
    add b
    xor b
    jr nz, jr_004_72a7

    ld d, d
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_7260

    ld [hl], b
    nop
    jr nz, jr_004_7244

jr_004_7244:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ld b, b
    add h

jr_004_7260:
    and h
    jr nz, jr_004_72d4

    jr nz, jr_004_72d6

    ld d, b
    rst $18
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    inc b
    and h
    and b
    ldh a, [$a0]
    ldh a, [$50]
    rst $18

jr_004_7277:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_7297:
    nop
    nop
    nop
    nop
    add b
    add c
    ld bc, $2123
    ld [hl], e
    ld hl, $5073
    reti


    ld d, b
    rst $18

jr_004_72a7:
    nop
    nop
    nop
    add b
    sub b
    ret nc

    ld b, b
    ld h, b
    inc h
    ld [hl], h
    and b
    ldh a, [$50]
    ret c

    ld d, b
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_72d4:
    nop
    nop

jr_004_72d6:
    add b
    nop
    ld bc, $0301
    add c
    add e
    ld b, c
    ld b, e
    add h
    and l
    jr nz, jr_004_7353

jr_004_72e3:
    jr nz, jr_004_7357

    ld d, d
    rst $18
    add b
    ret nz

    ld b, b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    add h
    db $e4
    jr nz, jr_004_72e3

    jr nz, jr_004_7367

    ld d, d
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
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
    ret nz

    add b
    ret nz

    ld bc, $0103
    inc hl
    jr nz, jr_004_738e

    ld d, b
    reti


    ld d, b
    ret c

    ld d, b
    ld a, [$7722]
    ld d, l
    db $dd
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    sub b
    ret nc

    add b
    ret nz

    inc d
    sub h
    nop
    ld a, [hl+]
    ld [hl+], a
    ld [hl], a
    ld d, [hl]
    sbc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

jr_004_7353:
    nop
    ld b, b
    add b
    ret nz

jr_004_7357:
    jr nz, jr_004_73c9

    ld d, b
    ret c

    ld d, b
    ret c

    ld d, b
    ret c

    jr nz, jr_004_73d3

    add d
    and a
    ld [bc], a
    daa
    dec h
    db $fd

jr_004_7367:
    nop
    add b
    nop
    nop
    db $10
    stop
    jr nz, jr_004_7380

    ld [hl-], a
    ld [bc], a
    rla
    ld [bc], a
    daa
    dec h
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_7380:
    ld bc, $2000
    jr nz, jr_004_73f5

    jr nz, jr_004_73f7

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_738e:
    add b
    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    ld d, b
    ret c

    ld d, b
    ret c

    jr nz, jr_004_740d

    jr nz, jr_004_740f

    add l
    and l
    ld c, b
    ld c, d
    ld [bc], a
    rlca
    dec b
    db $fd
    nop
    nop
    nop
    nop
    db $10
    stop
    jr nz, jr_004_73c4

    inc [hl]
    and b
    cp d
    ld [bc], a
    rlca
    dec b
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec c
    db $dd
    dec c
    xor l
    dec h
    ld [hl], l
    dec b

jr_004_73c4:
    ld d, l
    dec h
    ld [hl], l
    inc b
    dec b

jr_004_73c9:
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b

jr_004_73d3:
    inc b
    dec b
    inc b
    dec b
    dec c
    xor l
    dec c
    db $dd
    dec l
    db $fd
    dec l
    db $fd
    dec c
    db $dd
    dec c
    xor l
    jr nz, jr_004_7457

    ld d, d
    rst $18
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec h
    jr nz, jr_004_7467

jr_004_73f5:
    ld d, d
    rst $18

jr_004_73f7:
    dec l
    db $fd
    dec l
    db $fd
    dec c
    db $dd
    dec c
    xor l
    dec h
    ld [hl], l
    dec c
    xor l
    dec c
    db $dd
    dec l
    db $fd
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b

jr_004_740d:
    inc b
    dec b

jr_004_740f:
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec c
    db $dd
    inc c
    xor h
    inc h
    ld [hl], l
    jr nz, jr_004_7496

    ld d, b
    rst $18
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    and l
    and h
    push af
    and b
    ldh a, [$50]
    rst $18
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b

jr_004_7457:
    dec l
    db $fd
    inc l
    db $fc
    inc c
    db $dd
    add hl, bc
    xor e
    ld hl, $2173
    ld [hl], e
    ld d, b
    reti


    ld d, b
    rst $18

jr_004_7467:
    inc b
    dec b
    inc b
    add l
    add h
    push bc
    ld b, h
    ld h, l
    inc h
    ld [hl], l
    and h
    push af
    ld d, b
    ret c

    ld d, b
    rst $18
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    inc l
    db $fc
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b

jr_004_7496:
    add l
    inc l
    db $fd
    add hl, hl
    ei
    add hl, hl
    ei
    add hl, bc
    db $db
    inc c
    xor l
    inc h
    ld [hl], h
    jr nz, jr_004_7517

    ld d, d
    rst $18
    add h
    push bc
    ld b, h
    ld h, l
    ld b, h
    ld h, l
    ld b, h
    ld h, l
    add h
    push hl
    inc h
    push af
    jr nz, jr_004_7527

    ld d, d
    rst $18
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    inc l
    db $fc
    inc l
    db $fd
    inc l
    db $fd
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b

Call_004_74cf:
    inc b
    dec b
    inc b
    add l
    add h
    push bc
    add h
    push bc
    add hl, bc
    db $db
    add hl, bc
    xor e
    inc h
    ld [hl], l
    ld d, b
    reti


    ld d, b
    ret c

    ld d, b
    ld a, [$7722]
    ld d, l
    db $dd
    ld b, h
    ld h, l
    ld b, h
    ld h, h
    add h
    call nz, $c484
    inc b
    add l
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld d, [hl]
    sbc $2d
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    inc l
    db $fc
    inc l
    db $fd
    inc c
    db $dd
    inc c
    xor l
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    add l
    add h
    push bc
    inc b
    ld b, l
    add h
    push bc

jr_004_7517:
    inc h
    ld [hl], h
    ld d, c
    reti


    ld d, c
    reti


    ld d, c
    reti


    jr nz, jr_004_7593

    ld [bc], a
    and a
    ld [bc], a
    daa
    dec h
    db $fd

jr_004_7527:
    inc b
    add h
    inc b
    inc b
    inc b
    dec b
    inc b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    daa
    dec h
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    dec l
    db $fd
    inc l
    db $fc
    inc c
    db $dd
    inc c
    xor h
    dec h
    ld [hl], l
    dec h
    ld [hl], l
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    add l
    add h
    push bc
    inc b
    add l
    inc b
    dec b
    inc b
    dec b
    ld d, c
    reti


    ld d, c
    reti


    dec h
    ld [hl], l
    dec h
    ld [hl], l
    dec c
    xor l
    ld [$025a], sp
    rlca
    dec b
    db $fd
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    db $fd
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    call c, Call_004_7f54
    add b
    push de
    db $ed
    ei
    rst $20
    cpl

jr_004_7586:
    jr nc, jr_004_7586

    nop
    ld bc, $01fe
    nop
    rrca
    ld a, [bc]
    cp [hl]
    and c
    ei
    rlca

jr_004_7593:
    or a
    cpl
    rst $38
    ld e, a
    ld [hl], $3b
    cp l
    cp e
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    dec de
    sub $ef
    rst $28
    ldh a, [rIE]
    sbc a
    ld l, a

Call_004_75aa:
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rra
    rst $38
    sbc a
    cp a
    ld a, a
    ld a, a
    rst $38
    inc bc
    inc bc
    ld bc, $0b01
    dec bc
    ld d, a
    ld d, a

Call_004_75bf:
    ld hl, sp-$08
    ld d, b
    ret nc

    sbc b
    ld hl, sp-$1b
    push af
    and b
    and b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    and b
    and b
    ld d, b
    ld d, e
    ld h, e
    ld l, a
    ld l, a
    ld a, a

Call_004_75d7:
    di
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

Call_004_75f8:
    nop
    add b
    ld a, a
    add b
    nop
    call c, Call_004_7f54
    add b
    push de
    db $ed
    ei
    rst $20
    rst $28
    ldh a, [rIE]
    nop
    nop
    rst $38
    nop
    nop
    ld c, $0a
    cp a
    and b
    ei
    rlca
    or a
    cpl
    db $ec
    ld e, h
    or $fb
    db $fd
    ei
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    db $db
    or $ef
    rst $38

Call_004_7626:
    ldh a, [$fc]
    sbc h
    ld l, a
    ld e, a
    rst $30
    rst $28
    db $fd
    rst $20
    rst $38
    ld de, $86ff
    db $ed
    ld e, [hl]
    rst $38
    pop bc
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    call c, Call_004_7f54
    add b
    push de
    db $ed
    ei
    rst $20
    cpl

jr_004_7646:
    jr nc, jr_004_7646

    nop
    ld bc, $01fe
    nop
    rrca
    ld a, [bc]
    cp [hl]
    and b
    ld hl, sp+$07
    or a
    cpl
    rst $38
    ld e, a
    ld [hl], $3b
    cp l
    cp e
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    dec de
    sub $ef
    rst $28
    ldh a, [rIE]
    sbc a
    ld l, a
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rra
    rst $38
    sbc a
    cp a
    ld a, a
    ld a, a
    rst $38
    inc bc
    inc bc
    ld bc, $0b01
    dec bc

jr_004_767d:
    ld d, a
    ld d, a
    ld hl, sp-$08
    ld d, b
    ld d, b
    jr c, jr_004_767d

    push bc
    db $fd
    and b
    and b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    and b
    and b
    ld d, b
    ld d, b
    ld l, b
    ld l, e
    ld h, e
    ld a, a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    add b
    ld a, a
    add b
    nop
    call c, Call_004_7f54
    nop
    dec d
    db $ed
    ei
    rst $20
    rst $28
    ldh a, [rIE]
    nop
    nop
    rst $38
    nop
    nop
    ld c, $0a
    cp a
    and b
    ei
    rlca
    or a
    cpl
    db $ec
    ld e, h
    or $fb
    db $fd
    ei
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    db $db
    or $ef
    rst $38
    ldh a, [$fc]
    sbc h
    ld l, a
    ld e, a
    rst $30
    rst $28
    db $fd
    rst $20
    rst $38
    ld de, $86ff
    db $ed
    ld e, [hl]
    rst $38

jr_004_76f6:
    pop bc
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    call c, Call_004_7f54
    add b
    push de
    db $ed
    ei
    rst $20
    cpl

jr_004_7706:
    jr nc, jr_004_7706

    nop
    ld bc, $01fe
    nop
    rrca
    ld a, [bc]
    cp [hl]
    and b
    ld hl, sp+$04
    or b
    jr z, jr_004_76f6

    ld e, a
    ld [hl], $3b
    cp l
    cp e
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    dec de
    sub $ef
    rst $28
    ldh a, [rIE]
    sbc a
    ld l, a
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rra
    rst $38
    sbc a
    cp a
    ld a, a
    ld a, a
    rst $38
    inc bc
    inc bc
    ld bc, $0b01
    dec bc
    ld d, a
    ld d, a
    ld hl, sp-$08
    ld d, b
    ld d, b
    jr c, @+$3b

    ld bc, $a0ff
    and b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    and b
    and b
    ld d, b
    ld d, b
    ld l, b
    add sp, -$80
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    add b
    ld a, a
    add b
    nop
    call c, Call_004_7f54
    nop
    dec d
    dec l
    dec de
    rlca
    rrca
    ldh a, [rIE]
    nop
    nop
    rst $38
    nop
    nop
    ld c, $0a
    cp a
    and b
    ei
    rlca
    or a
    cpl
    db $ec
    ld e, h
    or $fb
    db $fd
    ei
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    db $db
    or $ef
    rst $38
    ldh a, [$fc]
    sbc h
    ld l, a
    ld e, a
    rst $30
    rst $28
    db $fd
    rst $20
    rst $38
    ld de, $86ff
    db $ed
    ld e, [hl]
    rst $38

jr_004_77b6:
    pop bc
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    call c, Call_004_7f54
    add b
    push de
    db $ed
    ei
    rst $20
    cpl

jr_004_77c6:
    jr nc, jr_004_77c6

    nop
    ld bc, $01fe
    nop
    rrca
    ld a, [bc]
    cp [hl]
    and b
    ld hl, sp+$04
    or b
    jr z, jr_004_77b6

    ld b, b
    ld [hl], $3b
    cp l
    cp e
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    dec de
    sub $ef
    rst $28
    ldh a, [$e0]
    sbc a
    ld l, a
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rra
    rst $38
    sbc a
    cp a
    ld a, a
    ld a, a
    rst $38
    inc bc
    inc bc
    ld bc, $0b01
    dec bc
    ld d, a
    ld d, a
    ld hl, sp-$08
    ld d, b
    ld d, e
    inc sp
    ccf
    rrca
    rst $38
    and b
    and b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    and b
    and b
    db $10
    ret nc

    ret z

    ld hl, sp-$10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    add b
    ld a, a
    add b
    nop
    call c, Call_004_7f54
    nop
    dec d
    dec l
    dec de
    rlca
    rrca
    db $10
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    ld c, $0a
    cp a
    and b
    ei
    rlca
    or a
    cpl
    db $ec
    ld e, h
    ld b, $fb
    db $fd
    ei
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    db $db
    or $ef
    rst $38
    ldh a, [$fc]
    sbc h
    ld l, a
    ld e, a
    rst $30
    rst $28
    db $fd
    rst $20
    rst $38
    ld de, $86ff
    db $ed
    ld e, [hl]
    rst $38

jr_004_7876:
    pop bc
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    call c, Call_004_7f54
    add b
    push de
    db $ed
    ei
    rst $20
    cpl

jr_004_7886:
    jr nc, jr_004_7886

    nop
    ld bc, $01fe
    nop
    rrca
    ld a, [bc]
    cp [hl]
    and b
    ld hl, sp+$04
    or b
    jr z, jr_004_7876

    ld b, b
    ld [hl], $3b
    cp l
    cp e
    push af
    ei
    xor $f5
    rst $18
    db $e4
    db $eb
    dec de
    sub $ef
    rst $28
    ldh a, [$e0]
    add b
    ld h, b
    ld d, e
    di
    rst $20
    rst $30
    rst $28
    rst $28
    rra
    rst $38
    sbc a
    cp a
    ld a, a
    ld a, a
    rst $38
    inc bc
    inc bc
    ld bc, $0b01
    dec bc
    ld d, a
    ld d, a
    ld hl, sp-$05
    ld d, e
    ld e, a
    cpl
    ccf
    rra
    ld a, a
    and b
    and b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    jr nz, @-$5e

    sub b
    ldh a, [$e8]
    ld hl, sp-$10
    db $fc
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_78f7:
    ld a, a
    nop
    add b
    ld a, a
    add b
    nop
    call c, Call_004_7f54
    nop
    dec d
    dec l
    dec de
    rlca
    rrca
    db $10
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    ld c, $0a
    cp a
    and b
    ei
    rlca

Jump_004_7913:
    or a
    cpl
    db $ec
    ld e, h
    ld b, $0b
    dec b
    add e
    add l
    db $eb
    xor $f5
    rst $18
    db $e4
    db $eb
    db $db
    or $ef
    rst $38
    ldh a, [$fc]
    sbc h
    ld l, a
    ld e, a
    rst $30
    rst $28
    db $fd
    rst $20
    rst $38
    ld de, $86ff
    db $ed
    ld e, [hl]
    rst $38
    pop bc
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_004_793e

jr_004_793e:
    ld [$0304], sp
    ld bc, $ef9e
    ld [hl], a
    ei
    db $fd
    nop
    add b
    ld h, b
    jr nc, jr_004_796b

    rst $08
    add sp, $74
    ld [hl+], a
    dec d
    inc c
    add a
    ld b, h
    ld [hl+], a
    ld c, a
    rst $00
    db $e4
    add hl, sp
    or $ff
    ld a, h
    cp a
    pop bc
    rrca
    ldh a, [$03]
    db $fc
    cp $ff
    rra
    cp a
    ret nz

    ld [hl-], a
    ld d, a
    db $fc
    add d

jr_004_796b:
    ld b, l
    inc h
    sub e
    ld c, d
    dec h
    ld b, b
    add hl, sp
    ld l, d
    ld e, h
    rst $38
    scf
    sbc e
    and l
    adc a
    jp hl


    and e
    ei
    ld l, b
    ld a, [hl]
    ld a, [$aa0f]
    set 5, b
    sub a
    ret nz

    ld l, l
    db $f4
    ccf
    ld a, a
    dec e
    ld e, a
    add [hl]
    rla
    pop bc
    and l
    pop af
    ld c, l
    and l
    and e
    ld c, a
    push af
    inc [hl]
    ld sp, $a6fd
    ccf
    ld a, c
    add a
    rst $10
    dec h
    ld a, [$72e5]
    sub d
    sbc e
    ld a, l
    ld [hl-], a
    rst $18
    ld b, h
    sbc d
    add e
    pop hl
    ld b, d
    ld hl, sp+$58
    jp c, Jump_000_0f5f

    sub b
    ei
    ld b, h
    ld a, [hl]
    add d
    ccf
    xor c
    ld c, e
    xor $b0
    ei
    ret c

    ld a, $94
    ccf
    and e
    rrca
    rst $20
    dec de
    inc sp
    add l
    pop af
    ld b, l
    and e
    jp nc, $af5e

    set 7, d
    inc h
    cp $a9
    cpl
    xor [hl]
    pop af
    ld e, b
    jp z, $b0e2

    cp [hl]
    adc [hl]
    ccf
    or d
    ld e, a
    dec c
    sbc h
    and [hl]
    ld e, e
    ld h, $e5
    ld a, [hl]
    rra
    rst $18
    rst $00
    sub a
    call nz, Call_004_70e6
    ld a, a
    sbc l
    rst $08
    rst $20
    db $f4
    ld a, [de]
    ld a, [de]
    dec l
    push af
    add d
    and l
    ld d, e
    add hl, hl
    sub $6a
    sub l
    ld d, b
    cp $c6
    rra
    sub $2b
    ld d, l
    ld [$7ee9], a
    pop bc
    ld h, d
    ld a, l
    ld [de], a
    rst $18
    ld d, h
    db $db
    ld b, l
    xor d
    push de
    dec h
    jr nc, jr_004_7a29

    ld b, $23
    rla
    inc hl
    db $fc
    db $e3
    add hl, hl
    ld a, a
    add a
    pop hl
    ldh a, [$e0]
    inc bc
    add c
    pop bc
    db $10
    ld a, b
    ccf
    ret c

    ld l, a
    db $f4
    ld a, e
    db $fc
    ld [hl], b

jr_004_7a29:
    rst $38
    inc sp
    cp a
    call c, $e730
    rst $38
    ld c, b
    ld e, $ff
    adc d
    add b
    rst $18
    add b
    ld l, c
    db $10
    ld bc, $d7bf
    ld a, a
    cp b
    rra
    db $ec
    ld a, [hl]
    ld d, e
    db $fc
    ld e, $f0

jr_004_7a45:
    inc c
    add hl, sp
    push hl
    and b
    nop
    ld h, b
    ld [hl-], a
    inc d
    inc e
    ld a, a
    and e
    sbc a
    rst $38
    scf
    dec de
    db $fc
    inc sp
    ld [hl], e
    ld b, b
    jr nz, jr_004_7a63

    ld a, [bc]
    ld c, b
    rlca
    inc sp
    db $fc
    rlca
    ld [hl], a
    ld d, c
    db $e3

jr_004_7a63:
    ld h, b
    rst $38
    dec bc
    rrca
    ldh a, [$5c]
    rst $38
    ld [hl+], a
    ld c, a
    di
    jr @+$01

    daa
    ld b, $33
    ld [hl-], a
    nop
    nop
    ld de, $e4e0
    rst $38
    ld c, l
    ld d, b
    ldh [$f0], a
    rst $38
    rra
    adc b
    inc d
    sbc c
    db $f4
    jr nc, jr_004_7a45

    inc bc
    inc l
    nop
    ld [hl], $e2
    add b
    nop
    db $d3
    nop
    ld [hl+], a
    ld d, h
    sub l
    rla
    ld b, d
    rst $08
    ld h, e
    db $fc
    db $fc
    ld hl, $03c8
    inc a
    ret nz

    ld a, d
    adc a
    di
    nop
    rrca
    nop
    rlca
    db $f4
    sbc d
    ccf
    ld a, l

jr_004_7aa7:
    rra
    ld b, b
    cp $3d
    ld c, c
    adc b
    rlca
    ld [hl-], a
    ld b, [hl]
    sub b
    inc h
    sbc c
    ld b, $4a

jr_004_7ab5:
    nop
    rrca
    ld b, b
    db $10
    cp $00
    rrca
    ld [hl], b
    jr nz, jr_004_7ab5

    ld [bc], a
    ld h, l
    ld b, e
    ret c

    dec c
    sub l
    push hl
    ld a, b
    ret nz

    rst $30
    dec e
    jp nc, $8093

    nop
    inc a
    ld hl, $1090
    rst $18
    jr z, jr_004_7aa7

    ld e, c
    ld e, d
    ld e, b
    sub l
    ld b, b
    sub e
    db $fc
    inc b
    sub [hl]
    ld b, b
    db $d3
    ldh a, [rNR10]
    scf
    add e
    inc bc
    ld a, h
    or c
    scf
    jp $fc13


Call_004_7aeb:
    db $10
    scf
    rlc e
    db $fc
    sub b
    scf
    jp z, $b609

    ld d, [hl]
    sbc d
    and [hl]
    ret


    xor b
    nop
    sub l
    daa
    sbc c
    db $f4
    rst $18
    ld [$f90d], sp
    jp z, $9e7a

    jr z, @-$6e

    add d
    add b
    and b
    ld h, $69
    and l
    dec h
    and d
    xor b
    adc c
    sbc $97
    sub e
    ld [$fd71], sp
    jr z, jr_004_7b5f

    ld d, c
    db $e3
    call nz, Call_000_39ff
    adc a
    di
    inc [hl]
    rst $38
    ld h, $8f
    db $e3
    db $e4
    ld hl, sp+$23
    adc a
    ret nz

    sbc h
    db $e3
    inc sp
    call z, Call_004_4072
    add b
    jr c, jr_004_7b40

    ld bc, $1ff2
    rra
    bit 2, e
    ldh a, [$3a]
    ld a, $06
    di
    xor h

jr_004_7b40:
    ld c, a
    ld sp, $03cd
    nop
    ld h, b
    db $10
    rlca
    ldh [$f9], a
    daa

jr_004_7b4b:
    ld c, e
    jp nc, $b534

    inc sp
    ld c, d
    jp nc, $f8b3

    ei
    ld b, a
    adc a
    add b
    jr c, jr_004_7b4b

    rlca
    ld c, $31
    ldh [$c7], a

jr_004_7b5f:
    inc e
    ld c, b
    db $e3
    call nz, Call_000_340e
    ld b, d
    db $eb
    jr nc, @+$01

    or e
    adc a
    db $10
    ld a, h
    ldh [$b4], a
    rst $00
    ld [bc], a
    inc a
    ldh [rTAC], a
    call z, $c0f0
    sub e
    dec de
    inc bc
    inc hl
    inc [hl]
    ld [c], a
    rlca
    ld c, b
    ld h, c
    db $e4
    inc b
    ld a, $ed
    inc de
    call nz, Call_000_200f
    rst $00
    ld a, [c]
    nop
    ld a, a
    ld a, b
    db $ec
    pop af
    ldh [$87], a
    jr nc, @+$45

    ld [c], a
    inc c
    ld a, h
    inc bc
    rst $08
    db $10
    ld l, h
    rst $20
    add hl, de
    ret


    db $e3
    jr c, jr_004_7bdc

    rlca
    rst $08
    or b
    db $fc
    rst $30
    inc h
    ld b, $0a
    call nz, $2ffc
    ld [de], a
    ld [hl], b
    ld e, h
    xor $0f
    adc h
    ret nz

    db $fc
    db $db
    rlca
    rst $08
    ld [hl], c
    ld b, c
    rst $08
    ld b, h
    set 5, e
    db $10
    ld a, $3e
    ld b, b
    pop hl
    or h
    sub d
    inc d
    jp z, $d7ca

    rla
    ld c, $cc
    ld d, e
    add h
    ld e, $3e
    adc $f3
    db $e4
    rst $28
    ld b, $0e
    ld a, [$ca25]
    rrca
    call $0cf1
    cp a

jr_004_7bdc:
    cp l
    rst $08
    or e
    cp b
    ei
    dec sp
    ld l, l
    dec de
    sub d
    ret z

    ld c, e
    ld [de], a
    ld h, e
    db $ec
    ld a, a
    ld c, h
    inc l
    ld [hl], a
    daa
    ld b, c
    xor b
    rlca
    sub e

jr_004_7bf3:
    call z, $0ebc
    dec c
    ldh a, [rSVBK]
    rst $28
    ld e, $4f
    ld h, b
    db $fc
    ei
    nop
    rst $08
    ret nc

    inc b
    cp $d5
    call z, $fe00
    ld [c], a
    rlca
    adc [hl]
    dec de
    cp $fd
    inc a
    ld [$60f3], sp
    rst $20
    ld a, [hl-]
    rlca
    ld [hl], e
    ldh a, [$b3]
    rrca
    dec c
    cp h
    call nz, Call_000_3d7a
    push af
    dec a
    ld d, a
    ld d, a
    jp nz, $d196

    ldh [$8f], a
    ld c, $0c
    ld [hl], b
    ld a, h
    db $e3
    inc hl

jr_004_7c2d:
    rst $00
    ld [de], a
    inc a
    ld [hl], b
    ld [hl+], a
    rst $00
    ld c, e
    dec d
    ld sp, $dc49
    sub h

jr_004_7c39:
    sub $f7
    ld [hl-], a
    ld b, e
    ld h, c
    jr nc, jr_004_7bf3

    ld de, $81cb
    add h
    sbc [hl]
    and d
    ld [hl], a
    ld d, d
    inc a
    ldh a, [$30]

jr_004_7c4b:
    ld l, h
    or b
    rst $38
    ld [hl], d
    inc hl
    rst $08
    add b
    rra
    ld [hl], a
    ret nz

    ld b, b
    ld [hl], e
    ldh [$f3], a
    inc bc
    add hl, bc
    ldh a, [$7c]
    ld [hl], c
    rrca
    adc $43
    inc e
    di
    jr c, jr_004_7c2d

    sub d
    inc b
    rst $00
    jr nc, jr_004_7c39

    db $e4
    ld a, b
    cp $38
    ld d, c
    ld c, [hl]
    dec b
    ld a, [hl+]
    ld [hl], l
    sbc l
    and d
    call z, $16ff
    ld b, a
    ld a, [c]
    or h
    ccf
    rla
    rla
    ld h, e
    ld e, h
    ld a, [c]
    jr c, jr_004_7c4b

    or d
    inc c
    add $30
    cp d
    and a
    add h
    add h
    ld bc, $6408
    ld l, $5d
    cp l
    add b
    inc bc
    nop

jr_004_7c94:
    ld b, b
    ccf
    add a
    db $e4
    sbc h
    dec b
    ld bc, $7000
    jr jr_004_7c94

    dec a
    adc a
    sub e
    ld hl, sp-$71
    inc hl
    adc l
    di
    ld a, e
    xor c
    jr nz, jr_004_7cfa

    db $e4
    jr nz, jr_004_7cb5

    ld bc, $43cf
    call c, Call_004_75f8
    ld c, b

jr_004_7cb5:
    di
    ld a, h
    rst $18
    jr nc, jr_004_7d16

    jp $a6ee


    ccf
    add b
    sbc l
    ld h, b
    cp $66
    call nc, Call_004_5f9d
    ld d, a
    ld a, [de]
    ld c, $8f
    rst $10
    push af
    ld a, [de]
    ld c, [hl]
    sub c
    sub h
    push hl
    add hl, bc
    ld c, [hl]
    ld d, b
    inc d
    push hl
    dec d
    rrca
    ld b, c
    ret nz

    ld [hl], c
    jr c, jr_004_7ceb

    inc de
    nop
    pop bc
    ld [hl+], a
    ld [$6092], sp
    sbc c
    inc h
    db $10
    inc b
    adc d
    ld h, c
    ld [hl-], a

jr_004_7ceb:
    adc b
    ld b, h
    sbc h
    sbc [hl]
    ld d, b
    ld [hl], e
    set 4, h
    ld e, b
    db $ec
    ld b, $3b
    ld [$68ce], sp

jr_004_7cfa:
    add h
    ld b, c
    add b
    pop bc
    jr nc, jr_004_7d18

    ld b, [hl]
    inc bc
    dec d
    add d
    add $06
    ld e, b
    inc l
    sub d
    add hl, bc
    ld sp, $33f0
    sbc b
    ld e, h
    xor $3e
    cp a
    ld c, e
    ld c, a
    and b
    and e

jr_004_7d16:
    ret nc

    ld [de], a

jr_004_7d18:
    jp hl


    dec [hl]
    cp d
    adc $6f
    jr c, jr_004_7d4b

    inc c
    jr nc, jr_004_7d3b

    jr c, jr_004_7d40

    ld e, h
    ld c, $18
    and b
    jr nz, @+$15

    inc [hl]
    dec sp
    dec a
    adc d
    rst $08
    ld h, d
    inc hl
    sub d
    add l
    ld b, d
    adc b
    inc d
    sbc $67
    rla
    adc h
    ld h, b

jr_004_7d3b:
    ld b, b
    ld hl, $53a6
    inc hl

jr_004_7d40:
    inc de
    ld b, h
    ld [bc], a
    ld b, $a4
    ei
    ld a, a
    cp [hl]
    rra
    ret nz

    or a

jr_004_7d4b:
    ld hl, sp+$1d
    cp $70
    ld a, b
    ld [$031c], sp
    rst $00
    pop hl
    db $fd
    rst $38
    ld d, l
    xor e
    sub $6b
    ld [hl], l
    jp c, $f9f8

    db $fd
    ld h, e
    ld [bc], a
    ld bc, $c000
    ld h, a
    cp e
    db $dd
    cp $ff
    ld b, b
    jr nz, jr_004_7d85

    inc c
    rlca
    push af
    jp hl


    cp $04
    inc bc
    add b
    nop
    rst $28
    rla
    ei
    adc l
    cp $87
    ld e, a
    and e
    sbc a
    ldh [$e7], a
    ld hl, sp-$46
    ld sp, hl
    ld a, [hl]

jr_004_7d85:
    ret nz

    ccf
    call c, Call_004_4518
    ld a, [$fe3d]
    rra
    ld a, a
    adc h
    rra
    and $c7
    ei
    dec [hl]
    cp $1d
    ld a, a
    sbc [hl]
    ld l, h
    sbc b
    inc l
    ld b, e
    ld hl, sp-$08
    db $fc
    inc sp
    and a
    sbc c
    db $e3
    ret nc

    db $e3
    db $ec
    ld [hl], b
    rst $30
    ld c, a
    sbc e
    rst $18
    db $ed
    or $1a
    db $fd
    nop
    ld a, a

jr_004_7db2:
    dec bc
    cp e
    add a
    db $ec
    pop de
    db $e3
    ld l, h
    jr nc, jr_004_7db2

    cpl
    cp e
    or $0c
    dec e
    sbc c
    cp $02
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0403
    inc bc
    inc bc
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
    jr jr_004_7dfd

    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_004_7e10

    dec e
    dec e
    dec e

Call_004_7df2:
    dec e

Jump_004_7df3:
jr_004_7df3:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_004_7dfc

    add hl, hl

jr_004_7dfc:
    ld a, [hl+]

jr_004_7dfd:
    dec hl
    inc l
    dec l
    ld l, $2f
    ld bc, $3130
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc bc
    ld [hl], $37
    jr c, jr_004_7e47

    ld a, [hl-]
    dec sp

jr_004_7e10:
    inc a
    ld bc, $3e3d
    ld [bc], a
    ld a, $01
    ld bc, $403f
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    inc bc
    ld c, d
    ld c, e
    ld bc, $4d4c
    ld c, [hl]
    ld c, a
    dec l
    ld d, b
    ld d, c
    inc bc
    inc b
    ld b, b
    and b
    ld [hl], b
    ld c, b
    inc l
    ld [$0e08], sp
    dec c
    nop
    and c
    ld [hl], b
    ret z

    ld l, b
    ld [$1222], sp
    ld [bc], a
    nop
    pop bc
    and b
    jr jr_004_7df3

jr_004_7e47:
    ld e, b
    ld [bc], a
    dec d
    inc bc
    ld bc, $c0c0
    ld h, b
    and b
    ld c, h
    ld b, $04
    adc e

jr_004_7e54:
    push bc
    pop hl
    add b
    ld d, b
    call nz, Call_000_2556
    ld d, $8c
    add $e3
    or c
    ld d, b
    or h
    ld e, d
    ld b, c
    ld d, $85
    add c
    ld b, d
    ld [de], a
    ld l, b
    xor b

jr_004_7e6b:
    ld e, [hl]
    dec l
    jr z, @-$73

    res 4, d
    or d
    xor b
    ldh [rHDMA2], a
    ld h, c
    rla
    sbc e
    push bc
    ld h, [hl]
    ld d, e
    ld b, b
    inc c
    and $7b
    inc e
    adc l
    ld d, d
    and e

jr_004_7e83:
    sub h
    ld [$0870], sp
    dec bc
    dec c
    adc b
    ld c, [hl]
    ld h, h
    ld b, b
    add hl, de
    call c, $3e5a
    inc b
    and l
    rlc b
    inc [hl]
    jr z, jr_004_7e54

    ld c, d
    inc de
    dec bc
    sbc d
    push de
    ld l, d
    sub d
    ld [$5ea4], sp
    sub c
    dec hl
    inc bc
    ld d, h
    and $34
    add sp, -$7b
    ld [bc], a
    xor c
    ld d, h
    add hl, bc
    call nz, Call_004_56a9
    sub b
    and l
    jp nz, $0b41

    or b
    nop
    and [hl]
    or h
    adc e
    ld d, b
    inc c
    ld [bc], a
    add hl, de
    or e
    ld c, b
    jp hl


    pop hl
    dec bc
    ld [hl], b
    inc de
    inc bc
    jr jr_004_7e83

    bit 4, d
    or a
    jr z, jr_004_7e6b

    ld c, $9e
    ld c, $07
    push bc
    xor e
    or [hl]
    ld sp, hl
    or [hl]
    ld a, [bc]
    rst $00
    daa
    ld bc, $80d6
    rst $30
    ld l, c
    db $ec
    ld l, h
    ld c, $03
    ld bc, $61de
    ld d, e
    ld e, b
    ld [hl], l
    ld c, d
    rst $38
    adc b
    cp b
    ld d, l
    db $e4
    ld a, [de]
    sbc h
    push af
    jp c, $8ebd

    and c
    call nz, $b624
    ld c, d
    adc $72
    xor a
    ld b, d
    rst $08
    ld d, a
    ld a, [c]
    ld b, b
    sub b
    ld d, [hl]
    inc l
    inc bc
    inc c
    jp $8159


    ld h, b
    ret


    or l
    add $e7
    sbc a
    db $e4
    rst $20
    xor $80
    jr c, jr_004_7f1e

    nop
    ld a, e
    xor c
    jr nz, jr_004_7f6a

    db $e4
    jr nz, jr_004_7f25

jr_004_7f1e:
    ld bc, $43cf
    call c, Call_004_75f8
    ld c, b

jr_004_7f25:
    di
    ld a, h
    rst $18
    jr nc, jr_004_7f86

    jp $a6ee


    ccf
    add b
    sbc l
    ld h, b
    cp $66
    call nc, Call_004_5f9d
    ld d, a
    ld a, [de]
    ld c, $8f
    rst $10
    push af
    ld a, [de]
    ld c, [hl]
    sub c
    sub h
    push hl
    add hl, bc
    ld c, [hl]
    ld d, b
    inc d
    push hl
    dec d
    rrca
    ld b, c
    ret nz

    ld [hl], c
    jr c, jr_004_7f5b

    inc de
    nop
    pop bc
    ld [hl+], a
    ld [$6092], sp

Call_004_7f54:
    sbc c
    inc h
    db $10
    inc b
    adc d
    ld h, c
    ld [hl-], a

jr_004_7f5b:
    adc b
    ld b, h
    sbc h
    sbc [hl]
    ld d, b
    ld [hl], e
    set 4, h
    ld e, b
    db $ec
    ld b, $3b
    ld [$68ce], sp

jr_004_7f6a:
    add h
    ld b, c
    add b
    pop bc
    jr nc, jr_004_7f88

    ld b, [hl]
    inc bc
    dec d
    add d
    add $06
    ld e, b
    inc l
    sub d
    add hl, bc
    ld sp, $33f0
    sbc b
    ld e, h
    xor $3e
    cp a
    ld c, e
    ld c, a
    and b
    and e

jr_004_7f86:
    ret nc

    ld [de], a

jr_004_7f88:
    jp hl


    dec [hl]
    cp d
    adc $6f
    jr c, jr_004_7fbb

    inc c
    jr nc, jr_004_7fab

    jr c, jr_004_7fb0

    ld e, h
    ld c, $18
    and b
    jr nz, @+$15

    inc [hl]
    dec sp
    dec a
    adc d
    rst $08
    ld h, d
    inc hl
    sub d
    add l
    ld b, d
    adc b
    inc d
    sbc $67
    rla
    adc h
    ld h, b

jr_004_7fab:
    ld b, b
    ld hl, $53a6
    inc hl

jr_004_7fb0:
    inc de
    ld b, h
    ld [bc], a
    ld b, $a4
    ei
    ld a, a
    cp [hl]
    rra
    ret nz

    or a

jr_004_7fbb:
    ld hl, sp+$1d
    cp $70
    ld a, b
    ld [$031c], sp
    rst $00
    pop hl
    db $fd
    rst $38
    ld d, l
    xor e
    sub $6b
    ld [hl], l
    jp c, $f9f8

    db $fd
    ld h, e
    ld [bc], a
    ld bc, $c000
    ld h, a
    cp e
    db $dd
    cp $ff
    ld b, b
    jr nz, jr_004_7ff5

    inc c
    rlca
    push af
    jp hl


    cp $04
    inc bc
    add b
    nop
    rst $28
    rla
    ei
    adc l
    cp $87
    ld e, a
    and e
    sbc a
    ldh [$e7], a
    ld hl, sp-$46
    ld sp, hl
    ld a, [hl]

jr_004_7ff5:
    ret nz

    ccf
    call c, Call_004_4518
    ld a, [$fe3d]
    rra
    ld a, a
    adc h
