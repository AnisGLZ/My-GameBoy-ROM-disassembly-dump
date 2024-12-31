; Disassembly of "4-in-1 Fun Pak (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld a, [$c703]
    and $f0
    ret nz

    ld a, [$c706]
    or a
    jr z, jr_005_4011

    dec a
    ld [$c706], a
    ret


jr_005_4011:
    ld a, [$c3a2]
    or a
    jr z, jr_005_4033

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_005_4033

    ld b, $05
    ld hl, $4c04
    call Call_000_09de
    ld a, [$c70b]
    or a
    ret nz

    inc a
    ld [$c70b], a
    ret


jr_005_4033:
    ld a, [$c707]
    or a
    jp nz, Jump_005_41b4

    ld a, [$c709]
    or a
    jr z, jr_005_4048

    ld a, [$c708]
    or a
    jr nz, jr_005_4055

    jr jr_005_407e

jr_005_4048:
    ld a, [$c310]
    cp $02
    jr z, jr_005_407e

    ld a, [$c708]
    or a
    jr z, jr_005_4070

jr_005_4055:
    call Call_005_43dd
    ld a, c
    or a
    jr nz, jr_005_4070

    ld a, $1e
    ld [$c706], a
    ld a, $05
    ld c, $84
    ld b, $04
    ld hl, $5490
    call Call_000_09de
    jp Jump_005_42b4


jr_005_4070:
    ld a, [$c310]
    cp $01
    ret nz

    ld a, [$c708]
    or a
    jp nz, Jump_005_4123

    ret


jr_005_407e:
    ld a, [$c708]
    or a
    ret nz

    ld b, $04
    ld hl, $47c7
    call Call_000_09de
    ld a, $01
    ld [$c708], a
    ld bc, $2710

jr_005_4093:
    dec bc
    ld a, b
    or c
    jr nz, jr_005_4093

    ld a, [$c70b]
    or a
    ret nz

    ld a, [$c715]
    ld b, a
    ld a, [$c716]
    cp b
    ret nz

    ld a, [$c70d]
    cp $05
    jr z, jr_005_40b4

    inc a
    ld [$c70d], a
    xor a
    jr jr_005_40b8

jr_005_40b4:
    xor a
    ld [$c70d], a

jr_005_40b8:
    ld [$c7d9], a
    inc a
    ld [$c70c], a
    ld a, $3c
    ld [$c706], a
    ld a, $09
    ld c, $fd
    ld b, $04
    ld hl, $5490
    call Call_000_09de
    xor a
    ld [$c708], a
    ld [$c7d9], a
    ld [$c7da], a
    ld a, [$c3ae]
    or a
    jr z, jr_005_40eb

    ld a, [$c3ad]
    and $01
    jr nz, jr_005_40eb

    xor a
    call Call_000_0d56

jr_005_40eb:
    ld b, $04
    ld hl, $47c7
    call Call_000_09de
    ld a, $01
    ld [$c708], a
    ld a, [$c3ae]
    or a
    jr z, jr_005_411e

    ld a, [$c3ad]
    and $01
    jr z, jr_005_411e

    ld a, $01
    ld [$c7da], a
    call Call_000_0d56
    rst $18
    ld a, $01
    ld [$c7da], a
    call Call_000_0d56
    ld bc, $2710

jr_005_4119:
    dec bc
    ld a, b
    or c
    jr nz, jr_005_4119

jr_005_411e:
    xor a
    ld [$cc62], a
    ret


Jump_005_4123:
    ld a, $85
    ld [$c3ba], a
    ld a, [$c3a1]
    ld c, a
    ld b, $04
    ld hl, $5ad1
    call Call_000_09de
    or a
    jr z, jr_005_4174

    ld a, [$c700]
    ld b, a
    or a
    jr z, jr_005_419d

    cp $19
    jr nz, jr_005_415e

jr_005_4142:
    ld a, b
    ld [$c70a], a
    dec [hl]
    call Call_005_44b7
    ld b, $04
    ld hl, $43d3
    call Call_000_09de
    ld a, [$c3a1]
    ld [$c705], a
    ld a, $01
    ld [$c707], a
    ret


jr_005_415e:
    ld a, [$c3a1]
    or a
    jr z, jr_005_416c

    ld a, [$c619]
    or a
    jr z, jr_005_4142

    jr jr_005_41a8

jr_005_416c:
    ld a, [$c519]
    or a
    jr z, jr_005_4142

    jr jr_005_41a8

jr_005_4174:
    ld a, [$c3a1]
    xor $01
    ld c, a
    ld b, $04
    ld hl, $5ad1
    call Call_000_09de
    or a
    jr nz, jr_005_4191

    ld a, $07
    ld c, $84
    ld b, $04
    ld hl, $5490
    jp Jump_000_09de


jr_005_4191:
    ld a, $08
    ld c, $84
    ld b, $04
    ld hl, $5490
    jp Jump_000_09de


jr_005_419d:
    xor a
    ld c, $84
    ld b, $04
    ld hl, $5490
    jp Jump_000_09de


jr_005_41a8:
    ld a, $11
    ld c, $84
    ld b, $04
    ld hl, $5490
    jp Jump_000_09de


Jump_005_41b4:
    xor a
    ld [$c719], a
    ld [$c71a], a
    ld [$c71b], a
    ld [$c71c], a
    ld a, [$c310]
    cp $02
    jp z, Jump_005_42f0

    cp $01
    ret nz

    ld a, [$c3a1]
    ld c, a
    ld b, $04
    ld hl, $5ad1
    call Call_000_09de
    ld a, [$c3a1]
    or a
    jr z, jr_005_41ea

    ld a, [$c712]
    or a
    jr z, jr_005_41f6

    ld hl, $c606
    jp Jump_005_4310


jr_005_41ea:
    ld a, [$c711]
    or a
    jr z, jr_005_41f6

    ld hl, $c506
    jp Jump_005_4310


jr_005_41f6:
    ld a, [$c700]
    or a
    jp z, Jump_005_42e5

Jump_005_41fd:
    ld a, [$c70a]
    ld c, a
    cp $19
    ld a, [$c700]
    jr nz, jr_005_4212

    cp $19
    jp z, Jump_005_42f0

    cp $13
    jp c, Jump_005_42e5

jr_005_4212:
    sub c
    jp nc, Jump_005_42e5

    cpl
    inc a
    ld b, a
    ld a, [$c714]
    cp b
    jr z, jr_005_4247

    ld a, [$c717]
    cp b
    jr z, jr_005_4240

    ld a, [$c715]
    cp b
    jr z, jr_005_4239

    ld a, [$c716]
    cp b
    jp nz, Jump_005_42e5

Jump_005_4232:
    ld a, $01
    ld [$c71b], a
    jr jr_005_424c

Jump_005_4239:
jr_005_4239:
    ld a, $01
    ld [$c71a], a
    jr jr_005_424c

Jump_005_4240:
jr_005_4240:
    ld a, $01
    ld [$c71c], a
    jr jr_005_424c

Jump_005_4247:
jr_005_4247:
    ld a, $01
    ld [$c719], a

jr_005_424c:
    ld a, [$c700]
    or a
    jr z, jr_005_4278

    ld a, [$c3a1]
    xor $01
    ld c, a
    ld b, $04
    ld hl, $5ad1
    call Call_000_09de
    or a
    jr z, jr_005_4278

    cp $01
    jr nz, jr_005_42e5

    dec [hl]
    call Call_005_4534
    ld hl, $c619
    ld a, [$c3a1]
    or a
    jr z, jr_005_4277

    ld hl, $c519

jr_005_4277:
    inc [hl]

jr_005_4278:
    call Call_005_4546
    ld a, $86
    ld [$c3ba], a
    ld a, [$c3a1]
    ld c, a
    ld b, $04
    ld hl, $5ad1
    call Call_000_09de
    inc [hl]
    ld a, [$c719]
    or a
    call nz, Call_005_4399
    ld a, [$c71a]
    or a
    call nz, Call_005_43aa
    ld a, [$c71b]
    or a
    call nz, Call_005_43bb
    ld a, [$c71c]
    or a
    call nz, Call_005_43cc
    ld hl, $c714
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    jr nz, jr_005_42d4

Jump_005_42b4:
    ld a, [$c3a1]
    xor $01
    ld [$c3a1], a
    ld b, $04
    ld hl, $53d3
    call Call_000_09de
    call Call_005_4399
    call Call_005_43aa
    call Call_005_43bb
    call Call_005_43cc
    xor a
    ld [$c708], a

jr_005_42d4:
    ld a, $02
    ld [$c705], a
    xor a
    ld [$c707], a
    ld b, $04
    ld hl, $43d3
    jp Jump_000_09de


Jump_005_42e5:
jr_005_42e5:
    xor a
    ld c, $84
    ld b, $04
    ld hl, $5490
    jp Jump_000_09de


Jump_005_42f0:
    ld a, [$c3a1]
    or a
    jr z, jr_005_4303

    ld a, [$c70a]
    add $00
    ld l, a
    adc $c6
    sub l
    ld h, a
    inc [hl]
    jr jr_005_42d4

jr_005_4303:
    ld a, [$c70a]
    add $00
    ld l, a
    adc $c5
    sub l
    ld h, a
    inc [hl]
    jr jr_005_42d4

Jump_005_4310:
    ld a, [$c700]
    ld b, a
    ld a, [$c70a]
    sub b
    ld b, a
    jp c, Jump_005_42e5

    ld c, $06

jr_005_431e:
    ld a, [hl-]
    or a
    jr nz, jr_005_4325

    dec c
    jr jr_005_431e

jr_005_4325:
    ld a, [$c70a]
    cp c
    jr c, jr_005_432c

    ld c, a

jr_005_432c:
    ld a, [$c715]
    or a
    jr z, jr_005_435e

    sub c
    jr z, jr_005_4349

    jr c, jr_005_4349

    ld a, [$c716]
    or a
    jr z, jr_005_436c

    sub c
    jr z, jr_005_4342

    jr nc, jr_005_436c

jr_005_4342:
    ld a, b
    sub c
    jp c, Jump_005_41fd

    jr jr_005_436c

jr_005_4349:
    ld a, [$c716]
    or a
    jp z, Jump_005_41fd

    sub c
    jp z, Jump_005_41fd

    jp c, Jump_005_41fd

    ld a, b
    sub c
    jp c, Jump_005_41fd

    jr jr_005_436c

jr_005_435e:
    ld a, [$c716]
    or a
    jp z, Jump_005_41fd

    sub c
    jp z, Jump_005_41fd

    jp c, Jump_005_41fd

jr_005_436c:
    ld a, b
    sub c
    jp c, Jump_005_42e5

    ld a, [$c715]
    ld c, a
    ld a, [$c716]
    cp c
    jr z, jr_005_4381

    jp nc, Jump_005_4232

    jp Jump_005_4239


jr_005_4381:
    ld a, [$c714]
    or a
    jp nz, Jump_005_4247

    ld a, [$c717]
    or a
    jp nz, Jump_005_4240

    ld a, [$c715]
    or a
    jp nz, Jump_005_4239

    jp Jump_005_4232


Call_005_4399:
    xor a
    ld [$c714], a

Call_005_439d:
    ld a, $07
    ld hl, $c7e2
    ld [hl+], a
    ld [hl], a
    ld hl, $c802
    ld [hl+], a
    ld [hl], a
    ret


Call_005_43aa:
    xor a
    ld [$c715], a

Call_005_43ae:
    ld a, $07
    ld hl, $c7e4
    ld [hl+], a
    ld [hl], a
    ld hl, $c804
    ld [hl+], a
    ld [hl], a
    ret


Call_005_43bb:
    xor a
    ld [$c716], a

Call_005_43bf:
    ld a, $07
    ld hl, $c7e6
    ld [hl+], a
    ld [hl], a
    ld hl, $c806
    ld [hl+], a
    ld [hl], a
    ret


Call_005_43cc:
    xor a
    ld [$c717], a

Call_005_43d0:
    ld a, $07
    ld hl, $c7e8
    ld [hl+], a
    ld [hl], a
    ld hl, $c808
    ld [hl+], a
    ld [hl], a
    ret


Call_005_43dd:
    ld c, $01
    ld a, [$c712]
    ld b, a
    ld a, [$c711]
    add b
    cp $02
    ret z

    ld a, [$c3a1]
    or a
    jr z, jr_005_43fe

    ld a, [$c712]
    ld [$c7c3], a
    ld de, $c500
    ld hl, $c619
    jr jr_005_440a

jr_005_43fe:
    ld a, [$c711]
    ld [$c7c3], a
    ld de, $c600
    ld hl, $c519

jr_005_440a:
    ld a, [hl-]
    or a
    jr nz, jr_005_4475

    inc de
    ld b, $18
    ld c, $00
    ld a, e
    dec a
    ld [$c7c2], a
    xor a
    ld [$cc63], a

jr_005_441c:
    ld a, [hl-]
    or a
    jr z, jr_005_4441

    ld a, [$c714]
    or a
    call nz, Call_005_4446
    ld a, [$c715]
    or a
    call nz, Call_005_4446
    ld a, [$c716]
    or a
    call nz, Call_005_4446
    ld a, [$c717]
    or a
    call nz, Call_005_4446
    ld a, $01
    ld [$cc63], a

jr_005_4441:
    inc de
    dec b
    jr nz, jr_005_441c

    ret


Call_005_4446:
    push de
    inc c
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    push bc
    ld a, [$c7c2]
    ld b, a
    ld a, e
    sub b
    pop bc
    cp $19
    jr c, jr_005_4465

    cp $1a
    jr nc, jr_005_446d

jr_005_445d:
    ld a, [$c7c3]
    or a
    jr nz, jr_005_446b

    jr jr_005_446a

jr_005_4465:
    ld a, [de]
    cp $02
    jr c, jr_005_446b

jr_005_446a:
    dec c

jr_005_446b:
    pop de
    ret


jr_005_446d:
    ld a, [$cc63]
    or a
    jr z, jr_005_445d

    jr jr_005_446a

jr_005_4475:
    ld c, $04
    ld a, [$c714]
    or a
    jr z, jr_005_4486

    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    cp $02
    jr c, jr_005_4487

jr_005_4486:
    dec c

jr_005_4487:
    ld a, [$c715]
    or a
    jr z, jr_005_4496

    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    cp $02
    jr c, jr_005_4497

jr_005_4496:
    dec c

jr_005_4497:
    ld a, [$c716]
    or a
    jr z, jr_005_44a6

    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    cp $02
    jr c, jr_005_44a7

jr_005_44a6:
    dec c

jr_005_44a7:
    ld a, [$c717]
    or a
    jr z, jr_005_44b5

    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    cp $02
    ret c

jr_005_44b5:
    dec c
    ret


Call_005_44b7:
    ret


    ld a, [$c7c0]
    cp $20
    jr nz, jr_005_44d2

    ld hl, $c725
    ld de, $c720
    ld b, $9b

jr_005_44c7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_005_44c7

    ld a, $1f
    ld [$c7c0], a

jr_005_44d2:
    ld l, a
    add a
    add a
    add l
    add $20
    ld l, a
    adc $c7
    sub l
    ld h, a
    ld a, [$c70a]
    ld b, a
    ld a, [$c3a1]
    rrca
    or b
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld a, [$c3a2]
    or a
    jr z, jr_005_4512

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_005_4512

    ld a, [$c715]
    swap a
    ld b, a
    ld a, [$c717]
    or b
    ld [hl+], a
    ld a, [$c718]
    swap a
    ld b, a
    ld a, [$c716]
    or b
    ld [hl+], a
    jr jr_005_4528

jr_005_4512:
    ld a, [$c715]
    swap a
    ld b, a
    ld a, [$c714]
    or b
    ld [hl+], a
    ld a, [$c717]
    swap a
    ld b, a
    ld a, [$c716]
    or b
    ld [hl+], a

jr_005_4528:
    ld a, [$c70f]
    rrca
    rrca
    ld b, a
    ld a, [$c70d]
    or b
    ld [hl], a
    ret


Call_005_4534:
    ret


    ld a, [$c7c0]
    ld l, a
    add a
    add a
    add l
    add $20
    ld l, a
    adc $c7
    sub l
    ld h, a
    set 6, [hl]
    ret


Call_005_4546:
    ret


    ld a, [$c7c0]
    ld l, a
    add a
    add a
    add l
    add $20
    ld l, a
    adc $c7
    sub l
    ld h, a
    ld a, [$c3a2]
    or a
    jr z, jr_005_456a

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jr z, jr_005_456a

    ld a, [$cc30]
    jr jr_005_458e

jr_005_456a:
    ld de, $c714
    ld a, [$c719]
    or a
    jr nz, jr_005_4582

    inc de
    ld a, [$c71a]
    or a
    jr nz, jr_005_4582

    inc de
    ld a, [$c71b]
    or a
    jr nz, jr_005_4582

    inc de

jr_005_4582:
    ld a, [de]
    ld b, a
    ld a, [hl]
    and $1f
    sub b
    ld a, b
    jr nc, jr_005_458e

    ld a, [hl]
    and $1f

jr_005_458e:
    inc hl
    ld [hl], a
    ld a, [$c7c0]
    inc a
    ld [$c7c0], a
    ld [$c7c1], a
    ret


Call_005_459b:
    ld a, [$cc1c]
    or a
    jr z, jr_005_45af

    cp $1a
    jr nc, jr_005_45af

    ld a, [$cc30]
    or a
    jr z, jr_005_45af

    cp $07
    jr c, jr_005_45b6

jr_005_45af:
    ldh a, [rBGP]
    cpl
    ldh [rBGP], a
    jr jr_005_45af

jr_005_45b6:
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, $85
    ld [$c3ba], a
    rst $18
    ld b, $04
    ld hl, $43d3
    call Call_000_09de
    ld a, [$cc1c]
    ld [$c70a], a
    call Call_005_44b7
    call Call_005_5cd3
    ld a, [$c719]
    or a
    call nz, Call_005_439d
    ld a, [$c71a]
    or a
    call nz, Call_005_43ae
    ld a, [$c71b]
    or a
    call nz, Call_005_43bf
    ld a, [$c71c]
    or a
    call nz, Call_005_43d0
    call Call_005_4546
    ld a, [$cc30]
    ld b, a
    ld a, [$cc1c]
    sub b
    jr nc, jr_005_460a

    xor a

jr_005_460a:
    ld [$cc4c], a
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    ld a, $19
    sub b
    cp $19
    jr z, jr_005_464a

    ld b, a
    ld a, [$cc4a]
    add b
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_464a

    dec [hl]
    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    inc [hl]
    ld hl, $c7c0
    dec [hl]
    call Call_005_4534
    ld hl, $c7c0
    inc [hl]

