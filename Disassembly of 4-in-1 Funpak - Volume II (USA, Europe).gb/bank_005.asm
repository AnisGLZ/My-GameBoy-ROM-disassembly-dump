; Disassembly of "4-in-1 Funpak - Volume II (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld a, $02
    ld [$c435], a
    xor a
    ld [$c437], a
    call Call_005_4010
    call Call_005_403d
    ret


Call_005_4010:
    call Call_000_00bd
    ld a, $04
    call Call_000_05e0
    ld a, $91
    ldh [rLCDC], a
    call Call_000_151b

jr_005_401f:
    call Call_000_1480
    rst $10
    ldh a, [$a9]
    and $0f
    jr z, jr_005_401f

    call Call_000_1521
    ret


Call_005_402d:
    call Call_000_00bd
    ld a, $80
    call Call_000_05e0
    ld a, $93
    ldh [rLCDC], a
    call Call_000_151b
    ret


Call_005_403d:
    xor a
    ld [$c425], a
    call Call_005_402d
    call Call_005_48a1
    xor a
    ld [$c4ca], a
    call Call_005_4494
    ld a, $01
    ld [$c3fb], a
    call Call_005_5e85
    ret


Call_005_4057:
    push af
    push bc
    push de
    push hl
    call Call_005_4894
    ld hl, $407d
    ld de, $c34a
    ld bc, $c357
    call Call_000_12a0
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_406f:
    push af
    push hl
    ld hl, $c34a
    call Call_000_0faf
    call Call_005_4859
    pop hl
    pop af
    ret


    nop
    db $10
    inc bc
    ld [bc], a
    rlca
    nop
    nop
    nop
    nop
    nop
    adc d
    ld b, b
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $9501
    ld b, b
    nop
    nop
    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_005_4114

    ld h, c
    ld l, c
    ld [hl], h
    ld l, $2e
    ld l, $00

Call_005_40a4:
    push bc
    ld c, a
    ld a, [$c3fb]
    or a
    ld a, c
    jr nz, jr_005_40b1

jr_005_40ad:
    ld a, $05
    jr jr_005_40c4

jr_005_40b1:
    and $30
    ld b, a
    swap b
    sub b
    sub b
    sub b
    ld b, a
    ld a, c
    and $0f
    add b
    cp $34
    jr nc, jr_005_40ad

    add $06

jr_005_40c4:
    pop bc
    ret


Call_005_40c6:
    push bc
    push de
    push hl
    add a
    ld hl, $4b7b
    push af
    add l
    ld l, a
    jr nc, jr_005_40d3

    inc h

jr_005_40d3:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld bc, $001e
    ld a, l
    ld l, e
    ld e, a
    ld a, h
    ld h, d
    ld d, a
    push af
    call Call_000_00ee
    pop af
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    add hl, bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    add hl, bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    pop hl
    pop de
    pop bc
    ret


Call_005_40ff:
    call Call_005_40a4
    call Call_005_40c6
    ret


Call_005_4106:
    push bc
    push de
    push hl
    ld bc, $001e
    ld l, e
    ld h, d
    xor a
    push af
    call Call_000_00ee
    pop af

jr_005_4114:
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    pop hl
    pop de
    pop bc
    ret


Call_005_4120:
    push bc
    push de
    ld e, a
    ld d, b
    and $3f
    ld c, a
    swap a
    and $03
    sla c
    sla c
    or c
    and $3f
    ld c, a
    ld a, b
    and $3f
    ld b, a
    swap a
    and $03
    sla b
    sla b
    or b
    and $3f
    ld b, a
    ld a, c
    cp b
    ld a, e
    ld b, d
    pop de
    pop bc
    ret


Call_005_414a:
    and $0f
    ret


Call_005_414d:
    swap a
    and $03
    ret


Call_005_4152:
    call Call_005_414a
    cp $09
    jr c, jr_005_415b

    ld a, $09

jr_005_415b:
    inc a
    ret


    push bc
    push de
    ld e, a
    ld d, b
    and $0f
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ld a, c
    cp b
    ld a, e
    ld b, d
    pop de
    pop bc
    ret


Call_005_416f:
    push de
    push hl
    ld de, $0001
    add hl, de
    add [hl]
    sub $0d
    pop hl
    pop de
    ret


Call_005_417b:
    push de
    push hl
    ld de, $0001
    add hl, de
    sub [hl]
    add $0d
    pop hl
    pop de
    ret


Call_005_4187:
    push de
    push hl
    call Call_005_416f
    ld de, $0000
    add hl, de
    ld [hl], a
    pop hl
    pop de
    ret


Call_005_4194:
    push de
    push hl
    ld de, $000c
    add hl, de
    ld [hl], a
    pop hl
    pop de
    ret


Call_005_419e:
    push de
    push hl
    ld de, $000c
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    ret


Call_005_41a8:
    push de
    push hl
    push hl
    ld de, $0000
    add hl, de
    ld a, [hl]
    pop hl
    call Call_005_417b
    pop hl
    pop de
    ret


Call_005_41b7:
    push hl
    xor a
    call Call_005_416f
    add $0d
    push af
    add l
    ld l, a
    jr nc, jr_005_41c4

    inc h

jr_005_41c4:
    pop af
    ld e, l
    ld d, h
    pop hl
    ret


Call_005_41c9:
    push af
    call Call_005_41b7
    pop af
    push af
    add e
    ld e, a
    jr nc, jr_005_41d4

    inc d

jr_005_41d4:
    pop af
    ret


Call_005_41d6:
    push de
    call Call_005_41c9
    ld a, [de]
    pop de
    ret


Call_005_41dd:
    push bc
    and $7f
    ld c, a
    call Call_005_41a8
    ld b, a
    jr jr_005_41f0

jr_005_41e7:
    ld a, b
    call Call_005_41d6
    and $7f
    cp c
    jr z, jr_005_41f5

jr_005_41f0:
    ld a, b
    dec b
    or a
    jr nz, jr_005_41e7

jr_005_41f5:
    ld a, b
    pop bc
    ret


    push hl
    ld hl, $0002
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ret


Call_005_4202:
    push hl
    ld e, l
    ld d, h
    push af
    ld a, $0a
    push af
    add l
    ld l, a
    jr nc, jr_005_420e

    inc h

jr_005_420e:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_005_4218
    jr jr_005_4219

Call_005_4218:
    jp hl


jr_005_4219:
    pop hl
    ret


    push bc
    push hl
    ld l, e
    ld h, d
    call Call_005_4202
    ld c, a
    call Call_005_416f
    push af
    add e
    ld e, a
    jr nc, jr_005_422c

    inc d

jr_005_422c:
    pop af
    ld a, c
    call Call_005_41d6
    sla a
    jr nc, jr_005_423b

    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h

jr_005_423b:
    pop hl
    pop bc
    ret


Call_005_423e:
    push hl
    ld e, l
    ld d, h
    push af
    ld a, $08
    push af
    add l
    ld l, a
    jr nc, jr_005_424a

    inc h

jr_005_424a:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_005_4254
    jr jr_005_4255

Call_005_4254:
    jp hl


jr_005_4255:
    pop hl
    ret


Call_005_4257:
    push bc
    push de
    ld b, a
    call Call_005_41a8
    cp b
    jr c, jr_005_4286

    jr z, jr_005_4286

    ld c, a
    ld a, b
    call Call_005_4359
    ld a, c
    dec a
    call Call_005_4187
    ld a, c
    dec a
    call Call_005_41c9
    ld a, c
    sub b
    ld c, a
    xor a
    push bc
    push hl
    ld l, e
    ld h, d

jr_005_4279:
    ld b, [hl]
    ld [hl-], a
    ld a, b
    dec c
    jr nz, jr_005_4279

    pop hl
    pop bc
    ld a, b
    dec a
    call Call_005_4338

jr_005_4286:
    pop de
    pop bc
    ret


Call_005_4289:
    push bc
    push de
    ld e, a
    call Call_005_41a8
    cp b
    jr nc, jr_005_4293

    ld b, a

jr_005_4293:
    inc a
    push af
    call Call_005_4187
    pop af
    sub b
    ld c, a
    ld a, e
    push af
    ld a, b
    call Call_005_41c9
    pop af
    push hl
    ld l, e
    ld h, d

jr_005_42a5:
    ld b, [hl]
    ld [hl+], a
    ld a, b
    dec c
    jr nz, jr_005_42a5

    pop hl
    pop de
    pop bc
    ld a, b
    call Call_005_4338
    ret


Call_005_42b3:
    push bc
    push af
    call Call_005_41a8
    ld b, a
    pop af
    call Call_005_4289
    pop bc
    ret


Call_005_42bf:
    push bc
    push de
    ld d, $00
    ld b, a
    call Call_005_41a8
    ld c, a
    or a
    jr z, jr_005_42d9

jr_005_42cb:
    ld a, d
    call Call_005_41d6
    call Call_005_4120
    jr nc, jr_005_42d9

    inc d
    ld a, d
    cp c
    jr c, jr_005_42cb

jr_005_42d9:
    ld a, b
    ld b, d
    call Call_005_4289
    pop de
    pop bc
    ret


Call_005_42e1:
    push de
    push hl
    ld de, $0001
    add hl, de
    add $0d
    ld [hl], a
    pop hl
    pop de
    ret


Call_005_42ed:
    xor a
    call Call_005_42e1
    ret


Call_005_42f2:
    call Call_005_41a8
    call Call_005_416f
    call Call_005_42e1
    ret


Call_005_42fc:
    push bc
    push hl
    ld bc, $0002
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop bc
    ret


Call_005_4308:
    push bc
    push hl
    ld bc, $000a
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop bc
    ret


Call_005_4314:
    push bc
    push hl
    ld bc, $0008
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop bc
    ret


Call_005_4320:
    push bc
    push hl
    ld bc, $0004
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop bc
    ret


Call_005_432c:
    push bc
    push hl
    ld bc, $0006
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop bc
    ret


Call_005_4338:
    push de
    push hl
    call Call_005_5cc7
    jr nz, jr_005_4356

    rst $10
    ld e, l
    ld d, h
    push af
    ld a, $04
    push af
    add l
    ld l, a
    jr nc, jr_005_434b

    inc h

jr_005_434b:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_005_4355
    jr jr_005_4356

Call_005_4355:
    jp hl


jr_005_4356:
    pop hl
    pop de
    ret


Call_005_4359:
    push de
    push hl
    call Call_005_5cc7
    jr nz, jr_005_4377

    rst $10
    ld e, l
    ld d, h
    push af
    ld a, $06
    push af
    add l
    ld l, a
    jr nc, jr_005_436c

    inc h

jr_005_436c:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_005_4376
    jr jr_005_4377

Call_005_4376:
    jp hl


jr_005_4377:
    pop hl
    pop de
    ret


Call_005_437a:
    push de
    push hl
    call Call_005_42fc
    xor a
    call Call_005_42e1
    xor a
    call Call_005_4187
    ld de, $43b2
    call Call_005_4320
    ld de, $43dc
    call Call_005_432c
    ld de, $41f8
    call Call_005_4308
    ld de, $421b
    call Call_005_4314
    xor a
    call Call_005_4194
    pop hl
    pop de
    ret


Call_005_43a6:
    call Call_005_42ed
    xor a
    call Call_005_4359
    xor a
    call Call_005_4187
    ret


Call_005_43b2:
    push bc
    push de
    push hl
    ld l, e
    ld h, d
    call Call_005_416f
    cp $80
    jr c, jr_005_43bf

    xor a

jr_005_43bf:
    call Call_005_417b
    ld b, a
    call Call_005_41a8
    ld c, a
    jr jr_005_43d4

jr_005_43c9:
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    call Call_005_40ff
    inc b

jr_005_43d4:
    ld a, b
    cp c
    jr c, jr_005_43c9

    pop hl
    pop de
    pop bc
    ret


    push bc
    push de
    push hl
    ld l, e
    ld h, d
    call Call_005_416f
    cp $80
    jr c, jr_005_43e9

    xor a

jr_005_43e9:
    call Call_005_417b
    ld b, a
    call Call_005_41a8
    ld c, a
    jr jr_005_43fa

jr_005_43f3:
    call Call_005_423e
    call Call_005_4106
    inc b

jr_005_43fa:
    ld a, b
    cp c
    jr c, jr_005_43f3

    pop hl
    pop de
    pop bc
    ret


Call_005_4402:
    push bc
    push hl
    ld b, $08
    ld c, a
    ld hl, $c3fc

jr_005_440a:
    ld a, [hl]
    cp $ff
    jr z, jr_005_441d

    ld a, $03
    push af
    add l
    ld l, a
    jr nc, jr_005_4417

    inc h

jr_005_4417:
    pop af
    dec b
    jr nz, jr_005_440a

    jr jr_005_4422

jr_005_441d:
    ld [hl], c
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d

jr_005_4422:
    pop hl
    pop bc
    ret


    push bc
    push hl
    ld b, $08
    ld c, a
    ld hl, $c3fc

jr_005_442d:
    ld a, [hl]
    cp c
    jr z, jr_005_443f

    ld a, $03
    push af
    add l
    ld l, a
    jr nc, jr_005_4439

    inc h

jr_005_4439:
    pop af
    dec b
    jr nz, jr_005_442d

    jr jr_005_4442

jr_005_443f:
    ld a, $ff
    ld [hl], a

jr_005_4442:
    pop hl
    pop bc
    ret


Call_005_4445:
    push bc
    push de
    push hl
    ld b, $08
    ld hl, $c3fc

jr_005_444d:
    ld a, [hl+]
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    cp $ff
    jr z, jr_005_4463

    ld c, a
    ld a, [$c414]
    or a
    ld a, c
    jr nz, jr_005_4460

    ld a, $ff

jr_005_4460:
    call Call_005_40ff

jr_005_4463:
    dec b
    jr nz, jr_005_444d

    ld a, [$c414]
    xor $ff
    ld [$c414], a
    pop hl
    pop de
    pop bc
    ret


Call_005_4472:
    push bc
    push hl
    ld a, [$c414]
    or a
    jr z, jr_005_447d

    call Call_005_4445

jr_005_447d:
    ld b, $08
    ld hl, $c3fc

jr_005_4482:
    ld a, $ff
    ld [hl], a
    ld a, $03
    push af
    add l
    ld l, a
    jr nc, jr_005_448d

    inc h

jr_005_448d:
    pop af
    dec b
    jr nz, jr_005_4482

    pop hl
    pop bc
    ret


Call_005_4494:
    xor a
    ld [$c414], a
    call Call_005_4472
    ret


Call_005_449c:
    call Call_005_4472
    ret


Call_005_44a0:
    push bc
    push de
    ld e, a
    call Call_005_41a8
    ld c, a
    ld b, $00
    ld d, b
    jr jr_005_44b8

jr_005_44ac:
    ld a, b
    call Call_005_41d6
    call Call_005_414a
    cp e
    jr nz, jr_005_44b7

    inc d

jr_005_44b7:
    inc b

jr_005_44b8:
    ld a, b
    cp c
    jr c, jr_005_44ac

    ld a, d
    pop de
    pop bc
    ret


Call_005_44c0:
    push bc
    push de
    ld e, a
    call Call_005_41a8
    ld c, a
    ld b, $00
    jr jr_005_44e3

jr_005_44cb:
    ld a, b
    call Call_005_41d6
    call Call_005_414a
    cp e
    jr nz, jr_005_44e2

    push de
    ld a, b
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    call Call_005_4402
    pop de

jr_005_44e2:
    inc b

jr_005_44e3:
    ld a, b
    cp c
    jr c, jr_005_44cb

    pop de
    pop bc
    ret


Call_005_44ea:
    push bc
    push de
    ld e, a
    call Call_005_41a8
    ld c, a
    ld b, $00
    ld d, b
    jr jr_005_4502

jr_005_44f6:
    ld a, b
    call Call_005_41d6
    call Call_005_414d
    cp e
    jr nz, jr_005_4501

    inc d

jr_005_4501:
    inc b

jr_005_4502:
    ld a, b
    cp c
    jr c, jr_005_44f6

    ld a, d
    pop de
    pop bc
    ret


Call_005_450a:
    push bc
    push de
    ld e, a
    call Call_005_41a8
    ld c, a
    ld b, $00
    jr jr_005_452d

jr_005_4515:
    ld a, b
    call Call_005_41d6
    call Call_005_414d
    cp e
    jr nz, jr_005_452c

    push de
    ld a, b
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    call Call_005_4402
    pop de

jr_005_452c:
    inc b

jr_005_452d:
    ld a, b
    cp c
    jr c, jr_005_4515

    pop de
    pop bc
    ret


    ld [bc], a
    ld bc, $e5c5
    add a
    ld e, a
    ld d, $00
    ld b, d
    ld hl, $45c9
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $45cd
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld e, [hl]
    pop af
    ld d, a
    pop hl
    pop bc
    ret


Call_005_4555:
    push hl
    ld hl, $c3f7
    push af
    add l
    ld l, a
    jr nc, jr_005_455f

    inc h

jr_005_455f:
    pop af
    ld a, [hl]
    pop hl
    ret


Call_005_4563:
    push hl
    push de
    push af
    call $4536
    pop af
    ld hl, $c3f7
    push af
    add l
    ld l, a
    jr nc, jr_005_4573

    inc h

jr_005_4573:
    pop af
    ld a, [hl]
    call Call_005_4763
    pop de
    pop hl
    ret


Call_005_457b:
    push bc
    push de
    push hl
    ld e, a
    ld hl, $4534
    push af
    add l
    ld l, a
    jr nc, jr_005_4588

    inc h

jr_005_4588:
    pop af
    ld a, [hl]
    add a
    ld hl, $4b7b
    push af
    add l
    ld l, a
    jr nc, jr_005_4594

    inc h

jr_005_4594:
    pop af
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_005_4821
    jr c, jr_005_45b0

    ld b, a
    ld a, e
    ld hl, $c3f7
    push af
    add l
    ld l, a
    jr nc, jr_005_45a8

    inc h

jr_005_45a8:
    pop af
    ld [hl], b
    ld c, $00
    ld a, e
    call Call_005_4563

jr_005_45b0:
    pop hl
    pop de
    pop bc
    ret


Call_005_45b4:
    call Call_005_4555
    call Call_005_4844
    ret


Call_005_45bb:
    call Call_005_4555
    call Call_005_47e9
    ret


Call_005_45c2:
    call Call_005_4555
    call Call_005_4804
    ret


    pop de
    ld b, l
    db $dd
    ld b, l
    rst $10
    ld b, l
    db $e3
    ld b, l
    db $10
    jr jr_005_45f4

    jr z, jr_005_4606

    jr c, jr_005_4640

    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [hl], b
    ld a, b
    add b
    adc b
    sub b
    jr nc, jr_005_4615

    jr nc, jr_005_4617

    jr nc, @+$32

    add e
    sbc c
    ld c, $98

Call_005_45ed:
    push hl
    ld hl, $c3f9
    push af
    add l
    ld l, a

jr_005_45f4:
    jr nc, jr_005_45f7

    inc h

jr_005_45f7:
    pop af
    ld a, [hl]
    pop hl
    ret


Call_005_45fb:
    push bc
    push hl
    ld b, a
    ld hl, $c3f9
    push af
    add l
    ld l, a
    jr nc, jr_005_4607

jr_005_4606:
    inc h

jr_005_4607:
    pop af
    ld [hl], c
    ld a, b
    call Call_005_4610
    pop hl
    pop bc
    ret


Call_005_4610:
    push de
    push hl
    call Call_005_5cc7

jr_005_4615:
    jr nz, jr_005_463f

