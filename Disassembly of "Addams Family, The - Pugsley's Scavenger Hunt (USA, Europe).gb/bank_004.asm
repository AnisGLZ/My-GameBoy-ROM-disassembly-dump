; Disassembly of "Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    rrca
    add b
    nop
    nop
    ld [bc], a
    rst $18
    ld b, h
    add hl, de
    ld h, h
    adc [hl]
    ld [bc], a
    ld bc, $0001
    call c, Call_000_1200
    nop
    adc a
    nop
    call c, $d10f
    inc bc
    nop
    inc de
    ld e, $0c
    rla
    ld l, $c6
    ld [hl], a
    nop
    inc sp
    inc [hl]
    ld bc, $4bf0
    ld d, [hl]
    ld [hl], b
    ld c, $1e
    inc a
    dec e
    dec c
    ld a, b
    reti


    dec [hl]
    ld l, a
    ld [hl], $01
    ld c, [hl]
    dec e
    db $db
    jr nz, @+$0f

    ld e, $99
    ld [hl], c
    nop
    ld hl, $2e30
    reti


    and e
    ld bc, $bb6f
    ld bc, $4844
    ld e, c
    db $db
    ld h, a
    pop af
    ld b, $6d
    inc sp
    ld [hl-], a
    rst $28
    ld b, $24
    inc bc
    inc a
    ld e, $68
    ld c, c
    db $db
    ld l, $9a
    db $db
    ld c, a
    ld bc, $de33
    inc hl
    ld [$f4b5], sp
    ld [bc], a
    db $db
    adc [hl]
    cp a
    ld l, b
    jr @+$23

    ld sp, $6232
    ld sp, $f332
    ld b, $35
    ld sp, $01de
    ld bc, $1304
    rst $30
    add e
    db $db
    ld hl, $b58f
    rst $08
    sub e
    ld [bc], a
    ld e, c
    sbc c
    db $db
    jp hl


    ld bc, $0fbf
    ld h, d
    scf
    jr c, jr_004_4095

    inc l

jr_004_4093:
    dec [hl]
    inc [hl]

jr_004_4095:
    ld a, b
    db $db

jr_004_4097:
    dec d
    ld bc, $2176
    dec b
    ld b, e
    ld [hl], c
    ld c, c
    sbc $03
    inc hl
    jr nz, jr_004_40a4

jr_004_40a4:
    ld a, [hl]
    ld h, a
    dec bc

jr_004_40a7:
    ld a, [$3ef3]
    db $db
    ld l, $49
    adc l
    ld b, b
    and c
    sbc a
    add hl, bc
    ld c, c
    db $dd
    and l
    db $db
    ld d, $f4
    ld a, c
    rra
    inc b
    ld h, h
    jr nc, jr_004_40a7

    dec b
    ld a, d
    dec l
    dec a
    cp h
    ld bc, $ca1a
    ld l, b
    db $fd
    ld [bc], a
    ld b, l
    inc l
    ld [de], a
    ld sp, $09fd
    xor $e7
    rla
    db $db
    jr nc, jr_004_4093

    ld [bc], a
    inc sp
    ld a, [bc]
    inc a
    ld [hl], l
    ld [bc], a
    inc de
    ld l, $fd
    ld [bc], a
    ld a, a
    jp hl


    ld bc, $9e48
    db $db
    ld l, $09
    pop bc
    rst $30
    ld c, $7a
    cp [hl]
    add hl, bc
    ccf
    rla
    dec h
    daa
    and c
    dec b
    sbc d
    rst $28
    ld bc, $070c
    adc a
    ldh a, [rNR22]
    ld e, e
    db $db
    ld c, l
    ld e, d
    ld a, [bc]
    ei
    rlca
    jr jr_004_4097

    ld d, h
    adc a
    dec a
    inc c
    ld e, b
    cp a
    db $db
    dec l
    ld a, [c]
    ld de, $6adb
    ld h, a
    ld de, $be6d
    ld a, [bc]
    db $e3
    ld e, $f4

Call_004_4118:
    nop
    add hl, hl
    ld a, e
    jr nc, @+$13

    pop bc
    rst $08
    ld d, $db
    ld l, $02
    ld c, c
    db $db
    ld a, [bc]
    jp hl


    inc b
    db $dd
    ccf
    ld d, h
    inc b
    ld a, h
    ld [hl], $04
    ld a, [hl]
    ld e, l
    dec de
    or a
    ld h, $3e
    ld c, e
    nop
    ld a, b
    ld c, h
    dec c
    db $db
    jr nc, jr_004_4153

    ld h, a
    inc c
    nop
    rla
    cp h
    ld [bc], a
    ld l, [hl]
    ld bc, $300e
    rst $30
    inc b
    ld d, e
    cp l
    inc de
    pop bc
    daa
    db $db
    jp hl


    ld bc, $38dd

jr_004_4153:
    ld l, c
    rrca
    jr nc, jr_004_41d3

    ld l, $04
    ei
    ld c, e
    inc b
    ld [hl], e
    ret


    dec bc
    db $db
    ld l, e
    ld [de], a
    ld c, h
    ld l, b
    inc de
    and c
    ld b, b
    ld c, [hl]
    inc a
    nop
    ld c, a
    ld b, $3b
    ld l, e
    and b
    ld [hl], b
    ld [hl], c
    ld l, $0e
    rrca
    dec de
    inc e
    dec e
    dec c
    ld [bc], a
    call nc, $0e49

Call_004_417c:
    ld d, c
    ld h, a
    jp c, $fb2e

    ld [bc], a
    db $eb
    rst $08
    ld b, $c1
    ld l, e
    inc b
    rst $28
    ld d, b
    and h
    add hl, hl
    db $db
    ld a, $99
    ld a, b
    ld l, e
    rra
    db $f4
    ld hl, sp+$0c
    ld d, e
    sub c
    db $db
    ld hl, $07e1
    db $db
    add hl, sp
    ld b, d
    ld b, e
    ld [hl+], a
    nop
    ld b, h
    dec bc
    and c
    ld c, d
    ld l, [hl]
    or [hl]
    ld e, $00
    ccf
    ld [hl], $09
    dec h
    ld b, $49
    ld c, c
    ld c, $1e
    rra
    ld b, b
    ld c, l
    jr nc, jr_004_41ea

    inc sp
    ld c, $4a
    rst $08
    ld [$0031], sp
    dec c
    ld b, e
    ld h, b
    ld h, c
    sbc $0e
    push af
    ld bc, $7a00
    ld [hl], b
    ld a, [bc]
    db $db
    ld c, a
    ld a, $06
    inc a
    ld l, c
    ccf
    ld c, $db

jr_004_41d3:
    inc d
    ld h, b
    rrca
    ld hl, $1869
    add hl, de
    ld a, [de]
    db $fc
    ld bc, $2e8d
    jr nz, @+$47

    ld b, [hl]
    nop
    ld l, h
    jr nz, jr_004_422c

    ld b, a
    ld c, a
    ld c, l
    dec l

jr_004_41ea:
    ld c, [hl]
    ld l, [hl]
    adc e
    cp b
    ld c, [hl]
    ld b, c
    ld c, a
    ld [hl], l
    or l
    ld [bc], a
    dec h
    ld a, e
    ld h, $62
    dec c
    inc h
    ld b, [hl]
    ld l, $0e
    ld a, e
    ld c, l
    inc bc
    ld sp, $07de
    db $db
    ld [bc], a
    ld a, [hl-]
    ld [c], a
    nop
    ld b, a
    and a
    pop af
    pop de
    inc bc
    push af
    ld e, $67
    ld b, $00
    ld a, h
    rla
    ld bc, $224c
    jr z, jr_004_4284

    sub d
    ld a, $64
    ld a, b
    ld [hl], d
    rst $08
    ld h, a
    ld l, l
    ld [bc], a
    adc b
    ld [hl], c
    inc h
    ld bc, $7374
    ret nz

    ld [hl-], a
    inc hl
    dec c

jr_004_422c:
    ld l, d
    inc bc
    inc b
    ld a, [hl]
    dec b
    rlca
    ld d, d
    ld [$4443], sp
    ld l, $2f
    ld l, e
    db $db
    nop
    add hl, bc
    ld [de], a
    ld c, b
    ld d, $bc
    ld l, d
    inc b
    dec h
    ld b, e
    sub [hl]
    ld a, $4d
    ld b, d
    ld [hl-], a
    scf
    db $db
    add sp, $03
    db $ed
    rst $00
    ld d, c
    add hl, sp
    ld a, $cc
    ld bc, $d2b2
    ld a, [hl-]
    ld a, $4b
    ld a, $08
    ld [hl], e
    ret z

    dec a
    ld [de], a
    db $ed
    ld [$7bc9], sp
    dec c
    dec b
    ld a, $d2
    inc bc
    ld a, e
    ld a, l
    ld a, b
    dec b
    ld e, a
    dec c
    add hl, sp
    dec b
    inc d
    cpl
    db $db
    ld bc, $150f
    ld l, d
    ld b, $07
    ld [$1738], sp
    db $db
    db $fd
    ld [bc], a

jr_004_427f:
    ld d, d
    ld e, d
    ld d, e
    sub [hl]
    db $db

jr_004_4284:
    ld c, d
    ld [de], a
    rrca
    ldh [$6f], a
    jr c, jr_004_428f

    call nz, $4678
    ld l, h

jr_004_428f:
    sub d
    call z, Call_000_103c
    ld b, a
    ld bc, $72db
    db $fc
    inc b
    db $eb
    ld [hl], $f9
    ld bc, $4cb3
    ld c, a
    ld a, [hl-]
    ld l, h
    sub c
    ld c, e
    ld b, b
    ld h, c
    dec d
    scf
    jr c, @+$2c

    scf
    jr jr_004_42c3

    jp c, $b608

    ld c, $e7
    ld [hl], b
    cp l
    inc bc
    ld a, $02
    ld a, e
    inc sp
    ld a, b
    ld [hl], e
    db $eb
    ld [bc], a
    dec c
    rst $08
    ld a, $02
    add h
    cpl

jr_004_42c3:
    jr c, jr_004_427f

    dec de
    ld l, b
    ld hl, sp+$09
    rlca
    ldh a, [rIF]
    nop
    ld de, $2221
    dec a
    inc hl
    db $10
    jr jr_004_42ea

    rst $28
    ld c, $24
    rra
    ld l, a
    ld c, e
    ld d, $09
    dec a
    db $db
    db $10
    jr z, @+$44

    rst $28
    ld b, $00
    add h
    pop af
    ld c, l
    dec d
    rst $20

jr_004_42ea:
    rlca
    db $db
    inc d
    cp h
    scf
    ld c, a
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld c, $b8
    nop
    nop
    inc bc
    rlca
    jp c, $e174

    add e
    inc b
    ld bc, $0001
    cp h
    nop
    inc d
    nop
    adc a
    nop
    cp h
    rrca
    or e
    rrca
    nop
    inc c
    rla
    ld l, $af
    rlca
    nop
    ld d, $0c
    ld h, $0d
    add e
    or b
    cp e
    ld c, $27
    jr nz, jr_004_432e

    and e
    add hl, sp
    call c, Call_000_00ab
    cp e
    inc a
    ld e, $29
    dec e
    cp e
    jr nc, jr_004_436b

jr_004_432e:
    inc sp
    ld [hl-], a
    add hl, bc
    add hl, bc
    push hl
    ld b, $1e
    ld sp, $0119
    ld h, a
    dec bc
    ld l, b
    rst $28
    daa
    add h
    ld bc, $3b7b
    rrca
    ld [hl], h
    rst $18
    rrca
    ld d, d
    ld bc, $779e
    ld h, a
    ld bc, $7b12
    ld l, b
    inc c
    dec l
    add hl, bc
    ld b, h
    inc [hl]
    dec [hl]
    ld [hl], $9b
    ld a, [bc]
    ld l, $09
    ret nc

    dec b
    ld h, [hl]
    ld a, [hl-]
    inc [hl]
    jr nc, @+$72

    inc d
    add hl, bc
    ld bc, $3837
    cp l
    cp a
    ld bc, $e44a
    dec de

jr_004_436b:
    cp d
    ld l, $9e
    dec sp

jr_004_436f:
    rlca
    ld d, [hl]
    and [hl]
    ld [hl], h
    ld c, a
    sbc e
    jp c, Jump_000_13f7

    ld [hl], a
    xor c
    ld bc, $fefa
    xor $01
    dec l
    add hl, bc
    add h
    ld [hl], c
    inc sp
    ld [hl-], a
    ld hl, $46b9
    inc h
    ld [hl-], a
    ccf
    ld h, [hl]
    rlca
    ld b, e
    dec [hl]
    jr nz, jr_004_436f

    ld [bc], a
    ld bc, $4a02
    ld a, b
    ld h, a
    dec de
    cp a
    ld l, $2e
    rst $30
    ld [bc], a
    add hl, sp
    xor $08
    ld l, $42
    ld de, $37da
    ld [de], a
    jp hl


    db $10
    ld [hl], a
    inc [hl]
    ld a, [$8b21]
    dec b
    jr nc, jr_004_43d1

    sbc l
    sub [hl]

jr_004_43b2:
    jp nz, Jump_000_3140

    inc [hl]
    ld c, a
    rla
    dec c
    ld e, $bb
    jr nc, jr_004_43eb

    inc b
    or l
    or e
    ld bc, $2c48
    ld c, h
    ld sp, $0efd
    ld [hl-], a

jr_004_43c8:
    db $e4
    ld a, [de]
    cp e
    ld h, a
    add a
    ld d, a
    ld [hl], h
    ld [hl], $bd

jr_004_43d1:
    ld bc, $091e
    ld c, b
    inc a
    ld [hl], a
    ld l, $f5
    dec b
    add b
    sbc d
    sbc l
    ld a, $cf
    call Call_004_4d04
    ld e, b
    dec e
    ld l, b
    push af
    jr z, jr_004_4416

    ld l, d
    inc e
    ld l, l

jr_004_43eb:
    ld a, [c]
    dec b
    cp e
    ld l, e
    ret z

    inc de
    ld a, e
    ld a, [hl-]
    jr jr_004_43b2

    rst $18
    inc b
    ld b, c
    ld bc, $118a
    ld c, d
    ld c, e
    dec a
    nop
    ccf
    ld [bc], a
    cp e
    ld l, l
    dec sp
    ei
    ld [$ca77], sp
    inc bc
    cp e
    ld l, e
    jr nz, jr_004_43c8

    ld l, l
    ld b, [hl]
    ld l, $fd
    rlca
    ld d, d
    push hl
    inc b
    cp e

jr_004_4416:
    ld sp, $ffa1
    ld l, $ef
    ld bc, $0265
    dec a
    jr z, jr_004_445a

    rlca
    inc de
    ld [c], a
    ld d, $bd
    ld l, $3e
    ld b, a
    dec l
    ld c, h
    add d
    ld [bc], a
    cp e
    jr nc, @+$30

    ld c, l
    ld c, [hl]
    add a
    nop
    ld b, c
    ld [hl], $bf
    inc bc
    add l
    jr jr_004_4478

    ld [hl], a
    add hl, sp
    ld bc, $eb48
    ld d, $bb
    dec a

Jump_004_4443:
    rrca
    inc bc
    ld h, l
    ei
    inc bc
    cp b
    rst $18
    add hl, bc
    inc de
    rlca
    ccf
    jp c, $3904

    rst $00
    ld b, c
    ld b, b
    inc hl

Jump_004_4455:
    dec l
    ld c, a
    jp nc, $e502

jr_004_445a:
    cp b
    cp [hl]
    dec sp
    ld l, $3c
    ld a, e
    dec a
    ld d, $bb
    rst $30
    ld b, $77
    cp l
    ld [bc], a
    ld c, b
    ld e, $bb
    dec h
    ld h, e
    inc a
    ld h, l
    inc bc
    cp e
    dec sp
    rst $30
    ld [$df13], sp
    inc de
    db $10

jr_004_4478:
    sbc $07
    ld b, c
    ld [bc], a
    cp e
    sbc e
    add hl, sp
    push af
    ld [hl+], a
    ld [hl], a
    inc d
    ld b, [hl]
    ld l, $f0
    add h
    dec d
    and e
    cp b
    and [hl]
    ld [hl-], a
    sub l
    dec sp
    ld a, a

Jump_004_448f:
    ld a, [hl-]
    ld bc, $2b24
    ld l, e
    dec c
    ld sp, hl
    dec c
    xor e
    rst $30
    ld [$9e01], sp
    ld bc, $30aa
    add hl, bc
    adc c
    rst $30
    rlca
    ld b, c
    rst $08
    ld [$cdc1], sp
    inc bc
    ld c, $b3
    or l
    ld l, b
    ld a, [c]
    ld [bc], a
    ld [hl], a
    inc hl

jr_004_44b1:
    ld l, a
    cp e
    ld bc, $609b
    ld c, [hl]
    xor e
    rlca
    ld hl, sp+$04
    cp b
    ld [$7f88], a
    ld d, $0c
    inc c
    and d
    db $fc
    ld [hl], c
    ld e, l
    inc sp
    dec c
    ld l, $e3
    inc b
    ld l, b
    call c, $bd12
    or [hl]
    sub e
    jr nc, jr_004_44b1

    add hl, bc
    db $10
    ld b, $7c
    sub e
    inc d
    rst $18
    inc b
    cp e
    ld [bc], a
    inc sp
    or [hl]
    ld b, d
    ld [hl-], a
    ld e, $78
    ld [hl], a
    rrca
    dec d
    rra
    jr nc, jr_004_4516

    ld l, $04
    ld a, $60
    ld [bc], a
    cp e

jr_004_44ef:
    ld hl, sp+$04
    cp b
    ret c

    cp e
    dec hl
    dec de
    dec h
    ld h, $1d
    dec c
    ld d, h
    ld e, b
    ld a, [hl-]
    dec c
    ld l, $f8

jr_004_4500:
    inc b
    ld l, b
    di
    rlca
    or c
    ld l, e
    ld [$4103], a
    jr nc, @-$6b

    jr nc, jr_004_4500

    ld [bc], a
    ld b, l
    jr nc, jr_004_44ef

    inc bc
    ld b, c
    inc bc
    ld a, h
    and d

jr_004_4516:
    inc d
    ld h, a
    ld c, b
    cp e
    ld a, h
    rlc e
    ret z

    or [hl]
    ld [hl-], a
    inc e
    ccf
    ld h, $0d
    ld bc, $7712
    ld l, $2f
    ld a, e
    add b
    ld bc, $df23
    inc bc
    cp e
    ld bc, $b81c
    cp c
    add c
    dec hl
    rra
    add hl, hl
    pop bc
    ld l, e
    add hl, sp
    ld b, d
    ld b, e
    call nz, $4900
    rst $08
    dec c
    ld l, $0c
    adc a
    rst $18

jr_004_4546:
    ld a, [bc]
    xor d
    ld l, a
    nop
    ld l, a
    ld a, $02
    xor a
    dec bc
    cp l
    ld bc, $064f
    ld a, h
    ld c, c
    inc d
    xor e
    jr c, @+$7e

    ld c, b
    ld bc, $0ec8
    xor [hl]
    rra
    ld b, a
    jr z, jr_004_45a6

    sub b
    add hl, bc
    ld a, [bc]
    dec bc
    ld h, h
    ld [hl], a
    cpl
    or a
    and b
    cp l
    ld [bc], a
    add b
    ld [bc], a
    cp e
    ld l, e
    pop af
    db $dd
    cp c
    cpl
    ld e, e
    and e
    sbc h
    scf
    ld c, e
    add hl, sp
    ld b, l
    ld b, [hl]
    nop
    db $eb
    ld bc, $5f0d
    cp $fb
    inc b
    ld a, [bc]
    daa
    rlca
    db $eb
    inc b
    or [hl]
    ld a, $3e
    ld [bc], a
    cp [hl]
    dec bc
    ld [bc], a
    ld c, a
    push af
    dec b
    ld a, h
    ld h, $14
    jr c, jr_004_4546

    ld c, b
    rst $30
    inc bc
    rst $18
    and d
    ld [hl-], a
    rra
    inc h
    and b
    inc bc
    inc b
    ld b, c
    dec b

jr_004_45a6:
    ret z

    nop
    ld a, [de]
    and b
    ccf
    ld [$0164], sp
    adc c
    dec c
    nop
    and c
    dec d
    dec b
    call z, Call_000_00b9
    ld [hl], b
    sub [hl]
    ld [de], a
    ld c, a
    ld l, d
    inc l
    adc l
    ld [hl], b
    dec c
    sub a
    db $fd
    ld b, e
    inc b
    ld b, b
    ld h, a
    dec c
    db $eb
    inc b
    or [hl]
    ccf
    ld a, $02
    ld e, $45
    ld l, $2e
    inc b
    ld b, c
    push af
    ld bc, $8b7c
    inc d
    ld l, $6f
    ld c, b
    ld bc, $1e71
    sub c
    ld [hl], b
    inc a
    ld [hl], a
    ld l, $10
    ld b, $07
    ld [$88c8], sp
    db $fd
    ldh a, [rNR34]
    nop
    ld de, $2b21
    dec a
    inc hl
    db $10
    rrca
    dec c
    rst $28
    add hl, hl
    ld a, $10
    ld a, e
    ld b, c
    ld d, $56
    add l
    dec e
    ld [hl+], a
    inc l
    add a
    ld e, $11
    ld a, [hl+]
    di
    or h
    di
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    db $ec
    nop
    nop
    nop
    db $ec
    sbc l
    dec bc
    db $db
    db $e4
    ld [bc], a
    ld bc, $0001
    cp $00
    ld c, $00
    add a
    nop
    ld [$0f12], sp
    add a
    di
    nop
    inc de
    dec c
    ld h, b
    add a
    di
    nop
    ld c, $0d
    ld h, c
    or e
    di
    nop
    db $fd
    ld h, d
    reti


    di
    nop
    db $fd
    ld h, e
    rst $20
    db $db
    nop
    ld d, b
    or e
    rrca
    rla
    db $fd
    ld h, h
    rst $08
    dec h
    nop
    ld d, b
    inc bc
    ld a, c
    dec b
    jr nc, jr_004_464f

jr_004_464f:
    ld d, b
    rst $28
    ld b, $09
    rlca
    ld a, e
    inc b
    ld c, l
    nop
    db $dd
    rrca
    ld e, c
    add a
    ei
    jr @+$1b

    ld a, [de]
    rst $28
    ld e, h
    ld h, a
    ld [bc], a
    inc a
    inc e
    ld d, b
    db $10
    inc de
    ld d, b
    rst $30
    add hl, de
    ccf
    xor c
    dec l
    sub b
    nop
    pop hl
    add hl, bc
    ld d, $09
    ld a, [bc]
    dec bc
    jr @-$03

    inc bc
    inc b
    ld a, [hl]
    dec b
    dec de
    ld h, $f3
    dec b
    rla
    ld d, b
    rst $30
    jr nz, jr_004_46e2

    cp a
    ld [$1121], sp
    ld a, c
    ld [c], a
    dec d
    dec e
    ld d, b
    ld sp, hl
    dec hl
    reti


    ld d, b
    add sp, $18
    ld hl, $f660
    db $fd
    ld l, $06
    rlca
    ld [$2e79], sp
    add hl, bc
    nop
    ld d, b
    rst $28
    ld a, [bc]
    ld [de], a
    ld de, $233c
    ld d, b
    jr jr_004_46de

    ld d, b
    rst $30
    dec bc
    inc b
    cp l
    ld d, $27
    db $10
    ld c, a
    ld e, e
    add $de
    inc b
    ld a, [de]
    ld [$f750], sp
    ld c, $3d
    and b
    inc c
    ld [hl], c
    or $0e
    jr c, jr_004_46d5

    inc c
    nop
    rla
    rst $30
    rla
    rst $18
    sbc [hl]
    ld [$5011], sp
    add hl, de
    ld hl, $19f7
    ld hl, sp-$11

jr_004_46d5:
    ld d, $02
    ld b, $7b
    sbc $13
    ld h, h
    rst $08
    add hl, bc

jr_004_46de:
    ld d, b
    ld d, b
    rra
    ret z

