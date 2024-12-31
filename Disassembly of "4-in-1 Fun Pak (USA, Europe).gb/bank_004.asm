; Disassembly of "4-in-1 Fun Pak (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    ld hl, $c500
    ld bc, $0768

jr_004_4006:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_004_4006

    xor a
    ld [$c314], a
    ld [$cc62], a
    call Call_004_40fd
    call Call_004_41b0
    ld a, [$c00c]
    and $01
    ld [$c3a3], a
    xor $01
    ld [$c3b4], a
    xor a
    ld [$c7db], a
    ld [$c300], a
    ld [$c301], a
    ld [$c302], a
    call Call_000_0e45
    call Call_000_0e5a
    ld a, $80
    ld [$c3ba], a
    ld [$c3bb], a
    ld hl, $5f22
    ld de, $8800
    call Call_000_13a5
    ld hl, $9000
    ld de, $8000
    ld bc, $0800

jr_004_4054:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_004_4054

    ld hl, $68ec
    ld de, $c7dc
    call Call_000_13a5
    call Call_004_434a
    ld a, $03
    call Call_000_0ed2
    xor a
    call Call_000_0f4d
    xor a
    call Call_000_0f69
    ld a, $e1
    ld b, $d0
    call Call_000_0b1c
    xor a
    ldh [rIF], a
    ld a, [$c3ae]
    or a
    jr nz, jr_004_408b

    ld a, $01
    ldh [rIE], a
    jr jr_004_4090

jr_004_408b:
    ld a, $09
    ldh [rIE], a
    ei

jr_004_4090:
    call Call_004_43d3
    xor a
    ld [$c3b0], a
    ld [$c310], a
    ld [$c311], a
    ld hl, $cc1c
    ld b, $40
    xor a

jr_004_40a3:
    ld [hl+], a
    dec b
    jr nz, jr_004_40a3

    ld a, $01
    ld [$c7db], a
    ld a, $83
    ldh [rLCDC], a
    ei
    ld a, [$c3a2]
    or a
    jr z, jr_004_40c9

    ld a, $01
    ld [$c71f], a
    call Call_004_4e64
    call Call_004_43d3
    xor a
    ld [$c71f], a
    call Call_000_147f

jr_004_40c9:
    call Call_004_4907
    ld a, [$c3a1]
    or a
    jr nz, jr_004_40de

    ld a, $24
    ld [$c701], a
    ld a, $23
    ld [$c702], a
    jr jr_004_40e8

jr_004_40de:
    ld a, $24
    ld [$c701], a
    ld a, $7c
    ld [$c702], a

jr_004_40e8:
    ld a, $78
    ld [$c706], a
    ld a, [$c3a1]
    add $12
    ld c, $00
    call Call_004_5490
    call Call_004_43d3
    jp Jump_004_52cc


Call_004_40fd:
    di
    xor a
    ldh [rBGP], a
    call Call_000_0e45
    ld hl, $6fe9
    ld de, $8800
    call Call_000_13a5
    ld hl, $7db7
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
    ld a, $81
    ld [$c3bb], a
    ld a, [$c3ae]
    or a
    jr nz, jr_004_4150

    ld a, $01
    ldh [rIE], a
    jr jr_004_4157

jr_004_4150:
    ld a, $09
    ldh [rIE], a
    call Call_000_0d56

jr_004_4157:
    ld a, $81
    ldh [rLCDC], a
    ei

jr_004_415c:
    rst $18
    ld hl, $c015
    dec [hl]
    jr nz, jr_004_4168

    ld a, [hl+]
    dec [hl]
    or [hl]
    jr z, jr_004_41a7

jr_004_4168:
    call Call_000_0df7
    jr z, jr_004_415c

    ld a, [$c39a]
    or a
    jr nz, jr_004_415c

    ld a, [$c3b0]
    ld b, a
    ld a, [$c310]
    or b
    cp $08
    jr z, jr_004_4183

    cp $01
    jr nz, jr_004_415c

jr_004_4183:
    ld a, [$c310]
    ld b, a
    and $08
    jr nz, jr_004_418e

    ld a, b
    and $01

jr_004_418e:
    ld [$c3b4], a

Call_004_4191:
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    call Call_000_0b26

jr_004_419e:
    ld a, [$c39a]
    or a
    jr nz, jr_004_419e

    jp Jump_000_0c49


jr_004_41a7:
    call Call_004_4191
    ld sp, $e000
    jp Jump_000_0153


Call_004_41b0:
    ld a, [$c3a2]
    ld b, a
    ld a, [$c3ae]
    or b
    ret z

    xor a
    call Call_000_0e45
    ld hl, $6a09
    ld de, $8800
    call Call_000_13a5
    ld hl, $6d6b
    ld de, $9800
    call Call_000_13a5
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c009], a
    call Call_000_0ed2

Jump_004_41df:
    ld a, $e4
    ld b, a
    call Call_000_0b1c
    ld a, [$c3ae]
    or a
    jr nz, jr_004_41f1

    ld a, $01
    ldh [rIE], a
    jr jr_004_4203

jr_004_41f1:
    ld a, $09
    ldh [rIE], a
    call Call_000_0d56
    ld a, [$c3ad]
    and $01
    jr nz, jr_004_4203

    ld d, $01
    jr jr_004_4205

jr_004_4203:
    ld d, $00

jr_004_4205:
    ld a, d
    ld [$c00c], a
    call Call_004_42ab
    ld a, $81
    ldh [rLCDC], a
    ei
    ld a, [$c3ae]
    or a
    jr z, jr_004_422d

    ld a, [$c3ad]
    and $01
    jr z, jr_004_422d

    ld b, $08

jr_004_4220:
    push bc
    rst $18
    xor a
    ld [$c310], a
    call Call_000_0d56
    pop bc
    dec b
    jr nz, jr_004_4220

jr_004_422d:
    call Call_004_4276
    ld a, [$c39a]
    or a
    jr nz, jr_004_422d

    ld a, [$c3b0]
    ld b, a
    cp $ff
    jp z, Jump_000_0070

    ld a, [$c310]
    or b
    cp $08
    jr z, jr_004_424b

    cp $01
    jr nz, jr_004_422d

jr_004_424b:
    ld a, [$c310]
    ld b, a
    and $08
    jr nz, jr_004_4256

    ld a, b
    and $01

jr_004_4256:
    ld [$c3b4], a
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c39d], a
    call Call_000_0b26

jr_004_4269:
    xor a
    ld [$c3af], a
    ld a, [$c39a]
    or a
    jr nz, jr_004_4269

    jp Jump_000_0c49


Call_004_4276:
    rst $18
    call Call_000_0df7
    jr z, jr_004_42b5

    and $09

Jump_004_427e:
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
    jr z, jr_004_429c

    cp $10
    ret nz

    ld d, $01
    jr jr_004_429e

jr_004_429c:
    ld d, $00

jr_004_429e:
    ld a, d
    ld [$c00c], a
    xor a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a

Call_004_42ab:
    ld a, d
    xor $01
    call Call_004_42cc
    xor a
    ld [$c3a5], a

jr_004_42b5:
    ld a, [$c3a5]
    and $0f
    ret nz

    ld a, [$c3a5]
    and $10
    jr nz, jr_004_42c9

    ld a, [$c00c]
    add $02
    jr jr_004_42cc

jr_004_42c9:
    ld a, [$c00c]

Call_004_42cc:
jr_004_42cc:
    ld b, a
    ld de, $9882
    and $01
    jr z, jr_004_42d7

    ld de, $988a

jr_004_42d7:
    ld a, b
    cp $03
    jr nz, jr_004_42dd

    dec a

jr_004_42dd:
    rlca
    add $e3
    ld l, a
    ld a, $6f
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_004_42f6

    ld a, [$c3b0]
    ld [$cc66], a

jr_004_42f6:
    ld c, $08

jr_004_42f8:
    ld b, $08

jr_004_42fa:
    rst $08
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_42fa

    ld a, e
    add $18
    ld e, a
    adc d
    sub e
    ld d, a
    dec c
    jr nz, jr_004_42f8

    ld a, [$c3ad]
    bit 0, a
    ret nz

    ld a, [$cc66]
    ld [$c3b0], a
    ret


    ld a, [$c3ae]
    or a
    jr z, jr_004_433d

    ld a, [$c3ad]
    and $01
    jr nz, jr_004_433d

    ld a, [$c3ae]
    push af
    xor a
    ld [$c3ae], a
    call Call_000_0d23
    pop af
    ld [$c3ae], a
    xor a
    ld [$c310], a
    call Call_000_0d56
    jr jr_004_4340

jr_004_433d:
    call Call_000_0d23

jr_004_4340:
    ld a, [$c310]
    ld b, a
    ld a, [$c3b0]
    or b
    ld b, a
    ret


Call_004_434a:
    ld a, $f4
    ld [$c303], a
    ld a, $5e
    ld [$c304], a
    xor a
    ld [$c703], a
    ld [$c706], a
    ld [$c7d7], a
    ld [$c019], a
    ld [$c711], a
    ld [$c712], a
    ld [$c707], a
    ld [$c708], a
    ld [$c709], a
    ld [$c71d], a
    ld [$c71e], a
    ld [$c7d9], a
    ld [$c7da], a
    ld [$c3a1], a
    ld [$cc5c], a
    ld [$c7c0], a
    ld [$c7c1], a
    ld a, $02
    ld [$c705], a
    ld a, $01
    ld [$c7d8], a
    ld a, [$c3a3]
    xor $81
    ld [$c3ad], a
    xor a
    ld b, $1a
    ld hl, $c500
    ld de, $c600

jr_004_43a3:
    ld [hl+], a
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_43a3

    ld a, $05
    ld [$c506], a
    ld [$c606], a
    ld [$c50d], a
    ld [$c60d], a
    ld a, $03
    ld [$c508], a
    ld [$c608], a
    dec a
    ld [$c518], a
    ld [$c618], a
    ld a, $05
    ld [$c70d], a
    xor a
    ld [$c70c], a
    ld [$c70b], a
    ret


Call_004_43d3:
Jump_004_43d3:
    xor a
    ld [$c7db], a
    ld hl, $c501
    ld b, $18

jr_004_43dc:
    call Call_004_4554
    inc hl
    dec b
    jr nz, jr_004_43dc

    ld hl, $c501
    ld de, $c618
    ld b, $18

jr_004_43eb:
    ld a, [de]
    or [hl]
    jr z, jr_004_43fb

    ld a, [de]
    or a
    jr z, jr_004_43f8

    call Call_004_44b5
    jr jr_004_43fb

jr_004_43f8:
    call Call_004_4418

jr_004_43fb:
    dec de
    inc hl
    dec b
    jr nz, jr_004_43eb

    call Call_004_4587
    call Call_004_45be
    call Call_004_46c7
    call Call_004_45f6
    call Call_004_464e
    call Call_004_46a6
    ld a, $01
    ld [$c7db], a
    ret


Call_004_4418:
    push bc
    push de
    push hl
    ld a, [hl]
    cp $07
    jr c, jr_004_4422

    ld a, $06

jr_004_4422:
    ld [$c7c2], a
    ld a, l
    sub $00
    ld [$c7c4], a
    cp $0d
    jr c, jr_004_4437

    ld hl, $c83c
    ld bc, $0020
    jr jr_004_443d

jr_004_4437:
    ld hl, $c9dc
    ld bc, $ffe0

jr_004_443d:
    add $20
    ld e, a
    adc $47
    sub e
    ld d, a
    ld a, [de]
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    push hl
    push bc
    ld a, [$c7c4]
    and $01
    add a
    add a
    ld c, a
    add a
    add c
    add $39
    ld e, a
    adc $47
    sub e
    ld d, a
    ld a, [$5ef8]
    ld c, a
    ld a, [$5ef9]
    ld b, a
    ld hl, $c7c5
    ld a, $06

jr_004_446a:
    ld [$c7c4], a
    push bc
    ld a, [de]
    inc de
    add c
    ld c, a
    adc b
    sub c
    ld b, a
    ld a, [bc]
    ld [hl+], a
    pop bc
    ld a, [$c7c4]
    dec a
    jr nz, jr_004_446a

    pop bc
    pop hl
    ld a, [$c7c2]
    ld d, a
    ld a, [$c7c5]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_44b1

    ld a, [$c7c6]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_44b1

    ld a, [$c7c7]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_44b1

    ld a, [$c7c8]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_44b1

    ld a, [$c7c9]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_44b1

    ld a, [$c7ca]
    ld [hl], a
    add hl, bc

jr_004_44b1:
    pop hl
    pop de
    pop bc
    ret


Call_004_44b5:
    push bc
    push de
    push hl
    ld a, [de]
    cp $07
    jr c, jr_004_44bf

    ld a, $06

jr_004_44bf:
    ld [$c7c2], a
    ld a, e
    sub $00
    ld [$c7c4], a
    cp $0d
    jr c, jr_004_44d4

    ld hl, $c9dc
    ld bc, $ffe0
    jr jr_004_44da

jr_004_44d4:
    ld hl, $c83c
    ld bc, $0020

jr_004_44da:
    add $20
    ld e, a
    adc $47
    sub e
    ld d, a
    ld a, [de]
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    push hl
    push bc
    ld a, [$c7c4]
    and $01
    add a
    add a
    ld c, a
    add a
    add c
    add $06
    add $4b
    ld e, a
    adc $47
    sub e
    ld d, a
    ld a, [$5ef8]
    ld c, a
    ld a, [$5ef9]
    ld b, a
    ld hl, $c7c5
    ld a, $06

jr_004_4509:
    ld [$c7c4], a
    push bc
    ld a, [de]
    inc de
    add c
    ld c, a
    adc b
    sub c
    ld b, a
    ld a, [bc]
    ld [hl+], a
    pop bc
    ld a, [$c7c4]
    dec a
    jr nz, jr_004_4509

    pop bc
    pop hl
    ld a, [$c7c2]
    ld d, a
    ld a, [$c7c5]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_4550

    ld a, [$c7c6]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_4550

    ld a, [$c7c7]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_4550

    ld a, [$c7c8]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_4550

    ld a, [$c7c9]
    ld [hl], a
    add hl, bc
    dec d
    jr z, jr_004_4550

    ld a, [$c7ca]
    ld [hl], a
    add hl, bc

jr_004_4550:
    pop hl
    pop de
    pop bc
    ret


Call_004_4554:
    push bc
    push de
    push hl
    ld a, l
    sub $00
    add a
    add a
    add $63
    ld l, a
    adc $47
    sub l
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld a, [$5efa]
    add [hl]
    ld l, a
    ld a, [$5efb]
    adc $00
    ld h, a
    ld b, $06

jr_004_4574:
    ld a, [hl+]
    ld [de], a
    inc hl
    inc hl
    inc hl
    ld a, e
    add $20
    ld e, a
    adc d
    sub e
    ld d, a
    dec b
    jr nz, jr_004_4574

    pop hl
    pop de
    pop bc
    ret


Call_004_4587:
    ld a, [$c500]
    or a
    jr z, jr_004_45a0

    ld b, a
    ld hl, $5f10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, [hl]
    ld hl, $c9fc
    ld de, $ffe0

jr_004_459b:
    ld [hl], c
    add hl, de
    dec b
    jr nz, jr_004_459b

jr_004_45a0:
    ld a, [$c500]
    ld b, a
    ld a, $0f
    sub b
    ret z

    ld b, a
    ld hl, $5f10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld c, [hl]
    ld hl, $c83c
    ld de, $0020

jr_004_45b8:
    ld [hl], c
    add hl, de
    dec b
    jr nz, jr_004_45b8

    ret


Call_004_45be:
    ld a, [$c600]
    or a
    jr z, jr_004_45d8

    ld b, a
    ld hl, $5f10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld c, [hl]
    ld hl, $c9fd
    ld de, $ffe0

jr_004_45d3:
    ld [hl], c
    add hl, de
    dec b
    jr nz, jr_004_45d3

jr_004_45d8:
    ld a, [$c600]
    ld b, a
    ld a, $0f
    sub b
    ret z

    ld b, a
    ld hl, $5f10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld c, [hl]
    ld hl, $c83d
    ld de, $0020

jr_004_45f0:
    ld [hl], c
    add hl, de
    dec b
    jr nz, jr_004_45f0

    ret


Call_004_45f6:
    ld a, [$c519]
    or a
    jr z, jr_004_4621

    cp $06
    jr c, jr_004_4602

    ld a, $05

jr_004_4602:
    ld b, a
    ld hl, $5ef8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $000c
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c9c5

jr_004_4613:
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, l
    sub $21
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    dec b
    jr nz, jr_004_4613

jr_004_4621:
    ld a, [$c519]
    cp $06
    jr c, jr_004_462a

    ld a, $05

jr_004_462a:
    ld b, a
    ld a, $05
    sub b
    ret z

    ld b, a
    ld hl, $5ef8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0010
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c945

jr_004_4640:
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, l
    add $1f
    ld l, a
    adc h
    sub l
    ld h, a
    dec b
    jr nz, jr_004_4640

    ret


Call_004_464e:
    ld a, [$c619]
    or a
    jr z, jr_004_4678

    cp $06
    jr c, jr_004_465a

    ld a, $05

jr_004_465a:
    ld b, a
    ld hl, $5ef8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $000e
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c865

jr_004_466b:
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, l
    add $1f
    ld l, a
    adc h
    sub l
    ld h, a
    dec b
    jr nz, jr_004_466b

jr_004_4678:
    ld a, [$c619]
    cp $06
    jr c, jr_004_4681

    ld a, $05

jr_004_4681:
    ld b, a
    ld a, $05
    sub b
    ret z

    ld b, a
    ld hl, $5ef8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0010
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c8e5

jr_004_4697:
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, l
    sub $21
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    dec b
    jr nz, jr_004_4697

    ret


Call_004_46a6:
    ld a, [$c70d]
    add a
    add $12
    ld l, a
    adc $5f
    sub l
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c7dd
    ld bc, $001f
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ret


Call_004_46c7:
    ld hl, $5f1e
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $001c
    add hl, de
    ld a, [hl]
    ld hl, $c8ff
    ld b, $06