jr_005_464a:
    ld a, [$cc1c]
    ld b, a
    ld c, $48
    cp $0d
    jr nc, jr_005_4656

    ld c, $50

jr_005_4656:
    ld a, [$c3a3]
    xor $01
    ld [$c705], a
    ld a, c
    jr z, jr_005_4663

    xor $18

jr_005_4663:
    ld [$c702], a
    ld a, b
    add $7a
    ld l, a
    adc $46
    sub l
    ld h, a
    ld a, [hl]
    ld [$c701], a
    xor a
    ld [$c703], a
    jp Jump_005_5a6d


    ret


    ld [$241c], sp
    inc l
    ld [hl-], a
    ld a, [hl-]
    ld b, d
    ld e, h
    ld h, h
    ld l, h
    ld [hl], h
    ld a, h
    add h
    add h
    ld a, h
    ld [hl], h
    ld l, h
    ld h, h
    ld e, h
    ld b, d
    ld a, [hl-]
    ld [hl-], a
    inc l
    inc h
    inc e
    ld d, b

Call_005_4694:
    ld a, $64
    ld [$cc44], a
    ld a, $00
    ld [$cc45], a
    ld a, [$cc48]
    add $19
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_005_493b

    xor a
    ld [$cc52], a
    ld a, [$cc65]
    ld [$cc53], a
    ld a, [$cc42]
    ld b, a
    ld a, [$cc41]
    add b
    ld b, a
    ld a, [$cc40]
    add b
    ld b, a
    ld a, [$cc3f]
    add b
    jr z, jr_005_46ef

    ld a, [$cc48]
    add $01
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld b, $06

jr_005_46db:
    ld a, [hl+]
    cp $02
    jr c, jr_005_46e7

    ld a, [$cc52]
    inc a
    ld [$cc52], a

jr_005_46e7:
    dec b
    jr nz, jr_005_46db

    ld a, $19
    ld [$cc53], a

jr_005_46ef:
    ld a, [$cc53]
    ld b, a
    ld a, [$cc28]
    add b
    cp $19
    jp c, Jump_005_493b

    ld a, $01
    ld [$cc4d], a

Jump_005_4701:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp z, Jump_005_47b2

    inc a
    push af
    ld e, b
    ld d, $00
    ld l, e
    ld h, d
    call Call_000_3b07
    pop af
    ld e, a
    ld d, $00
    call Call_000_3b07
    ld de, $0048
    call Call_000_3b1d
    ld a, [$cc44]
    sub l
    ld [$cc44], a
    ld a, [$cc45]
    sbc h
    ld [$cc45], a
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    cp $02
    jp c, Jump_005_47b2

    ld a, [$cc4d]
    add $03
    ld e, a
    ld d, $00
    ld hl, $0008
    call Call_000_3b1d
    ld de, $0003
    add hl, de
    ld a, [$cc44]
    add l
    ld [$cc44], a
    ld a, [$cc45]
    adc h
    ld [$cc45], a
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    cp $04
    jr c, jr_005_47b2

    ld a, [$cc4d]
    add $03
    ld e, a
    ld d, $00
    push de
    ld e, [hl]
    ld d, $00
    ld hl, $0008
    call Call_000_3b07
    pop de
    call Call_000_3b1d
    push hl
    ld a, [$cc44]
    sub $02
    ld l, a
    ld a, [$cc45]
    sbc $00
    ld h, a
    pop de
    call Call_000_3b00
    ld a, l
    ld [$cc44], a
    ld a, h
    ld [$cc45], a

Jump_005_47b2:
jr_005_47b2:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl-]
    or a
    jp z, Jump_005_492a

    cp $02
    jr c, jr_005_47ef

    ld a, [hl]
    cp $02
    jr c, jr_005_47ef

    ld a, [$cc4d]
    add $03
    ld e, a
    ld d, $00
    ld hl, $0008
    call Call_000_3b1d
    ld de, $0004
    add hl, de
    ld a, [$cc44]
    add l
    ld [$cc44], a
    ld a, [$cc45]
    adc h
    ld [$cc45], a

jr_005_47ef:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl+]
    cp $02
    jr c, jr_005_4828

    ld a, [hl]
    cp $02
    jr c, jr_005_4828

    ld a, [$cc4d]
    add $03
    ld e, a
    ld d, $00
    ld hl, $0008
    call Call_000_3b1d
    ld de, $0004
    add hl, de
    ld a, [$cc44]
    add l
    ld [$cc44], a
    ld a, [$cc45]
    adc h
    ld [$cc45], a

jr_005_4828:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    cp $02
    jp nc, Jump_005_492a

    ld a, [$cc4d]
    sub $06
    jr nc, jr_005_4845

    xor a

jr_005_4845:
    ld [$cc54], a
    ld a, [$cc4d]
    add $03
    ld e, a
    ld d, $00
    push de
    ld a, [$cc1f]
    ld e, a
    ld d, $00
    ld hl, $0003
    call Call_000_3b07
    pop de
    call Call_000_3b1d
    push de
    ld a, [$cc1f]
    ld l, a
    ld a, [$cc44]
    sub l
    ld l, a
    ld a, [$cc45]
    sbc $00
    ld h, a
    pop de
    call Call_000_3b00
    ld a, l
    ld [$cc44], a
    ld a, h
    ld [$cc45], a
    ld a, [$cc4d]
    ld [$cc55], a

Jump_005_4883:
    ld a, [$cc55]
    ld b, a
    ld a, $19
    sub b
    ld b, a
    ld a, [$cc4a]
    add b
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_4917

    ld a, [$cc4d]
    inc a
    ld e, a
    ld d, $00
    push de
    ld de, $ffff
    ld a, [$cc1f]
    cp $06
    jr z, jr_005_48af

    ld de, $0000

jr_005_48af:
    ld l, a
    ld h, $00
    call Call_000_3b07
    ld de, $0028
    call Call_000_3b07
    pop de
    call Call_000_3b1d
    push hl
    ld a, [$cc4d]
    ld e, a
    ld d, $00
    push de
    ld de, $ffff
    cp $12
    jr nc, jr_005_48d1

    ld de, $0000

jr_005_48d1:
    ld a, [$cc1f]
    ld l, a
    ld h, $00
    call Call_000_3b07
    ld de, $0012
    call Call_000_3b07
    pop de
    call Call_000_3b1d
    push hl
    ld a, [$cc4d]
    inc a
    ld e, a
    ld d, $00
    push de
    ld a, [$cc1f]
    ld l, a
    ld h, $00
    ld de, $0014
    call Call_000_3b07
    pop de
    call Call_000_3b1d
    ld a, [$cc44]
    sub l
    ld l, a
    ld a, [$cc45]
    sbc h
    ld h, a
    pop de
    call Call_000_3b00
    pop de
    call Call_000_3af9
    ld a, l
    ld [$cc44], a
    ld a, h
    ld [$cc45], a

jr_005_4917:
    ld a, [$cc54]
    ld b, a
    ld a, [$cc55]
    cp b
    jr z, jr_005_492a

    jr c, jr_005_492a

    dec a
    ld [$cc55], a
    jp Jump_005_4883


Jump_005_492a:
jr_005_492a:
    ld a, [$cc28]
    ld b, a
    ld a, [$cc4d]
    cp b
    jr nc, jr_005_493b

    inc a
    ld [$cc4d], a
    jp Jump_005_4701


Jump_005_493b:
jr_005_493b:
    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld e, [hl]
    ld d, $00
    ld hl, $000a
    call Call_000_3b07
    push hl
    ld a, [$cc48]
    add $19
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld e, [hl]
    ld d, $00
    ld hl, $0064
    call Call_000_3b07
    push hl
    ld a, [$cc2f]
    ld b, a
    ld a, [$cc52]
    add b
    ld l, a
    rla
    sbc a
    ld h, a
    ld a, [$cc42]
    ld e, a
    rla
    sbc a
    ld d, a
    call Call_000_3b07
    push hl
    ld a, [$cc2e]
    ld b, a
    ld a, [$cc52]
    add b
    ld l, a
    rla
    sbc a
    ld h, a
    ld a, [$cc41]
    ld e, a
    rla
    sbc a
    ld d, a
    call Call_000_3b07
    push hl
    ld a, [$cc2d]
    ld b, a
    ld a, [$cc52]
    add b
    ld l, a
    rla
    sbc a
    ld h, a
    ld a, [$cc40]
    ld e, a
    rla
    sbc a
    ld d, a
    call Call_000_3b07
    push hl
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc52]
    add b
    ld l, a
    rla
    sbc a
    ld h, a
    ld a, [$cc3f]
    ld e, a
    rla
    sbc a
    ld d, a
    call Call_000_3b07
    push hl
    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld e, [hl]
    ld d, $00
    push de
    ld l, e
    ld h, d
    call Call_000_3b07
    pop de
    call Call_000_3b07
    ld de, $0003
    call Call_000_3b07
    ld a, [$cc44]
    ld e, a
    ld a, [$cc45]
    ld d, a
    call Call_000_3af9
    pop de
    call Call_000_3af9
    pop de
    call Call_000_3af9
    pop de
    call Call_000_3af9
    pop de
    call Call_000_3af9
    pop de
    call Call_000_3b00
    pop de
    call Call_000_3af9
    ld a, l
    ld [$cc44], a
    ld a, h
    ld [$cc45], a
    ld a, [$cc53]
    ld b, a
    ld a, [$cc28]
    add b
    cp $19
    jr nc, jr_005_4a60

    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld e, [hl]
    ld d, $00
    ld hl, $0032
    call Call_000_3b07
    ld a, [$cc44]
    add l
    ld [$cc44], a
    ld a, [$cc45]
    adc h
    ld [$cc45], a
    ld a, [$cc28]
    ld b, a
    ld a, [$cc1c]
    cp b
    jr z, jr_005_4a50

    ld a, [$cc2d]
    cp b
    jr z, jr_005_4a50

    ld a, [$cc2e]
    cp b
    jr z, jr_005_4a50

    ld a, [$cc2f]
    cp b
    jr nz, jr_005_4a60

jr_005_4a50:
    ld a, [$cc44]
    add $14
    ld [$cc44], a
    ld a, [$cc45]
    adc $00
    ld [$cc45], a

jr_005_4a60:
    ld a, [$cc53]
    ld b, a
    ld a, [$cc28]
    add b
    cp $19
    jp nc, Jump_005_4af2

    ld a, $07
    ld [$cc4d], a

jr_005_4a72:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_4aa7

    inc a
    ld e, a
    ld d, $00
    push de
    ld a, [$cc4d]
    ld e, a
    ld d, $00
    ld l, e
    ld h, d
    call Call_000_3b07
    pop de
    call Call_000_3b07
    ld a, [$cc44]
    sub l
    ld [$cc44], a
    ld a, [$cc45]
    sbc h
    ld [$cc45], a

jr_005_4aa7:
    ld a, [$cc28]
    ld b, a
    ld a, [$cc4d]
    cp b
    jr nc, jr_005_4ab7

    inc a
    ld [$cc4d], a
    jr jr_005_4a72

jr_005_4ab7:
    ld a, b
    cp $07
    jr nc, jr_005_4af2

    ld a, $01
    ld [$cc4d], a

jr_005_4ac1:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_4ae4

    ld a, [$cc44]
    add $14
    ld [$cc44], a
    ld a, [$cc45]
    adc $00
    ld [$cc45], a

jr_005_4ae4:
    ld b, $06
    ld a, [$cc4d]
    cp b
    jr nc, jr_005_4af2

    inc a
    ld [$cc4d], a
    jr jr_005_4ac1

Jump_005_4af2:
jr_005_4af2:
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    ld de, $0005
    call Call_000_3b1d
    ld de, $0006
    call Call_000_3b07
    ld e, l
    ld d, h
    ld a, [$cc24]
    ld l, a
    ld a, [$cc25]
    ld h, a
    call Call_000_3c06
    ld a, h
    or l
    jr z, jr_005_4b76

    ld a, [$cc2f]
    ld l, a
    ld h, $00
    ld a, [$cc42]
    ld e, a
    ld d, $00
    call Call_000_3b07
    push hl
    ld a, [$cc2e]
    ld l, a
    ld h, $00
    ld a, [$cc41]
    ld e, a
    ld d, $00
    call Call_000_3b07
    push hl
    ld a, [$cc2d]
    ld l, a
    ld h, $00
    ld a, [$cc40]
    ld e, a
    ld d, $00
    call Call_000_3b07
    push hl
    ld a, [$cc1c]
    ld l, a
    ld h, $00
    ld a, [$cc3f]
    ld e, a
    ld d, $00
    call Call_000_3b07
    pop de
    call Call_000_3af9
    pop de
    call Call_000_3af9
    pop de
    call Call_000_3af9
    ld de, $0002
    call Call_000_3b07
    ld a, [$cc44]
    add l
    ld [$cc44], a
    ld a, [$cc45]
    adc h
    ld [$cc45], a

jr_005_4b76:
    ld a, [$cc44]
    ld l, a
    ld a, [$cc45]
    ld h, a
    ld a, [$cc46]
    ld e, a
    ld a, [$cc47]
    ld d, a
    call Call_000_3c06
    ld a, h
    or l
    jp z, Jump_005_4c03

    jp Jump_005_4b91


Jump_005_4b91:
    ld a, [$c7d8]
    cp $03
    jr z, jr_005_4bb5

    call Call_000_0a01
    and $7f
    ld b, a
    ld a, [$cc56]
    sub b
    jr c, jr_005_4c03

    ld hl, $cc56
    srl [hl]
    ld a, [$c7d8]
    cp $02
    jr z, jr_005_4bb5

    ld hl, $cc56
    srl [hl]

jr_005_4bb5:
    ld a, [$cc44]
    ld [$cc46], a
    ld a, [$cc45]
    ld [$cc47], a
    ld a, [$cc1c]
    ld [$cc29], a
    ld a, [$cc30]
    ld [$cc34], a
    ld a, [$cc3a]
    or a
    jr z, jr_005_4c03

    ld a, [$cc2d]
    ld [$cc2a], a
    ld a, [$cc31]
    ld [$cc37], a
    ld a, [$cc3c]
    or a
    jr z, jr_005_4c03

    ld a, [$cc2e]
    ld [$cc2b], a
    ld a, [$cc32]
    ld [$cc38], a
    ld a, [$cc3e]
    or a
    jr z, jr_005_4c03

    ld a, [$cc2f]
    ld [$cc2c], a
    ld a, [$cc33]
    ld [$cc35], a

Jump_005_4c03:
jr_005_4c03:
    ret


    ld a, [$c3a2]
    or a
    ret z

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    ret z

    ld a, $80
    ld [$cc56], a
    ld a, [$c708]
    or a
    jr nz, jr_005_4c6a

    call Call_005_57bd
    ld b, $04
    ld hl, $47c7
    call Call_000_09de
    ld a, [$c70b]
    or a
    jr nz, jr_005_4c6a

    ld a, [$c715]
    ld b, a
    ld a, [$c716]
    cp b
    jr nz, jr_005_4c6a

    ld a, [$c70d]
    cp $05
    jr z, jr_005_4c46

    inc a
    ld [$c70d], a
    xor a
    jr jr_005_4c4a

jr_005_4c46:
    xor a
    ld [$c70d], a

jr_005_4c4a:
    inc a
    ld [$c70c], a
    ld [$c70b], a
    ld a, $78
    ld [$c706], a
    ld a, $09
    ld c, $00
    ld b, $04
    ld hl, $5490
    call Call_000_09de
    ld b, $04
    ld hl, $47c7
    call Call_000_09de

jr_005_4c6a:
    ld a, [$c3a3]
    or a
    jr z, jr_005_4c86

    ld a, $00
    ld [$cc4a], a
    ld a, $c6
    ld [$cc4b], a
    ld a, $00
    ld [$cc48], a
    ld a, $c5
    ld [$cc49], a
    jr jr_005_4c9a

jr_005_4c86:
    ld a, $00
    ld [$cc4a], a
    ld a, $c5
    ld [$cc4b], a
    ld a, $00
    ld [$cc48], a
    ld a, $c6
    ld [$cc49], a

jr_005_4c9a:
    ld a, [$c708]
    or a
    jr nz, jr_005_4cc0

    ld a, [$c717]
    ld [$c718], a
    ld a, [$c714]
    ld [$c717], a
    ld a, $01
    ld [$c708], a
    ld a, [$c701]
    ld [$cc5f], a
    ld a, [$c702]
    ld [$cc60], a
    call Call_000_147f

jr_005_4cc0:
    ld a, $02
    ld b, $04
    ld hl, $53d3
    call Call_000_09de
    ld a, $01
    ld [$c7db], a
    rst $18
    ld a, $01
    ld [$c71d], a
    xor a
    ld [$c71e], a
    xor a
    ld [$cc4f], a

Jump_005_4cdd:
    ld a, $01
    ld [$cc4f], a
    ld [$cc21], a
    ld a, [$cc48]
    add $19
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld b, $19

jr_005_4cf3:
    ld a, [hl-]
    or a
    jr nz, jr_005_4cfa

    dec b
    jr jr_005_4cf3

jr_005_4cfa:
    ld a, b
    ld [$cc64], a
    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld b, $19

jr_005_4d0c:
    ld a, [hl-]
    or a
    jr nz, jr_005_4d13

    dec b
    jr jr_005_4d0c

jr_005_4d13:
    ld a, b
    ld [$cc65], a
    xor a
    ld [$cc1f], a
    ld a, [$cc4a]
    add $01
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld b, $06

jr_005_4d29:
    ld a, [hl+]
    cp $02
    jr c, jr_005_4d35

    ld a, [$cc1f]
    inc a
    ld [$cc1f], a

jr_005_4d35:
    dec b
    jr nz, jr_005_4d29

    ld a, [$cc64]
    ld c, a
    ld hl, $c715
    ld b, $04

jr_005_4d41:
    ld a, [hl]
    cp c
    jr z, jr_005_4d48

    jr c, jr_005_4d48

    ld [hl], c

jr_005_4d48:
    inc hl
    dec b
    jr nz, jr_005_4d41

    ld a, [$cc48]
    add $19
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_4d89

    ld hl, $c715
    ld b, $04

jr_005_4d61:
    ld a, [hl]
    or a
    jr z, jr_005_4d79

    ld a, [$cc4a]
    add [hl]
    ld e, a
    ld a, [$cc4b]
    adc $00
    ld d, a
    ld a, [de]
    cp $02
    jr nc, jr_005_4d79

    xor a
    ld [$cc21], a

jr_005_4d79:
    inc hl
    dec b
    jr nz, jr_005_4d61

    ld a, [$cc21]
    or a
    jr z, jr_005_4d89

    call Call_005_577b
    jp Jump_005_5411