jr_005_4617:
    push af
    call Call_005_45ed
    ld l, a
    ld h, $00
    ld de, $c415
    call Call_000_0ff9
    ld hl, $c415
    call Call_000_103f
    pop af
    ld hl, $45e9
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_4635

    inc h

jr_005_4635:
    pop af
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c417
    call Call_000_0fed

jr_005_463f:
    pop hl

jr_005_4640:
    pop de
    ret


Call_005_4642:
    push bc
    push de
    push hl
    ld d, a
    ld e, $00
    call Call_005_45ed
    add c
    ld c, a
    cp $3d
    jr c, jr_005_4666

    ld a, [$c425]
    or a
    jr z, jr_005_4662

    ld a, c
    cp $79
    jr c, jr_005_4666

    ld c, $79
    ld e, $01
    jr jr_005_4666

jr_005_4662:
    ld c, $3d
    ld e, $01

jr_005_4666:
    ld a, d
    call Call_005_45fb
    call Call_005_5cc7
    jr nz, jr_005_467c

    ld a, d
    call Call_005_491e
    ld b, a
    ld a, d
    call Call_005_4a43
    ld a, d
    call Call_005_4942

jr_005_467c:
    ld a, e
    or a
    jr z, jr_005_4681

    scf

jr_005_4681:
    pop hl
    pop de
    pop bc
    ret


Call_005_4685:
    push bc
    push de
    ld e, a
    ld c, $00
    call Call_005_45fb
    ld a, e
    call Call_005_49d1
    pop de
    pop bc
    ret


Call_005_4694:
    call Call_005_49ac
    ret


    jr nz, jr_005_470d

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, jr_005_46a1

jr_005_46a1:
    jr nz, jr_005_4709

    ld l, a
    ld [hl], d
    nop
    jr nz, jr_005_46c8

    jr nz, jr_005_46ca

    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_005_46e3

    nop
    jr nz, jr_005_46d5

    jr nz, jr_005_46d7

    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_005_46f1

    nop
    jr nz, jr_005_46e2

    jr nz, jr_005_46e4

    ld b, [hl]
    ld l, c
    ld h, [hl]
    ld [hl], h

jr_005_46c8:
    ld h, l
    ld h, l

jr_005_46ca:
    ld l, [hl]
    nop
    jr nz, jr_005_46ee

    jr nz, jr_005_4724

    ld l, b
    ld l, c
    ld [hl], d
    ld [hl], h
    ld a, c

jr_005_46d5:
    jr nz, jr_005_4726

jr_005_46d7:
    ld l, [hl]
    ld h, l
    nop
    jr nz, jr_005_46fc

    jr nz, jr_005_46fe

    jr nz, jr_005_4700

    ld d, b
    ld h, c

jr_005_46e2:
    ld l, c

jr_005_46e3:
    ld [hl], d

jr_005_46e4:
    nop
    jr nz, jr_005_4707

    jr nz, jr_005_4739

    ld h, c
    ld l, c
    ld [hl], d
    jr nz, jr_005_4740

jr_005_46ee:
    ld l, a
    ld a, c
    ld h, c

jr_005_46f1:
    ld l, h
    nop
    ld b, h
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, @+$52

    ld h, c

jr_005_46fc:
    ld l, c
    ld [hl], d

jr_005_46fe:
    jr nz, jr_005_4752

jr_005_4700:
    ld l, a
    ld a, c
    ld h, c
    ld l, h
    nop
    jr nz, @+$22

jr_005_4707:
    jr nz, @+$22

jr_005_4709:
    jr nz, jr_005_472b

    ld d, d
    ld [hl], l

jr_005_470d:
    ld l, [hl]
    nop
    jr nz, jr_005_4731

    jr nz, jr_005_4733

    jr nz, jr_005_4735

    ld c, d
    ld h, c
    ld h, e
    ld l, e
    nop
    jr nz, jr_005_473c

    jr nz, jr_005_473e

    jr nz, jr_005_4740

    jr nz, jr_005_4769

    ld l, a
    nop

jr_005_4724:
    jr nz, @+$22

jr_005_4726:
    jr nz, jr_005_4748

    jr nz, jr_005_4770

    ld l, h

jr_005_472b:
    ld [hl], l
    ld [hl], e
    ld l, b
    nop
    jr nz, @+$22

jr_005_4731:
    jr nz, jr_005_4753

jr_005_4733:
    ld c, b
    ld l, c

jr_005_4735:
    ld [hl], e
    jr nz, jr_005_4786

    ld l, a

jr_005_4739:
    ld h, d
    ld [hl], e
    nop

Call_005_473c:
jr_005_473c:
    push bc
    push de

jr_005_473e:
    push hl
    push af

jr_005_4740:
    ld a, a
    add a
    add a
    add a
    ld hl, $c3b1
    push af

jr_005_4748:
    add l
    ld l, a
    jr nc, jr_005_474d

    inc h

jr_005_474d:
    pop af
    pop af
    ld de, $0002

jr_005_4752:
    add hl, de

jr_005_4753:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    pop hl
    pop de
    pop bc
    ret


Call_005_4763:
    push bc
    push hl
    push af
    ld a, a
    add a
    add a

jr_005_4769:
    add a
    ld hl, $c3b1
    push af
    add l
    ld l, a

jr_005_4770:
    jr nc, jr_005_4773

    inc h

jr_005_4773:
    pop af
    pop af
    ld bc, $0002
    add hl, bc
    ld [hl], d
    inc hl
    ld [hl], e
    pop hl
    pop bc
    ret


Call_005_477f:
    push bc
    push hl
    push af
    ld a, a
    add a
    add a
    add a

jr_005_4786:
    ld hl, $c3b1
    push af
    add l
    ld l, a
    jr nc, jr_005_478f

    inc h

jr_005_478f:
    pop af
    pop af
    ld bc, $0002
    add hl, bc
    ld d, [hl]
    inc hl
    ld e, [hl]
    pop hl
    pop bc
    ret


Call_005_479b:
    push bc
    ld b, $00
    ld c, b
    cp $80
    jr c, jr_005_47a6

    inc c
    cpl
    inc a

jr_005_47a6:
    or a
    jr z, jr_005_47b6

    inc b
    cp $06
    jr c, jr_005_47b6

    sla b
    cp $14
    jr c, jr_005_47b6

    sla b

jr_005_47b6:
    ld a, b
    srl c
    jr nc, jr_005_47bd

    cpl
    inc a

jr_005_47bd:
    pop bc
    ret


Call_005_47bf:
    push bc
    push de
    push hl
    push de
    pop bc
    ld h, a
    call Call_005_477f

jr_005_47c8:
    ld a, b
    sub d
    call Call_005_479b
    add d
    ld d, a
    ld a, c
    sub e
    call Call_005_479b
    add e
    ld e, a
    ld a, h
    call Call_005_4763
    call Call_005_4859
    ld a, d
    cp b
    jr nz, jr_005_47c8

    ld a, e
    cp c
    jr nz, jr_005_47c8

    pop hl
    pop de
    pop bc
    ret


Call_005_47e9:
    push hl
    push af
    ld a, a
    add a
    add a
    add a
    ld hl, $c3b1
    push af
    add l
    ld l, a
    jr nc, jr_005_47f8

    inc h

jr_005_47f8:
    pop af
    pop af
    bit 0, [hl]
    jr z, jr_005_4802

    ld a, $02
    or [hl]
    ld [hl], a

jr_005_4802:
    pop hl
    ret


Call_005_4804:
    push hl
    push af
    ld a, a
    add a
    add a
    add a
    ld hl, $c3b1
    push af
    add l
    ld l, a
    jr nc, jr_005_4813

    inc h

jr_005_4813:
    pop af
    pop af
    bit 0, [hl]
    jr z, jr_005_481f

    ld a, $02
    xor $ff
    and [hl]
    ld [hl], a

jr_005_481f:
    pop hl
    ret


Call_005_4821:
    push de
    push hl
    ld hl, $c3b1
    ld de, $0008
    xor a

jr_005_482a:
    bit 0, [hl]
    jr z, jr_005_4837

    add hl, de
    inc a
    cp $08
    jr c, jr_005_482a

    scf
    jr jr_005_4841

jr_005_4837:
    ld e, a
    ld a, $01
    ld [hl], a
    ld a, e
    call Call_005_473c
    ld a, e
    or a

jr_005_4841:
    pop hl
    pop de
    ret


Call_005_4844:
    push hl
    push af
    ld a, a
    add a
    add a
    add a
    ld hl, $c3b1
    push af
    add l
    ld l, a
    jr nc, jr_005_4853

    inc h

jr_005_4853:
    pop af
    pop af
    xor a
    ld [hl], a
    pop hl
    ret


Call_005_4859:
    push bc
    push de
    push hl
    rst $10
    call Call_000_0ad5
    ld de, $c3b1
    ld b, $00

jr_005_4865:
    ld a, [de]
    bit 0, a
    jr z, jr_005_487e

    bit 1, a
    jr z, jr_005_487e

    push bc
    push de
    push af
    ld a, $02
    add e
    ld e, a
    jr nc, jr_005_4878

    inc d

jr_005_4878:
    pop af
    call Call_000_0add
    pop de
    pop bc

jr_005_487e:
    push af
    ld a, $08
    add e
    ld e, a
    jr nc, jr_005_4886

    inc d

jr_005_4886:
    pop af
    inc b
    ld a, b
    cp $08
    jr c, jr_005_4865

    call Call_000_0b1b
    pop hl
    pop de
    pop bc
    ret


Call_005_4894:
    push bc
    push de
    push hl
    call Call_000_0ad5
    call Call_000_0b1b
    pop hl
    pop de
    pop bc
    ret


Call_005_48a1:
    push bc
    ld b, $08

jr_005_48a4:
    ld a, b
    dec a
    call Call_005_4844
    dec b
    jr nz, jr_005_48a4

    call Call_005_4859
    pop bc
    ret


    push bc
    ld b, $08

jr_005_48b4:
    ld a, b
    dec a
    call Call_005_4844
    dec b
    jr nz, jr_005_48b4

    call Call_005_4859
    pop bc
    ret


Call_005_48c1:
    push af
    push bc
    push de
    ld e, a

jr_005_48c5:
    ld a, e
    call Call_005_4804
    call Call_005_4859
    push bc
    ld b, c

jr_005_48ce:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_005_48ce

    pop bc
    ld a, e
    call Call_005_47e9
    call Call_005_4859
    push bc
    ld b, c

jr_005_48de:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_005_48de

    pop bc
    dec b
    jr nz, jr_005_48c5

    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    ld e, a
    dec c

jr_005_48f1:
    ld a, e
    call Call_005_47e9
    call Call_005_4859
    push bc
    ld b, c

jr_005_48fa:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_005_48fa

    pop bc
    ld a, e
    call Call_005_4804
    call Call_005_4859
    push bc
    ld b, c

jr_005_490a:
    push bc
    rst $10
    pop bc
    dec b
    jr nz, jr_005_490a

    pop bc
    dec b
    jr nz, jr_005_48f1

    pop de
    pop bc
    pop af
    ret


    push af
    jp $c3f6


    inc bc
    inc b

Call_005_491e:
    push hl
    ld hl, $4918
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_4929

    inc h

jr_005_4929:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    pop hl
    ret


Call_005_4930:
    push hl
    ld hl, $4918
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_493b

    inc h

jr_005_493b:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], b
    pop hl
    ret


Call_005_4942:
    push hl
    ld hl, $4918
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_494d

    inc h

jr_005_494d:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $01
    sub [hl]
    ld [hl], a
    pop hl
    ret


Call_005_4957:
    push bc
    push de
    push hl
    ld e, a
    ld d, b
    ld hl, $491c
    push af
    add l
    ld l, a
    jr nc, jr_005_4965

    inc h

jr_005_4965:
    pop af
    ld a, [hl]
    add a
    ld hl, $4b7b
    push af
    add l
    ld l, a
    jr nc, jr_005_4971

    inc h

jr_005_4971:
    pop af
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_005_4821
    jr c, jr_005_49a1

    ld b, a
    call Call_005_47e9
    ld hl, $c3f1
    ld a, e
    add a
    add d
    push af
    add l
    ld l, a
    jr nc, jr_005_498a

    inc h

jr_005_498a:
    pop af
    ld [hl], b
    ld c, $00
    ld a, d
    or a
    jr nz, jr_005_499c

    ld c, $3d
    ld a, [$c425]
    or a
    jr z, jr_005_499c

    ld c, $79

jr_005_499c:
    ld a, e
    ld b, d
    call Call_005_4a29

jr_005_49a1:
    pop hl
    pop de
    pop bc
    ret


Call_005_49a5:
    call Call_005_49c1
    call Call_005_4844
    ret


Call_005_49ac:
    push bc
    ld b, a
    xor a
    ld [$c437], a
    ld a, b
    push af
    ld b, $00
    call Call_005_49a5
    pop af
    ld b, $01
    call Call_005_49a5
    pop bc
    ret


Call_005_49c1:
    push hl
    add a
    add b
    ld hl, $c3f1
    push af
    add l
    ld l, a
    jr nc, jr_005_49cd

    inc h

jr_005_49cd:
    pop af
    ld a, [hl]
    pop hl
    ret


Call_005_49d1:
    push bc
    push de
    ld e, a
    ld a, $01
    ld [$c437], a
    ld a, e
    ld b, $00
    call Call_005_4930
    ld a, e
    call Call_005_491e
    ld b, a
    ld a, e
    call Call_005_4957
    ld a, e
    call Call_005_4942
    ld a, e
    call Call_005_491e
    ld b, a
    ld a, e
    call Call_005_4957
    ld a, e
    call Call_005_4942
    pop de
    pop bc
    ret


Call_005_49fc:
    push bc
    push hl
    add a
    ld e, a
    ld d, $00
    ld a, [$c425]
    or a
    jr z, jr_005_4a10

    ld a, c
    cp $3d
    jr c, jr_005_4a10

    sub $3c
    ld c, a

jr_005_4a10:
    ld b, d
    ld hl, $4a7b
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $4a7f
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld e, [hl]
    pop af
    ld d, a
    pop hl
    pop bc
    ret


Call_005_4a29:
    push hl
    push de
    push af
    call Call_005_49fc
    pop af
    add a
    add b
    ld hl, $c3f1
    push af
    add l
    ld l, a
    jr nc, jr_005_4a3b

    inc h

jr_005_4a3b:
    pop af
    ld a, [hl]
    call Call_005_4763
    pop de
    pop hl
    ret


Call_005_4a43:
    push hl
    push de
    push af
    call Call_005_49fc
    pop af
    add a
    add b
    ld hl, $c3f1
    push af
    add l
    ld l, a
    jr nc, jr_005_4a55

    inc h

jr_005_4a55:
    pop af
    ld a, $04
    call Call_000_0579
    push bc
    ld a, [hl]
    ld b, $03
    ld c, $05
    call Call_005_48c1
    pop bc
    ld a, [hl]
    call Call_005_47bf
    ld a, $04
    call Call_000_0579
    push bc
    ld a, [hl]
    ld b, $03
    ld c, $05
    call Call_005_48c1
    pop bc
    pop de
    pop hl
    ret


    rst $38
    ld c, d
    add e
    ld c, d
    dec a
    ld c, e
    pop bc
    ld c, d
    ld [$130e], sp
    jr jr_005_4aa5

    ld [hl+], a
    daa
    inc l
    ld sp, $3b36
    ld b, b
    ld b, l
    ld c, d
    ld c, a
    ld d, h
    ld e, c
    ld e, [hl]
    ld h, e
    ld l, b
    ld l, l
    ld [hl], d
    ld [hl], a
    ld a, h
    add c
    add [hl]
    adc e
    sub b
    sub l
    sbc d
    sbc a
    sbc a
    sbc d
    sub l

jr_005_4aa5:
    sub b
    adc e
    add [hl]
    add c
    ld a, h
    ld [hl], a
    ld [hl], d
    ld l, l
    ld l, b
    ld h, e
    ld e, [hl]
    ld e, c
    ld d, h
    ld c, a
    ld c, d
    ld b, l
    ld b, b
    dec sp
    ld [hl], $31
    inc l
    daa
    ld [hl+], a
    dec e
    jr jr_005_4ad2

    ld c, $08
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a

jr_005_4ad2:
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld [$130e], sp
    jr jr_005_4b21

    ld [hl+], a
    daa
    inc l
    ld sp, $3b36
    ld b, b
    ld b, l
    ld c, d
    ld c, a
    ld d, h
    ld e, c
    ld e, [hl]
    ld h, e
    ld l, b
    ld l, l
    ld [hl], d
    ld [hl], a
    ld a, h
    add c
    add [hl]
    adc e
    sub b
    sub l
    sbc d
    sbc a
    sbc a
    sbc d
    sub l

jr_005_4b21:
    sub b
    adc e
    add [hl]
    add c
    ld a, h
    ld [hl], a
    ld [hl], d
    ld l, l
    ld l, b
    ld h, e
    ld e, [hl]
    ld e, c
    ld d, h
    ld c, a
    ld c, d
    ld b, l
    ld b, b
    dec sp
    ld [hl], $31
    inc l
    daa
    ld [hl+], a
    dec e
    jr jr_005_4b4e

    ld c, $08
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e

jr_005_4b4e:
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
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
    ld d, d
    rst $28
    ld c, e
    push af
    ld c, e
    ei
    ld c, e
    ld bc, $044c
    ld c, h
    rlca
    ld c, h
    rrca
    ld c, h
    rla
    ld c, h
    rra
    ld c, h
    daa
    ld c, h
    cpl
    ld c, h
    scf
    ld c, h
    ccf
    ld c, h
    ld b, a
    ld c, h
    ld c, a
    ld c, h
    ld d, a
    ld c, h
    ld e, a
    ld c, h
    ld h, a
    ld c, h
    ld l, a
    ld c, h
    ld [hl], a
    ld c, h
    ld a, a
    ld c, h
    add a
    ld c, h
    adc a
    ld c, h
    sub a
    ld c, h
    sbc a
    ld c, h
    and a
    ld c, h
    xor a
    ld c, h
    or a
    ld c, h
    cp a
    ld c, h
    rst $00
    ld c, h
    rst $08
    ld c, h
    rst $10
    ld c, h
    rst $18
    ld c, h
    rst $20
    ld c, h
    rst $28
    ld c, h
    rst $30
    ld c, h
    rst $38
    ld c, h
    rlca
    ld c, l
    rrca
    ld c, l
    rla
    ld c, l
    rra
    ld c, l
    daa
    ld c, l
    cpl
    ld c, l
    scf
    ld c, l
    ccf
    ld c, l
    ld b, a
    ld c, l
    ld c, a
    ld c, l
    ld d, a
    ld c, l
    ld e, a
    ld c, l
    ld h, a
    ld c, l
    ld l, a
    ld c, l
    ld [hl], a
    ld c, l
    ld a, a
    ld c, l
    add a
    ld c, l
    adc a
    ld c, l
    sub a
    ld c, l
    sbc a
    ld c, l
    and a
    ld c, l
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    dec e
    ld e, $02
    ld [bc], a
    ld h, b
    ld h, c
    ld [hl], c
    ld [hl], d
    ld [bc], a
    ld [bc], a
    ld h, d
    ld h, e
    ld [hl], e
    ld [hl], h
    ld bc, $6401
    ld bc, $6501
    ld [bc], a
    inc bc
    ld h, [hl]
    ld h, a
    ld [hl], l
    db $76
    ld a, d
    ld a, e
    ld [bc], a
    inc bc
    ld l, b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    ld a, l
    ld [bc], a
    inc bc
    ld l, d
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    ld a, [hl]
    ld [bc], a
    inc bc
    ld l, e
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    ld a, a
    ld [bc], a
    inc bc
    ld l, h
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    add b

