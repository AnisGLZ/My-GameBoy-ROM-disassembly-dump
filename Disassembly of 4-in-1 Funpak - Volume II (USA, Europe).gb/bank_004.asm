; Disassembly of "4-in-1 Funpak - Volume II (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    call Call_004_4021
    ret


Call_004_4004:
    call Call_000_00bd
    ld a, $05
    call Call_000_05e0
    ld a, $91
    ldh [rLCDC], a
    call Call_000_151b

jr_004_4013:
    call Call_000_1480
    rst $10
    ldh a, [$a9]
    and $0f
    jr z, jr_004_4013

    call Call_000_1521
    ret


Call_004_4021:
    ld a, [$0002]
    ld [$c3b2], a

jr_004_4027:
    call Call_004_4004
    call Call_000_00bd
    ld a, $60
    call Call_000_05e0
    ld a, $93
    ldh [rLCDC], a
    call Call_004_4733
    call Call_004_47e4
    call Call_004_47a7
    call Call_004_45e6
    call Call_000_151b
    call Call_004_405d
    call Call_004_408a
    call Call_004_408e
    jr nc, jr_004_4027

    ld a, [$c3b3]
    cp $01
    jr z, jr_004_4027

    jr jr_004_4059

jr_004_4059:
    call Call_000_1521
    ret


Call_004_405d:
    xor a
    ld [$c3b0], a
    ld a, [$c338]
    or a
    jr nz, jr_004_4074

    ld hl, $432f
    call Call_000_141b
    ld a, $02
    call Call_000_11dc
    jr jr_004_4075

jr_004_4074:
    inc a

jr_004_4075:
    ld [$c3b1], a
    or a
    jr z, jr_004_4086

    ld hl, $42d9
    call Call_000_141b
    ld a, $01
    call Call_000_11dc

jr_004_4086:
    ld [$c41b], a
    ret


Call_004_408a:
    call Call_004_5305
    ret


Call_004_408e:
jr_004_408e:
    call Call_004_53cd
    jr c, jr_004_40c6

    call Call_004_51af
    jr nc, jr_004_40a3

    ld a, [$c3b1]
    or a
    jr z, jr_004_408e

    call Call_004_5159
    jr jr_004_408e

jr_004_40a3:
    ld a, [$c3b1]
    or a
    jr z, jr_004_40b1

    call Call_004_5159
    call Call_004_51af
    jr c, jr_004_408e

jr_004_40b1:
    ld a, [$c3b1]
    or a
    jr z, jr_004_40ba

    call Call_004_40d8

jr_004_40ba:
    ld hl, $4299
    call Call_000_141b
    cp $01
    jr nz, jr_004_40c6

    xor a
    ret


jr_004_40c6:
    scf
    ret


    ld a, [$c41b]
    ld [$c3b0], a
    call Call_004_5159
    ld a, [$c3b0]
    ld [$c41b], a
    ret


Call_004_40d8:
    push af
    push bc
    push de
    push hl
    ld c, $00
    call Call_004_51fb
    or a
    jr z, jr_004_40ed

    dec a
    jr z, jr_004_410f

    ld hl, $4145
    inc c
    jr jr_004_4128

jr_004_40ed:
    ld a, [$c338]
    or a
    jr nz, jr_004_40f9

jr_004_40f3:
    inc c
    ld hl, $4229
    jr jr_004_4128

jr_004_40f9:
    cp $01
    jr nz, jr_004_4103

    inc c
    ld hl, $4181
    jr jr_004_4128

jr_004_4103:
    ld a, [$c303]
    cp $02
    jr z, jr_004_40f3

jr_004_410a:
    ld hl, $4267
    jr jr_004_4128

jr_004_410f:
    ld a, [$c338]
    or a
    jr z, jr_004_410a

    cp $01
    jr nz, jr_004_411f

    inc c
    ld hl, $41d5
    jr jr_004_4128

jr_004_411f:
    ld a, [$c303]
    cp $02
    jr z, jr_004_410a

    jr jr_004_40f3

jr_004_4128:
    ld a, c
    or a
    jr z, jr_004_4131

    ld a, $03
    call Call_000_05a0

jr_004_4131:
    call Call_000_1437
    ld a, [$c435]
    call Call_000_05a0
    pop hl
    pop de
    pop bc
    pop af
    ret


    add c
    ld b, c
    push de
    ld b, c
    ld b, l
    ld b, c
    nop
    ld c, $04
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld b, c
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $6701
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7402
    ld b, c
    nop
    nop
    ld d, h
    ld c, b
    ld b, l
    jr nz, jr_004_41b3

    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_004_41c8

    ld b, c
    ld d, e
    nop
    jr nz, jr_004_4196

    ld b, c
    jr nz, jr_004_41bd

    ld d, d
    ld b, c
    ld d, a
    ld a, [hl]
    jr nz, @+$22

    jr nz, jr_004_4181

jr_004_4181:
    nop
    ld de, $0105
    rlca
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    ld b, c
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $ad01

jr_004_4196:
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $bd02
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c903
    ld b, c
    nop
    nop
    ld b, e
    ld c, a
    ld c, [hl]
    ld b, a
    ld d, d
    ld b, c

jr_004_41b3:
    ld d, h
    ld d, l
    ld c, h
    ld b, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop

jr_004_41bd:
    jr nz, jr_004_41df

    jr nz, jr_004_4211

    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, jr_004_41f9

jr_004_41c8:
    nop
    jr nz, jr_004_41eb

    jr nz, jr_004_4226

    ld c, a
    ld d, l
    jr nz, jr_004_4228

    ld c, c
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    ld de, $0105
    rlca
    nop
    nop
    nop
    nop
    nop

jr_004_41df:
    ld [c], a
    ld b, c
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld b, d

jr_004_41eb:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1102
    ld b, d
    nop
    nop
    nop
    nop

jr_004_41f9:
    nop
    nop
    ld bc, $1d03
    ld b, d
    nop
    nop
    ld b, e
    ld c, a
    ld c, [hl]
    ld b, a
    ld d, d
    ld b, c
    ld d, h
    ld d, l
    ld c, h
    ld b, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop

jr_004_4211:
    jr nz, jr_004_4233

    jr nz, jr_004_4265

    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, jr_004_424e

    nop
    jr nz, jr_004_423f

    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_004_427c

    ld c, c

jr_004_4226:
    ld c, [hl]
    ld a, [hl]

jr_004_4228:
    nop
    nop
    ld de, HeaderLogo
    rlca
    nop
    nop
    nop
    nop
    nop

jr_004_4233:
    ld [hl], $42
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $4b01
    ld b, d

jr_004_423f:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $5b02
    ld b, d
    nop
    nop
    ld b, e
    ld c, a
    ld c, [hl]

jr_004_424e:
    ld b, a
    ld d, d
    ld b, c
    ld d, h
    ld d, l
    ld c, h
    ld b, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop
    jr nz, jr_004_427d

    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_004_42ba

    ld c, c
    ld c, [hl]

jr_004_4265:
    ld a, [hl]
    nop
    nop
    ld a, [bc]
    inc b
    dec b
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld b, d
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $8901

jr_004_427c:
    ld b, d

jr_004_427d:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9002
    ld b, d
    nop
    nop
    jr nz, @+$55

    ld c, a
    ld d, d
    ld d, d
    ld e, c
    nop
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_004_42e1

    ld c, a
    ld d, e
    ld b, l
    nop
    nop
    ld c, $07
    inc bc
    dec b
    nop
    nop
    nop
    nop
    db $10
    and [hl]
    ld b, d
    ld bc, $0003
    nop
    nop
    nop
    ld bc, $c501
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    jp nc, $0042

jr_004_42ba:
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    sub $42
    nop
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_004_432c

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_004_4310

    nop
    ld e, c
    ld b, l
    ld d, e
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    inc d
    dec b
    nop
    ld b, $00
    nop
    nop

jr_004_42e1:
    nop
    jr @-$18

    ld b, d
    ld bc, $0002
    nop
    nop
    nop
    ld b, $01
    ld bc, $0043
    nop
    nop
    nop
    db $fd
    ld b, d
    ld bc, $0903
    ld b, e
    nop
    ld bc, $4301
    add hl, bc
    ld b, e
    inc e
    ld b, e
    ld c, a
    ld d, b
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop
    ld d, h
    ld l, a
    jr nz, jr_004_4380

    ld [hl], h
    ld h, c
    ld [hl], d

jr_004_4310:
    ld [hl], h
    ld a, [hl-]
    jr nz, jr_004_4364

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$33

    nop
    ld d, h
    ld l, a
    jr nz, jr_004_4393

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, [hl-]
    jr nz, jr_004_4377

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d

jr_004_432c:
    jr nz, jr_004_4360

    nop
    nop
    rrca
    ld b, $02
    ld b, $00
    nop
    nop
    nop
    ld [$433c], sp
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    inc b
    ld bc, $4363
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6b03
    ld b, e
    nop
    nop
    nop
    nop
    ld e, a
    ld b, e
    inc bc
    inc b
    add d
    ld b, e
    ld bc, $6301
    ld b, e
    ld l, e
    ld b, e
    ld a, c

jr_004_4360:
    ld b, e
    add d
    ld b, e
    ld c, a

jr_004_4364:
    ld d, b
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_004_43d2

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h

jr_004_4377:
    ld a, [hl-]
    nop
    jr nz, jr_004_43c9

    ld c, a
    jr nz, jr_004_43cd

    ld c, [hl]
    ld b, l

jr_004_4380:
    jr nz, jr_004_4382

jr_004_4382:
    ld b, e
    ld c, a
    ld c, l
    ld d, b
    ld d, l
    ld d, h
    ld b, l
    ld d, d
    nop
    ld c, a
    ld d, b
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop

jr_004_4393:
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld a, [hl-]
    nop
    jr nz, jr_004_43c3

    ld c, [hl]
    ld l, a
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_004_43aa

jr_004_43aa:
    ld b, e
    ld l, a
    ld l, l
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    and c
    ld b, e
    xor d
    ld b, e
    ld bc, $0598
    sbc b
    add hl, bc
    sbc b
    dec c
    sbc b
    ld de, $8d98
    sbc b

jr_004_43c3:
    xor l
    sbc b
    call $ed98
    sbc b

jr_004_43c9:
    dec c
    sbc c
    dec l
    sbc c

jr_004_43cd:
    ld c, l
    sbc c
    ld l, l
    sbc c
    adc l

jr_004_43d2:
    sbc c
    xor l
    sbc c
    call $ed99
    sbc c
    inc l
    sbc d

Call_004_43db:
    push bc
    push de
    push hl
    jr nc, jr_004_43e2

    add $06

jr_004_43e2:
    push af
    push af
    ld hl, $43b7
    ld a, c
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_43ef

    inc h

jr_004_43ef:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop af
    add $04
    push af
    ld hl, $0d79
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_4407

    inc h

jr_004_4407:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    inc hl
    inc hl
    ld c, $1f
    push af
    call Call_000_00ee
    pop af
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, c
    add e
    ld e, a
    jr nc, jr_004_4422

    inc d

jr_004_4422:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop hl
    pop de
    pop bc
    ret


    ld a, $05
    ld [$c402], a
    ld a, $0c
    ld [$c403], a
    ret