jr_004_46d7:
    ld [hl+], a
    dec b
    jr nz, jr_004_46d7

    ld hl, $c907
    ld b, $06

jr_004_46e0:
    ld [hl+], a
    dec b
    jr nz, jr_004_46e0

    ld hl, $c91f
    ld b, $06

jr_004_46e9:
    ld [hl+], a
    dec b
    jr nz, jr_004_46e9

    ld hl, $c927
    ld b, $06

jr_004_46f2:
    ld [hl+], a
    dec b
    jr nz, jr_004_46f2

    push de
    ld hl, $c845
    ld b, $0e

jr_004_46fc:
    ld a, [de]
    ld [hl], a
    inc de
    inc de
    ld a, l
    add $20
    ld l, a
    adc h
    sub l
    ld h, a
    dec b
    jr nz, jr_004_46fc

    pop de
    inc de
    ld hl, $c846
    ld b, $0e

jr_004_4711:
    ld a, [de]
    ld [hl], a
    inc de
    inc de
    ld a, l
    add $20
    ld l, a
    adc h
    sub l
    ld h, a
    dec b
    jr nz, jr_004_4711

    ret


    nop
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0c0b], sp
    dec c
    ld c, $0f
    db $10
    db $10
    rrca
    ld c, $0d
    inc c
    dec bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld bc, $0301
    inc bc
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld [$0a08], sp
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    call c, Call_000_00c7
    nop
    ccf
    ret


    nop
    nop
    ld b, b
    ret


    ld bc, $4100
    ret


    nop
    nop
    ld b, d
    ret


    ld bc, $4300
    ret


    nop
    nop
    ld b, h
    ret


    ld bc, $4700
    ret


    nop
    nop
    ld c, b
    ret


    ld bc, $4900
    ret


    nop
    nop
    ld c, d
    ret


    ld bc, $4b00
    ret


    nop
    nop
    ld c, h
    ret


    ld bc, $4c00
    ret z

    inc bc
    nop
    ld c, e
    ret z

    ld [bc], a
    nop
    ld c, d
    ret z

    inc bc
    nop
    ld c, c
    ret z

    ld [bc], a
    nop
    ld c, b
    ret z

    inc bc
    nop
    ld b, a
    ret z

    ld [bc], a
    nop
    ld b, h
    ret z

    inc bc
    nop
    ld b, e
    ret z

    ld [bc], a
    nop
    ld b, d
    ret z

    inc bc
    nop
    ld b, c
    ret z

    ld [bc], a
    nop
    ld b, b
    ret z

    inc bc
    nop
    ccf
    ret z

    ld [bc], a
    nop
    call Call_000_147f
    ld a, $01
    ld [$c713], a
    ld [$cc62], a
    xor a
    ld [$c714], a
    ld [$c715], a
    ld [$c716], a
    ld [$c717], a
    ld [$c718], a
    ld [$c7da], a
    ld b, $31

jr_004_47e7:
    push bc
    call Call_004_4805
    pop bc
    dec b
    jr nz, jr_004_47e7

    xor a
    ld [$c713], a
    call Call_004_4805
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    dec a
    ld [$c00b], a
    ret


Call_004_4805:
    rst $18
    ld a, [$c3ae]
    or a
    jr z, jr_004_4821

    ld a, [$c3ad]
    and $01
    jr z, jr_004_481e

    call Call_004_4821
    ld a, $01
    ld [$c7da], a
    jp Jump_000_0c5a


jr_004_481e:
    call Call_000_0c5a

Call_004_4821:
jr_004_4821:
    ld a, [$c3ae]
    or a
    jr z, jr_004_483a

    ld a, [$c3ad]
    and $01
    jr nz, jr_004_483a

jr_004_482e:
    ld a, [$c7d9]
    or a
    jr nz, jr_004_4871

    rst $18
    call Call_000_0c5a
    jr jr_004_482e

jr_004_483a:
    xor a
    ld [$c714], a
    ld [$c717], a
    call Call_000_0a01
    and $07
    ld c, a

jr_004_4847:
    call Call_000_0a01
    and $07
    cp $06
    jr nc, jr_004_4847

    inc a
    ld [$c715], a

jr_004_4854:
    call Call_000_0a01
    and $07
    cp $06
    jr nc, jr_004_4854

    inc a
    ld [$c716], a
    ld b, a
    ld a, [$c715]
    cp b
    jr nz, jr_004_4871

    dec c
    jr nz, jr_004_4847

    ld [$c714], a
    ld [$c717], a

Call_004_4871:
jr_004_4871:
    ld a, [$c716]
    ld b, a
    ld a, [$c715]
    cp b
    jr z, jr_004_4884

    jr c, jr_004_4884

    ld [$c716], a
    ld a, b
    ld [$c715], a

jr_004_4884:
    ld hl, $5f10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl]
    ld hl, $c7e2
    ld [hl+], a
    ld [hl], a
    ld hl, $c802
    ld [hl+], a
    ld [hl], a
    ld hl, $c7e8
    ld [hl+], a
    ld [hl], a
    ld hl, $c808
    ld [hl+], a
    ld [hl], a
    ld a, [$c713]
    or a
    jr z, jr_004_48bb

    cp $01
    jr z, jr_004_48b3

    ld hl, $c7e5
    ld de, $c715
    jr jr_004_48c1

jr_004_48b3:
    ld hl, $c7e4
    ld de, $c715
    jr jr_004_48c1

jr_004_48bb:
    ld hl, $c7e2
    ld de, $c714

jr_004_48c1:
    ld a, [de]
    or a
    jr nz, jr_004_48c9

    inc hl
    inc hl
    jr jr_004_48ed

jr_004_48c9:
    push de
    dec a
    add a
    add $fc
    ld e, a
    adc $5e
    sub e
    ld d, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld d, a
    ld e, c
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld bc, $001f
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld bc, $ffe1
    add hl, bc
    pop de

jr_004_48ed:
    inc de
    ld b, $04
    ld a, [$c713]
    or a
    jr z, jr_004_4900

    cp $01
    jr z, jr_004_48fe

    ld b, $02
    jr jr_004_4900

jr_004_48fe:
    ld b, $03

jr_004_4900:
    ld a, e
    sub $14
    cp b
    jr c, jr_004_48c1

    ret


Call_004_4907:
Jump_004_4907:
    xor a
    ld [$c714], a
    ld [$c715], a
    ld [$c716], a
    ld [$c717], a
    ld [$c7da], a
    ld [$c7d9], a
    ld a, $01
    ld [$cc62], a
    ld a, [$c3ae]
    or a
    ld a, $04
    call Call_004_53d3
    ld a, $02
    ld [$c713], a
    ld b, $31

jr_004_492f:
    push bc
    call Call_004_4805
    pop bc
    dec b
    jr nz, jr_004_492f

    ld a, [$c715]
    ld [$cc67], a
    ld a, [$c3ae]
    or a
    jr z, jr_004_494a

    ld a, [$c3ad]
    and $01
    jr z, jr_004_4950

jr_004_494a:
    ld b, $3c

jr_004_494c:
    rst $18
    dec b
    jr nz, jr_004_494c

jr_004_4950:
    ld a, $05
    call Call_004_53d3
    ld b, $31

jr_004_4957:
    push bc
    call Call_004_4805
    pop bc
    dec b
    jr nz, jr_004_4957

    ld a, [$cc67]
    ld b, a
    ld a, [$c715]
    cp b
    jr z, jr_004_4950

    push af
    ld a, [$c3ae]
    or a
    jr z, jr_004_4977

    ld a, [$c3ad]
    and $01
    jr z, jr_004_497d

jr_004_4977:
    ld b, $3c

jr_004_4979:
    rst $18
    dec b
    jr nz, jr_004_4979

jr_004_497d:
    pop af
    ld b, a
    ld a, [$cc67]
    cp b
    jp z, Jump_004_4907

    jr nc, jr_004_498c

    ld a, $01
    jr jr_004_498d

jr_004_498c:
    xor a

jr_004_498d:
    ld [$c3a1], a
    call Call_004_53d3
    ld a, $02
    ld [$c70f], a
    ld hl, $5f10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl]
    ld hl, $c7e5
    ld [hl+], a
    ld [hl], a
    ld hl, $c805
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c713], a
    ld [$c310], a
    call Call_000_0d56
    ret


Call_004_49b6:
    ld a, [$c3b0]
    ld b, a
    ld a, [$c310]
    or b
    cp $04
    ret nz

    ld a, $01
    ld [$c71f], a
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
    jr nz, jr_004_49ea

    ld a, [$c3a2]
    or a
    jr nz, jr_004_4a12

jr_004_49ea:
    ld hl, $4a3c
    ld de, $c87f
    ld b, $03
    ld a, $2c
    ld c, $58
    call Call_004_4b7d
    push af
    or a
    call nz, Call_004_43d3
    pop af
    call nc, Call_004_4a09

jr_004_4a02:
    xor a
    ld [$c71f], a
    jp Jump_004_43d3


Call_004_4a09:
    rst $28
    sbc e
    ld c, h
    ld d, e
    ld c, l
    ld sp, $634e
    ld c, a

jr_004_4a12:
    ld hl, $4aba
    ld de, $c85f
    ld b, $03
    ld a, $24
    ld c, $68
    call Call_004_4b7d
    push af
    or a
    jr z, jr_004_4a29

    rst $18
    call Call_004_43d3

jr_004_4a29:
    pop af
    call nc, Call_004_4a2f
    jr jr_004_4a02

Call_004_4a2f:
    rst $28
    sbc e
    ld c, h
    add hl, sp
    ld c, l
    ld d, e
    ld c, l
    ld sp, $644e
    ld c, [hl]
    ld h, e
    ld c, a
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
    ld b, $01
    ld [$2020], sp
    ld b, h
    ld c, a
    ld d, l
    ld b, d
    ld c, h
    ld b, l
    jr nz, @+$22

    jr nz, jr_004_4a60

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_4a60:
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_004_4aab

    ld d, l
    ld d, h
    ld c, a
    jr nz, jr_004_4ac1

    ld c, a
    ld c, h
    ld c, h
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
    add hl, bc
    ld bc, $2008
    jr nz, @+$54

    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, @+$22

    jr nz, jr_004_4aae

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
    add hl, bc
    ld bc, $2008
    jr nz, @+$4f

    ld d, l
    ld d, e
    ld c, c
    ld b, e
    jr nz, @+$22

    jr nz, @+$22

    add hl, bc

jr_004_4aab:
    ld bc, $0b0a

jr_004_4aae:
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
    inc c
    nop
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_004_4ac1:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $01
    ld [$2020], sp
    ld b, h
    ld c, a
    ld d, l
    ld b, d
    ld c, h
    ld b, l
    jr nz, jr_004_4af4

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
    jr nz, jr_004_4b3e

    ld d, a
    ld b, c
    ld d, b
    jr nz, jr_004_4b43

    ld c, c
    ld b, h
    ld b, l
    ld d, e

jr_004_4af4:
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
    jr nz, jr_004_4b4a

    ld d, l
    ld d, h
    ld c, a
    jr nz, @+$54

    ld c, a
    ld c, h
    ld c, h
    jr nz, jr_004_4b1c

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_4b1c:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_004_4b79

    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_004_4b4d

    jr nz, jr_004_4b4f

    jr nz, jr_004_4b3a

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_4b3a:
    rlca
    rlca
    rlca
    rlca

jr_004_4b3e:
    rlca
    add hl, bc
    ld bc, $2008

jr_004_4b43:
    jr nz, @+$46

    ld c, c
    ld b, [hl]
    ld b, [hl]
    ld c, c
    ld b, e

jr_004_4b4a:
    ld d, l
    ld c, h
    ld d, h

jr_004_4b4d:
    ld e, c
    add hl, bc

jr_004_4b4f:
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
    jr nz, jr_004_4bb0

    ld d, l
    ld d, e
    ld c, c
    ld b, e
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_004_4b76

    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_004_4b76:
    dec bc
    dec bc
    dec bc

jr_004_4b79:
    dec bc
    dec bc
    inc c
    nop

Call_004_4b7d:
    ldh [$94], a
    ldh [$92], a
    ld a, c
    ldh [$95], a
    call Call_004_4bec
    xor a
    ldh [$93], a
    jr jr_004_4bc5

jr_004_4b8c:
    rst $18
    call Call_000_0df7
    cp $04
    jr z, jr_004_4bea

    ld a, b
    and $09
    jr nz, jr_004_4bdb

    ld a, b
    cp $40
    jr nz, jr_004_4bb0

    ldh a, [$94]
    ld b, a
    ldh a, [$92]
    cp b
    jr z, jr_004_4bb0

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_004_4bc5

jr_004_4bb0:
    ld a, b
    cp $80
    jr nz, jr_004_4bca

    ldh a, [$95]
    ld b, a
    ldh a, [$92]
    cp b
    jr nc, jr_004_4bca

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_004_4bc5:
    ld a, $87
    ld [$c3ba], a

jr_004_4bca:
    ld b, $1c
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $0d
    call Call_000_13c9
    call Call_000_147f
    jr jr_004_4b8c

jr_004_4bdb:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    ret


jr_004_4bea:
    scf
    ret


Call_004_4bec:
    di
    ld a, $20
    add b
    ld b, a

jr_004_4bf1:
    ld a, [hl+]
    or a
    jr nz, jr_004_4bf7

    ei
    ret


jr_004_4bf7:
    cp $01
    jr nz, jr_004_4c15

    ld a, e
    sub $dc
    ld e, a
    ld a, d
    sbc $c7
    ld d, a
    ld a, e
    and $e0
    add b
    ld e, a
    jr nc, jr_004_4c0b

    inc d

jr_004_4c0b:
    ld a, e
    add $dc
    ld e, a
    ld a, d
    adc $c7
    ld d, a
    jr jr_004_4bf1

jr_004_4c15:
    cp $20
    jr nz, jr_004_4c1d

    ld a, $07
    jr jr_004_4c29

jr_004_4c1d:
    jr c, jr_004_4c29

    cp $3a
    jr nc, jr_004_4c27

    sub $d2
    jr jr_004_4c29

jr_004_4c27:
    sub $06

jr_004_4c29:
    ld c, a
    ld a, c
    ld [de], a
    inc de
    jr jr_004_4bf1

Call_004_4c2f:
    ld a, [$c7c0]
    or a
    ret z

    ld hl, $4c50
    ld de, $c87f
    ld b, $03
    call Call_004_4bec

jr_004_4c3f:
    rst $18
    call Call_000_147f
    call Call_000_0df7
    jr z, jr_004_4c3f

    ld a, $87
    ld [$c3ba], a
    jp Jump_004_504a


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
    ld [$2041], sp
    jr nz, jr_004_4cb8

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$44

    ld b, c
    ld b, e
    ld c, e
    add hl, bc
    ld bc, $4208
    jr nz, jr_004_4c92

    ld d, l
    ld c, [hl]
    ld b, h
    ld c, a
    jr nz, jr_004_4c98

    jr nz, jr_004_4c9a

    jr nz, jr_004_4c85

    ld bc, $5308
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_004_4cd9

jr_004_4c85:
    ld c, a
    jr nz, @+$47

    ld c, [hl]
    ld b, h
    add hl, bc
    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc

jr_004_4c92:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_004_4c98:
    dec bc
    inc c

jr_004_4c9a:
    nop
    ld a, [$c708]
    or a
    jr nz, jr_004_4cbf

    call Call_000_147f
    ld a, [$c70c]
    or a
    jr z, jr_004_4cb1

    ld a, [$c70d]
    cp $05
    jr z, jr_004_4cbf

jr_004_4cb1:
    ld a, [$c70f]
    cp $02
    jr z, jr_004_4ce1

jr_004_4cb8:
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_004_4ce1

jr_004_4cbf:
    ld a, $84
    ld [$c3ba], a

jr_004_4cc4:
    rst $18
    ld b, $1c
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $0d
    call Call_000_13c9
    call Call_000_147f
    call Call_000_0df7
    jr z, jr_004_4cc4

jr_004_4cd9:
    ld a, $80
    ld [$c3ba], a
    jp Jump_004_43d3


jr_004_4ce1:
    ld a, $87
    ld [$c3ba], a
    call Call_004_43d3
    ld a, [$c3a2]
    or a
    jr z, jr_004_4cf9

    ld b, $05
    ld hl, $5935
    call Call_000_09de
    jr jr_004_4d10

jr_004_4cf9:
    ld a, [$c3a1]
    add $0c
    ld c, $ff
    call Call_004_5490
    or a
    jr nz, jr_004_4d10

    ld a, [$c3a1]
    or a
    jp z, Jump_004_5349

    jp Jump_004_5345


jr_004_4d10:
    ld a, [$c70c]
    or a
    jr nz, jr_004_4d26

    ld [$c70d], a
    inc a
    ld [$c70c], a
    ld a, [$c3a1]
    xor $01
    ld [$c70f], a
    ret


jr_004_4d26:
    ld a, [$c70d]
    cp $05
    ret z

    inc a
    ld [$c70d], a
    ld a, [$c3a1]
    xor $01
    ld [$c70f], a
    ret


    ld a, [$c708]
    or a
    jr nz, jr_004_4d4d

    ld a, $87
    ld [$c3ba], a
    ld a, [$c3a3]
    xor $01
    ld [$c3a3], a
    ret


jr_004_4d4d:
    ld a, $86
    ld [$c3ba], a
    ret


    ld hl, $4ddd
    ld de, $c8a0
    ld b, $04
    call Call_004_4bec
    ld a, [$c709]
    or a
    jr z, jr_004_4d6d

    ld a, $46
    ldh [$92], a
    xor a
    ldh [$93], a
    jr jr_004_4db0

jr_004_4d6d:
    ld a, $56
    ldh [$92], a
    ld a, $01
    ldh [$93], a
    jr jr_004_4db0

jr_004_4d77:
    rst $18
    call Call_000_0df7
    cp $04
    ret z

    ld a, b
    and $09
    jr nz, jr_004_4dc1

    ld a, b
    cp $40
    jr nz, jr_004_4d98

    ldh a, [$92]
    cp $46
    jr z, jr_004_4d98

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_004_4dab

