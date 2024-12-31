; Disassembly of "4-in-1 Fun Pak (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld hl, $c500
    ld bc, $0284

jr_002_4006:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_002_4006

    xor a
    ld [$c314], a
    call Call_002_4abf
    call Call_002_41dd
    call Call_000_08dd
    xor a
    ld [$c300], a
    ld [$c301], a
    ld [$c302], a
    call Call_000_0e45
    call Call_000_0e5a
    ld a, $80
    ld [$c3ba], a
    ld [$c3bb], a
    ld hl, $6172
    ld de, $8800
    call Call_000_13a5
    ld hl, $9000
    ld de, $8000
    ld bc, $0800

jr_002_4044:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_002_4044

    ld hl, $670f
    ld de, $9800
    call Call_000_13a5
    ld a, $01
    call Call_000_0ed2
    xor a
    call Call_000_0f4d
    ld a, $e1
    ld b, $e0
    call Call_000_0b1c
    ld a, [$c3ae]
    or a
    jr nz, jr_002_4071

    ld a, $01
    ldh [rIE], a
    jr jr_002_408a

jr_002_4071:
    ld a, $09
    ldh [rIE], a
    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_002_408a

    di
    res 7, a
    ldh [rSC], a
    xor a
    ldh [rSB], a
    ld a, [$c3ad]
    ldh [rSC], a
    ei

jr_002_408a:
    call Call_002_409c
    call Call_002_5eef
    xor a
    ld [$c3b0], a
    ld a, $83
    ldh [rLCDC], a
    ei
    jp Jump_002_4b6e


Call_002_409c:
    ld a, $5e
    ld [$c303], a
    ld a, $61
    ld [$c304], a
    ld hl, $c500
    ld b, $00
    ld a, $0a

jr_002_40ad:
    ld [hl+], a
    dec b
    jr nz, jr_002_40ad

    ld hl, $4179
    ld de, $c54e
    ld b, $64

jr_002_40b9:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_40b9

    ld a, $02
    ld [$c676], a
    xor a
    ld [$c677], a
    ld [$c66a], a
    ld [$c66c], a
    ld [$c669], a
    ld [$c66b], a
    ld [$c66d], a
    ld [$c66e], a
    ld [$c019], a
    ld [$c67d], a
    ld [$c680], a
    ld [$c681], a
    ld [$c682], a
    ld [$c689], a
    ld [$c68a], a
    ld [$c683], a
    ld [$c684], a
    ld [$c685], a
    ld hl, $c66f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$c76c], a
    ld [$c76d], a
    dec a
    ld [$c68b], a
    ld a, $03
    ld [$c687], a
    ld a, [$c3a3]
    or a
    call nz, Call_002_565d
    ld a, [$c3ae]
    ld b, a
    ld a, [$c3a2]
    or b
    jr z, jr_002_415a

    ld a, $50
    ld [$c679], a
    ld a, $60
    ld [$c67b], a
    ld a, $40
    ld [$c67a], a
    ld a, $30
    ld [$c67c], a
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr nz, jr_002_414c

    ld a, [$c679]
    ld [$c674], a
    ld a, [$c67b]
    ld [$c675], a
    jr jr_002_4170

jr_002_414c:
    ld a, [$c67a]
    ld [$c674], a
    ld a, [$c67c]
    ld [$c675], a
    jr jr_002_4170

jr_002_415a:
    ld a, $50
    ld [$c679], a
    ld [$c67a], a
    ld [$c674], a
    ld a, $60
    ld [$c67b], a
    ld [$c67c], a
    ld [$c675], a

jr_002_4170:
    ld a, [$c3a1]
    call Call_002_4d45
    jp Jump_002_4cd4


    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $010a
    ld a, [bc]
    ld bc, $010a
    ld a, [bc]
    ld a, [bc]
    ld bc, $010a
    ld a, [bc]
    ld bc, $010a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $010a
    ld a, [bc]
    ld bc, $010a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

Call_002_41dd:
    ld a, [$c3a2]
    ld b, a
    ld a, [$c3ae]
    or b
    ret z

    xor a
    call Call_000_0e45
    ld hl, $6872
    ld de, $8800
    call Call_000_13a5
    ld hl, $6b55
    ld de, $9800
    call Call_000_13a5
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c009], a
    call Call_000_0ed2
    ld a, $e4
    ld b, a
    call Call_000_0b1c
    ld a, [$c3ae]
    or a
    jr nz, jr_002_421e

    ld a, $01
    ldh [rIE], a
    jr jr_002_4230

jr_002_421e:
    ld a, $09
    ldh [rIE], a
    call Call_000_0d56
    ld a, [$c3ad]
    and $01
    jr nz, jr_002_4230

    ld d, $01
    jr jr_002_4232

jr_002_4230:
    ld d, $00

jr_002_4232:
    ld a, d
    ld [$c00c], a
    call Call_002_42d8
    ld a, $81
    ldh [rLCDC], a
    ei
    ld a, [$c3ae]
    or a
    jr z, jr_002_425a

    ld a, [$c3ad]
    and $01
    jr z, jr_002_425a

    ld b, $08

jr_002_424d:
    push bc
    rst $18
    xor a
    ld [$c310], a
    call Call_000_0d56
    pop bc
    dec b
    jr nz, jr_002_424d

jr_002_425a:
    call Call_002_42a3
    ld a, [$c39a]
    or a
    jr nz, jr_002_425a

    ld a, [$c3b0]
    ld b, a
    cp $ff
    jp z, Jump_000_0070

    ld a, [$c310]
    or b
    cp $08
    jr z, jr_002_4278

    cp $01
    jr nz, jr_002_425a

jr_002_4278:
    ld a, [$c310]
    ld b, a
    and $08
    jr nz, jr_002_4283

    ld a, b
    and $01

jr_002_4283:
    ld [$c3b4], a
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c39d], a
    call Call_000_0b26

jr_002_4296:
    xor a
    ld [$c3af], a
    ld a, [$c39a]
    or a
    jr nz, jr_002_4296

    jp Jump_000_0c49


Call_002_42a3:
    rst $18
    call Call_000_0df7
    jr z, jr_002_42e2

    and $09
    ret nz

    ld a, [$c3b0]
    ld b, a
    and $20
    rrca
    ld c, a
    ld a, b
    and $10
    add a
    or c
    ld c, a
    ld a, [$c310]
    or c
    cp $20
    jr z, jr_002_42c9

    cp $10
    ret nz

    ld d, $01
    jr jr_002_42cb

jr_002_42c9:
    ld d, $00

jr_002_42cb:
    ld a, d
    ld [$c00c], a
    xor a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a

Call_002_42d8:
    ld a, d
    xor $01
    call Call_002_42f9
    xor a
    ld [$c3a5], a

jr_002_42e2:
    ld a, [$c3a5]
    and $0f
    ret nz

    ld a, [$c3a5]
    and $10
    jr nz, jr_002_42f6

    ld a, [$c00c]
    add $02
    jr jr_002_42f9

jr_002_42f6:
    ld a, [$c00c]

Call_002_42f9:
jr_002_42f9:
    ld b, a
    ld de, $9882
    and $01
    jr z, jr_002_4304

    ld de, $988a

jr_002_4304:
    ld a, b
    cp $03
    jr nz, jr_002_430a

    dec a

jr_002_430a:
    rlca
    add $bf
    ld l, a
    ld a, $6d
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_002_4323

    ld a, [$c3b0]
    ld [$c01b], a

jr_002_4323:
    ld c, $08

jr_002_4325:
    ld b, $08

jr_002_4327:
    rst $08
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4327

    ld a, e
    add $18
    ld e, a
    adc d
    sub e
    ld d, a
    dec c
    jr nz, jr_002_4325

    ld a, [$c3ad]
    bit 0, a
    ret nz

    ld a, [$c01b]
    ld [$c3b0], a
    ret


Call_002_4345:
    ld a, [$c3b0]
    ld b, a
    ld a, [$c310]
    or b
    cp $04
    ret nz

    ld a, [$c676]
    cp $02
    ret nz

    ld a, [$c669]
    or a
    jr z, jr_002_4360

    xor a
    jp Jump_002_4f01


jr_002_4360:
    xor a
    ld [$c3b0], a
    ld [$c310], a
    dec a
    ld [$c00b], a
    ld a, [$c3a1]
    xor $01
    ld b, a
    ld a, [$c3a3]
    xor b
    ld [$c3b4], a
    ld a, [$c3ae]
    or a
    jr nz, jr_002_4384

    ld a, [$c3a2]
    or a
    jr nz, jr_002_43a6

jr_002_4384:
    ld hl, $43cc
    ld de, $9882
    ld b, $02
    ld a, $24
    ld c, $40
    call Call_002_44da
    push af
    call Call_002_4cd4
    pop af
    ret c

    call Call_002_439f
    jp Jump_002_4cd4


Call_002_439f:
    rst $28
    ld a, e
    ld b, l
    dec bc
    ld b, [hl]
    jr jr_002_43ed

jr_002_43a6:
    ld hl, $4435
    ld de, $9862
    ld b, $02
    ld a, $1c
    ld c, $50
    call Call_002_44da
    push af
    call Call_002_4cd4
    pop af
    ret c

    call Call_002_43c1
    jp Jump_002_4cd4


Call_002_43c1:
    rst $28
    ld a, e
    ld b, l
    pop af
    ld b, l
    dec bc
    ld b, [hl]
    dec l
    ld b, [hl]
    jr jr_002_4413

    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $01
    ld [$2020], sp
    ld d, h
    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$44

    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_002_43f2

    ld bc, $0708
    rlca

jr_002_43ed:
    rlca
    rlca
    rlca
    rlca
    rlca

jr_002_43f2:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_002_444f

    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_002_4423

    jr nz, jr_002_4425

    jr nz, jr_002_4410

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_002_4410:
    rlca
    rlca
    rlca

jr_002_4413:
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_002_4468

    ld d, l
    ld d, e
    ld c, c
    ld b, e
    jr nz, jr_002_4441

    jr nz, @+$22

jr_002_4423:
    jr nz, jr_002_442e

jr_002_4425:
    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_002_442e:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    nop
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_002_4441:
    dec b
    ld b, $01
    ld [$2020], sp
    ld d, h
    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$44

    ld b, c
    ld b, e

jr_002_444f:
    ld c, e
    jr nz, jr_002_445b

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_002_445b:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_002_44b9

    ld d, a
    ld b, c

jr_002_4468:
    ld d, b
    jr nz, jr_002_44be

    ld c, c
    ld b, h
    ld b, l
    ld d, e
    add hl, bc
    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_002_44d6

    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_002_44aa

    jr nz, jr_002_44ac

    jr nz, jr_002_4497

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_002_4497:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, @+$46

    ld c, c
    ld b, [hl]
    ld b, [hl]
    ld c, c
    ld b, e
    ld d, l
    ld c, h
    ld d, h

jr_002_44aa:
    ld e, c
    add hl, bc

jr_002_44ac:
    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_002_44b9:
    rlca
    add hl, bc
    ld bc, $2008

jr_002_44be:
    jr nz, jr_002_450d

    ld d, l
    ld d, e
    ld c, c
    ld b, e
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_002_44d3

    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_002_44d3:
    dec bc
    dec bc
    dec bc

jr_002_44d6:
    dec bc
    dec bc
    inc c
    nop

Call_002_44da:
    ldh [$94], a
    ldh [$92], a
    ld a, c
    ldh [$95], a
    call Call_002_4549
    xor a
    ldh [$93], a
    jr jr_002_4522

jr_002_44e9:
    rst $18
    call Call_000_0df7
    cp $04
    jr z, jr_002_4547

    ld a, b
    and $09
    jr nz, jr_002_4538

    ld a, b
    cp $40
    jr nz, jr_002_450d

    ldh a, [$94]
    ld b, a
    ldh a, [$92]
    cp b
    jr z, jr_002_450d

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_002_4522

jr_002_450d:
    ld a, b
    cp $80
    jr nz, jr_002_4527

    ldh a, [$95]
    ld b, a
    ldh a, [$92]
    cp b
    jr nc, jr_002_4527

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_002_4522:
    ld a, $87
    ld [$c3ba], a

jr_002_4527:
    ld b, $18
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $09
    call Call_000_13c9
    call Call_000_147f
    jr jr_002_44e9

jr_002_4538:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    ret


jr_002_4547:
    scf
    ret


Call_002_4549:
    ld a, $20
    add b
    ld b, a

jr_002_454d:
    ld a, [hl+]
    or a
    jr nz, jr_002_4553

    ei
    ret


jr_002_4553:
    cp $01
    jr nz, jr_002_4561

    ld a, e
    and $e0
    add b
    ld e, a
    jr nc, jr_002_454d

    inc d
    jr jr_002_454d

jr_002_4561:
    cp $20
    jr nz, jr_002_4569

    ld a, $07
    jr jr_002_4574

jr_002_4569:
    jr c, jr_002_4574

    cp $3a
    jr nc, jr_002_4572

    inc a
    jr jr_002_4574

jr_002_4572:
    sub $33

jr_002_4574:
    ld c, a
    rst $08
    ld a, c
    ld [de], a
    inc de
    jr jr_002_454d

Call_002_457b:
    ld a, [$c76c]
    or a
    ret z

    ld hl, $459c
    ld de, $9881
    ld b, $01
    call Call_002_4549

jr_002_458b:
    rst $18
    call Call_000_147f
    call Call_000_0df7
    jr z, jr_002_458b

    ld a, $87
    ld [$c3ba], a
    jp Jump_002_4806


    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $01
    ld [$2041], sp
    jr nz, jr_002_45d2

    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$44

    ld b, c
    ld b, e
    ld c, e
    add hl, bc
    ld bc, $4208
    jr nz, jr_002_45e2

    jr nz, jr_002_45e4

    jr nz, @+$57

    ld c, [hl]
    ld b, h
    ld c, a
    jr nz, jr_002_45eb

    jr nz, jr_002_45ed

    add hl, bc
    ld bc, $5308
    ld d, h

jr_002_45d2:
    ld b, c
    ld d, d
    ld d, h
    jr nz, @+$22

    ld d, h
    ld c, a
    jr nz, @+$47

    ld c, [hl]
    ld b, h
    jr nz, jr_002_45e8

    ld bc, $0b0a

jr_002_45e2:
    dec bc
    dec bc

jr_002_45e4:
    dec bc
    dec bc
    dec bc
    dec bc

jr_002_45e8:
    dec bc
    dec bc
    dec bc

jr_002_45eb:
    dec bc
    dec bc

jr_002_45ed:
    dec bc
    dec bc
    inc c
    nop
    ld a, [$c3a3]
    xor $01
    ld [$c3a3], a
    xor a
    ld [$c682], a
    call Call_002_565d
    ld a, $87
    ld [$c3ba], a
    ld a, $03
    ld [$c77f], a
    ret


Jump_002_460b:
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld a, $80
    ld [$c3bb], a
    call Call_000_0b26

jr_002_461d:
    xor a
    ld [$c3af], a
    ld a, [$c39a]
    or a
    jr nz, jr_002_461d

    call Call_000_0c49
    jp Jump_000_0070


Call_002_462d:
    ld hl, $46aa
    ld de, $9864
    ld b, $04
    call Call_002_4549
    ld a, [$c687]
    sub $03
    swap a
    add $34
    ldh [$92], a
    ld a, [$c687]
    sub $03
    ldh [$93], a
    jr jr_002_4685

jr_002_464c:
    rst $18
    call Call_000_0df7
    cp $04
    ret z

    ld a, b
    and $09
    jr nz, jr_002_4696

    ld a, b
    cp $40
    jr nz, jr_002_466d

    ldh a, [$92]
    cp $34
    jr z, jr_002_466d

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_002_4680

jr_002_466d:
    ld a, b
    cp $80
    jr nz, jr_002_4685

    ldh a, [$92]
    cp $4c
    jr nc, jr_002_4685

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_002_4680:
    ld a, $87
    ld [$c3ba], a

jr_002_4685:
    ld b, $30
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $09
    call Call_000_13c9
    call Call_000_147f
    jr jr_002_464c

jr_002_4696:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    add $03
    ld [$c687], a
    ret


    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $01
    ld [$4843], sp
    ld b, l
    ld b, e
    ld c, e
    ld b, l
    ld d, d
    ld d, e
    add hl, bc
    ld bc, $2008
    ld d, e
    ld c, e
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_002_46e9

    add hl, bc
    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_002_46fa

    jr nz, @+$33

    jr nz, jr_002_46fe

    jr nz, jr_002_46e9

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_002_46e9:
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_002_4710

    jr nz, @+$34

    jr nz, jr_002_4714

    jr nz, jr_002_46ff

    ld bc, $0708
    rlca

jr_002_46fa:
    rlca
    rlca
    rlca
    rlca

jr_002_46fe:
    rlca

jr_002_46ff:
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, @+$22

    jr nz, @+$35

    jr nz, @+$22

    jr nz, jr_002_4715

    ld bc, $0b0a
    dec bc

jr_002_4710:
    dec bc
    dec bc
    dec bc
    dec bc

jr_002_4714:
    dec bc

jr_002_4715:
    dec bc
    inc c
    nop
    ld hl, $479d
    ld de, $98a2
    ld b, $02
    call Call_002_4549
    ld a, $4c
    ldh [$92], a
    ld a, $02
    ldh [$93], a
    jr jr_002_4766

jr_002_472d:
    rst $18
    call Call_000_0df7
    cp $04
    ret z

    ld a, b
    and $09
    jr nz, jr_002_4777

    ld a, b
    cp $40
    jr nz, jr_002_474e

    ldh a, [$92]
    cp $2c
    jr z, jr_002_474e

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_002_4761

jr_002_474e:
    ld a, b
    cp $80
    jr nz, jr_002_4766

    ldh a, [$92]
    cp $4c
    jr nc, jr_002_4766

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_002_4761:
    ld a, $87
    ld [$c3ba], a

jr_002_4766:
    ld b, $18
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $09
    call Call_000_13c9
    call Call_000_147f
    jr jr_002_472d

