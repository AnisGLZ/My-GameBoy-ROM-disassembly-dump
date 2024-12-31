; Disassembly of "4-in-1 Funpak - Volume II (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    xor a
    ld [$c3c1], a
    ld [$c3c2], a
    ld [$c3ae], a

Jump_002_400a:
    call Call_000_00bd
    xor a
    ld [$c346], a
    ld [$c3b0], a
    ld b, $03
    ld de, $c3c0
    ld hl, $c3bd

jr_002_401c:
    ld [de], a
    dec de
    ld [hl-], a
    dec b
    jr nz, jr_002_401c

    call Call_002_406b
    ld a, $02
    call Call_000_05e0
    call Call_002_524e
    ld a, $91
    ldh [rLCDC], a
    call Call_000_151b
    call Call_002_5420
    call Call_000_1521

Jump_002_403a:
    call Call_000_00bd
    ld a, $22
    call Call_000_05e0
    call Call_002_43a5
    call Call_002_43d9
    call Call_002_4e12
    xor a
    ld [$c3ba], a
    ld [$c3b0], a
    ld [$c3b2], a
    call Call_002_4afb
    xor a
    call Call_002_4e50
    call Call_002_4bc2
    call Call_002_4c1d
    ld a, [$c338]
    and a
    jp nz, Jump_002_41bd

    jr jr_002_409f

Call_002_406b:
    ld a, [$c338]
    and a
    jr nz, jr_002_4077

    ld c, $52
    call Call_000_0cf0
    ret


jr_002_4077:
    ld hl, $c3b0
    ld [hl], $01
    ld c, $26
    call Call_000_0cf0
    ld [hl], $00
    ld c, $26
    call Call_000_0cf0
    ret


Call_002_4089:
    call Call_002_53e1
    ld hl, $c311
    ld a, [$c338]
    and $02
    jr z, jr_002_409d

    ld a, [$c3b0]
    and a
    jr z, jr_002_409d

    inc hl

jr_002_409d:
    ld a, [hl]
    ret


jr_002_409f:
    ld c, $52
    call Call_000_0d07
    ld a, $93
    ldh [rLCDC], a
    call Call_000_151b
    ld a, [$c346]
    and a
    jr nz, jr_002_40b8

    inc a
    ld [$c346], a
    call Call_002_5288

jr_002_40b8:
    ld b, $01
    ld a, [$c3c1]
    and a
    jr z, jr_002_40c2

    ld b, $03

jr_002_40c2:
    ld a, b
    ld [$c3c3], a

jr_002_40c6:
    rst $10
    call Call_002_410b
    jr z, jr_002_4123

    call Call_002_4089
    cp $08
    jr z, jr_002_40e4

    cp $04
    jr z, jr_002_40f5

    cp $02
    jr z, jr_002_40f5

    cp $01
    jr nz, jr_002_40e9

    call Call_002_40fa
    jr jr_002_40c6

jr_002_40e4:
    call Call_002_5102
    jr jr_002_40c6

jr_002_40e9:
    ld de, $c3b4
    call Call_002_4f5f

jr_002_40ef:
    xor a
    call Call_002_4e50
    jr jr_002_40c6

jr_002_40f5:
    call Call_002_4382
    jr jr_002_40ef

Call_002_40fa:
    ld a, [$c3b4]
    ld [$c3b7], a
    call Call_002_4fe6
    ld hl, $5505
    rst $18
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_002_410b:
    ld a, [$c430]
    cp $0d
    ret nz

    ld a, [$c43f]
    cp $0d
    ret nz

    ld a, [$c44e]
    cp $0d
    ret nz

    ld a, [$c45d]
    cp $0d
    ret


jr_002_4123:
    ld hl, $419b
    ld a, $80
    call Call_000_081b
    call Call_000_08a0
    call Call_000_0974
    xor a
    ld [$c3ba], a
    ld hl, $41a3
    ld a, $00
    call Call_000_081b
    call Call_000_08a0
    call Call_000_1521
    call Call_000_0974
    call Call_002_524e
    ld a, [$c33a]
    rst $00
    ld a, [hl-]
    ld b, b
    ld a, [bc]
    ld b, b
    ld d, h
    ld b, c
    pop hl
    ret


    ld hl, $4193
    call Call_000_0876
    ld hl, $4197
    call Call_000_0876
    ret


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
    inc l
    nop
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$59

    ld c, c
    ld c, [hl]
    ld l, $00
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    jr nz, jr_002_41d6

    ld l, h
    ld h, c
    ld a, c
    nop
    ld c, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_002_41d6

    ld h, c
    ld l, l
    ld h, l
    nop
    ld hl, $6200
    ld b, c
    ld b, l
    nop
    ld [hl], e
    ld b, c
    nop
    nop
    add c
    sbc b
    db $10
    ld [bc], a
    ld d, l
    ld b, c
    inc bc
    nop
    add d
    sbc b
    ld c, $05
    ld h, c
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld [hl+], a
    nop
    ld a, h
    ld b, c
    ld h, d
    nop
    adc d
    ld b, c
    and d
    nop
    pop bc
    ld d, c

Jump_002_41bd:
    ld hl, $c3b0
    ld [hl], $01
    ld c, $26
    call Call_000_0d07
    ld [hl], $00
    ld c, $26
    call Call_000_0d07
    ld a, $41
    ld de, $9880
    call Call_002_4ad1

jr_002_41d6:
    ld a, $93
    ldh [rLCDC], a
    call Call_000_151b
    ld a, [$c346]
    and a
    jr nz, jr_002_41ea

    inc a
    ld [$c346], a
    call Call_002_537a

jr_002_41ea:
    call Call_002_4382
    rst $10
    ld a, [$c3b0]
    add $42
    ld de, $988f
    call Call_002_4ad1

jr_002_41f9:
    rst $10
    ld a, [$c3c4]
    ld de, $9861
    call Call_002_542b
    ld a, [$c3fa]
    ld de, $9871
    call Call_002_542b
    ld hl, $c3c4
    call Call_002_4234
    jr z, jr_002_425e

    ld hl, $c3fa
    call Call_002_4234
    jr z, jr_002_425e

    call Call_002_4089
    cp $08
    jr z, jr_002_4237

    cp $04
    jr z, jr_002_4248

    cp $02
    jr z, jr_002_4248

    cp $01
    jr nz, jr_002_423c

    call Call_002_424d

jr_002_4232:
    jr jr_002_41f9

Call_002_4234:
    ld a, [hl]
    and a
    ret


jr_002_4237:
    call Call_002_5102
    jr jr_002_4232

jr_002_423c:
    ld de, $c3b4
    call Call_002_5077

jr_002_4242:
    xor a
    call Call_002_4e50
    jr jr_002_4232

jr_002_4248:
    call Call_002_4382
    jr jr_002_4242

Call_002_424d:
    ld a, [$c3b4]
    ld [$c3b7], a
    call Call_002_4fe6
    ld hl, $5505
    rst $18
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_002_425e:
    ld hl, $435e
    ld a, [$c338]
    and $02
    jr z, jr_002_426b

    ld hl, $4366

jr_002_426b:
    ld a, $80
    call Call_000_081b
    xor a
    ld [$c3b0], a
    call Call_000_08a0
    call Call_000_0974
    ld hl, $436e
    ld a, $00
    call Call_000_081b
    call Call_000_08a0
    call Call_000_1521
    call Call_000_0974
    ld a, [$c33a]
    rst $00
    ld a, [bc]
    ld b, b
    sub h
    ld b, d
    pop hl
    ret


    ld hl, $433a
    call Call_000_0876
    ld hl, $433e
    call Call_000_0876
    ld hl, $4342
    ld a, [$c3b0]
    add a
    add a
    add l
    ld l, a
    jr nc, jr_002_42ae

    inc h

jr_002_42ae:
    call Call_000_0876
    ret


    ld hl, $434a
    ld b, $00
    ld a, [$c303]
    cp $02
    jr z, jr_002_42c0

    ld b, $04

jr_002_42c0:
    ld a, [$c3b0]
    and a
    jr z, jr_002_42ca

    ld a, b
    xor $04
    ld b, a

jr_002_42ca:
    ld a, b
    push af
    add l
    ld l, a
    jr nc, jr_002_42d1

    inc h

jr_002_42d1:
    call Call_000_0876
    ld hl, $4352
    pop af
    add l
    ld l, a
    jr nc, jr_002_42dd

    inc h

jr_002_42dd:
    call Call_000_0876
    ret


    ld hl, $435a
    call Call_000_0876
    ret


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
    inc l
    nop
    ld d, b
    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, jr_002_4324

    inc l
    jr nz, jr_002_435d

    ld c, a
    ld d, l
    jr nz, jr_002_435f

    ld c, c
    ld c, [hl]
    ld l, $00
    ld d, e
    ld c, a
    ld d, d
    ld d, d
    ld e, c
    inc l
    nop
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_002_436f

    ld c, c
    ld c, [hl]
    ld l, $00
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_002_436d

    ld c, a
    ld d, e
    ld b, l

jr_002_4324:
    ld l, $00
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_002_436d

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ccf
    nop
    ld e, c
    ld h, l
    ld [hl], e
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_002_433a

jr_002_433a:
    ld [hl+], a
    nop
    add sp, $42
    ld b, c
    nop
    ld sp, hl
    ld b, d
    ld b, c
    nop
    dec a
    ld b, a
    ld b, c
    nop
    ld b, [hl]
    ld b, a
    ld [hl+], a
    nop
    add sp, $42
    daa
    nop
    inc c
    ld b, e
    ld b, [hl]
    nop
    inc de
    ld b, e
    ld b, [hl]
    nop
    inc e
    ld b, e
    ld hl, $2600