jr_004_46e2:
    ret nz

    ld d, $0c
    rst $30
    ld de, $1c1b
    nop
    dec e
    ld a, [hl]
    dec c
    dec de
    jp hl


    ld a, [c]
    rst $00
    nop
    ld c, $86
    ld hl, sp+$21
    ld [hl+], a
    nop
    ld a, d
    inc hl
    db $ec
    db $fd
    adc a
    ld hl, sp+$5d
    push af
    ld e, $00
    ld e, [hl]
    ld e, a
    db $f4
    ld bc, $00f0
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    ld l, b
    and $c3
    ld a, l
    ld b, b
    inc b
    ld bc, $0001
    stop
    ld c, $00
    add b
    nop
    db $10
    ld c, $1b
    dec e
    inc h
    ld h, $f0
    inc bc
    inc bc
    ld c, $21
    inc hl
    inc a
    ld a, [hl+]
    inc l
    inc bc
    inc bc
    ld c, $c7
    dec d
    ld [de], a
    rrca
    add b
    ld bc, $1300
    dec de
    ld c, $27
    add hl, hl
    dec c
    ld a, e
    ld l, $01
    nop
    inc sp
    dec l
    ld c, $25
    dec c
    sub d
    ld b, a
    ld h, a
    nop
    rrca
    inc h
    inc a
    ld c, a
    inc b
    rrca
    ld a, [hl+]
    rst $20
    ld c, a
    adc [hl]
    inc bc
    rrca
    inc d
    rrca
    ld a, e
    ld c, a
    inc bc
    rrca
    sbc [hl]
    ld b, c
    inc b
    ccf
    rst $20
    nop
    and c
    dec b
    ccf
    rrca
    adc a
    ccf
    db $10
    inc c
    inc bc
    dec a
    nop
    ld c, $05
    xor l
    sbc [hl]
    inc bc
    ld c, $05
    xor l
    rst $08
    inc bc
    inc d
    ld [bc], a
    ld d, e
    xor h
    nop
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    inc sp
    add [hl]
    dec d
    ld a, b
    dec c
    ld [bc], a
    ld bc, $0001
    stop
    ld c, $00
    add a
    nop
    db $10
    ld [de], a
    rrca
    add a
    dec b
    nop
    inc de
    dec c
    ld l, $8e
    dec b
    nop
    ld c, $0d
    ld a, e
    inc h
    ld [bc], a
    nop
    rst $08
    ld c, c
    rrca
    inc d
    rlca
    inc a
    rrca
    ld bc, $0f06
    nop
    pop af
    add hl, de
    rrca
    db $10
    inc c
    db $e3
    ld b, $00
    dec h
    inc e
    sbc $06
    ld bc, $5200
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld [hl+], a
    sbc $81
    rst $10
    reti


    inc b
    ld bc, $0001
    inc c
    nop
    ld a, [bc]
    nop
    adc a
    nop
    ld [$0311], sp
    add hl, sp
    nop
    rrca
    db $10
    inc sp
    nop
    db $10
    rst $08
    jr z, jr_004_47f9

    ld bc, $3c02
    dec bc
    ld bc, $0b10
    ld c, $f7
    inc bc
    nop

jr_004_47f9:
    add b
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop

Jump_004_4802:
    add b
    nop
    nop
    nop
    add hl, hl
    ld b, c
    and a
    xor e
    ld [hl], h
    ld [bc], a
    ld bc, $0001
    inc c
    nop
    ld a, [bc]
    nop
    adc a
    nop
    ld [$0311], sp
    add hl, sp
    nop
    rrca
    db $10
    inc sp
    nop
    db $10
    jp nz, Jump_000_0b28

    ld bc, $3300
    ld b, b
    add hl, bc
    inc [hl]
    nop
    ld bc, $f701
    ld [bc], a
    rla
    sbc [hl]
    dec b
    dec bc
    ld c, $03
    nop
    ldh a, [rP1]
    nop
    ld [$1800], sp
    nop
    nop
    nop
    ld [$0100], sp
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    rlca
    ld [$0808], sp
    ld [$0009], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0812
    inc de
    inc d
    dec d
    ld d, $08
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
    nop
    jr z, jr_004_489a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_004_48ad

    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    nop
    rlca
    ld [$0808], sp
    ld [$0009], sp
    ld a, [bc]
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld de, $0812
    jr c, @+$3b

jr_004_489a:
    ld a, [hl-]
    dec sp
    ld [$1817], sp
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_004_48ad:
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    nop
    rlca
    ld [$0808], sp
    ld [$0009], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0812
    inc de
    inc d
    dec d
    ld d, $08
    rla
    ld c, [hl]
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $4f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
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
    nop
    ld [$1c00], sp
    nop
    nop
    nop
    ld [$0000], sp
    ld bc, $0302
    inc b
    nop
    nop
    nop
    dec b
    ld b, $07
    rlca
    ld [$0009], sp
    ld a, [bc]
    dec bc
    rlca
    rlca
    rlca
    rlca
    inc c
    dec c
    ld c, $0f
    rlca
    rlca
    rlca
    rlca
    rlca
    db $10
    ld de, $0712
    rlca
    rlca
    rlca
    inc de
    inc d
    nop
    dec d
    ld d, $17
    jr jr_004_494d

    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_004_495e

    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_004_4975

    ld a, [hl+]

jr_004_494d:
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $07
    cpl
    ld a, [hl+]
    jr nc, jr_004_4989

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_004_495e:
    jr c, jr_004_4999

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_004_4975:
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld d, h
    ld d, l
    nop
    nop
    ld h, $27
    jr z, jr_004_49ad

    ld d, a
    rlca
    nop
    dec hl
    inc l

jr_004_4989:
    dec l
    ld l, $07
    ld e, c
    ld e, d
    jr nc, jr_004_49c1

    ld [hl-], a
    inc sp
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    jr c, jr_004_49d1

    ld a, [hl-]

jr_004_4999:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    ld b, b
    ld b, c
    ld h, h
    rlca
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_004_49ad:
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_004_49e5

    ld a, [hl+]
    nop
    nop
    dec hl
    inc l

jr_004_49c1:
    dec l
    ld h, a
    rlca
    ld l, b
    nop
    jr nc, jr_004_49f9

    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_004_49d1:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_004_49e5:
    nop
    nop
    inc bc
    nop
    rlca
    nop
    nop
    nop
    ld [$4c4b], sp
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_004_49f9:
    ld d, [hl]
    ld d, a
    rlca
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, a
    nop
    nop
    ld [$2c00], sp
    nop
    nop
    nop
    ld [$0000], sp
    ld bc, $0302
    inc b
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
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
    ld d, $00
    rla
    jr jr_004_4a47

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_004_4a57

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
    ld l, $00
    cpl
    jr nc, jr_004_4a78

jr_004_4a47:
    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_004_4a8a

    ld a, [hl-]
    nop
    nop
    nop
    dec sp
    scf

jr_004_4a57:
    jr c, @+$3e

    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    dec bc
    ld b, l
    ld b, [hl]
    ld b, a

jr_004_4a78:
    ld c, b
    stop
    nop
    ld de, $4a49
    ld c, e
    ld c, h
    ld d, $00
    rla
    jr jr_004_4a9f

    ld a, [de]
    dec de
    inc e
    dec e

jr_004_4a8a:
    ld e, $1f
    jr nz, jr_004_4aaf

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
    ld l, $00
    cpl
    jr nc, @+$33

jr_004_4a9f:
    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_004_4ae2

    ld a, [hl-]
    nop
    nop
    nop
    dec sp
    scf

jr_004_4aaf:
    jr c, @+$3e

    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
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
    ld d, $00
    rla
    jr jr_004_4af7

    ld a, [de]
    dec de
    inc e
    dec e

jr_004_4ae2:
    ld e, $1f
    jr nz, jr_004_4b07

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_004_4b17

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    cpl
    jr nc, jr_004_4b28

jr_004_4af7:
    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_004_4b3a

    ld a, [hl-]
    nop
    dec a
    ld a, $3f
    ld b, b

jr_004_4b07:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    dec b
    ld b, $07

jr_004_4b17:
    ld [$0a09], sp
    nop
    nop
    dec bc
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    stop
    nop
    ld de, $4a49
    ld c, e

jr_004_4b28:
    ld c, h
    ld d, $00
    rla
    jr jr_004_4b47

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_004_4b57

    ld [hl+], a
    inc hl
    inc h
    dec h

jr_004_4b3a:
    ld h, $27
    jr z, jr_004_4b67

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    cpl
    jr nc, jr_004_4b78

jr_004_4b47:
    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_004_4b8a

    ld a, [hl-]
    nop
    nop
    nop
    dec sp
    scf

jr_004_4b57:
    jr c, jr_004_4b95

    nop
    nop
    nop
    nop
    dec sp
    scf
    jr c, jr_004_4b9d

    nop
    nop
    dec a
    ld a, $3f
    ld b, b

jr_004_4b67:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    ld e, a
    or d

jr_004_4b78:
    rrca
    add $8c
    ld [bc], a
    ld bc, $0001
    stop
    ld c, $00
    add e
    nop
    db $10
    inc l
    ld [de], a
    rrca
    ret nz

jr_004_4b8a:
    ld [bc], a
    nop
    inc de
    ld hl, $1d2c
    dec c
    ld a, b
    ld l, $02
    nop

jr_004_4b95:
    ld c, $24
    inc e
    dec e
    inc l
    dec c
    dec h
    sbc e

jr_004_4b9d:
    nop
    ld b, e
    rrca
    rra
    sbc $04
    rrca
    dec de
    rra
    jr c, @+$12

    inc c
    nop
    rla
    db $f4
    ld bc, $8f1f
    ld l, b
    dec d
    ld bc, $1f48
    ld l, b
    cpl
    push af
    ld bc, $811f
    dec sp
    jr nc, jr_004_4bc6

    ld a, [bc]
    dec bc
    rrca
    rra
    ld bc, $4b0f
    inc bc
    inc b

jr_004_4bc6:
    dec b
    inc b
    inc b
    rra
    ld l, $06
    rlca
    ld [$1f21], sp
    ld e, l
    and $01
    nop
    ld de, $de1f
    ld de, $0106
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    db $fc
    db $fd
    cp $ff
    db $fc
    db $fd
    cp $ff
    ld c, $0f
    inc d
    dec d
    db $10
    ld de, $1110
    ld [de], a
    inc de
    ld d, $17
    jr @+$1b

    inc d
    dec d
    db $10
    ld a, [de]
    db $10
    ld de, $171b
    ld d, $17
    ld [bc], a
    inc bc
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc
    ld b, $07
    inc c
    dec c
    dec e
    dec e
    ld e, $1e
    rra
    jr nz, jr_004_4c32

    jr nz, jr_004_4c36

    ld [hl+], a
    ld hl, $2322
    inc hl
    inc h
    inc h
    rra
    dec h
    ld h, $1e
    daa
    ld [hl+], a
    ld e, $28
    add hl, hl
    inc hl
    rra
    ld a, [hl+]
    inc hl
    inc l
    dec hl
    ld [hl+], a
    ld hl, $fe2d
    inc h
    ld l, $20

jr_004_4c32:
    inc h
    rst $38
    db $fc
    dec e

jr_004_4c36:
    ld hl, $1d2f
    db $fd
    jr nc, jr_004_4c5c

    ld [bc], a
    inc bc
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc
    ld b, $07
    inc c
    dec c
    dec [hl]
    ld [hl], $38
    add hl, sp
    ld [hl], $36
    add hl, sp
    add hl, sp
    ld [hl], $37
    add hl, sp
    ld a, [hl-]
    jr c, jr_004_4c8f

    jr c, @+$3b

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_004_4c5c:
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    jr c, jr_004_4c9b

    dec sp
    inc a
    add hl, sp
    add hl, sp
    inc a
    inc a
    add hl, sp
    ld a, [hl-]
    inc a
    dec a
    dec [hl]
    ld [hl], $38
    add hl, sp
    ld [hl], $36
    add hl, sp
    add hl, sp
    ld [hl], $37
    add hl, sp
    ld a, [hl-]
    jr c, jr_004_4cb3

    jr c, jr_004_4cb5

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    jr c, jr_004_4cbf

    dec sp
    inc a
    add hl, sp
    add hl, sp
    inc a
    inc a
    add hl, sp
    ld a, [hl-]
    inc a

jr_004_4c8f:
    dec a
    ldh [$e0], a
    ldh [$e0], a
    inc e
    inc e
    inc e
    inc e
    inc e
    ld a, $3e

jr_004_4c9b:
    nop
    nop
    ccf
    ccf
    inc e
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, c
    ld b, h
    ld b, e
    ld b, l
    ld b, [hl]
    ld b, c
    ld b, d
    ld b, e
    ld b, c
    ld b, a
    ld b, e
    ld b, l
    ld c, b
    ld c, c
    ld c, b

jr_004_4cb3:
    ld c, c
    ld c, c

jr_004_4cb5:
    ld c, d
    ld c, c
    ld c, d
    ld b, d
    ld b, e
    ld c, b
    ld c, c
    ld b, e
    ld b, l
    ld c, c

jr_004_4cbf:
    ld c, d
    ld c, b
    ld c, h
    ld c, e
    inc e
    ld c, c
    ld c, l
    ld c, h
    ld c, [hl]
    inc e
    ld c, [hl]
    inc e
    ld c, [hl]
    inc e
    ld c, [hl]
    inc e
    ld c, a
    ld d, b
    ld d, c
    ld c, b
    ld c, c
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
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, a
    ld l, b
    ld h, h
    ld h, h
    ld c, c
    ld c, c
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, d
    ld h, a
    ld l, b
    ld l, e
    ld l, h
    ld c, c
    ld c, c
    ld l, l
    ld l, l
    ld l, c
    ld l, d
    ld l, [hl]
    ld l, a
    ld h, l
    ld [hl], b
    ld c, h
    inc e
    ld [hl], c
    ld [hl], c
    inc e
    inc e

Call_004_4d04:
    ld [hl], d
    ld [hl], e
    ld [hl], l
    db $76
    ld [hl], e
    ld [hl], e
    db $76
    db $76
    ld [hl], e
    ld [hl], h
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, e
    ld a, h
    ld a, c
    ld a, c
    ld a, h
    ld a, h
    ld a, c
    ld a, d
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
    adc h
    adc l
    sub b
    sub c
    adc h
    adc l
    sub d
    sub e
    adc h
    adc l
    sub h
    sub l
    sub a
    sbc b
    sub l
    sub [hl]
    sbc b
    sbc c
    sbc d
    sbc e
    and d
    and e
    sbc h
    sbc l
    and h
    and l
    sbc [hl]
    sbc a
    and [hl]
    and a
    and b
    and c
    xor b
    xor c
    xor d
    xor d
    xor e
    xor e
    xor h
    xor l
    or b
    or c
    xor [hl]
    xor a
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
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    dec e
    db $fd
    cp $ff
    db $fc
    dec e
    cp $ff
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
    ccf
    inc e
    inc e
    inc e
    inc e
    inc e
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld l, l
    ld l, l
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld a, c
    ld a, c
    ld a, h
    ld a, h
    ld b, d
    ld b, e
    ld c, b
    ld c, c
    inc e
    inc e
    inc e
    inc e
    nop
    ccf
    ccf
    inc e
    ld a, b
    ld a, c
    ld a, e
    ld a, h
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    ld a, c
    ld a, c
    ld a, h
    ld a, h
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    stop
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
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [de], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr z, jr_004_4e61

    jr z, jr_004_4e67

    jr z, @+$26

    inc h
    jr z, jr_004_4e6c

    inc h
    inc h
    jr z, @+$2a

    inc h
    inc h
    jr z, jr_004_4e6e

    ld hl, $2222
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld d, d

jr_004_4e53:
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld a, [bc]
    ld hl, sp+$00
    nop
    ld [bc], a
    ld e, h
    sub h
    ld h, $1c

jr_004_4e61:
    inc a
    ld [bc], a
    ld bc, $0001
    ret z

jr_004_4e67:
    nop
    ld c, $00
    add e
    nop

jr_004_4e6c:
    ret z

    daa

jr_004_4e6e:
    dec d
    ld d, $c1
    add hl, de
    ld bc, $3331
    inc [hl]
    ld [hl], $e6
    add hl, bc
    dec d
    jr z, @+$3e

    ld a, d
    daa
    ld e, $29
    ld b, b
    ld bc, $3430
    inc sp
    dec [hl]
    rst $30
    dec de
    ld l, e
    adc [hl]
    cpl
    ld bc, $2928
    ld a, b
    ld a, d
    dec c
    ld bc, $1535
    sbc c
    add hl, de
    ld [hl], $23
    or d
    ld sp, $07cc
    dec e
    ld a, [hl+]
    inc d
    add hl, hl
    add a
    sbc h
    cp h
    inc bc
    ld bc, $2908
    ld [hl], $f7
    ld [bc], a
    rra
    adc a
    dec b
    cpl
    ld [hl-], a
    inc de
    ld a, [bc]
    ld a, d
    ld l, a
    inc c
    inc de
    sbc [hl]
    ld bc, $1710
    pop af
    ld b, $79
    ld a, [hl+]
    daa
    rst $08
    ld a, d
    dec c
    add hl, bc
    nop
    scf
    inc de
    jr c, jr_004_4e53

    ld [$3a33], sp
    inc b
    add hl, sp
    dec a
    inc [hl]
    jr c, jr_004_4ed5

    dec e
    ld c, d
    rrca
    ld a, e
    add hl, de

jr_004_4ed5:
    inc b
    ld [hl-], a
    ret z

    rlca
    add hl, hl
    daa
    ld a, e
    cp h
    inc de
    cpl
    ret c

    ld b, d
    nop
    push bc
    add hl, hl
    ld a, [hl+]
    ld a, [c]
    ld a, [de]
    dec h
    ld d, h
    sbc [hl]
    ld [bc], a
    ld a, [hl+]
    inc d
    db $fd
    ld bc, $ef0a
    ld de, $402f
    inc hl
    nop
    add hl, hl
    rrca
    adc a
    dec b
    ld b, $07
    ld c, [hl]
    ld a, e
    rst $00
    jr nz, @+$1c

    ldh a, [$3f]
    adc a
    ld [$0a09], sp
    pop af
    and [hl]
    rst $00
    ld [hl+], a
    inc hl
    rlca
    nop
    inc h
    pop hl
    ld [$0b8f], sp
    inc c
    dec c
    ldh [$a6], a
    rst $00
    dec hl
    inc l
    jr @+$1b

    inc de
    ld a, [de]
    dec hl
    dec l
    ld c, $0d
    ld h, e
    ld h, h
    ld h, l
    rst $08
    adc a
    dec h
    ld a, [bc]
    ld a, b
    call c, $8214
    ld [hl+], a
    inc de
    ld a, e
    inc h
    rra
    inc d
    call c, $4410
    ld l, a
    ld e, $24
    inc de
    ld [hl+], a
    ld b, $71
    rst $30
    inc c
    inc de
    or b
    inc de
    rla
    or l
    inc d
    dec d
    dec e
    ld a, [$c401]
    and b
    rrca
    ld c, [hl]
    add hl, hl
    ld a, [hl+]
    ld e, $06
    ld a, b
    call c, $c718
    dec hl
    ld l, $7b
    cpl
    rra
    inc d
    ret nc

    db $10
    ld b, h
    ld l, a
    rst $30
    ld [$8371], sp
    inc c
    inc de
    nop
    dec sp
    inc a
    ld [hl], c
    jp Jump_000_1701


    ld [hl], d
    ld b, h
    ld b, l
    ldh [rTIMA], a
    ld b, l
    dec d
    ld d, $7d
    inc e
    ld bc, $a062
    inc sp
    ld c, [hl]
    call nc, $d21e
    ld b, $dc
    add l
    ld a, e
    inc h
    ld e, $08
    inc h
    ld bc, $2c0e
    ld [hl], b
    ld d, b
    ld d, $ab
    ei
    ld c, d
    dec e
    inc d
    sbc $01
    ld b, d
    ld [$e31a], sp
    ld l, a
    ld d, $29
    ld [hl], c
    dec h
    inc e
    ld h, h
    inc b
    sbc a
    inc de
    ld b, $d0
    inc bc
    ld a, $3f
    ld b, b
    daa
    or b
    rla
    ld b, [hl]
    ld b, a
    ld a, [hl]
    ld c, b
    ld [$9c8f], sp
    ld c, b
    ld c, b
    nop
    inc h
    ld h, $2a
    ld e, $dc
    ld d, c
    ld l, [hl]
    ld hl, $196f
    ld a, [de]
    dec de
    sbc e
    rst $38
    ld e, h
    nop
    or h
    ld h, h
    jr z, jr_004_4fcd

    ld c, $51
    ld c, c
    ld d, d
    rlca

jr_004_4fcd:
    dec e
    jp z, Jump_000_281e

    nop
    nop
    dec e
    inc d
    db $fd
    inc bc
    and a
    db $e4
    ld b, $1a
    ld a, [hl+]
    ld a, h
    ld a, a
    inc e
    ld h, $a5
    inc e
    sub d
    inc b
    ld a, a
    inc de
    ld b, $42
    inc bc
    ld [hl], e
    ld b, c
    ld b, d
    add hl, hl
    call z, Call_000_0a17
    ld [hl], e
    db $fd
    ld [$848f], sp
    ld b, b
    inc l
    add hl, de
    jr @-$62

    ld bc, $9e54
    adc a
    rst $30
    ld [bc], a
    call c, Call_000_1a65
    inc e
    rlca
    dec c
    inc h
    jr nz, jr_004_502b

    and c
    inc bc
    ld c, $07
    or a
    add hl, hl
    rst $10
    ld l, [hl]
    ld a, d
    ld a, d
    inc b
    jr @+$16

    jp nc, Jump_000_2074

    ld a, d
    ld [hl+], a
    dec b
    ld d, e
    ld c, c
    cpl
    ld h, h
    ld h, e
    ld h, $93
    inc [hl]
    ld a, [hl]
    inc b
    ld bc, $f3a3
    ld b, $00

jr_004_502b:
    inc h
    ret nc

    ld c, $17
    ld d, $e2
    ld b, b
    jr z, @-$2a

    ld [hl], d
    sub h
    ld d, h
    ld a, c
    adc a
    ld e, $28
    adc c
    sub [hl]
    ld l, $73
    dec e
    ld [$93a1], a
    dec e
    ld c, c
    dec b
    add hl, hl
    ld c, $07
    rst $20
    ld bc, $244e
    add a
    rlca
    inc d
    inc h
    ld hl, $ab22
    ld b, $14
    add hl, hl
    dec hl
    dec de
    ld b, d
    ld [$5303], a
    ld l, c
    rlca
    ld l, [hl]
    db $e3
    adc a
    add hl, hl
    ld hl, $01c5
    add hl, sp
    ld d, $28
    or b
    and e
    inc l
    jr @+$1b

    di
    ld [bc], a
    ld bc, $f71a
    ld [bc], a
    cp e
    and l
    inc b
    rla
    cp b
    jp nc, $2a40

    or l
    inc a
    ld e, l
    ld d, h
    sbc [hl]
    adc a
    ld c, d
    ld e, $15
    adc c
    ld d, $9c
    ld l, $1c
    ld [$1c59], a
    ld [bc], a
    inc h
    ld c, $99
    rlca
    ld c, [hl]
    rla
    dec a
    push bc
    db $ec
    dec b
    inc d
    rrca
    inc e
    add a
    inc b
    and e
    inc b
    inc d
    ld c, c
    dec hl
    ccf
    ld [$5303], a
    ld a, [hl]
    rlca
    ld [bc], a
    adc a
    ld a, d
    inc e
    ld bc, $d939
    adc a
    ld h, $35
    add l
    sbc [hl]
    sbc [hl]
    ld [bc], a
    dec hl
    db $f4
    inc b
    rla
    sbc a
    ld b, d
    ld [$8fbc], sp
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec bc
    ret nz

jr_004_50c8:
    nop
    nop
    ld [bc], a
    add d
    adc l
    ld a, b
    xor $53
    ld [bc], a
    ld bc, $0001
    ret z

    nop
    rrca
    nop
    add e
    nop
    ret z

    daa
    dec d
    ld d, $c1
    add d
    ld bc, $3430
    inc sp
    dec [hl]
    ldh [$2e], a
    add hl, sp
    jr z, jr_004_5113

    ld sp, $7833
    inc [hl]
    ld a, [hl-]
    ld bc, $3213
    ldh a, [$3c]
    cpl
    ld [hl], $2a
    nop
    ld e, $00

jr_004_50fa:
    daa
    jr nc, jr_004_510d

    inc sp
    ld b, e
    ld [hl], $e6
    rst $08
    inc b
    ld bc, $0413
    dec e
    add hl, sp
    daa
    jr z, jr_004_50c8

    sub l
    ld a, a

jr_004_510d:
    nop
    inc bc
    adc e
    add hl, hl
    ld a, [hl+]
    rst $00

