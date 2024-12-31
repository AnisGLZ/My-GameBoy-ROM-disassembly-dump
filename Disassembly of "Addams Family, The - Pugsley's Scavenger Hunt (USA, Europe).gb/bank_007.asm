; Disassembly of "Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    add hl, bc
    dec a
    ld a, $3c
    dec sp
    dec a
    ld a, $3c
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc sp
    ld l, a
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    jr nc, jr_007_4063

    nop
    ld de, $3110
    add hl, de
    nop
    jr c, jr_007_405d

    scf
    inc [hl]
    dec [hl]
    ld [hl], $00
    ld a, [hl-]
    ld a, [hl-]
    ld [bc], a
    nop
    ld a, [bc]
    nop
    ld bc, $0304
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
    ld [$4a00], sp
    ld c, e
    ld b, a
    ld b, a
    ld b, d
    ld c, c
    ld b, e
    ld b, l
    ld b, [hl]
    ld c, b
    ld b, l
    ld c, h
    ld b, h
    ld c, $4d
    rlca
    ld d, [hl]
    ld d, b
    ld d, c
    ld d, d

jr_007_405d:
    ld [hl], b
    ld [hl], c
    rrca
    ld c, a
    ld d, e
    ld d, h

jr_007_4063:
    ld d, l
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, c
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld h, d
    nop
    nop
    ld l, [hl]
    ld l, h
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
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    dec l
    ld l, $12
    rra
    ld d, $18
    jr nz, jr_007_40b5

    ld hl, $2322
    inc h
    dec h
    ld a, d
    ld a, e
    nop
    ld b, $0d
    inc de
    add hl, de
    rra
    dec h
    inc l
    ld [hl-], a
    jr c, @+$40

    ld b, h
    ld c, d
    ld d, b
    ld d, [hl]
    ld e, h
    ld h, d
    ld h, a
    ld l, l
    ld [hl], e
    ld a, b

jr_007_40b5:
    ld a, [hl]
    add e
    adc b
    adc [hl]
    sub e
    sbc b
    sbc l
    and d
    and a
    xor e
    or b
    or h
    cp c
    cp l
    pop bc
    push bc
    ret


    call $d4d0
    rst $10
    db $db
    sbc $e1
    db $e4
    rst $20
    jp hl


    db $ec
    xor $f0
    ld a, [c]
    db $f4
    or $f7
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    ei
    ld a, [$f7f9]
    or $f4
    ld a, [c]
    ldh a, [$ee]
    db $ec
    jp hl


    rst $20
    db $e4
    pop hl
    sbc $db
    rst $10
    call nc, $cdd0
    ret


    push bc
    pop bc
    cp l
    cp c
    or h
    or b
    xor e
    and a
    and d
    sbc l
    sbc b
    sub e
    adc [hl]
    adc b
    add e
    ld a, [hl]
    ld a, b
    ld [hl], e
    ld l, l
    ld h, a
    ld h, d
    ld e, h
    ld d, [hl]
    ld d, b
    ld c, d
    ld b, h
    ld a, $38
    ld [hl-], a
    inc l
    dec h
    rra
    add hl, de
    inc de
    dec c
    ld b, $21
    ld [de], a
    nop
    add hl, de
    ld bc, $c108
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld hl, $0005
    add hl, de
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl]
    ld [bc], a
    inc c
    push de
    call Call_007_4184
    pop de
    ld hl, $0012
    add hl, de
    ld bc, $c108
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl], a
    ld hl, $0005
    add hl, de
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [bc]
    ld [hl], a
    ret


    ld a, l
    ld [$c108], a
    ld a, h
    ld [$c109], a
    xor a
    ld [$c10a], a
    ld [$c111], a
    ld [$c112], a
    ret


Call_007_4184:
    push af
    ld a, [$c108]
    ld l, a
    ld a, [$c109]
    ld h, a
    pop af
    ld a, [$c10a]
    and a
    jp nz, Jump_007_4215

Jump_007_4195:
jr_007_4195:
    ld a, [hl+]
    cp $ff
    jr z, jr_007_41d1

    cp $fe
    jr z, jr_007_41db

    cp $fd
    jr z, jr_007_41f1

    cp $fc
    jr z, jr_007_420f

    cp $fb
    jr z, jr_007_41e9

    cp $fa
    jp z, Jump_007_425a

    cp $f9
    jp z, Jump_007_4278

    cp $f8
    jp z, Jump_007_4289

    cp $f7
    jp z, Jump_007_4295

    cp $f6
    jp z, Jump_007_429b

    dec a
    ld [$c10a], a
    ld a, [hl+]
    ld [$c10b], a
    ld a, [hl+]
    ld [$c10c], a
    jr jr_007_4219

jr_007_41d1:
    xor a
    ld [$c10a], a
    ld [$c10b], a
    ld [$c10c], a

jr_007_41db:
    ld a, [hl+]
    ld b, $00
    ld c, a
    and $80
    jr z, jr_007_41e4

    dec b

jr_007_41e4:
    add hl, bc
    dec hl
    dec hl
    jr jr_007_4195

jr_007_41e9:
    ld a, [hl+]
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld [bc], a
    jr jr_007_4195

jr_007_41f1:
    ld a, [hl+]
    ld [$c10f], a
    ld a, [hl+]
    ld [$c110], a
    ld a, [hl+]
    ld [$c10d], a
    ld a, [hl+]
    ld [$c10e], a
    ld a, [hl+]
    ld [$c10a], a
    ld a, [hl+]
    ld [$c10b], a
    ld a, [hl+]
    ld [$c10c], a
    jr jr_007_4195

jr_007_420f:
    ld a, [hl+]
    ld [$c111], a
    jr jr_007_4195

Jump_007_4215:
    dec a
    ld [$c10a], a

jr_007_4219:
    ld a, l
    ld [$c108], a
    ld a, h
    ld [$c109], a
    ld a, [$c10b]
    ld b, $00
    ld c, a
    and $80
    jr z, jr_007_422c

    dec b

jr_007_422c:
    ld a, [$c10f]
    ld l, a
    ld a, [$c110]
    ld h, a
    add hl, bc
    ld a, l
    ld [$c10f], a
    ld a, h
    ld [$c110], a
    ld a, [$c10c]
    ld b, $00
    ld c, a
    and $80
    jr z, jr_007_4248

    dec b

jr_007_4248:
    ld a, [$c10d]
    ld l, a
    ld a, [$c10e]
    ld h, a
    add hl, bc
    ld a, l
    ld [$c10d], a
    ld a, h
    ld [$c10e], a
    ret


Jump_007_425a:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, l
    ld [$c108], a
    ld a, h
    ld [$c109], a
    push de
    ld h, b
    ld l, c
    call Call_007_4294
    pop de
    ld a, [$c108]
    ld l, a
    ld a, [$c109]
    ld h, a
    jp Jump_007_4195


Jump_007_4278:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, l
    ld [$c1eb], a
    ld a, h
    ld [$c1ec], a
    ld h, b
    ld l, c
    jp Jump_007_4195


Jump_007_4289:
    ld a, [$c1eb]
    ld l, a
    ld a, [$c1ec]
    ld h, a
    jp Jump_007_4195


Call_007_4294:
    jp hl


Jump_007_4295:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_007_4195


Jump_007_429b:
    ld a, [hl+]
    push hl
    push de
    ld hl, $0003
    add hl, de
    ld [hl], a
    call Call_000_2eb4
    pop de
    pop hl
    jp Jump_007_4195


    ld bc, $4320
    call Call_007_62b4
    ld a, $ff
    ld [$c478], a
    ld bc, $42bc
    jp Jump_007_6346


    call $4120
    ld hl, $0005
    add hl, de
    ld a, [hl+]
    ld b, a
    sub $10
    cpl
    ld [$c1d9], a
    inc hl
    ld a, [hl]
    ld c, a
    sub $10
    cpl
    ld [$c1d8], a
    call Call_007_42f8
    ld a, [$c478]
    inc a
    ld [$c478], a
    and $07
    jr nz, jr_007_42f5

    ld a, [$c479]
    inc a
    ld [$c479], a
    and $01
    jr z, jr_007_42f2

    call Call_000_0655
    jr jr_007_42f5

jr_007_42f2:
    call Call_000_0650

jr_007_42f5:
    jp Jump_000_04e2


Call_007_42f8:
    ld a, [$c1b0]
    ld l, a
    ld h, $de
    ld a, c
    add $18
    ld c, a
    ld a, b
    or $01
    swap a
    and $0f
    ld b, a
    inc b
    inc b
    xor a

jr_007_430d:
    ld [hl+], a
    ld [hl], c
    inc l
    ld [hl], $7a
    inc l
    ld [hl], $00
    inc l
    add $10
    dec b
    jr nz, jr_007_430d

Jump_007_431b:
    ld a, l
    ld [$c1b0], a
    ret


    ei
    inc b
    pop bc
    pop bc
    ld bc, $1808
    inc d
    ld [bc], a
    nop
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add c
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    ld a, l
    ld b, e
    inc d
    ld [bc], a
    nop
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add c
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    ld a, l
    ld b, e
    inc d
    cp $00
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add c
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    ld a, l
    ld b, e
    inc d
    cp $00
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add c
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    sub h
    ld b, e
    ld sp, hl
    ld a, l
    ld b, e
    cp $ac
    rlca
    nop
    cp $f8
    rlca
    nop
    ld b, $02
    nop
    inc b
    inc b
    nop
    inc bc
    inc b
    nop
    ld [bc], a
    inc b
    nop
    ld bc, $0004
    nop
    ld hl, sp+$04
    nop
    rst $38
    inc b
    nop
    cp $04
    nop
    db $fd
    inc b
    nop
    cp $04
    nop
    rst $38
    inc b
    nop
    nop
    inc b
    nop
    ld bc, $0004
    ld [bc], a
    inc b
    nop
    ld bc, $0004
    nop
    ld hl, sp+$1d
    ld c, $08
    nop
    ld [hl], b
    ld a, b
    ld de, $0d03
    dec b
    add hl, bc
    inc e
    nop
    add hl, bc
    ld b, d
    and b
    rst $38
    add hl, bc
    ld b, b
    and b
    nop
    nop
    inc b
    ld h, l
    ld b, $07
    ld h, l
    add hl, bc
    dec b
    ld h, l
    inc de
    inc b
    ld h, l
    ld d, $08
    rst $38
    db $10
    ld c, $00
    nop
    sub l
    ld c, [hl]
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0005], sp
    inc bc
    ld [HeaderLogo], sp
    ld a, [bc]
    inc b
    ld [bc], a
    dec c
    inc b
    ld [bc], a
    dec c
    rlca
    ld [bc], a
    dec c
    dec bc
    nop
    rst $38
    inc l
    ld d, $00
    nop
    inc hl
    ld c, a
    nop
    ld b, $03
    ld de, $0007
    inc c
    inc c
    ld b, $00
    dec d
    ld de, $0401
    dec d
    rlca
    dec b
    nop
    ld e, $0c
    inc bc
    nop
    daa
    ld de, $0008
    jr jr_007_441c

jr_007_441c:
    nop
    rlca
    ld [de], a
    nop
    ld [$0011], sp
    add hl, bc
    stop
    ld a, [bc]
    rrca
    nop
    db $10
    dec c
    nop
    ld de, $0010
    ld de, $000c
    ld [de], a
    ld de, $1200
    dec bc
    nop
    inc de
    ld [de], a
    nop
    inc de
    ld a, [bc]
    nop
    inc d
    inc de
    nop
    jr jr_007_4456

    nop
    add hl, de
    ld a, [bc]
    nop
    add hl, de
    ld [de], a
    nop
    ld a, [de]
    dec bc
    nop
    ld a, [de]
    ld de, $1b00
    inc c
    nop
    dec de
    stop

jr_007_4456:
    inc e
    dec c
    nop
    ld [hl+], a
    rrca
    nop
    inc hl
    stop
    inc h
    ld de, $2500
    ld [de], a
    nop
    rst $38
    rla
    stop
    nop
    inc l
    ld d, b
    nop
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    db $10
    ld a, [bc]
    dec bc
    ld [bc], a
    stop
    nop
    ld bc, $1247
    inc b
    rst $38
    ccf
    ld c, $00
    nop
    ret nz

    ld d, b
    nop
    ld [bc], a
    ld [bc], a
    ld b, $05
    inc b
    ld a, [hl-]
    ld b, $02
    inc c
    rla
    nop
    ld bc, $0503
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc c
    add hl, bc
    ld [bc], a
    ld c, $07
    ld [bc], a
    ld de, $0207
    inc d
    rlca
    ld [bc], a
    ld d, $09
    ld [bc], a
    jr jr_007_44b2

    ld [bc], a
    ld a, [de]
    add hl, bc
    ld [bc], a
    inc e
    rlca
    ld [bc], a
    rra
    rlca
    ld [bc], a
    ld [hl+], a

jr_007_44b2:
    rlca
    ld [bc], a
    inc h
    add hl, bc
    ld [bc], a
    ld h, $0b
    ld [bc], a
    jr z, jr_007_44c5

    ld [bc], a
    ld a, [hl+]
    rlca
    ld [bc], a
    dec l
    rlca
    ld [bc], a
    jr nc, jr_007_44cc

jr_007_44c5:
    ld [bc], a
    ld [hl-], a
    add hl, bc
    ld [bc], a
    inc [hl]
    dec bc
    ld [bc], a

jr_007_44cc:
    ld [hl], $09
    ld [bc], a
    jr c, @+$09

    ld bc, $053b
    nop
    rst $38
    db $10
    ld c, $00
    nop
    or a
    ld d, c
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    ld [bc], a
    inc c
    ld a, [bc]
    inc b
    inc b
    nop
    ld de, $0000
    ld [bc], a
    inc b
    nop
    inc bc
    inc bc
    nop
    inc bc
    dec b
    nop
    inc b
    inc b
    nop
    dec b
    inc bc
    nop
    dec b
    dec b
    nop
    ld b, $04
    nop
    rlca
    inc bc
    nop
    rlca
    dec b
    nop
    rlca
    ld a, [bc]
    nop
    ld [$0004], sp
    ld [$0009], sp
    ld [$000b], sp
    add hl, bc
    ld a, [bc]
    nop
    ld a, [bc]
    add hl, bc
    nop
    ld a, [bc]
    dec bc
    nop
    dec bc
    ld a, [bc]
    nop
    rst $38
    dec e
    rla
    nop
    nop
    ld l, $52
    nop
    ld bc, $1202
    ld [bc], a
    inc b
    dec e
    nop
    inc bc
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    add hl, bc
    inc bc
    ld [bc], a
    dec c
    nop
    inc b
    dec b
    nop
    ld b, $05
    nop
    ld [$0005], sp
    ld a, [bc]
    inc de
    nop
    inc c
    ld de, $0e00
    rrca
    nop
    db $10
    dec c
    nop
    ld de, $0011
    ld [de], a
    dec bc
    nop
    inc de
    ld de, $1500
    dec b
    nop
    dec d
    add hl, bc
    nop
    dec d
    dec c
    nop
    dec d
    ld de, $1700
    dec b
    nop
    rla
    add hl, bc
    nop
    rla
    dec c
    nop
    rla
    ld de, $1900
    dec b
    nop
    add hl, de
    add hl, bc
    nop
    add hl, de
    dec c
    nop
    add hl, de
    ld de, $1b00
    dec b
    nop
    dec de
    add hl, bc
    nop
    dec de
    dec c
    nop
    dec de
    ld de, $ff00
    db $10
    rra
    nop
    nop
    ld [de], a
    ld d, e
    nop
    ld bc, $1a02
    ld [bc], a
    nop
    ld [$0300], sp
    ld bc, $0308
    ld bc, $030e
    ld bc, $0314
    ld c, $05
    inc bc
    ld c, $0b
    inc bc
    ld c, $11
    inc bc
    ld c, $17
    inc bc
    ld c, $1b
    nop
    rst $38
    db $10
    ld c, $00
    nop
    add $53
    nop
    ld bc, $0a0a
    ld [bc], a
    inc d
    ld bc, $0100
    inc b
    ld b, $00
    rst $38
    dec [hl]
    rla
    nop
    nop
    ld c, b
    ld e, c
    ld bc, $1908
    dec bc
    ld bc, $1000
    ld [de], a
    inc hl
    nop
    add hl, de
    ld [de], a
    ld e, $00
    ld [hl+], a
    ld [de], a
    ld a, [bc]
    nop
    ld [de], a
    inc c
    dec c
    nop
    jr nz, jr_007_45e9

    inc [hl]
    nop
    rrca
    ld b, $29
    nop
    inc hl
    ld b, $00
    nop
    nop
    nop

jr_007_45e9:
    nop
    rst $38
    ld h, e
    ld a, [hl+]
    inc c
    nop
    rlca
    ld e, e
    ld [bc], a
    inc b
    daa
    inc h
    add hl, bc
    inc c
    ld e, $0f
    dec bc
    ld b, b
    jr nc, jr_007_460c

    inc c
    ld b, h
    ld e, c
    rst $38
    dec h
    and b
    ld de, $0000
    jr jr_007_4621

    nop
    add hl, de
    inc d
    nop

jr_007_460c:
    inc hl
    rla
    nop
    inc h
    jr jr_007_4612

jr_007_4612:
    dec h
    inc c
    nop
    ld h, $07
    nop
    daa
    rla
    nop
    daa
    add hl, de
    nop
    jr z, jr_007_4635

    nop

jr_007_4621:
    jr z, jr_007_463e

    nop
    add hl, hl
    dec e
    nop
    ld a, [hl+]
    rlca
    nop
    dec hl
    inc c
    nop
    inc l
    jr jr_007_4630

jr_007_4630:
    dec l
    rla
    nop
    ld a, [hl-]
    inc d

jr_007_4635:
    nop
    dec sp
    add hl, de
    inc de
    nop
    inc bc
    dec bc
    scf
    inc bc

jr_007_463e:
    rrca
    ld b, a
    inc bc
    inc e
    scf
    ld b, $13
    scf
    add hl, bc
    rla
    inc [hl]
    dec bc
    inc h
    ld [hl-], a
    db $10
    daa
    inc [hl]
    inc d
    inc d
    ld [hl], $1c
    daa
    inc [hl]
    ld [hl], $14
    inc [hl]
    dec a
    inc hl
    ld [hl-], a
    ld b, b
    daa
    ld [hl], $44
    daa
    dec [hl]
    ld c, a
    ld [hl+], a
    dec [hl]
    ld d, h
    dec h
    scf
    ld e, b
    jr nz, jr_007_46a1

    ld e, c
    ld a, [de]
    dec [hl]
    ld e, c
    inc hl
    ld [hl], $60
    daa
    rst $38
    jr z, jr_007_4683

    nop
    nop
    xor $41
    inc bc
    ld [bc], a
    inc b
    nop
    ld a, [bc]
    xor b
    add hl, de
    nop
    ld a, [bc]
    xor b

jr_007_4683:
    inc b
    inc b
    jp c, Jump_000_040c

    jp c, $040f

    jp c, $0412

    jp c, $0415

    inc bc
    jr c, jr_007_469a

    dec bc
    jr c, jr_007_46a7

    dec bc
    jr c, jr_007_46b4

jr_007_469a:
    dec bc
    rst $38
    jr z, jr_007_46ac

    nop
    nop
    ld b, b

jr_007_46a1:
    ld b, c
    inc bc
    ld [bc], a
    inc bc
    nop
    ld a, [bc]

jr_007_46a7:
    and h
    ld hl, $0a00
    and h

jr_007_46ac:
    inc c
    inc c
    ldh [$0b], a
    inc b
    call c, $060b

jr_007_46b4:
    ldh [$0b], a
    ld [$0cdc], sp
    inc b
    ldh [$0c], a
    ld b, $dc
    inc c
    ld [$0de0], sp
    inc b
    call c, Call_000_060d
    ldh [$0d], a
    ld [$0edc], sp
    inc b
    ldh [$0e], a
    ld b, $dc
    ld c, $08
    inc bc
    jr c, @+$0e

    dec bc
    jr c, jr_007_46e8

    dec bc
    jr c, @+$1b

    dec bc
    rst $38
    cp $0e
    ld [$0d00], sp
    ld [hl], l
    inc b
    inc b
    inc b
    add hl, bc
    add hl, bc