Call_004_4436:
    push de
    push hl
    ld e, l
    ld d, h
    push af
    ld hl, $0d79
    ld a, $01
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_4447

    inc h

jr_004_4447:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    inc hl
    inc hl
    push af
    call Call_000_00ee
    pop af
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop hl
    pop de
    ret


Call_004_445d:
    push hl
    xor a
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    ld [hl], a
    pop hl
    ret


Call_004_4468:
    push de
    push hl
    ld a, [$c402]
    cp $05
    jr nc, jr_004_448b

    push af
    ld hl, $43b7
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_447d

    inc h

jr_004_447d:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld de, $0040
    add hl, de
    call Call_004_445d

jr_004_448b:
    pop hl
    pop de
    ret


Call_004_448e:
    push de
    push hl
    ld a, [$c402]
    cp $05
    jr nc, jr_004_44b1

    push af
    ld hl, $43b7
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_44a3

    inc h

jr_004_44a3:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld de, $0040
    add hl, de
    call Call_004_4436

jr_004_44b1:
    pop hl
    pop de
    ret


Call_004_44b4:
    push bc
    push de
    push hl
    cp $05
    jr c, jr_004_44bc

    xor a

jr_004_44bc:
    ld b, a
    ld a, [$c402]
    cp $05
    jr nc, jr_004_452f

    cp b
    jr z, jr_004_452f

    ld c, a
    ld a, b
    ld [$c402], a
    push af
    ld hl, $43b7
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_44d8

    inc h

jr_004_44d8:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld de, $0040
    add hl, de
    ld e, l
    ld d, h
    ld a, c
    push af
    ld hl, $43b7
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_44f2

    inc h

jr_004_44f2:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld bc, $0040
    add hl, bc
    jr jr_004_4510

jr_004_44ff:
    call Call_004_445d
    inc hl
    call Call_004_4436
    push bc
    ld b, $02

jr_004_4509:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_004_4509

    pop bc

jr_004_4510:
    ld a, h
    cp d
    jr c, jr_004_44ff

    jr nz, jr_004_451c

    ld a, l
    cp e
    jr c, jr_004_44ff

    jr z, jr_004_454d

jr_004_451c:
    call Call_004_445d
    dec hl
    call Call_004_4436
    push bc
    ld b, $02

jr_004_4526:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_004_4526

    pop bc
    jr jr_004_4510

jr_004_452f:
    ld a, b
    ld [$c402], a
    push af
    ld hl, $43b7
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_453f

    inc h

jr_004_453f:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld de, $0040
    add hl, de
    call Call_004_4436

jr_004_454d:
    pop hl
    pop de
    pop bc
    ret


Call_004_4551:
    push hl
    ld a, [$c403]
    cp $0c
    jr nc, jr_004_4582

    push af
    ld hl, $43c1
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_4565

    inc h

jr_004_4565:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    inc hl
    inc hl
    ld a, [$c3b1]
    or a
    jr z, jr_004_457a

    ld a, [$c3b0]
    or a
    jr z, jr_004_457b

jr_004_457a:
    inc hl

jr_004_457b:
    xor a
    push af
    call Call_000_00ee
    pop af
    ld [hl], a

jr_004_4582:
    pop hl
    ret


Call_004_4584:
    push de
    push hl
    ld a, [$c403]
    cp $0c
    jr nc, jr_004_45d2

    push af
    ld hl, $43c1
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_4599

    inc h

jr_004_4599:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld e, l
    ld d, h
    inc de
    inc de
    ld a, [$c3b1]
    or a
    ld a, $02
    jr z, jr_004_45b4

    ld a, [$c3b0]
    or a
    ld a, $02
    jr z, jr_004_45b6

jr_004_45b4:
    inc de
    inc a

jr_004_45b6:
    push af
    ld hl, $0d79
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_45c2

    inc h

jr_004_45c2:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    inc hl
    inc hl
    push af
    call Call_000_00ee
    pop af
    ld a, [hl+]
    ld [de], a

jr_004_45d2:
    pop hl
    pop de
    ret


Call_004_45d5:
    push af
    call Call_004_4551
    pop af
    cp $0c
    jr c, jr_004_45df

    xor a

jr_004_45df:
    ld [$c403], a
    call Call_004_4584
    ret


Call_004_45e6:
    push bc
    ld b, $00

jr_004_45e9:
    push bc
    rst $10
    pop bc
    ld a, b
    call Call_004_46e3
    ld c, b
    call Call_004_43db
    inc b
    ld a, b
    cp $05
    jr nz, jr_004_45e9

    pop bc
    ret


Call_004_45fc:
    push de
    push hl
    push af
    push af
    ld hl, $43c1
    ld a, a
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_460b

    inc h

jr_004_460b:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, [$c3b1]
    or a
    jr z, jr_004_461e

    ld a, [$c3b0]
    or a
    jr z, jr_004_4622

jr_004_461e:
    ld de, $0004
    add hl, de

jr_004_4622:
    ld e, l
    ld d, h
    pop af
    call Call_004_5189
    push af
    push de
    ld h, $00
    ld l, a
    ld de, $c411
    call Call_000_0ff9
    ld hl, $c411
    call Call_000_103f
    pop de
    pop af
    jr c, jr_004_4652

    cp $7f
    jr nz, jr_004_464c

    ld hl, $c414
    ld a, $20
    ld [hl+], a
    ld a, $2d
    ld [hl+], a
    jr jr_004_4652

jr_004_464c:
    ld hl, $c414
    call Call_000_105d

jr_004_4652:
    ld hl, $c414
    call Call_000_0fed
    pop hl
    pop de
    ret


Call_004_465b:
    push de
    push hl
    push af
    ld hl, $43c1
    ld a, $0c
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_466a

    inc h

jr_004_466a:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, [$c3b1]
    or a
    jr z, jr_004_467d

    ld a, [$c3b0]
    or a
    jr z, jr_004_4681

jr_004_467d:
    ld de, $0004
    add hl, de

jr_004_4681:
    ld e, l
    ld d, h
    push de
    call Call_004_51d7
    ld de, $c411
    call Call_000_0ff9
    ld hl, $c411
    call Call_000_103f
    pop de
    ld hl, $c413
    call Call_000_0fed
    pop hl
    pop de
    ret


Call_004_469d:
    push bc
    ld b, $00

jr_004_46a0:
    push bc
    rst $10
    pop bc
    ld a, b
    call Call_004_45fc
    inc b
    ld a, $0b
    cp b
    jr nc, jr_004_46a0

    rst $10
    call Call_004_465b
    pop bc
    ret


    call Call_004_45e6
    call Call_004_469d
    ret


Call_004_46ba:
    push hl
    ld h, $00
    ld l, e
    ld e, d
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


    push de
    call Call_004_46ba
    call Call_000_0fe1
    pop de
    ret


    push de
    push hl
    call Call_004_46ba
    call Call_000_0fed
    pop hl
    pop de
    ret


Call_004_46e3:
    push hl
    ld hl, $c3b4
    push af
    add l
    ld l, a
    jr nc, jr_004_46ed

    inc h

jr_004_46ed:
    pop af
    ld a, [hl]
    ld l, a
    and $7f
    ld h, a
    ld a, l
    sla a
    ld a, h
    pop hl
    ret


Call_004_46f9:
    push hl
    ld hl, $c3b4
    push af
    add l
    ld l, a
    jr nc, jr_004_4703

    inc h

jr_004_4703:
    pop af
    ld a, $80
    and [hl]
    or c
    ld [hl], a
    pop hl
    ret


Call_004_470b:
    push bc
    ld c, a
    ld b, $05

jr_004_470f:
    dec b
    ld a, b
    call Call_004_46e3
    jr c, jr_004_4719

    cp c
    jr z, jr_004_471e

jr_004_4719:
    ld a, b
    or a
    jr nz, jr_004_470f

    scf

jr_004_471e:
    ccf
    ld a, b
    pop bc
    ret


Call_004_4722:
    push hl
    ld hl, $c3b4
    push af
    add l
    ld l, a
    jr nc, jr_004_472c

    inc h

jr_004_472c:
    pop af
    ld a, [hl]
    or $80
    ld [hl], a
    pop hl
    ret


Call_004_4733:
    push bc
    ld b, $05

jr_004_4736:
    ld a, b
    dec a
    call Call_004_4722
    dec b
    jr nz, jr_004_4736

    pop bc
    ret


Call_004_4740:
    push bc
    ld c, a
    ld b, $05

jr_004_4744:
    ld a, b
    dec a
    call Call_004_4796
    ld a, b
    dec a
    call Call_004_46e3
    cp c
    jr nz, jr_004_4756

    ld a, b
    dec a
    call Call_004_4722

jr_004_4756:
    dec b
    jr nz, jr_004_4744

    pop bc
    ret


Call_004_475b:
    push bc
    ld c, a
    ld b, $05

jr_004_475f:
    ld a, b
    dec a
    call Call_004_4796
    ld a, b
    dec a
    call Call_004_46e3
    cp c
    jr z, jr_004_4771

    ld a, b
    dec a
    call Call_004_4722

jr_004_4771:
    dec b
    jr nz, jr_004_475f

    pop bc
    ret


Call_004_4776:
    push bc
    ld b, $06

jr_004_4779:
    ld a, b
    dec a
    call Call_004_48b7
    jr jr_004_478d

jr_004_4780:
    ld c, a
    ld a, b
    dec a
    call Call_004_470b
    jr nc, jr_004_478b

    call Call_004_4722

jr_004_478b:
    ld a, c
    dec a

jr_004_478d:
    cp $02
    jr nc, jr_004_4780

    dec b
    jr nz, jr_004_4779

    pop bc
    ret


Call_004_4796:
    push hl
    ld hl, $c3b4
    push af
    add l
    ld l, a
    jr nc, jr_004_47a0

    inc h

jr_004_47a0:
    pop af
    ld a, [hl]
    and $7f
    ld [hl], a
    pop hl
    ret


Call_004_47a7:
    push bc
    ld b, $05

jr_004_47aa:
    ld a, b
    dec a
    call Call_004_4796
    dec b
    jr nz, jr_004_47aa

    pop bc
    ret


Call_004_47b4:
    push hl
    ld hl, $c3b4
    push af
    add l
    ld l, a
    jr nc, jr_004_47be

    inc h

jr_004_47be:
    pop af
    ld a, [hl]
    xor $80
    ld [hl], a
    pop hl
    ret


Call_004_47c5:
    push bc
    ld b, $05

jr_004_47c8:
    ld a, b
    dec a
    call Call_004_46e3
    jr c, jr_004_47d3

    dec b
    jr nz, jr_004_47c8

    xor a

jr_004_47d3:
    pop bc
    ret


Call_004_47d5:
    push bc
    ld b, a
    ld a, $06
    call Call_000_14ae
    ld c, a
    ld a, b
    call Call_004_46f9
    ld a, c
    pop bc
    ret


Call_004_47e4:
    push bc
    ld b, $05

jr_004_47e7:
    ld a, b
    dec a
    call Call_004_46e3
    jr nc, jr_004_47f3

    ld a, b
    dec a
    call Call_004_47d5

jr_004_47f3:
    dec b
    jr nz, jr_004_47e7

    call Call_004_45e6
    pop bc
    ret


