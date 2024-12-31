; Disassembly of "Adventure Island (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_002_403d

    jr c, @+$2a

    rla
    jr z, jr_002_406b

    ld de, $2911
    db $10
    ld a, [hl+]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_002_403d:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_002_4059

    ld a, [hl-]
    jr z, jr_002_4063

    ld de, $1111
    ld de, $1111
    ld de, $1611
    dec hl
    ld de, $1011

jr_002_4059:
    db $10
    add hl, hl
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_002_4063:
    jr c, @+$12

    ld a, [hl-]
    jr z, jr_002_407f

    ld de, $1616

jr_002_406b:
    rla
    rla
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1611
    dec hl
    ld de, $1011
    db $10
    add hl, hl

jr_002_407f:
    db $10
    db $10
    ld a, [hl-]
    ld e, e
    ld de, $1111
    ld de, $1111
    ld d, $11
    ld de, $1117
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $2a11
    db $10
    ld de, $1029
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rlca
    db $10
    rlca
    db $10
    jr nc, @+$33

    ld b, b
    ld b, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, @+$2a

    jr c, jr_002_40f2

    rla
    ld de, $2939
    ld de, $102c
    db $10
    add hl, sp
    add hl, hl
    db $10
    db $10
    db $10
    db $10
    rlca
    db $10
    rlca
    db $10
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    db $10
    db $10
    db $10
    db $10
    ld a, [hl-]
    ld de, $1149
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld a, [hl+]

jr_002_40f2:
    ld de, $1048
    db $10
    db $10
    db $10
    rlca
    db $10
    rlca
    db $10
    ld [hl], b
    ld [hl], c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, c
    ld c, c
    db $10
    db $10
    ld c, b
    ld e, b
    db $10
    db $10
    ld c, b
    ld c, c
    db $10
    db $10
    ld c, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rlca
    db $10
    rlca
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld b, $07
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    daa
    ld e, a
    dec bc
    dec b
    dec b
    ld a, a
    ld a, a
    dec b
    dec b
    ld a, a
    ld a, a
    dec b
    dec b
    ld l, [hl]
    ld l, a
    dec b
    dec b
    ld a, a
    ld a, a
    dec b
    dec b
    ld a, a
    ld a, a
    dec b
    dec b
    ld a, a
    ld a, a
    dec b
    dec b
    ld a, a
    ld a, a
    dec b
    dec de
    ld a, a
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec c
    ld a, a
    dec c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nc, jr_002_41d3

    ld b, b
    ld sp, $4132
    ld b, d
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    dec [hl]
    db $10
    ld b, l
    db $10
    jr nc, jr_002_4203

    ld b, b

jr_002_41d3:
    ld b, c
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    inc [hl]
    dec [hl]
    ld b, h
    ld b, l
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, b
    db $10
    ld h, b
    ld d, c
    ld d, d
    ld h, c
    ld h, d
    ld d, e
    ld d, h
    ld h, e
    ld h, h
    ld d, l
    db $10
    ld h, l
    ld h, [hl]
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    db $10
    db $10
    ld h, [hl]
    db $10
    db $10
    ld [hl], b
    db $10

jr_002_4203:
    db $10
    ld [hl], c
    ld [hl], d
    db $10
    inc d
    ld [hl], e
    ld [hl], h
    dec d
    db $10
    ld [hl], l
    db $76
    db $10
    db $10
    ld [hl], b
    ld [hl], c
    db $10
    db $10
    ld [hl], d
    ld [hl], e
    inc d
    dec d
    ld [hl], h
    ld [hl], l
    db $10
    db $10
    db $76
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $10
    ld b, $07
    db $10
    rlca
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld b, $07
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $10
    ld b, $07
    db $10
    rlca
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld b, $07
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl], $37
    ld b, [hl]
    ld b, a
    db $10
    db $10
    ld h, [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nc, jr_002_429b

    ld b, b
    ld sp, $4132
    ld b, d
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    dec [hl]
    db $10
    ld b, l
    db $10
    db $10
    db $10
    db $10

jr_002_429b:
    db $10
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    db $76
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, b
    db $10
    ld h, b
    ld d, c
    ld d, d
    ld h, c
    ld h, d
    ld d, e
    ld d, h
    ld h, e
    ld h, h
    ld d, l
    db $10
    ld h, l
    ld h, [hl]
    db $10
    db $10
    db $10
    db $10
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl], b
    db $10
    db $10
    ld [hl], c
    ld [hl], d
    db $10
    inc d
    ld [hl], e
    ld [hl], h
    dec d
    db $10
    ld [hl], l
    db $76
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    db $10
    ld b, $10
    ld b, $07
    db $10
    rlca
    db $10
    inc [hl]
    dec [hl]
    ld b, h
    ld b, l
    db $10
    ld b, $10
    ld b, $10
    db $10
    db $10
    db $10
    ld c, $0f
    ld e, $1f
    ld l, $2f
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld [bc], a
    rra
    db $10
    ld b, $66
    ld b, $07
    db $10
    rlca
    db $10
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    db $10
    ld b, $66
    ld b, $0e
    rrca
    ld e, $1f
    ld l, $2f
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld [bc], a
    rra
    ld l, $2f
    ld a, $3f
    db $76
    ld b, $10
    ld b, $07
    db $10
    rlca
    db $10
    ld [hl], h
    ld [hl], l
    db $10
    db $10
    db $76
    ld b, $10
    ld b, $2e
    cpl
    ld a, $3f
    nop
    nop
    nop
    nop
    ld l, $2f
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld [bc], a
    rra
    db $10
    ld b, $10
    ld b, $07
    db $10
    rlca
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $10
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
    nop
    ld l, $2f
    ld a, $3f
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $10
    ld b, $07
    db $10
    rlca
    db $10
    db $10
    db $10
    db $10
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
    ld c, [hl]
    ld c, a
    ld [bc], a
    rra
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    ld l, $2f
    ld a, $3f
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld a, [hl]
    inc b
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld [de], a
    ld c, $03
    inc bc
    rrca
    ld c, $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld a, [hl]
    inc b
    ld a, [hl]
    inc b
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld a, b
    ld l, b
    ld a, b
    ld l, b
    ld a, a
    ld a, a
    ld c, $0f
    ld a, a
    ld c, $0e
    rrca
    rrca
    ld c, $03
    inc bc
    ld e, a
    ld e, a
    ld a, [hl]
    inc b
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld a, b
    ld l, b
    ld a, b
    ld l, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld a, a
    ld a, a
    dec b
    dec b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $10
    ld hl, $0a10
    inc bc
    inc bc
    ld e, a
    ld e, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    ld l, d
    ld a, e
    ld l, e
    dec b
    dec b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    db $10
    ld a, [de]
    db $10
    inc c
    dec b
    dec b
    ld a, a
    ld a, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    ld h, $10
    ld h, a
    ld h, $10
    db $10
    db $10
    db $10
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, a
    ld [de], a
    ld a, d
    ld [hl], a
    ld [de], a
    ld h, a
    ld [de], a
    ld [de], a
    ld h, $10
    ld h, a
    ld h, $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_002_449b

    ld a, [hl]
    inc bc
    inc bc
    ld e, a
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld [de], a
    ld a, d
    ld [hl], a
    ld [de], a
    ld h, a
    ld [de], a
    ld [de], a
    ld h, $10
    ld h, a
    ld h, $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_002_44b7

    ld a, [hl]
    ld a, [hl]
    ld [de], a
    ld [de], a

jr_002_449b:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld l, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld [de], a
    ld a, d
    ld [hl], a
    ld [de], a
    ld h, a
    ld [de], a
    ld [de], a
    inc bc
    inc bc
    ld e, a
    ld e, a
    ld a, [hl]
    ld [de], a
    ld [de], a

jr_002_44b7:
    ld [de], a
    ld [de], a
    ld l, d
    ld a, e
    ld l, e
    dec b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    ld l, b
    ld a, a
    ld a, a
    dec b
    dec b
    ld a, a
    ld a, a
    dec b
    dec b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec c
    db $10
    dec c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nc, jr_002_4535

    db $10
    db $10
    ld [hl-], a
    inc sp
    db $10
    db $10
    inc [hl]
    dec [hl]
    db $10
    db $10
    db $10
    db $10
    dec c
    db $10
    dec c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld hl, $0a10
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    db $10
    db $10
    db $10
    db $10
    ld c, $0f
    db $10
    rra
    db $10

jr_002_4535:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, [de]
    db $10
    inc c
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    db $10
    db $76
    db $10
    ld c, $0f
    db $10
    rra
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    db $10
    inc c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    db $10
    inc c
    daa
    db $10
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    ld hl, $0a03
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc h
    dec h
    ld e, [hl]
    ld h, a
    db $10
    db $10
    inc h
    dec h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec de
    db $10
    dec c
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, [de]
    dec b
    inc c
    ld a, a
    ld l, c
    ld a, c
    ld a, a
    ld a, a
    ld [de], a
    ld [de], a
    ld l, c
    ld a, c
    ld e, [hl]
    ld h, a
    ld [de], a
    ld [de], a
    inc h
    dec h
    ld e, [hl]
    ld h, a
    db $10
    db $10
    inc h
    dec h
    dec c
    db $10
    dec c
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    ld a, a
    inc c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    ld a, c
    ld a, a
    ld a, a
    ld [de], a
    ld [de], a
    ld l, c
    ld a, c
    ld e, [hl]
    ld h, a
    nop
    nop
    dec c
    db $10
    dec c
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    ld a, a
    inc c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    dec c
    inc bc
    ld a, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    db $10
    db $10
    inc h
    dec h
    db $10
    db $10
    db $10
    db $10
    ld [de], a
    ld l, d
    ld a, e
    ld l, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    ld l, b
    ld a, a
    ld a, a
    ld a, a
    dec b
    ld a, a
    ld a, a
    dec b
    dec b
    ld a, a
    ld a, a
    ld e, [hl]
    ld h, a
    inc de
    inc de
    inc bc
    inc bc
    ld e, a
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, $6a
    ld l, e
    ld a, d
    ld a, e
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    ld c, $0f
    ld e, $0e
    ld c, $0f
    rrca
    rra
    ld [hl], $1c
    ld b, [hl]
    dec l
    inc e
    scf
    dec l
    ld b, a
    db $10
    db $10
    db $10
    ld c, $0e
    rrca
    rrca
    rra
    ld c, $0f
    db $10
    ld c, $0e
    rrca
    rrca
    ld c, $0e
    rrca
    ld e, $0e
    ld c, $0f
    rrca
    nop
    ld b, [hl]
    dec l
    ld b, [hl]
    dec l
    dec l
    ld b, a
    dec l
    ld b, a
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, [hl]
    dec l
    ld b, [hl]
    dec l
    dec l
    ld b, a
    dec l
    ld b, a
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_002_46f9

    ld d, b
    ld sp, $4032
    ld d, b
    inc sp
    inc [hl]
    ld b, b
    ld d, b
    dec [hl]
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, [hl]
    dec l
    ld d, [hl]
    dec e
    dec l
    ld b, a
    dec e
    ld d, a
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, c
    ld b, d
    ld d, c
    ld d, d
    ld b, e
    ld b, h
    ld d, e
    ld d, h
    ld b, l
    ld d, b
    ld d, l
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    inc bc
    inc bc
    ld e, a
    ld e, a
    inc bc
    inc bc
    ld e, a
    ld e, a
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    ld h, b
    ld b, b
    ld [hl], b
    ld h, c
    ld h, d
    ld [hl], c
    ld [hl], d
    ld h, e
    ld h, h
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, [hl]
    ld [hl], l
    db $76
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    db $10

jr_002_46f9:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc a
    dec a
    jr jr_002_471e

    db $10
    ld l, h
    db $10
    db $10
    ld l, l
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr jr_002_472d

    db $10

jr_002_471e:
    db $10
    db $10
    db $10
    db $10
    inc a
    dec a
    inc a
    dec a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_002_472d:
    db $10
    db $10
    db $10
    ld a, h
    ld a, l
    db $10
    ld a, h
    ld l, l
    inc a
    ld bc, $3d7d
    db $10
    ld l, l
    db $10
    ld l, h
    ld l, l
    db $10
    ld e, h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, $0f
    rrca
    ld c, $00
    nop
    rrca
    nop
    db $10
    db $10
    ld l, h
    ld l, l
    db $10
    db $10
    db $10
    db $10
    inc bc
    daa
    ld e, a
    dec bc
    db $10
    db $10
    ld [hl], $37
    db $10
    db $10
    ld [hl], $37
    ld hl, $0a03
    ld e, a
    ld c, $0f
    rrca
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    ld e, $0e
    ld c, $0f
    rrca
    ccf
    dec b
    dec de
    ld a, d
    dec de
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld a, [de]
    dec b
    ld a, [de]
    ld a, a
    ld c, $0f
    rrca
    ld c, $0e
    rrca
    rrca
    ccf
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec de
    ld a, d
    dec de
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld a, [de]
    ld a, a
    ld a, [de]
    ld a, a
    ld c, $0f
    nop
    ld c, $0e
    rrca
    rrca
    ccf
    ld c, $0f
    nop
    ld c, $0e
    rrca
    rrca
    ld c, $10
    db $10
    db $10
    ld c, $0e
    rrca
    rrca
    ld c, $10
    db $10
    jr @+$12

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    ld c, $0e
    rrca
    rrca
    ld c, $0e
    rrca
    db $10
    ld c, $0e
    rrca
    rrca
    ld c, $10
    ld l, h
    db $10
    db $10
    ld l, l
    db $10
    ld e, h
    ld l, h
    db $10
    db $10
    ld l, l
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_002_4833

    jr c, jr_002_4845

    jr z, @+$2b

    jr c, jr_002_4849

    ld e, d
    dec l
    ld l, d
    dec l
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    nop
    add hl, hl
    nop
    add hl, sp
    jr z, jr_002_484b

    jr c, jr_002_4894

    jr z, @+$2b

    ld [hl], c
    ld [hl], d
    jr z, jr_002_4853

    jr c, @+$3b

    jr z, @+$2b

    jr c, jr_002_4869

    ld a, d
    dec l
    ld e, d

jr_002_4833:
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    nop
    add hl, hl
    nop
    add hl, sp
    jr z, jr_002_4872

    jr c, jr_002_4884

    ld [hl-], a

jr_002_4845:
    inc sp
    ld b, d
    ld b, e
    nop

jr_002_4849:
    nop
    nop

jr_002_484b:
    nop
    jr z, jr_002_4877

    jr c, jr_002_4889

    ld l, d
    ld c, l
    ld a, d

jr_002_4853:
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld c, h
    ld c, l
    inc l
    dec l
    nop
    add hl, hl
    nop
    add hl, sp
    jr z, jr_002_488b

    ld [hl], e
    ld [hl], h
    jr z, @+$2b

    ld [hl], c
    ld [hl], d
    nop

jr_002_4869:
    nop
    nop
    nop
    jr z, @+$2b

    jr c, jr_002_48a9

    ld e, d
    dec a

jr_002_4872:
    ld l, d
    ld c, l
    ld a, $3f
    ld c, [hl]

jr_002_4877:
    ld c, a
    inc a
    dec a
    ld c, h
    ld c, l
    nop
    add hl, hl
    nop
    add hl, sp
    inc [hl]
    ld sp, $4144

jr_002_4884:
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    nop

jr_002_4889:
    nop
    nop

jr_002_488b:
    nop
    jr z, @+$2b

    jr c, jr_002_48c9

    ld a, d
    dec l
    ld e, d
    dec a

jr_002_4894:
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    nop
    add hl, hl
    nop
    add hl, sp
    ld h, e
    ld h, b
    nop
    nop
    ld h, c
    ld d, e
    nop
    jr nz, jr_002_48a9

jr_002_48a9:
    nop
    nop
    nop
    jr z, jr_002_48d7

    jr c, jr_002_48e9

    ld l, d
    ld c, l
    ld a, d
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld c, h
    ld c, l
    inc l
    dec l
    nop
    add hl, hl
    nop
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_002_48c7

jr_002_48c7:
    ld b, b
    nop

jr_002_48c9:
    nop
    nop
    nop
    jr z, @+$2b

    jr c, @+$3b

    ld e, d
    dec a
    ld l, d
    ld c, l
    ld a, $3f
    ld c, [hl]

jr_002_48d7:
    ld c, a
    inc a
    dec a
    ld c, h
    ld c, l
    nop
    add hl, hl
    nop
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    jr nz, jr_002_4911

jr_002_48e9:
    ld d, b
    jr c, jr_002_490c

    ld d, d
    ld d, e
    ld [hl+], a
    inc hl
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_002_4907

jr_002_4907:
    ld b, b
    jr z, jr_002_493a

    jr c, jr_002_494c

jr_002_490c:
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld a, [bc]

jr_002_4911:
    dec bc
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    ld d, h
    ld h, b
    dec h
    nop
    ld h, c
    ld h, d
    nop
    nop
    ld d, l
    nop
    dec h
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    nop
    nop
    ld a, [hl-]
    dec sp

jr_002_493a:
    ld c, d
    ld c, e
    nop
    nop
    nop
    nop
    dec [hl]
    nop
    ld b, l
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    nop
    ld b, l
    nop