Call_005_4c2f:
    ld [bc], a
    inc bc
    ld l, l
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    add c
    ld [bc], a
    inc bc
    ld l, [hl]
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    add d
    ld [bc], a
    inc bc
    ld l, a
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    add e
    ld [bc], a
    inc bc
    ld [hl], b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    add h
    ld [bc], a
    inc bc
    add l
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    adc l
    ld [bc], a
    inc bc
    add [hl]
    ld l, c
    ld [hl], a
    ld a, b
    adc [hl]
    adc a
    ld [bc], a
    inc bc
    add a
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    sub b
    ld [bc], a
    inc bc
    adc b
    ld l, c
    ld [hl], a
    adc e
    ld a, h
    sub c
    ld [bc], a
    inc bc
    adc c
    ld l, c
    ld [hl], a
    ld a, b
    ld a, h
    sub d
    ld [bc], a
    inc bc
    ld l, b
    adc d
    adc h
    ld a, b
    sub e
    ld a, l
    ld [bc], a
    inc bc
    ld l, d
    adc d
    adc h
    ld a, b
    sub e
    ld a, [hl]
    ld [bc], a
    inc bc
    ld l, e
    adc d
    adc h
    ld a, b
    sub e
    ld a, a
    ld [bc], a
    inc bc
    ld l, h
    adc d
    adc h
    ld a, b
    sub e
    add b
    ld [bc], a
    inc bc
    ld l, l
    adc d
    adc h
    ld a, b
    sub e
    add c
    ld [bc], a
    inc bc
    ld l, [hl]
    adc d
    adc h
    ld a, b
    sub e
    add d
    ld [bc], a
    inc bc
    ld l, a
    adc d
    adc h
    ld a, b
    sub e
    add e
    ld [bc], a
    inc bc
    ld [hl], b
    adc d
    adc h
    ld a, b
    sub e
    add h
    ld [bc], a
    inc bc
    add l
    adc d
    adc h
    ld a, b
    sub e
    adc l
    ld [bc], a
    inc bc
    add [hl]
    adc d
    adc h
    ld a, b
    sub h
    adc a
    ld [bc], a
    inc bc
    add a
    adc d
    adc h
    ld a, b
    sub e
    sub b
    ld [bc], a
    inc bc
    adc b
    adc d
    adc h
    adc e
    sub e
    sub c
    ld [bc], a
    inc bc
    adc c
    adc d
    adc h
    ld a, b
    sub e
    sub d
    ld [bc], a
    inc bc
    ld l, b
    sub l
    sub a
    ld a, b
    sbc b
    ld a, l
    ld [bc], a
    inc bc
    ld l, d
    sub l
    sub a
    ld a, b
    sbc b
    ld a, [hl]
    ld [bc], a
    inc bc
    ld l, e
    sub l
    sub a
    ld a, b
    sbc b
    ld a, a
    ld [bc], a
    inc bc
    ld l, h
    sub l
    sub a
    ld a, b
    sbc b
    add b
    ld [bc], a
    inc bc
    ld l, l
    sub l
    sub a
    ld a, b
    sbc b
    add c
    ld [bc], a
    inc bc
    ld l, [hl]
    sub l
    sub a
    ld a, b
    sbc b
    add d
    ld [bc], a
    inc bc
    ld l, a
    sub l
    sub a
    ld a, b
    sbc b
    add e
    ld [bc], a
    inc bc
    ld [hl], b
    sub l
    sub a
    ld a, b
    sbc b
    add h
    ld [bc], a
    inc bc
    add l
    sub l
    sub a
    ld a, b
    sbc c
    adc l
    ld [bc], a
    inc bc
    add [hl]
    sub l
    sub a
    ld a, b
    sbc d
    adc a
    ld [bc], a
    inc bc
    add a
    sub l
    sub a
    ld a, b
    sbc b
    sub b
    ld [bc], a
    inc bc
    adc b
    sub l
    sub a
    adc e
    sbc b
    sub c
    ld [bc], a
    inc bc
    adc c
    sub l
    sub a
    ld a, b
    sbc b
    sub d
    ld [bc], a
    inc bc
    ld l, b
    sub [hl]
    sub a
    ld a, b
    sbc e
    ld a, l
    ld [bc], a
    inc bc
    ld l, d
    sub [hl]
    sub a
    ld a, b
    sbc e
    ld a, [hl]
    ld [bc], a
    inc bc
    ld l, e
    sub [hl]
    sub a
    ld a, b
    sbc e
    ld a, a
    ld [bc], a
    inc bc
    ld l, h
    sub [hl]
    sub a
    ld a, b
    sbc e
    add b
    ld [bc], a
    inc bc
    ld l, l
    sub [hl]
    sub a
    ld a, b
    sbc e
    add c
    ld [bc], a
    inc bc
    ld l, [hl]
    sub [hl]
    sub a
    ld a, b
    sbc e
    add d
    ld [bc], a
    inc bc
    ld l, a
    sub [hl]
    sub a
    ld a, b
    sbc e
    add e
    ld [bc], a
    inc bc
    ld [hl], b
    sub [hl]
    sub a
    ld a, b
    cp e
    add h
    ld [bc], a
    inc bc
    add l
    sub [hl]
    sub a
    ld a, b
    sbc e
    adc l
    ld [bc], a
    inc bc
    add [hl]
    sub [hl]
    sub a
    ld a, b
    cp h
    adc a
    ld [bc], a
    inc bc
    add a
    sub [hl]
    sub a
    ld a, b
    sbc e
    sub b
    ld [bc], a
    inc bc
    adc b
    sub [hl]
    sub a
    adc e
    sbc e
    sub c
    ld [bc], a
    inc bc
    adc c
    sub [hl]
    sub a
    ld a, b
    sbc e
    sub d
    ld b, b

jr_005_4db0:
    ld [bc], a
    rst $28
    nop
    sbc h
    sbc l
    sbc l
    sbc l
    sbc l
    sbc l
    sbc [hl]
    sbc a
    sbc l
    and b
    nop
    nop
    db $10
    and c
    sbc l
    and d
    ld l, d
    sub [hl]
    ld l, e
    sub [hl]
    ld l, h
    sub [hl]
    ld l, l
    sub [hl]
    ld l, [hl]
    sub [hl]
    ld l, a
    sub [hl]
    and e
    nop
    nop
    nop
    nop
    nop
    and h
    and l
    nop
    nop
    and [hl]
    sub a
    ld a, b
    sub a
    ld a, b
    sbc e
    ld a, [hl]
    sbc e
    ld a, a
    sbc e
    add b
    sbc e
    add c
    sbc e
    add d
    sbc e
    add e
    ld [hl], b
    sub [hl]
    add l
    sub [hl]
    add [hl]
    sub [hl]
    add a
    sub [hl]
    adc b
    sub [hl]
    adc c
    sub [hl]
    and e
    and a
    xor b
    xor c
    xor d
    xor e
    and h
    inc h
    ld b, l
    ld b, e
    ld c, e
    and l
    jr nc, jr_005_4db0

    xor l
    xor [hl]
    xor a
    or b
    ld [de], a
    adc e
    sub a
    ld a, b
    or c
    or d
    or d
    or d
    or e
    or d
    or h
    or l
    or d
    or d
    or [hl]
    or a
    or d
    cp b
    or d
    or d
    cp c
    or d
    or d
    cp d
    cp e
    add h
    sbc e
    adc l
    cp h
    adc a
    sbc e
    sub b
    sbc e
    sub c
    sbc e
    sub d
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c3be

    call nz, $c6c5
    rst $00
    cp a
    ret z

    ret


    jp nz, $bfca

    ret nz

    set 1, h
    call $cfce
    ret nc

    pop de
    call $cfd2
    db $d3
    call nc, $cecd
    push de
    db $d3
    pop de
    sub $ce
    rst $08
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    reti


    sbc $db
    rst $18
    ldh [$d9], a
    jp c, $dfe1

    db $dd
    ld [c], a
    jp c, $e3db

    db $e4
    push hl
    and $e7
    add sp, -$17
    push hl
    ld [$eceb], a
    db $ed
    xor $e6
    rst $28
    ldh a, [$e9]
    pop af
    and $e7
    ld a, [c]
    di
    db $f4
    db $f4
    db $f4
    push af
    db $f4
    db $f4
    or $f4
    db $f4
    rst $30
    db $f4
    db $f4
    ld hl, sp-$0c
    db $f4
    ld sp, hl
    db $f4
    db $f4
    ld a, [$a100]
    sbc l
    sbc l
    and d
    and [hl]
    ld de, $fb30
    db $fc
    db $fd
    cp $fe
    cp $fe
    rst $38
    ld l, $89
    ld b, e
    adc b
    cp b
    ld e, c
    ld a, l
    rrca
    add e
    ld b, b
    add hl, bc
    ld hl, $04c0
    sub l
    ld [hl], e
    jr nc, jr_005_4ed6

    ld d, a
    ld l, h
    rra
    ld e, c
    add h
    dec a
    ld b, c
    ld hl, $e80d
    inc h
    ld hl, $04c5
    add h
    add hl, sp
    and b
    sbc l

jr_005_4ec4:
    ld e, l
    ld [hl], b

jr_005_4ec6:
    ld b, $0d
    add a
    xor [hl]
    and c
    add e
    ld b, a
    jr nc, jr_005_4ed5

    ld l, a
    ld a, e
    and b
    sbc [hl]
    dec h
    cpl

jr_005_4ed5:
    ld [de], a

jr_005_4ed6:
    xor c
    ld [c], a
    ld d, c
    ld c, h
    adc h
    dec bc
    ld a, d
    add hl, de
    rst $18
    dec b
    jr nz, jr_005_4ec4

    jr jr_005_4ec6

    inc b
    ld [c], a
    ld l, [hl]
    inc d
    ld [de], a
    nop
    db $10
    ld d, b
    inc b
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
    jr jr_005_4f45

    inc e
    jr jr_005_4f4c

    db $10
    ld e, $3c
    jr nc, jr_005_4f6d

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

jr_005_4f45:
    ld a, h
    ld a, $3c
    jr c, @+$1a

    inc a
    inc a

jr_005_4f4c:
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

jr_005_4f6d:
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

jr_005_4f8c:
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
    jr nc, jr_005_4f8c

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
    jr c, jr_005_5008

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

jr_005_5008:
    ld a, [hl]
    ld a, [hl]
    ccf
    jr nc, jr_005_503d

    jr nc, jr_005_5027

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

jr_005_5020:
    jr nc, jr_005_5020

    ld hl, sp-$04
    ldh a, [$ec]
    ld h, [hl]

jr_005_5027:
    nop
    ld [hl], b
    ld [hl], b
    add $c6
    ld h, e
    call c, $eedc
    ldh [$60], a
    add $0c
    inc c
    jr nc, jr_005_506f

    ld a, $38
    ld a, [hl]
    db $76
    rst $38
    db $76

jr_005_503d:
    db $76
    dec sp
    nop
    db $10
    db $10
    jr z, jr_005_507c

    jr c, jr_005_506e

    jr c, jr_005_5070

    jr c, jr_005_5072

    ld a, a
    ld l, a
    cp a
    ld [$aaf5], a
    add b
    add b
    inc e

jr_005_5053:
    ld [hl+], a
    ld a, $22
    ld e, l
    ld h, e
    ld a, [hl]
    ld b, c
    cp a
    ret nz

    rst $38
    add b
    db $fd
    add d
    and b
    ld [hl], b
    ld d, b
    jr c, jr_005_508d

    jr @-$1e

    jr c, jr_005_5053

    sub l
    push de
    xor d
    ld [bc], a
    xor a

jr_005_506e:
    ld d, d

jr_005_506f:
    ld d, a

jr_005_5070:
    xor d
    ld a, a

jr_005_5072:
    ld a, a
    add b
    add b
    sbc h
    sbc h
    and d
    and d
    cp [hl]
    cp [hl]
    and d

jr_005_507c:
    and d
    and d
    and d
    add b
    add b
    db $fc
    db $fc
    ld [bc], a
    ld [bc], a
    inc hl
    ld [hl+], a
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld a, [$fa73]

jr_005_508d:
    ld [hl], e
    cp [hl]
    cp h
    add d
    add d
    cp [hl]
    sbc h
    and b
    and b
    cp [hl]
    cp [hl]
    add b
    cp [hl]
    add [hl]
    add h
    sbc [hl]
    sbc [hl]
    cp h
    adc h
    adc h
    sub h
    sub h
    and h
    and h
    cp [hl]
    cp [hl]
    add h
    add h
    cp h
    sbc h
    add d
    add d
    add [hl]
    add h
    adc h
    adc b
    sbc b
    sub b
    rst $18
    and b
    rst $38
    add b
    cp $81
    cp a
    pop bc
    ld e, l
    ld h, e
    ld a, $22
    inc e
    ld [hl+], a
    rst $10
    xor d
    cp $ab
    ld a, a
    ld a, e
    ld c, $0a
    ld c, $0a
    ld c, $0a
    ld a, [bc]
    ld c, $04
    inc b
    nop
    nop
    sbc h
    sbc h
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add b
    nop
    add b
    nop
    ccf
    nop
    rst $38
    ld [bc], a
    rst $38
    db $fc
    cp $00
    sbc h
    adc b
    sbc h
    cp [hl]
    sbc h
    cp [hl]
    sbc h
    sbc h
    adc b
    adc b
    ccf
    nop
    adc e
    adc d
    adc e
    adc d
    ei
    ld a, [$8a8b]
    ld [hl], e
    ld [hl], d
    inc bc
    ei
    ld a, [$0a0b]
    ei
    ld [hl], d
    add e
    add d
    ei
    ld a, d
    ld a, d
    add e
    add d
    di
    ld a, [c]
    jp $fb42


    ld a, [$4b43]
    ld c, d
    ld d, e
    ld d, d
    ld h, e
    ld h, d
    ei
    ld [hl], d
    ld a, d
    inc sp
    ld [de], a
    ld h, e
    ld [hl+], a
    jp $af42


    and [hl]
    xor c
    xor c
    xor c
    xor a
    and [hl]
    sbc [hl]
    sbc [hl]
    add h
    add h
    add h
    add h
    and h
    and h
    cp h
    sbc b
    xor d
    and d
    and [hl]
    and [hl]
    sbc [hl]
    sbc h
    add d
    add d
    and h
    and h
    xor b
    xor b
    or b
    or b
    xor b
    xor b
    and h
    and h
    inc hl
    ld [hl], d
    ei
    ld a, [$fafb]
    inc hl
    ld [hl+], a
    add e
    add d
    adc b
    adc b
    ld a, [c]
    sbc l
    adc b
    sbc l
    cp a
    sbc l
    cp a
    sbc l
    sbc l
    adc c
    db $eb
    jp z, Jump_000_2a2b

    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    db $eb
    jp z, Jump_000_327b

    ld c, e
    ld c, d
    ld b, e
    ld b, d
    ld b, e
    ld b, d
    di
    ld a, [c]
    di
    ld [hl], d
    set 1, d
    xor e
    ld c, e
    ld c, d
    dec hl
    ld a, [hl+]
    dec de
    ld a, [de]
    dec hl
    ld a, [hl+]
    ld c, e
    ld c, d
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    adc b
    sbc h
    sbc h
    cp a
    cp [hl]
    cp a
    cp a
    adc c
    sbc l
    sbc l
    sbc l
    sbc l
    ld d, e
    ld d, d
    adc e
    adc d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    xor e
    xor d
    sub h
    sub h
    and d
    and d
    sub h
    sub h
    ld a, a
    nop
    adc c
    adc b
    sub l
    sub l
    and e
    and e
    sub l
    sub l
    xor d
    xor d
    sub h
    sub h
    rrca
    rrca
    db $10
    db $10
    db $10
    stop
    pop hl
    pop hl
    ld [de], a
    ld [de], a
    ld a, [de]
    ld [de], a
    ld a, [de]
    sub b
    sub b
    ret nc

    sub b
    ret nc

    inc b
    inc b
    db $fc
    ld hl, sp+$04
    ld [bc], a
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    jr nc, jr_005_51f9

    ccf
    ccf
    jr nc, jr_005_51fd

    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ldh [$e0], a
    db $10
    db $10
    jr jr_005_51e7

    jr @+$03

    ld bc, $0303
    inc bc
    ld bc, $0001
    nop
    ldh a, [$f0]
    ld hl, sp+$00
    add e
    inc bc

jr_005_51e7:
    add e
    inc bc
    di
    di
    ld sp, hl
    nop
    nop
    ld [hl], e
    ld [hl], e
    cp e
    add e
    jp $b881


    jr nc, jr_005_5235

    ld a, $bf

jr_005_51f9:
    inc sp
    cp e
    inc sp
    cp e

jr_005_51fd:
    inc sp
    cp a
    ld a, $9f
    ld [hl], b
    ld h, b
    ld [hl], a
    ld h, a
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, e
    ld [hl], a
    ld h, [hl]
    ld [hl], e
    ld h, e
    ld sp, $f766
    and $f3
    ld h, e
    pop af
    ldh [$f7], a
    rlca

jr_005_5217:
    ld h, e
    ld [hl], a
    ld h, a
    rst $30
    ld b, $e7
    and $f3
    ld [hl], b
    db $10
    db $10
    rrca
    rrca
    ld a, a
    ld a, a
    xor d

jr_005_5227:
    add b
    call nc, $aa81
    rst $38
    rst $38
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    add b
    ld d, l
    nop

jr_005_5235:
    ld a, [hl+]
    add b
    ld a, [de]
    ld [de], a
    ld sp, hl
    pop hl
    ldh a, [$aa]
    nop
    dec d
    ld b, b
    adc d
    jr nz, jr_005_5298

    nop
    adc d
    jr nz, jr_005_5217

    sub b
    rst $08
    rrca
    add a
    ld b, l
    db $10
    and d
    ld [$0055], sp
    and d
    ld [$1018], sp
    ld hl, sp-$20
    ld hl, sp-$08
    xor h
    inc b
    ld d, [hl]
    ld b, $ae
    ld b, $ab
    xor e
    sub l
    call c, $ba99
    sbc b
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld e, l
    jr jr_005_5227

jr_005_526d:
    jr @-$27

    add $ee
    add $75
    ld sp, $b13b
    db $dd
    adc h
    xor [hl]
    adc h
    dec e
    ld e, b
    cp d
    jr jr_005_526d

    ld h, h
    ld d, l
    ld d, h
    ld b, h
    xor $46
    ld [hl], l
    ld sp, $31bb
    ld d, l
    nop
    ld [$ff4a], a
    xor d
    xor [hl]
    and h
    push af
    db $e4
    xor [hl]
    and h
    db $dd
    adc h
    adc [hl]

jr_005_5298:
    xor h
    db $ec
    rst $18
    adc d
    adc $ea
    ld [$18ba], a
    ld [hl], l
    inc h
    xor d
    ld [$1055], sp
    cp [hl]
    inc a
    rst $00
    sub $ee
    add $77
    ld h, e
    db $e3
    ld l, e
    ld [hl], a
    ld [hl], $bf
    ld [hl], $57
    ld b, $af
    ld b, $d4
    add c