Call_004_47fb:
    push bc
    push de
    push hl
    ld hl, $c3b9
    ld b, $05

jr_004_4803:
    ld a, b
    dec a
    call Call_004_46e3
    ld a, $00
    jr nc, jr_004_4813

    ld a, $0f
    call Call_000_14ae
    add $0a

jr_004_4813:
    ld [hl+], a
    dec b
    jr nz, jr_004_4803

jr_004_4817:
    ld hl, $c3b9
    ld b, $05
    ld e, $00

jr_004_481e:
    ld a, [hl]
    or a
    jr z, jr_004_4847

    ld e, $01
    ld a, $06
    call Call_000_14ae
    ld c, a
    ld a, b
    dec a
    call Call_004_46e3
    cp c
    jr nz, jr_004_483a

    inc c
    ld a, c
    cp $06
    jr c, jr_004_483a

    ld c, $00

jr_004_483a:
    ld a, b
    dec a
    call Call_004_46f9
    dec [hl]
    jr nz, jr_004_4847

    ld a, b
    dec a
    call Call_004_4796

jr_004_4847:
    inc hl
    dec b
    jr nz, jr_004_481e

    call Call_004_45e6
    ld a, e
    or a
    jr nz, jr_004_4817

    pop hl
    pop de
    pop bc
    ret


Call_004_4856:
    push bc
    push hl
    ld hl, $c3c3
    ld b, $06
    xor a

jr_004_485e:
    ld [hl+], a
    dec b
    jr nz, jr_004_485e

    ld b, $05

jr_004_4864:
    ld a, b
    dec a
    call Call_004_46e3
    ld hl, $c3c3
    push af
    add l
    ld l, a
    jr nc, jr_004_4872

    inc h

jr_004_4872:
    pop af
    inc [hl]
    dec b
    jr nz, jr_004_4864

    ld b, $06
    ld c, $00
    ld hl, $c3c3

jr_004_487e:
    ld a, [hl+]
    or a
    jr z, jr_004_4883

    inc c

jr_004_4883:
    dec b
    jr nz, jr_004_487e

    ld a, c
    ld [$c3c9], a
    pop hl
    pop bc
    ret


Call_004_488d:
    push bc
    push de
    push hl
    ld b, $06
    ld hl, $c3c3
    ld d, $00
    ld e, $01

jr_004_4899:
    ld a, [hl+]
    or a
    jr z, jr_004_48a0

    ld a, d
    or e
    ld d, a

jr_004_48a0:
    sla e
    dec b
    jr nz, jr_004_4899

    ld a, d
    ld [$c3ca], a
    pop hl
    pop de
    pop bc
    ret


Call_004_48ad:
    call Call_004_4856
    call Call_004_488d
    call Call_004_4965
    ret


Call_004_48b7:
    push hl
    ld hl, $c3c3
    push af
    add l
    ld l, a
    jr nc, jr_004_48c1

    inc h

jr_004_48c1:
    pop af
    ld a, [hl]
    or a
    pop hl
    ret


Call_004_48c6:
    push bc
    push hl
    cp $06
    jr z, jr_004_48e0

    jr nc, jr_004_48f2

    ld c, a
    inc c
    call Call_004_48b7
    or a
    jp z, Jump_004_4960

    ld b, a
    xor a

jr_004_48d9:
    add c
    dec b
    jr nz, jr_004_48d9

    jp Jump_004_4961


jr_004_48e0:
    ld c, $00
    ld b, $05

jr_004_48e4:
    ld a, b
    dec a
    call Call_004_46e3
    inc a
    add c
    ld c, a
    dec b
    jr nz, jr_004_48e4

    jp Jump_004_4961


jr_004_48f2:
    cp $07
    jr nz, jr_004_490f

    ld a, [$c3c9]
    cp $02
    jr nz, jr_004_4960

    xor a
    call Call_004_46e3
    call Call_004_48b7
    cp $02
    jr z, jr_004_48e0

    cp $03
    jr z, jr_004_48e0

    jp Jump_004_4960


jr_004_490f:
    cp $08
    jr nz, jr_004_4930

    ld a, [$c3c9]
    cp $01
    jr z, jr_004_48e0

    cp $02
    jr nz, jr_004_4960

    xor a
    call Call_004_46e3
    call Call_004_48b7
    cp $01
    jr z, jr_004_48e0

    cp $04
    jr z, jr_004_48e0

    jp Jump_004_4960


jr_004_4930:
    cp $09
    jr nz, jr_004_4940

    ld a, [$c3ca]
    cp $1f
    jr nz, jr_004_4960

    ld a, $1e
    jp Jump_004_4961


jr_004_4940:
    cp $0a
    jr nz, jr_004_4950

    ld a, [$c3ca]
    cp $3e
    jr nz, jr_004_4960

    ld a, $1e
    jp Jump_004_4961


jr_004_4950:
    cp $0b
    jr nz, jr_004_4960

    ld a, [$c3c9]
    cp $01
    jr nz, jr_004_4960

    ld a, $32
    jp Jump_004_4961


Jump_004_4960:
jr_004_4960:
    xor a

Jump_004_4961:
    or a
    pop hl
    pop bc
    ret


Call_004_4965:
    push bc
    push hl
    ld hl, $c3cb
    ld b, $00

jr_004_496c:
    ld a, b
    call Call_004_48c6
    ld [hl+], a
    inc b
    ld a, $0b
    cp b
    jr nc, jr_004_496c

    pop hl
    pop bc
    ret


Call_004_497a:
    push hl
    ld hl, $c3cb
    push af
    add l
    ld l, a
    jr nc, jr_004_4984

    inc h

jr_004_4984:
    pop af
    ld a, [hl]
    or a
    pop hl
    ret


Call_004_4989:
    call Call_004_47fb
    call Call_004_47a7
    call Call_004_45e6
    call Call_004_48ad
    ret


    inc de
    ld c, e
    ld e, [hl]
    ld c, h
    push de
    ld c, h

Call_004_499c:
    push bc
    ld c, $a9
    ld a, [$c3b1]
    cp $03
    jr c, jr_004_49ad

    ld a, [$c3b0]
    or a
    jr z, jr_004_49ad

    inc c

jr_004_49ad:
    ld a, [c]
    pop bc
    ret


Call_004_49b0:
    rst $10
    call Call_004_499c
    and $0f
    ret


jr_004_49b7:
    call Call_004_49b0
    jr nz, jr_004_49b7

    ret


Call_004_49bd:
jr_004_49bd:
    rst $10
    call Call_004_499c
    or a
    jr z, jr_004_49bd

    ret


    nop
    ld [$0605], sp
    ld b, $00
    nop
    nop
    nop
    nop
    jp nc, $0049

    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $49e7
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    db $ec
    ld c, c
    nop
    nop
    ld d, d
    ld l, a
    ld l, h
    ld l, h
    nop
    ld d, e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    nop
    nop
    ld de, $0103
    ld [$0000], sp
    nop
    nop
    nop
    rst $38
    ld c, c
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0a01
    ld c, d
    nop
    nop
    ld d, e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_004_4a75

    ld h, c
    ld [hl], h
    ld h, l
    ld h, a
    ld l, a
    ld [hl], d
    ld a, c
    nop
    nop
    db $10
    dec b
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    daa
    ld c, d
    ld bc, $0002
    nop
    nop
    nop
    ld [bc], a
    ld bc, $4a3c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld b, l
    ld c, d
    nop
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    nop
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    nop
    ld [de], a
    rlca
    ld bc, $0005
    nop
    nop
    nop
    nop
    ld d, a
    ld c, d
    ld bc, $0004
    nop
    nop
    nop
    dec b
    ld bc, $4a8c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    sub h
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    sbc l
    ld c, d
    nop

jr_004_4a75:
    nop
    ret nc

    ld c, d
    add [hl]
    ld c, d
    ld [bc], a
    dec b
    and e
    ld c, d
    ld bc, $8c02
    ld c, d
    sub h
    ld c, d
    sbc l
    ld c, d
    and e
    ld c, d
    or d
    ld c, d
    pop bc
    ld c, d
    ld c, a
    ld d, b
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop
    ld c, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_004_4b00

    ld h, c
    ld l, l
    ld h, l
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], h
    nop
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld a, [hl-]
    jr nz, jr_004_4acb

    jr nz, jr_004_4afc

    ld b, [hl]
    ld b, [hl]
    jr nz, jr_004_4ad1

    nop
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld a, [hl-]
    jr nz, jr_004_4b0e

    ld l, b
    ld h, l
    ld l, l
    ld h, l
    jr nz, jr_004_4af1

    nop
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld a, [hl-]
    jr nz, @+$56

    ld l, b
    ld h, l

jr_004_4acb:
    ld l, l
    ld h, l
    jr nz, jr_004_4b01

    nop
    push af

jr_004_4ad1:
    push bc
    push de
    push hl
    or a
    jr z, jr_004_4ae2

    dec a
    jr nz, jr_004_4ade

    ld a, $02
    jr jr_004_4ae3

jr_004_4ade:
    ld a, $01
    jr jr_004_4ae3

jr_004_4ae2:
    xor a

jr_004_4ae3:
    ld [$c3b2], a
    call Call_000_05a0
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_004_4aee:
    push bc
    ld b, a

jr_004_4af0:
    inc b

jr_004_4af1:
    ld a, b
    cp $0c
    jr c, jr_004_4af8

    ld b, $00

jr_004_4af8:
    ld a, b
    call Call_004_5189

jr_004_4afc:
    jr c, jr_004_4af0

    ld a, b
    pop bc

jr_004_4b00:
    ret


Call_004_4b01:
jr_004_4b01:
    push bc
    ld b, a

jr_004_4b03:
    ld a, b
    or a
    jr nz, jr_004_4b09

    ld b, $0c

jr_004_4b09:
    dec b
    ld a, b
    call Call_004_5189

jr_004_4b0e:
    jr c, jr_004_4b03

    ld a, b
    pop bc
    ret


    ld a, $05
    call Call_000_0579
    xor a
    ld [$c41a], a
    ld a, $ff
    call Call_004_4aee
    call Call_004_45d5
    call Call_004_4551
    xor a
    call Call_004_44b4

Jump_004_4b2b:
jr_004_4b2b:
    call Call_004_49bd
    bit 6, a
    jr z, jr_004_4b48

    ld a, [$c41a]
    or a
    jr z, jr_004_4b2b

    ld a, $04
    call Call_000_0579
    ld a, [$c403]
    call Call_004_4b01
    call Call_004_45d5
    jr jr_004_4b2b

jr_004_4b48:
    bit 7, a
    jr z, jr_004_4b63

    ld a, [$c41a]
    or a
    jp z, Jump_004_4b2b

    ld a, $04
    call Call_000_0579
    ld a, [$c403]
    call Call_004_4aee
    call Call_004_45d5
    jr jr_004_4b2b

jr_004_4b63:
    bit 5, a
    jr z, jr_004_4b80

    ld a, [$c41a]
    or a
    jr nz, jr_004_4b2b

    ld a, $04
    call Call_000_0579
    ld a, [$c402]
    or a
    jr nz, jr_004_4b7a

    ld a, $05

jr_004_4b7a:
    dec a
    call Call_004_44b4
    jr jr_004_4b2b