jr_002_4777:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    or a
    jr nz, jr_002_478e

    ld a, $82
    ld [$c3bb], a
    ret


jr_002_478e:
    dec a
    jr nz, jr_002_4797

    ld a, $81
    ld [$c3bb], a
    ret


jr_002_4797:
    ld a, $80
    ld [$c3bb], a
    ret


    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $01
    ld [$2020], sp
    jr nz, jr_002_4805

    ld c, b
    ld b, l
    ld c, l
    ld b, l
    jr nz, @+$33

    jr nz, @+$22

    add hl, bc
    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_002_47ee

    ld d, h
    ld c, b
    ld b, l
    ld c, l
    ld b, l
    jr nz, @+$34

    jr nz, @+$22

    add hl, bc
    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_002_4839

    ld d, l
    ld d, e

jr_002_47ee:
    ld c, c
    ld b, e
    jr nz, jr_002_4841

    ld b, [hl]
    ld b, [hl]
    jr nz, jr_002_47ff

    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_002_47ff:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c

jr_002_4805:
    nop

Jump_002_4806:
    ld a, [$c3a3]
    push af
    call Call_002_481f
    pop bc
    ld a, [$c3a3]
    cp b
    ret z

    ld a, b
    ld [$c3a3], a
    ld a, [$c3a2]
    or a
    ret z

    jp Jump_002_4aa7


Call_002_481f:
    xor a
    ld [$c3b5], a
    ld a, [$c3a1]
    ld [$c76e], a
    ld [$c76f], a
    ld a, [$c3a3]
    ld [$c771], a

Jump_002_4832:
    call Call_002_4cd4

Jump_002_4835:
jr_002_4835:
    rst $18
    call Call_000_0df7

jr_002_4839:
    jr z, jr_002_4835

    ld a, [$c66e]
    or a
    jr z, jr_002_4847

jr_002_4841:
    ld a, [$c3b5]
    or a
    jr z, jr_002_484d

jr_002_4847:
    ld a, b
    cp $08
    jp z, Jump_002_4a5b

jr_002_484d:
    ld a, b
    cp $01
    jp z, Jump_002_495d

    ld a, b
    cp $02
    jr nz, jr_002_4835

Jump_002_4858:
    ld a, [$c76c]
    ld b, a
    ld a, [$c76d]
    cp b
    jr z, jr_002_4835

    ld a, [$c3b5]
    or a
    jr z, jr_002_4835

    dec a
    ld [$c3b5], a
    ld a, [$c684]
    inc a
    ld [$c684], a
    ld a, $87
    ld [$c3ba], a
    ld a, [$c76d]
    inc a
    ld [$c76d], a
    dec a
    rlca
    ld e, a
    rlca
    add e
    add $f9
    ld e, a
    ld a, $c6
    adc $00
    ld d, a
    ld a, [de]
    and $01
    ld [$c76e], a
    ld a, [de]
    rra
    and $01
    ld [$c770], a
    ld a, [de]
    rlca
    and $01
    ld [$c771], a
    dec de
    dec de
    ld a, [$c3a3]
    ld b, a
    ld a, [$c771]
    cp b
    jr z, jr_002_48b2

    ld [$c3a3], a
    call Call_002_4aa7

jr_002_48b2:
    push de
    ld a, [$c76e]
    xor $01
    ld [$c76f], a
    call Call_002_4d45
    pop de
    ld a, [$c3ae]
    ld b, a
    ld a, [$c3a2]
    or b
    jr nz, jr_002_48db

    ld a, [$c3a1]
    ld b, a
    ld a, [$c76e]
    cp b
    jr z, jr_002_48db

    ld a, [de]
    dec de
    ld b, a
    ld a, $63
    sub b
    jr jr_002_48dd

jr_002_48db:
    ld a, [de]
    dec de

jr_002_48dd:
    or a
    jr z, jr_002_48e5

    call Call_002_4ef8
    ld [hl], $02

jr_002_48e5:
    ld a, [$c3ae]
    ld b, a
    ld a, [$c3a2]
    or b
    jr nz, jr_002_4902

    ld a, [$c3a1]
    ld b, a
    ld a, [$c76e]
    cp b
    jr z, jr_002_4902

    ld a, [de]
    dec de
    ld b, a
    ld a, $63
    sub b
    ld b, a
    jr jr_002_4905

jr_002_4902:
    ld a, [de]
    dec de
    ld b, a

jr_002_4905:
    ld a, [de]
    dec de
    ld c, a
    ld a, b
    cp $50
    jr nc, jr_002_4911

    cp $14
    jr nc, jr_002_4913

jr_002_4911:
    set 2, c

jr_002_4913:
    call Call_002_4ef8
    ld [hl], c
    ld a, [$c3ae]
    ld b, a
    ld a, [$c3a2]
    or b
    jr nz, jr_002_4932

    ld a, [$c3a1]
    ld b, a
    ld a, [$c76e]
    cp b
    jr z, jr_002_4932

    ld a, [de]
    ld b, a
    ld a, $63
    sub b
    jr jr_002_4933

jr_002_4932:
    ld a, [de]

jr_002_4933:
    call Call_002_4ef8
    ld [hl], $02
    ld a, [$c76c]
    ld b, a
    ld a, [$c76d]
    cp b
    jp z, Jump_002_4832

    rlca
    ld e, a
    rlca
    add e
    add $f9
    ld e, a
    ld a, $c6
    adc $00
    ld d, a
    ld a, [$c76e]
    ld b, a
    ld a, [de]
    and $01
    cp b
    jp z, Jump_002_4858

    jp Jump_002_4832


Jump_002_495d:
    ld a, [$c76d]
    or a
    jp z, Jump_002_4835

    dec a
    ld [$c76d], a
    ld e, a
    ld a, [$c3b5]
    inc a
    ld [$c3b5], a
    ld a, [$c684]
    dec a
    ld [$c684], a
    xor a
    ld [$c685], a
    ld a, $87
    ld [$c3ba], a
    ld a, e
    rlca
    ld e, a
    rlca
    add e
    add $f9
    ld e, a
    ld a, $c6
    adc $00
    ld d, a
    ld a, [de]
    and $01
    ld [$c76e], a
    ld a, [de]
    rra
    and $01
    ld [$c770], a
    ld a, [de]
    rlca
    and $01
    ld [$c771], a
    dec de
    ld a, [$c3a3]
    ld b, a
    ld a, [$c771]
    cp b
    jr z, jr_002_49b2

    ld [$c3a3], a
    call Call_002_4aa7

jr_002_49b2:
    push de
    ld a, [$c76e]
    ld [$c76f], a
    call Call_002_4d45
    pop de
    ld a, [$c3ae]
    ld b, a
    ld a, [$c3a2]
    or b
    jr nz, jr_002_49df

    ld a, [$c3a1]
    ld b, a
    ld a, [$c76e]
    cp b
    jr z, jr_002_49df

    ld a, [de]
    dec de
    ld c, a
    ld a, [de]
    dec de
    or a
    jr z, jr_002_49ef

    ld b, a
    ld a, $63
    sub b
    jr jr_002_49e7

jr_002_49df:
    ld a, [de]
    dec de
    ld c, a
    ld a, [de]
    dec de
    or a
    jr z, jr_002_49ef

jr_002_49e7:
    call Call_002_4ef8
    ld [hl], c
    xor a
    ld [$c684], a

jr_002_49ef:
    ld a, [$c3ae]
    ld b, a
    ld a, [$c3a2]
    or b
    jr nz, jr_002_4a0b

    ld a, [$c3a1]
    ld b, a
    ld a, [$c76e]
    cp b
    jr z, jr_002_4a0b

    ld a, [de]
    dec de
    ld b, a
    ld a, $63
    sub b
    jr jr_002_4a0d

jr_002_4a0b:
    ld a, [de]
    dec de

jr_002_4a0d:
    call Call_002_4ef8
    ld [hl], $02
    ld a, [$c3ae]
    ld b, a
    ld a, [$c3a2]
    or b
    jr nz, jr_002_4a31

    ld a, [$c3a1]
    ld b, a
    ld a, [$c76e]
    cp b
    jr z, jr_002_4a31

    ld a, [de]
    dec de
    ld c, a
    ld a, [de]
    dec de
    ld b, a
    ld a, $63
    sub b
    jr jr_002_4a35

jr_002_4a31:
    ld a, [de]
    dec de
    ld c, a
    ld a, [de]

jr_002_4a35:
    call Call_002_4ef8
    ld [hl], c
    ld a, [$c76d]
    or a
    jp z, Jump_002_4832

    dec a
    rlca
    ld e, a
    rlca
    add e
    add $f9
    ld e, a
    ld a, $c6
    adc $00
    ld d, a
    ld a, [$c76e]
    ld b, a
    ld a, [de]
    and $01
    cp b
    jp z, Jump_002_495d

    jp Jump_002_4832


Jump_002_4a5b:
    ld a, [$c76d]
    ld [$c76c], a
    ld a, [$c3a1]
    ld b, a
    ld a, [$c76f]
    cp b
    jr nz, jr_002_4a6c

    ret


jr_002_4a6c:
    ld [$c3a1], a
    ld a, [$c3ae]
    or a
    jr nz, jr_002_4a7e

    ld a, [$c3a2]
    or a
    jr nz, jr_002_4a7e

    call Call_002_4aa7

jr_002_4a7e:
    ld a, $87
    ld [$c3ba], a
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr nz, jr_002_4a9a

    ld a, [$c679]
    ld [$c674], a
    ld a, [$c67b]
    ld [$c675], a
    ret


jr_002_4a9a:
    ld a, [$c67a]
    ld [$c674], a
    ld a, [$c67c]
    ld [$c675], a
    ret


Call_002_4aa7:
Jump_002_4aa7:
    push bc
    push de
    push hl
    ld de, $c5b1
    ld hl, $c54e
    ld b, $32

jr_002_4ab2:
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    dec de
    dec b
    jr nz, jr_002_4ab2

    pop hl
    pop de
    pop bc
    ret


Call_002_4abf:
    di
    xor a
    ldh [rBGP], a
    call Call_000_0e45
    ld hl, $6dc5
    ld de, $8800
    call Call_000_13a5
    ld hl, $7989
    ld de, $9800
    call Call_000_13a5
    ld a, $10
    ld [$c015], a
    ld a, $0e
    ld [$c016], a
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c009], a
    call Call_000_0ed2
    ld a, $02
    ld [$c39d], a
    ld a, $27
    ld b, a
    call Call_000_0b1c
    ld a, $82
    ld [$c3bb], a
    ld a, [$c3ae]
    or a
    jr nz, jr_002_4b0e

    ld a, $01
    ldh [rIE], a
    jr jr_002_4b15

jr_002_4b0e:
    ld a, $09
    ldh [rIE], a
    call Call_000_0d56

jr_002_4b15:
    ld a, $81
    ldh [rLCDC], a
    ei

jr_002_4b1a:
    rst $18
    ld hl, $c015
    dec [hl]
    jr nz, jr_002_4b26

    ld a, [hl+]
    dec [hl]
    or [hl]
    jr z, jr_002_4b65

jr_002_4b26:
    call Call_000_0df7
    jr z, jr_002_4b1a

    ld a, [$c39a]
    or a
    jr nz, jr_002_4b1a

    ld a, [$c3b0]
    ld b, a
    ld a, [$c310]
    or b
    cp $08
    jr z, jr_002_4b41

    cp $01
    jr nz, jr_002_4b1a

jr_002_4b41:
    ld a, [$c310]
    ld b, a
    and $08
    jr nz, jr_002_4b4c

    ld a, b
    and $01

jr_002_4b4c:
    ld [$c3b4], a

Call_002_4b4f:
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    call Call_000_0b26

jr_002_4b5c:
    ld a, [$c39a]
    or a
    jr nz, jr_002_4b5c

    jp Jump_000_0c49


jr_002_4b65:
    call Call_002_4b4f
    ld sp, $e000
    jp Jump_000_0153


Jump_002_4b6e:
    ld a, [$c3a2]
    or a
    jr z, jr_002_4b8d

    call Call_002_462d
    call Call_002_4cd4
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_002_4b8d

    call Call_000_147f
    ld b, $3c

jr_002_4b89:
    rst $18
    dec b
    jr nz, jr_002_4b89

jr_002_4b8d:
    rst $18
    call Call_000_0c5a
    call Call_002_4dea
    call Call_002_5722
    call Call_002_52e6
    call Call_002_4345
    call Call_002_4dc2
    call Call_000_147f
    call Call_002_4ba8
    jr jr_002_4b8d

Call_002_4ba8:
    ld a, [$c66d]
    or a
    ret z

    ld a, [$c669]
    or a
    ret nz

    ld a, [$c682]
    or a
    ret nz

    ld a, [$c676]
    cp $02
    ret nz

    ld a, [$c66a]
    or a
    ret nz

    ld a, [$c684]
    cp $50
    jp z, Jump_002_4c73

    cp $46
    jr nz, jr_002_4bfc

    ld a, [$c685]
    or a
    jr nz, jr_002_4bfc

    ld a, $01
    ld [$c685], a
    ld a, [$c3a2]
    or a
    jr z, jr_002_4be9

    ld a, [$c3a1]
    push af
    ld a, [$c3a3]
    ld [$c3a1], a

jr_002_4be9:
    call Call_000_147f
    xor a
    ld l, $0b
    call Call_002_4f1e
    ld a, [$c3a2]
    or a
    jr z, jr_002_4bfc

    pop af
    ld [$c3a1], a

Jump_002_4bfc:
jr_002_4bfc:
    ld a, [$c3a2]
    or a
    jr nz, jr_002_4c42

    call Call_002_5621
    push af
    call Call_002_4eae
    pop af
    jr c, jr_002_4c15

    ld a, b
    cp $01
    jr c, jr_002_4c15

    ld a, c
    cp $01
    ret nc

jr_002_4c15:
    ld a, b
    cp c
    jp z, Jump_002_4c73

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_002_4c33

    ld a, [$c3ae]
    or a
    jp nz, Jump_002_4c6b

    xor a
    cp b
    jp z, Jump_002_4c63

    jp Jump_002_4c67


jr_002_4c33:
    ld a, [$c3ae]
    or a
    jp nz, Jump_002_4c6f

    xor a
    cp b
    jp z, Jump_002_4c67

    jp Jump_002_4c63


jr_002_4c42:
    call Call_002_5621
    jr c, jr_002_4c53

    call Call_002_4eae
    ld a, b
    cp $01
    jr c, jr_002_4c53

    ld a, c
    cp $01
    ret nc

jr_002_4c53:
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_002_4c6f

    jr jr_002_4c6b

Jump_002_4c5f:
    ld a, $0a
    jr jr_002_4c75

Jump_002_4c63:
    ld a, $05
    jr jr_002_4c75

Jump_002_4c67:
    ld a, $06
    jr jr_002_4c75

Jump_002_4c6b:
jr_002_4c6b:
    ld a, $08
    jr jr_002_4c75

Jump_002_4c6f:
jr_002_4c6f:
    ld a, $07
    jr jr_002_4c75

Jump_002_4c73:
    ld a, $09

jr_002_4c75:
    ld b, a
    ld a, [$c3a2]
    or a
    jr z, jr_002_4c88

    ld a, [$c3a1]
    ld [$c783], a
    ld a, [$c3a3]
    ld [$c3a1], a

jr_002_4c88:
    ld a, $01
    ld [$c66e], a
    ld [$c019], a
    ld a, b
    ld b, $00
    call Call_002_4f01
    ld a, [$c66e]
    cp $04
    jr nz, jr_002_4cc8

    ld a, [$c782]
    ld [$c3b4], a
    xor a
    ld [$c66e], a
    ld [$c019], a
    call Call_002_4cd4
    call Call_002_457b
    call Call_002_4cd4
    ld a, [$c3b5]
    or a
    ret nz

    ld a, [$c3a2]
    or a
    jp z, Jump_002_4bfc

    ld a, [$c783]
    ld [$c3a1], a
    jp Jump_002_4bfc


jr_002_4cc8:
    call Call_000_0b26

jr_002_4ccb:
    ld a, [$c39a]
    or a
    jr nz, jr_002_4ccb

    jp Jump_002_460b


Call_002_4cd4:
Jump_002_4cd4:
    ld hl, $99e1
    ld de, $c559
    ld b, $08

jr_002_4cdc:
    ld c, $08

jr_002_4cde:
    push bc
    ld a, [de]
    inc de
    bit 1, a
    jr z, jr_002_4cff

    pop bc
    push bc
    push de
    ld a, b
    and $01
    rlca
    ld b, a
    ld a, c
    and $01
    or b
    jr z, jr_002_4cf7

    cp $03
    jr nz, jr_002_4cfb

jr_002_4cf7:
    ld a, $03
    jr jr_002_4d09

jr_002_4cfb:
    ld a, $02
    jr jr_002_4d09

jr_002_4cff:
    push de
    ld c, a
    and $04
    rrca
    or c
    and $03
    add $05

jr_002_4d09:
    call Call_002_4d36
    rst $08
    ld a, [de]
    inc de
    ld [hl+], a
    rst $08
    ld a, [de]
    inc de
    ld [hl], a
    ld bc, $001f
    add hl, bc
    rst $08
    ld a, [de]
    inc de
    ld [hl+], a
    rst $08
    ld a, [de]
    inc de
    ld [hl], a
    ld bc, $ffe1
    add hl, bc
    pop de
    pop bc
    dec c
    jr nz, jr_002_4cde

    push de
    ld de, $ffb0
    add hl, de
    pop de
    inc de
    inc de
    dec b
    jr nz, jr_002_4cdc

    ei
    ret


Call_002_4d36:
    rlca
    add $5e
    ld c, a
    ld a, $61
    adc $00
    ld b, a
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    ld d, a

jr_002_4d44:
    ret


Call_002_4d45:
Jump_002_4d45:
    rlca
    add $68
    ld l, a
    ld a, $4d
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $9852