jr_005_52bb:
    cp d
    sbc b
    call c, $8099
    xor d
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    nop
    cp d
    jr @+$5f

    jr jr_005_52bb

    add $d7
    add $3b
    or c
    ld [hl], l
    ld sp, $8cae
    db $dd
    adc h
    dec d
    ld b, b
    cp d
    jr jr_005_52fa

    ld e, b
    cp e
    ld sp, $3175
    adc [hl]
    xor h
    db $dd
    adc h
    ld b, l
    db $10
    xor $c6
    rst $00
    sub $e3
    ld l, e
    ld [hl], a
    ld h, e
    nop
    xor d
    ld d, a
    ld b, $bf
    ld [hl], $77
    ld [hl], $07
    xor [hl]

jr_005_52fa:
    add b
    push de
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    rlca
    ld d, [hl]
    ld [hl], l
    ld h, h
    cp $54
    ld [hl], l
    ld h, h
    xor $44
    ld d, a
    ld b, [hl]
    ld e, a
    ld c, d
    xor d
    xor d

jr_005_5314:
    push af
    and h
    xor $e4
    push af
    and h
    db $fd
    db $ec
    adc d
    xor d

Call_005_531e:
    db $dd
    call z, $aa8a
    rst $38
    ld [$208a], a
    ld e, l
    ld [$aa08], sp
    ld [$1c5d], sp
    ccf
    rrca
    nop
    db $fc
    rst $38
    nop
    cp $ce
    adc $67
    ld b, $c7
    ld h, [hl]
    ld a, a
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
    jr nc, jr_005_5314

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
    jp z, Jump_005_587a

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
    jr c, jr_005_5465

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
    jp $64fa


    ld a, l

jr_005_5437:
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
    jr c, jr_005_5470

    ld l, c
    pop bc
    inc [hl]
    ld a, b
    ld l, a
    jr z, jr_005_5437

    pop bc
    or l
    add h
    pop hl
    add c
    or c
    inc bc
    ld d, b
    call c, Call_005_723b
    ret nz

    ld b, a
    dec b

jr_005_5465:
    scf
    ld l, [hl]
    call c, Call_005_4c2f
    ret


    adc h
    ld [hl], b
    add b
    ld c, l
    ld b, [hl]

jr_005_5470:
    dec de

jr_005_5471:
    call nz, Call_005_7ee4
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
    jr c, jr_005_5524

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
    jr nc, jr_005_5471

    ld [bc], a
    inc b
    adc h
    pop af
    ld [de], a
    sbc [hl]
    inc d
    inc de
    rst $00
    rlca
    inc l
    inc h
    db $eb
    ld [hl], b
    ld [hl], b
    ld a, h
    cp c
    add c
    ld a, c
    ld hl, $2030
    ld b, c
    and $43
    call $9806
    ld hl, $a1f3
    rst $20
    add d
    ld d, c
    db $f4
    xor a
    and b
    ld [$365c], sp
    ld a, [$1f8a]
    ld d, e
    ld e, [hl]
    xor [hl]
    ld [$574f], sp
    daa
    xor d
    adc a
    ld e, l
    ld bc, $86ea
    db $f4
    dec [hl]

jr_005_5524:
    db $ec
    db $e4
    add b
    or $f2
    ld a, e
    xor b
    rst $30
    ld d, b
    ld c, d
    ld a, b
    reti


    inc a
    inc h
    inc b
    ld bc, $24f2
    inc hl
    call z, Call_005_7d82
    ld h, b
    di
    and b
    sbc a
    ld l, b
    inc a

jr_005_5540:
    ld [hl], b
    sbc a
    ld [hl], d
    add hl, bc
    ccf
    nop
    ld a, [hl]
    ld bc, $fc20
    add c
    ld sp, hl
    inc b
    ld a, [$18a0]
    ld l, h
    inc hl
    db $ec
    add b
    ld b, b
    ld e, $fe
    inc h
    ld a, a
    db $76
    jp nz, Jump_005_687f

    ld h, b
    ld a, a
    call nc, $fe16
    ld a, [c]
    ld l, a
    call nc, $fc06
    ld c, $ff
    inc hl
    dec de
    jp hl


    ld e, e
    pop af
    inc e
    dec c
    inc b
    sbc h
    add hl, bc
    inc e
    dec c
    inc bc
    jp nz, $c109

    ld c, b
    xor $00
    cp e
    ld e, h
    sbc e
    db $76
    adc h
    inc a
    inc sp
    ld b, a
    dec bc
    pop bc
    add hl, bc
    jp $6d70


    ld [$7140], sp
    nop
    ld b, d
    ld l, l
    inc e
    dec de
    ld c, [hl]
    db $10
    dec de
    pop bc
    ld hl, $b81b
    ld hl, $f21b
    scf
    ld [$40c0], sp

jr_005_55a0:
    rst $28
    sub d
    jr nc, jr_005_5540

    ld l, l
    inc b
    daa
    rra
    ld b, c
    ld c, $fa
    dec sp
    db $ec
    inc h
    daa
    inc hl
    ld b, c
    ld l, $f8
    call c, Call_000_0475
    rrca
    daa
    inc hl
    or h
    add b
    ld c, c
    push bc
    ld [hl], c
    jp z, Jump_000_0781

    dec hl
    add hl, bc
    add $02
    inc e
    ld h, [hl]
    ld [de], a
    ld l, a
    sub b
    sbc h
    ret nz

    ld hl, $c709
    ld b, d
    ld [hl], e
    jr nz, @+$12

    ld [hl], e
    ld d, h
    dec de
    and l
    inc b
    inc a
    db $e4
    ld e, b
    ld h, a
    adc [hl]
    inc b
    jr z, jr_005_55a0

    ld [hl], e
    db $d3
    adc $02
    ld b, e
    rst $08
    call z, $e861
    ld b, [hl]
    or a
    ld c, h
    inc bc
    adc $f2
    ld c, e
    pop de
    ld c, a
    add hl, sp
    add hl, bc
    pop de
    add d
    ld [hl], e
    call nc, Call_000_201d
    rlca
    ld c, c
    rlca
    ccf
    ld b, c
    jp nc, $7480

    or b
    ld [hl], h
    ld d, h
    dec e
    jr nc, jr_005_560f

    ld c, l
    inc b
    dec a
    add hl, sp
    ld [hl], h
    add sp, $48

jr_005_560f:
    ld [hl], l
    ld [$d341], sp
    call nc, $439d
    or [hl]
    cp c
    ld a, [c]
    dec sp
    add hl, bc
    add c
    cp h
    db $db
    pop de
    ld hl, $ab23
    ld a, d
    ld b, b
    push af
    and b
    ld e, l
    ld h, h
    rst $00
    ld e, e
    ld c, $a1
    rst $28
    ld e, d
    sbc l
    ld [hl], h
    jp $08d1


    db $dd
    ld e, l
    cp l
    add b
    db $10
    ld [hl], l
    cp [hl]
    ld c, e
    ret c

    ld b, [hl]
    inc b
    ld bc, $c126
    rst $20
    ld h, h
    ld c, c
    dec bc
    reti


    jr z, jr_005_5674

    dec e
    and a
    add hl, bc
    dec bc
    jp c, $8c28

    db $76
    db $fc
    inc h
    daa
    ld l, b
    add h
    rlca
    ld [hl], $08
    ld [hl], e
    inc a
    sub e
    call $c1c8
    ret c

    pop hl
    sbc $a1
    sbc $c1
    rlca
    ld l, a
    add a
    ld a, h
    add a
    ld a, l
    inc b
    dec e
    ld a, [c]
    add hl, bc
    rlca
    ld a, [hl]
    add d
    ld b, c
    reti


    pop hl

jr_005_5674:
    ldh [$a1], a
    ldh [$c1], a
    rlca
    add b
    add d
    ld b, c
    jp c, $e1e1

    and c
    pop hl
    pop bc
    ldh [rP1], a
    ld b, c
    ld [c], a
    inc [hl]
    dec hl
    ld [c], a
    inc h
    ld e, $33
    rst $00
    ld a, h
    ld bc, $dc29
    ld h, c
    db $e4
    ld hl, $41e4
    ld [c], a
    add b
    ld a, b
    ld c, h
    inc b
    dec e
    adc $1e
    ld d, d
    ld e, $54
    db $10
    ld e, $5a
    ld e, $5c
    ld [de], a
    ld [hl], a
    xor h
    sub b
    ld e, $4b
    dec h
    and $7c
    ld e, $6b
    add hl, bc
    rlca
    sbc h
    jp nz, $e041

    or d
    ld a, c
    db $fc
    ld b, c
    rst $20
    or b
    ld [de], a
    ld a, b
    ld l, h
    sbc [hl]
    add a
    db $10
    ld a, c
    db $ec
    inc h
    dec e
    or l
    rlca
    and a
    add h
    sbc [hl]
    ld b, e
    daa
    and a
    call nz, Call_005_531e
    inc h
    rlca
    sub [hl]
    ret


    rlca
    sbc b
    ret


    and $10
    ld b, a
    and [hl]
    ret


    and $90
    ld a, e
    jr nz, jr_005_56ea

    sbc h
    ld b, c
    db $ed
    nop
    ld e, $79
    inc b

jr_005_56ea:
    ld a, d
    inc c
    sbc [hl]
    add c
    rlca
    or [hl]
    nop
    ld a, d
    inc h
    ld e, $e8
    ld e, $94
    rlca
    and h
    ld b, c
    xor $80
    ld e, $99
    inc b
    ld a, d
    adc h
    sbc [hl]
    and c
    rlca
    cp [hl]
    rlca
    xor e
    ld bc, $90ea
    ld b, a
    xor h
    ret


jr_005_570d:
    db $eb
    db $10
    ld b, a
    xor [hl]
    ret


    db $eb
    sub b
    ld [hl], a
    xor b
    daa
    ld a, d
    rlca
    sub d
    adc b
    ld [hl], a
    call nz, Call_005_7802
    inc l
    rlca
    add d
    ld bc, $90f3
    ld e, $10
    ld e, $1a
    add hl, bc
    pop hl
    add c
    add hl, bc
    di
    ret nc

    ld b, d
    ld a, c
    inc e
    ld [de], a
    ld e, $30
    ld de, $54ed
    ccf
    dec l
    rlca
    sub b
    add d
    ld a, c
    nop
    ld a, b
    ld [$9287], sp
    ld b, a
    sub h
    ret nz

    ld sp, hl
    ld b, e
    push hl
    and b
    sbc [hl]
    ld e, b
    rra
    ld [hl+], a
    rlca
    ld a, c
    sub e
    ret c

    and c
    ld hl, sp+$20
    ld [hl], a
    dec h
    call c, $729f
    add a
    ret nc

    add c
    ld a, [$1f30]
    ld d, d
    rlca
    add sp, -$3e
    ld a, h
    inc c
    ld a, [hl]
    call z, $de07
    add c
    ei
    jr nc, jr_005_570d

    adc e
    rra
    jp $f901


    jr nz, jr_005_57df

    push af
    rlca
    di
    or b
    and $e2
    push hl
    call nc, $861d
    ld a, [de]
    jr nc, jr_005_57c8

    db $76
    jr c, @+$6d

    dec e
    adc b
    ld h, $0e
    ld b, b
    di
    xor h
    cpl
    ld [hl], h
    add hl, bc
    rst $38
    ld b, d
    ld b, b
    ld b, d
    nop
    ld a, [hl-]
    ld bc, $0000
    nop
    nop
    ld de, $9828
    ret


    ld h, d
    ld l, e
    call Call_005_4202
    ret


    push bc
    push de
    push hl
    ld l, e
    ld h, d
    ld a, [$c47a]
    or a
    jr z, jr_005_57d5

    ld a, [$c3fb]
    ld b, a
    ld a, [$c479]
    cp $ff
    jr nz, jr_005_57c0

    xor a
    ld [$c3fb], a
    jr jr_005_57c8

jr_005_57c0:
    ld a, $01
    ld [$c3fb], a
    ld a, [$c479]

jr_005_57c8:
    call Call_005_4202
    call Call_005_41d6
    call Call_005_40ff
    ld a, b
    ld [$c3fb], a

jr_005_57d5:
    pop hl
    pop de
    pop bc
    ret


    push de
    push hl
    ld a, [$c47a]
    or a

jr_005_57df:
    jr z, jr_005_57e9

    ld l, e
    ld h, d
    call Call_005_4202
    call Call_005_4106

jr_005_57e9:
    pop hl
    pop de
    ret


Call_005_57ec:
    push bc
    push de
    push hl
    call Call_005_4057
    xor a
    ld [$c47a], a
    ld a, $ff
    ld [$c479], a
    ld hl, $c438
    ld de, $9828
    call Call_005_437a
    ld de, $57a4
    call Call_005_4320
    ld de, $57d9
    call Call_005_432c
    ld de, $579a
    call Call_005_4308
    ld de, $579e
    call Call_005_4314
    ld b, $00

jr_005_581e:
    ld a, b
    call Call_005_42b3
    inc b
    ld a, b
    and $0f
    cp $0d
    jr c, jr_005_581e

    ld a, b
    and $30
    add $10
    ld b, a
    cp $40
    jr c, jr_005_581e

    ld a, $01
    ld [$c47a], a
    call Call_005_4338
    call Call_005_406f
    pop hl
    pop de
    pop bc
    ret


Call_005_5843:
    push hl
    ld hl, $c438
    call Call_005_4359
    xor a
    ld [$c47a], a
    ld a, $ff
    ld [$c479], a
    call Call_005_43a6
    pop hl
    ret


Call_005_5858:
    push hl
    ld hl, $c438
    call Call_005_41a8
    call Call_000_14ae
    pop hl
    ret


Call_005_5864:
    push bc
    push hl
    call Call_005_5858
    ld b, a
    ld hl, $c438
    call Call_005_41d6
    ld c, a
    ld a, b
    call Call_005_4257
    ld a, c
    pop hl
    pop bc
    ret


Call_005_5879:
    push hl

Jump_005_587a:
    ld hl, $c438
    call Call_005_42bf
    pop hl
    ret


Call_005_5882:
    push bc
    push de
    push hl
    call Call_005_5858
    ld [$c479], a
    ld hl, $c438
    call Call_005_4338
    ld a, [$c479]
    call Call_005_41d6
    call Call_005_414a
    cp $0a
    jr nz, jr_005_58b7

    ld a, [$c479]
    call Call_005_423e
    ld a, [$c479]
    call Call_005_41d6
    call Call_005_4402
    ld a, [$c4ca]
    ld b, $08
    ld c, $02
    call Call_005_6467

jr_005_58b7:
    pop hl
    pop de
    pop bc
    ret


Call_005_58bb:
    push hl
    ld a, [$c479]
    ld hl, $c438
    call Call_005_41d6
    pop hl
    ret


Call_005_58c7:
    push hl
    ld a, $ff
    ld [$c479], a
    ld hl, $c438
    call Call_005_4338
    pop hl
    ret


Call_005_58d5:
    push hl
    ld hl, $c438
    call Call_005_4338
    pop hl
    ret


Call_005_58de:
    push hl
    ld hl, $c438
    call Call_005_4359
    pop hl
    ret


    and h
    call nz, $c4b7
    and c
    sbc c
    inc l
    sbc b

Call_005_58ef:
    add a
    ld hl, $58e7
    push af
    add l
    ld l, a
    jr nc, jr_005_58f9

    inc h

jr_005_58f9:
    pop af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_005_58fe:
    push bc
    push de
    push hl
    ld b, a
    add a
    ld hl, $58eb
    push af
    add l
    ld l, a
    jr nc, jr_005_590c

    inc h

jr_005_590c:
    pop af
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    call Call_005_58ef
    call Call_005_7192
    ld a, b
    call Call_005_4194
    ld a, b
    call Call_005_4685
    ld a, b
    call Call_005_457b
    ld a, b
    call Call_005_45c2
    ld a, b
    add a
    ld hl, $c4cc
    push af
    add l
    ld l, a
    jr nc, jr_005_5932

    inc h

jr_005_5932:
    pop af
    ld de, $6517
    ld a, [$c338]
    or a
    jr nz, jr_005_5943

    ld a, b
    or a
    jr z, jr_005_5943

    ld de, $681a

jr_005_5943:
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    pop bc
    ret


Call_005_594a:
    push bc
    push de
    push hl
    ld b, a
    call Call_005_58ef
    call Call_005_71aa
    ld a, b
    call Call_005_4694
    ld a, b
    call Call_005_45c2
    ld a, b
    call Call_005_45b4
    pop hl
    pop de
    pop bc
    ret


Call_005_5964:
    ld a, $00
    ld [$c427], a
    ld a, [$c3b0]
    call Call_005_58fe
    call Call_005_59be
    ld a, [$c3b0]
    call Call_005_58fe
    call Call_005_59be
    ret


Call_005_597c:
    ld a, [$c3b0]
    call Call_005_594a
    call Call_005_59be
    ld a, [$c3b0]
    call Call_005_594a
    call Call_005_59be
    ret


Call_005_598f:
    push hl
    call Call_005_58ef
    call Call_005_41a8
    pop hl
    ret


Call_005_5998:
    push hl
    call Call_005_58ef
    ld a, b
    call Call_005_42bf
    pop hl
    ret


Call_005_59a2:
    push hl
    call Call_005_58ef
    ld a, b
    call Call_005_41d6
    pop hl
    ret


Call_005_59ac:
    push bc
    push hl
    call Call_005_58ef
    ld a, b
    call Call_005_41d6
    ld c, a
    ld a, b
    call Call_005_4257
    ld a, c
    pop hl
    pop bc
    ret


Call_005_59be:
    push af
    push bc
    ld a, [$c3b0]
    ld b, a
    ld a, $01
    sub b
    ld [$c3b0], a
    pop bc
    pop af
    ret


    push af
    push bc
    ld a, [$c4ca]
    ld b, a
    ld a, $01
    sub b
    ld [$c4ca], a
    pop bc
    pop af
    ret


Call_005_59dc:
    push bc
    push de
    push hl
    ld c, a
    add a
    ld hl, $c4cc
    push af
    add l
    ld l, a
    jr nc, jr_005_59ea

    inc h

jr_005_59ea:
    pop af
    ld a, $01
    ld [$c42c], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_005_4894
    push hl
    ld de, $0000
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    call Call_005_5a04
    jr jr_005_5a05

Call_005_5a04:
    jp hl


jr_005_5a05:
    ld a, $01
    ld [$c427], a
    ld a, c
    call Call_005_5a94
    pop hl
    call Call_005_4859
    ld de, $0002
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, c
    call Call_005_5a20
    jr jr_005_5a21

Call_005_5a20:
    jp hl


jr_005_5a21:
    call Call_005_5cd0
    pop hl
    jr c, jr_005_5a3f

    push hl
    ld b, a
    ld a, c
    call Call_005_614b
    pop hl
    ld a, c
    call Call_005_5a34
    jr jr_005_5a35

Call_005_5a34:
    jp hl


jr_005_5a35:
    call Call_005_5cd0
    jr c, jr_005_5a3f

    ld b, a
    ld a, c
    call Call_005_614b

jr_005_5a3f:
    pop hl
    pop de
    pop bc
    ret


Call_005_5a43:
    push bc
    push de
    push hl
    ld c, a
    add a
    ld hl, $c4cc
    push af
    add l
    ld l, a
    jr nc, jr_005_5a51

    inc h

jr_005_5a51:
    pop af
    xor a
    ld [$c42c], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_005_4894
    push hl
    ld de, $0004
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    call Call_005_5a6a
    jr jr_005_5a6b

Call_005_5a6a:
    jp hl


jr_005_5a6b:
    ld a, $01
    ld [$c427], a
    ld a, c
    call Call_005_5a94
    pop hl
    call Call_005_4859
    ld de, $0006
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    call Call_005_5a85
    jr jr_005_5a86