jr_004_4b80:
    bit 4, a
    jr z, jr_004_4b98

    ld a, [$c41a]
    or a
    jr nz, jr_004_4b2b

    ld a, $04
    call Call_000_0579
    ld a, [$c402]
    inc a
    call Call_004_44b4
    jr jr_004_4b2b

jr_004_4b98:
    bit 2, a
    jr z, jr_004_4bed

    ld a, [$c41a]
    or a
    jr nz, jr_004_4bc8

    call Call_004_47c5
    jp c, Jump_004_4c56

    ld hl, $49c5
    call Call_000_141b
    jp nc, Jump_004_4b2b

    or a
    jp z, Jump_004_4b2b

jr_004_4bb5:
    ld a, $05
    call Call_000_0579
    call Call_004_4468
    call Call_004_4584
    ld a, $01
    ld [$c41a], a
    jp Jump_004_4b2b


jr_004_4bc8:
    call Call_004_47c5
    jr nc, jr_004_4bdc

    ld hl, $49c5
    call Call_000_141b
    jp nc, Jump_004_4b2b

    or a
    jr z, jr_004_4c1b

    call Call_004_47a7

jr_004_4bdc:
    ld a, [$c403]
    call Call_004_5189
    jp nc, Jump_004_4c56

    ld a, $01
    call Call_000_0579
    jp Jump_004_4b2b


jr_004_4bed:
    bit 3, a
    jr z, jr_004_4c11

    push hl
    ld hl, $4a4a
    call Call_000_141b
    pop hl
    jp nc, Jump_004_4b2b

    cp $03
    jp z, Jump_004_4b2b

    push af
    call Call_004_4468
    call Call_004_4551
    pop af
    ld [$c3b3], a
    scf
    ret


    jp Jump_004_4b2b


jr_004_4c11:
    bit 1, a
    jr z, jr_004_4c2d

    ld a, [$c41a]
    or a
    jr z, jr_004_4bb5

jr_004_4c1b:
    ld a, $05
    call Call_000_0579
    call Call_004_4551
    call Call_004_448e
    xor a
    ld [$c41a], a
    jp Jump_004_4b2b


jr_004_4c2d:
    bit 0, a

Call_004_4c2f:
    jp z, Jump_004_4b2b

    ld a, [$c41a]
    or a
    jr nz, jr_004_4bc8

    ld a, [$c402]
    call Call_004_46e3
    jr nc, jr_004_4c44

    ld a, $03
    jr jr_004_4c46

jr_004_4c44:
    ld a, $02

jr_004_4c46:
    call Call_000_0579
    ld a, [$c402]
    call Call_004_47b4
    rst $10
    call Call_004_45e6
    jp Jump_004_4b2b


Jump_004_4c56:
    call Call_004_4468
    call Call_004_4551
    xor a
    ret


    ld a, $05
    call Call_000_0579
    ld hl, $49f2
    call Call_000_1437
    ld a, $ff
    call Call_004_4aee
    call Call_004_45d5

Jump_004_4c71:
jr_004_4c71:
    call Call_004_49bd
    bit 6, a
    jr z, jr_004_4c88

    ld a, $04
    call Call_000_0579
    ld a, [$c403]
    call Call_004_4b01
    call Call_004_45d5
    jr jr_004_4c71

jr_004_4c88:
    bit 7, a
    jr z, jr_004_4c9c

    ld a, $04
    call Call_000_0579
    ld a, [$c403]
    call Call_004_4aee
    call Call_004_45d5
    jr jr_004_4c71

jr_004_4c9c:
    bit 0, a
    jr nz, jr_004_4ca4

    bit 2, a
    jr z, jr_004_4cb4

jr_004_4ca4:
    ld a, [$c403]
    call Call_004_5189
    jr nc, jr_004_4cd0

    ld a, $01
    call Call_000_0579
    jp Jump_004_4c71


jr_004_4cb4:
    bit 3, a
    jr z, jr_004_4c71

    push hl
    ld hl, $4a4a
    call Call_000_141b
    pop hl
    jr nc, jr_004_4c71

    cp $03
    jr z, jr_004_4c71

    push af
    call Call_004_4551
    pop af
    scf
    ld [$c3b3], a
    ret


jr_004_4cd0:
    call Call_004_4551
    xor a
    ret


    push af
    ld hl, $4cee
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_4ce3

    inc h

jr_004_4ce3:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_000_1437
    ret


    ld a, [c]
    ld c, h
    add hl, de
    ld c, l
    nop
    db $10
    inc bc
    ld [bc], a
    ld [$0000], sp
    nop
    nop
    nop
    rst $38
    ld c, h
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0a01
    ld c, l
    nop
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$33

    jr nz, @+$54

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    nop
    nop
    db $10
    inc bc
    ld [bc], a
    ld [$0000], sp
    nop
    nop
    nop
    ld h, $4d
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $3101
    ld c, l
    nop
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$34

    jr nz, jr_004_4d8d

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    nop
    reti


    ld c, [hl]
    jr z, jr_004_4d94

    and c
    ld d, b

Call_004_4d46:
    push bc
    push de
    push hl
    ld a, $ff
    ld h, a
    ld d, a
    xor a
    ld l, a
    ld e, $06
    ld b, a

jr_004_4d52:
    ld a, b
    call Call_004_48b7
    or a
    jr z, jr_004_4d63

    cp l
    jr c, jr_004_4d5e

    ld l, a
    ld h, b

jr_004_4d5e:
    cp e
    jr nc, jr_004_4d63

    ld e, a
    ld d, b

jr_004_4d63:
    inc b
    ld a, b
    cp $06
    jr nz, jr_004_4d52

    ld a, h
    ld [$c400], a
    ld a, d
    ld [$c401], a
    pop hl
    pop de
    pop bc
    ret


Call_004_4d75:
    push bc
    push hl
    ld h, $ff
    ld l, $00
    ld b, l

jr_004_4d7c:
    ld a, b
    call Call_004_5189
    jr c, jr_004_4d8d

    ld a, b
    call Call_004_48b7
    jr z, jr_004_4d8d

    cp l
    jr c, jr_004_4d8d

    ld l, a
    ld h, b

jr_004_4d8d:
    inc b
    ld a, b
    cp $06
    jr nz, jr_004_4d7c

    ld a, h

jr_004_4d94:
    cp $ff
    jr z, jr_004_4d9d

    call Call_004_475b
    jr jr_004_4db2

jr_004_4d9d:
    ld a, $06
    call Call_004_5189
    jr nc, jr_004_4da9

    call Call_004_4733
    jr jr_004_4db2

jr_004_4da9:
    xor a
    call Call_004_4740
    ld a, $01
    call Call_004_4740

jr_004_4db2:
    pop hl
    pop bc
    ret


Call_004_4db5:
    push bc
    push de
    ld b, $00
    ld c, $ff

jr_004_4dbb:
    ld a, b
    call Call_004_46e3
    jr nc, jr_004_4dc2

    ld c, b

jr_004_4dc2:
    inc b
    ld a, b
    cp $05
    jr c, jr_004_4dbb

    ld a, c
    cp $ff
    jr z, jr_004_4e0c

    ld e, c
    ld a, $ff

jr_004_4dd0:
    inc a
    call Call_004_44b4
    ld a, [$c402]
    ld c, a
    call Call_004_46e3
    jr nc, jr_004_4e03

    push af
    push bc
    ld b, $04

jr_004_4de1:
    call Call_004_4468
    push bc
    ld b, $0a

jr_004_4de7:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_004_4de7

    pop bc
    call Call_004_448e
    push bc
    ld b, $0a

jr_004_4df4:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_004_4df4

    pop bc
    dec b
    jr nz, jr_004_4de1

    pop bc
    pop af
    call Call_004_43db

jr_004_4e03:
    ld a, [$c402]
    cp e
    jr nz, jr_004_4dd0

    call Call_004_4468

jr_004_4e0c:
    pop de
    pop bc
    ret


Call_004_4e0f:
    push bc
    ld b, $07
    ld c, $00

jr_004_4e14:
    ld a, b
    call Call_004_5189
    rl c
    inc b
    ld a, b
    cp $0c
    jr c, jr_004_4e14

    ld a, c
    pop bc
    ret


Call_004_4e23:
    push bc
    push de
    call Call_004_4e0f
    cp $16
    jr z, jr_004_4e34

    cp $1e
    jr z, jr_004_4e34

    cp $17
    jr nz, jr_004_4e5f

jr_004_4e34:
    ld b, $00
    ld e, b
    ld d, $ff

jr_004_4e39:
    ld a, b
    call Call_004_48b7
    cp e
    jr c, jr_004_4e50

    jr nz, jr_004_4e4e

Call_004_4e42:
    ld a, b
    call Call_004_5189
    jr nc, jr_004_4e4e

    ld a, d
    call Call_004_5189
    jr nc, jr_004_4e50

jr_004_4e4e:
    ld d, b
    ld e, a

jr_004_4e50:
    inc b
    ld a, b
    cp $06
    jr c, jr_004_4e39

    ld a, [$c400]
    call Call_004_475b
    scf
    jr jr_004_4e6c

jr_004_4e5f:
    cp $19
    jr z, jr_004_4e6f

    cp $1d
    jr z, jr_004_4e7c

    cp $1a
    jr z, jr_004_4e76

    xor a

jr_004_4e6c:
    pop de
    pop bc
    ret


jr_004_4e6f:
    xor a
    call Call_004_48b7
    or a
    jr z, jr_004_4e7c

jr_004_4e76:
    xor a
    call Call_004_4740
    jr jr_004_4e81

jr_004_4e7c:
    ld a, $05
    call Call_004_4740

jr_004_4e81:
    call Call_004_4776
    scf
    jr jr_004_4e6c

    push bc
    ld a, $0b
    call Call_004_5189
    jr nc, jr_004_4e96

    ld a, $08
    call Call_004_5189
    jr c, jr_004_4ed6

jr_004_4e96:
    ld a, $07
    call Call_004_5189
    jr nc, jr_004_4ed6

    ld a, $09
    call Call_004_5189
    jr nc, jr_004_4ed6

    ld a, $0a
    call Call_004_5189
    jr nc, jr_004_4ed6

    ld b, $00
    ld e, b
    ld d, $ff

jr_004_4eb0:
    ld a, b
    call Call_004_48b7
    cp e
    jr c, jr_004_4ec7

    jr nz, jr_004_4ec5

    ld a, b
    call Call_004_5189
    jr nc, jr_004_4ec5

    ld a, d
    call Call_004_5189
    jr nc, jr_004_4ec7

jr_004_4ec5:
    ld d, b
    ld e, a

jr_004_4ec7:
    inc b
    ld a, b
    cp $06
    jr c, jr_004_4eb0

    ld a, [$c400]
    call Call_004_475b
    scf
    jr jr_004_4ed7

jr_004_4ed6:
    xor a

jr_004_4ed7:
    pop bc
    ret


    push bc
    call Call_004_47a7
    call Call_004_4d46
    call Call_004_4e23
    jp c, Jump_004_4fe3

    ld a, [$c3c9]
    dec a
    jr nz, jr_004_4f16

    ld a, $0b
    call Call_004_5189
    jp nc, Jump_004_4fe3

    ld a, $08
    call Call_004_5189
    jr c, jr_004_4f02

    xor a
    call Call_004_4722
    jp Jump_004_4fe3