jr_004_4d98:
    ld a, b
    cp $80
    jr nz, jr_004_4db0

    ldh a, [$92]
    cp $56
    jr nc, jr_004_4db0

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_004_4dab:
    ld a, $87
    ld [$c3ba], a

jr_004_4db0:
    ld b, $34
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $0d
    call Call_000_13c9
    call Call_000_147f
    jr jr_004_4d77

jr_004_4dc1:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    or a
    jr nz, jr_004_4dd8

    ld a, $01
    ld [$c709], a
    ret


jr_004_4dd8:
    xor a
    ld [$c709], a
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
    ld b, $01
    ld [$5541], sp
    ld d, h
    ld c, a
    jr nz, @+$54

    ld c, a
    ld c, h
    ld c, h
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
    add hl, bc
    ld bc, $2008
    jr nz, @+$22

    jr nz, @+$51

    ld c, [hl]
    jr nz, jr_004_4e2a

    jr nz, jr_004_4e15

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_4e15:
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_004_4e3d

    jr nz, @+$51

    ld b, [hl]
    ld b, [hl]
    jr nz, jr_004_4e43

    add hl, bc
    ld bc, $0b0a
    dec bc
    dec bc
    dec bc

jr_004_4e2a:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    nop

Jump_004_4e31:
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld a, $80

jr_004_4e3d:
    ld [$c3bb], a
    call Call_000_0b26

jr_004_4e43:
    ld a, [$c3ae]
    or a
    jr z, jr_004_4e54

    ld a, [$c3ad]
    and $01
    jr z, jr_004_4e54

    xor a
    call Call_000_0d56

jr_004_4e54:
    xor a
    ld [$c3af], a
    ld a, [$c39a]
    or a
    jr nz, jr_004_4e54

    call Call_000_0c49
    jp Jump_000_0070


Call_004_4e64:
    ld hl, $4ee1
    ld de, $c880
    ld b, $04
    call Call_004_4bec
    ld a, [$c7d8]
    sub $01
    swap a
    add $44
    ldh [$92], a
    ld a, [$c7d8]
    sub $01
    ldh [$93], a
    jr jr_004_4ebc

jr_004_4e83:
    rst $18
    call Call_000_0df7
    cp $04
    ret z

    ld a, b
    and $09
    jr nz, jr_004_4ecd

    ld a, b
    cp $40
    jr nz, jr_004_4ea4

    ldh a, [$92]
    cp $44
    jr z, jr_004_4ea4

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_004_4eb7

jr_004_4ea4:
    ld a, b
    cp $80
    jr nz, jr_004_4ebc

    ldh a, [$92]
    cp $64
    jr nc, jr_004_4ebc

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_004_4eb7:
    ld a, $87
    ld [$c3ba], a

jr_004_4ebc:
    ld b, $38
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $0d
    call Call_000_13c9
    call Call_000_147f
    jr jr_004_4e83

jr_004_4ecd:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    add $01
    ld [$c7d8], a
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
    ld b, $01
    ld [$4142], sp
    ld b, e
    ld c, e
    ld b, a
    ld b, c
    ld c, l
    ld c, l
    ld c, a
    ld c, [hl]
    add hl, bc
    ld bc, $2008
    jr nz, @+$22

    ld d, e
    ld c, e
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_004_4f26

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
    add hl, bc
    ld bc, $2008
    jr nz, @+$22

    jr nz, jr_004_4f3b

    ld sp, $2020
    jr nz, jr_004_4f40

    add hl, bc
    ld bc, $0708
    rlca
    rlca

jr_004_4f26:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, @+$22

    jr nz, jr_004_4f55

    ld [hl-], a
    jr nz, jr_004_4f58

    jr nz, jr_004_4f5a

    add hl, bc

jr_004_4f3b:
    ld bc, $0708
    rlca
    rlca

jr_004_4f40:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, @+$22

    jr nz, @+$22

    inc sp
    jr nz, jr_004_4f72

    jr nz, jr_004_4f74

    add hl, bc

jr_004_4f55:
    ld bc, $0b0a

jr_004_4f58:
    dec bc
    dec bc

jr_004_4f5a:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    nop
    ld hl, $4fe8
    ld de, $c89f
    ld b, $03
    call Call_004_4bec
    ld a, $56
    ldh [$92], a

jr_004_4f72:
    ld a, $02

jr_004_4f74:
    ldh [$93], a
    jr jr_004_4fb1

jr_004_4f78:
    rst $18
    call Call_000_0df7
    cp $04
    ret z

    ld a, b
    and $09
    jr nz, jr_004_4fc2

    ld a, b
    cp $40
    jr nz, jr_004_4f99

    ldh a, [$92]
    cp $36
    jr z, jr_004_4f99

    sub $10
    ldh [$92], a
    ld hl, $ff93
    dec [hl]
    jr jr_004_4fac

jr_004_4f99:
    ld a, b
    cp $80
    jr nz, jr_004_4fb1

    ldh a, [$92]
    cp $56
    jr nc, jr_004_4fb1

    add $10
    ldh [$92], a
    ld hl, $ff93
    inc [hl]

jr_004_4fac:
    ld a, $87
    ld [$c3ba], a

jr_004_4fb1:
    ld b, $1c
    ldh a, [$92]
    ld c, a
    ld d, $00
    ld a, $0d
    call Call_000_13c9
    call Call_000_147f
    jr jr_004_4f78

jr_004_4fc2:
    xor a
    ld [$c310], a
    ld [$c3b0], a
    ld a, $87
    ld [$c3ba], a
    ldh a, [$93]
    or a
    jr nz, jr_004_4fd9

    ld a, $82
    ld [$c3bb], a
    ret


jr_004_4fd9:
    dec a
    jr nz, jr_004_4fe2

    ld a, $81
    ld [$c3bb], a
    ret


jr_004_4fe2:
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
    ld b, $01
    ld [$2020], sp
    jr nz, @+$56

    ld c, b
    ld b, l
    ld c, l
    ld b, l
    jr nz, jr_004_5032

    jr nz, jr_004_500c

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_500c:
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_004_5036

    ld d, h
    ld c, b
    ld b, l
    ld c, l
    ld b, l
    jr nz, @+$34

    jr nz, jr_004_5028

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_5028:
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_004_507f

jr_004_5032:
    ld d, l
    ld d, e
    ld c, c
    ld b, e

jr_004_5036:
    jr nz, @+$51

    ld b, [hl]
    ld b, [hl]
    add hl, bc
    ld bc, $0b0a
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
    inc c
    nop

Jump_004_504a:
    xor a
    ld [$c71f], a
    ld [$c3b5], a
    ld a, [$c70d]
    ld [$c70e], a
    ld a, [$c70f]
    ld [$c710], a

Jump_004_505d:
    call Call_004_43d3
    call Call_004_4871

Jump_004_5063:
jr_004_5063:
    rst $18
    call Call_000_147f
    call Call_000_0df7
    jr z, jr_004_5063

    ld a, [$c7d7]
    or a
    jr z, jr_004_5079

    ld a, [$c3b5]
    or a
    jp z, Jump_004_5109

jr_004_5079:
    ld a, b
    and $08
    jp z, Jump_004_5109

jr_004_507f:
    ld a, [$c7c1]
    and $01
    jr nz, jr_004_5063

    ld a, [$c7c1]
    ld [$c7c0], a
    ld a, [$c3b5]
    or a
    jr nz, jr_004_50a1

    ld a, [$c70e]
    ld [$c70d], a
    ld a, [$c710]
    ld [$c70f], a
    jp Jump_004_5205


jr_004_50a1:
    ld a, $01
    ld [$c708], a
    ld a, [$c3a2]
    or a
    ret z

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    ret z

    ld hl, $cc1c
    ld b, $40
    xor a

jr_004_50ba:
    ld [hl+], a
    dec b
    jr nz, jr_004_50ba

    ld a, [$c717]
    ld [$c718], a
    ld a, [$c714]
    ld [$c717], a
    ld a, [$c701]
    ld [$cc5f], a
    ld a, [$c702]
    ld [$cc60], a
    ld a, [$c3a3]
    or a
    jr z, jr_004_50f2

    ld a, $00
    ld [$cc4a], a
    ld a, $c6
    ld [$cc4b], a
    ld a, $00
    ld [$cc48], a
    ld a, $c5
    ld [$cc49], a
    jr jr_004_5106

jr_004_50f2:
    ld a, $00
    ld [$cc4a], a
    ld a, $c5
    ld [$cc4b], a
    ld a, $00
    ld [$cc48], a
    ld a, $c6
    ld [$cc49], a

jr_004_5106:
    jp Jump_000_147f


Jump_004_5109:
    ld a, b
    and $01
    jp nz, Jump_004_5225

    ld a, b
    and $02
    jp z, Jump_004_5063

    ld a, [$c7c0]
    ld b, a
    ld a, [$c7c1]
    cp b
    jp z, Jump_004_5063

    ld a, [$c3b5]
    or a
    jp z, Jump_004_5063

    dec a
    ld [$c3b5], a
    ld a, [$c7c1]
    inc a
    ld [$c7c1], a
    ld a, $87
    ld [$c3ba], a
    call Call_004_5205
    ld a, [$c7c1]
    dec a
    ld l, a
    add a
    add a
    add l
    add $20
    ld l, a
    adc $c7
    sub l
    ld h, a
    ld a, [hl+]
    ld b, a
    ld de, $c500
    ld a, b
    rlca
    and $01
    ld [$c3a1], a
    jr z, jr_004_515a

    ld de, $c600

jr_004_515a:
    ld a, b
    and $1f
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, [de]
    dec a
    ld [de], a
    ld a, e
    sub [hl]
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    ld e, [hl]
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and $07
    ld [$c70d], a
    ld a, [hl]
    rlca
    rlca
    and $03
    ld [$c70f], a
    ld a, [$c7c1]
    dec a
    ld c, a
    add a
    add a
    add c
    add $20
    ld l, a
    adc $c7
    sub l
    ld h, a
    ld a, [hl+]
    ld b, a
    rlca
    and $01
    ld [$c3a1], a
    inc hl
    ld a, [hl]
    and $0f
    ld [$c714], a
    ld a, [hl+]
    swap a
    and $0f
    ld [$c715], a
    ld a, [hl]
    and $0f
    ld [$c716], a
    ld a, [hl+]
    swap a
    and $0f
    ld [$c717], a
    ld a, [hl]
    and $7f
    ld [$c70d], a
    ld a, [hl]
    rlca
    rlca
    and $03
    ld [$c70f], a
    bit 6, b
    jr z, jr_004_51ed

    ld a, b
    and $1f
    ld c, a
    ld a, $19
    sub c
    add e
    ld e, a
    ld hl, $c600
    ld a, [$c3a1]
    or a
    jr z, jr_004_51dc

    ld hl, $c500

jr_004_51dc:
    ld a, l
    add e
    ld c, a
    adc h
    sub c
    ld b, a
    ld a, [bc]
    dec a
    ld [bc], a
    ld a, l
    add $19
    ld l, a
    adc h
    sub l
    ld h, a
    inc [hl]

jr_004_51ed:
    ld a, [$c7c1]
    and $01
    jr nz, jr_004_51fc

    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a

jr_004_51fc:
    ld a, [$c3a1]
    call Call_004_53d3
    jp Jump_004_505d


Call_004_5205:
Jump_004_5205:
    ld b, $05
    ld hl, $4399
    call Call_000_09de
    ld b, $05
    ld hl, $43aa
    call Call_000_09de
    ld b, $05
    ld hl, $43bb
    call Call_000_09de
    ld b, $05
    ld hl, $43cc
    jp Jump_000_09de


Jump_004_5225:
    ld a, [$c7c1]
    or a
    jp z, Jump_004_5063

    dec a
    ld [$c7c1], a
    ld b, a
    ld a, [$c3b5]
    inc a
    ld [$c3b5], a
    ld a, $87
    ld [$c3ba], a
    ld a, b
    add a
    add a
    add b
    add $20
    ld l, a
    adc $c7
    sub l
    ld h, a
    ld a, [hl+]
    ld b, a
    ld de, $c500
    rlca
    and $01
    ld [$c3a1], a
    jr z, jr_004_5258

    ld de, $c600

jr_004_5258:
    ld a, b
    and $1f
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    ld a, e
    sub [hl]
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ld a, [de]
    dec a
    ld [de], a
    ld e, [hl]
    inc hl
    ld a, [hl]
    and $0f
    ld [$c714], a
    ld a, [hl+]
    swap a
    and $0f
    ld [$c715], a
    ld a, [hl]
    and $0f
    ld [$c716], a
    ld a, [hl+]
    swap a
    and $0f
    ld [$c717], a
    ld a, [hl]
    and $07
    ld [$c70d], a
    ld a, [hl]
    rlca
    rlca
    and $03
    ld [$c70f], a
    bit 6, b
    jr z, jr_004_52c3

    ld a, b
    and $1f
    ld c, a
    ld a, $19
    sub c
    add e
    ld e, a
    ld hl, $c600
    ld a, [$c3a1]
    or a
    jr z, jr_004_52b2

    ld hl, $c500

jr_004_52b2:
    ld a, l
    add e
    ld c, a
    adc h
    sub c
    ld b, a
    ld a, [bc]
    inc a
    ld [bc], a
    ld a, l
    add $19
    ld l, a
    adc h
    sub l
    ld h, a
    dec [hl]

jr_004_52c3:
    ld a, [$c3a1]
    call Call_004_53d3
    jp Jump_004_505d


Jump_004_52cc:
jr_004_52cc:
    rst $18
    call Call_004_52f2
    call Call_000_0c5a
    call Call_004_59f6
    ld b, $05
    ld hl, $4000
    call Call_000_09de
    call Call_004_49b6
    call Call_004_52f7
    call Call_004_5b71
    call Call_004_59cf
    call Call_000_147f
    call Call_004_5306
    jr jr_004_52cc

Call_004_52f2:
    xor a
    ld [$cc62], a
    ret


Call_004_52f7:
    ld a, [$c708]
    or a
    ret z

    ld a, [$c70b]
    or a
    ret nz

    inc a
    ld [$c70b], a
    ret


Call_004_5306:
    ld a, [$c3a2]
    or a
    jr nz, jr_004_5321

    ld a, [$c3ae]
    or a
    jr nz, jr_004_5321

    ld a, [$c500]
    cp $0f
    jr z, jr_004_5349

    ld a, [$c600]
    cp $0f
    jr z, jr_004_5345

    ret


jr_004_5321:
    ld a, [$c3a3]
    or a
    jr z, jr_004_5336

    ld a, [$c600]
    cp $0f
    jr z, jr_004_534d

    ld a, [$c500]
    cp $0f
    jr z, jr_004_5351

    ret


jr_004_5336:
    ld a, [$c500]
    cp $0f
    jr z, jr_004_534d

    ld a, [$c600]
    cp $0f
    jr z, jr_004_5351

    ret


Jump_004_5345:
jr_004_5345:
    ld a, $02
    jr jr_004_5353

Jump_004_5349:
jr_004_5349:
    ld a, $01
    jr jr_004_5353

jr_004_534d:
    ld a, $04
    jr jr_004_5353

jr_004_5351:
    ld a, $03

jr_004_5353:
    ld [$cc61], a
    ld b, $05
    ld hl, $0005
    call Call_000_09de
    ld b, $05
    ld hl, $0005
    call Call_000_09de
    ld b, $05
    ld hl, $0005
    call Call_000_09de
    ld b, $05
    ld hl, $0005
    call Call_000_09de
    ld a, [$c3a2]
    or a
    jr z, jr_004_5382

    ld a, [$c3a3]
    ld [$c3a1], a

jr_004_5382:
    ld a, $01
    ld [$c7d7], a
    ld [$c019], a
    ld a, [$cc61]
    ld c, $00
    call Call_004_5490
    jr jr_004_53ae

    ld a, [$c7d7]
    cp $04
    jr nz, jr_004_53ae

    ld a, $01
    ld [$c71f], a
    xor a
    ld [$c7d7], a
    ld [$c019], a
    call Call_004_43d3
    call Call_004_4c2f
    ret


jr_004_53ae:
    call Call_004_43d3
    xor a
    ld [$c314], a
    call Call_004_5bc4
    call Call_000_0b26

jr_004_53bb:
    ld a, [$c39a]
    or a
    jr nz, jr_004_53bb

    jp Jump_004_4e31


    rlca
    add $f4
    ld c, a
    ld a, $5e

jr_004_53ca:
    adc $00
    ld b, a
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    ld d, a
    ret


Call_004_53d3:
    add a
    add $f4
    ld l, a
    adc $53
    sub l
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c82e

jr_004_53e1:
    ld a, [de]
    inc de
    ld c, a
    and $7f
    call $5454
    ld b, a
    ld [hl], b
    bit 7, c
    ret nz

    ld bc, $0020
    add hl, bc
    jr jr_004_53e1

    nop
    ld d, h
    ld c, $54
    inc e
    ld d, h
    ld a, [hl+]
    ld d, h
    jr c, jr_004_5452

    ld b, [hl]
    ld d, h
    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, @+$56

    ld c, a
    jr nz, jr_004_545a

    ld c, h
    ld b, c
    ld e, c
    and b
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, @+$56

    ld c, a
    jr nz, jr_004_5468

    ld c, h
    ld b, c
    ld e, c
    and b
    jr nz, jr_004_543e

    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld c, e
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_004_5448

    jr nz, jr_004_53ca

    jr nz, jr_004_544c

    jr nz, jr_004_544e

    ld d, d
    ld b, l
    ld b, c
    ld b, h
    ld e, c
    jr nz, jr_004_5455

    jr nz, jr_004_5457

    and b
    ld d, d
    ld c, a
    ld c, h
    ld c, h
    jr nz, jr_004_5484

jr_004_543e:
    ld c, a
    ld d, d
    jr nz, @+$59

    ld c, b
    ld c, c
    ld d, h
    push bc
    ld d, d
    ld c, a

jr_004_5448:
    ld c, h
    ld c, h
    jr nz, @+$48