Call_005_5a85:
    jp hl


jr_005_5a86:
    call Call_005_5cd0
    jr c, jr_005_5a90

    ld b, a
    ld a, c
    call Call_005_6177

jr_005_5a90:
    pop hl
    pop de
    pop bc
    ret


Call_005_5a94:
    push de
    push hl
    call Call_005_58ef
    xor a
    call Call_005_4338
    pop hl
    pop de
    ret


Call_005_5aa0:
    push de
    push hl
    call Call_005_58ef
    xor a
    call Call_005_4359
    pop hl
    pop de
    ret


Call_005_5aac:
    xor a
    call Call_005_5a94
    ld a, $01
    call Call_005_5a94
    ret


Call_005_5ab6:
    xor a
    call Call_005_5aa0
    ld a, $01
    call Call_005_5aa0
    ret


Call_005_5ac0:
    push bc
    push de
    push hl
    call Call_005_58ef
    call Call_005_41a8
    ld c, a
    ld d, $ff
    ld e, $0b
    ld b, $00
    jr jr_005_5ae3

jr_005_5ad2:
    ld a, b
    call Call_005_41d6
    call Call_005_4152
    cp e
    jr nc, jr_005_5ae2

    ld e, a
    ld a, b
    call Call_005_41d6
    ld d, a

jr_005_5ae2:
    inc b

jr_005_5ae3:
    ld a, b
    cp c
    jr c, jr_005_5ad2

    ld a, d
    pop hl
    pop de
    pop bc
    ret


Call_005_5aec:
    push hl
    xor a
    call Call_005_58ef
    call Call_005_41a8
    or a
    jr nz, jr_005_5b00

    ld a, $01
    call Call_005_58ef
    call Call_005_41a8
    or a

jr_005_5b00:
    pop hl
    ret


Call_005_5b02:
    push de
    push hl
    xor a
    ld [$c48c], a
    ld hl, $c47b
    ld de, $9821
    call Call_005_7192
    ld a, $02
    call Call_005_4194
    pop hl
    pop de
    ret


    push hl
    ld a, $01
    ld [$c48c], a
    xor a
    ld hl, $c47b
    call Call_005_4338
    pop hl
    ret


    push hl
    xor a
    ld [$c48c], a
    xor a
    ld hl, $c47b
    call Call_005_4338
    pop hl
    ret


Call_005_5b36:
    push hl
    ld hl, $c47b
    call Call_005_71aa
    pop hl
    ret


Call_005_5b3f:
    push hl
    ld hl, $c47b
    call Call_005_42bf
    pop hl
    ret


Call_005_5b48:
    push bc
    push hl
    ld hl, $c47b
    ld b, a
    call Call_005_41d6
    ld c, a
    ld a, b
    call Call_005_4257
    ld a, c
    pop hl
    pop bc
    ret


Call_005_5b5a:
    push hl
    ld hl, $c47b
    call Call_005_41a8
    pop hl
    ret


Call_005_5b63:
    push hl
    ld hl, $c47b
    xor a
    call Call_005_4338
    pop hl
    ret


Call_005_5b6d:
    push hl
    ld hl, $c47b
    xor a
    call Call_005_4359
    pop hl
    ret


    push bc
    ld c, a
    ld a, [$c3fb]
    ld b, a
    ld a, [$c4a3]
    ld [$c3fb], a
    ld a, c
    call Call_005_43b2
    ld a, b
    ld [$c3fb], a
    call Call_005_5bfe
    call Call_005_5c23
    pop bc
    ret


Call_005_5b93:
    push de
    push hl
    ld a, $01
    ld [$c4a3], a
    ld hl, $c48d
    ld de, $998a
    call Call_005_437a
    ld de, $5b77
    call Call_005_4320
    xor a
    ld [$c4a2], a
    pop hl
    pop de
    ret


Call_005_5bb0:
    push hl
    ld hl, $c48d
    call Call_005_43a6
    pop hl
    ret


Call_005_5bb9:
    push bc
    push hl
    sla b
    srl a
    rr b
    ld a, b
    ld hl, $c48d
    call Call_005_42b3
    pop hl
    pop bc
    ret


Call_005_5bcb:
    push de
    push hl
    ld e, a
    ld hl, $c48d
    call Call_005_41d6
    ld b, a
    ld a, e
    call Call_005_4257
    xor a
    sla b
    rl a
    srl b
    pop hl
    pop de
    ret


Call_005_5be3:
    push hl
    ld hl, $c48d
    call Call_005_41a8
    pop hl
    ret


Call_005_5bec:
    push hl
    ld hl, $c48d
    call Call_005_4338
    pop hl
    ret


Call_005_5bf5:
    push hl
    ld hl, $c48d
    call Call_005_4359
    pop hl
    ret


Call_005_5bfe:
    push bc
    push de
    push hl
    ld hl, $c48d
    call Call_005_41a8
    ld c, a
    ld b, $00
    ld e, b
    jr jr_005_5c17

jr_005_5c0d:
    ld a, b
    call Call_005_41d6
    call Call_005_4152
    add e
    ld e, a
    inc b

jr_005_5c17:
    ld a, b
    cp c
    jr c, jr_005_5c0d

    ld a, e
    ld [$c4a2], a
    pop hl
    pop de
    pop bc
    ret


Call_005_5c23:
    push bc
    push de
    push hl
    call Call_005_5cc7
    jr nz, jr_005_5c47

    rst $10
    ld a, [$c4a2]
    ld l, a
    ld h, $00
    ld de, $c415
    call Call_000_0ff9
    ld hl, $c415
    call Call_000_103f
    ld hl, $c418
    ld de, $996e
    call Call_000_0fed

jr_005_5c47:
    pop hl
    pop de
    pop bc
    ret


Call_005_5c4b:
    push hl
    ld hl, $c48d
    call Call_005_41a8
    or a
    jr nz, jr_005_5c59

    ld a, $ff
    jr jr_005_5c5d

jr_005_5c59:
    dec a
    call Call_005_41d6

jr_005_5c5d:
    pop hl
    ret


Call_005_5c5f:
    push hl
    xor a
    ld [$c4a3], a
    ld hl, $c48d
    call Call_005_4338
    ld a, $01
    ld [$c4a3], a
    call Call_005_42f2
    xor a
    call Call_005_4338
    pop hl
    ret


Call_005_5c78:
    push hl
    ld hl, $c48d
    call Call_005_42ed
    xor a
    call Call_005_4338
    pop hl
    ret


Call_005_5c85:
    call Call_005_5aac
    call Call_005_5bec
    call Call_005_5b63
    call Call_005_58d5
    ret


    call Call_005_5ab6
    call Call_005_5bf5
    call Call_005_5b6d
    call Call_005_58de
    ret


Call_005_5c9f:
    push bc
    ld b, a
    cp $ff
    jr z, jr_005_5cb0

    call Call_005_4152
    ld c, a
    call Call_005_5bfe
    add c
    cp $20
    ld a, b

jr_005_5cb0:
    pop bc
    ret


Call_005_5cb2:
    push bc
    ld b, a
    call Call_005_598f
    or a
    jr nz, jr_005_5cbd

    xor a
    jr jr_005_5cc4

jr_005_5cbd:
    ld a, b
    call Call_005_5ac0
    call Call_005_5c9f

jr_005_5cc4:
    ld a, b
    pop bc
    ret


Call_005_5cc7:
    push bc
    ld b, a
    ld a, [$c428]
    or a
    ld a, b
    pop bc
    ret


Call_005_5cd0:
    push bc
    ld b, a
    ld a, [$c426]
    or a
    jr z, jr_005_5ce7

    cp $02
    jr z, jr_005_5ce6

    cp $03
    jr z, jr_005_5ce6

    ld a, [$c428]
    or a
    jr nz, jr_005_5ce7

jr_005_5ce6:
    scf

jr_005_5ce7:
    ld a, b
    pop bc
    ret


Call_005_5cea:
    xor a
    ld [$c428], a
    ld a, [$c4cb]
    ld [$c4ca], a
    push bc
    ld b, a
    ld a, $01
    sub b
    ld [$c4cb], a
    pop bc
    call Call_005_4494
    call Call_005_57ec
    call Call_005_5b02
    call Call_005_5b93
    call Call_005_5964
    ret


Call_005_5d0d:
    call Call_005_597c
    call Call_005_5bb0
    call Call_005_5b36
    call Call_005_5843
    call Call_005_449c
    ret


Call_005_5d1d:
    ld a, $00
    ld [$c427], a
    call Call_005_58c7
    ld a, [$c4ca]
    ld [$c3b0], a
    call Call_005_59be
    push bc
    call Call_005_6136
    ld b, $02

jr_005_5d34:
    ld a, [$c3b0]
    call Call_005_59dc
    call Call_005_5cd0
    jr c, jr_005_5d50

    ld a, $00
    ld [$c427], a
    call Call_005_5aac
    call Call_005_59be
    dec b
    jr nz, jr_005_5d34

    call Call_005_5882

jr_005_5d50:
    pop bc
    ret


Call_005_5d52:
    jr jr_005_5d71

jr_005_5d54:
    ld a, [$c3b0]
    call Call_005_5a43
    call Call_005_5cd0
    jr c, jr_005_5d82

    ld a, $00
    ld [$c427], a
    call Call_005_5aac
    call Call_005_59be
    call Call_005_5bfe
    cp $1f
    jr z, jr_005_5d82

jr_005_5d71:
    ld a, [$c3b0]
    call Call_005_5cb2
    jr c, jr_005_5d54

    call Call_005_59be
    call Call_005_5d83
    call Call_005_59be

jr_005_5d82:
    ret


Call_005_5d83:
    ld a, [$c3b0]
    call Call_005_63e8
    jr jr_005_5d9d

jr_005_5d8b:
    ld a, [$c3b0]
    call Call_005_5a43
    call Call_005_5cd0
    jr c, jr_005_5db9

    call Call_005_5bfe
    cp $1f
    jr z, jr_005_5db9

jr_005_5d9d:
    ld a, [$c3b0]
    call Call_005_5cb2
    jr c, jr_005_5d8b

    ld a, $00
    ld [$c427], a
    call Call_005_5aac
    push bc
    ld a, [$c3b0]
    ld b, $01
    ld c, $01
    call Call_005_6467
    pop bc

jr_005_5db9:
    ret


Call_005_5dba:
    call Call_005_5d1d
    call Call_005_5cd0
    jr c, jr_005_5dda

jr_005_5dc2:
    call Call_005_5c5f
    call Call_005_5d52
    call Call_005_5cd0
    jr c, jr_005_5dda

    call Call_005_5aec
    jr nz, jr_005_5dc2

    call Call_005_61c1
    call Call_005_5dde
    jr jr_005_5ddd

jr_005_5dda:
    call Call_005_61c1

jr_005_5ddd:
    ret


Call_005_5dde:
    ld a, $03
    ld [$c427], a
    call Call_005_5c85
    ld a, [$c4ca]
    ld [$c3b0], a
    call Call_005_58bb
    or $80
    ld b, a
    ld a, [$c3b0]
    call Call_005_5998
    call Call_005_59be
    call Call_005_58bb
    or $80
    ld b, a
    ld a, [$c3b0]
    call Call_005_5998
    call Call_005_58bb
    or $80
    call Call_005_5b3f
    ld a, [$c3b0]
    call Call_005_71b1
    ld a, [$c3b0]
    call Call_005_58ef
    call Call_005_7174
    call Call_005_5cd0
    jr c, jr_005_5e46

    call Call_005_59be
    ld a, [$c3b0]
    call Call_005_71b1
    ld a, [$c3b0]
    call Call_005_58ef
    call Call_005_7174
    call Call_005_5cd0
    jr c, jr_005_5e46

    ld a, [$c4ca]
    call Call_005_71ec
    ld hl, $c47b
    call Call_005_7174

jr_005_5e46:
    ret


Call_005_5e47:
    push bc
    push de
    ld e, a
    call Call_005_598f
    ld c, a
    inc c
    ld b, $00
    jr jr_005_5e5a

jr_005_5e53:
    ld a, e
    call Call_005_59ac
    call Call_005_5879

jr_005_5e5a:
    dec c
    jr nz, jr_005_5e53

    pop de
    pop bc
    ret


Call_005_5e60:
    push bc
    ld b, $02

jr_005_5e63:
    ld a, [$c3b0]
    call Call_005_5e47
    call Call_005_59be
    dec b
    jr nz, jr_005_5e63

    pop bc
    ret


Call_005_5e71:
    push bc
    call Call_005_5b5a
    ld c, a
    inc c
    jr jr_005_5e80

jr_005_5e79:
    xor a
    call Call_005_5b48
    call Call_005_5879

jr_005_5e80:
    dec c
    jr nz, jr_005_5e79

    pop bc
    ret


Call_005_5e85:
    push bc
    push hl
    jr jr_005_5e8f

jr_005_5e89:
    call Call_005_4010
    call Call_005_402d

jr_005_5e8f:
    ld hl, $6074
    call Call_000_141b
    ld a, $01
    call Call_000_11dc
    ld b, a
    ld a, $01
    sub b
    ld [$c425], a
    ld a, $02
    call Call_000_11dc
    ld [$c4cb], a
    call Call_005_5cea

jr_005_5eac:
    ld a, $00
    ld [$c426], a
    call Call_005_5dba
    ld a, [$c4ca]
    ld b, a
    ld a, $01
    sub b
    ld [$c4ca], a
    call Call_005_58c7
    call Call_005_5e60
    call Call_005_5e71
    call Call_005_5cd0
    jr nc, jr_005_5eac

    ld a, [$c426]
    cp $01
    jr z, jr_005_5edf

    call Call_005_5d0d
    ld a, [$c426]
    cp $02
    jr z, jr_005_5e89

    jr jr_005_5eef

jr_005_5edf:
    call Call_005_5ef2
    call Call_005_5d0d
    ld hl, $60f6
    call Call_000_141b
    cp $01
    jr z, jr_005_5e8f

jr_005_5eef:
    pop hl
    pop bc
    ret


Call_005_5ef2:
    push af
    push bc
    push de
    push hl
    xor a
    ld c, a
    call Call_005_45ed
    ld b, a
    ld a, $01
    call Call_005_45ed
    cp b
    jr nc, jr_005_5f26

    ld a, [$c338]
    or a
    jr nz, jr_005_5f10

jr_005_5f0a:
    inc c
    ld hl, $6004
    jr jr_005_5f3f

jr_005_5f10:
    cp $01
    jr nz, jr_005_5f1a

    inc c
    ld hl, $5f5c
    jr jr_005_5f3f

jr_005_5f1a:
    ld a, [$c303]
    cp $02
    jr z, jr_005_5f0a

jr_005_5f21:
    ld hl, $6042
    jr jr_005_5f3f

jr_005_5f26:
    ld a, [$c338]
    or a
    jr z, jr_005_5f21

    cp $01
    jr nz, jr_005_5f36

    inc c
    ld hl, $5fb0
    jr jr_005_5f3f

jr_005_5f36:
    ld a, [$c303]
    cp $02
    jr z, jr_005_5f21

    jr jr_005_5f0a

jr_005_5f3f:
    ld a, c
    or a
    jr z, jr_005_5f48

    ld a, $03
    call Call_000_05a0

jr_005_5f48:
    call Call_005_4894
    call Call_000_1437
    call Call_005_4859
    ld a, [$c435]
    call Call_000_05a0
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    ld de, $0105
    rlca
    nop
    nop
    nop
    nop
    nop
    ld l, c
    ld e, a
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $8801
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9802
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $a403
    ld e, a
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
    jr nz, jr_005_5fba

    jr nz, jr_005_5fec

    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, jr_005_5fd4

    nop
    jr nz, jr_005_5fc6

    jr nz, jr_005_6001

    ld c, a
    ld d, l
    jr nz, jr_005_6003

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

jr_005_5fba:
    cp l
    ld e, a
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $dc01
    ld e, a

jr_005_5fc6:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ec02
    ld e, a
    nop
    nop
    nop
    nop

jr_005_5fd4:
    nop
    nop
    ld bc, $f803
    ld e, a
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

jr_005_5fec:
    jr nz, jr_005_600e

    jr nz, jr_005_6040

    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, jr_005_6029

    nop
    jr nz, jr_005_601a

    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_005_6057

jr_005_6000:
    ld c, c

jr_005_6001:
    ld c, [hl]
    ld a, [hl]

jr_005_6003:
    nop
    nop
    ld de, HeaderLogo
    rlca
    nop
    nop
    nop
    nop
    nop

jr_005_600e:
    ld de, $0060
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $2601
    ld h, b

jr_005_601a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3602
    ld h, b
    nop
    nop
    ld b, e
    ld c, a
    ld c, [hl]

jr_005_6029:
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
    jr nz, jr_005_6058

    jr nz, jr_005_6093

    ld c, a
    ld d, l
    jr nz, jr_005_6095

    ld c, c
    ld c, [hl]

jr_005_6040:
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
    ld c, a
    ld h, b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $6401

jr_005_6057:
    ld h, b

jr_005_6058:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6b02
    ld h, b
    nop
    nop
    jr nz, jr_005_60b9

    ld c, a
    ld d, d
    ld d, d
    ld e, c
    nop
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$4e

    ld c, a
    ld d, e
    ld b, l
    nop
    nop
    inc d
    rlca
    nop
    dec b
    nop
    nop
    nop
    nop
    jr jr_005_6000

    ld h, b
    ld bc, $0003
    nop
    nop
    nop
    ld b, $01
    xor d
    ld h, b
    nop
    nop
    nop
    nop
    and d
    ld h, b
    ld [bc], a
    inc bc
    or d

jr_005_6093:
    ld h, b
    nop

jr_005_6095:
    ld bc, $0000
    and [hl]
    ld h, b
    ld [bc], a
    inc b
    call nc, JoypadTransitionInterrupt
    ld bc, $60aa
    or d
    ld h, b
    jp $d460


    ld h, b
    push hl
    ld h, b
    ld c, a
    ld d, b
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_005_611d

    ld l, [hl]

jr_005_60b9:
    ld h, h
    ld a, [hl-]
    jr nz, jr_005_60dd

    jr nz, jr_005_60df

    ld sp, $3132
    nop
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_005_612e

    ld l, [hl]
    ld h, h
    ld a, [hl-]
    jr nz, jr_005_60ee

    jr nz, jr_005_60f0

    jr nz, jr_005_6108

    ld sp, $4400
    ld h, l
    ld h, c
    ld l, h
    ld h, l
    ld [hl], d
    ld a, [hl-]
    jr nz, @+$52

jr_005_60dd:
    ld l, h
    ld h, c

jr_005_60df:
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_005_6115

    nop
    ld b, h
    ld h, l
    ld h, c
    ld l, h
    ld h, l
    ld [hl], d
    ld a, [hl-]
    jr nz, @+$52

jr_005_60ee:
    ld l, h
    ld h, c

jr_005_60f0:
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$34

    nop
    nop
    ld c, $07
    inc bc
    dec b
    nop
    nop
    nop
    nop
    jr @+$05

    ld h, c
    ld bc, $0003
    nop
    nop
    nop

jr_005_6108:
    ld bc, $2201
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    cpl

jr_005_6115:
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b

jr_005_611d:
    dec b
    inc sp
    ld h, c
    nop
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_005_6189

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, @+$41

jr_005_612e:
    nop
    ld e, c
    ld b, l
    ld d, e
    nop
    ld c, [hl]
    ld c, a
    nop

Call_005_6136:
    push bc
    ld c, $0c

