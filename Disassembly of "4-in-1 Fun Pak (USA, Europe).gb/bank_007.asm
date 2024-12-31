; Disassembly of "4-in-1 Fun Pak (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    add hl, bc
    dec bc
    push af
    rst $30
    ld a, [bc]
    or $01
    rst $38
    db $eb

Call_007_4009:
    db $f4
    ld [$1513], sp
    inc c
    ld hl, sp-$13
    add hl, bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    rst $30
    push af
    or $f6
    nop
    db $10
    ld [$0400], sp
    nop
    nop
    nop
    inc b
    ld [$0404], sp
    ld [$0008], sp
    ld bc, $0303
    dec b
    add hl, bc
    ld a, [bc]
    nop
    ld h, h
    nop
    ld a, [$b000]
    inc b
    call nz, Call_007_4009
    rra
    nop
    ld a, l
    ld a, [$b000]
    inc b
    call nz, Call_007_4009
    rra
    nop
    ld a, l
    add sp, -$03
    inc b
    ld [bc], a
    inc bc
    dec b
    ld b, $03
    ld [bc], a
    inc b
    nop
    ld bc, $0302
    inc b
    rlca
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0403
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0000
    ld [bc], a
    inc b
    ld b, $07
    rlca
    ld b, $04
    ld [bc], a
    nop
    nop
    inc bc
    dec b
    rlca
    ld [$0708], sp
    dec b
    inc bc
    nop
    nop
    inc bc
    dec b
    rlca
    ld [$0708], sp
    dec b
    inc bc
    nop
    nop
    ld [bc], a
    inc b
    ld b, $07
    rlca
    ld b, $04
    ld [bc], a
    nop
    nop
    ld bc, $0403
    dec b
    dec b
    inc b
    inc bc
    ld bc, $0000
    nop
    ld bc, $0302
    inc bc
    ld [bc], a
    ld bc, $0000
    di
    ld hl, $ff8c
    xor a
    ld b, $72

jr_007_40ad:
    ld [hl+], a
    dec b
    jr nz, jr_007_40ad

    ld hl, $c500
    ld bc, $1520

jr_007_40b7:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_007_40b7

    ld a, $91
    ldh [$e6], a
    ldh [rLCDC], a
    ld a, $01
    ldh [$c4], a
    ld a, $02
    ld [$c7f8], a

Jump_007_40cd:
    di
    ld sp, $e000
    xor a
    ld [$c7c9], a
    ld [$c7f0], a
    ld [$c7f1], a
    ldh [rSC], a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    call Call_007_4b23
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    ei
    xor a
    ld [$c314], a
    ld a, $10
    ld [$c015], a
    ld a, $0e
    ld [$c016], a
    xor a
    ldh [rBGP], a
    call Call_007_4351
    ld hl, $4340
    call Call_007_432c
    ld a, $e0
    ldh [rOBP0], a

jr_007_410c:
    call Call_007_4321
    ld hl, $c015
    dec [hl]
    jr nz, jr_007_411b

    ld a, [hl+]
    dec [hl]
    or [hl]
    jp z, Jump_000_08a5

jr_007_411b:
    ld a, [$c7c9]
    cp $01
    jp z, Jump_007_41f1

    ld a, [$c3b4]
    or a
    jr z, jr_007_410c

    ld a, [$c7c2]
    and $09
    jr z, jr_007_410c

Jump_007_4130:
    call Call_007_4da0
    ld sp, $e000
    and a
    jp z, Jump_007_4154

    dec a
    jr z, jr_007_4197

    jp Jump_007_41d0


Call_007_4140:
    pop hl
    ld a, l
    ld [$c7c7], a
    ld a, h
    ld [$c7c8], a
    jp hl


Jump_007_414a:
    ld hl, $c7c7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, $e000
    jp hl


Jump_007_4154:
    ld a, $01
    ld [$c011], a
    call Call_007_46b9
    call Call_007_4250
    call Call_007_4b9b
    call Call_007_4c05
    call Call_007_4230
    call Call_007_4718
    call Call_007_4b1b
    call Call_007_4858
    call Call_007_4140

Jump_007_4174:
jr_007_4174:
    ldh a, [$bf]
    ld hl, $ffbe
    cp [hl]
    jr nz, jr_007_4189

    call Call_007_4a81
    call Call_007_5e15
    ld a, $86
    ld [$c3ba], a
    jr jr_007_418f

jr_007_4189:
    call Call_007_4a81
    call Call_007_491d

jr_007_418f:
    call Call_007_4263
    call Call_007_484c
    jr jr_007_4174

jr_007_4197:
    call Call_007_46b9
    call Call_007_4250
    ld a, $80
    ldh [$be], a
    call Call_007_4230
    call Call_007_4140
    ldh a, [$bf]
    xor $80
    ldh [$be], a
    call Call_007_4c79
    call Call_007_4858

jr_007_41b3:
    call Call_007_4a81
    call Call_007_491d
    ld b, $3c
    call Call_007_4346
    ldh a, [$bf]
    ldh [$be], a
    call Call_007_4263
    call Call_007_4c79
    call Call_007_5f00
    call Call_007_4858
    jr jr_007_41b3

Jump_007_41d0:
    call Call_000_1cf8
    jp nz, Jump_007_4130

    ld c, $02
    call Call_007_46bd
    ld a, $80
    ld [$c7c6], a
    ld [$c7f3], a

Jump_007_41e3:
    call Call_007_467b
    call Call_007_4b9b
    call Call_007_4c05
    call Call_007_4230
    jr jr_007_421f

Jump_007_41f1:
    di
    ld a, $03
    ld [$c7c5], a
    ld [$c012], a
    xor a
    ld [$c7c6], a
    ld [$c7cc], a
    ei
    call Call_007_4377
    ld de, $8000
    ld hl, $3359
    ld bc, $0c00
    call Call_007_4384
    ld c, $02
    call Call_007_46bd

Jump_007_4216:
    call Call_007_467b
    call Call_007_4c05
    call Call_007_4230

jr_007_421f:
    call Call_007_4140

jr_007_4222:
    call Call_007_4a81
    call Call_007_491d
    call Call_007_4263
    call Call_007_4858
    jr jr_007_4222

Call_007_4230:
    call Call_007_4dc7
    call Call_007_5cb0
    call Call_007_438d
    ld a, $ff
    ldh [$c8], a
    xor a
    ldh [$bf], a
    inc a
    ldh [$c3], a
    xor a
    call Call_007_426f
    call Call_000_27a4
    call Call_007_4e09
    jp Jump_007_4858


Call_007_4250:
    di
    ld a, $01
    ldh [rIE], a
    xor a
    ldh [rIF], a
    ei
    ret


Call_007_425a:
    ldh a, [$be]
    xor $80
    ldh [$be], a
    jp Jump_007_4c79


Call_007_4263:
    ldh a, [$bf]
    xor $80
    ldh [$bf], a
    jr nz, jr_007_426f

    ld hl, $ffc3
    inc [hl]

Call_007_426f:
jr_007_426f:
    ldh a, [$bf]
    ld l, a
    ldh a, [$be]
    xor l
    ld [$c7c6], a
    ret


Call_007_4279:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld h, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or h
    ld l, a
    ld a, [$c7c3]
    ld h, a
    ld a, [$c7c1]
    xor l
    and l
    ld [$c7c2], a
    or h
    ld [$c7c3], a
    ld a, l
    ld [$c7c1], a
    ld a, $30
    ldh [rP1], a
    ret


    di
    push af
    push hl
    push de
    push bc
    ld hl, $fffb
    ld a, [hl]
    ld [hl], $00
    and a
    jr z, jr_007_42d0

    ld a, [$c7bd]
    swap a
    and $07
    add $f8
    ld hl, $99d2
    ld [hl], a

jr_007_42d0:
    ld a, [$c7c9]
    and a
    jr nz, jr_007_42df

    call Call_007_4279
    ld a, [$c7c2]
    ld [$c7f1], a

jr_007_42df:
    call $ff80
    ldh a, [$e6]
    ldh [rLCDC], a
    ld hl, $c7bd
    inc [hl]
    ld a, [hl]
    ld hl, $ffef
    add [hl]
    xor $a5
    swap a
    ld [hl], a
    ld a, $ff
    ld [$c7be], a
    di
    ld b, $06
    ld hl, $4a72
    call Call_000_09de
    ei
    pop bc
    pop de
    pop hl
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_007_4318

jr_007_430c:
    ldh a, [rSTAT]
    and $02
    jr z, jr_007_430c

jr_007_4312:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_4312

jr_007_4318:
    pop af
    reti


jr_007_431a:
    ldh a, [rLY]
    cp $90
    jr nz, jr_007_431a

    ret


Call_007_4321:
jr_007_4321:
    ld a, [$c7be]
    and a
    jr z, jr_007_4321

    xor a
    ld [$c7be], a
    ret


Call_007_432c:
jr_007_432c:
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl]
    and a
    ret z

    ld b, a
    xor a
    ld [$c7bd], a

jr_007_4337:
    ld a, [$c7bd]
    cp [hl]
    jr nz, jr_007_4337

    inc hl
    jr jr_007_432c

    ld b, b
    inc c
    sub b
    inc c
    db $e4
    nop

Call_007_4346:
    xor a
    ld [$c7bd], a

jr_007_434a:
    ld a, [$c7bd]
    cp b
    jr c, jr_007_434a

    ret


Call_007_4351:
    ld a, $81
    ld [$c3bb], a
    call Call_007_4377
    ld hl, $5f0d
    call Call_007_439d
    ld de, $8000
    ld hl, $2a39
    ld bc, $0c00
    call Call_007_4384

Call_007_436b:
Jump_007_436b:
    ldh a, [$e6]
    bit 7, a
    ret nz

    or $80
    ldh [$e6], a
    ldh [rLCDC], a
    ret


Call_007_4377:
    ldh a, [$e6]
    and $7f
    ldh [$e6], a

jr_007_437d:
    ldh a, [rLCDC]
    bit 7, a
    ret z

    jr jr_007_437d

Call_007_4384:
Jump_007_4384:
jr_007_4384:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_007_4384

    ret


Call_007_438d:
    ld hl, $6349
    call Call_007_439d
    call Call_007_43c3
    call Call_007_43b8
    call Call_007_436b
    ret


Call_007_439d:
    call Call_007_4377
    ld de, $9800
    ld c, $12

jr_007_43a5:
    ld b, $14

jr_007_43a7:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_007_43a7

    ld a, e
    add $0c
    ld e, a
    jr nc, jr_007_43b4

    inc d

jr_007_43b4:
    dec c
    jr nz, jr_007_43a5

    ret


Call_007_43b8:
    ld hl, $6541
    ld de, $8cb0
    ld bc, $0450
    jr jr_007_4384

Call_007_43c3:
    ld hl, $6891
    ld de, $8000
    ld bc, $08f0
    jr jr_007_4384

Call_007_43ce:
jr_007_43ce:
    ld a, [$c7c2]
    and a
    ret z

    push af
    xor a
    ld [$c7c2], a
    pop af
    ret


Call_007_43da:
Jump_007_43da:
    ld a, [$c7c9]
    and a
    jr nz, jr_007_43f0

    ld [$c7bd], a

jr_007_43e3:
    call Call_007_4403
    and a
    ret nz

    ld a, [$c7bd]
    cp b
    jr c, jr_007_43e3

    xor a
    ret


jr_007_43f0:
    push bc
    call Call_007_4403
    pop bc
    and a
    ret nz

    dec b
    jr nz, jr_007_43f0

    xor a
    ret


Call_007_43fc:
Jump_007_43fc:
jr_007_43fc:
    call Call_007_4403
    and a
    ret nz

    jr jr_007_43fc

Call_007_4403:
    ld a, [$c7c5]
    cp $02
    jr c, jr_007_43ce

    push hl
    ld a, [$c7c9]
    cp $ff
    jr nz, jr_007_442d

    call Call_007_4321
    ld a, $81
    ldh [rSC], a
    call Call_000_1cea
    ld a, [$c7f0]
    ld h, a

jr_007_4420:
    ld a, [$c7c6]
    and a
    jr z, jr_007_442a

    ld a, [$c7f2]
    ld h, a

jr_007_442a:
    ld a, h
    pop hl
    ret


jr_007_442d:
    call Call_000_1cea
    ld a, [$c7f0]
    ld h, a
    jr jr_007_4420

Call_007_4436:
    push af
    push hl
    push de
    push bc
    ldh a, [$bf]
    and a
    ld a, $18
    jr z, jr_007_4443

    ld a, $00

jr_007_4443:
    ld [$c7f7], a
    ld a, [$c7c5]
    cp $03
    jr nz, jr_007_444e

    dec a

jr_007_444e:
    ld c, $00
    call Call_007_445b
    call Call_007_4858
    pop bc
    pop de
    pop hl
    pop af
    ret


Call_007_445b:
Jump_007_445b:
    call Call_007_44ad
    push hl
    push bc
    call Call_000_1c23
    pop bc
    call Call_007_4b13

jr_007_4467:
    push bc
    ld a, [$c7f5]
    ld b, a
    swap c
    ld a, [$c7f6]
    add c
    ld c, a
    ld a, [$c7f7]
    call Call_007_4b4f
    pop bc
    call Call_007_43fc
    bit 2, a
    jr nz, jr_007_449f

    ld b, a
    and $0b
    jr nz, jr_007_44a1

    ld a, b
    bit 6, a
    jr z, jr_007_4492

    ld a, c
    and a
    jr z, jr_007_4467

    dec c
    jr jr_007_4467

jr_007_4492:
    bit 7, a
    jr z, jr_007_4467

    ld a, [$c7f4]
    cp c
    jr z, jr_007_4467

    inc c
    jr jr_007_4467

jr_007_449f:
    pop hl
    ret


jr_007_44a1:
    call Call_007_4b42
    pop hl
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_007_44ad:
    add a
    ld e, a
    ld d, $00
    ld hl, $44e1
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c7f5], a
    ld a, [hl+]
    ld [$c7f6], a
    ld a, [hl+]
    ld [$c7f4], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    inc e
    ld a, [de]
    ld b, $0f
    ld b, l
    db $ed
    ld b, h
    inc e
    ld a, [hl+]
    inc b
    ld e, a
    ld b, l
    ei
    ld b, h
    inc e
    ld a, [hl+]
    inc b
    sbc d
    ld b, l
    dec b
    ld b, l
    call z, $d344
    ld b, h
    jp c, $8644

    ld b, [hl]
    ld l, c
    ld d, $03
    ld c, l
    pop af
    daa
    sbc c
    ld h, $3a
    ld b, [hl]
    and l
    ld [$16c7], sp
    jr jr_007_4540

    pop de
    ld b, [hl]
    pop af
    daa
    and l
    ld [$16c7], sp
    pop de
    ld b, [hl]
    ld l, e
    ld b, [hl]
    pop af
    daa
    db $db
    ld b, l
    inc e
    ld b, d
    pop de
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld e, $22
    nop
    inc c
    dec c
    rra
    ld b, l
    nop
    ld d, h
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_007_455f

    ld b, c
    ld b, e
    ld c, e
    rra
    add l
    nop
    ld c, b
    ld c, c
    ld c, [hl]
    ld d, h
    rra
    push bc
    nop
    ld d, e
    ld d, a
    ld b, c
    ld d, b
    jr nz, jr_007_4583

    ld c, c
    ld b, h
    ld b, l
    ld d, e
    rra
    dec b
    ld bc, $4552
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_007_455e

    jr nz, @+$22

jr_007_4540:
    jr nz, jr_007_4561

    ld b, l
    ld bc, $4553
    ld d, h
    ld d, l
    ld d, b
    rra
    add l
    ld bc, $4944
    ld b, [hl]
    ld b, [hl]
    ld c, c
    ld b, e
    ld d, l
    ld c, h
    ld d, h
    ld e, c
    rra
    push bc
    ld bc, $554d
    ld d, e
    ld c, c
    ld b, e

jr_007_455e:
    nop

jr_007_455f:
    ld e, $62

jr_007_4561:
    nop
    inc c
    add hl, bc
    rra
    add l
    nop
    ld d, h
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_007_45af

    ld b, c
    ld b, e
    ld c, e
    rra
    push bc
    nop
    ld d, d
    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_007_459a

    jr nz, jr_007_459c

    jr nz, jr_007_459d

    dec b
    ld bc, $4553
    ld d, h

jr_007_4583:
    ld d, l
    ld d, b
    rra
    ld b, l
    ld bc, $554d
    ld d, e
    ld c, c
    ld b, e
    rra
    add l
    ld bc, $4f4c
    ld b, e
    ld c, e
    jr nz, @+$58

    ld c, c
    ld b, l
    ld d, a
    nop

jr_007_459a:
    ld e, $62

jr_007_459c:
    nop