jr_005_4d89:
    ld a, $01
    ld [$cc1c], a

Jump_005_4d8e:
    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld a, [$cc1c]
    add l
    ld c, a
    adc h
    sub c
    ld b, a
    ld a, [bc]
    or a
    jr z, jr_005_4dc3

    ld a, [$cc64]
    cp $07
    jr nc, jr_005_4dc3

    ld a, [$cc1c]
    ld c, a
    ld a, [$c715]
    cp c
    jr z, jr_005_4db9

    ld a, [$c716]
    cp c
    jr nz, jr_005_4dc3

jr_005_4db9:
    xor a
    ld [$cc21], a
    ld a, [$cc64]
    ld [$cc1c], a

jr_005_4dc3:
    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld a, [$cc1c]
    add l
    ld c, a
    adc h
    sub c
    ld b, a
    ld a, [bc]
    or a
    jr z, jr_005_4e0d

    ld a, [$c715]
    ld b, a
    ld a, [$cc1c]
    cp b
    jr z, jr_005_4e0d

    jr c, jr_005_4e0d

    ld a, [$c715]
    or a
    jr z, jr_005_4e0d

    ld b, a
    ld a, [$cc1c]
    ld c, a
    ld a, $19
    sub c
    add b
    ld b, a
    ld a, [$cc4a]
    add b
    ld c, a
    ld a, [$cc4b]
    adc $00
    ld b, a
    ld a, [bc]
    cp $02
    jr nc, jr_005_4e0d

    xor a
    ld [$cc21], a
    ld a, [$cc64]
    ld [$cc1c], a

jr_005_4e0d:
    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld a, [$cc1c]
    add l
    ld c, a
    adc h
    sub c
    ld b, a
    ld a, [bc]
    or a
    jr z, jr_005_4e57

    ld a, [$c716]
    ld b, a
    ld a, [$cc1c]
    cp b
    jr z, jr_005_4e57

    jr c, jr_005_4e57

    ld a, [$c716]
    or a
    jr z, jr_005_4e57

    ld b, a
    ld a, [$cc1c]
    ld c, a
    ld a, $19
    sub c
    add b
    ld b, a
    ld a, [$cc4a]
    add b
    ld c, a
    ld a, [$cc4b]
    adc $00
    ld b, a
    ld a, [bc]
    cp $02
    jr nc, jr_005_4e57

    xor a
    ld [$cc21], a
    ld a, [$cc64]
    ld [$cc1c], a

jr_005_4e57:
    ld a, [$cc64]
    ld b, a
    ld a, [$cc1c]
    cp b
    jr nc, jr_005_4e68

    inc a
    ld [$cc1c], a
    jp Jump_005_4d8e


jr_005_4e68:
    ld a, [$cc21]
    or a
    jr z, jr_005_4e74

    call Call_005_577b
    jp Jump_005_5411


jr_005_4e74:
    ld c, $00
    ld hl, $c715
    ld b, $01

jr_005_4e7b:
    ld a, [hl+]
    or a
    jr z, jr_005_4e84

    ld a, b
    ld [$cc23], a
    inc c

jr_005_4e84:
    inc b
    ld a, b
    cp $05
    jr nz, jr_005_4e7b

    ld a, c
    ld [$cc22], a
    xor a
    ld [$cc24], a
    ld [$cc25], a
    ld [$cc26], a
    ld [$cc27], a
    ld a, $01
    ld [$cc1c], a

Jump_005_4ea0:
    ld a, [$cc1c]
    ld c, a
    ld a, [$cc48]
    add c
    ld c, a
    ld a, [$cc49]
    adc $00
    ld b, a
    ld a, [bc]
    or a
    jr z, jr_005_4ecc

    ld a, [$cc1c]
    ld e, a
    ld d, $00
    ld a, [$cc24]
    ld l, a
    ld a, [$cc25]
    ld h, a
    call Call_000_3af9
    ld a, l
    ld [$cc24], a
    ld a, h
    ld [$cc25], a

jr_005_4ecc:
    ld a, [$cc1c]
    ld c, a
    ld a, [$cc4a]
    add c
    ld c, a
    ld a, [$cc4b]
    adc $00
    ld b, a
    ld a, [bc]
    or a
    jr z, jr_005_4ef8

    ld a, [$cc1c]
    ld e, a
    ld d, $00
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    call Call_000_3af9
    ld a, l
    ld [$cc26], a
    ld a, h
    ld [$cc27], a

jr_005_4ef8:
    ld a, [$cc1c]
    cp $19
    jr nc, jr_005_4f06

    inc a
    ld [$cc1c], a
    jp Jump_005_4ea0


jr_005_4f06:
    ld a, $48
    ld [$cc46], a
    ld a, $f4
    ld [$cc47], a
    ld a, [$cc64]
    ld [$cc28], a
    ld a, $64
    ld [$cc29], a
    ld [$cc2a], a
    ld [$cc2b], a
    ld [$cc2c], a
    xor a
    ld [$cc2d], a
    ld [$cc2e], a
    ld [$cc2f], a
    ld [$cc31], a
    ld [$cc32], a
    ld [$cc33], a
    ld [$cc39], a
    ld [$cc3a], a
    ld [$cc3b], a
    ld [$cc3c], a
    ld [$cc3d], a
    ld [$cc3e], a
    ld [$cc43], a
    ld a, [$c716]
    ld b, a
    ld a, [$c715]
    cp b
    jr nz, jr_005_4f61

    ld a, [$c717]
    or a
    jr z, jr_005_4f61

    ld a, $01
    ld [$cc43], a

Jump_005_4f61:
jr_005_4f61:
    ld a, [$c716]
    ld b, a
    ld a, [$c715]
    sub b
    jr nc, jr_005_4f6d

    cpl
    inc a

jr_005_4f6d:
    ld c, a
    ld a, [$c716]
    ld b, a
    ld a, [$c715]
    add b
    sub c
    srl a
    ld [$cc4e], a
    ld a, [$cc64]
    ld [$cc1c], a

Jump_005_4f82:
    xor a
    ld [$cc39], a
    ld a, $80
    ld [$cc56], a
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc48]
    add b
    ld c, a
    ld a, [$cc49]
    adc $00
    ld b, a
    ld a, [bc]
    or a
    jp z, Jump_005_534d

    ld a, [$cc23]
    ld [$cc20], a

Jump_005_4fa5:
    xor a
    ld [$cc39], a
    ld a, [$cc20]
    add $14
    ld c, a
    adc $c7
    sub c
    ld b, a
    ld a, [bc]
    or a
    jp z, Jump_005_533d

    ld a, [$cc20]
    add $14
    ld c, a
    adc $c7
    sub c
    ld b, a
    ld a, [bc]
    ld e, a
    ld a, [$cc1c]
    cp e
    jp c, Jump_005_533d

    ld a, [$cc20]
    add $14
    ld c, a
    adc $c7
    sub c
    ld b, a
    ld a, [bc]
    ld e, a
    ld a, [$cc1c]
    ld c, a
    cp e
    jp z, Jump_005_5065

    jp c, Jump_005_5065

    ld a, $19
    sub c
    add e
    ld c, a
    ld a, [$cc4a]
    add c
    ld c, a
    ld a, [$cc4b]
    adc $00
    ld b, a
    ld a, [bc]
    cp $02
    jp nc, Jump_005_5065

    ld a, e
    ld [$cc30], a
    ld a, $01
    ld [$cc39], a
    ld a, [$cc1c]
    ld b, a
    sub e
    ld [$cc4c], a
    ld c, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc48]
    add c
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    xor a
    ld [$cc3f], a
    ld a, $19
    sub c
    ld c, a
    ld a, [$cc4a]
    add c
    ld c, a
    ld a, [$cc4b]
    adc $00
    ld b, a
    ld a, [bc]
    cp $01
    jr nz, jr_005_5065

    ld [$cc3f], a
    xor a
    ld [bc], a
    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    inc [hl]
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    ld a, [$cc4c]
    ld e, a
    ld d, $00
    call Call_000_3af9
    ld a, l
    ld [$cc26], a
    ld a, h
    ld [$cc27], a

Jump_005_5065:
jr_005_5065:
    ld a, [$cc20]
    add $14
    ld l, a
    adc $c7
    sub l
    ld h, a
    ld c, [hl]
    ld a, [$cc1c]
    cp c
    jr z, jr_005_508f

    jr c, jr_005_508f

    ld b, a
    ld a, $19
    sub b
    add c
    ld c, a
    ld a, [$cc4a]
    add c
    ld c, a
    ld a, [$cc4b]
    adc $00
    ld b, a
    ld a, [bc]
    cp $02
    jp nc, Jump_005_533d

jr_005_508f:
    ld a, [$cc20]
    add $14
    ld l, a
    adc $c7
    sub l
    ld h, a
    ld c, [hl]
    ld a, [$cc1c]
    cp c
    jr nz, jr_005_50d2

    ld a, [$cc64]
    cp $07
    jp nc, Jump_005_533d

    ld a, c
    ld [$cc30], a
    ld a, $01
    ld [$cc39], a
    ld a, [$cc1c]
    ld b, a
    sub c
    ld [$cc4c], a
    ld c, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc48]
    add c
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]

jr_005_50d2:
    ld a, [$cc3b]
    or a
    jp nz, Jump_005_52be

    ld a, [$c716]
    ld [$cc31], a
    ld b, a
    ld a, [$cc30]
    cp b
    jr nz, jr_005_50ec

    ld a, [$c715]
    ld [$cc31], a

jr_005_50ec:
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc64]
    ld [$cc28], a
    cp b
    jr nz, jr_005_5136

    ld a, [$cc64]
    ld [$cc4d], a

jr_005_50ff:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_5127

    ld a, b
    ld [$cc28], a
    ld a, $01
    ld [$cc4d], a
    ld a, [$cc31]
    cp b
    jr z, jr_005_5127

    jr c, jr_005_5127

    ld a, b
    ld [$cc31], a

jr_005_5127:
    ld a, [$cc4d]
    cp $01
    jr z, jr_005_5136

    jr c, jr_005_5136

    dec a
    ld [$cc4d], a
    jr jr_005_50ff

jr_005_5136:
    ld a, [$cc1c]
    ld [$cc2d], a

Jump_005_513c:
    ld a, [$cc2d]
    ld b, a
    ld a, [$cc48]
    add b
    ld c, a
    ld a, [$cc49]
    adc $00
    ld b, a
    ld a, [bc]
    or a
    jp z, Jump_005_5295

    xor a
    ld [$cc3a], a
    ld a, [$cc31]
    ld b, a
    ld a, [$cc2d]
    cp b
    jr z, jr_005_5177

    jr c, jr_005_5177

    ld c, a
    ld a, $19
    sub c
    add b
    ld b, a
    ld a, [$cc4a]
    add b
    ld c, a
    ld a, [$cc4b]
    adc $00
    ld b, a
    ld a, [bc]
    cp $02
    jp nc, Jump_005_5295

jr_005_5177:
    ld a, [$cc2d]
    ld b, a
    ld a, [$cc1c]
    cp b
    jr nz, jr_005_518e

    ld a, [$cc20]
    cp $01
    jp z, Jump_005_5295

    cp $03
    jp z, Jump_005_5295

jr_005_518e:
    ld a, [$cc2d]
    ld b, a
    ld a, [$cc31]
    cp b
    jr nz, jr_005_51a0

    ld a, [$cc28]
    cp $07
    jp nc, Jump_005_5295

jr_005_51a0:
    ld a, [$cc2d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc31]
    ld c, a
    ld a, b
    sub c
    ld e, a
    ld a, [$cc48]
    add e
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    xor a
    ld [$cc40], a
    ld a, b
    cp c
    jr z, jr_005_520c

    jr c, jr_005_520c

    ld a, $19
    sub b
    add c
    ld e, a
    ld a, [$cc4a]
    add e
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_005_520c

    ld [$cc40], a
    ld [hl], $00
    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    inc [hl]
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    ld a, b
    sub c
    ld e, a
    ld d, $00
    call Call_000_3af9
    ld a, l
    ld [$cc26], a
    ld a, h
    ld [$cc27], a

jr_005_520c:
    ld a, $01
    ld [$cc3a], a
    ld a, [$cc43]
    or a
    jr nz, jr_005_521c

    call Call_005_4694
    jr jr_005_521f

jr_005_521c:
    call Call_005_5422

jr_005_521f:
    ld a, [$cc2d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    ld a, [$cc31]
    ld c, a
    ld a, b
    sub c
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc40]
    or a
    jr z, jr_005_5295

    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc31]
    ld c, a
    ld a, [$cc2d]
    ld b, a
    ld a, $19
    sub b
    add c
    ld b, a
    ld a, [$cc4a]
    add b
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld [hl], $01
    xor a
    ld [$cc40], a
    ld a, [$cc2d]
    ld e, a
    ld d, $00
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    call Call_000_3b00
    ld a, [$cc31]
    ld e, a
    ld d, $00
    call Call_000_3af9
    ld a, l
    ld [$cc26], a
    ld a, h
    ld [$cc27], a

Jump_005_5295:
jr_005_5295:
    ld a, [$cc48]
    add $19
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_52ab

    ld a, [$cc31]
    ld [$cc2d], a

jr_005_52ab:
    ld a, [$cc31]
    ld b, a
    ld a, [$cc2d]
    cp b
    jr z, jr_005_52be

    jr c, jr_005_52be

    dec a
    ld [$cc2d], a
    jp Jump_005_513c


Jump_005_52be:
jr_005_52be:
    ld a, [$cc39]
    or a
    jr z, jr_005_52cb

    ld a, [$cc3b]
    or a
    call nz, Call_005_4694

jr_005_52cb:
    ld a, [$cc39]
    or a
    jr z, jr_005_532e

    ld a, [$cc1c]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    ld a, [$cc4c]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc3f]
    or a
    jr z, jr_005_532e

    ld a, $19
    sub b
    ld l, a
    ld a, [$cc4a]
    add l
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld [hl], $01
    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    ld a, [$cc4c]
    ld e, a
    ld d, $00
    call Call_000_3b00
    ld a, l
    ld [$cc26], a
    ld a, h
    ld [$cc27], a

jr_005_532e:
    ld a, [$c716]
    ld b, a
    ld a, [$c715]
    cp b
    jr nz, jr_005_533d

    ld a, $01
    ld [$cc20], a

Jump_005_533d:
jr_005_533d:
    ld a, [$cc20]
    cp $01
    jr z, jr_005_534d

    jr c, jr_005_534d

    dec a
    ld [$cc20], a
    jp Jump_005_4fa5


Jump_005_534d:
jr_005_534d:
    ld a, [$cc48]
    add $19
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_5362

    ld a, $01
    ld [$cc1c], a

jr_005_5362:
    ld a, [$cc4e]
    ld b, a
    ld a, [$cc1c]
    cp b
    jr z, jr_005_5375

    jr c, jr_005_5375

    dec a
    ld [$cc1c], a
    jp Jump_005_4f82


jr_005_5375:
    ld a, [$cc29]
    cp $64
    jr nz, jr_005_5384

    ld a, $01
    ld [$cc3b], a
    jp Jump_005_4f61


jr_005_5384:
    call Call_005_57af
    ld a, [$cc34]
    ld [$cc30], a
    ld a, [$cc29]
    ld [$cc1c], a
    call Call_005_459b
    ld a, [$cc37]
    ld [$cc30], a
    ld a, [$cc2a]
    ld [$cc1c], a
    cp $64
    jr nc, jr_005_53ab

    call Call_005_459b
    jr jr_005_53ae

jr_005_53ab:
    call Call_005_577b

jr_005_53ae:
    ld a, [$cc43]
    or a
    jr z, jr_005_53ca

    ld a, [$cc2b]
    cp $64
    jr nc, jr_005_53ca

    ld a, [$cc38]
    ld [$cc30], a
    ld a, [$cc2b]
    ld [$cc1c], a
    call Call_005_459b

jr_005_53ca:
    ld a, [$cc43]
    or a
    jr z, jr_005_53e6

    ld a, [$cc2c]
    cp $64
    jr nc, jr_005_53e6

    ld a, [$cc35]
    ld [$cc30], a
    ld a, [$cc2c]
    ld [$cc1c], a
    call Call_005_459b

jr_005_53e6:
    ld a, [$cc43]
    or a
    jr z, jr_005_53f9

    ld a, [$cc2c]
    ld b, a
    ld a, [$cc2b]
    add b
    cp $65
    call nc, Call_005_577b

jr_005_53f9:
    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld a, [hl]
    cp $0f
    jr nz, jr_005_5411

    ld a, $01
    ld [$cc50], a
    ld [$cc51], a
    ld [$cc4f], a

Jump_005_5411:
jr_005_5411:
    ld a, [$cc4f]
    cp $01
    jr nc, jr_005_541f

    inc a
    ld [$cc4f], a
    jp Jump_005_4cdd


jr_005_541f:
    jp Jump_005_579b


Call_005_5422:
    xor a
    ld [$cc3d], a

Jump_005_5426:
    xor a
    ld [$cc3c], a
    ld a, [$cc31]
    ld [$cc32], a
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc28]
    cp b
    jr z, jr_005_543c

    jr nc, jr_005_546f

jr_005_543c:
    ld a, [$cc64]
    ld [$cc4d], a

jr_005_5442:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld c, a
    ld a, [$cc49]
    adc $00
    ld b, a
    ld a, [bc]
    or a
    jr z, jr_005_5460

    ld a, [$cc4d]
    ld [$cc28], a
    ld a, $01
    ld [$cc4d], a

jr_005_5460:
    ld a, [$cc4d]
    cp $01
    jr z, jr_005_546f

    jr c, jr_005_546f

    dec a
    ld [$cc4d], a
    jr jr_005_5442

jr_005_546f:
    ld a, [$cc28]
    ld b, a
    ld a, [$cc32]
    cp b
    jr z, jr_005_547f

    jr c, jr_005_547f

    ld a, b
    ld [$cc32], a

jr_005_547f:
    ld a, [$cc2d]
    ld [$cc2e], a

Jump_005_5485:
    ld a, [$cc2e]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp z, Jump_005_5744

    ld a, [$cc32]
    ld l, a
    ld a, $19
    sub b
    add l
    ld l, a
    ld a, [$cc4a]
    add l
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld a, [hl]
    cp $02
    jr c, jr_005_54bd

    ld a, [$cc32]
    ld c, a
    ld a, b
    cp c
    jr z, jr_005_54bd

    jp nc, Jump_005_5744

jr_005_54bd:
    ld a, [$cc32]
    cp b
    jr nz, jr_005_54cb

    ld a, [$cc28]
    cp $07
    jp nc, Jump_005_5744