jr_002_435d:
    ld b, e
    nop

jr_002_435f:
    nop
    add b
    sbc b
    ld [de], a
    ld [bc], a
    sub l
    ld b, d
    nop
    nop
    add b
    sbc b
    ld [de], a
    ld [bc], a
    or d

jr_002_436d:
    ld b, d
    ld [bc], a

jr_002_436f:
    nop
    add e
    sbc b
    dec bc
    dec b
    pop hl
    ld b, d
    sub e
    ld b, d
    sub e
    ld b, d
    ld h, l
    nop
    ld [hl-], a
    ld b, e
    and l
    nop
    ld [hl], $43

Call_002_4382:
    ld a, [$c338]
    and a
    jr z, jr_002_439a

    ld a, [$c3b0]
    and a
    jr z, jr_002_439a

    ld a, $0e
    ld [$c3b4], a
    ld de, $c3b5
    call Call_002_4f41
    ret


jr_002_439a:
    xor a
    ld [$c3b4], a
    ld de, $c3b5
    call Call_002_4f41
    ret


Call_002_43a5:
    xor a
    ld hl, $c659
    ld b, $34

jr_002_43ab:
    ld [hl+], a
    dec b
    jr nz, jr_002_43ab

    ld hl, $c3c6
    ld b, $34

jr_002_43b4:
    push hl
    ld a, b
    call Call_000_14ae
    ld c, a
    inc c
    ld hl, $c658
    ld e, $ff

jr_002_43c0:
    inc e
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_002_43c0

    dec c
    jr nz, jr_002_43c0

    inc [hl]
    pop hl
    ld a, e
    ld [hl+], a
    dec b
    jr nz, jr_002_43b4

    ld hl, $c3c4
    ld a, $34
    ld [hl+], a
    ld [hl], $00
    ret


Call_002_43d9:
    xor a
    ld [$c430], a
    ld [$c43f], a
    ld [$c44e], a
    ld [$c45d], a
    ld [$c46c], a
    ld [$c482], a
    ld [$c498], a
    ld [$c4ae], a
    ld [$c4c4], a
    ld [$c4da], a
    ld [$c4f0], a
    ld [$c3fa], a
    ld a, [$c338]
    and a
    jr z, jr_002_443b

    ld b, $04
    ld de, $c46c

jr_002_4409:
    xor a
    inc de
    ld [de], a
    dec de
    push bc
    push de
    ld hl, $c3c4
    call Call_002_4cee
    pop de
    pop bc
    ld hl, $0016
    add hl, de
    push hl
    pop de
    dec b
    jr nz, jr_002_4409

    ld b, $18

jr_002_4422:
    push bc
    ld hl, $c3c5
    xor a
    ld [hl-], a
    ld de, $c3fa
    call Call_002_4d3f
    pop bc
    dec b
    jr nz, jr_002_4422

    ld a, $40
    ld [$c3c5], a
    ld [$c3fb], a
    ret


jr_002_443b:
    ld b, $01
    ld de, $c46c

jr_002_4440:
    push bc
    push de
    ld a, b
    dec a
    inc de
    ld [de], a
    dec de

jr_002_4447:
    push bc
    push de
    ld hl, $c3c5
    xor a
    ld [hl-], a
    call Call_002_4cee
    pop de
    pop bc
    call Call_002_446d
    inc b
    ld a, b
    cp $08
    jr nz, jr_002_4447

    pop de
    pop bc
    call Call_002_446d
    inc b
    ld a, b
    cp $08
    jr nz, jr_002_4440

    ld hl, $c3c5
    ld [hl], $40
    ret


Call_002_446d:
    ld hl, $0016
    add hl, de
    ld e, l
    ld d, h
    ret


    ld hl, $c3c4
    ld a, [$c338]
    and a
    jr z, jr_002_4491

    ld hl, $c3c5
    ld a, [hl-]
    cp $40
    jr z, jr_002_448b

    ld a, [$c3b2]
    cp [hl]
    jr z, jr_002_44ed

jr_002_448b:
    ld a, [$c3b0]
    and a
    jr nz, jr_002_44ed

jr_002_4491:
    ld a, [hl+]
    and a
    jr z, jr_002_44ed

    ld a, [hl-]
    and $80
    jr z, jr_002_44a6

    ld a, [$c3c2]
    and a
    jr z, jr_002_44a6

    ld a, [$c3c3]
    and a
    jr z, jr_002_44ed

jr_002_44a6:
    call Call_002_5269
    ld a, [hl]
    ld [$c3b2], a
    ld a, [$c3c1]
    and a
    jr z, jr_002_44cf

    call Call_002_4963
    ld a, [$c3c5]
    bit 6, a
    jr nz, jr_002_44d2

    bit 7, a
    jr nz, jr_002_44d2

    call Call_002_4963
    ld a, [$c3c5]
    bit 6, a
    jr nz, jr_002_44d2

    bit 7, a
    jr nz, jr_002_44d2

jr_002_44cf:
    call Call_002_4963

jr_002_44d2:
    ld hl, $c3c5
    ld a, [hl]
    and $80
    jr z, jr_002_44e4

    ld a, [$c3c2]
    and a
    jr z, jr_002_44e4

    ld hl, $c3c3
    dec [hl]

jr_002_44e4:
    call Call_002_4afb
    ld a, $02
    call Call_002_53cc
    ret


jr_002_44ed:
    ld a, $01
    call Call_002_53cc
    ret


    ld a, [$c338]
    and a
    jr z, jr_002_4500

    ld a, [$c3b0]
    and a
    jp nz, Jump_002_45d7

jr_002_4500:
    ld hl, $c3c4
    ld a, [hl+]
    and a
    jp z, Jump_002_45d7

    ld a, [hl]
    cp $40
    jp z, Jump_002_45d7

    ld a, $02
    call Call_002_53cc

jr_002_4513:
    rst $10
    call Call_002_4089
    cp $08
    jr z, jr_002_4531

    cp $01
    jr z, jr_002_4536

    cp $02
    jp z, Jump_002_45c6

    ld de, $c3b7
    call Call_002_4fec

jr_002_452a:
    or $01
    call Call_002_4e50
    jr jr_002_4513

jr_002_4531:
    call Call_002_4382
    jr jr_002_452a

jr_002_4536:
    ld a, [$c3b7]
    ld b, a
    ld a, [$c3b4]
    cp b
    jr z, jr_002_4592

    ld a, b
    call Call_002_4951
    ld a, b
    call Call_002_4fe6
    cp $04
    jr z, jr_002_45a3

    cp $0a
    jr z, jr_002_4570

    ld hl, $c3c5
    push de
    call Call_002_49d8
    pop de
    jr nz, jr_002_45d7

    call Call_002_5269
    ld hl, $c3c4
    call Call_002_4cee
    call Call_002_4afb
    call Call_002_4c1d
    ld a, $03
    call Call_002_53cc
    jr jr_002_45c6

jr_002_4570:
    push de
    ld hl, $c3c4
    call Call_002_4a1e
    pop de
    jr nz, jr_002_45d7

    call Call_002_5269
    ld hl, $c3c4
    call Call_002_4d3f
    call Call_002_4afb
    ld a, $03
    call Call_002_53cc
    ld c, $05
    call Call_000_0cf0
    jr jr_002_45c6

jr_002_4592:
    ld hl, $c3c5
    ld a, [hl+]
    and $3f
    rst $18
    ld a, [hl]
    cp $04
    jr c, jr_002_45de

    call Call_002_499f
    jr nz, jr_002_45d7

jr_002_45a3:
    ld hl, $c3c5
    push de
    call Call_002_49be
    pop de
    jr nz, jr_002_45d7

jr_002_45ad:
    call Call_002_5269
    ld hl, $c3c4
    call Call_002_4cee
    call Call_002_4afb
    call Call_002_4bc2
    ld a, $03
    call Call_002_53cc
    ld c, $05
    call Call_000_0cf0

Jump_002_45c6:
jr_002_45c6:
    ld a, [$c3b7]
    ld [$c3b4], a
    ld de, $c3b5
    call Call_002_4f41
    xor a
    call Call_002_4e50
    ret


Jump_002_45d7:
jr_002_45d7:
    ld a, $01
    call Call_002_53cc
    jr jr_002_45c6

jr_002_45de:
    call Call_002_498c
    jr jr_002_45ad

    ld hl, $c3fb
    ld a, [hl-]
    cp $40
    jr z, jr_002_45f1

    ld a, [$c3b2]
    cp [hl]
    jr z, jr_002_460e

jr_002_45f1:
    ld a, [$c3b0]
    and a
    jr z, jr_002_460e

    ld a, [hl]
    and a
    jr z, jr_002_460e

    call Call_002_5269
    ld a, [hl]
    ld [$c3b2], a
    call Call_002_4963
    call Call_002_4afb
    ld a, $02
    call Call_002_53cc
    ret


jr_002_460e:
    ld a, $01
    call Call_002_53cc
    ret


    ld a, [$c338]
    and a
    jr z, jr_002_4621

    ld a, [$c3b0]
    and a
    jp z, Jump_002_46f0