jr_007_46e8:
    db $10
    rst $38
    dec b
    ld [de], a
    and b
    cp h
    dec b
    ld de, $c628
    dec b
    ld de, $142c
    inc d
    ld hl, sp+$59
    ld b, $f8
    ld e, e
    ld b, $f3
    ld e, l
    ld b, $f8
    ld e, a
    ld b, $f8
    ld h, c
    ld b, $f5
    and c
    ld a, [bc]
    ld hl, sp-$41
    ld b, $f8
    ret nz

    dec b
    ld hl, sp-$3f
    inc b
    ld hl, sp-$3e
    inc b
    ld hl, sp-$3d
    dec b
    ld hl, sp-$3c
    ld b, $f8
    ld a, [c]
    ld [bc], a
    ld hl, sp-$0e
    ld b, $f8
    db $f4
    ld [bc], a
    ld hl, sp-$0c
    ld b, $f8
    or $02
    ld hl, sp-$0a
    ld b, $f8
    ld hl, sp+$02
    ld hl, sp-$08
    ld b, $2d
    dec h
    add hl, bc
    dec b
    dec h
    inc c
    ld b, $25
    rrca
    rlca
    ld hl, $0a16
    ld h, $1c
    ld a, [bc]
    inc h
    ld e, $06
    ld h, $2a
    add hl, bc
    inc h
    ld l, $04
    ld a, [hl+]
    ld [hl], $0b
    ld h, $38
    rlca
    ld a, [hl+]
    dec sp
    dec bc
    inc h
    dec a
    ld b, $2a
    ccf
    inc b
    ld h, $42
    dec bc
    ld h, $45
    rlca
    inc bc
    ld e, e
    inc b
    inc b
    ld e, e
    ld a, [bc]
    inc h
    ld e, l
    add hl, bc
    inc h
    ld h, d
    dec b
    dec h
    ld l, h
    inc b
    dec h
    ld l, [hl]
    dec b
    ld h, $72
    dec bc
    ld a, [hl+]
    ld [hl], h
    ld b, $24
    db $76
    dec b
    ld h, $7b
    dec bc
    ld h, $7c
    rlca
    ld h, $80
    inc bc
    ld a, [hl+]
    add c
    dec bc
    inc h
    add l
    dec b
    inc h
    adc a
    dec b
    ld a, [hl+]
    sub c
    add hl, bc
    ld [bc], a
    sbc d
    ld b, $24
    xor e
    ld b, $04
    or [hl]
    ld [$ce2a], sp
    add hl, bc
    ld h, $d4
    dec bc
    ld h, $d8
    rlca
    dec h
    sbc $07
    ld h, $de
    dec bc
    inc h
    pop hl
    ld [$e526], sp
    ld b, $24
    push hl
    ld a, [bc]
    inc h
    and $02
    dec h
    jp hl


    inc b
    ld h, $e9
    dec bc
    ld d, $06
    ld d, c
    inc bc
    ld h, a
    inc bc
    adc c
    inc bc
    and h
    inc bc
    or d
    inc bc
    rst $38
    cp $0e
    ld c, $02
    ld a, h
    ld a, b
    dec b
    inc b
    nop
    ld [bc], a
    ld [de], a
    and h
    rst $38
    ld b, $13
    and b
    or b
    rst $38
    db $10
    and b
    or b
    nop
    db $10
    and b
    dec b
    nop
    inc bc
    add $04
    inc bc
    ld a, [de]
    inc b
    nop
    ldh a, [rSB]
    nop
    ld a, [c]
    ld [bc], a
    nop
    db $f4
    ld bc, $3524
    ld c, $08
    dec [hl]
    ld de, $2106
    ld d, $0a
    dec [hl]
    rla
    ld b, $2a
    inc e
    ld a, [bc]
    dec [hl]
    inc hl
    inc b
    ld h, $29
    ld [$4f21], sp
    ld a, [bc]
    ld h, $56
    ld a, [bc]
    dec de
    ld e, h
    inc bc
    dec de
    ld l, c
    inc bc
    ld hl, $0a71
    ld a, [hl+]
    ld a, b
    ld a, [bc]
    ld h, $86
    ld a, [bc]
    ld hl, $088f
    ld a, [hl+]
    sub a
    ld [$a51b], sp
    inc b
    dec [hl]
    xor d
    ld b, $24
    cp b
    inc b
    dec [hl]
    cp b
    rlca
    dec de
    cp h
    inc b
    ld hl, $0bc1
    ld h, $c9
    dec bc
    ld hl, $08cf
    dec h
    db $d3
    ld b, $25
    push de
    ld b, $25
    rst $10
    ld b, $25
    reti


    ld b, $25
    db $db
    ld b, $1b
    ldh [rDIV], a
    ld a, [hl+]
    push hl
    dec bc
    dec de
    add sp, $04
    ld h, $f0
    rlca
    ld h, $f4
    inc bc
    ld a, [hl+]
    db $f4
    dec bc
    inc h
    or $09
    dec sp
    ld b, $44
    ld b, $71
    ld b, $8f
    inc b
    rst $08
    inc b
    rst $38
    add hl, bc
    dec bc
    dec bc
    cp $0e
    ld [$ee04], sp
    ld a, e
    inc b
    ld [bc], a
    nop
    ld a, [bc]
    inc de
    and h
    rst $38
    ld [$a014], sp
    ld [bc], a
    ld [bc], a
    di
    and h
    ld a, [bc]
    di
    xor c
    ld a, [bc]
    daa
    inc h
    ld a, [bc]
    dec b
    inc h
    db $10
    ld b, $2a
    ld [de], a
    add hl, bc
    ld b, a
    dec de
    add hl, bc
    dec h
    inc h
    ld a, [bc]
    inc h
    ld l, $09
    dec h
    cpl
    rlca
    inc h
    scf
    ld [$4325], sp
    ld b, $25
    ld b, a
    inc b
    dec h
    ld c, e
    rlca
    dec h
    ld c, a
    dec b
    ld b, a
    ld h, d
    ld b, $1d
    ld h, [hl]
    rlca
    rra
    ld l, a
    rlca
    ld e, $78
    dec b
    dec e
    ld a, b
    ld [$8a1f], sp
    dec b
    ld e, $8a
    ld [$931f], sp
    inc b
    jr nz, @-$6b

    add hl, bc
    ld a, [hl+]
    sub a
    dec bc
    dec de
    sbc [hl]
    inc bc
    dec e
    and [hl]
    ld [$a924], sp
    dec b
    inc h
    xor l
    ld [$ae1b], sp
    inc bc
    inc h
    or h
    dec b
    add hl, hl
    cp d
    rlca
    rra
    jp $2908


    add $09
    inc h
    jp nc, Jump_000_2905

    db $d3
    add hl, bc
    dec [hl]
    push de
    ld b, $35
    ret c

    dec b
    ld hl, $09da
    dec [hl]
    db $db
    inc b
    ld a, [hl+]
    pop hl
    add hl, bc
    add hl, hl
    and $09
    ld d, $03
    ld e, e
    ld b, $ff
    ld de, $001c
    nop
    add $68
    ld b, $02
    ld b, $00
    ld c, $ac

jr_007_490b:
    ld b, $ff
    ld c, $ac
    ld a, [bc]
    add hl, bc
    ld hl, sp+$08
    ld [bc], a
    ld hl, sp+$08
    dec b
    ld hl, sp+$08
    ld [$08f8], sp
    dec bc
    ld hl, sp+$08
    ld c, $f8
    ld [$f811], sp
    ld [$f814], sp
    ld [$f317], sp
    inc c
    ld d, $03
    inc b
    ld d, $00
    rst $38
    cp $0e
    nop
    nop
    dec c
    ld [hl], l
    inc b
    inc b
    inc b
    add hl, bc
    add hl, bc
    db $10
    rst $38
    dec b
    ld [de], a
    and b
    cp e
    dec b
    dec c
    jr z, jr_007_490b

    dec b
    dec c
    inc l
    jr nz, jr_007_496b

    ld hl, sp-$41
    ld b, $f8
    ret nz

    dec b
    ld hl, sp-$3f
    inc b
    ld hl, sp-$3e
    inc b
    ld hl, sp-$3d
    dec b
    ld hl, sp-$3c
    ld b, $f8
    call $f808
    rst $08
    ld [$d1f8], sp
    rlca
    ld hl, sp-$2d
    ld b, $f8
    push de

jr_007_496b:
    ld b, $f8
    rst $10
    dec b
    ld hl, sp-$27
    inc bc
    ld hl, sp-$25
    ld [bc], a
    ld hl, sp-$23
    ld [bc], a
    ld hl, sp-$21
    ld [bc], a
    ld hl, sp-$1f
    ld [bc], a
    ld hl, sp-$1d
    ld [bc], a
    ld hl, sp-$1b
    inc bc
    ld hl, sp-$19
    inc b
    ld hl, sp-$17
    dec b
    ld hl, sp-$15
    inc b
    ld hl, sp-$13
    inc bc
    ld hl, sp-$11
    inc b
    ld hl, sp-$0e
    ld [bc], a
    ld hl, sp-$0e
    ld b, $f8
    db $f4
    ld [bc], a
    ld hl, sp-$0c
    ld b, $f8
    or $02
    ld hl, sp-$0a
    ld b, $f8
    ld hl, sp+$02
    ld hl, sp-$08
    ld b, $02
    dec b
    sbc d
    dec b
    inc b
    or l
    ld [$feff], sp
    ld c, $00
    ld b, $37
    ld l, [hl]
    rlca
    dec b
    nop
    dec b
    dec c
    and h
    rst $38
    ld [bc], a
    ld c, $a0
    ld [c], a
    nop
    ld d, $a0
    db $eb
    ld bc, $6016
    db $ec
    nop
    ld d, $80
    stop
    nop
    jr jr_007_49d8

    nop
    ld a, [de]
    ld [bc], a
    nop

jr_007_49d8:
    inc e
    inc b
    nop
    rla
    ld [bc], a
    nop
    dec e
    ld [bc], a
    nop
    daa
    inc b
    nop
    add hl, hl
    ld [bc], a
    nop
    dec hl
    inc b
    nop
    ld h, $02
    nop
    inc l
    ld [bc], a
    nop
    inc sp
    inc b
    nop
    dec [hl]
    ld [bc], a
    nop
    scf
    inc b
    nop
    ld [hl-], a
    ld [bc], a
    nop
    jr c, jr_007_4a00

    inc bc
    add a

jr_007_4a00:
    inc bc
    rra
    ld h, $09
    ld a, [bc]
    add hl, de
    ld a, [bc]
    dec b
    daa
    inc d
    ld a, [bc]
    daa
    ld a, [de]
    ld b, $19
    jr nz, jr_007_4a18

    daa
    add hl, hl
    ld b, $27
    dec [hl]
    ld b, $1a

jr_007_4a18:
    jr c, jr_007_4a1f

    daa
    ld b, c
    ld [$4d22], sp

jr_007_4a1f:
    ld [$5526], sp
    dec bc
    ld h, $5b
    add hl, bc
    daa
    ld l, h
    dec b
    ld h, $70
    ld [$7826], sp
    dec bc
    daa
    ld a, c
    ld b, $26
    ld a, a
    ld [$8026], sp
    dec bc
    ld h, $86
    dec bc
    daa
    add a
    rlca
    ld h, $90
    add hl, bc
    daa
    sbc d
    ld [$a326], sp
    add hl, bc
    daa
    cp d
    ld a, [bc]
    ld [hl+], a
    ret nz

    ld a, [bc]
    ld h, $c6
    dec bc
    daa
    rrc b
    inc bc
    push de
    add hl, bc
    ld h, $e6
    dec bc
    ld h, $ea
    dec bc
    ld h, $f6
    inc c
    ld l, $08
    ld c, e
    inc b
    xor c
    ld [bc], a
    cp [hl]
    ld b, $df
    ld b, $ff
    cp $0e
    ld c, $08
    ld l, l
    ld [hl], c
    rlca
    inc bc
    nop
    rlca
    ld c, $a4
    rst $38
    ld a, [bc]
    rrca
    and b
    rst $38
    ld bc, $a015
    inc c
    nop
    nop
    call c, Call_000_0007
    db $dd
    dec b
    nop
    sbc $03
    nop
    rst $18
    inc bc
    nop
    ldh [rTIMA], a
    nop
    pop hl
    rlca
    nop
    jp hl


    rlca
    nop
    db $eb
    ld b, $00
    db $ed
    rlca
    nop
    rst $28
    ld b, $00
    pop af
    rlca
    nop
    di
    rlca
    dec de
    dec hl
    inc c
    ld bc, $1227
    add hl, bc
    ld [hl+], a
    dec de
    add hl, bc
    dec hl
    inc hl
    ld bc, $2c1a
    dec b
    daa
    add hl, sp
    add hl, bc
    dec hl
    ld b, b
    ld bc, $462b
    ld bc, $4c27
    add hl, bc
    ld [hl+], a
    ld d, [hl]
    add hl, bc
    ld h, $62
    ld a, [bc]
    dec [hl]
    ld l, e
    ld b, $19
    ld a, h
    dec b
    daa
    add c
    dec bc
    dec hl
    adc d
    ld bc, $9427
    rlca
    ld h, $94
    dec bc
    daa
    sub a
    rlca
    dec hl
    sbc h
    ld bc, $a527
    rlca
    ld a, [de]
    xor d
    rlca
    add hl, de
    xor a
    rlca
    ld a, [de]
    or h
    rlca
    daa
    ret nz

    add hl, bc
    ld [hl+], a
    add $09
    ld h, $ce
    ld [$d326], sp
    ld a, [bc]
    add hl, de
    dec b
    ld d, h
    dec b
    ld [hl], e
    ld [$0786], sp
    call nz, $d805
    ld b, $ff
    cp $0e
    nop
    inc c
    ld d, b
    ld l, d
    rlca
    inc b
    nop
    add hl, bc
    rrca
    and h
    ld hl, sp+$07
    dec de
    nop
    sub c
    ld b, $17
    ld h, b
    sub e
    ld b, $17
    add b
    ld bc, $ea01
    ld d, e
    inc bc
    ld a, [hl+]
    daa
    add hl, bc
    ld [$0f27], sp
    inc b
    ld h, $10
    dec bc
    ld h, $13
    ld b, $27
    rla
    ld [$1927], sp
    dec bc
    dec [hl]
    inc h
    ld b, $26
    jr z, jr_007_4b41

    ld h, $31
    dec bc
    ld [hl+], a
    jr c, jr_007_4b4a

    ld h, $53

jr_007_4b41:
    dec bc
    daa
    ld e, h
    ld a, [bc]
    dec hl
    ld e, a
    ld bc, $6e19

jr_007_4b4a:
    rlca
    ld a, [de]
    ld [hl], e
    rlca
    add hl, de
    ld a, b
    rlca
    daa
    add b
    add hl, bc
    daa
    add a
    ld [$9635], sp
    ld b, $35
    sbc c
    rlca
    ld h, $a3
    ld [$a426], sp
    ld b, $26
    and l
    inc b
    ld h, $a6
    ld a, [bc]
    ld h, $ac
    inc b
    ld h, $ad
    ld a, [bc]
    ld h, $ae
    ld [$af26], sp
    ld b, $19
    or e
    ld b, $26
    cp a
    inc b
    ld h, $c1
    ld a, [bc]
    ld h, $c2
    ld b, $26
    ret z

    ld a, [bc]
    ld h, $cb
    inc b
    ld h, $cc
    ld [$da26], sp
    ld [$dc26], sp
    ld a, [bc]
    daa
    db $e4
    ld b, $27
    rst $20
    inc bc
    ld h, $ea
    ld a, [bc]
    daa
    pop af
    ld b, $26
    ld a, [c]
    dec bc
    ld sp, $3f03
    inc bc
    ld h, [hl]
    rlca
    sub b
    inc b
    cp c
    ld [$10ff], sp
    inc d
    nop
    nop
    jr c, @+$6b

    rlca
    ld bc, $1000
    inc de
    xor b
    inc bc
    inc bc
    db $ed
    inc b
    inc bc
    ld [$0307], a
    di
    dec c
    inc bc
    ld [bc], a
    inc bc
    add hl, bc
    rlca
    nop
    ld a, [bc]
    inc bc
    rst $38
    db $10
    dec d
    nop
    ld d, $b4
    ld l, c
    rlca
    ld [bc], a
    inc c
    nop
    ld [de], a
    jr nc, jr_007_4bdc

    rst $38
    ld [de], a
    xor b
    dec de
    nop
    nop

jr_007_4bdc:
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld bc, $0600
    ld [bc], a
    nop
    ld [$0001], sp
    ld a, [bc]
    ld [bc], a
    nop
    inc c
    ld bc, $0200
    ld b, $00
    inc b
    dec b
    nop
    ld b, $06
    nop
    ld [$0005], sp
    ld a, [bc]
    ld b, $00
    inc c
    dec b
    nop
    ld [bc], a
    add hl, bc
    nop
    inc b
    ld a, [bc]
    nop
    ld b, $09
    nop
    ld [$000a], sp
    ld a, [bc]
    add hl, bc
    nop
    inc c
    ld a, [bc]
    nop
    ld b, $0f
    nop
    rlca
    rrca
    nop
    ld [$000f], sp
    add hl, bc
    rrca
    ld [bc], a
    dec bc
    dec c
    ld [bc], a
    ld [bc], a
    dec c
    nop
    ld b, $0b
    nop
    dec c
    dec c
    nop
    inc b
    dec c
    nop
    rst $38
    db $10
    ld c, $00
    nop
    inc a
    ld c, [hl]
    nop
    ld bc, $09ff
    inc d
    xor h
    inc b
    inc b
    or $05
    ld [$07fb], sp
    ld [$09f6], sp
    ld [$0df6], sp
    ld [$ff00], sp
    db $10
    ld c, $02
    nop
    ld [$0847], sp
    ld bc, $07ff
    dec de
    xor b
    add hl, bc
    nop
    inc bc
    ld [$0006], sp
    dec b
    inc b
    nop
    ld [$0004], sp
    dec b
    ld b, $00
    dec bc
    inc b
    nop
    dec b
    ld [$0b00], sp
    ld [$0800], sp
    ld [$0b00], sp
    ld b, $00
    rst $38
    db $10
    ld c, $00
    nop
    ld l, e
    ld c, e
    ld [$0002], sp
    add hl, bc
    rra
    and b
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    inc bc
    inc bc
    ld [$0304], a
    ld [$0307], a
    ld [$030a], a
    nop
    rst $38
    cp $0e
    ld b, $00
    ld a, [bc]
    ld b, [hl]
    ld [$0202], sp
    ld b, $1c
    inc b
    ld sp, hl
    ld b, $1f
    nop
    nop
    nop
    ld [bc], a
    sub l
    ld b, $0b
    sbc a
    add hl, bc
    add hl, bc
    rst $38
    call c, $0212
    nop
    nop
    ld b, b
    ld [$0303], sp
    dec c
    inc d
    inc b
    rst $38
    dec c
    inc e
    and b
    nop
    ld bc, $a018
    rrca
    rrca
    db $f4
    dec a
    rlca
    ld hl, sp+$3e
    dec b
    db $f4
    ld b, b
    inc b
    ld hl, sp+$42
    dec b
    db $f4
    ld b, e
    rlca
    ld hl, sp+$4c
    rlca
    db $f4
    ld c, l
    dec b
    ld hl, sp+$4f
    inc b
    db $f4
    ld d, c
    dec b
    ld hl, sp+$52
    rlca
    db $f4
    or [hl]
    rlca
    ld hl, sp-$49
    dec b
    db $f4
    cp c
    inc b
    ld hl, sp-$45
    dec b
    db $f4
    cp h
    rlca
    add hl, hl
    dec l
    add hl, bc
    dec b
    ld l, $11
    dec c
    dec l
    inc de
    dec bc
    ld l, $14
    dec c
    inc l
    ld e, $0f
    daa
    ld [hl+], a
    add hl, bc
    ld l, $27
    inc b
    ld l, $29
    inc b
    ld l, $2a
    dec c
    ld l, $31
    ld b, $2d
    jr c, jr_007_4d1e

    daa
    ld a, [hl-]
    dec bc
    daa
    ld a, [hl-]
    rrca
    inc l
    ld c, d
    dec bc
    inc l
    ld c, a
    add hl, bc
    daa

jr_007_4d1e:
    ld d, [hl]
    dec bc
    daa
    ld e, d
    rlca
    daa
    ld e, d
    rrca
    inc l
    ld h, [hl]
    dec c
    ld l, $67
    rlca
    daa
    ld l, b
    rrca
    ld l, $6d
    ld b, $2d
    ld [hl], d
    dec c
    daa
    ld [hl], l
    dec bc
    dec l
    ld a, h
    dec c
    daa
    sub e
    inc c
    inc l
    sub a
    inc c
    nop
    sbc d
    ld [bc], a
    dec l
    and d
    rrca
    daa
    and l
    dec c
    daa
    or c
    rrca
    daa
    or d
    dec c
    dec l
    or e
    dec bc
    inc l
    cp c
    add hl, bc
    dec l
    cp a
    dec c
    dec l
    cp a
    rrca
    daa
    ret nz

    dec bc
    inc l
    jp Jump_000_2708


    jp Jump_000_270f


    call $2c0d
    rst $08
    dec c
    ccf
    rlca
    rst $38
    cp h
    inc d
    ld [bc], a
    nop
    pop af
    ld b, d
    ld [$0002], sp
    rrca
    dec de
    and h
    or l
    rrca
    ld a, [de]
    nop
    ld bc, $ed01
    ld sp, $2703
    daa
    ld a, [bc]
    dec c
    daa
    dec bc
    dec b
    dec l
    inc c
    ld de, $112d
    add hl, bc
    ld l, $14
    dec b
    inc l
    ld d, $11
    ld l, $1c
    ld b, $2d
    ld e, $11
    ld l, $20
    inc c
    inc l
    ld [hl+], a
    inc c
    daa
    inc l
    inc c
    ld l, $33
    ld de, $362c
    ld c, $2d
    ld b, c
    ld [$432e], sp
    dec b
    inc l
    ld c, e
    ld de, $4f2d
    ld de, $502e
    inc b
    dec l
    ld d, [hl]
    ld [$5827], sp
    dec b
    dec l
    ld e, l
    ld b, $27
    ld e, a
    ld c, $2d
    ld h, e
    ld de, $702e
    ld a, [bc]
    dec l
    ld [hl], d
    ld c, $2c
    ld [hl], d
    ld de, $742e
    ld a, [bc]
    inc l
    ld a, l
    inc c
    daa
    add l
    ld [$8927], sp
    dec c
    inc l
    adc a
    inc c
    ld l, $96
    ld de, $982d
    ld c, $2e
    sbc c
    rlca
    ld l, $a2
    ld de, $a32e
    inc b
    daa
    and h
    inc c
    ld l, $aa
    ld de, $b027
    inc c
    add hl, sp
    ld a, [bc]
    ld l, d
    ld a, [bc]
    rst $38
    inc c
    dec bc
    add h
    ld a, [bc]
    ei
    ld b, a
    inc c

jr_007_4e05:
    ld bc, $06ff
    cpl
    and b
    nop
    nop
    ld [$0291], sp
    ld b, $91
    add hl, bc
    ld b, $97
    inc b
    inc b
    sbc c
    ld b, $06
    sbc d
    ld b, $06
    sbc e
    ld b, $06
    sbc h
    ld b, $06
    sbc l
    ld b, $06
    rst $38
    inc c
    dec bc
    add h
    ld a, [bc]
    ei
    ld b, a
    dec c
    ld bc, $06ff
    add hl, bc
    xor b
    nop
    nop
    inc bc
    sub c
    add hl, bc
    ld b, $91
    ld [bc], a
    ld b, $92
    inc b
    dec b
    rst $38
    inc c
    dec bc
    add h
    ld a, [bc]
    rst $00
    ld b, a
    add hl, bc
    ld bc, $06ff
    add hl, de
    and b
    nop
    nop
    ld [bc], a
    sub e
    inc b
    ld [$0494], sp
    ld [bc], a
    rst $38
    inc c
    dec bc
    add h
    ld a, [bc]
    ei
    ld b, a
    dec bc
    ld bc, $06ff
    jr z, jr_007_4e05

    nop
    nop
    inc bc
    sub c
    ld [bc], a
    ld b, $91
    add hl, bc
    ld b, $90
    inc b
    inc b
    rst $38
    inc c
    dec bc
    add h
    ld a, [bc]
    rst $00
    ld b, a
    ld a, [bc]
    ld [bc], a
    inc b
    ld b, $1f
    add b
    rst $38
    ld b, $42
    and h
    nop
    nop
    ld bc, $0498
    inc b
    rst $38
    inc c
    dec bc
    add h
    inc e
    ei
    ld b, a
    ld [de], a
    ld [bc], a
    nop
    ld b, $36
    and h
    rst $38
    ld b, $37
    and b
    nop
    nop
    inc bc
    sub c
    ld [bc], a
    ld b, $91
    add hl, bc
    ld b, $9e
    ld bc, $ff00
    dec sp
    inc a
    stop
    ld b, b
    ld l, h
    rrca
    inc bc
    nop
    inc bc
    add hl, bc
    and h
    rst $38
    scf
    inc h
    and b
    nop
    scf

jr_007_4eb4:
    ld h, $a4
    dec hl
    dec hl
    ld hl, sp+$08
    jr z, jr_007_4eb4

    add hl, bc

jr_007_4ebd:
    daa
    ld hl, sp+$09
    add hl, hl
    ld hl, sp+$0a
    jr z, jr_007_4ebd

    dec bc

jr_007_4ec6:
    daa
    ld hl, sp+$0b
    add hl, hl
    ld hl, sp+$0c
    jr z, jr_007_4ec6

    dec c
    daa
    ld hl, sp+$0d
    add hl, hl
    ld hl, sp+$0f

jr_007_4ed5:
    daa
    ld hl, sp+$0f
    add hl, hl
    ld hl, sp+$10
    jr z, jr_007_4ed5

    ld de, $f827
    ld de, $f829
    ld [de], a
    jr z, @-$06

    inc de

