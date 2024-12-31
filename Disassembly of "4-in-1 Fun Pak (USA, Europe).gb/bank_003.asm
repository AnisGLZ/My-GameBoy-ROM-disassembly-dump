; Disassembly of "4-in-1 Fun Pak (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ld hl, $c500
    ld bc, $0222

jr_003_4006:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_003_4006

    xor a
    ld [$c314], a
    call Call_003_4348
    call Call_003_411e
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
    ld hl, $5d88
    ld de, $8800
    call Call_000_13a5
    ld hl, $9000
    ld de, $8000
    ld bc, $0800

jr_003_4044:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_003_4044

    ld hl, $62df
    ld de, $9800
    call Call_000_13a5
    call Call_003_40ae
    ld a, $02
    call Call_000_0ed2
    xor a
    call Call_000_0f4d
    ld a, $d2
    ld b, $d0
    call Call_000_0b1c
    xor a
    ldh [rIF], a
    ld a, [$c3ae]
    or a
    jr nz, jr_003_4077

    ld a, $01
    ldh [rIE], a
    jr jr_003_4096

jr_003_4077:
    ld a, $09
    ldh [rIE], a
    ei
    ld a, $80
    ldh [rLCDC], a
    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_003_4095

    res 7, a
    ldh [rSC], a
    xor a
    ldh [rSB], a
    ld a, [$c3ad]
    ldh [rSC], a
    jr jr_003_4096

jr_003_4095:
    rst $18

jr_003_4096:
    call Call_003_4286
    call Call_003_4b54
    xor a
    ld [$c3b0], a
    ld [$c310], a
    ld [$c311], a
    ld a, $83
    ldh [rLCDC], a
    ei
    jp Jump_003_4a2c


Call_003_40ae:
    ld a, $74
    ld [$c303], a
    ld a, $5d
    ld [$c304], a
    xor a
    ld [$c5dc], a
    ld [$c5cc], a
    ld [$c5cd], a
    ld [$c019], a
    ld [$c5de], a
    ld [$c5ce], a
    ld [$c5e1], a
    ld [$c5e2], a
    ld [$c699], a
    ld [$c69a], a
    ld a, $01
    ld [$c6b1], a
    ld a, $50
    ld [$c5da], a
    ld a, $48
    ld [$c5db], a
    ld hl, $c500
    ld b, $64
    ld a, $03

jr_003_40ed:
    ld [hl+], a
    dec b
    jr nz, jr_003_40ed

    ld hl, $c500
    ld de, $c55a
    ld b, $0a
    ld a, $07

jr_003_40fb:
    ld [hl+], a
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_40fb

    ld hl, $c50a
    ld de, $000a
    ld b, $08

jr_003_4109:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_003_4109

    ld hl, $c513
    ld b, $08

jr_003_4113:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_003_4113

    ld a, [$c3a1]
    jp Jump_003_4ba7


Call_003_411e:
    ld a, [$c3a2]
    ld b, a
    ld a, [$c3ae]
    or b
    ret z

    xor a
    call Call_000_0e45
    ld hl, $6432
    ld de, $8800
    call Call_000_13a5
    ld hl, $6714
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
    jr nz, jr_003_415f

    ld a, $01
    ldh [rIE], a
    jr jr_003_4171

jr_003_415f:
    ld a, $09
    ldh [rIE], a
    call Call_000_0d56
    ld a, [$c3ad]
    and $01
    jr nz, jr_003_4171

    ld d, $01
    jr jr_003_4173

jr_003_4171:
    ld d, $00

jr_003_4173:
    ld a, d
    ld [$c00c], a
    call Call_003_4219
    ld a, $81
    ldh [rLCDC], a
    ei
    ld a, [$c3ae]
    or a
    jr z, jr_003_419b

    ld a, [$c3ad]
    and $01
    jr z, jr_003_419b

    ld b, $08

jr_003_418e:
    push bc
    rst $18
    xor a
    ld [$c310], a
    call Call_000_0d56
    pop bc
    dec b
    jr nz, jr_003_418e

jr_003_419b:
    call Call_003_41e4
    ld a, [$c39a]
    or a
    jr nz, jr_003_419b

    ld a, [$c3b0]
    ld b, a
    cp $ff
    jp z, Jump_000_0070

    ld a, [$c310]
    or b
    cp $08
    jr z, jr_003_41b9

    cp $01
    jr nz, jr_003_419b

jr_003_41b9:
    ld a, [$c310]
    ld b, a
    and $08
    jr nz, jr_003_41c4

    ld a, b
    and $01

jr_003_41c4:
    ld [$c3b4], a
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c39d], a
    call Call_000_0b26

jr_003_41d7:
    xor a
    ld [$c3af], a
    ld a, [$c39a]
    or a
    jr nz, jr_003_41d7

    jp Jump_000_0c49


Call_003_41e4:
    rst $18
    call Call_000_0df7
    jr z, jr_003_4223

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
    jr z, jr_003_420a

    cp $10
    ret nz

    ld d, $01
    jr jr_003_420c

jr_003_420a:
    ld d, $00

jr_003_420c:
    ld a, d
    ld [$c00c], a
    xor a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a

Call_003_4219:
    ld a, d
    xor $01
    call Call_003_423a
    xor a
    ld [$c3a5], a

jr_003_4223:
    ld a, [$c3a5]
    and $0f
    ret nz

    ld a, [$c3a5]
    and $10
    jr nz, jr_003_4237

    ld a, [$c00c]
    add $02
    jr jr_003_423a

jr_003_4237:
    ld a, [$c00c]

Call_003_423a:
jr_003_423a:
    ld b, a
    ld de, $9882
    and $01
    jr z, jr_003_4245

    ld de, $988a

jr_003_4245:
    ld a, b
    cp $03
    jr nz, jr_003_424b

    dec a

jr_003_424b:
    rlca
    add $7e
    ld l, a
    ld a, $69
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_003_4264

    ld a, [$c3b0]
    ld [$c01b], a

jr_003_4264:
    ld c, $08

jr_003_4266:
    ld b, $08

jr_003_4268:
    rst $08
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4268

    ld a, e
    add $18
    ld e, a
    adc d
    sub e
    ld d, a
    dec c
    jr nz, jr_003_4266

    ld a, [$c3ad]
    bit 0, a
    ret nz

    ld a, [$c01b]
    ld [$c3b0], a
    ret


Call_003_4286:
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld a, [$c3ae]
    or a
    jr z, jr_003_42c7

    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_003_42bc

    rst $18
    ld a, [$c3b4]
    or a
    jr z, jr_003_42a5

    rst $18

jr_003_42a5:
    ld a, [$c3b0]
    xor a
    call Call_003_42d3
    ld a, [$c3ad]
    res 7, a
    ldh [rSC], a
    xor a
    ldh [rSB], a
    ld a, [$c3ad]
    ldh [rSC], a
    ret


jr_003_42bc:
    call Call_003_42c7
    ldh a, [$8c]
    ld [$c310], a
    jp Jump_000_0d56


Call_003_42c7:
jr_003_42c7:
    call Call_000_0a01
    and $07
    cp $06
    jr nc, jr_003_42c7

    xor a
    ldh [$8c], a

Call_003_42d3:
    or a
    jr nz, jr_003_42e7

    ld a, $00
    ld [$c536], a
    ld [$c52d], a
    ld a, $01
    ld [$c537], a
    ld [$c52c], a
    ret


jr_003_42e7:
    dec a
    jr nz, jr_003_42fb

    ld a, $01
    ld [$c536], a
    ld [$c52d], a
    ld a, $00
    ld [$c537], a
    ld [$c52c], a
    ret


jr_003_42fb:
    dec a
    jr nz, jr_003_430f

    ld a, $00
    ld [$c536], a
    ld [$c537], a
    ld a, $01
    ld [$c52c], a
    ld [$c52d], a
    ret


jr_003_430f:
    dec a
    jr nz, jr_003_4323

    ld a, $01
    ld [$c536], a
    ld [$c537], a
    ld a, $00
    ld [$c52c], a
    ld [$c52d], a
    ret


jr_003_4323:
    dec a
    jr nz, jr_003_4337

    ld a, $01
    ld [$c536], a
    ld [$c52c], a
    ld a, $00
    ld [$c537], a
    ld [$c52d], a
    ret


jr_003_4337:
    ld a, $00
    ld [$c536], a
    ld [$c52c], a
    ld a, $01
    ld [$c537], a
    ld [$c52d], a
    ret


Call_003_4348:
    di
    xor a
    ldh [rBGP], a
    call Call_000_0e45
    ld hl, $6984
    ld de, $8800
    call Call_000_13a5
    ld hl, $758d
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
    xor a
    call Call_000_0f4d
    ld a, $02
    ld [$c39d], a
    ld a, $27
    ld b, a
    call Call_000_0b1c
    ld a, $82
    ld [$c3bb], a
    ld a, [$c3ae]
    or a
    jr nz, jr_003_439b

    ld a, $01
    ldh [rIE], a
    jr jr_003_43a2

jr_003_439b:
    ld a, $09
    ldh [rIE], a
    call Call_000_0d56

jr_003_43a2:
    ld a, $81
    ldh [rLCDC], a
    ei

jr_003_43a7:
    rst $18
    ld hl, $c015
    dec [hl]
    jr nz, jr_003_43b3

    ld a, [hl+]
    dec [hl]
    or [hl]
    jr z, jr_003_43f2

jr_003_43b3:
    call Call_000_0df7
    jr z, jr_003_43a7

    ld a, [$c39a]
    or a
    jr nz, jr_003_43a7

    ld a, [$c3b0]
    ld b, a
    ld a, [$c310]
    or b
    cp $08
    jr z, jr_003_43ce

    cp $01
    jr nz, jr_003_43a7

jr_003_43ce:
    ld a, [$c310]
    ld b, a
    and $08
    jr nz, jr_003_43d9

    ld a, b
    and $01

jr_003_43d9:
    ld [$c3b4], a

Call_003_43dc:
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    call Call_000_0b26

jr_003_43e9:
    ld a, [$c39a]
    or a
    jr nz, jr_003_43e9

    jp Jump_000_0c49


jr_003_43f2:
    call Call_003_43dc
    ld sp, $e000
    jp Jump_000_0153


Call_003_43fb:
    ld a, [$c3b0]
    ld b, a
    ld a, [$c310]
    or b
    cp $04
    ret nz

    ld a, $01
    ld [$c5e3], a
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
    jr nz, jr_003_442f

    ld a, [$c3a2]
    or a
    jr nz, jr_003_4454

jr_003_442f:
    ld hl, $4478
    ld de, $9842
    ld b, $02
    ld a, $14
    ld c, $30
    call Call_003_4586
    push af
    call Call_003_4b54
    pop af
    call nc, Call_003_444d

jr_003_4446:
    xor a
    ld [$c5e3], a
    jp Jump_003_4b54


Call_003_444d:
    rst $28
    inc l
    ld b, [hl]
    or e
    ld b, [hl]
    cp e
    ld b, a

jr_003_4454:
    ld hl, $44e1
    ld de, $9842
    ld b, $02
    ld a, $14
    ld c, $48
    call Call_003_4586
    push af
    call Call_003_4b54
    pop af
    call nc, Call_003_446d
    jr jr_003_4446

Call_003_446d:
    rst $28
    inc l
    ld b, [hl]
    and l
    ld b, [hl]
    or e
    ld b, [hl]
    push de
    ld b, [hl]
    cp e
    ld b, a
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
    jr nz, jr_003_449e

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_003_449e:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_003_44fb

    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_003_44cf

    jr nz, jr_003_44d1

    jr nz, jr_003_44bc

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_003_44bc:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_003_4514

    ld d, l
    ld d, e
    ld c, c
    ld b, e
    jr nz, jr_003_44ed

    jr nz, @+$22

jr_003_44cf:
    jr nz, jr_003_44da

jr_003_44d1:
    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_003_44da:
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

jr_003_44ed:
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

jr_003_44fb:
    ld c, e
    jr nz, jr_003_4507

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_003_4507:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_003_4565

    ld d, a
    ld b, c

jr_003_4514:
    ld d, b
    jr nz, jr_003_456a

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
    jr nz, jr_003_4582

    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_003_4556

    jr nz, jr_003_4558

    jr nz, jr_003_4543

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_003_4543:
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

jr_003_4556:
    ld e, c
    add hl, bc

jr_003_4558:
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

jr_003_4565:
    rlca
    add hl, bc
    ld bc, $2008

jr_003_456a:
    jr nz, jr_003_45b9

    ld d, l
    ld d, e
    ld c, c
    ld b, e
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_003_457f

    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_003_457f:
    dec bc
    dec bc
    dec bc

jr_003_4582:
    dec bc
    dec bc
    inc c
    nop

Call_003_4586:
    ldh [$94], a
    ldh [$92], a
    ld a, c
    ldh [$95], a
    call Call_003_45f8
    xor a
    ldh [$93], a
    jr jr_003_45ce

jr_003_4595:
    rst $18
    call Call_000_0df7
    cp $04
    jr z, jr_003_45f6

    ld a, b
    and $09
    jr nz, jr_003_45e7

    ld a, b
    cp $40
    jr nz, jr_003_45b9

    ldh a, [$94]
    ld b, a
    ldh a, [$92]
    cp b
    jr z, jr_003_45b9

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_003_45ce