jr_004_5113:
    ld de, $151d
    ld a, [hl+]
    cp b
    inc de
    add hl, sp
    scf
    dec b
    dec a
    ld b, $07
    ld a, [hl]
    rst $00
    rrca
    jp $c312


    ld d, a
    scf
    inc de
    jr c, jr_004_50fa

    dec c
    rla
    cp [hl]
    ld b, [hl]
    add hl, hl
    adc a
    ld e, $08
    add hl, bc
    ld a, [bc]
    ld a, [hl]
    rst $00
    ld [hl], b
    scf
    xor b
    add hl, sp
    ld a, [hl-]
    db $f4
    jr z, jr_004_5173

    dec hl
    cp [hl]
    rrca
    adc a
    dec bc
    inc c
    dec c
    ld a, a
    add l
    ld e, b
    ld d, e
    dec a
    ld [bc], a
    daa
    nop
    inc c
    cp [hl]
    push bc
    dec h
    jr nz, jr_004_5175

    inc hl
    nop
    inc h
    rst $30
    dec c
    ld [hl+], a
    cp l
    inc d
    dec de
    dec h
    nop
    db $e4
    ld a, [de]
    ld c, b
    inc de
    inc d
    inc b
    ld d, h
    ld [bc], a
    sbc e
    inc c
    ret nz

    inc h
    ld e, d
    inc h
    jr z, jr_004_518c

    dec hl
    inc l
    rlca
    jr jr_004_518c

jr_004_5173:
    ld a, [de]
    dec hl

jr_004_5175:
    dec l
    add a
    ld bc, $3b17
    inc a
    dec a
    cp l
    ld bc, $080b
    dec de
    db $e4
    ld [bc], a
    inc hl
    ld [hl], c
    sbc [hl]
    sbc c
    ld a, [bc]
    sbc d
    ld e, $43
    ld b, h

jr_004_518c:
    ld b, l
    dec bc
    ld l, h
    push af
    db $10
    ld c, b
    sub e
    pop hl
    ld e, b
    ld c, b
    rst $00
    ld [hl+], a
    and h
    db $10
    ld b, e
    ld hl, sp+$22
    rst $30
    add hl, de
    ld b, a
    jr jr_004_51fc

    dec de
    ld e, c
    ld a, [hl+]
    ld e, $07
    daa
    jr z, jr_004_51be

    dec d
    dec e
    ret z

    inc bc
    ld e, l
    ld a, $3f
    ld b, b
    ld a, [$fb03]
    ld b, $06
    dec de
    call c, $2303
    ld a, $f0
    dec c

jr_004_51be:
    sbc d
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, [$fa0d]
    ld c, a
    ld c, $48
    ld c, a
    pop hl
    ld bc, $4859
    rst $00
    and c
    inc d
    db $10
    ld de, $27f8
    add hl, bc
    rst $20
    rlca
    ld b, e
    ld [hl], d
    xor $04
    dec hl
    jr nc, @+$5c

    inc e
    inc bc
    jr z, jr_004_5200

    add hl, hl
    rrca
    ld a, [hl+]
    dec d
    ld d, $1c
    ld bc, $edaf
    rrca
    dec h
    ld b, c
    ld b, d
    ld bc, $274c
    dec de
    ld l, [hl]
    ldh a, [rTMA]
    ld a, d
    ld l, a
    nop
    ld [hl], e
    db $db
    inc hl

jr_004_51fc:
    ld a, [hl-]
    cp e
    ld a, [hl]
    ld h, e

jr_004_5200:
    sbc d
    ld [hl+], a
    or $02
    inc sp
    add hl, de
    ld a, l
    ld [hl], e
    dec c
    ld a, b
    adc c
    ld c, b
    dec h
    sub e
    ld h, $dc
    rlca
    dec b
    pop hl
    push af
    ld bc, $9b48
    rst $00
    dec c
    sub l
    sbc d
    ld [de], a
    ld hl, sp+$7e
    add hl, bc
    rlca
    ld b, e
    db $fd
    dec b
    dec hl
    add $5a
    dec e
    inc bc
    db $fd
    ld [$c38f], sp
    dec h
    ld [hl+], a
    inc h
    call nc, Call_000_2701
    dec de
    ld e, e
    dec h
    ld a, b
    ld a, [$0005]
    inc h
    ld a, [hl+]
    ld a, b
    inc d
    ld [bc], a
    rst $38
    dec hl
    ld l, $7c
    cpl
    dec b
    ld a, d
    inc h
    ld a, [bc]
    dec l
    add hl, bc
    ld c, b
    ld h, $3c
    ld h, $07
    dec b
    ld a, [hl+]
    adc a
    and h
    adc [hl]
    inc e
    ld h, h
    ld [de], a
    inc h
    ld [hl], b
    ld d, b
    ld d, $07
    ld a, [hl+]
    inc e
    sub e
    or a
    ld a, [hl+]
    inc e
    ei
    rlca
    ld d, c
    db $db
    ld b, e
    rst $30
    dec b
    dec hl
    xor $0e
    adc a
    ld e, $25
    dec hl
    dec l
    ld bc, $a227
    dec de
    ld h, $5b
    ld a, [$05dd]
    ld bc, $9113
    ret z

    adc a
    ld e, h
    ld [hl], a
    nop
    ld l, c
    and d
    rlca
    cp l
    dec d
    add hl, bc
    add hl, hl
    dec [hl]
    dec l
    inc h
    ld c, b
    ld h, $f4
    rlca
    dec b
    or d
    adc a
    ld h, $50
    and $51
    ld c, b
    ld d, d
    rlca
    jr z, @-$7c

    ld [hl], l
    rla
    ld b, a
    add hl, bc
    dec h
    jp hl


    ld de, $bf1d
    jp hl


    inc bc
    ld a, b
    adc a
    inc b
    dec hl
    inc h
    ld [hl+], a
    db $fc
    rlca
    ld b, [hl]
    daa
    and a
    ld l, d
    cp e
    dec b
    ld bc, $0156
    adc a
    or [hl]
    dec [hl]
    dec a
    ld hl, $0122
    cpl
    db $f4
    dec bc
    ld b, [hl]
    db $fc
    cpl
    add d
    ld c, b
    add hl, hl
    adc a
    ld h, $24
    inc b
    ld [de], a
    dec b
    ld d, $28
    ret nc

    adc a
    ld h, h
    and d
    ld c, l
    inc h
    or d
    ld e, [hl]
    ld a, [hl+]
    ld [de], a
    db $10
    ld a, [hl]
    ld h, [hl]
    dec c
    ld b, a
    rst $30
    ld bc, $4f01
    dec a
    rst $20
    inc b
    adc a
    ld e, $bb
    ld bc, $582b
    ld [bc], a
    dec bc
    ld a, [de]
    sbc [hl]
    ld b, [hl]
    dec a
    add hl, hl
    ld a, [hl+]
    add hl, bc
    sbc d
    jp c, $b201

    adc a
    ld e, $79
    dec [hl]
    inc e
    inc sp
    rlca
    ld a, [hl+]
    jp hl


    dec c
    push bc
    adc l
    cpl
    ld b, l
    xor e
    inc e
    ld c, a
    or [hl]
    cp a
    inc b
    dec b
    ld bc, $8f44
    ld [hl], d
    and $b1
    db $10
    ld b, d
    ld e, h
    add d
    ld [hl], l
    inc d
    ld h, a
    add hl, bc
    daa
    jp hl


    ld c, $1d
    add hl, sp
    ld e, d
    jp hl


    ld sp, hl
    inc bc
    adc a
    ld e, $ee
    ld bc, $582b
    db $db
    dec bc
    dec e
    sbc [hl]
    ld b, [hl]
    db $fc
    inc de
    adc a
    ld e, $9e
    dec [hl]
    ld c, l
    inc e
    rlca
    ld sp, hl
    rla
    adc a
    dec e
    ld c, a
    add hl, hl
    inc b
    ld a, [hl]
    dec b
    dec b
    adc a
    ld b, e
    ld h, $7b
    pop af
    ld a, [bc]
    adc a
    add hl, hl
    ld a, [hl+]
    or $12
    ld [hl], h
    rst $20
    rl c
    ld a, b
    adc a
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    ld h, [hl]
    inc e
    ld [hl], e
    or a
    cp l
    ld [bc], a
    ld bc, $0001
    stop
    ld c, $00
    add c
    nop
    db $10
    ld e, b
    ld e, e
    ld e, d
    ld e, c
    rst $20
    inc b
    inc bc
    ld e, c
    inc a
    inc d
    inc bc
    nop
    ld e, b
    ld a, b
    ld e, d
    ld b, $0f
    ld e, e
    ld e, e
    pop af
    ld b, $0f
    ld e, d
    ld e, b
    xor $06
    rrca
    ld c, h
    ccf
    ld c, c
    ld e, [hl]
    ld [$605d], sp
    ld e, d
    ld e, c
    ld a, c
    ccf
    inc bc
    ld d, c
    ld e, b
    inc c
    ccf
    ld de, $3005
    ld b, $07
    dec bc
    ld h, e
    ld h, h
    ld h, l
    ld hl, $5b00
    ccf
    add d
    inc b
    ld [$0a09], sp
    nop
    adc d
    inc b
    ld e, d
    ld [bc], a
    ccf
    nop
    dec bc
    inc c
    dec c
    nop
    sub d
    inc b
    inc b
    ccf
    ld e, a
    ld h, b
    ld e, l
    ld e, [hl]
    adc a
    inc bc
    ld e, b
    dec de
    rrca
    ld a, a
    ld e, d
    ld e, e
    ld e, b
    inc b
    ld a, b
    inc bc
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    ld c, h
    db $d3
    ld d, [hl]
    add a
    ldh a, [rDIV]
    ld bc, $0001
    stop
    ld c, $00
    add e
    nop
    db $10
    ld c, e
    ld c, h
    ld c, [hl]
    ret c

    inc bc
    nop
    dec c
    ld c, c
    ld c, d
    rst $20
    dec d
    or [hl]
    ld bc, $0d00
    ld de, $04f7
    rrca
    add c
    ld de, $581f
    ld e, c
    ld e, d
    ld e, e
    ld e, b
    rst $28
    inc de
    rra
    add hl, de
    dec bc
    ccf
    ld e, e
    ld e, d
    ld e, c
    rlca
    ccf
    dec b
    ld b, $07
    add a
    dec b
    rra
    ld [$0a09], sp
    add a
    dec b
    ccf
    dec bc
    inc c
    dec c
    sbc [hl]
    inc b
    rra
    ld c, l

Call_004_5420:
    inc bc
    nop
    add a
    rra
    or a
    inc b
    rst $08
    dec c
    add b
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld b, $48
    nop
    nop
    ld bc, $fcc9
    add [hl]
    xor h
    ld e, l
    ld [bc], a
    ld bc, $0001
    inc d
    nop
    ld d, b
    nop
    add a
    nop
    inc d
    dec d
    ld d, $84
    ld a, [bc]
    ld bc, $3331
    inc [hl]
    inc c
    ld bc, $1332
    inc bc
    inc de
    ld c, b
    ld [hl-], a
    dec bc
    ld [hl], $73
    jr z, jr_004_5486

    rst $00
    rlca
    nop
    add hl, hl
    ld a, [hl+]
    sbc b
    ld a, [bc]
    inc de
    daa
    daa
    dec b
    ld b, $7a
    rlca
    ld [bc], a
    rrca
    inc e
    inc c
    daa
    ld e, $08
    add hl, bc
    ld a, [bc]
    ld [bc], a
    inc de
    add a
    inc c
    rlca
    daa
    dec bc
    inc c
    dec c

jr_004_547a:
    and b
    ld [bc], a
    inc de
    inc c
    add hl, hl
    add hl, de
    ld [hl+], a
    db $10
    inc hl
    nop
    inc h
    ld h, e

jr_004_5486:
    ld [de], a
    ld [hl+], a
    add b
    inc c
    db $10
    inc h
    dec hl
    rrca
    jr jr_004_54a6

    dec de
    dec hl
    dec l
    jr jr_004_54a8

    dec hl
    inc l
    dec c
    ld c, $2d
    inc bc
    daa
    ld l, e
    inc d
    inc e
    daa
    jr z, jr_004_547a

    ld [bc], a
    ld [hl], d
    dec c
    ld l, d

jr_004_54a6:
    jr z, jr_004_54b7

jr_004_54a8:
    add hl, hl

jr_004_54a9:
    ld l, l
    dec d
    dec e
    ld [bc], a
    ld l, h
    sub b
    add hl, bc
    dec c
    ld l, h
    ld b, b
    ld a, [hl+]
    daa
    dec h
    ld [hl+], a

jr_004_54b7:
    add hl, sp
    inc h
    inc de
    ld c, c
    rst $00
    inc b
    inc h
    sbc b
    ld bc, $2627
    ld b, [hl]
    add hl, de
    jr jr_004_54a9

    ld bc, $791a
    ld e, b
    ld bc, $2627
    xor b
    ld b, [hl]

jr_004_54cf:
    db $fc
    dec e
    sbc $07
    ld [bc], a
    daa
    push de
    ld b, [hl]
    sbc e
    rra
    inc e
    rlca
    db $db
    sbc l
    daa
    inc de
    or a
    ld [hl-], a
    or e
    dec b
    nop
    inc de
    inc l
    di
    ld a, [bc]
    and e
    dec hl
    rst $30
    ld c, $b7
    rst $28
    jr nz, jr_004_54cf

    ld e, $5b
    daa
    dec a
    ret z

    ld [hl+], a
    inc bc
    ld [$a9a4], sp
    dec a
    ld a, e
    daa
    inc bc
    ld [$be25], sp
    ld a, [hl+]
    ld e, $24
    inc bc
    ld [$1e85], sp
    ld b, a
    inc h
    and c
    inc bc
    ld [$511e], sp
    inc h
    xor $03
    ld [$1e30], sp
    ld [de], a
    ld d, [hl]
    inc h
    ld [de], a
    daa
    rst $30
    inc bc
    ld [$1e0e], sp
    ld a, [de]
    daa
    ld b, e
    inc bc
    daa
    add h
    inc b
    jr z, jr_004_5542

    adc [hl]
    daa
    inc e
    ld hl, $1c0a
    daa
    jp nz, Jump_000_2a04

    inc e
    ld c, d
    daa
    ld b, d
    ld a, [bc]
    daa
    sbc [hl]
    inc e
    add hl, sp
    daa
    push hl
    add b
    inc e
    inc bc
    ld d, $04

jr_004_5542:
    and e
    inc bc
    dec d
    push hl
    inc c
    ld e, e
    jr nc, jr_004_5573

    ld c, a
    di
    inc b
    ld bc, $e636
    dec de
    ld b, a
    ld a, e
    ld h, a
    and $05
    ld b, a
    ld l, a
    daa
    dec b
    sbc d
    ld b, a
    ld l, a
    daa
    ld a, h
    dec b
    sbc d
    ld c, b
    rrca
    daa
    dec hl
    inc l
    ld h, a
    inc b
    sbc d
    ld c, b
    ld h, c
    daa
    inc a
    ld l, c
    ld d, $1c
    ld sp, hl
    ld b, $d1

jr_004_5573:
    daa
    sub c
    ld h, h
    ld l, b
    ld sp, $3048
    ld a, h
    ld b, c
    xor l
    sub c
    inc [hl]
    daa
    ld c, h
    ld a, h
    dec hl
    ld b, c
    ld c, l
    sub c
    daa
    inc de
    ld a, h
    ld a, [bc]
    ld b, c
    db $d3
    sub c
    ld b, h
    daa
    call Call_004_417c
    cp l
    ld b, d
    dec b
    daa
    sub b
    ld b, c
    rla
    ld b, d
    db $f4
    dec b
    daa
    ld b, l
    rst $10
    dec a
    inc c
    inc bc
    daa
    ld de, $4fd7
    inc c
    add d
    inc e
    daa
    ld [hl+], a
    inc h
    daa
    add h
    db $d3
    xor e
    ld c, [hl]
    call z, Call_000_1127
    dec hl
    ld sp, hl
    add hl, bc
    ld e, h
    add e
    db $db
    nop
    db $f4
    rlca
    cp c
    rra
    ld c, b
    nop
    rlca
    and b
    cp c
    ld d, [hl]
    nop
    db $fd
    rlca
    cp c
    adc a
    ld de, $2225
    inc b
    sub l
    cp e
    inc h
    dec e
    daa
    ld e, $93

jr_004_55d5:
    ld [hl], l
    add hl, de
    ld c, e
    ld bc, $bf66
    daa
    ld e, $02
    ld hl, sp+$01
    inc a
    ld h, $1f
    ld [hl+], a
    daa
    ld sp, hl
    add hl, bc
    add l
    and a
    daa
    and h
    rlca
    adc e
    daa
    db $f4
    ld b, $8b
    sbc [hl]
    daa
    ld b, $8b
    or [hl]
    cp [hl]
    ld e, c
    inc hl
    ldh a, [rOBP0]
    ld [$becf], sp
    add hl, de
    inc b
    ld [hl], l
    ld bc, $40fc
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld a, [bc]
    ld hl, sp+$00
    nop
    ld bc, $528d
    ret nc

    sub [hl]
    ld [de], a
    ld [bc], a
    ld bc, $0001
    ret z

    nop
    ld c, $00
    add c
    nop
    ret z

    daa
    jr nc, jr_004_5657

    inc sp
    ldh [$ba], a
    ld bc, $2835
    add hl, hl
    ld a, [hl+]
    rst $20
    call $829e
    nop
    inc de
    ld l, $36
    rst $00
    push bc
    daa
    jr z, @-$42

    add l
    rst $00
    cpl
    nop
    daa
    db $fc
    adc b
    adc a
    nop
    db $fd
    rst $30
    adc a
    jr jr_004_55d5

    ld h, e
    ld h, h
    ld a, h
    ld h, l
    inc d
    ld a, e
    sbc [hl]
    inc [hl]
    inc de
    jp nz, Jump_000_005c

    dec b
    ld b, $07
    ld e, b
    adc a

jr_004_5657:
    ld [$7e09], sp
    ld a, [bc]
    or h
    adc e
    add l
    cp [hl]
    ld h, c
    adc a
    dec bc
    inc c
    dec c
    db $e4
    dec de
    ld l, $6e
    ld e, $04
    ld l, a
    inc e
    ld e, b
    ld e, $43
    ld b, h
    ld b, l
    rlca
    ld de, $221f
    inc hl
    inc h
    rlca
    adc a
    cp e
    ld [hl+], a
    inc h
    ld b, c
    ld b, e
    rst $00
    cp [hl]
    inc [hl]
    push bc
    dec h
    ld h, e
    ld e, $00
    inc h
    rlca
    ld [hl], a
    or $32
    inc de
    nop
    ld e, $46
    ld b, a
    ld c, b
    rlca
    ld de, $2b1e
    ld l, $2f
    rla
    db $10
    ldh a, [$2f]
    nop
    dec sp
    inc a
    ld [hl], c
    and b
    add e
    inc h
    jr z, jr_004_56c2

    ld bc, $2c2b
    jr jr_004_56c2

    ld a, [de]
    dec hl
    dec l
    rst $28
    ld b, $66
    inc sp
    ld h, c
    inc de
    nop
    ld b, c
    ld b, d
    ld [hl], e
    ld hl, sp+$07
    add [hl]
    daa
    dec d
    ei
    rlca
    ret


    dec d
    db $10
    daa
    rra

jr_004_56c2:
    rst $20
    inc b
    inc c
    ld [hl+], a
    cp a
    rlca
    rlca
    dec bc
    ld a, b
    call nc, Call_000_1a05
    ld a, $3f
    ld [hl], c
    ld b, b
    add e
    dec de
    add b
    add d
    ld a, [hl+]
    ld e, $27
    jr z, jr_004_56ef

    dec d
    ld a, l
    dec e
    rlca
    ld a, l
    or l
    inc [hl]
    inc de
    rst $28
    inc bc
    sub [hl]
    ld bc, $75c7
    add hl, hl
    ld d, $df
    rlca
    dec d
    adc l

jr_004_56ef:
    db $10
    ld e, h
    nop
    ret z

    rra
    ld c, e
    dec b
    ld [hl], d
    inc c
    add hl, bc
    jp z, Jump_000_3c11

    rlca
    ld l, [hl]
    ld b, $31
    ld l, a
    or e
    ld c, l
    ret c

    inc bc
    ld a, [de]
    inc de
    ld [hl], e
    ld b, c
    ld [hl], c
    ld b, d
    add e
    inc e
    add b
    inc bc
    jr z, jr_004_572f

    add hl, hl
    ld a, [hl+]
    dec d
    ld d, $7f
    inc e
    rlca
    ld a, l
    ld b, l
    inc [hl]
    inc de
    xor $03
    sub [hl]

Jump_004_571f:
    call nc, $9575
    ret


    ld [$3c20], sp
    db $dd
    ld bc, $2400
    and h
    db $10
    pop de
    dec b
    xor l

jr_004_572f:
    inc c
    rrca
    sbc $20
    ld b, $7b
    rlca
    ld a, [bc]
    inc sp
    call z, Call_000_1a09
    inc h
    add e
    dec e
    db $d3
    add d
    rst $08
    adc a
    dec h
    rlca
    ld a, b
    dec de
    dec hl
    inc de
    inc h
    inc de
    ld a, b
    ld [hl+], a
    ld [$2413], sp
    ld hl, $2e98
    inc h
    dec e
    add a
    db $dd
    cp d
    ld bc, $3901
    rlca
    db $10
    add sp, $01
    dec b
    call Call_000_260c
    add hl, bc
    ld h, a
    rla
    sbc [hl]
    ld [bc], a
    rlca
    add hl, de
    add hl, bc
    inc sp
    or e
    ld b, $dd
    ld bc, $bf17
    ld sp, $3d04
    adc a
    ld e, $07
    dec de
    rst $20
    dec sp
    inc de
    rla
    inc e
    ld a, [bc]
    inc e
    ld b, $a2
    inc de
    inc e
    ld [hl-], a
    dec l
    ld d, $ce
    ld bc, $0d7a
    inc b
    ld [bc], a
    dec c
    ld hl, sp+$26
    ld b, $67
    rla
    cp l
    ld [bc], a
    rlca
    inc b
    ld bc, $1322
    inc d
    ld l, a
    ld b, $01
    ld [hl], h
    rla
    ld c, e
    push de
    ld a, b
    adc a
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld b, $38
    nop
    nop
    nop
    ld a, $60
    ld d, [hl]
    sub b
    sub l
    inc b
    ld bc, $0001
    stop
    ld h, e
    nop
    adc [hl]
    nop
    db $10
    ld h, c
    inc c
    nop
    ld e, e
    ld e, b
    ld e, c
    add hl, bc
    ld e, c
    ld hl, $5b58
    dec bc
    rlca
    nop
    ld e, d
    jr c, jr_004_57e8

    nop
    ld e, d
    or c
    rrca
    ld e, c
    ld [hl+], a
    rrca
    ld e, c
    call nz, Call_004_580f
    adc e
    rrca
    ld e, b
    ld [de], a
    rrca
    ld e, e
    ld a, e
    rrca
    rst $30
    ccf
    sbc $f7
    ccf

jr_004_57e8:
    rst $30
    ccf
    rst $30
    rst $30
    ccf
    cp l
    rst $30
    ccf
    ld [c], a
    ccf
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    rlca
    or b
    nop
    nop
    ld bc, $82a4
    add d
    dec [hl]
    push bc
    ld [bc], a
    ld bc, $0001
    adc h
    nop
    ld c, $00
    add c
    nop
    adc h

Call_004_580f:
    daa
    jr nc, jr_004_5846

    inc sp
    ldh [rSC], a
    ld bc, $1535
    ld sp, $7b33
    inc [hl]
    ld b, l
    ld bc, $07dc
    ld d, c
    ld c, $f1
    ld [de], a
    dec hl
    add hl, hl
    ld a, [hl+]
    rst $08
    sub c
    ld bc, $000f
    add hl, hl
    ld d, $28
    inc b

Call_004_5830:
    ld a, e
    ld c, $3b
    nop
    sbc $07
    ld d, c
    inc de
    ld h, b
    rst $08
    adc c
    daa
    dec b
    rrca
    dec de
    daa
    dec d
    ld a, [hl+]
    ld b, a
    rrca
    adc e
    scf

jr_004_5846:
    ld [hl-], a
    jr c, jr_004_5868

    ld l, a
    ld h, b
    adc e
    ld b, $c5
    rla
    scf
    inc de
    add e
    add hl, sp
    dec sp
    inc a
    dec a
    rst $18
    ld b, a
    sub l
    jr z, @-$42

    rla
    ld [bc], a
    nop
    ld a, $3d
    ccf
    ld b, b
    ld c, h
    adc e
    ld a, [$2607]
    pop bc