jr_002_4d54:
    ld a, [de]
    inc de
    ld c, a
    and $7f
    call Call_002_4da4
    ld b, a
    rst $08
    ld [hl], b
    bit 7, c
    ret nz

    ld bc, $0020
    add hl, bc
    jr jr_002_4d54

    ld [hl], b
    ld c, l
    ld a, l
    ld c, l
    adc d
    ld c, l
    sub a
    ld c, l
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, @+$56

    ld c, a
    jr nz, jr_002_4dca

    ld c, h
    ld b, c
    reti


    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_002_4dd8

    ld c, a
    jr nz, @+$52

    ld c, h
    ld b, c
    reti


    jr nz, jr_002_4dac

    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld c, e
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_002_4db6

    and b
    jr nz, jr_002_4db9

    jr nz, jr_002_4dbb

    ld d, d
    ld b, l
    ld b, c
    ld b, h
    ld e, c
    jr nz, jr_002_4dc2

    jr nz, jr_002_4d44

Call_002_4da4:
    cp $2e
    jr nz, jr_002_4dac

    ld a, $5b
    jr jr_002_4db2

jr_002_4dac:
    cp $20
    jr nz, jr_002_4db2

    ld a, $5c

jr_002_4db2:
    push hl
    ld hl, $6166

jr_002_4db6:
    sub $41
    add [hl]

jr_002_4db9:
    inc hl
    ld h, [hl]

jr_002_4dbb:
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl]
    pop hl
    ret


Call_002_4dc2:
jr_002_4dc2:
    ld d, $00
    ld e, d
    ld a, [$c676]
    cp $02

jr_002_4dca:
    jr z, jr_002_4dda

    ld d, $fa
    ld e, $05
    bit 2, a
    jr z, jr_002_4dd6

    inc e
    inc e

jr_002_4dd6:
    and $01

jr_002_4dd8:
    add e
    ld e, a

jr_002_4dda:
    ld a, [$c674]
    add d
    ld b, a
    ld a, [$c675]
    add d
    ld c, a
    ld d, $10
    ld a, e
    jp Jump_000_13c9


Call_002_4dea:
    ld a, [$c66c]
    or a
    jr z, jr_002_4e08

    ld a, [$c310]
    and $f0
    ret z

jr_002_4df6:
    add a
    jr z, jr_002_4dfc

    jr nc, jr_002_4df6

    ret


jr_002_4dfc:
    ld a, [$c310]
    and $0f
    ret nz

    ld b, $84
    xor a
    jp Jump_002_4f01


jr_002_4e08:
    ld a, [$c66a]
    cp $ff
    jr z, jr_002_4e11

    or a
    ret nz

jr_002_4e11:
    ld a, [$c677]
    or a
    jr z, jr_002_4e2e

    ld a, [$c678]
    dec a
    ld [$c678], a
    jr z, jr_002_4e2b

    cp $01
    jr nz, jr_002_4e42

    ld a, $0f
    ld [$c00b], a
    jr jr_002_4e42

jr_002_4e2b:
    ld [$c677], a

jr_002_4e2e:
    ld a, [$c310]
    and $0f
    ret nz

    ld a, [$c310]
    and $f0
    ld [$c677], a
    ret z

    ld a, $08
    ld [$c678], a

jr_002_4e42:
    ld a, [$c677]
    and $f0
    swap a
    rst $28
    xor l
    ld c, [hl]
    sub [hl]
    ld c, [hl]
    and d
    ld c, [hl]
    xor l
    ld c, [hl]
    adc d
    ld c, [hl]
    add b
    ld c, [hl]
    add l
    ld c, [hl]
    xor l
    ld c, [hl]
    ld [hl], h
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld l, a
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld c, [hl]
    call Call_002_4e74
    jr jr_002_4e96

    call Call_002_4e74
    jr jr_002_4ea2

Call_002_4e74:
    ld a, [$c675]
    add $02
    cp $82
    ret nc

    ld [$c675], a
    ret


    call Call_002_4e8a
    jr jr_002_4e96

    call Call_002_4e8a
    jr jr_002_4ea2

Call_002_4e8a:
    ld a, [$c675]
    sub $02
    cp $10
    ret c

    ld [$c675], a
    ret


jr_002_4e96:
    ld a, [$c674]
    add $02
    cp $82
    ret nc

    ld [$c674], a
    ret


jr_002_4ea2:
    ld a, [$c674]
    sub $02
    cp $10
    ret c

    ld [$c674], a
    ret


Call_002_4eae:
    ld hl, $c559
    ld d, $4e
    ld bc, $0000

jr_002_4eb6:
    ld a, [hl+]
    bit 1, a
    jr nz, jr_002_4ec3

    and $01
    jr z, jr_002_4ec2

    inc c
    jr jr_002_4ec3

jr_002_4ec2:
    inc b

jr_002_4ec3:
    dec d
    jr nz, jr_002_4eb6

    ret


Call_002_4ec7:
    ld a, [$c674]
    add $08
    and $f0
    ld [$c674], a
    swap a
    ld e, a
    ld a, [$c675]
    add $08
    and $f0
    ld [$c675], a
    swap a
    ld d, a
    ld a, $09
    sub d
    ld [$c666], a
    rlca
    ld d, a
    rlca
    rlca
    add d
    add e
    ld [$c664], a
    add $4e
    ld e, a
    adc $c5
    sub e
    ld d, a
    ret


Call_002_4ef8:
    add $4e
    ld l, a
    adc $c5
    sub l
    ld h, a
    ld a, [hl]
    ret


Call_002_4f01:
Jump_002_4f01:
    ld l, a
    ld a, b
    ldh [$8d], a
    ld a, [$c66e]
    or a
    jr nz, jr_002_4f1c

    ld a, [$c3ae]
    or a
    jr z, jr_002_4f1c

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jp nz, Jump_002_5002

jr_002_4f1c:
    ldh a, [$8d]

Call_002_4f1e:
    or a
    jr z, jr_002_4f24

    ld [$c3ba], a

jr_002_4f24:
    ld a, l
    add a
    add $40
    ld l, a
    ld a, $50
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    ld c, a
    srl b
    ld a, $07
    sub b
    inc a
    ld e, a
    ldh [$8c], a
    ld a, [$c675]
    and $f8
    rrca
    rrca
    rrca
    ld b, a
    ld a, $06
    jr jr_002_4f75

    ld a, b
    add c
    cp $07
    jr nc, jr_002_4f56

    add $02
    sub c
    jr jr_002_4f75

jr_002_4f56:
    sub c
    jr c, jr_002_4f70

    ld d, a
    ld a, c
    cp $06
    ld a, d
    jr c, jr_002_4f68

    cp $06
    jr c, jr_002_4f70

    sub $06
    jr jr_002_4f75

jr_002_4f68:
    cp $03
    jr c, jr_002_4f70

    sub $03
    jr jr_002_4f75

jr_002_4f70:
    srl b
    ld a, $08
    sub b

jr_002_4f75:
    swap a
    add a
    ld d, $98
    jr nc, jr_002_4f7d

    inc d

jr_002_4f7d:
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    push de
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push bc
    rst $08
    ld a, $04
    ld [de], a
    inc de

jr_002_4f8d:
    rst $08
    ld a, $05
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4f8d

    rst $08
    ld a, $06
    ld [de], a
    pop bc
    call Call_002_5032
    push bc

jr_002_4f9e:
    rst $08
    ld a, $08
    ld [de], a
    inc de
    push bc

jr_002_4fa4:
    rst $08
    ld a, $07
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4fa4

    pop bc
    rst $08
    ld a, $09
    ld [de], a
    call Call_002_5032
    dec c
    jr nz, jr_002_4f9e

    pop bc
    push bc
    rst $08
    ld a, $0a
    ld [de], a
    inc de

jr_002_4fbe:
    rst $08
    ld a, $0b
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4fbe

    rst $08
    ld a, $0c
    ld [de], a
    pop bc
    pop de
    ld a, e
    add $21
    ld e, a
    adc d
    sub e
    ld d, a
    ldh a, [$8c]
    inc a
    ldh [$8c], a

jr_002_4fd8:
    ld a, [hl+]
    cp $3c
    jr z, jr_002_4fe7

    call Call_002_4da4
    ld b, a
    rst $08
    ld a, b
    ld [de], a
    inc de
    jr jr_002_4fd8

jr_002_4fe7:
    call Call_002_5032
    dec c
    jr nz, jr_002_4fd8

    ei
    ld a, [$c66e]
    or a
    jr z, jr_002_5002

    call Call_000_147f
    ld b, $1e

jr_002_4ff9:
    push bc
    rst $18
    call Call_000_0c5a
    pop bc
    dec b
    jr nz, jr_002_4ff9

Jump_002_5002:
jr_002_5002:
    rst $18
    call Call_000_0c5a
    ld a, [$c66e]
    or a
    jr z, jr_002_5020

    ld a, [$c310]
    ld [$c782], a
    ld b, a
    ld a, [$c3b0]
    or b
    and $0c
    jr z, jr_002_5002

    ld [$c66e], a
    jr jr_002_5026

jr_002_5020:
    ld a, [$c310]
    or a
    jr z, jr_002_5002

jr_002_5026:
    ld a, $80
    ld [$c3ba], a
    xor a
    ld [$c310], a
    jp Jump_002_4cd4


Call_002_5032:
    ld a, e
    and $e0
    add $20
    ld e, a
    adc d
    sub e
    ld d, a
    ldh a, [$8c]
    or e
    ld e, a
    ret


    ld e, b
    ld d, b
    ld l, c
    ld d, b
    add c
    ld d, b
    sub b
    ld d, b
    and c
    ld d, b
    or d
    ld d, b
    ld [bc], a
    ld d, c
    ld d, d
    ld d, c
    and d
    ld d, c
    ld a, [c]
    ld d, c
    ld c, b
    ld d, d
    xor h
    ld d, d
    ld c, $01
    ld c, c
    ld c, [hl]
    jr nz, jr_002_50a4

    ld c, a
    ld d, d
    ld b, e
    ld b, l
    ld b, h
    jr nz, jr_002_50af

    ld d, l
    ld c, l
    ld d, b
    inc a
    inc c
    ld [bc], a
    ld d, b
    ld c, c
    ld b, l
    ld b, e
    ld b, l
    jr nz, jr_002_50b5

    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, h
    inc a
    jr nz, jr_002_509a

    jr nz, jr_002_509c

    ld c, l
    ld c, a
    ld d, [hl]
    ld b, l
    inc a
    inc c
    ld bc, $4e49
    ld d, [hl]
    ld b, c
    ld c, h
    ld c, c
    ld b, h
    jr nz, jr_002_50d9

    ld c, a
    ld d, [hl]
    ld b, l
    inc a
    ld c, $01
    ld c, [hl]
    ld c, a
    jr nz, jr_002_50e6

    ld c, c
    ld b, l
    ld b, e
    ld b, l

jr_002_509a:
    jr nz, jr_002_50f0

jr_002_509c:
    ld c, b
    ld b, l
    ld d, d
    ld b, l
    inc a
    ld c, $01
    ld c, [hl]

jr_002_50a4:
    ld c, a
    ld d, h
    jr nz, jr_002_5101

    ld c, a
    ld d, l
    ld d, d
    jr nz, @+$52

    ld c, c
    ld b, l

jr_002_50af:
    ld b, e
    ld b, l
    inc a
    inc c
    ld b, $20

jr_002_50b5:
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_002_5113

    ld c, c
    ld c, [hl]
    ld d, e
    jr nz, @+$3e

    jr nz, jr_002_50e3

    jr nz, jr_002_50e5

    jr nz, jr_002_50e7

    jr nz, jr_002_50e9

    jr nz, jr_002_50eb

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_002_5128

    ld d, h
    ld b, c
    ld d, d
    ld d, h

jr_002_50d9:
    jr nz, jr_002_5117

    ld d, h
    ld c, a
    jr nz, jr_002_5121

    ld b, l
    ld b, a
    ld c, c
    ld c, [hl]

jr_002_50e3:
    jr nz, jr_002_5133

jr_002_50e5:
    ld b, l

jr_002_50e6:
    ld d, a

jr_002_50e7:
    inc a
    ld b, a

jr_002_50e9:
    ld b, c
    ld c, l

jr_002_50eb:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l

jr_002_50f0:
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    inc a
    ld d, h
    ld c, a
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_002_5140

    ld b, c
    ld b, e
    ld c, e

jr_002_5101:
    inc a
    inc c
    ld b, $20
    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_002_5163

    ld c, c
    ld c, [hl]
    ld d, e
    jr nz, @+$3e

    jr nz, jr_002_5133

jr_002_5113:
    jr nz, jr_002_5135

    jr nz, jr_002_5137

jr_002_5117:
    jr nz, jr_002_5139

    jr nz, jr_002_513b

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l

jr_002_5121:
    ld d, e
    ld d, e
    jr nz, jr_002_5178

    ld d, h
    ld b, c
    ld d, d

jr_002_5128:
    ld d, h
    jr nz, jr_002_5167

    ld d, h
    ld c, a
    jr nz, jr_002_5171

    ld b, l
    ld b, a
    ld c, c
    ld c, [hl]

jr_002_5133:
    jr nz, jr_002_5183

jr_002_5135:
    ld b, l
    ld d, a

jr_002_5137:
    inc a
    ld b, a

jr_002_5139:
    ld b, c
    ld c, l

jr_002_513b:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l

jr_002_5140:
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    inc a
    ld d, h
    ld c, a
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_002_5190

    ld b, c
    ld b, e
    ld c, e
    inc a
    inc c
    ld b, $20
    jr nz, jr_002_51b0

    ld c, a
    ld d, l
    jr nz, jr_002_51a7

    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_002_5180

    inc a
    jr nz, jr_002_5183

jr_002_5163:
    jr nz, jr_002_5185

    jr nz, jr_002_5187

jr_002_5167:
    jr nz, jr_002_5189

    jr nz, jr_002_518b

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l

jr_002_5171:
    ld d, e
    ld d, e
    jr nz, jr_002_51c8

    ld d, h
    ld b, c
    ld d, d

jr_002_5178:
    ld d, h
    jr nz, jr_002_51b7

    ld d, h
    ld c, a
    jr nz, jr_002_51c1

    ld b, l

jr_002_5180:
    ld b, a
    ld c, c
    ld c, [hl]

jr_002_5183:
    jr nz, jr_002_51d3

jr_002_5185:
    ld b, l
    ld d, a

jr_002_5187:
    inc a
    ld b, a

jr_002_5189:
    ld b, c
    ld c, l

jr_002_518b:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l

jr_002_5190:
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    inc a
    ld d, h
    ld c, a
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_002_51e0

    ld b, c
    ld b, e
    ld c, e
    inc a
    inc c
    ld b, $20
    jr nz, jr_002_51c7

jr_002_51a7:
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$59

    ld c, c
    ld c, [hl]
    jr nz, jr_002_51d0

jr_002_51b0:
    inc a
    jr nz, jr_002_51d3

    jr nz, jr_002_51d5

    jr nz, jr_002_51d7

jr_002_51b7:
    jr nz, jr_002_51d9

    jr nz, jr_002_51db

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l

jr_002_51c1:
    ld d, e
    ld d, e
    jr nz, jr_002_5218

    ld d, h
    ld b, c

jr_002_51c7:
    ld d, d

jr_002_51c8:
    ld d, h
    jr nz, @+$3e

    ld d, h
    ld c, a
    jr nz, @+$44

    ld b, l

jr_002_51d0:
    ld b, a
    ld c, c
    ld c, [hl]

jr_002_51d3:
    jr nz, jr_002_5223

jr_002_51d5:
    ld b, l
    ld d, a

jr_002_51d7:
    inc a
    ld b, a

jr_002_51d9:
    ld b, c
    ld c, l

jr_002_51db:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l

jr_002_51e0:
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    inc a
    ld d, h
    ld c, a
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_002_5230

    ld b, c
    ld b, e
    ld c, e
    inc a
    dec c
    ld b, $47
    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_002_5243

    ld d, e
    jr nz, jr_002_5241

    ld d, d
    ld b, c
    ld d, a
    ld c, [hl]
    inc a
    jr nz, jr_002_5224

    jr nz, jr_002_5226

    jr nz, jr_002_5228

    jr nz, jr_002_522a

    jr nz, jr_002_522c

    jr nz, jr_002_522e

    jr nz, @+$3e

    jr nz, jr_002_5262

    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, @+$55

jr_002_5218:
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_002_525a

    ld d, h
    ld c, a
    jr nz, jr_002_5264

    ld b, l

jr_002_5223:
    ld b, a

jr_002_5224:
    ld c, c
    ld c, [hl]

jr_002_5226:
    jr nz, jr_002_5276

jr_002_5228:
    ld b, l
    ld d, a

jr_002_522a:
    jr nz, jr_002_5268

jr_002_522c:
    ld b, a
    ld b, c

jr_002_522e:
    ld c, l
    ld b, l

jr_002_5230:
    ld l, $20
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, jr_002_5276

    ld d, h
    ld c, a
    jr nz, jr_002_5292

    ld b, c
    ld c, e
    ld b, l

jr_002_5241:
    jr nz, @+$44

jr_002_5243:
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_002_5284

    dec c
    rlca
    ld c, c
    jr nz, jr_002_5290

    ld c, a
    ld c, [hl]
    ld b, e
    ld b, l
    ld b, h
    ld b, l
    jr nz, jr_002_52a9

    ld c, b
    ld b, l
    inc a
    jr nz, @+$49

jr_002_525a:
    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_002_52b3

    ld c, a
    jr nz, jr_002_52bb

jr_002_5262:
    ld c, a
    ld d, l

jr_002_5264:
    jr nz, jr_002_52a2

    jr nz, jr_002_5288

jr_002_5268:
    jr nz, jr_002_528a

    jr nz, jr_002_528c

    jr nz, jr_002_528e

    jr nz, jr_002_5290

    jr nz, jr_002_5292

    jr nz, jr_002_52b0

    jr nz, jr_002_52c6