jr_003_45b9:
    ld a, b
    cp $80
    jr nz, jr_003_45d3

    ldh a, [$95]
    ld b, a
    ldh a, [$92]
    cp b
    jr nc, jr_003_45d3

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_003_45ce:
    ld a, $87
    ld [$c3ba], a

jr_003_45d3:
    ld b, $18
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $06
    call Call_000_13c9
    call Call_003_498b
    call Call_000_147f
    jr jr_003_4595

jr_003_45e7:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    ret


jr_003_45f6:
    scf
    ret


Call_003_45f8:
    di
    ld a, $20
    add b
    ld b, a

jr_003_45fd:
    ld a, [hl+]
    or a
    jr nz, jr_003_4603

    ei
    ret


jr_003_4603:
    cp $01
    jr nz, jr_003_4611

    ld a, e
    and $e0
    add b
    ld e, a
    jr nc, jr_003_45fd

    inc d
    jr jr_003_45fd

jr_003_4611:
    cp $20
    jr nz, jr_003_4619

    ld a, $07
    jr jr_003_4625

jr_003_4619:
    jr c, jr_003_4625

    cp $3a
    jr nc, jr_003_4623

    add $0b
    jr jr_003_4625

jr_003_4623:
    sub $29

jr_003_4625:
    ld c, a
    rst $08
    ld a, c
    ld [de], a
    inc de
    jr jr_003_45fd

Call_003_462c:
    ld a, [$c699]
    or a
    ret z

    ld hl, $4650
    ld de, $9861
    ld b, $01
    call Call_003_45f8

jr_003_463c:
    rst $18
    call Call_003_498b
    call Call_000_147f
    call Call_000_0df7
    jr z, jr_003_463c

    ld a, $87
    ld [$c3ba], a
    jp Jump_003_48ac


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
    jr nz, jr_003_4686

    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_003_46af

    ld b, c
    ld b, e
    ld c, e
    add hl, bc
    ld bc, $4208
    jr nz, jr_003_4696

    jr nz, jr_003_4698

    jr nz, jr_003_46cf

    ld c, [hl]
    ld b, h
    ld c, a
    jr nz, jr_003_469f

    jr nz, jr_003_46a1

    add hl, bc
    ld bc, $5308
    ld d, h

jr_003_4686:
    ld b, c
    ld d, d
    ld d, h
    jr nz, @+$22

    ld d, h
    ld c, a
    jr nz, @+$47

    ld c, [hl]
    ld b, h
    jr nz, jr_003_469c

    ld bc, $0b0a

jr_003_4696:
    dec bc
    dec bc

jr_003_4698:
    dec bc
    dec bc
    dec bc
    dec bc

jr_003_469c:
    dec bc
    dec bc
    dec bc

jr_003_469f:
    dec bc
    dec bc

jr_003_46a1:
    dec bc
    dec bc
    inc c
    nop
    ld a, $87
    ld [$c3ba], a
    ld a, [$c3a3]
    xor $01

jr_003_46af:
    ld [$c3a3], a
    ret


Jump_003_46b3:
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld a, $80
    ld [$c3bb], a
    call Call_000_0b26

jr_003_46c5:
    xor a
    ld [$c3af], a
    ld a, [$c39a]
    or a
    jr nz, jr_003_46c5

jr_003_46cf:
    call Call_000_0c49
    jp Jump_000_0070


Call_003_46d5:
    ld hl, $4757
    ld de, $9845
    ld b, $05
    call Call_003_45f8
    ld a, [$c6b1]
    sub $01
    swap a
    add $2c
    ldh [$92], a
    ld a, [$c6b1]
    sub $01
    ldh [$93], a
    jr jr_003_472d

jr_003_46f4:
    rst $18
    call Call_000_0df7
    cp $04
    ret z

    ld a, b
    and $09
    jr nz, jr_003_4741

    ld a, b
    cp $40
    jr nz, jr_003_4715

    ldh a, [$92]
    cp $2c
    jr z, jr_003_4715

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_003_4728

jr_003_4715:
    ld a, b
    cp $80
    jr nz, jr_003_472d

    ldh a, [$92]
    cp $44
    jr nc, jr_003_472d

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_003_4728:
    ld a, $87
    ld [$c3ba], a

jr_003_472d:
    ld b, $38
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $06
    call Call_000_13c9
    call Call_003_498b
    call Call_000_147f
    jr jr_003_46f4

jr_003_4741:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    add $01
    ld [$c6b1], a
    jp Jump_003_5b34


    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $01
    ld [$4552], sp
    ld d, [hl]
    ld b, l
    ld d, d
    ld d, e
    ld c, c
    add hl, bc
    ld bc, $2008
    ld d, e
    ld c, e
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_003_477d

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_003_477d:
    add hl, bc
    ld bc, $2008
    jr nz, jr_003_47a3

    ld sp, $2020
    jr nz, jr_003_4791

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_003_4791:
    add hl, bc
    ld bc, $2008
    jr nz, jr_003_47b7

    ld [hl-], a
    jr nz, jr_003_47ba

    jr nz, jr_003_47a5

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca

jr_003_47a3:
    rlca
    rlca

jr_003_47a5:
    add hl, bc
    ld bc, $2008
    jr nz, @+$22

    inc sp
    jr nz, jr_003_47ce

    jr nz, jr_003_47b9

    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc

jr_003_47b7:
    dec bc
    dec bc

jr_003_47b9:
    inc c

jr_003_47ba:
    nop
    ld hl, $4843
    ld de, $9882
    ld b, $02
    call Call_003_45f8
    ld a, $44
    ldh [$92], a
    ld a, $02
    ldh [$93], a

jr_003_47ce:
    jr jr_003_4809

jr_003_47d0:
    rst $18
    call Call_000_0df7
    cp $04
    ret z

    ld a, b
    and $09
    jr nz, jr_003_481d

    ld a, b
    cp $40
    jr nz, jr_003_47f1

    ldh a, [$92]
    cp $24
    jr z, jr_003_47f1

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_003_4804

jr_003_47f1:
    ld a, b
    cp $80
    jr nz, jr_003_4809

    ldh a, [$92]
    cp $44
    jr nc, jr_003_4809

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_003_4804:
    ld a, $87
    ld [$c3ba], a

jr_003_4809:
    ld b, $18
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $06
    call Call_000_13c9
    call Call_003_498b
    call Call_000_147f
    jr jr_003_47d0

jr_003_481d:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    or a
    jr nz, jr_003_4834

    ld a, $82
    ld [$c3bb], a
    ret


jr_003_4834:
    dec a
    jr nz, jr_003_483d

    ld a, $81
    ld [$c3bb], a
    ret


jr_003_483d:
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
    jr nz, jr_003_48ab

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
    jr nz, jr_003_4894

    ld d, h
    ld c, b
    ld b, l
    ld c, l
    ld b, l
    jr nz, jr_003_48ad

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
    jr nz, @+$4f

    ld d, l
    ld d, e

jr_003_4894:
    ld c, c
    ld b, e
    jr nz, @+$51

    ld b, [hl]
    ld b, [hl]
    jr nz, jr_003_48a5

    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_003_48a5:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c

jr_003_48ab:
    nop

Jump_003_48ac:
    xor a

jr_003_48ad:
    ld [$c5e3], a
    ld [$c3b5], a

Jump_003_48b3:
    call Call_003_4b54

Jump_003_48b6:
jr_003_48b6:
    rst $18
    call Call_003_498b
    call Call_000_147f
    call Call_000_0df7
    jr z, jr_003_48b6

    ld a, [$c5cd]
    or a
    jr z, jr_003_48ce

    ld a, [$c3b5]
    or a
    jr z, jr_003_48da

jr_003_48ce:
    ld a, b
    cp $08
    jr nz, jr_003_48da

    ld a, [$c69a]
    ld [$c699], a
    ret


jr_003_48da:
    ld a, b
    cp $01
    jp z, Jump_003_4923

    ld a, b
    cp $02
    jr nz, jr_003_48b6

    ld a, [$c699]
    ld b, a
    ld a, [$c69a]
    cp b
    jr z, jr_003_48b6

    ld a, [$c3b5]
    or a
    jr z, jr_003_48b6

    dec a
    ld [$c3b5], a
    ld a, $87
    ld [$c3ba], a
    ld a, [$c69a]
    inc a
    ld [$c69a], a
    dec a
    ld b, a
    swap a
    add b
    add b
    add $e5
    ld l, a
    ld a, $c5
    adc $00
    ld h, a
    ld a, [hl+]
    add $00
    ld e, a
    ld a, $c5
    adc $00
    ld d, a
    ld a, [hl+]
    ld [de], a
    ld [$c3a1], a
    jr jr_003_495a

Jump_003_4923:
    ld a, [$c69a]
    or a
    jp z, Jump_003_48b6

    dec a
    ld [$c69a], a
    ld b, a
    ld a, [$c3b5]
    inc a
    ld [$c3b5], a
    ld a, $87
    ld [$c3ba], a
    ld a, b
    swap a
    add b
    add b
    add $e5
    ld l, a
    ld a, $c5
    adc $00
    ld h, a
    ld a, [hl+]
    add $00
    ld e, a
    ld a, $c5
    adc $00
    ld d, a
    ld a, [hl+]
    xor $01
    ld [$c3a1], a
    ld a, $03
    ld [de], a

jr_003_495a:
    ld b, $08

jr_003_495c:
    push bc
    push de
    ld a, [hl+]
    or a
    jr z, jr_003_4977

    ld b, a

jr_003_4963:
    ld c, $00
    bit 7, [hl]
    jr z, jr_003_496a

    dec c

jr_003_496a:
    ld a, e
    add [hl]
    ld e, a
    ld a, d
    adc c
    ld d, a
    ld a, [$c3a1]
    ld [de], a
    dec b
    jr nz, jr_003_4963

jr_003_4977:
    inc hl
    pop de
    pop bc
    dec b
    jr nz, jr_003_495c

    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    call Call_003_4ba7
    jp Jump_003_48b3


Call_003_498b:
    ld a, [$c5e3]
    or a
    jr nz, jr_003_49bd

    ld b, $27
    ld c, $1f
    ld d, $10
    ld a, $08
    call Call_000_13c9
    ld b, $67
    ld c, $1f
    ld d, $10
    ld a, $08
    call Call_000_13c9
    ld b, $27
    ld c, $5f
    ld d, $10
    ld a, $08
    call Call_000_13c9
    ld b, $67
    ld c, $5f
    ld d, $10
    ld a, $08
    call Call_000_13c9

jr_003_49bd:
    ld c, $4b
    ld a, $20
    ldh [$91], a
    call Call_003_49f9
    ld c, $4c
    ld a, $70
    ldh [$91], a
    call Call_003_49f9
    call Call_003_4a13
    push bc
    ld a, $2a
    ldh [$91], a
    ld a, b
    call Call_003_49e1
    pop bc
    ld a, $7a
    ldh [$91], a
    ld a, c

Call_003_49e1:
    ld d, $00

jr_003_49e3:
    sub $0a
    jr c, jr_003_49ea

    inc d
    jr jr_003_49e3

jr_003_49ea:
    push af
    ld a, d
    or a
    jr z, jr_003_49f5

    add $3b
    ld c, a
    call Call_003_49f9

jr_003_49f5:
    pop af
    add $45
    ld c, a

Call_003_49f9:
    ld h, $c1
    ld a, [$c301]
    ld l, a
    ld [hl], $94
    inc hl
    ldh a, [$91]
    ld [hl+], a
    add $08
    ldh [$91], a
    ld [hl], c
    inc hl
    ld [hl], $10
    inc hl
    ld a, l
    ld [$c301], a
    ret


Call_003_4a13:
    ld hl, $c50b
    ld d, $4e
    ld bc, $0000

jr_003_4a1b:
    ld a, [hl+]
    bit 1, a
    jr nz, jr_003_4a28

    and $01
    jr nz, jr_003_4a27

    inc b
    jr jr_003_4a28

jr_003_4a27:
    inc c

jr_003_4a28:
    dec d
    jr nz, jr_003_4a1b

    ret


Jump_003_4a2c:
    ld a, [$c3a2]
    or a
    jr z, jr_003_4a59

    ld a, $01
    ld [$c5e3], a
    call Call_003_46d5
    call Call_003_4b54
    xor a
    ld [$c5e3], a
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_003_4a59

    ld b, $3c

jr_003_4a4d:
    push bc
    rst $18
    call Call_003_498b
    call Call_000_147f
    pop bc
    dec b
    jr nz, jr_003_4a4d

jr_003_4a59:
    rst $18
    call Call_003_5357
    call Call_000_0c5a
    call Call_003_43fb
    call Call_003_4fcd
    call Call_003_50de
    call Call_003_498b
    call Call_003_4fb1
    call Call_000_147f
    call Call_003_4a77
    jr jr_003_4a59

Call_003_4a77:
    ld a, [$c5cb]
    cp $01
    ret nz

    ld a, [$c5ce]
    push af
    call Call_003_509e
    ld a, [$c5ce]
    ld c, a
    pop af
    ld [$c5ce], a
    ld a, c
    cp $02
    ret c

    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    call Call_003_4ba7

Jump_003_4a9b:
    ld hl, $c50b
    ld b, $4e
    xor a
    ld d, a
    ld e, a

jr_003_4aa3:
    bit 1, [hl]
    jr nz, jr_003_4ab0

    inc a
    bit 0, [hl]
    jr nz, jr_003_4aaf

    inc d
    jr jr_003_4ab0