jr_004_4f02:
    ld a, $07
    call Call_004_5189
    jp c, Jump_004_4fe0

    xor a
    call Call_004_4722
    ld a, $01
    call Call_004_4722
    jp Jump_004_4fe3


jr_004_4f16:
    dec a
    jr nz, jr_004_4f70

    ld a, [$c400]
    call Call_004_48b7
    cp $04
    jr nz, jr_004_4f4a

    ld a, $0b
    call Call_004_5189
    jp nc, Jump_004_4fd8

    ld a, $08
    call Call_004_5189
    jp nc, Jump_004_4fe3

    ld a, $07
    call Call_004_5189
    jp c, Jump_004_4fe0

    ld a, [$c400]
    call Call_004_470b
    jp nc, Jump_004_4fe3

    call Call_004_4722
    jp Jump_004_4fe3


jr_004_4f4a:
    ld a, $07
    call Call_004_5189
    jp nc, Jump_004_4fe3

    ld a, $08
    call Call_004_5189
    jr c, jr_004_4f67

    ld a, [$c401]
    call Call_004_470b
    jp nc, Jump_004_4fe3

    call Call_004_4722
    jr jr_004_4fe3

jr_004_4f67:
    ld a, $0b
    call Call_004_5189
    jr c, jr_004_4fe0

    jr jr_004_4fd8

jr_004_4f70:
    dec a
    jr nz, jr_004_4f9a

    ld a, $07
    call Call_004_5189
    jr nc, jr_004_4fd8

    ld a, [$c400]
    call Call_004_48b7
    cp $03
    jr nz, jr_004_4f9a

    ld a, $08
    call Call_004_5189
    jr nc, jr_004_4f92

    ld a, $0b
    call Call_004_5189
    jr c, jr_004_4f9a

jr_004_4f92:
    ld a, [$c400]
    call Call_004_475b
    jr jr_004_4fe3

jr_004_4f9a:
    ld a, $09
    call Call_004_5189
    jr nc, jr_004_4fb2

    ld a, $0a
    call Call_004_5189
    jr c, jr_004_4fe0

jr_004_4fa8:
    ld a, $00
    call Call_004_4740
    call Call_004_4776
    jr jr_004_4fe3

jr_004_4fb2:
    ld a, $0a
    call Call_004_5189
    jr nc, jr_004_4fc3

jr_004_4fb9:
    ld a, $05
    call Call_004_4740
    call Call_004_4776
    jr jr_004_4fe3

jr_004_4fc3:
    ld a, $05
    call Call_004_48b7
    ld c, a
    ld a, $00
    call Call_004_48b7
    cp c
    jr nc, jr_004_4fb9

    jr jr_004_4fa8

    ld a, [$c400]
    jr jr_004_4fdb

Jump_004_4fd8:
jr_004_4fd8:
    ld a, [$c401]

jr_004_4fdb:
    call Call_004_4740
    jr jr_004_4fe3

Jump_004_4fe0:
jr_004_4fe0:
    call Call_004_4d75

Jump_004_4fe3:
jr_004_4fe3:
    call Call_004_4db5
    xor a
    ld [$c41a], a
    pop bc
    ret


Call_004_4fec:
    push bc
    ld a, [$c403]
    ld c, a
    ld a, $ff

jr_004_4ff3:
    inc a
    call Call_004_45d5
    push bc
    ld b, $03

jr_004_4ffa:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_004_4ffa

    pop bc
    ld a, [$c403]
    cp c
    jr nz, jr_004_4ff3

    ld b, $04

jr_004_5009:
    push bc
    ld b, $0a

jr_004_500c:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_004_500c

    pop bc
    call Call_004_4584
    push bc
    ld b, $0a

jr_004_5019:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_004_5019

    pop bc
    call Call_004_4551
    dec b
    jr nz, jr_004_5009

    pop bc
    ret


    push bc
    push de
    push hl
    ld b, $00
    ld l, $00
    ld h, $ff

jr_004_5031:
    ld a, b
    call Call_004_5189
    jr c, jr_004_5042

    ld a, b
    call Call_004_497a
    jr z, jr_004_5042

    cp l
    jr c, jr_004_5042

    ld l, a
    ld h, b

jr_004_5042:
    inc b
    ld a, $0b
    cp b
    jr nc, jr_004_5031

    ld a, h
    cp $ff
    jr nz, jr_004_5060

    ld b, $00

jr_004_504f:
    ld a, b
    call Call_004_5189
    jr nc, jr_004_505d

    inc b
    ld a, $0b
    cp b
    jr nc, jr_004_504f

    ld b, $00

jr_004_505d:
    ld a, b
    jr jr_004_5093

jr_004_5060:
    ld a, $06
    cp h
    jr c, jr_004_5092

    ld e, $00
    ld d, $ff
    ld b, $06

jr_004_506b:
    dec b
    ld a, b
    call Call_004_5189
    jr c, jr_004_507b

    ld a, b
    call Call_004_48b7
    cp e
    jr c, jr_004_507b

    ld e, a
    ld d, b

jr_004_507b:
    ld a, b
    cp $00
    jr nz, jr_004_506b

    ld a, d
    cp $ff
    jr z, jr_004_5092

    ld a, h
    cp $06
    jr nz, jr_004_5091

    call Call_004_497a
    cp $14
    jr nc, jr_004_5092

jr_004_5091:
    ld h, d

jr_004_5092:
    ld a, h

jr_004_5093:
    ld [$c403], a
    call Call_004_4fec
    ld a, [$c403]
    or a
    pop hl
    pop de
    pop bc
    ret


    push af
    ld hl, $50ba
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_50af

    inc h

jr_004_50af:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_000_1437
    ret


    cp [hl]
    ld d, b
    or $50
    nop
    dec c
    inc b
    inc bc
    ld [$0000], sp
    nop
    nop
    ld [$50cb], sp
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $e001
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ea02
    ld d, b
    nop
    nop
    jr nz, jr_004_5132

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_004_511a

    nop
    ld [hl], h
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_004_5166

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    nop
    nop
    dec c
    inc b
    inc bc
    ld [$0000], sp
    nop
    nop
    ld [$5103], sp
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $1801
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2202
    ld d, c
    nop
    nop
    jr nz, @+$52

jr_004_511a:
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_004_5153

    nop
    ld [hl], h
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_004_519e

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    nop
    db $e4
    jp $c3f2


jr_004_5132:
    jr c, jr_004_5185

    ld b, e
    ld d, c
    ld c, [hl]
    ld d, c
    jr nz, jr_004_515a

    inc sp
    ld [hl], d
    ld h, h
    jr nz, jr_004_51b1

    ld l, a
    ld l, h
    ld l, h
    nop
    jr nz, jr_004_5165

    ld [hl-], a
    ld l, [hl]
    ld h, h
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    nop
    jr nz, jr_004_5170

    ld sp, $7473

jr_004_5153:
    jr nz, jr_004_51c7

    ld l, a
    ld l, h
    ld l, h
    nop

Call_004_5159:
    push bc

jr_004_515a:
    ld a, [$c3b0]
    ld c, a
    ld a, $01
    sub c
    ld [$c3b0], a
    pop bc

jr_004_5165:
    ret


Call_004_5166:
jr_004_5166:
    push bc
    push hl
    push af
    ld hl, $512e
    ld a, a
    add a
    push af
    add l

jr_004_5170:
    ld l, a
    jr nc, jr_004_5174

    inc h

jr_004_5174:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld b, $0c
    ld a, $ff

jr_004_517f:
    ld [hl+], a
    dec b
    jr nz, jr_004_517f

    xor a
    ld [hl+], a

jr_004_5185:
    ld [hl+], a
    pop hl
    pop bc
    ret


Call_004_5189:
    push hl
    push af
    ld hl, $512e
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_5198

    inc h

jr_004_5198:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_004_519e:
    pop af
    push af
    add l
    ld l, a
    jr nc, jr_004_51a5

    inc h

jr_004_51a5:
    pop af
    ld a, [hl]
    cp $80
    jr c, jr_004_51ad

    and $7f

jr_004_51ad:
    pop hl
    ret


Call_004_51af:
    push hl
    push af

jr_004_51b1:
    ld hl, $512e
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_51be

    inc h

jr_004_51be:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld b, $0c

jr_004_51c7:
    ld a, [hl+]
    and $80
    jr nz, jr_004_51d2

    dec b
    jr nz, jr_004_51c7

    xor a
    jr jr_004_51d5

jr_004_51d2:
    scf
    jr jr_004_51d5

jr_004_51d5:
    pop hl
    ret


Call_004_51d7:
    push af
    ld hl, $512e
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_51e5

    inc h

jr_004_51e5:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, $0c
    push af
    add l
    ld l, a
    jr nc, jr_004_51f4

    inc h

jr_004_51f4:
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ret


Call_004_51fb:
    push bc
    push de
    push hl
    ld a, [$c3b0]
    ld c, a
    call Call_004_51d7
    push hl
    call Call_004_5159
    ld a, [$c3b0]
    ld b, a
    call Call_004_51d7
    call Call_004_5159
    pop de
    ld a, d
    cp h
    jr c, jr_004_5223

    jr nz, jr_004_5220

    ld a, e
    cp l
    jr c, jr_004_5223

    jr z, jr_004_5226

jr_004_5220:
    ld a, c
    jr jr_004_5228

jr_004_5223:
    ld a, b
    jr jr_004_5228

jr_004_5226:
    ld a, $02

jr_004_5228:
    pop hl
    pop de
    pop bc
    ret


Call_004_522c:
    push de
    push hl
    ld d, a
    call Call_004_497a
    ld e, a
    push af
    ld hl, $512e
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_5241

    inc h

jr_004_5241:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, d
    push af
    add l
    ld l, a
    jr nc, jr_004_524f

    inc h

jr_004_524f:
    pop af
    ld a, $80
    or e
    ld [hl], a
    pop hl
    pop de
    ret


Call_004_5257:
    push bc
    ld b, $00

jr_004_525a:
    ld a, b
    call Call_004_5189
    jr c, jr_004_5264

    ld a, b
    call Call_004_522c

jr_004_5264:
    inc b
    ld a, $0b
    cp b
    jr nc, jr_004_525a

    pop bc
    ret


Call_004_526c:
    push bc
    ld b, $0c
    push af
    ld hl, $512e
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_527d

    inc h

jr_004_527d:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af

jr_004_5284:
    ld a, [hl]
    cp $80
    jr c, jr_004_528c

    ld a, $ff
    ld [hl], a

jr_004_528c:
    inc hl
    dec b
    jr nz, jr_004_5284

    pop bc
    ret


Call_004_5292:
    push bc
    push de
    push hl
    ld d, a
    call Call_004_497a
    ld e, a
    push af
    ld hl, $512e
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_52a8

    inc h

jr_004_52a8:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, d
    push af
    add l
    ld l, a
    jr nc, jr_004_52b6

    inc h

jr_004_52b6:
    pop af
    ld [hl], e
    push af
    ld hl, $512e
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_52c6

    inc h

jr_004_52c6:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, $0c
    push af
    add l
    ld l, a
    jr nc, jr_004_52d5

    inc h