jr_002_5276:
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_002_52cf

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_002_52be

    ld d, h
    ld c, a

jr_002_5284:
    jr nz, @+$44

    ld b, l
    ld b, a

jr_002_5288:
    ld c, c
    ld c, [hl]

jr_002_528a:
    jr nz, jr_002_52da

jr_002_528c:
    ld b, l
    ld d, a

jr_002_528e:
    jr nz, jr_002_52cc

jr_002_5290:
    ld b, a
    ld b, c

jr_002_5292:
    ld c, l
    ld b, l
    ld l, $20
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, jr_002_52da

    ld d, h
    ld c, a
    jr nz, jr_002_52f6

jr_002_52a2:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_002_52e9

    ld b, c
    ld b, e

jr_002_52a9:
    ld c, e
    jr nz, @+$3e

    dec c
    inc b
    ld e, c
    ld c, a

jr_002_52b0:
    ld d, l
    jr nz, jr_002_52fb

jr_002_52b3:
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_002_52fe

    ld c, c
    ld d, [hl]
    ld b, l

jr_002_52bb:
    inc a
    jr nz, @+$4f

jr_002_52be:
    ld c, a
    ld d, [hl]
    ld b, l
    ld d, e
    jr nz, jr_002_5310

    ld b, l
    ld b, [hl]

jr_002_52c6:
    ld d, h
    jr nz, jr_002_52e9

    inc a
    ld b, d
    ld b, l

jr_002_52cc:
    ld b, [hl]
    ld c, a
    ld d, d

jr_002_52cf:
    ld b, l
    jr nz, @+$43

    jr nz, @+$46

    ld d, d
    ld b, c
    ld d, a
    inc a
    jr nz, jr_002_52fa

jr_002_52da:
    ld c, c
    ld d, e
    jr nz, @+$45

    ld b, c
    ld c, h
    ld c, h
    ld b, l
    ld b, h
    jr nz, @+$22

    inc a

Call_002_52e6:
    ld a, [$c677]

jr_002_52e9:
    and $f0
    ret nz

    ld a, [$c66a]
    cp $ff
    jr z, jr_002_530c

    or a
    jr z, jr_002_530c

jr_002_52f6:
    dec a
    ld [$c66a], a

jr_002_52fa:
    ret nz

jr_002_52fb:
    call Call_002_5651

jr_002_52fe:
    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    call Call_002_4d45
    jp Jump_002_4cd4


jr_002_530c:
    ld a, [$c3a2]
    or a

jr_002_5310:
    jr z, jr_002_531b

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    ret nz

jr_002_531b:
    ld a, [$c310]
    cp $02
    jr z, jr_002_5343

    cp $01
    jr z, jr_002_5369

    ld a, [$c676]
    cp $02
    ret nz

    ld a, [$c669]
    or a
    ret z

    inc a
    ld [$c669], a
    cp $78
    ret nz

    ld a, $88
    ld [$c3ba], a
    ld a, $01
    ld [$c669], a
    ret


jr_002_5343:
    ld a, [$c676]
    cp $02
    ret z

Jump_002_5349:
jr_002_5349:
    ld a, [$c683]
    or a
    ret nz

    xor a
    ld [$c669], a
    ld a, $86
    ld [$c3ba], a
    ld a, [$c665]
    call Call_002_4ef8
    ld a, [$c676]
    ld [hl], a
    ld a, $02
    ld [$c676], a
    jp Jump_002_4cd4


jr_002_5369:
    ld a, [$c676]
    ld b, a
    cp $02
    jp z, Jump_002_548f

    ld a, $08
    ld [$c667], a
    call Call_002_4ec7
    ld a, [$c3ae]
    or a
    jr z, jr_002_538f

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_002_538f

    ld a, $01
    ld [$c667], a

jr_002_538f:
    ld hl, $c66f
    ld a, [hl+]
    ld b, a
    ld a, [$c664]
    sub b
    ld b, a
    jr z, jr_002_5349

    cp [hl]
    jr z, jr_002_53c0

    inc hl
    cp [hl]
    jr z, jr_002_53c0

    inc hl
    cp [hl]
    jr z, jr_002_53c0

    inc hl
    cp [hl]
    jr z, jr_002_53c0

    ld a, [$c669]
    or a
    jr z, jr_002_53b6

    ld b, $84
    xor a
    jp Jump_002_4f01


jr_002_53b6:
    ld b, $84
    ld a, $02
    call Call_002_4f01
    jp Jump_002_5349


jr_002_53c0:
    ld b, a
    ld a, $3c
    ld [$c66a], a
    ld a, $01
    ld [$c66d], a
    ld a, [$c77f]
    cp $03
    jr z, jr_002_53d6

    inc a
    ld [$c77f], a

jr_002_53d6:
    xor a
    ld [$c669], a
    ld a, [$c664]
    ld [$c781], a
    call Call_002_56f0
    ld a, $86
    ld [$c3ba], a
    xor a
    ld [$c683], a
    ld a, [$c3ae]
    or a
    jr z, jr_002_53f7

    ld a, $01
    ld [$c66a], a

jr_002_53f7:
    ld a, b
    cp $12
    jr z, jr_002_5432

    cp $16
    jr z, jr_002_5432

    cp $ee
    jr z, jr_002_5432

    cp $ea
    jr z, jr_002_5432

    ld hl, $c684
    inc [hl]
    ld a, [$c667]
    ld b, a
    ld a, [$c666]
    cp b
    jr nz, jr_002_541e

jr_002_5416:
    ld a, [$c676]
    set 2, a
    ld [$c676], a

jr_002_541e:
    ld a, $86
    ld [$c3ba], a
    call Call_002_4ec7
    ld a, [$c676]
    ld [de], a
    ld a, $02
    ld [$c676], a
    jp Jump_002_4cd4


jr_002_5432:
    sra a
    ld b, a
    ld a, [$c665]
    add b
    ld b, a
    call Call_002_4ef8
    call Call_002_570d
    ld [hl], $02
    call Call_002_4cd4
    xor a
    ld [$c684], a
    ld [$c685], a
    ld a, [$c667]
    ld b, a
    ld a, [$c666]
    cp b
    jr nz, jr_002_545d

    ld a, [$c676]
    bit 2, a
    jr z, jr_002_5416

jr_002_545d:
    call Call_002_4ec7
    ld c, e
    ld b, d
    ld a, [$c676]
    ld [$c668], a
    ld [bc], a
    ld a, $02
    ld [$c676], a
    call Call_002_555d
    jr nc, jr_002_5487

    bit 1, a
    jr z, jr_002_5487

    ld a, $01
    ld [$c669], a
    ld [$c66c], a
    ld [$c683], a
    ld a, $ff
    ld [$c66a], a

jr_002_5487:
    ld a, $86
    ld [$c3ba], a
    jp Jump_002_4cd4


Jump_002_548f:
    xor a
    ld [$c66d], a
    ld a, $85
    ld [$c3ba], a
    call Call_002_4ec7
    ld a, [de]
    bit 1, a
    jr nz, jr_002_54f4

    ld [$c668], a
    and $01
    ld c, a
    ld a, [$c3a1]
    cp c
    jr nz, jr_002_54fb

    push de
    xor a
    ld [$c66c], a
    call Call_002_5502
    pop bc
    call Call_002_555d
    ld a, [$c669]
    or a
    jr z, jr_002_54c9

    call Call_002_552e
    jr c, jr_002_54c9

    ld b, $84
    xor a
    jp Jump_002_4f01


jr_002_54c9:
    ld a, [$c66b]
    or a
    jr nz, jr_002_54d6

    ld b, $84
    ld a, $01
    jp Jump_002_4f01


jr_002_54d6:
    ld a, [$c668]
    ld [$c676], a
    ld a, [$c664]
    ld [$c665], a
    ld [$c66f], a
    ld [$c780], a
    call Call_002_56aa
    call Call_002_4ec7
    ld a, $02
    ld [de], a
    jp Jump_002_4cd4


jr_002_54f4:
    ld b, $84
    ld a, $03
    jp Jump_002_4f01


jr_002_54fb:
    ld b, $84
    ld a, $04
    jp Jump_002_4f01


Call_002_5502:
    ld bc, $c559
    ld d, $4e
    ld a, [$c668]
    and $01
    ld e, a

jr_002_550d:
    push de
    ld a, [bc]
    bit 1, a
    jr nz, jr_002_5521

    and $01
    cp e
    jr nz, jr_002_5521

    call Call_002_555d
    jr nc, jr_002_5521

    bit 1, a
    jr nz, jr_002_5527

jr_002_5521:
    inc bc
    pop de
    dec d
    jr nz, jr_002_550d

    ret


jr_002_5527:
    pop de
    ld a, $01
    ld [$c669], a
    ret


Call_002_552e:
    ld e, $00
    ld hl, $c670
    ld a, [hl]
    cp $12
    jr z, jr_002_553b

    ld [hl], $00
    dec e

jr_002_553b:
    inc e
    inc hl
    ld a, [hl]
    cp $16
    jr z, jr_002_5545

    ld [hl], $00
    dec e

jr_002_5545:
    inc e
    inc hl
    ld a, [hl]
    cp $ee
    jr z, jr_002_554f

    ld [hl], $00
    dec e

jr_002_554f:
    inc e
    inc hl
    ld a, [hl]
    cp $ea
    jr z, jr_002_5559

    ld [hl], $00
    dec e

jr_002_5559:
    inc e
    xor a
    sub e
    ret


Call_002_555d:
    xor a
    ld [$c66b], a
    ld a, [$c3ae]
    or a
    jr z, jr_002_5571

    ld a, [$c3a3]
    ld l, a
    ld a, [$c3a1]
    cp l
    jr nz, jr_002_55ae

jr_002_5571:
    ld a, [$c3a2]
    or a
    jr z, jr_002_5581

    ld a, [$c3a3]
    ld e, a
    ld a, [$c3a1]
    cp e
    jr nz, jr_002_55ae

jr_002_5581:
    ld de, $c670
    ld hl, $0009
    call Call_002_55da
    ld hl, $000b
    call Call_002_55da
    ld a, [bc]
    bit 2, a
    jr z, jr_002_55a3

    ld hl, $fff7
    call Call_002_55da
    ld hl, $fff5
    call Call_002_55da
    jr jr_002_55a7

jr_002_55a3:
    xor a
    ld [de], a
    inc de
    ld [de], a

jr_002_55a7:
    ld a, [$c66b]
    or a
    ret z

    scf
    ret


jr_002_55ae:
    ld hl, $c670
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    ld e, l
    ld d, h
    ld hl, $fff7
    call Call_002_55da
    ld hl, $fff5
    call Call_002_55da
    ld a, [bc]
    bit 2, a
    jr z, jr_002_55a7

    ld de, $c670
    ld hl, $0009
    call Call_002_55da
    ld hl, $000b
    call Call_002_55da
    jr jr_002_55a7

Call_002_55da:
    push hl
    add hl, bc
    bit 3, [hl]
    jr nz, jr_002_5609

    bit 1, [hl]
    jr nz, jr_002_55fc

    call Call_002_560e
    jr nc, jr_002_5609

    pop hl
    add hl, hl
    push hl
    add hl, bc
    bit 3, [hl]
    jr nz, jr_002_5609

    bit 1, [hl]
    jr z, jr_002_5609

    ld a, [$c66b]
    set 1, a
    jr jr_002_5601

jr_002_55fc:
    ld a, [$c66b]
    set 0, a

jr_002_5601:
    ld [$c66b], a
    pop hl
    ld a, l
    ld [de], a
    inc de
    ret


jr_002_5609:
    xor a
    ld [de], a
    inc de
    pop hl
    ret


Call_002_560e:
    ld a, [$c668]
    bit 0, a
    jr z, jr_002_561b

    bit 0, [hl]
    jr nz, jr_002_561f

jr_002_5619:
    scf
    ret


jr_002_561b:
    bit 0, [hl]
    jr nz, jr_002_5619

jr_002_561f:
    xor a
    ret


Call_002_5621:
    ld a, [$c3a1]
    ld e, a
    ld bc, $c559
    ld d, $4e
    ld h, $00

jr_002_562c:
    ld a, [bc]
    bit 1, a
    jr nz, jr_002_5648

    and $01
    cp e
    jr nz, jr_002_5648

    ld a, [bc]
    ld [$c668], a
    inc h
    push bc
    push de
    push hl
    call Call_002_555d
    pop hl
    pop de
    pop bc
    jr nc, jr_002_5648

    xor a
    ret


jr_002_5648:
    inc bc
    dec d
    jr nz, jr_002_562c

    ld a, h
    or a
    ret z

    scf
    ret


Call_002_5651:
    ld a, [$c3ae]
    or a
    jr nz, jr_002_566e

    ld a, [$c3a2]
    or a
    jr nz, jr_002_566e

Call_002_565d:
    ld de, $c5b1
    ld hl, $c54e
    ld b, $32

jr_002_5665:
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    dec de
    dec b
    jr nz, jr_002_5665

jr_002_566e:
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr nz, jr_002_5691

    ld a, [$c674]
    ld [$c679], a
    ld a, [$c67a]
    ld [$c674], a
    ld a, [$c675]
    ld [$c67b], a
    ld a, [$c67c]
    ld [$c675], a
    ret


jr_002_5691:
    ld a, [$c674]
    ld [$c67a], a
    ld a, [$c679]
    ld [$c674], a
    ld a, [$c675]
    ld [$c67c], a
    ld a, [$c67b]
    ld [$c675], a
    ret


Call_002_56aa:
    ld a, [$c76c]
    cp $14
    jr z, jr_002_56db

jr_002_56b1:
    add a
    ld l, a
    add a
    add l
    add $f4
    ld l, a
    adc $c6
    sub l
    ld h, a
    ld a, [$c665]
    ld [hl+], a
    ld a, [$c668]
    ld b, a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    srl b
    ld a, [$c3a3]
    rrca
    ld c, a
    ld a, b
    and $02
    ld b, a
    ld a, [$c3a1]
    or b
    or c
    ld [hl], a
    ret


jr_002_56db:
    ld hl, $c6fa
    ld de, $c6f4
    ld b, $72

jr_002_56e3:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_56e3

    ld a, $13
    ld [$c76c], a
    jr jr_002_56b1

Call_002_56f0:
    ld a, [$c76c]
    add a
    ld l, a
    add a
    add l
    add $f6
    ld l, a
    adc $c6
    sub l
    ld h, a
    ld a, [$c664]
    ld [hl], a
    ld a, [$c76c]
    inc a
    ld [$c76c], a
    ld [$c76d], a
    ret


Call_002_570d:
    ld a, [$c76c]
    dec a
    add a
    ld e, a
    add a
    add e
    add $f7
    ld e, a
    adc $c6
    sub e
    ld d, a
    ld a, b
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Call_002_5722:
    ld a, [$c3a2]
    or a
    ret z

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    ret z

    ld a, [$c66a]
    cp $ff
    jr z, jr_002_5739

    or a
    ret nz

jr_002_5739:
    ld a, $01
    ld [$c667], a
    ld a, [$c67d]
    or a
    jp nz, Jump_002_5836

    call Call_002_57a5
    ld a, [$c682]
    or a
    jr z, jr_002_5755

    xor a
    ld [$c682], a
    jp Jump_002_5768


jr_002_5755:
    xor a
    ld [$c67e], a
    ld [$c67f], a
    call Call_002_5afe
    ld a, [$c779]
    ld [$c3a1], a
    jp Jump_002_57bd


Jump_002_5768:
    xor a
    ld [$c682], a
    ld [$c686], a
    ld [$c68b], a
    dec a
    ld [$c688], a
    call Call_002_5c68
    ld a, $01
    call Call_002_5a73
    ld a, [$c67f]
    add $4e
    ld c, a
    ld a, $c5
    adc $00
    ld b, a
    xor a
    ld [$c67e], a
    ld [$c67f], a
    ld a, [bc]
    ld [$c668], a
    call Call_002_555d
    call Call_002_552e
    call Call_002_5b98
    ld a, [$c779]
    ld [$c3a1], a
    jr jr_002_57bd

Call_002_57a5:
    ld a, $01
    ld [$c689], a
    xor a
    ld [$c68a], a
    ld [$c680], a
    ld a, $02
    call Call_002_4d45
    ld a, [$c3a1]
    ld [$c779], a
    ret


Jump_002_57bd:
jr_002_57bd:
    ld a, [$c686]
    or a
    jr nz, jr_002_57d3

    xor a
    ld [$c310], a
    ld [$c689], a
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    jp Jump_002_4c6b


jr_002_57d3:
    ld a, [$c67f]
    cp $0b
    jp c, Jump_002_5947

    cp $59
    jp nc, Jump_002_5947

    ld a, [$c67e]
    ld c, a
    ld e, $00

jr_002_57e6:
    sub $0a
    jr c, jr_002_57ed

    inc e
    jr jr_002_57e6

jr_002_57ed:
    add $0a
    swap a
    ld [$c674], a
    ld [$c67a], a
    ld a, $09
    sub e
    swap a
    ld [$c675], a
    ld [$c67c], a
    ld a, c
    ld [$c665], a
    call Call_002_4ef8
    ld [$c676], a
    ld [$c668], a
    ld [hl], $02
    call Call_002_56aa
    call Call_002_4cd4
    ld a, $01
    ld [$c67d], a
    ld a, $ff
    ld [$c66a], a
    xor a
    ld [$c310], a
    ld [$c677], a
    ld [$c689], a
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ld a, $03
    jp Jump_002_4d45


Jump_002_5836:
    ld a, [$c677]
    or a
    jr z, jr_002_5863

    xor a
    ld [$c310], a
    ld a, [$c67f]
    ld b, a
    ld a, [$c67e]
    sub b
    cp $12
    ret z

    cp $16
    ret z

    cp $ee
    ret z

    cp $ea
    ret z

    cp $09
    ret z

    cp $0b
    ret z

    cp $f7
    ret z

    cp $f5
    ret z

    jp Jump_002_5947