jr_005_54cb:
    ld a, $01
    ld [$cc3c], a
    ld a, [$cc2e]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc32]
    ld c, a
    ld a, b
    sub c
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    xor a
    ld [$cc41], a
    ld a, [$cc32]
    ld b, a
    ld a, [$cc2e]
    cp b
    jr z, jr_005_5549

    jr c, jr_005_5549

    ld c, a
    ld a, $19
    sub c
    add b
    ld b, a
    ld a, [$cc4a]
    add b
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_005_5549

    ld [hl], $00
    ld [$cc41], a
    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    inc [hl]
    ld a, [$cc32]
    ld e, a
    ld a, [$cc2e]
    sub e
    ld e, a
    ld d, $00
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    call Call_000_3af9
    ld a, l
    ld [$cc26], a
    ld a, h
    ld [$cc27], a

jr_005_5549:
    ld a, [$cc3d]
    or a
    jr z, jr_005_5555

    call Call_005_4694
    jp Jump_005_56e8


jr_005_5555:
    xor a
    ld [$cc3e], a
    ld a, [$cc32]
    ld [$cc33], a
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc28]
    cp b
    jr z, jr_005_556b

    jr nc, jr_005_559c

jr_005_556b:
    ld a, [$cc64]
    ld [$cc4d], a

jr_005_5571:
    ld a, [$cc4d]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_005_558d

    ld a, b
    ld [$cc28], a
    ld a, $01
    ld [$cc4d], a

jr_005_558d:
    ld a, [$cc4d]
    cp $01
    jr z, jr_005_559c

    jr c, jr_005_559c

    dec a
    ld [$cc4d], a
    jr jr_005_5571

jr_005_559c:
    ld a, [$cc28]
    ld b, a
    ld a, [$cc33]
    cp b
    jr z, jr_005_55ac

    jr c, jr_005_55ac

    ld a, b
    ld [$cc33], a

jr_005_55ac:
    ld a, [$cc2e]
    ld [$cc2f], a

Jump_005_55b2:
    ld a, [$cc2f]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp z, Jump_005_56d5

    ld a, [$cc33]
    ld l, a
    ld a, $19
    sub b
    add l
    ld l, a
    ld a, [$cc4a]
    add l
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld a, [hl]
    cp $02
    jr c, jr_005_55ea

    ld a, [$cc33]
    ld c, a
    ld a, b
    cp c
    jr z, jr_005_55ea

    jp nc, Jump_005_56d5

jr_005_55ea:
    ld a, [$cc33]
    cp b
    jr nz, jr_005_55f8

    ld a, [$cc28]
    cp $07
    jp nc, Jump_005_56d5

jr_005_55f8:
    ld a, $01
    ld [$cc3e], a
    ld a, [$cc2f]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc33]
    ld c, a
    ld a, b
    sub c
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    xor a
    ld [$cc42], a
    ld a, [$cc33]
    ld b, a
    ld a, [$cc2f]
    cp b
    jr z, jr_005_5676

    jr c, jr_005_5676

    ld l, a
    ld a, $19
    sub l
    add b
    ld b, a
    ld a, [$cc4a]
    add b
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_005_5676

    ld [hl], $00
    ld [$cc42], a
    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    inc [hl]
    ld a, [$cc33]
    ld e, a
    ld a, [$cc2f]
    sub e
    ld e, a
    ld d, $00
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    call Call_000_3af9
    ld a, l
    ld [$cc26], a
    ld a, h
    ld [$cc27], a

jr_005_5676:
    call Call_005_4694
    ld a, [$cc2f]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    ld a, [$cc33]
    ld c, a
    ld a, b
    sub c
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc42]
    or a
    jr z, jr_005_56d5

    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc33]
    ld c, a
    ld a, [$cc2f]
    ld b, a
    ld a, $19
    sub b
    add c
    ld l, a
    ld a, [$cc4a]
    add l
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld [hl], $01
    xor a
    ld [$cc42], a
    ld a, [$cc65]
    sub b
    add c
    ld [$cc65], a

Jump_005_56d5:
jr_005_56d5:
    ld a, [$cc33]
    ld b, a
    ld a, [$cc2f]
    cp b
    jr z, jr_005_56e8

    jr c, jr_005_56e8

    dec a
    ld [$cc2f], a
    jp Jump_005_55b2


Jump_005_56e8:
jr_005_56e8:
    ld a, [$cc2e]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    inc [hl]
    ld a, [$cc32]
    ld c, a
    ld a, b
    sub c
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc41]
    or a
    jr z, jr_005_5744

    ld a, [$cc4a]
    add $19
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    dec [hl]
    ld a, [$cc32]
    ld c, a
    ld a, [$cc2e]
    ld b, a
    ld a, $19
    sub b
    add c
    ld l, a
    ld a, [$cc4a]
    add l
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld [hl], $01
    xor a
    ld [$cc41], a
    ld a, [$cc65]
    sub b
    add c
    ld [$cc65], a

Jump_005_5744:
jr_005_5744:
    ld a, [$cc32]
    ld b, a
    ld a, [$cc2e]
    cp b
    jr z, jr_005_5757

    jr c, jr_005_5757

    dec a
    ld [$cc2e], a
    jp Jump_005_5485


jr_005_5757:
    ld a, [$cc2b]
    cp $64
    jr nc, jr_005_5772

    ld a, [$cc2c]
    cp $64
    jr nz, jr_005_5772

    ld a, [$cc3d]
    or a
    jr nz, jr_005_5772

    inc a
    ld [$cc3d], a
    jp Jump_005_5426


jr_005_5772:
    ld a, [$cc2b]
    cp $64
    call z, Call_005_4694
    ret


Call_005_577b:
    call Call_005_57af
    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld a, [hl]
    cp $0f
    ret z

    ld a, $3c
    ld [$c706], a
    ld a, $06
    ld c, $00
    ld b, $04
    ld hl, $5490
    jp Jump_000_09de


Jump_005_579b:
    ld a, [$cc5f]
    ld [$c701], a
    ld a, [$cc60]
    ld [$c702], a
    ld b, $05
    ld hl, $42b4
    jp Jump_000_09de


Call_005_57af:
    xor a
    ld [$c71d], a
    ld a, $03
    ld b, $04
    ld hl, $53d3
    jp Jump_000_09de


Call_005_57bd:
    ld a, [$c3a2]
    or a
    ret z

    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    ret z

    ld a, [$c70f]
    cp $02
    jr z, jr_005_57d8

    ld b, a
    ld a, [$c3a1]
    cp b
    ret nz

jr_005_57d8:
    ld a, [$c3a3]
    or a
    jr z, jr_005_57f4

    ld a, $00
    ld [$cc4a], a
    ld a, $c6
    ld [$cc4b], a
    ld a, $00
    ld [$cc48], a
    ld a, $c5
    ld [$cc49], a
    jr jr_005_5808

jr_005_57f4:
    ld a, $00
    ld [$cc4a], a
    ld a, $c5
    ld [$cc4b], a
    ld a, $00
    ld [$cc48], a
    ld a, $c6
    ld [$cc49], a

jr_005_5808:
    xor a
    ld [$cc24], a
    ld [$cc25], a
    ld [$cc26], a
    ld [$cc27], a
    ld a, $01
    ld [$cc1c], a

jr_005_581a:
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld e, [hl]
    ld d, $00
    ld a, [$cc1c]
    ld l, a
    ld h, $00
    call Call_000_3b07
    ld a, [$cc24]
    add l
    ld [$cc24], a
    ld a, [$cc25]
    adc h
    ld [$cc25], a
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc4a]
    add b
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld e, [hl]
    ld d, $00
    ld a, [$cc1c]
    ld l, a
    ld h, $00
    call Call_000_3b07
    ld a, [$cc26]
    add l
    ld [$cc26], a
    ld a, [$cc27]
    adc h
    ld [$cc27], a
    ld a, [$cc1c]
    cp $19
    jr nc, jr_005_5879

    inc a
    ld [$cc1c], a
    jr jr_005_581a

jr_005_5879:
    ld a, [$cc26]
    add $0f
    ld [$cc26], a
    ld a, [$cc27]
    adc $00
    ld [$cc27], a
    ld a, [$cc4a]
    ld l, a
    ld a, [$cc4b]
    ld h, a
    ld a, [$cc26]
    sub [hl]
    ld [$cc26], a
    ld a, [$cc27]
    sbc $00
    ld [$cc27], a
    ld a, [$cc24]
    add $08
    ld [$cc24], a
    ld a, [$cc25]
    adc $00
    ld [$cc25], a
    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld a, [$cc24]
    sub [hl]
    ld [$cc24], a
    ld a, [$cc25]
    sbc $00
    ld [$cc25], a
    ld a, [$cc24]
    ld l, a
    ld a, [$cc25]
    ld h, a
    ld de, $0002
    call Call_000_3b1d
    ld de, $0003
    call Call_000_3b07
    ld e, l
    ld d, h
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    call Call_000_3c06
    ld a, h
    or l
    ret z

    ld a, [$c70d]
    cp $05
    ret z

    ld c, $ff
    ld a, $0b
    ld b, $04
    ld hl, $5490
    call Call_000_09de
    or a
    jr nz, jr_005_590b

    ld b, $04
    ld hl, $5351
    call Call_000_09de
    jp Jump_005_579b


jr_005_590b:
    ld a, [$c70c]
    or a
    jr nz, jr_005_5929

    ld [$c70d], a
    inc a
    ld [$c70c], a

jr_005_5918:
    ld a, [$c3a1]
    xor $01
    ld [$c70f], a
    rst $18
    ld b, $04
    ld hl, $43d3
    jp Jump_000_09de


jr_005_5929:
    ld a, [$c70d]
    cp $05
    ret z

    inc a
    ld [$c70d], a
    jr jr_005_5918

    ld a, [$c3a3]
    or a
    jr z, jr_005_5951

    ld a, $00
    ld [$cc4a], a
    ld a, $c6
    ld [$cc4b], a
    ld a, $00
    ld [$cc48], a
    ld a, $c5
    ld [$cc49], a
    jr jr_005_5965

jr_005_5951:
    ld a, $00
    ld [$cc4a], a
    ld a, $c5
    ld [$cc4b], a
    ld a, $00
    ld [$cc48], a
    ld a, $c6
    ld [$cc49], a

jr_005_5965:
    xor a
    ld [$cc24], a
    ld [$cc25], a
    ld [$cc26], a
    ld [$cc27], a
    ld a, $01
    ld [$cc1c], a

jr_005_5977:
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc48]
    add b
    ld l, a
    ld a, [$cc49]
    adc $00
    ld h, a
    ld e, [hl]
    ld d, $00
    ld a, [$cc1c]
    ld l, a
    ld h, $00
    call Call_000_3b07
    ld a, [$cc24]
    add l
    ld [$cc24], a
    ld a, [$cc25]
    adc h
    ld [$cc25], a
    ld a, [$cc1c]
    ld b, a
    ld a, [$cc4a]
    add b
    ld l, a
    ld a, [$cc4b]
    adc $00
    ld h, a
    ld e, [hl]
    ld d, $00
    ld a, [$cc1c]
    ld l, a
    ld h, $00
    call Call_000_3b07
    ld a, [$cc26]
    add l
    ld [$cc26], a
    ld a, [$cc27]
    adc h
    ld [$cc27], a
    ld a, [$cc1c]
    cp $19
    jr nc, jr_005_59d6

    inc a
    ld [$cc1c], a
    jr jr_005_5977

jr_005_59d6:
    ld a, [$cc26]
    add $08
    ld [$cc26], a
    ld a, [$cc27]
    adc $00
    ld [$cc27], a
    ld a, [$cc4a]
    ld l, a
    ld a, [$cc4b]
    ld h, a
    ld a, [$cc26]
    sub [hl]
    ld [$cc26], a
    ld a, [$cc27]
    sbc $00
    ld [$cc27], a
    ld a, [$cc24]
    add $0f
    ld [$cc24], a
    ld a, [$cc25]
    adc $00
    ld [$cc25], a
    ld a, [$cc48]
    ld l, a
    ld a, [$cc49]
    ld h, a
    ld a, [$cc24]
    sub [hl]
    ld [$cc24], a
    ld a, [$cc25]
    sbc $00
    ld [$cc25], a
    ld a, [$cc26]
    ld l, a
    ld a, [$cc27]
    ld h, a
    ld de, $0002
    call Call_000_3b07
    ld e, l
    ld d, h
    ld a, [$cc24]
    ld l, a
    ld a, [$cc25]
    ld h, a
    call Call_000_3bd7
    ld a, h
    or l
    jr z, jr_005_5a54

    ld a, $3c
    ld [$c706], a
    ld c, $fe
    ld a, $0e
    ld b, $04
    ld hl, $5490
    jp Jump_000_09de


jr_005_5a54:
    ld a, $3c
    ld [$c706], a
    ld c, $fe
    ld a, $0f
    ld b, $04
    ld hl, $5490
    call Call_000_09de
    ld b, $04
    ld hl, $534d
    jp Jump_000_09de


Jump_005_5a6d:
    ld a, [$c3a3]
    or a
    ld a, [$cc1c]
    jr nz, jr_005_5a78

    add $1a

jr_005_5a78:
    add a
    add $f5
    ld l, a
    adc $5a
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc1c]
    cp $19
    jr nz, jr_005_5a94

    ld a, [$cc30]
    ld b, a
    ld a, $08
    sub b
    ld [$cc30], a

jr_005_5a94:
    ld a, [$cc30]
    ld b, a

jr_005_5a98:
    ld a, [hl+]
    cp $00
    jr z, jr_005_5acc

    cp $ff
    jr nz, jr_005_5aa4

    inc b
    jr jr_005_5a98

jr_005_5aa4:
    ld [$c310], a
    push bc
    push hl

jr_005_5aa9:
    rst $18
    ld b, $04
    ld hl, $59f6
    call Call_000_09de
    ld b, $04
    ld hl, $59cf
    call Call_000_09de
    call Call_000_147f
    xor a
    ld [$c310], a
    ld a, [$c703]
    or a
    jr nz, jr_005_5aa9

    pop hl
    pop bc
    dec b
    jr nz, jr_005_5a98

jr_005_5acc:
    ld a, $02
    ld [$c705], a
    xor a
    ld [$c703], a
    ld a, $86
    ld [$c3ba], a
    rst $18
    ld b, $04
    ld hl, $59cf
    call Call_000_09de
    call Call_000_147f
    ld b, $04
    ld hl, $43d3
    call Call_000_09de
    ld b, $3c

jr_005_5af0:
    rst $18
    dec b
    jr nz, jr_005_5af0

    ret


    ld e, l
    ld e, e
    ld e, [hl]
    ld e, e
    ld h, b
    ld e, e
    ld h, e
    ld e, e
    ld h, a
    ld e, e
    ld l, h
    ld e, e
    ld [hl], d
    ld e, e
    ld a, c
    ld e, e
    add d
    ld e, e
    adc e
    ld e, e
    sub h
    ld e, e
    sbc l
    ld e, e
    and [hl]
    ld e, e
    xor a
    ld e, e
    or [hl]
    ld e, e
    cp l
    ld e, e
    call nz, $cb5b
    ld e, e
    jp nc, $d95b

    ld e, e
    ld [c], a
    ld e, e
    db $eb
    ld e, e
    db $f4
    ld e, e
    db $fd
    ld e, e
    ld b, $5c
    rrca
    ld e, h
    jr @+$5e

    add hl, de
    ld e, h
    dec de
    ld e, h
    ld e, $5c
    ld [hl+], a
    ld e, h
    daa
    ld e, h
    dec l
    ld e, h
    inc [hl]
    ld e, h
    dec a
    ld e, h
    ld b, [hl]
    ld e, h
    ld c, a
    ld e, h
    ld e, b
    ld e, h
    ld h, c
    ld e, h
    ld l, d
    ld e, h
    ld [hl], c
    ld e, h
    ld a, b
    ld e, h
    ld a, a
    ld e, h
    add [hl]
    ld e, h
    adc l
    ld e, h
    sub h
    ld e, h
    sbc l
    ld e, h
    and [hl]
    ld e, h
    xor a
    ld e, h
    cp b
    ld e, h
    pop bc
    ld e, h
    jp z, Jump_000_005c

    jr nz, jr_005_5b60

jr_005_5b60:
    jr nz, jr_005_5b82

    nop
    jr nz, @+$22

    jr nz, jr_005_5b67

jr_005_5b67:
    jr nz, @+$22

    jr nz, jr_005_5b8b

    nop
    jr nz, jr_005_5b8e

    jr nz, jr_005_5b90

    jr nz, jr_005_5b72

jr_005_5b72:
    jr nz, jr_005_5b94

    jr nz, jr_005_5b96

    jr nz, jr_005_5b98

    nop
    rst $38
    jr nz, jr_005_5b9c

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_005_5b82

jr_005_5b82:
    jr nz, @+$01

    jr nz, jr_005_5ba6

    jr nz, jr_005_5ba8

    jr nz, jr_005_5baa

    nop

jr_005_5b8b:
    jr nz, @+$22

    rst $38

jr_005_5b8e:
    jr nz, jr_005_5bb0

jr_005_5b90:
    jr nz, jr_005_5bb2

    jr nz, jr_005_5b94

jr_005_5b94:
    jr nz, jr_005_5bb6

jr_005_5b96:
    jr nz, @+$01

jr_005_5b98:
    jr nz, jr_005_5bba

    jr nz, jr_005_5bbc

jr_005_5b9c:
    nop
    jr nz, jr_005_5bbf

    jr nz, @+$22

    rst $38
    jr nz, jr_005_5bc4

    jr nz, jr_005_5ba6

jr_005_5ba6:
    jr nz, jr_005_5bc8

jr_005_5ba8:
    jr nz, jr_005_5bca

jr_005_5baa:
    jr nz, @+$01

    jr nz, jr_005_5bce

    nop
    add b

jr_005_5bb0:
    jr nz, jr_005_5bd2

jr_005_5bb2:
    jr nz, jr_005_5bd4

    jr nz, jr_005_5bb6

jr_005_5bb6:
    db $10
    add b
    jr nz, jr_005_5bda

jr_005_5bba:
    jr nz, jr_005_5bdc

jr_005_5bbc:
    nop
    db $10
    db $10

jr_005_5bbf:
    add b
    jr nz, jr_005_5be2

    jr nz, jr_005_5bc4

jr_005_5bc4:
    db $10
    db $10
    db $10
    add b

jr_005_5bc8:
    jr nz, @+$22

jr_005_5bca:
    nop
    db $10
    db $10
    db $10

jr_005_5bce:
    db $10
    add b
    jr nz, jr_005_5bd2

jr_005_5bd2:
    db $10
    db $10

jr_005_5bd4:
    db $10
    db $10
    db $10
    add b
    nop
    rst $38