jr_002_494c:
    nop
    nop
    nop
    nop
    ld c, d
    ld c, e
    jr @+$1b

    nop
    nop
    jr @+$1b

    nop
    nop
    jr @+$1b

    nop
    nop
    jr @+$1b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$2b

    jr c, jr_002_49a9

    jr z, jr_002_499b

    ld c, b
    ld a, l
    jr z, @+$2b

    ld a, [hl]
    ld a, a
    jr z, @+$2b

    ld a, h
    ld a, l
    jr z, jr_002_49a7

    ld a, [hl]
    ld c, c
    jr z, jr_002_49ab

    jr c, jr_002_49bd

    jr z, @+$2b

    jr c, @+$3b

    jr z, jr_002_49b3

    jr c, jr_002_49c5

    jr z, jr_002_49b7

    jr c, @+$3b

    ld e, d
    cpl
    ld a, d
    dec l
    inc l
    dec l
    ld l, $2f
    ld l, $2f
    inc l

jr_002_499b:
    dec l
    inc l
    ld l, e
    ld l, $7b
    jr z, @+$2b

    jr c, jr_002_49dd

    ld c, b
    ld a, l
    ld e, d

jr_002_49a7:
    cpl
    ld a, [hl]

jr_002_49a9:
    ld a, a
    inc l

jr_002_49ab:
    dec l
    ld a, h
    ld a, l
    ld l, $2f
    inc a
    dec a
    ld c, h

jr_002_49b3:
    ld c, l
    inc b
    dec b
    inc d

jr_002_49b7:
    dec d
    inc b
    dec b
    inc d
    dec d
    nop

jr_002_49bd:
    nop
    nop
    nop
    jr z, @+$2b

    ld a, [hl]
    ld a, l
    ld a, d

jr_002_49c5:
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_49dd:
    nop
    nop
    nop
    inc l
    dec l
    ld l, $2f
    ld c, h
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    jr z, jr_002_4a17

    jr c, jr_002_4a29

    jr z, jr_002_4a1b

    jr c, jr_002_4a3c

    jr z, @+$2b

    ld a, l
    ld a, [hl]
    jr z, jr_002_4a23

    ld c, c
    nop
    jr z, @+$2b

    jr c, jr_002_4a39

    nop
    nop
    nop
    nop
    jr z, jr_002_4a2f

    jr c, jr_002_4a41

    jr z, jr_002_4a33

    jr c, @+$3b

    jr z, jr_002_4a37

    jr c, jr_002_4a49

    jr z, jr_002_4a6c

    jr c, jr_002_4a8e

    dec a
    ld a, $2d

jr_002_4a17:
    ld l, $6b
    nop
    ld a, e

jr_002_4a1b:
    nop
    jr z, @+$2b

    jr c, jr_002_4a59

    ld a, h
    ld a, l
    inc a

jr_002_4a23:
    dec a
    ld a, [hl]
    ld c, c
    ld a, $6b
    nop

jr_002_4a29:
    add hl, hl
    nop
    add hl, sp
    nop
    nop
    nop

jr_002_4a2f:
    nop
    nop
    nop
    nop

jr_002_4a33:
    nop
    nop
    nop
    nop

jr_002_4a37:
    nop
    ld b, [hl]

jr_002_4a39:
    ld b, a
    nop
    nop

jr_002_4a3c:
    ld b, [hl]
    ld b, a
    nop
    nop
    inc l

jr_002_4a41:
    dec l
    inc a
    dec a
    ld l, $7b
    ld a, $3f
    nop

jr_002_4a49:
    add hl, hl
    ld a, h
    ld a, l
    jr z, @+$2b

    ld a, [hl]
    ld c, c
    jr z, jr_002_4a7b

    nop
    add hl, sp
    jr z, jr_002_4a7f

    jr c, jr_002_4a91

    nop

jr_002_4a59:
    nop
    nop
    nop
    ld c, b
    ld a, l
    ld e, d
    cpl
    ld c, h
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    inc a
    dec a
    inc l
    dec l

jr_002_4a6c:
    ld a, $6b
    ld l, $7b
    nop
    add hl, hl
    nop
    add hl, sp
    jr z, jr_002_4a9f

    jr c, jr_002_4ab1

    ld b, [hl]
    ld b, a
    nop

jr_002_4a7b:
    nop
    ld b, [hl]
    ld b, a
    nop

jr_002_4a7f:
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld c, b
    nop
    ld e, d
    ld a, l
    ld a, [hl]
    inc a
    ld a, $2f
    cpl

jr_002_4a8e:
    ccf
    ccf
    ld a, h

jr_002_4a91:
    ld a, l
    inc a
    dec a
    nop
    nop
    nop
    nop
    ld a, l
    ld a, [hl]
    ld e, d
    ld a, $49
    nop
    ld l, e

jr_002_4a9f:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    nop
    ld e, d
    dec l
    ld c, [hl]
    dec a
    ld l, $4e
    ld c, a
    ld l, $2f
    ld c, h

jr_002_4ab1:
    ld c, l
    inc l
    dec l
    nop
    nop
    nop
    nop
    inc l
    dec l
    inc a
    dec a
    ld d, e
    nop
    ld h, e
    nop
    ld h, $47
    ld d, $00
    ld b, [hl]
    ld b, a
    nop
    nop
    ld b, [hl]
    ld e, d
    nop
    ld l, d
    dec a
    ld a, $4d
    ld c, [hl]
    ld l, e
    nop
    ld a, e
    nop
    ld b, [hl]
    ld b, a
    nop
    nop
    ld b, [hl]
    ld b, a
    nop
    nop
    ld b, [hl]
    inc bc
    nop
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    nop
    ld e, d
    dec l
    ld l, $3d
    ld a, $5b
    nop
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld h, l
    ld [hl], l
    ld b, [hl]
    ld b, a
    ld h, l
    ld [hl], l
    ld b, [hl]
    ld l, d
    ld h, l
    ld a, d
    ld c, l
    ld c, [hl]
    dec l
    ld l, $7b
    nop
    ld e, e
    ld h, l
    ld b, [hl]
    ld b, a
    ld [hl], l
    ld h, l
    jr z, jr_002_4b43

    ld a, h
    ld a, l
    jr z, jr_002_4b47

    ld a, [hl]
    ld a, a
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, c
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, c
    ld h, [hl]
    ld e, d
    ld a, b
    ld l, d
    dec a
    ld a, $4d
    ld c, [hl]
    ld l, e
    ld h, a
    ld a, e
    ld a, c
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, c
    inc a
    dec a
    inc l
    dec l
    ld a, $3f
    ld l, $2f
    ld a, l
    ld a, [hl]
    dec a

jr_002_4b43:
    ld a, $49
    nop
    ld l, e

jr_002_4b47:
    nop
    ld b, [hl]
    ld b, a
    nop
    nop
    ld b, [hl]
    ld b, a
    nop
    nop
    ld b, [hl]
    ld b, a
    nop
    nop
    ld b, [hl]
    ld b, a
    nop
    nop
    ld b, [hl]
    ld c, b
    nop
    ld e, d
    ld a, l
    ld a, [hl]
    dec a
    ld a, $2d
    ld l, $3d
    ld a, $2f
    ld a, a
    ccf
    inc a
    ld a, h
    ld a, l
    dec a
    dec l
    ld a, [hl]
    ld a, l
    ld a, $3f
    ld a, [hl]
    ld c, c
    ld a, $6b
    nop
    nop
    nop
    nop
    ld a, l
    inc l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld l, $7b
    ld a, $5b
    nop
    nop
    ld [$0009], sp
    nop
    ld [$7a09], sp
    dec l
    inc a
    dec a
    ld l, $7b
    ld a, $5b
    ld de, $2711
    daa
    ld de, $2711
    daa
    ld de, $275a
    ld l, d
    ld c, [hl]
    ld l, e
    ld l, $7b
    ld de, $1111
    ld de, $1111
    ld de, $6a11
    ld c, l
    ld a, d
    dec l
    ld c, [hl]
    ld l, e
    ld a, $3f
    ld h, h
    ld h, h
    ld a, $3f
    ld h, h
    ld h, h
    inc a
    dec a
    ld h, h
    ld a, d
    ld a, $3f
    ld a, $5b
    ld c, [hl]
    ld l, e
    ld de, $1111
    ld de, $1111
    ld de, $5a11
    dec a
    ld e, h
    ld [bc], a
    inc a
    ccf
    ld [bc], a
    ld [bc], a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld de, $7f6a
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld l, $7b
    ld a, $5b
    ld de, $1111
    ld de, $1111
    ld de, $6c11
    ld [de], a
    ld de, $1211
    ld [de], a
    ld de, $1211
    ld [de], a
    ld de, $3c11
    dec a
    ld c, h
    ld c, l
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld l, e
    ld l, $7b
    ld de, $1111
    ld de, $2e2d
    dec a
    ld a, $5b
    nop
    ld l, e
    ld [$4e4d], sp
    ld [bc], a
    ld [bc], a
    ld a, e
    ld de, $115c
    ld de, $1111
    ld de, $5a11
    ld de, $3e6a
    ld e, e
    ld c, [hl]
    ld l, e
    ld de, $1111
    ld de, $4e4d
    dec l
    ld l, $7b
    ld de, $115b
    ld [de], a
    ld [de], a
    ld de, $6c11
    ld de, $1111
    ld de, $1111
    ld de, $7a11
    ld de, $115a
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $4811
    ld de, $7c11
    ld a, l
    ld de, $1111
    ld de, $7d48
    ld e, d
    dec a
    ld a, [hl]
    ld a, a
    ld a, $3f
    ld a, h
    ld a, l
    inc a
    dec a
    ld a, [hl]
    ld c, c
    ld a, $6b
    ld de, $1111
    ld de, $5a11
    ld de, $3d7a
    inc a
    cpl
    inc l
    ld de, $7e11
    ld a, a
    ld a, d
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld l, $7b
    ld a, $3f
    ld de, $7c11
    ld a, l
    ld l, $5b
    ld a, $6b
    ld de, $1111
    ld de, $3f3e
    ld l, $2f
    ld c, h
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld l, $2f
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld a, h
    ld a, l
    inc a
    dec a
    ld de, $7e11
    ld a, a
    ld de, $7c11
    ld a, l
    nop
    ld e, d
    ld [$3d6a], sp
    ld a, $4e
    ld c, a
    ld de, $116a
    ld a, d
    ld c, l
    ld c, [hl]
    dec l
    ld l, $11
    ld a, d
    ld de, $2d5a
    ld l, $3d
    ld a, $3e
    ccf
    ld l, $2f
    inc a
    dec a
    inc l
    dec l
    ld de, $117a
    ld e, d
    dec l
    ld l, $3d
    ld a, $11
    ld e, d
    ld de, $3d6a
    ld a, $4d
    ld c, [hl]
    ld de, $116a
    ld a, d
    ld c, l
    ld c, [hl]
    dec l
    ld l, $28
    add hl, hl
    jr c, jr_002_4d3d

    jr z, jr_002_4d2f

    jr c, @+$3b

    jr z, jr_002_4d33

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, jr_002_4d3f

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    inc bc
    inc b
    inc de
    inc d
    dec b
    inc b
    dec d
    inc d
    dec b
    inc b
    dec d

jr_002_4d2f:
    inc d
    dec b
    ld h, $15

jr_002_4d33:
    ld d, $28
    add hl, hl
    jr c, @+$3b

    jr z, jr_002_4d3d

    jr c, @+$15

    dec b

jr_002_4d3d:
    inc b
    dec d

jr_002_4d3f:
    inc d
    jr z, @+$2b

    jr c, @+$3b

    ld b, $07
    jr c, jr_002_4d81

    ld b, $07
    jr c, @+$3b

    ld b, $07
    jr c, @+$3b

    ld b, $07
    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, @+$09

    jr c, @+$3b

    ld b, $07
    jr c, @+$3b

    jr z, @+$2b

    jr c, jr_002_4d9d

    jr z, jr_002_4d8f

    jr c, @+$3b

    jr z, jr_002_4d93

    jr c, @+$3b

    jr z, jr_002_4d97

    jr c, @+$3b

    jr z, jr_002_4d9b

    jr c, jr_002_4dad

    jr z, @+$2b

    jr c, jr_002_4db1

    jr z, @+$2b

    jr c, jr_002_4db5

    jr z, @+$2b

    jr c, jr_002_4db9

    dec b

jr_002_4d81:
    inc b
    dec d
    inc d
    ld h, $29
    ld d, $39
    jr z, jr_002_4db3

    jr c, @+$3b

    jr z, jr_002_4db7

    inc bc

jr_002_4d8f:
    inc b
    jr z, jr_002_4dbb

    dec b

jr_002_4d93:
    inc b
    jr z, @+$2b

    dec b

jr_002_4d97:
    inc b
    jr z, @+$2b

    dec b

jr_002_4d9b:
    ld h, $28

jr_002_4d9d:
    add hl, hl
    jr c, @+$3b

    ld b, $07
    jr c, @+$3b

    ld b, $29
    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    inc de

jr_002_4dad:
    inc d
    ld d, [hl]
    ld d, a
    dec d

jr_002_4db1:
    inc d
    ld d, [hl]

jr_002_4db3:
    ld d, a
    dec d

jr_002_4db5:
    inc d
    ld d, [hl]

jr_002_4db7:
    ld d, a
    dec d

jr_002_4db9:
    ld d, $56

jr_002_4dbb:
    ld d, a
    jr z, @+$2b

    jr c, @+$3b

    jr z, jr_002_4deb

    jr c, jr_002_4dfd

    jr z, @+$2b

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, jr_002_4df7

    jr c, jr_002_4e09

    jr z, jr_002_4dfb

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, @+$2b

    jr c, jr_002_4e15

    jr z, @+$2b

    jr c, jr_002_4e19

    jr z, jr_002_4e0b

    jr c, @+$3b

    jr z, jr_002_4e0f

    jr c, jr_002_4deb

    jr z, @+$2b

    dec b

jr_002_4deb:
    inc b
    jr z, jr_002_4e17

    ld h, $39
    jr z, jr_002_4e1b

    jr c, @+$3b

    jr z, @+$2b

    inc bc

jr_002_4df7:
    dec b
    jr z, @+$2b

    inc b

jr_002_4dfb:
    ld h, $28

jr_002_4dfd:
    add hl, hl
    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, jr_002_4e19

    jr c, jr_002_4e5f

    dec d

jr_002_4e09:
    inc d
    ld d, [hl]

jr_002_4e0b:
    ld d, a
    ld d, $29
    ld d, [hl]

jr_002_4e0f:
    add hl, sp
    jr z, @+$2b

    jr c, @+$3b

    inc de

jr_002_4e15:
    dec d
    ld d, [hl]

jr_002_4e17:
    ld d, a
    inc d

jr_002_4e19:
    ld d, $56

jr_002_4e1b:
    ld d, a
    jr z, jr_002_4e47

    jr c, @+$3b

    jr z, @+$2b

    jr c, jr_002_4e5d

    jr z, @+$2b

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, jr_002_4e57

    jr c, @+$3b

    jr z, @+$2b

    jr c, @+$3b

    jr z, jr_002_4e5f

    jr c, jr_002_4e71

    jr z, @+$2b

    jr c, jr_002_4e75

    jr z, @+$2b

    jr c, @+$3b

    inc bc
    dec b
    inc de
    dec d
    inc b
    ld h, $14

jr_002_4e47:
    ld d, $06
    rlca
    jr c, @+$3b

    jr z, jr_002_4e77

    jr c, @+$3b

    ld l, $2f
    ld a, $3f
    ld a, [hl-]
    dec sp
    ld c, d

jr_002_4e57:
    ld c, e
    jr z, jr_002_4e83

    jr c, jr_002_4e95

    ld c, b

jr_002_4e5d:
    ld a, l
    ld e, d

jr_002_4e5f:
    ld e, e
    ld b, $07
    jr c, jr_002_4e9d

    ld b, $07
    jr c, jr_002_4ea1

    jr z, jr_002_4e93

    jr c, jr_002_4ea5

    jr z, jr_002_4e97

    inc bc
    inc b
    ld c, [hl]

jr_002_4e71:
    ld c, a
    ld l, $2f
    nop

jr_002_4e75:
    nop
    nop

jr_002_4e77:
    add hl, de
    jr z, jr_002_4ea3

    jr c, jr_002_4eb5

    ld a, d
    dec l
    ld e, d
    dec a
    jr z, jr_002_4eab

    dec b

jr_002_4e83:
    inc b
    jr z, jr_002_4eaf

    dec b
    inc b
    ld de, $7e11
    ld c, c
    ld de, $1111
    ld de, $0000
    nop

jr_002_4e93:
    nop
    nop

jr_002_4e95:
    nop
    nop

jr_002_4e97:
    nop
    ld l, $7f
    inc l
    dec l
    ld a, h

jr_002_4e9d:
    ld a, l
    ld l, $2f
    ld c, b

jr_002_4ea1:
    ld a, $5a

jr_002_4ea3:
    ld c, [hl]
    ccf

jr_002_4ea5:
    ld c, c
    ld c, a
    ld l, e
    ld a, $5b
    ld c, [hl]

jr_002_4eab:
    ld l, e
    ld de, $1111

jr_002_4eaf:
    ld de, $0000
    nop
    nop
    nop