jr_007_459d:
    inc c
    add hl, bc
    rra
    add l
    nop
    ld d, h
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_007_45ea

    ld b, c
    ld b, e
    ld c, e
    rra
    push bc
    nop
    ld d, e

jr_007_45af:
    ld d, a
    ld b, c
    ld d, b
    jr nz, @+$55

    ld c, c
    ld b, h
    ld b, l
    ld d, e
    rra
    dec b
    ld bc, $454e
    ld d, a
    jr nz, @+$49

    ld b, c
    ld c, l
    ld b, l
    jr nz, @+$22

    rra
    ld b, l
    ld bc, $554d
    ld d, e
    ld c, c
    ld b, e
    rra
    add l
    ld bc, $4552
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_007_45f7

    jr nz, @+$22

    jr nz, jr_007_45db

jr_007_45db:
    call Call_007_4b1b
    call Call_007_4858
    ld de, $4600
    call Call_000_1c23
    call Call_007_425a

jr_007_45ea:
    call Call_007_426f
    ld de, $4628
    jr nz, jr_007_45f5

    ld de, $4631

jr_007_45f5:
    ld b, $32

jr_007_45f7:
    call Call_007_4a79
    call Call_007_4858
    jp Jump_007_414a


    ld e, $a2
    nop
    inc c
    ld [bc], a
    rra
    jp $4e00


    ld c, a
    ld d, a
    jr nz, @+$52

    ld c, h
    ld b, c
    ld e, c
    ld c, c
    ld c, [hl]
    ld b, a
    nop
    ld e, $a2
    nop
    inc c
    ld [bc], a
    rra
    jp $2000


    ld d, e
    ld b, c
    ld d, d
    ld b, a
    ld c, a
    ld c, [hl]
    jr nz, jr_007_466e

    ld d, e
    jr nz, jr_007_4628

jr_007_4628:
    rra
    and $00
    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    nop
    rra
    and $00
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    nop
    call Call_007_4b1b
    call Call_007_4858
    ld de, $4614
    call Call_000_1c23
    call Call_007_425a
    ld de, $4628
    ldh a, [$be]
    and a
    jr z, jr_007_4654

    ld de, $4631

jr_007_4654:
    ld b, $32
    call Call_007_4a79
    ld a, $01
    ld [$c7bc], a
    call Call_007_4858
    ld sp, $e000
    jp Jump_007_4174


    call Call_007_4dc7
    ret


    ld hl, $fffc

jr_007_466e:
    ld a, [hl]
    and a
    jr z, jr_007_4675

    ld [hl], $00
    ret


jr_007_4675:
    ldh a, [$be]
    set 0, a
    ld [hl], a
    ret


Call_007_467b:
    xor a
    ldh [$fc], a
    ret


    xor a
    ld [$c7c5], a
    jp Jump_000_08a5


    ld hl, $023c
    sub e
    ld b, [hl]
    adc l
    ld b, [hl]
    cp l
    ld b, [hl]
    cp l
    ld b, [hl]
    cp l
    ld b, [hl]
    ld e, $a3
    nop
    ld a, [bc]
    dec b
    rra
    add $00
    ld d, h
    ld c, b
    ld b, l
    ld c, l
    ld b, l
    jr nz, jr_007_46d3

    rra
    ld b, $01
    ld d, h
    ld c, b
    ld b, l
    ld c, l
    ld b, l
    jr nz, @+$34

    rra
    ld b, l
    ld bc, $554d
    ld d, e
    ld c, c
    ld b, e
    jr nz, jr_007_4705

    ld b, [hl]
    ld b, [hl]
    nop

Call_007_46b9:
    ld a, [$c7f8]
    ld c, a

Call_007_46bd:
    ld hl, $46ce
    ld a, c
    ld [$c7f8], a
    ld b, $00
    add hl, bc
    ld a, [hl]
    or $80
    ld [$c3bb], a
    ret


    ld [bc], a
    ld bc, $cd00
    ld e, b

jr_007_46d3:
    ld c, b
    ld a, $23
    ld [$c7f7], a
    ld a, [$c7f8]
    ld c, a
    ld a, $03
    jp Jump_007_445b


    ld e, $82
    nop
    dec c
    ld bc, $4153
    ld d, d
    ld b, a
    ld c, a
    ld c, [hl]
    jr nz, @+$55

    ld c, e
    ld c, c
    ld c, h
    ld c, h
    ld e, $04
    ld bc, $0101
    ld sp, $081e
    ld bc, $0101
    ld [hl-], a
    ld e, $0c
    ld bc, $0101
    inc sp

jr_007_4705:
    ld e, $84
    ld bc, $0101
    inc [hl]
    ld e, $88
    ld bc, $0101
    dec [hl]
    ld e, $8c
    ld bc, $0101
    ld [hl], $00

Call_007_4718:
    call Call_007_4858
    call Call_007_4b13
    ld de, $46e2
    call Call_000_1c23
    ldh a, [$c4]
    dec a

jr_007_4727:
    ldh [$c4], a
    ld c, $54
    cp $03
    jr c, jr_007_4733

    ld c, $74
    sub $03

jr_007_4733:
    swap a
    add a
    add $2c
    ld b, a
    ld a, $1f
    call Call_007_4b4f
    ld a, $90
    call Call_007_4b8f
    ld hl, $ff49
    inc [hl]
    call Call_007_4321
    call Call_007_4403
    ld b, a
    and $0f
    jr nz, jr_007_4778

    ldh a, [$c4]
    sla b
    jr nc, jr_007_475a

    add $03

jr_007_475a:
    sla b
    jr nc, jr_007_4760

    sub $03

jr_007_4760:
    sla b
    sbc $00
    sla b
    adc $00
    bit 7, a
    jr z, jr_007_4770

    add $06
    jr jr_007_4727

jr_007_4770:
    cp $06
    jr c, jr_007_4727

    sub $06
    jr jr_007_4727

jr_007_4778:
    ld hl, $ffc4
    inc [hl]
    ret


    ld e, $a3
    nop
    ld a, [bc]
    inc bc
    rra
    call nz, Call_007_5900
    ld c, a
    ld d, l
    jr nz, jr_007_47cd

    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, h
    rra
    db $e4
    nop
    ld d, h
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_007_47b8

    ld e, c
    ld c, a
    ld d, l
    ld d, d
    rra
    inc b
    ld bc, $574f
    ld c, [hl]
    jr nz, jr_007_47c4

    ld d, b
    ld c, c
    ld b, l
    ld b, e
    ld b, l
    nop
    ld e, $a2
    nop
    inc c
    ld bc, $c31f
    nop
    ld c, c
    ld c, [hl]
    ld d, [hl]
    ld b, c
    ld c, h
    ld c, c

jr_007_47b8:
    ld b, h
    jr nz, @+$4f

    ld c, a
    ld d, [hl]
    ld b, l
    nop
    ld e, $a1
    nop
    ld c, $01

jr_007_47c4:
    rra
    jp nz, $4e00

    ld c, a
    jr nz, jr_007_481b

    ld c, c
    ld b, l

jr_007_47cd:
    ld b, e
    ld b, l
    jr nz, jr_007_4825

    ld c, b
    ld b, l
    ld d, d
    ld b, l
    nop
    ld e, $a1
    nop
    ld c, $01
    rra
    jp nz, $4e00

    ld c, a
    ld d, h
    jr nz, @+$5b

    ld c, a
    ld d, l
    ld d, d
    jr nz, @+$52

    ld c, c
    ld b, l
    ld b, e
    ld b, l
    nop
    call Call_007_4377
    ld hl, $9800
    ld bc, $0000
    xor a

jr_007_47f7:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_007_47f7

    jp Jump_007_436b


Call_007_4801:
    and a
    jr nz, jr_007_480b

    ld a, [$c7c4]
    add $1f
    jr jr_007_4820

jr_007_480b:
    dec a
    and $87
    bit 7, a
    jr nz, jr_007_4814

    add $8c

jr_007_4814:
    ld e, a
    ld a, [$c7c4]
    or a
    jr nz, jr_007_481f

jr_007_481b:
    ld a, $06
    add e
    ld e, a

jr_007_481f:
    ld a, e

jr_007_4820:
    ld de, $9800
    add hl, de
    add a

jr_007_4825:
    add a
    push af
    ld de, $64b1
    pop af
    add e
    ld e, a
    jr nc, jr_007_4830

    inc d

jr_007_4830:
    ld bc, $001f

jr_007_4833:
    ldh a, [rSTAT]
    and $02
    jr z, jr_007_4833

jr_007_4839:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_4839

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


Call_007_484c:
    push af
    push bc
    push de
    push hl
    call Call_007_4858
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_007_4858:
Jump_007_4858:
    ld hl, $c7cd
    ld b, $10
    ld a, [$649f]

jr_007_4860:
    ld [hl+], a
    dec b
    jr nz, jr_007_4860

    ld [hl], $00
    ld hl, $9a21
    call Call_000_1c01
    ld hl, $c7cd
    ld b, $10
    ld a, [$634a]

jr_007_4874:
    ld [hl+], a
    dec b
    jr nz, jr_007_4874

    ld hl, $9801
    call Call_000_1c01
    xor a
    ld [$c7c4], a
    ldh a, [$fc]
    and a
    jr nz, jr_007_4889

    ldh a, [$be]

jr_007_4889:
    bit 7, a
    jr nz, jr_007_48c5

    ld hl, $002f
    ld de, $c615
    ld c, $08

jr_007_4895:
    push hl
    ld b, $08

jr_007_4898:
    push hl
    push de
    push bc
    ld a, [de]
    call Call_007_4801
    ld a, [$c7c4]
    xor $ff
    ld [$c7c4], a
    pop bc
    pop de
    inc de
    pop hl
    dec hl
    dec hl
    dec b
    jr nz, jr_007_4898

    ld a, [$c7c4]
    xor $ff
    ld [$c7c4], a
    inc de
    inc de
    pop hl
    dec c
    ret z

    ld a, c
    ld bc, $0040
    add hl, bc
    ld c, a
    jr jr_007_4895

jr_007_48c5:
    ld hl, $002f
    ld de, $c662
    ld c, $08

jr_007_48cd:
    push hl
    ld b, $08

jr_007_48d0:
    push hl
    push de
    push bc
    ld a, [de]
    call Call_007_4801
    ld a, [$c7c4]
    xor $ff
    ld [$c7c4], a
    pop bc
    pop de
    dec de
    pop hl
    dec hl
    dec hl
    dec b
    jr nz, jr_007_48d0

    ld a, [$c7c4]
    xor $ff
    ld [$c7c4], a
    dec de
    dec de
    pop hl
    dec c
    ret z

    ld a, c
    ld bc, $0040
    add hl, bc
    ld c, a
    jr jr_007_48cd

Call_007_48fd:
    ld l, a
    ld a, [$c7c5]
    cp $02
    jr c, jr_007_491b

    ld a, [$c7c6]
    and a
    jr nz, jr_007_491b

    ld a, l
    and $a0
    rrca
    ld h, a
    ld a, l
    and $50
    add a
    add h
    ld h, a
    ld a, l
    and $0f
    add h
    ret


jr_007_491b:
    ld a, l
    ret


Call_007_491d:
    call Call_000_2917
    ld a, $e0
    ldh [rOBP0], a
    call Call_007_4b13
    ld bc, $0305
    ld a, [$c7c5]
    cp $02
    jr c, jr_007_493a

    ld a, [$c7c6]
    and a
    jr nz, jr_007_493a

    ld bc, $0402

jr_007_493a:
    ld e, $22
    jp Jump_007_4a0d


Jump_007_493f:
    ld e, a
    call Call_007_43fc
    call Call_007_48fd
    ld hl, $c3ba
    ld [hl], $87
    bit 2, a
    jr z, jr_007_495d

    ld a, e
    cp $22
    call nz, Call_007_4986
    call Call_007_4436
    ld e, $22
    jp Jump_007_4a0d


jr_007_495d:
    bit 1, a
    jr nz, jr_007_497b

    bit 0, a
    jp z, Jump_007_49ed

    ld a, e
    cp $22
    jr z, jr_007_49c4

    call Call_007_4af9
    ld a, l
    ldh [$f4], a
    ld a, [hl]
    and a
    jr nz, jr_007_4997

    ldh a, [$f3]
    cp l
    ld l, a
    jr nz, jr_007_499f

jr_007_497b:
    ld a, e
    cp $22
    jp z, Jump_007_4a0d

Jump_007_4981:
    call Call_007_4986
    jr jr_007_493a

Call_007_4986:
    ldh a, [$f3]
    ld l, a
    ld h, $c6
    ld [hl], d
    ld a, $86
    ld [$c3ba], a
    push bc
    call Call_007_4858
    pop bc
    ret


jr_007_4997:
    ldh a, [$bf]
    xor [hl]
    bit 7, a
    jp z, Jump_007_4a4c

jr_007_499f:
    ld h, $c6
    ldh a, [$f3]
    ld l, a
    ld [hl], d
    push bc
    push de
    push hl
    call Call_007_5e9a
    pop hl
    pop de
    pop bc
    jp z, Jump_007_4a43

    ld a, $86
    ld [$c3ba], a
    call Call_007_5d1e
    call $2541
    call Call_007_4858
    call Call_007_4b1b
    xor a
    ret


jr_007_49c4:
    call Call_007_4af9
    ld a, [hl]
    ld d, a
    and a
    jr z, jr_007_4a33

    ldh a, [$bf]
    xor [hl]
    bit 7, a
    jr nz, jr_007_4a3b

    ld a, $85
    ld [$c3ba], a
    ld [hl], $00
    ld a, l
    ldh [$f3], a
    ld a, d
    dec a
    and $87
    bit 7, a
    jr nz, jr_007_49e7

    add $98

jr_007_49e7:
    ld e, a

jr_007_49e8:
    call Call_007_484c
    jr jr_007_4a0d

Jump_007_49ed:
    bit 6, a
    jr z, jr_007_49f6

    set 3, c
    dec c
    res 3, c

jr_007_49f6:
    bit 7, a
    jr z, jr_007_49fd

    inc c
    res 3, c

jr_007_49fd:
    bit 5, a
    jr z, jr_007_4a06

    set 3, b
    dec b
    res 3, b

jr_007_4a06:
    bit 4, a
    jr z, jr_007_4a0d

    inc b
    res 3, b

Jump_007_4a0d:
jr_007_4a0d:
    push bc
    ld a, b
    and $07
    swap a
    add $12
    ld b, a
    ld a, c
    and $07
    swap a
    add $1a
    ld c, a
    ld a, e
    cp $22
    jr nz, jr_007_4a2b

    ld a, b
    add $08
    ld b, a
    ld a, c
    add $08
    ld c, a

jr_007_4a2b:
    ld a, e
    call Call_007_4b4f
    pop bc
    jp Jump_007_493f


jr_007_4a33:
    ld hl, $47bf
    call Call_007_4a54
    jr jr_007_49e8

jr_007_4a3b:
    ld hl, $47d6
    call Call_007_4a54
    jr jr_007_49e8

Jump_007_4a43:
    ld hl, $47aa
    call Call_007_4a54
    jp Jump_007_4981


Jump_007_4a4c:
    ld hl, $477d
    call Call_007_4a54
    jr jr_007_49e8

Call_007_4a54:
    push de
    push bc
    ld a, $84
    ld [$c3ba], a
    ld e, l
    ld d, h
    ld a, [$c7c5]
    cp $02
    jr c, jr_007_4a6c

    ldh a, [$bf]
    ld b, a
    ldh a, [$be]
    cp b
    jr z, jr_007_4a6f

jr_007_4a6c:
    call Call_000_1c23

jr_007_4a6f:
    call Call_007_43fc
    xor a
    ld [$c3ba], a
    pop bc
    pop de
    ret


Call_007_4a79:
    push bc
    call Call_000_1c23
    pop bc
    jp Jump_007_43da


Call_007_4a81:
    xor a
    ldh [$fb], a
    ld a, [$c7c5]
    and a
    jr nz, jr_007_4a95

    ld hl, $ffbe
    ldh a, [$bf]
    xor [hl]
    ld de, $4add
    jr z, jr_007_4aa0

jr_007_4a95:
    ld de, $4ac1
    ldh a, [$bf]
    and a
    jr z, jr_007_4aa0

    ld de, $4acf

jr_007_4aa0:
    ld hl, $9852
    ld bc, $0020

jr_007_4aa6:
    ldh a, [rSTAT]
    and $02
    jr z, jr_007_4aa6

jr_007_4aac:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_4aac

    ld a, [de]
    and a
    ret z

    add $8b
    ld [hl], a
    inc de
    add hl, bc
    jr jr_007_4aa6

    ld de, $4aeb
    jr jr_007_4aa0

    ld d, a
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    ld b, b
    ld d, h
    ld c, a
    ld b, b
    ld d, b
    ld c, h
    ld b, c
    ld e, c
    nop
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    ld b, b
    ld d, h
    ld c, a
    ld b, b
    ld d, b
    ld c, h
    ld b, c
    ld e, c
    nop
    ld b, b
    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld c, e
    ld c, c
    ld c, [hl]
    ld b, a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld d, d
    ld b, l
    ld b, c
    ld b, h
    ld e, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop

Call_007_4af9:
    ld h, $c6
    ld a, c
    add a
    add a
    add c
    add a
    sub b
    add $1c
    ld l, a
    ldh a, [$fc]
    and a
    jr nz, jr_007_4b0b

    ldh a, [$be]

jr_007_4b0b:
    and $80
    ret z

    ld a, $77
    sub l
    ld l, a
    ret


Call_007_4b13:
    push hl
    ld hl, $ffe6
    set 1, [hl]
    pop hl
    ret


Call_007_4b1b:
    push hl
    ld hl, $ffe6
    res 1, [hl]
    pop hl
    ret


Call_007_4b23:
    ldh a, [$e6]
    and $f9
    or $02
    ldh [$e6], a
    ld hl, $c200
    xor a
    ld b, $28
    ld de, $0004

jr_007_4b34:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_007_4b34

    ret


Call_007_4b3a:
    push de
    push bc
    push af
    ld hl, $c200
    jr jr_007_4b61

Call_007_4b42:
    push af
    push bc
    ld a, $c0
    ld c, a
    ld b, a
    xor a
    call Call_007_4b4f
    pop bc
    pop af
    ret


Call_007_4b4f:
    push de
    push bc
    push af
    ld hl, $c200
    push af
    ld de, $64b1
    pop af
    add a
    add a
    add e
    ld e, a
    jr nc, jr_007_4b61

    inc d

jr_007_4b61:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $08
    add b
    ld [hl], c
    inc hl
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, c
    add $08
    ld c, a
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, b
    add $08
    ld [hl], c
    inc hl
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    pop af
    pop bc
    pop de
    ret


Call_007_4b8f:
    ld de, $fffc
    dec l
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    ret


Call_007_4b9b:
    call Call_007_4377
    ld de, $8000
    ld hl, $3359
    ld bc, $0d00
    jp Jump_007_4384


    ld hl, $6075
    call Call_007_439d
    call Call_007_4b9b
    call Call_007_43b8
    call Call_007_436b
    ld hl, $c7c5

jr_007_4bbc:
    ld a, [hl]
    rrca
    rrca
    rrca
    add $28
    ld c, a
    ld b, $18
    ld de, $61dd
    push hl
    call Call_007_4b3a
    pop hl

jr_007_4bcd:
    ld a, [$c7c9]
    cp $01
    jr z, jr_007_4bed

    call Call_007_43ce
    and a
    jr z, jr_007_4bcd

    bit 6, a
    jr nz, jr_007_4bfe

    bit 7, a
    jr nz, jr_007_4bf6

    bit 3, a
    jr z, jr_007_4bcd

    call Call_007_4b23
    ld a, [$c7c5]
    ret


jr_007_4bed:
    call Call_007_4b23
    ld a, $03
    ld [$c7c5], a
    ret


jr_007_4bf6:
    ld a, [hl]
    cp $02
    jr nc, jr_007_4bcd

    inc [hl]
    jr jr_007_4bbc

jr_007_4bfe:
    ld a, [hl]
    or a
    jr z, jr_007_4bcd

    dec [hl]
    jr jr_007_4bbc

Call_007_4c05:
    call Call_007_4377
    call Call_007_4b1b
    ld hl, $61e1
    call Call_007_439d
    call Call_007_43b8
    call Call_007_436b
    ld de, $4c96
    call Call_000_1c23
    ld a, [$c7c9]
    cp $01
    jr z, jr_007_4c4e

jr_007_4c24:
    ld a, $80
    ldh [$be], a
    ld hl, $9843
    call Call_007_4ced
    ld b, $14
    call Call_007_43da
    jr nz, jr_007_4c3f

    call Call_007_4ca6
    ld b, $0a
    call Call_007_43da
    jr z, jr_007_4c24

jr_007_4c3f:
    call Call_007_4ca6
    call Call_007_48fd
    ld b, a
    and $0f
    jr nz, jr_007_4c79

    bit 4, b
    jr z, jr_007_4c24

jr_007_4c4e:
    xor a
    ldh [$be], a
    ld hl, $984d
    call Call_007_4ced
    ld b, $14
    call Call_007_43da
    jr nz, jr_007_4c68

    call Call_007_4cb2
    ld b, $0a
    call Call_007_43da
    jr z, jr_007_4c4e

jr_007_4c68:
    call Call_007_4cb2
    call Call_007_48fd
    ld b, a
    and $0f
    jr nz, jr_007_4c79

    bit 5, b
    jr nz, jr_007_4c24

    jr jr_007_4c4e

Call_007_4c79:
Jump_007_4c79:
jr_007_4c79:
    ld a, $00
    ldh [$f9], a
    ldh [$f7], a
    ldh a, [$be]
    and a
    jr z, jr_007_4c8d

    ld a, $c9
    ldh [$fa], a
    ld a, $d1
    ldh [$f8], a
    ret


jr_007_4c8d:
    ld a, $d1
    ldh [$fa], a
    ld a, $c9
    ldh [$f8], a
    ret


    rra
    inc b
    ld [bc], a
    ld b, e
    ld c, b
    ld c, a
    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_007_4ce4

    ld c, a
    ld c, h
    ld c, a
    ld d, d
    nop

Call_007_4ca6:
    push af
    ld de, $9843
    ld hl, $002b
    call Call_007_4cbe
    pop af
    ret


Call_007_4cb2:
    push af
    ld de, $984d
    ld hl, $0035
    call Call_007_4cbe
    pop af
    ret


Call_007_4cbe:
    ld bc, $61e1
    add hl, bc
    ld b, $0c

jr_007_4cc4:
    ldh a, [rSTAT]
    and $02
    jr z, jr_007_4cc4

jr_007_4cca:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_4cca

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    ret z

    ld a, b
    ld bc, $0010
    add hl, bc
    ld b, a

jr_007_4ce4:
    ld a, $1c
    add e
    ld e, a
    jr nc, jr_007_4cc4

    inc d
    jr jr_007_4cc4

Call_007_4ced:
    ld b, $0c
    ld de, $001c

jr_007_4cf2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_4cf2

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, de
    dec b
    jr nz, jr_007_4cf2

    ret


Call_007_4d02:
    ret


    jr jr_007_4d37

    ld [bc], a
    ld a, [bc]
    ld c, l
    scf
    ld c, l
    ld e, $82
    nop
    inc c
    dec b
    rra
    and h
    nop
    ld d, h
    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$44

    ld b, c
    ld b, e
    ld c, e
    rra
    db $e4
    nop
    ld b, e
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, @+$49

    ld b, c
    ld c, l
    ld b, l
    rra
    inc h
    ld bc, $4c50
    ld b, c
    ld e, c
    jr nz, jr_007_4d73

    ld b, a
    ld b, c
    ld c, c
    ld c, [hl]
    nop

jr_007_4d37:
    pop af
    daa
    ld [hl], e
    ld c, l
    dec a
    ld c, l
    call Call_007_4b9b
    ld a, [$c7c5]
    cp $02
    jp c, Jump_007_4130

    jp z, Jump_007_41e3

    jp Jump_007_4216


jr_007_4d4e:
    ld a, [$d900]
    ld e, a
    ldh a, [$be]
    ld d, a
    push de
    ld a, $23
    ld [$c7f7], a
    ld a, $05
    ld c, $00
    call Call_007_445b
    pop de
    ld a, [$d900]
    sub e
    ld e, a
    ldh a, [$be]
    xor d
    or e
    jr z, jr_007_4d4e

    jp Jump_007_4858


    ret


    ret


jr_007_4d73:
    ldh a, [rLCDC]
    rla
    jp nc, Jump_000_0070

    di

jr_007_4d7a:
    ldh a, [rLY]
    cp $91
    jr nc, jr_007_4d7a

jr_007_4d80:
    ldh a, [rLY]
    cp $91
    jr c, jr_007_4d80

    xor a
    ldh [rLCDC], a
    jp Jump_000_0070


    ld a, $09
    call Call_000_1c8c
    jp Jump_007_40cd


    call Call_007_4da0
    jp Jump_007_41e3


    call Call_007_4da0
    jp Jump_007_4216


Call_007_4da0:
    ld a, [$c012]
    ld [$c011], a
    ld [$c7c5], a
    ret


Call_007_4daa:
    ld b, $78
    ld hl, $c600
    ld a, $ff

jr_007_4db1:
    ld [hl+], a
    dec b
    jr nz, jr_007_4db1

    ld hl, $c615
    ld c, $08
    xor a

jr_007_4dbb:
    ld b, $08

jr_007_4dbd:
    ld [hl+], a
    dec b
    jr nz, jr_007_4dbd

    inc hl
    inc hl
    dec c
    jr nz, jr_007_4dbb

    ret


Call_007_4dc7:
    call Call_007_4daa
    ld hl, $c615
    ld de, $4df4
    ld b, $12

jr_007_4dd2:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_007_4dd2

    ld hl, $c65b
    ld de, $4df4
    ld b, $08

jr_007_4de0:
    ld a, [de]
    or $80
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_007_4de0

    ld hl, $c651
    ld a, $81
    ld b, $08

jr_007_4def:
    ld [hl+], a
    dec b
    jr nz, jr_007_4def

    ret


    inc b
    ld [bc], a
    inc bc
    dec b
    ld b, $03
    ld [bc], a
    inc b
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $cd01
    xor d
    ld c, l

Call_007_4e09:
    ld hl, $c694
    ld b, $0a
    xor a

jr_007_4e0f:
    ld [hl+], a
    dec b
    jr nz, jr_007_4e0f

    ret


Call_007_4e14:
    ld hl, $401f
    ldh a, [$9e]
    add l
    ld l, a
    ld b, [hl]
    sub $07
    ld l, a
    ld a, [hl]
    cp $10
    jr nz, jr_007_4e2d

    ld hl, $ffbf
    bit 7, [hl]
    jr z, jr_007_4e2d

    add $04

jr_007_4e2d:
    ld hl, $4000
    add l
    ld l, a

jr_007_4e32:
    push de
    ld c, [hl]
    push hl

jr_007_4e35:
    ld a, c
    add e
    ld e, a
    ld a, [de]
    and a
    jr z, jr_007_4e49

    cp $ff
    jr z, jr_007_4e64

    ld hl, $ffc0
    xor [hl]
    bit 7, a
    jr z, jr_007_4e64

    xor [hl]

jr_007_4e49:
    ldh [$e8], a
    push af
    ldh a, [$9e]
    cp $01
    jr z, jr_007_4e71

    call Call_007_4f79
    jr c, jr_007_4e6c

    pop af
    jr nz, jr_007_4e64

    ldh a, [$9e]
    cp $06
    jr z, jr_007_4e64

    cp $03
    jr nc, jr_007_4e35

Jump_007_4e64:
jr_007_4e64:
    pop hl
    inc hl
    pop de
    dec b
    jr nz, jr_007_4e32

    and a
    ret


jr_007_4e6c:
    pop af

jr_007_4e6d:
    pop hl
    pop de
    scf
    ret


jr_007_4e71:
    ld a, b
    cp $03
    jr nc, jr_007_4e8b

    pop af
    jr nz, jr_007_4e87

    call Call_007_4f79
    jr c, jr_007_4e6d

    ldh a, [$c0]
    bit 3, a
    jr nz, jr_007_4e87

    dec b
    jr nz, jr_007_4e35

jr_007_4e87:
    pop hl
    pop de
    and a
    ret


jr_007_4e8b:
    pop af
    jr z, jr_007_4e95

    call Call_007_4f79
    jr nc, jr_007_4e64

    jr jr_007_4e6d

jr_007_4e95:
    ldh a, [$96]
    ld hl, $ffc0
    bit 7, [hl]
    jr z, jr_007_4ea0

    add $0a

jr_007_4ea0:
    cp $3d
    jp c, Jump_007_4e64

    cp $45
    jp nc, Jump_007_4e64

    ld a, [$d900]
    and a
    jp z, Jump_007_4e64

    push de
    call Call_000_27af
    ld hl, $fffa
    add hl, de
    pop de
    bit 4, [hl]
    jp z, Jump_007_4e64

    dec hl
    ld a, [hl]
    ldh [$9c], a
    ld h, $c6
    ld l, a
    ld a, [hl]
    ldh [$c2], a
    and $07
    cp $01
    jp nz, Jump_007_4e64

    ld a, l
    sub e
    jr nc, jr_007_4ed6

    cpl
    inc a

jr_007_4ed6:
    cp $0a
    jp nz, Jump_007_4e64

    ld a, $40
    ldh [$e8], a
    call Call_007_4f79
    jr c, jr_007_4e6d

    ldh a, [$96]
    ldh [$9a], a
    ldh a, [$9c]
    ldh [$96], a
    ld e, a
    ldh a, [$c2]
    ldh [$e8], a
    call Call_007_4f87
    ldh a, [$9a]
    ldh [$96], a
    ld hl, $ffae
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    dec hl
    dec hl
    dec hl
    xor a
    ld [hl-], a
    ld [hl], a
    ld a, l
    ldh [$ae], a
    ld a, h
    ldh [$af], a
    jp Jump_007_4e64


Call_007_4f0e:
    call Call_007_4ff1
    ret nz

    ld a, e
    ldh [$96], a
    ld a, [de]
    bit 3, a
    ret nz

    ld bc, $02ff
    ld a, $03

Jump_007_4f1e:
    push de
    add e
    ld e, a
    ldh [$98], a
    ld a, [de]
    and $7f
    cp $04
    jr nz, jr_007_4f6a

jr_007_4f2a:
    ld a, e
    add c
    ld e, a
    ld a, [de]
    and a
    jr nz, jr_007_4f6a

    ld a, b
    cp $03
    jr z, jr_007_4f3b

    call Call_007_5000
    jr nz, jr_007_4f6a

jr_007_4f3b:
    dec b
    jr nz, jr_007_4f2a

    ld a, e
    sub c
    ld e, a
    ld a, $40
    ldh [$e8], a
    call Call_007_4f79
    jr c, jr_007_4f6a

    ldh a, [$98]
    ldh [$96], a
    ld a, e
    add c
    ld e, a
    xor a
    ldh [$e8], a
    call Call_007_4f87
    ld hl, $ffae
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    dec hl
    dec hl
    dec hl
    xor a
    ld [hl-], a
    ld [hl], a
    ld a, l
    ldh [$ae], a
    ld a, h
    ldh [$af], a

jr_007_4f6a:
    pop de
    bit 7, c
    ret z

    ld a, e
    ldh [$96], a
    ld bc, $0301
    ld a, $fc
    jp Jump_007_4f1e


Call_007_4f79:
    ld hl, $ffb0
    ldh a, [$fd]
    sub [hl]
    inc hl
    ldh a, [$fe]
    sbc [hl]
    nop
    nop
    nop
    ret c

Call_007_4f87:
    ld hl, $ffae
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$b0]
    ld [hl+], a
    ldh [$ae], a
    ldh a, [$b1]
    ld [hl], a
    ldh [$af], a
    ld h, a
    ldh a, [$b0]
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ldh a, [$96]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ldh a, [$e8]
    ld [hl+], a
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    and a
    ret


Call_007_4fae:
    ld hl, $ffa4
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ldh a, [$b0]
    ld [hl+], a
    ldh a, [$b1]
    ld [hl+], a
    ld a, l
    ldh [$a4], a
    ldh [$ae], a
    ld a, h
    ldh [$a5], a
    ldh [$af], a
    call Call_007_4f0e
    ld de, $c615

jr_007_4fcc:
    ld a, [de]
    and a
    jr z, jr_007_4fea

    cp $ff
    jr z, jr_007_4fea

    ld hl, $ffbf
    xor [hl]
    bit 7, a
    jr nz, jr_007_4fea

    xor [hl]
    ldh [$c0], a
    and $07
    ldh [$9e], a
    ld a, e
    ldh [$96], a
    call Call_007_4e14
    ret c

jr_007_4fea:
    inc e
    ld a, e
    cp $63
    jr nz, jr_007_4fcc

    ret


Call_007_4ff1:
    ldh a, [$bf]
    ld hl, $ffda
    and a
    jr z, jr_007_4ffa

    inc hl

jr_007_4ffa:
    ld d, $c6
    ld e, [hl]
    ld a, [de]
    ldh [$c0], a

Call_007_5000:
    push bc
    ld a, $00
    ldh [$a2], a
    ld b, $10

jr_007_5007:
    push de
    ld h, $40
    ldh a, [$a2]
    ld l, a
    ld c, [hl]
    ld l, $fe