jr_002_4621:
    ld hl, $c3fa
    ld a, [hl+]
    and a
    jp z, Jump_002_46f0

    ld a, [hl]
    cp $40
    jp z, Jump_002_46f0

    ld a, $02
    call Call_002_53cc

jr_002_4634:
    rst $10
    call Call_002_4089
    cp $08
    jr z, jr_002_4652

    cp $01
    jr z, jr_002_4657

    cp $02
    jp z, Jump_002_46df

    ld de, $c3b7
    call Call_002_4fec

jr_002_464b:
    or $01
    call Call_002_4e50
    jr jr_002_4634

jr_002_4652:
    call Call_002_4382
    jr jr_002_464b

jr_002_4657:
    ld a, [$c3b7]
    ld b, a
    ld a, [$c3b4]
    cp b
    jr z, jr_002_46b0

    ld a, b
    call Call_002_4951
    ld a, b
    call Call_002_4fe6
    cp $04
    jr z, jr_002_46c1

    cp $02
    jr z, jr_002_4693

    jr jr_002_4673

jr_002_4673:
    ld hl, $c3fb
    push de
    call Call_002_49d8
    pop de
    jr nz, jr_002_46f0

    call Call_002_5269
    ld hl, $c3fa
    call Call_002_4cee
    call Call_002_4afb
    call Call_002_4c1d
    ld a, $03
    call Call_002_53cc
    jr jr_002_46df

jr_002_4693:
    push de
    ld hl, $c3fa
    call Call_002_4a1e
    pop de
    jr nz, jr_002_46f0

    call Call_002_5269
    ld hl, $c3fa
    call Call_002_4d3f
    call Call_002_4afb
    ld c, $05
    call Call_000_0cf0
    jr jr_002_46df

jr_002_46b0:
    ld hl, $c3fb
    ld a, [hl+]
    and $3f
    rst $18
    ld a, [hl]
    cp $04
    jr c, jr_002_46f7

    call Call_002_499f
    jr nz, jr_002_46f0

jr_002_46c1:
    ld hl, $c3fb
    push de
    call Call_002_49be
    pop de
    jr nz, jr_002_46f0

jr_002_46cb:
    call Call_002_5269
    ld hl, $c3fa
    call Call_002_4cee
    call Call_002_4afb
    call Call_002_4bc2
    ld c, $05
    call Call_000_0cf0

Jump_002_46df:
jr_002_46df:
    ld a, [$c3b7]
    ld [$c3b4], a
    ld de, $c3b5
    call Call_002_4f41
    xor a
    call Call_002_4e50
    ret


Jump_002_46f0:
jr_002_46f0:
    ld a, $01
    call Call_002_53cc
    jr jr_002_46df

jr_002_46f7:
    call Call_002_498c
    jr jr_002_46cb

    ld a, [$c3b0]
    xor $01
    ld [$c3b0], a
    ld hl, $4761
    ld a, $c0
    call Call_000_081b
    call Call_000_08a0
    call Call_000_0974
    ld a, [$c3b0]
    add $42
    ld de, $988f
    call Call_002_4ad1
    xor a
    ld [$c3ba], a
    ld [$c3b2], a
    call Call_002_4382
    ret


    ld a, $02
    ld hl, $4755
    call Call_002_4736
    ld a, [$c3b0]
    ld hl, $4755

Call_002_4736:
    add a
    add a
    rst $18
    call Call_000_0876
    ret


    ld d, b
    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, @+$33

    nop
    ld d, b
    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, jr_002_4780

    nop
    ld d, d
    ld b, l
    ld b, c
    ld b, h
    ld e, c
    nop
    ld hl, $3d00
    ld b, a
    ld hl, $4600
    ld b, a
    ld a, [hl+]
    nop
    ld c, a
    ld b, a
    nop
    nop
    add d
    sbc b
    ld c, $01
    jr z, @+$49

    ld a, [$c3b4]
    ld b, a
    call Call_002_494c
    ld a, [hl]
    cp $02
    jr c, jr_002_47ef

    ld a, $02
    call Call_002_53cc

jr_002_477a:
    rst $10
    call Call_002_4089
    cp $04

jr_002_4780:
    jr z, jr_002_4797

    cp $02
    jr z, jr_002_47de

    cp $01
    jr z, jr_002_479c

    ld de, $c3b7
    call Call_002_4fec

jr_002_4790:
    or $01
    call Call_002_4e50
    jr jr_002_477a

jr_002_4797:
    call Call_002_4382
    jr jr_002_4790

jr_002_479c:
    ld a, [$c3b7]
    ld b, a
    call Call_002_4951
    ld a, [$c3b4]
    call Call_002_494c
    push hl
    ld a, b
    call Call_002_4fe6
    pop hl
    cp $02
    jr z, jr_002_47f6

    cp $0a
    jp z, Jump_002_4828

    cp $06
    jr nz, jr_002_47ef

    push hl
    push de
    ld a, [hl+]
    call Call_002_4a73
    pop de
    pop hl
    jr nz, jr_002_47ef

    ld a, [hl]
    dec a
    call Call_002_5269
    call Call_002_4deb
    call Call_002_4bc2
    call Call_002_4c1d
    ld a, $03
    call Call_002_53cc
    ld c, $05
    call Call_000_0d07

jr_002_47de:
    ld a, [$c3b7]
    ld [$c3b4], a
    ld de, $c3b5
    call Call_002_4f41
    xor a
    call Call_002_4e50
    ret


jr_002_47ef:
    ld a, $01
    call Call_002_53cc
    jr jr_002_47de

jr_002_47f6:
    ld a, [$c338]
    and a
    jr z, jr_002_47ef

    ld a, [$c3b0]
    and a
    jr z, jr_002_47ef

jr_002_4802:
    push de
    push hl
    ld a, [hl+]
    dec a
    inc hl
    call Call_002_4a5a
    pop hl
    pop de
    jr nz, jr_002_47ef

    call Call_002_5269
    ld a, [hl]
    dec a
    call Call_002_4dbe
    call Call_002_4afb
    call Call_002_4bc2
    ld a, $03
    call Call_002_53cc
    ld c, $05
    call Call_000_0cf0
    jr jr_002_47de

Jump_002_4828:
    ld a, [$c338]
    and a
    jr z, jr_002_47ef

    ld a, [$c3b0]
    and a
    jr nz, jr_002_47de

    jr jr_002_4802

    call Call_002_4949
    ld a, [hl]
    and a
    jp z, Jump_002_48fa

    ld a, $02
    call Call_002_53cc

jr_002_4843:
    rst $10
    call Call_002_4089
    cp $04
    jr z, jr_002_485f

    cp $02
    ret z

    cp $01
    jr z, jr_002_4864

    ld de, $c3b7
    call Call_002_4fec

jr_002_4858:
    or $01
    call Call_002_4e50
    jr jr_002_4843

jr_002_485f:
    call Call_002_4382
    jr jr_002_4858

jr_002_4864:
    ld a, [$c3b7]
    ld b, a
    ld a, [$c3b4]
    cp b
    jr z, jr_002_4892

    ld a, b
    call Call_002_4951
    ld a, b
    call Call_002_4fe6
    cp $00
    jr z, jr_002_48e9

    cp $08
    jr z, jr_002_48e9

    cp $02
    jr z, jr_002_4901

    cp $0a
    jp z, Jump_002_493b

    cp $06
    jr z, jr_002_48d5

    call Call_002_495a
    jr nz, jr_002_48fa

    jr jr_002_48a8

jr_002_4892:
    call Call_002_495a
    jr nz, jr_002_48fa

    inc hl
    rst $18
    ld a, [hl]
    cp $04
    jr nc, jr_002_48a3

    call Call_002_498c
    jr jr_002_48b7

jr_002_48a3:
    call Call_002_499f
    jr nz, jr_002_48fa

jr_002_48a8:
    call Call_002_4949
    push de
    inc hl
    inc hl
    ld a, [$c3b5]
    call Call_002_4a5c
    pop de
    jr nz, jr_002_48fa

jr_002_48b7:
    call Call_002_5269
    ld c, $05
    call Call_000_0cf0

jr_002_48bf:
    call Call_002_4949
    ld a, [$c3b5]
    call Call_002_4deb
    call Call_002_4bc2
    call Call_002_4c1d
    ld a, $03
    call Call_002_53cc
    jr jr_002_48e9

jr_002_48d5:
    call Call_002_4949
    push de
    inc hl
    inc hl
    ld a, [$c3b5]
    call Call_002_4a73
    pop de
    jr nz, jr_002_48fa

    call Call_002_5269
    jr jr_002_48bf

jr_002_48e9:
    ld a, [$c3b7]
    ld [$c3b4], a
    ld de, $c3b5
    call Call_002_4f41
    xor a
    call Call_002_4e50
    ret


Jump_002_48fa:
jr_002_48fa:
    ld a, $01
    call Call_002_53cc
    jr jr_002_48e9

jr_002_4901:
    ld a, [$c338]
    and a
    jr z, jr_002_48fa

    ld a, [$c3b0]
    and a
    jr z, jr_002_48fa

jr_002_490d:
    call Call_002_495a
    jr nz, jr_002_48fa

    push de
    push hl
    inc hl
    inc hl
    ld a, [$c3b5]
    call Call_002_4a5a
    pop hl
    pop de
    jr nz, jr_002_48fa

    call Call_002_5269
    ld a, [$c3b5]
    call Call_002_4dbe
    call Call_002_4afb
    call Call_002_4c1d
    ld a, $03
    call Call_002_53cc
    ld c, $05
    call Call_000_0cf0
    jr jr_002_48e9