jr_007_4ee7:
    daa
    ld hl, sp+$13
    add hl, hl
    ld hl, sp+$14
    jr z, jr_007_4ee7

    ld a, [de]
    ld b, $f8
    dec de
    dec b
    ld hl, sp+$1b
    rlca
    ld hl, sp+$1c
    ld b, $f8
    rra
    ld b, $f8
    jr nz, jr_007_4f05

    ld hl, sp+$20
    rlca
    ld hl, sp+$21

jr_007_4f05:
    ld b, $f8
    inc h

jr_007_4f08:
    inc [hl]
    ld hl, sp+$24
    ld [hl], $f8
    inc h
    jr c, jr_007_4f08

    dec h
    ld [hl], $f8
    ld h, $34
    ld hl, sp+$26

jr_007_4f17:
    dec [hl]
    ld hl, sp+$26
    scf
    ld hl, sp+$26
    jr c, jr_007_4f17

    daa
    ld [hl], $f3
    jr z, jr_007_4f26

    ld hl, sp+$28

jr_007_4f26:
    inc [hl]
    ld hl, sp+$28
    ld [hl], $f8
    jr z, jr_007_4f65

    ld [$022a], a
    ld [$022c], a
    ld [$022e], a
    di
    jr nc, @+$04

    rra
    ld bc, $2105
    ld e, l
    ld b, $0b
    ld e, [hl]
    ld b, $15
    ld e, l
    ld [$5e06], sp
    ld [$540f], sp
    add hl, bc
    ld e, $5d
    ld a, [bc]
    dec [hl]
    ld e, [hl]
    dec bc
    add hl, bc
    ld e, l
    dec bc
    dec c
    ld b, a
    ld c, $28
    ld d, h
    ld c, $38
    ld d, h
    rrca
    add hl, de
    ld e, l
    dec de
    add hl, bc
    scf
    inc e
    rla
    ld d, h

jr_007_4f65:
    inc e
    inc e
    ld d, h
    rra
    add hl, sp
    ld e, [hl]
    jr nz, @+$0b

    ld e, l
    jr nz, jr_007_4fa3

    ld e, l
    dec h
    ld h, $54
    dec h
    ld l, $5d
    jr z, jr_007_4fa9

    ld e, c
    dec l
    ld [$2d54], sp
    ld e, $5d
    dec l
    inc h
    ld d, h
    cpl
    daa
    ld e, c
    jr nc, jr_007_4f90

    ld e, l
    inc sp
    inc h
    ld e, l
    inc [hl]
    inc l
    ld e, l
    inc [hl]

jr_007_4f90:
    ld [hl-], a
    ld d, h
    dec [hl]
    jr jr_007_4f95

jr_007_4f95:
    scf
    ld de, $2a2d
    cp $0b
    dec bc
    ld h, h
    inc hl
    inc c
    nop
    call nz, Call_000_0f70

jr_007_4fa3:
    inc bc
    nop
    inc b
    inc hl
    and h
    ld e, a

jr_007_4fa9:
    nop
    jr z, @-$5e

    nop
    ld de, $a027
    ld d, $16
    ld hl, sp+$16
    ld [de], a
    ld hl, sp+$16
    inc d
    ld hl, sp+$17
    ld de, $17f8
    inc de
    ld hl, sp+$18
    ld [de], a
    ld hl, sp+$18
    inc d
    ld hl, sp+$19
    ld de, $19f8
    inc de
    ld hl, sp+$1a
    ld [de], a
    ld hl, sp+$1a
    inc d
    di
    ld sp, $f302
    ld sp, $ea03
    ld sp, $f304
    ld sp, $ea05
    ld b, h
    jr nz, @-$06

    ld e, [hl]
    inc c
    ld hl, sp+$5e
    ld c, $f8
    ld e, a
    dec bc
    ld [$0d5f], a
    ld hl, sp+$5f
    rrca
    ld hl, sp+$60
    inc c
    ld hl, sp+$60
    ld c, $1e
    ld e, e
    inc c
    dec de
    ld d, h
    ld de, $5409
    ld [de], a
    ld b, $5b
    dec d
    dec de
    ld e, c
    dec de
    ld [bc], a
    ld e, e
    dec e
    ld e, $5f
    ld e, $09
    ld e, c
    ld [hl+], a
    inc bc
    ld e, e
    inc h
    dec de
    ld d, h
    add hl, hl
    ld c, $5b
    ld a, [hl+]
    rra
    ld e, e
    ld l, $1d
    ld e, e
    ld [hl-], a
    dec de
    ld d, h
    ld [hl], $0e
    ld e, e
    ld [hl], $1e
    ld e, e
    add hl, sp
    inc e
    ld e, c
    ld a, $02
    inc bc
    ld a, $07
    ld e, [hl]
    ld a, $0b
    ld d, h
    ccf
    dec d
    scf
    ld c, c
    dec bc
    ld e, c
    ld c, e
    inc bc
    ld e, l
    ld c, h
    dec c
    inc bc
    ld c, l
    rlca
    ld e, e
    ld d, b
    rra
    ld e, e
    ld d, c
    inc e
    ld d, h
    ld d, d
    inc de
    ld e, e
    ld d, a
    dec e
    ld e, l
    ld e, d
    db $10
    ld e, l
    ld e, d
    inc d
    ld c, c
    ld [de], a
    cp $fe
    ld c, $0c
    nop
    db $f4
    ld [hl], h
    rrca
    ld [bc], a
    rrca
    nop
    ld a, [bc]
    xor h
    rst $38
    ld a, [bc]
    ld h, $a0
    ld [de], a
    ld [de], a
    ld hl, sp+$03
    add hl, bc
    ld hl, sp+$03
    dec bc
    ld [$0a04], a
    ld hl, sp+$05
    add hl, bc
    ld hl, sp+$05
    dec bc
    push af
    ld [hl-], a
    ld [$44f3], sp
    dec bc
    di
    add b
    rlca
    di
    and c
    dec bc
    ld hl, sp-$0b
    rlca
    ld hl, sp-$0a
    ld b, $f8
    or $08
    ld hl, sp-$09
    dec b
    ld hl, sp-$09
    rlca
    ld hl, sp-$09
    add hl, bc
    ld hl, sp-$08
    ld b, $f8
    ld hl, sp+$08
    ld hl, sp-$07
    rlca
    inc hl
    ld d, h
    rla
    inc c
    ld d, h
    dec e
    ld a, [bc]
    ld d, h
    ld [hl+], a
    inc c
    scf
    inc h
    ld [$2a54], sp
    dec bc
    ld d, h
    jr c, jr_007_50b9

    ld d, h
    ccf
    ld a, [bc]
    ld d, h
    ld c, a
    dec bc
    ld d, h
    ld d, l
    ld [$5b59], sp
    inc bc

jr_007_50b9:
    ld d, h
    ld e, [hl]
    inc c
    ld d, h
    ld h, b
    inc c
    ld d, h
    ld h, d
    inc c
    scf
    ld h, e
    add hl, bc
    ld d, h
    ld l, b
    add hl, bc
    ld d, h
    ld [hl], d
    ld a, [bc]
    scf
    ld a, b
    ld b, $5f
    ld a, d
    inc c
    ld e, c
    add c
    inc bc
    ld d, h
    add [hl]
    dec bc
    ld d, h
    sub d
    ld a, [bc]
    ld d, h
    sub h
    ld a, [bc]
    ld d, h
    sbc c
    inc c
    ld e, c
    and b
    inc bc
    ld e, a
    and h
    add hl, bc
    ld d, h
    xor b
    dec bc
    ld d, h
    or b
    add hl, bc
    scf
    or d
    rlca
    ld d, h
    or [hl]
    inc c
    ld d, h
    cp b
    inc c
    ld d, h
    cp a
    ld a, [bc]
    ld d, h
    jp z, $370c

    call Call_000_3707
    rst $08
    dec b
    ld e, c
    ret c

    inc b
    ld c, b
    rlca
    ld l, h
    inc b
    adc h
    dec b
    jp nz, $ff06

    cp $0f
    inc c
    nop
    inc bc
    ld a, b
    rrca
    ld [bc], a
    nop
    ld a, [bc]
    dec h
    and h
    rst $38
    ld a, [bc]
    inc hl
    xor b
    ld de, $f311
    dec de
    rlca
    ld hl, sp+$32
    ld a, [bc]
    ld hl, sp+$34
    add hl, bc
    ld hl, sp+$36
    add hl, bc
    ld hl, sp+$38
    add hl, bc
    ld hl, sp+$3a
    ld a, [bc]
    ld hl, sp+$59
    inc bc
    ld hl, sp+$5c
    inc bc
    ld hl, sp+$5f
    inc bc
    ld [$06ba], a
    di
    jp c, $f807

    di
    dec bc
    ld hl, sp-$0c
    ld a, [bc]
    ld [$04f5], a
    ld hl, sp-$0b
    dec bc
    ld hl, sp-$0a
    ld a, [bc]
    ld hl, sp-$09
    dec bc
    dec hl
    ld d, h
    dec bc
    inc c
    ld h, b
    ld de, $540b
    ld d, $05
    ld e, c
    jr nz, @+$04

    ld d, h
    jr nz, jr_007_516e

    ld d, h
    daa
    dec bc
    ld e, c
    dec hl
    ld [bc], a
    ld d, h
    cpl
    ld b, $54
    cpl
    inc c

jr_007_516e:
    ld d, h
    ld [hl], $0b
    ld d, h
    inc a
    inc c
    ld d, h
    ld a, $04
    ld d, h
    ld b, a
    add hl, bc
    ld e, c
    ld c, c
    ld bc, $4c54
    inc c
    ld e, c
    ld c, [hl]
    inc b
    ld d, h
    ld c, [hl]
    inc c
    ld d, h
    ld d, b
    inc c
    ld e, l
    ld d, h
    dec b
    ld d, h
    ld e, h
    ld b, $54
    ld h, [hl]
    inc c
    ld d, h
    ld [hl], c
    inc b
    ld d, h
    ld a, c
    inc c
    ld e, a
    ld a, a
    dec bc
    ld e, c
    add e
    inc b
    ld d, h
    add h
    ld a, [bc]
    ld e, c
    adc h
    ld bc, $8f54
    dec bc
    ld e, c
    sub e
    ld [bc], a
    ld e, a
    sbc c
    dec bc
    ld h, b
    and e
    dec c
    ld d, h
    xor h
    ld a, [bc]
    ld e, [hl]
    or h
    ld [$ba5d], sp
    rlca
    ld e, a
    cp [hl]
    dec c
    ld d, h
    add $0b
    ld d, h
    ret z

    dec bc
    ld d, h
    jp z, Jump_007_5f0b

    ret nc

    inc c
    ld e, a
    call nc, Call_007_540b
    sbc $0b
    ld d, h
    rst $20
    inc c
    ld e, c
    db $ec
    ld [bc], a
    jr nc, jr_007_51e0

    ld h, b
    rlca
    cp c
    ld bc, $03d6
    xor $06
    rst $38
    db $10

jr_007_51e0:
    ld c, $0c
    nop
    pop hl
    ld a, e
    rrca
    ld bc, $09ff
    inc h
    xor b
    inc b
    inc b
    ld [$0202], a
    ld [$0405], a
    ld [$0608], a
    ld [$080b], a
    nop
    rst $38
    xor [hl]
    ld c, $0c
    nop
    ld b, a
    ld a, h
    rrca
    inc bc
    xor b
    ld [$4424], sp
    adc e
    ld [$2020], sp
    ld bc, $3808
    inc c
    ld bc, $f301
    xor h
    add hl, bc
    dec de
    ld h, c
    ld bc, $5803
    dec bc
    dec bc
    ld e, b
    ld [de], a
    dec bc
    ld e, b
    rra
    ld a, [bc]
    ld h, d
    add hl, hl
    inc bc
    ld d, h
    add hl, hl
    dec bc
    ld e, a
    cpl
    dec bc
    ld e, b
    ld [hl], $0a
    ld h, d
    dec sp
    inc b
    ld e, b
    dec sp
    ld a, [bc]
    ld e, b
    ld b, d
    dec bc

jr_007_5236:
    ld d, h
    ld b, l
    dec bc
    ld d, h
    ld c, [hl]
    ld a, [bc]
    ld e, b
    ld d, h
    dec bc
    ld h, c
    ld d, a
    inc b
    ld e, b
    ld e, e
    ld a, [bc]
    ld h, d
    ld h, c
    inc bc
    ld d, h
    ld h, a
    dec bc
    ld d, h
    ld l, c
    dec bc
    ld d, h
    ld l, e
    dec bc
    ld e, a
    ld a, c
    ld a, [bc]
    ld e, b
    add h
    dec bc
    ld h, d
    add l
    inc bc
    ld h, d
    sub e
    inc bc
    ld h, b
    sub [hl]
    dec bc
    ld e, b
    sbc [hl]
    dec bc
    ld h, c
    xor h
    inc bc
    rst $38
    ret z

    ld c, $0a
    nop
    ld d, d
    ld c, [hl]
    db $10
    inc bc
    inc bc
    inc b
    add hl, bc
    jr jr_007_5236

    ld b, $2d
    nop
    jp nz, Jump_000_2b03

    nop
    jr jr_007_5295

    db $f4
    ld d, $05
    ld hl, sp+$17
    inc b
    db $f4
    rla
    ld b, $f8
    jr jr_007_528e

    db $f4
    inc e
    dec b
    ld hl, sp+$1d

jr_007_528e:
    inc b
    db $f4
    dec e
    ld b, $f8
    ld e, $05

jr_007_5295:
    db $f4
    jr nc, jr_007_529c

    ld hl, sp+$45
    inc b
    db $f4

jr_007_529c:
    ld e, b
    ld b, $f8
    ld e, c
    dec b
    db $f4
    ld e, c
    rlca
    ld hl, sp+$5a
    ld b, $f4
    ld h, b
    ld b, $f8
    ld h, c
    dec b
    db $f4
    ld h, c
    rlca
    ld hl, sp+$62
    ld b, $f4
    sub d
    inc bc
    di
    sub l
    inc bc
    ld hl, sp-$68
    inc bc
    db $f4
    xor e
    inc bc
    di
    xor [hl]
    inc bc
    ld hl, sp-$4f
    inc bc
    inc d
    jr c, @+$0d

    ld a, [bc]
    ld c, a
    ld de, $4b08
    ld a, [de]
    ld [bc], a
    dec hl
    dec h
    ld bc, $304d
    rlca
    dec hl
    ld a, [hl-]
    ld bc, $454e
    rlca
    dec hl
    ld c, a
    ld bc, $5d4b
    inc bc
    ld c, a
    ld h, a
    ld [$6a2b], sp
    ld bc, $754e
    ld bc, $754d
    rlca
    ld c, a
    add e
    ld [$894d], sp
    ld bc, $894d
    rlca
    ld d, b
    sbc d
    add hl, bc
    ld c, [hl]
    and c
    ld bc, $a14e
    rlca
    ld d, c
    xor b
    add hl, bc
    add hl, hl
    ld b, $3e
    ld b, $53
    ld b, $9a
    dec b
    and l
    dec b
    or [hl]
    ld [bc], a
    rst $38
    ret z

    ld c, $0a
    nop
    ret nz

    ld d, b
    db $10
    inc bc
    inc bc
    inc bc
    dec l
    inc b
    sbc e
    rlca
    dec l
    ld [$03c2], sp
    inc l
    nop
    inc de
    nop
    nop
    ld h, $04
    nop
    add hl, hl
    inc b
    nop
    inc l
    inc b
    nop
    cpl
    inc b
    nop
    ld [hl-], a
    inc b
    nop
    ld d, a
    inc b
    nop
    ld e, h
    inc b
    nop
    ld h, b
    inc b
    nop
    ld [hl], b
    inc b
    nop
    db $76
    inc b
    nop
    ld a, h
    inc b
    nop
    sbc b
    inc bc
    nop
    sub a
    inc b
    nop
    sbc c
    inc b
    nop
    sbc b
    dec b
    nop
    and b
    inc bc
    nop
    sbc a
    inc b
    nop
    and c
    inc b
    nop
    and b
    dec b
    dec d
    ld d, b
    rrca
    ld a, [bc]
    ld d, b
    ld de, $5108
    ld d, $0a
    jr c, jr_007_538f

    add hl, bc
    jr c, jr_007_539a

    add hl, bc
    ld d, b
    dec [hl]
    ld [$3c4f], sp
    ld b, $4b
    ld b, [hl]
    ld bc, $5251
    ld [$5f4f], sp
    add hl, bc
    ld c, h
    db $76
    ld bc, $884d
    ld b, $2b
    adc [hl]
    ld bc, $954d
    ld b, $29
    and a
    ld a, [bc]
    ld c, e
    xor e
    inc bc

jr_007_538f:
    ld d, b
    or c
    add hl, bc
    add hl, hl
    or l
    rlca
    ld d, c
    or [hl]
    add hl, bc
    ld c, e
    cp e

jr_007_539a:
    ld bc, $bc29
    ld a, [bc]
    ld de, $1f04
    inc bc
    ld c, l
    rlca
    ld l, b
    inc bc
    add c
    inc b
    rst $38
    db $10
    ld c, $00
    nop
    ld d, h
    ld d, e
    db $10
    ld [bc], a
    inc b
    rlca
    add hl, hl
    ld [$0709], sp
    ld [hl-], a
    nop
    inc b
    inc b
    xor $03
    dec bc
    di
    ld b, $0b
    di
    add hl, bc
    dec bc
    xor $0c
    dec bc
    nop
    rst $38
    db $10
    ld c, $00
    nop
    call z, Call_000_1053
    ld bc, $0903
    ld a, [hl+]
    ld [$000a], sp
    nop
    rlca
    ld [bc], a
    nop
    ld [$0003], sp
    add hl, bc
    ld [bc], a
    nop
    ld a, [bc]
    inc bc
    nop
    dec bc
    ld [bc], a
    nop
    rlca
    ld b, $00
    ld [$0007], sp
    add hl, bc
    ld b, $00
    ld a, [bc]
    rlca
    nop
    dec bc
    ld b, $00
    rst $38
    inc d
    ld d, b
    ld [$2a00], sp
    ld d, h
    db $10
    ld [$4404], sp
    add hl, hl
    inc b
    inc b
    ld c, e
    ld a, [hl+]
    nop
    ld [bc], a
    ld l, $2a
    inc b

Call_007_540b:
    rrca
    inc [hl]
    ld l, $00
    inc b
    jr nz, @+$30

    ld [$200d], sp
    ld [hl-], a
    nop
    ld [bc], a
    inc b
    ld [hl-], a
    inc b
    rrca
    inc b
    jr nc, jr_007_541f

jr_007_541f:
    nop
    nop
    add hl, bc
    ld c, [hl]
    ld [$4d01], sp
    dec bc
    ld bc, $014f
    dec e
    ld c, l
    rlca
    dec bc
    add hl, hl
    ld a, [bc]
    inc sp
    ld c, l
    ld a, [bc]
    ld b, d

jr_007_5434:
    ld c, [hl]
    dec bc
    ld c, [hl]
    ld c, [hl]
    inc c
    dec bc
    ld c, a
    ld de, $ff1d
    ret z

    ld c, $00
    nop
    dec b
    ld d, [hl]
    db $10
    inc bc
    inc bc
    dec b
    dec l
    inc c
    inc bc
    ld [bc], a
    ld sp, $c200
    dec b
    dec l
    db $10
    inc b
    inc b
    db $f4
    ld l, d
    dec b
    ld hl, sp+$6d
    dec b
    db $f4
    ld [hl], b
    dec b
    ld hl, sp+$73
    dec b
    ld [de], a
    ld a, [de]
    ld c, $05
    ld c, a
    inc de
    dec bc
    add hl, hl
    ld [hl+], a
    inc b
    add hl, de
    ld [hl+], a
    dec b
    jr c, jr_007_549b

    rlca
    ld c, c
    ld [hl], $05
    add hl, de
    ld c, d
    dec b
    ld c, l
    ld c, d
    inc c
    ld d, c
    ld d, l
    ld [$714f], sp
    ld a, [bc]
    ld c, [hl]
    db $76
    rlca
    ld c, a
    add a
    ld [$8f4c], sp
    ld bc, $9a38
    ld a, [bc]
    jr c, jr_007_5434

    ld a, [bc]
    ld c, a
    or d
    ld [$b838], sp
    ld a, [bc]
    ld d, b
    cp [hl]
    add hl, bc
    rla
    dec b
    ccf
    dec b

jr_007_549b:
    ld d, d
    inc b
    ld h, l
    inc b
    rst $38
    db $10
    ld h, e
    nop
    nop
    and h
    ld d, a
    db $10
    ld [bc], a
    ld b, $00
    dec e
    and h
    ld b, $ff
    add hl, bc
    cp b
    cpl
    cpl
    db $f4
    ld b, $0d
    ld hl, sp+$06
    add hl, de
    db $f4
    ld b, $25
    ld hl, sp+$06
    ld sp, $06f4
    dec a
    ld hl, sp+$06
    ld c, c
    db $f4
    ld b, $55
    ld hl, sp+$06
    ld h, c
    db $f4
    rlca
    dec bc
    ld hl, sp+$07
    rrca
    db $f4
    rlca
    rla
    ld hl, sp+$07
    dec de
    db $f4
    rlca
    inc hl
    ld hl, sp+$07
    daa
    db $f4
    rlca
    cpl
    ld hl, sp+$07
    inc sp
    db $f4
    rlca
    dec sp
    ld hl, sp+$07
    ccf
    db $f4
    rlca
    ld b, a
    ld hl, sp+$07
    ld c, e
    db $f4
    rlca
    ld d, e
    ld hl, sp+$07
    ld d, a
    db $f4
    rlca
    ld e, a
    ld hl, sp+$08
    dec b
    db $f4
    ld [$f809], sp
    ld [$f411], sp
    ld [$f815], sp
    ld [$f41d], sp
    ld [$f821], sp
    ld [$f429], sp
    ld [$f82d], sp
    ld [$f435], sp
    ld [$f839], sp
    ld [$f441], sp
    ld [$f845], sp
    ld [$f44d], sp
    ld [$f851], sp
    ld [$f459], sp
    ld [$f85d], sp
    add hl, bc
    rlca
    db $f4
    add hl, bc
    inc de
    ld hl, sp+$09
    rra
    db $f4
    add hl, bc
    dec hl
    ld hl, sp+$09
    scf
    db $f4
    add hl, bc
    ld b, e
    ld hl, sp+$09
    ld c, a
    db $f4
    add hl, bc
    ld e, e
    nop
    rst $38
    adc h
    ld c, $0c
    nop
    db $f4
    ld d, a
    db $10
    ld [bc], a
    inc bc
    dec b
    dec l
    inc e
    add [hl]
    inc b
    dec e
    nop
    ld c, $00
    inc bc
    inc d
    ld [bc], a
    nop
    ld b, c
    ld b, $00
    ld b, c
    ld [$4100], sp
    ld a, [bc]
    nop
    ld a, b
    inc bc
    nop
    ld a, d
    inc bc
    nop
    ld a, h
    inc bc
    nop
    ld [hl], a
    dec b
    nop
    ld a, c
    dec b
    nop
    ld a, e
    dec b
    nop
    ld a, l
    dec b
    nop
    ld a, b
    rlca
    nop
    ld a, d
    rlca
    nop
    ld a, h
    rlca
    ld [de], a
    ld c, l
    ld a, [bc]
    ld [$0f4d], sp
    inc bc
    ld d, b
    jr @+$06

    ld c, [hl]
    add hl, de
    ld [$2351], sp
    rlca
    jr c, @+$2a

    dec bc
    ld d, b
    dec l
    ld a, [bc]
    ld c, [hl]
    dec [hl]
    add hl, bc
    add hl, hl
    jr c, jr_007_55a4

    add hl, hl
    dec sp
    ld [$3e29], sp
    dec b
    ld c, c
    ld c, l
    ld b, $51
    ld d, [hl]