jr_004_544c:
    ld c, a
    ld d, d

jr_004_544e:
    jr nz, @+$44

    ld c, h
    ld b, c

jr_004_5452:
    ld b, e
    set 7, [hl]

jr_004_5455:
    jr nc, jr_004_548f

jr_004_5457:
    ld a, [bc]
    cp $3a

jr_004_545a:
    jr nc, jr_004_5462

    sub $30
    add $65
    jr jr_004_5480

jr_004_5462:
    cp $21
    jr nz, jr_004_546a

    ld a, $6f

jr_004_5468:
    jr jr_004_5480

jr_004_546a:
    cp $2e
    jr nz, jr_004_5472

    ld a, $5b
    jr jr_004_5480

jr_004_5472:
    cp $20
    jr nz, jr_004_547a

    ld a, $5c
    jr jr_004_5480

jr_004_547a:
    cp $3f
    jr nz, jr_004_5480

    ld a, $70

jr_004_5480:
    push hl
    ld hl, $5f0c

jr_004_5484:
    sub $41
    add [hl]
    inc hl
    ld h, [hl]
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl]
    pop hl

jr_004_548f:
    ret


Call_004_5490:
    ld [$cc5c], a
    ld a, c
    ld [$cc5d], a
    ld a, [$c7d7]
    or a
    jr nz, jr_004_54ee

    ld a, [$c3ae]
    or a
    jr z, jr_004_54ee

    ld a, [$cc5c]
    cp $05
    jr nz, jr_004_54bb

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_004_54ee

    ld a, $0a
    ld [$cc5c], a
    jr jr_004_54ee

jr_004_54bb:
    ld a, [$cc5c]
    cp $09
    jr z, jr_004_54ee

    cp $12
    jr z, jr_004_54ee

    cp $13
    jr z, jr_004_54ee

    cp $0c
    jr z, jr_004_54d2

    cp $0d
    jr nz, jr_004_54e3

jr_004_54d2:
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr nz, jr_004_54ee

    ld a, $10
    ld [$cc5c], a
    jr jr_004_54ee

jr_004_54e3:
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jp nz, Jump_004_55dd

jr_004_54ee:
    ld a, [$cc5d]
    cp $fd
    jr nc, jr_004_54f8

    ld [$c3ba], a

jr_004_54f8:
    ld a, $01
    ld [$c71f], a
    ld a, [$cc5c]
    add a
    add $f2
    ld l, a
    ld a, $56
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
    ld a, $08
    sub b
    inc a
    ld e, a
    ld [$cc5e], a
    ld a, [$c702]
    and $f0
    rrca
    rrca
    rrca
    ld b, a
    ld a, b
    add c
    cp $0e
    jr nc, jr_004_552e

    add $02
    sub c
    jr jr_004_554d

jr_004_552e:
    sub c
    jr c, jr_004_5548

    ld d, a
    ld a, c
    cp $0d
    ld a, d
    jr c, jr_004_5540

    cp $0d
    jr c, jr_004_5548

    sub $0d
    jr jr_004_554d

jr_004_5540:
    cp $09
    jr c, jr_004_5548

    sub $07
    jr jr_004_554d

jr_004_5548:
    srl b
    ld a, $0d
    sub b

jr_004_554d:
    swap a
    add a
    ld d, $00
    jr nc, jr_004_5555

    inc d

jr_004_5555:
    add e
    adc $dc
    ld e, a
    ld a, d
    adc $c7
    ld d, a
    push de
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    di
    push bc
    ld a, $04
    ld [de], a
    inc de

jr_004_5568:
    ld a, $05
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5568

    ld a, $06
    ld [de], a
    pop bc
    call Call_004_56d0
    push bc

jr_004_5577:
    ld a, $08
    ld [de], a
    inc de
    push bc

jr_004_557c:
    ld a, $07
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_557c

    pop bc
    ld a, $09
    ld [de], a
    call Call_004_56d0
    dec c
    jr nz, jr_004_5577

    pop bc
    push bc
    ld a, $0a
    ld [de], a
    inc de

jr_004_5593:
    ld a, $0b
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5593

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
    ld a, [$cc5e]
    inc a
    ld [$cc5e], a

jr_004_55ad:
    ld a, [hl+]
    cp $3c
    jr z, jr_004_55bb

    call $5454
    ld b, a
    ld a, b
    ld [de], a
    inc de
    jr jr_004_55ad

jr_004_55bb:
    call Call_004_56d0
    dec c
    jr nz, jr_004_55ad

    ei
    ld a, [$c7d7]
    or a
    call z, Call_004_59cf
    call Call_000_147f
    ld a, [$c7d7]
    or a
    jr z, jr_004_55dd

    ld b, $1e

jr_004_55d4:
    push bc
    rst $18
    call Call_000_0c5a
    pop bc
    dec b
    jr nz, jr_004_55d4

Jump_004_55dd:
jr_004_55dd:
    ld a, [$cc5c]
    cp $12
    jr z, jr_004_5643

    cp $13
    jr z, jr_004_5643

    ld a, [$cc5d]
    cp $fd
    jr z, jr_004_561a

    rst $18
    ld a, [$c3a2]
    or a
    jp z, Jump_004_5679

    ld a, [$cc5d]
    cp $fe
    jr z, jr_004_5660

    cp $ff
    jr z, jr_004_5669

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_004_5679

    ld a, [$c7d7]
    or a
    jr z, jr_004_5660

    ld a, [$c3a3]
    ld [$c3a1], a
    jr jr_004_5679

jr_004_561a:
    ld a, [$c3ae]
    or a
    jr z, jr_004_565f

    ld a, [$c3ad]
    and $01
    jr nz, jr_004_565f

    xor a
    ld [$c310], a
    call Call_000_0d56
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr nz, jr_004_5638

jr_004_5638:
    rst $18
    call Call_004_56be
    xor a
    ld [$c310], a
    jp Jump_000_0d56


jr_004_5643:
    ld a, [$c3ae]
    or a
    jr z, jr_004_565f

    xor a

jr_004_564a:
    ld [$c3af], a
    ld a, [$c3a4]
    or a
    jr z, jr_004_564a

    xor a
    ld [$c3a4], a
    ld [$c310], a
    call Call_000_0d56
    jr jr_004_5660

jr_004_565f:
    rst $18

jr_004_5660:
    ld hl, $c706
    dec [hl]
    jp nz, Jump_004_55dd

    jr jr_004_56be

jr_004_5669:
    call Call_000_0d23
    ld a, [$c310]
    cp $01
    jr z, jr_004_56b1

    cp $02
    jr nz, jr_004_5669

    jr jr_004_56ac

Jump_004_5679:
jr_004_5679:
    call Call_000_0c5a
    ld a, [$c7d7]
    or a
    jr z, jr_004_5694

    ld a, [$c310]
    ld b, a
    ld a, [$c3b0]
    or b
    and $0c
    jp z, Jump_004_55dd

    ld [$c7d7], a
    jr jr_004_56be

jr_004_5694:
    ld a, [$cc5d]
    cp $ff
    jr nz, jr_004_56b7

    ld a, [$c3b0]
    ld b, a
    ld a, [$c310]
    or b
    cp $01
    jr z, jr_004_56b1

    cp $02
    jp nz, Jump_004_55dd

jr_004_56ac:
    call Call_004_56be
    xor a
    ret


jr_004_56b1:
    call Call_004_56be
    ld a, $01
    ret


jr_004_56b7:
    ld a, [$c310]
    or a
    jp z, Jump_004_55dd

Call_004_56be:
jr_004_56be:
    ld a, $80
    ld [$c3ba], a
    xor a
    ld [$c310], a
    ld [$c71f], a
    ld [$cc5c], a
    jp Jump_004_43d3


Call_004_56d0:
    ld a, e
    sub $dc
    ld e, a
    ld a, d
    sbc $c7
    ld d, a
    ld a, e
    and $e0
    add $20
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, [$cc5e]
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, e
    add $dc
    ld e, a
    ld a, d
    adc $c7
    ld d, a
    ret


    ld a, [de]
    ld d, a
    add hl, hl
    ld d, a
    ld e, a
    ld d, a
    sub l
    ld d, a
    bit 2, a
    ld bc, $3358
    ld e, b
    ld b, a
    ld e, b
    ld e, e
    ld e, b
    ld l, a
    ld e, b
    add e
    ld e, b
    sbc c
    ld e, b
    call Call_000_0b58
    ld e, c
    ld c, c
    ld e, c
    ld d, l
    ld e, c
    ld h, c
    ld e, c
    ld a, c
    ld e, c
    sbc a
    ld e, c
    or a
    ld e, c
    inc c
    ld bc, $4e49
    ld d, [hl]
    ld b, c
    ld c, h
    ld c, c
    ld b, h
    jr nz, jr_004_5772

    ld c, a
    ld d, [hl]
    ld b, l
    inc a
    inc c
    inc b
    jr nz, jr_004_5784

    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_004_578a

    ld c, c
    ld c, [hl]
    ld d, e
    jr nz, jr_004_5774

    jr nz, jr_004_575a

    jr nz, jr_004_575c

    jr nz, @+$22

    jr nz, jr_004_5760

    jr nz, @+$22

    jr nz, jr_004_5764

    inc a
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_004_579f

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_004_578e

    ld d, h
    ld c, a
    jr nz, jr_004_5799

    ld c, a
    ld c, [hl]
    ld d, h
    ld c, c

jr_004_575a:
    ld c, [hl]
    ld d, l

jr_004_575c:
    ld b, l
    ld l, $3c
    inc c

jr_004_5760:
    inc b
    jr nz, @+$44

    ld c, h

jr_004_5764:
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_004_57c0

    ld c, c
    ld c, [hl]
    ld d, e
    jr nz, jr_004_57aa

    jr nz, jr_004_5790

    jr nz, jr_004_5792

jr_004_5772:
    jr nz, @+$22

jr_004_5774:
    jr nz, jr_004_5796

    jr nz, @+$22

    jr nz, jr_004_579a

    inc a
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_004_57d5

    ld d, h
    ld b, c

jr_004_5784:
    ld d, d
    ld d, h
    jr nz, jr_004_57c4

    ld d, h
    ld c, a

jr_004_578a:
    jr nz, jr_004_57cf

    ld c, a
    ld c, [hl]

jr_004_578e:
    ld d, h
    ld c, c

jr_004_5790:
    ld c, [hl]
    ld d, l

jr_004_5792:
    ld b, l
    ld l, $3c
    inc c

jr_004_5796:
    inc b
    jr nz, jr_004_57b9

jr_004_5799:
    ld e, c

jr_004_579a:
    ld c, a
    ld d, l
    jr nz, jr_004_57ea

    ld c, a

jr_004_579f:
    ld d, e
    ld b, l
    jr nz, jr_004_57c3

    inc a
    jr nz, jr_004_57c6

    jr nz, jr_004_57c8

    jr nz, @+$22

jr_004_57aa:
    jr nz, jr_004_57cc

    jr nz, @+$22

    jr nz, @+$22

    inc a
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_004_580b

    ld d, h

jr_004_57b9:
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_004_57fa

    ld d, h
    ld c, a

jr_004_57c0:
    jr nz, jr_004_5805

    ld c, a

jr_004_57c3:
    ld c, [hl]

jr_004_57c4:
    ld d, h
    ld c, c

jr_004_57c6:
    ld c, [hl]
    ld d, l

jr_004_57c8:
    ld b, l
    ld l, $3c
    inc c

jr_004_57cc:
    inc b
    jr nz, jr_004_57ef

jr_004_57cf:
    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_004_582c

jr_004_57d5:
    ld c, c
    ld c, [hl]
    jr nz, jr_004_57f9

    inc a
    jr nz, jr_004_57fc

    jr nz, jr_004_57fe

    jr nz, @+$22

    jr nz, jr_004_5802

    jr nz, jr_004_5804

    jr nz, jr_004_5806

    inc a
    ld d, b
    ld d, d
    ld b, l

jr_004_57ea:
    ld d, e
    ld d, e
    jr nz, jr_004_5841

    ld d, h

jr_004_57ef:
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_004_5830

    ld d, h
    ld c, a
    jr nz, jr_004_583b

    ld c, a

jr_004_57f9:
    ld c, [hl]

jr_004_57fa:
    ld d, h
    ld c, c

jr_004_57fc:
    ld c, [hl]
    ld d, l

jr_004_57fe:
    ld b, l
    ld l, $3c
    dec bc

jr_004_5802:
    inc b
    ld e, c

jr_004_5804:
    ld c, a

jr_004_5805:
    ld d, l

jr_004_5806:
    jr nz, jr_004_584b

    ld b, c
    ld c, [hl]
    ld c, [hl]

jr_004_580b:
    ld c, a
    ld d, h
    jr nz, jr_004_584b

    ld c, l
    ld c, a
    ld d, [hl]
    ld b, l
    ld l, $20
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    inc a
    ld b, c
    ld c, [hl]
    ld e, c
    jr nz, jr_004_586b

    ld b, l
    ld e, c
    jr nz, jr_004_5878

    ld c, a
    jr nz, jr_004_5863

    jr nz, @+$22

    jr nz, @+$52

    ld b, c

jr_004_582c:
    ld d, e
    ld d, e
    jr nz, jr_004_5850

jr_004_5830:
    jr nz, jr_004_5852

    inc a
    ld [$4902], sp
    jr nz, @+$45

    ld b, c
    ld c, [hl]
    ld c, [hl]

jr_004_583b:
    ld c, a
    ld d, h
    inc a
    jr nz, jr_004_5860

    ld c, l

jr_004_5841:
    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, jr_004_5866

    inc a
    ld [$4e02], sp
    ld c, a

jr_004_584b:
    jr nz, @+$52

    ld c, c
    ld b, l
    ld b, e

jr_004_5850:
    ld b, l
    inc a

jr_004_5852:
    jr nz, jr_004_58a8

    ld c, b
    ld b, l
    ld d, d
    ld b, l
    jr nz, jr_004_587a

    inc a
    ld [$4e02], sp
    ld c, a
    ld d, h

jr_004_5860:
    jr nz, @+$5b

    ld c, a

jr_004_5863:
    ld d, l
    ld d, d
    inc a

jr_004_5866:
    jr nz, @+$52

    ld c, c
    ld b, l
    ld b, e

jr_004_586b:
    ld b, l
    jr nz, jr_004_588e

    inc a
    ld [$5302], sp
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld c, c
    ld c, [hl]

jr_004_5878:
    ld b, a
    inc a

jr_004_587a:
    jr nz, jr_004_58c0

    ld c, a
    ld d, l
    ld b, d
    ld c, h
    ld b, l
    jr nz, @+$3e

    add hl, bc
    ld [bc], a
    ld c, c
    ld d, h
    jr nz, jr_004_58d2

    ld d, e
    jr nz, jr_004_58da

    ld c, a
    ld d, a

jr_004_588e:
    inc a
    ld e, c
    ld c, a
    ld d, l
    ld d, d
    jr nz, jr_004_58e2

    ld c, a
    ld d, [hl]
    ld b, l
    inc a
    add hl, bc
    dec b
    ld c, c
    jr nz, jr_004_58f5

    ld b, c
    ld c, [hl]
    ld d, h
    jr nz, jr_004_58f7

    ld c, a
    inc a
    jr nz, jr_004_58eb

    ld c, a

jr_004_58a8:
    ld d, l
    ld b, d
    ld c, h
    ld b, l
    ld l, $20
    inc a
    jr nz, jr_004_58f2

    ld b, e
    ld b, e
    ld b, l
    ld d, b
    ld d, h
    ccf
    jr nz, jr_004_58f5

    ld b, c
    jr nz, jr_004_58ea

    ld l, $2e
    jr nz, jr_004_5919

jr_004_58c0:
    ld b, l
    ld d, e
    inc a
    ld b, d
    jr nz, @+$30

    ld l, $2e
    jr nz, jr_004_5918

    ld c, a
    jr nz, @+$3e

    dec bc
    dec b
    ld d, a
    ld c, b
    ld c, c

jr_004_58d2:
    ld d, h
    ld b, l
    jr nz, jr_004_592d

    ld b, c
    ld c, [hl]
    ld d, h
    ld d, e

jr_004_58da:
    inc a
    jr nz, jr_004_5931

    ld c, a
    jr nz, @+$46

    ld c, a
    ld d, l

jr_004_58e2:
    ld b, d
    ld c, h
    ld b, l
    ld l, $3c
    jr nz, @+$22

    ld b, c

jr_004_58ea:
    ld b, e

jr_004_58eb:
    ld b, e
    ld b, l
    ld d, b
    ld d, h
    ccf
    jr nz, jr_004_5912

jr_004_58f2:
    inc a
    jr nz, @+$43

jr_004_58f5:
    jr nz, jr_004_5925

jr_004_58f7:
    ld l, $2e
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_004_593b

    jr nz, jr_004_5943

    jr nz, jr_004_5931

    ld l, $2e
    jr nz, @+$50

    ld c, a
    jr nz, jr_004_592a

    inc a
    dec bc
    dec b
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e

jr_004_5912:
    jr nz, jr_004_596b

    ld b, c
    ld c, [hl]
    ld d, h
    ld d, e

jr_004_5918:
    inc a

jr_004_5919:
    jr nz, jr_004_596f

    ld c, a
    jr nz, jr_004_5962

    ld c, a
    ld d, l
    ld b, d
    ld c, h
    ld b, l
    ld l, $3c

jr_004_5925:
    jr nz, @+$22

    ld b, c
    ld b, e
    ld b, e

jr_004_592a:
    ld b, l
    ld d, b
    ld d, h

jr_004_592d:
    ccf
    jr nz, jr_004_5950

    inc a

jr_004_5931:
    jr nz, jr_004_5974

    jr nz, jr_004_5963

    ld l, $2e
    jr nz, jr_004_5992

    ld b, l
    ld d, e

jr_004_593b:
    jr nz, jr_004_5979

    jr nz, @+$44

    jr nz, jr_004_596f

    ld l, $2e

jr_004_5943:
    jr nz, jr_004_5993

    ld c, a
    jr nz, jr_004_5968

    inc a
    add hl, bc
    ld bc, $2049
    ld b, c
    ld b, e
    ld b, e

