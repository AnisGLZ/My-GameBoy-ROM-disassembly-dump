; Disassembly of "Adventure Island (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld a, [bc]
    ld b, d
    rst $00
    ld b, d
    nop
    nop
    ld [hl], b
    nop
    inc e
    ld b, d
    reti


    ld b, d
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    db $eb
    ld b, d
    nop
    nop
    ld [hl], b
    nop
    inc de
    ld b, d
    ld sp, hl
    ld b, d
    nop
    nop
    ld [hl], b
    nop
    scf
    ld b, d
    dec bc
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    scf
    ld b, d
    dec e
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    ld a, a
    ld b, d
    dec e
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    db $76
    ld b, d
    ld hl, $0043
    nop
    ld [hl], b
    nop
    ld a, [bc]
    ld b, d
    inc l
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    inc de
    ld b, d
    ld a, $43
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    ld d, b
    ld b, e
    nop
    ld bc, $0570
    inc e
    ld b, d
    ld h, h
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    ld l, $42
    db $76
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    ld l, $42
    ld d, b
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    adc b
    ld b, d
    add h
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    db $76
    ld b, d
    ld hl, $0043
    nop
    ld [hl], b
    nop
    inc de
    ld b, d
    adc b
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    sbc d
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    ld a, [bc]
    ld b, d
    xor b
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    inc e
    ld b, d
    cp d
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    ld b, b
    ld b, d
    call z, $0143
    nop
    ld [hl], b
    nop
    ld b, b
    ld b, d
    cp d
    ld b, e
    ld bc, $7000
    nop
    sub c
    ld b, d
    sbc $43
    nop
    nop
    ld [hl], b
    nop
    sub c
    ld b, d
    sbc $43
    nop
    nop
    nop
    nop
    inc e
    ld b, d
    ld [c], a
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    inc de
    ld b, d
    db $f4
    ld b, e
    nop
    nop
    ld [hl], b
    nop
    ld l, $42
    ld b, $44
    nop
    nop
    ld [hl], b
    nop
    ld c, c
    ld b, d
    inc d
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    ld d, d
    ld b, d
    ld h, $44
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    ld b, $44
    nop
    nop
    ld [hl], b
    nop
    sbc d
    ld b, d
    jr c, jr_001_4138

    nop
    nop
    ld [hl], b
    nop
    sbc d
    ld b, d
    jr c, jr_001_4140

    nop
    nop
    nop
    nop
    ld a, [bc]
    ld b, d
    inc a
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    ld c, [hl]
    ld b, h
    nop
    ld bc, $0570
    inc e
    ld b, d
    ld h, d
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    ld [hl], h
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    add d
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    inc a
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    and e
    ld b, d
    sbc h
    ld b, h
    nop
    nop
    ld [hl], b
    nop

jr_001_4138:
    and e
    ld b, d
    sbc h
    ld b, h
    nop
    nop
    nop
    nop

jr_001_4140:
    inc e
    ld b, d
    and b
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    ld l, $42
    or d
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    adc $44
    nop
    ld bc, $0570
    ld a, [bc]
    ld b, d
    ld [c], a
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    ld e, e
    ld b, d
    ret nz

    ld b, h
    nop
    nop
    ld [hl], b
    nop
    ld e, e
    ld b, d
    db $f4
    ld b, h
    nop
    nop
    ld [hl], b
    dec b
    xor h
    ld b, d
    db $f4
    ld b, h
    nop
    nop
    ld [hl], b
    nop
    xor h
    ld b, d
    db $f4
    ld b, h
    nop
    nop
    nop
    nop
    inc e
    ld b, d
    ld hl, sp+$44
    nop
    nop
    ld [hl], b
    nop
    inc de
    ld b, d
    ld a, [bc]
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    ld a, [bc]
    ld b, d
    inc e
    ld b, l
    nop
    nop
    ld b, b
    nop
    dec h
    ld b, d
    ld l, $45
    nop
    nop
    ld [hl], b
    nop
    ld h, h
    ld b, d
    inc a
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    ld a, [bc]
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    or l
    ld b, d
    ld c, [hl]
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    or l
    ld b, d
    ld c, [hl]
    ld b, l
    nop
    nop
    nop
    nop
    ld c, c
    ld b, d
    ld d, d
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    ld l, $42
    ld h, h
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    ld h, h
    ld b, d
    db $76
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    dec h
    ld b, d
    adc b
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    ld l, l
    ld b, d
    and d
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    inc de
    ld b, d
    db $76
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    cp [hl]
    ld b, d
    or h
    ld b, l
    nop
    nop
    ld [hl], b
    nop
    cp [hl]
    ld b, d
    or h
    ld b, l
    nop
    nop
    nop
    nop
    inc b
    ld b, d
    rlca
    ld b, d
    sub e
    db $d3
    rst $00
    or c
    db $d3
    rst $00
    add b
    add c
    nop
    ld b, b
    ret c

    ld [hl], l
    inc b
    nop
    ld bc, $8f8e
    nop
    ld h, b
    ld b, h
    ld a, b
    jr jr_001_4229

    rrca
    adc d
    adc e
    nop
    ld e, b
    xor b
    db $76
    ld [bc], a
    ld a, [bc]
    dec bc
    adc b
    adc c
    nop
    ld c, b

jr_001_4229:
    sbc h
    ld [hl], a
    ld b, $08
    add hl, bc
    add h
    add l
    nop
    ld d, b
    ld b, h
    db $76
    inc bc
    inc b
    dec b
    and d
    and e
    nop
    ld l, b
    call z, Call_000_1778
    ld [de], a
    inc de
    add d
    add e
    nop
    ld b, b
    inc e
    db $76
    ld [$0302], sp
    and h
    and l
    nop
    ld [hl], b
    ld l, h
    ld [hl], a
    dec b
    inc d
    dec d
    and h
    and l
    nop
    ld [hl], b
    ld b, b
    ld [hl], a
    dec d
    inc d
    dec d
    and b
    and c
    nop
    ld h, b
    ld a, b
    ld a, b
    rlca
    db $10
    ld de, $8d8c
    nop
    ld e, b
    jr @+$79

    ld [bc], a
    inc c
    dec c
    add [hl]
    add a
    nop
    ld d, b
    add b
    db $76
    add hl, de
    ld b, $07
    adc h
    and c
    nop
    ld h, b
    cp h
    ld a, b
    ld d, $0c
    ld de, $a9a8
    nop
    ld l, b
    nop
    ld a, c
    ld c, $18
    add hl, de
    add h
    add l
    nop
    ld d, b
    ld a, b
    db $76
    ld c, $04
    dec b
    xor b
    xor c
    nop
    ld l, b
    ld hl, sp+$78
    ld c, $18
    add hl, de
    and h
    and l
    nop
    ld [hl], b
    ld h, h
    ld [hl], a
    ld c, $14
    dec d
    xor b
    xor c
    nop
    ld l, b
    ld [$0e79], sp
    jr @+$1b

    and b
    and c
    nop
    ld h, b
    call nz, $0e78
    db $10
    ld de, $a9a8
    nop
    ld l, b
    ld [$0e79], sp
    jr jr_001_42d7

    add [hl]
    add a
    nop
    ld d, b
    and b
    db $76
    ld c, $06
    rlca
    db $10
    ld bc, $0100
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    ld bc, $0200
    inc bc
    ld [bc], a
    inc bc
    inc b

jr_001_42d7:
    nop
    dec b
    db $10
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld bc, $0000
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    dec b
    db $10
    ld bc, $0000
    ld bc, $0200
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    db $10
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $08
    add hl, bc
    ld [bc], a
    ld bc, $0100
    add hl, bc
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0110
    ld b, $06
    ld b, $07
    ld [$0908], sp
    inc b
    ld [bc], a
    inc bc
    ld a, [bc]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    db $10
    ld bc, $0001
    ld bc, $0706
    ld [$0808], sp
    ld [$0908], sp
    ld b, $00
    ld bc, $050a
    inc bc
    ld b, $28
    add hl, hl
    dec b
    inc h
    daa
    ld d, $26
    ld hl, $2216
    inc hl
    ld d, $20
    ld hl, $1e16
    rra
    ld d, $10
    ld bc, $0000
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0d
    ld c, $0d
    ld a, [de]
    rrca
    db $10
    ld c, $0b
    inc c
    ld bc, $0100
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld bc, $0100
    db $10
    ld bc, $0303
    inc bc
    inc bc
    inc b
    nop
    nop
    dec bc
    nop
    inc c
    add hl, bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    inc c
    ld bc, $0100
    ld b, $07
    ld [$0708], sp
    ld [$0807], sp
    add hl, bc
    dec b
    db $10
    ld bc, $0302
    inc b
    ld bc, $0302
    ld a, [bc]
    ld [bc], a
    inc bc
    dec bc
    inc c
    ld b, $06
    rlca
    add hl, bc
    dec b
    db $10
    ld bc, $0005
    nop
    nop
    ld bc, $1211
    inc de
    dec b
    ld de, $0000
    ld [de], a
    inc de
    nop
    dec bc
    db $10
    ld bc, $0604
    ld bc, $0503
    dec b
    inc b
    ld b, $07
    inc bc
    ld b, $07
    inc bc
    inc b
    ld b, $09
    ld [bc], a
    ld bc, $0100
    db $10
    ld bc, $0000
    ld [bc], a
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    inc b
    inc d
    dec d
    dec d
    ld d, $15
    dec de
    dec bc
    db $10
    ld bc, $0100
    ld bc, $0700
    ld [$0908], sp
    nop
    inc c
    ld [$0908], sp
    ld [bc], a
    inc bc
    dec b
    inc c
    ld bc, $0100
    dec b
    ld [$0100], sp
    add hl, bc
    ld a, [bc]
    add hl, bc
    inc b
    dec bc
    rlca
    db $10
    ld bc, $0100
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0302
    inc b
    dec b
    db $10
    ld bc, $0100
    ld [bc], a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $04
    dec b
    dec b
    dec b
    rlca
    ld [$0102], sp
    nop
    ld bc, $0110
    inc b
    ld bc, $0d0b
    ld a, [bc]
    dec bc
    inc c
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    inc b
    ld bc, $0305
    ld b, $28
    add hl, hl
    dec b
    jr nz, @+$23

    ld d, $24
    daa
    ld d, $26
    dec h
    ld d, $22
    ld hl, $1e16
    rra
    ld d, $10
    ld bc, $0501
    ld bc, $0005
    nop
    nop
    inc de
    inc de
    inc de
    dec b
    nop
    ld bc, $0005
    dec bc
    inc c
    ld bc, $0100
    inc c
    dec c
    ld c, $0f
    dec c
    ld c, $0d
    db $10
    ld de, $0c05
    ld [bc], a
    nop
    ld [de], a
    inc de
    ld bc, $0a14
    dec bc
    inc de
    ld bc, $1514
    dec b
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    jr jr_001_44b2

    ld a, [de]
    dec e
    ld d, $02
    ld bc, $0100
    db $10
    ld bc, $0c00
    ld bc, $0005
    jr @+$0e

    nop
    jr jr_001_44c4

    jr jr_001_44bc

    jr jr_001_44be

    jr jr_001_44bd

jr_001_44b2:
    inc c
    ld bc, $0100
    inc b
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    inc b
    dec bc

jr_001_44bc:
    ld [bc], a

jr_001_44bd:
    dec bc

jr_001_44be:
    inc b
    rlca
    inc c
    ld bc, $0c00

jr_001_44c4:
    dec c
    inc c
    ld c, $0f
    nop
    dec c
    dec bc
    inc c
    ld a, [bc]
    db $10
    inc bc
    ld b, $28
    add hl, hl
    dec b
    ld h, $23
    ld d, $24
    dec h
    ld d, $26
    daa
    ld d, $20
    ld hl, $1e16
    rra
    ld d, $10
    ld bc, $0b0a
    dec c
    ld [bc], a
    inc bc
    ld bc, $0b0a
    inc c
    rlca
    add hl, bc
    dec bc
    dec c
    dec bc
    dec c
    dec b
    ld [bc], a
    ld bc, $0100
    db $10
    ld bc, $0d00
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    rrca
    db $10
    ld a, [de]
    rrca
    ld c, $0e
    ld a, [de]
    add hl, de
    rla
    dec bc
    db $10
    ld bc, $0403
    ld b, $00
    ld b, $00
    ld a, [bc]
    inc bc
    inc bc
    inc b
    inc c
    ld [$0009], sp
    ld a, [bc]
    dec b
    db $10
    ld bc, $0808
    ld c, $06
    ld b, $07
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    rlca
    add hl, bc
    ld a, [bc]
    dec b
    inc c
    ld bc, $0100
    inc c
    dec c
    dec c
    dec c
    rrca
    ld c, $0e
    db $10
    ld de, $1005
    ld bc, $0100
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    nop
    inc bc
    inc b
    ld bc, $0304
    ld [bc], a
    dec b
    ld b, $02
    ld bc, $0200
    db $10
    ld bc, $0706
    ld [$0709], sp
    ld [$0709], sp
    ld [$090a], sp
    rlca
    ld [$090a], sp
    dec b
    db $10
    ld bc, $0100
    inc bc
    dec bc
    ld b, $0b
    add hl, bc
    ld a, [bc]
    ld [$0100], sp
    ld [bc], a
    add hl, bc
    inc c
    dec bc
    rlca
    db $10
    ld bc, $0501
    inc bc
    dec b
    inc b
    rlca
    inc b
    dec b
    ld [$0509], sp
    inc b
    ld [$0707], sp
    ld b, $0c
    ld [bc], a
    nop
    ld [de], a
    dec d
    nop
    ld [de], a
    ld a, [bc]
    dec d
    nop
    ld [de], a
    dec bc
    dec d
    dec b
    ld d, $17
    dec e
    ld d, $17
    dec de
    dec e
    ld d, $17
    dec de
    dec e
    ld d, $10
    ld bc, $0100
    ld [bc], a
    inc bc
    nop
    ld bc, $0402
    dec b
    dec b
    ld b, $03
    ld bc, $0302
    rlca
    ld [bc], a
    ld bc, $0100
    ld b, $06
    ld b, $06
    ld b, $06
    ld sp, $0633
    ld b, $06
    ld b, c
    ld b, e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [$0c0a], sp
    ld c, $06
    jr jr_001_45f2

    ld a, [de]
    ld e, $06
    ld d, b
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld b, $29
    dec hl
    ld b, $06
    ld b, $39
    dec sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06