Jump_002_493b:
    ld a, [$c338]
    and a
    jr z, jr_002_48fa

    ld a, [$c3b0]
    and a
    jr nz, jr_002_48fa

    jr jr_002_490d

Call_002_4949:
    ld a, [$c3b4]

Call_002_494c:
    ld hl, $5513
    rst $08
    ret


Call_002_4951:
    add a
    ld hl, $5513
    rst $18
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ret


Call_002_495a:
    call Call_002_4949
    ld a, [$c3b5]
    inc a
    cp [hl]
    ret


Call_002_4963:
    push hl
    ld a, [hl+]
    and a
    jr z, jr_002_498a

    ld b, a
    dec b
    ld a, [hl]
    bit 6, a
    jr nz, jr_002_497e

    bit 7, a
    jr nz, jr_002_497a

    inc a
    cp b
    jr nc, jr_002_4987

    ld [hl], a
    jr jr_002_498a

jr_002_497a:
    ld [hl], $40
    jr jr_002_498a

jr_002_497e:
    and $3f
    ld [hl], a
    ld c, a
    ld a, b
    and a
    jr nz, jr_002_498a

    ld a, c

jr_002_4987:
    or $80
    ld [hl], a

jr_002_498a:
    pop hl
    ret


Call_002_498c:
    ld b, $04
    ld de, $c430

jr_002_4991:
    ld a, [de]
    and a
    ret z

    ld hl, $000f
    add hl, de
    push hl
    pop de
    dec b
    jr nz, jr_002_4991

    inc b
    ret


Call_002_499f:
    and $03
    ld c, a
    ld hl, $c430
    ld b, $04

jr_002_49a7:
    push hl
    ld a, [hl+]
    and a
    jr z, jr_002_49b5

    inc hl
    ld a, [hl]
    and $03
    cp c
    jr nz, jr_002_49b5

    pop de
    ret


jr_002_49b5:
    pop hl
    ld a, $0f
    rst $18
    dec b
    jr nz, jr_002_49a7

    inc b
    ret


Call_002_49be:
    ld a, [hl+]
    and $3f
    rst $18
    ld a, [hl]
    srl a
    srl a
    ld c, a
    ld a, [de]
    cp c
    ret nz

    and a
    ret z

    inc de
    inc de
    ld a, [de]
    and $03
    ld c, a
    ld a, [hl]
    and $03
    cp c
    ret


Call_002_49d8:
    ld a, [de]
    and a
    jr z, jr_002_4a08

    ld a, [hl+]
    and $3f
    rst $18
    ld a, [hl]
    srl a
    srl a
    jr z, jr_002_4a05

    ld b, a
    ld a, [hl]
    and $02
    xor $02
    ld c, a
    push de
    ld e, l
    ld d, h
    pop hl
    ld a, [hl+]
    inc hl
    dec a
    rst $18
    ld a, [hl]
    srl a
    srl a
    dec a
    cp b
    jr nz, jr_002_4a05

    ld a, [hl]
    and $02
    cp c
    jr z, jr_002_4a1c

jr_002_4a05:
    or $01
    ret


jr_002_4a08:
    ld a, [hl+]
    and $3f
    rst $18
    ld a, [hl]
    cp $04
    jr c, jr_002_4a05

    ld a, [$c338]
    and a
    jr nz, jr_002_4a1c

    ld a, [hl]
    cp $30
    jr c, jr_002_4a05

jr_002_4a1c:
    xor a
    ret


Call_002_4a1e:
    ld a, [hl+]
    and a
    jr z, jr_002_4a55

    ld a, [hl+]
    and $3f

jr_002_4a25:
    rst $18
    ld b, [hl]
    push de
    ld e, l
    ld d, h
    pop hl
    inc hl
    ld a, [hl+]
    cp $40
    jr z, jr_002_4a55

    and $3f
    rst $18
    ld c, [hl]
    ld a, b
    and $3c
    ld d, a
    ld a, c
    and $3c
    ld e, a
    cp d
    jr z, jr_002_4a58

    ld a, b
    and $03
    ld l, a
    ld a, c
    and $03
    cp l
    jr nz, jr_002_4a55

    ld a, d
    sub $04
    cp e
    jr z, jr_002_4a58

    add $08
    cp e
    jr z, jr_002_4a58

jr_002_4a55:
    or $01
    ret


jr_002_4a58:
    xor a
    ret


Call_002_4a5a:
    jr jr_002_4a25

Call_002_4a5c:
    rst $18
    ld a, [hl]
    srl a
    srl a
    ld c, a
    ld a, [de]
    cp c
    ret nz

    and a
    ret z

    inc de
    inc de
    ld a, [de]
    and $03
    ld c, a
    ld a, [hl]
    and $03
    cp c
    ret


Call_002_4a73:
    rst $18
    ld a, [de]
    and a
    jr z, jr_002_4aa0

    ld a, [hl]
    srl a
    srl a
    jr z, jr_002_4a9d

    ld b, a
    ld a, [hl]
    and $02
    xor $02
    ld c, a
    push de
    ld e, l
    ld d, h
    pop hl
    ld a, [hl+]
    inc hl
    dec a
    rst $18
    ld a, [hl]
    srl a
    srl a
    dec a
    cp b
    jr nz, jr_002_4a9d

    ld a, [hl]
    and $02
    cp c
    jr z, jr_002_4ab0

jr_002_4a9d:
    or $01
    ret


jr_002_4aa0:
    ld a, [hl]
    cp $04
    jr c, jr_002_4a9d

    ld a, [$c338]
    and a
    jr nz, jr_002_4ab0

    ld a, [hl]
    cp $30
    jr c, jr_002_4a9d

jr_002_4ab0:
    xor a
    ret


Call_002_4ab2:
    ld hl, $5533
    rst $08
    inc hl
    inc hl
    ld b, $03

jr_002_4aba:
    ld a, [hl+]
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    push hl
    ld hl, $001e
    add hl, de
    push hl
    pop de
    pop hl
    dec b
    jr nz, jr_002_4aba

    ret


Call_002_4ad1:
    ld hl, $5533
    rst $08
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_002_4ad9:
    push bc
    push de

jr_002_4adb:
    ld a, [hl+]
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_4adb

    pop de
    push hl
    ld hl, $0020
    add hl, de
    push hl
    pop de
    pop hl
    pop bc
    dec b
    jr nz, jr_002_4ad9

    ret


Call_002_4af4:
    ldh a, [rLCDC]
    bit 7, a
    ret z

    rst $10
    ret


Call_002_4afb:
    call Call_002_4af4
    ld a, [$c338]
    and a
    jr z, jr_002_4b0f

    ld a, $01
    ld [$c3b3], a
    ld hl, $c3fa
    call Call_002_4b16

jr_002_4b0f:
    xor a
    ld [$c3b3], a
    ld hl, $c3c4

Call_002_4b16:
    ld d, $35
    ld e, d
    ld b, $37
    ld c, $38
    ld a, [hl+]
    and a
    jr z, jr_002_4b5a

    ld b, $36
    ld a, [$c338]
    and a
    jr nz, jr_002_4b31

    ld a, [$c3c3]
    and a
    jr nz, jr_002_4b31

    ld b, $37

jr_002_4b31:
    ld a, [hl+]
    ldh [$8a], a
    cp $3f
    jr c, jr_002_4b42

    bit 7, a
    jr nz, jr_002_4b44

    ld b, $34
    bit 6, a
    jr nz, jr_002_4b5a

jr_002_4b42:
    ld b, $34

jr_002_4b44:
    and $3f
    rst $18
    ld c, [hl]
    ldh a, [$8a]
    and $3f
    dec a
    cp $ff
    jr z, jr_002_4b5a

    dec hl
    ld d, [hl]
    dec a
    cp $ff
    jr z, jr_002_4b5a

    dec hl
    ld e, [hl]

jr_002_4b5a:
    ld a, [$c338]
    and a
    jr nz, jr_002_4b77

    ld a, [$c3c1]
    and a
    jr nz, jr_002_4b9f

    push bc
    ld a, b
    ld de, $9800
    call Call_002_4ab2
    pop bc
    ld a, c
    ld de, $9803
    call Call_002_4ab2
    ret


jr_002_4b77:
    ld a, [$c3b3]
    and a
    jr nz, jr_002_4b8e

    push bc
    ld a, b
    ld de, $9800
    call Call_002_4ab2
    pop bc
    ld a, c
    ld de, $9802
    call Call_002_4ab2
    ret


jr_002_4b8e:
    push bc
    ld a, b
    ld de, $9812
    call Call_002_4ab2
    pop bc
    ld a, c
    ld de, $9810
    call Call_002_4ab2
    ret


jr_002_4b9f:
    push bc
    push de
    ld a, e
    ld de, $9805
    call Call_002_4ab2
    pop de
    ld a, d
    ld de, $9804
    call Call_002_4ab2
    pop bc
    push bc
    ld a, c
    ld de, $9803
    call Call_002_4ab2
    pop bc
    ld a, b
    ld de, $9800
    call Call_002_4ab2
    ret


Call_002_4bc2:
    call Call_002_4af4
    ld a, [$c338]
    and a
    jr z, jr_002_4bee

    ld hl, $c430
    ld de, $9806
    call Call_002_4c0f
    ld hl, $c43f
    ld de, $9808
    call Call_002_4c0f
    ld hl, $c44e
    ld de, $980a
    call Call_002_4c0f
    ld hl, $c45d
    ld de, $980c
    jr jr_002_4c0f