jr_002_4eb5:
    nop
    nop
    nop
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld a, d
    cpl
    ld e, d
    ccf
    ld l, $7b
    ld a, $5b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    ld e, e
    inc a
    dec a
    ld a, a
    ld a, a
    dec c
    ld c, c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, b
    rrca
    ld a, a
    ld a, a
    inc c
    dec c
    ld a, a
    ld a, a
    ld c, $49
    ld a, a
    ld a, a
    ld c, b
    dec c
    ld a, a
    ld a, a
    ld c, $49
    ld c, h
    ld c, l
    inc l
    dec l
    inc e
    ld [$5b2c], sp
    ld a, a
    ld a, a
    ld d, $16
    jr @+$21

    ld e, d
    cpl
    inc e
    dec e
    inc l
    dec l
    ld e, $08
    ld l, $5b
    jr @+$1f

    ld e, d
    dec l
    ld e, $08
    ld l, $5b
    ld l, d
    dec a
    ld a, d
    ld c, l
    ld a, $3f
    ld c, [hl]
    ld c, a
    inc c
    dec c
    inc e
    dec e
    ld c, $49
    ld e, $08
    ld e, e
    ld a, a
    ld c, h
    dec c
    ld a, a
    ld a, a
    ld c, $49
    inc a
    dec a
    ld c, h
    ld c, l
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld a, d
    ld c, l
    ld a, h
    ld e, l
    ld c, [hl]
    ld a, e
    ld e, [hl]
    ld a, l
    inc l
    dec l
    inc a
    dec a
    ld l, $5b
    ld a, $6b
    inc e
    dec e
    inc e
    dec l
    ld e, $08
    ld l, $5b
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld c, h
    ld c, l
    inc l
    dec l
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld a, h
    ld e, l
    jr z, jr_002_50f9

    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld e, d
    dec l
    ld l, d
    dec a
    ld l, $5b
    ld a, $6b
    ld c, h
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    inc a
    ld l, e
    ld c, h
    ld a, e
    ld e, b
    ld e, c
    ld l, b
    ld l, c
    ld e, b
    ld e, c
    ld l, b
    ld l, c
    ld e, b
    ld e, c
    ld l, b
    ld l, c
    ld a, h
    ld e, l
    jr z, jr_002_50ec

    ld c, [hl]
    ld a, e
    ld l, $5b
    inc a
    dec a
    ld c, h
    ld c, l
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld c, h
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    inc l
    dec l
    inc a
    dec a
    ld l, $0f
    ld l, e
    ld e, b
    ld e, h
    ld e, l
    ld l, h
    ld l, l
    ld a, l
    ld a, a
    jr c, jr_002_5157

    ld e, h
    ld e, l
    ld l, h
    ld l, l
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld l, d
    dec a
    ld a, h
    ld e, l
    ld a, $3f
    ld e, [hl]
    ld e, a
    ld c, h
    ld c, l
    inc l
    dec l

jr_002_50ec:
    ld a, e
    ld a, b
    ld e, e
    ld a, a
    ld e, b
    ld e, c
    ld a, b
    ld a, c
    ld e, c
    ld a, a
    ld a, c
    ld a, a
    ld e, b

jr_002_50f9:
    ld e, c
    ld l, b
    ld l, c
    ld e, b
    ld e, c
    ld l, b
    ld l, c
    jr z, @+$6f

    ld e, b
    ld e, c
    ld l, [hl]
    jr c, @+$5a

    ld e, c
    ld c, h
    ld c, l
    inc l
    dec l
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    inc a
    ld l, e
    ld e, l
    ld a, l
    ld e, b
    ld e, c
    ld a, b
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    rrca
    nop
    nop
    inc c
    dec c
    nop
    nop
    ld c, $49
    ld a, a
    ld a, a
    inc sp
    ld b, $7f
    ld a, a
    inc sp
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
    nop
    jr @+$21

    ld e, d

jr_002_5157:
    cpl
    inc e
    dec e
    inc l
    dec l
    ld e, $08
    ld l, $5b
    ld b, e
    rlca
    inc c
    dec c
    ld b, e
    rlca
    ld c, $0f
    nop
    nop
    nop
    nop
    ld c, b
    rrca
    jr @+$21

    inc c
    dec c
    inc e
    dec e
    ld a, $3f
    ld c, [hl]
    ld c, a
    inc a
    dec a
    ld c, h
    ld c, l
    ld a, $6b
    ld c, [hl]
    ld a, e
    nop
    nop
    inc c
    dec c
    nop
    nop
    ld c, $0f
    nop
    nop
    inc c
    dec c
    ld e, d
    cpl
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld l, $5b
    ld a, $6b
    inc e
    dec e
    inc l
    dec l
    ld e, $1f
    ld l, $2f
    inc e
    dec e
    inc l
    dec l
    ld e, $1f
    ld l, $2f
    ld c, h
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld c, h
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld a, e
    ld l, $5b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, HeaderROMSize
    jr @+$0e

    dec c
    inc e
    dec e
    ld c, [hl]
    ld c, a
    ld e, $1f
    inc a
    dec a
    ld c, h
    ld c, l
    ld a, $6b
    ld c, [hl]
    ld a, e
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $2f
    ld e, $3f
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld e, e
    ld a, a
    ld a, $0f
    ld c, b
    dec c
    jr jr_002_5239

    ld c, $0f
    ld e, $1f
    ld a, l
    db $10
    jr c, jr_002_5234

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    ld c, h
    ld c, l
    inc l
    dec l

jr_002_5234:
    ld c, [hl]
    rra
    ld l, $2f
    ld e, d

jr_002_5239:
    dec l
    ld l, d
    dec a
    ld l, $2f
    ld a, $3f
    ld e, c
    db $10
    ld a, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, d
    cpl
    ld l, d
    ccf
    nop
    nop
    nop
    nop
    inc c
    jr c, jr_002_52bb

    ld e, c
    rla
    rla
    dec d
    dec d
    rla
    rla
    dec d
    dec d
    inc c
    dec c
    inc e
    dec e
    ld c, c
    ld a, a
    ld [$7f7f], sp
    ld a, a
    ld a, a
    ld a, a
    ld a, d
    ld c, a
    ld e, d
    cpl
    nop
    nop
    nop
    nop
    ld a, b
    ld a, c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [bc], a
    ld a, a
    ld a, a
    inc bc
    inc b
    ld a, a
    ld a, a
    ld [bc], a
    inc bc
    ld a, a
    ld a, a
    inc b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [de], a
    ld a, a
    db $76
    inc de
    inc d
    dec b
    ld [hl], a
    ld [de], a
    inc de
    db $76
    dec b
    inc d
    ld a, a
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_002_52bb:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, b
    ld a, a
    jr jr_002_52d3

    ld c, c
    ld e, $08
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    jr @+$21

    ld e, d
    cpl
    inc a
    dec a
    ld c, h

jr_002_52d3:
    ld c, l
    ld c, $0f
    ld e, $1f
    ld a, d
    ld c, l
    ld e, d
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    inc a
    dec a
    ld c, h
    ld c, l
    ld a, $3f
    ld c, [hl]
    ld c, a
    inc c
    dec c
    inc e
    dec e
    ld a, $3f
    ld c, [hl]
    ld c, a
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld l, d
    dec a
    ld a, d
    ld c, l
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld e, h
    ld e, l
    ld l, h
    jr c, jr_002_5363

    ld e, a
    ld e, [hl]
    ld e, a
    inc l
    dec l
    ld l, d
    dec a
    ld l, $5b
    ld a, $6b
    ld e, b
    ld e, c
    ld a, b
    ld a, c
    ld l, $2f
    ld l, d
    ccf
    ld e, d
    dec l
    ld l, d
    dec a
    ld l, $2f
    ld a, $3f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, d
    ld c, l
    ld e, d
    ld e, e
    jr z, jr_002_5366

    ld e, b
    ld e, c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, d
    ld c, a
    ld e, d
    cpl
    inc l
    ld e, e
    inc a
    ld l, e
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    inc h
    ld a, a
    ld a, a
    ld a, a
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
    ld e, d
    dec l
    ld l, d
    dec a
    ld l, $2f
    ld a, $3f
    ld c, h
    ld a, e
    inc l
    ld e, e
    nop
    nop
    nop
    nop
    dec h
    ld h, $25

jr_002_5363:
    dec [hl]
    daa
    ld b, [hl]

jr_002_5366:
    ld [hl], $45
    nop
    nop
    ld c, b
    dec c
    nop
    nop
    ld c, $49
    ld a, h
    ld e, l
    jr z, jr_002_53e1

    ld e, [hl]
    ld e, a
    ld c, [hl]
    ld c, a
    ld a, a
    ld a, a
    ld c, b
    dec c
    ld a, a
    ld e, d
    ld c, $4f
    ld b, h
    nop
    ld d, $54
    dec [hl]
    ld [hl], $01
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $4801
    ld bc, $0e18
    rrca
    ld e, $1f
    jr @+$1f

    ld e, d
    dec l
    ld e, $1f
    ld l, $2f
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $5a01
    ld bc, $2e6a
    cpl
    ld a, $3f
    dec e
    ld [$5b2c], sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, d
    inc c
    dec a
    ld l, $2f
    ld a, $3f
    inc a
    dec a
    ld c, h
    ld c, l
    ld c, $0f
    ld e, $1f
    ld a, a

jr_002_53e1:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, b
    dec c
    ld a, a
    ld a, a
    ld c, $49
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc e
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, d
    ld l, $6a
    ld a, $58
    ld e, c
    ld a, b
    ld a, c
    ld a, h
    ld a, l
    jr z, jr_002_544c

    ld a, b
    ld a, c
    ld a, a
    ld a, a
    ld c, h
    ld c, l
    inc l
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld a, a
    ld a, a
    ld d, $16
    ld a, a
    ld a, a
    ld d, $16
    ld a, d
    ld c, [hl]
    ld e, d
    ld e, $7f
    ld a, a
    ld a, a
    ld a, a
    ld e, b
    ld e, c
    ld a, b
    ld a, c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld e, l
    jr z, jr_002_54a9

    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_544c:
    jr z, jr_002_54bb

    ld e, b
    ld e, c
    ld l, [hl]
    jr c, jr_002_54ab

    ld e, c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, b
    ld e, c
    ld a, b
    ld a, c
    ld e, b
    ld e, c
    ld a, b
    ld a, c
    ld e, h
    ld a, l
    ld l, [hl]
    jr c, @+$66

    ld h, l
    ld de, $6411
    ld h, l
    ld de, $7811
    ld a, c
    ld a, a
    ld a, a
    ld a, b
    ld a, c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, b
    ld e, c
    ld a, b
    ld a, c
    ld de, $1111
    ld de, $1111
    ld de, $7f11
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld b, a

jr_002_54a9:
    ld a, a
    scf

jr_002_54ab:
    ld b, [hl]
    ld a, a
    ld a, a
    scf
    ld a, a
    ld a, a
    add hl, bc
    ld a, a
    add hl, de
    add hl, bc
    ld a, a
    add hl, de
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_002_54bb:
    ld a, [bc]
    ld de, $0b7f
    ld a, a
    ld a, a
    ld a, a
    inc [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], $45
    nop
    ld d, l
    scf
    ld a, a
    ld d, $16
    add hl, bc
    add hl, hl
    add hl, de
    add hl, de
    add hl, hl
    add hl, bc
    add hl, de
    add hl, de
    ld a, a
    ld a, [de]
    ld a, a
    ld a, [hl+]
    dec de
    ld a, a
    dec hl
    ld a, a
    ld de, $1111
    ld de, $1111
    ld de, $0111
    ld bc, $0101
    ld bc, $0101
    ld bc, $2929
    add hl, sp
    add hl, sp
    add hl, hl
    add hl, hl
    add hl, sp
    add hl, sp
    ld a, a
    ld a, [hl-]
    ld d, $4a
    dec sp
    ld a, a
    ld c, e
    ld d, $11
    ld de, $1111
    ld de, $1111
    ld de, $7f7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    ld d, d
    ld d, c
    ld a, a
    ld d, e
    ld h, b
    ld a, a
    ld d, b
    ld a, a
    ld d, d
    ld d, c
    ld a, a
    ld d, e
    ld h, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, b
    ld a, a
    jr jr_002_554b

    rrca
    ld e, $1f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, c
    ld h, e
    ld [hl], b
    db $10
    ld h, d
    db $10

jr_002_554b:
    ld d, e
    ld a, a
    ld h, c
    ld [hl], e
    ld [hl], b
    db $10
    ld h, d
    db $10
    ld d, e
    ld a, a
    ld a, a
    ld h, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld de, $7163
    ld [hl], b
    ld [hl], b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl], h
    db $10
    db $10
    ld [hl], l
    db $10
    db $10
    db $10
    db $10
    ld h, d
    ld a, a
    db $10
    ld [hl], d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, b
    rrca
    jr jr_002_559f

    ld a, a
    ld a, a
    ld a, a
    ld d, [hl]
    ld a, a
    ld a, a
    ld d, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl+], a
    ld hl, $2110
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10

jr_002_559f:
    db $10
    ld a, a
    ld h, [hl]
    ld a, a
    db $76
    ld h, a
    ld a, a
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld hl, $1021
    db $10
    ld sp, $0131
    ld [hl-], a
    ld [hl-], a
    ld bc, $3201
    ld [hl-], a
    ld bc, $4001
    db $10
    ld b, c
    db $10
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld hl, $1021
    db $10
    ld sp, $0131
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $4101
    ld b, d
    db $10
    db $10
    db $10
    ld a, a
    ld a, a
    ld d, $16
    ld a, a
    ld hl, $1020
    db $10
    ld sp, $0131
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $4142
    db $10
    db $10
    db $10
    db $10
    db $10
    ld bc, $0a01
    dec bc
    ld bc, $0a01
    dec bc
    ld bc, $0a01
    dec bc
    ld bc, $0101
    ld bc, $1d18
    ld e, d
    dec l
    ld e, $08
    ld l, $5b
    ld e, d
    dec l
    ld l, d
    dec a
    ld l, $5b
    ld a, $3f
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld bc, $0101
    ld bc, $3d6a
    ld a, d
    ld c, l
    ld a, $6b
    ld c, [hl]
    ld a, e
    ld a, d
    ld c, l
    ld e, d
    dec l
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld bc, $011b
    dec hl
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld a, [de]
    dec de
    ld a, [hl+]
    dec hl
    ld bc, $0101
    ld bc, $5d5c
    ld l, h
    ld l, l
    ld e, [hl]
    ld a, l
    ld l, [hl]
    ld l, a
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld bc, $011b
    dec sp
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld a, [de]
    dec de
    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $7f7f
    ld a, a
    ld a, a
    ld l, d
    dec a
    ld a, d
    ld c, l
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    rra
    ld [$5b2e], sp
    nop
    nop
    nop
    nop
    ld a, $6b
    ld c, [hl]
    ld a, e
    ld c, $0f
    ld l, [hl]
    rra
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, d
    dec l
    ld l, d
    dec a
    ld c, b
    dec c
    jr jr_002_56b9

    ld c, $49
    ld e, $08
    ld a, $6b
    ld c, [hl]
    ld a, e
    nop
    nop
    nop
    nop
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld bc, $0101
    ld bc, $0101
    ld bc, $5a01

jr_002_56b9:
    dec l
    inc a
    dec a
    ld l, $5b
    ld a, $3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld a, a
    ld [$7f7f], sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    inc c
    dec c
    nop
    nop
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld a, a
    ld l, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [bc], a
    ld a, a
    ld a, a
    inc bc
    inc b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc e
    dec e
    inc l
    dec l
    ld e, $1f
    ld l, $2f
    rra
    ld [$5b2e], sp
    ld h, h
    ld h, l
    ld de, $7f11
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [de], a
    ld a, a
    ld a, a
    inc de
    inc d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, d
    inc c
    dec a
    ld a, $7d
    ld a, $3f
    ld a, $6b
    ld c, [hl]
    ld a, e
    ld de, $1111
    ld de, $7f7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc e
    dec e
    inc l
    dec l
    ld e, $4f
    ld l, $2f
    ld l, $5b
    ld a, $6b
    ld de, $1111
    ld de, $7f7f
    ld d, b
    ld d, b
    ld a, a
    ld d, b
    ld d, b
    jr nz, @+$52

    ld d, b
    ld hl, $5021
    jr nz, jr_002_5778

    ld hl, $1160
    ld hl, $1152
    ld de, $1172
    ld c, [hl]
    ld a, e
    ld l, $5b
    ld de, $1111
    ld de, $5050
    ld d, b
    jr nz, jr_002_578d

    jr nc, jr_002_579f

    ld b, b
    ld sp, $4131
    ld b, c
    ld sp, $4131
    ld b, c

jr_002_5778:
    ld sp, $4162
    ld b, d
    ld d, d
    ld [hl], d
    ld [hl], d
    ld d, d
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld de, $0e11
    rrca
    ld d, b
    ld h, e
    ld d, b
    ld [hl], e
    ld b, b

jr_002_578d:
    db $10
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld d, b
    ld d, b
    ld [hl+], a
    ld [hl+], a
    ld d, b
    ld d, b
    ld [hl+], a
    db $10
    ld d, b
    ld [hl+], a
    ld b, d
    ld [hl], d
    ld [hl+], a