jr_003_4aaf:
    inc e

jr_003_4ab0:
    inc hl
    dec b
    jr nz, jr_003_4aa3

    ld b, a
    ld a, d
    cp e
    jr z, jr_003_4af9

    ld a, [$c3a2]
    or a
    jr nz, jr_003_4ad7

    ld a, [$c3ae]
    or a
    jr nz, jr_003_4ad7

    ld a, [$c3a3]
    or a
    jr z, jr_003_4ad1

    ld a, d
    cp e
    jr nc, jr_003_4aed

    jr jr_003_4ae9

jr_003_4ad1:
    ld a, e
    cp d
    jr nc, jr_003_4ae9

    jr jr_003_4aed

jr_003_4ad7:
    ld a, [$c3a3]
    or a
    jr z, jr_003_4ae3

    ld a, d
    cp e
    jr nc, jr_003_4af5

    jr jr_003_4af1

jr_003_4ae3:
    ld a, e
    cp d
    jr nc, jr_003_4af5

    jr jr_003_4af1

jr_003_4ae9:
    ld a, $02
    jr jr_003_4afb

jr_003_4aed:
    ld a, $01
    jr jr_003_4afb

jr_003_4af1:
    ld a, $04
    jr jr_003_4afb

jr_003_4af5:
    ld a, $03
    jr jr_003_4afb

jr_003_4af9:
    ld a, $05

jr_003_4afb:
    ld b, a
    ld a, [$c3a2]
    or a
    jr z, jr_003_4b08

    ld a, [$c3a3]
    ld [$c3a1], a

jr_003_4b08:
    ld a, $01
    ld [$c5cd], a
    ld [$c019], a
    ld a, b
    call Call_003_4c24
    ld a, [$c5cd]
    cp $04
    jr nz, jr_003_4b48

    ld a, [$c721]
    ld [$c3b4], a
    ld a, $01
    ld [$c5e3], a
    xor a
    ld [$c5cd], a
    ld [$c019], a
    call Call_003_4b54
    call Call_003_462c
    ld a, [$c3b5]
    or a
    jp z, Jump_003_4a9b

    ld a, $01
    ld [$c5cb], a
    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    ret


jr_003_4b48:
    call Call_000_0b26

jr_003_4b4b:
    ld a, [$c39a]
    or a
    jr nz, jr_003_4b4b

    jp Jump_003_46b3


Call_003_4b54:
Jump_003_4b54:
    ld hl, $99c1
    ld de, $c50b
    ld b, $08

jr_003_4b5c:
    ld c, $08

jr_003_4b5e:
    push bc
    ld a, [de]
    inc de
    bit 1, a
    jr z, jr_003_4b69

    ld a, $02
    jr jr_003_4b6b

jr_003_4b69:
    add $03

jr_003_4b6b:
    push de
    call Call_003_4b98
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
    jr nz, jr_003_4b5e

    push de
    ld de, $ffb0
    add hl, de
    pop de
    inc de
    inc de
    dec b
    jr nz, jr_003_4b5c

    ret


Call_003_4b98:
    rlca
    add $74
    ld c, a
    ld a, $5d
    adc $00
    ld b, a
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    ld d, a

jr_003_4ba6:
    ret


Call_003_4ba7:
Jump_003_4ba7:
    rlca
    add $ca
    ld l, a
    ld a, $4b
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $9832

jr_003_4bb6:
    ld a, [de]
    inc de
    ld c, a
    and $7f
    call Call_003_4c06
    ld b, a
    rst $08
    ld [hl], b
    bit 7, c
    ret nz

    ld bc, $0020
    add hl, bc
    jr jr_003_4bb6

    jp nc, $df4b

    ld c, e
    db $ec
    ld c, e
    ld sp, hl
    ld c, e
    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, @+$56

    ld c, a
    jr nz, jr_003_4c2c

    ld c, h
    ld b, c
    reti


    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, @+$56

    ld c, a
    jr nz, @+$52

    ld c, h
    ld b, c
    reti


    jr nz, jr_003_4c0e

    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld c, e
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_003_4c18

    and b
    jr nz, jr_003_4c1b

    jr nz, jr_003_4c1d

    ld d, d
    ld b, l
    ld b, c
    ld b, h
    ld e, c
    jr nz, jr_003_4c24

    jr nz, jr_003_4ba6

Call_003_4c06:
    cp $2e
    jr nz, jr_003_4c0e

    ld a, $5b
    jr jr_003_4c14

jr_003_4c0e:
    cp $20
    jr nz, jr_003_4c14

    ld a, $5c

jr_003_4c14:
    push hl
    ld hl, $5d7e

jr_003_4c18:
    sub $41
    add [hl]

jr_003_4c1b:
    inc hl
    ld h, [hl]

jr_003_4c1d:
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl]
    pop hl
    ret


Call_003_4c24:
Jump_003_4c24:
jr_003_4c24:
    ld l, a
    ld a, b
    ldh [$8d], a
    ld a, [$c5cd]
    or a

jr_003_4c2c:
    jr nz, jr_003_4c3f

    ld a, [$c3ae]
    or a
    jr z, jr_003_4c3f

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jp nz, Jump_003_4d2f

jr_003_4c3f:
    ldh a, [$8d]
    or a
    jr z, jr_003_4c47

    ld [$c3ba], a

jr_003_4c47:
    ld a, $01
    ld [$c5e3], a
    ld a, l
    add a
    add $88
    ld l, a
    ld a, $4d
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
    ld a, [$c5db]
    and $f0
    rrca
    rrca
    rrca
    ld b, a
    ld a, b
    add c
    cp $06
    jr nc, jr_003_4c7a

    add $02
    sub c
    jr jr_003_4c99

jr_003_4c7a:
    sub c
    jr c, jr_003_4c94

    ld d, a
    ld a, c
    cp $06
    ld a, d
    jr c, jr_003_4c8c

    cp $06
    jr c, jr_003_4c94

    sub $06
    jr jr_003_4c99

jr_003_4c8c:
    cp $03
    jr c, jr_003_4c94

    sub $03
    jr jr_003_4c99

jr_003_4c94:
    srl b
    ld a, $08
    sub b

jr_003_4c99:
    swap a
    add a
    ld d, $98
    jr nc, jr_003_4ca1

    inc d

jr_003_4ca1:
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

jr_003_4cb1:
    rst $08
    ld a, $05
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4cb1

    rst $08
    ld a, $06
    ld [de], a
    pop bc
    call Call_003_4d7a
    push bc

jr_003_4cc2:
    rst $08
    ld a, $08
    ld [de], a
    inc de
    push bc

jr_003_4cc8:
    rst $08
    ld a, $07
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4cc8

    pop bc
    rst $08
    ld a, $09
    ld [de], a
    call Call_003_4d7a
    dec c
    jr nz, jr_003_4cc2

    pop bc
    push bc
    rst $08
    ld a, $0a
    ld [de], a
    inc de

jr_003_4ce2:
    rst $08
    ld a, $0b
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4ce2

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

jr_003_4cfc:
    ld a, [hl+]
    cp $3c
    jr z, jr_003_4d0b

    call Call_003_4c06
    ld b, a
    rst $08
    ld a, b
    ld [de], a
    inc de
    jr jr_003_4cfc

jr_003_4d0b:
    call Call_003_4d7a
    dec c
    jr nz, jr_003_4cfc

    call Call_003_498b
    ld a, [$c5cd]
    or a
    call z, Call_003_4fb1
    call Call_000_147f
    ld a, [$c5cd]
    or a
    jr z, jr_003_4d2f

    ld b, $1e

jr_003_4d26:
    push bc
    rst $18
    call Call_000_0c5a
    pop bc
    dec b
    jr nz, jr_003_4d26

Jump_003_4d2f:
jr_003_4d2f:
    rst $18
    ld a, [$c3a2]
    or a
    jr z, jr_003_4d48

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_003_4d48

    ld hl, $c5cb
    dec [hl]
    jr nz, jr_003_4d2f

    jr jr_003_4d6b

jr_003_4d48:
    call Call_000_0c5a
    ld a, [$c5cd]
    or a
    jr z, jr_003_4d65

    ld a, [$c310]
    ld [$c721], a
    ld b, a
    ld a, [$c3b0]
    or b
    and $0c
    jr z, jr_003_4d2f

    ld [$c5cd], a
    jr jr_003_4d6b

jr_003_4d65:
    ld a, [$c310]
    or a
    jr z, jr_003_4d2f

jr_003_4d6b:
    ld a, $80
    ld [$c3ba], a
    xor a
    ld [$c310], a
    ld [$c5e3], a
    jp Jump_003_4b54


Call_003_4d7a:
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


    sbc d
    ld c, l
    xor c
    ld c, l
    ld sp, hl
    ld c, l
    ld c, c
    ld c, [hl]
    sbc c
    ld c, [hl]
    jp hl


    ld c, [hl]
    ccf
    ld c, a
    ld l, e
    ld c, a
    ld a, a
    ld c, a
    inc c
    ld bc, $4e49
    ld d, [hl]
    ld b, c
    ld c, h
    ld c, c
    ld b, h
    jr nz, jr_003_4df2

    ld c, a
    ld d, [hl]
    ld b, l
    inc a
    inc c
    ld b, $20
    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_003_4e0a

    ld c, c
    ld c, [hl]
    ld d, e
    jr nz, @+$3e

    jr nz, jr_003_4dda

    jr nz, jr_003_4ddc

    jr nz, jr_003_4dde

    jr nz, jr_003_4de0

    jr nz, jr_003_4de2

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_003_4e1f

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_003_4e0e

    ld d, h
    ld c, a
    jr nz, jr_003_4e18

    ld b, l
    ld b, a
    ld c, c
    ld c, [hl]

jr_003_4dda:
    jr nz, jr_003_4e2a

jr_003_4ddc:
    ld b, l
    ld d, a

jr_003_4dde:
    inc a
    ld b, a

jr_003_4de0:
    ld b, c
    ld c, l

jr_003_4de2:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l
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

jr_003_4df2:
    ld b, l
    jr nz, jr_003_4e37

    ld b, c
    ld b, e
    ld c, e
    inc a
    inc c
    ld b, $20
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_003_4e5a

    ld c, c
    ld c, [hl]
    ld d, e
    jr nz, @+$3e

    jr nz, jr_003_4e2a

jr_003_4e0a:
    jr nz, jr_003_4e2c

    jr nz, jr_003_4e2e

jr_003_4e0e:
    jr nz, jr_003_4e30

    jr nz, jr_003_4e32

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l

jr_003_4e18:
    ld d, e
    ld d, e
    jr nz, jr_003_4e6f

    ld d, h
    ld b, c
    ld d, d

jr_003_4e1f:
    ld d, h
    jr nz, jr_003_4e5e

    ld d, h
    ld c, a
    jr nz, jr_003_4e68

    ld b, l
    ld b, a
    ld c, c
    ld c, [hl]

jr_003_4e2a:
    jr nz, jr_003_4e7a

jr_003_4e2c:
    ld b, l
    ld d, a

jr_003_4e2e:
    inc a
    ld b, a

jr_003_4e30:
    ld b, c
    ld c, l

jr_003_4e32:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l

jr_003_4e37:
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
    jr nz, jr_003_4e87

    ld b, c
    ld b, e
    ld c, e
    inc a
    inc c
    ld b, $20
    jr nz, jr_003_4ea7

    ld c, a
    ld d, l
    jr nz, jr_003_4e9e

    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_003_4e77

    inc a
    jr nz, jr_003_4e7a

jr_003_4e5a:
    jr nz, jr_003_4e7c

    jr nz, jr_003_4e7e

jr_003_4e5e:
    jr nz, jr_003_4e80

    jr nz, jr_003_4e82

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l

jr_003_4e68:
    ld d, e
    ld d, e
    jr nz, jr_003_4ebf

    ld d, h
    ld b, c
    ld d, d

jr_003_4e6f:
    ld d, h
    jr nz, jr_003_4eae

    ld d, h
    ld c, a
    jr nz, jr_003_4eb8

    ld b, l

jr_003_4e77:
    ld b, a
    ld c, c
    ld c, [hl]

jr_003_4e7a:
    jr nz, jr_003_4eca

jr_003_4e7c:
    ld b, l
    ld d, a

jr_003_4e7e:
    inc a
    ld b, a

jr_003_4e80:
    ld b, c
    ld c, l

jr_003_4e82:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l

jr_003_4e87:
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
    jr nz, jr_003_4ed7

    ld b, c
    ld b, e
    ld c, e
    inc a
    inc c
    ld b, $20
    jr nz, jr_003_4ebe

jr_003_4e9e:
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$59

    ld c, c
    ld c, [hl]
    jr nz, jr_003_4ec7

jr_003_4ea7:
    inc a
    jr nz, jr_003_4eca

    jr nz, jr_003_4ecc

    jr nz, jr_003_4ece

jr_003_4eae:
    jr nz, jr_003_4ed0

    jr nz, jr_003_4ed2

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l

jr_003_4eb8:
    ld d, e
    ld d, e
    jr nz, jr_003_4f0f

    ld d, h
    ld b, c

jr_003_4ebe:
    ld d, d

jr_003_4ebf:
    ld d, h
    jr nz, @+$3e

    ld d, h
    ld c, a
    jr nz, @+$44

    ld b, l

jr_003_4ec7:
    ld b, a
    ld c, c
    ld c, [hl]