jr_002_4bee:
    ld hl, $c430
    ld de, $9809
    call Call_002_4c0f
    ld hl, $c43f
    ld de, $980c
    call Call_002_4c0f
    ld hl, $c44e
    ld de, $980f
    call Call_002_4c0f
    ld hl, $c45d
    ld de, $9812

Call_002_4c0f:
jr_002_4c0f:
    ld b, $38
    ld a, [hl+]
    and a
    jr z, jr_002_4c18

    rst $18
    ld a, [hl]
    ld b, a

jr_002_4c18:
    ld a, b
    call Call_002_4ab2
    ret


Call_002_4c1d:
    ld a, [$c338]
    and a
    jr z, jr_002_4c46

    ld hl, $c46c
    ld de, $9886
    call Call_002_4c82
    ld hl, $c482
    ld de, $9888
    call Call_002_4c82
    ld hl, $c498
    ld de, $988a
    call Call_002_4c82
    ld hl, $c4ae
    ld de, $988c
    jr jr_002_4c82

jr_002_4c46:
    ld hl, $c46c
    ld de, $9880
    call Call_002_4c82
    ld hl, $c482
    ld de, $9883
    call Call_002_4c82
    ld hl, $c498
    ld de, $9886
    call Call_002_4c82
    ld hl, $c4ae
    ld de, $9889
    call Call_002_4c82
    ld hl, $c4c4
    ld de, $988c
    call Call_002_4c82
    ld hl, $c4da
    ld de, $988f
    call Call_002_4c82
    ld hl, $c4f0
    ld de, $9892

Call_002_4c82:
jr_002_4c82:
    call Call_002_4af4
    ld a, [hl+]
    and a
    jr z, jr_002_4ce2

    ld b, a
    ld a, [hl+]
    and a
    jr z, jr_002_4ca3

    ld c, a
    push bc
    push hl
    push de
    ld a, c
    add $3a
    call Call_002_4ab2
    pop de
    call Call_002_4cdb
    pop hl
    pop bc
    ld a, c
    rst $18
    ld a, b
    sub c
    ld b, a

jr_002_4ca3:
    push bc
    ld a, [hl+]
    push hl
    push de
    call Call_002_4ab2
    pop de
    call Call_002_4cdb
    pop hl
    pop bc
    dec b
    jr nz, jr_002_4ca3

jr_002_4cb3:
    call Call_002_4cdb
    call Call_002_4cdb

jr_002_4cb9:
    ld a, e
    and $e0
    cp $60
    jr c, jr_002_4cc6

    ld a, d
    and $03
    cp $02
    ret nc

jr_002_4cc6:
    push de
    xor a
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    inc de
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    pop de
    call Call_002_4cdb
    jr jr_002_4cb9

Call_002_4cdb:
    ld hl, $0020
    add hl, de
    push hl
    pop de
    ret


jr_002_4ce2:
    push de
    ld a, $38
    call Call_002_4ab2
    pop de
    call Call_002_4cdb
    jr jr_002_4cb3

Call_002_4cee:
    push hl
    dec [hl]
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    and $3f
    ld c, a
    push de
    push hl
    rst $18
    push de
    ld e, l
    ld d, h
    pop hl
    inc [hl]
    ld a, [hl+]
    rst $18
    ld a, [de]
    ld [hl], a
    pop hl
    pop de
    ld a, b
    and a
    jr z, jr_002_4d12

    ld a, c
    cp b
    jr nz, jr_002_4d14

    dec c
    dec hl
    ld a, c
    or $80
    ld [hl], a

jr_002_4d12:
    pop hl
    ret


jr_002_4d14:
    ld a, c
    and a
    jr z, jr_002_4d1d

    dec a
    dec hl
    ld [hl+], a
    jr jr_002_4d21

jr_002_4d1d:
    ld a, $40
    dec hl
    ld [hl+], a

jr_002_4d21:
    ld a, c
    rst $18
    push hl
    pop de
    inc de
    ld a, b
    sub c
    ld b, a

jr_002_4d29:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_4d29

    pop hl
    ld a, [hl+]
    and a
    ret z

    dec a
    ld c, a
    ld a, [hl]
    and $3f
    cp c
    ret nz

    ld a, c
    or $80
    ld [hl], a
    ret


Call_002_4d3f:
    push hl
    dec [hl]
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    and $3f
    ld c, a
    push bc
    push de
    push hl
    rst $18
    push de
    ld e, l
    ld d, h
    pop hl
    ld a, [hl]
    and a
    jr nz, jr_002_4d5c

    inc a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    jr jr_002_4d80

jr_002_4d5c:
    inc a
    ld [hl+], a
    ld b, a
    ld a, [hl]
    inc a
    and $3f
    ld c, a
    inc a
    cp b
    ld a, c
    jr nz, jr_002_4d6b

    or $80

jr_002_4d6b:
    ld [hl+], a
    ld a, c
    rst $18
    ld a, b
    sub c
    ld b, a
    jr nz, jr_002_4d77

    ld a, [de]
    ld [hl], a
    jr jr_002_4d80

jr_002_4d77:
    ld a, [de]
    ld d, a

jr_002_4d79:
    ld e, [hl]
    ld a, d
    ld [hl+], a
    ld d, e
    dec b
    jr nz, jr_002_4d79

jr_002_4d80:
    pop hl
    pop de
    pop bc
    ld a, b
    and a
    jr z, jr_002_4d91

    ld a, c
    cp b
    jr nz, jr_002_4d93

    dec c
    dec hl
    ld a, c
    or $80
    ld [hl], a

jr_002_4d91:
    pop hl
    ret


jr_002_4d93:
    ld a, c
    and a
    jr z, jr_002_4d9c

    dec a
    dec hl
    ld [hl+], a
    jr jr_002_4da0

jr_002_4d9c:
    ld a, $40
    dec hl
    ld [hl+], a

jr_002_4da0:
    ld a, c
    rst $18
    push hl
    pop de
    inc de
    ld a, b
    sub c
    ld b, a

jr_002_4da8:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_4da8

    pop hl
    ld a, [hl+]
    and a
    ret z

    dec a
    ld c, a
    ld a, [hl]
    and $3f
    cp c
    ret nz

    ld a, c
    or $80
    ld [hl], a
    ret


Call_002_4dbe:
    dec [hl]
    inc hl
    inc hl
    rst $18
    push de
    ld e, l
    ld d, h
    pop hl
    ld a, [hl]
    inc a
    ld [hl+], a
    ld b, a
    ld a, [hl]
    inc a
    and $3f
    ld c, a
    inc a
    cp b
    ld a, c
    jr nz, jr_002_4dd6

    or $80

jr_002_4dd6:
    ld [hl+], a
    ld a, c
    rst $18
    ld a, b
    sub c
    ld b, a
    jr nz, jr_002_4de1

    ld a, [de]
    ld [hl], a
    ret


jr_002_4de1:
    ld a, [de]
    ld d, a

jr_002_4de3:
    ld e, [hl]
    ld a, d
    ld [hl+], a
    ld d, e
    dec b
    jr nz, jr_002_4de3

    ret


Call_002_4deb:
    push hl
    ld c, a
    ld a, [hl]
    sub c
    ld b, a
    ld a, [hl]
    sub b
    ld [hl+], a
    inc hl
    ld a, c
    rst $18
    push de
    ld e, l
    ld d, h
    pop hl
    ld a, [hl]
    push af
    add b
    ld [hl+], a
    pop af
    inc hl
    rst $18

jr_002_4e01:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_002_4e01

    pop hl
    ld a, [hl+]
    cp [hl]
    jr z, jr_002_4e0d

    ret nc

jr_002_4e0d:
    and a
    ret z

    dec a
    ld [hl], a
    ret


Call_002_4e12:
    xor a
    ld [$c3b4], a
    ld [$c3b7], a
    ld [$c3b5], a
    ld [$c3b8], a
    ld [$c3b6], a
    ld [$c3b9], a
    ld hl, $c326
    push hl
    ld hl, $55a5
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld hl, $c32c
    push hl
    ld hl, $559b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


Call_002_4e50:
    ld a, [$c3b4]
    ld b, a
    jr nz, jr_002_4e8c

    call Call_002_4ed0
    ld de, $c324
    ld a, [hl]
    add $08
    ld [de], a
    inc de
    ld c, $00
    ld a, [$c3b5]
    cp $ff
    jr z, jr_002_4e73

    ld hl, $c3b6
    sub [hl]
    swap a
    srl a
    ld c, a

jr_002_4e73:
    ld a, b
    call Call_002_4ee0
    ld a, [hl]
    add $12
    add c
    ld [de], a

jr_002_4e7c:
    call Call_002_4ef3
    call Call_000_0ad5
    ld de, $c324
    call Call_000_0add
    call Call_000_0b1b
    ret


jr_002_4e8c:
    ld a, [$c3b7]
    cp b
    jr z, jr_002_4e7c

    ld b, a
    call Call_002_4ed0
    ld de, $c32a
    ld a, [hl]
    add $08
    ld [de], a
    inc de
    ld c, $00
    ld a, [$c3b8]
    cp $ff
    jr z, jr_002_4eb1

    inc a
    ld hl, $c3b9
    sub [hl]
    swap a
    srl a
    ld c, a