jr_007_55a4:
    ld a, [bc]
    ld d, b
    ld l, h
    ld a, [bc]
    add hl, hl
    ld [hl], l
    dec bc
    ld c, a
    ld a, l
    dec bc
    ld d, b
    add d
    ld a, [bc]
    add hl, hl
    add e
    ld [$031e], sp
    jr nc, jr_007_55bb

    ld d, e
    ld b, $60

jr_007_55bb:
    dec b
    ld l, a
    rlca
    rst $38
    db $10
    ld c, $00
    nop
    xor d
    ld e, c
    db $10
    ld bc, $0903
    ld l, $04
    ld [$f408], sp
    rlca
    add hl, bc
    xor $08
    inc bc
    ld hl, sp+$08
    add hl, bc
    db $f4
    add hl, bc
    add hl, bc
    ld hl, sp+$0a
    add hl, bc
    xor $0b
    inc bc
    db $f4
    dec bc
    add hl, bc
    ld hl, sp+$0c
    add hl, bc
    nop
    rst $38
    ret z

    ld c, $00
    nop
    cp $59
    db $10
    inc bc
    inc bc
    dec b
    dec l
    inc d
    jp nz, Jump_000_2d05

    jr @-$3c

    ld [bc], a
    inc sp
    nop
    nop
    nop
    ld de, $0e1a
    dec b

Call_007_5601:
    add hl, de
    ld [hl+], a
    dec b
    ld c, a
    ld l, $07
    jr c, @+$3e

    ld b, $4e
    ld b, a
    ld [$594e], sp
    ld [$694e], sp
    ld [$764f], sp
    dec b
    add hl, hl
    ld a, [hl]
    rlca
    ld c, e
    add l
    ld bc, $9438
    dec bc
    jr c, @-$68

    dec bc
    ld c, e
    and c
    dec b
    add hl, hl
    and a
    ld [$b150], sp
    ld a, [bc]
    ld d, c
    or [hl]
    rlca
    ld d, b
    cp [hl]
    add hl, bc
    ld d, $05
    ld c, a
    dec b
    ld h, d
    dec b
    adc e
    dec b
    or h
    inc bc
    rst $38
    db $10
    ld c, $00
    nop
    bit 3, e
    db $10
    ld bc, $0903
    ld [hl-], a
    ld [$000c], sp
    nop
    ld [$0002], sp
    add hl, bc
    inc bc
    nop
    ld a, [bc]
    ld [bc], a
    nop
    dec bc
    inc bc
    nop
    inc c
    ld [bc], a
    nop
    dec c
    inc bc
    nop
    ld [$0006], sp
    add hl, bc
    rlca
    nop
    ld a, [bc]
    ld b, $00
    dec bc
    rlca
    nop
    inc c
    ld b, $00
    dec c
    rlca
    nop
    rst $38
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    ld c, $0c
    db $10
    add c
    ld e, [hl]
    ld c, $05
    ld [bc], a
    inc b
    add hl, bc
    inc d
    ld [$3509], a
    nop
    ld a, [$3a04]
    nop
    ld [bc], a
    add hl, bc
    inc [hl]
    db $10
    ld a, [$3409]
    inc c
    inc de
    inc de
    pop af
    db $76
    rlca
    db $f4
    adc c
    rlca
    ld hl, sp-$76
    ld b, $f4
    adc e
    rlca
    ld hl, sp-$6f
    rlca
    db $f4
    sub d
    ld b, $f8
    sub e
    rlca
    db $f4
    cp e
    inc bc
    ld hl, sp-$44
    inc b
    rst $28
    cp l
    inc bc
    db $f4
    cp [hl]
    inc b
    ld hl, sp-$41
    inc bc
    db $f4
    ret nz

    inc b
    ld hl, sp-$36
    rlca
    db $f4
    jp z, $f809

    rrc b
    db $f4
    rst $08
    ld [$d0f8], sp
    rlca
    db $f4
    ret nc

    add hl, bc
    jr nc, jr_007_56fa

    rlca
    add hl, bc
    dec h
    dec c
    ld b, $24
    rrca
    dec b
    ld d, h
    db $10
    ld [$1325], sp
    inc b
    dec h
    inc de
    ld [$1a55], sp
    dec bc
    inc h
    inc e
    ld [$2929], sp
    add hl, bc
    add hl, hl
    ld a, [hl+]
    rlca
    dec h
    inc [hl]
    ld b, $25
    dec sp
    dec b
    dec h
    dec sp

jr_007_56fa:
    rlca
    dec h
    dec sp
    add hl, bc
    ld d, l
    dec a
    dec bc
    inc h
    ld b, h
    ld [$4a55], sp

Call_007_5706:
    dec bc
    ld d, h
    ld d, [hl]
    dec bc
    ld d, l
    ld e, l
    dec bc
    inc h
    ld l, b
    inc b
    ld d, h
    ld l, h
    rlca
    dec h
    ld a, b
    inc bc
    inc h
    ld a, h
    ld [$8029], sp
    rlca
    ld d, l
    add b
    dec bc
    inc h
    adc b
    dec b
    inc h
    adc [hl]
    ld b, $24
    sbc e
    inc b
    inc h
    sbc e
    rlca
    ld d, l
    sbc e
    dec bc
    ld d, [hl]
    and [hl]
    ld bc, $ac56
    ld bc, $b256
    ld bc, $bb24
    ld [$c055], sp
    dec bc
    inc h
    jp $2407


    call Call_000_2405
    ret c

    inc b
    ld d, l
    db $db
    dec bc
    ld d, l
    rst $18
    dec bc
    inc h
    rst $20
    dec b
    inc h
    ld [$5503], a
    db $eb
    rlca
    dec h
    rst $28
    dec b
    dec h
    ldh a, [$08]
    ld d, l
    ld a, [c]
    dec bc
    dec h
    or $08
    dec h
    rst $30
    inc b
    scf
    dec b
    ld [hl], e
    inc bc
    cp l
    ld [bc], a
    call c, $ff03
    rst $38
    ld c, $0c
    inc d
    ld a, h
    ld h, c
    ld c, $04
    ld [bc], a
    dec b
    inc [hl]
    inc b
    inc d
    ld [bc], a
    ld [hl], $00
    ld hl, sp+$02
    scf
    inc b
    ld hl, sp+$08
    jr c, jr_007_5785

jr_007_5785:
    rlca
    rlca
    db $f4
    sbc e
    inc bc
    ld hl, sp-$62
    inc bc
    db $f4
    and c
    inc bc
    ld hl, sp-$5c
    inc bc
    db $f4
    and a
    inc bc
    ld hl, sp-$56
    inc bc
    db $f4
    xor l
    inc bc
    inc h
    inc h
    ld [$5603], sp
    ld a, [bc]
    ld bc, $0e24
    dec b
    add hl, hl
    ld de, $5504
    inc d
    dec bc
    inc h
    dec e
    dec b
    ld d, l
    inc l
    add hl, bc
    inc h
    ld a, [hl-]
    rlca
    ld d, [hl]
    ld a, $01
    inc h
    ld b, l
    ld b, $29
    ld c, d
    add hl, bc
    inc h
    ld c, h
    rlca
    inc h
    ld l, c
    rlca
    inc h
    ld l, h
    ld b, $24
    ld [hl], d
    ld b, $24
    ld [hl], l
    rlca
    inc h
    add h
    inc b
    inc h
    add [hl]
    dec b
    inc h
    adc b
    ld b, $29
    and a
    inc c
    add hl, hl
    xor c
    inc c
    ld d, [hl]
    or a
    ld bc, $c024
    rlca
    inc h
    ret nz

    dec bc
    inc h
    pop bc
    ld a, [bc]
    inc h
    jp nz, Jump_000_2409

    jp $2406


    call nz, Call_000_240b
    push bc
    ld a, [bc]
    inc h
    add $09
    add hl, hl
    db $db
    inc c
    inc h
    call c, Call_000_2907
    sbc $0c
    inc h
    rst $20
    add hl, bc
    add hl, hl
    db $ec
    ld b, $24
    pop af
    ld [$0150], sp
    ld a, e
    ld bc, $03cf
    rst $38
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rst $38
    ld c, $0c
    ld [de], a
    dec hl
    ld h, h
    ld c, $02
    rlca
    add hl, bc
    dec [hl]
    inc b
    ld sp, hl
    inc bc
    ld [hl+], a
    nop
    ld [hl+], a
    ld [hl+], a
    db $f4
    ld [hl+], a
    inc bc
    ld hl, sp+$22
    dec b
    db $f4
    inc hl
    ld [bc], a
    ld hl, sp+$23
    inc b
    db $f4
    inc h
    inc bc
    ld hl, sp+$24
    dec b
    db $f4
    dec h
    ld [bc], a
    ld hl, sp+$25
    inc b
    db $f4
    ld h, $03
    ld hl, sp+$26
    dec b
    rst $28
    ld b, b
    add hl, bc
    db $f4
    ld c, h
    inc bc
    ld hl, sp+$4c
    dec b
    db $f4
    ld c, [hl]
    inc b
    ld hl, sp+$50
    inc bc
    db $f4
    ld d, b
    dec b
    ld hl, sp+$52
    inc b
    db $f4
    ld d, h
    inc bc
    ld hl, sp+$54
    dec b
    db $f4
    ld d, [hl]
    inc b
    ld hl, sp+$58
    inc bc
    db $f4
    ld e, b
    dec b
    ld hl, sp-$22
    inc bc
    db $f4
    sbc $05
    ld hl, sp-$1e
    inc bc
    db $f4
    ld [c], a
    dec b
    ld hl, sp-$1a
    inc bc
    db $f4
    and $05
    ld hl, sp-$16
    inc bc
    db $f4
    ld [$f805], a
    xor $03
    db $f4
    xor $05
    ld hl, sp-$0e
    inc bc
    db $f4
    ld a, [c]
    dec b
    jr z, jr_007_58ff

    ld [$2406], sp
    ld c, $04
    ld d, h
    ld [de], a
    dec bc
    inc h
    dec d
    ld [bc], a
    ld d, h
    ld a, [de]
    ld b, $24
    dec e
    inc b
    ld d, h
    jr nz, jr_007_58c9

    dec h
    ld a, [hl+]
    dec b
    dec h
    jr nc, jr_007_58c9

    dec h
    jr nc, jr_007_58ce

    ld d, h
    ld [hl-], a

jr_007_58c9:
    dec bc
    dec h
    ld [hl], $05
    dec h

jr_007_58ce:
    ld [hl], $07
    dec h
    ld [hl], $09
    inc bc
    dec a
    rlca
    inc h
    ld b, e
    inc b
    ld [bc], a
    ld c, c
    ld [$4d29], sp
    dec bc
    ld d, l
    ld c, a
    dec bc
    add hl, hl
    ld e, b
    dec bc
    ld [bc], a
    ld e, e
    ld [$6729], sp
    add hl, bc
    ld d, l
    ld l, l
    ld b, $55
    ld l, l
    dec bc
    add hl, hl
    ld [hl], e
    add hl, bc
    ld d, [hl]
    ld a, h
    ld bc, $8329
    ld b, $56
    adc d
    ld bc, $8a24

jr_007_58ff:
    rlca
    ld d, h
    sub a
    ld a, [bc]
    inc h
    sbc b
    rlca
    ld d, h
    sbc d
    ld a, [bc]
    ld d, l
    xor d
    ld [$c525], sp
    dec b
    inc h
    push bc
    ld [$c524], sp
    add hl, bc
    ld d, [hl]
    call z, Call_007_5601
    jp nc, Jump_000_2401

    db $ed
    inc b
    inc h
    ld a, [c]
    rlca
    ld de, $2c04
    inc b
    jr c, jr_007_592b

    ld b, a
    inc b
    ld e, l
    inc b

jr_007_592b:
    sub c
    inc b
    cp e
    ld [$0bff], sp
    dec bc
    dec bc
    dec bc
    ld a, [hl-]
    ld [hl+], a
    inc c
    ld c, $6c
    ld l, b
    ld c, $02
    nop
    dec b
    ld [hl+], a
    and h
    ld a, [bc]
    dec e
    dec [hl]
    ld [$1717], sp
    rst $28
    ld [bc], a
    ld a, [bc]
    db $f4
    ld [bc], a
    ld a, [de]
    ld hl, sp+$02
    ld e, $f4
    inc b
    ld a, [de]
    ld hl, sp+$04
    ld e, $f4
    ld b, $1a
    ld hl, sp+$06
    ld e, $f4
    ld a, [bc]
    dec de
    ld hl, sp+$0b
    dec de
    db $f4
    inc c
    dec de
    ld hl, sp+$13
    dec de
    db $f4
    inc de
    inc e
    ld hl, sp+$13
    dec e
    db $f4
    dec de
    add hl, de
    ld hl, sp+$1b
    ld a, [de]
    db $f4
    dec de
    dec de
    ld hl, sp+$1b
    inc e
    ld [$062f], a
    ld [$082f], a
    ld [$0730], a
    ld [$0631], a
    ld [$0831], a
    rst $28
    scf
    ld a, [de]
    dec d
    inc h
    inc b
    ld [bc], a
    dec h
    inc b
    inc c
    inc h
    inc b
    inc d
    ld d, a
    dec b
    rla
    inc h
    add hl, bc
    ld [de], a
    ld d, a
    dec bc
    rrca
    ld d, a
    dec c
    rla
    inc h
    rrca
    inc b
    add hl, hl
    inc de
    rlca
    ld d, [hl]
    jr jr_007_59bb

    ld d, a
    ld a, [de]
    rrca
    ld d, [hl]
    inc e
    add hl, bc
    ld d, a
    ld e, $07
    inc h
    ld hl, $2512
    ld [hl+], a
    inc b
    add hl, hl
    inc h

jr_007_59bb:
    rrca
    ld d, [hl]
    dec h
    ld de, $2a25
    ld b, $03
    ld l, $11
    add hl, hl
    jr nc, jr_007_59cb

    dec h
    inc sp
    dec d

jr_007_59cb:
    daa
    dec de
    rst $38
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    rst $38
    ld c, $0c
    nop
    dec a
    ld l, e
    ld c, $04
    ld [bc], a
    inc bc
    dec a
    nop
    ccf
    rst $38
    add hl, sp
    and b
    ccf
    nop
    add hl, sp
    and h
    ld sp, hl
    rlca
    jr z, jr_007_5a03

    ld bc, $ef01
    and b
    ld [bc], a
    dec e
    inc bc
    ld a, [bc]

jr_007_5a03:
    add hl, bc
    add hl, hl
    ld [de], a
    ld [$1657], sp
    ld a, [bc]
    inc bc
    rra
    add hl, bc
    inc h
    inc hl
    dec b
    ld d, a
    add hl, hl
    ld [$3403], sp
    add hl, bc

jr_007_5a16:
    add hl, hl
    ld b, e
    ld [$4b25], sp
    inc b
    inc bc
    ld c, e

jr_007_5a1e:
    add hl, bc
    inc bc
    ld h, a
    add hl, bc
    ld [bc], a
    ld a, c
    inc b
    inc h
    ld a, c
    dec b
    ld d, a
    add d
    dec bc
    inc bc
    sub b
    add hl, bc
    inc h
    sbc [hl]
    rlca
    inc h
    and b
    add hl, bc
    inc h
    and d
    rlca
    ld d, a
    xor l
    ld a, [bc]
    ld d, a
    cp d
    add hl, bc
    inc bc
    jp nz, $240a

    rlc a
    ld d, a
    rst $08
    add hl, bc
    add hl, hl
    ret nc

    add hl, bc
    inc h
    pop de
    ld b, $24
    db $d3
    inc bc
    inc h
    call c, Call_007_5706
    sbc $09
    add hl, hl
    db $eb
    dec b
    ld [hl], d
    ld b, $88
    ld b, $9f
    ld bc, $03c3
    sub $03
    rst $38
    dec bc
    dec bc
    dec bc
    db $10
    inc l
    inc c
    nop
    ld b, b
    ld l, [hl]
    ld c, $02
    rlca
    nop
    jr c, jr_007_5a16

    rlca
    rst $38
    jr c, jr_007_5a1e

    dec h
    dec h
    db $f4
    rlca
    ld h, $f8
    ld [$f405], sp
    ld [$f806], sp
    ld [$f407], sp
    ld [$f808], sp
    ld [$f409], sp
    ld [$f80a], sp
    ld [$f40b], sp
    ld [$f80c], sp
    ld [$f40d], sp
    ld [$f80e], sp
    ld [$f40f], sp
    ld [$f810], sp
    ld [$f411], sp
    ld [$f812], sp
    ld [$f413], sp
    ld [$f814], sp
    ld [$f415], sp
    ld [$f816], sp
    ld [$f417], sp
    ld [$f818], sp
    ld [$f419], sp
    ld [$f81a], sp
    ld [$f41b], sp
    ld [$f81c], sp
    ld [$f41d], sp
    ld [$f81e], sp
    ld [$f41f], sp
    ld [$f820], sp
    ld [$f421], sp
    ld [$f822], sp
    ld [$f423], sp
    ld [$f824], sp
    ld [$f425], sp
    ld [$f826], sp
    ld [$f427], sp
    add hl, bc
    ld h, $00
    rst $38
    db $10
    ld b, e
    stop
    ld l, a
    ld l, [hl]
    ld c, $04
    ld [bc], a
    inc bc
    inc [hl]
    ld [$03ff], sp
    dec sp
    and b
    rst $38
    inc [hl]
    dec sp
    and h
    ld [bc], a
    dec a
    inc a
    nop
    nop
    nop
    ld de, $0324
    ld a, [de]
    inc h
    inc bc
    ld [hl+], a
    inc h
    inc bc
    ld [hl], $24
    inc b
    inc c
    inc h
    inc b
    jr z, @+$26

    inc b
    inc a
    inc h
    rlca
    rlca
    inc h
    rlca
    ld e, $24
    rlca
    inc h
    inc h
    add hl, bc
    inc c
    inc h
    add hl, bc
    scf
    inc h
    dec bc
    inc e
    inc h
    dec bc
    ld [hl+], a
    ld d, [hl]
    inc c
    ld bc, $0c24
    ld h, $25
    inc c

jr_007_5b33:
    scf
    inc h
    inc c
    add hl, sp
    ld [$fe03], sp
    db $10
    ld a, [de]
    inc c
    jr jr_007_5b33

    ld l, a
    ld c, $02
    nop
    ld bc, $a43a
    nop
    dec d
    ld a, [hl-]
    xor b
    rla
    rla
    db $f4
    inc bc
    ld [bc], a
    ld hl, sp+$03
    ld b, $f4
    inc bc
    ld a, [bc]
    ld hl, sp+$03
    ld c, $f4
    inc bc
    ld [de], a
    ld hl, sp+$06
    ld [bc], a
    db $f4
    ld b, $06
    ld hl, sp+$06
    ld a, [bc]
    db $f4
    ld b, $0e
    ld hl, sp+$06
    ld [de], a
    db $f4
    ld b, $16
    ld hl, sp+$09
    ld [bc], a
    db $f4
    add hl, bc
    ld b, $f8
    add hl, bc
    ld a, [bc]
    db $f4
    add hl, bc
    ld c, $f8
    add hl, bc
    ld [de], a
    db $f4
    add hl, bc
    ld d, $f8
    inc c
    ld [bc], a
    db $f4
    inc c
    ld b, $f8
    inc c
    ld a, [bc]
    db $f4
    inc c
    ld c, $f8
    inc c
    ld [de], a
    db $f4
    inc c
    ld d, $01
    nop
    inc bc
    ld d, $ff
    rst $38
    ld c, $0c
    nop
    ld a, [c]
    ld [hl], b
    ld c, $02
    ld [bc], a
    dec b
    ld a, [hl-]
    inc c
    ld a, [$3d07]
    inc b
    ld b, $06
    rst $28
    or c
    ld [bc], a
    db $f4
    ret nz

    inc b
    ld hl, sp-$3e
    inc b
    db $f4
    call nz, $f804
    add $04
    rst $28
    pop hl
    dec bc
    jr nz, jr_007_5be1

    rlca
    add hl, bc
    dec h
    dec bc
    rlca
    dec h
    rrca
    dec b
    dec h
    inc de
    inc bc
    dec h
    jr nz, jr_007_5bcd

    ld d, a
    inc h
    dec bc

jr_007_5bcd:
    inc h
    jr z, jr_007_5bd8

    ld d, a
    ld a, [hl+]
    dec bc
    ld d, a
    ld [hl-], a
    dec bc
    ld d, a
    add hl, sp

jr_007_5bd8:
    dec bc
    ld d, [hl]
    ld c, a
    ld bc, $5556
    ld bc, $6124

jr_007_5be1:
    add hl, bc
    inc h
    ld h, l
    ld b, $57
    ld l, l
    dec bc
    dec h
    ld a, b
    inc b
    ld d, a
    add e
    dec bc
    ld d, a
    adc e
    dec bc
    ld d, a
    sbc h
    dec bc
    inc h
    and e
    ld b, $57
    and e
    dec bc
    dec h
    xor e
    ld b, $57
    xor l
    dec bc
    dec h
    or c
    dec b
    ld d, a
    cp d
    dec bc
    ld d, a
    cp l
    dec bc
    ld d, a
    ret


    dec bc
    ld d, a
    sub $0b
    ld d, [hl]
    ld [c], a
    ld bc, $e229
    dec bc
    dec h
    ld a, [c]
    ld a, [bc]
    dec h
    or $0a
    add hl, de
    ld [bc], a
    ccf
    add hl, bc
    ld e, e
    ld b, $7a
    ld b, $a7
    ld bc, $05b3
    rst $38
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    db $10
    ld b, e
    stop
    ld d, e
    ld [hl], h
    ld c, $04
    ld a, [bc]
    ld b, $38
    nop
    ld [bc], a
    dec sp
    inc a
    inc b
    rst $38
    ld bc, $a03e
    rst $38
    inc d
    ld a, $a4
    nop
    nop
    inc d
    inc h
    ld [bc], a
    dec bc
    inc h
    inc bc
    dec d
    inc h
    inc b
    dec h
    inc h
    inc b
    ld sp, $0555
    rrca
    inc h
    ld b, $05
    inc h
    ld b, $34
    dec h
    rlca
    inc d
    dec h
    rlca
    ld a, [de]
    inc c
    rlca
    daa
    inc c
    rlca
    cpl
    inc c
    rlca
    scf
    inc h
    ld [$242c], sp
    add hl, bc
    inc hl
    inc h
    ld a, [bc]
    dec bc
    dec h
    ld a, [bc]
    dec de
    dec h
    ld a, [bc]
    rra
    dec h
    ld a, [bc]
    inc h
    dec h
    dec bc
    ld c, $24
    dec bc
    dec h
    dec bc
    inc d
    ld [bc], a
    jr jr_007_5c93

    dec e
    cp $10
    ld a, [de]