jr_002_579f:
    inc [hl]
    ld l, $2f
    ld a, $3f
    ld e, $1f
    ld l, $2f
    ld d, b
    ld d, b
    ld a, [bc]
    dec bc
    ld d, b
    ld d, b
    ld a, [bc]
    dec bc
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc [hl]
    ld b, h
    inc [hl]
    ld a, a
    ld a, a
    ld c, $0f
    ld b, $06
    rlca
    rlca
    ld b, $06
    rlca
    rlca
    ld a, a
    ld a, a
    inc c
    dec c
    inc c
    dec c
    inc e
    dec e
    ld c, c
    ld bc, $0108
    ld d, b
    ld b, h
    ld d, b
    inc h
    inc h
    ld d, e
    ld d, e
    ld [hl], c
    inc e
    dec e
    inc l
    dec l
    ld e, $1f
    ld l, $2f
    inc e
    dec e
    inc l
    dec l
    ld e, $1f
    ld l, $2f
    inc l
    dec l
    inc a
    dec a
    ld e, e
    ld bc, $016b
    ld d, b
    ld h, e
    ld d, b
    ld [hl], e
    ld [hl], c
    ld h, b
    inc [hl]
    ld de, $0000
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld [hl], b
    ld [hl], c
    ld h, d
    ld bc, $7172
    ld h, c
    ld bc, $1063
    ld h, b
    ld h, e
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add b
    add b
    add b
    add b
    db $10
    db $10
    db $10
    db $10
    ld d, e
    ld bc, $5150
    ld bc, $4201
    ld b, e
    ld bc, $4052
    ld b, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, b
    ld e, c
    db $10
    db $10
    ld e, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, a
    ld d, l
    add hl, sp
    ld [hl], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rla
    ld a, a
    db $76
    ld a, [hl-]
    ld e, e
    ld e, h
    add hl, bc
    ld a, [bc]
    ld e, l
    ld [$0c0b], sp
    db $10
    db $10
    db $10
    ld l, b
    db $10
    db $10
    ld l, c
    db $10
    ld b, l
    ld c, a
    ld de, $7367
    ld [hl], e
    ld de, $7311
    ld [hl], e
    ld de, $4b11
    ld b, l
    ld h, [hl]
    ld de, $1010
    db $10
    db $10
    db $10
    dec c
    dec c
    ld bc, $0f0e
    dec e
    ld bc, $5e0b
    inc e
    rra
    ld e, a
    add hl, bc
    ld de, $6a6c
    db $10
    jr @+$1b

    db $10
    db $10
    ld a, [de]
    dec de
    db $10
    db $10
    db $10
    db $10
    db $10
    dec c
    dec c
    ld bc, $0101
    ld bc, $1e01
    ld bc, $016f
    jr @+$13

    ld a, c
    ld de, $117a
    ld de, $6d7a
    ld l, [hl]
    ld de, $6f7a
    ld a, b
    ld l, h
    ld a, c
    ld e, a
    db $10
    ld de, $105f
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rla
    ld a, a
    db $76
    ld a, [hl-]
    ld a, a
    jr c, jr_002_5920

    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld d, l
    add hl, sp
    ld [hl], a
    db $10
    db $10
    ld h, $27
    ld h, $27
    jr nz, jr_002_5921

    ld c, e
    ld b, l
    ld h, [hl]
    ld d, a
    ld b, l
    ld c, a
    ld [bc], a
    inc de
    ld b, l
    ld b, l
    ld c, b
    ld c, c
    ld b, a
    ld b, l
    ld c, l
    ld c, d
    ld c, e
    ld b, l
    ld [de], a
    ld d, a
    ld b, l
    ld c, a
    ld [bc], a
    inc de
    ld de, $4c13
    inc de
    db $10
    db $10
    db $10
    db $10

jr_002_5920:
    ld h, [hl]

jr_002_5921:
    ld de, $6464
    ld de, $1167
    inc de
    ld de, $1111
    ld de, $1114
    dec d
    ld de, $1010
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1166
    inc de
    db $10
    db $10
    db $10
    db $10
    ld h, h
    ld d, a
    ld h, [hl]
    ld de, $6702
    ld de, $7f13
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, $3d
    ld c, [hl]
    ld c, [hl]
    dec a
    ccf
    ld c, [hl]
    ld c, [hl]
    db $10
    db $10
    ld a, a
    ld a, a
    db $10
    db $10
    inc h
    dec h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, sp
    ld a, [hl-]
    ld b, l
    ld b, l
    ld [hl+], a
    inc hl
    ld [hl], $37
    db $10
    db $10
    rla
    ld a, a
    db $10
    db $10
    ld a, a
    jr c, jr_002_5999

    db $10
    ld a, a
    ld a, a
    db $10
    db $10
    ld a, a
    ld a, a
    db $10
    db $10
    ld a, a
    ld a, a
    db $10
    db $10
    ld a, a
    ld d, l
    db $10

jr_002_5999:
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $76
    ld a, [hl-]
    ld c, e
    ld b, l
    add hl, sp
    ld [hl], a
    ld b, l
    ld c, a
    add hl, sp
    ld a, [hl-]
    ld b, l
    ld b, l
    add hl, sp
    ld a, [hl-]
    ld b, a
    ld b, l
    db $76
    ld a, [hl-]
    ld c, e
    ld b, l
    add hl, sp
    ld [hl], a
    ld b, l
    ld c, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [de], a
    ld d, a
    ld h, [hl]
    ld de, $1302
    ld de, $1167
    ld de, $1111
    dec d
    ld de, $1114
    rlca
    ld hl, $3574
    inc [hl]
    dec [hl]
    ld de, $3e11
    dec a
    ld c, [hl]
    ld c, [hl]
    dec a
    ccf
    ld c, [hl]
    ld c, [hl]
    ld [de], a
    ld [de], a
    ld h, [hl]
    ld d, a
    ld de, $0213
    ld h, a
    ld de, $4811
    ld c, c
    dec d
    ld de, $4a4d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc a
    ld c, c
    ld de, $1011
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld de, $1113
    inc de
    ld de, $1111
    ld de, $1103
    inc d
    ld de, $0000
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld d, l
    db $10
    ld [hl], a
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, l
    add hl, sp
    ld a, [hl-]
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld b, a
    ld b, l
    dec d
    ld de, $104f
    ld h, a
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, l
    ld b, a
    ld c, c
    ld c, l
    ld b, l
    ld b, [hl]
    ld c, h
    ld d, [hl]
    db $10
    db $10
    db $10
    db $10
    ld b, h
    ld b, l
    ld d, h
    ld c, h
    ld b, a
    ld b, l
    ld c, l
    ld c, d
    ld c, l
    ld c, d
    inc bc
    ld de, $7313
    inc de
    ld de, $0000
    nop
    nop
    ld de, $1115
    inc d
    ld de, $1165
    ld h, l
    db $10
    db $10
    db $10
    db $10
    ld h, l
    ld de, $1165
    dec d
    ld de, $1114
    nop
    nop
    nop
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
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    dec h
    ld [hl+], a
    inc hl
    db $10
    db $10
    inc h
    dec h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, $3d
    db $10
    db $10
    dec a
    ccf
    db $10
    db $10
    db $10
    db $10
    ld c, e
    ld b, l
    ld h, [hl]
    ld c, h
    ld b, a
    ld b, l
    ld c, l
    ld c, b
    ld [hl], $37
    dec sp
    ld de, $0622
    ld [hl], $75
    db $10
    db $10
    db $10
    db $10
    ld c, [hl]
    ld c, [hl]
    db $10
    db $10
    ld c, [hl]
    ld c, [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc de
    ld de, $1113
    inc d
    ld de, $1115
    ld de, $1111
    ld de, $1611
    ld de, $1016
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc de
    ld de, $1113
    inc d
    ld de, $1103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    db $10
    inc hl
    inc b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    rla
    ld a, a
    db $10
    db $10
    ld a, a
    inc b
    scf
    inc hl
    ld de, $0437
    db $10
    inc hl
    inc b
    db $10
    dec b
    dec b
    jr nz, jr_002_5be4

    ld a, a
    add hl, sp
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    add hl, sp
    ld c, e
    ld b, l
    ld a, [hl-]
    inc hl
    ld b, a
    scf
    dec sp
    ld de, $1111
    scf
    ld b, $11
    ld [hl], l
    ld h, l
    ld de, $1154
    dec d
    ld de, $1114
    ld de, $1165
    ld h, l
    db $10
    db $10
    db $10
    db $10
    inc de
    ld de, $1113
    dec d
    ld de, $1114
    ld de, $1111
    ld de, $1311
    ld de, $7f13
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld d, l
    add hl, sp
    ld [hl], a
    inc de
    ld c, b
    inc de
    ld de, $4a4d
    inc d
    ld de, $1111
    ld de, $1111
    inc de
    ld de, $1013
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, a
    db $10
    db $10
    ld a, a
    ld a, a
    db $10
    db $10
    ld a, a
    ld a, l
    inc de
    ld de, $1113
    dec d
    ld de, $1114
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10

jr_002_5be4:
    add hl, sp
    ld a, [hl-]
    ld b, h
    ld b, l
    add hl, sp
    ld a, [hl-]
    ld b, a
    ld b, l
    add hl, sp
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    inc l
    dec l
    add hl, hl
    ld a, [hl+]
    db $10
    db $10
    dec hl
    dec l
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $1103
    dec d
    inc a
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
    cpl
    nop
    ld l, $11
    nop
    ld l, $2b
    dec l
    ld de, $1011
    db $10
    ld e, a
    db $10
    ld a, a
    ld a, a
    add hl, sp
    add hl, sp
    jr c, jr_002_5c37

    ld a, [hl-]
    ld de, $1010
    db $10
    db $10
    db $10
    db $10
    db $10
    cpl
    nop
    nop
    nop
    nop
    nop
    jr z, jr_002_5c37

jr_002_5c37:
    ld l, $11
    ld de, $1111
    ld de, $115f
    ld de, $4545
    ld c, c
    ld c, d
    ld b, [hl]
    ld de, $4865
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, e
    db $10
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $11
    jr z, jr_002_5c6d

    ld de, $1111
    ld de, $1111
    ld de, $5611
    ld de, $1165
    db $10
    db $10
    db $10
    db $10
    db $10

jr_002_5c6d:
    ld a, e
    db $10
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $11
    nop
    ld de, $1111
    ld de, $4511
    ld b, l
    ld a, a
    ld a, a
    ld b, l
    ld b, [hl]
    ld a, a
    jr c, jr_002_5c99

    db $10
    db $10
    db $10
    stop
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_002_5cc1

jr_002_5c99:
    ld de, $1111
    ld de, $1111
    ld de, $3a39
    ld b, l
    ld b, l
    add hl, sp
    ld a, [hl-]
    ld b, a
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_002_5ce6

    inc [hl]
    ld de, $4547
    inc d
    inc a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_002_5cc1:
    db $10
    ld a, h
    ld a, a
    ld b, h
    ld b, l
    ld a, a
    jr c, @+$12

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $1115
    inc bc
    ld de, $1010
    dec b
    ld a, a
    db $10
    db $10
    ld a, a
    ld d, l
    add hl, sp
    ld a, [hl-]
    ld b, h
    ld b, l
    add hl, sp
    ld a, [hl-]

jr_002_5ce6:
    ld b, a
    ld b, l
    ld a, h
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    jr c, jr_002_5d28

    ld a, [hl-]
    db $10
    db $10
    db $10
    db $10
    db $10
    dec b
    dec b
    jr nz, @+$22

    add hl, sp
    inc [hl]
    ld b, l
    add hl, sp
    ld [hl], a
    ld b, l
    ld c, a
    ld b, l
    ld b, l
    ld a, a
    ld a, a
    ld b, l
    ld b, l
    ld a, a
    ld a, l
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec b
    dec b
    jr nz, @+$22

    inc [hl]
    inc [hl]
    ld de, $1111
    ld de, $113c
    ld h, a
    ld c, c
    inc de
    add hl, sp
    ld a, [hl-]
    ld b, l
    ld b, l
    add hl, sp
    ld a, [hl-]
    ld b, l
    ld b, [hl]

jr_002_5d28:
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, l
    add hl, sp
    ld a, [hl-]
    rlca
    inc [hl]
    ld [hl], h
    ld de, $1111
    ld de, $1111
    ld de, $1111
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec bc
    ld [de], a
    ld [de], a
    inc de
    ld de, $1111
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld e, b
    ld e, c
    db $10
    db $10
    ld e, d
    ld e, e
    db $10
    db $10
    db $10
    rrca
    rrca
    ld e, [hl]
    nop
    ld l, e
    db $10
    inc e
    db $10
    ld e, $1d
    db $10
    rra
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, h
    ld e, l
    inc c
    ld bc, $0908
    ld bc, $0a0d
    db $10
    ld c, $10
    db $10
    db $10
    db $10
    db $10
    ld l, h
    ld l, l
    ld a, b
    ld a, c
    ld l, [hl]
    ld l, a
    ld a, d
    ld a, e
    db $10
    jr z, jr_002_5dc5

    dec hl
    add hl, hl
    db $10
    inc l
    dec l
    ld e, a
    ld bc, $0118
    ld bc, $0168
    ld bc, $2d69
    add hl, de
    ld a, [de]
    db $10
    db $10
    dec l
    stop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10

jr_002_5dc5:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ccf
    ccf
    jr c, jr_002_5e11

    ld a, l
    db $10
    ld de, $107d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    ld de, $2f2e
    dec a
    ld a, $7d
    db $10
    ld de, $107d
    db $10
    db $10
    stop
    nop
    nop
    nop
    ld de, $3811
    add hl, sp
    ld a, l
    db $10
    ld de, $7e7d
    ld a, a
    jr c, jr_002_5e3d

    ld a, [hl]
    ld a, a
    jr c, @+$3b

    jr c, jr_002_5e56

    add hl, sp
    ld b, $4d
    ld c, [hl]
    rlca
    ld [de], a
    ld c, a

jr_002_5e11:
    jr c, @+$15

    jr c, jr_002_5e93

    ld a, a
    jr c, jr_002_5e51

    ld de, $1113
    inc de
    db $10
    db $10
    db $10
    db $10
    ld de, $3811
    add hl, sp
    ld de, $3811
    add hl, sp
    ld de, $1120
    ld de, $2221
    ld de, $2311
    ld de, $3938
    ld de, $3811
    add hl, sp
    ld de, $1156
    inc de
    db $10

jr_002_5e3d:
    db $10
    db $10
    db $10
    ld de, $3811
    add hl, sp
    ld de, $3811
    add hl, sp
    ld a, [hl]
    ld a, a
    jr c, jr_002_5e85

    ld a, [hl]
    ld c, b
    jr c, jr_002_5e52

    ld [hl], e

jr_002_5e51:
    ld [hl], e

jr_002_5e52:
    ld b, h
    ld b, [hl]
    ld [hl], e
    ld [hl], e

jr_002_5e56:
    ld b, h
    ld b, [hl]
    ld c, c
    ld a, a
    inc bc
    add hl, sp
    ld a, [hl]
    ld a, a
    jr c, jr_002_5e99

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $3b11
    ld de, $4b11
    ld c, e
    ld de, $4b11
    ld c, e
    ld de, $3c11
    ld de, $1111
    ld de, $1111
    ld de, $0000
    nop
    nop
    db $10

jr_002_5e85:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    db $10

jr_002_5e93:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_002_5e99:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    ld de, $3f3f
    jr c, jr_002_5ee5

    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl], e
    ld [hl], e
    db $10
    db $10
    ld [hl], e
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    ld de, $1111
    jr c, jr_002_5f01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    jr c, jr_002_5f0d

    ld b, l
    ld b, h
    ld d, l
    ld d, [hl]
    ld b, a
    ld a, a
    ld d, a
    add hl, sp
    ld a, [hl]
    ld a, a
    jr c, jr_002_5f19

    nop
    nop
    nop
    nop
    nop

jr_002_5ee5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $3811
    add hl, sp
    ld de, $1154
    ld de, $1123
    ld de, $1139
    ld de, $3938
    ld a, [hl]

jr_002_5f01:
    ld a, a
    jr c, jr_002_5f3d

    ld c, b
    ld [hl], e
    ld [bc], a
    ld b, [hl]
    ld [hl], e
    ld [hl], e
    ld b, h
    ld b, [hl]
    ld [hl], e

jr_002_5f0d:
    ld c, c
    ld b, h
    inc bc
    ld a, [hl]
    ld a, a
    jr c, jr_002_5f4d

    nop
    nop
    nop
    nop
    nop

jr_002_5f19:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $3811
    add hl, sp
    dec sp
    ld c, e
    dec sp
    ld de, $4b4b
    ld de, $4b11
    inc a
    ld de, $113c
    ld de, $3938
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_5f3d:
    nop
    nop
    nop
    ld de, $1111
    ld de, $1114
    dec d
    ld de, $0000
    nop
    nop
    nop