jr_004_5868:
    nop
    ld h, e
    ld h, h
    ld h, l
    inc l
    rla
    dec b
    inc a
    ld b, $07
    ld a, [bc]
    dec e
    ld [hl], e
    dec a
    ld b, c
    ld b, d
    ld c, h
    adc e
    pop hl
    rrca
    nop
    ld [$0a09], sp
    dec l
    rla
    rrca
    ld [$0909], sp
    nop
    ld [hl+], a
    inc hl
    inc h
    rlca
    dec b
    ld [hl], d
    ld b, h
    ld b, l
    cp l
    ld a, [bc]
    rla
    ld [$3324], sp
    rrca
    inc de
    jp nz, $8b30

    dec bc
    inc c
    dec c
    ld e, d
    rla
    ld e, $08
    add hl, bc
    nop
    ld [de], a
    dec hl
    ld l, $2f
    rrca
    dec b
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, [bc]
    ld a, e
    rla
    ld [$f724], sp
    scf
    ld d, $38
    call Call_000_2a02
    ld c, c
    dec h
    rlca
    scf
    call nc, Call_000_02a5
    ld [c], a
    dec e
    push bc
    inc bc
    or $41
    ld b, d
    ld [hl], e
    and $11
    ld [$0c4f], sp
    dec d
    sbc a
    ld a, h
    dec b
    sbc $47
    stop
    rst $20
    call Call_000_0209
    ld a, [hl+]
    ld e, $3d
    rlca
    inc c
    push af
    jr z, @-$08

    ldh a, [rDIV]
    ld c, h
    dec sp
    inc a
    ld [hl], c
    add c
    ld de, $1324
    inc [hl]
    ld h, l
    and a
    dec d
    push hl
    add hl, bc
    dec de
    ld b, e
    ei
    inc bc
    sub $df
    inc b
    ld d, c
    ld c, $3c
    sbc e
    ld d, h
    rst $20
    call Call_000_0234
    adc e
    sbc a
    rlca
    rrca
    inc a
    cp $0f
    rst $30
    inc b
    ld c, h
    ld c, a
    ld e, h
    cp c
    ld [bc], a
    ld de, $fb06
    inc c
    rla
    sbc a
    and d
    inc b
    cp l
    sub $04
    inc e
    rst $08
    ld a, $0b
    call c, $1526
    rst $20
    call Call_000_0234
    adc e
    sbc a
    rlca
    rrca
    inc a
    cp $0f
    ld [c], a
    ld c, h
    ld l, [hl]
    ld b, h
    inc c
    ld l, a
    ld c, h
    ld e, h
    sub e
    ld de, $657e
    inc c

jr_004_5938:
    rla
    and $a2
    dec h
    ld a, e
    ld e, h
    ld bc, $9e00
    inc e
    ld [bc], a
    inc c
    rst $18
    jr jr_004_5952

    inc e
    ld e, e
    ld d, h
    or [hl]
    rla
    add sp, $30
    pop af
    ld [bc], a
    nop
    inc h

jr_004_5952:
    jr nz, jr_004_5938

    dec b
    dec c
    ld [de], a
    ld e, $6f
    ld hl, $1204
    sbc $13
    ld bc, $7311
    inc h
    call nz, $096d
    inc hl
    ld [bc], a
    rst $20
    dec b
    ld hl, $9e24
    rlca
    cpl
    jr nz, jr_004_5984

    ld c, $b2
    dec d
    ld a, b
    rla
    ld e, $2b
    ld [de], a
    inc l
    jr jr_004_5994

    rlca
    ld bc, $2b1a
    dec l
    dec e
    sub c
    dec b
    dec c

jr_004_5984:
    ld a, [de]
    cp h
    dec b
    inc bc
    jr nz, jr_004_59a2

    ld l, [hl]
    dec de
    inc de
    add hl, sp
    ld de, $111c
    adc $09
    ld [hl], e

jr_004_5994:
    sub l
    ld l, $9c
    ld h, $0f
    ld a, e
    rla
    ld [bc], a
    jr nz, @-$2b

    inc bc
    dec c
    ld a, e
    ld d, c

jr_004_59a2:
    db $10
    ld c, $d2
    ld [bc], a
    inc sp
    sbc $17
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    ld b, d
    ld d, e
    add e
    cp b
    ld a, $04
    ld bc, $0001
    stop
    ld c, $00
    add e
    nop
    db $10
    ld c, e
    ld c, h
    inc de
    ret c

    inc bc
    nop
    dec c
    ld c, c
    ld c, d
    rst $20
    dec d
    or [hl]
    ld bc, $0d00
    ld de, $04f7
    rrca
    sub h
    ld sp, $121f
    nop
    ldh a, [rNR34]
    ccf
    dec b
    ld b, $07
    ldh a, [rTIMA]
    rra
    ld [$0a09], sp
    ldh a, [rTIMA]
    rra
    dec bc

jr_004_59ed:
    inc c
    dec c
    push af
    inc b
    rra
    inc h
    cp b
    ld e, a
    and e
    cp a
    rla

Call_004_59f8:
    db $db
    inc bc
    nop
    dec c
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld a, [bc]
    ld hl, sp+$00
    nop
    ld bc, $34bb
    ld b, [hl]
    sbc $56
    inc b
    ld bc, $0001
    ret z

    nop
    ld c, $00
    add c
    nop
    ret z

    daa
    jr nc, jr_004_5a50

    inc sp
    ldh [$ba], a
    ld bc, $2835
    add hl, hl
    ld a, [hl+]
    rst $20
    call Call_004_789e
    nop
    inc de
    jr c, jr_004_5a6c

    rst $00
    push bc
    daa
    jr z, jr_004_59ed

    ld a, e
    rst $00
    add hl, sp
    nop
    daa
    db $fc
    ld a, [hl]
    adc a
    nop
    db $fd
    rst $30
    adc a
    ld hl, sp+$06
    adc a
    dec b
    ld b, $7c
    rlca
    inc d
    ld a, $a8
    inc de
    sub a
    ld b, h
    dec sp
    ld h, e
    ld h, h
    ld h, l
    or b
    adc a

jr_004_5a50:
    ld [$0a09], sp
    ld a, [c]
    dec hl
    ld e, a
    ld l, [hl]
    rrca
    inc b
    ld l, a
    ld a, [hl+]
    db $10
    scf
    ld [hl+], a
    inc hl
    nop
    ld a, b
    inc h
    inc [hl]
    jp c, Jump_004_4443

    ld a, d
    ld b, l
    inc bc
    dec c
    dec d
    cp [hl]

jr_004_5a6c:
    add e
    adc a
    dec bc
    inc c
    dec c
    nop
    ret nz

    ld h, d
    adc a
    dec hl
    inc l
    rla
    jr jr_004_5a95

    inc a
    dec hl
    dec l
    inc [hl]
    rst $00
    ld b, [hl]
    dec a
    ld b, a
    ld c, b
    inc bc
    dec c
    inc c
    cp [hl]
    push bc
    dec h
    rst $30
    inc c
    adc a
    or b
    inc e
    inc de
    adc a
    jr jr_004_5aab

    ld a, [de]
    and d
    adc a

jr_004_5a95:
    ld [de], a
    ld a, c
    db $fd
    ld [de], a
    ld b, a
    dec h
    inc h
    xor l
    dec c
    ld de, $1f1c
    dec c
    inc b
    jr z, jr_004_5aba

    ld d, $1c
    dec h
    sub h
    dec d
    dec b

jr_004_5aab:
    ld e, b
    inc de
    ld e, $22
    di
    dec b
    ld [hl], c
    ld [hl+], a
    ldh a, [rNR12]
    inc hl
    ld b, c
    ld b, d
    ld [hl], e
    sbc b

jr_004_5aba:
    add hl, bc
    dec sp
    inc a
    ld d, e
    ld [hl], c
    sub a
    inc a
    ld d, h
    ld e, $02
    adc a
    nop
    rst $30
    dec bc
    and e
    add c
    ld [de], a
    inc de
    daa
    jr z, jr_004_5ae3

    dec d
    dec e
    push af
    add hl, bc
    dec h
    ld e, $2b
    ld l, $2f
    dec d
    ld de, $0de3
    ld a, [hl+]
    adc c
    scf
    ld h, $3d
    dec d
    add hl, bc

jr_004_5ae3:
    dec de
    rst $28
    ld de, $020d
    ld d, d
    push de
    cp d
    pop bc
    inc c
    ld a, $3f
    ld b, b
    adc $97
    rst $00
    sbc $2a
    ld e, $bc
    inc c
    adc a
    inc e
    inc de
    add hl, hl
    db $76
    ld a, [hl+]
    ld d, a
    ei
    add hl, bc
    sbc [hl]
    or l

jr_004_5b03:
    daa
    dec d
    ld d, $11
    db $e4
    dec c
    ld h, h
    adc a
    ld h, $9e
    dec d
    rlca
    dec de
    ld a, [hl]
    jr nz, jr_004_5b17

    add e
    rst $30
    ld b, $1b

jr_004_5b17:
    and c
    ld [bc], a
    push de
    cp d
    pop hl
    ld bc, $730c
    ld b, c
    ld b, d
    add $97
    inc e
    inc bc
    dec a
    jr z, jr_004_5b46

    inc c
    adc a
    jp hl


    inc e
    inc de
    sbc [hl]
    rst $10
    ld e, h
    ld b, $00
    dec a
    add hl, hl
    ld d, $16
    ld de, $0dca
    call c, Call_000_078f
    add a
    ld d, e
    sbc h
    ld b, $1b
    dec e
    and b
    ld c, b
    ld l, [hl]
    ld e, l

jr_004_5b46:
    ld l, a
    ld c, c
    nop
    ld hl, $0ae8
    push de
    ld b, c
    cp d
    ldh a, [rNR12]
    ret z

    nop
    add [hl]
    ld d, e
    inc h
    sub a
    ld l, c
    dec e
    sub [hl]
    db $e4
    adc a
    dec h
    ret


    jr jr_004_5b72

    ld e, $1d
    inc h
    add hl, de
    inc de
    ld b, d
    ld [hl+], a
    ccf
    and e
    rst $20
    rst $00
    ld b, $00
    inc h
    jr nz, jr_004_5b03

jr_004_5b70:
    ld d, $11

jr_004_5b72:
    inc h
    jp z, Jump_000_298f

    ld a, b
    dec d
    rlca
    dec de
    inc e
    daa
    pop af
    inc bc
    rrca
    inc h
    jr nz, jr_004_5b70

    ld [bc], a
    ld a, a
    dec a
    add hl, bc
    ld hl, $ba04
    add l
    ldh a, [$2c]
    add hl, de
    jr jr_004_5bc9

    ld bc, $e93f
    inc b
    ld d, h
    adc a
    cp l
    dec h
    jr @+$04

    dec de
    ld [$1319], a
    ld l, a
    ccf
    rst $10
    dec b
    ld d, c
    inc hl
    dec d
    dec e
    xor $14
    ld de, $0d5b
    ld [hl], d
    adc a
    dec d
    ld b, h
    dec de
    rla
    db $dd
    inc e
    rlca
    db $e4
    dec e
    add hl, hl
    sbc [hl]
    ld bc, $1ba0
    ld [$f737], sp
    ld [bc], a
    dec c
    add hl, sp
    ld a, [de]
    cp b
    xor c
    adc h
    ld bc, $09c9
    ld l, a
    adc a

jr_004_5bc9:
    nop
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    ld d, b
    ld b, c
    adc a
    adc h
    sub d
    inc b
    ld bc, $0001
    stop
    ld c, $00
    add e
    nop
    db $10
    ld c, e
    ld c, h
    ld c, [hl]
    ret c

    inc bc
    nop
    dec c
    ld c, c
    ld c, d
    rst $20
    dec d
    or [hl]
    ld bc, $0d00
    ld de, $04f7
    rrca
    add b
    ld de, $e61f
    rst $20
    add sp, -$17
    ld [$78eb], a
    nop
    ld sp, $e03f
    pop hl
    add hl, bc
    ld [c], a
    db $e3
    db $e4
    push hl
    rlca
    rra
    dec b
    ld b, $07
    add a
    dec b
    rra
    ld [$0a09], sp
    add a
    dec b
    ccf
    dec bc
    inc c
    dec c
    sbc [hl]
    inc b
    rra
    inc de
    inc bc
    nop
    add e
    rra
    rla
    db $db
    inc bc
    nop
    dec c
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    ld bc, $0302
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [$0e0d], sp
    add hl, bc
    ld a, [bc]
    rrca
    db $10
    dec bc
    inc c
    ld de, $1312
    inc d
    add hl, de
    ld a, [de]
    dec d
    ld d, $15
    ld d, $17
    jr jr_004_5c73

    inc e
    jr nz, jr_004_5c78

    add hl, de
    ld a, [de]
    dec d
    ld e, $15
    ld d, $1f
    inc e
    dec de
    inc e
    ld hl, $2223
    inc h
    inc hl
    dec h
    inc h
    ld h, $27
    daa
    jr z, jr_004_5c99

    add hl, hl
    ld a, [hl+]

jr_004_5c73:
    dec hl
    inc l
    dec l
    ld l, $2f

jr_004_5c78:
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    ld bc, $0302
    inc b
    ld bc, $0305
    ld b, $05
    ld [bc], a
    ld b, $04
    dec [hl]
    scf
    inc bc
    inc b
    dec [hl]
    ld [hl], $03
    ld b, $36
    scf
    ld b, $04
    dec [hl]
    jr c, jr_004_5cd1

    ld a, [hl-]

jr_004_5c99:
    ld [hl], $38
    dec sp
    ld a, [hl-]
    ld bc, $393c
    ld a, [hl-]
    dec b
    inc a
    dec sp
    ld a, [hl-]
    dec a
    ccf
    ld a, $40
    ld bc, $3e3f
    ld b, c
    ld bc, $3942
    ld b, b
    dec b
    ld b, d
    dec sp
    ld b, b
    ld b, e
    daa
    ld b, h
    jr z, @+$29

    daa
    jr z, @+$2a

    daa
    ld b, l
    jr z, @+$48

    dec a
    ld b, d
    ld a, $40
    dec a
    ccf
    ld a, $40
    dec a
    ld [bc], a
    ld a, $04
    ld bc, $0347
    ld c, b

jr_004_5cd1:
    dec a
    dec b
    ld a, $06
    dec b
    ld b, a
    ld b, $48
    ld hl, $2223
    inc h
    inc hl
    dec h
    inc h
    ld h, $23
    ld c, c
    inc h
    ld h, $23
    ld c, d
    ld b, $04
    ld c, e
    ld c, c
    add hl, sp
    ld h, $01
    dec b
    inc bc
    ld c, h
    dec b
    ld [bc], a
    ld b, $4d
    ld bc, $3e02
    ld c, [hl]
    ld bc, $3e05
    ld c, a
    dec b
    ld [bc], a
    ld c, a
    ld c, [hl]
    dec b
    ld [bc], a
    ld d, b
    inc b
    ld bc, $5105
    ld b, $3d
    ld [bc], a
    ld d, c
    ld c, [hl]
    ld bc, $3e47
    ld d, d
    dec a
    dec b
    ld d, c
    ld c, a
    dec b
    ld b, a
    ld c, a
    ld d, d
    ld d, e
    ld d, h
    ld e, c
    ld e, d
    ld d, l
    ld d, [hl]
    ld e, e
    ld e, h
    ld d, a
    ld e, b
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, e
    ld h, h
    ld h, l
    ld h, b
    ld h, c
    ld h, [hl]
    ld e, e
    ld h, d
    ld h, e
    ld e, e
    ld h, a
    ld l, b
    ld l, c
    ld l, h
    ld l, l
    ld l, d
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    db $76
    ld [hl], a
    ld [hl], d
    ld [hl], e
    ld a, b
    ld e, e
    ld [hl], h
    ld [hl], l
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    add b
    ld e, e
    ld a, l
    ld a, [hl]
    ld e, e
    add c
    ld e, e
    ld a, a
    add d
    add e
    add h
    add l
    adc b
    adc c
    add [hl]
    add a
    adc d
    adc e
    add h
    add l
    adc h
    adc l
    add [hl]
    add a
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
    nop
    nop
    sbc b
    sbc d
    sbc b
    sbc c
    sbc e
    sbc h
    sbc e
    sbc l
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and d
    and e
    and d
    and e
    and h
    and [hl]
    and l
    and a
    and [hl]
    and [hl]
    and a
    and a
    and [hl]
    xor b
    and a
    xor c
    xor [hl]
    xor a
    or b
    or c
    ld sp, $3332
    inc [hl]
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    ld sp, $3332
    inc [hl]
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    rlca
    ld [$0e0d], sp
    add hl, bc
    ld a, [bc]
    rrca
    db $10
    dec bc
    inc c
    ld de, $ae12
    xor a
    or b
    or c
    dec [hl]
    scf
    inc bc
    inc b
    ld bc, $0302
    inc b
    ld bc, $0305
    ld b, $3d
    ld [bc], a
    ld a, $04
    ld bc, $0347
    ld c, b
    dec a
    dec b
    ld a, $06
    dec b
    ld b, a
    ld b, $48
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    sbc d
    ld d, a
    ld e, b
    ld e, l
    ld e, [hl]
    ld [hl], b
    ld [hl], c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    dec b
    db $10
    add b
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
    pop de
    ld [bc], a
    call nc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    pop de
    ld [bc], a
    call nc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld bc, $0101
    ld bc, $0002
    ld bc, $0101
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $28
    inc h
    ld hl, $0202
    ld [bc], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    ld a, [$0000]
    ld [bc], a
    jp hl


    ld [hl], $75
    sbc c
    and a
    ld [bc], a
    ld bc, $0001
    rst $38
    nop
    ld c, $00
    add b

jr_004_5e9a:
    nop
    rst $38
    ld b, h
    inc e
    ld e, $1f
    inc e
    db $10
    rra
    ld e, $1c
    ld b, $73
    inc e
    ld [bc], a
    adc a
    ld [$041c], sp
    ld b, d
    ld [$1e04], sp
    ld a, [de]
    ld bc, $e415
    ld de, $0b3d
    dec b
    add hl, hl
    scf
    inc de
    cp h
    inc c
    daa
    inc bc
    inc de
    ld b, h
    sbc $00
    rla
    daa
    db $e3
    ld hl, $c41f
    ld a, [bc]
    ld hl, $1e44
    ret z

    dec b
    ld e, $52
    dec b
    daa
    ld l, c
    add hl, de
    cp l
    add e
    rla
    ld [hl], a
    rst $28
    ld [bc], a
    inc de
    inc bc
    ld c, b
    rla
    ld d, $44
    dec sp
    dec a
    ld d, l
    ld a, b
    inc b
    ld e, h
    nop
    ld d, a
    nop
    ld h, a
    inc a
    nop
    nop
    sbc h
    dec d
    ld l, l
    ld d, a
    ld hl, $0af2
    jr nz, jr_004_5f4f

    adc d
    and d
    ld d, a
    inc d
    add hl, de
    ld d, a
    ccf
    dec b
    ld c, h
    ld a, $25
    inc bc
    ld a, [c]
    jr c, jr_004_5e9a

    dec a
    ld h, a
    ld c, c
    ld d, [hl]
    cp h
    add hl, bc
    dec b
    inc de
    nop
    ld d, [hl]
    ld a, e
    nop
    ld e, $27
    add $06
    ld l, d
    jr nz, @+$47

    nop
    dec a
    ld hl, $0755
    ld b, e
    and $06
    ld [hl+], a
    ld b, c
    nop
    di
    dec bc
    cp $3e
    rst $18
    inc bc
    cp $03
    cp h
    inc b
    dec l
    nop
    ld d, [hl]
    ld a, e
    ld d, [hl]
    inc b
    ld b, $3f
    ld c, [hl]
    ccf
    ld h, b
    ld a, [hl]
    db $fd
    ld [hl-], a
    and d
    ccf
    inc a
    ld d, l
    ld [$047c], sp
    ld b, b
    ld l, h
    or d
    ld d, h
    ld c, a
    dec b
    ccf
    ld b, $07
    ld d, $19

jr_004_5f4f:
    or l
    ld e, $21
    dec b
    jr nz, jr_004_5fb5

    inc bc
    ld b, [hl]
    ld hl, $f155
    inc b
    dec de
    inc e
    ld hl, $1608
    inc h
    ld [bc], a
    inc e
    jr @-$20

    ld [de], a
    ld b, $07
    di
    dec sp
    and e
    ccf
    rst $08
    ld [$57f8], sp
    dec a
    call c, $f7b3
    jp hl


    ld l, l
    rrca
    ld d, l
    ld [$0a09], sp
    sub [hl]
    push de
    db $fd
    ld a, $10
    ld [$ec05], sp
    ld a, c
    ld e, $45
    inc e
    rst $38
    daa
    ld sp, $6570
    rst $30
    ld d, a
    dec a
    rlca
    ccf
    ld d, l
    dec bc
    inc c
    dec c
    xor l
    ld b, b
    xor b
    cp [hl]
    pop af
    inc b
    ld sp, $0401
    ld b, [hl]
    ld c, b
    pop af
    inc b
    ld [hl-], a
    rst $00
    or a
    ld c, b
    ld b, l
    inc sp
    ld b, a
    add hl, sp
    ld [c], a
    inc [hl]
    call nz, Call_000_2a27
    ld b, a
    nop
    dec l
    cp l
    dec de
    adc a

jr_004_5fb5:
    dec c
    nop
    ret nz

    rst $30
    ld d, a
    inc a
    ld b, h
    ld e, $63
    dec e
    nop
    ld hl, $e455
    ld d, l
    cp e
    ccf
    inc a
    add d
    rlca
    ld d, l
    cpl
    db $fd
    ld [hl-], a
    rrca
    ld d, l
    adc a
    cp a
    dec l
    inc [hl]
    ld [de], a
    ld d, [hl]
    jr z, jr_004_6002

    inc l
    nop
    ld l, $e9
    sbc d
    rla
    sbc [hl]
    ld a, [c]
    inc b

jr_004_5fe0:
    ld hl, sp-$65
    dec bc
    jp nc, Jump_004_7e01

    db $db
    db $76
    ld b, $9d
    rst $30
    call nc, Call_004_59f8
    or [hl]
    ld b, c
    ld c, $41
    rra
    dec d
    ld d, l
    rrca
    inc hl
    dec b
    jp nc, Jump_000_1098

    dec a
    ld [hl+], a
    inc hl
    ld bc, $01f7
    ld c, e

jr_004_6002:
    xor h
    ld bc, $2806
    ld a, h
    ld d, a
    ld [de], a
    push af
    ei
    ld d, h
    ld e, a
    inc a
    ld l, a
    sbc h
    ld [hl], d
    dec b
    rrca
    and l
    pop bc
    jr z, jr_004_5fe0

    cp c
    dec c
    ld [hl], $57
    ld b, b
    nop
    ld c, a
    ld c, [hl]
    rlca
    ld a, e
    rlca
    inc hl
    cp $e3
    dec de
    sbc c
    cp a
    add sp, -$06
    inc b
    and $20
    dec a
    ld e, h
    dec a
    dec a
    ld a, $5a
    inc b
    ld b, d
    ldh a, [rNR11]
    sub c
    inc h
    ld b, e
    dec h
    ld bc, $2ffe
    ld e, h
    inc a
    sbc l
    ld d, e
    cp h
    ccf
    xor h
    cp [hl]
    sub b
    rrca
    cp $94
    ld [hl], b
    ld [bc], a
    add hl, de
    ld a, $02
    add [hl]
    nop
    add hl, de
    ld d, e
    inc a
    rlca
    sbc [hl]
    rrca
    ld c, c
    cp $75
    ld bc, $ea4f
    ld bc, $0655
    add hl, bc
    ccf
    ld e, l
    ld a, $3c
    inc d
    cp $58
    ld [de], a
    rst $30
    inc b
    dec b
    and l
    dec b
    nop
    and e
    db $fc
    ld a, c
    cp $03
    jr nz, jr_004_60ce

    rst $30
    jr nz, @-$45

    ld c, a
    ld a, $a9
    cp d
    inc a
    sbc $b7
    add hl, bc
    rrca
    ld e, b
    add hl, hl
    cp $04
    sub l
    ld de, $3d3c
    ld e, $4a
    jr jr_004_60cc

    adc a
    rlca
    ccf
    inc b
    and b
    cp $57
    ld b, b
    add a
    dec l
    cp l
    ld [$2a05], sp
    cp $d5
    ld [$fec9], a
    ld e, b
    sub d
    ld [c], a
    ld e, b
    ld b, $fe
    ccf
    ccf
    ld e, e
    inc l
    nop
    ld a, d
    cpl
    jr jr_004_60ec

    ld e, e
    db $fc
    rst $30
    dec l
    cp $52
    db $ed
    dec a
    sbc l
    add hl, bc
    or d
    dec a
    call nz, $8805
    rrca
    add hl, hl
    ld b, c
    db $76
    inc b
    ld d, a
    db $dd
    ld a, a
    ld hl, $4a3d
    nop
    pop de

jr_004_60cc:
    rra
    inc hl

jr_004_60ce:
    rlca
    inc a
    cp $02
    reti


    ld d, a
    ld a, [$5304]

jr_004_60d7:
    jp hl


    ld d, a
    ld hl, $5527
    add hl, sp
    ld [hl+], a
    nop
    cpl
    ld c, e
    inc h
    ld c, e
    ld l, $57
    rst $20
    ld c, $37
    ld a, [hl-]
    jr nz, jr_004_60ec

    cp a