jr_001_45f2:
    ld [hl], h
    db $76
    ld [hl], b
    ld [hl], d
    ld b, $84
    add [hl]
    add b
    add d
    ld b, $8c
    ld b, $88
    adc d
    ld b, $8c
    ld b, $53
    ld d, e
    ld d, c
    ld d, b
    ld d, e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld l, b
    ld l, d
    sbc c
    sbc e
    sbc l
    ld a, b
    ld a, d
    xor c
    xor e
    xor l
    adc b
    ld l, $75
    cp b
    ld [hl], h
    adc b
    ld a, $85
    ret z

    add h
    adc b
    adc d
    adc l
    adc c
    adc h
    ld d, d
    ld d, c
    ld d, e
    ld d, e
    ld d, e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld l, b
    ld l, d
    ld l, h
    ld l, [hl]
    ld b, $78
    ld a, d
    ld a, h
    ld a, [hl]
    ld b, $ba
    adc d
    adc h
    ld [hl], b
    ld [hl], d
    jp z, $8c8a

    add b
    add d
    adc b
    adc d
    adc h
    adc b
    adc d
    ld d, d
    ld d, c
    ld d, b
    ld d, e
    ld d, e
    ld b, $06
    ld b, $06
    ld b, $06
    jr z, @+$2c

    inc l
    ld b, $06
    jr c, jr_001_469f

    inc a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $74
    db $76
    ld b, $06
    ld b, $84
    add [hl]
    ld b, $06
    ld b, $8c
    ld b, $50
    ld d, d
    ld d, e
    ld d, c
    ld d, e
    ld b, $06
    ld b, $06
    ld b, $06
    jr nc, @+$34

    inc [hl]
    ld b, $06
    ld b, b
    ld b, d
    ld b, h
    ld b, $06
    ld b, $06
    cp h
    cp h
    ld b, $06
    cp h
    cp [hl]
    cp [hl]
    ld b, $bc
    cp [hl]
    call z, $bcce

jr_001_469f:
    cp [hl]
    cp [hl]
    call nc, Call_001_50de
    ld d, e
    ld d, e
    ld d, e
    ld d, c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $68
    ld l, d
    ld [hl], b
    ld [hl], d
    ld b, $78
    ld a, d
    add b
    add d
    ld [hl], h
    cp d
    adc d
    adc b
    adc d
    add h
    jp z, $d88a

    jp c, $d84d

    jp c, Jump_001_5a59

    ld e, b
    ld e, e
    ld e, e
    ld b, $06
    jr z, @+$2c

    inc l
    ld b, $06
    jr c, jr_001_4713

    inc a
    jr nc, jr_001_470e

    inc [hl]
    ld b, $06
    ld b, b
    ld b, d
    ld b, h
    ld b, $06
    ld b, $06
    ld b, $e8
    db $e4
    ld b, $e8
    ld [$f4f2], a
    ldh a, [$f2]
    ld a, [$7373]
    ld e, d
    ld [hl], e
    db $fc
    ld [hl], e
    ld [hl], e
    jr z, jr_001_4724

    inc l
    ld b, $06
    jr c, jr_001_4739

    inc a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, c
    ld c, c

jr_001_470e:
    ld c, c
    ld c, c
    ld c, c
    ld e, b
    ld e, b

jr_001_4713:
    ld e, e
    ld e, e
    ld e, e
    ld [hl], e
    db $fc
    ld [hl], e
    ld [hl], e
    ld [hl], e
    db $fc
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld b, $28
    ld a, [hl+]
    inc l

jr_001_4724:
    ld b, $06
    jr c, jr_001_4762

    inc a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $49
    ld c, c
    ld [$0606], sp

jr_001_4739:
    ld e, e
    ld e, b
    jr jr_001_474e

    ld b, $fc
    ld [hl], e
    jr z, @+$1a

    ld de, $7373
    ld [hl], e
    ld [hl], e
    ld a, [hl+]
    ld b, $06
    ld b, $06
    ld b, $06

jr_001_474e:
    jr nc, jr_001_4782

    inc [hl]
    ld b, $06
    ld b, b
    ld b, d
    ld b, h
    ld b, $38
    ld a, [hl-]
    ld b, $06
    ld b, $48
    ld c, d
    ld b, $06
    ld b, $9e

jr_001_4762:
    ld b, $06
    ld b, $06
    xor [hl]
    ld b, $06
    ld b, $06
    ld d, b
    ld d, d
    ld d, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    jr nc, jr_001_47aa

    inc [hl]
    ld b, $06
    ld b, b
    ld b, d
    ld b, h
    ld b, $06
    ld b, $06

jr_001_4782:
    ld b, $06
    ld b, $06
    inc e
    ld c, b
    ld e, b
    ld b, $1c
    dec h
    dec bc
    ld l, b
    inc e
    dec h
    add h
    db $fc
    inc a
    inc l
    add h
    jr z, jr_001_480a

    inc a
    jr nc, jr_001_47cc

    inc [hl]
    ld b, $06
    ld b, b
    ld b, d
    ld b, h
    ld b, $06
    ld b, $06
    jr nc, jr_001_47d8

    inc [hl]
    ld b, $06
    ld b, b

jr_001_47aa:
    ld b, d
    ld b, h
    ld e, d
    ld e, h
    ld b, $06
    ld b, $6a
    ld l, h
    ld h, h
    ld h, [hl]
    ld b, $72
    db $fc
    ld [hl], h
    ld l, h
    ld h, h
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    add [hl]
    ld b, $28
    ld a, [hl+]
    inc l
    ld b, $06
    jr c, jr_001_4802

    inc a
    ld b, $a0
    and d

jr_001_47cc:
    and h
    ld b, $06
    or b
    or d
    or h
    ld l, h
    ld l, [hl]
    ld b, $96
    ld b, $7c

jr_001_47d8:
    ld a, [hl]
    ld b, $9e
    ld b, $8c
    ld b, $3e
    xor [hl]
    ld c, b
    ld c, l
    ld e, b
    ld c, [hl]
    ld e, c
    ld e, e
    ld e, e
    add b
    jr z, jr_001_4814

    inc l
    ld b, $06
    jr c, jr_001_4829

    inc a
    ld b, $06
    ld b, $06
    jr z, @+$2c

    inc l
    ld b, $06
    jr c, jr_001_4835

    inc a
    ld e, e
    ld e, l
    ld b, $06
    ld b, $6b

jr_001_4802:
    ld l, l
    ld h, l
    ld e, l
    ld b, $73
    ld [hl], e
    ld l, e
    ld l, l

jr_001_480a:
    add d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld e, c
    ld b, $28
    ld a, [hl+]
    inc l

jr_001_4814:
    ld b, $06
    jr c, jr_001_4852

    inc a
    ld b, $28
    ld a, [hl+]
    inc l
    ld b, $06
    jr c, @+$3c

    inc a
    ld b, $06
    ld b, $06
    jr z, jr_001_4852

    inc l

jr_001_4829:
    ld b, $06
    jr c, jr_001_4867

    inc a
    ld b, $06
    ld b, $06
    ld b, $50
    ld d, d

jr_001_4835:
    ld d, e
    ld d, c
    ld d, e
    ld b, $06
    jr z, jr_001_4866

    inc l
    ld b, $06
    jr c, jr_001_487b

    inc a
    jr z, @+$2c

    inc l
    ld b, $06
    jr c, jr_001_4883

    inc a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06

jr_001_4852:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $50
    ld d, d
    ld d, e
    ld d, c
    ld d, e
    ld sp, $0633
    ld b, $06
    ld b, c

jr_001_4866:
    ld b, e

jr_001_4867:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $31
    inc sp
    ld b, $06
    ld b, $41
    ld b, e
    ld b, $06
    ld b, $06

jr_001_487b:
    ld b, $06
    ld b, $e9
    jp nc, $d4d3

    ld h, [hl]

jr_001_4883:
    di
    ld [c], a
    db $e3
    db $e4
    ld l, h
    ld b, $06
    ld b, $31
    inc sp
    ld sp, $0633
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, $29
    dec hl
    ld b, $06
    ld b, $39
    dec sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $e8
    db $e4
    ld c, b
    add sp, -$16
    ld a, [c]
    db $f4
    db $f4
    ld hl, sp-$0c
    db $f4
    db $f4
    db $f4
    ld b, $31
    inc sp
    ld b, $06
    ld b, $41
    ld b, e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $74
    db $76
    ld [hl], b
    ld [hl], d
    ld b, $84
    ld b, $80
    add d
    ld b, $4d
    ld c, b
    ret c

    jp c, $5848

    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld b, $29
    dec hl
    ld b, $06
    ld b, $39
    dec sp
    ld b, $06
    ld b, $06
    add hl, hl
    dec hl
    ld b, $06
    ld b, $39
    dec sp
    ld b, $06
    ld b, $06
    ld b, $06
    jp nc, $d3d3

    db $d3
    ld e, d
    ld [c], a
    db $e3
    db $e3
    db $e3
    ld [hl], d
    ld [c], a
    db $e3
    db $e3
    db $e3
    ld [hl], d
    ld b, $06
    add hl, hl
    dec hl
    ld b, $29
    dec hl
    add hl, sp
    dec sp
    ld b, $39
    dec sp
    ld b, $06
    ld b, $06
    ld b, $06
    add hl, hl
    dec hl
    ld b, $06
    ld b, $39
    dec sp
    ld c, b
    ld e, e
    ld e, l
    ld b, $06
    ld [hl], e
    ld [hl], e
    ld l, l
    ld h, l
    ld e, l
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    adc d
    ld b, $06
    ld b, $31
    inc sp
    ld b, $29
    dec hl
    ld b, c
    ld b, e
    ld b, $39
    dec sp
    ld b, $06
    ld b, $06
    add hl, hl
    dec hl
    ld b, $06
    ld b, $39
    dec sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $da
    db $db
    db $db
    db $db
    call c, Call_000_2906
    dec hl
    ld b, $06
    ld b, $39
    dec sp
    ld b, $06
    add hl, hl
    dec hl
    ld b, $06
    ld b, $39
    dec sp
    ld b, $a0
    sub b
    ld b, $06
    and b
    ld a, [c]
    cp l
    ld b, $a0
    ld a, [c]
    cp l
    cp l
    ld b, $a0
    and b
    and b
    ld a, [c]
    ld d, b
    ld d, b
    ld d, b
    xor $c6
    ld e, $1e
    ld e, $1e
    ld e, $36
    ld [hl], $36
    ld [hl], $36
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    ld b, h
    ld b, [hl]
    or b
    or b
    ld d, d
    ld d, h
    ld d, [hl]
    add hl, de
    ld h, b
    ld h, d
    ld e, $66
    nop
    ld d, $16
    ld d, $16
    ld [de], a
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld d, $16
    ld d, $2e
    ld [hl], $26
    ld h, $42
    adc b
    or b
    ld e, $32
    sbc b
    sbc c
    or b
    db $10
    inc [hl]
    ld e, $60
    add hl, de
    inc de
    ld e, $1e
    ld e, $00
    nop
    nop
    ld [bc], a
    inc b
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld [hl], h
    ld d, $1e
    ld e, $1e
    ld e, $1e
    ld l, $2e
    ld l, $2e
    ld l, $89
    adc c
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ld e, $1e
    ld e, $60
    ld e, $1e
    inc h
    ld e, $1e
    ld h, $00
    inc [hl]
    nop
    nop
    ld [hl], $78
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $2e
    ld l, $2e
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ld e, $60
    and d
    ld e, $a2
    ld b, b
    ld b, d
    ld b, h
    ld e, $26
    ld d, b
    ld d, d
    ld d, h
    nop
    ld [hl], $78
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $2e
    ld l, $2e
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    and d
    ld e, $f1
    ld e, $a4
    ld e, $46
    ld c, $93
    ld e, $02
    db $f4
    ld e, $84
    ld bc, $1674
    ld d, $16
    or h
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $2e
    ld l, $2e
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ld e, $60
    and h
    ld e, $1e
    ld e, $a4
    ld e, $a8
    ld e, $00
    nop
    ld [bc], a
    add $04
    db $f4
    ld [hl], h
    ld [hl], h
    ld d, $16
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $2e
    ld l, $2e
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    and h
    ld e, $1e
    ld e, $a4
    ld e, $c8
    jr z, @+$62

    ld e, $00
    ret c

    ld a, [hl+]
    nop
    nop
    db $f4
    ld [hl], h
    ld [hl], h
    ld [hl], h
    db $e4
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $2e
    ld l, $2e
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ld e, $1e
    ld e, $1e
    ld h, b
    inc h
    ld e, $62
    ld h, h
    ld h, [hl]
    inc [hl]
    ld [hl], b
    ld [hl], d
    ld [hl], h
    db $76
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld e, $1e
    ld e, $1e
    ld e, $16
    ld d, $20
    ld [hl], $36
    ld c, $26
    adc $b0
    or b
    sbc c
    call nc, $b0ce
    or b
    ld e, $c4
    adc $b0
    jp nc, Jump_000_0da4

    jr jr_001_4aee

    add h
    nop
    nop
    nop
    nop
    add [hl]
    db $f4
    ld [hl], h
    ld [hl], h
    ld [hl], h
    cp [hl]
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $2e
    ld l, $2e
    adc c
    adc c
    adc c
    adc c