jr_007_5c93:
    inc c
    ld a, [de]
    add sp, $75
    ld c, $02
    nop
    ld bc, $a83d
    nop
    dec d
    dec a
    xor h
    rla
    rla
    db $f4
    inc bc
    ld b, $f8
    inc bc
    ld a, [bc]
    db $f4
    inc bc
    ld c, $f8
    inc bc
    ld [de], a
    db $f4
    inc bc
    ld d, $f8
    ld b, $02
    db $f4
    ld b, $06
    ld hl, sp+$06
    ld a, [bc]
    db $f4
    ld b, $0e
    ld hl, sp+$06
    ld [de], a
    db $f4
    ld b, $16
    ld hl, sp+$09
    ld [bc], a
    db $f4
    add hl, bc
    ld b, $f8
    add hl, bc
    ld a, [bc]
    db $f4
    add hl, bc
    ld c, $f8
    add hl, bc
    ld [de], a
    db $f4
    add hl, bc
    ld d, $f8
    inc c
    ld [bc], a
    db $f4
    inc c
    ld b, $f8
    inc c
    ld a, [bc]
    db $f4
    inc c
    ld c, $f8
    inc c
    ld [de], a
    db $f4
    inc c
    ld d, $01
    nop
    inc bc
    ld [bc], a
    rst $38
    db $10
    ld c, $08
    nop
    add hl, sp
    ld a, h
    ld de, $ff01
    ld bc, $a840
    add hl, bc
    nop
    nop
    dec b
    inc b
    nop
    ld [$0005], sp
    dec bc
    inc b
    nop
    dec b
    rlca
    nop
    ld [$0008], sp
    dec bc
    rlca
    nop
    dec b
    ld a, [bc]
    nop
    ld [$000b], sp
    dec bc
    ld a, [bc]
    inc bc
    ld h, a
    dec b
    dec bc
    ld h, h
    rlca
    ld [$0967], sp
    dec b
    rst $38
    dec sp
    ld e, $08
    nop
    and e
    ld a, c
    ld de, $0004
    add hl, de
    nop
    xor b
    rst $38
    ld d, $41
    and h
    nop
    ld b, $3f
    and b
    rst $38
    ld bc, $a041
    inc c
    inc c
    db $f4
    add hl, bc
    dec d
    ld hl, sp+$0b
    inc d
    db $f4
    dec c
    dec d
    di
    db $10
    dec d
    ld hl, sp+$13
    dec d
    db $f4
    dec d
    inc d
    ld hl, sp+$17
    dec d
    di
    ld a, [de]
    dec d
    db $f4
    dec e
    dec d
    ld hl, sp+$1f
    inc d
    db $f4
    ld hl, $ee15
    scf
    rla
    ld [de], a
    ld h, h
    add hl, bc
    jr jr_007_5dca

    dec c
    dec de
    ld h, h
    ld c, $07
    ld h, h
    ld de, $6505
    jr jr_007_5d74

    ld h, l
    inc e
    inc b
    ld h, h
    rra

jr_007_5d74:
    jr jr_007_5ddb

    jr nz, jr_007_5d7b

    ld h, [hl]
    inc h
    dec de

jr_007_5d7b:
    ld h, h
    daa
    ld [$2765], sp
    inc d
    ld h, [hl]
    add hl, hl
    inc c
    ld h, l
    ld a, [hl+]
    inc de
    ld h, l
    dec l
    rlca
    ld h, h
    jr nc, @+$0e

    ld h, h
    inc [hl]
    dec b
    ld h, [hl]
    ld [hl], $09
    ld h, l
    ld [hl], $10
    rst $38
    db $10
    ld c, $08
    nop
    inc h
    ld a, c
    ld de, $0002
    ld bc, $ac40
    nop
    add hl, bc
    ld b, b
    and h
    dec c
    dec c
    db $f4
    rlca
    inc bc
    ld hl, sp+$07
    dec b
    db $f4
    rlca
    rlca
    ld hl, sp+$07
    add hl, bc
    db $f4
    ld [$f802], sp
    ld [$f404], sp
    ld [$f806], sp
    ld [$f408], sp
    ld [$f80a], sp
    add hl, bc
    inc bc
    db $f4
    add hl, bc
    dec b

jr_007_5dca:
    ld hl, sp+$09
    rlca
    db $f4
    add hl, bc
    add hl, bc
    ld bc, $0667
    dec bc
    rst $38
    inc l
    ld c, $08
    nop
    ret nz

    ld a, h

jr_007_5ddb:
    ld de, $ff02
    add hl, bc
    nop
    and h
    dec b
    inc bc
    ld hl, $0800
    nop
    nop
    daa
    inc b
    nop
    ld h, $05
    nop
    jr z, jr_007_5df5

    nop
    daa
    ld b, $00
    dec e

jr_007_5df5:
    inc b
    nop
    inc e
    dec b
    nop
    ld e, $05
    nop
    dec e
    ld b, $07
    ld l, b
    inc c
    dec b
    ld l, b
    rrca
    inc b
    ld l, b
    ld [de], a
    add hl, bc
    ld h, a
    ld [de], a
    dec bc
    ld h, h
    ld d, $08
    ld l, b
    dec e
    rlca
    ld h, h
    jr nz, jr_007_5e1d

    rst $38
    db $fd
    ld [$b400], sp
    nop
    ld e, d
    nop

jr_007_5e1d:
    cp $fc
    nop
    ei
    inc b
    pop bc
    pop bc
    db $fc
    rst $38
    ld h, b
    nop
    nop
    inc bc
    ld bc, $0504
    ld [bc], a
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $fffc
    jr nc, jr_007_5e39

jr_007_5e39:
    nop
    dec b
    ld [bc], a
    rst $38
    dec b
    ld [bc], a
    cp $05
    ld [bc], a
    db $fd
    inc bc
    ld bc, $7ffc
    nop
    nop
    jr nz, jr_007_5e4b

jr_007_5e4b:
    nop
    db $fc
    rst $38
    ld h, b
    nop
    nop
    inc bc
    rst $38
    inc b
    dec b
    cp $03
    dec b
    cp $02
    dec b
    cp $01
    db $fc
    rst $38
    jr nc, jr_007_5e61

jr_007_5e61:
    nop
    dec b
    cp $ff
    dec b
    cp $fe
    dec b
    cp $fd
    inc bc
    rst $38
    db $fc
    ld [$0000], sp
    cp $b3
    ei
    ld b, $c1
    pop bc
    ld sp, hl
    call c, $f95e
    call c, $f95e
    call c, $f95e
    ldh [$5e], a
    jr nc, jr_007_5e85

jr_007_5e85:
    nop
    ld sp, hl
    call c, $f95e
    call c, $f95e
    call c, $f95e
    inc l
    ld e, a
    jr nc, jr_007_5e94

jr_007_5e94:
    nop
    ld sp, hl
    call c, $f95e
    call c, $f95e
    call c, $f95e
    ld l, h
    ld e, a
    jr nc, jr_007_5ea3

jr_007_5ea3:
    nop
    ld sp, hl
    call c, $f95e
    call c, $f95e
    call c, $f95e
    ldh [$5e], a
    jr nc, jr_007_5eb2

jr_007_5eb2:
    nop
    ld sp, hl
    call c, $f95e
    call c, $f95e
    call c, $f95e
    ld l, h
    ld e, a
    jr nc, jr_007_5ec1

jr_007_5ec1:
    nop
    ld sp, hl
    call c, $f95e
    call c, $f95e
    call c, $f95e
    inc l
    ld e, a
    jr nc, jr_007_5ed0

jr_007_5ed0:
    nop
    ld sp, hl
    call c, $f95e
    call c, $f95e
    call c, $fe5e
    sbc l
    stop
    nop
    ld hl, sp-$06
    and e
    dec b
    ld bc, $fc00
    ld a, [$0594]
    ld bc, $fc00
    ld a, [$05ad]
    inc bc
    nop
    ld a, [$0003]
    ei
    inc bc
    nop
    db $fc
    inc bc
    nop
    db $fd
    inc bc
    nop
    cp $03
    nop
    rst $38
    ld b, $00
    nop
    inc bc
    nop
    ld bc, $0003
    ld [bc], a
    inc bc

Jump_007_5f0b:
    nop
    inc bc
    inc bc
    nop
    inc b
    inc bc
    nop
    dec b
    inc bc
    nop
    ld b, $01
    nop
    inc b
    ld a, [$0594]
    ld bc, $0400
    ld a, [$05a3]
    inc bc
    nop
    nop
    ld a, [$7ee2]
    stop
    nop
    ld hl, sp-$06
    and e
    dec b
    ld bc, $fc00
    ld a, [$0594]
    ld bc, $fc00
    ld a, [$05ad]
    ld [bc], a
    cp $fc
    inc bc
    rst $38
    db $fd
    inc bc
    rst $38
    cp $03
    rst $38
    rst $38
    ld b, $ff
    nop
    inc bc
    rst $38
    ld bc, $ff03
    ld [bc], a
    inc bc
    rst $38
    inc bc
    ld [bc], a
    cp $04
    ld bc, $0400
    ld a, [$0594]
    ld bc, $0400
    ld a, [$05a3]
    inc bc
    nop
    nop
    ld a, [$7ee2]
    stop
    nop
    ld hl, sp-$06
    and e
    dec b
    ld bc, $fc00
    ld a, [$0594]
    ld bc, $fc00
    ld a, [$05ad]
    ld [bc], a
    ld [bc], a
    db $fc
    inc bc
    ld bc, $03fd
    ld bc, $03fe
    ld bc, $06ff
    ld bc, $0300
    ld bc, $0301
    ld bc, $0302
    ld bc, $0203
    ld [bc], a
    inc b
    ld bc, $0400
    ld a, [$0594]
    ld bc, $0400
    ld a, [$05a3]
    inc bc
    nop
    nop
    ld a, [$7ee2]
    stop
    nop
    ld hl, sp-$03
    nop
    nop
    jr nz, jr_007_5fb1

jr_007_5fb1:
    nop
    nop
    nop
    ei
    inc b
    pop bc
    pop bc
    ld a, [$05b4]
    inc b
    nop
    ld bc, $0004
    ld [bc], a
    inc b
    nop
    inc bc
    inc h
    nop
    inc b
    ld sp, hl
    ld a, d
    ld h, b
    ld sp, hl
    sub [hl]
    ld h, b
    ld sp, hl
    xor h
    ld h, b
    ld sp, hl
    inc e
    ld h, b
    ld [$0000], sp
    ld sp, hl
    ld l, $60
    jr jr_007_5fdb

jr_007_5fdb:
    nop
    ld a, [$05cc]
    jr nz, jr_007_5fe1

jr_007_5fe1:
    nop
    ld sp, hl
    ld a, [hl-]
    ld h, b
    ld sp, hl
    db $ed
    ld e, a
    ld sp, hl
    inc e
    ld h, b
    cp $e8
    ld [$0000], sp
    ld a, [$05c4]
    ld [$0000], sp
    ld a, [$05bc]
    ld [$0000], sp
    ld a, [$05b4]
    ld [$0000], sp
    ld [$00ff], sp
    ld [$00fe], sp
    ld [$00fd], sp
    ld b, $fc
    nop
    ei
    rst $38
    ld [de], a
    pop bc
    jr nc, jr_007_6014

jr_007_6014:
    nop
    inc h
    ld [bc], a
    nop
    jr nz, jr_007_601a

jr_007_601a:
    nop
    ld hl, sp-$06
    cp h
    dec b
    ld [$0000], sp
    ld a, [$05c4]
    ld [$0000], sp
    ld a, [$05cc]
    db $fc
    rst $38
    ld hl, sp-$06
    call nz, $0805
    nop
    nop
    ld a, [$05cc]
    db $fc
    rst $38
    ld hl, sp+$02
    nop
    ld hl, sp+$02
    nop
    ld sp, hl
    ld [bc], a
    nop
    ld a, [$0002]
    ei
    ld [bc], a
    nop
    db $fc
    ld [bc], a
    nop
    db $fd
    ld [bc], a
    nop
    cp $02
    nop
    rst $38
    ld a, [$05cc]
    ld [$0000], sp
    ld a, [$05cc]
    ld [bc], a
    nop
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    nop
    inc b
    ld [bc], a
    nop
    dec b
    ld [bc], a
    nop
    ld b, $02
    nop
    rlca
    ld [bc], a
    nop
    ld [$ccfa], sp
    dec b
    jr nz, jr_007_6078

jr_007_6078:
    nop
    ld hl, sp+$04
    nop
    db $fc
    inc b
    nop
    db $fd
    inc b
    nop
    cp $04
    nop
    rst $38
    inc b
    nop
    nop
    inc b
    nop
    ld bc, $0004
    ld [bc], a
    inc b
    nop
    inc bc
    inc b
    nop
    inc b
    ld hl, sp+$04
    nop
    db $fd
    inc b
    nop
    cp $04
    nop
    rst $38
    inc b
    nop
    nop
    inc b
    nop
    ld bc, $0004
    ld [bc], a
    inc b
    nop
    inc bc
    ld hl, sp+$04
    nop
    cp $04
    nop
    rst $38
    inc b
    nop
    nop
    inc b
    nop
    ld bc, $0004
    ld [bc], a
    ld hl, sp-$03
    nop
    nop
    stop
    nop
    nop
    nop
    ei
    inc b
    pop bc
    pop bc
    ld b, b
    nop
    ld bc, $dcf9
    ld h, b
    ld sp, hl
    ldh [$60], a
    ld sp, hl
    db $e4
    ld h, b
    ld sp, hl
    ldh [$60], a
    ld sp, hl
    call c, $fe60
    pop af
    jr z, jr_007_60de

jr_007_60de:
    rst $38
    ld hl, sp+$28
    nop
    ld bc, $fcf8
    rst $38
    ld b, b
    nop
    nop
    db $fc
    nop
    ei
    rst $38
    ld [de], a
    pop bc
    jr nz, jr_007_60f1

jr_007_60f1:
    nop
    ei
    nop
    ld [de], a
    pop bc
    ld hl, sp-$03
    jr nz, jr_007_60fa

jr_007_60fa:
    nop
    nop
    nop
    nop
    nop
    ld a, [$0544]
    ei
    inc b
    pop bc
    pop bc
    jr nz, jr_007_6108

jr_007_6108:
    nop
    ld d, $00
    ld bc, $4af9
    ld h, c
    ld d, $00
    ld bc, $0018
    nop
    ld sp, hl
    ld c, d
    ld h, c
    db $10
    rst $38
    ld bc, $ff10
    rst $38
    db $10
    rst $38
    ld bc, $ff10
    rst $38
    ld sp, hl
    ld c, d
    ld h, c
    ld d, $00
    rst $38
    ld sp, hl
    ld c, d
    ld h, c
    ld d, $00
    rst $38
    jr jr_007_6132

jr_007_6132:
    nop
    ld sp, hl
    ld c, d
    ld h, c
    db $10
    ld bc, $10ff
    ld bc, $1001
    ld bc, $10ff
    ld bc, $f901
    ld c, d
    ld h, c
    jr jr_007_6147

jr_007_6147:
    nop
    cp $c1
    stop
    nop
    ld a, [$0549]
    db $fc
    rst $38
    inc c
    nop
    nop
    ld a, [$0544]
    jr nz, jr_007_615a

jr_007_615a:
    nop
    ld hl, sp-$33
    ld a, $2e
    jp c, Jump_000_2a3a

    ld b, $1c
    ld c, $20
    call Call_000_2e47
    ld hl, $0007
    add hl, de
    dec [hl]
    dec [hl]
    ld a, [hl]
    cp $10
    ret nc

    ld bc, $617b
    ld a, $20
    jp Jump_000_2ea8


    call Call_000_2e3e
    ret c

    ld b, $20
    ld c, $24
    call Call_000_2e47
    ld hl, $0007
    add hl, de
    inc [hl]
    inc [hl]
    ld a, [hl]
    cp $90
    ret c

    ld bc, $615c
    ld a, $1c
    jp Jump_000_2ea8


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
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    call Call_007_6221
    sub $20
    ld [$c167], a
    ret


Call_007_6221:
    ld hl, $0012
    add hl, de
    push hl
    ld a, [hl]
    inc a
    and $7f
    ld bc, $6198
    push bc
    cp $40
    jr z, jr_007_628d

    cp $7e
    jr c, jr_007_6294

    jr jr_007_628d

    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop

Call_007_6278:
    ld hl, $0012
    add hl, de
    push hl
    ld a, [hl]
    inc a
    and $3f
    ld bc, $6238
    push bc
    cp $20
    jr z, jr_007_628d

    cp $3e
    jr c, jr_007_6294

jr_007_628d:
    push af
    ld c, $1c
    call Call_000_3da4
    pop af

jr_007_6294:
    ld [hl], a
    pop hl
    ld c, a
    ld b, $00
    add hl, bc
    ld c, [hl]
    pop hl
    inc hl
    ld a, [hl]
    add c
    ld [hl], a
    add $28
    ld [$c165], a
    ret


    call Call_007_6278
    jp Jump_000_3787


Call_007_62ac:
Jump_007_62ac:
    push bc
    ld bc, $4120
    call Call_007_6346
    pop bc

Call_007_62b4:
    ld hl, $0012
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ld bc, $6303
    push bc
    ld c, $f0
    jr jr_007_62cf

    ld bc, $6328
    push bc
    ld c, $10

jr_007_62cf:
    ld hl, $0007
    add hl, de
    ld a, [hl]
    add c
    ld [hl], a
    pop bc
    call Call_007_6346
    ld hl, $0005
    add hl, de
    ld a, [hl]
    sub $08
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    call Call_000_23cd
    ld a, c
    cp $02
    ret nz

    ld c, $10
    jp Jump_000_3da4


    call Call_007_7f48
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld bc, $c596
    add hl, bc
    push hl
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cf2
    pop hl
    jr nz, jr_007_6325

    call Call_000_0cf2
    ret z

jr_007_6325:
    jp Jump_000_361a


    call Call_007_7f66
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld bc, $c598
    add hl, bc
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cf2
    ret z

    jp Jump_000_361a


Call_007_6346:
Jump_007_6346:
    ld hl, $000b
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    ld bc, $639d
    call Call_007_62b4
    ld bc, $635a
    jp Jump_007_6346


    call $4120
    ld a, [$c111]
    cp $03
    jr nz, jr_007_6371

    ld hl, $0003
    add hl, de
    ld a, [hl]
    inc a
    cp $82
    ret nc

    ld [hl], a
    jp Jump_000_2eb4


jr_007_6371:
    cp $02
    ret z

    ld b, $7f
    ld c, $81
    jp Jump_000_2e47


    ld hl, $0005
    add hl, de
    ld a, [hl+]
    add $0f
    ld c, a
    ld b, [hl]
    inc hl
    ld a, c
    ld [$c1dc], a
    ld a, b
    ld [$c1dd], a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, c
    ld [$c1da], a
    ld a, b
    ld [$c1db], a
    ld a, $48
    jp Jump_000_06ed


    db $fc
    add b
    jr jr_007_63a1

jr_007_63a1:
    nop
    db $fc
    inc bc
    ld a, [$637b]
    ld [$0000], sp
    db $fc
    rst $38
    ld e, h
    nop
    nop
    db $fc
    inc bc
    stop
    nop
    db $fc
    add b
    jr z, jr_007_63b8

jr_007_63b8:
    nop
    db $fc
    ld [bc], a
    inc b
    nop
    db $fc
    inc bc
    nop
    db $fd
    ld [bc], a
    nop
    cp $01
    nop
    rst $38
    rlca
    nop
    nop
    db $fc
    inc bc
    ld a, [$637b]
    add hl, bc
    nop
    nop
    db $fc
    rst $38
    db $fc
    ld [bc], a
    or $81
    ld bc, $0100
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    nop
    inc bc
    inc b
    nop
    inc b
    db $fc
    ld bc, $0040
    nop
    db $fc
    ld [bc], a
    inc b
    nop
    db $fc
    inc bc
    nop
    db $fd
    ld [bc], a
    nop
    cp $01
    nop
    rst $38
    db $fc
    inc bc
    stop
    nop
    db $fc
    ld [bc], a
    or $81
    ld bc, $0100
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    nop
    inc bc
    inc b
    nop
    inc b
    db $fc
    ld bc, $0006
    nop
    cp $8c
    ld b, $01
    ld c, $03
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $6424
    jp Jump_007_6346


    ld b, $01
    ld c, $03
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $6413
    jp Jump_007_6346


    ld b, $85
    ld c, $89
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $6448
    ld a, $89
    jp Jump_000_2ea8


    ld b, $89
    ld c, $8d
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $6435
    ld a, $85
    jp Jump_000_2ea8


    ld b, $07
    ld c, $09
    call Call_000_2e47
    jp Jump_007_7f48


    ld b, $01
    ld c, $03
    call Call_000_2e47
    call Call_007_7f48
    call Call_007_6b14
    ret z

    ld bc, $6479
    jp Jump_007_6346


    ld b, $01
    ld c, $03
    call Call_000_2e47
    call Call_007_6b19
    ret z

    ld bc, $6465
    jp Jump_007_6346


    ld b, $99
    ld c, $9c
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $649d
    ld a, $9c
    jp Jump_000_2ea8


    ld b, $9c
    ld c, $9f
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $648a
    ld a, $99
    jp Jump_000_2ea8


    ld b, $8d
    ld c, $90
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $64c3
    ld a, $90
    jp Jump_000_2ea8


    ld b, $90
    ld c, $93
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $64b0
    ld a, $8d
    jp Jump_000_2ea8


    ld b, $93
    ld c, $96
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $64e9
    ld a, $96
    jp Jump_000_2ea8


    ld b, $96
    ld c, $99
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $64d6
    ld a, $93
    jp Jump_000_2ea8


    ld b, $0a
    ld c, $0d
    call Call_000_2e47
    call Call_007_6af6
    and $20
    ret z

    ld bc, $6511
    ld a, $16
    jp Jump_000_2ea8


    ld b, $16
    ld c, $19
    call Call_000_2e47
    call Call_007_6afb
    and $20
    ret z

    ld bc, $64fc
    ld a, $0a
    jp Jump_000_2ea8


    ld bc, $653c
    call Call_007_62b4
    ld bc, $6532
    jp Jump_007_6346


    call $4120
    ld b, $3d
    ld c, $3f
    jp Jump_000_2e47


    jr nz, @-$02

    nop
    inc b
    db $fd
    nop
    ld b, $fe
    nop
    ld [$00ff], sp
    inc b
    nop
    nop
    ld [$0001], sp
    ld b, $02
    nop
    inc b
    inc bc
    nop
    ld e, $04
    nop
    ld a, [$2a3a]
    jr nz, jr_007_6560

    nop
    inc b
    inc bc
    nop