jr_004_52d5:
    pop af
    ld c, l
    ld b, h
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, e
    push af
    add l
    ld l, a
    jr nc, jr_004_52e4

    inc h

jr_004_52e4:
    pop af
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    pop hl
    pop de
    pop bc
    ret


Call_004_52ee:
    push hl
    ld hl, $c3e0
    push af
    add l
    ld l, a
    jr nc, jr_004_52f8

    inc h

jr_004_52f8:
    pop af
    push af
    add l
    ld l, a
    jr nc, jr_004_52ff

    inc h

jr_004_52ff:
    pop af
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ret


Call_004_5305:
    push de
    push hl
    ld a, [$c41b]
    ld [$c3b0], a
    ld hl, $535c
    ld a, [$c3b1]
    or a
    jr nz, jr_004_5319

    ld hl, $5363

jr_004_5319:
    ld de, $986d
    call Call_000_0fed
    xor a
    ld de, $4996
    call Call_004_52ee
    ld de, $4996
    ld a, [$c3b1]
    cp $01
    jr nz, jr_004_5333

    ld de, $4d40

jr_004_5333:
    ld a, $01
    call Call_004_52ee
    xor a
    call Call_004_5166
    ld a, [$c3b1]
    or a
    jr z, jr_004_5347

    ld a, $01
    call Call_004_5166

jr_004_5347:
    call Call_004_469d
    ld a, [$c3b1]
    or a
    jr z, jr_004_5359

    call Call_004_5159
    call Call_004_469d
    call Call_004_5159

jr_004_5359:
    pop hl
    pop de
    ret


    ld d, b
    ld sp, $2020
    ld d, b
    ld [hl-], a
    nop
    jr nz, jr_004_5385

    jr nz, @+$22

    ld d, b
    ld sp, $f500
    ld hl, $c3e0
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_5378

    inc h

jr_004_5378:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    jp hl


Call_004_5385:
jr_004_5385:
    push af
    ld hl, $c3e0
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_5393

    inc h

jr_004_5393:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, $02
    push af
    add l
    ld l, a
    jr nc, jr_004_53a2

    inc h

jr_004_53a2:
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    jp hl


Call_004_53a9:
    push af
    ld hl, $c3e0
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_004_53b7

    inc h

jr_004_53b7:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld a, $04
    push af
    add l
    ld l, a
    jr nc, jr_004_53c6

    inc h

jr_004_53c6:
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    jp hl


Call_004_53cd:
    push bc
    call Call_004_53a9
    call Call_004_4733
    ld a, $03
    ld [$c3d7], a
    jr jr_004_53e1

jr_004_53db:
    call Call_004_526c
    call Call_004_469d

jr_004_53e1:
    ld a, [$c3d7]
    ld b, a
    ld a, $04
    sub b
    ld l, a
    ld h, $00
    ld de, $c3d8
    call Call_000_0ff9
    ld hl, $c3d8
    call Call_000_105d
    ld hl, $c3dc
    ld de, $986a
    call Call_000_0fed
    call Call_004_4989
    call Call_004_5257
    call Call_004_469d
    ld a, [$c3d7]
    dec a
    ld [$c3d7], a
    jr z, jr_004_5422

    call $536a
    jr c, jr_004_5434

    ld a, [$c41a]
    or a
    jr nz, jr_004_5427

    call Call_004_47c5
    jr c, jr_004_53db

jr_004_5422:
    call Call_004_5385
    jr c, jr_004_5434

jr_004_5427:
    ld a, [$c403]
    call Call_004_5292
    call Call_004_526c
    call Call_004_469d
    xor a

jr_004_5434:
    pop bc
    ret


    ld b, b
    ld [bc], a
    adc l
    nop
    nop
    ld l, [hl]
    ld l, a
    nop
    nop
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld l, [hl]
    ld [hl], d
    nop
    nop
    ld [hl], e
    ld [hl], h
    nop
    nop
    ld [hl], l
    nop
    nop
    nop
    add c
    add d
    nop
    nop
    add e
    add h
    nop
    nop
    add l
    add [hl]
    add a
    adc b
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld h, c
    nop
    nop
    jr nc, jr_004_5476

    ld [de], a
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec c
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

jr_004_5476:
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
    xor a
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
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    db $ed
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    db $10
    ld [bc], a
    ld l, d
    cp c
    di
    ld [$285e], sp
    rst $20
    or h
    ret nc

    reti


    and c
    cp c
    db $10
    add h
    push af
    db $dd
    add c
    ld h, c
    db $dd
    sub $e2
    call Call_004_58cc
    jr c, jr_004_5524

    ld e, b
    jr c, jr_004_5518

    db $eb
    add b
    ld hl, $17e9
    adc $01
    add e
    ld d, d
    and b
    pop bc
    pop bc
    ld de, $dc24
    ret z

    jr nc, jr_004_5532

    jr z, @+$44

    inc de
    or l
    ld [$7848], sp
    ret nz

    ld c, c
    rra
    ld e, d
    inc bc
    daa
    ld b, [hl]
    ld b, b
    add e
    add b
    ld a, b
    inc b
    jr c, @+$1e

    inc l
    or h
    ld d, $4e
    add hl, de
    dec de
    adc d
    call Call_000_16f3
    ld d, b
    rrca
    cp l
    inc bc

jr_004_5518:
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    add b
    ret nz

    add b
    ret nz

    rst $38
    rst $38

jr_004_5524:
    rst $38
    cp $fe
    rst $38
    ld bc, $0103
    inc bc
    rst $38
    add b
    ld a, a
    ld a, a
    rst $38
    nop

jr_004_5532:
    rst $38
    rst $38
    rst $38
    ld bc, $fefe
    jr @+$1a

    inc c
    inc c
    ld c, $0c
    ld c, $0c
    ld e, $18
    inc c
    ld h, [hl]
    ld h, [hl]
    ccf
    inc a
    rst $38
    rst $38
    ld a, a
    inc a
    ld a, [hl]
    ld h, [hl]
    inc sp
    ld [$0c08], sp
    ld [$3e3e], sp
    rra
    inc b
    jr jr_004_5570

    inc e
    jr jr_004_5577

    db $10
    ld e, $3c
    jr nc, jr_004_5598

    jr nc, @+$1a

    nop
    ld a, h
    ld a, h
    cp $c6
    rst $28
    adc $ff
    sbc $ff
    or $ff
    and $7f

jr_004_5570:
    ld a, h
    ld a, $3c
    jr c, @+$1a

    inc a
    inc a

jr_004_5577:
    ld e, $00
    ld hl, sp-$08
    ld a, h
    ld a, $38
    ld a, h
    ld h, b
    ldh a, [$c0]
    db $fc
    db $fc
    ld a, [hl]
    inc e
    cp $f8
    ld a, h
    nop
    inc e
    inc e
    ld a, $3c
    ld a, [hl]
    ld l, h
    cp $cc
    cp $fe
    ld a, a
    ld b, $00
    db $fc

jr_004_5598:
    db $fc
    cp $c0
    inc a
    inc a
    ld a, [hl]
    ld hl, sp-$08
    db $fc
    call z, $ccee
    ld a, [hl]
    ld a, b
    inc a
    ld a, [hl]
    inc a
    jr nc, @+$7a

    ldh [$c0], a
    ld h, b
    nop
    ld a, b
    ld a, b
    ld a, h
    ld a, $00
    jr nc, @+$12

    inc l

jr_004_55b7:
    ld l, h
    ld [hl], e
    ld [hl], a
    ld a, b
    dec sp
    inc a
    dec e
    ld e, $0b
    inc c
    rlca
    ld [$c0c0], sp
    jr nc, jr_004_55b7

    inc c
    ret nz

    jr nc, @+$3a

    ld hl, sp+$0c
    inc de
    inc de
    cpl
    ld c, $3e
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    ldh [$e0], a
    add b
    add b
    ld [hl], $1f
    ld b, $0e
    inc c
    inc c
    sbc $ff
    sbc $ef
    ret nz

    ld a, b
    jr nc, @+$32

    cp $fc
    cp $66
    ldh [$c0], a
    ld a, h
    xor $e0
    db $fc
    call c, $cc00
    jr c, jr_004_5633

    nop
    ld e, $1e
    rrca
    add $c6
    rst $28
    call z, $d8fe
    db $fc
    ldh a, [$f8]
    ret c

    db $ec
    call z, $c6e6
    ld h, e
    xor $ff
    cp $ff
    sub $ef
    add $e7
    add $e7
    add $c6
    rst $20
    and $f7
    or $ce
    cp $d8
    ld l, h
    ld l, h
    ld [hl], $66
    rst $30
    sub $ee
    rst $30
    add $6f
    ld l, h
    ld l, h
    or $00
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b

jr_004_5633:
    ld a, [hl]
    ld a, [hl]
    ccf
    jr nc, jr_004_5668

    jr nc, jr_004_5652

    jr @+$08

    ccf
    ld b, $07
    ld b, $07
    ld b, $7f
    ld [$1b08], sp
    ld a, [hl]
    ld a, h
    cp $70
    ld h, b

jr_004_564b:
    jr nc, jr_004_564b

    ld hl, sp-$04
    ldh a, [$ec]
    ld h, [hl]

jr_004_5652:
    nop
    ld [hl], b
    ld [hl], b
    add $c6
    ld h, e
    call c, $eedc
    ldh [$60], a
    add $0c
    inc c
    jr nc, jr_004_569a

    ld a, $38
    ld a, [hl]
    db $76
    rst $38
    db $76

jr_004_5668:
    db $76
    dec sp
    nop
    nop
    jp $9918


    ld de, $1595
    sub l
    dec d
    sub l
    dec b
    adc l
    ld bc, $1ec3
    rst $38
    nop
    rst $20
    inc b
    rst $00
    inc b
    rst $20
    inc b
    rst $20
    nop
    jp $9d1c


    ld sp, $9ffd
    db $10
    sbc a
    nop
    add c
    ccf
    di
    nop
    db $fd
    ld bc, $109d
    sub a
    inc d
    sub a
    nop
    add c

jr_004_569a:
    scf
    rst $30
    inc b
    rst $30
    inc b
    rst $38
    nop
    add c
    rra
    add e
    inc a
    add e
    inc e
    sbc l
    ld de, $3981
    ld sp, hl
    inc bc
    di
    ld b, $e7
    inc c
    rst $08
    ld [$08cf], sp
    rst $08
    jr @-$3d

    dec e
    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    inc bc
    inc bc
    ld bc, $8080
    ldh [$c0], a
    ld [hl], b
    ret nz

    ldh a, [$c0]
    ldh a, [$80]
    ldh a, [rP1]
    ldh [$38], a
    jr c, jr_004_5724

    ld c, h
    ld b, a
    ld e, h
    ld l, a
    ld a, h
    ccf
    jr c, jr_004_56fd

    nop
    ld c, $b0
    ret nz

    add b
    add b
    add b
    add b
    add d
    add c
    add c
    add e
    cp $fe
    dec c
    inc bc
    ld bc, $0101
    ld bc, $4101
    add c
    add c
    pop bc
    cp $fe
    dec e
    inc bc
    daa
    add hl, de