jr_002_5f4d:
    nop
    nop
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rla
    ld a, a
    add hl, sp
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, sp
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
    db $10
    db $10
    inc h
    dec h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl], l
    ld [hl], a
    db $76
    inc d
    ld h, a
    ld [hl], a
    nop
    inc d
    ld h, a
    ld [hl], a
    nop
    inc b
    ld h, $15
    daa
    ld h, $24
    dec h
    ld de, $1011
    db $10
    db $10
    db $10
    db $10
    ld h, l
    ld [hl], h
    ld d, $10
    db $10
    db $10
    ld [hl], h
    dec [hl]
    nop
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    inc b
    inc [hl]
    inc d
    daa
    ld de, $2611
    ld de, $1010
    ld h, h
    ld h, h
    db $10
    db $10
    ld h, h
    db $10
    db $10
    ld [hl], l
    db $10
    db $76
    scf
    nop
    nop
    nop
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
    inc d
    inc [hl]
    ld de, $2627
    ld h, [hl]
    ld h, [hl]
    ld de, $6611
    dec h
    ld de, $1011
    dec [hl]
    ld [hl], h
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc [hl]
    inc d
    inc [hl]
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    rlca
    ld [bc], a
    inc bc
    ld bc, $0401
    dec b
    ld bc, $0601
    db $10
    ld bc, $0008
    ld b, a
    nop
    ld d, a
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    nop
    nop
    nop
    nop
    db $10
    add hl, bc
    db $10
    dec bc
    ld bc, $0c01
    dec c
    ld bc, $0e01
    rrca
    ld bc, $120a
    inc de
    nop
    ld b, a
    nop
    ld d, a
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, [hl-]
    jr c, @+$3b

    ld a, a
    ld d, c
    ld [hl], $37
    ld d, c
    ld h, h
    db $10
    db $10
    dec sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$27

    ld h, b
    ld h, d
    ld d, b
    ld d, d
    db $10
    db $10
    db $10
    ld a, [hl-]
    ld a, [hl-]
    ld bc, $0101
    ld bc, $017f
    ld bc, $0164
    ld bc, $0101
    dec sp
    ld bc, $1001
    db $10
    dec sp
    db $10
    jr nc, @+$30

    ld a, [de]
    ld d, $60
    ld h, d
    ld d, b
    ld d, d
    ld a, $01
    ld a, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ccf
    ld bc, $3e3f
    ld bc, $013e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ccf
    ld bc, $3a3f
    ld bc, $013c
    ld bc, $0101
    ld bc, $0101
    ld bc, $3d01
    db $10
    dec sp
    db $10
    ld b, e
    dec [hl]
    ld b, l
    ld d, h
    inc [hl]
    dec [hl]
    ld d, h
    ld d, h
    ld [hl-], a
    ld bc, $3435
    dec a
    db $10
    ld b, h
    db $10
    dec hl
    inc l
    ld de, $5411
    ld h, b
    inc l
    ld d, b
    ld h, b
    ld h, d
    jr nz, @+$23

    db $10
    db $10
    jr nz, jr_002_60f1

    cpl
    ld d, h
    db $10
    ld b, l
    ld d, h
    ld d, h
    dec hl
    ld de, $5454
    ld de, $542c
    ld d, e
    ld b, [hl]
    db $10
    ld de, $6767
    ld a, [hl+]
    daa
    ld h, b
    add hl, hl
    ld d, b
    jr nc, jr_002_611b

    ld a, [de]
    dec de
    jr nc, @+$33

    ld a, [de]
    dec de
    db $10

jr_002_60f1:
    add hl, hl
    db $10
    db $10
    daa
    ld de, $2729
    ld de, $6767
    ld a, [hl+]
    ld a, [hl+]
    db $10
    db $10
    db $10
    ld bc, $3301
    inc [hl]
    ld bc, $3501
    ld [hl-], a
    ld bc, $3301
    inc [hl]
    ld bc, $3501
    inc [hl]
    ld bc, $5401
    dec [hl]
    inc sp
    inc [hl]
    inc [hl]
    ld d, h
    ld d, h
    dec [hl]
    ld d, h

jr_002_611b:
    ld d, h
    ld [hl-], a
    ld bc, $3254
    inc [hl]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    dec [hl]
    ld d, h
    ld d, h
    inc [hl]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    dec hl
    ld d, h
    ld b, b
    ld de, $412c
    ld b, d
    ld d, h
    dec [hl]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    inc l
    dec hl
    dec hl
    inc l
    ld b, b
    ld b, d
    dec hl
    inc l
    ld de, $5411
    ld d, h
    inc l
    dec hl
    dec hl
    inc l
    ld de, $5411
    ld h, b
    inc l
    ld d, b
    db $10
    ld h, d
    db $10
    ld d, d
    dec hl
    inc l
    ld de, $1111
    ld de, $2767
    ld h, b
    ld h, d
    ld d, b
    ld d, d
    ld de, $6767
    ld a, [hl+]
    daa
    ld h, a
    db $10
    db $10
    daa
    ld de, $2729
    ld de, $6760
    ld d, b
    db $10
    ld h, d
    db $10
    ld d, d
    daa
    ld de, $2729
    db $10
    db $10
    db $10
    db $10
    ld h, b
    ld h, d
    ld d, b
    ld d, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, b
    db $10
    ld d, b
    db $10
    ld h, d
    db $10
    ld d, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, b
    ld h, d
    ld d, b
    ld d, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, b
    db $10
    ld d, b
    db $10
    ld h, d
    db $10
    ld d, d
    db $10
    db $10
    db $10
    db $10
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, b
    ld h, d
    ld d, b
    ld d, d
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    db $10
    db $10
    db $10
    ld [hl], c
    db $10
    ld h, b
    ld [hl], d
    ld [hl], e
    db $10
    ld h, d
    ld [hl], h
    ld [hl], l
    db $10
    db $10
    db $76
    ld [hl], a
    ld d, h
    ld d, h
    inc l
    dec hl
    ld d, h
    ld d, h
    inc l
    dec hl
    dec hl
    inc l
    ld de, $2b11
    inc l
    ld de, $2b11
    inc l
    ld de, $5411
    dec hl
    inc l
    ld b, b
    ld de, $412c
    ld b, d
    ld d, h
    ld d, h
    dec hl
    ld de, $6711
    ld h, a
    ld a, [hl+]
    daa
    ld de, $2729
    ld de, $6711
    daa
    ld de, $6711
    daa
    ld de, $6711
    daa
    ld de, $6760
    ld d, b
    db $10
    ld h, d
    db $10
    ld d, d
    daa
    ld de, $2729
    db $10
    ld h, d
    db $10
    ld d, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl+], a
    ld hl, $1410
    jr nz, jr_002_624d

    db $10
    db $10
    ld c, a
    db $10
    db $10
    db $10
    db $10
    ld c, [hl]
    jr nz, jr_002_6263

    jr nc, @+$33

    dec h
    db $10
    ld l, $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_002_624d:
    ld [hl+], a
    db $10
    dec l
    dec l
    ld sp, $1b14
    jr nc, jr_002_626b

    ld a, [de]
    ld h, $5f
    ld c, [hl]
    ld l, a
    ld e, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    nop
    nop
    nop

jr_002_6263:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_626b:
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl+], a
    ld hl, $1010
    jr nz, @+$23

    db $10
    db $10
    jr nz, @+$23

    db $10
    ld h, b
    jr nz, jr_002_62a1

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    dec l
    ld sp, $1b14
    jr nc, jr_002_62c7

    ld a, [de]
    dec de
    jr nc, @+$33

    ld a, [de]
    dec de
    jr nc, @+$33

    ld a, [de]
    dec de
    db $10

jr_002_62a1:
    db $10
    db $10
    db $10
    ld [hl+], a
    ld hl, $312d
    jr nz, @+$23

    jr nc, jr_002_62dd

    jr nz, @+$23

    jr nc, @+$33

    dec d
    ld h, $15
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $00
    nop
    nop
    nop
    db $10
    db $10
    jr nz, jr_002_62e5

    inc d
    dec de
    dec d

jr_002_62c7:
    ld h, $1a
    dec de
    ld h, $26
    ld a, [de]
    dec de
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    nop

jr_002_62dd:
    nop
    nop
    nop
    jr nc, jr_002_6313

    ld a, [de]
    dec de
    dec d

jr_002_62e5:
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $10
    ld e, d
    db $10
    db $10
    ld e, e
    ld c, h
    db $10
    ld e, d
    ld de, $5b4d
    ld e, l
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, b
    ld d, d
    ld h, b
    ld h, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, [hl]
    db $10
    db $10
    db $10

jr_002_6313:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld l, e
    db $10
    ld a, e
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    jr nz, jr_002_6343

    jr nc, jr_002_6355

    jr nz, jr_002_6347

    jr nc, jr_002_6359

    db $10
    ld c, [hl]
    db $10
    ld e, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    db $10
    db $10
    db $10
    inc e
    db $10
    inc e
    dec e
    ld e, h
    dec e
    ld e, h
    ld de, $6c5d
    ld l, l
    ld a, h
    ld a, l
    db $10
    db $10
    db $10

jr_002_6343:
    db $10
    db $10
    db $10
    db $10

jr_002_6347:
    db $10
    db $10
    ld l, [hl]
    db $10
    ld l, e
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    db $10
    ld h, d
    db $10
    ld d, d
    db $10

jr_002_6355:
    db $10
    db $10
    db $10
    db $10

jr_002_6359:
    ld h, b
    db $10
    ld d, b
    nop
    nop
    nop
    nop
    db $10
    ld c, b
    db $10
    ld e, b
    ld c, c
    ld c, d
    ld e, c
    ld de, $7b4b
    ld de, $6c5c
    ld l, l
    ld a, h
    ld a, l
    jr nz, @+$23

    jr nc, @+$33

    jr nz, @+$23

    jr nc, jr_002_63a9

    jr nz, jr_002_639b

    jr nc, jr_002_63ad

    nop
    nop
    nop
    nop
    ld h, $26
    ld h, $26
    ld h, $17
    ld h, $17
    jr nz, @+$23

    jr nc, jr_002_63bd

    jr nz, @+$17

    jr nc, @+$17

    db $10
    ld h, d
    jr nz, @+$23

    db $10
    db $10
    jr nz, jr_002_63b9

    ld l, c
    ld h, e
    ld a, c

jr_002_639b:
    ld a, b
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld a, [de]

jr_002_63a9:
    dec de
    ld h, $26
    ld a, [de]

jr_002_63ad:
    ld h, $26
    ld h, $30
    ld sp, $1b1a
    jr nc, @+$33

    ld a, [de]
    dec de
    nop

jr_002_63b9:
    ld b, a
    nop
    ld d, a
    ld l, h

jr_002_63bd:
    ld l, l
    ld a, h
    ld a, l
    ld a, [de]
    dec de
    ld h, $26
    ld d, $10
    rla
    ld hl, $1010
    jr nz, @+$23

    db $10
    db $10
    jr nz, jr_002_63f5

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl+], a
    ld l, c
    ld l, b
    ld a, d
    ld a, b
    ld l, c
    ld h, e
    ld a, c
    ld a, b
    ld h, $26
    ld h, $26
    rla
    ld sp, $1b26
    jr nc, jr_002_641b

    ld a, [de]
    dec de
    jr nc, jr_002_641c

    ld a, [de]
    ld d, $10
    db $10
    db $10
    db $10
    db $10

jr_002_63f5:
    dec l
    db $10
    inc d
    ld l, d
    nop
    ld a, d
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld l, d
    nop
    ld a, d

jr_002_641b:
    nop

jr_002_641c:
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    ld e, $1e
    inc hl
    jr nz, jr_002_644b

    jr nc, @+$33

    jr nz, @+$23

    jr nc, jr_002_6461

    rra
    db $10
    inc h
    rra
    db $10
    db $10
    db $10
    db $10
    ld d, $10
    rla
    ld hl, $1010
    jr nz, jr_002_6465

    db $10
    ld e, $1e
    inc hl
    inc hl
    ld h, c
    ld h, c
    nop
    nop
    jr jr_002_6463

jr_002_644b:
    ld h, $19
    nop
    ld h, $19
    ld [hl], b
    inc h
    nop
    ld [hl], b
    rra
    db $10
    inc h
    rra
    rla
    ld sp, $1b26
    jr nc, jr_002_648c

    ld a, [de]
    ld d, $23

jr_002_6461:
    ld h, c
    ld h, c

jr_002_6463:
    nop
    nop

jr_002_6465:
    jr jr_002_647f

    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $19
    nop
    ld h, $19
    ld [hl], b
    inc h
    nop
    ld [hl], b
    dec l
    db $10
    ld bc, $103e
    db $10
    ccf

jr_002_647f:
    db $10
    ld a, [de]
    dec de
    ld h, $26
    ld h, $26
    ld h, $26
    db $10
    db $10
    db $10
    db $10

jr_002_648c:
    db $10
    db $10
    db $10
    db $10
    ld h, $26
    ld h, $26
    ld a, [de]
    dec de
    ld h, $26
    ld l, e
    ld l, d
    dec sp
    inc a
    ld l, $2f
    dec a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    ld c, l
    ld c, [hl]
    ld e, l
    ld e, [hl]
    ld a, b
    ld a, c
    ld bc, $7801
    ld a, c
    ld bc, $7a01
    ld a, e
    ld bc, $7a01
    ld e, a
    ld bc, $6d48
    ld l, [hl]
    ld a, l
    ld a, [hl]
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    ld l, c
    ld l, b
    ld l, d
    ld l, e
    ld l, c
    ld l, b
    ld l, d
    ld l, e
    ld bc, $7701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, HeaderROMSize
    ld c, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [bc], a
    inc bc
    inc b
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, b
    ld b, c
    db $76
    ld bc, $7b7a
    ld bc, $1001
    db $10
    db $10
    db $10
    db $10
    ld b, $10
    ld c, $07
    ld [$120f], sp
    add hl, bc
    db $10
    inc de
    db $10
    ld l, c
    ld l, h
    ld l, d
    ld l, e
    ld l, c
    ld l, h
    ld l, d
    ld l, e
    db $76
    ld bc, $721a
    ld bc, $7301
    ld [hl], d
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, [bc]
    inc d
    dec d
    dec bc
    inc c
    ld d, $17
    dec c
    ld c, c
    jr jr_002_6549

    ld [hl-], a
    dec [hl]
    db $10
    jr c, jr_002_656b

    ld l, d
    add hl, sp
    ld a, [hl-]
    ld l, d
    ld l, e
    ld bc, $6a01
    ld l, e
    ld bc, $6901
    ld d, e
    ld l, d
    jr nc, @+$0c

    inc e
    ld bc, $111e

jr_002_6549:
    rra
    ld de, $201f
    ld hl, $2120
    dec [hl]
    ld [hl], $38
    add hl, sp
    ld l, d
    ld l, e
    ld a, [hl-]
    ld bc, $6b6a
    ld bc, $6a01
    ld l, e
    ld bc, $7601
    ld bc, $0176
    ld bc, $0101
    ld bc, $2210
    daa

jr_002_656b:
    jr z, jr_002_6590

    dec h
    ld de, $2629
    ld [hl+], a
    ld de, $242a
    ld c, a
    dec hl
    inc l
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, [de]
    ld [hl], d
    db $10
    db $10
    ld [hl], e
    ld [hl], d
    db $10
    db $10
    ld a, h
    ld a, h
    ld l, d
    ld l, e
    ld a, h
    ld a, h
    ld l, d
    ld l, e

jr_002_6590:
    ld a, h
    ld a, h
    ld l, d
    ld l, e
    ld a, h
    ld a, h
    ld l, d
    ld l, e
    db $10
    db $10
    ld l, l
    ld l, [hl]
    db $10
    db $10
    ld l, [hl]
    ld l, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, l
    ld a, [hl]
    db $10
    db $10
    ld a, [hl]
    ld a, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld l, l
    db $10
    db $10
    ld l, [hl]
    ld l, [hl]
    db $10
    db $10
    ld l, [hl]
    ld l, [hl]
    db $10
    db $10
    ld l, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, l
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    db $10
    db $10
    ld a, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld l, $2f
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld l, l
    ld l, [hl]
    ld a, l
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    db $10
    db $10
    db $10
    db $10
    db $10
    ld sp, $1010
    db $10
    db $10
    db $10
    ld e, b
    ld c, c
    ld c, d
    ld e, c
    ld e, d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld sp, $1032
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3132
    ld [hl-], a
    ld l, c
    ld l, b
    ld l, d
    ld l, d
    ld a, $3f
    ld l, h
    ld l, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
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
    db $10
    db $10
    ld c, c
    ld c, a
    db $10
    db $10
    db $10
    ld [bc], a
    db $10
    db $10
    inc h
    ld c, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl], b
    ld [hl], c
    ld h, d
    ld bc, $7172
    ld h, c
    ld bc, $1063
    ld h, b
    ld h, e
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, e
    ld bc, $5150
    ld bc, $4201
    ld b, e
    ld bc, $4052
    ld b, c
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    ld l, b
    ld l, c
    db $10
    db $10
    ld l, b
    ld l, c
    ld bc, $3401
    dec [hl]
    inc sp
    inc [hl]
    inc [hl]
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
    nop
    nop
    nop
    nop
    nop
    db $10
    ld c, c
    ld e, b
    ld e, c
    ld c, [hl]
    ld c, a
    ld e, [hl]
    db $10
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    dec hl
    ld d, h
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    ld b, e
    db $10
    db $10
    ld b, h
    ld [hl], h
    db $10
    db $10
    ld b, d
    ld [hl], h
    db $10
    db $10
    ld b, d
    ld [hl], h
    db $10
    db $10
    db $10
    db $10
    ld c, c
    ld c, a
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld b, l
    ld b, e
    ld b, h
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, e
    ld b, l
    ld bc, HeaderNewLicenseeCode
    ld bc, $6001
    ld h, c
    ld d, [hl]
    ld bc, $6200
    ld bc, $6157
    nop
    ld bc, $6201
    ld h, e
    ld bc, $0101
    ld bc, $6968
    ld l, d
    ld l, e
    ld l, b
    ld b, [hl]
    ld b, a
    ld d, b
    ld bc, $0101
    ld bc, $6564
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    ld h, d
    ld h, e
    ld bc, $0101
    ld bc, $6b6a
    ld bc, $4651
    ld bc, $0152
    ld bc, $0101
    ld bc, $6564
    ld bc, $0070
    nop
    ld d, l
    ld d, l
    nop
    nop
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], c
    ld bc, $0101
    ld bc, $6b01
    ld b, [hl]
    ld bc, $0154
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld a, b
    ld a, c
    ld bc, $7801
    ld a, c
    ld bc, $7a01
    ld a, e
    ld bc, $7a01
    ld a, e
    ld bc, $0001
    nop
    nop
    nop
    ld [hl], a
    ld bc, $0176
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld a, b
    ld a, c
    jr jr_002_6821

    ld a, d
    ld a, e
    ld [$4809], sp
    ld c, c
    ld e, b
    ld e, c
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    ld a, d
    ld a, e
    ld [$7a09], sp
    add hl, hl
    ld [$0009], sp
    nop
    nop
    nop
    ld a, b