jr_007_6560:
    ld b, $02
    nop
    ld [$0001], sp
    inc b
    nop
    nop
    ld [$00ff], sp
    ld b, $fe
    nop
    inc b
    db $fd
    nop
    ld e, $fc
    nop
    db $fc
    rst $38
    ld bc, $657d
    jp Jump_007_62ac


    jr nz, jr_007_657f

jr_007_657f:
    nop
    ld bc, $0100
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0300
    ld bc, $0400
    ld bc, $0600
    ld bc, $0800
    ld [bc], a
    nop
    ld a, [bc]
    ld bc, $0c00
    ld bc, $0e00
    ld bc, $1000
    ld a, [$65b0]
    cp $fa
    ld bc, $fe00
    ld a, [$65c3]
    cp $fa
    ld bc, $0000
    cp $cf
    call Call_007_65b9
    ret nc

    ld c, $1b
    jp Jump_000_3da4


Call_007_65b9:
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    jr jr_007_65d6

    ld hl, $0000
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld b, h
    ld c, l

jr_007_65d6:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    and $07
    ret nz

    push bc
    call Call_000_2e65
    pop bc
    add hl, bc
    call Call_000_0cee
    ret z

    ld a, [$c108]
    ld c, a
    ld a, [$c109]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ld [$c108], a
    ld a, b
    ld [$c109], a
    scf
    ret


    ld hl, $0011
    add hl, de
    inc [hl]
    ld a, [hl]
    cp $32
    ret c

    call Call_000_3fb9
    ret c

    ld hl, $c115
    ld c, $00

jr_007_660e:
    ld a, [hl+]
    inc hl
    cp $ff
    jr z, jr_007_661b

    cp $01
    jr nz, jr_007_660e

    inc c
    jr jr_007_660e

jr_007_661b:
    ld a, c
    cp $04
    ret c

    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, c
    ld [$c1dc], a
    ld a, b
    ld [$c1dd], a
    push bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, c
    ld [$c1da], a
    ld a, b
    ld [$c1db], a
    pop bc
    ld a, [$c15d]
    ld l, a
    ld a, [$c15e]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ret nc

    call Call_000_2a3a
    ld c, $0c
    call Call_000_3da4
    ld bc, $6699
    call Call_007_6668
    ld bc, $66ba
    call Call_007_6668
    ld bc, $66db
    call Call_007_6668
    ld bc, $66fc

Call_007_6668:
    push bc
    ld a, $4e
    call Call_000_06ed
    pop bc
    call Call_007_62b4
    ld bc, $6678
    jp Jump_007_6346


    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, [$c15d]
    ld l, a
    ld a, [$c15e]
    ld h, a
    ld bc, $00b0
    add hl, bc
    pop bc
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jp c, Jump_000_2a3a

    jp $4120


    inc b
    rst $38
    db $fc
    inc b
    rst $38
    db $fd
    inc b
    rst $38
    cp $04
    rst $38
    cp $04
    rst $38
    rst $38
    inc b
    rst $38
    nop
    inc b
    rst $38
    ld bc, $ff04
    ld [bc], a
    inc b
    rst $38
    inc bc
    inc h
    rst $38
    inc b
    ld a, [$2a3a]
    inc b
    cp $fc
    inc b
    cp $fd
    inc b
    cp $fe
    inc b
    cp $fe
    inc b
    cp $ff
    inc b
    cp $00
    inc b
    cp $01
    inc b
    cp $02
    inc b
    cp $03
    inc h
    cp $04
    ld a, [$2a3a]
    inc b
    ld bc, $04fc
    ld bc, $04fd
    ld bc, $04fe
    ld bc, $04fe
    ld bc, $04ff
    ld bc, $0400
    ld bc, $0401
    ld bc, $0402
    ld bc, $2403
    ld bc, $fa04
    ld a, [hl-]
    ld a, [hl+]
    inc b
    ld [bc], a
    db $fc
    inc b
    ld [bc], a
    db $fd
    inc b
    ld [bc], a
    cp $04
    ld [bc], a
    cp $04
    ld [bc], a
    rst $38
    inc b
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld bc, $0204
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc h
    ld [bc], a
    inc b
    ld a, [$2a3a]
    ld bc, $6723
    jp Jump_007_62ac


    add hl, de
    nop
    inc b
    inc b
    nop
    inc bc
    inc b
    nop
    ld [bc], a
    inc b
    nop
    ld bc, $0004
    nop
    inc b
    nop
    rst $38
    inc b
    nop
    cp $04
    nop
    db $fd
    inc b
    nop
    cp $04
    nop
    rst $38
    inc b
    nop
    nop
    inc b
    nop
    ld bc, $0004
    ld [bc], a
    inc bc
    nop
    ld bc, $0004
    nop
    ld [bc], a
    nop
    cp $32
    nop
    cp $fe
    call Call_000_1121
    nop
    add hl, de
    ld a, [hl]
    dec a
    ld [hl], a
    cp $14
    jr z, jr_007_676a

    and $80
    ret z

    ld [hl], $32
    jr jr_007_6794

jr_007_676a:
    call Call_007_68a1
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_007_6783

    ld bc, $679e
    jp Jump_007_6346


jr_007_6783:
    push de
    ld a, $50
    call Call_000_06ed
    ld bc, $6999
    call Call_007_62ac
    pop de
    ld a, $a0
    jr jr_007_6796

jr_007_6794:
    ld a, $9f

jr_007_6796:
    ld hl, $0003
    add hl, de
    ld [hl], a
    jp Jump_000_2eb4


    ld hl, $0011
    add hl, de
    ld a, [hl]
    dec a
    ld [hl], a
    cp $14
    jr z, jr_007_67b1

    and $80
    ret z

    ld a, $32
    ld [hl], a
    jr jr_007_67e7

jr_007_67b1:
    call Call_007_68a1
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr nc, jr_007_67ca

    ld bc, $6758
    jp Jump_007_6346


jr_007_67ca:
    ld hl, $0010
    add hl, bc
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    push de
    ld a, $50
    call Call_000_06ed
    ld bc, $69bf
    call Call_007_62ac
    pop de
    ld a, $a2
    jr jr_007_67e9

jr_007_67e7:
    ld a, $a1

jr_007_67e9:
    ld hl, $0003
    add hl, de
    ld [hl], a
    jp Jump_000_2eb4


    ld hl, $c1f7
    ld a, [hl]
    cpl
    ld [hl], a
    ld bc, $6815
    and a
    jr z, jr_007_6800

    ld bc, $6838

jr_007_6800:
    jp Jump_007_62ac


    ld hl, $c1f7
    ld a, [hl]
    cpl
    ld [hl], a
    ld bc, $685b
    and a
    jr z, jr_007_6812

    ld bc, $687e

jr_007_6812:
    jp Jump_007_62ac


    inc b
    db $fd
    db $fc
    inc b
    db $fd
    db $fd
    inc b
    db $fd
    cp $04
    db $fd
    rst $38
    inc b
    db $fd
    nop
    inc b
    db $fd
    ld bc, $fd04
    ld [bc], a
    inc b
    db $fd
    inc bc
    inc b
    db $fd
    inc b
    ld a, [$65b9]
    cp $fa
    ld a, [$7fb2]
    inc b
    cp $fc
    inc b
    cp $fd
    inc b
    cp $fe
    inc b
    cp $ff
    inc b
    cp $00
    inc b
    cp $01
    inc b
    cp $02
    inc b
    cp $03
    inc b
    cp $04
    ld a, [$65b9]
    cp $fa
    ld a, [$7fb2]
    inc b
    inc bc
    db $fc
    inc b
    inc bc
    db $fd
    inc b
    inc bc
    cp $04
    inc bc
    rst $38
    inc b
    inc bc
    nop
    inc b
    inc bc
    ld bc, $0304
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    ld a, [$65b9]
    cp $fa
    ld a, [$7fb2]
    inc b
    ld [bc], a
    db $fc
    inc b
    ld [bc], a
    db $fd
    inc b
    ld [bc], a
    cp $04
    ld [bc], a
    rst $38
    inc b
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld bc, $0204
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    inc b
    ld a, [$65b9]
    cp $fa
    ld a, [$7fb2]

Call_007_68a1:
    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, c
    add $08
    ld c, a
    ld a, c
    ld [$c1dc], a
    ld a, b
    ld [$c1dd], a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, c
    ld [$c1da], a
    ld a, b
    ld [$c1db], a
    ret


    ld b, $a4
    ld c, $a6
    call Call_000_2e47
    call Call_007_6b14
    ret z

    ld bc, $68d4
    ld a, $a6
    jp Jump_000_2ea8


    ld b, $a6
    ld c, $a8
    call Call_000_2e47
    call Call_007_6b19
    ret z

    ld bc, $68c1
    ld a, $a4
    jp Jump_000_2ea8


    ld bc, $6927
    jr jr_007_68ef

    ld bc, $6905

jr_007_68ef:
    call Call_007_6346
    ld hl, $0005
    add hl, de
    push hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    call Call_007_6949
    call Call_007_7f36
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6927
    ld a, $11
    jp Jump_000_2ea8


    call Call_007_6949
    call Call_007_7f3f
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6905
    ld a, $10
    jp Jump_000_2ea8


Call_007_6949:
    ld hl, $0013
    add hl, de
    ld a, [hl]
    sub $01
    ld [hl], a
    ret nc

    ld [hl], $32
    call Call_007_68a1
    ld a, $55
    jp Jump_000_06ed


    ld b, $12
    ld c, $14
    call Call_000_2e47
    call Call_007_6d0f
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld hl, $0012
    add hl, de
    ld [hl], $00
    ld bc, $6986
    jp Jump_007_6346


    ld b, $12
    ld c, $14
    call Call_000_2e47
    ld hl, $0012
    add hl, de
    inc [hl]
    ld a, [hl]
    cp $0f
    ret c

    jp Jump_000_2a3a


    inc b
    cp $fc
    inc b
    cp $fd
    inc b
    cp $fe
    inc b
    cp $ff
    inc b
    cp $00
    inc b
    cp $01
    inc b
    cp $02
    inc b
    cp $03
    inc b
    cp $04
    inc b
    rst $38
    inc b
    ld a, [$65b9]
    cp $fa
    ld a, [$2a3a]
    inc b
    ld [bc], a
    db $fc
    inc b
    ld [bc], a
    db $fd
    inc b
    ld [bc], a
    cp $04
    ld [bc], a
    rst $38
    inc b
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld bc, $0204
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    inc b
    inc b
    ld bc, $fa04
    cp c
    ld h, l
    cp $fa
    ld a, [$2a3a]
    ld bc, $69eb
    jp Jump_007_62ac


    jr nc, jr_007_69ed

jr_007_69ed:
    nop
    ld [$0400], sp
    ld [$03ff], sp
    ld [$02fe], sp
    ld [$01fe], sp
    inc bc
    cp $ff
    ld bc, $fefe
    cp $fa
    call Call_007_6cf4
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6a1f
    jp Jump_007_6346


    call Call_007_6d0f
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6a02
    jp Jump_007_6346


    ld b, $bf
    ld c, $c3
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $6a4f
    ld a, $c3
    jp Jump_000_2ea8


    ld b, $c3
    ld c, $c7
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $6a3c
    ld a, $bf
    jp Jump_000_2ea8


    ld b, $b9
    ld c, $bb
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $6a75
    ld a, $bc
    jp Jump_000_2ea8


    ld b, $bc
    ld c, $be
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $6a62
    ld a, $b9
    jp Jump_000_2ea8


    ld b, $c7
    ld c, $c9
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $6a9b
    ld a, $ca
    jp Jump_000_2ea8


    ld b, $ca
    ld c, $cc
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $6a88
    ld a, $c7
    jp Jump_000_2ea8


    ld b, $cd
    ld c, $cf
    call Call_000_2e47
    call Call_007_6cf4
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6ad2
    jp Jump_007_6346


    ld b, $cd
    ld c, $cf
    call Call_000_2e47
    call Call_007_6d0f
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6aae
    jp Jump_007_6346


Call_007_6af6:
    call Call_007_7f48
    jr jr_007_6afe

Call_007_6afb:
    call Call_007_7f66

jr_007_6afe:
    ld a, c
    and $0f
    jr z, jr_007_6b05

    xor a
    ret


jr_007_6b05:
    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    jp Jump_000_0cee


Call_007_6b14:
    call Call_007_7f48
    jr jr_007_6b1c

Call_007_6b19:
    call Call_007_7f66

jr_007_6b1c:
    ld a, c
    and $0f
    jr z, jr_007_6b23

    xor a
    ret


jr_007_6b23:
    call Call_000_2e65
    jp Jump_000_0cee


    ld bc, $6b83
    call Call_007_62b4
    ld bc, $6b35
    jp Jump_007_6346


    ld b, $6c
    ld c, $6e
    call Call_000_2e47
    call $4120
    ld hl, $0007
    add hl, de
    ld a, [hl]
    and $0f
    ret nz

    call Call_000_2e65
    call Call_000_0cee
    ret z

    ld bc, $6ba0
    call Call_007_62b4
    ld bc, $6b5c
    ld a, $6e
    jp Jump_000_2ea8


    ld b, $6e
    ld c, $70
    call Call_000_2e47
    call $4120
    ld hl, $0007
    add hl, de
    ld a, [hl]
    and $0f
    ret nz

    call Call_000_2e65
    call Call_000_0cee
    ret z

    ld bc, $6b83
    call Call_007_62b4
    ld bc, $6b35
    ld a, $6c
    jp Jump_000_2ea8


    ld bc, $feff
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    rst $38
    ld bc, $ff02
    ld [bc], a
    ld [bc], a
    rst $38
    ld bc, $ff02
    nop
    ld [bc], a
    rst $38
    rst $38
    ld bc, $feff
    cp $e5
    ld bc, $fe01
    ld [bc], a
    ld bc, $02ff
    ld bc, $0200
    ld bc, $0201
    ld bc, $0202
    ld bc, $0201
    ld bc, $0200
    ld bc, $01ff
    ld bc, $fefe
    push hl
    ld hl, $0011
    add hl, de
    ld [hl], $00
    inc hl
    ld [hl], $ff
    call Call_007_7f53
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    call Call_000_0cee
    ret z

    jp Jump_007_6bf1


    ld hl, $0011
    add hl, de
    ld [hl], $00
    inc hl
    ld [hl], $01
    call Call_007_7f5d
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    call Call_000_0cee
    ret z

    jp Jump_007_6bf1


Jump_007_6bf1:
    ld hl, $0000
    add hl, de
    cp $21
    jr nz, jr_007_6bfe

    ld bc, $6bbd
    jr jr_007_6c05

jr_007_6bfe:
    cp $22
    jr nz, jr_007_6c0b

    ld bc, $6bd7

jr_007_6c05:
    ld a, [hl]
    or $08
    ld [hl+], a
    jr jr_007_6c25

jr_007_6c0b:
    ld c, a
    ld a, [hl]
    and $f7
    ld [hl+], a
    ld a, c
    cp $28
    jr nz, jr_007_6c1e

    ld bc, $6c28
    ld a, [hl]
    or $08
    ld [hl], a
    jr jr_007_6c25

jr_007_6c1e:
    ld bc, $6c42
    ld a, [hl]
    and $f7
    ld [hl], a

jr_007_6c25:
    jp Jump_007_6346


    ld hl, $0011
    add hl, de
    ld [hl], $01
    inc hl
    ld [hl], $00
    call Call_007_7f3f
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    call Call_000_0cee
    ret z

    jp Jump_007_6bf1


    ld hl, $0011
    add hl, de
    ld [hl], $ff
    inc hl
    ld [hl], $00
    call Call_007_7f36
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    call Call_000_0cee
    ret z

    jp Jump_007_6bf1


    ld b, $4f
    ld c, $53
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $6c6f
    ld a, $53
    jp Jump_000_2ea8


    ld b, $53
    ld c, $57
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $6c5c
    ld a, $4f
    jp Jump_000_2ea8


    ret


    call Call_007_6cf4
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6ca0
    jp Jump_007_6346


    call Call_007_6d0f
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6c83
    jp Jump_007_6346


    ld b, $6c
    ld c, $6e
    call Call_000_2e47
    call Call_007_6cf4
    call Call_000_2e65
    call Call_000_0cee
    ret z

    ld bc, $6cd9
    call Call_007_6346

jr_007_6cd4:
    ld c, $08
    jp Jump_000_3da4


    push de
    ld b, $6c
    ld c, $6e
    call Call_000_2e47
    call Call_007_6d0f
    pop de
    call Call_000_2e65
    call Call_000_0cee
    ret z

    ld bc, $6cbd
    call Call_007_6346
    jr jr_007_6cd4

Call_007_6cf4:
    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec bc
    dec bc
    jr jr_007_6d18

    call Call_007_6d0f
    ld hl, $00b0
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jp c, Jump_000_2a3a

    ret


Call_007_6d0f:
    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    inc bc

jr_007_6d18:
    ld [hl], b
    dec hl
    ld [hl], c
    ret


    ld b, $05
    ld c, $07
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $6d2f
    ld a, $a8
    jp Jump_000_2ea8


    ld b, $a8
    ld c, $aa
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $6d1c
    ld a, $05
    jp Jump_000_2ea8


    ld b, $57
    ld c, $5a
    call Call_000_2e47
    call Call_007_6af6
    ret z

    ld bc, $6d55
    ld a, $5a
    jp Jump_000_2ea8


    ld b, $5a
    ld c, $5d
    call Call_000_2e47
    call Call_007_6afb
    ret z

    ld bc, $6d42
    ld a, $57
    jp Jump_000_2ea8


    ld b, $70
    ld c, $72
    call Call_000_2e47
    call Call_007_6b14
    ret z

    ld bc, $6d7b
    ld a, $72
    jp Jump_000_2ea8


    ld b, $72
    ld c, $74
    call Call_000_2e47
    call Call_007_6b19
    ret z

    ld bc, $6d68
    ld a, $70
    jp Jump_000_2ea8


    ld b, $79
    ld c, $7c
    call Call_000_2e47
    call Call_007_6b14
    ret z

    ld bc, $6da1
    ld a, $7c
    jp Jump_000_2ea8


    ld b, $7c
    ld c, $7f
    call Call_000_2e47
    call Call_007_6b19
    ret z

    ld bc, $6d8e
    ld a, $79
    jp Jump_000_2ea8


    ld b, $75
    ld c, $79
    call Call_000_2e47
    call Call_007_7f48
    ld hl, $0012
    add hl, de
    ld a, [hl]
    sub $01
    ld [hl+], a
    ret nc

    ld a, [hl]
    sub $01
    ld [hl], a
    jr nc, jr_007_6dd0

    jp Jump_000_2a3a


jr_007_6dd0:
    dec hl
    ld [hl], $20
    ld bc, $6dd9
    jp Jump_007_6346


    ld b, $75
    ld c, $79
    call Call_000_2e47
    call Call_007_7f66
    ld hl, $0012
    add hl, de
    ld a, [hl]
    sub $01
    ld [hl+], a
    ret nc

    ld a, [hl]
    sub $01
    ld [hl], a
    jr nc, jr_007_6df5

    jp Jump_000_2a3a


jr_007_6df5:
    dec hl
    ld [hl], $20
    ld bc, $6db4
    jp Jump_007_6346


    ld bc, $6e0e
    ld a, [$c17c]
    cp $13
    jr nz, jr_007_6e0b

    ld bc, $6e35

jr_007_6e0b:
    jp Jump_007_6346


    ld b, $32
    ld c, $35
    call Call_000_2e47
    call Call_007_7f48
    ld a, c
    and $1f
    jr z, jr_007_6e5c

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6e35
    ld a, $4a
    jp Jump_000_2ea8


    ld b, $4a
    ld c, $4d
    call Call_000_2e47
    call Call_007_7f66
    ld a, c
    and $1f
    jr z, jr_007_6e5c

    call Call_000_2e65
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $6e0e
    ld a, $32
    jp Jump_000_2ea8


jr_007_6e5c:
    ld a, c
    ld [$c1da], a
    ld a, b
    ld [$c1db], a
    dec hl
    ld b, [hl]
    dec hl
    ld c, [hl]
    ld a, c
    ld [$c1dc], a
    ld a, b
    ld [$c1dd], a
    push de
    ld a, $3f
    call Call_000_06ed
    ld b, d
    ld c, e
    pop de
    ret nc

    push de
    push bc
    ld hl, $000b
    add hl, de
    ld c, [hl]
    ld [hl], $bb
    inc hl
    ld b, [hl]
    ld [hl], $6e
    ld hl, $0012
    add hl, de
    ld [hl], $40
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    pop de
    ld hl, $6e0e
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, $4d
    jr z, jr_007_6ea9

    ld hl, $000b
    add hl, de
    ld [hl], $d9
    inc hl
    ld [hl], $6d
    inc a

jr_007_6ea9:
    ld hl, $0012
    add hl, de
    ld [hl], $20
    inc hl
    ld [hl], $01
    pop de
    ld hl, $0003
    add hl, de
    ld [hl], a
    jp Jump_000_2eb4


    ld hl, $0012
    add hl, de
    ld a, [hl]
    sub $01
    ld [hl+], a
    ret nc

    ld c, [hl]
    inc hl
    ld b, [hl]
    jp Jump_007_6346


    ld bc, $6f08
    jr jr_007_6ee8

    ld bc, $6f10
    call Call_007_6ee8
    jp Jump_007_6f10


    ld bc, $6f00
    call Call_007_6ee8
    jr jr_007_6f00

    ld bc, $6f16
    call Call_007_6ee8
    jr jr_007_6f16

Call_007_6ee8:
jr_007_6ee8:
    push de
    call Call_007_6346
    ld hl, $0005
    add hl, de
    push hl
    ld hl, $0012
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld bc, $0004
    call Call_000_0913
    pop de
    ret


jr_007_6f00:
    ld a, [$c164]
    push af
    ld a, $03
    jr jr_007_6f23

    ld a, [$c164]
    push af
    ld a, $01
    jr jr_007_6f23

Jump_007_6f10:
    ld a, [$c164]
    cpl
    jr jr_007_6f19

jr_007_6f16:
    ld a, [$c164]

jr_007_6f19:
    push af
    ld b, $41
    ld c, $45
    call Call_000_2e47
    ld a, $02

jr_007_6f23:
    ld [$c1ea], a
    pop af
    push af
    call Call_000_2bd0
    call Call_000_2c93
    ld hl, $0012
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $0005
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    pop af
    call Call_000_2bce
    call Call_000_2c93
    ld hl, $0014
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $0007
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    rst $38
    rst $38
    call nc, $8c70
    ld [hl], c
    ld b, $71
    ld c, d
    ld [hl], c
    call z, $ae70
    ld [hl], b
    ld [hl], h
    ld [hl], b
    ld d, b
    ld [hl], b