jr_004_60ec:
    ld [$a004], a
    db $fd
    ccf
    ld e, [hl]
    db $10
    inc a
    ld b, h
    ld b, a

jr_004_60f6:
    nop
    dec e
    ld c, b
    ld b, [hl]
    ld b, [hl]
    dec h
    sbc c
    ld c, b
    ld b, [hl]
    dec a
    ld [bc], a
    ld bc, $4a0c
    rlca
    ld a, [bc]
    dec bc
    ld b, a
    ld b, [hl]
    ld b, a
    ld a, e
    inc bc
    ld b, $15
    sbc $06
    dec bc
    ld [bc], a
    inc d
    rst $30
    rlca
    ld c, $5a
    ret


    ld b, [hl]
    db $eb
    cp b
    db $ed
    ld c, b
    rlca
    inc e
    push de
    db $10
    ld l, [hl]
    ei
    dec b
    rst $20
    ld de, $4e1c
    inc e
    ld a, d
    ret nc

    ld [$f421], sp
    ld [$2900], sp
    ld sp, $b935
    dec b
    dec l
    rst $00
    ld a, [bc]
    ld b, h
    add hl, hl
    daa
    ld b, e
    dec [hl]
    dec e
    jr c, jr_004_60f6

    ld bc, $9147
    ld c, e
    ld b, e
    dec l
    jr jr_004_60d7

    nop
    ld a, $42
    rlca
    ld e, c
    adc e
    ld a, [bc]
    rst $08
    cpl
    ld bc, $0e29
    ld b, [hl]
    ld c, $81
    nop
    ld b, h
    dec a
    ld a, $3f
    inc a
    push de
    sbc e
    db $db
    inc b
    ld [$049d], sp
    cp c
    sbc b
    inc c
    xor $70
    inc de
    add l
    ei
    dec a
    add hl, hl
    inc de
    dec bc
    daa
    nop
    cp l
    ld b, h
    ld h, e
    ld [bc], a
    rrca
    ld c, b
    dec e
    ld a, b
    inc b
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    ld a, [$0000]
    ld [bc], a
    sbc l
    ld [hl], c
    ldh a, [$8f]
    add hl, sp
    inc b
    ld bc, $0001
    rst $38
    nop
    ld c, $00
    add a
    nop
    rst $38
    ld b, h
    inc e
    cp l
    ld [$0a00], sp
    ld de, $caeb
    nop
    rlca
    db $e3
    ld b, h
    inc a
    ld d, l
    ld l, a
    inc b
    inc b
    ld e, $00
    ld d, a
    inc a
    rlca
    db $10
    rst $30
    rlc b
    sbc [hl]
    ld bc, $3ce3
    inc c
    cp $1e
    dec b
    ld b, $07
    reti


    cp $93
    db $e3
    jp $fe0d


    ld [$0a09], sp
    jp nc, $fed9

    ld a, b
    db $e3
    dec c
    cp $0b
    inc c
    ld a, b
    dec c
    ld sp, $5058
    ld b, b
    rrca
    ld b, b
    ld d, d
    ld d, e
    ld d, l
    dec e
    ld a, e
    ld a, [hl+]
    ld hl, $d229
    ld c, h
    cp $0f
    db $e3
    inc a
    ccf
    ld d, l
    ld b, $81
    ld [$2057], a
    ld b, l
    dec d
    inc de
    dec a
    ld hl, $3055
    ld e, b
    rlca
    nop
    ld d, c
    adc a
    inc e
    dec a
    ld d, a
    ccf
    dec d
    dec a
    add hl, hl
    ld [bc], a
    ld c, $00
    db $e4
    dec a
    db $fd
    jr nz, @-$54

    ld a, [$8a1b]
    db $fc
    ld a, [$3c0e]
    ld [$3202], a
    cp $41
    db $f4
    ld e, $ff
    or a
    add hl, hl
    sbc [hl]
    db $10
    jr z, jr_004_621e

    daa
    rla

jr_004_621e:
    and b
    ld d, c
    ld c, [hl]
    ld c, a
    rrca
    ld h, a
    ld bc, $0f00
    pop bc
    add hl, de
    ld d, h
    ld d, a
    ld b, c
    ld b, b
    ld b, $19
    nop
    inc a
    dec a
    ld a, h
    ld d, l
    rrca
    ld a, $ea
    ld [bc], a
    ld [de], a
    rrca
    rst $18
    ld [bc], a
    ld d, l
    inc de
    ld bc, $3fd3
    ld b, c
    inc bc
    ld b, c
    ld b, c
    ld b, c
    rst $20
    ld bc, $5010
    adc a
    ld de, $572b
    dec a
    inc de
    ld a, c
    cp $12
    push hl
    ld [bc], a
    ld a, [c]
    inc de
    ld a, b
    inc a
    sub c
    ld [hl], a
    ld b, c
    ld sp, hl
    dec b
    ld a, [hl]
    ld d, a
    db $e3
    ld bc, $2282
    inc hl
    adc $06
    jr nc, jr_004_6283

    adc $81
    ld b, b
    ld e, $00
    ld d, d
    ld d, l
    ld [hl+], a
    ld h, a
    db $e3
    ld h, h
    ld d, l
    rst $00
    ld [de], a
    add d
    ld b, b
    inc a
    db $fd
    ld b, $37
    ld d, b
    ld hl, $e6df
    rst $20
    ld [hl], d

jr_004_6283:
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$f13f]
    ld bc, $4efe
    ld c, a
    push af
    ld a, [hl-]
    inc bc
    db $ec
    ld a, [$b63c]
    ld [hl], l
    rst $18
    rst $38
    ld bc, $0010
    ld d, $b0
    ld e, h
    inc h
    dec h
    push af
    ld [bc], a
    ld l, $4f
    ld a, [c]
    ld h, e
    xor h
    inc a
    ld a, $9f
    add h
    db $10
    cp a
    rst $08
    inc bc
    ld d, c
    add sp, $08
    ld d, a
    ret z

    xor c
    ld e, b
    or d
    rst $38
    ld e, b
    and c
    dec b
    ld c, a
    ld d, c
    db $e3
    ld bc, $3c30
    dec a
    call c, $fe04
    inc l
    ld a, [hl]
    dec a
    ld [de], a
    db $fd
    ld d, l
    ld a, $6b
    ld h, $21
    inc hl
    inc a
    dec hl
    rst $28
    dec bc
    ld a, [hl]
    inc bc
    ld h, a
    inc bc
    nop
    ld d, c
    and h
    inc bc
    inc bc
    ld e, l
    ld a, $40
    ld d, l
    inc bc
    rst $20
    ld b, a
    inc a
    inc a
    rst $00
    ld [bc], a
    ld [hl], e
    rst $08
    ld bc, $6f7f
    xor h
    ld bc, $6183
    ld [hl+], a
    inc hl
    push af
    inc bc
    cp $4a
    ld a, [c]
    ld d, a
    add hl, de
    db $fc
    or c
    ld a, $08
    rst $08
    ld l, a
    jp z, Jump_000_0650

    inc a
    ld a, [hl]
    ccf
    ld bc, $50e8
    adc b
    dec h
    ld b, e
    ld b, b
    ld h, h
    rst $30
    ld bc, $32df
    ld a, [hl]
    nop
    ld d, c
    cp e
    ld a, $4a
    jr nz, jr_004_6349

    cp $3f
    dec bc
    ld sp, $402b
    ld a, $c7
    ld c, $55
    jp z, $fb16

    inc a
    adc c
    ccf
    inc a
    ld e, $44
    ld d, b
    ld bc, $9c01
    ld a, d
    ld a, [hl-]
    ld [bc], a
    inc bc
    rrca
    ld h, $51
    ld [bc], a
    dec hl
    inc bc

jr_004_6349:
    ld e, b
    ld a, d
    inc [hl]
    ld [bc], a
    ld e, h
    xor e
    ld [hl], e
    db $e4
    inc bc
    ld e, h
    ld b, c
    rst $08
    dec de
    ld d, a
    ld [bc], a
    sub c
    ld h, b
    ld h, $24
    dec h
    ld a, [$fe03]
    and [hl]
    ld a, [c]
    ld [hl-], a
    db $fd
    ccf
    or d
    or c
    ld [bc], a
    ld a, e
    cp h
    and $01
    dec [hl]
    or d
    add sp, $3d
    ld l, b
    jr jr_004_6349

    di
    ld a, $00
    dec a
    ld [bc], a
    sbc a
    ld [hl-], a
    ld bc, $be59
    inc b
    add hl, bc
    inc de
    db $ec
    inc hl
    ld d, a
    dec a
    xor h
    ld e, c
    ldh [rTAC], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    sbc [hl]
    inc c
    rst $38
    dec a

jr_004_6391:
    add hl, bc
    cp $7a
    inc a
    ld bc, $6f01
    ld h, b
    ld [bc], a
    ld a, e
    inc bc
    inc c
    ld c, $de
    rlca
    cp $05
    ld e, h
    inc a
    inc a
    inc a
    ld [bc], a
    and h
    nop
    db $fd
    ld [bc], a
    sub c
    add hl, sp
    and d
    or e
    nop
    or e
    db $fd
    dec a
    or d
    nop
    ld c, d
    ld h, h
    nop
    ld a, $ab
    dec bc
    ld l, h
    add sp, $3e
    or e
    jr jr_004_6391

    ld [bc], a
    db $fc
    nop
    ld a, [c]
    ld [bc], a
    inc d
    dec a
    sbc [hl]
    inc c
    ld [bc], a
    inc b
    ld a, [hl]
    ld c, d
    inc b
    dec h
    db $ed
    ld bc, $02ef
    inc l
    dec bc
    inc l
    nop
    ld a, $4c
    and l
    dec b
    dec a
    inc bc
    ld bc, $3701
    ld h, b
    cp l
    ld [bc], a
    inc bc
    inc c
    ld c, $ef
    inc b
    ld e, h
    ld [$690f], sp
    inc a
    inc a
    ld c, d
    dec b
    ld d, d
    dec h
    adc e
    ret


    inc d
    inc de
    ld a, c
    ld a, $38
    xor b
    ld a, $09
    ccf
    add l
    inc b
    ld b, a
    add hl, bc
    ld a, [bc]
    inc bc
    ld a, $3f
    inc h
    cp [hl]
    ld a, $c4
    rst $30
    ld d, $00
    ld l, b
    ldh [rOBP1], a
    inc sp
    inc b
    inc b
    ld a, $3e
    ld l, a
    rst $30
    ld h, h
    ld c, c
    inc de
    add l
    dec h
    inc de
    inc h
    add hl, bc
    inc d
    add d
    ld e, $3e
    jp z, Jump_004_7b26

    dec b
    dec bc
    ld b, [hl]
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    ld a, [$0000]
    inc bc
    cp b
    or d
    cp l
    db $fc
    ld c, e
    inc b
    ld bc, $0001
    rst $38
    nop
    ld c, $00
    add c
    nop
    rst $38
    ld c, c
    ld e, $1f
    inc e
    and h
    nop
    inc b
    db $e4
    inc bc
    jr z, jr_004_6458

    dec c
    rra
    sub b
    ld b, $1e
    ld b, h
    add a

jr_004_6458:
    inc b
    ld a, [bc]
    dec c
    ld b, h
    inc e
    inc h
    dec e
    ld e, $20
    add a
    inc b
    and [hl]
    inc bc
    inc l
    dec bc
    sbc d
    ld a, [bc]
    sub h
    dec sp
    rlca
    ld [hl], $44
    ld b, h
    rlca
    inc bc
    ld h, a
    rra
    ld b, h
    ld b, h
    adc b
    ld bc, $1f14
    ld e, $29
    ld d, $44
    ld [$5027], sp
    inc h
    dec c
    dec de
    and h
    dec b
    ld h, $1b
    add hl, de
    or b
    ld h, c
    inc e
    inc e
    sbc e
    dec l
    sbc [hl]
    dec b
    inc bc
    ld [hl], d
    sbc c
    ld d, b
    ld e, $eb
    add hl, bc
    add a
    inc sp
    add [hl]
    add hl, de
    ld b, [hl]
    jr c, jr_004_649e

jr_004_649e:
    rra
    inc bc
    ld e, $e2
    inc bc
    inc e
    ld l, d
    rlca
    ld b, d
    dec bc
    inc h
    ld bc, $1c0b
    ld c, c
    ld a, $55
    db $db
    inc b
    call nz, Call_000_0012
    ld d, a
    ld a, $cf
    ld [$163c], sp
    ld a, b
    daa
    ld c, $3c
    inc a
    ccf
    db $e3
    jr c, jr_004_64ff

    adc a
    inc bc
    ccf
    dec b
    ld h, a
    dec a
    ld c, $3e
    add a
    inc bc
    dec c
    ld a, $41
    ccf
    sub b
    inc bc
    dec c
    dec a
    cpl
    pop af
    dec l
    nop
    daa
    ld a, [hl+]
    sub e
    nop
    dec l
    ld c, b
    dec b
    nop
    jr jr_004_6552

    ld c, e
    nop
    dec c
    ld b, e
    inc bc
    inc e
    sbc h
    rlca
    ld l, l
    ld a, c
    dec a
    rla
    cp $41
    jr nc, jr_004_64fb

    ld b, c
    ld d, l
    ld d, [hl]
    and a
    rlca
    cp h
    inc b
    dec b

jr_004_64fb:
    add hl, de
    cp $41
    db $e3

jr_004_64ff:
    dec a
    ld a, $9b
    adc $07
    jp $6505


    ld b, c
    ld b, c
    ld b, c
    rst $00
    inc b
    dec c
    inc bc
    ld b, c
    cp l
    ld de, $1f1b
    nop
    ld b, e
    adc [hl]
    jr z, jr_004_6543

    ld h, $00
    ld l, $05
    sub c
    nop
    add hl, de
    ld [$0313], a
    rra
    sbc a
    ld c, h
    ld b, e
    rla
    adc c
    push de
    ld d, a
    ld [bc], a
    adc a
    ld [$5502], sp
    ld l, $cf
    sub e
    ld d, a
    rlca
    call nc, Call_000_00f9
    ld a, c
    ld bc, $3013
    ld [bc], a
    ei
    cpl
    db $fc
    jp $fe28


    dec b

jr_004_6543:
    ld b, $07
    rst $18
    ld e, h
    cp $07
    cp h
    ld sp, hl
    ld a, b
    cp $1a
    or b
    cp $08
    add hl, bc

jr_004_6552:
    ld [hl], c
    ld a, [bc]
    cp $3d
    rst $28
    ld d, a
    cp $0d
    ld a, c

jr_004_655b:
    nop
    ld l, a
    cp $1a
    ldh [$03], a
    rla
    nop
    dec bc
    inc c
    dec c
    ld [hl], h
    ld d, a
    ld a, [c]
    sbc c
    sub $67
    reti


    ld d, a
    sub d
    inc b
    ld c, h
    ld d, l
    ld a, c
    rrca
    ld b, e
    cp $55
    rst $28
    ld [bc], a
    ld h, e
    ld l, e
    dec a
    cp $1a
    inc bc
    add hl, hl
    adc c
    rrca
    ld d, a
    ld b, b
    ld de, $3c00
    ld [hl], b
    ld sp, hl
    jr nz, @+$21

    inc e
    ld hl, $031b
    jr nz, jr_004_65ad

    inc b
    add c
    ld a, [de]
    jr nz, @+$1f

    rra
    ld e, $0a
    rlca
    ld h, d
    dec e
    dec de
    ld d, a
    jr nz, jr_004_655b

    ld c, b
    ret z

    inc de
    ld c, c
    daa
    ld hl, $1f04
    ld d, a
    ld a, $1c
    ld [bc], a
    add hl, sp

jr_004_65ad:
    inc hl
    ld c, $d5
    ld a, [hl]
    ld [hl], c
    ldh [$0a], a
    pop hl
    rst $00
    inc bc
    ld [c], a
    dec e
    inc bc
    db $e3
    ld e, e
    sub b
    inc h
    inc h
    rlca
    ld b, d
    jr nz, jr_004_6627

    rst $00
    ld e, e
    ld d, c
    sub b
    ld bc, $503b
    dec c
    or b
    ld c, e
    ld d, a
    ld d, b
    ld a, e
    ld b, b
    dec b
    ld e, b
    pop hl
    add hl, bc
    adc h
    ld d, b
    ld hl, $5107
    ld d, l
    rst $20
    inc h
    cp $1a
    sub c
    rlca
    add hl, hl
    add hl, de
    add hl, sp
    db $f4
    nop
    ccf
    and l
    ld [bc], a
    ld [hl], a
    ld sp, hl
    ld bc, $08f7
    ld a, $ba
    sbc h
    dec a
    rst $20
    ld bc, $129e
    adc b
    ld d, a
    ld b, $1c
    ld l, a
    ld d, a
    inc l
    inc de
    ld e, $24
    ld d, a
    ccf
    ld b, $49
    inc [hl]
    dec a
    ld a, $78
    db $10
    rst $38
    ld e, b
    db $fd
    db $e3
    add l
    ld a, $dc
    inc bc
    dec c
    sub d
    ld a, h
    ld d, l
    dec c
    ld b, h
    scf
    inc de
    add hl, sp
    ld c, [hl]
    ld c, a
    ei
    dec d
    inc a
    add $0b
    rst $38
    add hl, hl
    inc l
    nop
    ld c, l
    cpl

jr_004_6627:
    dec b
    rst $20
    ld [bc], a
    cp $1a
    and c
    dec bc
    sub a
    cp $08
    add e
    ld c, c
    ld a, d
    cp $d7
    rlca
    db $fd
    inc b
    ld b, e
    rra
    xor [hl]
    db $ed
    inc e
    rst $20
    dec b
    ld h, e
    ld e, b
    rst $18
    ld b, $d0
    add sp, $05
    jr nc, jr_004_66c8

    ld d, a
    dec b
    db $fc
    ret


    ld [bc], a
    dec d
    inc a
    adc l
    ld [$4ccf], a
    ld b, $70
    dec e
    ld e, e
    dec a
    inc a
    add hl, sp
    ld d, d
    ld d, e
    add hl, bc
    adc $cf
    rst $38
    add sp, $26
    nop
    dec c
    inc hl
    dec a
    ccf

jr_004_6668:
    ld a, d
    add hl, de
    inc bc
    ld e, c
    or h
    db $ed
    db $e3
    xor c
    and d
    xor e
    db $db
    ld h, l

jr_004_6674:
    rst $08
    ld [bc], a
    inc h
    ld d, b
    ld bc, $388f
    ld bc, $257c
    ld bc, $3f3f
    ld a, [de]
    rrca
    dec h
    cp e
    ld a, [de]
    and e
    db $fd
    ld [hl+], a
    nop
    inc a
    ld de, $0187
    ld a, a
    rlca
    ld [$fe1f], sp
    dec a
    ld a, $0c
    and l
    db $fd
    adc a

Jump_004_6699:
    inc b
    ld e, b
    ld d, a
    ld b, $dd
    dec de
    cp a
    rst $20
    dec c
    xor b
    db $f4
    dec a
    and d

jr_004_66a6:
    db $e3
    jr z, jr_004_6674

    ld hl, sp+$05
    db $ed
    and b
    ldh a, [$3c]
    ld b, c
    rrca
    ret z

    nop
    ld b, c
    inc hl
    db $fd
    dec a
    ld c, c
    ld l, d
    dec c
    ld c, [hl]
    inc c
    rst $08
    dec bc
    ld d, l
    dec b
    pop de
    db $ed
    inc e
    rra
    jr jr_004_6668

    xor [hl]
    ld c, d

jr_004_66c8:
    add h
    nop
    inc a
    dec a
    sbc h
    inc h
    jr nz, @+$7b

    ld d, l
    ld [bc], a
    add d
    dec a
    jr z, jr_004_66a6

    ld a, l
    ccf
    ld a, [de]
    dec a
    and d
    ld a, [$768e]
    ld l, c
    add [hl]
    add sp, $79
    ld a, [hl-]
    ld bc, $ff55
    rlca
    inc b
    dec b
    ld b, d
    ld d, a
    nop
    ld b, a
    ld a, [de]
    cp c
    ld bc, $675a
    ld hl, sp+$05
    ld d, a
    ld d, a
    ld d, a
    ld c, e
    ld a, $23
    add a
    ld b, b
    dec h
    call c, $4f00
    db $db
    sub l
    ld b, $74
    ld d, a
    ld [de], a
    ld [hl+], a
    and d
    or $09
    sub l
    ld d, c
    sbc h
    jp nc, $c650

    ld [c], a
    ld [hl], h
    ld a, $54
    ld b, d
    db $dd
    pop af
    ld e, $8a
    inc bc
    dec c
    ld [hl], h
    ld a, $5b
    ld bc, $ed4a
    daa
    ld d, h
    inc de
    ld hl, $afd5
    db $10
    or [hl]
    ld d, c
    and l
    jr nz, jr_004_6742

    and e
    ld e, b
    ld h, a
    sbc a
    cp l
    ld bc, $1c1b
    cp $60
    nop
    dec a
    inc a
    inc a
    ld hl, sp+$03
    ld [hl], $f8
    ld [bc], a
    ld h, a
    add a

jr_004_6742:
    ld [hl], d
    sub b
    inc bc
    ld c, $3e
    ld [hl], b
    ld a, $3e
    inc a
    inc bc
    dec l
    add a
    xor b
    add [hl]
    rlca
    ld a, $1e
    dec a
    ld e, b
    nop
    ld [$2142], sp
    ld e, b
    nop
    inc e
    inc b
    jr z, @+$40

    dec a
    sub a
    ld bc, $5bd2
    and d
    db $ec
    ld bc, $a74d
    or c
    and c
    ld [bc], a
    dec c
    inc e
    add hl, bc
    sub h
    ld [$13f1], a
    ld e, l
    ld a, $3c
    dec h
    inc c
    dec a
    sub l
    ld a, [hl-]
    ccf
    and h
    add hl, bc
    ld [de], a
    ld c, d
    ld a, $24
    ld c, $8a
    sub b
    nop
    ccf
    dec a
    rst $30
    ld bc, $ac13
    ld de, $cf00
    add c
    sbc c
    ccf
    ld a, $ce
    inc bc
    ld b, h
    ld e, d
    ld d, c
    db $10
    inc b
    dec a
    ld b, l
    ld [$203d], sp
    inc hl
    ld [hl], b
    ccf
    and d
    add b
    dec a
    and d
    inc l
    ld b, l
    jr nz, @+$40

    ld b, l
    dec a
    ld [de], a
    rla
    dec a
    ld l, c
    add hl, de
    ret c

    cp c
    inc d
    ld de, $bc25
    ld l, b
    inc [hl]
    ld d, d
    ld h, l
    ld [bc], a
    ld l, c
    cp l
    rra
    or h
    ccf
    ld [bc], a
    ld h, e
    reti


    ld b, c
    sbc [hl]
    ld [de], a
    inc bc
    dec c
    sbc d
    call nc, Call_000_0159
    inc a
    inc [hl]
    ld d, c
    or d
    sub $3f
    ld h, h
    db $dd
    inc a
    ret


    add sp, $3d
    ld [de], a
    sub h
    dec a
    add hl, hl
    and l
    ccf
    ld a, b
    ret


    ret z

    jp nz, Jump_000_3ed3

    and b
    call c, Call_000_3c3e
    or h
    ld c, d
    and $16
    add hl, de
    dec a
    ld c, b
    inc de
    ld c, b
    ccf
    ldh a, [rP1]
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    ld h, l
    pop de
    ld [$b001], sp
    ld [bc], a
    ld bc, $0001
    stop
    ld c, $00
    add [hl]
    nop
    db $10
    ld b, h
    ld c, c
    ld bc, $4519
    ld b, l
    ld hl, $2009
    sub b
    dec b
    ld c, c
    inc c
    inc bc
    ld b, h
    ld b, e
    ld c, e
    ld [de], a
    ld de, $9812
    add hl, de
    dec b
    ld c, e
    ld b, d
    and a
    ld c, $26
    ld h, $00
    db $e3
    db $10
    ld a, $dc
    inc bc
    ld c, $10
    dec a
    inc a
    inc a
    inc b
    ld c, $8f
    nop
    ccf
    ccf
    ld b, $1e
    rrca
    dec a
    ld a, $06
    rrca
    ld a, c
    ld b, c
    rlca
    cpl
    ld [bc], a
    rst $20
    ld [$3d0f], sp
    adc a
    rlca
    rrca
    ld a, $51
    inc b
    ld bc, $500e
    ld b, b
    ld c, c
    ld b, e
    ld d, d
    ld d, e
    ld h, c
    dec c
    ld c, [hl]
    ld c, a
    inc c
    and b
    ld de, $9a40
    nop
    sbc [hl]
    dec c
    rlca
    ld bc, $00f0
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    rlca
    cp h
    nop
    nop
    ld [bc], a
    cp a
    ld l, $b5
    or d
    or e
    inc b
    ld bc, $0001
    ld a, [hl-]
    nop
    ld [hl+], a
    nop
    add b
    nop
    ld a, [hl-]
    ld b, h
    ld e, $1c
    inc e
    rra
    jp nc, Jump_004_4802

    dec b
    rlca
    ld e, $87
    ld [$0484], sp
    nop
    ld hl, $2003
    dec b
    ld h, $1e
    rra
    inc e
    sbc b
    jr z, jr_004_68a7

    rra
    ld b, h
    add hl, sp
    ld a, $55