jr_004_56fd:
    dec de
    dec a
    dec de
    dec a
    dec h
    add hl, de
    add hl, de
    db $e4
    sbc b
    ret c

    cp h
    sbc b
    cp h
    and h
    sbc b
    sbc b
    sbc b
    cp h
    add hl, de
    add hl, de
    dec a
    rst $38
    rst $38
    db $fd
    cp $fe
    cp a
    ld a, a
    ld a, a
    ccf
    db $db
    rst $20
    rst $20
    jp $c3e7


    db $db
    rst $20
    add c

jr_004_5724:
    add e
    add d
    add c
    or b
    ret nz

    ld a, a
    ld a, a
    add c
    pop bc
    ld b, c
    add c
    dec c
    inc bc
    cp $fe
    and h
    ret c

    cp h
    db $e4
    sbc b
    cp b
    and h
    dec h
    dec de
    dec a
    daa
    add hl, de
    cp $fc
    db $fd
    ld a, a
    cp a
    cp $fe
    nop
    rrca
    nop
    rrca
    nop
    ret nz

    nop
    ret nz

    nop
    ld bc, $0100
    nop
    rlca
    jr nc, jr_004_5789

    ld [hl+], a
    inc sp
    ld b, $07
    inc c
    rrca
    jr nz, jr_004_5785

    jr nz, jr_004_5793

    ld h, [hl]
    add a
    add a
    inc a
    rst $38
    nop
    jr jr_004_5778

    sbc h
    db $10
    sbc h
    ld sp, $0703
    inc bc
    ret nz

    ret nz

    db $e3
    ld h, e
    ld [hl], a
    ld h, [hl]
    rst $30
    and $f7

jr_004_5778:
    ld h, [hl]
    ld [hl], e
    ld h, e
    ld sp, $e3e3
    rst $30
    db $e3

jr_004_5780:
    db $e3
    pop af
    jp $e7c3


jr_004_5785:
    ld h, [hl]
    di
    rst $20
    rst $20

jr_004_5789:
    di
    ldh a, [rP1]
    rlca
    rlca

jr_004_578e:
    add b
    add $86
    rst $00
    add [hl]

jr_004_5793:
    rst $00
    add [hl]
    rst $00
    add a
    rst $00
    add [hl]
    jp Jump_000_3333


    ccf
    ld [hl], $bf
    or [hl]
    rst $38
    or $fb
    inc sp
    add hl, de
    ld [hl], e
    ld h, e
    ld [hl], c
    ld h, b
    rst $30
    rst $00
    db $e3
    nop
    and $e6
    rst $30
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $e3
    db $e3
    ld [hl], a
    ld b, $87
    rst $30
    rst $20
    rst $30
    inc bc
    inc bc
    rst $00
    add $e7
    di
    jp Jump_004_66e1


    ld h, [hl]
    ld [hl], a
    rst $30
    and $83
    di
    nop
    ld b, $06
    ccf
    inc a
    nop
    ld h, [hl]
    ld a, a
    ld a, $3e
    ld a, a
    ld b, $c6
    db $e3
    ld h, e
    ld h, e
    scf
    ld [hl], $1f
    ld a, e
    inc a
    inc a
    cp $9f
    rst $20
    ld b, $03
    ld h, e
    ld h, e
    ld [hl], e
    ld h, e
    ld [hl], e
    jr c, jr_004_5827

    sbc h
    jr jr_004_578e

    jr jr_004_5780

jr_004_57f4:
    ld c, $0c

jr_004_57f6:
    rrca
    rrca
    ld b, $e7
    rst $00
    rst $28
    rst $20
    rst $00
    adc h
    adc h
    adc $87
    rst $00
    rst $20
    rst $00
    db $e3
    ret nz

    rst $28
    rst $08
    rst $20
    inc c
    adc a
    adc a
    rst $08
    ldh [$f0], a
    ld h, b
    ldh a, [$60]
    ldh a, [$f0]
    ld hl, sp+$3f
    rrca
    rrca
    rlca
    rrca
    inc c
    ld h, e
    ld a, a
    ld l, h
    ld a, [hl]
    ld a, b
    ld a, h
    ld l, h
    db $76
    jr nc, @+$32

    sbc b

jr_004_5827:
    dec sp
    inc sp
    dec sp
    inc sp
    sbc c
    pop hl
    pop hl
    di
    inc sp
    cp e
    inc sp
    cp e
    inc sp
    cp c
    ld sp, $f898
    ldh a, [$f8]
    jr nc, jr_004_57f4

    jr nc, jr_004_57f6

    ld h, a
    cp b
    or b
    jr jr_004_5862

    rra
    rra
    rrca
    inc c
    inc c
    adc [hl]
    adc h
    adc $8c
    rst $00
    rlca
    add e
    sbc e
    sbc e
    db $dd
    inc e
    sbc h
    sbc b
    call z, $9f9f
    rst $08
    ld bc, $9d19
    sbc c
    db $dd
    sbc c
    call c, $dc98

jr_004_5862:
    sbc b
    call $f9f9
    db $fd
    db $fd
    ld sp, hl
    ld a, l
    add hl, de
    db $fc
    ldh a, [$f1]
    pop af
    ld hl, sp-$34
    ld h, [hl]
    ld h, [hl]
    ld [hl], e
    ld h, b
    db $76
    ld a, $1f
    ld a, h
    ld a, h

Jump_004_587a:
    pop af
    pop af
    ld sp, hl
    ld bc, $0383
    pop hl
    pop hl
    pop af
    ld sp, $3139
    ld hl, sp-$0d
    di
    ei
    add e
    jp $c383


    add e
    di
    di
    ld a, c
    ld [hl], e
    ld [hl], e
    cp c
    add b
    pop bc
    add c
    ld bc, $e380
    db $e3
    di
    inc sp
    ei
    di
    ei
    ld sp, hl
    nop
    rra
    rra
    cp a
    sbc a
    rra
    adc a
    inc bc
    cp a
    ld a, $3e
    ld a, $99
    ccf
    ccf
    rra
    adc a
    rrca
    add a
    add b
    ld [hl], a
    ld h, a
    di
    ret nz

    db $e3
    add e
    add e
    pop bc
    rst $20
    rst $00
    rst $00
    db $e3
    ld [hl], c
    ld h, c
    add b
    add b
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    pop af

Call_004_58cc:
    pop bc
    ldh [$86], a
    add [hl]
    ld h, a
    inc sp
    ld [hl], b
    add hl, sp
    add b
    ldh [$97], a
    sbc c
    push de
    sbc h
    ld sp, $f365
    dec a
    ld e, h
    and b
    sbc h
    add e
    ld l, b
    ld h, $f1
    ld c, b
    inc [hl]
    add d
    ld b, c
    xor d
    add hl, bc
    dec bc
    ret


    sub b
    ld l, a
    jr nc, @-$43

    cp e
    cpl
    ld h, a
    ld h, h
    ld h, d
    ret


    ld [c], a
    rlca
    ld l, l
    add b
    add hl, hl
    db $e4
    cp h
    pop af
    ret


    rla
    rst $10
    ld [$98ee], sp
    reti


    sbc e
    inc l
    add b
    sbc $70
    inc a
    ld a, l
    ld l, [hl]
    ld h, a
    dec hl
    adc $64
    and $01
    adc $82
    ld a, c
    ld c, h
    rrca
    ld c, a
    or a
    xor h
    or $39
    dec sp
    ld b, b
    db $76
    add h
    ldh a, [$03]
    dec e
    ld h, a
    add $1b
    and c
    scf
    ld d, d
    ld b, b
    dec de
    adc h
    ld h, b
    ld e, a
    add d
    db $10
    ld l, l
    pop hl
    ld a, [hl-]
    inc b
    ld a, $90
    dec l
    cp $e8
    inc [hl]
    sbc e
    dec sp
    dec de
    jr nz, @+$15

    jp nz, $97b6

    ldh a, [$a3]
    call nz, $ab21
    cp h
    ld bc, $77af
    add hl, de
    sub c
    and c
    cp h
    ld b, b
    rla
    ld hl, $569c
    ld [$6b81], a
    add hl, hl
    jp z, Jump_004_587a

    ld [hl], d
    add b
    sbc d
    ld hl, sp+$71
    add d
    ld b, [hl]
    jp z, $c831

    pop hl
    jp $0e2f


    inc e
    add hl, de
    sbc a
    ld [hl], a
    ld c, c
    sbc h
    inc hl
    ld c, $49
    xor a
    ld h, $12
    cp e
    adc l
    add $89
    bit 0, c
    sub $10
    sbc l
    ld a, e
    daa
    inc b
    ld e, l
    or h
    inc e
    inc h
    inc e
    adc h
    dec de
    jr c, jr_004_59fd

    ld [bc], a
    di
    ld c, b
    rst $30
    add b
    db $10
    rst $30
    ld hl, sp+$1d
    ld l, [hl]
    call c, Call_000_3dde
    add hl, sp
    push de
    inc hl
    reti


    sbc l
    ld h, $b9
    ld hl, sp+$74
    nop
    ld [hl], a
    or b
    di
    ld [$c0f7], a
    ld a, [$706f]
    ld [hl], a
    ld e, h
    db $76
    and h
    db $76
    add sp, $4e
    sub e
    ld b, a
    ld [hl], l
    cp [hl]
    ret nz

    ld e, $d4
    ld a, d
    ld d, b
    ld l, d
    ld b, c
    xor [hl]
    adc c
    db $f4
    db $10
    rra
    ld h, [hl]
    ld b, c
    or l
    call nz, Call_000_2039
    rla
    rst $10
    jp Jump_004_64fa


    ld a, l

jr_004_59cf:
    db $ec
    ld l, a
    add c
    ld h, [hl]
    jp z, $e8bf

    ld a, l
    pop hl
    sbc d
    add a
    rla
    ld l, b
    push hl
    ld d, b
    sbc l
    xor l
    cp d
    ret nz

    inc [hl]
    add b
    sbc e
    inc a
    jr c, jr_004_5a08

    ld l, c
    pop bc
    inc [hl]
    ld a, b
    ld l, a
    jr z, jr_004_59cf

    pop bc
    or l
    add h
    pop hl
    add c
    or c
    inc bc
    ld d, b
    call c, Call_004_723b
    ret nz

    ld b, a
    dec b

jr_004_59fd:
    scf
    ld l, [hl]
    call c, Call_004_4c2f
    ret


    adc h
    ld [hl], b
    add b
    ld c, l
    ld b, [hl]