jr_007_5010:
    inc l
    ld a, e
    add c
    ld e, a
    ld a, [de]
    inc a
    jr z, jr_007_5020

    dec a
    jr nz, jr_007_502b

    ld a, b
    cp $09
    jr nc, jr_007_5010

jr_007_5020:
    ld hl, $ffa2
    inc [hl]
    pop de
    dec b
    jr nz, jr_007_5007

    pop bc
    xor a
    ret


jr_007_502b:
    ld h, a
    ldh a, [$c0]
    xor h
    bit 7, a
    jr z, jr_007_5020

    ld a, h
    and $07
    ld h, a
    ld a, b
    cp $09
    jr c, jr_007_5079

    ld a, h
    cp $05
    jr z, jr_007_507e

    bit 7, l
    jr z, jr_007_5049

    cp $06
    jr z, jr_007_507e

jr_007_5049:
    ld a, b
    cp $0d
    jr c, jr_007_5071

    ld a, h
    cp $03
    jr z, jr_007_507e

    bit 7, l
    jr z, jr_007_5020

    cp $01
    jr nz, jr_007_5020

    ldh a, [$c0]
    bit 7, a
    jr nz, jr_007_5069

    ld a, b
    cp $0f
    jr c, jr_007_5020

    jp Jump_007_507e


jr_007_5069:
    ld a, b
    cp $0f
    jr nc, jr_007_5020

    jp Jump_007_507e


jr_007_5071:
    ld a, h
    cp $04
    jr nz, jr_007_5020

    jp Jump_007_507e


jr_007_5079:
    ld a, h
    cp $02
    jr nz, jr_007_5020

Jump_007_507e:
jr_007_507e:
    pop de
    pop bc
    or $01
    ret


Call_007_5083:
    xor a
    ldh [$dd], a
    ld a, $7f
    ldh [$dc], a
    ld de, $c615

jr_007_508d:
    ld a, [de]
    inc a
    jr z, jr_007_50d1

    dec a
    jr z, jr_007_50d1

    ldh [$c0], a
    and $07
    ldh [$9e], a
    ld hl, $401f
    ldh a, [$9e]
    add l
    ld l, a
    ld b, [hl]
    sub $07
    ld l, a
    ld a, [hl]
    cp $10
    jr nz, jr_007_50b5

    dec b
    dec b
    ld hl, $ffc0
    bit 7, [hl]
    jr z, jr_007_50b5

    add $04

jr_007_50b5:
    ld hl, $4000
    add l
    ld l, a

jr_007_50ba:
    push de
    ld c, [hl]
    push hl
    xor a
    ldh [$a2], a
    ld a, e
    ldh [$96], a

Jump_007_50c3:
    ld a, c
    add e
    ld e, a
    ld a, [de]
    cp $ff
    jr nz, jr_007_50d8

Jump_007_50cb:
jr_007_50cb:
    pop hl
    inc hl
    pop de
    dec b
    jr nz, jr_007_50ba

jr_007_50d1:
    inc e
    ld a, e
    cp $63
    jr nz, jr_007_508d

    ret


jr_007_50d8:
    ld hl, $ffa2
    bit 1, [hl]
    jr nz, jr_007_5125

    ld hl, $7a42
    add hl, de
    ld a, [hl]
    sra a
    ld hl, $ffc0
    bit 7, [hl]
    jr z, jr_007_50ef

    cpl
    inc a

jr_007_50ef:
    ld hl, $ffd3
    add [hl]
    ld [hl], a
    ld a, [de]
    and a
    jr z, jr_007_5154

    ld h, a
    ldh a, [$c0]
    xor h
    bit 7, a
    jr z, jr_007_5140

    ld a, h
    and $07
    cp $06
    jr nz, jr_007_5113

    ldh a, [$bf]
    xor h
    bit 7, a
    jp z, Jump_007_51dd

    ld a, $01
    ldh [$cb], a

jr_007_5113:
    ld hl, $ffa2
    bit 0, [hl]
    jr nz, jr_007_511c

    set 1, [hl]

jr_007_511c:
    set 7, [hl]

jr_007_511e:
    ld hl, $ffdc
    ld a, [hl]
    dec [hl]
    jr jr_007_514a

jr_007_5125:
    and a
    jp z, Jump_007_50c3

    ld h, a
    and $07
    cp $01
    jr z, jr_007_50cb

    ldh a, [$c0]
    xor h
    bit 7, a
    jr z, jr_007_50cb

    set 7, e
    ld hl, $ffa2
    res 1, [hl]
    jr jr_007_511e

jr_007_5140:
    ld hl, $ffa2
    set 0, [hl]
    ld hl, $ffdd
    ld a, [hl]
    inc [hl]

jr_007_514a:
    ld hl, $c500
    ld l, a
    ld [hl], e
    set 7, l
    ldh a, [$96]
    ld [hl], a

jr_007_5154:
    ldh a, [$9e]
    cp $03
    jp c, Jump_007_50cb

    cp $06
    jp z, Jump_007_50cb

    ld hl, $ffa2
    bit 1, [hl]
    jp nz, Jump_007_50c3

    bit 7, [hl]
    jp nz, Jump_007_50cb

    ld a, [de]
    and $07
    jp z, Jump_007_50c3

    ldh a, [$9e]
    cp $04
    jr nz, jr_007_518c

    ld a, [de]
    cp $04
    jp z, Jump_007_50c3

    cp $05
    jp nz, Jump_007_50cb

    ld hl, $ff96
    set 7, [hl]
    jp Jump_007_50c3


jr_007_518c:
    cp $03
    jr nz, jr_007_51a2

    ld a, [de]
    cp $01
    jr z, jr_007_51cd

    cp $05
    jp nz, Jump_007_50cb

    ld hl, $ff96
    set 7, [hl]
    jp Jump_007_50c3


jr_007_51a2:
    ld a, [de]
    cp $03
    jr nz, jr_007_51b0

    ld a, b
    cp $05
    jp c, Jump_007_50cb

    jp Jump_007_50c3


jr_007_51b0:
    cp $04
    jr nz, jr_007_51bd

    ld a, b
    cp $05
    jp c, Jump_007_50c3

    jp Jump_007_50cb


jr_007_51bd:
    cp $05
    jp z, Jump_007_50c3

    cp $01
    jp nz, Jump_007_50cb

    ld a, b
    cp $05
    jp c, Jump_007_50cb

jr_007_51cd:
    ldh a, [$c0]
    xor c
    bit 7, a
    jp nz, Jump_007_50cb

    ld hl, $ffa2
    set 7, [hl]
    jp Jump_007_50c3


Jump_007_51dd:
    pop hl
    pop de
    pop hl
    ret


Call_007_51e1:
    ldh a, [$dc]
    cpl
    add $80
    ret z

    ld hl, $c57f
    ld b, a

jr_007_51eb:
    bit 7, [hl]
    jr nz, jr_007_51f4

Jump_007_51ef:
    dec l
    dec b
    jr nz, jr_007_51eb

    ret


jr_007_51f4:
    push hl
    push bc
    ld a, [hl]
    and $7f
    ld d, a
    inc l
    ld e, [hl]
    set 7, l
    ld c, [hl]
    push hl
    ld h, $c6
    ld l, a
    ld a, [hl]
    and $07
    ldh [$eb], a
    pop hl
    cp $06
    jr z, jr_007_522c

    ld a, c
    ld h, $c6
    ld l, a
    ld a, [hl]
    and $07
    ld hl, $ffeb
    cp [hl]
    jr c, jr_007_522c

    ld hl, $c500
    ldh a, [$dd]
    and a
    jr z, jr_007_528e

    ld b, a
    ld a, d

jr_007_5224:
    cp [hl]
    jp z, Jump_007_5311

    inc l
    dec b
    jr nz, jr_007_5224

jr_007_522c:
    ld hl, $c580
    ldh a, [$dd]
    and a
    jr z, jr_007_528e

    ld b, a

jr_007_5235:
    ld a, [hl]
    and $7f
    cp e
    jr nz, jr_007_528a

    res 7, l
    ld a, [hl]
    and $7f
    cp d
    jr z, jr_007_5288

    push hl
    ld h, $c6
    ld l, a
    ldh a, [$eb]
    cp $06
    jr z, jr_007_5259

    ld a, [hl]
    and $07
    ld hl, $ffeb
    cp [hl]
    pop hl
    jr nc, jr_007_5288

    jr jr_007_525a

jr_007_5259:
    pop hl

jr_007_525a:
    push de
    push bc
    push hl
    ld a, [hl]
    and $7f
    ld d, a
    ld hl, $c5ff
    ldh a, [$dc]
    cpl
    add $80
    ld b, a

jr_007_526a:
    ld a, [hl]
    and $7f
    cp c
    jr nz, jr_007_527f

    res 7, l
    ld a, [hl]
    set 7, l
    and $7f
    cp d
    jr nz, jr_007_527f

    pop hl
    pop bc
    pop de
    jr jr_007_5288

jr_007_527f:
    dec l
    dec b
    jr nz, jr_007_526a

    pop hl
    pop bc
    pop de
    ld [hl], $00

jr_007_5288:
    set 7, l

jr_007_528a:
    inc l
    dec b
    jr nz, jr_007_5235

jr_007_528e:
    ld hl, $c5ff
    ldh a, [$dc]
    cpl
    add $80
    ld b, a

jr_007_5297:
    ld a, [hl]
    and $7f
    cp e
    jr nz, jr_007_530d

    res 7, l
    ld a, [hl]
    and $7f
    cp c
    jr z, jr_007_530b

    push hl
    ld h, $c6
    ld l, a
    ldh a, [$eb]
    cp $06
    jr z, jr_007_52dc

    ld a, [hl]
    and $07
    ld hl, $ffeb
    cp [hl]
    pop hl
    jr nc, jr_007_530b

    dec l
    dec b
    jr nz, jr_007_52c1

    inc b

jr_007_52be:
    inc l
    jr jr_007_52dd

jr_007_52c1:
    bit 7, [hl]
    jr z, jr_007_52be

    ld a, [hl]
    and $7f
    push hl
    ld h, $c6
    ld l, a
    ld a, [hl]
    and $07
    ld hl, $ffeb
    cp [hl]
    pop hl
    jr nc, jr_007_530b

    inc l
    ld [hl], $00
    dec l
    jr jr_007_52dd

jr_007_52dc:
    pop hl

jr_007_52dd:
    ldh a, [$dd]
    and a
    jr z, jr_007_5309

    push de
    push bc
    push hl
    ld b, a
    ld a, [hl]
    and $7f
    ld d, a
    ld hl, $c580

jr_007_52ed:
    ld a, [hl]
    and $7f
    cp c
    jr nz, jr_007_5302

    res 7, l
    ld a, [hl]
    set 7, l
    and $7f
    cp d
    jr nz, jr_007_5302

    pop hl
    pop bc
    pop de
    jr jr_007_530b

jr_007_5302:
    inc l
    dec b
    jr nz, jr_007_52ed

    pop hl
    pop bc
    pop de

jr_007_5309:
    ld [hl], $00

jr_007_530b:
    set 7, l

jr_007_530d:
    dec l
    dec b
    jr nz, jr_007_5297

Jump_007_5311:
    pop bc
    pop hl
    jp Jump_007_51ef


Call_007_5316:
    push hl
    xor a
    ld c, $04
    ld hl, $c678

jr_007_531d:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_007_531d

    pop hl
    ld c, a

Jump_007_5329:
    set 7, [hl]
    push hl
    set 7, l
    ld e, [hl]
    ld a, e
    and $7f
    ld h, $c6
    ld l, a
    ld a, [hl]
    ld hl, $c678
    bit 7, a
    jr z, jr_007_5340

    ld hl, $c686

jr_007_5340:
    inc [hl]
    and $07
    ld d, a
    bit 7, e
    jr z, jr_007_5364

    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    and $0f
    jr z, jr_007_5366

    ld a, [hl]
    and $f0
    jr z, jr_007_5359

    inc l
    jr jr_007_5366

jr_007_5359:
    ld a, [hl]
    swap d
    and $0f
    add d
    swap d
    ld [hl], a
    jr jr_007_5377

jr_007_5364:
    add l
    ld l, a

jr_007_5366:
    ld a, d
    push de

jr_007_5368:
    ld d, a
    ld a, [hl]
    swap a
    ld e, a
    and $f0
    add d
    ld [hl+], a
    ld a, e
    and $0f
    jr nz, jr_007_5368

    pop de

jr_007_5377:
    pop hl
    ldh a, [$98]
    bit 0, c
    jr z, jr_007_5389

jr_007_537e:
    dec b
    jr nz, jr_007_5382

    ret


jr_007_5382:
    inc l
    cp [hl]
    jr nz, jr_007_537e

    jp Jump_007_5329


jr_007_5389:
    dec b
    jr nz, jr_007_5399

    ld hl, $ffdd
    ld b, [hl]
    ld hl, $c500
    set 0, c
    inc b
    dec l
    jr jr_007_537e

jr_007_5399:
    dec l
    cp [hl]
    jr nz, jr_007_5389

    jp Jump_007_5329


Call_007_53a0:
    ld h, $c6
    ldh a, [$98]
    ld l, a
    ld a, [hl]
    ldh [$c0], a
    ld hl, $c678
    ld de, $c686
    bit 7, a
    jr nz, jr_007_53b7

    ld e, l
    ld d, h
    ld hl, $c686

jr_007_53b7:
    ld a, [hl]
    ldh [$e9], a
    ld a, [de]
    ldh [$ea], a
    ld a, l
    ldh [$eb], a
    ld a, h
    ldh [$ec], a
    ld a, e
    ldh [$ed], a
    ld a, d
    ldh [$ee], a
    ldh a, [$c0]
    and $07
    ld hl, $4026
    add l
    ld l, a
    ld a, [hl]
    add $80
    ld d, a
    ld b, a
    ld hl, $0000

jr_007_53da:
    call Call_007_5400
    jr z, jr_007_53f6

    cpl
    inc a
    add b
    ld b, a
    cp h
    jr c, jr_007_53e8

    ld h, b
    ld e, d

jr_007_53e8:
    call Call_007_542b
    jr z, jr_007_53fb

    add b
    ld b, a
    cp d
    jr nc, jr_007_53da

    ld d, b
    ld l, h
    jr jr_007_53da

jr_007_53f6:
    ld a, h
    cp e
    ret c

    ld a, e
    ret


jr_007_53fb:
    ld a, d
    cp l
    ret nc

    ld a, l
    ret


Call_007_5400:
    ldh a, [$e9]
    and a
    ret z

    dec a
    ldh [$e9], a
    push hl
    ld hl, $ffeb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a

jr_007_540f:
    inc hl
    cp [hl]
    jr z, jr_007_540f

    ld a, [hl]
    push af
    swap a
    and $0f
    ld [hl-], a
    ld a, l
    ldh [$eb], a
    ld a, h
    ldh [$ec], a
    pop af
    and $0f
    ld hl, $4026
    add l
    ld l, a
    ld a, [hl]
    pop hl
    ret


Call_007_542b:
    ldh a, [$ea]
    and a
    ret z

    dec a
    ldh [$ea], a
    push hl
    ld hl, $ffed
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a

jr_007_543a:
    inc hl
    cp [hl]
    jr z, jr_007_543a

    ld a, [hl]
    push af
    swap a
    and $0f
    ld [hl-], a
    ld a, l
    ldh [$ed], a
    ld a, h
    ldh [$ee], a
    pop af
    and $0f
    ld hl, $4026
    add l
    ld l, a
    ld a, [hl]
    pop hl
    ret


Call_007_5456:
Jump_007_5456:
    ld hl, $ffac
    inc [hl]
    jr nz, jr_007_5463

    inc l
    inc [hl]
    jr nz, jr_007_5463

    dec [hl]
    dec l
    dec [hl]

jr_007_5463:
    xor a
    ld b, $09
    ld hl, $ffcb

jr_007_5469:
    ld [hl+], a
    dec b
    jr nz, jr_007_5469

    call Call_007_5083
    call Call_007_51e1
    ldh a, [$dc]
    cpl
    add $80
    jr z, jr_007_54e6

    ld b, a
    ld hl, $c57f

jr_007_547e:
    ld a, [hl]
    bit 7, a
    jr nz, jr_007_54da

    and a
    jr z, jr_007_54da

    ldh [$98], a
    push hl
    push bc
    call Call_007_5316
    call Call_007_53a0
    sub $80
    jp c, Jump_007_54d8

    jr z, jr_007_54b0

    ld e, a
    ldh a, [$c0]
    ld hl, $ffbf
    xor [hl]
    bit 7, a
    ld a, e
    jr nz, jr_007_54c3

    ld hl, $ffce
    cp [hl]
    jr c, jr_007_54aa

    ld [hl], e

jr_007_54aa:
    ldh a, [$d2]
    sub $08
    ldh [$d2], a