jr_002_5863:
    xor a
    ld [$c76e], a
    call Call_002_4ec7
    ld a, [$c664]
    ld c, a
    ld a, [$c67f]
    ld b, a
    ld a, [$c67e]
    sub b
    cp $12
    jr z, jr_002_5886

    cp $16
    jr z, jr_002_5886

    cp $ee
    jr z, jr_002_5886

    cp $ea
    jr nz, jr_002_589d

jr_002_5886:
    sra a
    ld b, a
    ld a, [$c67e]
    sub b
    cp c
    jr nz, jr_002_589d

    ld [$c680], a
    xor a
    ld [$c684], a
    ld [$c685], a
    jp Jump_002_591f


jr_002_589d:
    ld a, [$c67f]
    ld b, a
    ld a, [$c664]
    cp b
    jr nz, jr_002_591f

    ld hl, $c684
    inc [hl]
    call Call_002_4ef8
    ld a, [$c676]
    ld [hl], a
    ld a, $02
    ld [$c676], a
    push hl
    call Call_002_56f0
    pop hl
    ld a, [$c666]
    ld b, a
    ld a, [$c667]
    cp b
    jr nz, jr_002_58d1

    bit 2, [hl]
    jr nz, jr_002_58d1

    set 2, [hl]
    ld a, $01
    ld [$c76e], a

jr_002_58d1:
    ld a, [$c680]
    or a
    jr z, jr_002_58e4

    push hl
    ld b, a
    call Call_002_4ef8
    push hl
    call Call_002_570d
    pop hl
    ld [hl], $02
    pop hl

jr_002_58e4:
    xor a
    ld [$c67d], a
    ld a, [$c680]
    or a
    jr z, jr_002_590b

    ld a, [$c76e]
    or a
    jr nz, jr_002_590b

    ld c, l
    ld b, h
    call Call_002_555d
    jr nc, jr_002_590b

    bit 1, a
    jr z, jr_002_590b

    ld a, $01
    ld [$c681], a
    ld a, $01
    ld [$c682], a
    jr jr_002_5917

jr_002_590b:
    xor a
    ld [$c682], a
    ld [$c681], a
    ld a, $3c
    ld [$c66a], a

jr_002_5917:
    ld a, $86
    ld [$c3ba], a
    jp Jump_002_4cd4


Jump_002_591f:
jr_002_591f:
    ld a, [$c67f]
    ld b, a
    ld a, [$c664]
    sub b
    cp $09
    jr z, jr_002_5990

    cp $12
    jr z, jr_002_5990

    cp $0b
    jr z, jr_002_5996

    cp $16
    jr z, jr_002_5996

    cp $f5
    jr z, jr_002_599c

    cp $ea
    jr z, jr_002_599c

    cp $f7
    jr z, jr_002_59a2

    cp $ee
    jr z, jr_002_59a2

Jump_002_5947:
    call Call_002_4ef8
    ld a, [$c676]
    ld [hl], a
    ld a, $02
    ld [$c676], a
    ld a, $50
    ld [$c674], a
    ld a, $60
    ld [$c675], a
    call Call_002_5651
    ld a, $03
    call Call_002_4d45
    call Call_002_4cd4
    call Call_002_4dc2
    call Call_000_147f
    xor a
    ld [$c66a], a
    ld [$c67d], a
    ld [$c682], a
    ld [$c681], a
    ld [$c689], a
    ld [$c310], a
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ld a, [$c76c]
    ld [$c76d], a
    jp Jump_002_4c5f


jr_002_5990:
    ld a, $90
    ld [$c310], a
    ret


jr_002_5996:
    ld a, $a0
    ld [$c310], a
    ret


jr_002_599c:
    ld a, $50
    ld [$c310], a
    ret


jr_002_59a2:
    ld a, $60
    ld [$c310], a
    ret


Call_002_59a8:
Jump_002_59a8:
    push af
    ld a, [$c688]
    add $94
    ld l, a
    adc $c6
    sub l
    ld h, a
    pop af
    bit 7, a
    jr z, jr_002_59bc

    add [hl]
    ret nc

    ld [hl], a
    ret


jr_002_59bc:
    add [hl]
    ret c

    ld [hl], a
    ret


Call_002_59c0:
    push af
    ld a, [$c688]
    add $94
    ld l, a
    adc $c6
    sub l
    ld h, a
    pop af
    ld [hl], a
    ret


Call_002_59ce:
    ld a, [$c688]
    add $94
    ld l, a
    adc $c6
    sub l
    ld h, a
    ld a, [hl]
    ret


    ld hl, $c688
    ld a, [$c687]
    cp [hl]
    jr z, jr_002_59ef

    inc [hl]
    call Call_002_59ce
    ld [$c77a], a
    ld hl, $c688
    dec [hl]
    ret


jr_002_59ef:
    call Call_002_59ce
    ld [$c77a], a
    ret


Call_002_59f6:
    push af
    ld a, [$c688]
    or a
    jr nz, jr_002_5a01

    ld e, $80
    jr jr_002_5a0c

jr_002_5a01:
    ld d, a
    dec a
    add $94
    ld l, a
    adc $c6
    sub l
    ld h, a
    ld e, [hl]
    ld a, d

jr_002_5a0c:
    add $94
    ld l, a
    adc $c6
    sub l
    ld h, a
    ld [hl], e
    pop af
    ret


Call_002_5a16:
Jump_002_5a16:
    push af
    ld h, $00
    ld a, [$c688]
    cp $ff
    jr nz, jr_002_5a21

    dec h

jr_002_5a21:
    add $8c
    ld l, a
    ld a, h
    adc $c6
    ld h, a
    pop af
    ld [hl], a
    ret


Call_002_5a2b:
    ld h, $00
    ld a, [$c688]
    cp $ff
    jr nz, jr_002_5a35

    dec h

jr_002_5a35:
    add $8c
    ld l, a
    ld a, h
    adc $c6
    ld h, a
    ld a, [hl]
    ret


Call_002_5a3e:
    ld hl, $c688
    ld a, [$c687]
    cp [hl]
    jr z, jr_002_5a53

    inc [hl]
    call Call_002_5a2b
    ld [$c77a], a
    ld hl, $c688
    dec [hl]
    ret


jr_002_5a53:
    call Call_002_59ce
    ld [$c77a], a
    ret


Call_002_5a5a:
    ld hl, $c688
    xor a
    cp [hl]
    jr z, jr_002_5a6d

    dec [hl]
    call Call_002_5a2b
    ld [$c77b], a
    ld hl, $c688
    inc [hl]
    ret


jr_002_5a6d:
    ld a, $ff
    ld [$c77b], a
    ret


Call_002_5a73:
    push af
    ld a, [$c688]
    add $9c
    ld l, a
    adc $c6
    sub l
    ld h, a
    pop af
    ld [hl], a
    ret


Call_002_5a81:
    ld a, [$c688]
    add $9c
    ld l, a
    adc $c6
    sub l
    ld h, a
    ld a, [hl]
    ret


Call_002_5a8d:
    push af
    ld a, [$c688]
    add $a4
    ld l, a
    adc $c6
    sub l
    ld h, a
    pop af
    ld [hl], a
    ret


Call_002_5a9b:
    ld a, [$c688]
    add $a4
    ld l, a
    adc $c6
    sub l
    ld h, a
    ld a, [hl]
    ret


Call_002_5aa7:
    ld a, [$c77a]
    ld e, a
    call Call_002_5a2b
    ld d, a
    ld a, [$c3a3]
    ld l, a
    ld a, [$c3a1]
    cp l
    jr nz, jr_002_5ac0

    ld a, d
    cp e
    jr z, jr_002_5ae5

    jr nc, jr_002_5ac5

    ret


jr_002_5ac0:
    ld a, d
    cp e
    jr z, jr_002_5ae5

    ret nc

jr_002_5ac5:
    ld a, [$c77a]
    call Call_002_5a16
    ld a, [$c688]
    or a
    ret nz

    ld a, $80
    ld [$c77c], a

jr_002_5ad5:
    ld a, $01
    ld [$c686], a
    call Call_002_5d7c
    ld [$c67e], a
    ld a, b
    ld [$c67f], a
    ret


jr_002_5ae5:
    ld a, [$c688]
    or a
    ret nz

    ld a, [$c77c]
    ld h, a
    call Call_000_0a01
    and $7f
    ld l, a
    ld a, h
    sub l
    ret c

    ld hl, $c77c
    srl [hl]
    jr jr_002_5ad5

Call_002_5afe:
    call Call_002_5f2c
    xor a
    ld [$c686], a
    ld [$c68b], a
    dec a
    ld [$c688], a
    ld a, $80
    ld [$c694], a
    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a

Call_002_5b19:
    ld a, [$c687]
    ld e, a
    ld a, [$c688]
    cp e
    ret z

    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    call Call_002_5c68
    ld a, $01
    call Call_002_5a73
    call Call_002_5b4f
    call Call_002_5a9b
    or a
    jr nz, jr_002_5b42

    xor a
    call Call_002_5a73
    call Call_002_5b4f

jr_002_5b42:
    ld hl, $c688
    dec [hl]
    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    ret


Call_002_5b4f:
    ld a, [$c3a1]
    ld e, a
    ld bc, $c559
    ld d, $4e

jr_002_5b58:
    ld a, [bc]
    bit 1, a
    jr nz, jr_002_5b93

    and $01
    cp e
    jr nz, jr_002_5b93

    ld a, $01
    ld [$c667], a
    ld a, [bc]
    ld [$c668], a
    push bc
    push de
    call Call_002_555d
    jr nc, jr_002_5b91

    call Call_002_5a81
    or a
    jr z, jr_002_5b7d

    call Call_002_552e
    jr nc, jr_002_5b91

jr_002_5b7d:
    pop de
    push de
    call Call_002_5b98
    pop de
    pop bc
    call Call_002_5a5a
    call Call_002_5a2b
    ld hl, $c77b
    cp [hl]
    ret nc

    jr jr_002_5b93

jr_002_5b91:
    pop de
    pop bc

jr_002_5b93:
    inc bc
    dec d
    jr nz, jr_002_5b58

    ret


Call_002_5b98:
    ld a, [$c668]
    bit 2, a
    jr z, jr_002_5bad

    ld a, [$c670]
    or a
    call nz, Call_002_5bbc
    ld a, [$c671]
    or a
    call nz, Call_002_5bbc

jr_002_5bad:
    ld a, [$c672]
    or a
    call nz, Call_002_5bbc
    ld a, [$c673]
    or a
    call nz, Call_002_5bbc
    ret


Call_002_5bbc:
    push af
    push bc
    call Call_002_59f6
    call Call_002_5c9c
    ld a, [$c667]
    ld h, a
    ld a, [$c666]
    cp h
    jr nz, jr_002_5bdb

    ld a, [de]
    bit 2, a
    jr nz, jr_002_5bdb

    set 2, a
    ld [de], a
    ld a, $01
    call Call_002_59a8

jr_002_5bdb:
    ld a, [de]
    bit 2, a
    jr z, jr_002_5be5

    ld a, $01
    call Call_002_59a8

jr_002_5be5:
    pop bc
    ld a, [$c667]
    ld h, a
    ld a, $09
    sub h
    add a
    ld h, a
    add a
    add a
    add h
    ld h, a
    ld a, c
    sub $4e
    cp h
    jr c, jr_002_5c03

    sub $0a
    cp h
    jr nc, jr_002_5c03

    ld a, $fd
    call Call_002_59a8

jr_002_5c03:
    pop af
    cp $12
    jr z, jr_002_5c14

    cp $16
    jr z, jr_002_5c14

    cp $ee
    jr z, jr_002_5c14

    cp $ea
    jr nz, jr_002_5c51

jr_002_5c14:
    push de
    sra a
    call Call_002_5d00
    ld a, $01
    call Call_002_5a8d
    ld a, $02
    call Call_002_59a8
    pop bc
    call Call_002_555d
    jr nc, jr_002_5c5c

    bit 1, a
    jr z, jr_002_5c5c

    ld a, [$c687]
    ld e, a
    ld a, [$c688]
    cp e
    jr z, jr_002_5c48

    call Call_002_5c68
    call Call_002_555d
    call Call_002_552e
    call Call_002_5b98
    ld hl, $c688
    dec [hl]

jr_002_5c48:
    call Call_002_5a3e
    call Call_002_5aa7
    jp Jump_002_5d39


jr_002_5c51:
    call Call_002_5a81
    or a
    jr nz, jr_002_5c65

    ld a, $00
    call Call_002_59a8

jr_002_5c5c:
    call Call_002_5d86
    call Call_002_5a3e
    call Call_002_5aa7

jr_002_5c65:
    jp Jump_002_5d39


Call_002_5c68:
    ld a, [$c688]
    cp $ff
    jr nz, jr_002_5c73

    ld a, $80
    jr jr_002_5c76

jr_002_5c73:
    call Call_002_59ce

jr_002_5c76:
    ld hl, $c688
    inc [hl]
    call Call_002_59c0
    ld a, $80
    ld [$c77c], a
    xor a
    call Call_002_5a8d
    call Call_002_5a73
    ld a, [$c3a3]
    ld e, a
    ld a, [$c3a1]
    cp e
    jr z, jr_002_5c97

    xor a
    jp Jump_002_5a16


jr_002_5c97:
    ld a, $ff
    jp Jump_002_5a16


Call_002_5c9c:
    ld [$c76e], a
    ld a, [$c688]
    ld l, a
    rlca
    rlca
    rlca
    add l
    add $ac
    ld l, a
    ld a, $c6
    adc $00
    ld h, a
    ld a, [$c670]
    ld [hl+], a
    ld a, [$c671]
    ld [hl+], a
    ld a, [$c672]
    ld [hl+], a
    ld a, [$c673]
    ld [hl+], a
    ld a, [bc]
    ld e, a
    ld a, $02
    ld [bc], a
    push hl
    ld hl, $3ab2
    add hl, bc
    ld a, l
    pop hl
    ld [hl+], a
    ld [hl], e
    inc hl
    ld a, [$c76e]
    ld [hl+], a
    push hl
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld [hl], e
    ld e, l
    ld d, h
    pop hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $3ab2
    add hl, de
    ld a, [$c667]
    cp $01
    jr z, jr_002_5cf4

    ld a, l
    cp $50
    jr nc, jr_002_5cf9

jr_002_5cef:
    xor a
    ld [$c666], a
    ret


jr_002_5cf4:
    ld a, l
    cp $14
    jr nc, jr_002_5cef

jr_002_5cf9:
    ld a, [$c667]
    ld [$c666], a
    ret


Call_002_5d00:
    ld [$c76e], a
    ld a, [$c688]
    ld l, a
    rlca
    rlca
    rlca
    add l
    add $b3
    ld l, a
    ld a, $c6
    adc $00
    ld h, a
    ld a, [$c76e]
    ld [hl+], a
    push hl
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [hl], $02
    pop hl
    ld [hl], a
    bit 2, a
    ret z

    ld a, [$c3a3]
    ld h, a
    ld a, [$c3a1]
    cp h
    jr z, jr_002_5d34

    ld a, $03
    jp Jump_002_59a8


jr_002_5d34:
    ld a, $fe
    jp Jump_002_59a8


Jump_002_5d39:
    ld a, [$c688]
    ld l, a
    rlca
    rlca
    rlca
    add l
    add $ac
    ld l, a
    ld a, $c6
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c670], a
    ld a, [hl+]
    ld [$c671], a
    ld a, [hl+]
    ld [$c672], a
    ld a, [hl+]
    ld [$c673], a
    ld a, [hl+]
    add $4e
    ld c, a
    ld a, $c5
    adc $00
    ld b, a
    ld a, [hl+]
    ld [bc], a
    ld [$c668], a
    ld a, [hl+]
    push hl
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld [hl], $02
    pop hl
    ld a, [hl+]
    or a
    ret z

    ld e, [hl]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld [hl], e
    ret


Call_002_5d7c:
    ld hl, $c6b0
    ld a, [hl+]
    ld e, a
    inc hl
    add [hl]
    ld b, a
    ld a, e
    ret


Call_002_5d86:
    ld a, [$c687]
    ld e, a
    ld a, [$c688]
    cp e
    ret z

    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    call Call_002_5c68
    ld a, $01
    call Call_002_5a73
    call Call_002_5dbc
    call Call_002_5a9b
    or a
    jr nz, jr_002_5daf

    xor a
    call Call_002_5a73
    call Call_002_5dbc

jr_002_5daf:
    ld hl, $c688
    dec [hl]
    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    ret


Call_002_5dbc:
    ld a, [$c3a1]
    ld e, a
    ld bc, $c559
    ld d, $4e

jr_002_5dc5:
    ld a, [bc]
    bit 1, a
    jr nz, jr_002_5e01

    and $01
    cp e
    jr nz, jr_002_5e01

    ld a, $08
    ld [$c667], a
    ld a, [bc]
    ld [$c668], a
    push bc
    push de
    call Call_002_555d
    jr nc, jr_002_5dff

    call Call_002_5a81
    or a
    jr z, jr_002_5dea

    call Call_002_552e
    jr nc, jr_002_5dff

jr_002_5dea:
    pop de
    push de
    call Call_002_5e06
    pop de
    pop bc
    call Call_002_5a5a
    call Call_002_5a2b
    ld hl, $c77b
    cp [hl]
    ret z

    ret c

    jr jr_002_5e01

jr_002_5dff:
    pop de
    pop bc

jr_002_5e01:
    inc bc
    dec d
    jr nz, jr_002_5dc5

    ret


Call_002_5e06:
    ld a, [$c668]
    bit 2, a
    jr z, jr_002_5e1b

    ld a, [$c672]
    or a
    call nz, Call_002_5e2a
    ld a, [$c673]
    or a
    call nz, Call_002_5e2a

jr_002_5e1b:
    ld a, [$c670]
    or a
    call nz, Call_002_5e2a
    ld a, [$c671]
    or a
    call nz, Call_002_5e2a
    ret