jr_004_68a7:
    ccf
    rst $20
    dec d
    nop
    ld d, [hl]
    rrca
    inc bc
    ld d, a
    ld a, $09
    ld e, $16
    inc a
    ccf
    add hl, de
    add hl, sp
    add c
    nop
    ld d, a
    ccf
    daa
    ld b, c
    adc a
    inc bc
    nop
    ccf
    dec a
    ld e, $3c
    add hl, sp
    inc a
    ld a, [bc]
    ld [hl], e
    ld b, l
    ld a, b
    ld hl, $3a07
    ld d, a
    jr nz, jr_004_6908

    ld e, $21
    ld b, $20
    ld a, b
    inc e
    inc b
    dec b
    inc e
    ld b, e
    add b
    ld a, [de]
    rrca
    ld b, b
    rrca
    add d
    nop
    ld b, b
    ld c, a
    add hl, sp
    dec e
    ld e, b
    ld [hl], d
    rst $20
    dec a
    and h
    dec b
    sbc $0b
    ld [bc], a
    add hl, sp
    inc a
    ld [hl+], a
    inc hl
    ld c, $35
    ld e, b
    and e
    rst $20
    rrca
    call c, Call_000_3302
    cp c
    ld [hl], e
    ldh [$e7], a
    pop bc
    ld [bc], a
    add hl, sp
    inc h
    dec h
    nop
    ld h, $e8
    dec c

jr_004_6908:
    ld l, a
    inc l
    inc bc
    dec a
    inc sp
    pop af
    ld [bc], a
    ld a, c
    ld b, [hl]
    inc e
    inc l
    xor b
    ld e, $15
    inc e
    dec e
    dec e
    xor e
    and a
    ld b, c
    or d
    nop
    ld c, b
    inc a
    call Call_000_3448
    ld hl, $0001
    adc a
    inc sp
    ccf
    inc bc
    rrca
    ccf
    inc a
    ccf
    nop
    add hl, bc
    sub $6f
    sbc $3c
    inc b
    rlca
    and c
    inc b
    rrca
    ld b, c
    inc b
    or e
    rrca
    rst $08
    ld b, l
    inc a
    ld de, $15cf
    ld b, c
    rlca
    ccf
    add hl, sp
    ld e, b
    ld bc, $c967
    ld [bc], a
    inc bc
    rra
    ld de, $193e
    sbc [hl]
    ld d, a
    inc a
    ld [bc], a
    and a
    ldh a, [rDIV]
    adc h
    ld a, $44
    ld hl, $0346
    or c
    ld a, [hl]
    ld b, [hl]
    ld [bc], a
    cp l
    db $e3
    nop
    ld b, b
    ret z

    inc b
    add hl, sp
    ld b, d
    inc hl
    dec d
    ld a, $00
    ret z

    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    ld a, e
    ld a, $02
    rst $20
    rst $30
    ld bc, $bc6f
    dec b
    inc l
    dec b
    or l
    dec a
    ld hl, sp+$04
    ld [hl], a
    sub d
    add hl, sp
    ld l, a
    rst $20
    ld [bc], a
    ccf
    add hl, de
    ld b, b
    ld [bc], a
    dec a
    inc e
    ld e, b
    ld [bc], a
    ld a, h
    xor $05
    xor l
    db $dd
    ld l, e
    sub d
    ld l, l
    dec a
    sub $eb
    add l
    ld c, e
    ld d, a
    ld h, $23
    dec c
    ld a, e
    ld d, a
    inc bc
    ld [$09f0], sp
    ld a, [hl-]
    inc a
    ld b, h
    inc e
    ld a, [hl-]
    ld e, $46
    ld d, l
    sub c
    ld b, l
    cp b
    push bc
    ld [$321f], sp
    ld b, e
    ld [bc], a
    nop
    ld b, d
    or a
    ret z

    ld h, l
    ld [$a545], a
    and d
    ld b, e
    di
    rlca
    db $76
    rst $00
    rst $18
    ccf
    adc [hl]
    inc bc
    xor c
    daa
    ld a, [hl+]
    dec a
    nop
    ld a, $02
    ld d, l
    ldh a, [rSC]
    ld e, a
    ld d, a
    inc bc
    dec a
    add sp, -$17
    rrca
    rrca
    ld d, l
    ld [c], a
    inc b
    ld e, b
    dec bc
    rst $20
    ld b, c
    inc c
    ld de, $2b28
    nop
    ld e, l
    rst $30
    ld [bc], a
    pop af
    cp [hl]
    inc b
    add hl, sp
    dec bc
    ld a, l
    reti


    inc b
    ld [de], a
    inc bc
    add hl, sp
    dec hl
    ld b, c
    rst $18
    dec c
    add hl, sp
    ld a, [bc]
    dec bc
    jr nc, jr_004_6a3f

    ld h, l
    inc bc
    ld b, b
    adc a
    add hl, sp
    dec l
    ld [$3951], sp
    ld a, [de]
    dec a
    db $eb
    ld a, [bc]
    ld [hl], e
    dec e
    ld c, h
    ld b, d
    inc [hl]

Jump_004_6a14:
    rst $08

jr_004_6a15:
    add hl, sp
    ld a, [hl]
    ld l, $02
    ld b, e
    ld a, c
    ld d, l
    ld [bc], a
    ld l, a
    ccf
    db $db
    scf
    rst $00
    ld b, $39
    ld a, $3f
    rst $00
    inc bc
    ld d, d
    sbc a
    inc b
    add hl, sp
    ld e, b
    inc b
    inc bc
    ld l, l
    ld e, b
    nop
    inc a
    jp z, Jump_004_730d

    ld d, l
    ld [hl], b
    ld e, b
    dec b
    add hl, hl
    inc l
    rrca
    inc l
    ld e, [hl]

jr_004_6a3f:
    inc l
    cpl
    ld [bc], a
    ccf
    inc e
    ld d, l
    ld [bc], a
    ld a, $cb
    ld a, $07
    ld h, h
    ld [$7639], a
    jr nz, jr_004_6a15

    dec d
    ld e, $49
    rra
    add h
    rst $08
    dec e
    dec e
    ld e, $4d
    sbc b

jr_004_6a5b:
    ld e, a
    ld e, d
    and [hl]
    xor e
    xor [hl]
    ld e, l
    ld b, e
    add sp, $31
    inc b
    dec a
    ld [$eceb], a
    db $ed
    adc b
    jr c, jr_004_6a5b

    add b
    jp nz, $f0ef

    inc a
    dec a
    ld sp, hl
    inc b
    nop
    adc h
    ret nc

    dec l
    add sp, $45
    sub d
    rlca
    rst $00
    rrca
    ld b, c
    call z, $7203
    adc a
    nop
    pop af
    inc b
    sub l
    sbc a
    dec a
    or e
    sub [hl]
    ld l, $89
    dec h
    jr z, @-$5a

    rst $28
    rlca
    ld a, c
    ld bc, $e309
    ld a, [c]
    rlca
    jr nc, jr_004_6ad9

    cp l
    inc b
    ld [hl], e
    ld b, $31
    push hl
    ld [de], a
    add hl, sp
    di
    ld b, d
    or a
    ld hl, $e1a4
    jr nz, @+$45

    ldh a, [rNR50]
    add hl, sp
    db $f4
    rrca
    inc bc
    ld a, $0f
    inc a
    ld [bc], a
    and e
    ld l, l
    dec b
    ld b, $07
    rst $08
    ld b, $31
    ld b, b
    ld bc, $077c
    rlca
    ret z

    db $eb
    jr nc, jr_004_6b03

    ld sp, hl
    ld bc, $1e80
    ld [$0a09], sp
    ld b, $31
    ld c, h
    ld a, $07
    ld b, d
    inc bc
    ld b, [hl]
    ld b, [hl]
    ld c, b
    ld b, e
    ld [hl+], a

jr_004_6ad9:
    inc hl
    xor $07
    adc a
    ccf
    ldh a, [rSC]
    ld [hl], e
    dec bc
    inc c
    dec c
    db $ed
    ret nc

    ret c

    rst $08
    ld a, $00
    sub c
    rlca
    ccf
    ld sp, $4207
    ld c, c
    add [hl]
    nop
    ld b, e
    inc h
    dec h
    ld bc, $05fb
    sbc e
    adc [hl]
    ld a, $44
    ld d, b
    sbc e
    ld d, d
    ld [bc], a
    ld [hl-], a
    rlca

jr_004_6b03:
    ld b, a
    nop
    ld c, b
    inc e
    inc bc
    ld a, [bc]
    add [hl]
    rlca
    ld [$07a6], sp
    ld [bc], a
    ret nc

    rrca
    nop
    ld [hl], d
    ld b, a
    rra
    db $10
    daa
    inc bc
    and c
    ld b, $44
    dec a
    or d
    ld [hl], l
    ld [bc], a
    ld a, $19
    dec b
    ld a, [c]
    ld a, $b3
    dec b
    ld b, $3e
    ld b, e
    inc bc
    ld b, $9c
    dec c
    ld [$0682], sp
    dec a
    adc b
    ld [hl], e
    dec a
    ld [hl], c
    inc e
    ld d, $3e
    ld h, e
    inc e
    ccf
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    ld a, [$0000]
    ld [bc], a
    pop af
    ld h, l
    adc $03
    inc h
    ld [bc], a
    ld bc, $0001
    rst $38
    nop
    ld c, $00
    add c
    nop
    rst $38
    ld b, h
    ld e, $1c
    rra
    or h
    ld bc, $3604
    inc bc
    ld [$e700], sp
    add hl, bc
    xor h
    ld [bc], a
    nop
    inc de
    ld [hl], e
    rra
    ld [bc], a
    call nc, Call_000_2708
    inc de
    ld [hl], c
    ld hl, $2042
    db $ec
    dec de
    daa
    ld a, [bc]
    ld b, h
    sub c
    inc de
    ld b, h
    rst $00
    ld [de], a
    ld b, h
    db $10
    inc de
    ld b, h
    rra
    ld a, e
    ld b, h
    dec bc
    daa
    sbc [hl]
    dec e
    ld a, [bc]
    inc de
    db $f4
    db $10
    adc e
    inc a
    ld a, [hl+]
    dec c
    ld [hl], a
    ld hl, $033d
    jr nz, jr_004_6ba2

    adc e
    daa
    rrca
    adc [hl]
    inc b
    ld c, e
    ld b, h
    inc a
    ld a, b
    ret nz

    ld e, h

jr_004_6ba2:
    nop
    inc a
    ld d, l
    add e
    dec b
    ld d, a
    sub [hl]
    ld b, $59
    inc bc
    inc de
    rst $20
    ld b, $00
    ld d, a
    cp l
    inc c
    inc d
    ld d, b
    nop
    cp h
    ld l, h
    ld b, e
    cp $56
    pop af
    inc d
    inc e
    ld c, e
    nop
    rst $20
    add hl, bc
    cp $57
    add c
    ld a, e
    cp $3d
    nop
    dec b
    ld b, $07
    db $e4
    ld h, d
    ld [hl], b
    ld c, e
    ld a, [c]
    ld [bc], a
    ld c, e
    ld sp, $4b2c
    nop
    ldh [$78], a
    cp $3d
    ccf
    nop
    ld [$093d], sp
    ld a, [bc]
    ld h, d
    ld [hl], b
    pop af
    ld [bc], a
    ld [$1ce7], sp
    dec e
    ld d, a
    ld d, h
    ld d, a
    inc e
    ld hl, $52fc
    rrca
    ld d, a
    inc bc
    ccf
    inc a
    nop
    dec bc
    inc c
    dec c
    sbc $66
    cp $22
    nop
    jr jr_004_6c02

    daa
    ld a, [hl+]

jr_004_6c02:
    nop
    dec l
    ld [bc], a
    ldh a, [rHDMA2]
    cp $3e
    dec a
    ld b, b
    add e
    nop
    ld d, l
    jp $fd8e


    nop
    jr z, jr_004_6c3f

    ld e, $00
    ld l, $00
    ld d, $ff
    ld a, e
    ld d, a
    add hl, bc
    cp [hl]
    ld [c], a
    ld b, $34
    rst $08
    rra
    ld [$0754], sp
    add hl, de
    db $fc
    inc a
    inc a
    ld [bc], a
    ld a, $f2
    inc de
    ld l, a
    ld c, d
    di
    inc c
    ld c, $4a
    rst $08
    rlca
    ld a, [de]
    ld c, d
    rlca
    inc a
    inc bc
    nop
    ld a, [bc]
    rlca
    ld c, d

jr_004_6c3f:
    di
    dec bc
    dec d
    ld c, d
    ret


    rla
    db $fd
    ld d, l
    adc a
    cp $57
    ld [bc], a
    rla
    xor a
    cp a
    db $e3
    ld d, $bd
    ld c, e
    ld c, e
    pop de
    inc c
    rlca
    ld e, [hl]
    ld a, [c]
    cp h
    ld sp, hl
    inc a
    nop
    inc de
    ccf
    ld b, c
    and h
    dec b
    jp Jump_004_571f


    nop
    inc a
    rst $18
    inc bc
    inc d
    ld [bc], a
    call nc, $3c34
    rst $08
    inc de
    ld b, c
    inc bc
    ld a, c
    dec d
    rlca
    rlca
    ld b, c
    db $fd
    inc b
    rst $38
    db $e4
    ld [hl], a
    rra
    dec b
    dec a
    rrca
    sub e
    ld l, h
    ld c, d
    ret


    ei
    nop
    sbc a
    cp $00
    dec d
    adc a
    rst $38
    ld d, a
    ld a, $1a
    cp a
    dec l
    add sp, $0b
    ld sp, hl
    xor a
    ld a, [c]
    dec sp
    ld a, [hl-]
    inc a
    ei
    inc a
    ld [bc], a
    ccf
    ld d, a
    db $e4
    jr nz, jr_004_6c3f

    add hl, bc
    inc bc
    dec b
    ld d, d
    ld d, a
    nop
    ld c, h
    ld hl, $003d
    inc bc
    add hl, hl
    cp b
    jp z, $010f

    sbc $00
    add hl, bc
    dec d
    sub c
    ld a, $3d
    inc sp
    rlca
    ccf
    jp nc, $9b03

    ld d, d
    inc sp
    ld b, a
    rlca
    ld c, $3e
    ld b, b
    and h
    ld [bc], a
    ld a, [de]
    db $76
    xor a
    rrc a
    ld d, h
    ld sp, $92cf
    ld a, h
    db $fd
    ld a, [bc]
    ret


    sbc [hl]
    call z, Call_004_5420
    ld b, c
    ld b, c
    ld d, l
    db $fd
    dec b
    and d
    rst $20
    inc b
    inc h
    ld d, a
    jp nz, $010f

    nop
    xor d
    ld a, [c]
    ld d, a
    ld a, $3f
    ccf
    rlca
    ld [bc], a
    db $fc
    ld d, a
    dec a
    ld a, $55
    ld c, a
    xor b
    inc b
    and e
    ld de, $23a5
    ccf
    add hl, de
    ld h, $3f
    db $ec
    dec b
    inc d
    ld de, $a73e
    dec de
    and l
    rlca
    dec d
    and [hl]
    and $14
    ld a, l
    ld a, $06
    add hl, bc
    ld e, b
    ld a, $47
    ld l, [hl]
    jr jr_004_6d70

    ld e, b
    inc c
    ccf
    ld a, $fa
    inc bc
    ld a, [hl]
    ld d, $03
    jr z, jr_004_6d2e

    ld d, $3f
    adc h
    sub h
    add hl, hl
    ld h, l
    inc l
    nop
    cpl
    ld c, a
    and d
    call $ae01
    or a

jr_004_6d2e:
    dec l
    rst $10
    rlca
    or e
    rst $30
    inc bc
    and d
    rst $28
    inc bc
    ld d, d
    inc b
    ld a, d
    dec c
    dec b
    nop
    reti


    add l
    inc a
    nop
    cp l
    dec a
    ldh [$e1], a
    ld [c], a
    ld a, [$6602]
    ld [$f819], sp
    inc b
    sbc d
    db $e4
    dec h
    xor e
    inc h
    push hl
    dec b
    inc d
    inc a
    ld h, $0e
    ld b, $43
    nop
    ret nc

    ret c

    ld bc, $c2c7
    dec a
    inc a
    rst $30
    inc b
    ld c, $a6
    inc bc
    inc sp
    cp $81
    db $ec
    dec a
    ld b, b
    inc l
    ld l, d
    ld b, b

jr_004_6d70:
    or [hl]
    ld a, [bc]
    ld a, h
    inc a
    ld [bc], a
    jp nc, Jump_000_232f

    ld l, [hl]
    ret nz

    rst $08
    ld a, e
    ld b, b
    ld b, $70
    db $dd
    or h
    ccf
    inc a
    sbc [hl]
    ld e, d
    sub [hl]
    dec b
    jr z, jr_004_6de0

    dec a
    ld de, $fd3d
    inc bc
    adc e
    rlca
    or l
    ccf
    reti


    rrca
    add h
    inc b
    or l
    ccf
    and a
    ld sp, hl
    dec a
    ld [bc], a
    ld c, d
    ld [bc], a
    nop
    dec b
    ld b, h
    ccf
    inc a
    ld a, [de]
    ld b, $14
    dec a
    sub e
    or [hl]
    ret


    ld b, $14
    inc a
    cp l
    ld h, h
    dec b
    dec d
    inc h
    ld b, $db
    inc d
    cp b
    call nc, Call_000_1b03
    ld d, $f7
    ld [bc], a
    ld b, a
    ld c, h
    ld a, b
    or $6a
    dec bc
    ld c, c
    dec a
    ld de, $2445
    dec a
    inc e
    ld a, [bc]
    dec a
    ld c, b
    pop hl
    rst $08
    ccf
    inc a
    dec h
    dec [hl]
    ld d, $ab
    ld a, $24
    ld d, [hl]
    inc a
    adc a
    push af
    inc b
    ld h, d
    ld hl, $041c
    rst $20

jr_004_6de0:
    inc bc
    ld l, h
    ld a, $bc
    dec b
    sbc d
    dec b
    add a
    ld a, $93
    ld a, [$653a]
    ccf
    ld [hl], $c5
    ld b, d
    inc b
    ld hl, $3d3f
    inc d
    adc $11
    ld d, d
    add hl, de
    dec c
    ld [$3e0c], sp
    push bc
    ld [$3d3d], sp
    ld h, $87
    inc d
    push hl
    dec h
    ld b, h
    inc c
    ld a, [hl+]
    add hl, hl
    dec a
    db $ed
    add hl, bc
    dec d
    ret z

    db $10

jr_004_6e11:
    ld d, e
    ld [de], a
    dec sp
    adc d
    dec b
    ld a, $8f
    ld h, e
    inc b
    ld c, h
    ld c, a
    inc de
    ld a, $a8
    ld a, d
    rst $20
    ld c, $26
    dec d
    inc de
    ld c, a
    ld a, $4c
    sub c
    sbc l
    inc a
    add h
    jr jr_004_6e11

    ld a, b
    rst $08
    dec b
    dec sp
    ld a, $0a
    db $76
    ld c, a
    ld [hl+], a
    or e
    ld d, [hl]
    sbc $0e
    daa
    dec bc
    add hl, sp
    ldh a, [rP1]
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld [bc], a
    ret z

    nop
    nop
    nop
    dec e
    cp e
    pop bc
    ld [hl+], a
    or e
    inc b
    ld bc, $0001
    stop
    inc l
    nop
    adc b
    nop
    db $10
    ld c, $1c
    nop
    ld b, d
    ld hl, $290a
    jr nz, @+$45

    dec bc
    rst $28
    rst $30
    rrca
    rst $30
    ld a, e
    rrca
    xor c
    rrca
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    inc b
    jr c, jr_004_6e78

jr_004_6e78:
    nop
    ld bc, $b573
    ld [$b73c], sp
    inc b
    ld bc, $0001
    stop
    ld b, e
    nop
    add b
    nop
    db $10
    ld b, h
    ld e, $1c
    inc e
    rra
    call z, Call_000_1e02
    inc bc
    ld e, $81
    rlca
    ld b, h
    ld a, $cf
    inc d
    inc bc
    ld e, $00
    inc a
    inc a
    ld b, $0f
    inc bc
    dec a
    ccf
    nop
    dec b
    ld b, $07
    call z, Call_000_0f02
    ld d, h
    rra
    ld [$093d], sp
    ld a, [bc]
    inc bc
    rrca
    add a
    ccf
    dec bc
    inc c
    dec c
    cp b
    inc bc
    rrca
    ld e, a
    rra
    ld [hl], b
    dec e
    ld e, l
    dec e
    rra
    ld [hl], b
    ld c, l
    ld c, $4c
    ld b, h
    inc a
    dec a
    ld d, l
    inc b
    ld c, [hl]
    ld d, a
    sbc $4f
    inc bc
    rrca
    ld h, e
    ld e, b
    rrca
    ld a, $3c
    push bc
    ld b, $1f
    inc a
    ld b, h
    jr z, jr_004_6f13

    ld b, c
    ld e, $6f
    dec e
    ld c, d
    dec b
    jr c, jr_004_6f24

    jr jr_004_6f26

    ld a, $f3
    inc bc
    rrca
    add hl, de
    adc a
    ccf
    ccf
    ld b, $0a
    rrca
    ccf
    ld b, h
    dec e
    ld h, e
    jp c, Jump_000_1c7e

    ld c, l
    sbc e
    rrca
    ld a, a
    rst $08
    rlca
    cpl
    ccf
    inc b
    dec a
    cpl
    ld a, [de]
    rlca
    ld c, a
    and $03
    ld a, a
    rra
    ld a, h
    di
    ld a, [de]
    cp a
    nop
    ret c

    ld a, [bc]
    cp a

jr_004_6f13:
    ld a, a
    ld e, $1b
    ld [c], a
    cp b
    rra
    jr jr_004_6f5b

    ld [bc], a
    dec de
    ld e, $e2
    ld a, a
    add hl, de
    db $10
    cp b
    ld [bc], a

jr_004_6f24:
    and $80

jr_004_6f26:
    cpl
    ld b, d
    dec a
    rrca
    ld c, b
    ld [bc], a
    ld [hl], c

jr_004_6f2d:
    rrca
    ld a, a
    ld a, [de]
    push hl
    inc b
    rrca
    inc a
    inc a
    ld e, a
    ld [bc], a
    rrca
    ccf
    ld a, c
    inc a
    inc b
    rrca
    ld a, [de]
    sub e
    rra
    dec a
    ld h, $0f
    ld a, [de]
    ld a, a
    ld c, l
    ld a, $0f
    ld h, e
    ld a, a
    inc a
    rst $08
    ld b, $0f
    dec a
    rlca
    jr z, jr_004_6f61

    ccf
    ccf
    ld a, [de]
    ld a, [c]
    ld de, $3cbf
    ld e, b
    rrca

jr_004_6f5b:
    ld d, a
    jr nz, jr_004_6f9b

    ld hl, $0355

jr_004_6f61:
    ld c, a
    rst $28
    inc bc
    rra
    rlca
    inc a
    rst $38
    inc a
    rlca
    rra
    ld a, $79
    dec a
    rla
    ccf
    ld a, $e1
    ld d, $3f
    ccf
    ld b, h
    inc e
    add hl, bc
    add hl, sp
    ld sp, $053f
    inc e
    ld b, h
    rst $28
    ld [$086f], sp
    jp Jump_004_448f


    ld e, $1d
    and c
    ld h, $21
    sub c
    ld a, [bc]
    jr nz, jr_004_6f2d

    ld [hl], b
    dec e
    ld [$af8f], sp
    ld a, $3f
    ld d, $3d
    rst $18
    dec a
    rlca
    cpl