jr_005_6139:
    call Call_005_5864
    ld b, a
    ld a, [$c3b0]
    call Call_005_5998
    call Call_005_59be
    dec c
    jr nz, jr_005_6139

    pop bc
    ret


Call_005_614b:
    push af
    ld a, $03
    call Call_000_0579
    pop af
    call Call_005_59ac
    call Call_005_5b3f
    ret


    push af
    push bc
    push de
    push hl
    push bc
    rst $10
    pop bc
    ld l, b
    ld h, $00
    ld de, $c415
    call Call_000_0ff9
    ld hl, $c417
    ld de, $9800
    call Call_000_0fed
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_6177:
    push bc
    push af
    ld a, $03
    call Call_000_0579
    pop af
    ld c, a
    call Call_005_59ac
    ld b, a
    ld a, c
    call Call_005_5bb9
    ld a, c

jr_005_6189:
    call Call_005_6c8a
    pop bc
    ret


Call_005_618e:
    push bc
    push de
    push hl
    ld c, a
    ld a, $01
    ld [$c428], a
    call Call_005_58ef
    ld a, b
    call Call_005_41d6
    and $7f
    ld b, a
    ld a, c
    call Call_005_5bb9
    ld a, c
    call Call_005_6c8a
    call Call_005_5bfe
    ld [$c42b], a
    ld a, b
    ld hl, $c48d
    call Call_005_41dd
    call Call_005_5bcb
    xor a
    ld [$c428], a
    pop hl
    pop de
    pop bc
    ret


Call_005_61c1:
    push bc
    call Call_005_5c78
    call Call_005_5be3
    ld c, a
    inc c
    jr jr_005_61d3

jr_005_61cc:
    xor a
    call Call_005_5bcb
    call Call_005_5998

jr_005_61d3:
    dec c
    jr nz, jr_005_61cc

    pop bc
    ret


Call_005_61d8:
    push bc
    push hl
    ld b, a
    ld hl, $0001
    inc b
    jr jr_005_61e2

jr_005_61e1:
    add hl, hl

jr_005_61e2:
    dec b
    jr nz, jr_005_61e1

    ld e, l
    ld d, h
    pop hl
    pop bc
    ret


Call_005_61ea:
    push bc
    ld c, $00
    ld a, e

jr_005_61ee:
    sla a
    jr nc, jr_005_61f3

    inc c

jr_005_61f3:
    or a
    jr nz, jr_005_61ee

    ld a, d

jr_005_61f7:
    sla a
    jr nc, jr_005_61fc

    inc c

jr_005_61fc:
    or a
    jr nz, jr_005_61f7

    ld a, c
    pop bc
    ret


Call_005_6202:
    push bc
    push de
    push hl
    push bc
    push af
    call Call_005_4894
    ld hl, $63df
    ld de, $c34a
    call Call_000_0f98
    ld hl, $c34a
    call Call_000_0f3b
    ld hl, $c34a
    call Call_000_0f7a
    ld a, $02
    call Call_000_0579
    pop af
    ld hl, $62cc
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_622f

    inc h

jr_005_622f:
    pop af
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    ld hl, $c34a
    ld b, $01
    ld c, $01
    call Call_000_10c5
    ld hl, $c34a
    ld b, $01
    ld c, $02
    ld de, $62f4
    call Call_000_10c5
    ld hl, $c34a
    ld b, $0d
    ld c, $02
    ld de, $62fe
    call Call_000_10c5
    pop bc
    push bc
    ld a, b
    add a
    ld hl, $6303
    push af
    add l
    ld l, a
    jr nc, jr_005_6265

    inc h

jr_005_6265:
    pop af
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    ld hl, $c34a
    ld b, $01
    ld c, $03
    call Call_000_10c5
    pop bc
    ld l, c
    ld h, $00
    ld de, $c415
    call Call_000_0ff9
    ld hl, $c415
    call Call_000_103f
    ld hl, $c34a
    ld b, $0a
    ld c, $02
    ld de, $c418
    call Call_000_10c5
    rst $10

jr_005_6292:
    call Call_005_4445
    ld hl, $c34a
    call Call_000_0e09
    and $0f
    jr nz, jr_005_62b3

    ld hl, $c34a
    call Call_000_0e09
    and $0f
    jr nz, jr_005_62b3

    ld hl, $c34a
    call Call_000_0e09
    and $0f
    jr z, jr_005_6292

jr_005_62b3:
    call Call_005_4472
    ld hl, $c34a
    call Call_000_0faf
    call Call_005_4859
    call Call_005_5c85
    jr jr_005_62c7

    scf
    jr jr_005_62c8

jr_005_62c7:
    or a

jr_005_62c8:
    pop hl
    pop de
    pop bc
    ret


    ret nc

    ld h, d
    ld [c], a
    ld h, d
    jr nz, jr_005_62f2

    jr nz, jr_005_62f4

    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_005_630d

    jr nz, jr_005_62fe

    jr nz, jr_005_6300

    jr nz, jr_005_62e2

jr_005_62e2:
    jr nz, jr_005_6304

    jr nz, jr_005_6306

    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_005_6320

    jr nz, jr_005_6310

    jr nz, jr_005_6312

jr_005_62f2:
    jr nz, jr_005_62f4

jr_005_62f4:
    jr nz, jr_005_6316

    ld [hl], e
    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, jr_005_62fe

jr_005_62fe:
    ld h, [hl]
    ld l, a

jr_005_6300:
    ld [hl], d
    jr nz, jr_005_6303

jr_005_6303:
    add hl, de

jr_005_6304:
    ld h, e
    dec hl

jr_005_6306:
    ld h, e
    dec a
    ld h, e
    ld c, a
    ld h, e
    ld h, c
    ld h, e

jr_005_630d:
    ld [hl], e
    ld h, e
    add l

jr_005_6310:
    ld h, e
    sub a

jr_005_6312:
    ld h, e
    xor c
    ld h, e
    cp e

jr_005_6316:
    ld h, e
    call $6e63
    ld h, a
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c

jr_005_6320:
    ld l, [hl]
    ld h, a
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld c, [hl]
    nop
    jr nz, @+$22

    jr nz, jr_005_634f

    jr nz, jr_005_6351

    jr nz, jr_005_637a

    ld c, a
    jr nz, jr_005_6356

    jr nz, jr_005_6358

    jr nz, jr_005_635a

    jr nz, @+$22

    nop
    jr nz, jr_005_635f

    jr nz, jr_005_6395

    ld l, b
    ld l, c
    ld [hl], d
    ld [hl], h
    ld a, c
    jr nz, jr_005_6397

    ld l, [hl]
    ld h, l
    jr nz, @+$22

    jr nz, @+$22

    nop

jr_005_634f:
    jr nz, jr_005_6371

jr_005_6351:
    jr nz, jr_005_6373

    jr nz, jr_005_639b

    ld l, c

jr_005_6356:
    ld h, [hl]
    ld [hl], h

jr_005_6358:
    ld h, l
    ld h, l

jr_005_635a:
    ld l, [hl]
    jr nz, jr_005_637d

    jr nz, jr_005_637f

jr_005_635f:
    jr nz, jr_005_6361

jr_005_6361:
    jr nz, @+$22

    jr nz, jr_005_6385

    jr nz, jr_005_6387

    ld d, b
    ld h, c
    ld l, c
    ld [hl], d
    jr nz, jr_005_638d

    jr nz, jr_005_638f

    jr nz, @+$22

jr_005_6371:
    jr nz, jr_005_6373

jr_005_6373:
    jr nz, jr_005_6395

    jr nz, @+$52

    ld h, c
    ld l, c
    ld [hl], d

jr_005_637a:
    jr nz, @+$54

    ld l, a

jr_005_637d:
    ld a, c
    ld h, c

jr_005_637f:
    ld l, h
    jr nz, @+$22

    jr nz, @+$22

    nop

jr_005_6385:
    ld b, h
    ld l, a

jr_005_6387:
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_005_63dd

jr_005_638d:
    ld h, c
    ld l, c

jr_005_638f:
    ld [hl], d
    jr nz, @+$54

    ld l, a
    ld a, c
    ld h, c

jr_005_6395:
    ld l, h
    nop

jr_005_6397:
    jr nz, @+$22

    jr nz, jr_005_63bb

jr_005_639b:
    jr nz, jr_005_63bd

    jr nz, @+$54

    ld [hl], l
    ld l, [hl]
    jr nz, jr_005_63c3

    jr nz, jr_005_63c5

    jr nz, @+$22

    jr nz, jr_005_63a9

jr_005_63a9:
    jr nz, @+$22

    jr nz, jr_005_63cd

    ld c, b
    ld l, c
    ld [hl], e
    jr nz, @+$4a

    ld h, l
    ld h, l
    ld l, h
    ld [hl], e
    jr nz, jr_005_63d8

    jr nz, @+$22

    nop

jr_005_63bb:
    jr nz, jr_005_63dd

jr_005_63bd:
    jr nz, jr_005_63df

    jr nz, jr_005_63e1

    ld b, [hl]
    ld l, h

jr_005_63c3:
    ld [hl], l
    ld [hl], e

jr_005_63c5:
    ld l, b
    jr nz, jr_005_63e8

    jr nz, jr_005_63ea

    jr nz, jr_005_63ec

    nop

jr_005_63cd:
    jr nz, jr_005_63ef

    jr nz, @+$22

    ld c, b
    ld l, c
    ld [hl], e
    jr nz, jr_005_6424

    ld l, a
    ld h, d

jr_005_63d8:
    ld [hl], e
    jr nz, jr_005_63fb

    jr nz, @+$22

jr_005_63dd:
    jr nz, jr_005_63df

jr_005_63df:
    nop
    inc de

jr_005_63e1:
    dec b
    nop
    ld b, $00
    nop
    nop
    nop

Call_005_63e8:
jr_005_63e8:
    push bc
    push de

jr_005_63ea:
    push hl
    push af

jr_005_63ec:
    call Call_005_4894

jr_005_63ef:
    ld hl, $645e
    ld de, $c34a
    call Call_000_0f98
    ld hl, $c34a

jr_005_63fb:
    call Call_000_0f3b
    ld hl, $c34a
    call Call_000_0f7a
    pop af
    ld hl, $643f
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_640f

    inc h

jr_005_640f:
    pop af
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    ld hl, $c34a
    ld b, $01
    ld c, $01
    call Call_000_10c5
    ld hl, $c34a
    ld de, $6455

jr_005_6424:
    ld b, $01
    ld c, $02
    call Call_000_10c5

jr_005_642b:
    call Call_000_0e09
    and $0f
    jr z, jr_005_642b

    ld hl, $c34a
    call Call_000_0faf
    call Call_005_4859
    pop hl
    pop de
    pop bc
    ret


    ld b, e
    ld h, h
    ld c, h
    ld h, h
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$33

    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$34

    nop
    jr nz, @+$22

    jr nz, @+$49

    ld c, a
    jr nz, @+$22

    jr nz, jr_005_645e

jr_005_645e:
    nop
    ld a, [bc]
    inc b
    dec b
    rlca
    nop
    nop
    nop
    nop

Call_005_6467:
    push bc
    push de
    push hl
    ld e, a
    call Call_005_5cc7
    jr nz, jr_005_6490

    call Call_005_6202
    ld a, e
    jr nc, jr_005_647d

    ld a, $02
    ld [$c426], a
    jr jr_005_648c

jr_005_647d:
    call Call_005_4642
    push af
    call Call_005_4859
    pop af
    jr nc, jr_005_648c

    ld a, $01
    ld [$c426], a

Jump_005_648c:
jr_005_648c:
    pop hl
    pop de
    pop bc
    ret


jr_005_6490:
    ld d, $01
    ld a, b
    or a
    jr jr_005_6499

jr_005_6496:
    sla d
    dec a

jr_005_6499:
    jr nz, jr_005_6496

    ld a, [$c429]
    or d
    ld [$c429], a
    ld a, [$c42a]
    add c
    ld [$c42a], a
    ld a, b
    cp $03
    jr nz, jr_005_64b2

    ld a, $14
    jr jr_005_64de

jr_005_64b2:
    cp $02
    jr nz, jr_005_64ba

    ld a, $1e
    jr jr_005_64de

jr_005_64ba:
    cp $04
    jr nz, jr_005_64c2

    ld a, $14
    jr jr_005_64de

jr_005_64c2:
    cp $05
    jr nz, jr_005_64ca

    ld a, $19
    jr jr_005_64de

jr_005_64ca:
    cp $06
    jr nz, jr_005_64d2

    ld a, $1e
    jr jr_005_64de

jr_005_64d2:
    cp $07
    jr nz, jr_005_64dd

    ld a, c
    add a
    add a
    add a
    add c
    jr jr_005_64de

jr_005_64dd:
    ld a, c

jr_005_64de:
    ld d, a
    push af
    ld a, e
    call Call_005_58ef
    pop af
    push bc
    push de
    ld c, a
    ld de, $c3fc
    ld b, $08

jr_005_64ed:
    rst $10
    ld a, [de]
    inc de
    inc de
    inc de
    cp $ff
    jr z, jr_005_650c

    call Call_005_41dd
    cp $ff
    jr z, jr_005_650c

    push de
    ld de, $c42d
    push af
    add e
    ld e, a
    jr nc, jr_005_6507

    inc d

jr_005_6507:
    pop af
    ld a, [de]
    add c
    ld [de], a
    pop de

jr_005_650c:
    dec b
    jr nz, jr_005_64ed

    pop de
    pop bc
    call Call_005_4472
    jp Jump_005_648c


    ld e, $66
    sub [hl]
    ld h, l
    ld [bc], a
    ld h, [hl]
    sub [hl]
    ld h, l
    ld l, h
    ld h, l

Call_005_6521:
    push bc
    ld c, $a9
    ld a, [$c338]
    cp $02
    jr c, jr_005_6532

    ld a, [$c3b0]
    or a
    jr z, jr_005_6532

    inc c

jr_005_6532:
    ld a, [c]
    pop bc
    ret


Call_005_6535:
    push bc
    push de
    ld b, c
    ld c, a
    call Call_005_598f
    ld d, a

jr_005_653d:
    inc b
    ld a, b
    cp d
    jr c, jr_005_6544

    ld b, $00

jr_005_6544:
    ld a, c
    call Call_005_59a2
    call Call_005_5c9f
    jr nc, jr_005_653d

    ld a, b
    pop de
    pop bc
    ret


Call_005_6551:
    push bc
    push de
    ld b, c
    ld c, a
    call Call_005_598f
    ld d, a

jr_005_6559:
    ld a, b
    or a
    jr nz, jr_005_655e

    ld b, d

jr_005_655e:
    dec b
    ld a, c
    call Call_005_59a2
    call Call_005_5c9f
    jr nc, jr_005_6559

    ld a, b
    pop de
    pop bc
    ret


    push bc
    ld c, a
    ld a, [$c3fb]
    ld b, a
    ld a, [$c427]
    cp $02
    jr nz, jr_005_657b

jr_005_6579:
    ld a, $01

jr_005_657b:
    cp $01
    jr nz, jr_005_6585

    ld a, [$c3b0]
    cp c
    jr z, jr_005_6579

jr_005_6585:
    xor a
    ld [$c3fb], a
    ld a, c
    call Call_005_58ef
    call Call_005_4338
    ld a, b
    ld [$c3fb], a
    pop bc
    ret


    push bc
    push de
    push hl
    ld e, a
    call Call_005_598f
    ld d, a
    ld a, e
    call Call_005_45bb
    ld a, e
    ld c, $ff
    call Call_005_6535
    ld c, a

jr_005_65a9:
    ld a, e
    call Call_005_4563
    call Call_005_4859
    call Call_005_6521
    bit 5, a
    jr z, jr_005_65c3

    ld a, $04
    call Call_000_0579
    ld a, e
    call Call_005_6551
    ld c, a
    jr jr_005_65a9

jr_005_65c3:
    bit 4, a
    jr z, jr_005_65d3

    ld a, $04
    call Call_000_0579
    ld a, e
    call Call_005_6535
    ld c, a
    jr jr_005_65a9

jr_005_65d3:
    bit 3, a
    jr z, jr_005_65f2

    ld hl, $6776
    call Call_000_141b
    jr nc, jr_005_65a9

    cp $01
    jr z, jr_005_65eb

    cp $02
    jr nz, jr_005_65a9

    ld a, $03
    jr jr_005_65ed

jr_005_65eb:
    ld a, $02

jr_005_65ed:
    ld [$c426], a
    jr jr_005_65f6

jr_005_65f2:
    bit 0, a
    jr z, jr_005_65a9

jr_005_65f6:
    ld a, e
    call Call_005_45c2
    call Call_005_4859
    ld a, c
    pop hl
    pop de
    pop bc
    ret


    push af
    ld hl, $663a
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_6610

    inc h

jr_005_6610:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_000_1437
    call Call_005_4859
    ret


    push af
    ld hl, $66d0
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_662c

    inc h

jr_005_662c:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_000_1437
    call Call_005_4859
    ret


    ld a, $66
    add a
    ld h, [hl]
    nop
    db $10
    dec b
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ld c, e
    ld h, [hl]
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc b
    ld bc, $666a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7302
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    add d
    ld h, [hl]
    nop
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_005_66a3

    nop
    ld d, e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_005_66de

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_005_66f4

    ld l, a
    nop
    ld [hl], b
    ld l, h
    ld h, c
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
    sub h
    ld h, [hl]
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc b
    ld bc, $66b3
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_66a3:
    ld bc, $bc02
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    bit 4, [hl]
    nop
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_005_66ed

    nop
    ld d, e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, @+$65

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_005_673d

    ld l, a
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    nop
    call nc, Call_000_2566
    ld h, a
    nop
    ld de, $0105
    ld b, $00
    nop
    nop
    nop
    nop

jr_005_66de:
    pop hl
    ld h, [hl]
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc b
    ld bc, $6700
    nop
    nop
    nop

jr_005_66ed:
    nop
    nop
    nop
    ld bc, $0902
    ld h, a

jr_005_66f4:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    add hl, de
    ld h, a
    nop
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$33

    nop
    ld d, e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_005_6774

    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    jr nz, @+$76

    ld l, a
    nop
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_005_6787

    ld l, [hl]
    jr nz, @+$65

    ld [hl], d
    ld l, c
    ld h, d
    nop
    nop
    ld de, $0105
    ld b, $00
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld h, a
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc b
    ld bc, $6751
    nop
    nop

jr_005_673d:
    nop
    nop
    nop
    nop
    ld bc, $5a02
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld l, d
    ld h, a
    nop
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$34

    nop
    ld d, e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_005_67c5

    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    jr nz, @+$76

    ld l, a
    nop
    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_005_67d5

    ld [hl], d
    ld l, c

jr_005_6774:
    ld h, d
    nop
    nop
    ld [de], a
    rlca
    ld bc, $0005
    nop
    nop
    nop
    nop
    add e
    ld h, a
    ld bc, $0004
    nop
    nop

jr_005_6787:
    nop
    dec b
    ld bc, $67b8
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ret nz

    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ret


    ld h, a
    nop
    nop
    db $fc
    ld h, a
    or d
    ld h, a
    ld [bc], a
    dec b
    rst $08
    ld h, a
    ld bc, $b802
    ld h, a
    ret nz

    ld h, a
    ret


    ld h, a
    rst $08
    ld h, a
    sbc $67
    db $ed
    ld h, a
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
    jr nz, jr_005_682c

jr_005_67c5:
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