jr_003_4eca:
    jr nz, jr_003_4f1a

jr_003_4ecc:
    ld b, l
    ld d, a

jr_003_4ece:
    inc a
    ld b, a

jr_003_4ed0:
    ld b, c
    ld c, l

jr_003_4ed2:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l

jr_003_4ed7:
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    inc a
    ld d, h
    ld c, a
    jr nz, jr_003_4f34

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_003_4f27

    ld b, c
    ld b, e
    ld c, e
    inc a
    dec c
    ld b, $47
    ld b, c
    ld c, l
    ld b, l
    jr nz, @+$4b

    ld d, e
    jr nz, jr_003_4f38

    ld d, d
    ld b, c
    ld d, a
    ld c, [hl]
    inc a
    jr nz, jr_003_4f1b

    jr nz, jr_003_4f1d

    jr nz, @+$22

    jr nz, jr_003_4f21

    jr nz, jr_003_4f23

    jr nz, jr_003_4f25

    jr nz, jr_003_4f43

    jr nz, jr_003_4f59

    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, @+$55

jr_003_4f0f:
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_003_4f51

    jr nz, jr_003_4f6b

    ld c, a
    jr nz, jr_003_4f5c

jr_003_4f1a:
    ld b, l

jr_003_4f1b:
    ld b, a
    ld c, c

jr_003_4f1d:
    ld c, [hl]
    jr nz, jr_003_4f6e

    ld b, l

jr_003_4f21:
    ld d, a
    inc a

jr_003_4f23:
    jr nz, @+$49

jr_003_4f25:
    ld b, c
    ld c, l

jr_003_4f27:
    ld b, l
    ld l, $20
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    inc a
    jr nz, jr_003_4f87

    ld c, a

jr_003_4f34:
    jr nz, @+$56

    ld b, c
    ld c, e

jr_003_4f38:
    ld b, l
    jr nz, @+$44

    ld b, c
    ld b, e
    ld c, e
    inc a
    ld c, $03
    jr nz, @+$5b

jr_003_4f43:
    ld c, a
    ld d, l
    jr nz, @+$45

    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, h
    jr nz, jr_003_4f6e

    inc a
    ld c, l
    ld c, a

jr_003_4f51:
    ld d, [hl]
    ld b, l
    ld l, $20
    ld d, b
    ld d, d
    ld b, l
    ld d, e

jr_003_4f59:
    ld d, e
    jr nz, jr_003_4f9d

jr_003_4f5c:
    inc a
    jr nz, jr_003_4faa

    ld b, l
    ld e, c
    jr nz, @+$56

    ld c, a
    jr nz, jr_003_4fb6

    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_003_4fa7

jr_003_4f6b:
    ld [$4902], sp

jr_003_4f6e:
    jr nz, @+$45

    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, h
    inc a
    jr nz, jr_003_4f98

    ld c, l
    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, @+$22

    inc a
    dec bc
    inc b
    jr nz, jr_003_4fa3

    ld c, [hl]
    ld c, a
    jr nz, jr_003_4fd6

jr_003_4f87:
    ld c, [hl]
    ld b, l
    jr nz, @+$22

    jr nz, jr_003_4fc9

    jr nz, jr_003_4fd2

    ld b, c
    ld c, [hl]
    jr nz, jr_003_4fe0

    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, @+$22

jr_003_4f98:
    inc a
    jr nz, jr_003_4fbb

    jr nz, jr_003_4fbd

jr_003_4f9d:
    jr nz, jr_003_4fbf

    jr nz, @+$22

    jr nz, jr_003_4fc3

jr_003_4fa3:
    jr nz, @+$3e

    ld d, b
    ld d, d

jr_003_4fa7:
    ld b, l
    ld d, e
    ld d, e

jr_003_4faa:
    jr nz, @+$43

    jr nz, jr_003_4ff9

    ld b, l
    ld e, c
    inc a

Call_003_4fb1:
    ld a, [$c5e1]
    or a
    ret nz

jr_003_4fb6:
    ld a, [$c5cb]
    cp $ff

jr_003_4fbb:
    jr z, jr_003_4fbf

jr_003_4fbd:
    or a
    ret nz

jr_003_4fbf:
    ld a, [$c5da]
    ld b, a

jr_003_4fc3:
    ld a, [$c5db]
    ld c, a
    ld d, $10

jr_003_4fc9:
    xor a
    jp Jump_000_13c9


Call_003_4fcd:
    ld a, [$c5cb]
    cp $ff

jr_003_4fd2:
    jr z, jr_003_4fd6

    or a
    ret nz

jr_003_4fd6:
    ld a, [$c5dc]
    or a
    jr z, jr_003_4ff6

    ld a, [$c5dd]
    dec a

jr_003_4fe0:
    ld [$c5dd], a
    jr z, jr_003_4ff3

    cp $01
    jr nz, jr_003_5004

    ld a, [$c00b]
    and $0f
    ld [$c00b], a
    jr jr_003_5004

jr_003_4ff3:
    ld [$c5dc], a

jr_003_4ff6:
    ld a, [$c310]

jr_003_4ff9:
    and $f0
    ld [$c5dc], a
    ret z

    ld a, $08
    ld [$c5dd], a

jr_003_5004:
    ld a, [$c5dc]
    and $f0
    swap a
    rst $28
    ld l, a
    ld d, b
    ld e, b
    ld d, b
    ld h, h
    ld d, b
    ld l, a
    ld d, b
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    ld b, a
    ld d, b
    ld l, a
    ld d, b
    ld [hl], $50
    inc l
    ld d, b
    ld sp, $6f50
    ld d, b
    ld l, a
    ld d, b
    ld l, a
    ld d, b
    ld l, a
    ld d, b
    ld l, a
    ld d, b
    call Call_003_5036
    jr jr_003_5058

    call Call_003_5036
    jr jr_003_5064

Call_003_5036:
    ld a, [$c5db]
    add $02
    cp $7a
    ret nc

    ld [$c5db], a
    ret


    call Call_003_504c
    jr jr_003_5058

    call Call_003_504c
    jr jr_003_5064

Call_003_504c:
    ld a, [$c5db]
    sub $02
    cp $08
    ret c

    ld [$c5db], a
    ret


jr_003_5058:
    ld a, [$c5da]
    add $02
    cp $82
    ret nc

    ld [$c5da], a
    ret


jr_003_5064:
    ld a, [$c5da]
    sub $02
    cp $10
    ret c

    ld [$c5da], a
    ret


Call_003_5070:
    ld a, [$c5da]
    and $f0
    swap a
    ld e, a
    ld a, [$c5db]
    and $f0
    swap a
    inc a
    ld d, a
    ld a, $09
    sub d
    rlca
    ld d, a
    rlca
    rlca
    add d
    add e
    ld [$c5c8], a
    add $00
    ld e, a
    ld d, $c5
    ret nc

    inc d
    ret


    add $00
    ld l, a
    adc $c5
    sub l
    ld h, a
    ld a, [hl]
    ret


Call_003_509e:
    ld a, [$c3a1]
    push af
    xor a
    ld [$c5ce], a
    ld [$c3a1], a
    call Call_003_50b9
    ld a, $01
    ld [$c3a1], a
    call Call_003_50b9
    pop af
    ld [$c3a1], a
    ret


Call_003_50b9:
    ld hl, $c50b
    ld c, $08

jr_003_50be:
    ld b, $08

jr_003_50c0:
    push bc
    push hl
    xor a
    bit 1, [hl]
    jr z, jr_003_50cb

    call Call_003_52d2
    ld a, b

jr_003_50cb:
    pop hl
    pop bc
    or a
    jr nz, jr_003_50dd

    inc hl
    dec b
    jr nz, jr_003_50c0

    inc hl
    inc hl
    dec c
    jr nz, jr_003_50be

    ld hl, $c5ce
    inc [hl]

jr_003_50dd:
    ret


Call_003_50de:
    ld a, [$c5dc]
    and $f0
    ret nz

    ld a, [$c5cb]
    cp $ff
    jr z, jr_003_510e

    or a
    jr z, jr_003_510e

    dec a
    ld [$c5cb], a
    jp nz, Jump_003_5339

    xor a
    ld [$c5ce], a
    ld a, $50
    ld [$c5da], a
    ld a, $48
    ld [$c5db], a

jr_003_5103:
    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    jp Jump_003_4ba7


jr_003_510e:
    ld a, [$c3a2]
    or a
    jr z, jr_003_511d

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    ret nz

jr_003_511d:
    ld hl, $c50b
    ld c, $08

jr_003_5122:
    ld b, $08

jr_003_5124:
    push bc
    push hl
    xor a
    bit 1, [hl]
    jr z, jr_003_512f

    call Call_003_52d2
    ld a, b

jr_003_512f:
    pop hl
    pop bc
    or a
    jr nz, jr_003_5154

    inc hl
    dec b
    jr nz, jr_003_5124

    inc hl
    inc hl
    dec c
    jr nz, jr_003_5122

    ld hl, $c5ce
    inc [hl]
    ld b, $84
    ld a, $06
    call Call_003_4c24
    ld a, $50
    ld [$c5da], a
    ld a, $58
    ld [$c5db], a
    jr jr_003_5103

jr_003_5154:
    ld a, [$c310]
    cp $01
    ret nz

    call Call_003_5070
    ld a, [de]
    bit 1, a
    jr nz, jr_003_5168

    ld b, $84
    xor a
    jp Jump_003_4c24


jr_003_5168:
    ld l, e
    ld h, d
    call Call_003_52d2
    ld a, b
    or a
    jr nz, jr_003_5177

    ld b, $84
    xor a
    jp Jump_003_4c24


Jump_003_5177:
jr_003_5177:
    push hl
    ld a, [$c5da]
    ld [$c5cf], a
    ld a, [$c5db]
    ld [$c5d0], a
    ld de, $3b00
    add hl, de
    ld a, l
    ld [$c69d], a
    ld a, [$c699]
    cp $0a
    jr nz, jr_003_51a6

    ld hl, $c5f7
    ld de, $c5e5
    ld b, $a2

jr_003_519b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_519b

    ld a, $09
    ld [$c699], a

jr_003_51a6:
    ld b, a
    swap a
    add b
    add b
    add $e5
    ld l, a
    ld a, $c5
    adc $00
    ld h, a
    ld a, [$c69d]
    ld [hl+], a
    ld a, [$c3a1]
    ld [hl+], a
    ld a, l
    ld [$c69b], a
    ld a, h
    ld [$c69c], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld de, $000a
    ld a, [$c5d2]
    or a
    call nz, Call_003_52ba
    ld a, [$c69b]
    add $02
    ld [$c69b], a
    ld a, [$c69c]
    adc $00
    ld [$c69c], a
    ld de, $000b
    ld a, [$c5d3]
    or a
    call nz, Call_003_52ba
    ld a, [$c69b]
    add $02
    ld [$c69b], a
    ld a, [$c69c]
    adc $00
    ld [$c69c], a
    ld de, $0001
    ld a, [$c5d4]
    or a
    call nz, Call_003_52ba
    ld a, [$c69b]
    add $02
    ld [$c69b], a
    ld a, [$c69c]
    adc $00
    ld [$c69c], a
    ld de, $fff7
    ld a, [$c5d5]
    or a
    call nz, Call_003_52ba
    ld a, [$c69b]
    add $02
    ld [$c69b], a
    ld a, [$c69c]
    adc $00
    ld [$c69c], a
    ld de, $fff6
    ld a, [$c5d6]
    or a
    call nz, Call_003_52ba
    ld a, [$c69b]
    add $02
    ld [$c69b], a
    ld a, [$c69c]
    adc $00
    ld [$c69c], a
    ld de, $fff5
    ld a, [$c5d7]
    or a
    call nz, Call_003_52ba
    ld a, [$c69b]
    add $02
    ld [$c69b], a
    ld a, [$c69c]
    adc $00
    ld [$c69c], a
    ld de, $ffff
    ld a, [$c5d8]
    or a
    call nz, Call_003_52ba
    ld a, [$c69b]
    add $02
    ld [$c69b], a
    ld a, [$c69c]
    adc $00
    ld [$c69c], a
    ld de, $0009
    ld a, [$c5d9]
    or a
    call nz, Call_003_52ba
    ld a, [$c699]
    inc a
    ld [$c699], a
    ld [$c69a], a
    ld a, $86
    ld [$c3ba], a
    ld a, [$c3ae]
    or a
    jr z, jr_003_52b2

    ld a, $01
    ld [$c5cb], a
    jp Jump_003_4b54


jr_003_52b2:
    ld a, $1e
    ld [$c5cb], a
    jp Jump_003_4b54


Call_003_52ba:
    push hl
    ld b, $00
    ld a, [$c3a1]

jr_003_52c0:
    ld [hl], a
    inc b
    add hl, de
    cp [hl]
    jr nz, jr_003_52c0

    dec b
    ld hl, $c69b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], b
    inc hl
    ld [hl], e
    pop hl
    ret


Call_003_52d2:
    ld b, $00
    ld de, $000a
    call Call_003_531d
    ld [$c5d2], a
    ld de, $000b
    call Call_003_531d
    ld [$c5d3], a
    ld de, $0001
    call Call_003_531d
    ld [$c5d4], a
    ld de, $fff7
    call Call_003_531d
    ld [$c5d5], a
    ld de, $fff6
    call Call_003_531d
    ld [$c5d6], a
    ld de, $fff5
    call Call_003_531d
    ld [$c5d7], a
    ld de, $ffff
    call Call_003_531d
    ld [$c5d8], a
    ld de, $0009
    call Call_003_531d
    ld [$c5d9], a
    ret