jr_002_4eb1:
    ld a, b
    call Call_002_4ee0
    ld a, [hl]
    add $10
    add c
    ld [de], a
    call Call_002_4ef0
    call Call_000_0ad5
    ld de, $c324
    call Call_000_0add
    ld de, $c32a
    call Call_000_0add
    call Call_000_0b1b
    ret


Call_002_4ed0:
    push af
    ld hl, $54d5
    ld a, [$c338]
    and a
    jr nz, jr_002_4edd

    ld hl, $547b

jr_002_4edd:
    pop af
    rst $18
    ret


Call_002_4ee0:
    push af
    ld hl, $54e5
    ld a, [$c338]
    and a
    jr nz, jr_002_4eed

    ld hl, $5488

jr_002_4eed:
    pop af
    rst $18
    ret


Call_002_4ef0:
    xor a
    jr jr_002_4f0d

Call_002_4ef3:
    ld a, [$c69d]
    inc a
    ld [$c69d], a
    cp $28
    jr c, jr_002_4f0a

    ld a, [$c69c]
    xor $02
    ld [$c69c], a
    xor a
    ld [$c69d], a

jr_002_4f0a:
    ld a, [$c69c]

jr_002_4f0d:
    ld hl, $c326
    push hl
    ld hl, $55a5
    add l
    ld l, a
    jr nc, jr_002_4f19

    inc h

jr_002_4f19:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


Jump_002_4f28:
jr_002_4f28:
    cp $10
    jr z, jr_002_4f34

    cp $20
    ret nz

    ld hl, $5447
    jr jr_002_4f37

jr_002_4f34:
    ld hl, $5454

jr_002_4f37:
    ld a, $04
    call Call_002_53cc
    ld a, [de]
    rst $18
    ld a, [hl]
    ld [de], a
    inc de

Call_002_4f41:
    ld b, a
    call Call_002_4fe6
    cp $06
    jr nz, jr_002_4f58

    ld a, b
    call Call_002_494c
    ld a, [hl+]
    dec a
    ld [de], a
    inc de
    ld a, [hl]
    and a
    jr z, jr_002_4f56

    dec a

jr_002_4f56:
    ld [de], a
    ret


jr_002_4f58:
    ld a, $ff
    ld [de], a
    inc a
    inc de
    ld [de], a
    ret


Call_002_4f5f:
    ld b, a
    ld a, [de]
    call Call_002_4fe6
    cp $06
    ld a, b
    jr nz, jr_002_4f73

    cp $80
    jr z, jr_002_4fa4

    cp $40
    jr nz, jr_002_4f28

    jr jr_002_4f79

jr_002_4f73:
    cp $80
    jr z, jr_002_4fba

    jr jr_002_4f28

jr_002_4f79:
    call Call_002_4fdf
    jr z, jr_002_4f8f

    ld a, b
    call Call_002_494c
    inc hl
    ld a, [de]
    cp [hl]
    jr z, jr_002_4f8f

    dec a
    ld [de], a
    ld a, $04
    call Call_002_53cc
    ret


jr_002_4f8f:
    dec de
    ld hl, $5461
    ld a, [de]
    rst $18
    ld a, [de]
    cp [hl]
    ret z

    ld a, [hl]
    ld [de], a
    inc de
    call Call_002_4f41
    ld a, $04
    call Call_002_53cc
    ret


jr_002_4fa4:
    call Call_002_4fdf
    jr z, jr_002_4fb9

    ld a, b
    call Call_002_494c
    ld a, [de]
    inc a
    cp [hl]
    jr z, jr_002_4fb9

    ld [de], a
    ld a, $04
    call Call_002_53cc
    ret


jr_002_4fb9:
    dec de

jr_002_4fba:
    ld hl, $546e
    ld a, [de]
    rst $18
    ld a, [de]
    cp [hl]
    ret z

    ld a, [hl]
    ld [de], a
    push de
    inc de
    call Call_002_4f41
    ld a, $04
    call Call_002_53cc
    pop de
    call Call_002_4fdf
    ret z

    ld a, b
    call Call_002_494c
    inc hl
    ld a, [de]

jr_002_4fd9:
    cp [hl]
    ret z

    dec a
    ld [de], a
    jr jr_002_4fd9

Call_002_4fdf:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $ff
    ret


Call_002_4fe6:
    ld hl, $54f5
    rst $18
    ld a, [hl]
    ret


Call_002_4fec:
    ld b, a
    ld a, [de]
    call Call_002_4fe6
    cp $06
    ld a, b
    jr nz, jr_002_5009

    cp $80
    jr z, jr_002_5036

    cp $40
    jr z, jr_002_501c

    ld a, [$c338]
    and a
    ld a, b
    jp z, Jump_002_4f28

    jp Jump_002_505a


jr_002_5009:
    cp $80
    jr z, jr_002_5036

    ld a, [$c338]
    and a
    ld a, b
    jp z, Jump_002_4f28

    cp $40
    jr z, jr_002_501c

    jp Jump_002_505a


jr_002_501c:
    ld hl, $5461
    ld a, [$c338]
    and a
    jr z, jr_002_5028

    ld hl, $54b5

jr_002_5028:
    ld a, [de]
    rst $18
    ld a, [hl]
    ld [de], a
    inc de
    call Call_002_4f41
    ld a, $04
    call Call_002_53cc
    ret


jr_002_5036:
    ld hl, $546e
    ld a, [$c338]
    and a
    jr z, jr_002_5042

    ld hl, $54c5

jr_002_5042:
    ld a, [de]
    rst $18
    ld a, [de]
    cp [hl]
    ret z

    ld a, [hl]
    ld [de], a
    inc de
    call Call_002_4f41
    ld a, $04
    call Call_002_53cc
    ret


    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $ff
    ret


Jump_002_505a:
jr_002_505a:
    cp $10
    jr z, jr_002_5066

    cp $20
    ret nz

    ld hl, $5495
    jr jr_002_5069

jr_002_5066:
    ld hl, $54a5

jr_002_5069:
    ld a, $04
    call Call_002_53cc
    ld a, [de]
    rst $18
    ld a, [hl]
    ld [de], a
    inc de
    call Call_002_4f41
    ret


Call_002_5077:
    ld b, a
    ld a, [de]
    call Call_002_4fe6
    cp $06
    ld a, b
    jr nz, jr_002_508b

    cp $80
    jr z, jr_002_50c0

    cp $40
    jr nz, jr_002_505a

    jr z, jr_002_5095

jr_002_508b:
    cp $40
    jr z, jr_002_50ac

    cp $80
    jr z, jr_002_50d6

    jr jr_002_505a

jr_002_5095:
    call Call_002_50fb
    jr z, jr_002_50ab

    ld a, b
    call Call_002_494c
    inc hl
    ld a, [de]
    cp [hl]
    jr z, jr_002_50ab

    dec a
    ld [de], a
    ld a, $04
    call Call_002_53cc
    ret


jr_002_50ab:
    dec de

jr_002_50ac:
    ld hl, $54b5
    ld a, [de]
    rst $18
    ld a, [de]
    cp [hl]
    ret z

    ld a, [hl]
    ld [de], a
    inc de
    call Call_002_4f41
    ld a, $04
    call Call_002_53cc
    ret


jr_002_50c0:
    call Call_002_50fb
    jr z, jr_002_50d5

    ld a, b
    call Call_002_494c
    ld a, [de]
    inc a
    cp [hl]
    jr z, jr_002_50d5

    ld [de], a
    ld a, $04
    call Call_002_53cc
    ret


jr_002_50d5:
    dec de

jr_002_50d6:
    ld hl, $54c5
    ld a, [de]
    rst $18
    ld a, [de]
    cp [hl]
    ret z

    ld a, [hl]
    ld [de], a
    push de
    inc de
    call Call_002_4f41
    pop de
    ld a, $04
    call Call_002_53cc
    call Call_002_50fb
    ret z

    ld a, b
    call Call_002_494c
    inc hl
    ld a, [de]

jr_002_50f5:
    cp [hl]
    ret z

    dec a
    ld [de], a
    jr jr_002_50f5

Call_002_50fb:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $ff
    ret


Call_002_5102:
    ld hl, $5228
    ld a, [$c338]
    and a
    jr nz, jr_002_510e

    ld hl, $5202

jr_002_510e:
    ld a, $40
    call Call_000_081b
    call Call_000_08a0
    call Call_000_0974
    ret


    call Call_002_5197
    ld hl, $51ee
    call Call_000_0876
    ld a, [$c338]
    and a
    ret nz

    ld hl, $51f2
    call Call_000_0876
    ld hl, $c3bb
    call Call_000_0d1e
    ret


    ld a, [$c3ba]
    and a
    ret z

    ld hl, $c506
    ld de, $c3b2
    ld bc, $0153

jr_002_5143:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_002_5143

    xor a
    ld [$c3ba], a
    call Call_000_0974
    call Call_002_4afb
    call Call_002_4bc2
    call Call_002_4c1d
    pop hl
    pop hl
    ret


    call Call_000_1521
    call Call_000_0974
    pop hl
    pop hl
    pop hl
    ret


    call Call_000_1521
    call Call_000_0974
    pop hl
    pop hl
    pop hl
    jp Jump_002_400a


    call Call_000_1521
    call Call_000_0974
    pop hl
    pop hl
    pop hl
    jp Jump_002_403a


    ld a, [$c3ae]
    add c
    cp $03
    jr nz, jr_002_518b

    xor a
    jr jr_002_5191

jr_002_518b:
    cp $ff
    jr nz, jr_002_5191

    ld a, $02