jr_005_5bda:
    db $10
    db $10

jr_005_5bdc:
    db $10
    db $10
    db $10
    db $10
    stop

jr_005_5be2:
    db $10
    rst $38
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    db $10
    db $10
    rst $38
    db $10
    db $10
    db $10
    db $10
    stop
    db $10
    db $10
    db $10
    rst $38
    db $10
    db $10
    db $10
    stop
    db $10
    db $10
    db $10
    db $10
    rst $38
    db $10
    db $10
    stop
    db $10
    db $10
    db $10
    db $10
    db $10
    rst $38
    db $10
    stop
    rst $38
    ld b, b
    jr nz, jr_005_5c33

    jr nz, jr_005_5c35

    jr nz, jr_005_5c37

    nop
    nop
    jr nz, jr_005_5c1b

jr_005_5c1b:
    jr nz, jr_005_5c3d

    nop
    jr nz, @+$22

    jr nz, jr_005_5c22

jr_005_5c22:
    jr nz, @+$22

    jr nz, jr_005_5c46

    nop
    jr nz, jr_005_5c49

    jr nz, jr_005_5c4b

    jr nz, jr_005_5c2d

jr_005_5c2d:
    jr nz, jr_005_5c4f

    jr nz, jr_005_5c51

    jr nz, jr_005_5c53

jr_005_5c33:
    nop
    rst $38

jr_005_5c35:
    jr nz, jr_005_5c57

jr_005_5c37:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_005_5c3d

jr_005_5c3d:
    jr nz, @+$01

    jr nz, jr_005_5c61

    jr nz, jr_005_5c63

    jr nz, jr_005_5c65

    nop

jr_005_5c46:
    jr nz, @+$22

    rst $38

jr_005_5c49:
    jr nz, jr_005_5c6b

jr_005_5c4b:
    jr nz, jr_005_5c6d

    jr nz, jr_005_5c4f

jr_005_5c4f:
    jr nz, jr_005_5c71

jr_005_5c51:
    jr nz, @+$01

jr_005_5c53:
    jr nz, jr_005_5c75

    jr nz, jr_005_5c77

jr_005_5c57:
    nop
    jr nz, jr_005_5c7a

    jr nz, @+$22

    rst $38
    jr nz, jr_005_5c7f

    jr nz, jr_005_5c61

jr_005_5c61:
    jr nz, jr_005_5c83

jr_005_5c63:
    jr nz, jr_005_5c85

jr_005_5c65:
    jr nz, @+$01

    jr nz, jr_005_5c89

    nop
    ld b, b

jr_005_5c6b:
    jr nz, jr_005_5c8d

jr_005_5c6d:
    jr nz, jr_005_5c8f

    jr nz, jr_005_5c71

jr_005_5c71:
    db $10
    ld b, b
    jr nz, jr_005_5c95

jr_005_5c75:
    jr nz, jr_005_5c97

jr_005_5c77:
    nop
    db $10
    db $10

jr_005_5c7a:
    ld b, b
    jr nz, jr_005_5c9d

    jr nz, jr_005_5c7f

jr_005_5c7f:
    db $10
    db $10
    db $10
    ld b, b

jr_005_5c83:
    jr nz, @+$22

jr_005_5c85:
    nop
    db $10
    db $10
    db $10

jr_005_5c89:
    db $10
    ld b, b
    jr nz, jr_005_5c8d

jr_005_5c8d:
    db $10
    db $10

jr_005_5c8f:
    db $10
    db $10
    db $10
    ld b, b
    nop
    rst $38

jr_005_5c95:
    db $10
    db $10

jr_005_5c97:
    db $10
    db $10
    db $10
    db $10
    stop

jr_005_5c9d:
    db $10
    rst $38
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    db $10
    db $10
    rst $38
    db $10
    db $10
    db $10
    db $10
    stop
    db $10
    db $10
    db $10
    rst $38
    db $10
    db $10
    db $10
    stop
    db $10
    db $10
    db $10
    db $10
    rst $38
    db $10
    db $10
    stop
    db $10
    db $10
    db $10
    db $10
    db $10
    rst $38
    db $10
    stop
    rst $38
    add b
    jr nz, jr_005_5cee

    jr nz, @+$22

    jr nz, @+$22

    nop

Call_005_5cd3:
    xor a
    ld hl, $c719
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$cc30]
    ld b, a

jr_005_5cdf:
    ld a, [$c717]
    cp b
    jr z, jr_005_5d18

    ld a, [$c718]
    cp b
    jr z, jr_005_5d04

    ld a, [$c715]

jr_005_5cee:
    cp b
    jr z, jr_005_5d0e

    ld a, [$c716]
    cp b
    jr z, jr_005_5cfa

    inc b
    jr jr_005_5cdf

jr_005_5cfa:
    xor a
    ld [$c716], a
    ld a, $01
    ld [$c71b], a
    ret


jr_005_5d04:
    xor a
    ld [$c718], a
    ld a, $01
    ld [$c71c], a
    ret


jr_005_5d0e:
    xor a
    ld [$c715], a
    ld a, $01
    ld [$c71a], a
    ret


jr_005_5d18:
    xor a
    ld [$c717], a
    ld a, $01
    ld [$c719], a
    ret


    call Call_000_0b26

jr_005_5d25:
    ld a, [$c39a]
    or a
    jr nz, jr_005_5d25

    call Call_000_0c49
    xor a
    call Call_000_0e45
    call Call_000_0e5a
    call Call_000_147f
    xor a
    call Call_000_0ed2
    xor a
    call Call_000_0f4d
    ld a, $01
    ldh [rIE], a
    ld a, $e4
    ld hl, $7208
    ld de, $759a
    call Call_005_5d76
    ld a, $e4
    ld hl, $5da4
    ld de, $641e
    call Call_005_5d76
    ld a, $d8
    ld hl, $64ee
    ld de, $6be4
    call Call_005_5d76
    ld a, $e4
    ld hl, $6c6b
    ld de, $715f
    call Call_005_5d76
    ld sp, $e000
    jp Jump_000_0153


Call_005_5d76:
    push af
    push de
    ld de, $8800
    call Call_000_13a5
    pop hl
    ld de, $9800
    call Call_000_13a5
    pop af
    ld b, a
    call Call_000_0b1c
    ld a, $81
    ldh [rLCDC], a
    ei
    ld b, $00

jr_005_5d91:
    rst $18
    rst $18
    rst $18
    rst $18
    dec b
    jr nz, jr_005_5d91

    call Call_000_0b26

jr_005_5d9b:
    ld a, [$c39a]
    or a
    jr nz, jr_005_5d9b

    jp Jump_000_0c49


    rla
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
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
    sub b
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
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld b, b
    ld b, b
    rst $38
    rst $38
    rla
    inc c
    nop
    rrca
    ld [$ffff], sp
    rla
    inc c
    nop
    ldh [rNR41], a
    rst $38
    rst $38
    rla
    inc c
    nop
    rst $38
    inc b
    rst $38
    rst $38
    rla
    inc c
    nop
    rst $38
    rlca
    ld hl, sp-$08
    rla
    inc c
    nop
    rst $38
    rst $38
    rla
    ld [de], a
    nop
    ld b, $06
    dec c
    dec c
    rla
    inc b
    add hl, bc
    rrca
    rrca
    ld [$1708], sp
    ld b, $00
    inc bc
    inc bc
    ld e, $1e
    db $10
    db $10
    rst $08
    rst $08
    ld c, b
    ld c, b
    rla
    ld b, $00
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    adc c
    adc c
    rrca
    rrca
    rla
    inc b
    nop
    inc bc
    inc bc
    inc de
    inc de
    dec de
    dec de
    rra
    rra
    dec d
    dec d
    sub c
    sub c
    rla
    ld [$0800], sp
    ld [$0617], sp
    adc c
    rla
    ld [$e400], sp
    db $e4
    rla
    ld b, $04
    rla
    ld b, $00
    rla
    ld a, [bc]
    db $10
    ld [$0f08], sp
    rrca
    rla
    inc c
    nop
    ld c, b
    ld c, b
    rst $08
    rst $08
    rla
    inc c
    nop
    rla
    inc b
    ld [$c0c0], sp
    rla
    ld a, [bc]
    nop
    pop de
    pop de
    ld b, c
    ld b, c
    ld h, b
    ld h, b
    jr nz, jr_005_5eb5

    rla
    ld a, [bc]
    nop
    rla
    inc b
    ld h, b
    rla
    ld a, [bc]
    nop
    ld sp, hl
    ld sp, hl
    rla
    ld b, $89
    add c
    add c
    rla
    ld b, $00
    call nz, Call_000_17c4
    inc b
    inc b
    rlca
    rlca
    ldh [$e0], a
    rla
    ld b, $00
    rla

jr_005_5eb5:
    inc b
    db $10
    dec e
    dec e
    pop bc
    pop bc
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a

Jump_005_5ed2:
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld a, a
    nop
    rla
    ld [hl], h
    nop
    rla
    inc bc
    rst $38
    add b
    ret nz

    cp a
    ret nz

    and b
    ret nz

    and b
    push bc
    and l
    rst $00
    and a
    push bc
    and l
    rla
    inc bc
    rst $38
    ld bc, $fd03
    inc bc
    dec b
    inc bc
    dec b
    ld b, e
    ld b, l
    ld b, e
    ld b, l
    ld b, e
    ld b, l
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    cp a
    rst $38
    add b
    rst $38
    rst $38
    inc bc
    ld bc, $0f0f
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    db $fd
    rst $38
    ld bc, $ffff
    ret nz

    add b
    ldh a, [$f0]
    rla
    ld b, $00
    cp $fe
    jr nz, jr_005_5f49

    rla
    inc b
    inc h
    ld h, h
    ld h, h
    rla
    ld [$9700], sp
    sub a
    sub h
    sub h
    or h
    or h
    or a
    or a
    rla
    ld b, $00
    inc b
    inc b
    rla
    ld b, $05
    add h
    add h
    rla
    ld b, $00
    ret nz

    ret nz

    add b

jr_005_5f49:
    add b
    nop
    nop
    ld hl, sp-$08
    ld [$0008], sp
    nop
    add b
    add b
    ld [$bbea], a
    cp e
    xor b
    xor b
    rla
    ld b, $88
    rla
    inc b
    nop
    jr nz, jr_005_5f82

    ld b, b
    ld b, b
    pop bc
    pop bc
    rla
    ld b, $41
    rla
    inc b
    nop
    ld h, a
    ld h, a
    add [hl]
    add [hl]
    ld b, $06
    rla
    inc b
    ld [bc], a
    ld a, [$00fa]
    nop
    inc b
    inc b
    adc a
    adc a
    ld c, h
    ld c, h
    inc l
    inc l
    inc h

jr_005_5f82:
    inc h
    rla
    inc b
    inc d
    nop
    nop
    ld h, c
    ld h, c
    ld d, c
    ld d, c
    rla
    ld b, $c9
    ld b, l
    ld b, l

jr_005_5f91:
    dec b
    dec b
    nop
    nop
    ldh [$e0], a
    jr z, jr_005_5fc1

    ld l, b
    ld l, b
    ld c, b
    ld c, b
    call nz, $04c4
    inc b
    ld [bc], a
    ld [bc], a
    rla
    inc b
    nop
    ld c, a
    ld c, a
    rla
    ld a, [bc]
    ld b, c
    nop
    nop
    ld b, $06
    db $fc
    db $fc
    jr jr_005_5fcb

    jr z, @+$2a

    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld [$1708], sp
    ld b, $00
    ld a, h
    ld a, h
    rla

jr_005_5fc1:
    inc b
    ld b, h
    ld a, b
    ld a, b
    ld e, h
    ld e, h
    rrca
    rrca
    inc c
    dec bc

jr_005_5fcb:
    inc c
    dec bc
    rrca
    ld [$080f], sp
    ccf
    ld [$0f4f], sp
    jr nz, jr_005_5fd7

jr_005_5fd7:
    rst $38
    rst $38
    rra
    ldh [$1f], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$08
    ld hl, sp+$0b
    ld hl, sp+$08
    ld hl, sp+$09
    ld hl, sp+$08
    rst $38
    rst $38
    ld bc, $f000
    ldh a, [rNR22]
    inc bc
    db $10
    ret nc

    db $10
    db $10
    jr jr_005_5f91

    inc d
    db $10
    ld a, [c]
    ldh a, [$84]
    nop
    ld b, a
    ld b, a
    rla
    ld b, $44
    rla
    ld [$1700], sp
    ld b, $a0
    add a
    add a
    rla
    ld [$1700], sp
    inc b
    add h
    rla
    inc b
    add b
    rla
    ld [$0800], sp
    ld [$f8f8], sp
    rla
    inc c
    nop
    ld bc, $1701
    ld c, $00
    ldh a, [$f0]
    rla
    ld c, $00
    ld [bc], a
    ld [bc], a
    ld bc, $1701
    inc c
    nop
    ld b, c
    ld b, c
    pop bc
    pop bc
    rla
    inc c
    nop
    rrca
    rrca
    rla
    ld c, $00
    ld b, d
    ld b, d
    rla
    inc b
    jr nz, jr_005_6061

    ld a, [bc]
    nop
    ld b, b
    ld b, b
    rla
    ld c, $00
    ld b, b
    nop
    jr nz, jr_005_6055

jr_005_6055:
    jr nz, jr_005_6057

jr_005_6057:
    jr nc, jr_005_6089

    ld c, b
    ld c, b
    ld a, b
    ld a, b
    rla
    ld b, $00
    rst $38

jr_005_6061:
    rst $38
    sub l
    xor d
    adc d
    sub l
    sub b
    and a
    ld a, a
    ld a, a
    rla
    inc b
    nop
    ld b, $00
    rst $38
    rst $38
    ld d, c
    xor d
    and d
    ld d, c
    ld de, $ffea
    rst $38
    rla
    inc b
    nop
    ld a, b
    nop
    rla
    ld [$1780], sp
    ld c, $00
    ld c, [hl]
    ld c, [hl]
    ld a, b
    ld a, b
    rla

jr_005_6089:
    inc b
    ld c, b
    rla
    ld [$1000], sp
    db $10
    inc de
    inc de
    rla
    inc b
    ld [de], a
    rla
    ld a, [bc]
    nop
    add b
    add b
    rla
    inc c
    nop
    jr nc, jr_005_60cf

    ld b, b
    ld b, b
    rla
    inc b
    ld b, c
    rla
    inc c
    nop
    ldh [$e0], a
    inc de
    inc de
    rla
    ld a, [bc]
    nop
    rlca
    rlca
    inc b
    inc b
    db $e4
    db $e4
    rla
    ld a, [bc]
    nop
    rla
    inc b
    add b
    ld b, b
    ld b, b
    rla
    inc b
    ld c, b
    ld [$1708], sp
    ld a, [bc]
    nop
    inc de
    inc de
    rla
    inc b
    db $10
    inc bc
    inc bc
    rla
    ld [$8000], sp

jr_005_60cf:
    add b
    rla
    inc b
    ld b, b
    add b
    add b
    rla
    ld [$1700], sp
    inc b
    ld b, c
    rla
    inc b
    inc h
    inc a
    inc a
    rla
    ld b, $00
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    adc d
    adc d
    adc c
    adc c
    ld a, b
    ld a, b
    rla
    ld b, $00
    inc h
    inc h
    ld d, $16
    ld e, $1e
    ld d, $16
    rst $30
    rst $30
    rla
    ld b, $00
    ld b, b
    ld b, b
    rla
    ld b, $20
    call nz, Call_000_17c4
    stop
    rla
    ld b, $01
    rla
    ld a, [bc]
    nop
    rst $38
    rst $38
    rla
    inc c
    nop
    inc bc
    inc bc
    db $fc
    db $fc
    rla
    inc c
    nop
    rst $38
    rst $38
    rla
    inc c
    nop
    rst $38
    rst $38
    rla
    inc c
    nop
    rra
    rra
    ldh [$e0], a
    rla
    inc c
    nop
    rst $38
    rst $38
    rla
    inc c
    nop
    rlca
    rlca
    ld hl, sp-$08
    rla
    inc c
    nop
    rst $38
    rst $38
    rla
    ld c, $00
    ldh [$e0], a
    rla
    inc c
    jr nz, jr_005_6158

    db $10
    ld bc, $0617
    nop
    rla
    ld a, [bc]
    ld bc, $0617
    nop
    rla
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rla
    dec b
    nop

jr_005_6158:
    inc bc
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rla
    dec b
    nop
    rla
    inc bc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rla
    inc b
    nop
    rla
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
    rla
    inc bc
    nop
    rrca
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rla
    inc bc
    nop
    rla
    inc bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    nop
    nop
    rla
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
    rla
    inc bc
    nop
    rla
    inc bc
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
    ccf
    ccf
    rst $38
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
    rla
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0617
    add b
    rla
    ld a, [bc]
    nop
    rla
    db $10
    jr nz, jr_005_6202

    ld [$1701], sp
    inc c
    nop
    rrca
    rrca
    ld [$8808], sp
    adc b
    adc a
    adc a
    rla
    inc b
    adc d
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rla

jr_005_6202:
    inc b
    nop
    rla
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
    rst $38
    rla
    inc b
    nop
    rla
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [$0707]
    nop
    nop
    db $fc
    db $fc
    rst $18
    ld d, e
    rst $18
    ld d, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rla
    inc b
    nop
    rla
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
    rst $38
    rla
    inc b
    nop
    rst $38
    rst $38
    rst $20
    inc h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
    rla
    inc b
    nop
    rla
    inc bc
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $e4
    rra
    rra
    nop
    nop
    ld hl, sp-$08
    rst $38
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
    rst $38
    rla
    inc b
    nop
    rst $38
    rst $38
    cp $02
    cp $02
    cp $02
    db $fc
    inc b
    rst $38
    rst $38
    rla
    inc b
    nop
    rst $38
    rst $38
    rla
    ld [$f800], sp
    ld hl, sp+$17
    inc b
    ld [$f8f8], sp
    adc d
    adc d
    rst $38
    rst $38
    rla
    inc c
    add b
    rst $38
    add b
    rst $38
    rst $38
    rla
    inc c
    nop
    rst $38
    nop
    rst $38
    rst $38
    rla
    inc c
    nop
    rst $18
    ld d, c
    rst $38
    rst $38
    rla
    inc c
    nop
    rst $20
    inc h
    rst $38
    db $fc
    inc bc
    inc bc
    rla
    ld a, [bc]
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    rst $38
    rla
    ld a, [bc]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rla
    ld a, [bc]
    nop
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    rla