jr_007_54b0:
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0003
    add hl, bc
    ldh a, [$98]
    cp [hl]
    jr nz, jr_007_54d8

    ldh [$d1], a
    jr jr_007_54d8

jr_007_54c3:
    ld hl, $ffcf
    cp [hl]
    jr c, jr_007_54cb

    ld a, [hl]
    ld [hl], e

jr_007_54cb:
    ld hl, $ffd0
    cp [hl]
    jr c, jr_007_54d2

    ld [hl], a

jr_007_54d2:
    ldh a, [$d2]
    add $04
    ldh [$d2], a

Jump_007_54d8:
jr_007_54d8:
    pop bc
    pop hl

jr_007_54da:
    dec l
    dec b
    jr nz, jr_007_547e

    ldh a, [$d1]
    and a
    jr z, jr_007_54e6

    xor a
    ldh [$d0], a

jr_007_54e6:
    ldh a, [$c7]
    and a
    call nz, Call_007_579a
    call Call_007_5557
    ldh a, [$d0]
    ld hl, $ffce
    sub [hl]
    sub [hl]
    ld hl, $ffbf
    ld c, [hl]
    bit 7, c
    jr z, jr_007_5500

    cpl
    inc a

jr_007_5500:
    ld h, a
    ld l, $00
    ldh a, [$ce]
    add a
    ld b, a
    ldh a, [$cf]
    sub b
    ld b, a
    ldh a, [$d2]
    add b
    bit 7, c
    jr z, jr_007_5514

    cpl
    inc a

jr_007_5514:
    ld d, $00
    ld e, a
    rla
    jr nc, jr_007_551b

    dec d

jr_007_551b:
    add hl, de
    ldh a, [$d3]
    ld d, $00
    ld e, a
    rla
    jr nc, jr_007_5525

    dec d

jr_007_5525:
    add hl, de
    ldh a, [$d4]
    ld d, $00
    ld e, a
    rla
    jr nc, jr_007_552f

    dec d

jr_007_552f:
    add hl, de
    add hl, de
    ldh a, [$d7]
    ld d, $00
    ld e, a
    rla
    jr nc, jr_007_553a

    dec d

jr_007_553a:
    add hl, de
    add hl, de
    add hl, de
    bit 7, c
    jr z, jr_007_5548

    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    inc hl

jr_007_5548:
    sra h
    rr l
    ld a, l
    ldh [$cc], a
    ldh a, [$d5]
    add h
    add $80
    ldh [$cd], a
    ret


Call_007_5557:
    xor a
    ldh [$e8], a
    ld hl, $ffd8
    ld [hl+], a
    ld [hl], a
    ld l, a
    ld h, a
    ld c, a
    ld de, $c61f

Jump_007_5565:
    ld b, $06

jr_007_5567:
    ld a, [de]
    and $07
    cp $01
    jr nz, jr_007_558b

    ld a, [de]
    rla
    jr c, jr_007_5580

    ld a, h
    and a
    jr z, jr_007_557d

    ld a, $fc
    add c
    ld c, a
    ld h, b
    jr jr_007_558b

jr_007_557d:
    ld h, b
    jr jr_007_558b

jr_007_5580:
    ld a, l
    and a
    jr z, jr_007_558a

    ld a, $04
    add c
    ld c, a
    jr jr_007_558b

jr_007_558a:
    ld l, b

jr_007_558b:
    ld a, $0a
    add e
    ld e, a
    dec b
    jr nz, jr_007_5567

    push de
    ldh a, [$d8]
    ld e, a
    ldh a, [$d9]
    ld d, a
    ldh a, [$e8]
    ld b, a
    ld a, l
    and a
    jr nz, jr_007_55e3

    ld a, h
    and a
    jr z, jr_007_55db

    set 6, b
    ldh a, [$c3]
    cp $14
    jr nc, jr_007_55b0

    ld a, $04
    jr jr_007_55bc

jr_007_55b0:
    push bc
    ld a, $07
    sub h
    ld b, a
    xor a
    scf

jr_007_55b7:
    rla
    dec b
    jr nz, jr_007_55b7

    pop bc

jr_007_55bc:
    add c
    ld c, a
    ld a, d
    and a
    jr z, jr_007_55d2

    cp h
    jr z, jr_007_55ce

    dec a
    cp h
    jr z, jr_007_55ce

    add $02
    cp h
    jr nz, jr_007_55d2

jr_007_55ce:
    ld a, $02
    add c
    ld c, a

jr_007_55d2:
    ld a, e
    and a
    jr z, jr_007_55d9

    cp h
    jr c, jr_007_55db

jr_007_55d9:
    set 7, b

jr_007_55db:
    ld a, e
    and a
    jr z, jr_007_55e3

    ld a, $04
    add c
    ld c, a

jr_007_55e3:
    ld a, h
    and a
    jr nz, jr_007_5626

    ld a, l
    and a
    jr z, jr_007_561e

    set 4, b
    ldh a, [$c3]
    cp $14
    jr nc, jr_007_55f7

    ld a, $fc
    jr jr_007_5602

jr_007_55f7:
    push bc
    ld b, l
    xor a
    scf

jr_007_55fb:
    rla
    dec b
    jr nz, jr_007_55fb

    cpl
    inc a
    pop bc

jr_007_5602:
    add c
    ld c, a
    ld a, e
    and a
    jr z, jr_007_5618

    cp l
    jr z, jr_007_5614

    inc a
    cp l
    jr z, jr_007_5614

    sub $02
    cp l
    jr nz, jr_007_5618

jr_007_5614:
    ld a, $fe
    add c
    ld c, a

jr_007_5618:
    ld a, l
    cp d
    jr c, jr_007_561e

    set 5, b

jr_007_561e:
    ld a, d
    and a
    jr z, jr_007_5626

    ld a, $fc
    add c
    ld c, a

jr_007_5626:
    bit 2, b
    jr z, jr_007_564d

    ld a, h
    and a
    jr z, jr_007_563e

    cp d
    jr z, jr_007_563a

    inc a
    cp d
    jr z, jr_007_563a

    sub $02
    cp d
    jr nz, jr_007_563e

jr_007_563a:
    ld a, $02
    add c
    ld c, a

jr_007_563e:
    bit 3, b
    jr z, jr_007_564d

    ld a, l
    and a
    jr z, jr_007_5649

    cp d
    jr c, jr_007_564d

jr_007_5649:
    ld a, $04
    add c
    ld c, a

jr_007_564d:
    bit 0, b
    jr z, jr_007_5671

    ld a, l
    and a
    jr z, jr_007_5665

    cp e
    jr z, jr_007_5661

    dec a
    cp e
    jr z, jr_007_5661

    add $02
    cp e
    jr nz, jr_007_5665

jr_007_5661:
    ld a, $fe
    add c
    ld c, a

jr_007_5665:
    bit 1, b
    jr z, jr_007_5671

    ld a, e
    cp h
    jr c, jr_007_5671

    ld a, $fc
    add c
    ld c, a

jr_007_5671:
    srl b
    srl b
    srl b
    srl b
    ld a, b
    ldh [$e8], a
    ld a, l
    ldh [$d8], a
    ld a, h
    ldh [$d9], a
    ld hl, $0000
    pop de
    ld a, e
    sub $3b
    ld e, a
    cp $27
    jr nz, jr_007_5691

    push de
    jr jr_007_5626

jr_007_5691:
    cp $ec
    jp nz, Jump_007_5565

    ld a, c
    ldh [$d7], a
    ret


Call_007_569a:
    ld a, $07
    and e
    ret z

    cp $01
    jp nz, Jump_007_5710

    ldh a, [$96]
    ld b, a
    ldh a, [$98]
    cp b
    ret z

    ldh a, [$c3]
    cp $0a
    jr nc, jr_007_56d5

    ld a, b
    bit 7, e
    jr z, jr_007_56b7

    sub $32

jr_007_56b7:
    cp $22
    jr z, jr_007_56c4

    cp $23
    jr z, jr_007_56c4

    ld b, $f8
    jp Jump_007_5787


jr_007_56c4:
    ld b, $04
    ld hl, $ff98
    sub [hl]
    cp $ec
    jp z, Jump_007_575d

    cp $e2
    jp z, Jump_007_575d

    ret


jr_007_56d5:
    cp $19
    ret nc

    bit 7, e
    jr nz, jr_007_56f0

    ldh a, [$da]
    cp $1a
    jr c, jr_007_56e9

    cp $1d
    ret nc

    ld b, $00
    jr jr_007_5702

jr_007_56e9:
    cp $18
    ret nc

    ld b, $05
    jr jr_007_5702

jr_007_56f0:
    ldh a, [$db]
    cp $60
    jr c, jr_007_56fa

    ld b, $ce
    jr jr_007_5702

jr_007_56fa:
    cp $5e
    ret nc

    cp $5b
    ret c

    ld b, $d3

jr_007_5702:
    ldh a, [$96]
    add b
    cp $27
    ret nc

    cp $24
    ret c

    ld b, $f4
    jp Jump_007_5787


Jump_007_5710:
    cp $04
    jr c, jr_007_5742

    cp $06
    jr z, jr_007_5723

    ldh a, [$c3]
    cp $07
    jr nc, jr_007_5753

    ld b, $f0
    jp Jump_007_5787


jr_007_5723:
    bit 6, d
    jr z, jr_007_5739

    ldh a, [$98]
    bit 7, e
    jr z, jr_007_572f

    sub $46

jr_007_572f:
    ld b, $0c
    cp $1b
    jr z, jr_007_5787

    ld b, $06
    jr jr_007_5787

jr_007_5739:
    ldh a, [$c3]
    cp $1e
    ret nc

    ld b, $f4
    jr jr_007_5787

jr_007_5742:
    bit 4, [hl]
    jr z, jr_007_574a

    ld b, $08
    jr jr_007_575d

jr_007_574a:
    ldh a, [$c3]
    cp $09
    ret nc

    ld b, $f0
    jr jr_007_575d

jr_007_5753:
    bit 5, [hl]
    ret z

    ld a, $f9
    bit 7, e
    jp Jump_007_58b7


Jump_007_575d:
jr_007_575d:
    ldh a, [$c3]
    cp $0f
    jr nc, jr_007_5787

    ldh a, [$98]
    bit 7, e
    jr z, jr_007_576b

    sub $1e

jr_007_576b:
    cp $2c
    jr z, jr_007_5773

    cp $2d
    jr nz, jr_007_5787

jr_007_5773:
    sub $0a
    bit 7, e
    jr z, jr_007_577b

    add $32

jr_007_577b:
    ld h, $c6
    ld l, a
    ld a, [hl]
    and $07
    cp $01
    jr nz, jr_007_5787

    ld b, $e8

Jump_007_5787:
jr_007_5787:
    ld a, b
    bit 0, c
    jr z, jr_007_578e

    cpl
    inc a

jr_007_578e:
    bit 7, e
    jr z, jr_007_5794

    cpl
    inc a

jr_007_5794:
    ld hl, $ffd4
    add [hl]
    ld [hl], a
    ret


Call_007_579a:
    ldh a, [$da]
    ld d, a
    xor a
    ld e, $0a
    call Call_007_5cfa
    ld b, a
    ld c, d
    ldh a, [$db]
    ld d, a
    xor a
    call Call_007_5cfa
    sub b
    bit 7, a
    jr z, jr_007_57b3

    cpl
    inc a

jr_007_57b3:
    ld b, a
    ld a, c
    sub d
    bit 7, a
    jr z, jr_007_57bc

    cpl
    inc a

jr_007_57bc:
    add b
    cpl
    add $0f
    ld b, a
    ldh a, [$d5]
    ld hl, $ffda
    bit 7, a
    jr nz, jr_007_57cb

    inc hl

jr_007_57cb:
    ld de, $c615
    ld e, [hl]
    ld hl, $7a42
    add hl, de
    ld a, [hl]
    cpl
    add $09
    add a
    add b
    ld b, a
    ldh a, [$d5]
    bit 7, a
    ld a, b
    jr z, jr_007_57e3

    cpl
    inc a

jr_007_57e3:
    add a
    add a
    ldh [$d3], a
    xor a
    ldh [$cf], a
    ret


Call_007_57eb:
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl

jr_007_57f3:
    ld a, [hl+]
    ldh [$96], a
    ld c, a
    ld a, [hl+]
    ldh [$98], a
    ld d, [hl]
    ld b, $c6
    ld a, [bc]
    bit 3, a
    jr nz, jr_007_5806

    set 4, [hl]
    set 3, a

jr_007_5806:
    ld e, a
    and $07
    cp $01
    jr z, jr_007_5828

    cp $06
    jr z, jr_007_5838

jr_007_5811:
    ld h, $c6
    ldh a, [$98]
    ld l, a
    ld [hl], e
    xor a
    ld [bc], a
    ld c, a
    call Call_007_569a
    bit 6, d
    jr nz, jr_007_5845

    ld a, d
    and $07
    jp nz, Jump_007_58af

    ret


jr_007_5828:
    ldh a, [$98]
    cp $5b
    jr nc, jr_007_5832

    cp $1d
    jr nc, jr_007_5811

jr_007_5832:
    set 5, [hl]
    set 2, e
    jr jr_007_5811

jr_007_5838:
    ld hl, $ffda
    bit 7, e
    jr z, jr_007_5840

    inc l

jr_007_5840:
    ldh a, [$98]
    ld [hl], a
    jr jr_007_5811

jr_007_5845:
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0007
    add hl, de
    jr jr_007_57f3

Call_007_5851:
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl

jr_007_5859:
    ld a, [hl+]
    ldh [$96], a
    ld a, [hl+]
    ldh [$98], a
    ld d, [hl]
    ld h, $c6
    ld l, a
    ld e, [hl]
    ld c, $01
    call Call_007_569a
    bit 5, d
    jr nz, jr_007_588e

    ld a, e
    and $07
    cp $06
    jr z, jr_007_5896

jr_007_5874:
    bit 4, d
    jr nz, jr_007_5892

jr_007_5878:
    ld h, $c6
    ldh a, [$96]
    ld l, a
    ld [hl], e
    ldh a, [$98]
    ld l, a
    ld a, d
    and $8f
    ld [hl], a
    bit 6, d
    jr nz, jr_007_58a3

    and $07
    jr nz, jr_007_58af

    ret


jr_007_588e:
    res 2, e
    jr jr_007_5874

jr_007_5892:
    res 3, e
    jr jr_007_5878

jr_007_5896:
    ld hl, $ffda
    bit 7, e
    jr z, jr_007_589e

    inc l

jr_007_589e:
    ldh a, [$96]
    ld [hl], a
    jr jr_007_5874

jr_007_58a3:
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0007
    add hl, de
    jr jr_007_5859

Jump_007_58af:
jr_007_58af:
    ld hl, $4026
    add l
    ld l, a
    ld a, [hl]
    bit 7, d

Jump_007_58b7:
    jr nz, jr_007_58bb

    cpl
    inc a

jr_007_58bb:
    bit 0, c
    jr z, jr_007_58c1

    cpl
    inc a

jr_007_58c1:
    ld hl, $ffd5
    add [hl]
    ld [hl], a
    ret


Call_007_58c7:
    ld hl, $ffa4
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld de, $0000

Jump_007_58d0:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, d
    ld [hl-], a
    ld [hl], e
    xor a
    cp b
    ret z

    push hl
    ld l, c
    ld h, b
    call Call_007_590c
    pop hl
    ldh [$e8], a
    jr z, jr_007_58ec

    ld hl, $ffa4
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_007_58ec:
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    xor a
    cp d
    jr z, jr_007_5900

    push hl
    ld l, e
    ld h, d
    call Call_007_590c
    ld h, a
    ldh a, [$e8]
    cp h
    pop hl
    jr c, jr_007_5906

Call_007_5900:
jr_007_5900:
    ld a, b
    ld [hl-], a
    ld [hl], c
    jp Jump_007_58d0


jr_007_5906:
    ld l, e
    ld h, d
    ldh [$e8], a
    jr jr_007_58ec

Call_007_590c:
    inc hl
    inc hl
    ld a, [hl+]
    ldh [$f0], a
    ld a, [hl+]
    ldh [$f1], a
    ld a, [hl]
    ldh [$f2], a
    ldh a, [$ca]
    and a
    jr z, jr_007_593a

jr_007_591c:
    ldh a, [$f2]
    and $07
    add a
    add a
    ret nz

    ld hl, $ffb6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$f0]
    cp [hl]
    ld a, $00
    jr nz, jr_007_595f

    inc hl
    ldh a, [$f1]
    cp [hl]
    ld a, $01
    jr nz, jr_007_595f

    inc a
    ret


jr_007_593a:
    ldh a, [$c6]
    ld hl, $ffc5
    cp [hl]
    jr nc, jr_007_591c

    ld hl, $ffb8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    dec hl
    ldh a, [$c6]
    add a
    add l
    jr nc, jr_007_5951

    inc h