Call_002_5e2a:
    push af
    push bc
    call Call_002_59f6
    call Call_002_5c9c
    ld a, [$c667]
    ld h, a
    ld a, [$c666]
    cp h
    jr nz, jr_002_5e49

    ld a, [de]
    bit 2, a
    jr nz, jr_002_5e49

    set 2, a
    ld [de], a
    ld a, $fe
    call Call_002_59a8

jr_002_5e49:
    ld a, [de]
    bit 2, a
    jr z, jr_002_5e53

    ld a, $ff
    call Call_002_59a8

jr_002_5e53:
    pop bc
    ld a, [$c667]
    ld h, a
    ld a, $09
    sub h
    add a
    ld h, a
    add a
    add a
    add h
    ld h, a
    ld a, c
    sub $4e
    cp h
    jr c, jr_002_5e71

    sub $0a
    cp h
    jr nc, jr_002_5e71

    ld a, $03
    call Call_002_59a8

jr_002_5e71:
    pop af
    cp $12
    jr z, jr_002_5e82

    cp $16
    jr z, jr_002_5e82

    cp $ee
    jr z, jr_002_5e82

    cp $ea
    jr nz, jr_002_5ed8

jr_002_5e82:
    push de
    sra a
    call Call_002_5d00
    ld a, $01
    call Call_002_5a8d
    call Call_002_4eae
    ld a, [$c3a3]
    or a
    jr z, jr_002_5e99

    ld a, c
    ld c, b
    ld b, a

jr_002_5e99:
    ld a, c
    cp $05
    jr c, jr_002_5ea1

    jr z, jr_002_5ea1

    sub b

jr_002_5ea1:
    ld a, $fe
    jr z, jr_002_5ea7

    jr nc, jr_002_5ea8

jr_002_5ea7:
    dec a

jr_002_5ea8:
    call Call_002_59a8
    pop bc
    call Call_002_555d
    jr nc, jr_002_5ee3

    bit 1, a
    jr z, jr_002_5ee3

    ld a, [$c687]
    ld e, a
    ld a, [$c688]
    cp e
    jr z, jr_002_5ecf

    call Call_002_5c68
    call Call_002_555d
    call Call_002_552e
    call Call_002_5e06
    ld hl, $c688
    dec [hl]

jr_002_5ecf:
    call Call_002_5a3e
    call Call_002_5aa7
    jp Jump_002_5d39


jr_002_5ed8:
    call Call_002_5a81
    or a
    jr nz, jr_002_5eec

    ld a, $00
    call Call_002_59a8

jr_002_5ee3:
    call Call_002_5b19
    call Call_002_5a3e
    call Call_002_5aa7

jr_002_5eec:
    jp Jump_002_5d39


Call_002_5eef:
    ld a, $a0
    ld [$c77d], a
    ld a, $5f
    ld [$c77e], a
    xor a
    ld [$c77f], a
    ret


jr_002_5efe:
    call Call_000_0a01
    and $07
    cp $07
    jr z, jr_002_5efe

    add a
    add $1e
    ld l, a
    adc $5f
    sub l
    ld h, a
    ld a, [hl+]
    ld [$c67e], a
    ld a, [hl]
    ld [$c67f], a
    ld a, $01
    ld [$c686], a
    pop hl
    ret


    ld b, h
    add hl, sp
    ld b, d
    scf
    ld b, d
    add hl, sp
    ld b, b
    dec [hl]
    ld b, b
    scf
    ld a, $33
    ld a, $35

Call_002_5f2c:
    ld a, [$c77f]
    or a
    jr z, jr_002_5efe

    cp $03
    ret nc

    ld a, [$c77d]
    ld l, a
    ld a, [$c77e]
    ld h, a
    ld b, $07

jr_002_5f3f:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [$c780]
    ld c, a
    ld a, [de]
    cp c
    jr nz, jr_002_5f98

    inc de
    ld a, [$c781]
    ld c, a
    ld a, [de]
    cp c
    jr nz, jr_002_5f98

    inc de
    push de
    ld a, [de]
    ld c, a
    ld a, $4e
    add c
    ld e, a
    adc $c5
    sub e
    ld d, a
    ld a, [de]
    pop de
    bit 1, a
    jr nz, jr_002_5f9b

    ld a, [de]
    ld [$c67e], a
    inc de
    push de
    ld a, [de]
    ld c, a
    ld a, $4e
    add c
    ld e, a
    adc $c5
    sub e
    ld d, a
    ld a, [de]
    pop de
    bit 1, a
    jr z, jr_002_5f9b

    ld a, [de]
    ld [$c67f], a
    ld a, $01
    ld [$c686], a
    ld a, [$c77f]
    cp $02
    jr z, jr_002_5f96

    inc de
    ld a, [de]
    ld [$c77d], a
    inc de
    ld a, [de]
    ld [$c77e], a

jr_002_5f96:
    pop hl
    ret


jr_002_5f98:
    dec b
    jr nz, jr_002_5f3f

jr_002_5f9b:
    xor a
    ld [$c686], a
    ret


    xor [hl]
    ld e, a
    or h
    ld e, a
    cp d
    ld e, a
    ret nz

    ld e, a
    add $5f
    call z, $d25f
    ld e, a
    dec h
    jr nc, jr_002_5ff5

    add hl, sp
    ret c

    ld e, a
    dec h
    ld l, $42
    scf
    and $5f
    inc hl
    ld l, $42
    add hl, sp
    db $f4
    ld e, a
    inc hl
    inc l
    ld b, b
    dec [hl]
    ld [bc], a
    ld h, b
    ld hl, $402c
    scf
    db $10
    ld h, b
    ld hl, $3e2a
    inc sp
    ld e, $60
    rra
    ld a, [hl+]
    ld a, $33
    inc l
    ld h, b
    ld a, [hl-]
    ld h, b
    ld a, $60
    ld b, d
    ld h, b
    ld b, [hl]
    ld h, b
    ld c, d
    ld h, b
    ld c, [hl]
    ld h, b
    ld d, d
    ld h, b
    ld d, [hl]
    ld h, b
    ld e, d
    ld h, b
    ld e, [hl]
    ld h, b
    ld h, d
    ld h, b
    ld h, [hl]
    ld h, b
    ld l, d
    ld h, b
    ld l, [hl]
    ld h, b
    ld [hl], d

jr_002_5ff5:
    ld h, b
    db $76
    ld h, b
    ld a, d
    ld h, b
    ld a, [hl]
    ld h, b
    add d
    ld h, b
    add [hl]
    ld h, b
    adc d
    ld h, b
    adc [hl]
    ld h, b
    sub d
    ld h, b
    sub [hl]
    ld h, b
    sbc d
    ld h, b
    sbc [hl]
    ld h, b
    and d
    ld h, b
    and [hl]
    ld h, b
    xor d
    ld h, b
    xor [hl]
    ld h, b
    or d
    ld h, b
    or [hl]
    ld h, b
    cp d
    ld h, b
    cp [hl]
    ld h, b
    jp nz, $c660

    ld h, b
    jp z, $ce60

    ld h, b
    jp nc, $d660

    ld h, b
    jp c, $de60

    ld h, b
    ld [c], a
    ld h, b
    and $60
    ld [$ee60], a
    ld h, b
    ld a, [c]
    ld h, b
    or $60
    ld a, [$1a60]
    dec h
    ld b, b
    scf
    inc e
    dec h
    ld b, b
    scf
    inc hl
    ld l, $39
    inc hl
    inc hl
    inc l
    ld b, b
    scf
    ld hl, $402c
    scf
    ld hl, $3e2a
    inc sp
    rra
    ld a, [hl+]
    ld a, $33
    inc e
    dec h
    ld c, e
    ld b, d
    ld a, [de]
    dec h
    ld c, l
    ld b, d
    ld l, $39
    ld b, h
    ld l, $23
    inc l
    scf
    dec h
    ld hl, $372c
    ld hl, $2a21
    scf
    dec h
    rra
    ld a, [hl+]
    scf
    dec h
    dec h
    jr nc, @+$3b

    inc hl
    ld l, $37
    ld b, b
    ld l, $1a
    inc hl
    add hl, sp
    jr nc, jr_002_6097

    inc hl
    add hl, sp
    jr nc, @+$23

    inc l
    add hl, sp
    inc hl
    ld hl, $392a
    inc hl
    rra
    ld a, [hl+]
    add hl, sp
    inc hl
    dec h
    jr nc, jr_002_60d5

    add hl, sp
    dec h
    ld l, $42
    add hl, sp
    ld a, [de]

jr_002_6097:
    inc hl
    ld b, h
    add hl, sp
    jr @+$25

    ld b, d
    add hl, sp
    inc l
    scf
    ld b, d
    inc l
    ld hl, $352a
    inc hl
    rra
    ld a, [hl+]
    dec [hl]
    rra
    dec h
    jr nc, @+$39

    ld hl, $2e25
    scf
    dec h
    inc hl
    ld l, $37
    ld hl, $352c
    ld a, $2c
    ld d, $21
    ld a, $33
    jr jr_002_60e1

    ld a, $33
    rra
    ld a, [hl+]
    scf
    ld hl, $3025
    inc sp
    ld hl, $2e25
    inc sp
    ld hl, $2e23
    inc sp
    ld hl, $2c23
    inc sp

jr_002_60d5:
    ld hl, $2118
    ld c, c
    ld a, $16
    ld hl, $3e49
    ld a, [hl+]
    dec [hl]
    ld b, b

jr_002_60e1:
    ld a, [hl+]
    dec h
    jr nc, jr_002_6126

    add hl, sp
    dec h
    ld l, $42
    add hl, sp
    inc hl
    ld l, $42
    add hl, sp
    inc hl
    inc l
    ld b, b
    dec [hl]
    ld hl, $332c
    ld hl, $352a
    ld b, b
    ld a, [hl+]
    ld d, $1f
    ld c, c
    ld a, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0907], sp
    rlca
    ld a, [bc]
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_002_613f

jr_002_6126:
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_002_614f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_002_613d

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_002_613d:
    jr nc, jr_002_6170

jr_002_613f:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_002_6180

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_002_614f:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    cp $60
    ld [bc], a
    ld h, c
    ld [de], a
    ld h, c
    ld d, $61
    ld a, [de]
    ld h, c
    ld c, d
    ld h, c
    ld c, [hl]
    ld h, c
    ld d, d
    ld h, c
    ld d, [hl]
    ld h, c

jr_002_6170:
    ld e, d
    ld h, c
    ld [bc], a
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a

jr_002_6180:
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a

jr_002_619c:
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld de, $8000
    db $10
    ret nc

    ld e, b
    cp b
    ld l, h
    sbc h
    db $76
    adc [hl]
    ld a, e
    add a
    ld a, l
    add e
    ld a, [hl]
    add c
    ld [bc], a
    inc c
    nop
    add b
    add b
    ret nz

    ret nz

    ld [hl], b
    adc a
    ld l, a
    sbc a
    ld e, h
    cp h
    jr jr_002_619c

    db $10
    sub b
    ld [bc], a
    ld b, $00
    ld h, b
    ldh [$f0], a
    ldh a, [rSC]
    inc c
    nop
    ld [bc], a
    inc bc
    rst $38
    add b
    rst $38
    cp a
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    ld [bc], a
    inc bc
    rst $38
    nop
    ld [bc], a
    inc bc
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
    ld [bc], a
    inc bc
    rst $38
    ld bc, $fdff
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
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
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    cp a
    rst $38
    add b
    ld [bc], a
    inc bc
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
    ld [bc], a
    inc bc
    rst $38
    nop
    ld [bc], a
    inc bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    db $fd
    rst $38
    ld bc, $ffff
    ld [bc], a
    stop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld l, b
    rst $38
    ld a, h
    rst $38
    ld h, d
    rst $38
    ld h, c
    rst $38
    di
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld a, h
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    inc a
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    cp $ff
    ld h, d
    rst $38
    ld l, b
    rst $38
    ld a, b
    rst $38
    ld l, b
    rst $38
    ld h, d
    rst $38
    cp $ff
    nop
    rst $38
    cp $ff
    ld h, d
    rst $38
    ld l, b
    rst $38
    ld a, b
    rst $38
    ld l, b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    inc a
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    ld l, [hl]
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld a, $ff
    nop
    rst $38
    rst $30
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld a, [hl]
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    inc a
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc a
    rst $38
    nop
    rst $38
    ld e, $ff
    inc c
    rst $38
    inc c
    rst $38
    db $ec
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    ldh a, [rIE]
    ld h, d
    rst $38
    ld h, h
    rst $38
    ld a, b
    rst $38
    ld h, h
    rst $38
    ld h, d
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    ld h, [hl]
    rst $38
    cp $ff
    nop
    rst $38
    db $e3
    rst $38
    db $76
    rst $38
    ld l, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld l, d
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld [c], a
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    inc a
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld a, h
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    inc a
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld l, [hl]
    rst $38
    ld h, [hl]
    rst $38
    dec a
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld a, h
    rst $38
    ld h, [hl]
    rst $38
    ld h, d
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    inc a
    rst $38
    ld c, $ff
    ld c, [hl]
    rst $38
    inc a
    rst $38
    nop
    ld [bc], a
    inc bc
    rst $38
    db $db
    rst $38
    sbc c
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    inc a
    rst $38
    nop
    rst $38
    rst $30
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    inc a
    rst $38
    nop
    rst $38
    rst $30
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    inc [hl]
    rst $38
    jr @+$01

    nop
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    ld h, d
    rst $38
    ld l, d
    rst $38
    db $76
    rst $38
    ld h, d
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    xor $ff
    ld h, h
    rst $38
    jr c, @+$01

    jr @+$01

    inc l
    rst $38
    ld b, [hl]
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    rst $30
    rst $38
    ld b, d
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    nop
    rst $38
    ld a, [hl]
    rst $38
    ld b, [hl]
    rst $38
    inc c
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, d
    rst $38
    ld a, [hl]
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
    jr @+$01

    jr @+$01

    ld a, h
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    add [hl]
    rst $38
    adc d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    add d
    rst $38
    add d
    rst $38
    sbc [hl]
    rst $38
    and d
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    add d
    rst $38
    add d
    rst $38
    or d
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    add d
    rst $38
    and d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    add d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    and d
    rst $38
    jp nz, Jump_002_7cff

    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    add d
    rst $38
    adc d
    rst $38
    ld a, [c]
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    jp nz, $a2ff

    rst $38
    sbc d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    jr @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc a
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld b, $ff
    inc e
    rst $38
    jr nc, @+$01

    ld h, d
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld b, $ff
    inc a
    rst $38
    ld b, $ff
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc [hl]
    rst $38
    ld h, h
    rst $38
    ld a, [hl]
    rst $38
    inc c
    rst $38
    ld e, $ff
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    ld a, h
    rst $38
    ld b, $ff
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld h, b
    rst $38
    ld a, h
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld c, $ff
    inc e
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld a, $ff
    ld b, $ff
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    nop
    rst $38
    jr @+$01

    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    nop
    rst $38
    jr jr_002_655b

    rlca
    jr jr_002_6576

    daa
    ccf
    ld e, a
    ld a, a

jr_002_655b:
    ld e, d
    ld a, l
    or l
    ld a, [$f5aa]
    and l
    ld a, [$e0e0]
    jr @-$06

    db $e4
    db $fc
    ld a, [$bafe]
    ld e, [hl]
    ld e, l
    xor a
    xor l
    ld d, a
    ld d, l
    xor a
    xor d
    push af
    sub l

jr_002_6576:
    ld a, [$fdca]
    ld h, h
    ld a, a
    ld e, b
    ld a, a
    daa
    ccf
    jr @+$21

    rlca
    rlca
    xor l
    ld d, a
    ld d, l
    xor a
    xor e
    ld e, a

jr_002_6589:
    ld b, $fe
    ld a, [de]
    cp $e4
    db $fc
    jr jr_002_6589

    ldh [$e0], a
    rlca
    rlca
    rra
    jr @+$3a

    daa
    ld h, b
    ld e, a
    ld h, d
    ld e, l
    push bc
    cp d
    jp z, $d5b5

    xor d
    ldh [$e0], a
    ld hl, sp+$18
    inc e
    db $e4
    ld b, $fa
    and [hl]
    ld e, d
    ld d, e
    xor l
    xor e
    ld d, l
    ld d, e
    xor l
    jp z, $d5b5

    xor d
    ld [$7dd5], a
    ld h, d
    ld e, a
    ld a, b
    daa
    ccf
    jr jr_002_65e0

    rlca
    rlca
    xor e
    ld d, l
    ld d, e
    xor l
    xor a
    ld d, e

jr_002_65c9:
    ld e, [hl]
    and [hl]
    ld a, [$e41e]
    db $fc
    jr jr_002_65c9

    ldh [$e0], a
    rlca
    rlca
    jr jr_002_65f6

    daa
    ccf
    ld e, a
    ld a, a
    ld e, a
    ld a, b
    cp a
    push af

jr_002_65df:
    cp a

jr_002_65e0:
    push hl
    cp a
    rst $20
    ldh [$e0], a
    jr jr_002_65df

    db $e4
    db $fc
    ld a, [$fafe]
    ld e, $fd
    xor a
    db $fd
    and a
    db $fd
    rst $20
    cp a
    rst $20
    sbc a

jr_002_65f6:
    rst $30
    rst $08
    rst $30
    ld h, a
    ld a, e
    ld e, b
    ld a, a
    daa
    ccf
    jr jr_002_6620

    rlca
    rlca
    db $fd
    rst $20
    db $fd
    rst $20
    ei
    rst $28

jr_002_6609:
    and $de
    ld a, [de]
    cp $e4
    db $fc
    jr jr_002_6609

    ldh [$e0], a
    rlca
    rlca
    rra
    jr @+$3a

    daa
    ld h, b
    ld e, a
    ld h, a
    ld e, b
    rst $08
    or l
    rst $18