jr_004_6f9b:
    inc sp
    xor a
    ld d, a
    daa
    ld [bc], a
    ld d, l
    dec c
    rrca
    inc e
    ld e, [hl]
    and b
    ld d, [hl]
    ld e, a
    dec e
    adc c
    add hl, sp
    di
    dec b
    ld e, a
    ld d, [hl]
    inc a
    rra
    ld d, h
    rlca
    cp a
    ld d, h
    pop af
    rlca
    ld e, a
    ld d, h
    dec a
    ld [$ef16], a
    call c, Call_000_2d9f
    push hl
    ld e, a
    rrca
    pop af
    ld a, $3d
    ld d, $cf
    ld l, a
    ld a, $07
    ld [hl], e
    ld e, a
    ld c, a
    and $04
    sbc a
    rra
    rst $08
    ld [bc], a
    ld a, [hl+]
    sbc a
    ld e, b
    ld a, h
    rra
    inc b
    pop af
    sbc a
    ccf
    ld b, b
    db $ed
    dec b
    nop
    rra
    sub e
    nop
    dec a
    ld l, l
    inc bc
    ld a, e
    db $fd
    or e
    ccf
    ld [hl], c
    ld a, $90
    dec c
    inc bc
    and a
    inc b
    add b
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld bc, $00a8
    nop
    nop
    db $ec
    add b
    dec [hl]
    add l
    inc b
    inc b
    ld bc, $0001
    stop
    ld a, [de]
    nop
    adc a
    nop
    db $10
    inc e
    ld b, $30
    nop
    ld b, h
    ld de, $1012
    dec [hl]
    ld [hl], c
    ld de, $1104
    add b

jr_004_701d:
    dec b
    dec [hl]
    jr nc, jr_004_7051

    inc a
    nop
    inc de
    call nz, $3624
    nop
    ret nz

    dec b
    ld [hl-], a
    ld [hl-], a
    inc a
    ld d, $15
    jr jr_004_7069

    ld d, $3b
    ld [bc], a
    dec d
    ld d, $00
    rla
    dec sp
    rla
    nop

jr_004_703b:
    inc sp
    inc [hl]
    inc a
    ld b, [hl]
    di
    ld [bc], a
    dec sp
    ld hl, $0f0c
    nop
    inc a
    inc a
    jr c, jr_004_705c

    add [hl]
    ld a, [hl-]
    inc b
    ld h, a
    db $10
    ld h, c
    inc [hl]

jr_004_7051:
    jr c, jr_004_7062

    ld h, h
    nop
    ld h, h
    scf
    inc a
    inc d
    dec [hl]
    rlca
    ld b, [hl]

jr_004_705c:
    inc bc
    rrca
    rla
    ld d, $39
    dec sp

jr_004_7062:
    inc e
    ld b, [hl]
    add hl, sp
    rla
    ld b, [hl]
    and e
    rrca

jr_004_7069:
    jr nz, jr_004_703b

    inc bc
    ld a, a
    rrca
    adc $3d
    db $10
    ld [hl], e
    add c
    inc b
    ld l, [hl]
    ld [bc], a
    rra
    ld [de], a
    ld a, c
    inc d
    scf
    ld [hl], e
    ld b, h
    add d
    ld [hl], e
    rrca
    jr c, jr_004_701d

    ld a, h
    ld a, [hl-]
    jr nz, jr_004_70c9

    add hl, sp
    rrca
    ld b, h
    di
    inc b
    ld a, a
    scf
    sbc h
    rra
    ld a, d
    and $82
    ld a, $6e
    ld de, $7204
    inc [hl]
    ld e, a
    sub h
    inc a
    ld a, h
    sub e
    rrca
    ld b, $00
    ld d, $38
    rla
    add hl, sp
    ld b, b
    ld [hl], c
    rla
    ret


    add hl, sp

Jump_004_70a9:
    db $ec
    ld c, $7f
    inc a
    ld [de], a
    xor h
    inc bc
    dec [hl]
    ld d, e
    jr nc, jr_004_7133

    add l
    nop
    inc d
    inc [hl]
    inc e
    add d
    ld sp, $e77f
    cp l
    inc sp
    cp b
    add l
    ld a, [hl-]
    inc e
    rst $38
    nop
    ld sp, $787f
    inc bc

jr_004_70c9:
    ld [bc], a
    ld a, a
    nop
    ld [hl-], a
    dec h
    inc a
    ld bc, $3bb9
    ret nz

    ld b, $7f
    inc sp
    rrca
    sbc d
    ld a, b
    ld b, [hl]
    dec b
    inc [hl]
    rrca
    ld l, [hl]
    ld a, [hl-]
    dec a
    scf
    inc a
    jr c, jr_004_70ea

    ld [hl], $7e
    ld bc, $7b3f
    ld b, [hl]

jr_004_70ea:
    dec b
    nop
    ld a, e
    ld a, a
    rlca
    nop
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    ld a, [$0000]
    inc bc
    ld c, a
    ld l, $93
    ld e, [hl]
    ld b, [hl]
    inc b
    ld bc, $0001
    rst $38
    nop
    ld c, $00
    add c
    nop
    rst $38
    ld b, h
    inc e
    ld e, $1f
    add h
    ld [bc], a
    inc e
    inc e
    rra
    add hl, hl
    inc bc
    ld b, $c9
    ld [$0039], sp
    jr jr_004_7143

    dec d
    inc d
    inc de
    rra
    ld de, $06f2
    inc de
    ld b, h
    ld b, h
    inc de
    ld b, h
    adc a
    inc de
    ld b, h
    ld de, $2779
    jr nc, jr_004_7146

jr_004_7133:
    ld b, h
    db $e4
    ld [bc], a
    inc de
    inc e
    ret nc

    ld l, d
    inc b
    ld a, d
    rra
    inc bc
    rla
    inc de
    ld b, $42
    cp d

jr_004_7143:
    dec b
    ret


    ld a, [bc]

jr_004_7146:
    ld hl, $56d2
    ld [hl-], a
    jr @+$1e

    ld b, l
    ld h, e
    inc e
    sub h
    stop
    rst $00
    dec l
    ld b, h
    inc a
    ld l, a
    inc bc
    jr nc, @+$3f

    nop
    inc a
    inc c
    ld b, $e7
    rra
    nop
    ld d, [hl]
    sbc [hl]
    dec de
    inc hl
    ccf
    add hl, bc
    ld de, $3d51
    dec b
    ld a, $e3
    ld e, $62
    daa
    ld a, [hl+]
    adc a
    nop
    dec l
    dec c
    ld d, c
    ld a, c
    ld a, l
    ld d, a
    rst $00
    ld c, c
    inc a
    sbc [hl]
    ld b, $13
    ld d, [hl]
    ld [$7b99], sp
    ld d, [hl]
    ld c, a
    cp $f7
    inc hl
    ld e, [hl]
    sbc a
    inc bc
    adc d
    ld a, $03
    cp h
    inc b
    add hl, de
    nop
    jr z, jr_004_7205

    dec hl
    nop
    ld l, $e3
    inc d
    ld hl, $3c57
    di
    dec sp
    db $fd
    ld c, e
    rst $08
    ld d, b
    cp $3e
    rrca
    inc a
    ld [hl], c
    ccf
    ld b, c
    cp $3f
    di
    inc [hl]
    or h
    ld c, e
    rst $30
    inc d
    xor e
    add h
    ld a, [hl-]
    nop
    jr nz, jr_004_71fb

    ld hl, $0525
    inc h
    or l
    ld b, [hl]
    ld hl, $11cc
    ld d, [hl]
    dec b
    ld b, l
    rlca
    ld hl, $e1e0
    ld [c], a
    db $e3
    pop hl
    ccf
    db $fd
    dec b
    ld b, $07
    db $e3
    inc c
    ld a, [de]
    ld b, b
    ld b, b
    rst $30
    dec [hl]
    inc c
    ld e, $00
    ld d, l
    inc bc
    ld h, a
    ld hl, sp+$39
    db $fc
    ld sp, hl
    dec h
    push af
    di
    ld hl, $3dfe
    rrca
    ld d, [hl]
    ld [$0a09], sp
    dec c
    xor a
    ld [hl], a
    rst $28
    add hl, sp
    call $3c15
    cp $58
    dec de
    ld b, b
    dec a
    ld a, c
    ld d, l
    ld [bc], a

jr_004_71fb:
    ccf
    ccf
    ld a, [c]
    ld a, [bc]
    push af
    ld d, a
    ld e, h
    jr nz, @+$2c

    inc e

jr_004_7205:
    ld e, $21
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$1f20], a
    dec a
    ld e, $28
    cp $d5
    ld a, [$0b1f]
    inc c
    dec c
    dec c
    cp [hl]
    ld a, d
    inc de
    xor a
    ld h, b
    ld c, d
    ld a, [hl-]
    add a
    reti


    ld c, d
    rst $20
    daa
    db $fd
    ld a, $cb
    dec bc
    push af
    daa
    xor $02
    ret c

    daa
    ei
    dec bc
    ei
    db $e3
    rla
    cp $a0
    push af
    ld d, a
    ccf
    ld hl, $403f
    nop
    pop af
    dec bc
    ld hl, sp+$1d
    inc de
    rst $08
    rlca
    ld d, l
    ld b, $c7
    dec l
    ld c, d
    nop
    rst $18
    dec bc
    ld a, d
    pop af
    inc l
    inc c
    ld c, d
    inc a
    ld [c], a
    ld a, [de]
    dec [hl]
    jr nz, jr_004_729e

    cp [hl]
    ret c

    rra
    ld a, l
    ld hl, $4802
    rlca
    ld b, l
    ld hl, $f4c2
    ld b, [hl]
    ld hl, $c755
    rst $18
    ld l, $bc
    ld [bc], a
    ld [$e809], a
    add hl, hl
    ld [hl], c
    inc l
    nop
    cpl
    xor $11
    ld e, [hl]
    add c
    push af
    ld d, a
    dec a
    inc a
    sub l
    ld bc, $9e3e
    add sp, $4a
    inc bc
    call z, Call_000_3d72
    ld a, [$133b]
    reti


    ld [bc], a
    ld e, b
    rst $20
    dec b
    ld [c], a
    inc a
    rst $18
    dec b
    sub d
    sbc $06
    inc d
    ld [$27cf], sp
    ld c, d
    ld b, b
    sbc h
    dec a

jr_004_729e:
    ld d, a
    ld [$4a7b], sp
    rlca
    jr jr_004_72e2

    ld e, l
    inc a
    rlca
    dec d
    ld hl, sp+$17
    ld c, [hl]
    inc a
    ld d, l
    ld a, [$9e03]
    or b
    ld d, l
    nop
    inc e
    cp $5b
    ld b, b
    ld d, d
    reti


    ld b, $45
    ld bc, $2900
    rrca
    inc bc
    ld de, $cef5
    add [hl]
    ret nc

    nop
    push hl
    add e
    inc bc
    ld c, d
    adc [hl]
    inc bc
    dec a
    ld b, h
    inc bc
    sub c
    rst $30
    dec a
    ld a, $36
    nop
    add a
    jr jr_004_7317

    ret nc

    dec b
    adc b
    inc a
    ld hl, sp+$05
    inc b
    ld a, c

jr_004_72e1:
    ccf

jr_004_72e2:
    inc bc
    dec c
    ld e, b
    ld a, [c]
    ld bc, $4ad8
    and h
    ld d, a
    db $e4
    ld b, a
    inc a
    ccf
    ld a, [hl]
    ld c, d
    inc bc
    ld hl, sp-$1e
    ld [hl], d
    ld a, $0f
    inc de
    inc a
    inc bc
    adc a
    ld [bc], a
    inc bc
    ld e, $09
    ld a, $4a
    ld c, $fe
    or e
    ld e, e
    call nc, $fe20
    ld h, d
    ld b, e
    ld a, $da
    sbc h

Jump_004_730d:
    nop
    pop bc
    ld b, c
    ccf
    push bc
    dec a
    jr nc, jr_004_72e1

    ld b, d
    ld c, b

jr_004_7317:
    ld b, a
    pop bc
    nop
    ld c, b
    ld b, h
    dec a
    ccf
    add hl, bc
    adc c
    cp h
    jp nc, Jump_000_0301

    dec a
    ld [hl], $4a
    ld c, d
    add hl, sp
    inc bc
    add sp, $18
    and a
    ld l, d
    ld d, [hl]
    ld a, c
    ld b, h
    ld b, $3e
    adc c
    ld b, $3d
    ld a, $06
    ld b, $87
    rst $28
    ld a, $d5
    dec b
    ld [$cf4a], a
    ld d, a
    ld bc, $fe40
    dec bc
    ld c, d
    ld d, l
    sbc c
    jr jr_004_7387

    inc b
    rst $30
    inc a
    or a
    inc bc
    sbc [hl]
    ld [bc], a
    dec d
    ccf
    ld [bc], a
    add hl, bc
    ld c, l
    dec a
    dec d
    di
    inc b
    ld [hl], l
    ei
    inc bc
    db $fd
    pop bc
    ld [bc], a
    dec bc
    add hl, hl
    inc l
    ld e, [hl]
    cpl
    inc l
    jp z, Jump_004_4455

    add hl, hl
    ld h, $e6
    ld d, a
    inc c
    or d
    ld h, $91
    nop
    sbc e
    sbc a
    ld a, $e5
    adc b
    db $fc
    inc a
    daa
    xor c
    ccf
    and l
    jp hl


    inc e
    or $8a
    db $ec
    and h
    ld b, d
    dec b
    ld b, [hl]

jr_004_7387:
    ld b, [hl]
    ld c, b
    ld b, h
    ld c, b
    inc c
    inc bc
    ld b, [hl]
    ld b, h
    ld b, $46
    ld b, [hl]
    ld b, e
    ld [hl], $a3
    ld a, [de]
    ld a, $8a
    ld a, [de]
    ld b, [hl]
    ld d, c
    dec d
    rlca
    ld b, h
    ld b, h
    inc c
    ld c, b
    ld h, $23
    inc d
    sbc d
    ld sp, $1b44
    ld b, [hl]
    sub b
    dec h
    inc b
    ld d, c
    ld b, e
    ld a, e
    ld c, d
    ld b, h
    nop
    ld a, $44
    ld h, c
    call c, $1848
    ld d, d
    dec a
    ld e, d
    or l
    db $76
    jr nz, jr_004_7438

    ld [bc], a
    ld b, e
    inc h
    dec a
    ld b, d
    ld [$09dc], sp
    rla
    and c
    dec d
    ld c, b
    ld b, [hl]
    jp hl


    inc b
    ld d, b
    cp l
    ld a, c
    inc bc
    add l
    cp e
    nop
    scf
    cp a
    ld b, a
    cpl
    add hl, sp
    ld h, b
    dec sp
    inc b
    ld a, [bc]
    ld c, b
    db $d3
    inc c
    ld [hl], c
    ld e, $c5
    ld a, $04
    ld c, d
    ld b, [hl]
    ld a, [hl-]
    adc e
    and h
    ld l, h
    ld a, $4a
    ld h, h
    pop de
    ld c, d
    ret nc

    inc bc
    sub h
    sub [hl]
    add a
    and d
    db $eb
    ld a, $59
    inc c
    inc a
    ld c, b
    rla
    jr z, jr_004_7405

    dec a
    rrca
    ld a, $84
    inc e

jr_004_7405:
    sub b
    ld [hl+], a
    dec l
    and d
    or e
    dec a
    ld e, e
    dec de
    adc a
    inc b
    dec a
    ld bc, $4352
    ld d, $09
    inc d
    ccf
    ld hl, $1a3e
    ld a, [hl+]
    and [hl]
    ld d, a
    inc a
    ld c, a
    and d
    ld b, a
    inc a
    jp nz, $3f06

    ld a, $47
    ld c, h
    ccf
    and l
    ld bc, $0980
    ld c, $3d
    ld h, $0d
    rra
    adc l
    add c
    jp hl


    ld bc, $263c

jr_004_7438:
    sbc a
    dec hl
    ld d, d
    ld a, $28
    sub h
    ld h, l
    ld [hl], h
    sbc d
    ld c, [hl]
    dec d
    inc c
    and [hl]
    sub $13
    sub d
    and [hl]
    ld c, c
    adc c
    xor c
    ld c, c
    ld [de], a
    inc sp
    adc $3d
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    inc b
    jr c, jr_004_745c

jr_004_745c:
    nop
    ld bc, $0983
    ld [hl-], a
    ld [de], a
    ld h, h
    ld [bc], a
    ld bc, $0001
    stop
    ld b, e
    nop
    add b
    nop
    db $10
    ld b, h
    ld e, $1f
    inc e
    ld e, $6c
    inc e
    inc bc
    nop
    rra
    add b
    ld b, $44
    inc a
    nop
    ld [hl], e
    jr @+$18

    call z, $0001
    ld d, h
    rrca
    add hl, de
    di
    dec b
    rrca
    dec a
    rst $08
    rlca
    rrca
    ld a, $06
    rrca
    rrca
    ccf
    inc a
    ld d, l
    inc b
    ld e, $0f
    ld d, a
    inc a
    ld [bc], a
    cpl
    add hl, de
    dec b
    ld b, $07
    inc b
    inc a
    pop hl
    ld [bc], a
    cpl
    ld [$0a09], sp
    rrca
    cpl
    ld bc, $0f0e
    dec bc
    inc c
    dec c
    ld h, $1f
    ccf
    rrca
    add hl, hl
    jr nz, jr_004_74d2

    sbc b
    push bc
    adc a
    ld a, [de]
    adc [hl]
    ld c, h
    ld d, [hl]
    rlca
    inc bc
    ld a, $3e
    ld d, l
    nop
    sbc [hl]
    rlca
    ld e, a
    nop
    ld b, $7f
    rst $30
    ld b, $0f
    inc a
    ld c, a
    dec b
    nop
    ld a, $48

jr_004_74d2:
    inc a
    ccf
    ld d, a
    or c

jr_004_74d6:
    rra
    ld b, h
    ld c, h
    db $fd
    inc bc
    ld hl, $0f99
    dec a
    jp hl


    ld [bc], a
    ld l, e
    inc a
    cpl
    inc d
    ld c, a
    jr nz, @+$20

    ld e, $44
    ld a, $06
    rra
    inc a
    ld d, h
    inc a
    ld b, $9f
    ld d, h
    ld a, [c]
    inc bc
    ccf
    ld e, b
    inc e
    rra
    ld l, a
    sbc c
    ld l, d
    jr nz, jr_004_74d6

    ld [hl], h
    rra
    ld b, h
    di
    rlca
    cp a
    dec a
    call nc, $4f02
    add d
    ld a, e
    ccf
    ld [$59bf], sp
    ccf
    xor d
    ld h, a
    adc a
    db $e4
    dec b
    xor a
    dec a
    ld a, [c]
    ld a, a
    ld e, b
    ld h, h
    ld a, a
    ld a, $f1
    ld e, a
    ld b, b
    nop
    ld [$df01], a
    ld e, c
    rrca
    ld d, [hl]
    ld e, e
    adc a
    ld h, h
    add $87
    ld hl, $73b2
    ld b, h
    sbc c
    cpl
    ld d, d
    ld b, c
    add sp, $01
    ld c, a
    ld a, [hl]
    rrca
    ld [bc], a
    jp nc, Jump_000_3c53

    ld e, a
    reti


    ld bc, $5f0f
    ld a, $1b
    sbc a
    rst $08
    dec b
    rra
    nop
    inc b
    ld c, e
    rra
    ld a, c
    cpl
    ld [bc], a
    sub d
    dec a
    ld e, d
    rrca
    ld a, b
    jp nc, $1b20

    ld a, c
    inc e
    ld b, $ff
    add hl, de
    ld sp, hl
    rlca
    ld l, a
    add hl, de
    rrca
    sbc a
    dec b
    inc a
    rrca
    dec a
    rlca
    rra
    ld a, $e7
    ld e, a
    pop hl
    ld bc, $5771
    add hl, de
    nop
    pop af
    ld b, $0f
    sbc a
    ld h, a
    ccf
    rlca
    add c
    sbc a
    inc a
    ld b, h
    rra
    dec de
    ld hl, $02fa
    cp [hl]
    rra
    ld a, a
    dec d
    rrca
    cp a
    ld a, $07
    add a
    rst $38
    inc a
    call nz, $ef08
    ld h, $3f
    add b
    ld d, e
    ld d, a
    rst $38
    ld [c], a
    ld [bc], a
    xor a
    ld e, e
    rrca
    ld a, [c]
    dec bc
    rst $18
    jr nz, @+$34

    jp nz, $a320

    rlca
    db $e3
    add hl, bc
    xor a
    rst $08
    ld [$3d0f], sp
    add hl, bc
    ld d, h
    rra
    call z, Call_000_0047
    ld b, b
    db $ed
    ld e, a
    ld d, e
    ld b, a
    inc sp
    ld c, $3f
    or l
    adc a
    ld c, h
    ld b, a
    ret c

    dec e
    nop
    dec a
    ld b, b
    add h
    nop
    adc $0e
    dec a
    ld h, h
    db $10
    ld sp, $c83c
    ld d, h
    ld a, $62
    inc c
    dec c
    ld a, $3d
    ld l, l
    ld [hl], h
    rlca
    jp z, $1011

    ld [hl+], a
    inc a
    ld c, d
    nop
    add d
    ld [$023d], sp
    ld [bc], a
    ld a, $3f
    inc a
    sub b
    dec de
    nop
    ldh a, [rP1]
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld bc, $00a8
    nop
    nop
    db $ec
    ld d, $1a
    ld bc, $04fb
    ld bc, $0001
    stop
    ld a, [de]
    nop
    add c
    nop
    db $10
    ld b, h
    inc e
    inc bc
    inc e
    ldh [$03], a
    nop
    ld b, h
    ld bc, $1210
    inc e
    db $10
    dec [hl]
    ld de, $6004
    ld de, $3505
    jr nc, jr_004_7649

    inc a
    inc sp
    ld bc, $2413
    ld [hl], $48
    ld [bc], a
    dec b
    ld [hl-], a
    ld h, b
    ld [hl-], a
    rrca
    dec d
    jr c, jr_004_763f

    dec sp
    ret nz

    ld [bc], a
    dec d
    ld d, $17
    dec sp
    rla
    rlca
    nop
    inc sp
    inc [hl]
    inc a
    ld b, h
    sbc b
    ld [bc], a
    dec sp
    ld hl, $000f
    inc a
    ld h, h

jr_004_763f:
    inc a
    jr c, jr_004_7654

    inc sp
    ld a, [hl-]
    inc b
    db $10
    add hl, sp
    ld h, c
    inc [hl]

jr_004_7649:
    rrca
    jp $0064


    scf
    ld hl, $143c
    rlca
    xor b
    ld b, [hl]

jr_004_7654:
    rrca
    rla
    jr jr_004_766e

    add hl, sp
    dec sp
    ld b, [hl]
    add hl, sp
    rla
    push hl
    ld b, [hl]
    ld e, $0f
    jr nz, jr_004_7666

    ld a, a
    add [hl]
    rrca

jr_004_7666:
    dec a
    ld [hl], e
    db $10
    add c
    sbc e
    inc b
    ld [bc], a
    ld [hl], b

jr_004_766e:
    rra
    ld a, c
    inc d
    scf
    sub e
    ld b, h
    sbc e
    add d
    rrca
    sbc h
    jr c, jr_004_76f6

    reti


    ld a, [hl-]
    ld b, e
    add hl, sp
    rrca
    rrca
    dec b
    add hl, sp
    ld a, a
    scf
    rra
    adc $7a
    ld h, [hl]
    add d
    ld a, $11
    inc b
    rst $20
    inc [hl]
    add hl, hl
    ld e, a
    inc a
    ld c, c
    ld a, h
    jr nc, @+$11

    nop
    ld d, $38
    rla
    ld h, a
    add hl, sp
    ld b, b
    rla
    ld e, $c9
    add hl, sp
    ld c, $7f
    jp z, Jump_000_123c

    push bc
    inc bc
    dec [hl]
    jr nc, jr_004_76e2

    ld a, a
    nop
    inc d
    ld d, c
    inc [hl]
    add d
    ld sp, $7fce
    ld [hl], e
    cp l
    cp b
    inc sp
    add l
    ld a, [hl-]
    rst $38
    nop
    inc a
    rrca
    ld b, l
    inc b
    ld a, a
    nop
    ld l, c
    ld [hl-], a
    ld a, [hl]
    ld l, [hl]
    dec sp
    ld b, b
    ret nz

    ld a, a
    inc sp
    inc a
    or d
    ld a, b
    ld b, e
    dec b
    inc [hl]
    inc a
    ld l, [hl]
    ld [hl], $3d
    scf
    inc a
    jr c, jr_004_76de

    ld sp, $017e
    inc a
    ld b, [hl]
    db $ed

jr_004_76de:
    ld b, $00
    ld a, a
    rst $28

jr_004_76e2:
    rlca
    nop
    nop
    nop
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, a
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

jr_004_76f6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $05
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ret nc

    pop de
    jp nc, $d4d3

    push de
    nop
    jr z, @+$24

    inc h
    ld hl, $2828
    jr z, jr_004_7767

    inc h
    inc h
    add d
    ld [de], a
    ld [hl], a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_004_77b1

    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_004_77c2

    ld [hl], l
    ld h, a
    ld [hl], e
    ld l, h
    ld h, l
    ld a, c
    inc l
    add d
    inc d
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_004_77c8

    ld h, c
    db $76
    ld h, l
    jr nz, @+$74

    ld h, l
    ld [hl], e