jr_001_4aee:
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ld h, b
    ld e, $a4
    ld e, $a4
    ld b, b
    ld b, h
    ld b, b
    ld b, d
    ld b, h
    ld d, b
    ld d, h
    ld d, b
    ld d, d
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $2e
    ld l, $2e
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    and d
    ld e, $a4
    ld h, b
    and h
    ld h, $1e
    ld e, $1e
    ld e, $36
    nop
    nop
    nop
    nop
    db $f4
    ld [hl], h
    ld [hl], h
    ld [hl], h
    db $e4
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $16
    ld d, $16
    adc c
    adc c
    ld c, $06
    ld l, [hl]
    sbc c
    sbc c
    sbc c
    ld d, $c2
    ld e, $f0
    ld a, [c]
    ld e, $04
    ld b, l
    or d
    xor $94
    inc h
    sbc $1e
    ld e, $14
    inc [hl]
    ld d, $16
    ld d, $16
    ld a, b
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $16
    ld d, $16
    adc c
    adc c
    ld c, $26
    ld l, [hl]
    sbc c
    sbc c
    sbc c
    inc h
    inc de
    ld e, $60
    ld e, $03
    ld e, $26
    ld d, [hl]
    sub e
    ld e, $1e
    ld [hl], $01
    add h
    inc b
    nop
    ld a, b
    ld [hl], h
    ld d, $16
    ld a, b
    ld h, $26
    ld h, $26
    ld h, $1e
    ld e, $1e
    ld e, $1e
    ld l, $2e
    ld l, $2e
    ld d, $b0
    or b
    or b
    or b
    add h
    or b
    or b
    or b
    or b
    add h
    ld a, b
    ld [de], a
    add hl, de
    add hl, de
    inc de
    ld h, $56
    ld e, $1e
    ld e, $1e
    ld h, [hl]
    ld d, b
    ld d, b
    ld d, b
    ld h, $26
    ld h, $26
    ld h, $1e
    ld e, $1e
    ld e, $1e
    ld l, $2e
    ld l, $2e
    cp b
    ld d, $16
    ld d, $16
    call nz, Call_000_1e1e
    ld e, $1e
    sub l
    ld e, $1e
    ld e, $1e
    sub l
    ld e, $1e
    ld e, $7e
    or d
    ld d, b
    ld d, b
    ld d, b
    or [hl]
    ld h, $16
    ld d, $16
    ld d, $16
    ld h, $26
    ld h, $26
    ld h, $1e
    ld e, $1e
    ld e, $1e
    ld l, $2e
    ld l, $2e
    ld l, $81
    add c
    add c
    add c
    add c
    adc c
    adc c
    adc c
    adc c
    adc c
    sub c
    sub c
    sub c
    sub c
    sub c
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld [de], a
    ld d, $16
    ld d, $16
    ld d, $26
    ld h, $26
    ld h, $26
    ld e, $1e
    ld e, $1e
    ld e, $2e
    ld l, $2e
    ld l, $2e
    add c
    add c
    add c
    add c
    add c
    adc c
    adc c
    adc c
    sub c
    adc c
    sub c
    sub c
    sub c
    ld b, $90
    db $e3
    ld [de], a
    ld e, $16
    ld e, $16
    ld d, $16
    ld d, $16
    ld h, $26
    ld h, $26
    ld h, $1e
    ld e, $96
    ld [hl], $36
    ld l, $8c
    ld b, b
    ld e, $1e
    add c
    add c
    add c
    add b
    ld b, h
    adc c
    adc c
    sub c
    ld b, [hl]
    ld d, h
    sub c
    sub c
    ld [bc], a
    db $f4
    ld e, $a6
    db $e3
    ld e, h
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $26
    ld h, $26
    ld h, $26
    ld [hl], $36
    sub [hl]
    sub [hl]
    sub [hl]
    ld e, $1e
    ld b, b
    ld b, b
    ld b, b
    ld a, [c]
    add b
    add b
    add b
    add b
    and b
    sub c
    sub c
    sub c
    adc c
    nop
    ld e, $02
    ld bc, $1691
    db $f4
    sbc h
    nop
    ld e, $16
    ld d, $16
    ld d, $16
    ld h, $26
    ld h, $26
    ld h, $36
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld e, $40
    ld b, b
    ld b, b
    ld b, b
    ld a, [c]
    ld e, $1e
    ld e, $1e
    ret nz

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ret nc

    jr c, @+$3a

    jr c, jr_001_4ccb

    or h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld d, $16
    ld d, $16
    ld d, $26
    ld h, $26
    ld h, $26
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld e, $1e
    ld e, $1e
    ld e, $19
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_001_4d34

    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld d, $16
    ld d, $16
    ld d, $26
    ld h, $26
    ld h, $26
    sub [hl]

jr_001_4ccb:
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld e, $1e
    ld e, $1e
    ld b, l
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld c, $38
    jr c, @+$3a

    jr c, jr_001_4d01

    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld d, $16
    ld d, $16
    ld d, $16
    ld h, $26
    ld h, $26
    ld h, $96
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add c
    add c
    jp nc, $d6d4

jr_001_4d01:
    adc c
    adc c
    ld [c], a
    db $e4
    and $91
    sub c
    sub c
    ld e, $f6
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld h, $26
    ld h, $26
    ld h, $1e
    ld e, $1e
    ld e, $1e
    ld l, $2e
    ld l, $2e
    ld l, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $a1
    ld e, $1e
    ld e, $1e
    ld e, $b6

jr_001_4d34:
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    ld h, $26
    ld h, $26
    ld h, $1e
    ld e, $1e
    ld e, $1e
    ld l, $2e
    ld l, $2e
    ld l, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    or e
    ld e, $1e
    and e
    and l
    jp $a3a1


    ld e, $1e
    and h
    ld e, $1e
    or [hl]
    ldh a, [$f1]
    ld a, [c]
    or [hl]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $06
    db $10
    ld [de], a
    ld b, $06
    jr nz, @+$24

    inc h
    ld h, $3a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld h, b
    ld h, d
    ld h, d
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], b
    ld a, d
    ld a, d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld e, b
    ld e, d
    ld e, h
    ld b, $30
    ld l, b
    ld l, d
    ld l, b
    inc sp
    ld b, b
    ld a, b
    ld a, d
    ld a, b
    ld b, d
    ld a, b
    ld [hl], b
    ld a, d
    ld [hl], b
    ld a, d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $06
    inc [hl]
    ld b, $06
    ret nc

    inc sp
    ld b, b
    ld b, $3c
    inc l
    ld b, d
    ld a, b
    ld a, [hl-]
    ld b, l
    ld a, d
    ld a, d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $93
    ld a, [hl-]
    sub c
    ld b, $33
    ldh [rWY], a
    ld [c], a
    ld b, $42
    ld b, d
    ld b, d
    ld b, b
    ld h, d
    ld a, d
    ld a, d
    ld a, d
    ld c, b
    ld a, d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $60
    ld h, d
    ld d, [hl]
    xor d
    ld b, $78
    ld a, d
    ld a, d
    cp d
    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $f0
    ld h, d
    ld h, d
    ld b, $93
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld [hl-], a
    ldh [rWY], a
    ld c, d
    ld c, d
    sbc e
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $62
    ld h, d
    ld h, d
    ld h, d
    ld a, [c]
    sub b
    ld a, d
    sub e
    ld a, [hl-]
    ld a, [hl-]
    and b
    ld c, d
    ldh [rP1], a
    ld a, d
    ld b, d
    ld b, d
    ld b, d
    db $10
    ld a, d
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld h, b
    ld h, h
    ld b, $06
    ld a, [hl-]
    ld [hl], b
    ld a, b
    sub b
    ld b, $7a
    ld a, b
    ld [hl], b
    and b
    adc b
    jr c, jr_001_4f30

    ld a, b
    jr nz, @+$22

    ld c, b
    ld a, b
    ld [hl], b
    ld a, d
    ld a, d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld h, h
    ld b, $06
    ld b, $06
    ld [hl], b
    ld a, [hl-]
    inc d
    ld d, $3a
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $58
    ld e, h
    ld b, $06
    jr nc, jr_001_4f73

    ld l, b
    ld b, $06
    ld b, b
    ld c, b
    ld c, b
    ld b, $06
    ld c, b
    ld [hl], b
    ld c, b
    ld a, [hl-]
    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0604
    db $fc

jr_001_4f30:
    cp $06
    ld b, $0a
    inc c
    ld c, $06
    ld b, $1a
    inc e
    ld e, $3a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc d
    dec d
    jr c, @+$3c

    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a

jr_001_4f73:
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [hl], $85
    ld b, $14
    dec d
    ld [hl], h
    sub l
    dec d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $06
    ld b, $06
    ld b, $30
    xor d
    or h
    or [hl]
    ld b, $b8
    cp d
    dec d
    ld d, $3a
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $06
    ld b, $cc
    ld b, $06
    ld b, $06
    call c, $06ce
    ld b, $15
    db $ec
    sbc $15
    dec d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld l, $06
    ld b, $06
    inc a
    ld a, $06
    ld b, $15
    ld c, h
    and $15
    dec d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $58
    ld e, h
    ld b, $06
    jr nc, jr_001_508b

    ld l, b
    ld b, $06
    ld b, b
    ld c, b
    ld a, b
    ld b, $06
    ld c, b
    ld a, b
    ld c, b
    ld a, [hl-]
    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld b, $8a
    inc sp
    adc c
    ld b, $06
    jr nc, @+$42

    sbc c
    ld b, $3a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    adc [hl]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld l, $06
    adc d
    ld b, d
    inc a
    ld a, $06
    sbc d
    sbc b
    ld c, h
    and $06
    jr c, jr_001_50bc

    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a

jr_001_508b:
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld b, $06
    xor h
    xor l
    ld b, $62
    ld h, l
    cp h
    cp l
    ld b, $7a
    ld b, [hl]
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld bc, $0204
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06