jr_004_5950:
    ld b, l
    ld d, b
    ld d, h
    ld hl, $093c
    ld bc, $2049
    ld d, d
    ld b, l
    ld b, [hl]
    ld d, l
    ld d, e
    ld b, l
    ld l, $3c
    ld a, [bc]

jr_004_5962:
    ld [bc], a

jr_004_5963:
    jr nz, jr_004_59bc

    ld b, c
    ld c, c
    ld d, h

jr_004_5968:
    ld c, c
    ld c, [hl]
    ld b, a

jr_004_596b:
    jr nz, jr_004_598d

    inc a
    ld b, [hl]

jr_004_596f:
    ld c, a
    ld d, d
    jr nz, @+$43

    ld c, [hl]

jr_004_5974:
    ld d, e
    ld d, a
    ld b, l
    ld d, d
    inc a

jr_004_5979:
    dec bc
    inc bc
    jr nz, @+$22

    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_004_59cf

    ld d, l
    ld d, e
    ld d, h
    jr nz, jr_004_59c3

    ld d, b
    ld c, c
    ld b, e
    ld c, e
    ld d, l
    ld d, b

jr_004_598d:
    jr nz, @+$48

    ld d, d
    ld c, a
    ld c, l

jr_004_5992:
    inc a

jr_004_5993:
    jr nz, jr_004_59b5

    ld d, h
    ld c, b
    ld b, l
    jr nz, jr_004_59dc

    ld b, c
    ld d, d
    jr nz, jr_004_59be

    inc a
    ld a, [bc]
    ld [bc], a
    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_004_59ef

    ld c, a
    ld b, l
    ld d, e
    inc a
    jr nz, @+$22

    ld b, [hl]
    ld c, c
    ld d, d
    ld d, e
    ld d, h
    jr nz, @+$22

jr_004_59b5:
    jr nz, jr_004_59f3

    ld a, [bc]
    ld [bc], a
    ld b, d
    ld c, h
    ld b, c

jr_004_59bc:
    ld b, e
    ld c, e

jr_004_59be:
    jr nz, @+$49

    ld c, a
    ld b, l
    ld d, e

jr_004_59c3:
    inc a
    jr nz, jr_004_59e6

    ld b, [hl]
    ld c, c
    ld d, d
    ld d, e
    ld d, h
    jr nz, @+$22

    jr nz, @+$3e

Call_004_59cf:
jr_004_59cf:
    ld a, [$c71d]
    or a
    ret nz

    ld d, $00
    ld e, d
    ld a, [$c705]
    cp $02

jr_004_59dc:
    jr z, jr_004_59e6

    ld d, $fd
    ld e, $0a
    and $01
    add e
    ld e, a

jr_004_59e6:
    ld a, [$c701]
    add d
    ld b, a
    ld a, [$c702]
    add d

jr_004_59ef:
    ld c, a
    ld d, $10
    ld a, e

jr_004_59f3:
    jp Jump_000_13c9


Call_004_59f6:
    ld a, [$c706]
    cp $ff
    jr z, jr_004_59ff

    or a
    ret nz

jr_004_59ff:
    ld a, [$c703]
    or a
    jr z, jr_004_5a45

    ld a, [$c704]
    dec a
    ld [$c704], a
    jr z, jr_004_5a1c

    cp $01
    jr nz, jr_004_5a53

    ld a, [$c00b]
    and $0f
    ld [$c00b], a
    jr jr_004_5a53

jr_004_5a1c:
    ld [$c703], a
    ld a, [$c701]
    cp $4c
    jr z, jr_004_5a2a

    cp $54
    jr nz, jr_004_5a31

jr_004_5a2a:
    ld a, $50
    ld [$c701], a
    jr jr_004_5a45

jr_004_5a31:
    cp $48
    jr nz, jr_004_5a3c

    ld a, $44
    ld [$c701], a
    jr jr_004_5a45

jr_004_5a3c:
    cp $58
    jr nz, jr_004_5a45

    ld a, $5c
    ld [$c701], a

jr_004_5a45:
    ld a, [$c310]
    and $f0
    ld [$c703], a
    ret z

    ld a, $04
    ld [$c704], a

jr_004_5a53:
    ld a, [$c703]
    and $f0
    swap a
    rst $28
    ret nc

    ld e, d
    xor l
    ld e, d
    jp nz, $d05a

    ld e, d
    sbc [hl]
    ld e, d
    sub h
    ld e, d
    sbc c
    ld e, d
    ret nc

    ld e, d
    add l
    ld e, d
    ld a, e
    ld e, d
    add b
    ld e, d
    ret nc

    ld e, d
    ret nc

    ld e, d
    ret nc

    ld e, d
    ret nc

    ld e, d
    ret nc

    ld e, d
    call Call_004_5a85
    jr jr_004_5aad

    call Call_004_5a85
    jr jr_004_5ac2

Call_004_5a85:
    ld a, [$c702]
    add $02
    cp $84
    jr c, jr_004_5a90

    ld a, $84

jr_004_5a90:
    ld [$c702], a
    ret


    call Call_004_5a9e
    jr jr_004_5aad

    call Call_004_5a9e
    jr jr_004_5ac2

Call_004_5a9e:
    ld a, [$c702]
    sub $02
    cp $1b
    jr nc, jr_004_5aa9

    ld a, $1b

jr_004_5aa9:
    ld [$c702], a
    ret


jr_004_5aad:
    ld a, [$c701]
    cp $0c
    jr nz, jr_004_5ab6

    ld a, $14

jr_004_5ab6:
    add $02
    cp $84
    jr c, jr_004_5abe

    ld a, $84

jr_004_5abe:
    ld [$c701], a
    ret


jr_004_5ac2:
    ld a, [$c701]
    sub $02
    cp $1c
    jr nc, jr_004_5acd

    ld a, $0c

jr_004_5acd:
    ld [$c701], a
    ret


    ld hl, $5b10
    ld de, $0005
    ld a, [$c701]
    ld b, $0e

jr_004_5adc:
    cp [hl]
    jr z, jr_004_5aea

    add hl, de
    dec b
    jr nz, jr_004_5adc

jr_004_5ae3:
    ldh a, [rBGP]
    cpl
    ldh [rBGP], a
    jr jr_004_5ae3

jr_004_5aea:
    inc hl
    ld a, [$c702]
    cp $50
    jr c, jr_004_5af3

    inc hl

jr_004_5af3:
    ld a, c
    or a
    jr z, jr_004_5af9

    inc hl
    inc hl

jr_004_5af9:
    ld a, [hl]
    ld [$c700], a
    ld b, a
    ld hl, $c500
    ld a, c
    or a
    jr z, jr_004_5b08

    ld hl, $c600

jr_004_5b08:
    ld a, l
    add b
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl]
    ret


    inc c
    nop
    nop
    nop
    nop
    inc e
    jr @+$03

    ld bc, $2418
    rla
    ld [bc], a
    ld [bc], a
    rla
    inc l
    ld d, $03
    inc bc
    ld d, $34
    dec d
    inc b
    inc b
    dec d
    inc a
    inc d
    dec b
    dec b
    inc d
    ld b, h
    inc de
    ld b, $06
    inc de
    ld d, b
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, h
    ld [de], a
    rlca
    rlca
    ld [de], a
    ld h, h
    ld de, $0808
    ld de, $106c
    add hl, bc
    add hl, bc
    db $10
    ld [hl], h
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    ld a, h
    ld c, $0b
    dec bc
    ld c, $84
    dec c
    inc c
    inc c
    dec c
    ld l, a
    ld a, [$c3a1]
    or a
    jr z, jr_004_5b67

    ld a, l
    add $00
    ld l, a
    adc $c6
    sub l
    ld h, a
    ld a, [hl]
    ret


jr_004_5b67:
    ld a, l
    add $00
    ld l, a
    adc $c5
    sub l
    ld h, a
    ld a, [hl]
    ret


Call_004_5b71:
    xor a
    ld [$c711], a
    ld a, [$c3a1]
    or a
    jr nz, jr_004_5b89

    ld a, [$c705]
    cp $02
    jr z, jr_004_5b89

    ld a, [$c70a]
    cp $07
    jr nc, jr_004_5b9b

jr_004_5b89:
    ld hl, $c507
    ld b, $13
    xor a

jr_004_5b8f:
    add [hl]
    inc hl
    dec b
    jr nz, jr_004_5b8f

    or a
    jr nz, jr_004_5b9b

    inc a
    ld [$c711], a

jr_004_5b9b:
    xor a
    ld [$c712], a
    ld a, [$c3a1]
    or a
    jr z, jr_004_5bb2

    ld a, [$c705]
    cp $02
    jr z, jr_004_5bb2

    ld a, [$c70a]
    cp $07
    ret nc

jr_004_5bb2:
    ld hl, $c607
    ld b, $13
    xor a

jr_004_5bb8:
    add [hl]
    inc hl
    dec b
    jr nz, jr_004_5bb8

    or a
    ret nz

    inc a
    ld [$c712], a
    ret


Call_004_5bc4:
    xor a
    ld [$c7db], a
    ld de, $c87f
    ld hl, $5d23

jr_004_5bce:
    ld a, [hl+]
    or a
    jr z, jr_004_5c05

    cp $01
    jr z, jr_004_5be3

    cp $20
    jr c, jr_004_5bdf

    push hl
    call $5454
    pop hl

jr_004_5bdf:
    ld [de], a
    inc de
    jr jr_004_5bce

jr_004_5be3:
    ld a, e
    sub $dc
    ld e, a
    ld a, d
    sbc $c7
    ld d, a
    ld a, e
    and $e0
    add $20
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, $03
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, e
    add $dc
    ld e, a
    ld a, d
    adc $c7
    ld d, a
    jr jr_004_5bce

jr_004_5c05:
    ld a, [$cc61]
    ld b, a
    ld a, [$c3a2]
    or a
    jr nz, jr_004_5c16

    ld a, b
    cp $03
    jr nz, jr_004_5c16

    ld b, $05

jr_004_5c16:
    ld a, b
    dec a
    add a
    add a
    ld l, a
    add a
    add l
    add $c8
    ld l, a
    adc $5d
    sub l
    ld h, a
    ld de, $c900
    ld b, $0c

jr_004_5c29:
    ld a, [hl+]
    push bc
    push hl
    call $5454
    pop hl
    pop bc
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5c29

    ld hl, $c600
    ld a, [$cc61]
    cp $01
    jr z, jr_004_5c65

    ld hl, $c500
    cp $02
    jr z, jr_004_5c65

    cp $04
    jr z, jr_004_5c59

    ld hl, $c500
    ld a, [$c3a3]
    or a
    jr z, jr_004_5c65

    ld hl, $c600
    jr jr_004_5c65

jr_004_5c59:
    ld hl, $c600
    ld a, [$c3a3]
    or a
    jr z, jr_004_5c65

    ld hl, $c500

jr_004_5c65:
    ld a, [$c500]
    ld b, a
    ld a, [$c600]
    or b
    jr z, jr_004_5c8f

    ld a, [hl]
    or a
    jr nz, jr_004_5c8f

    ld de, $0019
    add hl, de
    ld a, [hl-]
    add [hl]
    dec hl
    add [hl]
    dec hl
    add [hl]
    dec hl
    add [hl]
    dec hl
    add [hl]
    dec hl
    add [hl]
    jr nz, jr_004_5c99

    ld a, $02
    ld [$cc61], a
    ld hl, $5e04
    jr jr_004_5ca1

jr_004_5c8f:
    ld a, $01
    ld [$cc61], a
    ld hl, $5d60
    jr jr_004_5ca1

jr_004_5c99:
    ld a, $03
    ld [$cc61], a
    ld hl, $5e10

jr_004_5ca1:
    ld de, $c980
    ld b, $0c

jr_004_5ca6:
    ld a, [hl+]
    push bc
    push hl
    call $5454
    pop hl
    pop bc
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5ca6

    ld a, [$c70c]
    or a
    jr z, jr_004_5cc6

    ld a, [$c70d]
    inc a
    ld b, a
    ld hl, $cc61

jr_004_5cc1:
    sla [hl]
    dec b
    jr nz, jr_004_5cc1

jr_004_5cc6:
    ld a, [$cc61]
    ld c, a
    ld d, $00

jr_004_5ccc:
    ld a, c
    sub $64
    ld c, a
    jr c, jr_004_5cd5

    inc d
    jr jr_004_5ccc

jr_004_5cd5:
    push de
    ld d, $00
    ld a, c
    add $64
    ld c, a

jr_004_5cdc:
    ld a, c
    sub $0a
    ld c, a
    jr c, jr_004_5ce5

    inc d
    jr jr_004_5cdc

jr_004_5ce5:
    push de
    ld d, $00
    ld a, c
    add $0a
    push af
    ld hl, $c947
    ld b, $03

jr_004_5cf1:
    pop af
    add $5e
    ld [hl-], a
    dec b
    jr nz, jr_004_5cf1

    inc hl
    ld a, [hl]
    cp $5e
    jr nz, jr_004_5d0d

    inc hl
    ld a, [hl+]
    ld b, [hl]
    ld [hl], $07
    dec hl
    ld [hl], b
    dec hl
    ld [hl], a
    cp $5e
    jr nz, jr_004_5d0d

    ld [hl], $07

jr_004_5d0d:
    ld a, $01
    ld [$c7db], a

jr_004_5d12:
    rst $18
    call Call_000_0c5a
    ld a, [$c310]
    ld b, a
    ld a, [$c3b0]
    or b
    and $09
    jr z, jr_004_5d12

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
    ld [$4f50], sp
    ld c, c
    ld c, [hl]
    ld d, h
    ld d, e
    jr nz, jr_004_5d8e

    ld b, e
    ld c, a
    ld d, d
    ld b, l
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
    jr nz, jr_004_5d83

    jr nz, jr_004_5d85

    jr nz, jr_004_5d87

    jr nz, jr_004_5d89

    jr nz, jr_004_5d8b

    jr nz, jr_004_5d76

    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_5d76:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_004_5da1

    jr nz, jr_004_5da3

jr_004_5d83:
    jr nc, jr_004_5db5

jr_004_5d85:
    jr nc, jr_004_5da7

jr_004_5d87:
    jr nz, jr_004_5da9

jr_004_5d89:
    jr nz, jr_004_5d94

jr_004_5d8b:
    ld bc, $0708

jr_004_5d8e:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_5d94:
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $2008
    jr nz, jr_004_5dbf

    jr nz, jr_004_5dc1

jr_004_5da1:
    jr nz, jr_004_5dc3

jr_004_5da3:
    jr nz, jr_004_5dc5

    jr nz, jr_004_5dc7

jr_004_5da7:
    jr nz, jr_004_5db2

jr_004_5da9:
    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_5db2:
    rlca
    rlca
    rlca

jr_004_5db5:
    rlca
    rlca
    add hl, bc
    ld bc, $0b0a
    dec bc
    dec bc
    dec bc
    dec bc

jr_004_5dbf:
    dec bc
    dec bc

jr_004_5dc1:
    dec bc
    dec bc

jr_004_5dc3:
    dec bc
    dec bc

jr_004_5dc5:
    dec bc
    inc c

jr_004_5dc7:
    nop
    jr nz, @+$22

    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_004_5e28

    ld c, a
    ld c, [hl]
    jr nz, jr_004_5df5

    jr nz, jr_004_5e19

    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_004_5e34

    ld c, a
    ld c, [hl]
    jr nz, jr_004_5e01

    jr nz, @+$22

    jr nz, jr_004_5e2e

    jr nz, jr_004_5e3e

    ld c, a
    ld c, [hl]
    jr nz, jr_004_5e0b

    jr nz, jr_004_5e0d

    jr nz, jr_004_5e48

    ld c, a
    ld d, l
    jr nz, @+$59

    ld c, a
    ld c, [hl]

jr_004_5df5:
    jr nz, jr_004_5e17

    jr nz, jr_004_5e19

    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_004_5e4b

    ld c, a
    ld d, e

jr_004_5e01:
    ld d, h
    jr nz, jr_004_5e24

    jr nz, @+$22

    jr nz, @+$49

    ld b, c
    ld c, l
    ld c, l

jr_004_5e0b:
    ld c, a
    ld c, [hl]

jr_004_5e0d:
    jr nz, jr_004_5e2f

    jr nz, jr_004_5e31

    ld b, d
    ld b, c
    ld b, e
    ld c, e
    ld b, a
    ld b, c

jr_004_5e17:
    ld c, l
    ld c, l

jr_004_5e19:
    ld c, a
    ld c, [hl]
    jr nz, jr_004_5e1d

jr_004_5e1d:
    ld bc, $0302
    inc b
    dec b
    ld b, $07

jr_004_5e24:
    ld [$0907], sp
    rlca

jr_004_5e28:
    ld a, [bc]
    dec bc
    inc c
    rlca
    rlca
    rlca

jr_004_5e2e:
    rlca

jr_004_5e2f:
    rlca
    dec c

jr_004_5e31:
    ld c, $0f
    db $10

jr_004_5e34:
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_004_5e56

    ld a, [de]

jr_004_5e3e:
    dec de
    inc e
    dec e
    ld e, $07
    rlca
    rlca
    rlca
    rlca
    rlca

jr_004_5e48:
    rra
    jr nz, jr_004_5e6c

jr_004_5e4b:
    rlca
    ld [hl+], a
    inc hl
    ld hl, $2407
    dec h
    dec h
    ld h, $27
    dec h

jr_004_5e56:
    dec h
    inc h
    rlca
    ld hl, $2223
    rlca
    ld hl, $1f20
    jr z, jr_004_5e8b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2b
    jr z, jr_004_5e99

    jr nc, jr_004_5e97

jr_004_5e6c:
    ld sp, $2e2d
    ld [hl-], a
    inc sp
    cpl
    jr nc, jr_004_5ea8

    dec [hl]
    ld [hl], $37
    jr c, jr_004_5eb2

    ld hl, $2121
    ld a, [hl-]
    ld hl, $2121
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

jr_004_5e8b:
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
    ld d, c