jr_007_6f6a:
    jr nz, jr_007_6fdc

    ret z

    ld l, a
    adc d
    ld l, a
    add b
    ld l, a
    db $76
    ld l, a
    add $70
    sbc c
    push bc
    and a
    push bc
    or a
    push bc
    rst $00
    push bc
    rst $38
    rst $38
    reti


    add $e7
    add $f7
    add $07
    rst $00
    rst $38
    rst $38
    ret c

    push bc
    jp c, $dbc5

    push bc
    call c, $ddc5
    push bc
    sbc $c5
    rst $18
    push bc
    ldh [$c5], a
    pop hl
    push bc
    ld [c], a
    push bc
    db $e3
    push bc
    push hl
    push bc
    jr jr_007_6f6a

    ld a, [de]
    add $1b
    add $1c
    add $1d
    add $1e
    add $1f
    add $20
    add $21
    add $22
    add $23
    add $25
    add $99
    push bc
    and h
    push bc
    reti


    push bc
    db $e4
    push bc
    add hl, de
    add $24
    add $ff
    rst $38
    db $e3
    call z, $cf93
    sub e
    ret nc

    sub e
    pop de
    xor b
    call z, $cda8
    xor b
    adc $ac
    rst $08
    xor h
    ret nc

    xor h
    pop de

jr_007_6fdc:
    jp $c3cd


    adc $c3
    rst $08
    daa
    call $cc29
    dec hl
    sra h
    sra l
    sra [hl]
    sra a
    swap b
    swap c
    swap d
    swap e
    swap h
    swap l
    swap [hl]
    swap a
    srl b
    srl c
    srl d
    srl e
    srl h
    srl l
    srl [hl]
    srl a
    bit 0, b
    bit 0, c
    bit 0, c
    call z, $cd41
    ld h, c
    call z, $cc62
    ld h, e
    call z, $ffff
    sbc b
    call z, $ccfd
    jr @-$36

    sub h

jr_007_7027:
    call $ce93
    sub d
    rst $08
    sub c
    ret nc

    or h
    ret z

    or e

jr_007_7031:
    ret


    or d
    jp z, $cbb1

    cp h
    ret z

    cp e
    ret


    cp d
    jp z, $cbb9

    add hl, bc
    ret


    ld [$07ca], sp
    rlc [hl]
    call z, $cc29
    ld a, [hl+]
    call z, $cc2b
    inc l
    call z, $ffff
    ld d, e
    rst $00
    ld d, $cf
    rla
    rst $08
    jr jr_007_7027

    add hl, de
    rst $08
    ld a, [de]
    rst $08
    ld e, $cf
    rra
    rst $08
    jr nz, jr_007_7031

    ld hl, $22cf
    rst $08
    ld [hl], a
    rst $08
    db $76
    ret nc

    ld [hl], l
    pop de
    ld a, e
    rst $08
    ld a, d
    ret nc

    ld a, c
    pop de
    rst $38
    rst $38
    cp h
    push bc
    ld de, $51c8
    ret z

    di
    sla [hl]
    call z, $c78b
    adc h
    rst $00
    adc l
    rst $00
    rst $30
    ret z

    ld hl, sp-$38
    ld sp, hl
    ret z

    ld a, [$fbc8]
    ret z

    ld c, c
    ret


    ld c, d
    ret


    ld c, e
    ret


    ld c, d
    adc $4b
    adc $4c
    adc $2b
    sra h
    sra l
    res 3, [hl]
    set 3, b
    rl d
    call z, $ca81
    add d
    jp z, $ca83

    rst $38
    rst $38
    cp a
    set 0, c
    set 0, e
    set 0, l
    set 0, a
    set 1, c
    set 4, l
    add $e3
    rst $00
    pop hl
    ret z

    rst $18
    ret


    db $dd
    jp z, $ffff

    db $eb
    push bc
    rst $30
    push bc
    inc bc
    add $f6
    push bc
    ld [bc], a
    add $0e
    add $ff
    rst $38
    cp e
    ret


    or [hl]
    adc $bf
    res 7, h
    adc $cb
    ret


    call nc, Call_000_07c9
    rst $00
    rst $38
    ret nc

    dec b
    pop de
    dec [hl]
    rst $08
    ld [hl], $cf
    scf
    rst $08
    inc sp
    ret nc

    inc [hl]
    ret nc

    dec [hl]
    ret nc

    ld sp, $32d1
    pop de
    inc sp
    pop de
    cpl
    jp nc, $d230

    ld sp, $2dd2
    db $d3
    ld l, $d3
    cpl
    db $d3
    rst $38
    rst $38
    ld b, c
    add $3e
    jp z, $ca3f

    ld b, b
    jp z, $cb3c

    dec a
    srl [hl]
    srl d
    call z, $cc3b
    inc a
    call z, $cd38
    add hl, sp
    call $cd3a
    ld [hl], $ce
    scf
    adc $38
    adc $78
    call $cd79
    ld a, d
    call $cd7b
    db $76
    adc $77
    adc $78
    adc $79
    adc $74
    rst $08
    ld [hl], l
    rst $08
    db $76
    rst $08
    ld [hl], a
    rst $08
    ld [hl], d
    ret nc

    ld [hl], e
    ret nc

    ld [hl], h
    ret nc

    ld [hl], l
    ret nc

    ld a, [hl]
    rst $08
    rst $38
    rst $38
    db $eb
    call z, $c700
    xor $cc
    ld a, [c]
    call z, $ccf6
    ld a, [$e7cc]
    ret nc

    pop af
    ret nc

    ld sp, hl
    call $cef7
    push af
    rst $08
    db $fd
    call z, $cdfd
    ei
    adc $f9
    rst $08
    rst $38
    rst $38
    ld a, b
    call $cd79
    ld a, d
    call $cd7b
    db $76
    adc $77
    adc $78
    adc $79
    adc $74
    rst $08
    ld [hl], l
    rst $08
    db $76
    rst $08
    ld [hl], a
    rst $08
    ld [hl], d
    ret nc

    ld [hl], e
    ret nc

    ld [hl], h
    ret nc

    ld [hl], l
    ret nc

    rst $38
    rst $38
    xor [hl]
    rst $00
    and h
    res 4, l
    res 4, [hl]
    res 4, a
    res 5, b
    set 7, a
    rst $38
    nop
    nop
    ld d, e
    jp nz, $c258

    ld [hl], b
    jp nz, $c270

    add a
    jp nz, $c298

    or l
    jp nz, $c2bd

    nop
    nop
    cp [hl]
    jp nz, $c2cf

    db $d3
    jp nz, $c2df

    di
    jp nz, $c2f8

    ld a, [$04c2]
    jp $c324


    inc [hl]
    jp $c340


    ld b, c
    jp $c344


    ld e, a
    jp $c363


    ld l, h
    jp RST_00


    ld l, a
    jp $c37e


    nop
    nop
    nop
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
    jp $c3aa


    ret nz

    jp $c3d2


    db $e3
    jp $c3e7


    add sp, -$3d
    nop
    call nz, $c413
    rla
    call nz, $c421
    ld hl, $25c4
    call nz, $c454
    ld h, d
    call nz, RST_00
    ld l, d
    call nz, $df00
    inc de
    rst $18
    jr z, @-$1f

    ld c, d
    rst $18
    ld h, c
    rst $18
    ld h, d
    rst $18
    nop
    nop
    add a
    rst $18
    sbc [hl]
    rst $18
    nop
    nop
    and h
    rst $18
    cp e
    rst $18
    call nz, $d0df
    rst $18
    db $dd
    rst $18
    ld a, [$c1b0]
    ld d, $de
    ld e, a
    ld a, l
    ld [$c207], a
    ld a, h
    ld [$c208], a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    add $f8
    ld b, a
    ld a, [$c1ed]
    add $02
    ld [$c1ed], a
    ld hl, $3443

jr_007_723f:
    ld a, [hl+]
    cp $ff
    jp z, Jump_000_38a0

    add c
    ld [de], a
    inc e
    ld a, [hl+]
    add b
    ld [de], a
    inc e
    ld a, [$c1ed]
    add [hl]
    inc hl
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    jr jr_007_723f

    ld [$c1ea], a
    ld a, [$c167]
    call Call_000_2bce
    call Call_000_2c93
    ld a, l
    ld [$c1f0], a
    ld a, h
    ld [$c1f1], a
    push bc
    ld a, [$c167]
    call Call_000_2bd0
    call Call_000_2c93
    ld a, l
    ld [$c1f2], a
    ld a, h
    ld [$c1f3], a
    ld hl, $0005
    add hl, de
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld d, h
    ld e, l
    pop hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    add hl, bc
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld b, h
    ld c, l
    ret


    ld [hl], e
    inc hl
    ld [hl], c
    inc hl
    ret


    ld bc, $0339
    ld a, c
    ld [$c1b4], a
    ld a, b
    ld [$c1b5], a
    call Call_000_361a
    ld c, $19
    jp Jump_000_3da4


    add d
    ld [$636f], sp
    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_007_7340

    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld l, $2e
    ld l, $ff
    add e
    inc bc
    ld h, c
    jr nz, jr_007_7356

    ld l, c
    ld h, h
    ld h, l
    ld l, a
    jr nz, jr_007_734d

    ld h, c
    ld l, l
    ld h, l
    add b
    dec b
    ld h, e
    ld l, a
    ld l, [hl]
    db $76
    ld h, l
    ld [hl], d
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_007_7358

    ld a, c
    jr nz, jr_007_735e

    ld l, [hl]
    ld l, c
    ld h, a
    ld l, l
    ld h, c
    add b
    rlca
    db $76
    ld h, c
    ld [hl], d
    ld l, c
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, @+$6e

    ld [hl], h
    ld h, h
    jr nz, jr_007_7376

    ld [hl], d
    ld l, a
    ld l, l
    add b
    add hl, bc
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_007_733a

    ld l, a
    ld [hl], d
    ld l, c
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, @+$22

    ld [hl], e
    ld l, [hl]
    ld h, l
    ld [hl], e
    add b
    dec bc
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_007_7350

    ld h, d
    ld a, c
    jr nz, @+$22

    ld l, a
    ld h, e
    ld h, l
    ld h, c
    ld l, [hl]
    add b

jr_007_733a:
    dec c
    ld [hl], e
    ld l, a
    ld h, [hl]
    ld [hl], h
    ld [hl], a

jr_007_7340:
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, @+$6e

    ld [hl], h
    ld h, h
    ld l, $ff
    add b
    ld [$696c], sp

jr_007_734d:
    ld h, e
    ld h, l
    ld l, [hl]

jr_007_7350:
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_007_73b7

    ld a, c

jr_007_7356:
    jr nz, jr_007_73c6

jr_007_7358:
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h

jr_007_735e:
    ld l, a
    rst $38
    add a
    ld bc, $3140
    add hl, sp
    add hl, sp
    ld [hl-], a
    add c
    inc bc
    ld l, b
    dec l
    ld h, d
    jr nz, jr_007_73de

    ld [hl], d
    ld l, a
    ld h, h
    ld [hl], l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a

jr_007_7376:
    ld l, [hl]
    jr nz, jr_007_73dc

    ld l, a
    ld l, $85
    ld b, $62
    ld h, c
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_007_73f3

    ld l, [hl]
    jr nz, jr_007_73fb

    ld l, b
    ld h, l
    add c
    ld [$6863], sp
    ld h, c
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_007_73fa

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    add c
    ld a, [bc]
    ld h, d
    ld a, c
    jr nz, jr_007_7406

    ld l, b
    ld h, c
    ld [hl], d
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_007_740c

    ld h, h
    ld h, h
    ld h, c
    ld l, l
    ld [hl], e
    ld l, $83
    dec c
    ld l, h
    ld l, c
    ld h, e
    ld h, l

jr_007_73b7:
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_007_741f

    ld h, a
    ld h, l
    ld l, [hl]
    ld [hl], h
    add c
    rrca
    ld [hl], b
    ld h, c

jr_007_73c6:
    ld [hl], d
    ld h, c
    ld l, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_007_743f

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, $ff
    add h
    ld bc, $6d74

jr_007_73dc:
    jr nz, jr_007_7442

jr_007_73de:
    ld h, l
    ld [hl], e
    ld l, c
    ld h, a
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e
    add e
    inc bc
    ld h, c
    jr nz, jr_007_7460

    ld [hl], d
    ld h, c
    ld h, h
    ld h, l
    ld l, l
    ld h, c
    ld [hl], d

jr_007_73f3:
    ld l, e
    jr nz, jr_007_7416

    ld l, a
    ld h, [hl]
    add c
    dec b

jr_007_73fa:
    ld [hl], b

jr_007_73fb:
    ld h, c
    ld [hl], d
    ld h, c
    ld l, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_007_7475

    ld l, c

jr_007_7406:
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e

jr_007_740c:
    add c
    ld [$636f], sp
    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_007_7488

    ld l, a

jr_007_7416:
    ld h, [hl]
    ld [hl], h
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_007_748a

    ld [hl], h

jr_007_741f:
    ld h, h
    add b
    ld a, [bc]
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], d
    ld l, c
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$6e

    ld l, c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    ld h, l
    ld l, $85
    dec c
    ld l, h
    ld l, c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l

jr_007_743f:
    ld h, h
    jr nz, jr_007_74a4

jr_007_7442:
    ld a, c
    add [hl]
    rrca
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h
    ld l, a
    rst $38
    add e
    ld [bc], a
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld l, a
    ld [hl], d
    ld h, h
    jr nz, @+$22

    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld a, c
    add e

jr_007_7460:
    dec b
    ld sp, $3220
    jr nz, jr_007_7499

    jr nz, @+$36

    jr nz, jr_007_749f

    jr nz, @+$38

    jr nz, @+$39

    jr nz, jr_007_74a8

    add e
    rlca
    add hl, sp
    jr nz, jr_007_74d7

jr_007_7475:
    jr nz, jr_007_74da

    jr nz, jr_007_74dd

    jr nz, jr_007_74e1

    jr nz, jr_007_74e4

    jr nz, jr_007_74e7

    jr nz, jr_007_74eb

    add e
    add hl, bc
    ld l, e
    jr nz, jr_007_74f2

    jr nz, jr_007_74f5

jr_007_7488:
    jr nz, jr_007_74f8

jr_007_748a:
    jr nz, jr_007_74fc

    jr nz, jr_007_7500

    jr nz, jr_007_7503

    jr nz, jr_007_7506

    add e
    dec bc
    db $76
    jr nz, jr_007_750e

    jr nz, jr_007_7511

jr_007_7499:
    jr nz, jr_007_7514

    jr nz, jr_007_7517

    jr nz, jr_007_74df

jr_007_749f:
    jr nz, @+$41

    jr nz, jr_007_74d0

    add l

jr_007_74a4:
    ld c, $61
    ld h, e
    ld h, e

jr_007_74a8:
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_007_7510

    ld l, a
    ld h, h
    ld h, l
    rst $38
    adc b
    db $10
    ld h, l
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d
    rst $38
    add e
    ld bc, $696c
    db $76
    ld h, l
    ld [hl], e
    add e
    inc bc
    ld [hl], e
    ld [hl], a
    ld h, l
    ld h, l
    ld [hl], h
    ld [hl], e
    add e
    dec b
    ld [hl], b
    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e

jr_007_74d0:
    add e
    rlca
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    ld [hl], a

jr_007_74d7:
    ld l, a
    ld [hl], d
    ld h, h

jr_007_74da:
    add d
    ld a, [bc]
    ld a, c

jr_007_74dd:
    ld l, a
    ld [hl], l

jr_007_74df:
    jr nz, jr_007_7549

jr_007_74e1:
    ld h, c
    db $76
    ld h, l

jr_007_74e4:
    jr nz, jr_007_7558

    ld h, l

jr_007_74e7:
    ld [hl], e
    ld h, e
    ld [hl], l
    ld h, l

jr_007_74eb:
    ld h, h
    adc l
    ld bc, $9afe
    pop bc
    adc l

jr_007_74f2:
    inc bc
    cp $9c

jr_007_74f5:
    pop bc
    adc l
    dec b

jr_007_74f8:
    cp $98
    pop bc
    rst $38

jr_007_74fc:
    add e
    inc c
    ld l, [hl]
    ld l, a

jr_007_7500:
    ld h, d
    ld l, a
    ld h, h

jr_007_7503:
    ld a, c
    ld l, $ff

jr_007_7506:
    add c
    inc c
    ld h, [hl]
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d

jr_007_750e:
    ld l, $ff

jr_007_7510:
    adc c

jr_007_7511:
    inc c
    ld [hl], a
    ld h, l

jr_007_7514:
    ld h, h
    ld l, [hl]
    ld h, l

jr_007_7517:
    ld [hl], e
    ld h, h
    ld h, c
    ld a, c
    ld l, $ff
    add c
    ld c, $67
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld l, $ff
    adc l
    ld c, $67
    ld l, a
    ld l, l
    ld h, l
    ld a, d
    ld l, $ff
    add c
    db $10
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    jr nz, jr_007_75a6

    ld [hl], l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    adc h
    db $10
    cp $15
    jp nz, $86ff

    rrca
    ld [hl], b
    ld [hl], l
    ld h, a
    ld [hl], e

jr_007_7549:
    ld l, h
    ld h, l
    ld a, c
    daa
    ld [hl], e
    add e
    db $10
    ld [hl], e
    ld h, e
    ld h, c
    db $76
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l

jr_007_7558:
    ld [hl], d
    jr nz, jr_007_75c3

    ld [hl], l
    ld l, [hl]
    ld [hl], h
    rst $38
    add [hl]
    inc b
    ld [hl], b
    ld [hl], l
    ld h, a
    ld [hl], e
    ld l, h
    ld h, l
    ld a, c
    daa
    ld [hl], e
    add e
    ld b, $73
    ld h, e
    ld h, c
    db $76
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, jr_007_75df

    ld [hl], l
    ld l, [hl]
    ld [hl], h
    add a
    add hl, bc
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_007_75ea

    ld h, c
    ld l, l
    ld h, l
    add a
    dec bc
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld l, a
    ld [hl], d
    ld h, h
    add [hl]
    ld c, $74
    ld l, l
    jr nz, jr_007_75d6

    jr nz, @+$33

    add hl, sp
    add hl, sp
    ld [hl-], a
    add c
    db $10
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, c
    ld l, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h

jr_007_75a6:
    jr nz, jr_007_7618

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, $ff
    add e
    ld bc, $686f
    jr nz, @+$66

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_007_762c

    ld [hl], l
    ld h, a
    ld [hl], e
    ld l, h
    ld h, l
    ld a, c
    inc l

jr_007_75c3:
    add e
    inc bc
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_007_7632

    ld h, c
    db $76
    ld h, l
    jr nz, jr_007_7635

    ld h, c
    ld l, c
    ld l, h
    ld h, l
    ld h, h
    add e
    dec b

jr_007_75d6:
    ld [hl], h
    ld l, a
    jr nz, jr_007_764c

    ld h, l
    ld [hl], e
    ld h, e
    ld [hl], l
    ld h, l

jr_007_75df:
    jr nz, jr_007_765a

    ld l, a
    ld [hl], l
    ld [hl], d
    add e
    rlca
    ld h, [hl]
    ld h, c
    ld l, l
    ld l, c

jr_007_75ea:
    ld l, h
    ld a, c
    ld l, $87
    add hl, bc
    ld h, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    jr nz, @+$71

    ld [hl], d
    add a
    dec bc
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], h
    ld l, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a

jr_007_7618:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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

jr_007_762c:
    nop
    ld a, a
    nop
    ld a, a
    ccf
    ld a, a

jr_007_7632:
    ccf
    ld a, a
    ccf

jr_007_7635:
    ld a, a
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

jr_007_7642:
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld d, b

jr_007_764a:
    jr nz, @+$6a

jr_007_764c:
    jr nc, jr_007_7642

    jr c, jr_007_764a

    db $fc
    db $fd
    cp $fd
    cp $fa
    db $fc
    db $f4
    jr c, @+$6a

jr_007_765a:
    jr nc, jr_007_76ac

    jr nz, @+$62

    nop
    nop
    nop
    nop
    nop
    call Call_000_2a3a
    ld a, [$c17c]
    ld [$c158], a
    call Call_000_3fd5
    ld c, $15
    jp Jump_000_3da4


    ld a, [$c56c]
    and a
    ret z

    ld a, [$c15f]
    ld c, a
    ld a, [$c160]
    sub $10
    ld b, a
    ld a, [$c543]
    cp $02
    jr nz, jr_007_768e

    ld a, b
    add $10
    ld b, a

jr_007_768e:
    ld a, [$c1ae]
    cp $22
    jr nz, jr_007_7695

jr_007_7695:
    ld a, c
    add $04
    ld c, a
    ld a, [$c56d]
    cp $ff
    jr z, jr_007_76a9

    dec a
    ld [$c56d], a
    jr z, jr_007_76af

    and $01
    ret z

jr_007_76a9:
    ld hl, $341c

jr_007_76ac:
    jp Jump_000_0ae2


jr_007_76af:
    ld [$c56c], a
    ret


Jump_007_76b3:
    call Call_000_3d92
    call Call_000_0905
    call Call_000_0a3a
    call $ff80
    xor a
    ld [$c16e], a
    ld [$c16f], a
    ldh [rSCX], a
    ldh [rSCY], a
    call Call_000_3b66
    ld de, $8000
    ld hl, $7603
    ld bc, $0020
    call Call_000_091c
    call Call_000_0469
    ld a, $07
    ld [$c144], a
    ld [$2100], a
    ld de, $744e
    call Call_000_3b7e
    call Call_000_08f8
    ld de, $9a08
    ld a, e
    ld [$c18b], a
    ld a, d
    ld [$c18c], a
    xor a
    ld [$c18d], a

jr_007_76fc:
    call Call_000_08bd
    call Call_000_25cb
    call Call_007_77a5
    ld hl, $de00
    ld a, [$c16f]
    add $03
    swap a
    add $04
    ld [hl+], a
    ld c, a
    ld a, [$c16e]
    add $02
    swap a
    sub $04
    ld [hl+], a
    ld b, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    add $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], $20
    ld b, $05
    call Call_000_0937
    push af

jr_007_7731:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_007_7731

    pop af
    call $ff80
    ld l, $0f
    call Call_007_796f
    jr nc, jr_007_76fc

    call Call_007_7772
    ld c, $05
    call Call_000_3da4
    ld hl, $c18d
    inc [hl]
    ld a, [hl]
    cp $05
    jr c, jr_007_76fc

    call Call_007_7bb4
    jr nz, jr_007_775f

    ld b, $4b
    jp Jump_000_0937


jr_007_775f:
    ld de, $74b1
    call Call_000_3b7e
    ld b, $4b
    call Call_000_0937
    ld c, $01
    call Call_000_3dbb
    jp Jump_007_7836


Call_007_7772:
    ld a, [$c16f]
    and $0f
    swap a
    add a
    add a
    ld l, a
    ld h, $00
    ld b, h
    ld a, [$c16e]
    add a
    ld c, a
    add hl, bc
    ld bc, $98a3
    add hl, bc

jr_007_7789:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7789

    ld a, [hl]
    push af
    ld a, [$c18b]
    ld e, a
    ld a, [$c18c]
    ld d, a
    pop af
    ld [de], a
    inc de
    ld a, e
    ld [$c18b], a
    ld a, d
    ld [$c18c], a
    ret