jr_005_62cc:
    ld a, [bc]
    nop
    ccf
    jr nz, jr_005_6310

    jr nz, @+$01

    rst $38
    rla
    ld a, [bc]
    nop
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    rst $38
    rla
    ld a, [bc]
    nop
    rla
    inc b
    jr z, @+$01

    rst $38
    rla
    ld a, [bc]
    nop
    rla
    inc b
    jr nz, jr_005_62cc

    ldh [rNR22], a
    ld a, [bc]
    jr nz, jr_005_6308

    inc b
    add b
    rst $38
    rst $38
    rla
    ld a, [bc]
    add b
    rla
    inc b
    nop
    ldh [$e0], a
    rra
    rra
    rla
    ld c, $00
    rst $38
    rst $38
    rla
    ld [$1740], sp

jr_005_6308:
    ld b, $00
    rst $38
    rst $38
    rla
    ld [$1780], sp

jr_005_6310:
    ld b, $00
    ld hl, sp-$08
    rlca
    rlca
    rla
    ld c, $00
    rst $38
    rst $38
    rla
    ld b, $41
    rla
    ld [$fe00], sp
    cp $01
    ld bc, $0000
    add b
    add b
    jr nz, jr_005_634b

    rla
    ld [$c040], sp
    ret nz

    rla
    inc b
    ld b, b
    rla
    db $10
    add b
    rla
    ld b, $00
    rla
    inc bc
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rla
    ld b, $40
    rla
    inc bc
    ret nz

    ld b, b
    ret nz

jr_005_634b:
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    rla
    ld [$1780], sp
    inc bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rla
    ld [$e000], sp
    ldh [rIE], a
    rra
    rst $38
    ld [$08ff], sp
    rla
    ld a, [bc]
    nop
    rla
    inc bc
    rst $38
    nop
    rst $38
    rla
    dec bc
    nop
    cp $fe
    rst $38
    add hl, bc
    rst $38
    ld [$0c17], sp
    nop
    rla
    inc bc
    rst $38
    nop
    rla
    inc c
    ld b, b
    rla
    inc bc
    ret nz

    ld b, b
    rla
    inc c
    add b
    rla
    inc bc
    rst $38
    add b
    rla
    inc c
    nop
    rla
    inc bc
    cp $02
    rla
    db $10
    ld b, b
    rla
    inc b
    add b
    rla
    inc c
    ld b, b
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rrca
    ld [$080f], sp
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
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
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
    cp $09
    cp $09
    cp $09
    cp $09
    cp $09
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    ld a, [hl]
    add c
    add h
    ld a, e
    ld [bc], a
    db $fd
    sub d
    ld l, l
    ld b, e
    cp h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$88ff], sp
    rst $38
    adc b
    rst $38
    sub b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    rla
    nop
    rst $38
    rst $38
    ld [hl+], a
    nop
    ld bc, $ff02
    ld e, $00
    inc bc
    inc b
    nop
    nop
    rst $38
    adc l
    dec b
    rst $38
    ld c, $00
    rst $38
    add h
    ld [de], a
    nop
    rst $38
    add h
    ld d, $00
    nop
    ld a, [de]
    dec de
    nop
    rst $38
    add l
    inc e
    rst $38
    dec c
    nop
    rst $38
    add h
    ld hl, $ff00
    add a
    dec h
    rst $38
    add hl, de
    nop
    rst $38
    add a
    inc l
    rst $38
    dec d
    nop
    rst $38
    add h
    inc sp
    ld [hl], $36
    rst $38
    inc bc
    scf
    jr c, jr_005_6496

    rst $38
    add h
    add hl, sp
    rst $38
    ld de, $ff00
    add [hl]
    dec a
    rst $38
    adc c
    ld b, d
    rst $38
    ld de, $ff00
    add [hl]
    ld c, e
    rst $38
    add e
    ld d, b
    ld d, b
    rst $38
    add h
    ld d, e
    ld c, d
    rst $38
    ld [de], a
    nop
    rst $38
    add h
    ld d, a
    ld e, c
    ld e, c
    rst $38
    adc b
    ld e, e
    rst $38
    ld [de], a
    nop
    ld h, e
    add hl, sp
    rst $38
    add e
    ld h, h
    scf
    ld h, a
    ld [hl], $36
    ld l, b
    ld l, c
    inc [hl]
    inc [hl]
    ld l, d
    rst $38
    ld [de], a
    nop

jr_005_6496:
    ld l, e
    ld l, h
    ccf
    rst $38
    adc c
    ld l, l
    nop
    db $76
    rst $38
    ld [de], a
    nop
    rst $38
    adc b
    ld [hl], a
    ld a, c
    ld a, a
    ld a, e
    add b
    nop
    db $76
    rst $38
    ld [de], a
    nop
    db $76
    add c
    ld a, c
    add d
    ld a, e
    add e
    ld a, c
    add h
    ld a, c
    add d
    ld a, e
    add l
    nop
    db $76
    rst $38
    ld de, $3b00
    add [hl]
    add a
    ld e, c
    adc b
    ld e, b
    rst $38
    add e
    adc c
    rst $38
    ld b, $8b
    rst $38
    ld de, $ff00
    add h
    dec b
    rst $38
    add h
    adc h
    nop
    rst $38
    add e
    dec h
    rst $38
    add e
    sub b
    rst $38
    ld de, $ff00
    add h
    ld d, $ff
    add l
    sub e
    rst $38
    add e
    inc l
    rst $38
    add e
    sbc b
    rst $38
    cpl
    nop
    rst $38
    nop
    dec h
    dec h
    ld b, $00
    rlca
    rlca
    dec h
    ld b, $04
    add a
    add a
    dec h
    ld b, $00
    and l
    and l
    xor c
    xor c
    dec h
    inc b
    cp c
    add hl, hl
    add hl, hl
    dec h
    inc b
    nop
    ret z

    ret z

    ret nc

    ret nc

    ld d, b
    ld d, b
    sbc b
    sbc b
    inc c
    inc c
    call c, Call_000_25dc
    ld b, $00
    inc a
    inc a
    ld [hl], l
    ld [hl], l
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    nop
    nop
    dec h
    inc b
    ld bc, $e1e1
    ldh [$e0], a
    ld b, b
    ld b, b
    pop af
    pop af
    nop
    nop
    ld b, e
    ld b, e
    ld [c], a
    ld [c], a
    ld b, d
    ld b, d
    db $e3
    db $e3
    ld a, b
    ld a, b
    ld c, b
    ld c, b
    di
    di
    ld b, b
    ld b, b
    ldh [$e0], a
    dec h
    inc b
    nop
    add b
    add b
    dec h
    inc b
    ld b, b
    add b
    add b
    jr nz, jr_005_656e

    rlca
    rlca
    dec h
    ld c, $00
    dec h
    ld b, $20
    and b
    and b
    ldh [$e0], a
    dec h
    ld b, $00
    ld b, b
    ld b, b
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop

jr_005_656e:
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    dec c
    nop
    ld hl, sp-$08
    sub a
    add a
    cp a
    add b
    db $eb
    sub h
    push af
    adc d
    ld [$f795], a
    adc b
    rst $28
    sub e
    dec h
    inc b
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ld [hl], b
    sub b
    cp b
    ld c, b
    rst $18
    daa
    rst $38
    ret nz

    dec h
    ld [$0300], sp
    inc bc
    dec b
    inc b
    cp $f9
    rst $38
    ld b, $00
    nop
    inc bc
    inc bc
    rra
    rra
    push af
    pop hl
    xor e
    dec d
    ld d, [hl]
    xor d
    xor [hl]
    ld d, d
    sub $2a
    inc c
    inc c
    jr c, jr_005_6605

    ld d, b
    ld d, b
    sub b
    sub b
    dec h
    ld [$0010], sp
    nop
    add d
    add d
    sbc b
    sbc b
    cp d
    cp d
    xor d
    xor d
    jp z, Jump_000_25ca

    inc b
    ld c, d
    dec h
    inc b
    nop
    jr c, jr_005_6620

    dec h
    inc b
    jr nz, @+$3a

    jr c, jr_005_65f6

    ld [$7070], sp
    inc b
    inc b
    nop
    nop
    dec h

jr_005_65f6:
    inc c
    inc b
    dec h
    inc b
    nop
    jr nc, jr_005_662d

    dec h
    inc b
    ld b, b
    ld a, b
    ld a, b
    ld [$f808], sp

jr_005_6605:
    ld hl, sp+$25
    inc b
    inc b
    dec b
    dec b
    ld e, $1e
    inc d
    inc d
    dec h
    ld b, $04
    nop
    nop
    add b
    add b
    dec h
    inc b
    add c
    ld sp, hl
    ld sp, hl
    dec h
    inc b
    adc c
    add hl, bc
    add hl, bc

jr_005_6620:
    dec h
    inc b
    nop
    ldh [$e0], a
    jr nz, @+$22

    ld h, b
    ld h, b
    ret nz

    ret nz

    nop
    nop

jr_005_662d:
    ldh [$e0], a
    rlca
    rlca
    ld b, $06
    inc b
    inc b
    rlca
    rlca
    dec h
    ld b, $04
    rlca
    rlca
    add b
    add b
    adc a
    adc a
    adc b
    adc b
    rst $18
    rst $18
    dec h
    inc b
    jr z, jr_005_6674

    inc l
    rst $00
    rst $00
    inc bc
    inc bc
    jp nz, $02c2

    ld [bc], a
    jp nz, Jump_000_07c2

    rlca
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld a, [c]
    ld a, [c]
    adc c
    adc c
    adc l
    adc l
    sbc [hl]
    sbc [hl]
    sub $d6
    jp nc, $52d2

    ld d, d
    dec h
    inc b
    ld c, b
    dec h
    db $10
    add b
    ld [hl], a
    ld c, e
    ld a, a
    ld b, e
    ld [hl], a
    ld c, d
    ld a, a

jr_005_6674:
    ld b, h
    ld [hl], a
    ld l, b
    dec a
    jr nz, @+$3d

    jr nc, @+$3d

    jr nc, @+$01

    add b
    rst $38
    ccf
    rst $38
    ld b, b
    pop hl
    sbc [hl]
    ret nz

    and c
    ret nz

    and b
    ret nz

    and b
    call z, $ffac
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    sub l
    rst $38
    ld c, e
    rst $38
    ld h, $7f
    xor d
    ld a, a
    add [hl]
    ccf
    ld c, d
    db $ec
    inc d
    db $fc
    add h
    db $fc
    db $f4
    db $fc
    inc c
    db $fc
    inc b
    sbc h
    ld h, h
    inc c
    sub h
    ld c, $92
    ccf
    jr nc, jr_005_66ef

    jr nz, jr_005_66f1

    jr nz, @+$41

    jr nz, jr_005_66f5

    jr nz, jr_005_66f7

    jr nz, jr_005_66f9

    jr nz, jr_005_66f8

    inc hl
    sub $b6
    sub $b6
    sbc $be
    sbc $3e
    call z, $cc2e
    inc l
    ldh [rNR10], a
    ld h, b
    sub b
    ccf
    ld b, h
    ld a, $4d
    ld a, $45
    ld a, $49
    dec a
    ld c, e
    dec e
    inc hl
    dec de
    daa
    ld bc, $0e19
    sub d
    ld b, $0a
    add $ca
    ld b, [hl]
    ld c, d
    add $ca
    add $ca
    adc [hl]
    sub d
    adc [hl]
    sub d
    nop
    nop

jr_005_66ef:
    db $10
    db $10

jr_005_66f1:
    dec h
    ld [$0911], sp

jr_005_66f5:
    add hl, bc
    rrca

jr_005_66f7:
    rrca

jr_005_66f8:
    nop

jr_005_66f9:
    nop
    inc e
    inc e
    ld d, $16
    dec h
    ld [$0212], sp
    ld [bc], a
    nop
    nop
    ld e, $1e
    ld [hl], e
    ld [hl], e
    dec h
    ld b, $41
    ld b, e
    ld b, e
    ld a, $3e
    jr nc, @+$32

    ld [hl], e
    ld [hl], e
    ld b, d
    ld b, d
    ld c, d
    ld c, d
    ld [hl], e
    ld [hl], e
    ld h, d
    ld h, d
    dec h
    inc b
    ld [hl+], a
    db $10
    db $10
    add b
    add b
    dec h
    inc b
    ld hl, $a1a1
    dec h
    inc b
    ld hl, $2020
    dec h
    inc b
    nop
    ret nz

    ret nz

    rlca
    rlca
    dec h
    inc b
    inc b
    add e
    add e
    ldh [$e0], a
    nop
    nop
    dec h
    inc b
    inc b
    call nz, $25c4
    inc b
    ld b, d
    ld [c], a
    ld [c], a
    ld [hl-], a
    ld [hl-], a
    dec h
    inc b
    nop
    ld a, h
    ld a, h
    dec h
    inc b
    ld e, d
    ld d, d
    ld d, d
    ld b, c
    ld b, c
    ld bc, $2501
    inc b
    nop
    ld a, $3e
    ld [hl+], a
    ld [hl+], a
    dec h
    inc b
    ld b, d
    ld b, e
    ld b, e
    dec a
    dec a
    dec h
    inc b
    nop
    jr jr_005_6782

    jr nz, jr_005_678c

    jr c, jr_005_67a6

    ld c, $0e
    ld a, [hl]
    ld a, [hl]
    dec h
    ld b, $00
    ldh [$e0], a
    add a
    add a
    dec h
    inc b
    adc c
    adc a
    adc a
    ldh [$e0], a
    db $10
    db $10

jr_005_6782:
    inc d
    inc d
    jr @+$1a

    ld [hl], b
    ld [hl], b
    dec h
    inc b
    db $10
    dec h

jr_005_678c:
    inc b
    inc de
    add hl, sp
    scf
    dec de
    rla
    jr jr_005_67ab

    inc e
    dec de
    ld c, $0d
    rlca
    ld b, $03
    inc bc
    ld bc, $9001
    add sp, $08
    db $f4
    daa
    ld hl, sp-$40
    rst $38

jr_005_67a6:
    jr nz, @+$01

    inc e
    rst $38
    add e

jr_005_67ab:
    ld a, a
    ret nz

    cp a
    nop
    nop
    cp $00
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ld bc, $1cfe
    inc h
    db $fc
    db $f4
    db $fc
    db $f4
    db $fc
    db $f4
    ld hl, sp-$18
    ld [hl], b
    sub b
    ldh [$60], a
    add b
    add b
    inc bc
    inc bc
    dec h
    inc bc
    rlca
    dec b
    rrca
    ld a, [bc]
    rra
    dec e
    rra
    ld a, [de]
    ccf
    inc [hl]
    ccf
    ld a, [hl-]
    ld hl, sp-$39
    rst $38
    xor b
    rst $38
    ld d, b
    db $fd
    and d
    ld a, [$f505]
    ld a, [bc]
    add sp, $17
    ret nc

    cpl
    rrca
    pop af
    cp $0e
    rst $38
    ld bc, $aa55
    xor d
    ld d, l
    ld bc, $00fe
    rst $38
    nop
    rst $38
    dec h
    inc b
    nop
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ld a, b
    adc b
    cp b
    ld c, b
    ld e, h
    and h
    nop
    nop
    dec h
    inc b
    ld b, c
    ld b, l
    ld b, l
    dec [hl]
    dec [hl]
    dec d
    dec d
    rra
    rra
    ld a, [bc]
    ld a, [bc]
    dec h
    inc b
    nop
    rra
    rra
    ld de, $3111
    ld sp, $3e3e
    jr nc, jr_005_6859

    rra
    rra
    dec h
    ld b, $00
    dec h
    inc b
    ld bc, $0202
    inc bc
    inc bc
    dec h
    ld b, $00
    db $e3
    db $e3
    dec h
    inc b
    ld [bc], a
    inc bc
    inc bc
    ld hl, sp-$08
    nop
    nop
    dec h
    inc b
    inc b
    call nz, $25c4
    inc b
    ld b, h
    and h
    and h
    inc h
    inc h
    inc b
    inc b
    dec h
    ld b, $84
    add a
    add a
    dec h
    ld b, $84

jr_005_6859:
    inc b
    inc b
    dec h
    inc b
    nop
    db $10
    db $10
    add a
    add a
    dec h
    inc b
    sub l
    sub h
    sub h
    add h
    add h
    dec h
    ld b, $00
    ret nz

    ret nz

    dec h
    ld [$2540], sp
    inc b
    jr z, jr_005_68a9

    inc [hl]
    dec h
    inc c
    nop
    ld e, $1e
    jr nz, jr_005_689d

    jr c, jr_005_68b7

    rlca
    rlca
    inc bc
    inc bc
    ld e, $1e
    dec h
    ld b, $00
    ld c, $0e
    add hl, de
    add hl, de
    dec h
    inc b
    sub c
    rrca
    rrca
    dec h
    ld b, $00
    jr jr_005_68ae

    inc [hl]
    inc [hl]
    dec h
    ld b, $24
    inc b
    inc b

jr_005_689d:
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    adc [hl]
    adc [hl]
    dec h
    inc b
    adc b
    adc a

jr_005_68a9:
    adc a
    add b
    add b
    dec h
    inc c

jr_005_68ae:
    nop
    add b
    add b
    nop
    nop
    ld a, a
    ld [hl], h
    ld a, a
    ld l, b

jr_005_68b7:
    ld a, a
    ld [hl], h
    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$18
    rla
    ret nc

    cpl
    and b
    ld e, [hl]
    ret nz

    ld a, $a0
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $08
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
    rst $38
    nop
    rst $38
    inc l
    call nc, $e21e
    ld l, $d2
    rla
    jp hl


    rrca
    pop af
    rla
    add sp, $0b
    db $f4
    rla
    add sp, $00
    nop
    dec h
    inc b
    jr nz, jr_005_6925

    inc l
    jr nc, jr_005_692c

    ld h, b
    ld h, b
    dec h
    inc b
    jr nz, jr_005_6927

    ld [$fc80], sp
    db $fc
    add $c6
    dec h
    inc b
    add d
    dec h
    ld b, $00
    ld hl, sp-$08
    sbc b
    sbc b
    ldh a, [$f0]
    add b
    add b
    ld hl, sp-$08
    dec h
    inc b
    nop
    inc bc
    inc bc
    dec h
    inc b
    inc b
    rlca
    rlca
    nop
    nop
    rlca

jr_005_6925:
    rlca
    dec h

jr_005_6927:
    ld b, $00
    inc bc
    inc bc
    ld [bc], a