jr_002_6821:
    ld a, c
    jr jr_002_683d

    ld a, d
    ld a, e
    ld [$7809], sp
    ld a, c
    jr jr_002_6845

    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld a, b
    ld a, c
    jr jr_002_6851

    ld a, b
    ld a, c
    jr jr_002_6855

    ld a, d

jr_002_683d:
    add hl, hl
    ld [$0009], sp
    nop
    nop
    nop
    nop

jr_002_6845:
    nop
    nop
    nop
    ld a, b
    ld a, c
    jr jr_002_6865

    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, d

jr_002_6851:
    ld e, e
    ld e, d
    ld e, e
    ld a, d

jr_002_6855:
    ld a, e
    ld [$0409], sp
    dec b
    ld [de], a
    inc de
    inc a
    dec a
    ld d, $17
    ld l, h
    ld l, h
    ld a, h
    ld a, h
    ld e, b

jr_002_6865:
    ld e, c
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $00
    nop
    nop
    nop
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    dec l
    inc a
    dec a
    ld c, [hl]
    ld c, a
    jr z, jr_002_6911

    ld e, b
    ld e, c
    ld l, b
    ld l, c
    ld e, d
    ld e, e
    ld l, d
    ld l, e
    ld c, [hl]
    ld c, a
    ld l, l
    jr z, jr_002_68ff

    ld c, a
    ld l, l
    jr c, jr_002_68b5

jr_002_68b5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    dec hl
    inc h
    inc h
    dec sp
    dec hl
    inc h
    inc h
    dec sp
    dec hl
    inc h
    inc h
    dec sp
    ld a, [de]
    inc h
    inc h
    dec sp
    dec hl
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    inc h
    nop
    nop
    inc h
    daa
    dec e
    inc h
    ld a, [bc]
    ld [hl+], a
    inc h
    inc h
    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    ld [hl+], a
    ld [hl+], a
    inc h
    inc e
    ld [hl+], a
    dec bc
    inc c
    ld a, [hl]
    inc c
    ld a, [hl]
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld a, h
    ld a, h
    ld d, $17
    ld e, b
    ld e, c
    ld e, b

jr_002_68ff:
    ld e, c
    inc c
    ld l, [hl]
    inc c
    ld a, [hl]
    ld l, a
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, a
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, a
    dec c
    ld a, [hl]
    dec c
    inc c

jr_002_6911:
    ld a, [hl]
    inc c
    ld a, [hl]
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    nop
    nop
    dec e
    inc h
    nop
    nop
    inc h
    inc h
    nop
    nop
    inc h
    inc h
    ld e, b
    ld e, c
    inc h
    inc h
    ld e, d
    ld e, e
    inc h
    inc e
    nop
    nop
    inc h
    daa
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld a, [bc]
    ld [hl+], a
    inc c
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a
    dec bc
    ld l, a
    dec c
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld c, [hl]
    ld c, a
    jr z, jr_002_69d1

    inc c
    ld a, [hl]
    inc c
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    dec c
    ld a, [hl]
    dec c
    ld c, [hl]
    ld c, a
    jr z, @+$6f

    ld a, b
    ld a, c
    jr jr_002_6995

    ld a, d
    ld a, e
    ld [$3b09], sp
    dec hl
    inc h
    inc h
    inc c
    ld a, [hl]
    inc c
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    dec c
    ld a, [hl]
    dec c
    dec sp

jr_002_6995:
    dec hl
    inc h
    inc h
    ld a, d
    ld a, e
    ld [$782a], sp
    ld a, c
    inc h
    inc h
    nop
    nop
    dec e
    inc h
    ld e, b
    ld e, c
    inc h
    inc h
    ld e, d
    ld e, e
    inc h
    inc h
    ld a, h
    ld e, h
    inc h
    inc h
    ld e, l
    nop
    inc h
    inc h
    nop
    nop
    inc h
    inc e
    nop
    nop
    ld d, $17
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld [hl+], a
    inc c
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a

jr_002_69d1:
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a
    dec bc
    ld l, a
    dec c
    ld h, a
    dec h
    ld [hl], a
    ld h, $00
    nop
    nop
    nop
    nop
    ld b, [hl]
    rla
    ld b, [hl]
    ld hl, $2121
    ld hl, $0047
    ld b, a
    ld d, $00
    nop
    ld d, $17
    ld b, $07
    ld b, $07
    nop
    nop
    ld d, $17
    ld l, h
    ld c, h
    ld a, h
    ld e, h
    ld c, l
    nop
    ld e, l
    nop
    ld b, b
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld hl, $2121
    ld hl, $5647
    ld b, a
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $40
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $00
    nop
    inc h
    daa
    nop
    nop
    nop
    nop
    jr nc, jr_002_6a53

    nop
    ld b, c
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld a, b
    ld a, c
    jr jr_002_6a45

    ld a, d
    ld a, e
    ld [$7809], sp
    ld a, c
    jr jr_002_6a4d

    ld a, d
    ld a, e
    ld [$7809], sp
    add hl, sp
    jr jr_002_6a55

    ld a, [hl-]
    ld a, [hl-]
    ld [$0002], sp
    ld d, c
    ld h, b
    ld h, c
    ld d, d

jr_002_6a45:
    ld d, e
    ld h, d
    ld h, e
    ld a, d
    ld a, e
    ld a, [hl+]
    inc h
    ld a, b

jr_002_6a4d:
    ld a, c
    inc h
    daa
    ld a, [hl+]
    inc h
    add hl, sp

jr_002_6a53:
    ld a, [hl-]
    inc h

jr_002_6a55:
    inc h
    ld a, [hl-]
    ld a, [hl-]
    daa
    ld l, h
    ld a, [hl-]
    ld a, h
    ld l, h
    ld c, h
    ld a, h
    ld e, h
    ld a, b
    ld a, c
    jr jr_002_6a7d

    ld a, d
    ld a, e
    ld [$3909], sp
    ld a, [hl-]
    jr jr_002_6a6e

    ld a, [hl-]
    ld a, [hl-]

jr_002_6a6e:
    inc bc
    add hl, bc
    nop
    nop
    ld l, h
    ld l, h
    ld [bc], a
    inc bc
    ld c, h
    ld c, l
    ld [hl], b
    ld [hl], c
    nop
    ld [hl], $72

jr_002_6a7d:
    ld [hl], e
    jr nz, @+$22

    ld a, d
    ld a, e
    inc h
    daa
    ld a, b
    ld a, c
    jr @+$1b

    nop
    inc l
    nop
    inc a
    dec l
    ld l, h
    dec a
    ld a, h
    ld a, h
    ld a, h
    nop
    nop
    ld e, h
    ld e, l
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    ld hl, $2121
    ld hl, $3a3a
    inc bc
    add hl, de
    ld a, d
    ld a, e
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    inc h
    ld a, [hl-]
    ld a, [hl-]
    inc h
    inc h
    ld a, [hl-]
    ld a, [hl-]
    inc d
    dec d
    ld b, $07
    ld a, d
    ld a, e
    ld [$4d09], sp
    nop
    ld e, l
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
    inc h
    add hl, sp
    ld a, [hl-]
    nop
    ld [bc], a
    ld l, h
    ld c, h
    inc bc
    nop
    ld c, l
    nop
    ld b, $07
    ld b, $07
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld d, $17
    ld a, h
    ld a, h
    ld d, $17
    nop
    nop
    ld l, h
    ld l, h
    nop
    nop
    ld l, h
    ld l, h
    ld a, [hl+]
    inc h
    ld a, [hl-]
    ld a, [hl-]
    inc h
    daa
    ld a, [hl-]
    ld a, [hl-]
    ld b, $07
    ld b, $07
    nop
    nop
    nop
    nop
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $7c
    ld e, h
    ld d, $17
    ld e, l
    nop
    ld d, $17
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    ld a, [hl+]
    inc h
    add hl, sp
    ld a, [hl-]
    inc h
    daa
    ld a, [hl-]
    ld a, [hl-]
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld l, h
    ld l, h
    ld a, h
    ld a, h
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $6c
    ld c, h
    ld a, h
    ld e, h
    ld c, l
    nop
    ld e, l
    nop
    nop
    ld [bc], a
    nop
    inc l
    inc bc
    nop
    dec l
    ld l, h
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    nop
    nop
    ld a, [hl+]
    inc h
    nop
    nop
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    inc h
    nop
    nop
    inc h
    daa
    nop
    inc a
    nop
    nop
    dec a
    ld a, h
    nop
    nop
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    add hl, sp
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld [bc], a
    inc bc
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    add hl, sp
    ld a, [hl-]
    nop
    ld [bc], a
    ld a, [hl-]
    ld a, [hl-]
    inc bc
    nop
    nop
    nop
    ld d, $17
    nop
    nop
    ld d, $17
    inc h
    inc h
    ld a, [hl-]
    ld a, [hl-]
    inc h
    daa
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld l, h
    ld c, h
    ld a, h
    ld e, h
    ld c, l
    dec h
    ld e, l
    ld h, $40
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $02
    inc bc
    ld c, h
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld l, h
    ld l, h
    ld a, h
    ld a, h
    ld l, h
    ld c, h
    ld a, h
    ld e, h
    ld c, l
    nop
    ld e, l
    nop
    ld a, [hl+]
    inc h
    ld a, [hl-]
    ld a, [hl-]
    inc h
    inc h
    ld a, [hl-]
    ld a, [hl-]
    inc h
    daa
    ld a, [hl-]
    ld a, [hl-]
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc l
    dec l
    nop
    nop
    ld l, h
    ld l, h
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    nop
    inc a
    ld d, $17
    dec a
    ld a, h
    dec e
    inc h
    nop
    nop
    inc h
    inc e
    inc a
    dec a
    ld d, $17
    nop
    nop
    inc h
    inc h
    nop
    nop
    inc h
    inc h
    nop
    nop
    inc h
    daa
    nop
    nop
    nop
    nop
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld a, [bc]
    ld [hl+], a
    inc c
    ld l, [hl]
    ld [hl+], a
    dec bc
    ld l, a
    dec c
    ld h, a
    dec h
    ld [hl], a
    ld h, $3a
    ld a, [hl-]
    nop
    ld [bc], a
    ld a, [hl-]
    ld a, [hl-]
    inc bc
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld a, [hl+]
    inc h
    add hl, sp
    ld a, [hl-]
    inc h
    daa
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld a, [hl+]
    inc h
    add hl, sp
    ld a, [hl-]
    ld [hl], h
    ld [hl], l
    scf
    nop
    halt
    nop
    nop
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    nop
    ld [bc], a
    ld l, h
    ld c, h
    inc bc
    nop
    ld c, l
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    nop
    nop
    ld l, h
    ld l, h
    ld b, a
    nop
    ld b, a
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld c, h
    ld a, h
    ld e, h
    ld c, l
    nop
    ld e, l
    rla
    inc [hl]
    dec [hl]
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    ld e, h
    ld e, l
    ld d, $17
    nop
    nop
    ld d, $17
    nop
    inc l
    ld d, $3c
    dec l
    ld l, h
    dec a
    ld a, h
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $54
    ld d, l
    ld h, h
    ld h, l
    nop
    nop
    ld h, [hl]
    nop
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $40
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $00
    ld b, [hl]
    dec e
    inc h
    ld hl, $2421
    inc h
    ld b, a
    nop
    inc h
    inc h
    nop
    nop
    inc h
    inc e
    ld c, $5e
    ld e, $1f
    ccf
    ld l, $0e
    ld e, [hl]
    cpl
    ld e, $3f
    ld l, $1f
    nop
    cpl
    nop
    ld a, [bc]
    ld [hl+], a
    inc c
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    ld l, a
    ld l, [hl]
    ld [hl+], a
    dec bc
    ld l, a
    dec c
    ld l, $2f
    ld e, [hl]
    ccf
    ld e, $1f
    ld l, $2f
    ld c, $5e
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld [de], a
    inc de
    nop
    nop
    ld d, $17
    nop
    nop
    nop
    ld c, $0e
    rrca
    ld e, [hl]
    rra
    nop
    nop
    ld c, $0f
    ld c, $0f
    ld e, $1f
    nop
    nop
    ld c, $0f
    ld c, $0f
    ld e, $1f
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld h, a
    dec h
    ld [hl], a
    ld h, $00
    ld e, $00
    ld l, $1f
    dec de
    cpl
    ld e, $5e
    rra
    rra
    dec de
    ld e, $1f
    ld e, [hl]
    cpl
    ld e, $1f
    ld l, $1b
    ld l, $2f
    ld e, [hl]
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $5e
    ld e, $1f
    ccf
    ld l, $0e
    ld e, [hl]
    cpl
    ld e, $3f
    ld l, $1f
    ld c, $2f
    ld e, $5e
    ld e, $1f
    ld l, $1f
    ccf
    cpl
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $2e
    cpl
    ld e, [hl]
    ccf
    ld e, $1f
    ld l, $2f
    ld c, $5e
    ld e, $1f
    ccf
    ld l, $0e
    ld e, [hl]
    dec de
    ld e, [hl]
    ld e, $1f
    ccf
    ld e, $00
    ld l, $00
    nop
    nop
    nop
    nop
    ld e, $00
    ld l, $1f
    ld c, $2f
    ld e, $5e
    ccf
    rra
    ld c, $2e
    cpl
    ld e, [hl]
    ccf
    ld e, $1f
    ld l, $2f
    ld l, $2f
    ld a, $3f
    ld c, $5e
    ld e, $1f
    nop
    nop
    nop
    nop
    ld c, $5e
    ld e, $1f
    ccf
    ld l, $0e
    ld e, [hl]
    cpl
    ld e, $3f
    ld l, $1f
    nop
    cpl
    nop
    ld a, $3f
    nop
    nop
    ld c, $0f
    ld e, $1f
    ld l, $2f
    ld a, $3f
    nop
    nop
    nop
    ld c, $2e
    cpl
    ld e, [hl]
    ccf
    ld e, $1f
    ld l, $2f
    ld c, $5e
    ld e, $1f
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    ld a, $3f
    ld c, $0f
    ld e, $1f
    nop
    ld e, $00
    ld l, $1f
    ld c, $2f
    ld e, $5e
    ccf
    rra
    ld c, $2e
    cpl
    ld e, [hl]
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    ld e, $1f
    ld l, $2f
    ld a, $3f
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    ld [hl+], a
    inc hl
    inc de
    inc d
    inc hl
    inc h
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    inc bc
    inc bc
    ld sp, $0331
    inc bc
    ld sp, $0431
    inc bc
    jr nc, jr_002_6e9d

    inc bc
    dec b
    ld sp, $0032
    nop
    ld [de], a
    inc de
    nop
    nop
    inc de
    inc d
    ld [hl], b
    ld [hl], c
    ld b, b
    ld b, c
    ld [hl], d
    ld [hl], e
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc hl
    nop
    nop
    inc hl
    inc h
    nop
    nop
    ld d, b
    ld d, c
    ld [hl], h
    ld [hl], l
    ld d, d