jr_004_5e97:
    ld d, d
    ld d, e

jr_004_5e99:
    ld d, h
    ld d, l
    rlca
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

jr_004_5ea8:
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

jr_004_5eb2:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    rlca
    rlca
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
    dec e
    ld e, $1d
    ld e, $1d
    ld e, $1d
    ld e, $1d
    ld e, $8a
    adc e
    adc h
    adc l
    dec e
    ld e, $1d
    ld e, $1d
    ld e, $1d
    ld e, $1d
    ld e, $8e
    adc a
    sub b
    sub b
    sub b
    sub b
    sub c
    rlca
    rlca
    rlca
    inc e
    ld e, [hl]
    jr nz, jr_004_5f56

    jr nc, jr_004_5f58

    ld c, b
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, h
    ld e, [hl]
    ld l, b
    ld e, [hl]
    ld l, h
    ld e, [hl]
    ld [hl], b
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld a, b
    ld e, [hl]
    ld a, h
    ld e, [hl]
    add b
    ld e, [hl]
    or b
    ld e, [hl]
    or h
    ld e, [hl]
    cp b
    ld e, [hl]
    cp h
    ld e, [hl]
    ret nz

    ld e, [hl]
    call nz, $c85e
    ld e, [hl]
    call z, $d05e
    ld e, [hl]
    ldh a, [$5e]
    ld [$00ff], sp
    rst $38
    ccf
    ret nz

    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, [hl]
    rst $18
    ld c, c
    rst $18
    ld b, c
    rst $18
    ld b, e
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [hl+], a
    ei
    ld d, d
    ei
    ld [de], a
    ei
    ld [hl-], a
    rst $18
    ld b, [hl]
    rst $18
    ld b, c
    rst $18
    ld b, c
    rst $18
    ld c, e
    rst $18
    ld b, [hl]
    rst $18
    ld b, b
    ret nz

    ld b, b
    rst $38
    ccf
    ei
    ld [hl+], a
    ei

jr_004_5f56:
    ld b, d
    ei

jr_004_5f58:
    ld b, d
    ei
    ld d, d
    ei
    ld [hl], d
    ei
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, [hl]
    rst $18
    ld c, h
    rst $18
    ld c, b
    rst $18
    ld c, [hl]
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [de], a
    ei
    ld [hl-], a
    ei
    ld [hl-], a
    ei
    ld d, d
    rst $18
    ld c, l
    rst $18
    ld c, c
    rst $18
    ld c, c
    rst $18
    ld c, e
    rst $18
    ld b, [hl]
    rst $18
    ld b, b
    ret nz

    ld b, b
    rst $38
    ccf
    ei
    jp nc, $fafb

    ei
    ld [de], a
    ei
    ld [de], a
    ei
    ld [de], a
    ei
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    db $fc
    rst $38
    rst $38
    cp a
    rst $38
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [rIE], a
    rst $38
    db $fd
    rst $38
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$af], a
    rst $28
    cp a
    rst $38
    add b
    rst $38
    add b
    ret nz

    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    push af
    rst $30
    db $fd
    rst $38
    ld bc, $01ff
    inc bc
    add b
    rst $18
    add b
    rst $38
    cp a
    rst $38
    xor a
    rst $28
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [rSB], a
    ei
    ld bc, $fdff
    rst $38
    push af
    rst $30
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$bf], a
    ld [$ff03], sp
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    db $fd
    ld [$ff03], sp
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop

jr_004_602e:
    xor d
    nop
    ld d, l
    nop
    xor d
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
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rra
    ld hl, sp+$1f
    ld hl, sp+$1c
    ld sp, hl
    dec e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$ff04], sp
    nop
    rst $38
    nop
    nop
    ld [$ff03], sp
    nop
    rst $38
    nop
    ld [$ff04], sp
    add b
    rst $38
    add b
    rst $18
    add b
    ret nz

    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld [$ff04], sp
    ld bc, $01ff
    ei
    ld bc, $0103
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp+$1f
    ld hl, sp+$1f
    jr c, jr_004_602e

    cp b
    ld sp, hl
    dec e
    ld sp, hl
    dec e
    ld sp, hl
    dec e
    ld sp, hl
    dec e
    ld sp, hl
    dec e
    ld sp, hl
    dec e
    ld sp, hl
    dec e
    ld sp, hl
    dec e
    sbc a
    cp b
    sbc a
    cp b
    sbc a
    cp b
    sbc a
    cp b
    sbc a
    cp b
    sbc a
    cp b
    sbc a
    cp b
    sbc a
    cp b
    ld sp, hl
    dec e
    ld hl, sp+$1c
    ld hl, sp+$1f
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [$0003], sp
    ld [$ff06], sp
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    add b
    ret nz

    add b
    rst $18
    add b
    ld [$ff06], sp
    nop
    rst $38
    nop
    ld bc, $01ff
    inc bc
    ld bc, $01fb
    ld [$ff06], sp
    nop
    rst $38
    nop
    sbc a
    cp b
    rra
    jr c, jr_004_610b

    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld [$007f], sp
    ld [$007f], sp
    ld [$007f], sp
    ld [$007f], sp
    ld [$007f], sp
    ld [$007f], sp
    ld [$007f], sp

jr_004_610b:
    ld [$007f], sp
    ld [$007f], sp
    ld [$007f], sp
    ld [$007f], sp
    ld [$007f], sp
    ld [$002e], sp
    add b
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
    ld [$000c], sp
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
    jr @-$26

    db $10
    sub b
    ld [$0006], sp
    ld h, b
    ldh [$f0], a
    ldh a, [$08]
    inc c
    nop
    ld [$ff03], sp
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
    ld [$ff03], sp
    nop
    ld [$ff03], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$ff03], sp
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
    ld [$ff03], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$ff03], sp
    nop
    ld [$ff03], sp
    dec b
    rst $38
    dec b
    rst $38

jr_004_61cc:
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    db $fd
    rst $38
    ld bc, $0308
    rst $38
    jr @+$01

    inc h
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    inc h
    rst $38
    jr @+$01

    nop
    jr jr_004_6201

    inc a
    inc h
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    inc a
    inc h
    jr jr_004_620d

    nop
    nop
    ld a, [hl]
    jr @+$80

    and l
    ld a, [hl]
    ld b, d
    ld a, [hl]
    jp Jump_004_427e


jr_004_6201:
    ld a, [hl]
    and l
    ld a, [hl]
    jr @+$80

    add c
    jr jr_004_6221

    inc a
    and l
    ld a, [hl]
    ld b, d

jr_004_620d:
    ld a, [hl]
    jp Jump_004_427e


    inc a
    and l
    jr jr_004_622d

    nop
    add c
    jr jr_004_6273

    inc a
    and l
    ld a, [hl]
    ld b, d
    ld a, [hl]
    jp Jump_004_427e


jr_004_6221:
    inc a
    and l
    jr jr_004_627f

    jr jr_004_61cc

    jr jr_004_6283

    inc a
    and l
    ld a, [hl]

jr_004_622c:
    ld b, d

jr_004_622d:
    ld a, [hl]
    jp Jump_004_427e


    inc a
    and l
    jr jr_004_628f

    nop
    and l
    rst $38
    jr jr_004_6221

    inc a
    jp $c37e


    ld a, [hl]
    jp $e77e


    inc a
    rst $38
    jr @+$01

    nop
    jr jr_004_6261

    inc h
    inc a
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    inc h
    inc a
    jr jr_004_626d

    nop
    nop
    ld a, [hl]
    jr jr_004_62c0

    cp l
    ld b, d
    ld a, [hl]
    ld b, d
    rst $38
    ld b, d
    ld a, [hl]

jr_004_6261:
    ld h, [hl]
    cp l
    ld a, [hl]
    jr jr_004_62e4

    add c
    jr jr_004_6281

    inc h
    cp l
    ld b, d
    ld a, [hl]

jr_004_626d:
    ld b, d
    rst $38
    ld b, d
    ld a, [hl]
    inc h
    cp l

jr_004_6273:
    jr jr_004_628d

    nop
    add c
    jr jr_004_62d3

    inc h
    cp l
    ld b, d
    ld a, [hl]
    ld b, d
    rst $38

jr_004_627f:
    ld b, d
    ld a, [hl]

jr_004_6281:
    inc h
    cp l

jr_004_6283:
    jr @+$5c

    jr jr_004_622c

    jr @+$5c

    inc h
    cp l
    ld b, d
    ld a, [hl]

jr_004_628d:
    ld b, d
    rst $38

jr_004_628f:
    ld b, d
    ld a, [hl]
    inc h
    cp l
    jr jr_004_62ef

    nop
    and l
    and b
    ldh [$a3], a
    db $e3
    and a
    db $e4

jr_004_629d:
    xor a
    add sp, -$51
    add sp, -$51
    add sp, -$59
    db $e4

jr_004_62a5:
    and e
    db $e3
    dec b
    rlca

jr_004_62a9:
    push bc
    rst $00
    push hl
    daa
    push af
    rla
    push af
    rla
    push af
    rla
    push hl
    daa
    push bc
    rst $00
    and b
    ldh [$a3], a
    db $e3
    and h
    rst $20
    xor b
    rst $28
    xor b

jr_004_62c0:
    rst $28
    xor b
    rst $28
    and h
    rst $20
    and e
    db $e3
    dec b
    rlca
    push bc
    rst $00
    dec h
    rst $20
    dec d
    rst $30
    dec d
    rst $30
    dec d
    rst $30

jr_004_62d3:
    dec h
    rst $20
    push bc
    rst $00
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a

jr_004_62e4:
    ldh [$a0], a
    ldh [rTIMA], a
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca

jr_004_62ef:
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    jr jr_004_633e

    jr jr_004_629d

    jr jr_004_6342

    jr @-$5c

    jr jr_004_6346

    jr jr_004_62a5

    jr jr_004_634a

    jr jr_004_62a9

    nop
    ld b, l
    nop
    and d
    nop
    ld b, l
    nop
    and d
    nop
    ld b, l
    nop
    and d
    nop
    ld b, l
    nop
    and d
    ld [$0010], sp
    inc a
    ld b, c
    inc a
    add d
    inc a
    ld b, c
    inc a
    add d
    inc a
    ld b, c
    inc a
    add d
    inc a
    ld b, c
    inc a
    add d
    nop
    ld b, c
    nop
    add d
    nop
    ld b, c
    nop
    add d
    nop
    ld b, c
    nop
    add d
    nop
    ld b, c
    nop
    add d
    ld a, [hl]
    ld bc, $807e

jr_004_633e:
    ld a, [hl]
    ld bc, $807e

jr_004_6342:
    ld a, [hl]
    ld bc, $807e

jr_004_6346:
    ld a, [hl]
    ld bc, $807e

jr_004_634a:
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    rst $38
    nop
    ld a, [hl]
    add b
    ld a, [hl]
    ld bc, $807e
    ld a, [hl]
    ld bc, $807e
    ld a, [hl]
    ld bc, $807e
    ld a, [hl]
    ld bc, $807e
    ld a, [hl]
    ld bc, $807e
    ld a, [hl]
    ld bc, $807e
    ld a, [hl]
    ld bc, $00ff
    rst $38
    ld a, a
    add b

Jump_004_637d:
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add e
    rst $38
    ld hl, sp+$07
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    cp a
    add e
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    ld [$8003], sp
    rst $38
    ld a, a
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rlca
    inc b
    rst $38
    ld hl, sp-$01
    ld a, a
    add b
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rst $38
    ld hl, sp+$07
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    call nz, $c4f7
    rst $30
    inc b
    cp a
    add b
    cp a
    adc h
    cp a
    adc h
    cp a
    add b
    cp a
    add b
    cp a
    ld [$8003], sp
    rst $38
    ld a, a
    rst $38
    ld hl, sp+$07
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    call nz, $c4f7
    rst $30
    inc b
    rst $30
    inc b
    cp a
    add e
    cp a
    add b
    cp a
    adc h
    cp a
    adc h
    cp a
    add b
    cp a
    ld [$8003], sp
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    adc h
    cp a
    adc h
    cp a
    add b
    rst $30
    inc b
    rst $30
    call nz, $c4f7
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rlca
    inc b
    rst $38
    ld hl, sp-$01
    ld a, a
    add b
    add b
    cp a
    add b
    cp a
    add b
    cp a
    adc h
    cp a
    adc h
    cp a
    add b
    cp a
    add e
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    call nz, $c4f7
    rst $30
    inc b
    rst $30
    inc b
    rlca
    inc b
    rst $38
    ld hl, sp-$01
    ld a, a
    add b
    add b
    cp a
    add b
    cp a
    add b
    cp a
    adc h
    cp a
    adc h
    cp a
    add b
    cp a
    adc h
    rst $38
    ld hl, sp+$07
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    call nz, $c4f7
    rst $30
    inc b
    rst $30
    call nz, $8cbf
    cp a
    add b
    cp a
    adc h
    cp a
    adc h
    cp a
    add b
    cp a
    ld [$8003], sp
    rst $38
    ld a, a
    rst $30
    call nz, $04f7
    rst $30
    call nz, $c4f7
    rst $30
    inc b
    rst $30
    inc b
    rlca
    inc b
    rst $38
    ld hl, sp+$38
    jr c, jr_004_6509

    ld b, h
    cp $82
    cp $82
    cp $82
    ld a, h
    ld b, h
    jr c, jr_004_64d0

    nop
    nop
    jr c, jr_004_64d4

    ld b, h
    ld a, h
    add d
    cp $82
    cp $82
    cp $44
    ld a, h
    jr c, jr_004_64e0

    nop
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

jr_004_64d0:
    rst $38
    ld h, b
    rst $38
    ld h, b

jr_004_64d4:
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

jr_004_64e0:
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

jr_004_6509:
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
    ld [$ff03], sp
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
    jp nz, Jump_004_7cff

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
    jr @+$0a

    dec b
    nop
    ld h, b
    jr nz, jr_004_67f8

    jr @+$28

    ld e, $21
    rrca
    db $10
    rrca
    db $10
    ld [$000b], sp
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
    jr jr_004_67d4

    ld [$0004], sp
    sbc b
    ld a, b
    ld a, b
    ld hl, sp-$20
    ldh [$80], a
    add b
    ld [$0008], sp
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c

jr_004_67d4:
    rst $38
    ld [hl+], a
    rst $38
    inc e
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld a, $c1
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    db $e3
    ld a, $ff
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, c
    rst $18
    ld b, d
    rst $18
    ld b, b

jr_004_67f8:
    rst $18
    ld b, b
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld [bc], a
    ei
    ld [bc], a
    ei
    add d
    ei
    ld b, d
    ei
    ld b, d
    ei
    jp nz, Jump_004_41df

    rst $18
    ld b, c
    rst $18
    ld b, d
    rst $18
    ld b, d
    rst $18
    ld b, e
    rst $18
    ld b, b
    ret nz

    ld b, b
    rst $38
    ccf
    ei
    add d
    ei
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld b, d
    ei
    jp nz, Jump_000_02fb

    inc bc
    ld [bc], a
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, c
    rst $18
    ld b, c
    rst $18
    ld b, d
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld [bc], a
    ei
    ld [bc], a
    ei
    add d
    ei
    add d
    ei
    add d
    ei
    add d
    rst $18
    ld b, h
    rst $18
    ld b, a
    rst $18
    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, b
    ret nz

    ld b, b
    rst $38
    ccf
    ei
    add d
    ei
    jp nz, $82fb

    ei
    add d
    ei
    add d
    ei
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, c
    rst $18
    ld b, d
    rst $18
    ld b, d
    rst $18
    ld b, d
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld [bc], a
    ei
    ld [bc], a
    ei
    add d
    ei
    ld b, d
    ei
    ld b, d
    ei
    ld b, d
    rst $18
    ld b, c
    rst $18
    ld b, d
    rst $18
    ld b, d
    rst $18
    ld b, d
    rst $18
    ld b, c
    rst $18
    ld b, b
    ret nz

    ld b, b
    rst $38
    ccf
    ei
    add d
    ei
    ld b, d
    ei
    ld b, d
    ei
    ld b, d
    ei
    add d
    ei
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, h
    rst $18
    ld c, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld h, d
    ei
    jp nz, $82fb

    ei
    ld [c], a
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld c, [hl]
    rst $18
    ld b, b
    ret nz

    ld b, b
    rst $38
    ccf
    ei
    ld a, [c]
    ei
    sub d
    ei
    sub d
    ei
    or d
    ei
    ld h, d
    ei
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    db $fc
    ld [$0000], sp
    nop
    ld b, d
    rlca
    sub d
    nop
    ld b, $93
    sub h
    sub l
    nop
    ld b, $93
    sub [hl]
    nop
    db $10
    rlca
    sub a
    ld hl, $2107
    rlca
    ld hl, $8807
    adc c
    ld hl, $2107
    rlca
    ld hl, $9807
    nop
    db $10
    rlca
    sub a
    ld hl, $2107
    rlca
    ld hl, $1d07
    ld e, $21
    rlca
    ld hl, $2107
    rlca
    sbc b
    nop
    db $10
    rlca
    sub a
    dec h
    ld h, $25
    ld h, $25
    ld h, $1d
    ld e, $25
    ld h, $25
    ld h, $25
    ld h, $98
    nop
    db $10
    rlca
    sub a
    dec h
    inc h
    dec h
    inc h
    dec h
    inc h
    dec e
    ld e, $25
    inc h
    dec h
    inc h
    dec h
    inc h
    sbc b
    nop
    db $10
    rlca
    sub a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    dec e
    ld e, $23
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    sbc b
    nop
    db $10
    rlca
    sub a
    jr nz, jr_004_697e

    jr nz, jr_004_6980

    jr nz, jr_004_6982

    dec e
    ld e, $20
    rra
    jr nz, jr_004_6988

    jr nz, jr_004_698a

    sbc b
    nop
    db $10
    rlca
    sub a
    nop
    ld b, $90
    adc d
    adc e
    nop
    ld b, $90
    sbc b
    nop
    db $10
    rlca
    sub a
    nop

jr_004_697e:
    ld b, $90