jr_005_692c:
    ld [bc], a
    ld a, [c]
    ld a, [c]
    inc sp
    inc sp
    ret nz

    ret nz

    dec h
    ld b, $00
    jp nz, Jump_000_25c2

    inc b
    ld d, d
    jp nc, Jump_005_5ed2

    ld e, [hl]
    nop
    nop
    add b
    add b
    jr jr_005_695d

    sub b
    sub b
    sub e
    sub e
    dec h
    inc b
    sub d
    add d
    add d
    dec h
    ld b, $00
    ld c, $0e
    jp z, Jump_000_0eca

    ld c, $08
    ld [$0f0f], sp
    ld a, [bc]
    ld a, [bc]

jr_005_695d:
    ld c, d
    ld c, d
    dec h
    ld [$6240], sp
    ld h, d
    dec h
    ld [$0700], sp
    rlca
    dec c
    dec c
    dec h
    inc b
    add hl, bc
    rrca
    rrca
    nop
    nop
    dec h
    inc b
    db $10
    ld de, $9111
    sub c
    dec h
    inc b
    sub b
    ret


    ret


    dec h
    ld b, $00
    db $e3
    db $e3
    dec c
    dec c
    add sp, -$18
    inc l
    inc l
    rst $00
    rst $00
    dec h
    ld b, $00
    ld bc, $2501
    inc b
    add c
    dec h
    inc b
    add b
    nop
    nop
    dec h
    inc b
    jr z, jr_005_69c1

    inc c
    nop
    dec h
    ld [$2580], sp
    inc b
    add c
    ld sp, hl
    ld sp, hl
    dec h
    ld b, $00
    inc bc
    inc bc
    ld [c], a
    ld [c], a
    or d
    or d
    ld [de], a
    ld [de], a
    ld a, [c]
    ld a, [c]
    nop
    nop
    dec h
    inc b
    ld [bc], a
    add d
    add d
    ld e, $1e
    dec h
    inc b
    ld [hl+], a
    ld a, $3e

jr_005_69c1:
    nop
    nop
    dec h
    inc b
    ld de, $1f1f
    dec h
    ld [$2511], sp
    inc b
    nop
    ld hl, $0221
    ld [bc], a
    dec h
    inc b
    ld [hl+], a
    inc hl
    inc hl
    nop
    nop
    dec h
    inc b
    ld [$8888], sp
    adc a
    adc a
    dec h
    ld [$2588], sp
    ld b, $00
    dec h
    ld a, [bc]
    add b
    nop
    nop
    cp $fe
    add b
    add b
    ld hl, sp-$08
    dec h
    inc b
    inc b
    ld a, b
    ld a, b
    nop
    nop
    dec h
    inc b
    ld bc, $0707
    ld bc, $7101
    ld [hl], c
    reti


    reti


    sbc c
    sbc c
    jp hl


    jp hl


    dec h
    inc b
    nop
    ret nz

    ret nz

    nop
    nop
    jr c, jr_005_6a48

    ld c, b
    ld c, b
    ld c, h
    ld c, h
    inc [hl]
    inc [hl]
    dec h
    ld [$e000], sp
    ldh [rNR51], a
    ld b, $90
    dec h
    ld c, $00
    add b
    add b
    nop
    nop
    ld a, b
    ld a, b
    ld c, b
    ld c, b
    ld c, h
    ld c, h
    dec h
    inc b
    ld b, h
    ld c, h
    ld c, h
    ld a, b
    ld a, b
    dec h
    ld b, $00
    ld [hl], h
    ld [hl], h
    ld d, d
    ld d, d
    di
    di
    ld b, e
    ld b, e
    ld a, c
    ld a, c
    dec h
    ld b, $00
    sbc $de
    sub d
    sub d
    dec h
    inc b

jr_005_6a48:
    ld [de], a
    inc e
    inc e
    dec h
    ld b, $00
    dec h
    inc b
    adc c
    ret


    ret


    ld a, c
    ld a, c
    ld bc, $2501
    ld b, $00
    call z, $12cc
    ld [de], a
    ld e, $1e
    db $10
    db $10
    rrca
    rrca
    dec h
    ld b, $00
    inc a
    inc a
    dec h
    ld [$2520], sp
    ld b, $00
    ld a, h
    ld a, h
    add [hl]
    add [hl]
    add d
    add d
    jp nz, Jump_005_7ec2

    ld a, [hl]
    nop
    nop
    inc a
    inc a
    dec h
    inc b
    jr nz, jr_005_6abd

    inc a
    dec h
    ld b, $10
    dec h
    inc b
    nop
    rlca
    rlca
    dec h
    ld a, [bc]
    nop
    add b
    add b
    ld b, b
    ld b, b
    ret nz

    ret nz

    dec h
    ld a, [bc]
    nop
    ld bc, $2501
    ld c, $00
    add b
    add b
    dec h
    stop
    dec h
    inc b
    ld bc, $3939
    dec h
    inc b
    ld hl, $3131
    dec e
    dec e
    nop
    nop
    dec h
    inc b
    ld [bc], a
    nop
    nop
    ldh [$e0], a
    dec h
    ld b, $12
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, d
    dec h

jr_005_6abd:
    inc b
    ld b, c
    ld c, a
    ld c, a
    ld c, c
    ld c, c
    ld c, a
    ld c, a
    ld b, b
    ld b, b
    dec h
    ld b, $00
    ld sp, $2531
    ld b, $21
    ld bc, $2501
    inc b
    nop
    rst $00
    rst $00
    call nz, $25c4
    inc b
    ld b, h
    add h
    add h
    ldh [$e0], a
    dec h
    inc b
    nop
    ret nz

    ret nz

    dec h
    ld [$2540], sp
    inc b
    nop
    ld c, $0e
    ld [hl-], a
    ld [hl-], a
    inc hl
    inc hl
    dec h
    inc b
    ld b, e
    ld h, e
    ld h, e
    ld a, $3e
    dec h
    inc b
    nop
    ld e, $1e
    ld [de], a
    ld [de], a
    dec h
    ld b, $11
    sub c
    sub c
    nop
    nop
    dec h
    inc b
    inc b
    inc a
    inc a
    dec h
    inc b
    inc h
    inc [hl]
    inc [hl]
    inc c
    inc c
    dec h
    ld b, $90
    di
    di
    sub d
    sub d
    sub e
    sub e
    sub d
    sub d
    sub c
    sub c
    dec h
    ld b, $00
    jp $45c3


    ld b, l
    push bc
    push bc
    dec b
    dec b
    and $e6
    dec h
    ld [$1c04], sp
    inc e
    dec h
    inc b
    inc d
    sbc h
    sbc h
    dec h
    ld b, $00
    dec h
    inc b
    inc bc
    dec h
    inc b
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld b, a
    ld b, a
    dec h
    inc b
    ld [hl+], a
    jp nz, Jump_000_00c2

    nop
    add b
    add b
    dec h
    inc b
    nop
    add b
    add b
    dec h
    ld [de], a
    nop
    dec h
    inc b
    ld b, b
    inc a
    inc a
    inc hl
    inc hl
    dec h
    inc b
    jr nz, @+$29

    daa
    dec h
    inc b
    ld hl, $1e1e
    dec h
    ld b, $00
    add hl, sp
    add hl, sp
    ld c, l
    ld c, l
    ld b, l
    ld b, l
    ld l, l
    ld l, l
    dec [hl]
    dec [hl]
    dec h
    inc b
    nop
    jr c, @+$3a

    db $eb
    db $eb
    dec h
    inc b
    ld c, d
    ld c, c
    ld c, c
    add hl, bc
    add hl, bc
    dec h
    ld b, $00
    rst $38
    rst $38
    jr c, jr_005_6bc6

    xor $ee
    ld bc, $e701
    rst $20
    ld h, b
    ld h, b
    dec h
    inc b
    ld d, b
    ld c, l
    ld c, l
    dec h
    ld b, $45
    ld a, b
    ld a, b
    dec h
    inc b
    nop
    pop hl
    pop hl
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld h, d
    ld h, d
    add c
    add c
    ldh a, [$f0]
    ld [$2508], sp
    inc b
    nop
    dec h
    ld b, $08
    ret z

    ret z

    ld c, b
    ld c, b
    dec h
    inc b
    nop
    rst $20
    rst $20
    and l
    and l
    and h
    and h
    db $e4
    db $e4

jr_005_6bc6:
    dec h
    inc b
    inc h
    nop
    nop
    dec h
    inc b
    inc d
    nop
    nop
    dec h
    ld b, $80
    adc b
    adc b
    dec h
    ld b, $90
    rst $38
    rst $38
    sbc c
    sbc c
    sbc e
    sbc e
    sbc [hl]
    sbc [hl]
    sub a
    sub a
    dec h
    nop
    rst $38
    rst $38
    ld hl, $ff00
    add h
    ld bc, $ff00
    adc l
    dec b
    rst $38
    ld c, $00
    rst $38
    add h
    ld [de], a
    rst $38
    inc e
    nop
    rst $38
    add h
    ld d, $00
    rst $38
    add a
    ld a, [de]
    nop
    rst $38
    add l
    ld hl, $0eff
    nop
    rst $38
    add h
    ld h, $ff
    inc e
    nop
    rst $38
    add h
    ld a, [hl+]
    nop
    rst $38
    adc [hl]
    ld l, $ff
    dec c
    nop
    rst $38
    add h
    inc a
    rst $38
    ld hl, $ff00
    adc c
    ld b, b
    rst $38
    ld [hl-], a
    nop
    ld l, $2f
    rst $38
    add h
    ld c, c
    rst $38
    add l
    ld sp, $84ff
    ld c, l
    rst $38
    ld sp, $ff00
    adc a
    ld d, c
    nop
    ld h, b
    ld h, c
    rst $38
    rrca
    nop
    ld h, d
    ld h, e
    rst $38
    inc b
    nop
    ld h, h
    ld h, l
    rst $38
    rla
    nop
    rst $38
    adc c
    ld h, [hl]
    nop
    rst $38
    add [hl]
    ld l, a
    rst $38
    ld hl, $7500
    rst $38
    ld c, $00
    rst $38
    add h
    halt
    rst $38
    add l
    ld a, d
    nop
    rst $38
    adc b
    ld a, a
    rst $38
    inc de
    nop
    add a
    ld h, l
    adc b
    rst $38
    ld [$8900], sp
    rst $38
    dec l
    nop
    rst $38
    nop
    inc de
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, a
    nop
    inc de
    ld a, [hl+]
    nop
    inc de
    ld b, $01
    inc de
    ld b, $00
    inc de
    ld a, [bc]
    add b
    inc de
    ld b, $00
    inc de
    ld [$0201], sp
    ld [bc], a
    inc de
    ld a, [bc]
    nop
    inc de
    ld b, $80
    inc de
    db $10
    ld bc, $8080
    inc de
    inc b
    ld b, b
    jr nz, jr_005_6ce0

    db $10
    db $10
    dec bc
    dec bc
    inc c
    inc c
    inc b
    inc b
    inc de
    ld b, $00
    ccf
    ccf
    ldh [$e0], a
    inc de
    inc c
    nop
    rst $38
    rst $38
    inc de
    ld c, $00
    cp $fe
    inc bc
    inc bc
    inc de
    ld c, $00
    ret nz

    ret nz

jr_005_6ce0:
    ld a, b
    ld a, b
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc de
    inc b
    ld [$1010], sp
    jr nz, jr_005_6d11

    ret nz

    ret nz

    inc de
    ld [de], a
    add b
    ld c, $0e
    add hl, de
    add hl, de
    ld sp, $d131
    pop de
    sub c
    sub c
    inc de
    ld b, $11
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ldh [$e0], a
    and d
    and d
    inc de
    ld b, $12
    inc de

jr_005_6d11:
    inc b
    nop
    jr c, @+$3a

    inc de
    inc b
    ld b, b
    inc a
    inc a
    ld [bc], a
    ld [bc], a
    inc a
    inc a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc de
    ld [$1302], sp
    ld b, $00
    ld bc, $0301
    inc bc
    inc de
    ld b, $02
    ld bc, $1301
    inc b
    nop
    ret nz

    ret nz

    ld h, b
    ld h, b
    inc de
    ld b, $20
    ret nc

    ret nc

    jr jr_005_6d59

    inc h
    inc h
    ld hl, $2021
    jr nz, jr_005_6dc1

    ld a, c
    inc de
    inc b
    ld hl, $2020
    inc de
    ld b, $80
    ldh [$e0], a
    inc de
    ld b, $90
    sub h
    sub h
    adc h

jr_005_6d59:
    adc h
    inc de
    inc b
    adc b
    ld d, b
    ld d, b
    db $10
    db $10
    jr nc, jr_005_6d93

    jr nz, @+$22

    ld hl, $1321
    ld b, $00
    rrca
    rrca
    jr nc, jr_005_6d9e

    ld b, b
    ld b, b
    add b
    add b
    inc de
    ld [$e000], sp
    ldh [rNR23], a
    jr @+$06

    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $1301
    ld [$0100], sp
    ld bc, $0606
    ld [$1008], sp
    db $10
    inc de
    ld [$fc00], sp
    db $fc
    inc bc
    inc bc
    inc de
    inc b

jr_005_6d93:
    nop
    ld b, b
    ld b, b
    ld hl, $2321
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld d, $16

jr_005_6d9e:
    db $10
    db $10
    adc b
    adc b
    ld b, h
    ld b, h
    inc de
    inc b
    add b
    inc de
    inc c
    nop
    ld hl, $6221
    ld h, d
    inc de
    ld b, $42
    inc de
    ld b, $02
    inc de
    ld a, [bc]
    nop
    ld bc, $1301
    inc b
    nop
    ld bc, $1301
    ld c, $00

jr_005_6dc1:
    jr nz, @+$22

    and b
    and b
    inc de
    inc c
    ret nz

    inc de
    ld b, $00
    jr nz, jr_005_6ded

    inc de
    ld [$1300], sp
    inc b
    inc h
    inc d
    inc d
    ld d, $16
    ld [de], a
    ld [de], a
    inc de
    ld b, $10
    inc de
    ld b, $00
    inc de
    inc b
    ld bc, $0202
    inc de
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc e
    inc e
    ldh [$e0], a

jr_005_6ded:
    inc de
    ld a, [bc]
    nop
    inc de
    inc b
    ld bc, $0a13
    nop
    add b
    add b
    inc de
    inc b
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_005_6e31

    rrca
    rrca
    inc de
    inc b
    nop
    inc de
    inc b
    ld bc, $0202
    inc b
    inc b
    jr jr_005_6e27

    ldh [$e0], a
    inc de
    inc b
    nop
    ld b, b
    ld b, b
    inc de
    inc b
    jr nz, jr_005_6e2a

    db $10
    ld [$0608], sp
    ld b, $01
    ld bc, $0c13
    nop
    inc bc
    inc bc
    db $fc

jr_005_6e27:
    db $fc
    nop
    nop

jr_005_6e2a:
    db $10
    db $10
    inc de
    inc b
    jr nz, @+$42

    ld b, b

jr_005_6e31:
    add b
    add b
    inc de
    ld b, $00
    ld b, b
    ld b, b
    jr c, jr_005_6e72

    rlca
    rlca
    inc de
    stop
    inc de
    inc b
    add b
    ld b, b
    ld b, b
    inc de
    inc b
    jr nz, @+$15

    ld b, $08
    inc de
    ld a, [bc]
    db $10
    add b
    add b
    inc de
    ld b, $40
    inc de
    inc b
    jr nz, jr_005_6e66

    db $10
    ld [$1308], sp
    ld c, $00
    rlca
    rlca
    nop
    nop
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a

jr_005_6e66:
    inc b
    inc b
    jr c, jr_005_6ea2

    ret nz

    ret nz

    nop
    nop
    inc de
    ld b, $10
    inc de

jr_005_6e72:
    ld a, [bc]
    ld [$1013], sp
    db $10
    ld b, $06
    inc bc
    inc bc
    inc de
    ld [$1302], sp
    inc b
    inc bc
    inc de
    inc b

jr_005_6e83:
    nop
    ret nz

    ret nz

    ccf
    ccf
    ld b, b
    ld b, b
    ret nz

    ret nz

    inc de
    ld b, $00
    inc bc
    inc bc
    ld a, $3e
    ret nz

    ret nz

    inc de
    ld [$3800], sp
    jr c, jr_005_6e83

    add sp, $48
    ld c, b
    jr z, jr_005_6ec8

    inc de
    inc b

jr_005_6ea2:
    jr jr_005_6eac

    ld [$0000], sp
    inc de
    db $10
    ld [$0e13], sp

jr_005_6eac:
    db $10
    inc e
    inc e
    nop
    nop
    inc de
    inc b
    db $10
    ld [hl+], a
    ld [hl+], a
    inc de
    inc b
    ld b, c
    inc de
    inc b
    add c
    inc de
    inc c
    nop
    ld bc, $0201
    ld [bc], a
    inc de
    ld b, $00
    ld h, b
    ld h, b

jr_005_6ec8:
    jr nc, jr_005_6efa

    db $10
    db $10
    ld [$0408], sp
    inc b
    inc de
    ld a, [bc]
    ld [$0413], sp
    db $10
    ldh [$e0], a
    rlca
    rlca
    inc de
    ld c, $00
    inc de
    inc c
    add c
    add d
    add d
    ld h, d
    ld h, d
    inc de
    inc b
    nop
    add b
    add b
    ret nz

    ret nz

    jr c, jr_005_6f25

    rlca
    rlca
    inc de
    ld c, $00
    ldh [$e0], a
    rra
    rra
    inc de
    ld c, $00
    rst $38

jr_005_6efa:
    rst $38
    jr nz, jr_005_6f1d

    inc de
    ld a, [bc]
    nop
    rrca
    rrca
    ldh a, [$f0]
    nop
    nop
    inc de
    ld b, $02
    ld c, $0e
    ld a, [hl-]
    ld a, [hl-]
    ld [c], a
    ld [c], a
    ld bc, $0001
    nop
    rlca
    rlca
    inc de
    inc c
    ld [bc], a
    add d
    add d
    inc a
    inc a
    inc de

jr_005_6f1d:
    ld d, $00
    inc de
    inc b
    ld bc, $0202
    inc b

jr_005_6f25:
    inc b
    inc de
    ld b, $20
    ld b, b
    ld b, b
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    db $10
    db $10
    jr nc, jr_005_6f65

    db $10
    db $10
    inc de
    inc b
    ld [$0413], sp
    inc b
    ld [c], a
    ld [c], a
    ld [de], a
    ld [de], a
    ld a, h
    ld a, h
    inc de
    ld c, $00
    dec b
    dec b
    ld b, $06
    inc de
    inc c
    nop
    ldh [$e0], a
    inc de
    ld c, $00
    ld [de], a
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc de
    ld [$0100], sp
    ld bc, $0707
    inc de
    inc c
    ld b, $fc