jr_007_5951:
    ld l, a
    ldh a, [$f0]
    cp [hl]
    jr nz, jr_007_591c

    ldh a, [$f1]
    inc hl
    cp [hl]
    jr nz, jr_007_591c

    ld a, $20

jr_007_595f:
    and a
    ret


Call_007_5961:
    ld a, $01
    ldh [$c6], a
    xor a
    ld [$d9ca], a
    ld [$c7c3], a
    ldh [$d4], a
    ldh [$c9], a
    ldh [$ca], a
    ld a, [$c69e]
    ld [$c6a2], a
    ld a, [$c69f]
    ld [$c6a3], a
    ld a, $0c
    ldh [$b8], a
    ld a, $da
    ldh [$b9], a

Jump_007_5986:
    ldh a, [$a4]
    ldh [$a6], a
    ldh a, [$a5]
    ldh [$a7], a
    ld a, [$d9ca]
    and a
    jr z, jr_007_599c

    ld a, [$c7c3]
    bit 0, a
    call nz, Call_000_275c

Jump_007_599c:
jr_007_599c:
    ld a, $ff
    ldh [$fb], a
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, d
    and a
    jp z, Jump_007_5a2d

    ld hl, $ffa6
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $ffa4
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    call Call_007_57eb
    call Call_007_4ff1
    jr z, jr_007_59cb

    call Call_007_5851
    jp Jump_007_599c


jr_007_59cb:
    ldh a, [$c6]
    ld hl, $ffc5
    cp [hl]
    jp nc, Jump_007_5a5e

Jump_007_59d4:
    ld hl, $ffbf
    ld a, $80
    xor [hl]
    ld [hl], a
    bit 7, a
    jr nz, jr_007_59e3

    ld hl, $ffc3
    inc [hl]

jr_007_59e3:
    ld hl, $ffa8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl-]
    ld d, a
    ld e, [hl]
    ld bc, $0005
    add hl, bc
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl-], a
    ld a, l
    ldh [$a8], a
    ld a, h
    ldh [$a9], a
    ld hl, $ffc6
    inc [hl]
    xor a
    ldh [$c9], a
    ld hl, $ffbc
    ld a, [hl]
    add $14
    ld [hl+], a
    jr nc, jr_007_5a0b

    inc [hl]

jr_007_5a0b:
    ld hl, $ffba
    ld a, [hl]
    add $16
    ld [hl+], a
    jr nc, jr_007_5a15

    inc [hl]

jr_007_5a15:
    ld hl, $ffb6
    ld a, [hl]
    add $02
    ld [hl+], a
    jr nc, jr_007_5a1f

    inc [hl]

jr_007_5a1f:
    ld a, $ff
    ld [$d9ca], a
    call Call_007_4fae
    call Call_007_58c7
    jp Jump_007_5986


Jump_007_5a2d:
    ldh a, [$c9]
    and a
    jr nz, jr_007_5a42

    call Call_007_4ff1
    and a
    ld de, $8000
    jr z, jr_007_5a8a

    ldh a, [$c6]
    ld e, a
    ld d, $00
    jr jr_007_5a8a

Jump_007_5a42:
jr_007_5a42:
    ldh a, [$c6]
    cp $01
    ret z

    call Call_007_5d7c
    ld hl, $ffa8
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    jr nc, jr_007_5a55

    inc h

jr_007_5a55:
    ld a, [hl-]
    cpl
    ld d, a
    ld a, [hl-]
    cpl
    ld e, a
    inc de
    jr jr_007_5a97

Jump_007_5a5e:
    call Call_007_5aba
    ldh a, [$c6]
    ld hl, $ffc4
    cp [hl]
    jr c, jr_007_5a81

    bit 0, a
    jr nz, jr_007_5a81

    ld hl, $ffc5
    cp [hl]
    jr z, jr_007_5a7b

    ldh a, [$cf]
    and a
    jp nz, Jump_007_59d4

    jr jr_007_5a81

jr_007_5a7b:
    ldh a, [$cb]
    and a
    jp nz, Jump_007_59d4

jr_007_5a81:
    call Call_007_5851
    ldh a, [$cc]
    ld e, a
    ldh a, [$cd]
    ld d, a

jr_007_5a8a:
    ld hl, $ffc9
    set 0, [hl]
    ld hl, $ffa8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl

jr_007_5a97:
    dec hl
    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    jp nc, Jump_007_599c

    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl-], a
    push hl
    call Call_007_5b03
    ld a, $ff
    ld [$d9ca], a
    pop hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, l
    add e
    ld a, h
    adc d
    jp c, Jump_007_5a42

    jp Jump_007_599c


Call_007_5aba:
    ldh a, [$c5]
    ldh [$ca], a
    ld hl, $ffc4
    cp [hl]
    jp nc, Jump_007_5456

    ldh a, [$d5]
    add a
    ld h, a
    ld l, $00
    ldh a, [$bf]
    and a
    jr z, jr_007_5ad3

    xor a
    sub h
    ld h, a

jr_007_5ad3:
    ld e, l
    ld a, h
    add $81
    ld d, a
    ld hl, $ffa8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    jp c, Jump_007_5456

    ld hl, $ffcc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ldh a, [$bf]
    xor $80
    ld hl, $ffda
    and a
    jr z, jr_007_5af7

    inc hl

jr_007_5af7:
    ld d, $c6
    ld e, [hl]
    ld a, [de]
    ldh [$c0], a
    call Call_007_5000
    ldh [$cb], a
    ret


Call_007_5b03:
    push de
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ldh [$f0], a
    ld a, [hl+]
    ldh [$f1], a
    ld a, [hl+]
    and $07
    jr nz, jr_007_5b23

    ld hl, $ffb6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$f0]
    ld [hl+], a
    ldh a, [$f1]
    ld [hl], a

jr_007_5b23:
    ld hl, $ffbc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $0014
    ld b, l
    add hl, de

jr_007_5b2e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_5b2e

    ld hl, $ffba
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$f0]
    ld [hl+], a
    ldh a, [$f1]
    ld [hl], a
    ldh a, [$c6]
    cp $01
    jp nz, Jump_007_5bb0

    ld hl, $ffb8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    sub $20
    ld c, a
    ld a, h
    sbc $da
    jr c, jr_007_5b7a

    ld b, a
    or c
    jr z, jr_007_5b7a

    ld e, l
    ld d, h
    dec de
    ld hl, $ffec
    add hl, de
    inc b
    dec bc
    inc c

jr_007_5b63:
    ld a, [hl-]
    ld [de], a
    dec de
    dec c
    jr nz, jr_007_5b63

    dec b
    jr nz, jr_007_5b63

    ld hl, $c6f4
    ld de, $da0c
    ld b, $14

jr_007_5b74:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_5b74

jr_007_5b7a:
    ld hl, $ffa6
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $ffaa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    cp c
    jr nz, jr_007_5b8d

    ld a, h
    cp b
    jr z, jr_007_5bb0

jr_007_5b8d:
    push hl
    ld a, c
    ldh [$aa], a
    ld a, b
    ldh [$ab], a

jr_007_5b94:
    ld e, l
    ld d, h
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    cp c
    jr nz, jr_007_5b94

    ld a, h
    cp b
    jr nz, jr_007_5b94

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, e
    ldh [$a6], a
    ld a, d
    ldh [$a7], a
    pop de
    ld a, e
    ld [hl+], a
    ld [hl], d

Jump_007_5bb0:
jr_007_5bb0:
    pop de
    ret


Jump_007_5bb2:
    call Call_007_5cb0
    xor a
    ldh [$ac], a
    ldh [$ad], a
    ld [$c69e], a
    ld [$c69f], a
    ld [$c6a0], a
    ld [$c6a1], a
    ld hl, $c6e0
    ld a, l
    ldh [$b6], a
    ld a, h
    ldh [$b7], a
    xor a
    ld b, $14

jr_007_5bd2:
    ld [hl+], a
    dec b
    jr nz, jr_007_5bd2

    ld hl, $c6f4
    ld a, l
    ldh [$bc], a
    ldh [$ba], a
    ld a, h
    ldh [$bd], a
    ldh [$bb], a
    ldh a, [$f9]
    ldh [$b0], a
    ldh [$aa], a
    ldh a, [$fa]
    ldh [$b1], a
    ldh [$ab], a
    ld hl, $c6b6
    ld a, l
    ldh [$a4], a
    ld a, h
    ldh [$a5], a
    ld hl, $c6a1
    ld a, l
    ldh [$a8], a
    ld a, h
    ldh [$a9], a
    call Call_007_5f00
    call Call_007_4fae
    ldh a, [$b0]
    ld [$c6bc], a
    ldh a, [$b1]
    ld [$c6bd], a
    ld a, $01

Jump_007_5c13:
    ldh [$c5], a
    call Call_007_4d02
    call Call_007_5961
    ld a, [$c6a3]
    and a
    ret z

    cp $ff
    ret z

    ldh a, [$c5]
    cp $01
    jr z, jr_007_5c6f

    ld a, [$c6a2]
    ld e, a
    ld a, [$c6a3]
    ld d, a
    ld a, [$c69e]
    sub e
    ld a, [$c69f]
    sbc d
    jr nc, jr_007_5c8f

    ld a, e
    cpl
    ld e, a
    ld a, d
    cpl
    ld d, a
    inc de
    ld a, [$c6a0]
    sub e
    ld a, [$c6a1]
    sbc d
    jr nc, jr_007_5c8f

    ld hl, $c6a2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff9c
    add hl, de
    ld a, l
    ld [$c69e], a
    cpl
    ld e, a
    ld a, h
    ld [$c69f], a
    cpl
    ld d, a
    inc de
    ld hl, $ff38
    add hl, de
    ld a, l
    ld [$c6a0], a
    ld a, h
    ld [$c6a1], a

jr_007_5c6f:
    ldh a, [$c5]
    cp $09
    ret z

    ld hl, $ffc4
    cp [hl]
    jr c, jr_007_5c89

    ld a, [hl]
    add a
    ld hl, $402c
    add l
    ld l, a
    ldh a, [$ac]
    sub [hl]
    inc hl
    ldh a, [$ad]
    sbc [hl]
    ret nc

jr_007_5c89:
    ld hl, $ffc5
    inc [hl]
    jr jr_007_5c9c

jr_007_5c8f:
    xor a
    ld [$c6a0], a
    ld [$c6a1], a
    ld [$c69e], a
    ld [$c69f], a

jr_007_5c9c:
    ld hl, $c6ba
    ldh a, [$aa]
    ld [hl+], a
    ldh a, [$ab]
    ld [hl+], a
    ld a, [hl+]
    ldh [$b0], a
    ld a, [hl+]
    ldh [$b1], a
    ldh a, [$c5]
    jp Jump_007_5c13


Call_007_5cb0:
    xor a
    ldh [$c7], a
    ldh [$d5], a
    ldh [$d6], a
    ld b, $4e
    ld de, $c615

jr_007_5cbc:
    ld a, [de]
    and $07
    ld c, a
    cp $06
    jr nz, jr_007_5cce

    ld a, [de]
    ld hl, $ffda
    bit 7, a
    jr z, jr_007_5ccd

    inc l

jr_007_5ccd:
    ld [hl], e

jr_007_5cce:
    ld h, $40
    ld a, c
    add $26
    ld l, a
    ld a, [de]
    bit 7, a
    ld a, [hl]
    ld c, a
    jr z, jr_007_5cdd

    cpl
    inc a

jr_007_5cdd:
    ld hl, $ffd5
    add [hl]
    ld [hl+], a
    ld a, c
    add [hl]
    ld [hl], a
    inc de
    dec b
    jr nz, jr_007_5cbc

    cp $2e
    ret nc

    ldh a, [$d5]
    bit 7, a
    jr z, jr_007_5cf4

    cpl
    inc a

jr_007_5cf4:
    cp $05
    ret c

    ldh [$c7], a
    ret


Call_007_5cfa:
    push bc
    ld b, $08

jr_007_5cfd:
    sla d
    rla
    sub e
    jr c, jr_007_5d06

    inc d
    jr jr_007_5d07

jr_007_5d06:
    add e

jr_007_5d07:
    dec b
    jr nz, jr_007_5cfd

    pop bc
    ret


    push bc
    sub a
    ld b, $08

jr_007_5d10:
    bit 0, d
    jr z, jr_007_5d15

    add e

jr_007_5d15:
    sra a
    rr d
    dec b
    jr nz, jr_007_5d10

    pop bc
    ret


Call_007_5d1e:
    ld hl, $c69b
    ld de, $c69d
    ld b, $08

jr_007_5d26:
    ld a, [hl-]
    ld [de], a
    dec de
    dec b
    jr nz, jr_007_5d26

    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c694], a
    ld a, [hl+]
    ld [$c695], a
    jp Jump_000_287c


Call_007_5d3f:
    ldh a, [$d5]
    ld hl, $ffbe
    bit 7, [hl]
    jr nz, jr_007_5d4a

    cpl
    inc a

jr_007_5d4a:
    add $80
    cp $83
    ret nc

    ld hl, $c69c
    ld a, [$c694]
    cp [hl]
    ret nz

    ld a, [$c695]
    inc hl
    cp [hl]
    ret nz

    ld hl, $ffaa
    ld a, [hl+]
    ld h, [hl]
    ld h, a
    ld de, $0003
    add hl, de
    ld a, [$c69b]
    cp [hl]
    ret nz

    ld a, [$c69a]
    dec hl
    cp [hl]
    ret nz

    dec hl
    ld a, [hl-]
    and a
    ret z

    ldh [$ab], a
    ld a, [hl]
    ldh [$aa], a
    ret


Call_007_5d7c:
    ld hl, $ffbf
    ld a, $80
    xor [hl]
    ld [hl], a
    bit 7, a
    jr z, jr_007_5d8b

    ld hl, $ffc3
    dec [hl]

jr_007_5d8b:
    ld hl, $ffa8
    ld a, [hl]
    sub $02
    ld [hl+], a
    jr nc, jr_007_5d95

    dec [hl]

jr_007_5d95:
    ld hl, $ffc6
    dec [hl]
    ld hl, $ffbc
    ld a, [hl]
    sub $14
    ld [hl+], a
    jr nc, jr_007_5da3

    dec [hl]

jr_007_5da3:
    ld hl, $ffba
    ld a, [hl]
    sub $16
    ld [hl+], a
    jr nc, jr_007_5dad

    dec [hl]

jr_007_5dad:
    ld hl, $ffb6
    ld a, [hl]
    sub $02
    ld [hl+], a
    jr nc, jr_007_5db7

    dec [hl]

jr_007_5db7:
    ld hl, $ffa4
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    ld a, [hl-]
    ldh [$b1], a
    ld a, [hl-]
    ldh [$b0], a
    ld a, [hl-]
    ldh [$a7], a
    ld a, [hl]
    ldh [$a6], a
    ld a, l
    ldh [$a4], a
    ld a, h
    ldh [$a5], a
    call Call_007_5851
    ldh a, [$c6]
    cp $01
    ret nz

    ld hl, $c708
    ldh a, [$b8]
    ld e, a
    ldh a, [$b9]
    ld d, a
    ld b, $14

jr_007_5de3:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_5de3

    xor a
    ldh [$ca], a
    ldh a, [$c4]
    ld hl, $ffc5
    cp [hl]
    ret nc

    ld hl, $4038
    add a
    add l
    ld l, a
    ldh a, [$ac]
    sub [hl]
    inc hl
    ldh a, [$ad]
    sbc [hl]
    ret c

    pop hl
    pop hl
    ret


Call_007_5e04:
    xor a
    ld hl, $c6f6
    ld de, $0014
    ld b, $0a

jr_007_5e0d:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_007_5e0d

    jp Jump_007_5bb2


Call_007_5e15:
    call Call_000_2909
    call Call_007_5e04
    call Call_007_5d3f
    ldh a, [$aa]
    ldh [$a6], a
    ldh a, [$ab]
    ldh [$a7], a
    call Call_007_5d1e
    ld a, [$c6a3]
    and a
    jr nz, jr_007_5e36

    ld a, [$c6a2]
    cp $01
    jr z, jr_007_5e99

jr_007_5e36:
    call Call_007_57eb
    call Call_007_5456
    ldh a, [$cd]
    and a
    jr z, jr_007_5e99

    call $2541
    call Call_000_25e0
    ld a, [$c6a3]
    cp $ff
    ret nz

    ld a, [$c6a2]
    cp $fe
    jr z, jr_007_5e99

    cpl
    inc a
    sra a
    add $2f
    ld [$c7ee], a
    ld de, $5e6c
    call Call_000_1c23
    ld de, $c7ee
    call Call_000_1c23
    jp Jump_007_43fc


    ld e, $c3
    nop
    ld a, [bc]
    ld bc, $414d
    ld d, h
    ld b, l
    jr nz, jr_007_5ec0

    ld c, [hl]
    jr nz, jr_007_5e7a