jr_004_6980:
    adc h
    adc l

jr_004_6982:
    nop
    ld b, $90
    sbc b
    nop
    db $10

jr_004_6988:
    rlca
    sub a

jr_004_698a:
    rra
    jr nz, jr_004_69ac

    jr nz, jr_004_69ae

    jr nz, jr_004_6991

jr_004_6991:
    add h
    dec e
    rra
    jr nz, jr_004_69b5

    jr nz, @-$66

    nop
    db $10
    rlca
    sub a
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    dec e
    ld e, $22
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    sbc b
    nop

jr_004_69ac:
    db $10
    rlca

jr_004_69ae:
    sub a
    inc h
    dec h
    inc h
    dec h
    inc h
    dec h

jr_004_69b5:
    dec e
    ld e, $24
    dec h
    inc h
    dec h
    inc h
    dec h
    sbc b
    nop
    db $10
    rlca
    sub a
    daa
    dec h
    daa
    dec h
    daa
    dec h
    dec e
    ld e, $27
    dec h
    daa
    dec h
    daa
    dec h
    sbc b
    nop
    db $10
    rlca
    sub a
    rlca
    ld hl, $2107
    rlca
    ld hl, $1e1d
    rlca
    ld hl, $2107
    rlca
    ld hl, $0098
    db $10
    rlca
    sub a
    rlca
    ld hl, $2107
    rlca
    ld hl, $8f8e
    rlca
    ld hl, $2107
    rlca
    ld hl, $0098
    db $10
    rlca
    sbc c
    nop
    ld b, $9a
    sbc e
    sbc h
    nop
    ld b, $9a
    sbc l
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
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    pop af
    ld [hl], b
    rst $38
    add hl, bc
    ld a, [bc]
    nop
    ld bc, $0601
    ld b, $18
    jr jr_004_6a93

    ld b, $00
    rrca
    rrca
    ld [hl], b
    ld [hl], b
    add b
    add b
    add hl, bc

jr_004_6a93:
    ld a, [bc]
    nop
    ld hl, sp-$08
    rlca
    rlca
    add hl, bc
    stop
    ret nz

    ret nz

    jr nc, jr_004_6ad0

    inc c
    inc c
    ld a, a
    pop af
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    rst $38
    add hl, bc
    ld a, [bc]
    nop
    ld bc, $0601
    rlca
    jr jr_004_6ada

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

jr_004_6ad0:
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

jr_004_6ada:
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
    jr nz, jr_004_6b0b

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
    jr nz, jr_004_6b12

    db $10
    add hl, bc
    ld b, $00
    add hl, bc
    inc b
    ld bc, $0302

jr_004_6b0b:
    add hl, bc
    add e
    ld [bc], a
    rlca
    jr nz, jr_004_6b50

    ld b, b

jr_004_6b12:
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

jr_004_6b2a:
    rst $38
    nop

jr_004_6b2c:
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

    jr nz, jr_004_6b2a

    jr nz, jr_004_6b2c

    db $10
    ldh a, [rDIV]
    inc b

jr_004_6b50:
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
    jr jr_004_6bab

    jr c, jr_004_6bbd

    jr c, jr_004_6bbf

    db $10
    rra
    db $10
    rra
    jr jr_004_6bbc

    jr jr_004_6bbe

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

jr_004_6bab:
    inc c
    db $fc

jr_004_6bad:
    inc c
    db $fc

jr_004_6baf:
    inc e
    db $fc
    jr jr_004_6bab

    jr c, jr_004_6bad

    jr c, jr_004_6baf

    rlca
    dec b
    rlca
    dec b
    inc bc

jr_004_6bbc:
    ld [bc], a

jr_004_6bbd:
    inc bc

jr_004_6bbe:
    ld [bc], a

jr_004_6bbf:
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
    jr nz, jr_004_6c5e

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

jr_004_6c5e:
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
    ld [$e000], sp
    rra
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    rst $38
    rst $38
    nop
    add hl, bc
    add hl, bc
    rst $38
    ld a, [hl]
    ld bc, $017e
    nop
    rst $38
    nop
    add hl, bc
    add hl, bc
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    rst $38
    rst $38
    ld a, a
    pop af
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    rst $38
    rst $38
    nop
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
    nop
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, [hl]
    ld bc, $017e
    nop
    rst $38
    ld [hl], b
    pop af
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    ld a, [hl]
    ld bc, $017e
    nop
    rst $38
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
    jr z, jr_004_6d69

jr_004_6d69:
    add hl, bc
    nop
    ld e, l
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $835d
    nop
    ld e, l
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
    ld e, l
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
    ld bc, $835d
    nop
    ld e, l
    dec bc
    ld [bc], a
    ld bc, $835d
    nop
    ld e, l
    dec b
    ld [bc], a
    inc bc
    ld bc, $065d
    ld [bc], a
    inc bc
    ld bc, $5d00
    inc c
    ld [bc], a
    nop
    ld bc, $5d00
    ld b, $02
    inc b
    nop
    ld e, l
    ld b, $02
    inc b
    ld e, l
    add e
    nop
    ld [bc], a
    nop
    ld e, l
    ld b, $02
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $835d
    nop
    ld e, l
    add h
    dec b
    ld [bc], a
    add hl, bc
    ld bc, $5d02
    add h
    ld a, [bc]
    ld [bc], a
    add hl, bc
    ld bc, $0200
    ld [bc], a
    ld bc, $065d
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0e00
    rrca
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $0004
    ld e, l
    add e
    ld [de], a
    ld e, l
    add e
    inc d
    inc b
    ld e, l
    add e
    nop
    ld [bc], a
    nop
    ld e, l
    ld b, $02
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    rla
    ld e, l
    inc b
    ld [bc], a
    jr @+$0b

    ld bc, $5d19
    inc b
    inc d
    ld a, [de]
    add hl, bc
    ld bc, $0200
    ld [bc], a
    ld bc, $065d
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $1b00
    ld e, l
    inc b
    ld [bc], a
    inc e
    inc b
    nop
    dec e
    ld e, l
    inc b
    inc d
    ld e, $04
    ld e, l
    add e
    nop
    ld [bc], a
    nop
    ld e, l
    ld b, $02
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld e, l
    add e
    rra
    ld [bc], a
    ld [hl+], a
    inc hl
    add hl, bc
    ld bc, $835d
    inc h
    inc d
    daa
    jr z, jr_004_6e65

    ld bc, $0200
    ld [bc], a
    ld bc, $065d
    ld [bc], a
    add hl, bc

jr_004_6e65:
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0200
    ld e, l
    add h
    add hl, hl
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld e, l
    add h
    dec l
    ld [bc], a
    inc b
    ld e, l
    add e
    nop
    ld [bc], a
    nop
    ld e, l
    ld b, $02
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $835d
    nop
    ld e, l
    dec b
    ld [bc], a
    add hl, bc
    ld bc, $065d
    ld [bc], a
    add hl, bc
    ld bc, $0200
    ld [bc], a
    ld bc, $065d
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $5d00
    ld b, $02
    inc b
    nop
    ld e, l
    ld b, $02
    inc b
    ld e, l
    add e
    nop
    ld e, l
    dec bc
    ld [bc], a
    ld bc, $0100
    ld e, l
    add e
    ld sp, $3332
    ld [hl-], a
    inc [hl]
    ld bc, $835d
    ld sp, $3332
    ld [hl-], a
    inc [hl]
    ld bc, $5d00
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
    ld bc, $835d
    nop
    ld e, l
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
    ld e, l
    inc c
    ld [bc], a
    nop
    ld bc, $0100
    ld e, l
    add e
    dec [hl]
    ld e, l
    add e
    scf
    ld [bc], a
    dec [hl]
    scf
    ld a, [hl-]
    scf
    dec sp
    inc bc
    ld bc, $835d
    nop
    ld e, l
    dec bc
    ld [bc], a
    ld bc, $0100
    nop
    inc a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    dec a
    nop
    ld bc, $5d00
    inc c
    ld [bc], a
    ld e, l
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0502
    ld b, $07
    ld [$0902], sp
    nop
    ld c, $0f
    ld [bc], a
    ld [bc], a
    db $10
    ld de, HeaderLogo
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr @+$0b

    nop
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    inc b
    ld bc, $201f
    ld hl, $2202
    inc hl
    add hl, bc
    nop
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    ld [bc], a
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0a02
    dec bc
    inc c
    dec c
    ld [bc], a
    add hl, bc
    nop
    ld [de], a
    inc de
    inc d
    inc d
    dec d
    ld d, $04
    ld bc, $1419
    inc d
    inc d
    inc d
    ld a, [de]
    add hl, bc
    nop
    dec e
    inc d
    inc d
    inc d
    inc d
    ld e, $04
    ld bc, $2524
    ld h, $14
    daa
    jr z, @+$0b

    nop
    ld [bc], a
    dec l
    ld l, $2f
    jr nc, @+$04

    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    inc hl
    ld l, a
    ld h, e
    ld l, a
    and e
    ld l, a
    dec b
    ld a, l
    cp [hl]
    ld [$5ddd], a
    xor d
    rst $38
    dec d
    push af
    ld l, a
    xor l
    rst $30
    dec hl
    rst $30
    ld a, [hl+]
    rst $30
    rst $18
    xor d
    xor [hl]
    db $db
    rst $18
    xor c
    cp a
    ld d, c
    inc de
    rst $38
    ld [hl+], a
    rst $38
    ld b, [hl]
    ei
    ld c, $ff
    ld [hl], l
    xor d
    xor d
    ld [hl], l
    push af
    xor d
    ld [$2075], a
    rst $38
    and b
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    add b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
    ld d, a
    xor b
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
    rst $38
    nop
    rst $38
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
    inc bc
    rlca
    rst $00
    dec bc
    rst $30
    rrca
    rst $28
    rla
    rst $18
    cpl
    rst $18
    cpl
    cp a
    ld e, a
    cp a
    ld e, a
    dec b
    inc d
    rst $38
    adc a
    adc a
    dec b
    inc bc
    rlca
    add a
    rlca
    rst $08
    adc a
    dec b
    inc bc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b

jr_004_70a0:
    rst $38
    add b
    cp a
    add b
    add b
    ldh [rP1], a
    rst $38
    nop
    rlca
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld [bc], a
    ld a, a
    rlca
    rlca
    add $06
    ld b, [hl]
    rst $38
    add [hl]
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    inc l
    rst $38
    ret c

    rst $38
    add sp, -$01
    dec hl
    dec hl
    nop
    rst $38
    inc bc
    db $fc
    inc c
    di
    jr nc, jr_004_70a0

    ld bc, $0fff
    cp $7e
    pop af
    ldh a, [$8f]
    ldh [$7f], a
    nop
    rst $38
    rlca
    rst $38
    ccf
    ld hl, sp-$08
    rst $00
    pop bc
    ccf
    rrca
    cp $7f
    ldh a, [rDMA]
    ei
    push bc
    ei
    jp Jump_004_637d


    cp l
    ld h, d
    cp l
    ld sp, $b1de
    sbc $d9
    ld l, [hl]
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc c
    rst $38
    add d
    ei
    add c
    db $fd
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    jr nc, @+$01

    ret nz

    rst $08
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    cp a
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    di
    dec b
    ld a, [bc]
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub l
    inc d
    rst $38
    db $10
    rst $38
    pop hl
    rra
    cp $ff
    jr nc, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    add a
    rlca
    ccf
    jr c, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    ld hl, sp-$79
    add b
    rrca
    nop
    nop
    ld hl, sp+$00
    rst $38
    ld b, $ff
    ld a, a
    dec b
    inc b
    rst $38
    ret c

    ld l, a
    db $ec
    scf
    ld l, h
    scf
    ld h, [hl]
    ld [hl+], a
    or $12
    rst $38
    ld de, $11ff
    rst $38
    ld [$7f80], sp
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    ccf
    ld h, b
    jr nz, @-$1e

    nop
    rst $38
    nop
    rst $38
    and b
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
    ld bc, $0080
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
    inc bc
    dec b
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
    rlca
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    nop
    pop hl
    nop
    pop hl
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    sbc a
    nop
    rrca
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    ld a, a
    ret nz

    ccf
    add b
    nop
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
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $30
    inc bc
    rst $30
    inc bc
    rst $28
    inc bc
    rrca
    di
    rst $38
    rrca
    dec b
    ld b, $ff
    ld hl, sp-$08
    dec b
    inc bc
    ldh a, [$f8]
    ldh a, [$fc]
    dec b
    inc b
    rst $38
    dec b
    inc bc
    cp $ff
    cp $ff
    dec b
    dec b
    ld a, a
    dec b
    inc bc
    rst $38
    rra
    rra
    dec b
    dec b
    rrca
    sbc a
    rra
    dec b
    ld b, $ff
    adc b
    rst $38
    add h
    rst $38
    call nz, $c4ff
    rst $38
    jp nz, $e2ff

    and $fb
    di
    db $fd
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld b, b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp+$00
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
    rrca
    nop
    nop
    ldh a, [rP1]
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
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rrca
    nop
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
    nop
    rst $38
    nop
    ccf
    nop
    nop
    ldh a, [rP1]
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
    ld a, a
    nop
    ld bc, $00c0
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $08
    nop
    di
    nop
    nop
    add b
    nop
    cp $00
    nop
    ld a, $00
    ld e, $00
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    jp Jump_000_0f00


    nop
    sbc [hl]
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
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
    rrca
    pop af
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    dec sp
    ret nz

    ld sp, $71c0
    add b
    ld [hl], c
    add b
    ld hl, sp+$05
    dec b
    rst $38
    cp $fe
    dec b
    inc bc
    db $fc
    cp $fc
    rst $38
    cp $05
    rlca
    rst $38
    ccf
    ccf
    dec b
    dec b
    rra
    ccf
    ccf
    dec b
    inc bc
    rst $38
    rst $00
    rst $00
    dec b
    inc bc
    add e
    jp $e783


    rst $00
    dec b
    dec b
    rst $38
    di
    db $fd
    pop af
    cp $f9
    cp $f9
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ldh a, [$03]
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
    nop
    jp $e700


    nop
    ccf
    ret nz

    rrca
    ldh a, [rSC]
    rst $38
    nop
    rst $38
    nop
    jp Jump_000_003c


    rst $18
    nop
    add b
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    db $fc
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
    rlca
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    add b
    ld b, a
    add b
    rlca
    ret nz

    add a
    ld b, b
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
    ccf
    rst $38
    ccf
    pop af
    pop af
    dec b
    inc bc
    ldh [$f0], a
    ldh [$f9], a
    pop af
    dec b
    rlca
    rst $38
    cp $05
    ld a, [bc]
    rst $38
    db $fc
    db $fc
    db $e3
    pop hl
    ld e, $80
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
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
    ld hl, sp+$07
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    db $fc
    inc bc
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_004_747b:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$af]
    ld b, b
    cp [hl]
    ld b, b
    sbc $20
    sbc $20
    rst $18
    jr nz, jr_004_747b

    jr nc, @-$0f

    db $10
    db $ed
    db $10
    ld a, a
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ld a, a
    rrca
    rst $38
    inc c
    db $fc
    inc bc
    ldh a, [rIF]
    dec b
    dec b
    rst $38
    cp $fe
    pop af
    ldh a, [$8f]
    add b
    ld a, a
    nop
    rst $38
    nop
    sbc a
    rst $38
    ld hl, sp-$08
    rst $00
    ret nz

    ccf
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop af
    nop
    ei
    nop
    rst $38
    nop
    db $fc
    nop
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    cp $00
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
    inc bc
    nop
    nop
    db $fc
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
    inc bc
    nop
    nop
    db $fc
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
    rlca
    nop
    nop
    ld hl, sp+$00
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    ldh [rNR23], a
    ldh a, [$08]
    ldh a, [$08]
    push af
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, $c0
    inc a
    nop
    rra
    nop
    ld e, $00
    inc a
    nop
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $20
    nop
    rst $00
    ld bc, $07ce
    ld hl, sp+$3f
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
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $00e0
    rst $38
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
    inc bc
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ldh [$1f], a
    nop
    ldh [rP1], a
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
    ldh a, [rTIMA]
    dec b
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
    dec b
    add hl, bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rTIMA]
    ld [$0100], sp
    cp $03
    db $fc
    rlca
    ld hl, sp+$00
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
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
    pop af
    ld c, $c1
    ld a, $00
    rst $38
    nop
    ld bc, $0805
    nop
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, a
    nop
    db $fc
    nop
    ldh [rTIMA], a
    rlca
    nop
    ld a, a
    nop
    rst $38
    nop
    ret nz

    dec b
    ld a, [bc]
    nop
    inc bc
    db $fc
    ld bc, $00fe
    ld bc, $0a05
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
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    rra
    nop
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
    nop
    rst $38
    nop
    ccf
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    add b
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    nop
    ld hl, sp+$00
    rst $38
    dec b
    ld b, $00
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rra
    nop
    nop
    ldh [rTIMA], a
    inc b
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rst $08
    nop
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    dec bc
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$05
    dec bc
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    rlca
    nop
    inc bc
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
    dec b
    ld e, a
    nop
    rrca
    dec b
    dec bc
    nop
    db $10
    jr nz, jr_004_7781

    ret nz

    ld a, h
    dec b
    dec bc
    nop
    rrca
    rra
    nop
    ld a, $3e
    dec b
    dec bc
    nop
    add b
    dec b
    rlca
    nop
    ld bc, $0103
    ld b, $06
    inc c
    inc c
    jr jr_004_7777

    jr @+$16

    jr c, jr_004_7793

    rra
    ld h, c

jr_004_7761:
    rst $38
    ccf
    jp $03c3


    inc bc
    dec b
    ld [$f807], sp
    add e
    rst $30
    ldh a, [$cf]
    xor [hl]
    jp $c1a3


    and c
    ret nz

    and b
    ret nz

jr_004_7777:
    and b
    ret nz

    and b
    nop
    add b
    nop
    ldh [$c0], a
    jr nc, jr_004_7761