jr_001_50bc:
    ld b, $06
    ld b, $06
    ld b, $06
    xor h
    xor [hl]
    or h
    or [hl]
    ld c, h
    cp h
    cp [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld bc, $0204
    inc bc
    ld b, $06

Call_001_50de:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0604
    ld b, $ad
    ld b, $06
    ld b, $06
    cp l
    ld b, $4c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $02
    inc bc
    xor l
    ld b, $06
    ld b, $06
    cp l
    ld b, $06
    ld b, $06
    dec d
    dec d
    jr c, @+$3c

    ld a, [hl-]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld b, $06
    inc a
    dec d
    dec d
    ld d, $3a
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $06
    ld b, $ad
    ld b, $54
    ld d, h
    ld b, $bd
    ld b, $15
    dec d
    dec d
    dec d
    dec d
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0604
    call z, Call_000_0606
    ld b, $2e
    call c, $06ce
    inc a
    ld a, $ec
    sbc $15
    ld c, h
    and $06
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld e, [hl]
    ld b, $5c
    ld e, h
    ld b, $80
    add b
    add b
    add b
    add b
    ld b, $02
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $5e
    ld e, h
    ld b, $5e
    add b
    add b
    add b
    add b
    add b
    ld b, $02
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [hl], c
    ld [hl], e
    ld b, $06
    ld b, $82
    add h
    sub e
    sub h
    sub [hl]
    ld b, $02
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    sub e
    jp nz, $9492

    jp $0206


    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $50
    ld b, $06
    ld e, h
    ld d, d
    ld h, b
    ld h, d
    ld e, h
    add b
    add b
    add b
    add b
    add b
    ld b, $02
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $a4
    and [hl]
    and l
    and h
    and [hl]
    or h
    or [hl]
    or l
    or h
    or [hl]
    ld b, $02
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ldh [$f0], a
    sub $06
    ld b, $e2
    db $e4
    and $5e
    ld b, $f2
    db $f4
    or $80
    add b
    add b
    add b
    add b
    ld b, $02
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $c0
    sub h
    sub h
    sub h
    jp $0206


    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0603
    ld b, $06
    ld b, $06
    ld b, $06
    and h
    and [hl]
    and l
    ld [hl], b
    ld [hl], d
    or h
    or [hl]
    or l
    add c
    add e
    ld b, $02
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld b, $06
    ld b, $06
    ld b, $a1
    ld l, l
    ld b, $06
    xor b
    adc b
    adc b
    db $76
    add b
    adc b
    adc b
    adc b
    adc b
    ld a, [bc]
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld [hl+], a
    inc h
    ld h, $23
    dec h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld [bc], a
    inc b
    ld b, $03
    dec b
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld a, [bc]
    inc c
    ld c, $39
    dec h
    ld a, [de]
    inc e
    inc [hl]
    ld [hl], $52
    ld b, b
    ld b, d
    ld b, h
    ld d, d
    ld d, d
    ld d, b
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, h
    ld c, [hl]
    dec d
    ld d, d
    ld e, d
    ld e, h
    dec bc
    dec c
    ld [bc], a
    ld l, d
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld [hl+], a
    ld a, c
    ld c, $0b
    dec c
    ld d, d
    adc c
    add e
    dec de
    dec e
    ld d, d
    ld d, d
    sub e
    sub l
    ld b, b
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld [de], a
    sbc c
    sbc e
    ld d, d
    ld d, d
    ld a, [bc]
    inc c
    xor e
    xor l
    ld d, d
    ld a, [de]
    inc e
    ld e, $a0
    dec b
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld a, [bc]
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld [hl+], a
    inc h
    ld h, $23
    dec h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld [bc], a
    and e
    ld d, d
    ld d, d
    ld d, d
    ld [de], a
    dec d
    ld [de], a
    inc de
    dec d
    ld a, [bc]
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld [hl+], a
    inc h
    ld h, $23
    dec h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld [de], a
    ret c

    ld d, d
    call nz, Call_000_0a15
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld [hl+], a
    inc h
    ld h, $23
    dec h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld [de], a
    ret z

    ld d, d
    call nz, Call_000_0a15
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld [hl+], a
    inc h
    ld h, $23
    dec h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld a, [bc]
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld [hl+], a
    inc h
    ld h, $23
    dec h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, h
    dec b
    ld [de], a
    inc d
    ret z

    jr jr_001_5490

    ld a, [bc]
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld [hl+], a
    inc h
    ld h, $23
    dec h
    ld d, d
    ld d, d
    cp b
    cp d
    cp h
    ld d, d
    ld d, d
    ret nz

    jp nz, $02c4

    inc b
    ret nc

    push de
    jp nc, Jump_000_1412

    ld d, $13
    dec d

jr_001_5490:
    ld a, [bc]
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld a, [c]
    di
    pop af
    di
    ldh a, [$c2]
    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $d4c2

    push de
    and $d5
    sub $0a
    inc c
    ld c, $0b
    dec c
    ld a, [de]
    inc e
    ld e, $1b
    dec e
    ld [de], a
    inc d
    ld d, $13
    dec d
    ld a, [c]
    di
    pop af
    di
    ldh a, [$c2]
    db $e3
    push hl
    jp nz, $e1c2

    ld [c], a
    db $e4
    and $e1
    jp nz, $e2e0

    jp nz, $d4c2

    push de
    and $d5
    sub $00
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld [$0000], sp
    ld [bc], a
    dec bc
    inc b
    nop
    db $10
    ld [de], a
    inc hl
    inc d
    ld d, $20
    ld hl, $3e35
    ld h, $2b
    ld sp, $3e3e
    dec h
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld [$0800], sp
    ld [bc], a
    dec bc
    inc b
    nop
    db $10
    ld [de], a
    inc hl
    inc d
    ld d, $20
    ld hl, $3e35
    ld h, h
    dec hl
    ld sp, $4840
    ld l, b
    ld b, l
    ld c, b
    ld h, b
    ld h, d
    ld a, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld [$0b02], sp
    inc b
    nop
    db $10
    ld [de], a
    inc hl
    inc d
    ld d, $66
    ld d, h
    dec [hl]
    ld a, $26
    db $76
    ld a, d
    ld e, b
    ld d, b
    dec h
    ld l, [hl]
    adc d
    ld h, d
    ld [hl], d
    ld e, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld [$0200], sp
    dec bc
    inc b
    nop
    db $10
    ld [de], a
    inc hl
    inc d
    ld d, $20
    ld hl, $3e35
    ld b, $2b
    ld sp, $4840
    ld l, b
    ld b, l
    ld c, b
    ld h, b
    ld h, d
    ld a, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld [$0208], sp
    dec bc
    inc b
    nop
    db $10
    ld [de], a
    ld [hl], $14
    ld d, $48
    add [hl]
    ld e, b
    ld d, b
    ld h, $76
    db $76
    db $76
    ld a, d
    push af
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    adc d
    ld h, d
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    ld [$0000], sp
    ld [bc], a
    dec bc
    inc b
    ld [$1210], sp
    jp nc, $16d4

    jr nz, jr_001_55df

    ld [c], a
    db $e4
    ld h, $f4
    ldh a, [$f2]
    ld a, [c]
    or $6e
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld [$0000], sp
    ld [bc], a
    dec bc
    inc b
    nop

jr_001_55df:
    db $10
    ld [de], a
    inc hl
    inc d
    ld d, $20
    ld hl, $3e35
    ld h, $2b
    ld sp, $843e
    add [hl]
    ld [hl], h
    db $76
    db $76
    sub h
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
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
    dec bc
    inc b
    ld [$1210], sp
    inc hl
    inc d
    ld d, $20
    sbc b
    add $c6
    sbc d
    adc b
    xor b
    db $76
    db $76
    db $76
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec bc
    inc b
    nop
    db $10
    ld [de], a
    inc hl
    inc d
    ld d, $52
    ld hl, $3e35
    ld h, $60
    xor d
    cp [hl]
    ld a, $25
    ld l, [hl]
    ld l, [hl]
    adc d
    ld d, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld [$0000], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [bc], a
    dec bc
    inc b
    ld [$1210], sp
    inc hl
    inc d
    ld d, $20
    ld hl, $3e35
    ld h, $2b
    ld sp, $ba3e
    add [hl]
    and h
    ld a, $a6
    cp b
    ld l, [hl]
    ld l, h
    or l
    or [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
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
    dec bc
    inc b
    ld [$1210], sp
    inc hl
    inc d
    ld d, $20
    ld hl, $3e35
    ld h, $2b
    ld sp, $3e3e
    dec h
    and h
    ld a, $a6
    db $76
    db $76
    ld l, h
    or l
    or [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    ld [$0000], sp
    ld [bc], a
    dec bc
    inc b
    ld [$1210], sp
    jp nc, $16d4

    jr nz, @+$23

    ld [c], a
    db $e4
    ld h, $d6
    ldh a, [$f2]
    ld a, [c]
    or $78
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld b, $01
    inc bc
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $02
    inc bc
    xor l
    ld b, $06
    ld b, $06
    cp l
    ld b, $06
    ld b, $06
    ld b, $06
    jr c, jr_001_5721

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5721:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0100
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
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
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
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
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
    ld bc, $0100
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
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
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
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
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop

Jump_001_5940:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
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
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0001
    ld bc, $0100
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
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000

Jump_001_5a59:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0000
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0100
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
    nop
    nop
    nop
    nop

Call_001_5b58:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
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
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0100
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
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
    nop
    ld bc, $0001
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0001
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    nop
    nop
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
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0001
    nop
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
    ld bc, $0100
    ld bc, $0100
    ld bc, $0101
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
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
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
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld e, l
    ld e, l
    ld l, d
    ld l, d
    ld l, e
    dec [hl]
    dec [hl]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, d
    ld h, d
    ld e, l
    ld e, l
    ld [hl], b
    dec h
    dec h
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, d
    ld h, d
    add c
    ld [bc], a
    ld [bc], a
    dec h
    dec h
    sub c
    ld e, l
    ld e, l
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, l
    ld e, l
    sub e
    ld [bc], a
    ld [bc], a
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld l, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [$1818], sp
    ld [bc], a
    ld [bc], a
    ld a, [hl-]
    ld c, b
    jr z, jr_001_6271

    ld [bc], a
    ld a, [hl-]

jr_001_6271:
    ld c, d
    jr c, jr_001_62de

    ld l, d
    ld l, d
    ld l, d
    ld l, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, l
    ld a, [hl]
    ld a, e
    ld e, l
    ld a, [hl]
    dec [hl]
    or h
    or c
    dec [hl]
    or h
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, e
    ld e, l
    ld e, l
    ld e, l
    ld a, [hl]
    or c
    dec e
    dec e
    dec e
    or h
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a

jr_001_62de:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, e
    ld a, l
    ld [bc], a
    ld a, h
    ld a, [hl]
    or c
    or e
    or l
    or d
    or h
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, h
    ld e, [hl]
    sub h
    or l
    or l
    or d
    dec c
    ld l, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld [hl], e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, e
    add e
    or [hl]
    ld l, l
    or b
    or l
    or l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld e, h
    ld e, h
    ld e, h
    ld [hl], e
    add b
    ld l, h
    ld l, h
    ld l, h
    add e
    or l
    or l
    or l
    or l
    or l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add $7e
    ld a, e
    add $7e
    dec d
    call nz, $15c1
    call nz, $0505
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld e, h
    ld e, h
    ld e, h
    ld [hl], e
    add b
    ld l, h
    ld l, h
    ld l, h
    add e
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], d
    ld [bc], a
    ld [hl], c
    ld [hl], e
    add b
    add d
    ld [bc], a
    add c
    add e
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, e
    ld a, l
    ld [bc], a
    ld a, h
    ld a, [hl]
    pop bc
    jp $c2c0


    call nz, $0505
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, e
    add $7e
    ld [bc], a
    ld a, h
    pop bc
    dec d
    call nz, $c2c0
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add $7e
    ld [bc], a
    ld a, h
    ld a, [hl]
    dec d
    call nz, $c2c0
    and e
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, d
    ret nc

    jp nc, $b5d4

    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    or l
    adc [hl]
    jp nc, Jump_001_6ad6

    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, l
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec [hl]
    ld l, d
    ret nc

    sbc [hl]
    or l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    or [hl]
    ld l, l
    or b
    or l
    and c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec d
    dec d
    dec d
    dec d
    dec d
    dec h
    dec h
    dec h
    dec h
    dec h
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec d
    dec d
    dec d
    dec d
    dec d
    dec h
    dec h
    dec h
    dec h
    dec h
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec d
    dec d
    dec d
    dec d
    dec d
    dec b
    dec b
    dec b
    ldh [$e1], a
    dec d
    dec d
    dec d

jr_001_6528:
    ldh a, [$f1]
    dec h
    dec h
    dec h
    nop
    pop af
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, $12
    dec d
    dec d
    dec d
    dec d
    dec d
    dec h
    dec h
    dec h
    dec h
    dec h
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec d
    dec d
    dec d
    dec d
    dec d
    pop hl
    ld [c], a
    dec b
    dec b
    dec b
    pop af
    ld a, [c]
    db $f4
    db $f4
    db $f4
    pop af
    pop af
    pop af
    pop af
    pop af
    ld [de], a
    inc d
    pop af
    pop af
    pop af
    dec b
    inc h
    jr nc, jr_001_6590

    jr nc, jr_001_6567

    dec e
    dec e
    dec e
    dec e
    dec h

jr_001_6567:
    dec h
    dec h
    dec h
    dec d
    dec e
    dec e
    dec e
    dec e
    dec h
    dec b
    dec b
    dec b
    dec b
    dec b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    jr nc, jr_001_6528

    pop af
    dec d
    jr nc, jr_001_65a7

    nop
    pop af
    ld b, $1d
    dec d
    db $e4

jr_001_6590:
    push hl
    and $15
    dec h
    dec h
    dec h
    dec h
    dec h
    dec b
    dec b
    dec b
    ld [bc], a
    pop hl
    db $f4
    db $f4
    db $f4
    inc b
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af

jr_001_65a7:
    pop af
    pop af
    db $10
    ld [de], a
    ld [de], a
    jr nc, jr_001_65de

    jr nz, @+$27

    dec h
    dec e
    dec e
    dec e
    dec e
    dec e
    dec d
    dec d
    dec d
    dec d
    dec d
    dec h
    dec h
    dec h
    dec h
    dec h
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    inc d
    pop af
    pop af
    db $10
    ld [de], a
    ldh a, [$15]
    jr nc, jr_001_65f8

    dec b
    nop
    ld b, $1d
    dec e
    dec h

jr_001_65de:
    db $e4
    and $15
    dec d
    dec e
    dec d
    dec e
    dec h
    dec h
    dec h
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    inc d

jr_001_65f8:
    pop af
    pop af
    pop af
    db $10
    inc h
    jr nc, jr_001_662f

    jr nc, jr_001_6621

    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec d
    dec d
    dec d
    dec d
    dec d
    dec h
    dec h
    dec h
    dec h
    dec h
    pop hl
    pop hl
    pop hl
    pop hl
    ld [hl-], a
    pop af
    pop af
    pop af
    pop af
    inc [hl]
    pop af
    pop af
    pop af
    pop af
    ld [hl], $12
    inc d

jr_001_6621:
    pop af
    pop af
    inc [hl]
    dec b
    ldh a, [$15]
    jr nc, @-$08

    dec d
    nop
    ld b, $35
    dec d
    dec h

jr_001_662f:
    db $e4
    and $15
    dec h
    dec e
    dec d
    dec [hl]
    dec b
    dec e
    ld d, $02
    ld a, c
    ld h, h
    ld a, e
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, $02
    ld [bc], a
    ld b, b
    ld b, e
    ld d, $02
    ld [bc], a
    ld d, b
    ld d, d
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, $02
    ld [bc], a
    ld [bc], a
    ld c, [hl]
    sbc e
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld c, b
    ld h, b
    inc de
    ld b, c
    ld b, e
    ld [bc], a
    ld [bc], a
    inc bc
    ld d, c
    ld d, c
    ld [bc], a
    ld [bc], a
    inc de
    ld b, l
    ld b, d
    ld b, h
    ld [bc], a
    inc bc
    ld [bc], a
    ld d, c
    ld d, h
    ld [bc], a
    inc de
    ld c, d
    ld c, h
    ld [bc], a
    ld [bc], a
    inc bc
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, e
    dec b
    dec b
    dec b
    dec b
    dec [hl]
    ld b, $71
    ld [hl], e
    adc b
    ld [bc], a
    ld d, $81
    add e
    ld d, d
    ld [bc], a
    ld h, $02
    ld h, e
    ld h, h
    ld a, e
    ld b, $02
    adc b
    ld [bc], a
    ld [bc], a
    ld d, $71
    sbc b
    ld e, h
    ld [hl], e
    ld h, $81
    ld l, h
    ld l, h
    add e
    ld b, $71
    ld [hl], e
    ld c, c
    ld c, h
    ld d, $81
    add e
    ld [bc], a
    ld [bc], a
    ld b, c
    ld b, e
    ld [bc], a
    ld [bc], a
    inc bc
    ld d, c
    ld d, c
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    ld [bc], a
    ld c, b
    ld h, b
    dec bc
    ld b, c
    ld b, e
    ld [bc], a
    ld [bc], a
    inc bc
    ld d, c
    ld d, c
    ld e, d
    ld [hl], d
    inc de
    ld [bc], a
    ld [bc], a
    ld l, d
    add d
    dec bc
    ld h, e
    ld h, l
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld d, $02
    ld [bc], a
    ld e, d
    ld e, l
    ld h, $02
    ld [bc], a
    ld l, d
    ld l, l
    ld e, $79
    ld a, d
    ld [bc], a
    ld [bc], a
    ld d, $02
    ld [bc], a
    ld e, d
    ld e, l
    ld h, $02
    ld [bc], a
    ld l, d
    ld l, l
    ld e, $79
    ld a, d
    ld [bc], a
    ld [bc], a
    ld d, $71
    ld e, h
    ld e, h
    ld [hl], e
    ld h, $81
    ld l, h
    ld l, h
    add e
    ld [bc], a
    ld h, d
    ld h, l
    ld [bc], a
    inc de
    ld b, b
    ld b, h
    ld [bc], a
    ld [bc], a
    inc bc
    ld d, b
    sub d
    ld e, l
    ld [bc], a
    inc de
    ld [bc], a
    ld l, d
    ld l, l
    adc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld a, l
    ld d, d
    inc de
    ld [hl], l
    sub b
    ld [bc], a
    ld [bc], a
    inc bc
    add l
    ld e, d
    ld e, l
    ld [bc], a
    inc de
    ld [bc], a
    ld l, d
    ld l, l
    ld [bc], a
    inc bc
    ld d, $4e
    ld c, d
    ld c, e
    ld [bc], a
    ld h, $4e
    ld h, c
    ld [bc], a
    ld [bc], a
    ld e, $02
    ld [bc], a
    sub b
    ld [bc], a
    ld d, $4e
    ld h, c
    ld [bc], a
    ld [bc], a
    ld h, $02
    ld [bc], a
    sub b
    ld [bc], a
    ld e, $4e
    ld h, c
    ld [bc], a
    ld [bc], a
    ld d, $02
    ld [bc], a
    sub b
    ld [bc], a
    ld h, $4e
    ld h, c
    ld [bc], a
    ld [bc], a
    sub b
    ld [hl], l
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    add l
    adc b
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld d, c
    ld a, l
    inc de
    ld [bc], a
    ld [bc], a
    ld [hl], l
    sub b
    inc bc
    ld [bc], a
    adc b
    add l
    ld [bc], a
    inc de
    ld a, l
    ld d, c
    ld [bc], a
    ld [bc], a
    inc bc
    sub b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    ld c, b
    ld c, e
    ld [bc], a
    inc bc
    ld d, $02
    ld [bc], a
    ld b, b
    ld b, h
    ld h, $49
    ld c, h
    ld d, b
    ld d, h
    ld e, $02
    ld c, b
    ld c, e
    ld [bc], a
    ld d, $4e
    ld h, c
    ld [bc], a
    ld [bc], a
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, $02
    ld [bc], a
    ld c, c
    ld h, c
    ld d, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, $4e
    ld h, c
    ld c, c
    ld h, c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec d
    dec c
    dec c
    dec c
    dec c
    ld [hl+], a
    ld a, $3c
    ld a, $3c
    sub h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld d, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $4e
    ld h, c
    ld c, c
    ld c, h
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    inc a
    ld a, $3c
    ld a, $3c
    ld c, h
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, b
    ld c, d
    ld c, e
    ld [bc], a
    sub [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld hl, $2121
    ld hl, $4021
    ld b, d
    ld b, h
    ld b, [hl]
    ld b, b
    ld d, b
    ld d, d
    ld d, h
    ld d, [hl]
    ld a, b
    ld h, b
    ld h, d
    ld h, h
    ld h, [hl]
    ld h, d
    ld l, b
    ld l, d
    ld l, h
    ld l, [hl]
    ld l, d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld h, d
    ld bc, $6203
    ld h, d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld hl, $2121
    ld hl, $4421
    ld b, [hl]
    ld b, b
    ld b, b
    ld b, b
    jr nc, jr_001_68ac

    ld a, h
    ld a, [hl]
    ld d, b
    ld h, h
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld h, b
    ld l, h
    ld l, [hl]
    ld l, h
    ld l, [hl]
    ld l, b
    xor d
    xor d
    xor d
    xor d
    xor d
    ld h, d
    ld bc, $6203
    ld h, d
    ld [de], a
    ld [de], a
    inc d
    ld h, d
    ld h, d
    ld hl, $2221
    ld h, d
    ld h, d
    ld b, b
    ld b, b
    ld h, $01
    inc bc
    ld a, h
    ld a, [hl]
    ld [hl], $62
    ld h, d
    ld h, h
    ld h, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld l, h
    ld l, [hl]
    ld l, d
    ld l, d
    ld l, d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld bc, $6203
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld bc, $6203
    ld bc, $6203
    ld h, d
    ld h, d
    ld h, d
    ld h, d

jr_001_68ac:
    ld h, d
    ld h, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    db $10
    ld [de], a
    ld [de], a
    ld h, d
    ld h, d
    jr nz, jr_001_68e7

    ld hl, $6262
    inc h
    ld b, b
    ld b, b
    ld bc, $3403
    ld d, b
    ld a, b
    ld h, d
    ld h, d
    ld h, d
    ld h, b
    ld h, d
    ld l, d
    ld l, d
    ld l, d
    ld l, b
    ld l, d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d

jr_001_68e7:
    ld h, d
    ld bc, $0103
    inc bc
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    jp nz, $8e8e

    ld h, d
    ret nc

    jp nc, Jump_000_0606

    ld h, d
    cp h
    cp [hl]
    or $e6
    ld l, d
    call nz, $fec6
    dec b
    xor d

jr_001_6904:
    xor d
    xor d
    xor d
    xor d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld hl, $2121
    ld hl, $4021
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld d, c
    ld d, e
    ld a, b
    ld d, b
    ld h, d
    ld h, c
    and c
    adc c
    ld h, b
    sbc e
    ld [hl-], a
    or c
    pop af
    ld d, $ab
    xor l
    xor l
    xor l
    pop hl
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    inc d
    ld h, d
    db $10
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld h, d
    jr nz, jr_001_695f

    ld hl, $6226
    inc h
    ld b, b
    ld b, b
    ld [hl], $62
    inc [hl]
    ld a, b
    ld d, b
    ld h, d
    ld h, d
    ld h, d
    ld bc, $62c0
    ld h, d
    ld [$b211], sp
    xor d
    xor d
    jr jr_001_6904

    xor l
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [de], a
    ld [de], a

jr_001_695f:
    ld [de], a
    ld [de], a
    ld [de], a
    ld hl, $2121
    ld hl, $4221
    ld b, h
    ld b, [hl]
    ld b, b
    ld b, b
    ld d, d
    ld d, h
    ld d, [hl]
    ld d, b
    ld a, b
    and d
    push de
    call nc, $a2c0
    or d
    or d
    or d
    or d
    or d
    xor l
    xor l
    xor l
    xor l
    xor l
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [de], a
    ld [de], a
    inc d
    ld h, d
    db $10
    ld hl, $2221
    ld h, d
    jr nz, jr_001_69d0

    ld b, b
    ld h, $62
    inc h
    ld d, b
    ld a, b
    ld [hl], $62
    inc [hl]
    ret nz

    inc bc
    ld h, d
    ld h, d
    ld h, d
    or d
    inc de
    inc c
    ld h, d
    ld h, d
    xor l
    xor l
    inc e
    xor d
    xor d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc d
    ld hl, $2121
    ld hl, $4022
    ld b, d
    ld b, h
    ld b, [hl]
    ld h, $50
    ld a, b
    jr nc, jr_001_6a16

    ld [hl], $60
    adc d
    push de
    adc b
    ld h, d
    ld h, b
    adc h
    or d
    ldh a, [$f3]
    xor d
    xor h
    xor l
    xor l
    pop hl

jr_001_69d0:
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld hl, $2121
    ld hl, $4021
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld d, c
    ld d, e
    ld a, d
    ld d, b
    ld h, d
    ld h, c
    and c
    adc c
    ld h, b
    db $f4
    ld [hl-], a
    or c
    ld c, $68
    ld [c], a
    xor l
    xor l
    ldh [$aa], a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld hl, $2121
    ld hl, $4221
    ld b, h
    ld b, [hl]
    ld b, b
    ld b, b
    ld a, b
    jr nc, jr_001_6a65

    ld a, b
    ld a, d
    ld h, d
    ld h, h
    ld h, [hl]
    and b
    and d

jr_001_6a16:
    sbc e
    sbc [hl]
    db $e4
    or b
    or d
    xor e
    xor l
    xor l
    xor l
    xor l
    cp [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63
    cp [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $38
    ld a, [hl-]
    ld h, e
    ld h, e
    ld h, e
    ld c, b
    ld c, d
    ld a, [hl+]
    sub c
    db $76
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, $f4
    db $f4
    db $f4
    db $f4
    ld l, $86
    ld [hl+], a
    adc $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63
    ld h, e
    ld h, e
    ld h, e
    cp [hl]
    ld h, e
    add $63
    ld h, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63

jr_001_6a65:
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    adc h
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $86
    ld [hl+], a
    adc $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add $63
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    cp [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    cp [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    cp [hl]
    add [hl]
    ld [hl+], a
    adc $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    adc b
    adc e
    ld l, b
    ld l, e
    add c
    add e
    ld h, e
    ld a, b
    ld a, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63
    cp [hl]
    ld h, e
    add $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add $63

Jump_001_6ad6:
    ld h, e
    ld e, [hl]
    cp [hl]
    ld h, e
    jr z, jr_001_6b3f

    ld l, [hl]
    ld h, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add $63
    add $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add $be
    ld h, e
    cp [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add $be
    jr c, jr_001_6b3a

    ld h, e
    ld h, e
    sub b
    ld c, b
    ld c, d
    ld a, [hl+]
    adc h
    ld c, h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld a, $f6
    db $f4
    db $f4
    db $f4
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add $63
    add $63
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    cp [hl]
    ld h, e
    add [hl]
    ld [hl+], a
    adc $63
    ld h, e
    sbc h
    sbc [hl]
    ld h, e
    sbc h
    sbc [hl]
    ld e, d
    ld e, h
    inc a
    ld e, d
    ld e, h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    ld h, e
    ld h, e

jr_001_6b3a:
    ld h, e
    ld h, e
    ld h, e
    add $63

jr_001_6b3f:
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    cp [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add [hl]
    ld [hl+], a
    adc $be
    ld h, e
    jp z, $cccc

    sub b
    ret c

    jp c, $dedc

    ld c, h
    add sp, -$1e
    db $e4
    and $f6
    db $f4
    db $f4
    db $f4
    db $f4
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    xor c
    xor d
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    xor b
    xor e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    xor b
    xor e
    inc a
    inc a
    sub c
    db $76
    ld h, e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, $63
    db $f4
    db $f4
    db $f4
    or $2e
    ld h, e
    ld h, e
    ld h, e
    xor b
    xor e
    xor b
    xor d
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    xor c
    xor d
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    xor b
    xor e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    xor b
    xor d
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    xor [hl]
    db $76
    ld h, e
    ld h, e
    ld h, e
    ld c, [hl]
    ld e, $63
    ld h, e
    ld h, [hl]
    db $f4
    or $f6
    ld l, $63
    ld h, e
    ld h, e
    jr z, jr_001_6c3f

    ld h, e
    jr nc, jr_001_6c42

    ld h, e
    ld h, e
    ld h, e
    ld h, e
    jr nc, jr_001_6c48

    ld h, e
    ld h, e
    ld h, e
    ld h, e
    jr nc, jr_001_6c4e

    ld h, e
    ld h, e
    jr nc, @+$65

    ld h, e
    ld h, e
    jr z, jr_001_6c56

    jr nc, @+$65

    ld h, e
    ld h, e
    ld h, e
    jr nc, jr_001_6c5d

    ld h, e
    ld h, e
    jr nc, jr_001_6c61

    ld h, e
    ld h, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [$0808], sp
    ld [$88ae], sp
    ld e, $25
    dec h
    or [hl]
    sbc [hl]
    ld [de], a
    dec h
    dec h
    or [hl]
    ld a, b
    ld a, d
    sbc $40
    ld a, h
    jr c, jr_001_6c5e

    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    adc d
    dec bc
    ld bc, $985e
    sbc d
    dec bc
    adc h
    adc [hl]
    xor b
    call nc, $9c0b

jr_001_6c3f:
    dec h
    dec h
    and d

jr_001_6c42:
    dec bc
    or d
    xor h
    pop hl
    ld c, c
    ld c, h

jr_001_6c48:
    cp b
    jp nz, Jump_001_5940

    ld e, e
    dec hl

jr_001_6c4e:
    dec hl
    dec hl
    ld bc, $0101
    ld bc, $0101

jr_001_6c56:
    inc bc
    ld bc, $0101
    ld bc, $010b

jr_001_6c5d:
    inc bc

jr_001_6c5e:
    ld bc, $0b08

jr_001_6c61:
    ld [$080b], sp
    call nc, Call_000_250b
    dec bc
    call nc, Call_000_0ba2
    dec c
    dec bc
    call z, $0bde
    jp nz, $dc0b

    dec hl
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc b
    ld bc, $08ae
    ld [de], a
    inc d
    ld [$d1b6], sp
    ld c, [hl]
    inc e
    dec h
    or [hl]
    ld h, $18
    inc c
    ld c, $7c
    ld b, b
    ld l, b
    ld l, d
    ld l, h
    jr c, jr_001_6cd7

    ld e, c
    ld e, d
    ld e, e
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc b
    ld bc, $0101
    ld a, [bc]
    inc c
    ld bc, $0801
    ld [de], a
    inc d
    ld [$2508], sp
    ld a, [de]
    ret nc

    nop
    ld [bc], a
    ldh a, [$f2]
    db $ec
    xor $25
    ld d, $3e
    ld c, b
    ld c, d
    ld l, l
    jr c, @+$3b

    dec sp
    ld e, d
    ld e, h
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0301
    ld bc, $010b

jr_001_6cd7:
    ld [$080b], sp
    dec bc
    ld [$0b25], sp
    call nc, Call_000_250b
    add $0b
    xor $0b
    ld l, $fc
    ld c, h
    sbc $0b
    call c, Call_001_5b58
    jr c, @+$3c

    dec hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc b
    ld bc, $0801
    ld [de], a
    inc d
    ld [$25ae], sp
    ld a, [de]
    inc e
    dec h
    or [hl]
    ldh a, [$f2]
    db $10
    ldh [$b6], a
    ld d, $3e
    dec a
    jr nz, jr_001_6d8f

    dec hl
    jr z, jr_001_6d40

    dec hl
    dec hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0301
    ld bc, $0113
    ld [$8c13], sp
    inc de
    ld [$13d4], sp
    adc $13
    dec h
    and d
    inc de
    call nc, $d413
    sbc $13
    ld [hl+], a
    inc de
    inc e
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    dec hl

jr_001_6d40:
    ld bc, $0601
    dec h
    dec h
    ld bc, $0101
    ld b, $25
    ld bc, $0103
    ld bc, $0806
    inc de
    ld [$2508], sp
    dec h
    inc de
    adc b
    ld e, $25
    cp h
    inc de
    sbc [hl]
    ld [de], a
    dec h
    ld [hl+], a
    inc de
    inc l
    ld l, $de
    dec hl
    add hl, hl
    ld e, c
    ld e, e
    dec hl
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    ld b, d
    ld b, h
    ld b, [hl]
    dec h
    ld d, b
    ld d, d
    ld d, h
    ld d, [hl]
    dec h
    ld h, b
    ld h, d
    ld h, h
    ld h, [hl]
    dec h
    ld [hl], b
    ld [hl], d
    ld [hl], h
    db $76
    ld b, b
    jr nc, jr_001_6dbb

    dec h
    db $76
    jr c, jr_001_6dc6

    add hl, sp
    add hl, sp

jr_001_6d8f:
    ld a, [hl-]
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    add d
    and $e6
    and $e6
    adc d
    and $e6
    and $e6
    sbc d
    and $e6
    and $e6
    and $80
    add b
    add b
    add b
    add b
    adc b
    adc b
    adc b

jr_001_6dbb:
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b

jr_001_6dc6:
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    and $e6
    add l
    and $e6
    add l
    and $e6
    and $85
    and $e6
    and $e6
    and $80
    add b
    add b
    add b
    add b
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or $f6
    or $f6
    or $e6
    and $e6
    and $e6
    and $e6
    and $e6
    xor d
    and $e6
    and $e6
    and $ac
    xor h
    xor h
    xor h
    xor h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or h
    or $f6
    or $f6
    or $e6
    and $e6
    and $e6
    xor l
    and $e6
    and $e6
    and $aa
    xor l
    and $e6
    xor h
    xor h
    xor h
    xor h
    xor h
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $ba
    cp d
    cp d
    cp d
    cp d
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    and [hl]
    and [hl]
    call z, $a6a6
    and $e6
    and $e6
    and $d3
    push de
    and $d3
    push de
    and $d0
    pop de
    jp nc, $b8e6

    cp d
    cp d
    cp d
    xor b
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and $e6
    and $e6
    and $d1
    ret z

    jp z, $d4d3

    and $d8
    jp c, $e6e6

    cp d
    cp b
    xor b
    add sp, -$42
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
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
    ld bc, $0000
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0001
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
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    ld bc, $0101
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    nop
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    nop
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
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0001
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
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0000
    ld bc, $0001
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
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
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0000
    nop
    ld bc, $0001
    nop
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
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    nop
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0100
    ld bc, $0001
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0100
    nop
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
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $45b8
    add sp, $56
    ldh [rLYC], a
    add sp, $56
    ld [$e846], sp
    ld d, [hl]
    jr nc, jr_001_762c

    add sp, $56
    ld e, b
    ld b, [hl]
    add sp, $56
    add b
    ld b, [hl]
    add sp, $56
    xor b
    ld b, [hl]
    add sp, $56
    ret nc

    ld b, [hl]
    db $10
    ld d, a
    ld hl, sp+$46
    jr c, jr_001_7653

    jr nz, jr_001_7645

    ld h, b
    ld d, a
    ld c, b
    ld b, a
    adc b
    ld d, a
    ld [hl], b
    ld b, a
    or b
    ld d, a
    sbc b
    ld b, a
    ret c

    ld d, a
    ret nz

    ld b, a
    nop
    ld e, b
    add sp, $47
    jr z, jr_001_766c

    db $10
    ld c, b
    add sp, $56
    jr c, jr_001_7662

    add sp, $56
    ld h, b
    ld c, b
    ld d, b
    ld e, b
    ld h, b
    ld c, b
    ld d, b
    ld e, b
    adc b
    ld c, b
    add sp, $56
    adc b
    ld c, b
    add sp, $56

jr_001_762c:
    or b
    ld c, b
    add sp, $56
    ret c

    ld c, b
    ld a, b
    ld e, b
    nop
    ld c, c
    and b
    ld e, b
    jr z, jr_001_7683

    ret z

    ld e, b
    ld d, b
    ld c, c
    ldh a, [$58]
    ld d, b
    ld c, c
    ldh a, [$58]
    ld a, b

jr_001_7645:
    ld c, c
    jr jr_001_76a1

    and b
    ld c, c
    ld b, b
    ld e, c
    ret z

    ld c, c
    ld l, b
    ld e, c
    ldh a, [rOBP1]
    sub b

jr_001_7653:
    ld e, c
    jr jr_001_76a0

    cp b
    ld e, c
    ld b, b
    ld c, d
    ldh [$59], a
    ld l, b
    ld c, d
    ld [$905a], sp
    ld c, d

jr_001_7662:
    ld l, b
    ld e, c
    cp b
    ld c, d
    jr nc, jr_001_76c2

    ldh [rWY], a
    ld e, b
    ld e, d

jr_001_766c:
    ld [$804b], sp
    ld e, d
    jr nc, @+$4d

    xor b
    ld e, d
    ld e, b
    ld c, e
    ret nc

    ld e, d
    add b
    ld c, e
    ld hl, sp+$5a
    xor b
    ld c, e
    jr nz, @+$5d

    ret nc

    ld c, e
    ld l, b

jr_001_7683:
    ld e, c
    ld hl, sp+$4b
    ld c, b
    ld e, e
    jr nz, jr_001_76d6

    ld [hl], b
    ld e, e
    ld c, b
    ld c, h
    sbc b
    ld e, e
    ld [hl], b
    ld c, h
    ret nz

    ld e, e
    sbc b
    ld c, h
    add sp, $5b
    ret nz

    ld c, h
    db $10
    ld e, h
    add sp, $4c
    jr c, jr_001_76fc

jr_001_76a0:
    db $10

jr_001_76a1:
    ld c, l
    ld h, b
    ld e, h
    jr c, jr_001_76f3

    adc b
    ld e, h
    ld h, b
    ld c, l
    add sp, $56
    adc b
    ld c, l
    add sp, $56
    or b
    ld c, l
    add sp, $56
    ret c

    ld c, l
    or b
    ld e, h
    nop
    ld c, [hl]
    add sp, $56
    jr z, jr_001_770c

    add sp, $56
    ld d, b
    ld c, [hl]

jr_001_76c2:
    ret c

    ld e, h
    ld a, b
    ld c, [hl]
    nop
    ld e, l
    and b
    ld c, [hl]
    jr z, @+$5f

    ret z

    ld c, [hl]
    add sp, $56
    ldh a, [$4e]
    add sp, $56
    jr jr_001_7725

jr_001_76d6:
    ld d, b
    ld e, l
    ld b, b
    ld c, a
    add sp, $56
    ld l, b
    ld c, a
    add sp, $56
    sub b
    ld c, a
    add sp, $56
    cp b
    ld c, a
    add sp, $56
    ldh [rVBK], a
    ld a, b
    ld e, l
    ld [$e850], sp
    ld d, [hl]
    jr nc, jr_001_7742

    and b

jr_001_76f3:
    ld e, l
    ld e, b
    ld d, b
    ret z

    ld e, l
    add b
    ld d, b
    add sp, $56

jr_001_76fc:
    xor b
    ld d, b
    add sp, $56
    ret nc

    ld d, b
    add sp, $56
    ld hl, sp+$50
    add sp, $56
    jr nz, @+$53

    add sp, $56

jr_001_770c:
    ld c, b
    ld d, c
    add sp, $56
    ld [hl], b
    ld d, c
    ldh a, [$5d]
    ret nz

    ld d, [hl]
    add sp, $56
    sbc b
    ld d, c
    jr jr_001_777a

    ret nz

    ld d, c
    ld b, b
    ld e, [hl]
    add sp, $51
    ld l, b
    ld e, [hl]
    db $10

jr_001_7725:
    ld d, d
    ret z

    ld e, b
    jr c, jr_001_777c

    sub b
    ld e, [hl]
    ld h, b
    ld d, d
    cp b
    ld e, [hl]
    adc b
    ld d, d
    ldh [$5e], a
    or b
    ld d, d
    ret z

    ld e, b
    ret c

    ld d, d
    cp b
    ld e, [hl]
    nop
    ld d, e
    ld [$285f], sp
    ld d, e

jr_001_7742:
    add sp, $56
    ld d, b
    ld d, e
    add sp, $56
    ld a, b
    ld d, e
    add sp, $56
    and b
    ld d, e
    add sp, $56
    ret z

    ld d, e
    jr nc, @+$61

    ldh a, [rHDMA3]
    jr nc, @+$61

    jr jr_001_77ae

    add sp, $56
    ld b, b
    ld d, h
    ld e, b
    ld e, a
    ld l, b
    ld d, h
    add sp, $56
    sub b
    ld d, h
    add b
    ld e, a
    cp b
    ld d, h
    add b
    ld e, a
    ldh [rHDMA4], a
    xor b
    ld e, a
    ld [$d055], sp
    ld e, a
    jr nc, jr_001_77cb

    ld hl, sp+$5f
    ld e, b
    ld d, l

jr_001_777a:
    jr nz, jr_001_77dc

jr_001_777c:
    add b
    ld d, l
    ld c, b
    ld h, b
    xor b
    ld d, l
    ld [hl], b
    ld h, b
    ret nc

    ld d, l
    sbc b
    ld h, b
    ld hl, sp+$55
    ret nz

    ld h, b
    jr nz, jr_001_77e4

    add sp, $60
    ld c, b
    ld d, [hl]
    db $10
    ld h, c
    ld [hl], b
    ld d, [hl]
    jr c, @+$63

    sbc b
    ld d, [hl]
    ld h, b
    ld h, c
    adc b
    ld h, c
    add sp, $56
    or b
    ld h, c
    add sp, $56
    ret c

    ld h, c
    add sp, $56
    nop
    ld h, d
    add sp, $56
    jr z, jr_001_7810

jr_001_77ae:
    add sp, $56
    ld d, b
    ld h, d
    add sp, $56
    ld a, b
    ld h, d
    add sp, $56
    and b
    ld h, d
    add sp, $56
    ret z

    ld h, d
    add sp, $56
    ldh a, [$62]
    add sp, $56
    jr jr_001_7829

    xor b
    ld l, [hl]
    ld b, b
    ld h, e
    ret nc

jr_001_77cb:
    ld l, [hl]
    ld l, b
    ld h, e
    add sp, $56
    sub b
    ld h, e
    ret nc

    ld l, [hl]
    cp b
    ld h, e
    ld hl, sp+$6e
    ldh [$63], a
    add sp, $56

jr_001_77dc:
    ld [$e864], sp
    ld d, [hl]
    jr nc, jr_001_7846

    add sp, $56

jr_001_77e4:
    ld e, b
    ld h, h
    add sp, $56
    add b
    ld h, h
    add sp, $56
    xor b
    ld h, h
    add sp, $56
    ret nc

    ld h, h
    add sp, $56
    ld hl, sp+$64
    add sp, $56
    jr nz, jr_001_785f

    jr nz, @+$71

    ld c, b
    ld h, l
    ld c, b
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], b
    ld l, a
    sbc b
    ld h, l
    sbc b
    ld l, a
    ret nz

    ld h, l
    ret nz

    ld l, a
    add sp, $65
    add sp, $6f

jr_001_7810:
    db $10
    ld h, [hl]
    db $10
    ld [hl], b
    jr c, jr_001_787c

    jr c, jr_001_7888

    ld h, b
    ld h, [hl]
    ld h, b
    ld [hl], b
    adc b
    ld h, [hl]
    adc b
    ld [hl], b
    or b
    ld h, [hl]
    or b
    ld [hl], b
    ret c

    ld h, [hl]
    ret c

    ld [hl], b
    nop

jr_001_7829:
    ld h, a
    nop
    ld [hl], c
    jr z, jr_001_7895

    jr z, jr_001_78a1

    ld d, b
    ld h, a
    ld d, b
    ld [hl], c
    ld a, b
    ld h, a
    ld a, b
    ld [hl], c
    and b
    ld h, a
    add sp, $56
    ret z

    ld h, a
    and b
    ld [hl], c
    ldh a, [$67]
    ret z

    ld [hl], c
    jr jr_001_78ae

jr_001_7846:
    add sp, $56
    ld b, b
    ld l, b
    add sp, $56
    ld l, b
    ld l, b
    add sp, $56
    sub b
    ld l, b
    add sp, $56
    cp b
    ld l, b
    add sp, $56
    ldh [rBCPS], a
    add sp, $56
    ld [$e869], sp

jr_001_785f:
    ld d, [hl]
    jr nc, @+$6b

    ldh a, [$71]
    ld e, b
    ld l, c
    add sp, $56
    add b
    ld l, c
    jr jr_001_78de

    xor b
    ld l, c
    add sp, $56
    ret nc

    ld l, c
    ld b, b
    ld [hl], d
    ld hl, sp+$69
    add sp, $56
    jr nz, jr_001_78e4

    ld l, b
    ld [hl], d

jr_001_787c:
    ld c, b
    ld l, d
    sub b
    ld [hl], d
    ld c, b
    ld l, d
    sub b
    ld [hl], d
    ld c, b
    ld l, d
    sub b
    ld [hl], d

jr_001_7888:
    ld c, b
    ld l, d
    sub b
    ld [hl], d
    ld c, b
    ld l, d
    sub b
    ld [hl], d
    ld c, b
    ld l, d
    sub b
    ld [hl], d
    ld c, b

jr_001_7895:
    ld l, d
    sub b
    ld [hl], d
    ld c, b
    ld l, d
    sub b
    ld [hl], d
    ld c, b
    ld l, d
    sub b
    ld [hl], d
    ld c, b

jr_001_78a1:
    ld l, d
    sub b
    ld [hl], d
    ld [hl], b
    ld l, d
    cp b
    ld [hl], d
    sbc b
    ld l, d
    ldh [$72], a
    ret nz

    ld l, d

jr_001_78ae:
    ld [$e873], sp
    ld l, d
    jr nc, @+$75

    db $10
    ld l, e
    ld e, b
    ld [hl], e
    jr c, jr_001_7925

    add b
    ld [hl], e
    ld h, b
    ld l, e
    xor b
    ld [hl], e
    adc b
    ld l, e
    ret nc

    ld [hl], e
    or b
    ld l, e
    ld hl, sp+$73
    ret c

    ld l, e
    jr nz, jr_001_7940

    nop
    ld l, h
    ld c, b
    ld [hl], h
    jr z, jr_001_793e

    ld [hl], b
    ld [hl], h
    ld d, b
    ld l, h
    sbc b
    ld [hl], h
    ld a, b
    ld l, h
    ret nz

    ld [hl], h
    and b
    ld l, h

jr_001_78de:
    add sp, $74
    ret z

    ld l, h
    add sp, $56

jr_001_78e4:
    ldh a, [$6c]
    db $10
    ld [hl], l
    jr jr_001_7957

    jr c, jr_001_7961

    ld b, b
    ld l, l
    ld h, b
    ld [hl], l
    ld l, b
    ld l, l
    adc b
    ld [hl], l
    sub b
    ld l, l
    add sp, $56
    sub b
    ld l, l
    or b
    ld [hl], l
    cp b
    ld l, l
    or b
    ld [hl], l
    ldh [$6d], a
    or b
    ld [hl], l
    ld [$b06e], sp
    ld [hl], l
    jr nc, jr_001_7978

    or b
    ld [hl], l
    ld e, b
    ld l, [hl]
    or b
    ld [hl], l
    add b
    ld l, [hl]
    or b
    ld [hl], l
    nop
    ld a, [bc]
    inc d
    ld e, $28
    ld [hl-], a
    inc a
    ld b, [hl]
    ld d, b
    ld e, d
    ld h, h
    ld l, [hl]
    ld a, b
    add d
    adc h
    sub [hl]
    ld a, [de]

jr_001_7925:
    ld [$c659], a
    inc de
    ld c, a
    xor a

jr_001_792b:
    add $05
    dec c
    jr nz, jr_001_792b

    ld [$c65b], a
    ld a, [de]
    ld [$c65a], a
    ld b, a
    inc de
    ld c, a
    xor a

jr_001_793b:
    add $08
    dec c

jr_001_793e:
    jr nz, jr_001_793b

jr_001_7940:
    ld [$c65c], a
    ld h, d
    ld l, e
    xor a
    ldh [$a4], a

jr_001_7948:
    xor a
    ldh [$a5], a
    ld a, [$c659]
    ld c, a

jr_001_794f:
    push hl
    push bc
    ld b, [hl]
    ld de, $c663
    ld a, [de]
    ld l, a

jr_001_7957:
    inc de
    ld a, [de]
    ld h, a
    ld a, b
    sla a
    sla a
    rst $10
    ld a, [hl+]

jr_001_7961:
    ldh [$a6], a
    ld a, [hl+]
    ldh [$a7], a
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl+]
    ldh [$a9], a
    ld hl, $7914
    ldh a, [$a5]
    rst $10
    ld l, [hl]
    ld h, $00
    ldh a, [$a4]
    ld b, a

jr_001_7978:
    inc b

jr_001_7979:
    dec b
    jr z, jr_001_7989

    ld a, [$c659]
    ld c, a
    inc c

jr_001_7981:
    dec c
    jr z, jr_001_7979

    ld a, $50
    rst $10
    jr jr_001_7981

jr_001_7989:
    ld de, $cae7
    add hl, de
    ld d, h
    ld e, l
    push de
    ldh a, [$a6]
    ld l, a
    ldh a, [$a7]
    ld h, a
    call Call_001_79b8
    pop de
    inc de
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    call Call_001_79b8
    pop bc
    pop hl
    inc hl
    ldh a, [$a5]
    inc a
    ldh [$a5], a
    dec c
    jr nz, jr_001_794f

    ldh a, [$a4]
    inc a
    ldh [$a4], a
    dec b
    jr nz, jr_001_7948

    ret


Call_001_79b8:
    ld c, $08

jr_001_79ba:
    ld b, $05

jr_001_79bc:
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    dec b
    jr nz, jr_001_79bc

    push hl
    ld hl, $7914
    ld a, [$c659]
    dec a
    rst $18
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop hl
    dec c
    jr nz, jr_001_79ba

    ret


    ld hl, $0640
    call Call_000_047e
    ld hl, $79fc
    call Call_000_0368
    call Call_000_0295
    ld a, $11
    call Call_000_0263
    ld a, $c0
    call Call_000_02d8
    ld a, $c0
    call Call_000_02d8
    xor a
    ld [$c400], a
    jp Jump_000_0646


    sbc c
    dec b
    add hl, bc
    inc hl
    jr nz, @+$28

    ld [hl+], a
    nop
    daa
    ld d, d
    ld [hl+], a
    ld d, b
    nop
    ldh a, [rLCDC]
    bit 7, a
    ret z

    ldh a, [rIE]
    ldh [$8b], a
    res 0, a
    ldh [rIE], a

jr_001_7a16:
    ldh a, [rLY]
    cp $91
    jr nz, jr_001_7a16

    ldh a, [rLCDC]
    and $00
    ldh [rLCDC], a
    ldh a, [$8b]
    ldh [rIE], a
    ret


    ldh a, [rLCDC]
    or $83
    ldh [rLCDC], a
    ret


    ld a, $14
    call Call_000_0263
    ld a, $ff
    call Call_000_02d8
    ld a, $80
    call Call_000_02d8
    call Call_001_7a59
    xor a
    ld [$c404], a
    ld a, [hl]
    cp $3f
    jr nc, jr_001_7a51

    ld a, $01
    ld [$c400], a
    jp Jump_000_0646


jr_001_7a51:
    ld a, $07
    ld [$c400], a
    jp Jump_000_0646


Call_001_7a59:
    ld hl, $c413
    inc [hl]
    ld a, [hl]
    and $07
    cp $05
    jr z, jr_001_7a67

    cp $07
    ret c

jr_001_7a67:
    inc [hl]
    ret


    ld a, $13
    call Call_000_0263
    ld a, $ff
    call Call_000_02d8

jr_001_7a73:
    ld a, $08
    call Call_000_02d8
    ld hl, $c423
    ld a, [hl]
    and a
    jr z, jr_001_7a90

    dec [hl]
    ld hl, $1eff
    call Call_000_1f16
    call Call_000_1097
    ld a, $3e
    call Call_000_0263
    jr jr_001_7a73

jr_001_7a90:
    ld a, $40
    call Call_000_02d8
    call Call_001_7a59
    xor a
    ld [$c404], a
    ld a, $04
    ld [$c400], a
    jp Jump_000_0646


    ld a, [$c201]
    ld e, a
    ld a, [$c203]
    ld d, a
    ld hl, $2a78
    jp Jump_000_2322


    ld a, $90
    call Call_000_02d8
    xor a
    ld [$c41f], a
    ld [$c421], a
    ld [$c404], a
    ld hl, $c419
    ld a, [hl]
    and a
    jr z, jr_001_7acd

    dec [hl]
    ld a, $02
    jr jr_001_7acf

jr_001_7acd:
    ld a, $09

jr_001_7acf:
    ld [$c400], a
    ld hl, $c413
    ld a, [hl]
    and $07
    cp $06
    jp nz, Jump_000_0646

    dec [hl]
    dec [hl]
    jp Jump_000_0646


    and a
    ld b, $04

jr_001_7ae5:
    ld a, [de]
    adc [hl]
    daa
    ld [de], a
    dec de
    dec hl
    dec b
    jr nz, jr_001_7ae5

    jr nc, jr_001_7afb

    inc de
    ld b, $04
    ld a, $99

jr_001_7af5:
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_7af5

    scf

jr_001_7afb:
    ret


    ld a, d
    ldh [$90], a
    ld a, e
    ldh [$91], a
    ld de, $c435
    ld a, $03
    ldh [$a4], a

jr_001_7b09:
    push hl
    ld a, [bc]
    swap a
    and $0f
    rst $18
    ld [de], a
    inc de
    pop hl
    push hl
    ld a, [bc]
    and $0f
    rst $18
    ld [de], a
    inc de
    inc bc
    pop hl
    ldh a, [$a4]
    dec a
    ldh [$a4], a
    jr nz, jr_001_7b09

    ld b, $06
    ld hl, $c435
    jp Jump_000_0377


    ld a, [$c413]
    ld c, a
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ld hl, $4000
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ret


    inc hl
    inc hl
    ld a, [hl+]
    ld [$c661], a
    ld a, [hl+]
    ld [$c662], a
    ld a, [hl+]
    ld [$c663], a
    ld a, [hl+]
    ld [$c664], a
    ld a, [hl+]
    ld [$c1fd], a
    ret


    ld a, [hl+]
    ld [$c65f], a
    ld e, a
    ld a, [hl+]
    ld [$c660], a
    ld d, a
    ld hl, $c65d
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c413]
    and $07
    cp $07
    ret z

    ld a, [$c42f]
    bit 0, a
    ret z

    ld hl, $c455
    ld de, $c65d
    ld bc, $0004
    jp Jump_000_035f


    ld a, [$c413]
    and $07
    cp $07
    jr z, jr_001_7b97

    ld hl, $c42f
    bit 0, [hl]
    jr z, jr_001_7b97

    res 0, [hl]

jr_001_7b97:
    xor a
    ld [$c0da], a
    ld [$c0dc], a
    pop hl
    ld a, l
    ld [$c65f], a
    ld a, h
    ld [$c660], a
    ret


    ld hl, $2e6b
    ld de, $207e
    call Call_000_2322
    ld hl, $2e72
    ld de, $5880
    call Call_000_2322
    ld hl, $2ef7
    ld de, $8870
    jp Jump_000_2322


    ld hl, $2c75
    ld de, $5748
    call Call_000_2322
    ld hl, $2d41
    ld de, $602c
    call Call_000_2322
    ld a, $c0
    ld [$c65d], a
    ld a, $07
    ldh [rWX], a
    ld a, $58
    ldh [rWY], a
    call Call_000_02d1
    call Call_000_0295
    ld a, $7f
    call Call_000_0263
    ret


    inc l
    sbc c
    add hl, de
    call nz, $9a02
    ld a, [de]
    call nz, $9a06
    dec de
    call nz, $9a0a
    inc e
    call nz, $9a0e
    dec e
    call nz, $9a12
    ld e, $c4
    nop
    nop
    ld hl, $7bee

jr_001_7c0b:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and a
    ret z

    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $0630
    ld a, [bc]
    cp $09
    jr c, jr_001_7c21

    ld a, $09
    ld [bc], a

jr_001_7c21:
    call Call_000_053d
    pop hl
    jr jr_001_7c0b

    db $10
    inc c
    inc c
    inc c
    ld [$2110], sp
    inc b
    call nz, $46cb
    jr nz, jr_001_7c4a

    inc [hl]
    ld a, [$c428]
    and $1c
    srl a
    srl a
    ld hl, $7c27
    rst $18
    ld b, a
    ld hl, $c422
    ld a, $b4
    ld [hl+], a
    ld [hl], b

jr_001_7c4a:
    ld a, $07
    ldh [rWX], a
    ld a, $88
    ldh [rWY], a
    call Call_000_02d1
    call Call_000_0295
    ld a, [$c1fd]
    jp Jump_000_0263


    xor a
    inc d
    inc b
    xor a
    jr jr_001_7c68

    xor a
    ld [hl], $02
    xor a

jr_001_7c68:
    jr c, jr_001_7c6e

    xor a
    inc a
    inc b
    nop

jr_001_7c6e:
    call Call_000_0301
    ld a, $00
    call Call_000_0350
    ld hl, $c200
    ld bc, $0200
    call Call_000_0348
    ld hl, $c659
    ld bc, $0c0e
    call Call_000_0348
    ld hl, $ff9a
    ld bc, $0006
    call Call_000_0348
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ldh [$a0], a
    ldh a, [rLCDC]
    or $04
    ldh [rLCDC], a
    ret


    inc b
    dec b
    inc b
    dec b
    nop
    ld bc, $0100
    ld hl, $ff8d
    ld a, [hl]
    and a
    scf
    ret z

    bit 4, [hl]
    jr z, jr_001_7cc1

    ld a, [$c405]
    cp $02
    jr z, jr_001_7cbd

    xor a
    ld [$c405], a

jr_001_7cbd:
    ld b, $04
    jr jr_001_7cdb

jr_001_7cc1:
    bit 5, [hl]
    jr z, jr_001_7cc9

    ld b, $05
    jr jr_001_7cdb

jr_001_7cc9:
    bit 0, [hl]
    jr z, jr_001_7cd1

    ld b, $00
    jr jr_001_7cdb

jr_001_7cd1:
    bit 1, [hl]
    jr z, jr_001_7cd9

    ld b, $01
    jr jr_001_7cdb

jr_001_7cd9:
    ld b, $ff

jr_001_7cdb:
    ld hl, $c407
    ld a, [$c405]
    rst $10
    ld [hl], b
    ld a, [$c405]
    inc a
    and $07
    ld [$c405], a
    scf
    ret nz

    ld hl, $c407
    ld de, $7c9f
    ld b, $08

jr_001_7cf6:
    ld a, [de]
    cp [hl]
    jr nz, jr_001_7d02

    inc de
    inc hl
    dec b
    jr nz, jr_001_7cf6

    scf
    ccf
    ret


jr_001_7d02:
    scf
    ret


    sbc b
    ld b, c
    ld de, $2743
    ld d, b
    dec [hl]
    ld sp, $4100
    ld [hl+], a
    dec [hl]
    ld [hl+], a
    ld hl, $0051
    ld h, $27
    ld sp, $9822
    and e
    dec bc
    ld [hl-], a
    ld [hl+], a
    ld d, b
    ld [hl], $00
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_001_7d5b

    ld sp, $c398
    dec bc
    dec [hl]
    jr nz, @+$27

    ld [hl+], a
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_001_7d69

    ld sp, $e398
    dec c
    ld sp, $4122
    ld [hl+], a
    ld d, b
    ld d, c
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_001_7d79

    ld sp, $0399
    ld a, [bc]
    inc h
    ld hl, $0022
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_001_7d86

    ld sp, $2399
    dec bc
    ld hl, $5220
    ld [hl+], a
    nop
    inc h
    ld b, c

jr_001_7d5b:
    dec [hl]
    jr nz, jr_001_7d94

    ld sp, $4399
    inc c
    ld hl, $2735
    ld b, d
    ld sp, $2400

jr_001_7d69:
    ld b, c
    dec [hl]
    jr nz, jr_001_7da3

    ld sp, $6399
    ld c, $52
    daa
    dec [hl]
    ld hl, $3620
    daa
    nop

jr_001_7d79:
    inc h
    ld b, c
    dec [hl]
    jr nz, @+$38

    ld sp, $8399
    rrca
    ld sp, $3624
    daa

jr_001_7d86:
    ld b, c
    jr nz, jr_001_7dcb

    ld d, b
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, @+$38

    ld sp, $9800
    ld b, h

jr_001_7d94:
    rlca
    ld h, $27
    ld sp, $0022
    ld [hl], $27
    nop
    ld hl, $7d92
    call Call_000_0368

jr_001_7da3:
    call Call_000_0295

jr_001_7da6:
    call Call_001_7dc8
    ld a, $01
    call Call_000_02d8
    ld hl, $c400
    ldh a, [$8d]
    bit 0, a
    jr z, jr_001_7dba

    inc [hl]
    jr jr_001_7da6

jr_001_7dba:
    bit 1, a
    jr z, jr_001_7dc1

    dec [hl]
    jr jr_001_7da6

jr_001_7dc1:
    bit 3, a
    jr z, jr_001_7da6

    jp Jump_000_0646


Call_001_7dc8:
    ld hl, $c400

jr_001_7dcb:
    ld a, [hl]
    and $0f
    ld [hl], a
    ld de, $984d
    ld hl, $0630
    call Call_000_0551
    ret


    xor a
    ld [$c200], a
    ld [$c0dc], a
    ld [$c0d8], a
    ld [$c0da], a
    ld [$c424], a
    ld [$c425], a
    ld [$c420], a
    ld [$c306], a
    ld [$c308], a
    ld [$c30c], a
    ld [$c426], a
    ld [$c42c], a
    ld [$c42d], a
    ld [$c426], a
    ld [$c427], a
    ld [$c42a], a
    ld hl, $c428
    ld a, [hl]
    and $1c
    cp $14
    jr c, jr_001_7e15

    xor a

jr_001_7e15:
    ld [hl], a
    ret


    sbc b
    ld b, h
    rlca
    jr nz, @+$52

    ld [hl+], a
    jr nz, jr_001_7e1f

jr_001_7e1f:
    ld [hl], $27

jr_001_7e21:
    sbc b
    ld h, h
    rlca
    ld [hl], $27
    ld sp, $5122

jr_001_7e29:
    inc sp
    nop
    nop
    ld a, $01
    ld [$c400], a
    ld a, $06
    ld [$c419], a
    ld a, $02
    ld [$c41a], a
    ld [$c41b], a
    ld [$c41c], a
    ld [$c41d], a
    jp Jump_000_0646


    xor a
    ldh [$a3], a
    ld a, $f0
    ldh [$a2], a
    ld [$c65d], a
    ld a, $44
    ldh [$a1], a
    ldh [$a0], a
    jp Jump_000_0295


    ld a, [$c413]
    srl a
    srl a
    srl a
    ld b, a
    push bc
    ld hl, $7e8f
    ld a, b
    rst $20
    ld hl, $2d8e
    ld a, [$c402]
    bit 6, a
    jr z, jr_001_7e77

    ld hl, $2de5

jr_001_7e77:
    call Call_000_2322
    pop bc
    ld a, b
    and a
    ret z

jr_001_7e7e:
    push bc
    ld hl, $7e9f
    ld a, b
    rst $20
    ld hl, $2e07
    call Call_000_2322
    pop bc
    dec b
    jr nz, jr_001_7e7e

    ret


    add a
    db $10
    ld d, b
    jr z, jr_001_7ec4

    jr z, jr_001_7ebe

    ld e, b
    jr nc, jr_001_7e21

    ld h, b
    adc b
    ld [hl], b
    ld e, b
    ld [hl], b
    ld b, b
    nop
    nop
    ld e, b
    jr jr_001_7ecc

    jr nz, @+$22

    ld d, b
    jr z, jr_001_7e29

    ld e, b

jr_001_7eaa:
    add b
    add b
    ld l, b
    add b
    jr nc, jr_001_7eaa

    jr z, @-$3a

    and $1c
    jr z, jr_001_7ecf

    ld hl, $c41a
    srl a
    srl a
    dec a

jr_001_7ebe:
    rst $10
    ld a, [hl]
    cp $09
    ret nc

    inc [hl]

jr_001_7ec4:
    ld a, [$c428]
    and $e3
    ld [$c428], a

jr_001_7ecc:
    jp Jump_000_0a68


jr_001_7ecf:
    ld hl, $c41f
    bit 0, [hl]
    ret z

    ld hl, $c41e
    ld a, [hl]
    cp $09
    ret nc

    inc [hl]
    ld hl, $c41f
    res 0, [hl]
    jp Jump_000_0a68


    ld hl, $7f0c

jr_001_7ee8:
    ld a, [hl+]
    ldh [$91], a
    ld a, [hl+]
    and a
    ret z

    ldh [$90], a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld a, [bc]
    and a
    jr nz, jr_001_7f00

    ld de, $7f30

jr_001_7f00:
    ld a, e
    or d
    jr z, jr_001_7f09

    ld h, d
    ld l, e
    call Call_000_03e1

jr_001_7f09:
    pop hl
    jr jr_001_7ee8

    add c
    sbc c
    ld a, [de]
    call nz, Call_001_7f26
    add l
    sbc c
    dec de
    call nz, Call_001_7f26
    adc c
    sbc c
    inc e
    call nz, Call_001_7f3e
    adc l
    sbc c
    dec e
    call nz, Call_001_7f4c
    nop
    nop

Call_001_7f26:
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    adc $ca
    nop
    rst $08
    rlc b

Call_001_7f3e:
    inc bc
    inc b
    nop
    add [hl]
    sub b
    nop
    add a
    sub c
    sub d
    sub h
    sub [hl]
    sub e
    sub l
    sub a

Call_001_7f4c:
    inc bc
    inc b
    nop
    or h
    or [hl]
    nop
    or l
    or a
    and b
    and d
    and h
    and c
    and e
    and l
    sbc b
    ld [hl+], a
    db $10
    and c
    and a
    or [hl]
    and e
    ret nc

    and b
    pop de
    jp nz, $a0b5

    pop de
    and h
    and a
    or [hl]
    pop bc
    ldh a, [$98]
    ld h, e
    ld c, $c4
    and a
    jp nz, $b380

    and b
    jp nc, $80a2

    pop bc
    and b
    jp nc, $b1a2

    sbc b
    and d
    db $10
    call nz, $c2a7
    ret nc

    add b
    or l
    and a
    jp nc, $b5a2

    call nz, $d180
    and h
    or [hl]
    and b
    sbc b
    add sp, $04
    or d
    ret nc

    and a
    and [hl]
    sbc c
    inc h
    inc c
    pop de
    or e
    and d
    add b
    and [hl]
    and a
    or [hl]
    pop bc
    pop de
    and d
    ret nc

    pop bc
    nop
    or [hl]
    and b
    sbc b
    add sp, $04
    or d
    ret nc

    and a
    and [hl]
    sbc c
    inc h
    inc c
    pop de
    or e
    and d
    add b
    and [hl]
    and a
    or [hl]
    pop bc
    pop de
    and d
    ret nc

    pop bc
    nop
    pop de
    and d
    ret nc

    pop bc
    nop
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