Call_003_531d:
    push hl
    ld a, [$c3a1]
    add hl, de
    bit 1, [hl]
    jr nz, jr_003_5336

    cp [hl]
    jr z, jr_003_5336

jr_003_5329:
    add hl, de
    bit 1, [hl]
    jr nz, jr_003_5336

    cp [hl]
    jr nz, jr_003_5329

    ld b, $01
    ld a, e
    pop hl
    ret


jr_003_5336:
    xor a
    pop hl
    ret


Jump_003_5339:
    ld a, [$c3a2]
    or a
    ret z

    ld a, [$c3a5]
    and $08
    ret nz

    ld a, [$c5cf]
    sub $08
    ld b, a
    ld a, [$c5d0]
    sub $08
    ld c, a
    ld d, $10
    ld a, $09
    jp Jump_000_13c9


Call_003_5357:
    ld a, [$c3a2]
    or a
    ret z

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    ret z

    ld a, [$c5cb]
    cp $ff
    jr z, jr_003_536e

    or a
    ret nz

jr_003_536e:
    ld a, $01
    ld [$c5e1], a
    xor a
    ld [$c5e2], a
    call Call_003_498b
    call Call_000_147f
    ld a, $02
    call Call_003_4ba7
    ld a, [$c6b1]
    add $08
    ld l, a
    adc $54
    sub l
    ld h, a
    ld b, [hl]

jr_003_538d:
    rst $18
    rst $18
    dec b
    jr nz, jr_003_538d

    call Call_003_540c
    xor a
    ld [$c310], a
    ld [$c5e1], a
    ld a, $03
    call Call_003_4ba7
    ld a, [$c5e0]
    or a
    jr z, jr_003_53dd

    ld a, $86
    ld [$c3ba], a
    ld a, [$c5df]
    add $00
    ld l, a
    adc $c5
    sub l
    ld h, a
    call Call_003_52d2
    ld a, [$c5df]
    ld b, $00

jr_003_53be:
    sub $0a
    jr c, jr_003_53c5

    inc b
    jr jr_003_53be

jr_003_53c5:
    add $0a
    rlca
    rlca
    rlca
    rlca
    ld [$c5da], a
    ld a, $09
    sub b
    rlca
    rlca
    rlca
    rlca
    sub $08
    ld [$c5db], a
    jp Jump_003_5177


jr_003_53dd:
    ld hl, $c5ce
    inc [hl]
    ld a, $3c
    ld [$c5cb], a
    ld a, $50
    ld [$c5da], a
    ld a, $58
    ld [$c5db], a
    ld b, $84
    ld a, $07
    call Call_003_4c24
    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    call Call_003_4ba7
    xor a
    ld [$c5cb], a
    jp Jump_003_4b54


    ld bc, $5a3c

Call_003_540c:
    ld hl, $c50b
    ld de, $c56f
    ld b, $4e

jr_003_5414:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_5414

    xor a
    ld [$c6af], a
    ld a, $80
    ld [$c6b0], a
    xor a
    ld [$c5df], a
    ld [$c5e0], a
    ld a, $80
    ld [$c6ae], a
    ld a, [$c3a1]
    ld c, a
    ld hl, $c50b
    ld b, $4e

jr_003_5438:
    ld a, [hl]
    bit 1, a
    jr nz, jr_003_5474

    and $01
    cp c
    jr nz, jr_003_5474

    push bc
    ld de, $000a
    call Call_003_5479
    ld de, $000b
    call Call_003_5479
    ld de, $0001
    call Call_003_5479
    ld de, $fff7
    call Call_003_5479
    ld de, $fff6
    call Call_003_5479
    ld de, $fff5
    call Call_003_5479
    ld de, $ffff
    call Call_003_5479
    ld de, $0009
    call Call_003_5479
    pop bc

jr_003_5474:
    inc hl
    dec b
    jr nz, jr_003_5438

    ret


Call_003_5479:
    push hl
    ld a, [$c3a1]
    ld b, a
    ld c, $00

jr_003_5480:
    add hl, de
    ld a, [hl]
    bit 2, a
    jp nz, Jump_003_55c5

    bit 1, a
    jr nz, jr_003_5495

    and $01
    cp b
    jp z, Jump_003_55c5

    ld [hl], b
    inc c
    jr jr_003_5480

jr_003_5495:
    ld a, c
    or a
    jp z, Jump_003_55c5

    ld [hl], b
    ld a, l
    ld [$c6a3], a
    ld de, $000a
    call Call_003_55d5
    ld de, $000b
    call Call_003_55d5
    ld de, $0001
    call Call_003_55d5
    ld de, $fff7
    call Call_003_55d5
    ld de, $fff6
    call Call_003_55d5
    ld de, $fff5
    call Call_003_55d5
    ld de, $ffff
    call Call_003_55d5
    ld de, $0009
    call Call_003_55d5
    ld a, [$c3a1]
    call Call_003_55fa
    ld a, l
    ld [$c6a6], a
    ld a, h
    ld [$c6a7], a
    xor a
    ld [$c6aa], a
    ld [$c6ab], a
    call Call_003_56e8
    call Call_003_5785
    call Call_003_5822
    call Call_003_58bf
    call Call_003_56a3
    ld a, [$c6aa]
    ld l, a
    ld a, [$c6ab]
    ld h, a
    ld a, [$c6a6]
    add l
    ld [$c6a6], a
    ld a, [$c6a7]
    adc h
    ld [$c6a7], a
    xor a
    ld [$c6aa], a
    ld [$c6ab], a
    call Call_003_5b97
    call Call_003_5bac
    call Call_003_5bc1
    call Call_003_5bda
    ld a, [$c6aa]
    ld l, a
    ld a, [$c6ab]
    ld h, a
    ld a, [$c6a6]
    add l
    ld [$c6a6], a
    ld a, [$c6a7]
    adc h
    ld [$c6a7], a
    ld a, [$c3a3]
    call Call_003_55fa
    ld a, l
    ld [$c6a8], a
    ld a, h
    ld [$c6a9], a
    ld a, [$c3a1]
    call Call_003_5949
    cp $ff
    jr nz, jr_003_554b

    xor a

jr_003_554b:
    ld [$c6a5], a
    ld a, [$c3a3]
    call Call_003_5949
    cp $ff
    jr nz, jr_003_5559

    xor a

jr_003_5559:
    ld [$c6a4], a
    ld a, [$c6a8]
    ld l, a
    ld a, [$c6a9]
    ld h, a
    ld a, [$c6a6]
    sub l
    ld l, a
    ld a, [$c6a7]
    sbc h
    ld h, a
    ld a, [$c6a5]
    ld c, a
    ld a, [$c6a4]
    sub c
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    add $80
    ld h, a
    ld a, [$c5e0]
    or a
    jr z, jr_003_55ab

    ld a, [$c6af]
    sub l
    ld c, a
    ld a, [$c6b0]
    sbc h
    jr c, jr_003_55ab

    or c
    jr nz, jr_003_55c5

    ld a, [$c6ae]
    ld d, a
    call Call_000_0a01
    and $7f
    ld e, a
    ld a, d
    sub e
    jr c, jr_003_55c5

    ld hl, $c6ae
    srl [hl]
    jr jr_003_55b8

jr_003_55ab:
    ld a, l
    ld [$c6af], a
    ld a, h
    ld [$c6b0], a
    ld a, $80
    ld [$c6ae], a

jr_003_55b8:
    ld a, $01
    ld [$c5e0], a
    ld a, [$c6a3]
    sub $00
    ld [$c5df], a

Jump_003_55c5:
jr_003_55c5:
    ld hl, $c56f
    ld de, $c50b
    ld b, $4e

jr_003_55cd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_55cd

    pop hl
    ret


Call_003_55d5:
    push hl
    ld c, $00

jr_003_55d8:
    add hl, de
    ld a, [hl]
    bit 2, a
    jr nz, jr_003_55f8

    bit 1, a
    jr nz, jr_003_55f8

    and $01
    cp b
    jr z, jr_003_55ea

    inc c
    jr jr_003_55d8

jr_003_55ea:
    ld a, c
    or a
    jr z, jr_003_55f8

    pop hl
    push hl

jr_003_55f0:
    add hl, de
    ld a, [hl]
    cp b
    jr z, jr_003_55f8

    ld [hl], b
    jr jr_003_55f0

jr_003_55f8:
    pop hl
    ret


Call_003_55fa:
    ld c, a
    ld hl, $c50b
    ld b, $4e
    xor a
    ld [$c6aa], a
    ld [$c6ab], a

Jump_003_5607:
    ld a, [hl]
    bit 1, a
    jp nz, Jump_003_5695

    and $01
    cp c
    jp nz, Jump_003_5695

    ld a, l
    sub $00
    cp $16
    jr z, jr_003_5654

    cp $1b
    jr z, jr_003_5662

    cp $48
    jr z, jr_003_5670

    cp $4d
    jr z, jr_003_5646

    cp $0c
    jr z, jr_003_5654

    cp $15
    jr z, jr_003_5654

    cp $11
    jr z, jr_003_5662

    cp $1b
    jr z, jr_003_5662

    cp $47
    jr z, jr_003_5670

    cp $52
    jr z, jr_003_5670

    cp $4e
    jr z, jr_003_5646

    cp $57
    jr nz, jr_003_5680

jr_003_5646:
    ld a, [$c558]
    bit 1, a
    jr nz, jr_003_567c

    and $01
    cp c
    jr z, jr_003_5680

    jr jr_003_567c

jr_003_5654:
    ld a, [$c50b]
    bit 1, a
    jr nz, jr_003_567c

    and $01
    cp c
    jr z, jr_003_5680

    jr jr_003_567c

jr_003_5662:
    ld a, [$c512]
    bit 1, a
    jr nz, jr_003_567c

    and $01
    cp c
    jr z, jr_003_5680

    jr jr_003_567c

jr_003_5670:
    ld a, [$c551]
    bit 1, a
    jr nz, jr_003_567c

    and $01
    cp c
    jr z, jr_003_5680

jr_003_567c:
    ld hl, $0000
    ret


jr_003_5680:
    push hl
    ld de, $01b2
    add hl, de
    ld a, [$c6aa]
    add [hl]
    ld [$c6aa], a
    ld a, [$c6ab]
    adc $00
    ld [$c6ab], a
    pop hl

Jump_003_5695:
    inc hl
    dec b
    jp nz, Jump_003_5607

    ld a, [$c6aa]
    ld l, a
    ld a, [$c6ab]
    ld h, a
    ret


Call_003_56a3:
    ret


    ld a, [$c6a3]
    sub $00
    ld hl, $56bd
    ld b, $08

jr_003_56ae:
    cp [hl]
    jr z, jr_003_56b8

    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_003_56ae

    ret


jr_003_56b8:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec c
    push de
    ld d, [hl]
    db $10
    ld [hl], d
    ld d, a
    rra
    push de
    ld d, [hl]
    ld h, $72
    ld d, a
    dec a
    rrca
    ld e, b
    ld b, h
    xor h
    ld e, b
    ld d, e
    rrca
    ld e, b
    ld d, [hl]
    xor h
    ld e, b
    ld a, $0b
    call Call_003_56ed
    ld a, $0c
    call Call_003_56ed
    ld a, $15
    call Call_003_56ed
    ld a, $16
    jr jr_003_56ed

Call_003_56e8:
    ld a, [$c6a3]
    sub $00

Call_003_56ed:
jr_003_56ed:
    cp $0b
    jr z, jr_003_5730

    ld bc, $0001
    cp $0c
    jr z, jr_003_5705

    ld bc, $000b
    cp $16
    jr z, jr_003_5735

    ld bc, $000a
    cp $15
    ret nz

jr_003_5705:
    add $00
    ld l, a
    adc $c5
    sub l
    ld h, a
    ld a, [$c3a1]
    cp [hl]
    ret nz

    ld e, l
    ld d, h
    ld hl, $c50b
    bit 1, [hl]
    jr nz, jr_003_5756

    ld a, [$c3a1]
    cp [hl]
    ret z

    ld l, e
    ld h, d

jr_003_5721:
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    jr nz, jr_003_5744

    add hl, bc
    jr jr_003_5721

    ld hl, $000a
    jr jr_003_5747

jr_003_5730:
    ld hl, $0190
    jr jr_003_5747

jr_003_5735:
    ld hl, $c50b
    ld a, [$c3a1]
    cp [hl]
    ret z

jr_003_573d:
    add hl, bc
    bit 2, [hl]
    ret nz

    cp [hl]
    jr z, jr_003_573d

jr_003_5744:
    ld hl, $fe70

jr_003_5747:
    ld a, [$c6aa]
    add l
    ld [$c6aa], a
    ld a, [$c6ab]
    adc h
    ld [$c6ab], a
    ret


jr_003_5756:
    ld l, e
    ld h, d
    ld a, [$c3a1]

jr_003_575b:
    bit 2, [hl]
    jr nz, jr_003_5730

    bit 1, [hl]
    ret nz

    cp [hl]
    jr nz, jr_003_5744

    add hl, bc
    jr jr_003_575b