jr_005_67d5:
    jr nz, jr_005_67f7

    jr nz, @+$51

    ld b, [hl]
    ld b, [hl]
    jr nz, jr_005_67fd

    nop
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld a, [hl-]
    jr nz, jr_005_683a

    ld l, b
    ld h, l
    ld l, l
    ld h, l
    jr nz, @+$33

    nop
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld a, [hl-]
    jr nz, jr_005_6849

    ld l, b
    ld h, l

jr_005_67f7:
    ld l, l
    ld h, l
    jr nz, @+$34

    nop
    push af

jr_005_67fd:
    push bc
    push de
    push hl
    or a
    jr z, jr_005_680e

    dec a
    jr nz, jr_005_680a

    ld a, $02
    jr jr_005_680f

jr_005_680a:
    ld a, $01
    jr jr_005_680f

jr_005_680e:
    xor a

jr_005_680f:
    ld [$c435], a
    call Call_000_05a0
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld sp, hl
    ld l, d
    call c, $f768
    ld l, d
    call c, Call_000_3868
    ld l, b
    push bc
    ld c, $a9
    ld a, [$c338]
    cp $02

jr_005_682c:
    jr c, jr_005_6835

    ld a, [$c3b0]
    or a
    jr z, jr_005_6835

    inc c

jr_005_6835:
    ld a, [c]
    pop bc
    ret


    push bc
    ld c, a

jr_005_683a:
    ld a, [$c3fb]
    ld b, a
    ld a, [$c427]
    cp $02
    jr nz, jr_005_6847

jr_005_6845:
    ld a, $01

jr_005_6847:
    cp $01

jr_005_6849:
    jr nz, jr_005_6851

    ld a, [$c3b0]
    cp c
    jr z, jr_005_6845

jr_005_6851:
    xor a
    ld [$c3fb], a
    ld a, c
    call Call_005_58ef
    call Call_005_4338
    ld a, b
    ld [$c3fb], a
    pop bc
    ret


Call_005_6862:
    push bc
    push hl
    ld c, a
    call Call_005_58ef
    ld a, b
    call Call_005_41d6
    call Call_005_4152
    cp $04
    jr c, jr_005_68ac

    jr nz, jr_005_6879

    ld a, $0a
    jr jr_005_68ac

jr_005_6879:
    cp $07
    jr nz, jr_005_6891

    ld a, $06

Jump_005_687f:
    call Call_005_44a0
    cp $02
    jr c, jr_005_688e

    ld a, $07
    call Call_005_44a0
    or a
    jr nz, jr_005_68a6

jr_005_688e:
    xor a
    jr jr_005_68ac

jr_005_6891:
    cp $08
    jr nz, jr_005_68aa

    ld a, $07
    call Call_005_44a0
    cp $02
    jr c, jr_005_688e

    ld a, $06
    call Call_005_44a0
    or a
    jr z, jr_005_688e

jr_005_68a6:
    ld a, $0f
    jr jr_005_68ac

jr_005_68aa:
    sub $02

jr_005_68ac:
    pop hl
    pop bc
    ret


Call_005_68af:
    push af
    push bc
    push de
    push hl
    ld hl, $c42d
    ld b, a
    ld c, $00
    ld d, $ff

jr_005_68bb:
    ld a, [hl+]
    cp $80
    jr c, jr_005_68c5

    inc c
    cp d
    jr nc, jr_005_68c5

    ld d, a

jr_005_68c5:
    dec b
    jr nz, jr_005_68bb

    ld a, c
    or a
    jr z, jr_005_68d7

    ld hl, $c42d
    ld b, $08

jr_005_68d1:
    ld a, [hl]
    sub d
    ld [hl+], a
    dec b
    jr nz, jr_005_68d1

jr_005_68d7:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push bc
    push de
    push hl
    ld e, a
    ld [$c436], a
    ld a, $01
    ld [$c428], a
    rst $10
    call Call_005_6aa6
    ld a, [$c42c]
    or a
    jp nz, Jump_005_6a2b

    call Call_005_4057
    call Call_005_5bfe
    or a
    jr nz, jr_005_6915

    ld a, e
    call Call_005_598f
    ld c, a
    ld b, $00
    ld hl, $c42d
    jr jr_005_690e

jr_005_6908:
    ld a, e
    call Call_005_6862
    ld [hl+], a
    inc b

jr_005_690e:
    ld a, b
    cp c
    jr c, jr_005_6908

    jp Jump_005_69b0


jr_005_6915:
    ld a, e
    call Call_005_598f
    ld c, a
    ld b, $00
    jr jr_005_692c

jr_005_691e:
    ld a, e
    call Call_005_59a2
    call Call_005_5c9f
    jr nc, jr_005_692b

    ld a, e
    call Call_005_618e

jr_005_692b:
    inc b

jr_005_692c:
    rst $10
    ld a, b
    cp c
    jr c, jr_005_691e

    call Call_005_5c4b
    call Call_005_414a
    ld l, a
    ld h, $00
    ld b, $00
    jr jr_005_6955

jr_005_693e:
    ld a, e
    call Call_005_59a2
    call Call_005_5c9f
    jr nc, jr_005_6954

    call Call_005_414a
    sub l
    jr nc, jr_005_694f

    cpl
    inc a

jr_005_694f:
    cp $04
    jr nc, jr_005_6954

    inc h

jr_005_6954:
    inc b

jr_005_6955:
    ld a, b
    cp c
    jr c, jr_005_693e

    ld d, l
    ld a, h
    ld hl, $c42d
    ld b, $00
    cp $03
    jr c, jr_005_69ac

    jr jr_005_6988

jr_005_6966:
    ld a, e
    call Call_005_59a2
    call Call_005_5c9f
    jr nc, jr_005_6986

    call Call_005_414a
    sub d
    jr nc, jr_005_6977

    cpl
    inc a

jr_005_6977:
    cp $03
    jr c, jr_005_6980

    cpl
    inc a
    add [hl]
    jr jr_005_6985

jr_005_6980:
    cpl
    inc a
    add $08
    add [hl]

jr_005_6985:
    ld [hl], a

jr_005_6986:
    inc hl
    inc b

jr_005_6988:
    ld a, b
    cp c
    jr c, jr_005_6966

    jr jr_005_69b0

jr_005_698e:
    ld a, e
    call Call_005_59a2
    call Call_005_5c9f
    jr nc, jr_005_69aa

    call Call_005_414a
    sub d
    jr nc, jr_005_699f

    cpl
    inc a

jr_005_699f:
    cp $03
    jr nc, jr_005_69a8

    sub $08
    add [hl]
    jr jr_005_69a9

jr_005_69a8:
    add [hl]

jr_005_69a9:
    ld [hl], a

jr_005_69aa:
    inc hl
    inc b

jr_005_69ac:
    ld a, b
    cp c
    jr c, jr_005_698e

Jump_005_69b0:
jr_005_69b0:
    call Call_005_5bfe
    ld d, a
    ld hl, $c42d
    ld b, $00
    jr jr_005_69e3

jr_005_69bb:
    inc [hl]
    ld a, e
    call Call_005_59a2
    call Call_005_5c9f
    jr nc, jr_005_69e1

    call Call_005_4152
    add d
    cp $1c
    jr c, jr_005_69e1

    cp $1f
    jr c, jr_005_69d7

    jr nz, jr_005_69db

    ld a, $0a
    jr jr_005_69df

jr_005_69d7:
    ld a, $05
    jr jr_005_69df

jr_005_69db:
    xor a
    ld [hl], a
    jr jr_005_69e1

jr_005_69df:
    add [hl]
    ld [hl], a

jr_005_69e1:
    inc b
    inc hl

jr_005_69e3:
    ld a, b
    cp c
    jr c, jr_005_69bb

    ld a, c
    call Call_005_68af
    ld hl, $c42d
    ld d, $00
    ld b, d
    push bc
    ld a, e
    ld c, d
    call Call_005_6551
    ld e, a
    pop bc
    jr jr_005_6a0e

jr_005_69fb:
    ld a, [$c436]
    call Call_005_59a2
    call Call_005_5c9f
    jr nc, jr_005_6a0c

    ld a, [hl]
    cp d
    jr c, jr_005_6a0c

    ld d, a
    ld e, b

jr_005_6a0c:
    inc b
    inc hl

jr_005_6a0e:
    ld a, b
    cp c
    jr c, jr_005_69fb

    ld a, e
    ld h, a
    ld a, [$c436]
    ld e, a
    ld a, h
    call Call_005_406f
    push af
    call Call_005_6ad8
    pop af

Jump_005_6a21:
    ld h, a
    xor a
    ld [$c428], a
    ld a, h
    pop hl
    pop de
    pop bc
    ret


Jump_005_6a2b:
    call Call_005_4057
    ld a, e
    call Call_005_71b1
    ld a, e
    call Call_005_598f
    ld c, a
    call Call_005_6ab7
    ld a, [$c4ca]
    cp e
    jr nz, jr_005_6a62

    ld hl, $c42d
    ld b, $00
    jr jr_005_6a5c

jr_005_6a47:
    ld a, e
    call Call_005_59a2
    call Call_005_414a
    cp $04
    jr c, jr_005_6a5a

    cp $09
    jr nc, jr_005_6a5a

    ld a, $05
    add [hl]
    ld [hl], a

jr_005_6a5a:
    inc hl
    inc b

jr_005_6a5c:
    ld a, b
    cp c
    jr c, jr_005_6a47

    jr jr_005_6a82

jr_005_6a62:
    ld hl, $c42d
    ld b, $00
    jr jr_005_6a7e

jr_005_6a69:
    ld a, e
    call Call_005_59a2
    call Call_005_414a
    cp $04
    jr c, jr_005_6a78

    cp $09
    jr c, jr_005_6a7c

jr_005_6a78:
    ld a, $05
    add [hl]
    ld [hl], a

jr_005_6a7c:
    inc hl
    inc b

jr_005_6a7e:
    ld a, b
    cp c
    jr c, jr_005_6a69

jr_005_6a82:
    ld b, $00
    ld hl, $c42d
    push de
    ld d, $00
    ld e, $00
    jr jr_005_6a95

jr_005_6a8e:
    ld a, [hl+]
    cp e
    jr c, jr_005_6a94

    ld d, b
    ld e, a

jr_005_6a94:
    inc b

jr_005_6a95:
    ld a, b
    cp c
    jr c, jr_005_6a8e

    ld a, d
    pop de
    call Call_005_406f
    push af
    call Call_005_6af8
    pop af
    jp Jump_005_6a21


Call_005_6aa6:
    push af
    push bc
    push hl
    xor a
    ld b, $06
    ld hl, $c42d

jr_005_6aaf:
    ld [hl+], a
    dec b
    jr nz, jr_005_6aaf

    pop hl
    pop bc
    pop af
    ret


Call_005_6ab7:
    push af
    push bc
    push hl
    push af
    ld b, a
    ld c, $00
    ld hl, $c42d

jr_005_6ac1:
    ld a, [hl+]
    cp c
    jr c, jr_005_6ac6

    ld c, a

jr_005_6ac6:
    dec b
    jr nz, jr_005_6ac1

    pop af
    ld b, a
    ld hl, $c42d

jr_005_6ace:
    ld a, c
    sub [hl]
    ld [hl+], a
    dec b
    jr nz, jr_005_6ace

    pop hl
    pop bc
    pop af
    ret


Call_005_6ad8:
    call Call_005_4894
    push af
    ld hl, $6b18
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_6ae9

    inc h

jr_005_6ae9:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_000_1437
    call Call_005_4859
    ret


    ret


Call_005_6af8:
    ret


    call Call_005_4894
    push af
    ld hl, $6bce
    ld a, [$c3b0]
    add a
    push af
    add l
    ld l, a
    jr nc, jr_005_6b0a

    inc h

jr_005_6b0a:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_000_1437
    call Call_005_4859
    ret


    inc e
    ld l, e
    ld [hl], l
    ld l, e
    nop
    ld de, $0105
    ld b, $00
    nop
    nop
    nop
    nop
    add hl, hl
    ld l, e
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $4801
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $5802
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6603
    ld l, e
    nop
    nop
    ld b, e
    ld l, a
    ld l, l
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_005_6bc2

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    nop
    jr nz, jr_005_6bc2

    ld h, c
    ld [hl], e
    jr nz, jr_005_6bd1

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    nop
    ld h, c
    jr nz, jr_005_6bcc

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_005_6be2

    ld l, a
    jr nz, jr_005_6be1

    ld l, h
    ld h, c
    ld a, c
    nop
    nop
    ld de, $0105
    ld b, $00
    nop
    nop
    nop
    nop
    add d
    ld l, e
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $a101
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $b102
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $bf03
    ld l, e
    nop
    nop
    ld b, e
    ld l, a
    ld l, l
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_005_6c1b

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    nop
    jr nz, jr_005_6c1b

    ld h, c
    ld [hl], e
    jr nz, jr_005_6c2a

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    nop
    ld h, c
    jr nz, @+$65

jr_005_6bc2:
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_005_6c3b

    ld l, a
    jr nz, jr_005_6c3a

    ld l, h
    ld h, c

jr_005_6bcc:
    ld a, c
    nop
    jp nc, Jump_000_2e6b

jr_005_6bd1:
    ld l, h
    nop
    ld de, $0105
    ld b, $00
    nop
    nop
    nop
    nop
    rst $18
    ld l, e
    nop
    inc bc
    nop

jr_005_6be1:
    nop

jr_005_6be2:
    nop
    nop
    ld bc, $fe01
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e02
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1e03
    ld l, h
    nop
    nop
    ld b, e
    ld l, a
    ld l, l
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_005_6c78

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    nop
    ld [hl], e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_005_6c7c

    ld h, c
    ld [hl], d

jr_005_6c1b:
    ld h, h
    ld [hl], e
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_005_6c8e

    ld h, c
    ld a, c
    jr nz, jr_005_6c8f

    ld l, [hl]
    jr nz, jr_005_6c8c

    ld [hl], d

jr_005_6c2a:
    ld l, c
    ld h, d
    ld l, $00
    nop
    ld de, $0105
    ld b, $00
    nop
    nop
    nop
    nop
    dec sp
    ld l, h

jr_005_6c3a:
    nop

jr_005_6c3b:
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $5a01
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6a02
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7a03
    ld l, h
    nop
    nop
    ld b, e
    ld l, a
    ld l, l
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    nop
    ld [hl], e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_005_6cd8

    ld h, c
    ld [hl], d
    ld h, h

jr_005_6c78:
    ld [hl], e
    nop
    ld [hl], h
    ld l, a

jr_005_6c7c:
    jr nz, @+$6e

    ld h, c
    ld a, c
    jr nz, jr_005_6ceb

    ld l, [hl]
    jr nz, jr_005_6ce8

    ld [hl], d
    ld l, c
    ld h, d
    ld l, $00

Call_005_6c8a:
    push bc
    push de

jr_005_6c8c:
    push hl
    ld e, a

jr_005_6c8e:
    rst $10

jr_005_6c8f:
    ld hl, $c48d
    call Call_005_6cd9
    jr nc, jr_005_6ca1

    ld c, a
    ld a, e
    call Call_005_6467
    call Call_005_5cd0
    jr c, jr_005_6cd5

jr_005_6ca1:
    rst $10
    ld hl, $c48d
    call Call_005_6d13
    jr nc, jr_005_6cb4

    ld c, a
    ld a, e
    call Call_005_6467
    call Call_005_5cd0
    jr c, jr_005_6cd5

jr_005_6cb4:
    rst $10
    ld hl, $c48d
    call Call_005_6d4d
    jr nc, jr_005_6cc7

    ld c, a
    ld a, e
    call Call_005_6467
    call Call_005_5cd0
    jr c, jr_005_6cd5

jr_005_6cc7:
    rst $10
    ld hl, $c48d
    call Call_005_6db3
    jr nc, jr_005_6cd5

    ld c, a
    ld a, e
    call Call_005_6467

jr_005_6cd5:
    pop hl
    pop de
    pop bc

jr_005_6cd8:
    ret


Call_005_6cd9:
    push de
    call Call_005_4472
    call Call_005_41a8
    ld c, a
    ld b, $00
    ld e, b
    jr jr_005_6cfb

jr_005_6ce6:
    push de
    ld a, b

jr_005_6ce8:
    call Call_005_423e

jr_005_6ceb:
    ld a, b
    call Call_005_41d6
    push af
    call Call_005_4402
    pop af
    pop de
    call Call_005_4152
    add e
    ld e, a
    inc b

jr_005_6cfb:
    ld a, b
    cp c
    jr c, jr_005_6ce6

    ld a, e
    cp $1f
    jr z, jr_005_6d0c

    call Call_005_4472
    xor a
    ld b, $00
    jr jr_005_6d11

jr_005_6d0c:
    ld a, $02
    ld b, $02
    scf

jr_005_6d11:
    pop de
    ret


Call_005_6d13:
    push de
    call Call_005_4472
    call Call_005_41a8
    ld c, a
    ld b, $00
    ld e, b
    jr jr_005_6d35

jr_005_6d20:
    push de
    ld a, b
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    push af
    call Call_005_4402
    pop af
    pop de
    call Call_005_4152
    add e
    ld e, a
    inc b

jr_005_6d35:
    ld a, b
    cp c
    jr c, jr_005_6d20

    ld a, e
    cp $0f
    jr z, jr_005_6d46

    call Call_005_4472
    xor a
    ld b, $00
    jr jr_005_6d4b

jr_005_6d46:
    ld a, $02
    ld b, $03
    scf

jr_005_6d4b:
    pop de
    ret


Call_005_6d4d:
    push de
    call Call_005_4472
    call Call_005_41a8
    dec a
    ld b, a
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    push af
    call Call_005_4402
    pop af
    call Call_005_414a
    ld d, a
    ld e, $01
    dec b
    jr jr_005_6d84

jr_005_6d6b:
    ld a, b
    call Call_005_41d6
    call Call_005_414a
    cp d
    jr nz, jr_005_6d89

    inc e
    push de
    ld a, b
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    call Call_005_4402
    pop de
    dec b

jr_005_6d84:
    ld a, b
    cp $ff
    jr nz, jr_005_6d6b

jr_005_6d89:
    ld a, e
    cp $02
    jr nc, jr_005_6d96

    call Call_005_4472
    xor a
    ld b, $00
    jr jr_005_6db1

jr_005_6d96:
    cp $03
    jr nc, jr_005_6da1

    scf
    ld a, $02
    ld b, $04
    jr jr_005_6db1

jr_005_6da1:
    cp $04
    jr z, jr_005_6dac

    scf
    ld a, $06
    ld b, $05
    jr jr_005_6db1

jr_005_6dac:
    scf
    ld a, $0c
    ld b, $06

jr_005_6db1:
    pop de
    ret


Call_005_6db3:
    push de
    call Call_005_4472
    call Call_005_41a8
    ld b, a
    cp $03
    jp c, Jump_005_708d

    push hl
    ld hl, $c41d
    push af
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl-], a
    pop af
    ld hl, $c41f
    push af
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl-], a
    pop af

Jump_005_6dd7:
    rst $10
    pop hl
    ld a, b
    dec a
    call Call_005_41d6
    call Call_005_414a
    call Call_005_61d8
    push hl
    ld hl, $c421
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    ld de, $c41d
    ld hl, $c423
    push de
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    ld hl, $c423
    ld de, $c421
    push de
    push hl
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    push af
    ld a, h
    and d
    ld h, a
    ld a, l
    and e
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    dec hl
    cp $00
    jr nz, jr_005_6e35

    ld a, [hl]
    cp $00