jr_002_5191:
    ld [$c3ae], a
    call Call_002_524e

Call_002_5197:
    ld a, [$c3ae]
    add a
    add a
    ld hl, $51f6
    add l
    ld l, a
    jr nc, jr_002_51a4

    inc h

jr_002_51a4:
    call Call_000_0876
    ret


    ld d, l
    ld l, [hl]
    ld h, h
    ld l, a
    nop
    ld c, [hl]
    ld h, l
    ld [hl], a
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    nop
    ld b, h
    ld h, l
    ld h, c
    ld l, h
    jr nz, @+$43

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], h
    nop
    ld d, e
    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$2c

    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, l
    ld h, l
    jr nz, jr_002_5207

    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, l
    ld h, l
    jr nz, jr_002_5210

    nop
    ld c, a
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_002_5204

    jr nz, jr_002_5206

    nop
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld a, [hl-]
    nop
    ld h, $00
    jr z, jr_002_5245

    and c
    ld bc, $51c7
    ld l, c
    ld bc, $51cf
    ld l, c
    ld bc, $51d7
    ld l, c
    ld bc, $51df
    dec b
    nop

jr_002_5204:
    ld b, c
    sbc b

jr_002_5206:
    db $10

jr_002_5207:
    dec c
    ld a, [de]
    ld d, c
    dec [hl]
    ld d, c
    ld [hl], h
    ld d, c
    ld l, b
    ld d, c

jr_002_5210:
    ld e, [hl]
    ld d, c
    add b
    ld d, c
    ld h, d
    nop
    xor b
    ld d, c
    and d
    nop
    or [hl]
    ld d, c
    ld [c], a
    nop
    xor l
    ld d, c
    ld [hl+], a
    ld bc, $51c1
    ld h, d
    dec b
    rst $20
    ld d, c
    dec b
    nop
    ld b, c
    sbc b
    db $10
    dec bc
    ld a, [de]
    ld d, c
    dec [hl]
    ld d, c
    ld [hl], h
    ld d, c
    ld l, b
    ld d, c
    ld e, [hl]
    ld d, c
    add b
    ld d, c
    ld h, d
    nop
    xor b
    ld d, c
    and d
    nop
    or [hl]
    ld d, c
    ld [c], a
    nop
    xor l

jr_002_5245:
    ld d, c
    ld [hl+], a
    ld bc, $51c1
    ld h, d
    dec b
    rst $20
    ld d, c

Call_002_524e:
    ld a, [$c3ae]
    or a
    jr z, jr_002_5263

    cp $01
    jr z, jr_002_525d

    xor a
    call Call_000_05a0
    ret


jr_002_525d:
    ld a, $01
    call Call_000_05a0
    ret


jr_002_5263:
    ld a, $02
    call Call_000_05a0
    ret


Call_002_5269:
    push af
    push bc
    push de
    push hl
    ld hl, $c3b2
    ld de, $c506
    ld bc, $0153

jr_002_5276:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_002_5276

    ld a, $01
    ld [$c3ba], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_002_5288:
    ld hl, $5366
    ld a, $40
    call Call_000_081b
    call Call_000_08a0
    call Call_000_0974
    ld a, [$c33a]
    rst $00
    ret nc

    ld d, d
    db $e4
    ld d, d
    ld a, [$c3c2]
    call Call_002_52cb
    ld a, [$c3c1]
    call Call_002_52b9
    ld hl, $5340
    call Call_000_0876
    ret


    ld a, [$c3c1]
    xor $01
    ld [$c3c1], a

Call_002_52b9:
    ld hl, $5330

jr_002_52bc:
    add a
    add a
    rst $18
    call Call_000_0876
    ret


    ld a, [$c3c2]
    xor $01
    ld [$c3c2], a

Call_002_52cb:
    ld hl, $5338
    jr jr_002_52bc

    ld a, $01
    ld [$c3c2], a
    ld hl, $5358
    ld a, $40
    call Call_000_081b
    call Call_000_08a0
    call Call_000_0974
    ret


    ld hl, $5344
    ld a, $40
    call Call_000_081b
    call Call_000_08a0
    call Call_000_0974
    ret


    pop hl
    ret


    ld b, [hl]
    ld l, h
    ld l, c
    ld [hl], b
    nop
    ld b, h
    ld [hl], d
    ld h, c
    ld [hl], a
    nop
    ld d, [hl]
    ld h, l
    ld h, a
    ld h, c
    ld [hl], e
    jr nz, @+$54

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    nop
    ld d, e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_002_5367

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    nop
    ld sp, $3300
    nop
    ld c, l
    ld h, c
    ld l, [hl]
    ld a, c
    nop
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld c, a
    ld d, b
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop
    ld h, a
    nop
    ld a, [de]
    ld d, e
    ld h, a
    nop
    inc e
    ld d, e
    and a
    nop
    ld e, $53
    and a
    nop
    inc hl
    ld d, e
    inc hl
    nop
    jr z, @+$55

    ld [bc], a
    nop
    add h
    sbc b
    ld a, [bc]
    dec b
    sbc [hl]
    ld d, d
    or c
    ld d, d
    jp Jump_002_6252


    inc b
    push af
    ld d, d
    and d
    inc b
    ld a, [$0152]
    nop
    add h
    sbc b
    ld a, [bc]
    inc bc
    and h
    ld d, d
    or c
    ld d, d
    ld h, d
    inc b
    push af
    ld d, d
    ld [bc], a

jr_002_5367:
    nop
    add c
    sbc b
    db $10
    dec b
    xor d
    ld d, d
    di
    ld d, d
    di
    ld d, d
    ld h, d
    nop
    rst $38
    ld d, d
    and d
    nop
    dec bc
    ld d, e

Call_002_537a:
    ld hl, $53be
    ld a, $00
    call Call_000_081b
    call Call_000_08a0
    call Call_000_0974
    ret


    ld a, [$c3b0]
    call Call_002_539e
    ld hl, $53ba
    call Call_000_0876
    ret


    ld a, [$c3b0]
    xor $01
    ld [$c3b0], a

Call_002_539e:
    ld hl, $53b2
    add a
    add a
    rst $18
    call Call_000_0876
    ret


    ld d, h
    ld l, a
    jr nz, jr_002_53ff

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, [hl-]
    nop
    ld l, e
    nop
    dec a
    ld b, a
    ld l, e
    nop
    ld b, [hl]
    ld b, a
    ld h, $00
    jr z, jr_002_5411

    ld bc, $8000
    sbc b
    ld [de], a
    inc bc
    adc c
    ld d, e
    sub [hl]
    ld d, e
    ld h, d
    inc b
    xor b
    ld d, e

Call_002_53cc:
    push bc
    ld c, a
    ld a, [$c303]
    and a
    jr z, jr_002_53db

    ld b, a
    ld a, [$c3b0]
    add $02
    cp b

jr_002_53db:
    ld a, c
    call z, Call_000_0579
    pop bc
    ret


Call_002_53e1:
    ldh a, [$a9]
    ld [$c311], a
    ld hl, $c30f
    ldh a, [$ab]
    and a
    jr z, jr_002_53fe

    inc [hl]
    ld a, [hl]
    cp $14
    jr nz, jr_002_5400

    ld a, $0a
    ld [hl], a
    ldh a, [$ab]
    ld [$c311], a
    jr jr_002_5400

jr_002_53fe:
    xor a

jr_002_53ff:
    ld [hl], a

jr_002_5400:
    ldh a, [$aa]
    ld [$c312], a
    ld hl, $c310
    ldh a, [$ac]
    and a
    jr z, jr_002_541d

    inc [hl]
    ld a, [hl]
    cp $14

jr_002_5411:
    jr nz, jr_002_541f

    ld a, $0a
    ld [hl], a
    ldh a, [$ac]
    ld [$c312], a
    jr jr_002_541f

jr_002_541d:
    xor a
    ld [hl], a

jr_002_541f:
    ret


Call_002_5420:
jr_002_5420:
    rst $10
    call Call_000_1480
    ldh a, [$a9]
    and $0f
    jr z, jr_002_5420

    ret


Call_002_542b:
    ld b, $00

jr_002_542d:
    cp $0a
    jr c, jr_002_5436

    inc b
    sub $0a
    jr jr_002_542d

jr_002_5436:
    ld c, a
    push af
    call Call_000_00ee
    pop af
    ld a, $10
    add b
    ld [de], a
    inc de
    ld a, $10
    add c
    ld [de], a
    inc de
    ret


    inc c
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    nop
    ld bc, $0208
    inc bc
    inc b
    dec b
    ld b, $07
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    jr jr_002_54c6

    ld h, b
    ld a, b
    sub b
    nop
    jr jr_002_54b4

    ld c, b
    ld h, b
    ld a, b
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_002_54b0

    jr nz, jr_002_54b2

    jr nz, jr_002_54b4

    jr nz, @+$0b

    nop
    ld bc, $0302
    inc b
    rrca
    ld b, $07
    ld [$0b0a], sp
    inc c
    dec b
    dec c
    ld c, $01
    ld [bc], a
    inc bc
    inc b
    dec b
    dec c
    rlca
    ld [$0009], sp
    ld a, [bc]

jr_002_54b0:
    dec bc
    inc c

jr_002_54b2:
    ld c, $0f

jr_002_54b4:
    ld b, $00
    ld bc, $0302
    inc b
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    rrca