jr_003_5768:
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    jr z, jr_003_5744

    add hl, bc
    jr jr_003_5768

    ld a, $11
    call Call_003_578a
    ld a, $12
    call Call_003_578a
    ld a, $1b
    call Call_003_578a
    ld a, $1c
    jr jr_003_578a

Call_003_5785:
    ld a, [$c6a3]
    sub $00

Call_003_578a:
jr_003_578a:
    cp $12
    jr z, jr_003_57cd

    ld bc, $ffff
    cp $11
    jr z, jr_003_57a2

    ld bc, $0009
    cp $1b
    jr z, jr_003_57d2

    ld bc, $000a
    cp $1c
    ret nz

jr_003_57a2:
    add $00
    ld l, a
    adc $c5
    sub l
    ld h, a
    ld a, [$c3a1]
    cp [hl]
    ret nz

    ld e, l
    ld d, h
    ld hl, $c512
    bit 1, [hl]
    jr nz, jr_003_57f3

    ld a, [$c3a1]
    cp [hl]
    ret z

    ld l, e
    ld h, d

jr_003_57be:
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    jr nz, jr_003_57e1

    add hl, bc
    jr jr_003_57be

    ld hl, $000a
    jr jr_003_57e4

jr_003_57cd:
    ld hl, $0190
    jr jr_003_57e4

jr_003_57d2:
    ld hl, $c512
    ld a, [$c3a1]
    cp [hl]
    ret z

jr_003_57da:
    add hl, bc
    bit 2, [hl]
    ret nz

    cp [hl]
    jr z, jr_003_57da

jr_003_57e1:
    ld hl, $fe70

jr_003_57e4:
    ld a, [$c6aa]
    add l
    ld [$c6aa], a
    ld a, [$c6ab]
    adc h
    ld [$c6ab], a
    ret


jr_003_57f3:
    ld l, e
    ld h, d
    ld a, [$c3a1]

jr_003_57f8:
    bit 2, [hl]
    jr nz, jr_003_57cd

    bit 1, [hl]
    ret nz

    cp [hl]
    jr nz, jr_003_57e1

    add hl, bc
    jr jr_003_57f8

jr_003_5805:
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    jr z, jr_003_57e1

    add hl, bc
    jr jr_003_5805

    ld a, $47
    call Call_003_5827
    ld a, $48
    call Call_003_5827
    ld a, $51
    call Call_003_5827
    ld a, $52
    jr jr_003_5827

Call_003_5822:
    ld a, [$c6a3]
    sub $00

Call_003_5827:
jr_003_5827:
    cp $51
    jr z, jr_003_586a

    ld bc, $fff6
    cp $47
    jr z, jr_003_583f

    ld bc, $fff7
    cp $48
    jr z, jr_003_586f

    ld bc, $0001
    cp $52
    ret nz

jr_003_583f:
    add $00
    ld l, a
    adc $c5
    sub l
    ld h, a
    ld a, [$c3a1]
    cp [hl]
    ret nz

    ld e, l
    ld d, h
    ld hl, $c551
    bit 1, [hl]
    jr nz, jr_003_5890

    ld a, [$c3a1]
    cp [hl]
    ret z

    ld l, e
    ld h, d

jr_003_585b:
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    jr nz, jr_003_587e

    add hl, bc
    jr jr_003_585b

    ld hl, $000a
    jr jr_003_5881

jr_003_586a:
    ld hl, $0190
    jr jr_003_5881

jr_003_586f:
    ld hl, $c551
    ld a, [$c3a1]
    cp [hl]
    ret z

jr_003_5877:
    add hl, bc
    bit 2, [hl]
    ret nz

    cp [hl]
    jr z, jr_003_5877

jr_003_587e:
    ld hl, $fe70

jr_003_5881:
    ld a, [$c6aa]
    add l
    ld [$c6aa], a
    ld a, [$c6ab]
    adc h
    ld [$c6ab], a
    ret


jr_003_5890:
    ld l, e
    ld h, d
    ld a, [$c3a1]

jr_003_5895:
    bit 2, [hl]
    jr nz, jr_003_586a

    bit 1, [hl]
    ret nz

    cp [hl]
    jr nz, jr_003_587e

    add hl, bc
    jr jr_003_5895

jr_003_58a2:
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    jr z, jr_003_587e

    add hl, bc
    jr jr_003_58a2

    ld a, $4d
    call Call_003_58c4
    ld a, $4e
    call Call_003_58c4
    ld a, $57
    call Call_003_58c4
    ld a, $58
    jr jr_003_58c4

Call_003_58bf:
    ld a, [$c6a3]
    sub $00

Call_003_58c4:
jr_003_58c4:
    cp $58
    jr z, jr_003_5907

    ld bc, $fff5
    cp $4d
    jr z, jr_003_590c

    ld bc, $fff6
    cp $4e
    jr z, jr_003_58dc

    ld bc, $ffff
    cp $57
    ret nz

jr_003_58dc:
    add $00
    ld l, a
    adc $c5
    sub l
    ld h, a
    ld a, [$c3a1]
    cp [hl]
    ret nz

    ld e, l
    ld d, h
    ld hl, $c558
    bit 1, [hl]
    jr nz, jr_003_592d

    ld a, [$c3a1]
    cp [hl]
    ret z

    ld l, e
    ld h, d

jr_003_58f8:
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    jr nz, jr_003_591b

    add hl, bc
    jr jr_003_58f8

    ld hl, $000a
    jr jr_003_591e

jr_003_5907:
    ld hl, $0190
    jr jr_003_591e

jr_003_590c:
    ld hl, $c558
    ld a, [$c3a1]
    cp [hl]
    ret z

jr_003_5914:
    add hl, bc
    bit 2, [hl]
    ret nz

    cp [hl]
    jr z, jr_003_5914

jr_003_591b:
    ld hl, $fe70

jr_003_591e:
    ld a, [$c6aa]
    add l
    ld [$c6aa], a
    ld a, [$c6ab]
    adc h
    ld [$c6ab], a
    ret


jr_003_592d:
    ld l, e
    ld h, d
    ld a, [$c3a1]

jr_003_5932:
    bit 2, [hl]
    jr nz, jr_003_5907

    bit 1, [hl]
    ret nz

    cp [hl]
    jr nz, jr_003_591b

    add hl, bc
    jr jr_003_5932

jr_003_593f:
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    jr z, jr_003_591b

    add hl, bc
    jr jr_003_593f

Call_003_5949:
    ld c, a
    ld hl, $c50b
    ld b, $4e
    xor a
    ld [$c6aa], a

jr_003_5953:
    ld a, [hl]
    bit 1, a
    jr nz, jr_003_598f

    and $01
    cp c
    jr nz, jr_003_598f

    push bc
    ld de, $000a
    call Call_003_5997
    ld de, $000b
    call Call_003_5997
    ld de, $0001
    call Call_003_5997
    ld de, $fff7
    call Call_003_5997
    ld de, $fff6
    call Call_003_5997
    ld de, $fff5
    call Call_003_5997
    ld de, $ffff
    call Call_003_5997
    ld de, $0009
    call Call_003_5997
    pop bc

jr_003_598f:
    inc hl
    dec b
    jr nz, jr_003_5953

    ld a, [$c6aa]
    ret


Call_003_5997:
    push hl
    ld b, $00

jr_003_599a:
    add hl, de
    ld a, [hl]
    bit 2, a
    jr nz, jr_003_59f7

    bit 1, a
    jr nz, jr_003_59ac

    and $01
    cp c
    jr z, jr_003_59f7

    inc b
    jr jr_003_599a

jr_003_59ac:
    ld a, b
    or a
    jr z, jr_003_59f7

    ld a, [$c3a1]
    cp c
    jr z, jr_003_59e6

    ld a, e
    cp $01
    jr z, jr_003_59d7

    cp $ff
    jr z, jr_003_59d7

    cp $0a
    jr z, jr_003_59c7

    cp $f6
    jr nz, jr_003_59e6

jr_003_59c7:
    sub $0a
    jr nc, jr_003_59c7

    add $0a
    cp $08
    jr z, jr_003_59e2

    cp $01
    jr z, jr_003_59e2

    jr jr_003_59e6

jr_003_59d7:
    ld a, l
    sub $00
    cp $14
    jr c, jr_003_59e2

    cp $50
    jr c, jr_003_59e6

jr_003_59e2:
    ld a, $ff
    jr jr_003_59f4

jr_003_59e6:
    ld a, [$c6aa]
    cp $ff
    jr z, jr_003_59f4

    add b
    cp $80
    jr c, jr_003_59f4

    ld a, $7f

jr_003_59f4:
    ld [$c6aa], a

jr_003_59f7:
    pop hl
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
    stop
    ld [$0606], sp
    ld [$1000], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [$0802], sp
    inc bc
    inc bc
    ld [$0802], sp
    nop
    nop
    ld b, $02
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld b, $00
    nop
    ld b, $02
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld b, $00
    nop
    ld [$0802], sp
    inc bc
    inc bc
    ld [$0802], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    stop
    ld [$0606], sp
    ld [$1000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0606], sp
    ld [$1000], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [$0802], sp
    inc bc
    inc bc
    ld [$0802], sp
    nop
    nop
    ld b, $02
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld b, $00
    nop
    ld b, $02
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld b, $00
    nop
    ld [$0802], sp
    inc bc
    inc bc
    ld [$0802], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    stop
    ld [$0606], sp
    ld [$1000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc c
    inc c
    inc c
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    ld [$0303], sp
    ld [$0c02], sp
    nop
    nop
    inc c
    ld [bc], a
    inc bc
    ld [$0308], sp
    ld [bc], a
    inc c
    nop
    nop
    inc c
    ld [bc], a
    inc bc
    ld [$0308], sp
    ld [bc], a
    inc c
    nop
    nop
    inc c
    ld [bc], a
    ld [$0303], sp
    ld [$0c02], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, b
    nop
    inc c
    inc c
    inc c
    inc c
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
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld b, $08
    nop
    ld a, [bc]
    nop
    ld b, $08
    nop
    ld a, [bc]
    nop
    ld b, $08

Jump_003_5b34:
    dec a
    jr z, jr_003_5b4a

    dec a
    jr z, jr_003_5b42

    ld hl, $59f9
    ld de, $5b25
    jr jr_003_5b50

jr_003_5b42:
    ld hl, $5a5d
    ld de, $5b2a
    jr jr_003_5b50

jr_003_5b4a:
    ld hl, $5ac1
    ld de, $5b2f

jr_003_5b50:
    push hl
    ld b, $05
    ld hl, $c716

jr_003_5b56:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_003_5b56

    pop hl
    ld de, $c6b2
    ld b, $64

jr_003_5b62:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_5b62

    ret


    db $10
    ld bc, $0000

Jump_003_5b6d:
jr_003_5b6d:
    ld a, [$c720]
    add $14
    ld e, a
    adc $5c
    sub e
    ld d, a
    ld a, [de]
    ld e, a
    rla
    sbc a
    ld d, a
    ld a, [$c6b1]
    ld b, a
    ld a, $04
    sub b
    add $02
    ld b, a

jr_003_5b86:
    sla e
    rl d
    dec b
    jr nz, jr_003_5b86

    ld hl, $c6aa
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ret


Call_003_5b97:
    xor a
    ld [$c720], a
    ld hl, $c50d
    ld b, $03

jr_003_5ba0:
    call Call_003_5bf3
    inc hl
    dec b
    ld a, b
    cp $ff
    jr nz, jr_003_5ba0

    jr jr_003_5b6d

Call_003_5bac:
    xor a
    ld [$c720], a
    ld hl, $c553
    ld b, $03

jr_003_5bb5:
    call Call_003_5bf3
    inc hl
    dec b
    ld a, b
    cp $ff
    jr nz, jr_003_5bb5

    jr jr_003_5b6d

Call_003_5bc1:
    xor a
    ld [$c720], a
    ld hl, $c51f
    ld b, $03

jr_003_5bca:
    call Call_003_5bf3
    ld de, $000a
    add hl, de
    dec b
    ld a, b
    cp $ff
    jr nz, jr_003_5bca

    jp Jump_003_5b6d


Call_003_5bda:
    xor a
    ld [$c720], a
    ld hl, $c526
    ld b, $03

jr_003_5be3:
    call Call_003_5bf3
    ld de, $000a
    add hl, de
    dec b
    ld a, b
    cp $ff
    jr nz, jr_003_5be3

    jp Jump_003_5b6d


Call_003_5bf3:
    ld a, [hl]
    and $03
    ld c, a
    ld a, [$c3a3]
    xor c
    add $69
    ld e, a
    adc $5b
    sub e
    ld d, a
    ld a, [de]
    ld c, b
    inc c

jr_003_5c05:
    dec c
    jr z, jr_003_5c0b

    add a
    jr jr_003_5c05

jr_003_5c0b:
    ld c, a
    ld a, [$c720]
    or c
    ld [$c720], a
    ret


    nop
    ld [$0707], sp
    rlca
    ld [$0a0a], sp
    ld [$0809], sp
    ld [$0807], sp
    ld a, [bc]
    add hl, bc
    ld sp, hl
    nop
    or $00
    ld sp, hl
    nop
    rst $30
    nop
    db $fc
    nop
    or $00
    nop
    nop
    or $00
    ld sp, hl
    ld sp, hl
    nop
    nop
    or $0a
    nop
    nop
    cp $02
    nop
    nop
    db $fc
    ld b, $00
    nop
    ld sp, hl
    nop
    nop
    nop
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or $00
    nop
    nop
    ld sp, hl
    cp $f6
    db $fc
    nop
    nop
    nop
    nop
    ld sp, hl
    ld [bc], a
    ld a, [bc]
    ld b, $00
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    db $fc
    ld sp, hl
    nop
    or $f6
    rst $30
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$06
    nop
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
    ld hl, sp+$00
    nop
    nop
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $30
    or $00
    nop
    nop
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
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or $f6
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld c, $0f
    rlca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_003_5d4f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_003_5d5f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_003_5d6f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_003_5d7f

    ld [hl-], a

jr_003_5d4f:
    rlca
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_003_5d90

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_003_5d5f:
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
    rlca
    rlca
    ld c, l
    ld c, [hl]
    ld c, [hl]

jr_003_5d6f:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    inc d
    ld e, l
    jr jr_003_5dd5

    jr z, jr_003_5dd7

    inc l
    ld e, l
    jr nc, jr_003_5ddb

    inc [hl]

jr_003_5d7f:
    ld e, l
    ld h, h
    ld e, l
    ld l, b
    ld e, l
    ld l, h
    ld e, l
    ld [hl], b
    ld e, l
    ld [bc], a
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a

jr_003_5d90:
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
    nop
    ld [bc], a
    ld a, a
    nop
    ld [bc], a
    ld a, a

jr_003_5db2:
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

jr_003_5dd5:
    sbc a
    ld e, h

jr_003_5dd7:
    cp h
    jr jr_003_5db2

    db $10

jr_003_5ddb:
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
    ld bc, $0502
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
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    add b
    ld [bc], a
    inc bc
    rst $38
    add b
    rst $38
    add e
    db $fc
    adc a
    ldh a, [$9f]
    ldh a, [$9f]
    ldh [$bf], a
    ldh [$bf], a
    ld [bc], a
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_003_5ecc

    add sp, $0f
    ld hl, sp+$07
    db $f4
    rlca
    db $f4
    ldh [$bf], a
    ldh [$bf], a
    ldh a, [$bf]
    ld hl, sp-$61

jr_003_5ecc:
    rst $28
    sbc a
    rst $30
    adc a
    ld hl, sp-$79
    rst $38
    add b
    rlca
    db $f4
    rlca
    db $ec
    rrca
    sbc h
    dec de
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$1f]
    ldh [rIE], a
    nop
    ld [bc], a
    inc bc
    rst $38
    add b
    rst $38
    add e
    db $fc
    adc h
    ldh a, [$90]
    ldh a, [$90]
    ldh [$a0], a
    ldh [$a0], a
    ld [bc], a
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_003_5f6c

    ld [$081f], sp
    rlca
    inc b
    rla
    inc b
    ldh [$a0], a
    ldh [$a0], a
    ldh a, [$b0]
    ld hl, sp-$68
    rst $28
    sbc a
    rst $30
    adc a
    ld hl, sp-$79
    rst $38
    add b
    rla
    inc b
    rla
    inc b
    cpl
    inc c
    dec de
    inc e
    rst $30
    ld hl, sp-$11
    ldh a, [$1f]
    ldh [rIE], a
    nop
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