jr_007_5e7a:
    ld e, $c3
    nop
    ld a, [bc]
    ld bc, $4843
    ld b, l
    ld b, e
    ld c, e
    jr nz, jr_007_5ed3

    ld b, c
    ld d, h
    ld b, l
    nop
    ld e, $c3
    nop
    ld a, [bc]
    ld bc, $5453
    ld b, c
    ld c, h
    ld b, l
    ld c, l
    ld b, c
    ld d, h
    ld b, l
    nop

jr_007_5e99:
    ret


Call_007_5e9a:
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $ffa4
    ld de, $c6b6
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $fff7
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ffb0
    ld a, e
    ld [hl+], a
    ld [hl], d
    call Call_007_5f00
    call Call_007_4fae
    ld hl, $fff7
    ld a, [hl+]

jr_007_5ec0:
    ld h, [hl]
    ld l, a
    ld c, $00

Jump_007_5ec4:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ldh a, [$f3]
    cp [hl]
    jr nz, jr_007_5ed3

    inc hl
    ldh a, [$f4]
    cp [hl]
    jr z, jr_007_5ede

jr_007_5ed3:
    xor a
    cp d
    jr z, jr_007_5ef7

    ld c, $80
    ld l, e
    ld h, d
    jp Jump_007_5ec4


jr_007_5ede:
    dec hl
    dec hl
    dec hl
    ld a, l
    ldh [$a6], a
    ld a, h
    ldh [$a7], a
    call Call_007_57eb
    call Call_007_5456
    ldh a, [$cd]
    and a
    jr z, jr_007_5ef4

    pop hl
    ret


jr_007_5ef4:
    call Call_007_5851

jr_007_5ef7:
    pop hl
    ld a, l
    ldh [$a6], a
    ld a, h
    ldh [$a7], a
    xor a
    ret


Call_007_5f00:
    ldh a, [$b0]
    add $f6
    ldh [$fd], a
    ldh a, [$b1]
    adc $07
    ldh [$fe], a
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
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    ld b, $10
    nop
    ld de, $1312
    rrca
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_007_5f8e

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_007_5fa2

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_007_5fb2

    ld [hl-], a
    inc sp
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_007_5fc6

    ld a, [hl-]

jr_007_5f8e:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_007_5fa2:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop
    nop
    nop
    nop
    ld d, h
    ld d, l
    ld d, [hl]

jr_007_5fb2:
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
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l

jr_007_5fc6:
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    ld l, d
    ld l, e
    ld l, h
    nop
    nop
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, e
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    nop
    add c
    add d
    add e
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0202
    ld bc, $0000
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    ld bc, $0201
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0202
    ld bc, $0000
    nop
    nop
    dec d
    ld d, $00
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0202
    ld bc, $0000
    inc bc
    jr jr_007_610d

    ld b, $07
    ld [$0a09], sp

jr_007_610d:
    add hl, de
    ld a, [de]
    nop
    nop
    nop
    inc c
    ld [bc], a
    ld bc, $0201
    nop
    nop
    dec c
    dec de
    rrca
    db $10
    ld de, $1312
    inc d
    inc e
    dec e
    nop
    nop
    nop
    inc c
    ld bc, $0202
    ld bc, $0000
    nop
    nop
    dec d
    ld d, $00
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0202
    ld bc, $0000
    inc bc
    jr jr_007_615d

    ld e, $1f
    jr nz, jr_007_617d

    ld [hl+], a

jr_007_615d:
    inc hl
    inc h
    dec h
    ld h, $1a
    inc c
    ld [bc], a
    ld bc, $0201
    nop
    nop
    dec c
    dec de
    daa
    jr z, jr_007_6197

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_007_6193

    inc c
    ld bc, $0202
    ld bc, $0000

jr_007_617d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    nop
    nop
    inc c
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    nop

jr_007_6193:
    nop
    nop
    nop
    nop

jr_007_6197:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0202
    ld bc, $0c02
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
    inc c
    inc c
    ld [bc], a
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0202
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld sp, $3332
    inc [hl]
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    dec [hl]
    ld [hl], $00
    ld bc, $0102
    ld [bc], a
    ld bc, $0002
    scf
    jr c, jr_007_621a

jr_007_621a:
    ld bc, $0102
    ld bc, $0102
    nop
    add hl, sp
    ld a, [hl-]
    nop
    inc c
    ld bc, $0102
    ld [bc], a
    ld bc, $3b00
    inc a
    nop
    inc c
    ld bc, $0202
    ld bc, $3d02
    ld a, $3f
    ld a, [de]
    inc c
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc c
    ld [bc], a
    ld bc, $0201
    ld bc, $4544
    ld b, [hl]
    ld b, a
    inc c
    ld bc, $0102
    ld [bc], a
    ld bc, $4948
    ld c, d
    ld c, e
    inc c
    ld bc, $0202
    ld bc, $0002
    ld c, h
    ld c, l
    nop
    inc c
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld c, [hl]
    ld c, a
    nop
    inc c
    ld [bc], a
    ld bc, $0201
    ld bc, $5000
    ld d, c
    nop
    inc c
    ld bc, $0102
    ld [bc], a
    ld bc, $5200
    ld d, e
    nop
    inc c
    ld bc, $0202
    ld bc, $0002
    ld d, h
    ld d, l
    nop
    inc c
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld d, [hl]
    ld d, a
    nop
    inc c
    ld [bc], a
    ld bc, $0201
    ld bc, $5800
    ld e, c
    nop
    inc c
    ld bc, $0102
    ld [bc], a
    ld bc, $5a00
    ld e, e
    nop
    inc c
    ld bc, $0202
    ld bc, $5c02
    ld e, l
    ld e, [hl]
    ld e, a
    inc c
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld e, h
    ld h, b
    ld h, c
    ld e, a
    inc c
    ld [bc], a
    ld bc, $0201
    ld bc, $6362
    ld h, h
    ld h, l
    inc c
    ld bc, $0102
    ld [bc], a
    ld bc, $6766
    ld l, b
    ld l, c
    inc c
    ld bc, $0202
    ld bc, $6a02
    ld l, e
    ld l, h
    ld l, l
    inc c
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    inc c
    ld [bc], a
    ld bc, $0201
    ld bc, $7372
    ld [hl], h
    ld [hl], l
    inc c
    ld bc, $0102
    ld [bc], a
    ld bc, $7776
    ld a, b
    ld a, c
    inc c
    ld bc, $0202
    ld bc, $0102
    inc c
    inc c
    inc c
    inc c
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0c0c
    inc c
    inc c
    ld [bc], a
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0202
    ld bc, $0102
    nop
    nop
    nop
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
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    ld bc, $0c0c
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
    ld [bc], a
    ld bc, $0102
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
    inc bc
    nop
    nop
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $00
    nop
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $00
    nop
    inc b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    inc b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $00
    nop
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $00
    nop
    inc b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    inc b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $00
    nop
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $00
    nop
    inc b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    inc b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $00
    nop
    inc b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $00
    nop
    inc b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    inc b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    rlca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0009], sp
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_007_64da

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_007_64ea

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_007_64fa

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_007_650a

    ld [hl-], a

jr_007_64da:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_007_651a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_007_64ea:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld a, [de]
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_007_64fa:
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
    ld [hl-], a

jr_007_650a:
    ld h, c
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
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_007_651a:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, [de]
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ld [hl], b
    ld [hl], b
    ld l, b
    ld l, b
    ld a, h
    ld a, h
    ld h, d
    ld h, d
    ld h, c
    ld h, c
    di
    di
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $fc
    db $fc
    nop
    nop
    inc a
    inc a
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    inc a
    inc a
    nop
    nop
    db $fc
    db $fc
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    db $fc
    db $fc
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
    cp $fe
    ld h, d
    ld h, d
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    inc a
    inc a
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    ld l, [hl]
    ld l, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, $3e
    nop
    nop
    rst $30
    rst $30
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, [hl]
    ld a, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    rst $30
    rst $30
    nop
    nop
    inc a
    inc a
    jr jr_007_65ef

    jr jr_007_65f1

    jr jr_007_65f3

    jr jr_007_65f5

    jr jr_007_65f7

    inc a
    inc a
    nop
    nop
    ld e, $1e
    inc c
    inc c
    inc c
    inc c
    db $ec
    db $ec
    ld c, h
    ld c, h
    ld c, h
    ld c, h

jr_007_65ef:
    jr c, jr_007_6629

jr_007_65f1:
    nop
    nop

jr_007_65f3:
    ldh a, [$f0]

jr_007_65f5:
    ld h, d
    ld h, d

jr_007_65f7:
    ld h, h
    ld h, h
    ld a, b
    ld a, b
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    rst $30
    rst $30
    nop
    nop
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    ld h, [hl]
    ld h, [hl]
    cp $fe
    nop
    nop
    db $e3
    db $e3
    db $76
    db $76
    ld l, d
    ld l, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    rst $30
    rst $30
    nop
    nop
    rst $20
    rst $20
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d

jr_007_6629:
    ld l, d
    ld l, d
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [c], a
    ld [c], a
    nop
    nop
    inc a
    inc a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    inc a
    inc a
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    inc a
    inc a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    dec a
    dec a
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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
    rst $38
    rst $38
    db $db
    db $db
    sbc c
    sbc c
    jr jr_007_66a3

    jr jr_007_66a5

    jr jr_007_66a7

    inc a
    inc a
    nop
    nop
    rst $30
    rst $30
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    inc a
    inc a
    nop
    nop

jr_007_66a3:
    rst $30
    rst $30

jr_007_66a5:
    ld h, d
    ld h, d

jr_007_66a7:
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    inc [hl]
    inc [hl]
    jr jr_007_66c9

    nop
    nop
    db $e3
    db $e3
    ld [c], a
    ld [c], a
    ld h, d
    ld h, d
    ld l, d
    ld l, d
    db $76
    db $76
    ld h, d
    ld h, d
    ld b, d
    ld b, d
    nop
    nop
    xor $ee
    ld h, h
    ld h, h
    jr c, jr_007_6701

jr_007_66c9:
    jr jr_007_66e3

    inc l
    inc l
    ld b, [hl]
    ld b, [hl]
    rst $28
    rst $28
    nop
    nop
    rst $30
    rst $30
    ld b, d
    ld b, d
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    jr jr_007_66f5

    jr jr_007_66f7

    jr jr_007_66f9

    nop
    nop

jr_007_66e3:
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    inc c
    inc c
    jr jr_007_6703

    jr nc, jr_007_671d

    ld h, d
    ld h, d
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    add b
    add b

jr_007_66f5:
    cp a
    cp a

jr_007_66f7:
    and b
    and b

jr_007_66f9:
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b

jr_007_6701:
    rst $38
    rst $38

jr_007_6703:
    ld bc, $fd01
    db $fd
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
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    cp a
    cp a

jr_007_671d:
    add b
    add b
    rst $38
    rst $38
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
    db $fd
    db $fd
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    nop
    nop
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
    nop
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
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
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    jr jr_007_679d

    jr c, jr_007_67bf

    jr jr_007_67a1

    jr jr_007_67a3

    jr jr_007_67a5

    jr jr_007_67a7

    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    inc e
    inc e
    jr nc, jr_007_67cd

jr_007_679d:
    ld h, d
    ld h, d
    ld a, [hl]
    ld a, [hl]

jr_007_67a1:
    nop
    nop

jr_007_67a3:
    inc a
    inc a

jr_007_67a5:
    ld h, [hl]
    ld h, [hl]

jr_007_67a7:
    ld b, $06
    inc a
    inc a
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc c
    inc c
    inc e
    inc e
    inc [hl]
    inc [hl]
    ld h, h
    ld h, h
    ld a, [hl]
    ld a, [hl]
    inc c
    inc c

jr_007_67bf:
    ld e, $1e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld b, $06

jr_007_67cd:
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, $0e
    inc e
    inc e
    jr jr_007_6805

    jr jr_007_6807

    jr jr_007_6809

    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a

jr_007_6805:
    ld h, [hl]
    ld h, [hl]

jr_007_6807:
    ld h, [hl]
    ld h, [hl]

jr_007_6809:
    ld a, $3e
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    ld a, h
    ld a, h
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    adc d
    adc d
    add d
    add d
    ld a, h
    ld a, h
    jr c, jr_007_6859

    ld a, h
    ld a, h
    add [hl]
    add [hl]
    adc d
    adc d
    sub d
    sub d
    sub d
    sub d
    add d
    add d
    ld a, h
    ld a, h
    jr c, jr_007_6869

    ld a, h
    ld a, h
    add d
    add d
    add d
    add d
    sbc [hl]
    sbc [hl]
    and d
    and d
    add d
    add d
    ld a, h
    ld a, h
    jr c, jr_007_6879

    ld a, h
    ld a, h
    add d
    add d
    add d
    add d
    or d
    or d
    adc d
    adc d
    add [hl]
    add [hl]
    ld a, h
    ld a, h
    jr c, jr_007_6889

    ld a, h
    ld a, h
    add d
    add d
    and d
    and d
    sub d
    sub d

jr_007_6859:
    sub d
    sub d
    sub d
    sub d
    ld a, h
    ld a, h
    jr c, jr_007_6899

    ld a, h
    ld a, h
    add d
    add d
    sub d
    sub d
    sub d
    sub d

jr_007_6869:
    and d
    and d
    jp nz, Jump_007_7cc2

    ld a, h
    jr c, jr_007_68a9

    ld a, h
    ld a, h
    add d
    add d
    adc d
    adc d
    ld a, [c]
    ld a, [c]

jr_007_6879:
    add d
    add d
    add d
    add d
    ld a, h
    ld a, h
    jr c, jr_007_68b9

    ld a, h
    ld a, h
    jp nz, $a2c2

    and d
    sbc d
    sbc d

jr_007_6889:
    add d
    add d
    add d
    add d
    ld a, h
    ld a, h
    jr c, jr_007_68c9

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6899:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_68a9:
    nop
    nop
    rlca
    rlca
    inc b
    inc b
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

jr_007_68b9:
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_68c9:
    nop
    nop
    ldh [$e0], a
    jr nz, jr_007_68ef

    and b
    and b
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
    dec b
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

jr_007_68ef:
    rst $38
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    dec b
    dec b
    inc b
    inc b
    rlca
    rlca
    nop
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
    nop
    nop
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
    nop
    nop
    and b
    and b
    jr nz, jr_007_6945

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6931:
    nop
    nop
    ld bc, $0201
    inc bc
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    nop
    nop

jr_007_6943:
    add b
    add b

jr_007_6945:
    ld b, b
    ret nz

    add b
    add b

jr_007_6949:
    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_007_6931

    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    rra
    rra
    nop

jr_007_6960:
    nop
    jr nz, jr_007_6943

    ld b, b
    ret nz

    ret nz

    ret nz

    jr nz, jr_007_6949

    db $10
    ldh a, [$08]
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [$100f], sp
    rra
    inc d
    rra
    jr nz, jr_007_69be

    ld b, d
    ld a, a
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$50], a
    ldh a, [$28]
    ld hl, sp+$28
    ld hl, sp+$14
    db $fc
    ld d, [hl]
    ld a, a
    ld a, [hl-]
    dec sp
    inc b
    rlca
    ld [$100f], sp
    rra

jr_007_699b:
    jr nz, jr_007_69dc

    ccf
    ccf
    nop
    nop
    jr jr_007_699b

    inc d
    db $fc
    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    cp $fe
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld b, $05
    ld b, $0b

jr_007_69be:
    inc c
    add hl, bc
    ld c, $00
    nop
    add b
    add b

jr_007_69c5:
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, jr_007_6960

    ld [hl], b
    add hl, bc
    ld c, $04
    rlca
    dec b
    rlca
    inc hl
    inc hl
    ld e, l
    ld a, a
    ld [hl-], a

jr_007_69dc:
    ccf
    ld l, l
    ld l, l
    nop
    nop
    sub b
    ld [hl], b
    jr nz, jr_007_69c5

    and b
    ldh [$f4], a
    db $f4
    adc d
    cp $44
    db $fc
    cp b
    cp b
    nop
    nop
    nop
    nop
    dec de
    dec de
    rra
    rra
    ld a, [bc]
    rrca
    rrca
    rrca
    inc c
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    nop
    nop
    ld l, b
    ld l, b
    ld hl, sp-$08
    ld d, b
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [rIF]
    rrca
    ld a, [bc]
    rrca
    rra
    rra
    inc d
    rra
    ccf
    ccf
    jr nz, jr_007_6a5c

    ccf
    ccf
    nop
    nop
    ldh a, [$f0]
    ld d, b
    ldh a, [$f8]
    ld hl, sp-$68
    ld hl, sp-$04
    db $fc
    inc b
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $1901
    add hl, de
    jr jr_007_6a51

    ld [$6408], sp
    ld h, h
    ld h, l
    ld h, l
    inc hl
    inc hl
    add b
    add b
    ld b, b
    ld b, b
    ld c, h
    ld c, h
    adc h
    adc h
    adc b
    adc b
    sub e
    sub e
    db $d3
    db $d3
    ld [hl], d
    ld a, [c]