jr_002_6620:
    and l
    rst $18
    and a
    ldh [$e0], a
    ld hl, sp+$18
    inc e
    db $e4
    ld b, $fa
    and $1a
    di
    xor l
    ei
    and l
    ei
    push hl
    rst $18
    and a
    rst $28
    sub a
    rst $38
    rst $00
    ld a, a
    ld h, e
    ld e, a
    ld a, b
    daa
    ccf
    jr jr_002_6660

    rlca
    rlca
    ei
    push hl
    ei
    push hl
    rst $30
    db $eb

jr_002_6649:
    cp $c6
    ld a, [$e41e]
    db $fc
    jr jr_002_6649

    ldh [$e0], a
    ld [bc], a
    dec b
    nop
    ld h, b
    jr nz, jr_002_66b1

    jr jr_002_6681

    ld e, $21
    rrca
    db $10
    rrca

jr_002_6660:
    db $10
    ld [bc], a
    dec bc
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    rrca
    db $10
    ld e, $21
    add hl, de
    daa
    daa
    ld e, a
    ld e, $7e
    jr jr_002_668d

    ld [bc], a
    inc b
    nop
    sbc b
    ld a, b
    ld a, b
    ld hl, sp-$20
    ldh [$80], a
    add b
    ld [bc], a

jr_002_6681:
    ld [$ff00], sp
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, b
    ldh a, [$6f]

jr_002_668d:
    ldh a, [$6f]
    di
    ld l, h
    di
    ld l, l
    rst $38
    nop
    ld [bc], a
    dec b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld [bc], a
    inc bc
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    ld b, $0f
    or $0f
    or $cf
    ld [hl], $cf
    or [hl]

jr_002_66b1:
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    rst $08
    or [hl]
    rst $08
    or [hl]
    rst $08
    or [hl]
    rst $08
    or [hl]
    rst $08
    or [hl]
    rst $08
    or [hl]
    rst $08
    or [hl]
    rst $08
    or [hl]
    di
    ld l, l
    di
    ld l, h
    ldh a, [$6f]
    ldh a, [$6f]
    rst $38
    ld h, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    ld [bc], a
    inc bc
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld [bc], a
    dec b
    rst $38
    nop
    rst $08
    or [hl]
    rst $08
    ld [hl], $0f
    or $0f
    or $ff
    ld b, $ff
    cp $ff
    cp $ff
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld [hl], l
    nop
    ld [bc], a
    nop
    nop
    ld d, c
    nop
    db $10
    ld d, d
    ld d, e
    nop
    ld c, $07
    ld d, h
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    ld d, l
    nop
    ld c, $07
    ld d, h
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    ld d, l
    nop
    ld c, $07
    ld d, h
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    ld d, l
    nop
    ld c, $07
    ld d, h
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    ld d, l
    nop
    ld c, $07
    ld d, h
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    ld d, l
    nop
    ld c, $07
    ld d, h
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    ld d, l
    nop
    ld c, $07
    ld d, h
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    ld d, l
    nop
    ld c, $07
    ld d, h
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    ld d, l
    nop
    ld c, $07
    ld d, h
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    ld d, l
    nop
    ld c, $07
    ld d, h
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    ld d, l
    nop
    ld c, $07
    ld d, h
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    ld d, l
    nop
    ld c, $07
    ld d, h
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    ld d, l
    nop
    ld c, $07
    ld d, h
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    ld d, l
    nop
    ld c, $07
    ld d, h
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    ld d, l
    nop
    ld c, $07
    ld d, h
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    ld d, l
    nop
    ld c, $07
    ld d, h
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    dec c
    dec c
    rlca
    rlca
    ld d, l
    nop
    ld c, $07
    ld d, [hl]
    nop
    db $10
    ld d, a
    ld e, b
    nop
    ld c, $07
    nop
    nop
    add hl, bc
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    stop
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    rst $38
    rst $38
    nop
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $ff00
    add hl, bc
    stop
    add hl, bc
    db $10
    rst $38
    add hl, bc
    ld a, [bc]
    nop
    ld bc, $0601
    rlca
    jr jr_002_68f4

    add hl, bc
    ld b, $00
    rrca
    rrca
    ld [hl], b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    ld b, $00
    ld hl, sp-$08
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    ld a, [bc]
    nop
    ret nz

    ret nz

jr_002_68f4:
    jr nc, @-$0e

    inc c
    db $fc
    add hl, bc
    ld a, [bc]
    nop
    ld bc, $0601
    ld b, $18
    jr jr_002_690b

    ld b, $00
    rrca
    rrca
    ld [hl], b
    ld [hl], b
    add b
    add b
    add hl, bc

jr_002_690b:
    ld a, [bc]
    nop
    ld hl, sp-$08
    rlca
    rlca
    add hl, bc
    stop
    ret nz

    ret nz

    jr nc, @+$32

    inc c
    inc c
    add hl, bc
    ld b, $00
    add hl, bc
    inc b
    ld bc, $0302
    add hl, bc
    add e
    ld [bc], a
    rlca
    jr nz, @+$41

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_002_6941:
    rst $38
    nop

jr_002_6943:
    rst $38
    nop
    rst $38
    ld [bc], a
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
    rst $38
    add hl, bc
    inc b
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_002_6941

    jr nz, jr_002_6943

    db $10
    ldh a, [$09]
    ld b, $00
    add hl, bc
    inc b
    ld bc, $0409
    ld [bc], a
    inc b
    inc b
    jr nz, @+$22

    ld b, b
    ld b, b
    add b
    add b
    add hl, bc
    ld a, [bc]
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0901
    stop
    add b
    add b
    add hl, bc
    inc b
    ld b, b
    add hl, bc
    inc b
    jr nz, jr_002_6999

    db $10
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    db $10

jr_002_6999:
    rra
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    inc b
    add hl, bc
    ld b, $08
    add hl, bc
    ld a, [bc]
    db $10
    add hl, bc
    ld b, $08
    add hl, bc
    ld [$1004], sp
    rra
    db $10
    rra
    jr jr_002_69dd

    jr jr_002_69df

    inc e
    rra
    inc c
    rrca
    ld c, $0f
    ld c, $0f
    inc b
    db $fc
    inc b
    db $fc

jr_002_69cc:
    inc c
    db $fc

jr_002_69ce:
    inc c
    db $fc

jr_002_69d0:
    inc e
    db $fc
    jr jr_002_69cc

    jr c, jr_002_69ce

    jr c, jr_002_69d0

    add hl, bc
    inc b
    db $10
    add hl, bc
    inc b

jr_002_69dd:
    jr jr_002_69fb

jr_002_69df:
    inc d
    inc c
    inc c
    ld c, $0a
    ld c, $0a
    add hl, bc
    inc b
    inc b
    add hl, bc
    inc b
    inc c
    inc e
    inc d
    jr @+$1a

    jr c, jr_002_6a1a

    jr c, jr_002_6a1c

    add hl, bc
    inc b
    rlca
    add hl, bc
    inc b
    inc bc
    add hl, bc

jr_002_69fb:
    inc b
    ld bc, $0509
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    ld a, a
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

jr_002_6a1a:
    rst $38
    nop

jr_002_6a1c:
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    ccf
    add hl, bc
    inc bc
    rst $38
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$09]
    inc b
    ldh [$09], a
    inc b
    ret nz

    add b
    add b
    nop
    nop
    rlca
    dec b
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add hl, bc
    inc b
    ld bc, $0809
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld hl, sp+$18
    cp $86
    ld a, a
    ld b, c
    add hl, bc
    ld c, $00
    add b
    add b
    add hl, bc
    ld b, $00
    ld bc, $0301
    ld [bc], a
    rrca
    inc c
    ccf
    jr nc, @+$01

    pop bc
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ldh [$a0], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    ld bc, $0901
    ld [$f000], sp
    add hl, bc
    rlca
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    add hl, bc
    inc b
    nop
    rlca
    add hl, bc
    add hl, bc
    rst $38
    ld hl, sp-$08
    add hl, bc
    inc b
    nop
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    add hl, bc
    ld [$3f00], sp
    jr nz, jr_002_6ac5

    jr @+$09

    ld b, $01
    ld bc, $0809
    nop
    ldh a, [rSVBK]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    rrca
    rrca
    add hl, bc
    inc b
    nop
    rlca
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop

jr_002_6ac5:
    rst $38
    rlca
    ld hl, sp-$08
    add hl, bc
    inc b
    nop
    cp $02
    db $fc
    inc c
    ldh a, [$30]
    ret nz

    ret nz

    add hl, bc
    ld a, [bc]
    nop
    inc a
    inc a
    ld h, d
    ld h, d
    add hl, bc
    ld b, $60
    ld h, d
    ld h, d
    inc a
    inc a
    nop
    nop
    rst $30
    rst $30
    add hl, bc
    inc b
    ld h, d
    ld a, [hl]
    ld a, [hl]
    add hl, bc
    inc b
    ld h, d
    rst $30
    rst $30
    nop
    nop
    inc a
    inc a
    add hl, bc
    ld a, [bc]
    ld h, d
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld [hl], d
    ld [hl], d
    ld [hl], b
    ld [hl], b
    inc a
    inc a
    ld c, $0e
    ld c, [hl]
    ld c, [hl]
    inc a
    inc a
    nop
    nop
    cp $fe
    ld h, d
    ld h, d
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    ld h, d
    ld h, d
    cp $fe
    nop
    nop
    ldh a, [$f0]
    add hl, bc
    ld b, $60
    ld h, d
    ld h, d
    ld h, [hl]
    ld h, [hl]
    cp $fe
    nop
    nop
    db $fc
    db $fc
    add hl, bc
    inc b
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, d
    ld h, d
    rst $30
    rst $30
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld a, a
    nop
    add hl, bc
    add hl, hl
    nop
    add hl, bc
    nop
    ld h, d
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $8362
    nop
    ld h, d
    dec bc
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld h, d
    inc c
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $8362
    nop
    ld h, d
    dec bc
    ld [bc], a
    ld bc, $8362
    nop
    ld h, d
    dec b
    ld [bc], a
    ld h, d
    add e
    nop
    ld h, d
    dec b
    ld [bc], a
    nop
    ld bc, $6200
    inc c
    ld [bc], a
    nop
    ld bc, $6200
    ld b, $02
    inc bc
    nop
    ld h, d
    ld b, $02
    inc bc
    ld h, d
    add e
    nop
    ld [bc], a
    nop
    ld h, d
    ld b, $02
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $8362
    nop
    ld h, d
    add h
    inc b
    ld [bc], a
    inc bc
    ld bc, $6202
    add h
    ld [$0302], sp
    ld bc, $0200
    ld [bc], a
    ld bc, $0662
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $6200
    add e
    inc c
    ld h, d
    add e
    ld c, $03
    nop
    ld de, $0212
    ld [bc], a
    inc de
    inc d
    inc bc
    ld h, d
    add e
    nop
    ld [bc], a
    nop
    ld h, d
    ld b, $02
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    dec d
    ld h, d
    inc b
    ld c, $16
    inc bc
    ld bc, $6217
    inc b
    ld [bc], a
    jr jr_002_6c12

    ld bc, $0200

jr_002_6c12:
    ld [bc], a
    ld bc, $0662
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $1900
    ld h, d
    inc b
    ld c, $1a
    inc bc
    nop
    dec de
    ld h, d
    inc b
    ld [bc], a
    inc e
    inc bc
    ld h, d
    add e
    nop
    ld [bc], a
    nop
    ld h, d
    ld b, $02
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld h, d
    add e
    dec e
    ld c, $20
    ld hl, $0103
    ld h, d
    add e
    ld [hl+], a
    ld [bc], a
    dec h
    ld h, $03
    ld bc, $0200
    ld [bc], a
    ld bc, $0662
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0200
    ld h, d
    add h
    daa
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld h, d
    add h
    dec hl
    ld [bc], a
    inc bc
    ld h, d
    add e
    nop
    ld [bc], a
    nop
    ld h, d
    ld b, $02
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $8362
    nop
    ld h, d
    dec b
    ld [bc], a
    inc bc
    ld bc, $0662
    ld [bc], a
    inc bc
    ld bc, $0200
    ld [bc], a
    ld bc, $0662
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $6200
    ld b, $02
    inc bc
    nop
    ld h, d
    ld b, $02
    inc bc
    ld h, d
    add e
    nop
    ld h, d
    dec bc
    ld [bc], a
    ld bc, $0100
    nop
    ld h, d
    ld b, $03
    ld bc, $6200
    ld b, $03
    ld bc, $6200
    inc c
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $8362
    nop
    ld h, d
    dec bc
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld h, d
    inc c
    ld [bc], a
    nop
    ld bc, $0100
    ld h, d
    add e
    cpl
    ld h, d
    add e
    ld sp, $2f02
    ld sp, $3134
    dec [hl]
    nop
    ld bc, $8362
    nop
    ld h, d
    dec bc
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0c62
    inc bc
    nop
    ld bc, $6200
    inc c
    ld [bc], a
    ld h, d
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0402
    dec b
    ld b, $07
    ld [bc], a
    inc bc
    nop
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    inc bc
    ld bc, $0e15
    ld c, $0e
    ld c, $16
    inc bc
    nop
    add hl, de
    ld c, $0e
    ld c, $0e
    ld a, [de]
    inc bc
    ld bc, $1e1d
    rra
    ld c, $20
    ld hl, $0003
    ld [bc], a
    daa
    jr z, jr_002_6d5d

    ld a, [hl+]
    ld [bc], a
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0802
    add hl, bc
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    nop
    ld de, $0212
    ld [bc], a
    inc de
    inc d
    inc bc
    ld bc, $0217
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_002_6d5d:
    jr jr_002_6d62

    nop
    dec de
    ld [bc], a

jr_002_6d62:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    inc bc
    ld bc, $2322
    inc h
    ld [bc], a
    dec h
    ld h, $03
    nop
    ld [bc], a
    dec hl
    inc l
    dec l
    ld l, $02
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_002_6d9d:
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    rst $38
    ld l, h
    ccf
    ld l, l
    ld a, a
    ld l, l
    add hl, bc
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    ccf
    nop
    rrca
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $10
    add b
    sub b
    ld b, b
    ret nc

    jr nz, jr_002_6d9d

    ld b, b
    ldh [rP1], a
    ret nz

    stop
    jr nc, jr_002_6df5

jr_002_6df5:
    ldh a, [$09]
    inc b
    ld a, a
    add hl, bc
    inc b
    ccf
    add hl, bc
    inc b
    rra
    add hl, bc
    inc b
    rrca
    add hl, bc
    ld b, $00
    ld bc, $0301
    inc bc
    add hl, bc
    ld b, $00
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    add hl, bc
    inc b
    rst $38
    ld bc, $0901
    inc b
    nop
    add hl, bc
    add hl, bc
    rst $38
    cp $ff
    cp $ff
    cp $00
    inc bc
    rst $38
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
    rst $38
    nop
    rrca
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $0efe
    db $fc
    inc e
    db $fc
    inc a
    ld hl, sp+$38
    ld hl, sp+$78
    add hl, bc
    inc b
    ldh a, [$e0]
    ldh [rP1], a
    ld bc, $0e09
    nop
    ld bc, $00f0
    cp $00
    ccf
    nop
    rrca
    nop
    ld bc, $0609
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
    add hl, bc
    ld b, $00
    ldh [$03], a
    nop
    rra
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [$09], a
    rlca
    nop
    ldh [rP1], a
    ret nz

    add hl, bc
    ld de, $ff00
    ccf
    ld b, b
    db $10
    cpl
    ld [$0417], sp
    dec bc
    ld [bc], a
    dec b
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    db $e3
    nop
    db $fc
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
    rst $38
    ldh [$e0], a
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    nop
    ld bc, $03ff
    cp $06
    db $fd
    dec c
    ei
    add hl, bc
    dec b
    nop
    ldh a, [$9f]
    rst $38
    cp a
    ld a, a
    ld a, a
    add hl, bc
    dec b
    rst $38
    add hl, bc
    ld b, $00
    add hl, bc
    ld a, [bc]
    rst $38
    add hl, bc
    ld a, [bc]
    nop
    add hl, bc
    ld b, $ff
    add hl, bc
    inc c
    nop
    add hl, bc
    inc b
    rst $38
    add hl, bc
    ld c, $00
    rst $38
    rst $38
    ld bc, $0002
    ld bc, $0d09
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, @+$61

    db $10
    cpl
    ld [$0417], sp
    dec bc
    ld [bc], a
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    inc bc
    cp $06
    db $fc
    inc c
    ld sp, hl
    dec de
    rst $30
    scf
    rst $28
    ld l, a
    ld c, a
    rst $08
    sbc a
    adc a
    ccf
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    add hl, bc
    ld b, $00
    ld bc, $0001
    nop
    add hl, bc
    ld b, $01
    nop
    rst $38
    nop

jr_002_6f25:
    rst $38
    nop

jr_002_6f27:
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $06
    db $fd
    inc c
    ei
    jr jr_002_6f27

    jr nc, jr_002_6f25

    ld h, b
    rst $18
    ret nz

    cp a
    sub b
    ld a, a
    jr nc, @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld hl, $71ff
    add hl, bc
    rlca
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    add hl, bc
    rlca
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    add hl, bc
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $09
    rlca
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0709
    rst $38
    add $ff
    add $ff
    add $ff
    call nz, $c4ff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr @+$01

    jr jr_002_6fa7

    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc

jr_002_6fa7:
    rst $38
    inc bc
    add hl, bc
    rlca
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    add hl, bc
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add hl, bc
    inc bc
    ld bc, $0f09
    nop
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    ld [hl], b
    jr nz, jr_002_7009

    db $10
    inc a
    ld [$041e], sp
    add hl, bc
    inc b
    ld bc, $0103
    inc bc
    ld bc, $0103
    rlca
    ld bc, $0307
    rrca
    inc bc
    add hl, bc
    inc b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ldh [$80], a
    ld bc, $0301
    nop
    ld b, $00
    inc c
    inc b
    inc e
    ld [$1038], sp
    ld a, b
    jr nc, @-$0e

    ld h, b
    add hl, de
    rst $30
    or e
    ld l, a
    ld h, e