jr_005_6f65:
    db $fc
    inc bc
    inc bc
    ld bc, $1301
    stop
    ret nz

    ret nz

    ld b, b
    ld b, b
    inc de
    inc b
    jr nz, jr_005_6f85

    db $10
    inc de
    inc b
    nop
    inc bc
    inc bc
    inc de
    ld b, $02

jr_005_6f7e:
    inc b
    inc b
    ccf
    ccf
    inc de
    inc b
    nop

jr_005_6f85:
    rst $38
    rst $38
    inc de
    ld [$fc00], sp
    db $fc
    nop
    nop
    inc c
    inc c
    inc [hl]
    inc [hl]
    inc de
    ld [$8242], sp
    add d
    nop
    nop
    ld bc, $c301
    jp $cdcd


    inc de
    ld [$1351], sp
    inc b
    ld b, $13
    ld b, $04
    dec b
    dec b
    inc de
    inc b
    inc b
    inc de
    ld [$7f00], sp
    ld a, a
    rst $38
    rst $38
    inc de
    inc b
    nop
    inc de
    inc b
    db $10
    inc de
    inc b
    jr nz, jr_005_6f7e

    ret nz

    ld a, b
    ld a, b
    inc b
    inc b
    inc bc
    inc bc
    inc de
    ld a, [bc]
    ld [$0404], sp
    inc bc
    inc bc
    inc de
    ld c, $00
    rst $38
    rst $38
    inc de
    ld c, $00
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    inc de
    ld a, [bc]
    add d
    add e
    add e
    ld bc, $1301
    db $10
    ld [bc], a
    inc de
    ld [$1131], sp
    ld de, $0613
    ld bc, $0813
    inc b
    rrca
    rrca
    inc de
    stop
    rst $38
    rst $38
    inc de
    inc b
    nop
    inc de
    ld b, $01
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    db $fc
    db $fc
    inc de
    ld [$4000], sp
    ld b, b
    ld b, h
    ld b, h
    inc de
    ld b, $74
    ld l, h
    ld l, h
    nop
    nop
    ld [$0d08], sp
    dec c
    pop hl
    pop hl
    inc de
    inc b
    and c
    pop bc
    pop bc
    ldh a, [$f0]
    inc de
    inc b
    nop
    ldh [$e0], a
    ld e, $1e
    ld [de], a
    ld [de], a
    ld d, $16
    jr jr_005_7042

    rrca
    rrca
    inc de
    ld b, $00
    rlca
    rlca
    dec c
    dec c
    add hl, bc
    add hl, bc
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ld bc, $0001
    nop
    ld a, c

jr_005_7040:
    ld a, c
    inc de

jr_005_7042:
    inc b
    ld c, c
    ld c, d
    ld c, d
    ld [hl-], a
    ld [hl-], a
    inc de
    ld b, $00
    ld a, c
    ld a, c
    ld c, e
    ld c, e
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    add hl, bc
    add hl, bc
    inc de
    ld b, $00
    ldh [$e0], a
    ld h, b
    ld h, b
    inc de
    inc b
    jr nz, jr_005_7040

    ldh [rNR13], a
    ld b, $00
    inc a
    inc a
    ld h, $26
    ld [hl+], a
    ld [hl+], a
    ld a, $3e
    jr nz, jr_005_708e

    inc de
    inc b
    nop
    ld b, b
    ld b, b
    ld c, a
    ld c, a
    inc de
    ld b, $48
    ld b, a
    ld b, a
    inc de
    ld b, $00
    inc bc

jr_005_707e:
    inc bc
    inc de
    inc b
    add h
    call nz, $e7c4
    rst $20
    inc de
    ld b, $00
    ld e, $1e
    ld [de], a
    ld [de], a
    inc a

jr_005_708e:
    inc a
    db $10
    db $10
    inc c

jr_005_7092:
    inc c
    inc de
    ld b, $00
    jr c, @+$3a

    jr nz, jr_005_70ba

    inc de
    inc b
    jr jr_005_707e

    ldh [rNR13], a
    ld b, $01
    add hl, bc
    add hl, bc
    ld b, $06
    inc de
    ld a, [bc]
    nop
    inc bc
    inc bc
    inc de
    ld a, [bc]
    nop
    inc de
    inc b
    jr nz, jr_005_7092

    ldh [rNR13], a
    ld a, [bc]
    nop
    inc de
    ld [$1320], sp

jr_005_70ba:
    ld [$0100], sp
    ld bc, $0303
    inc de
    inc c
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc de
    ld a, [bc]
    ld [bc], a
    inc de
    ld b, $00
    ld b, $06
    and h
    and h
    and a
    and a
    and b
    and b
    rst $28
    rst $28
    inc de
    inc b
    nop
    inc de
    inc b
    db $10
    jr jr_005_70f9

    db $10
    db $10
    sub b
    sub b
    db $10
    db $10
    inc de
    ld [$1e00], sp
    ld e, $13
    ld b, $12
    nop
    nop
    inc de
    ld b, $01
    rst $38
    rst $38
    adc c
    adc c
    ret


jr_005_70f9:
    ret


    ld a, c
    ld a, c
    inc de
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    inc b
    rlca
    rlca
    rrca
    rrca
    inc de
    ld b, $00
    inc bc
    inc bc
    inc de
    inc b
    ld c, d
    ld e, d
    ld e, d
    ld [hl-], a
    ld [hl-], a
    inc de
    ld b, $00
    ldh [$e0], a
    and c
    and c
    pop bc
    pop bc
    add c
    add c
    pop hl
    pop hl
    inc de
    inc b
    nop
    ld [$0c08], sp
    inc c
    ld a, [hl+]
    ld a, [hl+]
    ld l, d
    ld l, d
    ld [$aaea], a
    xor d
    inc de
    inc b
    nop
    ld c, $0e
    ld l, b
    ld l, b
    add sp, -$18
    xor b
    xor b
    ret z

    ret z

    add sp, -$18
    inc b
    inc b
    inc de
    inc b
    ld [bc], a
    ld a, [c]
    ld a, [c]
    sub d
    sub d
    pop hl
    pop hl
    add c
    add c
    ld [hl], c
    ld [hl], c
    ld [bc], a
    ld [bc], a
    ld c, $0e
    inc de
    inc c
    nop
    inc bc
    inc bc
    ld b, $06
    inc de
    inc a
    nop
    inc de
    nop
    rst $38
    rst $38
    add e
    nop
    rst $38
    inc b
    nop
    inc bc
    inc b
    rst $38
    jr jr_005_716b

jr_005_716b:
    rst $38
    adc b
    dec b
    nop
    rst $38
    add h
    dec c
    rrca
    rst $38
    add e
    ld de, $140f
    rst $38
    ld c, $00
    rst $38
    add a
    dec d
    rst $38
    add hl, de
    nop
    rst $38
    add [hl]
    inc e
    rst $38
    jr jr_005_7187

jr_005_7187:
    rst $38
    adc d
    ld [hl+], a
    rst $38
    ld d, $00
    inc l
    nop
    dec l
    rst $38
    inc bc
    nop
    ld l, $2f
    dec de
    jr nc, @+$01

    ld d, $00
    ld sp, $3200
    inc sp
    ld [$3534], sp
    nop
    nop
    ld [hl], $ff
    ld d, $00
    scf
    jr c, @+$01

    dec b
    nop
    rst $38
    add e
    add hl, sp
    rst $38
    ld d, $00
    rst $38
    add l
    inc a
    rst $38
    add h
    ld b, b
    rst $38
    jr jr_005_71bb

jr_005_71bb:
    ld b, h
    nop
    rst $38
    add e
    ld b, l
    nop
    nop
    ld c, b
    rst $38
    ld a, [de]
    nop
    rst $38
    add e
    ld c, c
    rst $38
    rra
    nop
    rst $38
    add l
    ld c, h
    nop
    ld d, c
    inc bc
    ld d, d
    rst $38
    rla
    nop
    rst $38
    adc c
    ld d, e
    rst $38
    rla
    nop
    rst $38
    add e
    ld e, h
    rst $38
    inc e
    nop
    rst $38
    adc h
    ld e, a
    rst $38
    rla
    nop
    ld l, e
    nop
    rst $38
    add e
    ld l, h
    rst $38
    ld d, $00
    ld l, a
    rst $38
    add e
    ld e, a
    rst $38
    adc e
    ld [hl], b
    rst $38
    ld de, $1e00
    rst $38
    inc bc
    nop
    ld a, e
    rst $38
    add hl, bc
    nop
    ld a, h
    rst $38
    rrca
    nop
    rst $38
    nop
    dec b
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    jr nz, jr_005_723c

jr_005_723c:
    inc b
    inc b
    inc c
    inc c
    jr c, jr_005_727a

    ret nc

    ret nc

    dec b
    ld [$0010], sp
    nop
    dec b
    inc b
    add b
    pop hl
    pop hl
    sub d
    sub d
    sub e
    sub e
    sub d
    sub d
    sub c
    sub c
    dec b
    ld b, $00
    ldh [$e0], a
    jr nz, jr_005_727d

    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld c, $0e
    add hl, bc
    add hl, bc
    rrca
    rrca
    dec b
    ld b, $08
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    dec b
    inc b
    ld [$cfcf], sp
    dec b

jr_005_727a:
    inc b
    ld c, b
    adc a

jr_005_727d:
    adc a
    nop
    nop
    add a
    add a
    add hl, de
    add hl, de
    dec b
    inc b
    db $10
    rra
    rra
    db $10
    db $10
    sub b
    sub b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    or [hl]
    or [hl]
    dec b
    inc b
    xor d
    dec b
    ld b, $a2
    nop
    nop
    dec b
    inc b
    ld [$0d0d], sp
    ld a, [bc]
    ld a, [bc]
    dec b
    ld b, $08
    dec b
    inc b
    nop
    sub b
    sub b
    add a
    add a
    dec b
    ld b, $94
    sub b
    sub b
    dec b
    inc b
    nop
    jr nz, jr_005_72d6

    add b
    add b
    and b
    and b
    and a
    and a
    dec b
    inc b
    and b
    nop
    nop
    rlca
    rlca
    inc c
    inc c
    ld [$0908], sp
    add hl, bc
    ld [$0c08], sp
    inc c
    rlca
    rlca
    dec b
    inc b
    nop
    add b
    add b
    inc c
    inc c

jr_005_72d6:
    dec b
    ld b, $94
    adc d
    adc d
    nop
    nop
    dec b
    ld b, $48
    ld c, c
    ld c, c
    dec b
    ld b, $48
    dec b
    inc b
    nop
    ld [hl], b
    ld [hl], b
    adc c
    adc c
    ld a, [$05fa]
    inc b
    add d
    ld [hl], d
    ld [hl], d
    dec b
    inc b
    nop
    db $10
    db $10
    sub c
    sub c
    dec b
    ld b, $11
    rrca
    rrca
    dec b
    inc b
    ld bc, $0202
    inc a
    inc a
    dec b
    ld [de], a
    nop
    ld bc, $0501
    inc b
    ld [bc], a
    dec b
    inc b
    nop
    db $10
    db $10
    jr nc, @+$32

    ret nz

    ret nz

    dec b
    inc c
    nop
    rrca
    rrca
    dec b
    ld c, $00
    ldh [$e0], a
    ld e, $1e
    ld bc, $0501
    ld c, $00
    ret nz

    ret nz

    dec b
    inc b
    jr nz, jr_005_7333

    db $10
    inc b
    dec b
    ld a, [bc]
    nop

jr_005_7333:
    dec b
    inc b
    ld bc, $0202
    nop
    nop
    inc bc
    inc bc
    inc c
    inc c
    jr nc, jr_005_7370

    ret nz

    ret nz

    dec b
    ld [$ff00], sp
    rst $38
    dec b
    ld c, $00
    ret nz

    ret nz

    dec b
    ld d, $00
    ld a, a
    ld a, a
    dec b
    ld c, $00
    cp $fe
    ld bc, $0001
    nop
    db $10
    db $10
    ld [$0508], sp
    ld [$8000], sp
    add b
    ld bc, $0501
    inc c
    nop
    ld hl, sp-$08
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    inc c

jr_005_7370:
    nop
    ld a, $3e
    dec b
    inc b
    nop
    ld bc, $0601
    ld b, $18
    jr jr_005_7382

    ld b, $00
    ld bc, $3e01

jr_005_7382:
    ld a, $c0
    ret nz

    dec b
    ld a, [bc]
    nop
    add b
    add b
    dec b
    jr jr_005_738d

jr_005_738d:
    rlca
    rlca
    jr jr_005_73a9

    jr nz, @+$22

    ld [bc], a
    ld [bc], a
    dec b
    ld a, [bc]
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    ld bc, $2121
    dec b
    inc b
    ld bc, $0303
    inc b

jr_005_73a9:
    inc b
    ld b, c
    ld b, c
    add b
    add b
    dec b
    inc b
    nop
    ld [$0508], sp
    inc b
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    dec b
    inc b
    ld b, b
    ld b, a
    ld b, a
    dec b
    inc b
    ld b, b
    add b
    add b
    dec b
    ld b, $00
    rrca
    rrca
    ldh a, [$f0]
    dec b
    dec b
    nop
    ld hl, sp+$05
    ld b, $00
    cp $fe
    ld bc, $0501
    ld c, $00
    ret nz

    ret nz

    jr nz, jr_005_73ff

    dec b
    rrca
    nop
    inc c
    nop
    jr nc, jr_005_73e6

jr_005_73e6:
    ret nz

    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    ld [$3008], sp
    jr nc, jr_005_73f7

    inc b
    jr nz, jr_005_73f5

jr_005_73f5:
    nop
    ret nz

jr_005_73f7:
    ret nz

    dec b
    inc bc
    nop
    ld bc, $0200
    nop

jr_005_73ff:
    ld [bc], a
    nop
    inc b
    nop
    ld [$0800], sp
    dec b
    inc c
    nop
    db $10
    db $10
    jr nz, jr_005_742d

    ld hl, sp-$08
    dec b
    ld c, $00
    ld b, c
    ld b, c
    ld a, $3e
    dec b
    ld c, $00
    dec b
    inc b
    ld [bc], a
    dec b
    inc b
    ld bc, $0705
    nop
    rlca
    dec b
    ld [$c000], sp
    ret nz

    jr nz, jr_005_744a

    db $10
    stop

jr_005_742d:
    cp $00
    ld bc, $0f05
    nop
    rst $38
    dec b
    dec c
    nop
    inc bc
    nop
    adc h
    nop
    ld a, b
    nop
    ld c, $00
    add hl, bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec b
    add hl, bc
    nop
    add b

jr_005_744a:
    nop
    ld h, b
    nop
    jr jr_005_744f

jr_005_744f:
    ld b, $05
    dec c
    nop
    ld bc, $0100
    nop
    stop
    db $10
    ld bc, $0221
    ld b, d
    ld [bc], a
    ld b, d
    inc b
    add h
    dec b
    inc b
    ld [$4040], sp
    add b
    add b
    dec b
    ld [de], a
    nop
    dec b
    inc bc
    jr nz, @+$24

    jr nz, jr_005_7494

    jr nz, jr_005_7496

    ld b, b
    ld b, d
    dec b
    dec bc
    nop
    stop
    stop
    stop
    nop
    dec b
    inc b
    ld b, b
    dec b
    ld a, [bc]
    jr nz, jr_005_7497

    db $10
    ld [$0508], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    ld bc, $1005

jr_005_7494:
    nop
    add b

jr_005_7496:
    add b

jr_005_7497:
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    dec b
    add hl, bc
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    stop
    jr nz, jr_005_74b0

jr_005_74b0:
    jr nz, jr_005_74ba

    ld [$0e05], sp
    db $10
    ld b, b
    ld b, d
    ld b, b
    ld b, d

jr_005_74ba:
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    add b
    add d
    add b
    add d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    dec b
    ld [$0520], sp
    ld [$0510], sp
    inc b
    ld b, b
    dec b
    ld b, $20
    dec b
    add hl, bc
    nop
    inc bc
    nop
    inc c
    nop
    jr nc, jr_005_74eb

jr_005_74eb:
    ret nz

    nop
    ld bc, $0100
    nop
    ld bc, $c000
    nop
    ld b, b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    jr nz, jr_005_74ff

jr_005_74ff:
    stop
    dec b
    inc bc
    db $10
    dec b
    ld c, $00
    add b
    add d
    add b
    add d
    add b
    add d
    add b
    add d
    add b
    add d
    add b
    add d
    add b
    add d
    add b
    add d
    dec b
    db $10
    ld [$0200], sp
    nop
    ld [bc], a
    dec b
    dec c
    nop
    db $10
    dec b
    ld c, $00
    add b
    add d
    add b
    add d
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    dec b
    inc b
    ld [$0d05], sp
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    dec b
    rrca
    nop
    inc bc
    dec b
    dec bc
    nop
    inc bc
    nop
    inc a
    nop
    ret nz

    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    ld a, b
    nop
    add b
    dec b
    dec b
    nop
    stop
    stop
    stop
    stop
    ld [$0400], sp
    nop
    ld [bc], a
    nop
    ld bc, $0c00
    dec b
    rrca
    nop
    add b
    nop
    ld h, b
    nop
    stop
    ld [$0400], sp
    nop
    ld [bc], a
    nop
    ld bc, $7f05
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    ld a, a
    nop
    dec b
    daa
    nop
    dec b
    nop
    rst $38
    rst $38
    ld [hl+], a
    nop
    rst $38
    adc a
    ld bc, $1fff
    nop
    db $10
    rst $38
    rla
    nop
    ld de, $ff12
    dec de
    nop
    rst $38
    adc b
    inc de
    rst $38
    jr jr_005_75b3

jr_005_75b3:
    rst $38
    adc b
    dec de
    rst $38
    add hl, de
    nop
    rst $38
    adc b
    inc hl
    nop
    dec hl
    rst $38
    dec d
    nop
    rst $38
    adc e
    inc l
    rst $38
    dec d
    nop
    rst $38
    adc b
    scf
    nop
    ccf
    rst $38
    ld d, $00
    ld b, b
    ld b, c
    nop
    rst $38
    add e
    ld b, d
    nop
    ld b, l
    rst $38
    rla
    nop
    rst $38
    add e
    ld b, [hl]
    nop
    ld c, c
    ld b, e
    ld c, d
    rst $38
    add hl, de
    nop
    ld c, e
    ld c, h
    nop
    nop
    ld c, l
    ld b, e
    ld c, [hl]
    rst $38
    dec e
    nop
    ld c, a
    ld b, e
    rst $38
    ld e, $00
    ld c, a
    ld b, e
    rst $38
    inc e
    nop
    rst $38
    add h
    ld d, b
    rst $38
    inc e
    nop
    ld d, h
    rst $38
    inc bc
    nop
    ld d, l
    rst $38
    ld d, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_005_7ec2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