jr_004_5a08:
    dec de
    call nz, Call_004_7ee4
    pop de
    add b
    rst $08
    pop hl
    adc h
    and a
    ld [hl+], a
    db $ec
    ld [hl], d
    nop
    or l
    ld h, [hl]
    or b
    ld l, l
    db $10
    ld c, $4e
    inc e
    ld [hl], b
    inc hl
    ld e, d
    adc c
    ld [hl], b
    inc a
    ld a, c
    inc c
    rlca
    inc d
    inc de
    ld e, a
    add hl, bc
    adc $01
    ld [hl], $0c
    ld [hl], c
    ret nz

    ld c, $3c
    rlca
    ld b, h
    ld [$f432], sp
    ld l, h
    jr nc, @-$1d

    add d
    ld l, h
    ret c

    pop hl
    ld h, c
    ld [hl], c
    xor a
    ld l, b
    inc e
    ld l, c
    ld [hl], d
    jr c, jr_004_5abc

    ret nz

    db $db
    ld [bc], a
    ld [hl], c
    ld sp, $2037
    rlca
    inc sp
    sub e
    ld l, [hl]
    add e
    call $b7d1
    ld b, $bd
    ld a, [hl]
    ld c, $b2
    rrca
    ld e, $de
    ret z

    dec e
    ld b, h
    db $dd
    dec hl
    xor h
    jp nz, $a8c7

    ldh a, [rSB]
    sbc $6f
    add hl, hl
    inc bc
    sub h
    ld c, c
    ld [hl], d
    inc a
    sbc $3b
    db $dd
    ld [hl+], a
    db $e3
    ld [hl], a
    add hl, hl
    nop
    rst $08
    ret nc

    ld e, l
    adc c
    add a
    ld c, a
    ld [hl-], a
    add a
    add l
    dec bc
    pop bc
    and h
    ld a, $0c
    sub e
    jp Jump_000_0fe9


    add e
    rra
    inc d
    jp z, $a4f8

    adc a
    inc e
    and a
    adc c
    jp nz, Jump_000_2d0f

    add h
    and a
    adc e
    rst $18
    dec [hl]
    ld e, $68

jr_004_5aa0:
    ld e, a
    ld b, e
    add h
    ld a, c
    ld h, l
    jr nc, jr_004_5aa0

    ld [$d403], a
    add hl, bc
    inc hl
    ret c

    or $47
    rst $10
    ld a, [c]
    jr c, jr_004_5ac2

    adc h
    inc [hl]
    db $10
    cp [hl]
    cp d
    add h
    rst $30
    nop
    sbc a

jr_004_5abc:
    ld [$3d24], sp
    ldh a, [$7b]
    ret nz

jr_004_5ac2:
    ld hl, sp-$5f
    ld a, h
    ld h, a
    rst $18
    adc c
    ld bc, $c0f0
    ld sp, hl
    db $10
    rra
    inc e
    ld a, $60
    daa
    cp e
    rrca
    add b
    ccf
    dec [hl]
    ld c, c
    rst $30
    add e
    db $f4
    ld d, h
    sbc h
    ld [$8360], sp
    ldh a, [rLY]
    inc e
    ld e, b
    cp a
    inc b
    inc b
    rra
    add b
    inc de
    push af
    rlca
    db $e4
    ld [$d60f], sp
    add hl, hl

jr_004_5af1:
    ld sp, hl
    call nz, $a0fd
    sbc a
    ret nc

    inc de
    pop af
    add a
    db $f4
    dec b
    rst $38
    xor [hl]
    or $02
    ldh a, [$0b]
    ld b, $e7
    add [hl]
    ldh [$84], a
    ld b, $e9
    add [hl]
    sbc $84
    inc e
    ld a, [bc]
    ld d, $ec
    or b
    ldh a, [$3b]
    or a
    cp e
    pop bc
    jr z, @+$3e

    ld [$ed16], sp
    cp h
    inc e
    inc e
    ld c, $1c
    jr jr_004_5b29

    ld a, [bc]
    ret nz

    ld [hl], b
    adc b
    ld e, e
    cp [hl]
    pop bc

jr_004_5b29:
    jp nz, $c163

    rrca
    ld c, $82
    ld l, [hl]
    ret nc

    sbc h
    inc [hl]
    ld h, $ef
    add hl, bc
    call nz, Call_004_4e42
    ld a, [c]
    jr nz, @-$23

    and $db
    ret nc

    add e
    cp h
    add b
    ld l, a
    xor b
    ld b, $f4
    nop
    inc e
    ld e, b
    inc e
    ld l, d
    add hl, hl
    rst $00
    and b
    add hl, de
    sub $71
    add e
    ret z

    jr nz, jr_004_5af1

    inc b
    daa
    rra
    add hl, bc
    ret


    ld [bc], a
    ld [de], a
    ld [hl], d
    add b
    ld [hl], d
    add b
    sub b
    ld [hl], d
    and b
    ld [hl], d
    and b
    sub b
    ld [hl], d
    ret nz

    ld [hl], d
    ret nz

    sub d
    cp e
    ld d, l
    add l
    res 2, c
    res 4, h
    rrca
    ld [hl-], a
    ld b, a
    ld [hl-], a
    push bc
    call z, Call_000_0d0e
    ld a, h
    ret nc

    sbc h
    ret nc

    adc a
    ld [$7ad6], sp
    call $a1cd
    ld l, l
    add e
    inc hl
    or l
    db $eb
    inc a
    db $db
    or e
    adc $7b
    rrca
    dec sp
    or e
    adc [hl]
    ret c

    jp c, $980f

    cp h
    sub e
    or a
    or b
    ld [hl], b
    add h
    inc e
    ld sp, hl
    ld [hl-], a
    inc e
    rst $30
    or b
    cp h
    rst $28
    xor h
    cpl
    ld b, e
    cpl
    ld b, d
    rst $08
    ld b, e
    and e
    xor e
    and h
    sbc b
    ld d, l
    adc h
    inc a
    db $ec
    db $ed
    ld [hl], h
    sbc l
    ld a, [de]
    inc de
    adc $db
    call Call_004_75c0
    nop
    inc e
    sbc $1c
    ld a, [$f510]
    ld d, $74
    jp c, Jump_000_2a3d

    ld [hl], h
    or d
    rst $08
    ld d, e
    db $ec
    db $f4
    xor [hl]
    rst $00
    dec a
    pop bc
    db $d3
    ld hl, $3b75
    ret nc

    rlca
    ld b, a
    ldh a, [$75]
    inc l
    dec e
    ld b, [hl]
    dec e
    ld e, b
    rrca
    ld d, a
    ld sp, $e084
    ld e, d
    cpl
    sub c
    sbc l
    adc [hl]
    ld a, [de]
    ret


    ld a, [hl-]
    and l
    sub [hl]
    ld hl, $3687
    ld b, c
    call nc, Call_004_75e0
    sbc b
    cpl
    ld d, a
    inc h
    ld [hl], l
    cp $c3
    sbc a
    dec e
    adc $68
    rst $08
    ld e, [hl]
    db $e3
    db $76
    ld e, $3d
    ld b, h
    rrca
    ld h, d
    db $fd
    jr nz, jr_004_5c84

    ld a, [bc]
    or a
    ld d, a
    and e
    db $d3
    and c
    rst $10
    ld sp, $61ce
    ld [hl], l
    cp e
    push de
    ld [hl+], a
    db $76
    ld e, b
    sbc l
    add d
    ld a, [de]
    and h
    dec e
    ld a, [hl]
    dec e
    ld c, b
    dec e
    ld l, d
    daa
    ld l, e
    add a
    ld h, e
    sub d
    ld [hl], a
    ld l, e
    rst $08
    ld b, c
    daa
    ld a, b
    ld b, a
    ld a, b
    push bc
    and c
    ei
    ld b, $54
    ld b, c
    ld l, b
    ld a, $ce
    or d
    xor h
    ld l, e
    inc e
    inc de
    rst $18
    jr c, jr_004_5ca4

    daa
    dec b
    rst $18
    inc l
    cp l
    rst $38
    and h
    dec e
    db $fd
    xor a
    jr c, jr_004_5c59

    and l
    ld e, l
    rst $28
    sbc [hl]
    db $10
    di

jr_004_5c59:
    ld h, b
    dec a
    adc [hl]
    di
    ldh [$30], a
    ld a, [de]
    dec [hl]
    xor a
    ld e, [hl]
    add a
    ld e, h
    jp $fd94


    and [hl]
    ld e, [hl]
    adc e
    sbc d
    ld h, h
    add e

jr_004_5c6e:
    dec a
    rst $10
    rst $00
    add a
    add hl, bc
    pop hl
    jr nz, jr_004_5c6e

    ld c, [hl]
    call c, $cbe2
    db $db
    db $db
    dec a
    ld de, $94cf
    and h
    ld a, b
    cp $c2

jr_004_5c84:
    jp hl


    ld h, $cb
    and $19
    db $dd
    rra
    ld l, d
    ld b, b
    ld a, b
    ld hl, sp-$63
    xor b
    daa
    dec sp
    adc c
    call c, $dd20
    add $27
    sbc b
    inc b
    ld a, c
    adc b
    ld e, [hl]
    add hl, sp
    jp c, $f8f3

    jp hl


    ret nc

jr_004_5ca4:
    ld e, h
    rst $30
    and $5e
    adc [hl]
    ld b, b
    ld a, c
    cp $c1
    xor l
    sub c
    ld a, $97
    or b
    ld a, d
    ld hl, $e878
    ld l, c
    ld b, b
    db $10
    dec a
    inc b
    or e
    ld [$9cbc], a
    dec bc
    inc de
    ld [$abdf], a
    ld b, l
    and b
    ld a, [$1279]
    push hl
    jr c, jr_004_5d45

    and b
    dec a
    ld b, e
    xor h
    inc a
    db $e3
    cp l
    dec l
    ld bc, $a7dc
    adc e
    inc h
    db $76
    rla
    xor d
    ld bc, $2b1e
    rlca
    or l
    add a
    add [hl]
    ld b, a
    ld [hl], l
    sbc l
    ld c, a
    dec a
    sub $12
    dec a
    ret nc

    ld a, [$42e0]
    ei
    ld e, [hl]
    jp Jump_000_1cef


    ei
    or [hl]
    set 6, b
    cp l
    db $e4
    add hl, bc
    rlca
    sub a
    ld [hl-], a
    ld a, d
    ld [$c447], sp
    rst $00
    sub a
    dec b
    xor [hl]
    ei
    dec a
    db $e4
    or e
    and b
    ld l, b
    db $e3
    add $97
    or c
    db $e3
    xor $a1
    ret nc

    ld d, b
    ld a, e
    add b
    ld c, c
    jp nc, Jump_004_7464

    sbc $07
    or h
    db $fd
    sbc $1f
    jr nc, @+$19

    ld c, a
    dec a
    or h
    daa
    cp d
    ld b, h
    rst $30
    ld l, [hl]
    rst $00
    adc c
    push bc
    call c, Call_004_7dfb
    ld h, d
    ccf
    inc l
    rlca
    sbc e
    adc c
    add e
    and d
    ldh [rSCY], a
    adc a
    jp z, Jump_004_7380

    xor c
    jp nc, $fc38

    db $f4
    rra

jr_004_5d45:
    ld d, d
    ld b, c
    ld hl, sp+$19
    rlca
    sub [hl]
    ld h, a
    rst $08
    dec a
    inc c
    rlca
    ld c, c
    add h
    db $76
    ld c, h
    ld a, $d3
    sub c
    ret c

    ld a, b
    cp h
    or $1f
    ld e, [hl]
    rlca
    ccf
    dec b
    rst $08
    db $db
    ld b, d
    nop
    sbc $00
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

Jump_004_64fa:
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

Jump_004_66e1:
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
    rst $38
    rst $38

Call_004_723b:
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

Jump_004_7380:
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

Jump_004_7464:
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

Call_004_75c0:
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

Call_004_75e0:
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

Call_004_7dfb:
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
    rst $38
    rst $38

Call_004_7ee4:
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
    inc b