jr_002_6e9d:
    ld d, e
    db $76
    ld [hl], a
    rlca
    rlca
    rla
    rla
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    rlca
    rlca
    rla
    rla
    nop
    nop
    ld b, b
    ld b, c
    nop
    nop
    ld b, d
    ld b, e
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    dec d
    ld d, $40
    ld b, c
    dec d
    ld d, $42
    ld b, e
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld [hl], h
    ld [hl], l
    ld d, d
    ld d, e
    db $76
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $00
    nop
    dec d
    ld d, $00
    nop
    nop
    nop
    dec d
    ld d, $25
    ld h, $15
    ld d, $25
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, c
    dec d
    ld d, $42
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld b, [hl]
    ld b, a
    ld d, l
    ld d, [hl]
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld h, [hl]
    inc l
    ld c, $0f
    dec l
    ld l, $0c
    dec c
    cpl
    inc l
    ld c, $0f
    dec l
    ld l, $0c
    dec c
    cpl
    ld h, a
    ld c, $0f
    ld h, [hl]
    inc l
    db $10
    db $10
    ld [bc], a
    inc bc
    db $10
    db $10
    inc b
    dec b
    db $76
    inc a
    ld a, [hl]
    ld c, h
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    inc a
    ld c, a
    ld c, h
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    ld [hl], a
    ld c, a
    ld a, a
    db $76
    inc a
    ld a, [hl]
    ld c, h
    db $10
    inc de
    db $10
    db $10
    inc d
    dec d
    db $10
    db $10
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    inc c
    dec c
    inc e
    dec e
    ld h, [hl]
    inc l
    db $76
    inc a
    ld c, h
    ld c, l
    ld h, [hl]
    inc l
    ld c, [hl]
    ld c, a
    dec l
    ld l, $7f
    ld a, [hl]
    cpl
    inc l
    ld c, h
    ld c, l
    dec l
    ld l, $4e
    ld c, a
    cpl
    ld h, a
    ld c, h
    ld c, l
    ld h, [hl]
    inc l
    inc c
    dec c
    inc e
    dec e
    ld a, [hl]
    ld c, h
    ld h, [hl]
    inc l
    db $76
    inc a
    ld a, [hl]
    ld c, h
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    inc a
    ld c, a
    ld c, h
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    ld [hl], a
    ld c, a
    ld a, a
    db $76
    inc a
    ld a, [hl]
    ld c, h
    dec l
    ld l, $3d
    ld a, $2f
    inc l
    ccf
    inc a
    nop
    nop
    inc e
    dec e
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    dec e
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    dec e
    nop
    nop
    ld e, $1f
    ld c, l
    ld c, [hl]
    nop
    nop
    ld c, a
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    cpl
    ld h, a
    ld c, h
    ld c, l
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    inc a
    ld c, a
    ld c, h
    nop
    nop
    nop
    nop
    ccf
    ld [hl], a
    ld c, a
    ld a, a
    nop
    rrca
    nop
    rra
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld h, a
    nop
    ld [hl], a
    nop
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    dec e
    nop
    rrca
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $0d
    ld e, $1d
    ld c, h
    ld c, l
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $66
    ld e, $76
    nop
    dec c
    nop
    dec e
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld h, [hl]
    inc l
    inc c
    dec c
    inc l
    dec l
    ld c, $7e
    ld l, $2f
    nop
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    db $76
    inc a
    ld a, [hl]
    ld c, h
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld [$1841], sp
    ld sp, $660c
    inc e
    db $76
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    inc l
    dec l
    inc a
    dec a
    ld bc, $5e01
    ld e, a
    ld bc, $0801
    add hl, bc
    ld bc, $5e01
    ld e, a
    ld bc, $0801
    add hl, bc
    inc e
    ld a, [hl]
    cpl
    inc l
    ld c, h
    ld c, l
    dec l
    ld l, $01
    ld bc, $5f5e
    jr z, @+$2a

    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld bc, $1801
    add hl, de
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    inc a
    ld c, h
    ld c, l
    dec a
    ld a, $4e
    ld c, a
    ld l, [hl]
    ld l, a
    ld bc, $6e01
    ld l, a
    ld bc, $5e01
    ld e, a
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    nop
    nop
    nop
    nop
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    inc a
    ld c, a
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $5e01
    ld e, a
    ld bc, $0801
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    inc e
    db $76
    inc l
    dec l
    inc a
    dec a
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, h
    ld c, l
    ld h, [hl]
    inc l
    nop
    nop
    nop
    nop
    jr z, jr_002_7242

    jr nz, @+$61

    jr z, jr_002_7246

    ld [$0021], sp
    nop
    nop
    nop
    inc c
    ld a, [hl]
    inc e
    nop
    ld c, h
    ld c, l
    nop
    nop
    inc c
    dec c
    inc e
    dec e
    db $76
    inc a
    ld a, [hl]
    ld c, h
    nop
    nop
    nop
    nop
    jr nc, jr_002_72a9

    ld bc, $1801
    ld sp, $0101
    nop
    nop

jr_002_7242:
    nop
    nop
    inc c
    dec c

jr_002_7246:
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    dec e
    nop
    ld h, [hl]
    ld e, $76
    nop
    nop
    nop
    nop
    ld l, $2f
    ld a, $3f
    ld h, a
    nop
    ld [hl], a
    nop
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    inc c
    dec c
    inc e
    dec e
    ld c, $7e
    ld e, $00
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    ld l, $2f
    ld a, a
    nop
    cpl
    inc l
    ld c, $0f
    dec l
    ld l, $0c
    dec c
    cpl
    ld h, a
    ld c, $0f
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
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    inc a
    ld c, a
    ld c, h
    nop

jr_002_72a9:
    nop
    nop
    nop
    ccf
    ld [hl], a
    ld c, a
    ld a, a
    nop
    rrca
    nop
    rra
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    ld l, $2f
    ld a, $3f
    ld h, a
    nop
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld b, a
    ld d, a
    inc c
    dec c
    ld b, a
    ld d, a
    ld c, $0f
    ld b, a
    ld d, a
    inc c
    dec c
    ld b, a
    ld d, a
    ld c, $0f
    ld e, $1f
    ld bc, $0101
    ld bc, $0101
    ld bc, $0c01
    dec c
    inc e
    dec e
    ld b, [hl]
    nop
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld d, [hl]
    ld c, $0f
    ld e, $1f
    jr z, jr_002_7342

    ld e, [hl]
    ld e, a
    jr z, jr_002_7325

    ld [$0c41], sp
    dec c
    inc e
    dec e
    ld b, [hl]

jr_002_7325:
    nop
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld d, [hl]
    ld c, $0f
    ld e, $1f
    ld l, [hl]
    ld l, a
    ld bc, $1801
    ld sp, $0101
    inc c
    dec c

jr_002_7342:
    cpl
    ld h, a
    ld b, [hl]
    nop
    ld h, [hl]
    inc l
    nop
    ld b, [hl]
    dec l
    ld l, $0e
    rrca
    cpl
    ld h, a
    nop
    nop
    ld h, [hl]
    inc l
    nop
    nop
    dec l
    ld l, $00
    nop
    dec l
    ld l, $00
    nop
    cpl
    ld h, a
    ccf
    ld [hl], a
    ld c, a
    ld a, a
    db $76
    inc a
    ld a, [hl]
    ld c, h
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    ld [hl], a
    ld c, a
    ld a, a
    db $76
    inc a
    ld a, [hl]
    ld c, h
    dec a
    ld a, $4d
    ld c, [hl]
    dec a
    ld a, $4d
    ld c, [hl]
    ccf
    ld [hl], a
    ld c, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    nop
    nop
    ld l, l
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld l, l
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, l
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    ld a, h
    ld l, l
    ld l, l
    ld a, l
    ld a, l
    ld l, l
    nop
    ld a, l
    nop
    ld a, h
    ld a, l
    nop
    nop
    dec a
    ld a, $4c
    ld c, l
    ccf
    ld [hl], a
    ld c, [hl]
    ld a, a
    db $76
    inc a
    ld a, [hl]
    ld c, l
    dec a
    ld a, $4e
    ld c, a
    ccf
    inc a
    ld c, h
    ld c, l
    ld h, $27
    ld bc, $0101
    inc sp
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc sp
    ld de, $3401
    ld de, $3511
    ld de, $1010
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, @+$3a

    ld de, $1039
    ld bc, $1039
    db $10
    db $10
    db $10
    ld bc, $1601
    rla
    ld d, $17
    ld bc, $1001
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, b
    db $10
    jr c, jr_002_74c4

    ld de, $1111
    ld de, $0111
    ld bc, $0101
    ld c, c
    db $10
    ld c, d
    ld c, b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, sp
    db $10
    ld bc, $5a39
    ld de, $116a
    ld de, $1111
    ld de, $1111
    ld de, $0111
    ld bc, $0101
    ld bc, $013a
    ld c, d
    ld c, b
    db $10
    ld de, $1048
    jr c, @+$3a

    ld de, $6968
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $5b11
    ld bc, $5b11
    ld bc, $0101
    ld bc, $113a
    ld c, d
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld e, b
    ld e, c
    ld de, $1111
    ld de, $1111
    ld de, $0111
    ld bc, $0101
    ld bc, $013a
    ld c, d
    ld de, $1111
    ld de, $0000
    nop
    nop

jr_002_74c4:
    ld de, $113b
    ld c, e
    ld bc, $0101
    ld bc, $1111
    ld de, $1111
    ld e, b
    ld l, e
    ld bc, $1111
    ld de, $1111
    ld l, e
    ld l, e
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld e, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    ld e, c
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
    ld l, b
    ld l, c
    ld de, $1111
    ld de, $1111
    ld de, $6b6b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1601
    rla
    ld d, $17
    ld bc, $0001
    nop
    nop
    nop
    jr z, jr_002_7556

    ld bc, $2801
    jr z, @+$03

    ld bc, $2828
    ld bc, $2801
    jr z, @+$03

    ld bc, $2828
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $6968
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111

jr_002_7556:
    ld de, $3711
    ld bc, $2828
    ld bc, $2801
    jr z, @+$28

    daa
    ld bc, $0101
    ld bc, $2726
    ld de, $2811
    jr z, @+$13

    ld de, $5528
    ld de, $2811
    jr z, jr_002_7586

    ld de, $2726
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    ld bc, $0101
    ld bc, $0101

jr_002_7586:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $113a
    ld c, d
    ld de, $1111
    ld de, $6811
    ld l, c
    ld de, $1111
    ld de, $1111
    jr nz, jr_002_7601

    jr nc, @+$71

    ld [$1809], sp
    add hl, de
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    ld bc, $163a
    rla
    ld de, $2811
    jr z, @+$13

    ld de, $2828
    ld de, $2811
    jr z, @+$03

    ld bc, $5f20
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $5801
    ld e, c
    jr z, jr_002_75fc

    ld bc, $2801
    jr z, @+$03

    ld bc, $2828
    ld bc, $2801
    jr z, @+$32

    ld l, a
    ld bc, $1801
    add hl, de
    ld bc, $5e01
    ld e, a
    ld l, [hl]
    ld l, a
    ld [$1821], sp
    ld sp, $5f5e
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a

jr_002_75fc:
    ld [$1809], sp
    add hl, de
    ld e, [hl]

jr_002_7601:
    ld e, a
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    ld bc, $5e01
    ld e, a
    ld bc, $0801
    ld hl, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1133
    ld bc, $1133
    ld de, $1111
    ld de, $1111
    ld b, l
    ld l, [hl]
    ld l, a
    ld bc, $1801
    ld sp, $0101
    ld bc, $0101
    ld bc, $2806
    ld b, b
    ld e, a
    jr z, @+$2a

    ld e, [hl]
    ld e, a
    jr z, jr_002_7666

    ld [$2809], sp
    jr z, jr_002_76a1

    ld e, a
    jr z, @+$2a

    ld [$5e09], sp
    ld e, a
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    ld bc, $2836
    jr z, jr_002_7685

    ld l, a
    ld bc, $1801
    add hl, de
    ld bc, $0001
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111

jr_002_7666:
    ld de, $3a11
    ld de, $114a
    ld de, $1111
    ld de, $5f5e
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $5411
    jr z, @+$13

jr_002_7685:
    ld b, l
    jr z, @+$2a

    scf
    ld a, [hl-]
    jr z, @+$2a

    ld de, $2811
    jr z, @+$5a

    ld e, c
    jr z, @+$09

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2806
    ld b, b

jr_002_76a1:
    ld e, a
    jr nc, jr_002_7713

    ld [$1809], sp
    add hl, de
    ld e, b
    ld e, c
    scf
    ld bc, $0101
    ld bc, $5e01
    ld b, c
    ld l, [hl]
    ld sp, $0101
    scf
    ld bc, $0101
    ld bc, $4001
    add hl, bc
    ld d, b
    add hl, de
    ld bc, $5e01
    ld e, a
    ld bc, $0801
    add hl, bc
    jr z, jr_002_76f2

    ld e, [hl]
    ld e, a
    jr z, @+$2a

    ld [$0009], sp
    nop
    nop
    nop
    rlca
    ld bc, $0141
    ld bc, $0101
    ld bc, $0160
    ld b, b
    add hl, bc
    ld bc, $2801
    jr z, jr_002_771b

    jr nc, @+$2a

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop

jr_002_76f2:
    nop
    nop
    ld d, c
    ld bc, $0161
    ld bc, $0101
    ld bc, $1950
    ld h, b
    ld bc, $5f5e
    ld l, [hl]
    ld l, a
    ld [$1809], sp
    add hl, de
    ld bc, $0101
    ld bc, $0601
    ld bc, $0c40
    ld h, [hl]
    inc e

jr_002_7713:
    db $76
    inc l
    dec l
    inc a
    dec a
    ld d, h
    jr z, jr_002_775b

jr_002_771b:
    ld e, a
    jr z, jr_002_7746

    ld e, [hl]
    ld e, a
    ld h, a
    nop
    ld [hl], a
    nop
    ld c, $0f
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [hl]
    inc e
    inc l
    ld c, h
    ld c, l
    dec l
    ld l, $30
    ld l, a
    ld bc, $1801
    add hl, de
    ld bc, $7f01
    nop
    nop
    nop
    ld c, $0f

jr_002_7746:
    nop
    nop
    ld de, $113b
    ld c, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $4901
    db $10
    ld c, d
    ld c, b
    ld de, $1111

jr_002_775b:
    ld de, $1111
    ld de, $2e11
    cpl
    ld a, $3f
    ld h, a
    nop
    ld [hl], a
    nop
    dec sp
    ld bc, HeaderOldLicenseeCode
    ld bc, $2424
    nop
    nop
    dec h
    nop
    nop
    ld bc, $253a
    ld c, d
    jr z, jr_002_77a2

    jr nz, @+$61

    jr z, jr_002_77a6

    ld [$4e09], sp
    ld c, a
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld bc, $0124
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2500
    nop
    nop
    cpl
    ld h, a
    nop
    nop
    ld h, [hl]
    inc l
    nop
    nop

jr_002_77a2:
    nop
    nop
    nop
    nop

jr_002_77a6:
    nop
    nop
    ld bc, $2400
    nop
    nop
    nop
    nop
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
    ld [hl], a
    ld c, a
    ld a, a
    db $76
    inc a
    ld a, [hl]
    ld c, h
    ld de, $6b6b
    ld bc, $2401
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
    ld de, $1111
    ld de, $1111
    ld de, $2511
    ld bc, $2500
    ld a, [hl-]
    ld de, $114a
    jr z, jr_002_780a

    ld e, [hl]
    ld e, a
    add hl, hl
    add hl, hl
    ld [$2909], sp
    add hl, hl
    ld e, [hl]
    ld e, a
    add hl, hl
    add hl, hl
    ld [$2809], sp
    jr z, jr_002_7851

    ld e, a
    jr z, jr_002_781e

    ld [$2909], sp
    add hl, hl
    ld e, [hl]
    ld e, a
    jr z, jr_002_7826

    ld [$9209], sp
    ld a, b
    ld e, b
    ld a, c
    cp e
    ld a, c
    push af
    ld a, b
    db $e4
    ld a, d

jr_002_780a:
    db $e4
    ld a, d
    db $e4
    ld a, d
    sub d
    ld a, b
    sub d
    ld a, b
    push af
    ld a, b
    cp e
    ld a, c
    ld e, b
    ld a, c
    add c
    ld a, d
    add c
    ld a, d
    add c
    ld a, d

jr_002_781e:
    sub d
    ld a, b
    push af
    ld a, b
    cp e
    ld a, c
    sub d
    ld a, b

jr_002_7826:
    ld e, b
    ld a, c
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    sub d
    ld a, b
    ld e, b
    ld a, c
    push af
    ld a, b
    add c
    ld a, d
    xor d
    ld a, e
    dec c
    ld a, h
    cp e
    ld a, c
    dec c
    ld a, h
    sub d
    ld a, b
    sub d
    ld a, b
    cp e
    ld a, c
    ld e, b
    ld a, c
    cp e
    ld a, c
    ld e, $7a
    cp e
    ld a, c
    cp e
    ld a, c
    sub d
    ld a, b
    ld e, b

jr_002_7851:
    ld a, c
    add c
    ld a, d
    cp e
    ld a, c
    sub d
    ld a, b
    ld [hl], b
    ld a, h
    ld [hl], b
    ld a, h
    ld [hl], b
    ld a, h
    sub d
    ld a, b
    ld e, b
    ld a, c
    push af
    ld a, b
    sub d
    ld a, b
    cp e
    ld a, c
    db $d3
    ld a, h
    cp e
    ld a, c
    db $d3
    ld a, h
    sub d
    ld a, b
    xor d
    ld a, e
    add c
    ld a, d
    db $d3
    ld a, h
    ld e, $7a
    ld [hl], $7d
    push af
    ld a, b
    ld [hl], $7d
    sub d
    ld a, b
    sbc c
    ld a, l
    inc d
    ld a, [hl]
    pop af
    ld a, [hl]
    inc b
    ld a, a
    ld b, e
    ld a, a
    add d
    ld a, a
    xor [hl]
    ld a, a
    call $e67f
    ld a, a
    add b
    inc c
    ld [$6968], sp
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld de, $5911
    ld e, d
    ld e, e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld de, $6968
    ld l, d
    ld l, e
    ld de, $1c11
    dec e
    ld de, $1111
    ld de, $7978
    ld a, d
    ld a, e
    ld de, $0e11
    rrca
    ld de, $1111
    ld de, $1111
    inc e
    dec e
    ld de, $0e11
    rrca
    ld de, $1111
    ld de, $1111
    ld c, $0f
    ld de, $0e11
    rrca
    ld de, $1111
    ld de, $1111
    ld c, $0f
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    adc [hl]
    inc c
    ld [$582f], sp
    jr jr_002_7956

    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    jr @+$6a

    jr jr_002_7972

    jr jr_002_7922

    jr jr_002_7924

    jr @+$6a

    ld l, d
    jr jr_002_7929

    ld e, b
    jr @+$5c

    jr jr_002_792e

    jr jr_002_7930

    jr jr_002_7972

    ld e, d
    jr jr_002_7935

    ld l, b
    jr jr_002_798a

    jr jr_002_793a