jr_005_6e35:
    ld a, b
    pop bc
    jr nz, jr_005_6e64

    ld hl, $c41d
    ld de, $c421
    push de
    push hl
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    push af
    ld a, h
    or d
    ld h, a
    ld a, l
    or e
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    dec b
    jp nz, Jump_005_6dd7

jr_005_6e64:
    pop hl
    call Call_005_41a8
    dec a
    call Call_005_41d6
    call Call_005_414a
    call Call_005_61d8
    push hl
    ld hl, $c41f
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl

Jump_005_6e7a:
    rst $10
    ld hl, $c423
    ld de, $c41d
    push de
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    ld hl, $c423
    ld de, $c41f
    push de
    push hl
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    push af
    ld a, h
    and d
    ld h, a
    ld a, l
    and e
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    ld hl, $c423
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    dec hl
    cp $00
    jr nz, jr_005_6ec7

    ld a, [hl]
    cp $00

jr_005_6ec7:
    ld a, b
    pop bc
    jr nz, jr_005_6f23

    ld hl, $c41f
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    sla e
    rl d
    push af
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop af
    pop de
    ld hl, $c41f
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    dec de
    ld hl, $c41f
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    ld hl, $c41f
    push af
    ld a, [hl]
    xor $ff
    ld [hl+], a
    ld a, [hl]
    xor $ff
    ld [hl-], a
    pop af
    ld hl, $c41d
    ld de, $c41f
    push de
    push hl
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    push af
    ld a, h
    and d
    ld h, a
    ld a, l
    and e
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    jr jr_005_6f4a

jr_005_6f23:
    ld hl, $c41f
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    srl d
    rr e
    push af
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop af
    pop de
    ld hl, $c41f
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    dec hl
    cp $00
    jr nz, jr_005_6f45

    ld a, [hl]
    cp $00

jr_005_6f45:
    ld a, b
    pop bc
    jp nz, Jump_005_6e7a

jr_005_6f4a:
    pop hl
    call Call_005_41a8
    dec a
    call Call_005_41d6
    call Call_005_414a
    call Call_005_61d8
    push hl
    ld hl, $c41f
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl

Jump_005_6f60:
    rst $10
    ld hl, $c423
    ld de, $c41d
    push de
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    ld hl, $c423
    ld de, $c41f
    push de
    push hl
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    push af
    ld a, h
    and d
    ld h, a
    ld a, l
    and e
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    ld hl, $c423
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    dec hl
    cp $00
    jr nz, jr_005_6fad

    ld a, [hl]
    cp $00

jr_005_6fad:
    ld a, b
    pop bc
    jr nz, jr_005_6fe9

    ld hl, $c41f
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    dec de
    ld hl, $c41f
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    ld hl, $c41d
    ld de, $c41f
    push de
    push hl
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    push af
    ld a, h
    and d
    ld h, a
    ld a, l
    and e
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    jr jr_005_7010

jr_005_6fe9:
    ld hl, $c41f
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    sla e
    rl d
    push af
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop af
    pop de
    ld hl, $c41f
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    dec hl
    cp $00
    jr nz, jr_005_700b

    ld a, [hl]
    cp $00

jr_005_700b:
    ld a, b
    pop bc
    jp nz, Jump_005_6f60

jr_005_7010:
    rst $10
    ld hl, $c41d
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    call Call_005_61ea
    pop hl
    cp $03
    jr c, jr_005_708d

    ld c, a
    call Call_005_41a8
    ld e, a
    sub c
    ld b, a

jr_005_7027:
    rst $10
    push de
    push hl
    ld a, b
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    call Call_005_4402
    ld a, b
    call Call_005_41d6
    call Call_005_414a
    call Call_005_61d8
    ld hl, $c41f
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    ld hl, $c41f
    ld de, $c41d
    push de
    push hl
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld d, a
    ld e, c
    pop bc
    pop af
    push af
    ld a, h
    and d
    ld h, a
    ld a, l
    and e
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    ld hl, $c41f
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    dec hl
    cp $00
    jr nz, jr_005_707c

    ld a, [hl]
    cp $00

jr_005_707c:
    ld a, b
    pop bc
    pop hl
    pop de
    jr z, jr_005_708d

    inc b
    ld a, b
    cp e
    jr c, jr_005_7027

    ld a, c
    ld b, $07
    scf
    jr jr_005_7093

Jump_005_708d:
jr_005_708d:
    call Call_005_4472
    xor a
    ld b, $00

jr_005_7093:
    pop de
    ret


    push bc
    push de
    push hl
    ld h, d
    ld l, e
    ld c, a
    ld a, [$c3fb]
    ld b, a
    ld a, [$c427]
    cp $03
    jr z, jr_005_70c8

    cp $02
    jr z, jr_005_70c8

    ld a, [$c338]
    or a
    jr nz, jr_005_70b8

    call Call_005_419e
    or a
    jr z, jr_005_70c8

    jr jr_005_70e3

jr_005_70b8:
    cp $02
    jr nz, jr_005_70cc

    ld a, [$c303]
    sub $02
    ld d, a
    call Call_005_419e
    cp d
    jr nz, jr_005_70e3

jr_005_70c8:
    ld a, $01
    jr jr_005_70e4

jr_005_70cc:
    ld a, [$c427]
    cp $02
    jr z, jr_005_70c8

    cp $01
    jr nz, jr_005_70e3

    push bc
    call Call_005_419e
    ld c, a
    ld a, [$c3b0]
    cp c
    pop bc
    jr z, jr_005_70c8

jr_005_70e3:
    xor a

jr_005_70e4:
    ld [$c3fb], a
    push bc
    ld a, c
    call Call_005_416f
    cp $80
    jr c, jr_005_70f1

    xor a

jr_005_70f1:
    call Call_005_417b
    ld b, a
    call Call_005_41a8
    ld c, a
    jr jr_005_710a

jr_005_70fb:
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    cp $80
    jr nc, jr_005_7109

    call Call_005_40ff

jr_005_7109:
    inc b

jr_005_710a:
    ld a, b
    cp c
    jr c, jr_005_70fb

    pop bc
    ld a, b
    ld [$c3fb], a
    pop hl
    pop de
    pop bc
    ret


    push bc
    push de
    push hl
    ld l, e
    ld h, d
    call Call_005_416f
    cp $80
    jr c, jr_005_7124

    xor a

jr_005_7124:
    call Call_005_417b
    ld b, a
    call Call_005_41a8
    ld c, a
    jr jr_005_713e

jr_005_712e:
    ld a, b
    call Call_005_41d6
    cp $80
    jr nc, jr_005_713d

    ld a, b
    call Call_005_423e
    call Call_005_4106

jr_005_713d:
    inc b

jr_005_713e:
    ld a, b
    cp c
    jr c, jr_005_712e

    pop hl
    pop de
    pop bc
    ret


    push bc
    push hl
    ld c, a
    ld h, d
    ld l, e
    call Call_005_4202
    ld a, $0d
    push af
    add l
    ld l, a
    jr nc, jr_005_7156

    inc h

jr_005_7156:
    pop af
    ld b, $00
    jr jr_005_7162

jr_005_715b:
    ld a, [hl+]
    sla a
    jr c, jr_005_7161

    inc de

jr_005_7161:
    inc b

jr_005_7162:
    ld a, b
    cp c
    jr nz, jr_005_715b

    ld a, [hl]
    sla a
    jr nc, jr_005_7171

    ld hl, $c438
    call Call_005_4202

jr_005_7171:
    pop hl
    pop bc
    ret


Call_005_7174:
    push bc
    call Call_005_41a8
    ld c, a
    ld b, $00
    jr jr_005_718c

jr_005_717d:
    ld a, b
    call Call_005_41d6
    sla a
    jr nc, jr_005_718b

    ld a, b
    call Call_005_4257
    jr jr_005_7190

jr_005_718b:
    inc b

jr_005_718c:
    ld a, b
    cp c
    jr c, jr_005_717d

jr_005_7190:
    pop bc
    ret


Call_005_7192:
    push de
    call Call_005_437a
    ld de, $7146
    call Call_005_4314
    ld de, $7095
    call Call_005_4320
    ld de, $7117
    call Call_005_432c
    pop de
    ret


Call_005_71aa:
    call Call_005_4359
    call Call_005_43a6
    ret


Call_005_71b1:
    push bc
    push hl
    ld b, a
    call Call_005_58ef
    call Call_005_5cd0
    jr c, jr_005_71e9

    rst $10
    ld a, b
    call Call_005_725d
    call Call_005_5cd0
    jr c, jr_005_71e9

    rst $10
    ld a, b
    call Call_005_7295
    call Call_005_5cd0
    jr c, jr_005_71e9

    rst $10
    ld a, b
    call Call_005_7325
    call Call_005_5cd0
    jr c, jr_005_71e9

    rst $10
    ld a, b
    call Call_005_7437
    call Call_005_5cd0
    jr c, jr_005_71e9

    rst $10
    ld a, b
    call Call_005_74b4

jr_005_71e9:
    pop hl
    pop bc
    ret


Call_005_71ec:
    push bc
    push hl
    ld hl, $c47b
    rst $10
    ld b, a
    call Call_005_725d
    ld a, [$c426]
    or a
    jr nz, jr_005_7222

    rst $10
    ld a, b
    call Call_005_7295
    ld a, [$c426]
    or a
    jr nz, jr_005_7222

    rst $10
    ld a, b
    call Call_005_7325
    ld a, [$c426]
    or a
    jr nz, jr_005_7222

    rst $10
    ld a, b
    call Call_005_7484
    ld a, [$c426]
    or a
    jr nz, jr_005_7222

    rst $10
    ld a, b
    call Call_005_74b4

jr_005_7222:
    pop hl
    pop bc
    ret


Call_005_7225:
    push bc
    push de
    ld e, a
    ld d, $00
    ld b, d
    jr jr_005_7237

jr_005_722d:
    ld a, b
    call Call_005_41d6
    call Call_005_4152
    add d
    ld d, a

jr_005_7236:
    inc b

jr_005_7237:
    srl e
    jr c, jr_005_722d

Call_005_723b:
    jr nz, jr_005_7236

    ld a, d
    pop de
    pop bc
    ret


Call_005_7241:
    push bc
    push de
    ld c, a
    ld b, $00
    jr jr_005_7254

jr_005_7248:
    ld a, b
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    call Call_005_4402

jr_005_7253:
    inc b

jr_005_7254:
    srl c
    jr c, jr_005_7248

    jr nz, jr_005_7253

    pop de
    pop bc
    ret


Call_005_725d:
    push bc
    push de
    ld e, a
    call Call_005_41a8
    ld d, $01
    inc a
    jr jr_005_726a

jr_005_7268:
    sla d

jr_005_726a:
    dec a
    jr nz, jr_005_7268

    ld b, $01
    jr jr_005_728d

jr_005_7271:
    ld a, b
    call Call_005_7225
    cp $0f
    jr nz, jr_005_728c

    ld a, b
    call Call_005_7241
    push bc
    ld a, e
    ld b, $03
    ld c, $02
    call Call_005_6467
    pop bc
    call Call_005_5cd0
    jr c, jr_005_7292

jr_005_728c:
    inc b

jr_005_728d:
    rst $10
    ld a, b
    cp d
    jr c, jr_005_7271

jr_005_7292:
    pop de
    pop bc
    ret


Call_005_7295:
    push bc
    push de
    ld c, a
    ld b, $00

jr_005_729a:
    ld a, b
    call Call_005_44a0
    cp $02
    jr c, jr_005_72cd

    jr nz, jr_005_72aa

    ld d, $04
    ld e, $02
    jr jr_005_72bc

jr_005_72aa:
    cp $03
    jr nz, jr_005_72b4

    ld d, $05
    ld e, $06
    jr jr_005_72bc

jr_005_72b4:
    cp $04
    jr nz, jr_005_72cd

    ld d, $06
    ld e, $0c

jr_005_72bc:
    push bc
    ld a, b
    call Call_005_44c0
    ld a, c
    ld b, d
    ld c, e
    call Call_005_6467
    pop bc
    call Call_005_5cd0
    jr c, jr_005_72d4

jr_005_72cd:
    inc b
    rst $10
    ld a, b
    cp $0d
    jr c, jr_005_729a

jr_005_72d4:
    pop de
    pop bc
    ret


Call_005_72d7:
    rst $10
    push bc
    push de
    push bc
    ld d, a
    ld e, $01
    jr jr_005_72ff

jr_005_72e0:
    ld a, c
    call Call_005_44c0
    ld a, c
    call Call_005_44a0
    push de
    push af
    ld a, e
    ld e, a
    pop af
    ld d, a
    xor a
    jr jr_005_72f3

jr_005_72f1:
    sla e

jr_005_72f3:
    srl d
    jr nc, jr_005_72fa

    add e
    jr jr_005_72f1

jr_005_72fa:
    jr nz, jr_005_72f1

    pop de
    ld e, a
    inc c

jr_005_72ff:
    ld a, c
    cp b
    jr c, jr_005_72e0

    pop bc
    ld a, b
    sub c
    push de
    push af
    ld a, e
    ld e, a
    pop af
    ld d, a
    xor a
    jr jr_005_7311

jr_005_730f:
    sla e

jr_005_7311:
    srl d
    jr nc, jr_005_7318

    add e
    jr jr_005_730f

jr_005_7318:
    jr nz, jr_005_730f

    pop de
    ld c, a
    ld a, d
    ld b, $07
    call Call_005_6467
    pop de
    pop bc
    ret


Call_005_7325:
    push bc
    push de
    ld e, a
    push de
    push hl
    ld hl, $c41d
    push af
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl-], a
    pop af
    pop hl
    call Call_005_41a8
    ld c, a
    ld b, $00
    jr jr_005_7365

jr_005_733e:
    ld a, b
    call Call_005_41d6
    call Call_005_414a
    call Call_005_61d8
    push hl
    ld hl, $c41d
    push de
    push hl
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    ld a, h
    or d
    ld h, a
    ld a, l
    or e
    ld l, a
    pop af
    ld e, l
    ld d, h
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    pop de
    pop hl
    inc b

jr_005_7365:
    rst $10
    ld a, b
    cp c
    jr c, jr_005_733e

    pop de
    ld d, $00
    jp Jump_005_73fe


Jump_005_7370:
    push hl
    ld hl, $c41d
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    jr jr_005_7380

jr_005_737b:
    srl h
    rr l
    inc d

jr_005_7380:
    rst $10
    ld a, l
    and $01
    jr z, jr_005_737b

    push de
    ld de, $c41d
    push af
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    dec de
    pop af
    pop de
    pop hl
    push de
    push hl
    rst $10
    ld de, $0001
    ld c, $01
    jr jr_005_73a4

jr_005_739e:
    inc c
    sla e
    rl d
    inc de

jr_005_73a4:
    rst $10
    ld hl, $c41d
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push af
    ld a, h
    and d
    ld h, a
    ld a, l
    and e
    ld l, a
    pop af
    push bc
    ld b, a
    ld a, h
    cp d
    jr nz, jr_005_73bd

    ld a, l
    cp e

jr_005_73bd:
    ld a, b
    pop bc
    jr z, jr_005_739e

    pop hl
    pop de
    ld a, c
    cp $04
    jr c, jr_005_73d9

    push bc
    ld a, c
    add d
    dec a
    ld b, a
    ld c, d
    ld a, e
    call Call_005_72d7
    pop bc
    ld a, [$c426]
    or a
    jr nz, jr_005_7414

jr_005_73d9:
    ld a, d
    add c
    ld d, a
    push hl
    ld hl, $c41d
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    inc c
    jr jr_005_73ec

jr_005_73e8:
    srl h
    rr l

jr_005_73ec:
    rst $10
    dec c
    jr nz, jr_005_73e8

    push de
    ld de, $c41d
    push af
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    dec de
    pop af
    pop de
    pop hl

Jump_005_73fe:
    push hl
    ld hl, $c41d
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    dec hl
    cp $00
    jr nz, jr_005_740e

    ld a, [hl]
    cp $00

jr_005_740e:
    ld a, b
    pop bc
    pop hl
    jp nz, Jump_005_7370

jr_005_7414:
    pop de
    pop bc
    ret


Call_005_7417:
    push bc
    call Call_005_41a8
    ld c, a
    ld b, $00
    jr jr_005_7429

jr_005_7420:
    ld a, b
    call Call_005_41d6
    sla a
    jr c, jr_005_7432

    inc b

jr_005_7429:
    ld a, b
    cp c
    jr c, jr_005_7420

    ld a, $ff
    scf
    jr jr_005_7435

jr_005_7432:
    srl a
    or a

jr_005_7435:
    pop bc
    ret


Call_005_7437:
    push bc
    push de
    ld e, a
    call Call_005_7417
    ld d, $ff
    jr c, jr_005_7445

    call Call_005_414d
    ld d, a

jr_005_7445:
    call Call_005_41a8
    ld c, a
    ld b, $00
    jr jr_005_747d

jr_005_744d:
    ld a, b
    call Call_005_41d6
    call Call_005_414d
    cp d
    jr z, jr_005_7460

    call Call_005_44ea
    cp $04
    jr c, jr_005_747c

    jr jr_005_7467

jr_005_7460:
    call Call_005_44ea
    cp $05
    jr c, jr_005_747c

jr_005_7467:
    push af
    ld a, b
    call Call_005_41d6
    call Call_005_414d
    call Call_005_450a
    pop af
    ld c, a
    ld b, $09
    ld a, e
    call Call_005_6467
    jr jr_005_7481

jr_005_747c:
    inc b

jr_005_747d:
    ld a, b
    cp c
    jr c, jr_005_744d

jr_005_7481:
    pop de
    pop bc
    ret


Call_005_7484:
    push bc
    push de
    ld e, a
    call Call_005_41a8
    ld c, a
    ld b, $00
    jr jr_005_74ad

jr_005_748f:
    ld a, b
    call Call_005_41d6
    call Call_005_414d
    call Call_005_44ea
    cp $05
    jr c, jr_005_74ac

    push af
    ld a, b
    call Call_005_450a
    pop af
    ld c, a
    ld b, $09
    ld a, e
    call Call_005_6467
    jr jr_005_74b1

jr_005_74ac:
    inc b

jr_005_74ad:
    ld a, b
    cp c
    jr c, jr_005_748f

jr_005_74b1:
    pop de
    pop bc
    ret


Call_005_74b4:
    push bc
    push de
    ld e, a
    call Call_005_41a8
    ld c, a
    ld b, $00
    jr jr_005_74c8

jr_005_74bf:
    ld a, b
    call Call_005_41d6
    cp $80
    jr nc, jr_005_74ce

    inc b

jr_005_74c8:
    ld a, b
    cp c
    jr c, jr_005_74bf

    jr jr_005_7514

jr_005_74ce:
    ld a, b
    call Call_005_41d6
    call Call_005_414d
    ld d, a
    ld b, $00
    jr jr_005_7510

jr_005_74da:
    ld a, b
    call Call_005_41d6
    cp $80
    jr nc, jr_005_750f

    call Call_005_414a
    cp $0a
    jr nz, jr_005_750f

    ld a, b
    call Call_005_41d6
    call Call_005_414d
    cp d
    jr nz, jr_005_750f

    push de
    ld a, b
    call Call_005_423e
    ld a, b
    call Call_005_41d6
    call Call_005_4402
    pop de
    push bc
    ld a, e
    ld b, $0a
    ld c, $01
    call Call_005_6467
    pop bc
    call Call_005_5cd0
    jr c, jr_005_7514

jr_005_750f:
    inc b

jr_005_7510:
    ld a, b
    cp c
    jr c, jr_005_74da

jr_005_7514:
    pop de
    pop bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7802:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7d82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7ee4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