Call_007_77a5:
    ld a, [$c477]
    and $f0
    ret nz

    ld a, [$c147]
    push af
    ld c, $04
    and $f0
    call nz, Call_000_3da4
    pop af
    ld c, a
    ld hl, $c16e
    bit 5, a
    jr z, jr_007_77cf

    ld a, [$c477]
    or $20
    ld [$c477], a
    ld a, [hl]
    sub $01
    jr c, jr_007_77e2

    ld [hl], a
    jr jr_007_77e2

jr_007_77cf:
    bit 4, c
    jr z, jr_007_77e2

    ld a, [$c477]
    or $10
    ld [$c477], a
    ld a, [hl]
    inc a
    cp $08
    jr nc, jr_007_77e2

    ld [hl], a

jr_007_77e2:
    inc hl
    bit 6, c
    jr z, jr_007_77f5

    ld a, [$c477]
    or $40
    ld [$c477], a
    ld a, [hl]
    sub $01
    ret c

    ld [hl], a
    ret


jr_007_77f5:
    bit 7, c
    ret z

    ld a, [$c477]
    or $80
    ld [$c477], a
    ld a, [hl]
    inc a
    cp $04
    ret nc

    ld [hl], a
    ret


    ld c, $01
    call Call_007_78a7
    ld de, $7349
    call Call_007_7926
    ld b, $46
    call Call_000_0937
    ld de, $72c7
    call Call_007_7926
    ld a, $fb
    ldh [rSCX], a
    ld de, $72db
    call Call_007_7926
    xor a
    ldh [rSCX], a
    ld de, $7360
    call Call_007_7926
    ld de, $73d8
    call Call_007_7926

Jump_007_7836:
    call Call_000_3fde
    call Call_000_0469
    call Call_000_24d5
    ld de, $7543
    call Call_000_3b7e
    xor a
    ld [$c20e], a
    ld hl, $c000

jr_007_784c:
    push hl
    call Call_000_08bd
    pop hl
    push af

jr_007_7852:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_007_7852

    pop af
    ld a, $ff
    push hl

jr_007_785e:
    push af
    ld a, [hl]
    sra a
    sra a
    sra a
    sra a
    sra a
    ld c, a
    inc l
    inc l
    inc l
    inc l

jr_007_786f:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_786f

    ld a, c
    ldh [rSCX], a
    pop af
    dec a
    jr nz, jr_007_785e

    ldh [rSCX], a
    call Call_000_00bd
    ld l, $08
    call Call_007_796f
    pop hl
    inc l
    inc l
    inc l
    inc l
    jr nc, jr_007_784c

    ld a, $ff
    ld [$c20e], a
    call Call_000_0469
    ld de, $755f
    call Call_000_3b7e
    call Call_007_78c9
    ld a, [$c16f]
    cp $64
    ret nz

    jp Jump_007_76b3


Call_007_78a7:
    push bc
    call Call_000_0905
    call Call_000_0a3a
    call $ff80
    call Call_000_3b66
    call Call_000_0469
    call Call_000_0470
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    call Call_000_25bd
    call Call_000_08f8
    pop bc
    jp Jump_000_3dbb


Call_007_78c9:
    ld a, $54
    ld [$c16f], a
    ld de, $8000
    ld hl, $7623
    ld bc, $0040
    call Call_000_091c

jr_007_78da:
    call Call_000_08bd
    ld l, $40
    call Call_007_796f
    jr nc, jr_007_78eb

    ld a, $54
    ld [$c16f], a
    jr jr_007_78f7

jr_007_78eb:
    ld l, $80
    call Call_007_796f
    jr nc, jr_007_78f7

    ld a, $64
    ld [$c16f], a

jr_007_78f7:
    call Call_007_794a
    ld l, $08
    call Call_007_796f
    jr nc, jr_007_78da

    ret


    call Call_000_25bd
    ld c, $01
    call Call_007_78a7
    call Call_000_0469
    ld de, $75b1
    call Call_000_3b7e
    call Call_007_78c9
    ld a, [$c16f]
    cp $64
    jp z, Jump_000_01d3

    ld a, $05
    ld [$c19a], a
    jp Jump_000_0237


Call_007_7926:
    push de
    push af

jr_007_7928:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_007_7928

    pop af
    call Call_000_0469
    pop de
    call Call_000_3b7e
    ld bc, $4e20

jr_007_793b:
    call Call_000_08bd
    ld l, $08
    call Call_007_796f
    ret c

    dec bc
    ld a, b
    or c
    jr nz, jr_007_793b

    ret


Call_007_794a:
    ld hl, $de00
    ld a, [$c16f]
    ld [hl+], a
    ld [hl], $28
    ld b, a
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld [hl], $30
    inc hl
    ld a, $02
    ld [hl+], a
    ld [hl], $00
    push af

jr_007_7963:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_007_7963

    pop af
    jp $ff80


Call_007_796f:
    ld a, [$c147]
    ld e, a
    ld a, [$c477]
    and e
    ld [$c477], a
    ld d, a
    ld a, e
    and l
    ret z

    ld a, d
    and l
    jr z, jr_007_7984

    and a
    ret


jr_007_7984:
    ld a, d
    or l
    ld [$c477], a
    scf
    ret


    ld a, [$c196]
    and a
    ret z

    ld a, [$c1b0]
    ld l, a
    ld h, $de
    ld [hl], $18
    inc l
    ld [hl], $10
    inc l
    ld [hl], $22
    inc l
    ld [hl], $10
    inc l
    ld [hl], $18
    inc l
    ld [hl], $18
    inc l
    ld [hl], $24
    inc l
    ld [hl], $10
    inc l
    jp Jump_007_431b


    ld a, [$c218]
    ld l, a
    ld a, [$c219]
    ld h, a
    ld a, [$c18e]
    cp $fe
    jr z, jr_007_79dd

jr_007_79c0:
    ld a, [hl]
    cp $ff
    ret z

    ld c, a
    ld a, [$c54e]
    cp c
    jr nz, jr_007_79d9

jr_007_79cb:
    ld a, l
    ld [$c182], a
    ld a, h
    ld [$c183], a
    ld a, $ff
    ld [$c21a], a
    ret


jr_007_79d9:
    inc hl
    inc hl
    jr jr_007_79c0

jr_007_79dd:
    ld a, [hl]
    cp $fe
    ret z

    inc hl
    ld a, [hl-]
    ld c, a
    ld a, [$c54f]
    cp c
    jr z, jr_007_79cb

    inc hl
    inc hl
    jr jr_007_79dd

    ld a, [$c1b4]
    ld c, a
    ld a, [$c1b5]
    ld b, a
    ld a, b
    or c
    ret z

    dec bc
    ld a, c
    ld [$c1b4], a
    ld a, b
    ld [$c1b5], a
    ld a, b
    or c
    jr nz, jr_007_7a0b

    ld a, $38
    ldh [rOBP1], a
    ret


jr_007_7a0b:
    ld a, c
    and $03
    ret nz

    ldh a, [rOBP1]
    xor $0c
    ldh [rOBP1], a
    ret


    push de
    call Call_007_4184
    call Call_000_04e2
    pop de
    ld hl, $0005
    add hl, de
    ld d, h
    ld e, l
    ld a, [$c10d]
    ld l, a
    ld a, [$c10e]
    ld h, a
    ld bc, $0060
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    push bc
    ld d, h
    ld e, l
    ld a, [$c10f]
    ld l, a
    ld a, [$c110]
    ld h, a
    ld bc, $0068
    add hl, bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    pop de
    call Call_007_7f73
    ld a, [$c1c1]
    and a
    jr nz, jr_007_7a9c

    inc hl
    inc hl
    ld [hl], $16
    inc hl
    ld [hl], $2d

Call_007_7a65:
    ld a, c
    ld [$c1f8], a
    ld a, b
    ld [$c1f9], a
    ld a, e
    ld [$c1fa], a
    ld a, d
    ld [$c1fb], a
    ld a, c
    ld [$c1da], a
    ld a, b
    ld [$c1db], a
    ld a, e
    ld [$c1dc], a
    ld a, d
    ld [$c1dd], a
    ld a, $1d
    call Call_000_06ed
    ld a, $1d
    call Call_000_06ed
    ld a, $1e
    call Call_000_06ed
    ld a, $1e
    call Call_000_06ed
    jp Jump_000_0470


jr_007_7a9c:
    ld a, [$c112]
    and a
    jr z, jr_007_7acf

    xor a
    ld [$c112], a
    ld h, a
    ld l, a
    ld a, l
    ld [$c1dc], a
    ld a, h
    ld [$c1dd], a
    ld b, $04
    ld de, $0028
    ld l, $10

jr_007_7ab7:
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    push bc
    push de
    push hl
    ld a, $1b
    call Call_000_06ed
    pop hl
    pop de
    add hl, de
    pop bc
    dec b
    jr nz, jr_007_7ab7

    ret


jr_007_7acf:
    ld a, [$c111]
    and a
    ret z

    xor a
    ld [$c111], a
    ld hl, $0080
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    ld l, $58
    ld a, l
    ld [$c1dc], a
    ld a, h
    ld [$c1dd], a
    ld a, $1a
    jp Jump_000_06ed


    ld a, [$c547]
    and $80
    ret z

    ld a, [$c17c]
    cp $21
    jr nz, jr_007_7b05

    ld a, [$c114]
    cp $06
    ret z

jr_007_7b05:
    ld hl, $c1b6
    ld a, [hl]
    and a
    ret nz

    ld [hl], $60
    push hl
    call Call_000_361d
    ld hl, $c1c1
    dec [hl]
    ld a, [hl]
    and a
    pop hl
    ret nz

    ld bc, $2d16
    call Call_007_6346
    ld hl, $0005
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_007_7a65
    ld a, [$c17c]
    cp $21
    jr z, jr_007_7b38

    cp $22
    jr nz, jr_007_7b3b

jr_007_7b38:
    call Call_000_171a

jr_007_7b3b:
    jp Jump_000_0d16


    ld a, [$c141]
    ld e, a
    and $02
    ret nz

    ld hl, $c23e
    push hl
    ld a, e
    swap a
    and $0f
    xor $13
    ld [hl+], a
    ld c, a
    ld a, e
    and $0f
    sla a
    xor $14
    ld [hl+], a
    ld b, a
    ld a, [$c19a]
    push af
    xor $05
    and $1f
    ld [hl+], a
    ld e, a
    pop af
    swap a
    xor $08
    and $1f
    ld [hl+], a
    ld d, a
    ld a, c
    add b
    add e
    add d
    add $25
    and $1f
    ld [hl+], a
    ld [hl], $ff
    pop hl
    call Call_007_7b8b
    call Call_007_7b8b
    call Call_007_7b8b
    call Call_007_7b8b
    call Call_007_7b8b
    xor a
    ret


Call_007_7b8b:
    ld a, [hl]
    ld de, $7b94
    add e
    ld e, a
    ld a, [de]
    ld [hl+], a
    ret


    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_007_7bd6

    ld h, d
    ld h, e
    ld h, h
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld [hl], b
    ld [hl], d
    ld [hl], e
    ld [hl], h
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld b, b
    ccf
    dec l

Call_007_7bb4:
    xor a
    ld de, $9a08
    ld hl, $c244
    call Call_000_3fa7
    call Call_000_3fa7
    call Call_000_3fa7
    call Call_000_3fa7
    call Call_000_3fa7
    ld hl, $c244
    ld a, [hl+]
    add [hl]
    inc hl
    add [hl]
    inc hl
    add [hl]
    inc hl
    add $25

jr_007_7bd6:
    and $1f
    ld e, a
    ld a, [hl]
    cp e
    ret nz

    ld hl, $c244
    ld a, [hl+]
    xor $13
    and $0f
    swap a
    ld [$c141], a
    ld a, [hl+]
    xor $14
    srl a
    ld e, a
    ld a, [$c141]
    or e
    ld [$c141], a
    ld e, a
    and $02
    ret nz

    ld a, [hl+]
    xor $05
    and $0f
    ld e, a
    ld a, [hl]
    xor $08
    and $0f
    swap a
    or e
    ld [$c19a], a
    xor a
    ret


    or e
    ld b, e
    rst $10
    ld b, e
    ld a, [$6643]
    ld b, h
    ld a, l
    ld b, h
    sub $44
    dec e
    ld b, l
    add h
    ld b, l
    xor h
    ld b, l
    cp a
    ld b, l
    db $eb
    ld b, l
    ld [hl], e
    ld b, [hl]
    sbc h
    ld b, [hl]
    db $dd
    ld b, [hl]
    ret z

    ld b, a
    ld l, h
    ld c, b
    rst $38
    ld c, b
    ld sp, $b349
    ld c, c
    ld l, d
    ld c, d
    inc bc
    ld c, e
    xor d
    ld c, e
    ret


    ld c, e
    ld l, $4c
    ld c, d
    ld c, h
    ld [hl], l
    ld c, h
    sub d
    ld c, h
    xor h
    ld c, h
    ld l, [hl]
    ld c, l
    cp $4d
    ld h, $4e
    ccf
    ld c, [hl]
    ld d, l
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    add l
    ld c, [hl]
    and d
    ld c, [hl]
    sbc h
    ld c, a
    ld d, d
    ld d, b
    dec c
    ld d, c
    rst $18
    ld d, c
    ei
    ld d, c
    ld h, a
    ld d, d
    rrca
    ld d, e
    xor c
    ld d, e
    ret


    ld d, e
    rst $30
    ld d, e
    ld a, $54
    and b
    ld d, h
    ld b, c
    ld d, l
    cp a
    ld d, l
    rst $20
    ld d, l
    inc a
    ld d, [hl]
    ld a, h
    ld d, [hl]
    ld l, l
    ld d, a
    jr nc, @+$5a

    inc [hl]
    ld e, c
    db $e3
    ld e, c
    ld h, [hl]
    ld e, d
    jp hl


    ld e, d
    ld a, [hl-]
    ld e, e
    sub [hl]
    ld e, e
    inc sp
    ld e, h
    sub c
    ld e, h
    db $ed
    ld e, h
    ld hl, $975d
    ld e, l
    push de
    ld e, l
    ld a, [$c141]
    and a
    ld de, $74fc
    call z, Call_000_3b7e
    ld a, $01
    ld de, $7527
    call Call_007_7cb5
    add a
    ld de, $7506
    call Call_007_7cb5
    ld de, $7510
    call Call_007_7cb5
    ld de, $751d

Call_007_7cb5:
    push af
    ld c, a
    ld a, [$c141]
    and c
    jr z, jr_007_7cc0

    call Call_000_3b7e

jr_007_7cc0:
    pop af
    add a
    ret


    ld bc, $5e73
    call Call_007_62b4
    ld bc, $7ccf
    jp Jump_007_6346


    call $4120
    call $4120
    ld hl, $0005
    add hl, de
    ld a, [hl+]
    add $70
    cpl
    ld [$c1d9], a
    inc hl
    ld a, [hl]
    add $98
    cpl
    ld [$c1d8], a
    jp Jump_000_04e2


    xor a
    ld hl, $0011
    add hl, de
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [$c569]
    and a
    ret z

    ld hl, $0011
    add hl, de
    ld [hl], $02
    inc hl
    ld [hl], $00
    jp Jump_007_7f66


    ld a, [$c547]
    and $80
    ret z

    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $eb
    ld [hl], a
    ld bc, $7ec6
    jp Jump_007_6346


    ld a, [$c1ca]
    and a
    ret z

    ld b, a
    ld a, [$c1ba]
    ld l, a
    ld a, [$c1bb]
    ld h, a

jr_007_7d26:
    ld a, [hl]
    and $40
    jr z, jr_007_7d2d

    ld [hl], $00

jr_007_7d2d:
    inc hl
    dec b
    jr nz, jr_007_7d26

    ret


Call_007_7d32:
    call Call_000_0905
    call Call_000_0a3a
    call $ff80
    call Call_000_3b66
    call Call_000_25d8
    ld c, $6c
    jp Jump_000_046b


    call Call_007_7d32
    call Call_000_1987
    call Call_000_25bd
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ld a, [$c17c]
    cp $22
    jr nz, jr_007_7d62

    ld c, $02
    call Call_000_3dbb
    jr jr_007_7d88

jr_007_7d62:
    sub $1d
    add a
    ld hl, $7e75
    ld b, $00
    ld c, a
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    call Call_000_3e5f
    ld de, $7dd5
    call Call_000_3b7e
    pop de
    call Call_000_3b7e
    call Call_000_3d79
    ld c, $02
    call Call_000_3dbb
    call Call_007_7dc7

jr_007_7d88:
    ld a, [$c17c]
    cp $22
    jr z, jr_007_7d93

    cp $21
    jr nz, jr_007_7db1

jr_007_7d93:
    ld c, $6c
    call Call_000_046b
    ld de, $7e3f
    call Call_000_3b7e
    call Call_007_7f1c
    push af

jr_007_7da2:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_007_7da2

    pop af
    call $ff80
    call Call_007_7dc7

jr_007_7db1:
    call Call_000_0905
    call Call_000_3e41
    call Call_000_06bd
    call Call_000_0470
    call Call_000_19a2
    xor a
    ld [$c21b], a
    jp Jump_000_08f8


Call_007_7dc7:
    ld e, $0a

jr_007_7dc9:
    ld bc, $ffff

jr_007_7dcc:
    dec bc
    ld a, b
    or c
    jr nz, jr_007_7dcc

    dec e
    jr nz, jr_007_7dc9

    ret


    add d
    ld bc, $6f63
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    add [hl]
    inc bc
    ld [hl], b
    ld [hl], l
    ld h, a
    ld [hl], e
    ld l, h
    ld h, l
    ld a, c
    ld l, $82
    dec c
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_007_7e5f

    ld h, c
    db $76
    ld h, l
    jr nz, jr_007_7e6e

    ld h, l
    ld [hl], e
    ld h, e
    ld [hl], l
    ld h, l
    ld h, h
    rst $38
    add a
    rrca
    ld h, a
    ld l, a
    ld l, l
    ld h, l
    ld a, d
    ld l, $ff
    add [hl]
    rrca
    ld l, l
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld h, c
    ld l, $ff
    add h
    rrca
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld l, h
    ld h, l
    jr nz, @+$68

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $ff
    add l
    rrca
    ld [hl], a
    ld h, l
    ld h, h
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld h, h
    ld h, c
    ld a, c
    ld l, $ff
    add a
    rrca
    ld h, a
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld l, $ff
    add e
    dec b
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_007_7eae

    ld h, c
    db $76
    ld h, l
    jr nz, @+$67

    ld h, c
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    add d
    rlca
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    jr nz, jr_007_7ebd

    ld l, [hl]
    jr nz, @+$67

jr_007_7e5f:
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    add e
    add hl, bc
    ld l, b
    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], h
    inc l
    jr nz, jr_007_7edd

    ld [hl], l

jr_007_7e6e:
    ld h, a
    ld [hl], e
    ld l, h
    ld h, l
    ld a, c
    ld l, $ff
    inc bc
    ld a, [hl]
    inc c
    ld a, [hl]
    jr jr_007_7ef9

    jr z, jr_007_7efb

    dec [hl]
    ld a, [hl]
    ld a, $0f
    call Call_007_7f93
    ld b, h
    ld c, l
    ld a, [$c13e]
    ld l, a
    ld a, [$c13f]
    ld h, a
    ld d, h
    ld e, l
    ld [hl], $00
    inc de
    call Call_000_0913
    ld a, e
    ld [$c1cf], a
    ld a, d
    ld [$c1d0], a
    ld a, [$c1cc]
    ld b, a
    ld a, $40

jr_007_7ea4:
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_7ea4

    ld a, e
    ld [$c1d1], a
    ld a, d

jr_007_7eae:
    ld [$c1d2], a
    ld b, $05
    ld a, $00

jr_007_7eb5:
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_7eb5

    ld a, [$c1cc]

jr_007_7ebd:
    and a
    jr z, jr_007_7ec2

    add $05

jr_007_7ec2:
    ld [$c1cb], a
    ret


    ld hl, $0011
    add hl, de
    ld a, [hl]
    cp $08
    jr nc, jr_007_7ed0

    inc [hl]

jr_007_7ed0:
    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    push hl
    ld h, $00
    ld l, a
    add hl, bc
    ld b, h

jr_007_7edd:
    ld c, l
    pop hl
    jp Jump_007_7f6f


    push hl
    ld hl, $0000
    ld de, $0020
    ld a, e
    ld [$c1da], a
    ld a, d
    ld [$c1db], a
    ld a, l
    ld [$c1dc], a
    ld a, h
    ld [$c1dd], a

jr_007_7ef9:
    ld e, $30

jr_007_7efb:
    ld b, $03

jr_007_7efd:
    push de
    push bc
    ld a, $2f
    call Call_000_06ed
    pop bc
    pop de
    ld a, [$c1da]
    ld l, a
    ld a, [$c1db]
    ld h, a
    add hl, de
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    dec b
    jr nz, jr_007_7efd

    pop hl
    ret


Call_007_7f1c:
    ld h, $de
    ld l, $00
    ld a, $1a
    ld [hl], $70
    inc l
    ld [hl], $50
    inc l
    ld [hl+], a
    ld [hl], $10
    inc l
    ld [hl], $70
    inc l
    ld [hl], $58
    inc l
    ld [hl+], a
    ld [hl], $30
    ret


Call_007_7f36:
    ld hl, $0007
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    jr jr_007_7f5a

Call_007_7f3f:
    ld hl, $0007
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    jr jr_007_7f6e

Call_007_7f48:
Jump_007_7f48:
    ld hl, $0007
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec bc
    dec bc
    jr jr_007_7f6f

Call_007_7f53:
    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]

jr_007_7f5a:
    dec bc
    jr jr_007_7f6f

Call_007_7f5d:
    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    jr jr_007_7f6e

Call_007_7f66:
Jump_007_7f66:
    ld hl, $0007
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc

jr_007_7f6e:
    inc bc

Jump_007_7f6f:
jr_007_7f6f:
    ld [hl], b
    dec hl
    ld [hl], c
    ret


Call_007_7f73:
    ld a, [$c10d]
    cpl
    inc a
    ld [$c1d9], a
    ld a, [$c10f]
    cpl
    inc a
    ld [$c1d8], a
    ret


    call Call_007_7f48
    ld hl, $0005
    add hl, de
    inc [hl]
    ld a, [hl]
    cp $98
    jp nc, Jump_000_2a3a

    ret


Call_007_7f93:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    add hl, hl
    add hl, bc
    ret


    ld a, [$c198]
    ld l, a
    ld a, [$c199]
    ld h, a
    ld bc, $0064
    add hl, bc
    ld a, l
    ld [$c198], a
    ld a, h
    ld [$c199], a
    ld c, $09
    call Call_000_3da4
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld [hl], $07
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $fb
    ld [hl], a
    ld bc, $363c
    call Call_007_6346
    ld hl, $0009
    add hl, de
    ld [hl], $13
    inc hl
    ld [hl], $34
    ld hl, $0011
    add hl, de
    ld [hl], $0f
    ld hl, $0003
    add hl, de
    ld [hl], $ff
    ret


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