jr_002_7922:
    jr jr_002_793c

jr_002_7924:
    jr jr_002_798e

    ld l, d
    jr @+$60

jr_002_7929:
    ld e, b
    jr jr_002_7986

    ld e, [hl]
    ld e, l

jr_002_792e:
    ld e, [hl]
    ld e, l

jr_002_7930:
    ld e, [hl]
    ld e, b
    ld e, d
    ld e, l
    ld l, [hl]

jr_002_7935:
    ld l, b
    jr jr_002_79a2

    ld l, [hl]
    ld l, l

jr_002_793a:
    ld l, [hl]
    ld l, l

jr_002_793c:
    ld l, [hl]
    ld l, b
    ld l, d
    ld l, l
    jr z, @+$2b

    jr z, jr_002_796d

    jr z, @+$2b

    jr z, jr_002_7971

    jr z, jr_002_7973

    jr z, @+$2b

    jr c, @+$3b

    jr c, jr_002_7989

    jr c, jr_002_798b

    jr c, jr_002_798d

    jr c, @+$3b

jr_002_7956:
    jr c, jr_002_7991

    adc e
    inc c
    ld [$1111], sp
    ld de, $1111
    ld de, $1111
    ld de, $5958
    ld e, d
    ld de, $1111
    ld de, $1111

jr_002_796d:
    ld de, $1111
    ld e, e

jr_002_7971:
    ld e, h

jr_002_7972:
    ld e, l

jr_002_7973:
    ld e, a
    ld de, $6968
    ld de, $1111
    ld de, $0911
    ld a, [bc]
    dec bc
    db $10
    ld e, a
    add hl, bc
    ld l, d
    ld de, $1111

jr_002_7986:
    ld de, $0e0d

jr_002_7989:
    rrca

jr_002_798a:
    dec bc

jr_002_798b:
    db $10
    db $10

jr_002_798d:
    ld l, h

jr_002_798e:
    jr jr_002_79a9

    ld a, [de]

jr_002_7991:
    dec de
    dec c
    ld bc, $011d
    inc e
    db $10
    db $10
    db $10
    ld l, l
    ld l, [hl]
    ld l, a
    jr jr_002_7a0b

    ld bc, $011e

jr_002_79a2:
    jr jr_002_7a23

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_002_79a9:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    adc c
    inc c
    ld [$0000], sp
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    nop
    nop
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    nop
    nop
    ld c, d
    ld c, e
    nop
    nop
    nop
    nop
    ld c, d
    ld c, e
    nop
    nop
    jr @+$1b

    jr @+$1b

    jr @+$1b

    jr @+$1b

    jr @+$1b

    jr @+$1b

    jr z, jr_002_7a0d

    jr z, jr_002_7a0f

    jr z, jr_002_7a11

    jr z, @+$2b

    jr z, jr_002_7a15

    jr z, @+$2b

    jr c, jr_002_7a29

    jr c, jr_002_7a2b

    jr c, jr_002_7a2d

    jr c, jr_002_7a2f

    jr c, jr_002_7a31

    jr c, jr_002_7a33

    jr z, jr_002_7a25

    jr z, jr_002_7a27

    jr z, jr_002_7a29

    jr z, jr_002_7a2b

    jr z, jr_002_7a2d

    jr z, jr_002_7a2f

    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h

jr_002_7a0b:
    ld a, l
    ld a, [hl]

jr_002_7a0d:
    ld a, a
    ld a, h

jr_002_7a0f:
    ld a, l
    ld a, [hl]

jr_002_7a11:
    ld a, a
    ld l, $2f
    inc l

jr_002_7a15:
    dec l
    ld l, $2f
    inc l
    dec l
    ld l, $2f
    inc l
    dec l
    adc c
    inc c
    ld [$0000], sp

jr_002_7a23:
    ld a, [hl-]
    dec sp

jr_002_7a25:
    ld c, d
    ld c, e

jr_002_7a27:
    nop
    nop

jr_002_7a29:
    ld a, [hl-]
    dec sp

jr_002_7a2b:
    ld c, d
    ld c, e

jr_002_7a2d:
    nop
    nop

jr_002_7a2f:
    ld c, d
    ld c, e

jr_002_7a31:
    nop
    nop

jr_002_7a33:
    nop
    nop
    ld c, d
    ld c, e
    nop
    nop
    jr @+$1b

    jr @+$1b

    jr @+$1b

    jr @+$1b

    jr @+$1b

    jr @+$1b

    jr z, jr_002_7a70

    jr z, jr_002_7a72

    jr z, jr_002_7a74

    jr z, @+$2b

    jr z, jr_002_7a78

    jr z, jr_002_7a7a

    jr c, @+$3b

    jr c, @+$3b

    jr c, jr_002_7a90

    jr c, @+$3b

    jr c, @+$3b

    jr c, jr_002_7a96

    jr z, @+$2b

    jr z, jr_002_7a8a

    jr z, @+$2b

    jr z, @+$2b

    jr z, jr_002_7a90

    jr z, @+$2b

    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld c, c
    nop

jr_002_7a70:
    nop
    nop

jr_002_7a72:
    nop
    nop

jr_002_7a74:
    nop
    ld l, $2f
    inc l

jr_002_7a78:
    dec l
    inc a

jr_002_7a7a:
    ld e, e
    ld [$0809], sp
    add hl, bc
    ld [$8509], sp
    inc c
    ld [$0911], sp
    add hl, bc
    ld de, $1111

jr_002_7a8a:
    ld de, $1111
    ld de, $1111

jr_002_7a90:
    ld de, $1919
    ld de, $1111

jr_002_7a96:
    ld de, $1111
    ld de, $0b0a
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    ld de, $1111
    ld de, $1111
    ld a, [de]
    dec de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld de, $1111
    ld de, $1111
    ld a, [hl+]
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $1111
    ld de, $1111
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld c, d
    ld c, e
    inc c
    dec c
    ld c, $0f
    inc c
    dec c
    ld c, $0f
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    ld e, $1f
    inc e
    dec e
    ld e, $1f
    inc e
    dec e
    ld e, $1f
    and d
    inc c
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc c
    dec c
    nop
    nop
    inc c
    dec c
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, [de]
    dec de
    ld e, $1f
    ld a, [de]
    dec de
    ld e, $1f
    ld a, $28
    jr z, jr_002_7b56

    ld c, b
    ld e, [hl]
    ld l, a
    dec l
    ld c, b
    ld e, [hl]
    ld l, a
    dec l
    ld c, [hl]
    add hl, hl
    add hl, hl
    ld c, a
    ld e, b
    ld e, a
    ld a, a
    ld l, $58
    ld e, a
    ld a, a
    ld l, $4e
    add hl, hl
    add hl, hl
    ld c, a
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    xor a
    inc c
    ld [$6969], sp
    ld l, c
    ld c, b
    ld c, d
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c

jr_002_7b56:
    ld l, c
    ld l, c
    ld l, c
    ld c, c
    ld c, h
    ld c, [hl]
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld e, [hl]
    ld c, c
    ld c, l
    ld c, a
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld e, a
    ld l, b
    ld c, e
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld c, c
    ld c, e
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld c, c
    ld c, e
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    and l
    inc c
    ld [$1010], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, b
    ld a, c
    add hl, sp
    db $10
    db $10
    db $10
    db $10
    jr c, jr_002_7bfd

    db $10
    ld a, b
    ld a, c
    ld de, $0111
    add hl, sp
    db $10
    db $10
    jr c, @+$13

    ld bc, $1139
    ld de, $1111
    ld bc, $4901
    jr c, @+$13

    dec sp
    ld bc, $1101
    ld de, $6b11
    ld bc, $4a01
    ld de, $4b11
    ld bc, $1101
    ld de, $016b
    ld bc, $0101
    ld a, [hl-]
    ld l, e
    ld bc, $0101
    jr z, jr_002_7c1f

    jr z, jr_002_7c21

    jr z, jr_002_7c23

    jr z, jr_002_7c25

jr_002_7bfd:
    jr z, jr_002_7c27

    jr z, jr_002_7c29

    ld e, [hl]
    ld e, a
    ld [$5e09], sp
    ld e, a
    ld [$5e09], sp
    ld e, a
    ld [$a509], sp
    inc c
    ld [$0b0a], sp
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    ld a, [de]

jr_002_7c1f:
    dec de
    ld a, [de]

jr_002_7c21:
    dec de
    ld a, [de]

jr_002_7c23:
    dec de
    ld a, [de]

jr_002_7c25:
    dec de
    ld a, [de]

jr_002_7c27:
    dec de
    ld a, [hl+]

jr_002_7c29:
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    dec l
    ld l, $2f
    inc l
    dec l
    ld l, $2f
    inc l
    dec l
    ld l, $2f
    inc a
    dec a
    ld a, $3f
    inc a
    dec a
    ld a, $3f
    inc a
    dec a
    ld a, $3f
    and c
    inc c
    ld [$1111], sp
    ld de, $1111
    ld de, $1111
    ld c, c
    ld c, [hl]
    ld c, a
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld e, b
    ld e, c
    ld de, $6d11
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld de, $1111
    ld de, $1111
    ld de, $7d11
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $6811
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    adc l
    inc c
    ld [$1111], sp
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    inc e
    dec e
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1f1e
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld de, $1111
    ld de, $2928
    ld de, $7811
    ld a, c
    ld a, d
    ld a, e
    ld de, $1111
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    jr c, @+$3b

    jr c, @+$3b

    jr c, jr_002_7d69

    jr c, @+$3b

    jr c, @+$3b

    jr c, jr_002_7d6f

    add a
    inc c
    ld [$4d4c], sp
    ld c, [hl]
    ld c, a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111

jr_002_7d69:
    ld de, $1111
    ld de, $1111

jr_002_7d6f:
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    inc c
    dec c
    ld c, $0f
    inc c
    dec c
    ld c, $0f
    inc c
    dec c
    ld c, $0f
    inc l
    dec l
    ld l, $2f
    inc l
    dec l
    ld l, $2f
    inc l
    dec l
    ld l, $2f
    pop hl
    pop de
    call Call_002_7e49
    ld de, $c0c0
    ld b, $05
    ldh a, [$8f]
    bit 4, a
    jr z, jr_002_7dad

    inc b
    push bc
    jr jr_002_7db5

jr_002_7dad:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call Call_002_7e84

jr_002_7db5:
    ld a, [hl+]
    add $08
    ld c, a
    ld a, [hl-]
    adc $00
    ld b, a
    call Call_002_7e84
    ld a, [$c659]
    ld c, a

jr_002_7dc4:
    ld a, $05
    sla a
    rst $10
    dec c
    jr nz, jr_002_7dc4

    pop bc
    dec b
    jr nz, jr_002_7dad

    ld de, $c0c0
    ldh a, [$8f]
    bit 3, a
    jr z, jr_002_7dda

    inc de

jr_002_7dda:
    ld a, $01
    ld [$c100], a
    ld b, $13
    ld hl, $c101
    ld a, [hl+]
    add l
    ld l, a
    jr nc, jr_002_7dea

    inc h

jr_002_7dea:
    ldh a, [$90]
    ld [hl+], a
    ldh a, [$91]
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld c, $91
    ld a, [c]
    add $20
    ld [c], a
    jr nc, jr_002_7e04

    dec c
    ld a, [c]
    inc a
    and $9b
    ld [c], a

jr_002_7e04:
    dec b
    jr nz, jr_002_7dea

    xor a
    ld [hl], a
    ld a, l
    dec a
    dec a
    ld [$c101], a
    xor a
    ld [$c100], a
    ret


    pop hl
    pop de
    call Call_002_7e49
    ld de, $c0a0
    ldh a, [$91]
    add e
    and $bf
    or $a0
    ld e, a
    ld b, $0c
    ldh a, [$8e]
    bit 4, a
    jr z, jr_002_7e2f

    push bc
    jr jr_002_7e3c

jr_002_7e2f:
    push bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    call Call_002_7eb1
    pop bc
    dec b
    jr z, jr_002_7e48

    push bc

jr_002_7e3c:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    inc bc
    call Call_002_7eb1
    pop bc
    dec b
    jr nz, jr_002_7e2f

jr_002_7e48:
    ret


Call_002_7e49:
    push de
    ld d, h
    ld e, l
    ld hl, $0000
    call Call_002_7e75
    and a
    jr z, jr_002_7e61

    ld c, a
    ld a, [$c65b]
    add a
    ld e, a
    ld d, $00

jr_002_7e5d:
    add hl, de
    dec c
    jr nz, jr_002_7e5d

jr_002_7e61:
    ld b, h
    ld c, l
    pop de
    ld hl, $cae5
    bit 7, d
    jr nz, jr_002_7e73

    call Call_002_7e75
    add a
    ld hl, $cae7
    rst $10

jr_002_7e73:
    add hl, bc
    ret


Call_002_7e75:
    ld a, d
    swap a
    and $f0
    ld d, a
    ld a, e
    swap a
    and $0e
    or d
    srl a
    ret


Call_002_7e84:
    push hl
    ldh a, [$8e]
    bit 4, a
    jr z, jr_002_7e8c

    inc bc

jr_002_7e8c:
    call Call_002_7e9f
    ldh a, [$8e]
    bit 3, a
    jr z, jr_002_7e96

    inc hl

jr_002_7e96:
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ret


Call_002_7e9f:
    sla c
    rl b
    sla c
    rl b
    ld a, [$c661]
    ld l, a
    ld a, [$c662]
    ld h, a
    add hl, bc
    ret


Call_002_7eb1:
    push hl
    ldh a, [$8f]
    bit 4, a
    jr z, jr_002_7ebe

    ld hl, $0008
    add hl, bc
    ld b, h
    ld c, l

jr_002_7ebe:
    call Call_002_7e9f
    ldh a, [$8f]
    bit 3, a
    jr nz, jr_002_7edb

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, e
    and $bf
    or $a0
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, e
    and $bf
    or $a0
    ld e, a
    pop hl
    ret


jr_002_7edb:
    inc hl
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, e
    and $bf
    or $a0
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, e
    and $bf
    or $a0
    ld e, a
    pop hl
    ret


    ldh a, [$c9]
    ld b, a
    ld a, [$c459]
    sub b
    ld c, a
    add a
    add c
    ld hl, $c45a
    rst $10
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ld hl, $ffd7
    ld b, $00
    ldh a, [$d4]
    sla a
    jr c, jr_002_7f27

    srl a
    swap a
    ld d, a
    and $f0
    add [hl]
    ld [hl], a
    ld a, d
    adc b
    and $07
    ld c, a
    ret z

    ld hl, $ffc3
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ret


jr_002_7f27:
    srl a
    cpl
    inc a
    swap a
    ld d, a
    and $f0
    add [hl]
    ld [hl], a
    ld a, d
    adc b
    and $07
    ld c, a
    ret z

    ld d, a
    ld hl, $ffc3
    ld a, [hl]
    sub d
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    ret


    ld hl, $ffd8
    ld b, $00
    ldh a, [$d5]
    sla a
    jr c, jr_002_7f66

    srl a
    swap a
    ld d, a
    and $f0
    add [hl]
    ld [hl], a
    ld a, d
    adc b
    and $07
    ld c, a
    ret z

    ld hl, $ffc1
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ret


jr_002_7f66:
    srl a
    cpl
    inc a
    swap a
    ld d, a
    and $f0
    add [hl]
    ld [hl], a
    ld a, d
    adc b
    and $07
    ld c, a
    ret z

    ld d, a
    ld hl, $ffc1
    ld a, [hl]
    sub d
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    ret


    ld h, b
    ld l, c
    push hl
    ld a, $0d
    add l
    ld l, a
    ldh a, [$cd]
    add [hl]
    ld b, a
    inc l
    ldh a, [$ce]
    add [hl]
    srl a
    ld c, a
    ld hl, $ffcf
    ldh a, [$c1]
    add [hl]
    pop hl
    inc l
    sub [hl]
    jr nc, jr_002_7fa1

    cpl
    inc a

jr_002_7fa1:
    cp c
    ret nc

    inc l
    inc l
    ldh a, [$c3]
    sub [hl]
    jr nc, jr_002_7fac

    cpl
    inc a

jr_002_7fac:
    cp b
    ret


    sbc c
    jp nc, $b70c

    ret nc

    and d
    pop bc
    and d
    or [hl]
    pop de
    and d
    or c
    add b
    or b
    call nz, $129a
    inc c
    add b
    or e
    jp nz, $c1b1

    and a
    or [hl]
    add b
    pop bc
    and a
    or d
    pop de
    nop
    jp $0216


    jp Jump_000_0218


    ret z

    ld e, $02
    add $20
    ld [bc], a
    add $24
    inc b
    add $28
    inc b
    add $2c
    inc b
    push bc
    inc a
    ld [bc], a
    nop
    db $e4
    nop
    inc b
    db $e4
    inc b
    inc b
    db $e4
    ld [$e404], sp
    inc c
    inc b
    db $e3
    ld d, $02
    db $e3
    jr jr_002_7ffa

    nop
    ld b, b

jr_002_7ffa:
    nop
    nop
    nop
    nop
    nop
    nop