jr_002_7009:
    sbc e
    rlca
    ld [hl], a
    rlca
    daa
    add hl, bc
    inc b
    rrca
    rra
    rra
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $10ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    add hl, bc
    dec bc
    rst $38
    rra
    ld b, $0f
    rlca
    rrca
    inc bc
    rrca
    ld bc, $0107
    rlca
    ld bc, $0007
    rlca
    nop
    adc a
    inc bc
    rst $38
    rlca
    rst $38
    adc a
    add hl, bc
    inc bc
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    db $e3
    ret nz

    rst $38
    pop bc
    rst $38
    db $e3
    add hl, bc
    dec b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$80], a
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    rra
    rra
    add hl, bc
    inc b
    ccf
    add hl, bc
    inc b
    ld a, a
    add hl, bc
    ld b, $ff
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld a, c
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
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$09], a
    inc bc
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
    ccf
    rst $38
    ccf
    rst $38
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
    nop
    inc bc
    nop
    inc bc
    nop
    ei
    db $fd
    ld sp, hl
    ei
    ld sp, hl
    ld a, d
    db $fc
    ld a, l
    db $fc
    ld a, l
    cp $7e
    cp $7e
    rst $38
    ld a, a
    cp a
    ld a, [hl]
    ccf
    cp [hl]
    ccf
    cp [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    add b
    nop
    ld bc, $0901
    inc b
    inc bc
    add hl, bc
    inc b
    rlca
    add hl, bc
    inc b
    rrca
    rra
    rra
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    inc b
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
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    inc b
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc bc
    nop
    rlca
    nop
    dec b
    nop
    ld a, $00
    ld a, a
    ld a, $7f
    ccf
    ccf
    rrca
    rrca
    nop
    add hl, bc
    inc bc
    rst $38
    ld a, a
    rst $38
    rrca
    rra
    nop
    ldh [rP1], a
    rst $38
    ldh [$09], a
    inc bc
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh [$f0], a
    nop
    rrca
    nop
    rst $38
    rrca
    add hl, bc
    inc bc
    rst $38
    db $fc
    add b
    nop
    ret nz

    nop
    ld b, b
    nop
    ld hl, sp+$00
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ldh [$e1], a
    ld bc, $fff0
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ret nz

    rst $38
    call nz, $c4ff
    rst $38
    call nz, $c6ff
    rst $38
    add $ff
    add $ff
    add $ff
    jr @+$01

    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld hl, sp-$01
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
    add b
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld a, a
    add hl, bc
    rrca
    nop
    db $fc
    add hl, bc
    rrca
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    cp $09
    dec bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    add hl, bc
    dec bc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    add hl, bc
    dec bc
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    add hl, bc
    dec bc
    rst $38
    ld bc, $03ff
    rst $38
    add a
    add hl, bc
    dec bc
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    add hl, bc
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$9fff], sp
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $fbff
    rst $38
    ei
    rst $38
    ei
    add hl, bc
    dec b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    add hl, bc
    dec bc
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    add hl, bc
    dec bc
    rst $38
    add hl, bc
    ld a, a
    nop
    add hl, bc
    ld h, l
    nop
    rst $38
    rst $38
    nop
    nop
    add hl, bc
    inc b
    rst $38
    db $fc
    db $fc
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    add hl, bc
    ld [$0900], sp
    inc b
    rst $38
    add hl, bc
    inc c
    nop
    ldh [$e0], a
    rst $38
    rst $38
    add hl, bc
    ld c, $00
    ld hl, sp-$08
    rlca
    rlca
    add hl, bc
    inc c
    nop
    ld bc, $ff01
    rst $38
    ccf
    ccf
    add hl, bc
    ld a, [bc]
    nop
    add hl, bc
    inc b
    rst $38
    db $fc
    db $fc
    nop
    nop
    ld a, a
    ld a, a
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    ldh a, [$f0]
    add hl, bc
    inc b
    nop
    ldh [$e0], a
    add hl, bc
    ld c, $00
    rlca
    rlca
    add hl, bc
    ld a, [bc]
    nop
    rrca
    rrca
    add hl, bc
    inc b
    rst $38
    add hl, bc
    ld [$7f00], sp
    ld a, a
    add hl, bc
    inc b
    rst $38
    cp $fe
    add hl, bc
    ld [$fe00], sp
    cp $f0
    ldh a, [$c0]
    ret nz

    add hl, bc
    ld a, [de]
    nop
    rrca
    rrca
    rra
    rra
    ld a, [hl]
    ld a, a
    ldh a, [rIE]
    add hl, bc
    ld [$e000], sp
    ldh [$c0], a
    rst $08
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    ld a, [bc]
    nop
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    add hl, bc
    ld a, [bc]
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    add hl, bc
    dec c
    nop
    add hl, bc
    inc bc
    add b
    ld [hl], b
    add hl, bc
    ld [$0f00], sp
    rrca
    rst $38
    rst $38
    add hl, bc
    ld a, [bc]
    nop
    ccf
    ccf
    add hl, bc
    inc b
    rst $38
    ld a, a
    ld a, a
    add hl, bc
    inc b
    nop
    rlca
    rlca
    add hl, bc
    ld a, [bc]
    rst $38
    nop
    nop
    rra
    rra
    add hl, bc
    ld a, [bc]
    rst $38
    db $fc
    db $fc
    ld h, b
    ld h, b
    add hl, bc
    ld [$f8ff], sp
    ld hl, sp-$40
    ret nz

    add hl, bc
    inc b
    nop
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    add hl, bc
    ld a, [bc]
    nop
    ldh [$e0], a
    add hl, bc
    jr jr_002_74b0

jr_002_74b0:
    ld bc, $0701
    rlca
    ccf
    ccf
    nop
    nop
    ld bc, $0701
    rlca
    rra
    rra
    ccf
    ccf
    add hl, bc
    ld b, $ff
    nop
    nop
    add hl, bc
    ld [$feff], sp
    cp $fc
    db $fc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [$e0]
    db $e3
    ret nz

    rst $00
    add b
    adc a
    nop
    rra
    nop
    ccf
    nop
    ld a, h
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fc
    ld sp, hl
    inc bc
    db $e3
    inc bc
    add e
    rlca
    rlca
    nop
    ld hl, sp+$00
    ret nz

    add hl, bc
    inc c
    rst $38
    inc bc
    inc c
    ld bc, $0002
    nop
    db $fc
    db $fc
    add hl, bc
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    ccf
    nop
    rrca
    nop
    rlca
    add b
    add c
    add b
    add b
    ldh a, [$0c]
    db $fc
    inc bc
    cp $01
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    add b
    nop
    ret nz

    add b
    ld [hl], b
    nop
    db $fc
    inc bc
    db $fd
    ld bc, $00fe
    rst $38
    add hl, bc
    ld a, [bc]
    nop
    add hl, bc
    dec b
    rst $38
    ld a, a
    add hl, bc
    inc c
    nop
    ld bc, $1f01
    rra
    add hl, bc
    ld [$0700], sp
    rlca
    ccf
    ccf
    add hl, bc
    inc b
    rst $38
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ld a, a
    ld a, a
    add hl, bc
    ld [$7fff], sp
    ld a, a
    add hl, bc
    ld e, $ff
    add b
    add b
    add hl, bc
    ld b, $ff
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    add hl, bc
    inc b
    nop
    ld hl, sp-$08
    ret nz

    ret nz

    add hl, bc
    ld a, [bc]
    nop
    rst $38
    rst $38
    ld a, a
    ld a, a
    add hl, bc
    inc c
    nop
    add hl, bc
    inc b
    rst $38
    add hl, bc
    inc b
    nop
    ld bc, $0301
    inc bc
    rrca
    rrca
    rra
    rra
    ldh [$e0], a
    ret nz

    pop bc
    nop
    nop
    add b
    add b
    add hl, bc
    rlca
    rst $38
    db $fc
    nop
    ldh a, [rP1]
    add b
    add hl, bc
    inc b
    nop
    add hl, bc
    inc bc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rlca
    rlca
    add hl, bc
    inc b
    rrca
    rra
    rra
    ret nz

    cp a
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $09fe
    ld [$00ff], sp
    cp $1f
    ldh [$e0], a
    rra
    sbc a
    ld h, b
    add hl, bc
    ld [$3fff], sp
    ccf
    ldh [rP1], a
    inc a
    jp Jump_000_39c6


    add hl, bc
    ld b, $c0
    add hl, bc
    inc b
    ldh [rP1], a
    nop
    rlca
    rlca
    inc bc
    db $e3
    nop
    ld a, a
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
    ret nz

    pop bc
    rst $38
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
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $30
    ld bc, $00f9
    db $fc
    nop
    cp $00
    rst $38
    ldh [$1f], a
    nop
    nop
    rrca
    rrca
    add hl, bc
    inc b
    ld a, a
    add hl, bc
    ld [$0900], sp
    ld [$09ff], sp
    ld [$0900], sp
    ld [$7fff], sp
    ld a, a
    add hl, bc
    ld b, $00
    add hl, bc
    ld a, [bc]
    rst $38
    add hl, bc
    ld b, $00
    add hl, bc
    ld b, $ff
    cp $fe
    ldh a, [$f0]
    ld b, b
    ld b, b
    nop
    nop
    rst $38
    rst $38
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    add hl, bc
    ld [$ff00], sp
    rst $38
    add hl, bc
    inc b
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    add hl, bc
    inc bc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ret nz

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
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $02fe
    db $fd
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    ld a, a
    add b
    rra
    ldh [$fb], a
    inc b
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    db $e3
    inc e
    cp $01
    ldh a, [$08]
    add b
    ld b, b
    inc bc
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    add hl, bc
    ld b, $00
    add hl, bc
    inc bc
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    jr c, @+$01

    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    jr nz, @+$01

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
    add hl, bc
    rrca
    nop
    ld bc, $0901
    ld [$0700], sp
    rlca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    add hl, bc
    ld d, $ff
    db $fc
    db $fc
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    add hl, bc
    dec b
    nop
    ld bc, $0100
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
    ldh [$1f], a
    nop
    rst $38
    rra
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
    ret nz

    ccf
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ccf
    nop
    cp $00
    ldh a, [rP1]
    ret nz

    rst $38
    ld a, a
    add hl, bc
    ld [$09ff], sp
    ld b, $00
    ret nz

    ret nz

    add hl, bc
    ld [$09ff], sp
    ld [$0900], sp
    ld [$3fff], sp
    inc a
    ccf
    ld a, $09
    inc b
    rra
    ret nz

    ret nz

    ldh [$e0], a
    add hl, bc
    inc b
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld bc, $013e
    ld e, $01
    ld c, $00
    rlca
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
    db $fc
    inc bc
    cp $01
    add hl, bc
    ld b, $00
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    add hl, bc
    inc b
    nop
    rlca
    rlca
    rra
    rra
    ld a, a
    ld a, a
    add hl, bc
    ld b, $ff
    inc bc
    inc bc
    nop
    nop
    add hl, bc
    ld c, $ff
    nop
    nop
    add hl, bc
    ld c, $ff
    rrca
    rrca
    add hl, bc
    ld [$feff], sp
    cp $f8
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [$c0]
    ret nz

    add b
    add b
    add hl, bc
    dec bc
    nop
    inc bc
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
    rlca
    ld hl, sp+$07
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    add hl, bc
    inc bc
    rst $38
    ld a, a
    add hl, bc
    ld c, $ff
    add hl, bc
    inc b
    ld hl, sp+$09
    inc b
    db $fc
    add hl, bc
    inc b
    cp $09
    inc b
    rst $38
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0a09
    nop
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ld b, b
    ccf
    nop
    ccf
    add hl, bc
    rlca
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    add hl, bc
    inc b
    nop
    add hl, bc
    inc c
    rst $38
    nop
    ld bc, $0300
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    pop af
    rrca
    di
    rra
    rst $20
    rrca
    rst $38
    add b
    ld h, b
    add b
    ld b, b
    nop
    add b
    nop
    add b
    add hl, bc
    ld [$3fff], sp
    ccf
    add hl, bc
    ld b, $00
    add hl, bc
    inc c
    rst $38
    add hl, bc
    inc b
    nop
    add hl, bc
    inc c
    rst $38
    inc bc
    inc bc
    nop
    nop
    add hl, bc
    ld b, $80
    add hl, bc
    inc b
    ret nz

    add hl, bc
    inc b
    ldh [rP1], a
    nop
    rra
    nop
    rra
    nop
    inc c
    inc de
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0609
    nop
    ld bc, $0301
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    add hl, bc
    dec c
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    ld [bc], a
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rNR41], a
    add hl, bc
    inc c
    nop
    ld bc, $0300
    add hl, bc
    dec b
    nop
    ld bc, $0f00
    nop
    jr c, jr_002_7904

jr_002_7904:
    ldh [rTAC], a
    add a
    jr jr_002_7928

    jr nz, jr_002_7914

    inc bc
    nop
    inc b
    rst $38
    add hl, bc
    ld b, $00
    rst $38
    rst $38

jr_002_7914:
    nop
    rst $38
    add hl, bc
    dec b
    nop
    ldh [rP1], a
    inc a
    nop
    rlca
    nop
    ld bc, $f8f8
    ld b, $fe
    ld bc, $0a09
    nop

jr_002_7928:
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_002_792e

jr_002_792e:
    add hl, bc
    inc b
    rlca
    add hl, bc
    inc b
    inc bc
    add hl, bc
    inc b
    ld bc, $0e09
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    add hl, bc
    rlca
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    cp $0e
    ldh [$60], a
    add hl, bc
    inc b
    ret nz

    add hl, bc
    inc b
    add b
    add hl, bc
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0003
    ld bc, $0000
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    add hl, bc
    nop
    ld a, [c]
    ld a, [c]
    sub d
    nop
    ld a, [c]
    db $10
    inc c
    ld a, [c]
    sub d
    ld [de], a
    ld a, [c]
    ld c, $0c
    ld a, [c]
    sub d
    inc h
    ld a, [c]
    dec c
    inc c
    ld a, [c]
    add [hl]
    ld [hl], $0c
    inc c
    ld a, [c]
    adc e
    inc a
    ld a, [c]
    ld c, $0c
    ld a, [c]
    add e

jr_002_79a9:
    ld b, a
    jr z, jr_002_79d4

    ld a, [c]
    adc l
    ld c, d
    ld a, [c]
    dec c
    inc c
    ld a, [c]
    add h

jr_002_79b4:
    ld d, a
    jr z, jr_002_79a9

    add e
    ld e, e
    ld c, l
    ld c, l
    ld a, [c]
    add e
    ld e, [hl]
    ld a, [c]
    inc bc
    jr z, jr_002_79b4

    add e
    ld h, c
    ld a, [c]
    ld de, $f20c
    add a
    ld h, h
    scf
    ld l, e
    add hl, sp
    ld l, h
    ld l, l
    ld e, c
    ld l, [hl]
    ld l, a
    ld a, [c]
    rrca

jr_002_79d4:
    inc c
    ld b, a
    ld [hl], b

jr_002_79d7:
    jr z, jr_002_7a4a

    ld [hl], d
    ld b, [hl]
    ld b, [hl]
    ld [hl], e
    inc c
    ld a, [c]
    add l
    ld [hl], h
    inc c
    ld a, c
    jr z, jr_002_79d7

    ld c, $0c
    ld a, d
    ld a, e
    jr z, jr_002_7a13

    ld a, h
    ld b, [hl]
    ld b, [hl]
    ld a, l
    ld a, [hl]
    inc c
    ld a, a
    add b
    ld b, [hl]
    add c
    add d
    inc c
    inc c
    add e
    ld a, [c]
    dec c
    inc c
    add h
    add l
    ld l, h
    ld l, l
    add [hl]
    add a
    ld b, [hl]
    adc b
    adc c
    inc c
    inc c
    ld a, [c]
    add l
    adc d
    inc c
    inc c
    ld a, c
    ld a, [c]
    db $10
    inc c
    adc a
    sub b
    ld c, l

jr_002_7a13:
    ld c, l
    ld a, [c]
    add h
    sub c
    ld d, e
    ld d, e
    sub l
    sub l
    sub [hl]
    sub [hl]
    sub a

jr_002_7a1e:
    sub a
    ld a, [c]
    db $10
    inc c
    sbc b
    sbc c
    ld c, l
    ld c, l
    sbc d
    sbc e
    ld a, [c]
    ld a, [bc]
    jr z, jr_002_7a1e

    rrca
    inc c
    sbc h
    inc c
    sbc b
    sbc c
    ld a, [c]
    adc c
    sbc l
    and b
    ld a, [c]
    add e
    and [hl]
    ld a, [c]
    dec c
    inc c
    ld a, [c]
    add l
    xor c
    sbc b
    ld a, [c]
    adc l
    xor [hl]
    ld a, [c]
    ld c, $0c
    ld a, [c]
    add h
    cp e
    ld b, a

jr_002_7a4a:
    ld a, [c]
    add e
    cp a
    or c
    or d

jr_002_7a4f:
    ld a, [c]
    add l
    jp nz, $c7b2

    ret z

    ld a, [c]
    ld c, $0c
    ld a, [c]
    add l
    ret


    jr z, jr_002_7a4f

    add e
    adc $b2
    pop de

jr_002_7a61:
    jp nc, $f2b5

    add l
    db $d3
    ld a, [c]
    ld c, $0c
    ld a, [c]
    add h
    ret c

    cp a
    jr z, jr_002_7a61

    add e
    call c, $f2b2
    add l
    rst $18
    ld c, l
    db $e4
    push hl
    ld a, [c]
    rrca
    inc c
    and $e7
    call $2828
    ld a, [c]
    add h
    add sp, -$46
    ld a, [c]
    add e
    db $ec
    ld [$83f2], a
    rst $28
    ld a, [c]
    inc c
    inc c
    ld a, [c]
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

Jump_002_7cff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