jr_003_5f6c:
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
    jp nz, Jump_003_7cff

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld a, $ff
    nop
    rst $38
    ld [bc], a
    ld b, $00
    ld h, b
    jr nz, jr_003_6271

    jr jr_003_6241

    ld e, $21
    rrca
    db $10
    rrca
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
    jr jr_003_624d

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

jr_003_6241:
    ld [$ff00], sp
    nop
    rst $38
    inc a
    jp $817e


    rst $38
    add c
    rst $38

jr_003_624d:
    add c
    rst $38
    jp $ff7e


    inc a
    rst $38
    nop
    rst $38
    inc a
    jp $0242


    ld b, $81
    jp $ff42


    inc a
    ld [bc], a
    ld b, $e0
    ld [bc], a
    ld a, [de]
    nop
    rst $38
    rst $38
    cp a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_003_6271:
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
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
    cp a
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
    cp $00
    ld [bc], a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rlca
    nop
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
    rst $38
    ld [bc], a
    add hl, bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld h, $00
    ld [bc], a
    nop
    nop
    rlca
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $00
    add e
    dec c
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rlca
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $00
    add e
    dec c
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rlca
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $00
    add e
    dec c
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rlca
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $00
    add e
    dec c
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rlca
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $00
    add e
    dec c
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rlca
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $00
    add e
    dec c
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rlca
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $00
    add e
    dec c
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rlca
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $00
    add e
    dec c
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rlca
    nop
    inc c
    ld c, $53
    nop
    inc bc
    ld c, $54
    nop
    dec de
    rlca
    ld d, l
    nop
    ld [de], a
    rlca
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
    ld b, $18
    jr jr_003_649f

    ld b, $00
    rrca
    rrca
    ld [hl], b
    ld [hl], b
    add b
    add b
    add hl, bc

jr_003_649f:
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
    ld a, [bc]
    nop
    ld bc, $0601
    rlca
    jr jr_003_64d6

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

jr_003_64d6:
    jr nc, @-$0e

    inc c
    db $fc
    add hl, bc
    ld b, $00
    add hl, bc
    inc b
    ld bc, $0409
    ld [bc], a
    inc b
    inc b
    jr nz, jr_003_6507

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
    jr nz, jr_003_650e

    db $10
    add hl, bc
    ld b, $00
    add hl, bc
    inc b
    ld bc, $0302

jr_003_6507:
    add hl, bc
    add e
    ld [bc], a
    rlca
    jr nz, jr_003_654c

    ld b, b

jr_003_650e:
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

jr_003_6526:
    rst $38
    nop

jr_003_6528:
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

    jr nz, jr_003_6526

    jr nz, jr_003_6528

    db $10
    ldh a, [rDIV]
    inc b

jr_003_654c:
    add hl, bc
    ld b, $08
    add hl, bc
    ld a, [bc]
    db $10
    add hl, bc
    ld b, $08
    add hl, bc
    add hl, bc
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
    add hl, bc
    inc b
    db $10
    add hl, bc
    inc b
    jr @+$1e

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
    jr jr_003_65a7

    jr c, jr_003_65b9

    jr c, jr_003_65bb

    db $10
    rra
    db $10
    rra
    jr jr_003_65b8

    jr jr_003_65ba

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

jr_003_65a7:
    inc c
    db $fc

jr_003_65a9:
    inc c
    db $fc

jr_003_65ab:
    inc e
    db $fc
    jr jr_003_65a7

    jr c, jr_003_65a9

    jr c, jr_003_65ab

    rlca
    dec b
    rlca
    dec b
    inc bc

jr_003_65b8:
    ld [bc], a

jr_003_65b9:
    inc bc

jr_003_65ba:
    ld [bc], a

jr_003_65bb:
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
    add hl, bc
    inc b
    rlca
    add hl, bc
    inc b
    inc bc
    add hl, bc
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
    rst $38
    nop
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
    ccf
    jr nz, jr_003_665a

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

jr_003_665a:
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
    ld [$3f00], sp
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
    ld bc, $0c00
    dec c
    ld [bc], a
    ld [bc], a
    ld c, $0f
    inc bc
    nop
    ld h, d
    add e
    db $10
    ld h, d
    add e
    ld [de], a
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
    ld [bc], a
    ld d, $03
    ld bc, $6217
    inc b
    ld [de], a
    jr jr_003_67d1

    ld bc, $0200

jr_003_67d1:
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
    ld [bc], a
    ld a, [de]
    inc bc
    nop
    dec de
    ld h, d
    inc b
    ld [de], a
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
    ld [bc], a
    jr nz, jr_003_681e

    inc bc
    ld bc, $8362
    ld [hl+], a
    ld [de], a
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

jr_003_681e:
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
    ld [bc], a
    ld [bc], a
    ld c, $0f
    inc bc
    ld bc, $0215
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $03
    nop
    add hl, de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    inc bc
    ld bc, $1e1d
    rra
    ld [bc], a
    jr nz, jr_003_690e

    inc bc
    nop
    ld [bc], a
    daa
    jr z, jr_003_691c

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

jr_003_690e:
    nop
    db $10
    ld de, $1212
    inc de
    inc d
    inc bc
    ld bc, $1217
    ld [de], a
    ld [de], a
    ld [de], a

jr_003_691c:
    jr jr_003_6921

    nop
    dec de
    ld [de], a

jr_003_6921:
    ld [de], a
    ld [de], a
    ld [de], a
    inc e
    inc bc
    ld bc, $2322
    inc h
    ld [de], a
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
    cp [hl]
    ld l, b
    cp $68
    ld a, $69
    dec c
    nop
    nop
    pop hl
    pop hl
    nop
    nop
    db $e3
    db $e3
    nop
    nop
    rst $08
    rst $08
    nop
    nop
    rst $08
    rst $08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    inc bc
    db $fc
    rst $38
    nop
    ld bc, $fdfc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    rrca
    ldh a, [rP1]
    ld a, a
    rrca
    ld [hl], b
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rra
    ldh [rSB], a
    ldh [$3f], a
    ret nz

    ld bc, $0dc0
    add e
    ld a, a
    nop
    rst $38
    nop
    ld bc, $ff00
    nop
    ldh [rP1], a
    rst $38
    nop
    ret nz

    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ld [hl], b
    nop
    rst $38
    nop
    jr c, jr_003_6a11

jr_003_6a11:
    rst $38
    nop
    jr c, jr_003_6a15

jr_003_6a15:
    rst $38
    nop
    ld b, $00
    rst $38
    nop
    ld b, $00
    rst $38
    nop
    ld c, $00
    rst $38
    nop
    ld c, $00
    rst $38
    nop
    rrca
    nop
    rst $38
    nop
    rlca
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    nop
    pop bc
    nop
    rst $38
    nop
    add c
    nop
    rst $38
    nop
    inc bc
    nop
    rst $38
    nop
    rlca
    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    ld bc, $010f
    rst $38
    ld [bc], a
    rrca
    ld [bc], a
    ldh [rSCX], a
    db $e3
    ld e, h
    jp $c3be


    cp [hl]
    add a
    ld a, [hl]
    add a
    ld a, [hl]
    rlca
    cp $07
    cp $70
    cp a
    ld a, b
    cp a
    ld a, b
    cp a
    ld a, b
    cp a
    ld a, h
    cp a
    ld a, h
    cp a
    ld a, h
    cp a
    ld a, [hl]
    add c
    nop
    ret nc

    inc bc
    rlc b
    db $e4
    nop
    db $f4
    nop
    ld a, [$f900]
    nop
    db $fc
    nop
    cp $00
    nop
    rst $38
    rst $38
    dec c
    add hl, bc
    nop
    add b
    nop
    ld b, b
    nop
    nop
    rlca
    rlca
    dec c
    ld c, $00
    adc a
    adc a
    dec c
    ld c, $00
    rst $38
    rst $38
    dec c
    ld c, $00
    cp $fe
    dec c
    ld c, $00
    ld bc, $0d01
    ld c, $00
    ld hl, sp-$08
    dec c
    dec c
    nop
    ccf
    rrca
    jr nc, jr_003_6ac3

jr_003_6ac3:
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $fe01
    cp $00
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rst $38
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
    rst $38
    nop
    rst $38
    dec c
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
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    ld e, $00
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $05fe
    ld c, $09
    db $fc
    inc de
    ld hl, sp+$17
    ldh a, [$2f]
    ldh a, [rVBK]
    ldh [$9f], a
    ret nz

    ccf
    rlca
    cp $0f
    cp $0f
    cp $0f
    cp $1f
    cp $1f
    cp $1f
    cp $3f
    ret nz

    nop
    cp $7f
    add b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    dec c
    inc bc
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    nop
    jr nz, jr_003_6b91

jr_003_6b91:
    stop
    ld c, b
    nop
    ld h, [hl]
    nop
    ld a, c
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ld a, a
    dec c
    dec bc
    nop
    add b
    nop
    ld h, b
    nop
    sbc b
    dec c
    dec c
    nop
    inc bc
    nop
    inc c
    nop
    ld [bc], a
    nop
    inc b
    nop
    add hl, bc
    nop
    inc sp
    nop
    ld c, a
    nop
    sbc a
    nop
    ccf
    nop
    rst $38
    ld a, a
    and b
    ld a, a
    sub b
    ccf
    ld c, b
    rra
    ld h, [hl]
    rlca
    ld a, c
    inc bc
    ld a, h
    ld bc, $007e
    ld a, a
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
    add b
    rst $38
    ld h, b
    ld a, a
    sbc b
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
    inc bc
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    inc b
    cp $09
    db $fc
    inc sp
    ldh a, [$6f]
    ldh [$9f], a
    ret nz

    ccf
    nop
    rst $38
    add b
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $017f
    ld a, a
    inc bc
    ld a, a
    nop
    ccf
    ld a, a
    add b
    ld a, a
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $f0
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $ff
    nop
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
    rst $38
    ld b, b
    cp a
    nop
    and $00
    ld sp, hl
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
    dec c
    inc bc
    nop
    ret nz

    nop
    jr c, jr_003_6c53