jr_002_54c6:
    rrca
    ld b, $07
    ld [$0609], sp
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    db $10
    jr nc, jr_002_5519

    ld d, b
    ld h, b
    jr nc, jr_002_551d

    ld d, b
    ld h, b
    nop
    nop
    nop
    add b
    sub b
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_002_550d

    jr nz, jr_002_550f

    nop
    nop
    nop
    nop
    nop
    jr nz, jr_002_54f6

jr_002_54f6:
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $0a
    ld [$740c], sp
    ld b, h
    di
    ld b, h
    ld l, c
    ld b, a
    ld [hl], $48

jr_002_550d:
    db $e3
    ld b, l

jr_002_550f:
    inc d
    ld b, [hl]
    db $fc
    ld b, [hl]
    call nz, $c4c3
    jp $c430


jr_002_5519:
    ccf
    call nz, $c44e

jr_002_551d:
    ld e, l
    call nz, $c46c
    add d
    call nz, $c498
    xor [hl]
    call nz, $c4c4
    jp c, $f0c4

    call nz, $c3fa
    ld a, [$00c3]
    nop
    cp e
    ld d, l
    jp $cb55


    ld d, l
    db $d3
    ld d, l
    db $db
    ld d, l
    db $e3
    ld d, l
    db $eb
    ld d, l
    di
    ld d, l
    ei
    ld d, l
    inc bc
    ld d, [hl]
    dec bc
    ld d, [hl]
    inc de
    ld d, [hl]
    dec de
    ld d, [hl]
    inc hl
    ld d, [hl]
    dec hl
    ld d, [hl]
    inc sp
    ld d, [hl]
    dec sp
    ld d, [hl]
    ld b, e
    ld d, [hl]
    ld c, e
    ld d, [hl]
    ld d, e
    ld d, [hl]
    ld e, e
    ld d, [hl]
    ld h, e
    ld d, [hl]
    ld l, e
    ld d, [hl]
    ld [hl], e
    ld d, [hl]
    ld a, e
    ld d, [hl]
    add e
    ld d, [hl]
    adc e
    ld d, [hl]
    sub e
    ld d, [hl]
    sbc e
    ld d, [hl]
    and e
    ld d, [hl]
    xor e
    ld d, [hl]
    or e
    ld d, [hl]
    cp e
    ld d, [hl]
    jp $cb56


    ld d, [hl]
    db $d3
    ld d, [hl]
    db $db
    ld d, [hl]
    db $e3
    ld d, [hl]
    db $eb
    ld d, [hl]
    di
    ld d, [hl]
    ei
    ld d, [hl]
    inc bc
    ld d, a
    dec bc
    ld d, a
    inc de
    ld d, a
    dec de
    ld d, a
    inc hl
    ld d, a
    dec hl
    ld d, a
    inc sp
    ld d, a
    dec sp
    ld d, a
    ld b, e
    ld d, a
    ld c, e
    ld d, a
    ld d, e
    ld d, a
    ld e, e
    ld d, a
    ld h, e
    ld d, a
    ld l, e
    ld d, a
    ld [hl], e
    ld d, a
    ld a, e
    ld d, a
    add e
    ld d, a
    adc c
    ld d, a
    adc a
    ld d, a
    sub a
    ld d, a
    sbc a
    ld d, a
    and a
    ld d, a
    xor a
    ld d, a
    or a
    ld d, a
    cp a
    ld d, a
    ret nc

    ld d, a
    pop hl
    ld d, a
    ld [bc], a
    inc bc
    ld h, d
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    ld l, a
    ld [bc], a
    inc bc
    ld h, d
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    ld l, a
    ld [bc], a
    inc bc
    ld h, d
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    ld l, a
    ld [bc], a
    inc bc
    ld h, d
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    ld l, a
    ld [bc], a
    inc bc
    ld h, a
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    ld [hl], e
    ld [bc], a
    inc bc
    ld h, a
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    ld [hl], e
    ld [bc], a
    inc bc
    ld h, a
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    ld [hl], e
    ld [bc], a
    inc bc
    ld h, a
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    ld [hl], e
    ld [bc], a
    inc bc
    ld l, b
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    ld [hl], h
    ld [bc], a
    inc bc
    ld l, b
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    ld [hl], h
    ld [bc], a
    inc bc
    ld l, b
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    ld [hl], h
    ld [bc], a
    inc bc
    ld l, b
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    ld [hl], h
    ld [bc], a
    inc bc
    ld l, c
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    ld [hl], l
    ld [bc], a
    inc bc
    ld l, c
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    ld [hl], l
    ld [bc], a
    inc bc
    ld l, c
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    ld [hl], l
    ld [bc], a
    inc bc
    ld l, c
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    ld [hl], l
    ld [bc], a
    inc bc
    db $76
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    ld a, d
    ld [bc], a
    inc bc
    db $76
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    ld a, d
    ld [bc], a
    inc bc
    db $76
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    ld a, d
    ld [bc], a
    inc bc
    db $76
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    ld a, d
    ld [bc], a
    inc bc
    ld [hl], a
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    ld a, e
    ld [bc], a
    inc bc
    ld [hl], a
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    ld a, e
    ld [bc], a
    inc bc
    ld [hl], a
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    ld a, e
    ld [bc], a
    inc bc
    ld [hl], a
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    ld a, e
    ld [bc], a
    inc bc
    ld a, b
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    ld a, h
    ld [bc], a
    inc bc
    ld a, b
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    ld a, h
    ld [bc], a
    inc bc
    ld a, b
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    ld a, h
    ld [bc], a
    inc bc
    ld a, b
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    ld a, h
    ld [bc], a
    inc bc
    ld a, c
    ld h, e
    ld l, d
    ld l, e
    ld a, l
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, c
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, c
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, c
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, a
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    add h
    ld [bc], a
    inc bc
    ld a, a
    ld h, h
    ld l, d
    ld l, e
    add l
    add h
    ld [bc], a
    inc bc
    ld a, a
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    add h
    ld [bc], a
    inc bc
    ld a, a
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    add h
    ld [bc], a
    inc bc
    add b
    ld h, e
    ld l, d
    ld l, e
    add [hl]
    add a
    ld [bc], a
    inc bc
    add b
    ld h, h
    ld l, d
    ld l, e
    adc b
    add a
    ld [bc], a
    inc bc
    add b
    ld h, l
    ld l, h
    ld l, e
    adc c
    add a
    ld [bc], a
    inc bc
    add b
    ld h, [hl]
    ld l, l
    ld l, e
    adc d
    add a
    ld [bc], a
    inc bc
    add c
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    adc e
    ld [bc], a
    inc bc
    add c
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    adc e
    ld [bc], a
    inc bc
    add c
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    adc e
    ld [bc], a
    inc bc
    add c
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    adc e
    ld [bc], a
    inc bc
    add d
    ld h, e
    ld l, d
    add e
    ld l, [hl]
    adc h
    ld [bc], a
    inc bc
    add d
    ld h, h
    ld l, d
    add e
    ld [hl], b
    adc h
    ld [bc], a
    inc bc
    add d
    ld h, l
    ld l, h
    add e
    ld [hl], c
    adc h
    ld [bc], a
    inc bc
    add d
    ld h, [hl]
    ld l, l
    add e
    ld [hl], d
    adc h
    ld [bc], a
    inc bc
    adc l
    ld h, e
    ld l, d
    ld l, e
    ld l, [hl]
    sub d
    ld [bc], a
    inc bc
    adc l
    ld h, h
    ld l, d
    ld l, e
    ld [hl], b
    sub d
    ld [bc], a
    inc bc
    adc l
    ld h, l
    ld l, h
    ld l, e
    ld [hl], c
    sub d
    ld [bc], a
    inc bc
    adc l
    ld h, [hl]
    ld l, l
    ld l, e
    ld [hl], d
    sub d
    ld [bc], a
    inc bc
    adc [hl]
    adc a
    sub b
    sub c
    sub e
    sub h
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    sub l
    sub [hl]
    sbc l
    sbc [hl]
    and e
    and h
    ld [bc], a
    inc bc
    sub a
    sbc b
    sbc a
    and b
    and l
    and [hl]
    ld [bc], a
    inc bc
    sbc c
    sbc d
    ld l, d
    ld l, e
    and a
    xor b
    ld [bc], a
    ld [bc], a
    sbc e
    sbc h
    and c
    and d
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    adc [hl]
    adc a
    sub b
    sub c
    sub e
    sub h
    ld [bc], a
    inc bc
    xor c
    xor d
    sub b
    sub c
    sub e
    sub h
    ld [bc], a
    inc bc
    xor c
    xor e
    sub b
    sub c
    sub e
    sub h
    ld [bc], a
    inc bc
    xor c
    xor h
    sub b
    sub c
    sub e
    sub h
    ld [bc], a
    inc bc
    xor c
    xor l
    sub b
    sub c
    sub e
    sub h
    ld [bc], a
    inc bc
    xor c
    xor [hl]
    sub b
    sub c
    sub e
    sub h
    dec b
    inc bc
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    ld l, d
    cp b
    cp c
    cp d
    cp e
    cp h
    dec b
    inc bc
    xor a
    cp l
    cp [hl]
    cp a
    or e
    or h
    ret nz

    pop bc
    jp nz, $b86a

    call nz, $c6c5
    cp h
    dec b
    inc bc
    xor a
    cp l
    cp [hl]
    cp a
    or e
    or h
    ret nz

    jp Jump_002_6ac2


    cp b
    call nz, $c6c7
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_6252:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_6ac2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