jr_004_7767:
    ld h, e
    ld [hl], l
    ld h, l
    ld h, h
    add d
    ld d, $79
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_004_77d9

    ld h, c
    ld l, l
    ld l, c
    ld l, h
    ld a, c
    ld l, $ff
    add e
    ld [de], a
    ld h, e
    ld l, a
    ld h, h
    ld h, l
    jr nz, jr_004_77f9

    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, @+$64

    ld a, c
    add l
    inc d
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], b
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_004_77fe

    ld h, l
    ld a, c
    add [hl]
    ld d, $79
    ld l, a
    ld [hl], d
    ld l, e
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], d
    ld h, l
    inc l
    add a
    jr jr_004_780c

    ld l, [hl]
    ld h, a
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, $ff
    add h
    ld [de], a

jr_004_77b1:
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], b
    ld l, b
    ld l, c
    ld h, e
    ld [hl], e
    jr nz, @+$64

Call_004_77bb:
    ld a, c
    add e
    inc d
    ld h, e
    ld l, b
    ld [hl], d
    ld l, c

jr_004_77c2:
    ld [hl], e
    jr nz, @+$67

    ld h, h
    ld [hl], a
    ld h, c

jr_004_77c8:
    ld [hl], d
    ld h, h
    ld [hl], e
    add d
    ld d, $61
    ld l, [hl]
    ld h, h
    jr nz, jr_004_77f2

    ld [hl], b
    ld h, c
    ld [hl], l
    ld l, h
    jr nz, jr_004_7845

    ld h, e

jr_004_77d9:
    ld l, e
    ld h, l
    ld h, l
    ld l, $ff
    add e
    ld [de], a
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$64

    ld a, c
    add e
    inc d
    ld l, d
    ld l, a

jr_004_77f2:
    ld l, b
    ld l, [hl]
    jr nz, jr_004_785c

    ld h, c
    ld [hl], d
    ld l, l

jr_004_77f9:
    ld h, l
    ld [hl], d
    jr nz, jr_004_785e

    ld l, [hl]

jr_004_77fe:
    ld h, h
    add d
    ld d, $70
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_004_787f

    ld l, c
    ld l, h
    ld l, h
    ld l, a

jr_004_780c:
    ld [hl], l
    ld h, a
    ld l, b
    ld h, d
    ld a, c
    ld l, $ff
    ld de, $7745
    call Call_004_781f
    call Call_004_781f
    call Call_004_781f

Call_004_781f:
    push de
    call Call_000_0469
    pop de
    call Call_000_3b7e
    ld c, $ff

jr_004_7829:
    ldh a, [rSCY]
    inc a
    ldh [rSCY], a
    ld b, $03
    call Call_000_0937
    dec c
    jr nz, jr_004_7829

    ret


    nop
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    inc h
    dec h
    ld h, $27
    inc e
    dec e

jr_004_7845:
    ld e, $1f
    jr nz, jr_004_786a

    ld [hl+], a
    inc hl
    ld bc, $0702
    ld [$0403], sp
    add hl, bc
    ld a, [bc]
    dec b
    ld b, $0b
    inc c
    dec c
    ld c, $13
    inc d
    rrca

jr_004_785c:
    db $10
    rrca

jr_004_785e:
    db $10
    ld de, $1512
    ld d, $17
    jr jr_004_7879

    inc d
    rrca
    add hl, de
    rrca

jr_004_786a:
    db $10
    ld a, [de]
    ld d, $15
    ld d, $1b
    dec de
    dec de
    dec de
    inc h
    dec h
    ld h, $27
    jr z, jr_004_78a2

jr_004_7879:
    nop
    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l

jr_004_787f:
    ld l, $2f
    nop
    nop
    jr nc, jr_004_78b6

    ld [hl-], a
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_004_78c7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, e

Call_004_789e:
    ld b, h
    ld b, a
    ld c, b
    ld c, c

jr_004_78a2:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, c
    ld d, d
    ld c, a
    ld d, b
    ld d, l
    ld d, [hl]
    ld c, a
    ld d, b
    ld d, a

jr_004_78b6:
    ld d, d
    ld e, b
    ld d, b
    ld e, c
    ld d, d
    ld c, a
    ld e, d
    ld d, c
    ld e, e
    ld e, h
    ld e, l
    ld e, a
    ld h, b
    ld e, l
    ld e, [hl]
    ld h, c
    ld h, d

jr_004_78c7:
    ld h, e
    ld h, h
    ld h, [hl]
    ld h, a
    ld h, h
    ld h, l
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld [hl], e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], b
    ld [hl], c
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
    add d
    add e
    add h
    add l
    add [hl]
    add a
    add h
    add l
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
    sbc b
    sub a
    sbc c
    sbc d
    nop
    sbc e
    nop
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    nop
    and c
    nop
    and d
    nop
    and e
    nop
    and h
    and l
    and [hl]
    and a
    nop
    nop
    xor b
    xor c
    nop
    nop
    xor d
    xor e
    and b
    nop
    xor h
    xor l
    xor [hl]
    or b
    xor a
    or c
    or d
    or b
    or e
    or c
    xor [hl]
    or b
    xor a
    or h
    or l
    or b
    xor a
    or c
    or [hl]
    or a
    xor a
    or c
    xor [hl]
    or b
    cp b
    cp c
    xor [hl]
    cp d
    xor a
    cp e
    cp h
    or b
    cp l
    or c
    cp h
    cp d
    cp l
    cp e
    cp [hl]
    cp a
    ld d, c
    ld d, d
    ld c, a
    ld d, b
    ret nz

    pop bc
    ld d, e
    ld d, h
    ret nz

    pop bc
    ld c, a
    ld d, b
    ret nz

    call nz, $bfbe
    ret nz

    pop bc
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    nop
    nop
    push de
    sub $d5
    sub $d7
    ret c

    nop
    reti


    jp c, $dbd8

    nop
    rst $10
    call c, $dedd
    rst $10
    ret c

    nop
    nop
    db $dd
    sbc $ae
    or b
    xor a
    or c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld b, $c0
    nop
    nop
    dec b
    ld a, a
    inc b
    ld e, h
    ldh [$8e], a
    inc b
    ld bc, $000b
    rst $38
    nop
    ld bc, $fc03
    dec b
    ei
    inc bc
    ld hl, sp-$3b
    rlca
    inc b
    ld hl, sp-$3d
    scf
    rst $00
    ld d, b
    cp b
    and b

jr_004_7a7a:
    ld [hl], b
    ldh a, [$60]
    and b
    db $10
    db $10
    add b

jr_004_7a81:
    ld e, h
    rrca
    add hl, sp
    ret nz

    ccf
    adc h
    jp Jump_004_7cb9


    ld d, $0f
    dec bc
    rlca
    add hl, bc
    nop
    nop
    jr nc, jr_004_7ac0

    add b
    ccf
    or b
    inc bc
    rst $08
    jr jr_004_7a81

    add b
    ld [hl], a
    nop
    ld l, $31
    ld hl, sp+$18
    dec b
    ld hl, sp+$04
    push af
    rlca
    pop af
    add hl, bc
    di
    inc bc
    ei
    dec bc
    ei
    jr nz, jr_004_7ab0

    nop

jr_004_7ab0:
    ld e, $55
    db $e3
    rst $38
    ld bc, $c000
    rrca
    jr nz, jr_004_7a7a

    db $10
    ldh [$80], a
    inc b
    ldh a, [$c8]

jr_004_7ac0:
    ldh a, [$c0]
    ld hl, sp+$00
    ld bc, $1b24
    inc d
    dec bc
    ld [$6703], sp
    ld [bc], a
    inc h
    ld bc, $031b
    inc bc
    ld bc, $3387
    di
    ld bc, $4330
    ld [hl], l
    nop
    db $fc
    ld bc, $fd10
    nop
    ld a, [$5d33]
    ld a, l
    ld [hl-], a
    cp $b4
    ld a, b
    jr nz, @+$12

    sbc b
    add hl, de
    sbc l
    sbc a
    dec e
    ld e, [hl]
    ldh [$f8], a
    ld [hl], h
    sbc b
    ld [de], a
    inc c
    nop
    ld c, $01
    ld c, $00
    rrca

jr_004_7afc:
    inc a
    cpl
    ld l, $1f
    inc b
    inc sp
    rlca
    pop hl
    inc c
    inc de
    jr nz, jr_004_7b23

    db $10
    dec hl
    ld b, h
    dec hl
    inc d
    ld l, e
    and b
    ld e, e
    and c
    ccf
    ld bc, $b980
    nop
    db $fd
    ld [bc], a
    db $fd
    ld bc, $07fe
    nop
    cp $fb
    sbc a
    or c
    inc bc
    ccf

jr_004_7b23:
    ld h, b
    sub d
    pop hl

Jump_004_7b26:
    cp $03
    cp d
    ld c, b
    jr nc, jr_004_7afc

    ld h, b
    ld a, $35
    ld c, [hl]
    cp $00
    rst $00
    ld a, [$147c]
    add hl, bc
    and d
    add hl, de
    dec b
    ld a, [hl-]
    adc d
    inc [hl]
    nop
    rst $30
    ld a, b
    add a
    nop
    rst $18
    nop
    ld bc, $8f50
    xor b
    rla
    ld b, h
    inc de
    jp z, Jump_000_2169

    ld sp, $cf0b
    ld [$86f0], sp
    ld b, [hl]
    add b
    cp h
    nop
    ld a, h
    nop
    ld [hl], e
    rst $38
    cpl
    ld [hl], e
    sbc a
    ccf
    nop
    ld [$3f1f], sp
    dec d
    ld c, $0b
    xor $45
    cp b
    res 2, a
    ldh a, [$d6]
    pop hl
    xor e
    ret nz

    ld d, l
    add b
    dec hl
    nop
    scf
    nop
    rst $28
    nop
    xor h
    ld b, c
    ld e, l
    add b
    cp [hl]
    nop
    ld a, [hl]
    rst $28
    ld bc, $0236
    ret c

    ccf
    ld a, l
    ld [bc], a
    db $fc
    ret nc

    jp Jump_000_3609


    add hl, bc
    ldh a, [$f3]
    ld a, l
    dec c
    dec bc
    rlca
    rrca
    rra
    ld b, l
    ld [bc], a
    rrca
    ld b, d
    add c
    nop
    ld c, c
    inc [hl]
    ld hl, sp-$06
    db $fc
    db $fc
    sbc b
    ld l, l
    ld b, b
    ccf
    inc bc
    jr nz, jr_004_7bc8

    nop
    rra
    db $10
    rrca
    ld l, [hl]
    db $d3
    ld sp, $f973
    ld bc, $7f38
    nop
    ld bc, $3310
    ldh [$7f], a
    ld a, d
    ld a, a
    nop
    nop
    sub e
    ld b, a
    pop af
    dec sp
    add l
    ld b, c
    and d
    ld h, d

jr_004_7bc7:
    dec e

jr_004_7bc8:
    jr c, jr_004_7bc7

    cp $00
    ld bc, $f8f5
    rst $20
    ldh a, [$c8]
    ld [bc], a
    ldh [$a2], a
    call z, $80f0
    nop
    ld bc, $0f33
    adc b
    rlca
    add b
    ld b, b
    ld bc, $0384
    nop
    ldh [$d9], a
    ld bc, $006d
    jr nc, jr_004_7bec

    ld b, b

jr_004_7bec:
    add b
    db $f4
    dec sp
    ld d, d
    ld a, [hl]
    inc c
    ld b, c
    ld a, a
    rst $38
    cp [hl]
    ld b, h
    ld a, $2e
    ld e, $3f
    jr c, jr_004_7c5c

    ccf
    sub l
    sub b
    cp [hl]
    sbc a
    xor [hl]
    sbc a
    sbc h
    rst $08
    ret nz

    rst $28
    sub c
    adc $81
    ld a, $ed
    add b
    inc bc
    add b
    ld bc, $0182
    add b
    db $ed
    add c
    or [hl]
    inc bc
    ld e, a
    ld sp, $01ca
    nop
    ld c, b
    ld bc, $1d06
    ld b, $7e
    inc a
    ld a, b
    ld a, l
    ld a, $b7
    ld de, $1f2f
    rla
    adc e
    pop af
    ld c, $20
    add a
    ld e, $01
    ld b, $e1
    ld e, $f1
    cp $f2
    db $fc
    db $f4
    ld hl, sp-$18
    inc d
    ld a, [hl]
    add c
    dec h
    or $12
    nop
    db $f4
    ld [hl-], a
    rrca
    rlca
    nop
    inc bc
    ld [$0302], sp
    ld h, b
    nop
    or l
    db $ec
    ret c

    sbc b
    db $fc
    jr @-$42

    db $fc
    ld a, h
    ei
    db $fc
    ld hl, sp-$19

jr_004_7c5c:
    ld [bc], a
    sbc a
    add hl, bc
    jr nc, @+$01

    inc b
    cp e
    ld b, c
    nop
    pop bc
    rst $38
    rlca
    ld hl, sp+$1b
    rst $20
    cpl
    rst $18
    ld a, [de]
    ld e, a
    cp a
    cp a
    pop bc
    jr nz, @+$41

    rst $38
    ld hl, sp+$02
    rlca
    or $f9
    db $fd
    cp $fe
    pop de
    ld c, a
    ld l, b
    ld a, a
    nop
    ld a, a
    ld b, b
    cp a
    and b
    rst $18
    ldh a, [$cf]

jr_004_7c89:
    ld [bc], a
    jr c, jr_004_7c89

    inc bc
    ld bc, $e805
    ld bc, $0752
    ld bc, $77d0
    ld sp, hl
    db $e3
    jr nc, @-$0a

    jp $0d01


    cp [hl]
    pop bc
    db $dd
    and b
    ld [$807f], sp
    rst $10
    inc d
    ld e, h
    ret nc

    rst $28
    ld hl, sp-$19
    ld a, b
    add a
    call c, $a8e3
    ld [hl], e
    cp b
    jp $f378


    ret c

    inc sp
    add hl, bc
    di

Jump_004_7cb9:
    dec d
    db $ed
    ld e, $ef
    rrca
    db $ed
    dec c
    jp hl


    add hl, de
    db $ed
    rla
    db $ed
    rlca
    rst $30
    dec h
    jp c, $fc5c

    ld [hl], $e0
    ret nc

    ret nc

    ldh [rSVBK], a
    db $f4
    or c
    ld a, e
    jp c, $bfbc

    rst $18
    rrca
    add a
    ld e, l
    dec c
    ld a, e
    ld e, $88
    inc c
    sbc h
    call z, $9c2c
    db $dd
    inc a
    db $fc
    db $fd
    ld a, [$51f1]
    adc b
    ld [$0302], sp
    nop
    add b
    ld hl, $0108
    ld a, [de]
    ld bc, $f388
    ld b, $f7
    dec d
    ld [c], a
    ld [bc], a
    ld [de], a
    add c
    ld b, b
    add b
    db $db
    dec d
    jr nc, @+$60

    ld b, d
    ccf
    cp $f7
    ld [hl], a
    cp $fd
    ld a, a
    ld [hl], a
    ld a, a
    scf
    ld a, a
    ld [hl], d
    ccf
    xor l
    sbc $7e
    cp [hl]
    sbc h
    ld a, [hl]
    ld a, [hl+]
    call nz, $e0d1
    cp $f1
    ld e, c
    ld a, $32
    ret nz

    ret nc

    db $e3
    db $e4
    di
    ld h, b
    rst $30
    and b
    ld [hl], a
    ldh [$37], a
    and b
    scf
    ld h, b
    scf
    sub h
    ld h, e
    ld [$0e2e], sp
    dec de
    inc e
    ccf
    add hl, hl
    rra
    ld d, $0d
    add hl, bc
    ld b, $05
    ld [bc], a
    ld [bc], a
    ld bc, $0f01
    ld b, $f5
    ld hl, sp-$1f
    cp $90
    dec sp
    add sp, -$2d
    nop
    cp d
    ld a, h
    ld b, c

jr_004_7d52:
    add b
    or e
    ld a, h
    ld [c], a
    ld bc, $201d
    ld bc, $96a1
    ld [$d600], a
    add a
    ret


    ld de, $c7fe
    ld c, c
    rlca
    dec bc
    inc h
    jp $e280


    dec b
    ld e, a
    sub b
    rrca
    ld c, a
    ld c, e
    ld b, $dd
    ld l, a
    and d
    ld b, c
    ld a, [hl-]
    add l
    jr @+$7b

    ld bc, $f101
    inc de
    ld bc, $01e1
    db $e3
    inc bc
    db $e3
    rlca
    db $e3
    inc bc
    ld [hl+], a
    ld d, [hl]
    adc a
    and $04
    cp a
    inc e
    ld l, c
    db $dd
    jr jr_004_7d52

    ldh [$c0], a
    ld [bc], a
    ret nc

    ldh [$9c], a
    dec b
    or l
    rrca
    ld [$0007], sp
    inc sp
    ld bc, $1431
    nop
    inc de
    db $f4
    inc bc
    db $f4
    dec b
    ld a, [c]
    ld a, [bc]
    di
    db $76
    rlca
    add l
    ret nz

    ld sp, $3f5f
    cp h
    ld e, [hl]
    ld l, $0e
    inc e
    call nc, $35ae
    rrc c
    db $ed
    add l
    rst $38
    ret z

    ldh a, [rNR14]
    adc b
    sub d
    ld h, h
    ld b, b
    ld c, $c8
    cp [hl]
    inc a
    ld b, h
    ret


    sbc h
    dec [hl]
    dec a
    nop
    rrca
    add b
    rrca
    db $10
    rst $08
    add b
    ld e, a
    inc bc
    ld [hl], h
    db $fd
    jp hl


    push af
    inc bc
    adc $05
    adc c
    inc e
    ld [$f1fd], a
    ld [hl], l
    cp d
    ld c, d
    db $dd
    db $e3
    ld l, e
    call c, Call_004_77bb
    rst $18
    ccf
    cpl
    sbc a
    ld a, [$f1fc]
    db $fc
    db $e4
    ld sp, hl
    ldh [$f9], a
    jp z, $d0f1

    db $e3
    and b
    jp $8348


Jump_004_7e01:
    ld d, b
    rrca
    ld e, h
    ld bc, $0180
    jr c, jr_004_7e09

jr_004_7e09:
    adc a
    ld bc, $61f1
    ld [de], a
    cp c
    ld [c], a
    ld h, $c0
    db $d3
    ld h, d
    ld b, b
    db $e3
    adc b
    ld d, b
    rst $10
    ld l, a
    add hl, de
    ld l, a
    ldh a, [rIE]
    add a
    ei
    ld [hl], c
    rst $30
    ei
    ld sp, hl
    di
    pop af
    pop af
    ld a, [de]
    ld bc, $8158
    ld c, h
    ld sp, $f0ed
    or $f8
    adc $01
    ld hl, sp-$74
    add c
    ld sp, $6048
    add a
    ld bc, $c700
    ld b, b
    rlca
    ld hl, $0304
    cpl
    ld [hl], l
    ld [$24f7], sp
    ret c

    ld [de], a
    rst $28
    jr @-$5e

    ld h, l
    rst $18
    nop
    ldh [$35], a
    sbc [hl]
    ld c, $c3
    nop
    rst $38
    jr c, jr_004_7ebf

    sub l
    jp nz, Jump_004_70a9

    ld h, [hl]
    sbc b
    add hl, hl
    ret z

    ld l, e
    ld c, h
    ld e, d
    ld l, l
    push bc
    rrca
    db $fd
    ld [bc], a
    rst $38
    ld [de], a
    db $ec
    ld [hl], c
    adc h
    ld e, $89
    inc a
    dec bc
    dec h
    ld d, $20
    dec d
    ld h, b
    sbc a
    ld c, h
    inc sp
    sub d
    ld [hl], l
    ld c, [hl]
    xor e
    jp $8744


    ld l, h
    ld a, d
    call $db84
    db $10
    ld [c], a
    ld a, [hl+]
    jp nc, Jump_004_6a14

    ld l, b
    scf
    daa
    ld e, b
    push de
    xor $2c
    ld [hl], e
    ld a, [bc]
    cp h
    jp hl


    ld e, l
    ld [hl-], a
    call $74ab
    xor l
    rla
    daa
    rst $08
    ld a, $7f
    ld a, a
    cp a
    xor [hl]
    ld [hl], c
    inc de
    rrca
    dec b
    ld b, e
    dec b
    ld [hl-], a
    jp nz, $f6f1

    ld sp, hl
    ld c, a
    ldh a, [$2f]
    res 1, c
    dec e
    cp $db
    sub d
    ld b, l
    sub d
    and d
    ld [hl], l
    rst $10
    add sp, -$6b

jr_004_7ebf:
    jr c, jr_004_7f2c

    sbc h
    sbc c
    ld b, [hl]
    ld c, [hl]
    inc de
    db $10
    ld b, a
    add hl, hl
    sbc b
    dec a
    ld h, [hl]
    ld c, h
    dec sp
    db $dd
    nop
    ld d, e
    ldh [$31], a
    ret z

    db $e4
    jr jr_004_7f28

    xor $ae
    ld e, a
    ld [hl], a
    ld hl, sp+$68
    push af
    ld e, a
    ldh [$78], a
    ld b, $b0
    cp [hl]
    ld a, a
    dec bc
    ld e, a
    jp hl


    jp $fe76


    ld h, c
    ret


    ld l, d
    ld b, d
    ldh [$cd], a
    ldh [$f1], a
    xor $e9
    or $44
    dec sp
    ld a, [hl+]
    dec e
    dec [hl]
    ld c, $1b
    ld h, $2e
    inc de
    inc h
    add hl, de
    ld [hl], $09
    ld d, h
    add hl, bc
    adc d
    ld [hl], b
    ld [hl], b
    ret nz

    and b
    ret nz

    xor b
    db $10
    sub b
    ldh [$28], a
    ret nz

    add sp, $10
    db $10
    ldh [rOCPS], a
    db $fd
    ld [hl], l
    ei
    or a
    ld a, h
    ld sp, hl
    ld a, $53
    ccf
    ld h, a
    dec de
    ld e, a
    inc hl
    ld d, d
    dec a
    ld a, e
    add b

jr_004_7f28:
    db $e3
    ld hl, sp+$52
    and b

jr_004_7f2c:
    add [hl]
    nop
    ld d, $e8
    db $e4
    ld hl, sp+$2c
    ldh a, [$da]
    nop
    dec h
    dec b
    dec [hl]
    ld [$0c73], sp
    ld l, c
    ld d, $35
    inc l
    ld d, e
    dec sp
    res 1, c
    ld b, h
    sub [hl]
    ld h, b
    call nc, $a8e0
    ret nz

    ld c, b
    sub b
    call c, Call_004_5830
    db $e4
    ld h, b
    adc h
    sub h
    ld [$1028], sp
    nop
    ld sp, $1e2c
    ld d, $0f
    ld a, [bc]
    rlca
    ld [bc], a
    xor b
    jr nc, @-$26

    dec b
    ld sp, $0012
    rlca
    db $e3
    nop
    ld [hl], c
    add b
    ld h, c
    ld b, c
    ld d, d
    add b
    ld b, b
    add l
    ld l, c
    ld e, b
    ld h, $29
    jp nz, Jump_000_2b12

    db $10
    add hl, de
    ld [bc], a
    add e
    db $10
    ret c

    ld bc, $0112
    inc de
    ret nc

    ld c, h
    rra
    nop
    ld a, [$f515]
    ld a, [de]
    ld hl, sp+$17
    db $f4
    ld a, [de]
    sbc b
    rrca
    rst $38
    inc a
    rra
    jp Jump_004_6699


    ld [bc], a
    ld [hl], b
    ld e, $f7
    ld hl, sp+$53
    xor b
    inc bc
    and c
    ld e, b
    ld de, $61e8
    ld e, b
    ld bc, $f021
    ld e, $f8
    ld d, $fc
    ld [de], a
    or [hl]
    ld bc, $0905
    ret c

    dec c
    ld de, $7841
    dec c
    ld d, c
    ld l, b
    ld [hl], c
    ld c, b
    ld bc, $05b4
    add hl, bc
    dec c
    rra
    ld sp, hl
    rla
    ld c, c
    add l
    ld c, l
    ldh [$1f], a
    ldh a, [rBGP]
    call z, Call_004_4118
    rst $38
    ld c, c
    inc a
    jp $0aa7


    ld sp, $2104
    pop de
    add sp, -$7d
    ld c, c
    ld d, c
    xor b
    ld bc, $abf8
    ret nz

    rst $08
    rrca
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