jr_003_6c53:
    ld b, a
    nop
    ld a, b
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    dec c
    rlca
    nop
    ret nz

    nop
    ccf
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    dec c
    rlca
    nop
    ld bc, $fe00
    nop
    ld bc, $7f00
    nop
    ld a, a
    dec c
    inc bc
    nop
    ld bc, $0e00
    nop
    pop af
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc sp
    nop
    rst $08
    nop
    ccf
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
    ld bc, $00fe
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
    ld b, b
    cp a
    rra
    and $07
    ld sp, hl
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
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr c, jr_003_6d0a

    ld b, a
    rlca
    ld a, b
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    ccf
    ret nz

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
    ld bc, $feff
    cp $01
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $0eff
    cp $f1
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc sp
    ldh a, [$cf]
    ret nz

    ccf

jr_003_6d0a:
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
    rlca
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    add b
    nop
    ldh a, [$78]
    add a
    ld a, h
    cp a
    ld a, [hl]
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    dec c
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    dec c
    inc bc
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
    dec c
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
    rst $38
    nop
    rst $38
    dec c
    inc bc
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    inc bc
    ld a, a
    rrca
    ld a, a
    ccf
    ld a, a
    nop
    inc bc
    rrca
    ldh a, [$1f]
    cp $3f
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $00
    ldh [$78], a
    add a
    ld a, h
    cp a
    ld a, [hl]
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld b, b
    cp a
    ld a, b
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $7f7f
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    add b
    ld bc, $0ffe
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    dec c
    ld a, a
    nop
    dec c
    ld a, a
    nop
    dec c
    ld a, a
    nop
    dec c
    ld a, a
    nop
    dec c
    ld a, a
    nop
    dec c
    ld a, a
    nop
    dec c
    ld e, b
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $0d
    stop
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    add b
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    dec c
    inc bc
    cp $f8
    ld sp, hl
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, b
    cp b
    ld b, b
    add a
    nop
    jr c, jr_003_6e49

jr_003_6e49:
    ret nz

    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $c0
    ret nz

    nop
    ccf
    nop
    ret nz

    dec c
    dec b
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    cp a
    ld bc, $0001
    cp $00
    ld bc, $050d
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    cp $0f
    ld c, $01
    ldh a, [rP1]
    ld c, $00
    ld bc, $ff00
    ld a, a
    add b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ccf
    rrca
    rst $08
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld sp, hl
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp b
    ld a, a
    add a
    rst $38
    jr c, @+$01

    ret nz

    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    ret nz

    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    cp a
    rst $38
    ld bc, $feff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    ld c, $ff
    ldh a, [rIE]
    ld c, $ff
    ld bc, $ff00
    ld a, a
    add b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    rst $08
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, [hl]
    cp [hl]
    ld a, h
    cp h
    ld a, b
    cp c
    ld h, b
    and [hl]
    ld b, b
    adc b
    nop
    sub b
    ldh [$e6], a
    add b
    sbc b
    nop
    ld h, b
    nop
    add b
    dec c
    ld [$0300], sp
    inc sp
    nop
    inc c
    nop
    inc bc
    dec c
    ld a, [bc]
    nop
    rst $38
    cp $ff
    cp $3f
    ld a, $1f
    sbc [hl]
    rrca
    ld c, [hl]
    inc bc
    ld [hl-], a
    ld bc, $0008
    inc b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp [hl]
    ld a, a
    cp h
    ld a, a
    cp c
    ld a, a
    and [hl]
    ld a, a
    adc b
    ld a, a
    sub b
    rst $38
    and $ff
    sbc b
    rst $38
    ld h, b
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
    inc sp
    rst $38
    inc c
    rst $38
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
    rst $38
    cp $ff
    cp $ff
    ld a, $ff
    sbc [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld [hl-], a
    rst $38
    ld [$04ff], sp
    nop
    rst $38
    cp $00
    db $fc
    db $fc
    ld hl, sp-$07
    ld hl, sp-$06
    ldh a, [$f4]
    ldh [$e4], a
    jp Jump_000_00cb


    jr nz, jr_003_6f7d

jr_003_6f7d:
    ld b, b
    nop
    add b
    dec c
    ld [$ff00], sp
    rst $38
    dec c
    ld c, $00
    ldh a, [$f0]
    dec c
    ld c, $00
    rrca
    rrca
    dec c
    ld c, $00
    rst $38
    rst $38
    dec c
    ld c, $00
    cp $fe
    dec c
    ld c, $00
    rst $28
    rst $28
    nop
    ld [bc], a
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    rst $28
    ret nc

    ld a, a
    and b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    rst $38
    nop
    rst $38
    dec c
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
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
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
    add hl, sp
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    ld a, a
    rst $38
    nop
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    rla
    rst $38
    inc de
    rrca
    add hl, bc
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    cp [hl]
    ld a, h
    add c
    ret nz

    ret nc

    add e
    and e
    add b
    and b
    inc bc
    ld b, e
    nop
    ld b, b
    nop
    add b
    nop
    add b
    dec c
    inc b
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rst $28
    rst $28
    nop
    nop
    rst $28
    rst $28
    nop
    nop
    add e
    add d
    nop
    ld bc, $0001
    nop
    ccf
    rst $28
    sub b
    nop
    ld a, a
    rst $28
    stop
    rst $38
    jp Jump_000_003c


    rst $38
    pop bc
    ld a, $01
    cp $ff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ld bc, $ff00
    nop
    add c
    nop
    ld a, a
    add b
    ld bc, $3fc0
    ret nz

    ld bc, $ffe0
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    rst $38
    nop
    ldh [rP1], a
    rst $38
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, $00
    rst $38
    nop
    ld a, $00
    rst $38
    nop
    add b
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    nop
    rlca
    nop
    rst $38
    nop
    rrca
    nop
    rst $38
    nop
    ld bc, $ff00
    nop
    ld bc, $ff00
    nop
    add c
    nop
    rst $38
    nop
    pop bc
    nop
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    dec b
    rrca
    ld [bc], a
    rst $38
    ld [bc], a
    rrca
    ld bc, $01ff
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld b, b
    nop
    db $fd
    ld a, h
    add c
    ld a, b
    cp d
    ld a, b
    cp d
    ld a, b
    cp d
    ld [hl], b
    or h
    ld [hl], b
    or h
    ld [hl], b
    or h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    add c
    add c
    nop
    nop
    add c
    add c
    nop
    nop
    add c
    add c
    nop
    nop
    add c
    add c
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    pop af
    pop af
    nop
    nop
    ld e, $1e
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    adc [hl]
    adc [hl]
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    add e
    add h
    nop
    rlca
    add e
    adc h
    nop
    rrca
    add e
    adc h
    nop
    rst $38
    pop bc
    ld a, $00
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    pop af
    ld c, $1f
    ldh [rNR11], a
    ldh [rIF], a
    ldh a, [rSB]
    ldh a, [rIF]
    ldh a, [$09]
    ldh a, [rTAC]
    ld hl, sp-$77
    ld [hl], b
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    ld e, $00
    rst $38
    nop
    ld e, $00
    rst $38
    nop
    ld e, $00
    rst $38
    nop
    ld e, $00
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rrca
    nop
    rst $38
    nop
    pop hl
    nop
    rst $38
    nop
    pop hl
    nop
    rst $38
    nop
    pop af
    nop
    rst $38
    nop
    pop af
    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ldh [$5f], a
    rst $38
    ld b, b
    rst $38
    ld l, $ff
    ld l, $ff
    ld l, $ff
    ld d, $ff
    ld d, $ff
    ld d, $70
    or h
    ld [hl], b
    or h
    ld h, b
    xor b
    ld h, b
    xor b
    ld h, b
    xor b
    ld h, b
    xor b
    ld h, b
    xor b
    ld h, b
    adc b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    pop af
    pop af
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    rrca
    add e
    adc h
    nop
    rra
    rst $00
    ret c

    nop
    rra
    rst $00
    ret c

    nop
    rra
    rst $00
    ret c

    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    pop af
    ld c, $00
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rlca
    ld hl, sp-$79
    ld a, b
    inc bc
    db $fc
    add e
    ld a, h
    inc bc
    db $fc
    add e
    ld a, h
    inc bc
    db $fc
    add e
    ld a, h
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    nop
    ld a, $00
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $ff00
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
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
    rrca
    nop
    rst $38
    nop
    rlca
    nop
    rst $38
    ld d, $ff
    ld d, $ff
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld [$e800], sp
    ld h, b
    adc b
    ld h, b
    xor b
    ld h, b
    xor b
    ld h, b
    xor b
    ld h, b
    xor b
    ld h, b
    xor b
    ld h, b
    or h
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    pop af
    pop af
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rra
    rst $00
    ret c

    nop
    rra
    rst $08
    ret nc

    nop
    rra
    xor $f1
    nop
    rra
    xor $f1
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    pop af
    ld c, $03
    db $fc
    add e
    ld a, h
    inc bc
    db $fc
    add e
    ld a, h
    inc bc
    db $fc
    add e
    ld a, h
    inc bc
    db $fc
    add a
    ld a, b
    rst $38
    dec c
    inc bc
    nop
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    ret nz

    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    inc bc
    nop
    rst $38
    nop
    ld bc, $ff00
    dec c
    inc bc
    nop
    rst $38
    dec c
    inc bc
    nop
    db $fc
    dec bc
    rst $38
    ld [$0aff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    ei
    ld d, $60
    or h
    ld h, b
    or h
    ld h, b
    or h
    ld h, b
    or h
    ld h, b
    cp d
    ld h, b
    cp d
    ld h, b
    cp d
    ld h, b
    sbc l
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld h, c
    ld h, c
    nop
    nop
    ld h, c
    ld h, c
    nop
    nop
    pop af
    pop af
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    adc [hl]
    adc [hl]
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    ld e, $1e
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    rrca
    cp $f1
    nop
    rrca
    cp $f1
    nop
    rlca
    cp $f9
    nop
    rlca
    db $fc
    rst $38
    nop
    rst $38
    pop af
    ld c, $00
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    ldh a, [rIF]
    rlca
    ld hl, sp-$77
    ld [hl], b
    rlca
    ld hl, sp+$09
    ldh a, [rIF]
    ldh a, [rSB]
    ldh a, [rIF]
    ldh a, [rSB]
    ldh [rIE], a
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    ld h, [hl]
    nop
    rst $38
    nop
    ld h, [hl]
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    ret nz

    nop
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    pop hl
    nop
    ei
    ld d, $fb
    ld d, $fb
    ld d, $fb
    ld d, $f3
    ld l, $f3
    ld l, $f3
    ld l, $e3
    ld e, h
    nop
    pop hl
    ld h, b
    sbc l
    ld h, b
    cp [hl]
    ld h, b
    cp [hl]
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    dec c
    dec b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    inc bc
    ld b, e
    nop
    and b
    inc bc
    and e
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    dec c
    nop
    rlc b
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $83cb
    nop
    rrc e
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    rrc h
    ld [bc], a
    nop
    ld bc, $cb00
    add [hl]
    dec b
    ld bc, $cb00
    add [hl]
    dec bc
    ld bc, $83cb
    nop
    rrc e
    ld [bc], a
    inc bc
    inc b
    ld de, $cb12
    inc b
    ld [bc], a
    res 0, l
    inc de
    rlc e
    rla
    jr @+$1b

    inc bc
    inc b
    rrc h
    ld [bc], a
    nop
    res 0, [hl]
    ld a, [de]
    ld e, $cb
    add [hl]
    jr nz, jr_003_7603

    res 0, h
    ld h, $01
    rrc h
    ld [bc], a
    res 2, h
    ld a, [hl+]
    rrc h
    ld [bc], a
    ld a, $02
    res 2, d
    ccf
    rrc h
    ld [bc], a
    ld d, c
    ld [bc], a

jr_003_7603:
    res 1, d
    ld d, d
    ld c, c
    res 0, h
    ld e, h
    ld c, [hl]
    ld c, a
    ld h, b
    rrc h
    ld [bc], a
    ld h, c
    ld [bc], a
    ld h, d
    ld h, e
    ld d, h
    ld h, h
    ld d, [hl]
    res 0, l
    ld h, l
    ld c, c
    res 0, h
    ld l, d
    ld c, [hl]
    ld c, a
    ld l, [hl]
    rrc h
    ld [bc], a
    ld l, a
    ld [bc], a
    ccf
    res 0, [hl]
    ld [hl], b
    ld h, a
    db $76
    ld [hl], a
    ld c, c
    ld c, [hl]
    res 0, e
    ld a, b
    ld c, [hl]
    ld c, a
    ld a, e
    rrc h
    ld [bc], a
    res 0, a
    ld a, h
    ld d, h
    res 1, h
    add e
    rrc h
    ld [bc], a
    res 2, h
    adc a
    rrc h
    ld [bc], a
    res 0, h
    and e
    rlc h
    ld [bc], a
    res 0, h
    and a
    rlc h
    rla
    res 0, h
    xor e
    rrc h
    ld [bc], a
    inc bc
    res 2, b
    xor a
    or a
    cp a
    inc b
    rrc h
    ld [bc], a
    nop
    ld bc, $84cb
    ret nz

    res 0, l
    jp nz, $83cb

    pop bc
    res 0, h
    jp nz, $83cb

    nop
    rrc e
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    res 0, h
    rst $00
    inc bc
    inc b
    inc bc
    inc b
    res 0, h
    rst $00
    inc bc
    inc b
    inc bc
    inc b
    rrc h
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
    ld bc, $83cb
    nop
    rrc e
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    rrc h
    ld [bc], a
    rlc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_7cff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