jr_004_7781:
    sub b
    ldh [$d8], a
    ldh a, [$c8]
    ldh a, [$e8]
    ldh a, [$e8]
    dec b
    rrca
    nop
    rlca
    dec b
    rrca
    nop
    ldh [rTIMA], a

jr_004_7793:
    ld b, $00
    dec b
    rlca
    ld bc, $793d
    add a
    ld a, h
    ld a, h
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    pop hl
    ret nc

    dec b
    dec c
    nop
    ld hl, sp-$10
    ld bc, $0d05
    nop
    ld a, [hl]
    db $fc
    ld [bc], a
    dec b
    dec c
    nop
    rlca
    rrca
    db $10
    dec b
    dec c
    nop
    pop hl
    jp nz, Jump_000_0521

    dec c
    nop
    ld b, $0c
    add e
    dec b
    rrca
    nop
    inc c
    jr c, jr_004_7803

    jr c, jr_004_7807

    inc a
    ld [hl-], a
    inc a
    dec sp
    ld e, $19
    rra
    inc e
    rrca
    ld c, $03
    inc bc

jr_004_77dd:
    dec b
    add hl, bc
    rlca
    add a
    rlca
    rst $00
    add a
    scf
    ld h, a
    rlca
    ret nz

    and b
    ret nz

    and b
    pop bc
    and e
    rst $00
    and e
    rst $08
    xor [hl]
    jp $c0a3


    and b
    ret nz

    and b
    ldh a, [rTIMA]
    inc bc
    ldh [$c0], a
    ret nz

    add b
    ldh [$c1], a
    ld sp, $99e1

jr_004_7803:
    di
    rst $08
    ei
    rst $20

jr_004_7807:
    rrca
    db $10
    ccf
    rra
    ld [hl], e
    ld [hl], e
    jp $c3e3


    and e
    jp $c3a3


    and e
    jp $c1b3


    jr nz, jr_004_77dd

    and e
    add $a7
    adc $ad
    adc $ad
    sbc $bd
    sbc $bd
    sbc $bd
    db $fd
    di
    rst $38
    ld sp, hl
    ld a, l
    ld a, l
    add hl, sp
    add hl, sp
    ld de, $0111
    ld bc, $0305
    inc bc
    add e
    db $e3
    db $d3
    rst $20
    rst $10
    xor $de
    ld hl, sp-$21
    cp $f1
    rst $38
    db $fc
    rst $38
    cp $ef
    sbc $e3
    pop hl
    add a
    add a
    inc c
    ld c, $1c
    ld a, [de]
    inc e
    sbc d
    inc a
    cp d
    inc a
    ld a, [$7bbc]
    db $fc
    ld a, [$3a3c]
    inc a
    ld a, [hl-]
    dec a
    dec sp
    ccf
    dec sp
    ccf
    dec sp
    dec b
    inc bc
    ccf
    dec sp
    ccf
    rra
    ld [hl], e
    ld [hl], e
    jp $c3e3


    and e
    jp $c3a3


    and e
    jp $e7b3


    sbc a
    rst $00
    and h
    rst $08
    xor [hl]
    rst $18
    cp [hl]
    rst $18
    cp [hl]
    rst $38
    xor [hl]
    rst $38
    xor a
    rst $38
    xor [hl]
    rst $28
    cp [hl]
    ld e, $99
    ld a, $bd
    ld a, [hl]
    db $fd
    sbc $dd
    sbc a

jr_004_7890:
    sbc l
    ld e, $9f
    ld e, $9d
    ld e, $9d
    jr @+$08

    inc a
    ld [hl-], a
    ld a, h
    ld a, d

jr_004_789d:
    db $fc
    ld a, [$3b3d]
    ccf
    ld a, [hl-]
    ccf
    ld a, [hl-]
    ld a, $3b
    nop
    db $10
    jr nz, jr_004_78c3

    ld [hl], c
    ld c, c
    di
    db $eb
    rst $30
    rst $28
    db $fd
    db $ed
    ld sp, hl
    jp hl


    pop af
    ld sp, hl

jr_004_78b7:
    nop
    ld h, b
    ret nz

    jr nc, jr_004_789d

    sub b
    db $e3
    db $d3
    rst $20
    rst $10
    rst $28
    rst $18

jr_004_78c3:
    rst $30
    rst $10
    db $e3
    di
    dec b
    inc bc
    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nz, jr_004_7890

    and c
    jp $c7a1


    and a
    call z, Call_000_05ae
    rlca
    nop
    ld [hl], b
    ldh [rNR32], a
    ld hl, sp-$3a
    db $fc
    ld a, [c]
    ld a, h
    ld a, e
    dec b
    dec c
    nop
    db $10
    jr nz, jr_004_7901

    dec b
    dec c
    nop
    ld h, b
    ret nz

    jr nc, jr_004_78b7

    rst $00
    dec b
    dec bc
    rlca
    rla
    daa
    rrca
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    add b

jr_004_7901:
    add b
    ret nz

    add b
    nop
    nop
    ld bc, $777b
    ld a, a
    ld [hl], a
    ld a, a
    ld a, e
    ld a, a
    ld a, e
    ld a, c
    ld a, l
    ld a, b
    ld [hl], b
    ldh a, [$f0]
    ldh [$e0], a
    rst $20
    sbc a
    rst $38
    rst $08
    ei
    ei
    di
    di
    db $e3
    db $e3
    pop bc
    pop bc
    dec b
    inc b
    nop
    rst $18
    cp h
    rst $18
    cp [hl]
    rst $18
    cp a
    rst $28
    xor a
    rst $00
    rst $00
    add b
    add b
    dec b
    inc b
    nop
    inc bc
    jp Jump_004_7d85


    ld sp, hl
    add hl, bc
    pop af
    pop af
    pop hl
    pop hl
    dec b
    ld b, $00
    rst $20
    rst $10
    rst $20
    rst $10
    db $e3
    dec b
    inc bc
    jp $8181


    dec b
    ld b, $00
    cp [hl]
    ld a, c
    rst $38
    inc a
    rst $38
    cp a
    rst $18
    rst $18
    add [hl]
    add [hl]
    inc b
    ld b, $0c
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, a
    ei
    rst $38
    ei
    cp a
    cp e
    dec a
    dec sp
    inc a
    ld a, [hl-]
    inc a
    ld a, [hl-]
    inc a
    ld a, [hl-]
    inc a
    jr c, @+$01

    rst $08
    ei
    ei
    di
    di
    db $e3
    db $e3
    pop bc
    pop bc
    dec b
    ld b, $00
    rst $28
    sbc $ef
    sbc $ef
    dec b
    inc bc
    adc $8c
    adc h
    dec b
    ld b, $00
    ld e, $9d
    ld e, $9d
    ld e, $05
    inc bc
    inc e
    jr jr_004_79ab

    dec b
    ld b, $00
    ld a, $3d
    ld a, $3d
    ld a, $05
    inc bc
    inc a
    jr c, @+$3a

    db $10
    db $10
    dec b
    inc b
    nop
    pop af
    jp hl


    pop af
    jp hl


    pop af
    jp hl


jr_004_79ab:
    pop af
    jp hl


    pop af
    dec b
    inc bc
    pop hl
    pop bc
    pop bc
    nop
    nop
    db $e3
    db $d3
    db $e3
    db $d3
    db $e3
    db $d3
    db $e3
    db $d3
    db $e3
    dec b
    inc bc
    jp $8383


    ld bc, $dc01
    cp d
    call c, $fcba
    cp d
    db $fc
    cp e
    cp $f9
    cp $bd
    sbc a
    sbc h
    rra
    ld e, $3e
    add hl, sp
    ld a, $3d
    rra
    dec e

jr_004_79db:
    ld e, $1e
    inc e
    ld e, $1c
    sbc b
    jr jr_004_79db

    ldh a, [$30]
    ld [hl], c
    ld c, c
    di
    db $eb
    rst $30
    rst $28
    db $fd
    db $ed
    ld sp, hl
    jp hl


    pop af
    ld sp, hl
    pop af
    jp hl


    pop af
    jp hl


    ldh [$90], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ld e, [hl]
    ld b, a
    scf
    inc [hl]
    rrca
    rrca
    dec b
    ld a, [bc]
    nop
    inc bc
    db $fd
    rst $38
    rlca
    db $fc
    db $fc

jr_004_7a14:
    dec b
    ld a, [bc]
    nop
    ret nz

    ret nz

    dec b
    ld c, $00
    inc e
    ld a, [de]
    inc e
    dec de
    ld e, $19
    rra
    inc e
    rra
    ld e, $0f
    rrca
    rlca
    rlca
    nop
    nop
    jr c, jr_004_7a6a

    jr c, jr_004_7a60

    jr nc, @-$4e

    jr nz, jr_004_7a14

    ret nz

    ld b, b
    add b
    add b
    dec b
    ld [de], a
    nop
    ld b, $00
    rrca
    rrca
    inc bc
    inc bc
    dec b
    inc c
    nop
    ldh [$e0], a
    add b
    add b
    dec b
    ld a, [bc]
    nop
    ld h, b
    nop
    pop af
    jp hl


    pop af
    jp hl


    pop af
    dec b
    inc bc
    pop hl
    ret nz

    ret nz

    dec b
    ld b, $00
    ldh [$d4], a
    add sp, -$30
    ldh a, [$d0]

jr_004_7a60:
    ldh [$e0], a
    ret nz

    ret nz

    dec b
    dec bc
    nop
    ld d, l
    nop
    xor d

jr_004_7a6a:
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop

jr_004_7a71:
    xor d
    dec b
    dec b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    dec b
    rlca
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    dec b
    add hl, bc
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    dec b
    add hl, bc
    nop
    ld b, b
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    dec b
    dec bc
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    dec b
    dec bc
    nop
    xor b
    nop
    ld d, l
    nop
    xor d
    dec b
    dec c
    nop
    ld d, l
    ld bc, $05aa
    dec c
    nop
    ld d, l
    db $fc
    ld a, $05
    inc c
    nop
    inc bc
    ld d, h
    ld bc, $01aa
    nop
    ld h, $00
    jr jr_004_7ac9

jr_004_7ac9:
    and b
    nop
    ld b, b
    nop
    add b
    dec b
    inc b
    nop
    xor d
    ldh [rTIMA], a
    ld c, $00
    xor d
    stop
    jr nc, jr_004_7adb

jr_004_7adb:
    stop
    jr nc, jr_004_7adf

jr_004_7adf:
    stop
    stop
    ld h, b
    nop
    jr nz, jr_004_7a71

    dec b
    rrca
    nop
    add b
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    xor d
    ld d, l
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    add b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    xor d
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    rlca
    dec b
    inc bc
    nop
    xor d
    nop
    ld d, l
    and b
    ld a, [bc]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    rst $38
    dec b
    inc bc
    nop
    add b
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    dec b
    inc bc
    nop
    ld d, b
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    dec b
    inc bc
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
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
    ld b, $06
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rrca
    ld [de], a
    ld [de], a
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    sub h
    rst $38
    ld h, d
    ld a, a
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop

jr_004_7b82:
    rst $38
    jr c, @+$01

    call nz, $82ff
    rst $28
    add c
    rst $38
    nop
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $53
    add hl, bc
    rst $30
    ld d, $ef
    jr nz, jr_004_7b82

    inc e
    rst $38
    db $e4
    ld a, a
    inc b
    rst $38
    ld b, e
    rst $38
    ld [de], a
    ld d, a
    sub e
    rst $38
    adc h
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $18
    ld b, b
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $51
    jp nz, $b23d

    call $fb54
    inc l
    di
    db $e4
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    ld d, l
    nop
    rst $38
    jr c, @+$01

    ld d, a
    rst $38
    adc l
    rst $38
    ld d, d
    rst $38
    and c
    rst $38
    db $10
    rst $38
    ld h, b
    sbc a
    ld h, b
    sbc a
    ret nz

    ccf
    ld b, b
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    add b
    xor d
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    ld e, a
    xor d
    xor a
    ld e, a
    ld e, a
    cp a
    cp a
    ld e, a
    ld e, l
    dec sp
    xor d
    push af
    ld [hl], l
    ld [$5dba], a
    ld d, a
    xor [hl]
    xor e
    ld d, l
    push de
    ld [$f5fa], a
    pop hl
    and c
    ld [$7555], a
    cp d
    xor d
    ld e, l
    ld d, l
    xor [hl]
    xor e
    rst $10
    ld [hl], l
    ld [$5dba], a

jr_004_7c4b:
    ld [de], a
    ld [de], a
    xor c
    db $dd
    ld b, l
    xor $aa
    ld [hl], a
    ld d, c
    cp e
    xor d
    ld e, l
    push de
    xor [hl]
    ld [$4077], a
    ld b, e
    jr nz, jr_004_7c7f

    rst $10
    cp e
    cp $55
    ld e, l
    ld [$fdaa], a
    ld e, l
    ld a, [$d7fe]
    add c
    rst $38
    ld b, d
    ld b, d
    or h
    or h
    cp d
    db $dd
    ld e, a
    or a
    xor d
    ld a, l
    ld c, l
    cp $aa
    call $ffa2
    ld [hl+], a
    ld a, l

jr_004_7c7f:
    inc d
    db $10
    jr z, jr_004_7c4b

    db $dd
    xor d
    ld a, [$5555]
    ld a, [$75aa]
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    nop
    ld d, h
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    inc b
    nop
    xor a
    ld e, a
    ld [hl], l
    ei
    xor d
    rst $10
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $f201
    ld a, [c]
    ld a, a
    ld [$d7bf], a
    db $10
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    and b
    cp a
    jr nz, jr_004_7ce6

    ldh a, [$e0]
    xor d
    ld [hl], l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    xor d
    ld d, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_004_7ce6:
    dec b
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
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    nop
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d

Jump_004_7cff:
    ld d, l
    ld b, b
    and b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    nop
    ld a, h
    add b
    rst $38
    nop
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, a
    xor b
    rst $38
    nop
    nop
    rst $38
    nop
    ccf
    nop
    nop
    ldh a, [rP1]
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld bc, $aa55
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    dec b
    ld [$05ff], sp
    add e
    db $fd
    dec b
    dec c
    rst $38
    ld d, a
    xor [hl]
    rst $38
    ld bc, $c0ff
    rst $38
    ldh a, [$fc]
    dec b
    rlca
    rst $38
    ld d, l
    cp e
    rst $28
    sbc l
    rst $38
    ld h, d
    rst $38
    inc e
    ld [$08ff], sp
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    push de
    cp e
    xor d
    ld e, l
    rst $38
    inc d
    rst $38
    ld [de], a
    add hl, bc
    rst $38
    ld [$08ff], sp
    db $fd
    inc b
    rst $38

Jump_004_7d85:
    ld d, a
    xor a
    cp [hl]
    dec e
    rst $38
    inc h
    rst $28
    call nz, $bf04
    dec c
    rst $38
    dec d
    cp a
    ld h, $ff
    ld [hl], l
    xor d
    ld [$d5d5], a
    ld [$80ff], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, a
    xor d
    xor a
    ld e, a
    ld e, l
    cp [hl]
    rst $38
    jr nz, jr_004_7dae

jr_004_7dae:
    rst $38
    inc bc
    db $fd
    ld c, $f7
    jr c, @-$1f

    dec b
    nop
    db $fc
    db $fc
    add e
    nop
    db $fc
    inc b
    nop
    inc bc
    inc b
    db $fc
    rla
    nop
    db $fc
    adc [hl]
    dec b
    db $fc
    ld [de], a
    nop
    db $fc
    sub h
    inc de
    db $fc
    dec c
    nop
    db $fc
    sub e
    daa
    db $fc
    dec c
    nop
    db $fc
    add e
    ld a, [hl-]
    db $fc
    inc b
    nop
    dec a
    ld a, $fc
    dec b
    nop
    db $fc
    add l
    ccf
    db $fc
    inc c
    nop
    db $fc
    add e
    ld b, h
    ld b, [hl]
    ld b, [hl]
    db $fc
    inc bc
    ld b, a
    ld c, b
    ld c, c
    db $fc
    adc c
    ld c, c
    db $fc
    dec c
    nop
    ld d, d
    db $fc
    sub d
    ld d, d
    ld h, e
    db $fc
    inc c
    nop
    db $fc
    ld b, $64
    db $fc
    adc [hl]
    ld h, l
    db $fc
    inc c
    nop
    ld h, h
    db $fc
    sub c
    ld [hl], e
    add e
    add h
    db $fc
    inc c
    nop
    db $fc
    add e
    add l
    db $fc
    add l
    add a
    adc d
    db $fc
    adc b
    adc h
    db $fc
    inc bc
    ld h, e
    db $fc
    inc c
    nop
    sub h
    db $fc
    inc bc
    add a
    db $fc
    add e
    sub l
    adc d
    sbc b
    add a
    db $fc
    adc c
    sbc c
    ld h, e
    db $fc
    inc c
    nop
    db $fc
    inc b
    add a
    db $fc
    sub b
    and d
    db $fc
    inc c
    nop
    db $fc
    adc c
    or d
    ld h, e
    db $fc
    add [hl]
    cp e
    db $fc
    inc b
    ld h, e
    db $fc
    inc c
    nop
    db $fc
    dec b
    add a
    db $fc
    add a
    pop bc
    adc e
    db $fc
    add e
    ret z

    db $fc
    inc b
    ld h, e
    db $fc
    inc c
    nop
    db $fc
    inc b
    add a
    set 1, h
    ld h, e
    call $87ce
    db $fc
    adc d
    rst $08
    db $fc
    inc c
    nop
    db $fc
    inc bc
    add a
    reti


    db $fc
    inc b
    ld h, e
    jp c, $fc87

    add l
    db $db
    db $fc
    inc b
    add a
    ldh [$fc], a
    inc c
    nop
    db $fc
    add e
    pop hl
    db $fc
    adc l
    db $e3
    rst $28
    rst $28
    ldh a, [$63]
    db $fc
    inc c
    nop
    add a
    db $fc
    add a
    pop af
    ld h, e
    ld hl, sp-$07
    nop
    add hl, bc
    ld a, [$fcfb]
    dec b
    ld h, e
    db $fc
    inc c
    nop
    db $fc
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