jr_007_6a51:
    ld a, $3f
    add hl, de
    rra
    rra
    rra
    dec sp
    dec sp
    cpl
    cpl
    db $10

jr_007_6a5c:
    rra
    rrca
    rrca
    nop
    nop
    ld a, $fe
    ld c, h
    db $fc
    db $fc
    db $fc
    ld d, [hl]
    ld d, [hl]
    ld a, [$04fa]
    db $fc
    ld hl, sp-$08
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc de
    inc de
    dec a
    ccf
    db $76
    ld a, a
    ld h, e
    ld [hl], a
    ld [hl], $3f
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    db $e4
    db $e4
    sbc $fe
    scf
    rst $38
    db $e3
    rst $30
    ld [hl], $fe
    inc [hl]
    ld a, $38
    inc a
    jr @+$21

    dec d
    rra
    jr @+$21

    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ld d, $3e
    ld c, $9e
    adc h
    db $fc
    ld d, h
    db $fc
    inc c
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    rst $38
    ld bc, $03fe
    rst $38
    inc bc
    cp $03
    db $fc
    rlca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$fc], a
    rlca
    cp $03
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    rst $38
    rra
    rst $38
    nop
    ccf
    ldh [$7f], a
    ret nz

    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    nop
    cp $03
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    db $f4
    rra
    ldh [$3f], a
    jp nz, $ff7f

    nop
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ldh [$5f], a
    ldh a, [$2f]
    ld hl, sp+$2f
    ld hl, sp+$17
    db $fc
    sub $7f
    cp $3b
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    rst $38
    ccf
    rst $38
    nop
    rra
    ld hl, sp+$17
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    cp $03
    db $fd
    ld b, $fd
    ld b, $fb
    inc c
    ld sp, hl
    ld c, $ff
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    cp a
    ld h, b
    cp a
    ld h, b
    rst $18
    jr nc, @-$5f

    ld [hl], b
    ld sp, hl
    ld c, $fc
    rlca
    db $fd
    rlca
    rst $38
    inc hl
    db $dd
    ld a, a
    ld a, [c]
    ccf
    rst $38
    ld l, l
    rst $38
    nop
    sbc a
    ld [hl], b
    ccf
    ldh [$bf], a
    ldh [rIE], a
    db $f4
    adc e
    cp $47
    db $fc
    rst $38
    cp b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    rst $38
    rra
    ld a, [$ff0f]
    rrca
    db $fc
    rrca
    rst $38
    rrca
    ld sp, hl
    rrca
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    ld hl, sp+$5f
    ldh a, [rIE]
    ldh a, [$9f]
    ldh a, [rIE]
    ldh a, [$3f]
    ldh a, [rIE]
    rrca
    ld a, [$ff0f]
    rra
    db $f4
    rra
    rst $38
    ccf
    ldh [$3f], a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ldh a, [$5f]
    ldh a, [rIE]
    ld hl, sp-$61
    ld hl, sp-$01
    db $fc
    rlca
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $19ff
    rst $38
    jr @+$01

    ld [$64ff], sp
    rst $38
    ld h, l
    rst $38
    inc hl
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld c, h
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    sub e
    rst $38
    db $d3
    ld a, a
    ld a, [c]
    cp $3f
    ld sp, hl
    rra
    rst $38
    rra
    ei
    dec sp
    rst $28
    cpl
    ldh a, [$1f]
    rst $38
    rrca
    rst $38
    nop
    ccf
    cp $4f
    db $fc
    rst $38
    db $fc
    ld d, a
    ld d, [hl]
    ei
    ld a, [$fc07]
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $13ff
    db $fd
    ccf
    or $7f
    db $e3
    ld [hl], a
    or $3f
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    db $e4
    rst $18
    cp $37
    rst $38
    db $e3
    rst $30
    scf
    cp $f4
    ld a, $f8
    inc a
    ld hl, sp+$1f
    push af
    rra
    ld hl, sp+$1f
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    nop
    rla
    ld a, $0f
    sbc [hl]
    adc a
    db $fc
    ld d, a
    db $fc
    rrca
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    jr nz, jr_007_6c71

    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    ld [$1008], sp
    db $10
    rra
    rra
    nop
    nop
    jr nz, jr_007_6c83

    ld b, b
    ld b, b
    ret nz

    ret nz

    jr nz, jr_007_6c89

    db $10
    db $10
    ld [$f808], sp
    ld hl, sp+$00
    nop

jr_007_6c71:
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [$1008], sp
    db $10
    inc d
    inc d
    jr nz, jr_007_6c9f

    ld b, d
    ld b, d
    nop
    nop

jr_007_6c83:
    add b
    add b
    ld b, b
    ld b, b
    and b
    and b

jr_007_6c89:
    ld d, b
    ld d, b
    jr z, @+$2a

    jr z, jr_007_6cb7

    inc d
    inc d
    ld d, [hl]
    ld d, [hl]
    ld a, [hl-]
    ld a, [hl-]
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_007_6cbd

    ccf
    ccf

jr_007_6c9f:
    nop
    nop
    jr jr_007_6cbb

    inc d
    inc d
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    cp $fe
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a

jr_007_6cb7:
    ld [bc], a
    ld [bc], a
    dec b
    dec b

jr_007_6cbb:
    dec b
    dec b

jr_007_6cbd:
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    and b
    and b
    and b
    and b
    ret nc

    ret nc

    sub b
    sub b
    add hl, bc
    add hl, bc
    inc b
    inc b
    dec b
    dec b
    inc hl
    inc hl
    ld e, l
    ld e, l
    ld [hl-], a
    ld [hl-], a
    ld l, l
    ld l, l
    nop
    nop
    sub b
    sub b
    jr nz, jr_007_6d05

    and b
    and b
    db $f4
    db $f4
    adc d
    adc d
    ld b, h
    ld b, h
    cp b
    cp b
    nop
    nop
    nop
    nop
    dec de
    dec de
    rra
    rra
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    inc c
    inc c
    rrca
    rrca
    add hl, bc
    add hl, bc
    nop
    nop
    ld l, b
    ld l, b

jr_007_6d05:
    ld hl, sp-$08
    ld d, b
    ld d, b
    ldh a, [$f0]
    sub b
    sub b
    ldh a, [$f0]
    jr nc, jr_007_6d41

    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    rra
    rra
    inc d
    inc d
    ccf
    ccf
    jr nz, jr_007_6d3d

    ccf
    ccf
    nop
    nop
    ldh a, [$f0]
    ld d, b
    ld d, b
    ld hl, sp-$08
    sbc b
    sbc b
    db $fc
    db $fc
    inc b
    inc b
    db $fc
    db $fc
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld c, h
    ld c, h
    adc h
    adc h
    adc b
    adc b
    sub e
    sub e

jr_007_6d3d:
    db $d3
    db $d3
    ld [hl], d
    ld [hl], d

jr_007_6d41:
    ld a, $3e
    add hl, de
    add hl, de
    rra
    rra
    dec sp
    dec sp
    cpl
    cpl
    db $10
    db $10
    rrca
    rrca
    nop
    nop
    ld a, $3e
    ld c, h
    ld c, h
    db $fc
    db $fc
    ld d, [hl]
    ld d, [hl]
    ld a, [$04fa]
    inc b
    ld hl, sp-$08
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [de], a
    ld [de], a
    ld l, $2e
    ld l, c
    ld l, c
    ld d, [hl]
    ld d, [hl]
    add hl, hl
    add hl, hl
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    inc h
    inc h
    ld a, [hl-]
    ld a, [hl-]
    set 1, e
    or l
    or l
    jp z, Jump_000_2aca

    ld a, [hl+]
    inc [hl]
    inc [hl]
    rla
    rla
    ld a, [de]
    ld a, [de]
    rla
    rla
    ld [$0708], sp
    rlca
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    sub [hl]
    sub [hl]
    ld [hl], h
    ld [hl], h
    xor h
    xor h
    db $f4
    db $f4
    ld [$f008], sp
    ldh a, [rP1]
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    rst $38
    ld bc, $02fe
    rst $38
    inc bc
    cp $02
    db $fc
    inc b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    ret nz

    ld a, a

jr_007_6dbe:
    ld b, b
    ccf
    jr nz, jr_007_6dbe

    inc b
    cp $02
    rst $38
    inc bc
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    rst $38
    rra
    rst $38
    nop
    ccf
    jr nz, jr_007_6e53

    ld b, b
    rst $38
    ret nz

    ccf
    jr nz, jr_007_6df9

    db $10
    rrca
    ld [$f8ff], sp
    rst $38
    nop
    rst $38
    nop
    cp $02
    rst $38
    rlca
    ld hl, sp+$08
    ldh a, [rNR10]
    db $f4
    inc d
    ldh [rNR41], a
    jp nz, $ff42

    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    and b

jr_007_6df9:
    ld e, a
    ld d, b
    cpl
    jr z, jr_007_6e2d

    jr z, @+$19

    inc d
    sub $56
    cp $3a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    rst $38
    ccf
    rst $38
    nop
    rra
    jr jr_007_6e2b

    inc d

jr_007_6e15:
    rrca
    ld [$080f], sp
    rlca
    inc b
    rlca
    inc b
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    cp $02
    db $fd
    dec b

jr_007_6e2b:
    db $fd
    dec b

jr_007_6e2d:
    ei
    dec bc
    ld sp, hl
    add hl, bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    and b
    cp a
    and b
    rst $18
    ret nc

    sbc a
    sub b
    ld sp, hl
    add hl, bc
    db $fc
    inc b
    db $fd
    dec b
    rst $38
    inc hl
    db $dd
    ld e, l
    ld a, [c]
    ld [hl-], a
    rst $38
    ld l, l
    rst $38
    nop
    sbc a
    sub b

jr_007_6e53:
    ccf
    jr nz, jr_007_6e15

    and b
    rst $38
    db $f4
    adc e
    adc d
    ld b, a
    ld b, h
    rst $38
    cp b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    rst $38
    rra
    ld a, [$ff0a]
    rrca
    db $fc
    inc c
    rst $38
    rrca
    ld sp, hl
    add hl, bc
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    ld hl, sp+$5f
    ld d, b
    rst $38
    ldh a, [$9f]
    sub b
    rst $38
    ldh a, [$3f]
    jr nc, @+$01

    rrca
    ld a, [$ff0a]
    rra
    db $f4
    inc d
    rst $38
    ccf
    ldh [rNR41], a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ldh a, [$5f]
    ld d, b
    rst $38
    ld hl, sp-$61
    sbc b
    rst $38
    db $fc
    rlca
    inc b
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld c, h
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    sub e
    rst $38
    db $d3
    ld a, a
    ld [hl], d
    cp $3e
    ld sp, hl
    add hl, de
    rst $38
    rra
    ei
    dec sp
    rst $28
    cpl
    ldh a, [rNR10]
    rst $38
    rrca
    rst $38
    nop
    ccf
    ld a, $4f
    ld c, h
    rst $38
    db $fc
    ld d, a
    ld d, [hl]
    ei
    ld a, [$0407]
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $12fe
    xor $2e
    jp hl


    ld l, c
    sub $56
    jp hl


    add hl, hl
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ret nz

    ccf
    inc h
    dec sp
    ld a, [hl-]
    set 1, e
    or l
    or l
    set 1, d
    ld [$f42a], a
    inc [hl]
    rst $30
    rla
    ld a, [$f71a]
    rla
    ld hl, sp+$08
    rst $38
    rlca
    rst $38
    nop
    dec hl
    ld a, [hl+]
    sub a
    sub [hl]
    ld [hl], a
    ld [hl], h
    xor a
    xor h
    rst $30
    db $f4
    rrca
    ld [$f0ff], sp
    rst $38
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rra
    rra
    nop
    nop
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    rlca
    rlca
    rrca
    ld [$101f], sp
    rra
    inc d
    ccf
    jr nz, jr_007_6fdf

    ld b, d
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [$50]
    ld hl, sp+$28
    ld hl, sp+$28
    db $fc
    inc d
    ld a, a
    ld d, [hl]
    dec sp
    ld a, [hl-]
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_007_6fbd

    ccf
    nop
    nop
    ld hl, sp+$18
    db $fc
    inc d
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $fe
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    dec b
    rrca
    dec bc
    rrca
    add hl, bc
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh [$a0], a
    ldh a, [$d0]
    ldh a, [$90]
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    dec b
    inc hl
    inc hl
    ld a, a
    ld e, l
    ccf
    ld [hl-], a

jr_007_6fbd:
    ld l, l
    ld l, l
    nop
    nop
    ldh a, [$90]
    ldh [rNR41], a
    ldh [$a0], a
    db $f4
    db $f4
    cp $8a
    db $fc
    ld b, h
    cp b
    cp b
    nop
    nop
    nop
    nop
    dec de
    dec de
    rra
    rra
    rrca
    ld a, [bc]
    rrca
    rrca
    rrca
    inc c
    rrca
    rrca

jr_007_6fdf:
    rrca
    add hl, bc
    nop
    nop
    ld l, b
    ld l, b
    ld hl, sp-$08
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$30]
    rrca
    rrca
    rrca
    ld a, [bc]
    rra
    rra
    rra
    inc d
    ccf
    ccf
    ccf
    jr nz, jr_007_703d

    ccf
    nop
    nop
    ldh a, [$f0]
    ldh a, [$50]
    ld hl, sp-$08
    ld hl, sp-$68
    db $fc
    db $fc
    db $fc
    inc b
    db $fc
    db $fc
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld c, h
    ld c, h
    adc h
    adc h
    adc b
    adc b
    sub e
    sub e
    db $d3
    db $d3
    ld a, [c]
    ld [hl], d
    ccf
    ld a, $1f
    add hl, de
    rra
    rra
    dec sp
    dec sp
    cpl
    cpl
    rra
    db $10
    rrca
    rrca
    nop
    nop
    cp $3e
    db $fc
    ld c, h
    db $fc
    db $fc
    ld d, [hl]
    ld d, [hl]
    ld a, [$fcfa]
    inc b

jr_007_703d:
    ld hl, sp-$08
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc de
    ld [de], a
    ccf
    ld l, $7f
    ld l, c
    ld [hl], a
    ld d, [hl]
    ccf
    add hl, hl
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    db $e4
    inc h
    cp $3a
    rst $38
    set 6, a
    or l
    cp $ca
    ld a, $2a
    inc a
    inc [hl]
    rra
    rla
    rra
    ld a, [de]
    rra
    rla
    rrca
    ld [$0707], sp
    nop
    nop
    ld a, $2a
    sbc [hl]
    sub [hl]
    db $fc
    ld [hl], h
    db $fc
    xor h
    db $fc
    db $f4
    ld hl, sp+$08
    ldh a, [$f0]
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
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    inc hl
    inc hl
    nop

jr_007_7092:
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b
    ld c, b
    ld a, b
    call nz, Call_000_23fc
    inc hl
    ld [de], a
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, $48fc
    ld a, b
    ld d, b
    ld [hl], b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    ccf
    jr nc, jr_007_7147

    ld b, b
    ld a, a
    ld [hl], b
    ld c, a
    ld c, h
    ld h, a
    ld h, e
    inc h
    jr nz, jr_007_7092

    ret nz

    ldh a, [$30]
    db $fc
    inc c
    cp $02
    cp $0e
    ld a, [c]
    ld [hl-], a
    and $c6
    inc h
    inc b
    inc h
    jr nz, jr_007_7108

    jr nz, jr_007_711c

    jr nc, @+$14

    db $10
    ld [de], a
    db $10
    ld [de], a
    db $10
    ld e, $1e
    inc bc
    inc bc
    inc h
    inc b
    inc h
    inc b
    ld l, h
    inc c
    ld c, b
    ld [$0848], sp
    ld c, b
    ld [$7878], sp
    ret nz

    ret nz

jr_007_7101:
    nop
    add b
    db $10
    ret nc

    ld e, b
    cp b
    ld l, h

jr_007_7108:
    sbc h
    db $76
    adc [hl]
    ld a, e
    add a
    ld a, l
    add e
    ld a, [hl]
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_711c:
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
    jr jr_007_7101

    db $10
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ldh [$f0], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_007_7147:
    inc b
    dec bc
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    inc c
    db $fc
    inc bc
    ld bc, $0302
    inc b
    inc bc
    inc b
    inc b
    dec bc
    inc bc
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    di
    rrca
    rst $08
    ccf
    inc a
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_007_7cc2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
