; Disassembly of "4-in-1 Funpak - Volume II (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    xor a
    ld [$c3bc], a
    ld [$c3ae], a
    ld [$c3b8], sp

Jump_003_400a:
    ld hl, $c3b8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    call Call_003_4032
    call Call_003_4082

jr_003_4017:
    ld hl, $c3b8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    call Call_003_409c
    call Call_003_46f0
    call Call_003_40cd
    call Call_003_417c
    jr nc, jr_003_4031

    call Call_003_55f7
    jr jr_003_4017

jr_003_4031:
    ret


Call_003_4032:
    ld a, [$c3bc]
    or a
    jr z, jr_003_403d

    xor a
    ld [$c3bc], a
    ret


jr_003_403d:
    call Call_000_00bd
    ld a, $03
    call Call_000_05e0
    call Call_003_55dc
    ld a, $91
    ldh [rLCDC], a
    call Call_000_151b
    ld hl, $ffb7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0003

jr_003_4058:
    rst $10
    add hl, de
    ld a, [$c3bd]
    inc a
    ld [$c3bd], a
    ldh a, [$a9]
    and $0f
    jr z, jr_003_4058

    ld a, [$ffb7]
    or a
    jr z, jr_003_4073

    ld a, [$ffb8]
    or a
    jr nz, jr_003_4076

jr_003_4073:
    ld hl, $c963

jr_003_4076:
    ld a, l
    ld [$ffb7], a
    ld a, h
    ld [$ffb8], a
    call Call_000_1521
    ret


Call_003_4082:
    xor a
    ld [$c418], a
    ld [$c436], a
    ld [$c3b1], a
    ld [$c3b2], a
    ld [$c3b3], a
    ld [$c3b5], a
    ld [$c3b7], a
    ld [$c453], a
    ret


Call_003_409c:
    call Call_000_00bd
    ld a, $40
    call Call_000_05e0
    call Call_003_41df
    call Call_003_4212
    call Call_003_4220
    xor a
    ld [$c3b3], a
    ld [$c3b5], a
    ld [$c453], a
    ld [$c3bd], a
    ld [$c460], a
    ld a, $28
    ld [$c45f], a
    ld a, $91
    ldh [rLCDC], a
    call Call_000_151b
    call Call_000_1525
    ret


Call_003_40cd:
    ld a, [$c338]
    rst $00
    rst $10
    ld b, b
    dec c
    ld b, c
    dec [hl]
    ld b, c
    ld a, [$c3b2]
    ld [$c3b0], a
    call Call_003_5654

jr_003_40e0:
    call Call_003_427a
    ld a, [$c3b0]
    add $04
    call Call_003_45e7

jr_003_40eb:
    ld a, [$c3b0]
    or a
    jr nz, jr_003_40fc

    xor a
    call Call_003_48ec
    call Call_003_4fbf
    jr c, jr_003_40eb

    jr jr_003_40ff

jr_003_40fc:
    call Call_003_5655

jr_003_40ff:
    ld a, [$c3b0]
    xor $01
    ld [$c3b0], a
    call Call_003_525e
    jr nc, jr_003_40e0

    ret


    ld a, [$c3b2]
    ld [$c3b0], a

jr_003_4113:
    call Call_003_427a
    ld a, [$c3b0]
    add $04
    call Call_003_45e7

jr_003_411e:
    xor a
    call Call_003_48ec
    call Call_003_4fbf
    jr c, jr_003_411e

    ld a, [$c3b0]
    xor $01
    ld [$c3b0], a
    call Call_003_525e
    jr nc, jr_003_4113

    ret


    ld a, [$c3b2]
    ld [$c3b0], a

jr_003_413b:
    call Call_003_427a
    ld a, [$c3b0]
    add $04
    call Call_003_45e7

jr_003_4146:
    ld a, [$c3b0]
    or a
    jr nz, jr_003_4157

    ld a, [$c303]
    cp $02
    jr z, jr_003_4160

    ld a, $02
    jr jr_003_4166

jr_003_4157:
    ld a, [$c303]
    cp $03
    ld a, $01
    jr nz, jr_003_4166

jr_003_4160:
    xor a
    call Call_003_48ec
    jr jr_003_4169

jr_003_4166:
    call Call_003_48ec

jr_003_4169:
    call Call_003_4fbf
    jr c, jr_003_4146

    ld a, [$c3b0]
    xor $01
    ld [$c3b0], a
    call Call_003_525e
    jr nc, jr_003_413b

    ret


Call_003_417c:
    call Call_003_52b7
    rst $10
    call Call_003_4212
    call Call_003_4281
    ld a, [$c3b1]
    or a
    jr z, jr_003_419a

    call Call_003_5149
    call Call_003_528a
    or a
    jr z, jr_003_41b7

    call Call_003_5418
    jr jr_003_41a4

jr_003_419a:
    ld a, [$c3b5]
    cp $02
    jr c, jr_003_41a4

    call Call_003_5149

jr_003_41a4:
    call Call_003_4885
    jr nc, jr_003_41b9

    ld a, $01
    ld [$c3bc], a
    call Call_003_55dc
    call Call_003_55f7
    jp Jump_003_400a


jr_003_41b7:
    scf
    ret


jr_003_41b9:
    xor a
    ret


Call_003_41bb:
    ld c, $a9
    ld a, [$c338]
    and $02
    jr z, jr_003_41cb

    ld a, [$c3b0]
    or a
    jr z, jr_003_41cb

    inc c

jr_003_41cb:
    ld a, [c]
    ret


    ld c, $ab
    ld a, [$c338]
    and $02
    jr z, jr_003_41dd

    ld a, [$c3b0]
    or a
    jr z, jr_003_41dd

    inc c

jr_003_41dd:
    ld a, [c]
    ret


Call_003_41df:
    ld a, $1c
    ld [$c3da], a
    xor a
    ld [$c3db], a
    ld hl, $c1a0
    ld bc, $001c
    call Call_000_1535
    ld hl, $c3be
    ld b, $1c

jr_003_41f6:
    push hl

jr_003_41f7:
    ld a, $1c

Call_003_41f9:
    call Call_000_14ae
    ld c, a
    ld hl, $c1a0
    add l
    ld l, a
    jr nc, jr_003_4205

    inc h

jr_003_4205:
    ld a, [hl]
    and a
    jr nz, jr_003_41f7

    inc [hl]
    pop hl
    ld a, c
    inc a
    ld [hl+], a
    dec b
    jr nz, jr_003_41f6

    ret


Call_003_4212:
    ld hl, $c3dc
    ld bc, $001e
    call Call_000_1535
    xor a
    ld [$c3fa], a
    ret


Call_003_4220:
    ld hl, $c3fc
    ld bc, $001c
    call Call_000_1535
    ld hl, $c41a
    ld bc, $001c
    call Call_000_1535
    ld hl, $c3be
    ld de, $c3fc
    ld bc, $0007
    call Call_000_00de
    ld de, $c41a
    ld bc, $0007
    call Call_000_00de
    ld a, $0e
    ld [$c3db], a
    ld a, [$c3da]
    sub $0e
    ld [$c3da], a
    ld a, $07
    ld [$c3fb], a
    ld [$c419], a
    ret


Call_003_425d:
    push hl
    ld b, $1b

jr_003_4260:
    ld a, [hl+]
    or a
    call z, Call_003_426a
    dec b
    jr nz, jr_003_4260

    jr jr_003_4278

Call_003_426a:
    push bc
    push hl
    ld d, h
    ld e, l
    dec de
    call Call_000_00e7
    xor a
    ld [de], a
    pop hl
    pop bc
    dec hl
    ret


jr_003_4278:
    pop hl
    ret


Call_003_427a:
    call Call_003_4281
    call Call_003_4547
    ret


Call_003_4281:
    rst $10
    ld hl, $c3dc
    ld b, $1e

Jump_003_4287:
    ld a, [hl+]
    push hl
    push bc
    push af
    ld a, $1e
    sub b
    ld hl, $4343
    rst $08
    ld d, h
    ld e, l
    pop af
    ld hl, $42cf
    ld b, a
    and $7f
    add a
    add a
    add l
    ld l, a
    jr nc, jr_003_42a2

    inc h

jr_003_42a2:
    ld a, b
    and $80
    ld c, a
    ld a, d
    and $40
    rlca
    xor c
    jr z, jr_003_42ae

    inc hl

jr_003_42ae:
    bit 7, d
    jr z, jr_003_42b4

    inc hl
    inc hl

jr_003_42b4:
    ld b, d
    ld a, d
    and $3f
    add $98
    ld d, a
    ld a, [hl]
    call $437d
    pop bc
    pop hl
    dec b
    jr z, jr_003_42ce

    ld a, b
    cp $0e
    jp nz, Jump_003_4287

    rst $10
    jp Jump_003_4287


jr_003_42ce:
    ret


    dec [hl]
    dec [hl]
    nop
    nop
    ld [hl], $36
    ld bc, $3701
    dec a
    ld [bc], a
    ld [$4438], sp
    inc bc
    rrca
    add hl, sp
    ld c, e
    inc b

jr_003_42e2:
    ld d, $3a
    ld d, d
    dec b
    dec e
    dec sp
    ld e, c
    ld b, $24
    inc a
    ld h, b
    rlca
    dec hl
    ld a, $3e
    add hl, bc
    add hl, bc
    ccf
    ld b, l
    ld a, [bc]
    db $10
    ld b, b
    ld c, h
    dec bc
    rla
    ld b, c
    ld d, e
    inc c
    ld e, $42
    ld e, d
    dec c
    dec h
    ld b, e
    ld h, c
    ld c, $2c
    ld b, [hl]
    ld b, [hl]
    ld de, $4711
    ld c, l
    ld [de], a
    jr @+$4a

    ld d, h
    inc de
    rra
    ld c, c
    ld e, e
    inc d
    ld h, $4a
    ld h, d
    dec d
    dec l
    ld c, [hl]
    ld c, [hl]
    add hl, de
    add hl, de
    ld c, a
    ld d, l
    ld a, [de]
    jr nz, jr_003_4374

    ld e, h
    dec de
    daa
    ld d, c
    ld h, e
    inc e
    ld l, $56
    ld d, [hl]
    ld hl, $5721
    ld e, l
    ld [hl+], a
    jr z, jr_003_438c

    ld h, h
    inc hl
    cpl
    ld e, [hl]
    ld e, [hl]
    add hl, hl
    add hl, hl
    ld e, a
    ld h, l
    ld a, [hl+]
    jr nc, jr_003_43a6

    ld h, [hl]
    ld sp, $ae31
    ld b, b
    xor d
    ld b, b
    and [hl]
    ld b, b
    and d
    ld b, b
    and b
    add b
    ld [c], a
    nop
    and $00
    ld [$ee00], a
    nop
    ld a, [c]
    add b
    ld l, $41
    ld a, [hl+]
    ld b, c
    ld h, $41
    ld [hl+], a
    ld b, c
    jr nz, jr_003_42e2

    ld h, d
    ld bc, $0166
    ld l, d
    ld bc, $016e
    ld [hl], d
    add c
    xor [hl]
    ld b, c
    xor d
    ld b, c
    and [hl]
    ld b, c
    and d
    ld b, c
    and b

jr_003_4374:
    add c
    ld [c], a
    ld bc, $01e6
    ld [$ee01], a
    ld bc, $0e21
    ld e, d
    rst $08
    ld a, [hl+]
    inc hl
    cp $04
    jr z, jr_003_43d2

    ld c, $1f
    ldh a, [rLCDC]
    rlca

jr_003_438c:
    jr nc, jr_003_439a

jr_003_438e:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_438e

jr_003_4394:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4394

jr_003_439a:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, c
    add e
    ld e, a
    jr nc, jr_003_43a5

    inc d

jr_003_43a5:
    ld a, [hl+]

jr_003_43a6:
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, c
    add e
    ld e, a
    jr nc, jr_003_43b0

    inc d

jr_003_43b0:
    ldh a, [rLCDC]
    rlca
    jr nc, jr_003_43c1

jr_003_43b5:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_43b5

jr_003_43bb:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_43bb

jr_003_43c1:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, c
    add e
    ld e, a
    jr nc, jr_003_43cc

    inc d

jr_003_43cc:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


jr_003_43d2:
    ld c, $1d
    ldh a, [rLCDC]
    rlca
    jr nc, jr_003_43e5

jr_003_43d9:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_43d9

jr_003_43df:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_43df

jr_003_43e5:
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
    ld a, c
    add e
    ld e, a
    jr nc, jr_003_43f6

    inc d

jr_003_43f6:
    ldh a, [rLCDC]
    rlca
    jr nc, jr_003_4407

jr_003_43fb:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_43fb

jr_003_4401:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4401

jr_003_4407:
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
    ret


Call_003_4413:
    call Call_003_449e
    ld b, a
    ld a, $0e
    sub b
    ld b, a
    call Call_003_44ae
    sub $0e
    sub b
    inc a
    cp $03
    jr c, jr_003_4460

    ld hl, $c3dc
    ld b, $1e

jr_003_442b:
    ld a, [hl]
    or a
    jr nz, jr_003_4435

    dec b
    jr z, jr_003_4460

    inc hl
    jr jr_003_442b

jr_003_4435:
    ld c, $00
    ld de, $c1a0

jr_003_443a:
    ld a, [hl+]
    or a
    jr z, jr_003_4444

    ld [de], a
    inc de
    inc c
    dec b
    jr nz, jr_003_443a

jr_003_4444:
    push bc
    ld hl, $c3dc
    ld bc, $001e
    call Call_000_1535
    pop bc
    ld a, $1e
    sub c
    srl a
    ld de, $c3dc
    rst $28
    ld hl, $c1a0
    ld b, $00
    call Call_000_00de

jr_003_4460:
    ret


Call_003_4461:
    cp $01
    jr z, jr_003_4476

    ld hl, $c3dc

jr_003_4468:
    ld a, [hl+]
    or a
    jr z, jr_003_4468

    ld a, l
    cp $dd
    jr z, jr_003_4472

    dec hl

jr_003_4472:
    dec hl
    ld [hl], b
    jr jr_003_4485

jr_003_4476:
    ld hl, $c3f9

jr_003_4479:
    ld a, [hl-]
    or a
    jr z, jr_003_4479

    ld a, l
    cp $f8
    jr z, jr_003_4483

    inc hl

jr_003_4483:
    inc hl
    ld [hl], b

jr_003_4485:
    ld hl, $c3fa
    inc [hl]
    ret


Call_003_448a:
    push hl
    ld hl, $c3dc

jr_003_448e:
    ld a, [hl+]
    or a
    jr z, jr_003_448e

    pop hl
    ret


Call_003_4494:
    push hl
    ld hl, $c3f9

jr_003_4498:
    ld a, [hl-]
    or a
    jr z, jr_003_4498

    pop hl
    ret


Call_003_449e:
    push hl
    push bc
    ld hl, $c3dc
    ld b, $ff

jr_003_44a5:
    ld a, [hl+]
    inc b
    or a
    jr z, jr_003_44a5

    ld a, b
    pop bc
    pop hl
    ret


Call_003_44ae:
    push hl
    push bc
    ld hl, $c3f9
    ld b, $1e

jr_003_44b5:
    ld a, [hl-]
    dec b
    or a
    jr z, jr_003_44b5

    ld a, b
    pop bc
    pop hl
    ret


Call_003_44be:
    push hl
    push bc
    push de
    call Call_003_44e5
    ld h, b
    ld l, c
    ld d, $00
    call Call_003_448a
    call Call_003_44e5
    ld a, b
    cp l
    jr nz, jr_003_44d4

    set 0, d

jr_003_44d4:
    call Call_003_4494
    call Call_003_44e5
    ld a, c
    cp h
    jr nz, jr_003_44e0

    set 1, d

jr_003_44e0:
    ld a, d
    pop de
    pop bc
    pop hl
    ret


Call_003_44e5:
    push hl
    push af
    and $7f
    ld hl, $44fa
    rst $08
    pop af
    bit 7, a
    jr nz, jr_003_44f6

    ld b, h
    ld c, l
    jr jr_003_44f8

jr_003_44f6:
    ld c, h
    ld b, l

jr_003_44f8:
    pop hl
    ret


    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    dec b
    nop
    ld b, $01
    ld bc, $0201
    ld bc, $0103
    inc b
    ld bc, $0105
    ld b, $02
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $03
    inc bc
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    ld b, $04
    inc b
    inc b
    dec b
    inc b
    ld b, $05
    dec b
    dec b
    ld b, $06
    ld b, $e5
    push af
    ld hl, $c418
    ld a, [$c3b0]
    or a
    jr z, jr_003_4542

    ld hl, $c436

jr_003_4542:
    pop af
    add [hl]
    ld [hl], a
    pop hl
    ret


Call_003_4547:
    ld a, [$c3fb]
    ld de, $9846
    call Call_003_456c
    ld a, [$c419]
    ld de, $9851
    call Call_003_456c
    ld a, [$c418]
    ld de, $9866
    call Call_003_4594
    ld a, [$c436]
    ld de, $9871
    call Call_003_4594
    ret


Call_003_456c:
    call Call_003_45c5
    ld a, c
    and $f0
    swap a
    add $10
    ld b, a
    ld a, c
    and $0f
    add $10
    ld c, a
    ldh a, [rLCDC]
    rlca
    jr nc, jr_003_458e

jr_003_4582:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_4582

jr_003_4588:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4588

jr_003_458e:
    ld a, b
    ld [de], a
    inc e
    ld a, c
    ld [de], a
    ret


Call_003_4594:
    call Call_003_45c5
    ld a, b
    and $0f
    add $10
    ld h, a
    ld a, c
    and $f0
    swap a
    add $10
    ld b, a
    ld a, c
    and $0f
    add $10
    ld c, a
    ldh a, [rLCDC]
    rlca
    jr nc, jr_003_45bc

jr_003_45b0:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_45b0

jr_003_45b6:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_45b6

jr_003_45bc:
    ld a, h
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    inc e
    ld a, c
    ld [de], a
    ret


Call_003_45c5:
    push hl
    push de
    ld hl, $0000
    ld de, $6400
    ld b, $01
    call Call_003_45e0
    ld a, c
    dec b
    ld de, $0a10
    call Call_003_45e0
    add hl, bc
    ld b, h
    ld c, l
    pop de
    pop hl
    ret


Call_003_45e0:
jr_003_45e0:
    ld c, a
    sub d
    ret c

    ld c, e
    add hl, bc
    jr jr_003_45e0

Call_003_45e7:
    ldh [$8a], a

jr_003_45e9:
    rst $10
    ld hl, $4636
    ld a, $40
    call Call_000_081b

jr_003_45f2:
    rst $10
    ld hl, $c3bd
    inc [hl]
    call Call_003_41bb
    ld b, a
    and $03
    jr nz, jr_003_4612

    ld a, b
    and $08
    jr z, jr_003_45f2

    ldh a, [$8a]
    push af
    call Call_000_0974
    call Call_003_47c1
    pop af
    ldh [$8a], a
    jr jr_003_45e9

jr_003_4612:
    call Call_000_0974
    ret


    ld hl, $4620
    ldh a, [$8a]
    rst $08
    call Call_000_0876
    ret


    ld a, $46
    ld b, d
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld c, [hl]
    ld b, [hl]
    ld d, d
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    ld e, d
    ld b, [hl]
    ld e, [hl]
    ld b, [hl]
    ld h, d
    ld b, [hl]
    ld h, [hl]
    ld b, [hl]
    nop
    nop
    ld hl, $1098
    ld bc, $4616
    ld [hl+], a
    nop
    ld l, d
    ld b, [hl]
    ld [hl+], a
    nop
    ld [hl], a
    ld b, [hl]
    ld [hl+], a
    nop
    add h
    ld b, [hl]
    ld [hl+], a
    nop
    sub c
    ld b, [hl]
    ld [hl+], a
    nop
    sbc l
    ld b, [hl]
    ld [hl+], a
    nop
    xor h
    ld b, [hl]
    ld [hl+], a
    nop
    cp e
    ld b, [hl]
    ld [hl+], a
    nop
    cp h
    ld b, [hl]
    ld hl, $bd00
    ld b, [hl]
    ld hl, $ce00
    ld b, [hl]
    ld hl, $df00
    ld b, [hl]
    ld b, l
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    jr nz, jr_003_469e

    jr nz, jr_003_46b4

    ld c, c
    jr nz, jr_003_46a7

    nop
    ld b, l
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    jr nz, jr_003_46ab

    jr nz, jr_003_46c1

    ld c, c
    jr nz, @+$34

    nop
    ld b, l
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    jr nz, jr_003_46b8

    jr nz, jr_003_46ce

    ld c, c
    jr nz, @+$35

    nop
    ld b, l
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    jr nz, jr_003_46c5

    jr nz, jr_003_46f0

    ld b, d
    ld c, c
    nop
    ld d, b

jr_003_469e:
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_003_46d6

    jr nz, @+$54

jr_003_46a7:
    ld h, l
    ld h, c
    ld h, h
    ld a, c

jr_003_46ab:
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_003_46e6

jr_003_46b4:
    jr nz, jr_003_4708

    ld h, l
    ld h, c

jr_003_46b8:
    ld h, h
    ld a, c
    nop
    nop
    nop
    jr nz, @+$45

    ld l, a
    ld l, l

jr_003_46c1:
    ld [hl], b
    jr nz, jr_003_4731

    ld [hl], l

jr_003_46c5:
    ld [hl], e
    ld [hl], h
    jr nz, jr_003_470d

    ld d, d
    ld b, c
    ld d, a
    jr nz, jr_003_46ce

jr_003_46ce:
    jr nz, @+$45

    ld l, a
    ld l, l
    ld [hl], b
    jr nz, @+$6f

    ld [hl], l

jr_003_46d6:
    ld [hl], e
    ld [hl], h
    jr nz, jr_003_472a

    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_003_46df

jr_003_46df:
    jr nz, jr_003_4724

    ld l, a
    ld l, l
    ld [hl], b
    jr nz, jr_003_474e

jr_003_46e6:
    ld h, c
    ld [hl], e
    jr nz, @+$64

    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$22

    nop

Call_003_46f0:
jr_003_46f0:
    ld hl, $c3b7
    ld a, [hl]
    or a
    ret nz

    inc [hl]
    rst $10
    ld hl, $4752
    ld a, $40
    call Call_000_081b
    ld hl, $ff40
    set 1, [hl]
    call Call_000_08a0

jr_003_4708:
    ld hl, $ff40
    res 1, [hl]

jr_003_470d:
    call Call_000_0974
    ret


    ld hl, $4766
    call Call_000_0876
    call Call_003_472a
    call Call_003_4743
    ret


    ld a, [$c3b1]
    inc a
    cp $03

jr_003_4724:
    jr nz, jr_003_4727

    xor a

jr_003_4727:
    ld [$c3b1], a

Call_003_472a:
jr_003_472a:
    ld hl, $4735
    ld a, [$c3b1]
    rst $08

jr_003_4731:
    call Call_000_0876
    ret


    ld l, d
    ld b, a
    ld l, [hl]
    ld b, a
    ld [hl], d
    ld b, a
    ld a, [$c3b2]
    xor $01
    ld [$c3b2], a

Call_003_4743:
    ld hl, $474e
    ld a, [$c3b2]
    rst $08
    call Call_000_0876
    ret


jr_003_474e:
    db $76
    ld b, a
    ld a, d
    ld b, a
    ld [bc], a
    nop
    add b
    sbc b
    ld [de], a
    dec b
    ld de, $1e47
    ld b, a
    dec sp
    ld b, a
    ld h, d
    inc b
    add [hl]
    ld b, a
    add d
    inc b
    adc a
    ld b, a
    ld h, $00
    ld a, [hl]
    ld b, a
    ld l, e
    nop
    sbc c
    ld b, a
    ld l, e
    nop
    and c
    ld b, a
    ld l, e
    nop
    xor c
    ld b, a
    adc e
    nop
    or c
    ld b, a
    adc e
    nop
    cp c
    ld b, a
    ld c, a
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
    jr nz, @+$56

    ld l, a
    ld a, [hl-]
    nop
    ld d, h
    ld l, a
    jr nz, jr_003_4806

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, [hl-]
    nop
    ld sp, $6720
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_003_47a1

jr_003_47a1:
    jr nz, @+$37

    jr nc, jr_003_47c5

    ld [hl], b
    ld [hl], h
    ld [hl], e
    nop
    ld sp, $3030
    jr nz, jr_003_481e

    ld [hl], h
    ld [hl], e
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld sp, $5000
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl-], a
    nop

Call_003_47c1:
    rst $10
    ld hl, $4849

jr_003_47c5:
    ld a, $40
    call Call_000_081b
    ld hl, $ff40
    set 1, [hl]
    call Call_000_08a0
    ld hl, $ff40
    res 1, [hl]
    call Call_000_0974
    ret


    ld hl, $4863
    call Call_000_0876
    call Call_003_47fc
    ret


    ld a, [$c3ae]
    add c
    cp $03
    jr nz, jr_003_47f0

    xor a
    jr jr_003_47f6

jr_003_47f0:
    cp $ff
    jr nz, jr_003_47f6

    ld a, $02

jr_003_47f6:
    ld [$c3ae], a
    call Call_003_55dc

Call_003_47fc:
    ld a, [$c3ae]
    add a
    add a
    ld hl, $4828
    add l
    ld l, a

jr_003_4806:
    jr nc, jr_003_4809

    inc h

jr_003_4809:
    call Call_000_0876
    ret


    jr nz, jr_003_4863

    ld l, b
    ld h, l
    ld l, l
    ld h, l
    jr nz, jr_003_4846

    nop
    jr nz, jr_003_486c

    ld l, b
    ld h, l
    ld l, l
    ld h, l
    jr nz, jr_003_4850

jr_003_481e:
    nop
    jr nz, @+$22

    jr nz, jr_003_4872

    ld b, [hl]
    ld b, [hl]
    jr nz, @+$22

    nop
    xor b
    nop
    dec c
    ld c, b
    xor b
    nop
    ld d, $48
    xor b
    nop
    rra
    ld c, b
    call Call_000_1521
    call Call_000_0974
    jp Jump_000_0161


    call Call_000_1521
    call Call_000_0974
    call Call_003_55f7

jr_003_4846:
    jp Jump_003_400a


    inc bc
    nop
    and c
    sbc b
    db $10
    dec b
    db $db

jr_003_4850:
    ld b, a
    dec a
    ld c, b
    inc [hl]
    ld c, b
    push hl
    ld b, a
    ld h, d
    nop
    ld l, a
    ld c, b
    add d
    nop
    ld a, b
    ld c, b
    and d
    inc b
    ld a, [hl]
    ld c, b

jr_003_4863:
    dec h
    nop
    ld h, a
    ld c, b
    ld c, a
    ld d, b
    ld d, h
    ld c, c
    ld c, a

jr_003_486c:
    ld c, [hl]
    ld d, e
    nop
    ld c, [hl]
    ld h, l
    ld [hl], a

jr_003_4872:
    jr nz, @+$49

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
    nop

Call_003_4885:
    rst $10
    ld [$c3ba], sp
    xor a
    ld [$c3b0], a
    ld hl, $48c1
    ld a, $40
    call Call_000_081b
    ld hl, $ff40
    set 1, [hl]
    call Call_000_08a0

jr_003_489d:
    ld hl, $c3ba
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ld hl, $ff40
    res 1, [hl]
    call Call_000_0974
    ld a, [$c33a]
    sub $01
    ret


    ld hl, $48d5
    call Call_000_0876
    ret


    call Call_003_41bb
    and $03
    jr nz, jr_003_489d

    ret


    ld [bc], a
    nop
    pop hl
    sbc b
    db $10
    inc b
    or d
    ld c, b
    cp c
    ld c, b
    cp c
    ld c, b
    ld l, b
    nop
    push hl
    ld c, b
    adc b
    nop
    jp hl


    ld c, b
    inc hl
    nop
    reti


    ld c, b
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_003_4920

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
    nop

Call_003_48ec:
    ldh [$8b], a
    ld [$c3b6], a
    xor a
    ld [$c461], a

jr_003_48f5:
    call Call_003_4910
    call Call_003_4547
    ld a, [$c45d]
    cp $02
    ret nz

jr_003_4901:
    rst $10
    call Call_003_41bb
    and $0f
    jr z, jr_003_4901

    ld a, $04
    call Call_003_50d1
    jr jr_003_48f5

Call_003_4910:
    call Call_003_4964
    call Call_003_4c73
    call Call_003_4a37
    ret


Call_003_491a:
    ld hl, $4952
    ld a, [$c3b0]

jr_003_4920:
    or a
    jr z, jr_003_4926

    ld hl, $495b

jr_003_4926:
    ld de, $9c26
    ldh a, [$8b]
    or a
    call z, Call_003_5633
    call Call_003_4bae
    call Call_003_4adc
    call Call_003_4b6c
    call Call_003_4c02
    call Call_003_4c59
    call Call_003_4a4b
    ret


    ret


    ld bc, $0000
    sbc b
    ld [de], a
    db $10
    ld a, [de]
    ld c, c
    ld b, d
    ld c, c
    ld h, c
    nop
    ld d, c
    ld c, c
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_003_498b

    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$34

    nop

Call_003_4964:
    ld a, $88
    ldh [$ad], a
    ld a, $07
    ldh [$ae], a
    call Call_003_498c
    call Call_003_491a
    ldh a, [$8b]
    or a
    jr nz, jr_003_497e

    ld hl, $ff40
    set 5, [hl]
    set 6, [hl]

jr_003_497e:
    ld hl, $ffad

jr_003_4981:
    rst $10
    ld a, [hl]
    or a
    jr z, jr_003_498b

    sub $08
    ld [hl], a
    jr jr_003_4981

jr_003_498b:
    ret


Call_003_498c:
    rst $10
    ld hl, $9c00

jr_003_4990:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_4990

jr_003_4996:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4996

    ld a, $01
    ld [hl+], a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_003_49a9:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_49a9

jr_003_49af:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_49af

    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $9c20
    ld b, $10

jr_003_49c7:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_49c7

jr_003_49cd:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_49cd

    ld a, $04
    ld [hl+], a
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

jr_003_49e0:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_49e0

jr_003_49e6:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_49e6

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
    ld a, $05
    ld [hl+], a
    ld de, $000c
    add hl, de
    dec b
    jr nz, jr_003_49c7

    ld hl, $9e20

jr_003_4a03:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_4a03

jr_003_4a09:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4a09

    ld a, $06
    ld [hl+], a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_003_4a1c:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_4a1c

jr_003_4a22:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4a22

    ld a, $07
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ret


Call_003_4a37:
    ld hl, $ffad

jr_003_4a3a:
    rst $10
    ld a, [hl]
    cp $88
    jr z, jr_003_4a45

    add $08
    ld [hl], a
    jr jr_003_4a3a

jr_003_4a45:
    ld hl, $ff40
    res 5, [hl]
    ret


Call_003_4a4b:
    ldh a, [$8b]
    or a
    ret nz

    ld a, [$c453]
    or a
    ret nz

    ld a, [$c451]
    or a
    jr z, jr_003_4a8b

    dec a
    jr z, jr_003_4a8b

Call_003_4a5d:
    ld hl, $5a74
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld de, $9da7
    ld b, $02

jr_003_4a6a:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_4a6a

jr_003_4a70:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4a70

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
    ld a, [hl+]
    ld [de], a
    ld de, $9dc7
    dec b
    jr nz, jr_003_4a6a

    ret


jr_003_4a8b:
    ld a, [$c3da]
    or a
    ret z

    ld hl, $5a72
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld de, $9da7
    ld b, $02

jr_003_4a9d:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_4a9d

jr_003_4aa3:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4aa3

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
    ld a, [hl+]
    ld [de], a
    ld de, $9dc7
    dec b
    jr nz, jr_003_4a9d

    ret


Call_003_4abe:
    ld hl, $9da7

jr_003_4ac1:
    ldh a, [rSTAT]
    and $02
    jr z, jr_003_4ac1

jr_003_4ac7:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_003_4ac7

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $9dc7
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_003_4adc:
    ld hl, $c437
    ld bc, $0018
    call Call_000_1535
    ld a, [$c451]
    or a
    jr nz, jr_003_4af6

    ld a, [$c3da]
    or a
    jr nz, jr_003_4af6

    ld a, $01
    ld [$c461], a

jr_003_4af6:
    ld a, [$c461]
    xor $01
    ld [$c44c], a
    ld hl, $c3fc
    ld a, [$c3b0]
    or a
    jr z, jr_003_4b0a

    ld hl, $c41a

jr_003_4b0a:
    ld bc, $1c00

jr_003_4b0d:
    ld a, [hl+]
    or a
    jr z, jr_003_4b3e

    push hl
    push bc
    ld b, a

Jump_003_4b14:
    ld hl, $c437
    ld a, c
    add l
    ld l, a
    jr nc, jr_003_4b1d

    inc h

jr_003_4b1d:
    ld [hl], b
    ld hl, $4b42
    ld a, c
    rst $08
    ld d, h
    ld e, l
    ld a, b
    ld hl, $42cf
    and $7f
    add a
    add a
    add l
    ld l, a
    jr nc, jr_003_4b32

    inc h

jr_003_4b32:
    ldh a, [$8b]
    or a
    jr nz, jr_003_4b3b

    ld a, [hl]
    call $437d

jr_003_4b3b:
    pop bc
    pop hl
    inc c

jr_003_4b3e:
    dec b
    jr nz, jr_003_4b0d

    ret


    ld h, d
    sbc h
    ld h, [hl]
    sbc h
    ld l, d
    sbc h
    ld l, [hl]
    sbc h
    and d
    sbc h
    and [hl]
    sbc h
    xor d
    sbc h
    xor [hl]
    sbc h
    ld [c], a
    sbc h
    and $9c
    ld [$ee9c], a
    sbc h
    ld [hl+], a
    sbc l
    ld h, $9d
    ld a, [hl+]
    sbc l
    ld l, $9d
    ld h, d
    sbc l
    ld h, [hl]
    sbc l
    ld l, d
    sbc l
    ld l, [hl]
    sbc l
    and d
    sbc l

Call_003_4b6c:
    ldh a, [$8b]
    or a
    ret nz

    ld a, [$c453]
    or a
    ret nz

    ld hl, $4b88
    ld de, $9de1
    call Call_003_5633
    ld hl, $4b9b
    ld de, $9e21
    call Call_003_5633
    ret


    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop

Call_003_4bae:
    xor a
    ld [$c451], a
    ld a, [$c453]
    or a
    ret nz

    ld a, [$c3fa]
    or a
    jr z, jr_003_4bef

    ld hl, $c3fc
    ld a, [$c3b0]
    or a
    jr z, jr_003_4bc9

    ld hl, $c41a

jr_003_4bc9:
    ld b, $1c

jr_003_4bcb:
    ld a, [hl+]
    or a
    jr z, jr_003_4bd4

    call Call_003_4bf4
    jr nz, jr_003_4bef

jr_003_4bd4:
    dec b
    jr nz, jr_003_4bcb

    ld a, [$c3da]
    or a
    jr z, jr_003_4be4

    ld a, $01
    ld [$c451], a
    jr jr_003_4bef

jr_003_4be4:
    ld a, $02
    ld [$c451], a
    ld hl, $c3b5
    inc [hl]
    jr jr_003_4bf3

jr_003_4bef:
    xor a
    ld [$c3b5], a

jr_003_4bf3:
    ret


Call_003_4bf4:
    ld c, a
    call Call_003_44be
    or a
    ret nz

    ld a, c
    or $80
    call Call_003_44be
    or a
    ret


Call_003_4c02:
    ld a, [$c453]
    or a
    ret nz

    rst $10
    ldh a, [$8b]
    or a
    ret nz

    ld a, [$c451]
    ld hl, $4c1a
    rst $08
    ld de, $9e01
    call Call_003_5633
    ret


    jr nz, jr_003_4c68

    inc sp
    ld c, h
    ld b, [hl]
    ld c, h
    jr nz, jr_003_4c42

    jr nz, jr_003_4c77

    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, @+$52

    ld c, c
    ld b, l
    ld b, e
    ld b, l

Call_003_4c2f:
    jr nz, @+$22

    jr nz, jr_003_4c33

jr_003_4c33:
    ld b, h
    ld d, d
    ld b, c
    ld d, a
    jr nz, jr_003_4c7f

    ld d, d
    ld c, a
    ld c, l
    jr nz, jr_003_4c80

    ld c, a
    ld c, [hl]
    ld b, l
    ld e, c

jr_003_4c42:
    ld b, c
    ld d, d
    ld b, h
    nop
    jr nz, jr_003_4c68

    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$4f

    ld d, l
    ld d, e
    ld d, h
    jr nz, jr_003_4ca2

    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_003_4c77

    jr nz, jr_003_4c59

Call_003_4c59:
jr_003_4c59:
    ld a, [$c453]
    or a
    ret z

    ld hl, $4c68
    ld de, $9e02
    call Call_003_5633
    ret


jr_003_4c68:
    ld d, h
    ld c, a
    ld d, h
    ld b, c
    ld c, h
    ld a, [hl-]
    jr nz, @+$32

    jr nc, jr_003_4ca2

    nop

Call_003_4c73:
    ld a, [$c453]
    or a

jr_003_4c77:
    jr z, jr_003_4c7c

    jp Jump_003_51ec


jr_003_4c7c:
    call Call_003_4cd5

jr_003_4c7f:
    rst $10

jr_003_4c80:
    ldh a, [$8b]
    or a
    jr nz, jr_003_4c8a

    ld hl, $ff40
    set 1, [hl]

jr_003_4c8a:
    rst $10
    call Call_003_4d06
    ld hl, $c45f
    dec [hl]
    jr nz, jr_003_4c9e

    ld [hl], $28
    ld a, [$c460]
    xor $02
    ld [$c460], a

jr_003_4c9e:
    ld a, [$c460]
    ld b, a

jr_003_4ca2:
    ld hl, $ff40
    ld a, [hl]
    and $fd
    or b
    ld [hl], a
    call Call_003_41bb
    ld [$c45d], a
    cp $02
    jr z, jr_003_4cca

    cp $08
    jr z, jr_003_4cc5

    cp $01
    jr z, jr_003_4cc5

    and $f0
    jr z, jr_003_4c8a

    call Call_003_4e1c
    jr jr_003_4c8a

jr_003_4cc5:
    call Call_003_4d6c

jr_003_4cc8:
    jr nc, jr_003_4c8a

jr_003_4cca:
    ld a, $04
    call Call_003_50d1
    ld hl, $ff40
    res 1, [hl]
    ret


Call_003_4cd5:
    call Call_000_1541
    ld hl, $5a76
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c102], a
    ld a, [hl+]
    ld [$c106], a
    ld a, [hl+]
    ld [$c10a], a
    ld a, [hl]
    ld [$c10e], a
    ld a, [$c451]
    ld hl, $4d00
    rst $08
    ld a, l
    ld [$c450], a
    ld a, h
    ld [$c44f], a
    ret


    nop
    nop
    dec b
    ld bc, $0105

Call_003_4d06:
    ldh a, [$8b]
    or a
    ret nz

    ld a, [$c450]
    add a
    add a
    ld b, a
    ld a, [$c44f]
    add b
    add a
    ld hl, $4d40
    add l
    ld l, a
    jr nc, jr_003_4d1d

    inc h

jr_003_4d1d:
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld hl, $c100
    ld b, $02

jr_003_4d25:
    ld c, $02

jr_003_4d27:
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    inc l
    inc l
    ld a, e
    add $08
    ld e, a
    dec c
    jr nz, jr_003_4d27

    ld a, e
    sub $10
    ld e, a
    ld a, d
    add $08
    ld d, a
    dec b
    jr nz, jr_003_4d25

    ret


    jr z, @+$22

    jr z, jr_003_4d84

    jr z, @+$62

    jr z, jr_003_4cc8

    jr c, @+$22

    jr c, @+$42

    jr c, jr_003_4dae

    jr c, @-$7e

    ld c, b
    jr nz, @+$4a

    ld b, b
    ld c, b
    ld h, b
    ld c, b
    add b
    ld e, b
    jr nz, @+$5a

    ld b, b
    ld e, b
    ld h, b
    ld e, b
    add b
    ld l, b
    jr nz, @+$6a

    ld b, b
    ld l, b
    ld h, b
    ld l, b
    add b
    ld a, b
    jr nz, jr_003_4de3

    ld c, h

Call_003_4d6c:
    ld a, [$c450]
    cp $05
    jr nz, jr_003_4dd4

    ld a, [$c44f]
    cp $01
    jr nz, jr_003_4dd4

    ld a, [$c451]
    cp $02
    jr z, jr_003_4dbf

    ld a, [$c3da]

jr_003_4d84:
    or a
    jp z, Jump_003_4e15

    ld a, $02
    ld [$c452], a
    call Call_003_5112
    call Call_003_4adc
    call Call_003_4bae
    call Call_003_4c02
    call Call_003_4cd5
    ld a, $04
    call Call_003_50d1
    ld a, [$c3da]
    or a
    jp nz, Jump_003_4e1a

    ld a, [$c451]
    or a
    jr z, jr_003_4db4

jr_003_4dae:
    call Call_003_4a5d
    jp Jump_003_4e1a


jr_003_4db4:
    call Call_003_4abe
    ld a, $01
    ld [$c461], a
    jp Jump_003_4e1a


jr_003_4dbf:
    ld a, [$c451]
    cp $02
    jp nz, Jump_003_4e15

    ld a, $03
    ld [$c452], a
    ld a, $04
    call Call_003_50d1
    jp Jump_003_4e13


jr_003_4dd4:
    ld hl, $c437
    ld a, [$c450]
    add a
    add a
    ld b, a
    ld a, [$c44f]
    add b
    add l
    ld l, a

jr_003_4de3:
    jr nc, jr_003_4de6

    inc h

jr_003_4de6:
    ld a, [hl]
    or a
    jr z, jr_003_4e15

    ld a, [$c3fa]
    or a
    jr z, jr_003_4dfe

    call Call_003_4f68
    ld a, c
    or a
    jr z, jr_003_4e15

    ld a, $01
    ld [$c452], a
    jr jr_003_4e0e

jr_003_4dfe:
    ld a, [hl]
    ld [$c3ea], a
    call Call_003_50ee
    ld a, $01
    ld [$c3fa], a
    xor a
    ld [$c452], a

jr_003_4e0e:
    ld a, $02
    call Call_003_50d1

Jump_003_4e13:
    scf
    ret


Jump_003_4e15:
jr_003_4e15:
    ld a, $01
    call Call_003_50d1

Jump_003_4e1a:
    xor a
    ret


Call_003_4e1c:
    bit 5, a
    jp nz, Jump_003_4f25

    bit 4, a
    jp nz, Jump_003_4ed2

    bit 6, a
    jr nz, jr_003_4e7c

    ld a, [$c450]
    cp $05
    ret z

    ld hl, $c437
    ld b, a
    add a
    add a
    ld c, a
    ld a, [$c44f]
    add c
    rst $18
    ld de, $0004

jr_003_4e3f:
    add hl, de
    inc b
    ld a, b
    cp $05
    jr z, jr_003_4e4c

    ld a, [hl]
    or a
    jr nz, jr_003_4e5d

    jr jr_003_4e3f

jr_003_4e4c:
    ld a, [$c44f]
    or a
    jr nz, jr_003_4e64

    ld a, [hl]
    or a
    jr nz, jr_003_4e5d

    jr jr_003_4e64

    ld a, $01
    ld [$c44f], a

jr_003_4e5d:
    ld a, b
    ld [$c450], a
    jp Jump_003_4f62


jr_003_4e64:
    ld a, [$c461]
    or a
    jr nz, jr_003_4e71

    ld a, $01
    ld [$c44f], a
    jr jr_003_4e5d

jr_003_4e71:
    ld a, [$c44b]
    or a
    ret z

    xor a
    ld [$c44f], a
    jr jr_003_4e5d

jr_003_4e7c:
    ld a, [$c450]
    or a
    ret z

    ld hl, $c437
    ld b, a
    add a
    add a
    ld c, a
    ld a, [$c44f]
    add c
    rst $18
    ld a, [$c450]
    cp $05
    jr nz, jr_003_4ea2

    ld a, [$c44f]
    cp $01
    jr nz, jr_003_4ea2

    ld a, $03
    ld [$c44f], a
    inc hl
    inc hl

jr_003_4ea2:
    ld a, $04
    cpl
    inc a
    add l
    ld l, a
    jr c, jr_003_4eab

    dec h

jr_003_4eab:
    dec b
    ld a, [hl]
    or a
    jr nz, jr_003_4ecb

    ld a, b
    or a
    jr z, jr_003_4eb6

    jr jr_003_4ea2

jr_003_4eb6:
    ld a, [$c44f]
    or a
    jr z, jr_003_4ecb

    ld c, a

jr_003_4ebd:
    dec hl
    dec c
    ld a, c
    or a
    jr z, jr_003_4ec7

    ld a, [hl]
    or a
    jr z, jr_003_4ebd

jr_003_4ec7:
    ld a, c
    ld [$c44f], a

jr_003_4ecb:
    ld a, b
    ld [$c450], a
    jp Jump_003_4f62


Jump_003_4ed2:
    ld a, [$c450]
    cp $05
    jr nz, jr_003_4ee6

    ld a, [$c44f]
    cp $01
    ret z

    ld a, [$c461]
    or a
    ret nz

    jr jr_003_4f04

jr_003_4ee6:
    ld a, [$c44f]
    cp $03
    jr nz, jr_003_4f04

    ld hl, $c437
    ld a, [$c450]
    inc a
    add a
    add a
    rst $18
    ld a, [hl]
    or a
    ret z

    ld hl, $c450
    inc [hl]
    xor a
    ld [$c44f], a
    jr jr_003_4f62

jr_003_4f04:
    ld hl, $c437
    ld a, [$c44f]
    ld c, a
    ld a, [$c450]
    ld b, a
    add a
    add a
    add c
    rst $18

jr_003_4f13:
    inc hl
    inc c
    ld a, [hl]
    or a
    jr nz, jr_003_4f1f

    ld a, c
    cp $03
    ret z

    jr jr_003_4f13

jr_003_4f1f:
    ld a, c
    ld [$c44f], a
    jr jr_003_4f62

Jump_003_4f25:
    ld a, [$c44f]
    or a
    jr nz, jr_003_4f47

    ld a, [$c450]
    or a
    ret z

    ld hl, $c437
    dec a
    add a
    add a
    add $03
    rst $18
    ld a, [hl]
    or a
    ret z

    ld hl, $c450
    dec [hl]
    ld a, $03
    ld [$c44f], a
    jr jr_003_4f62

jr_003_4f47:
    ld hl, $c437
    ld c, a
    ld a, [$c450]
    ld b, a
    add a
    add a
    add c
    rst $18

jr_003_4f53:
    dec hl
    dec c
    ld a, [hl]
    or a
    jr nz, jr_003_4f5e

    ld a, c
    or a
    ret z

    jr jr_003_4f53

jr_003_4f5e:
    ld a, c
    ld [$c44f], a

Jump_003_4f62:
jr_003_4f62:
    ld a, $04
    call Call_003_50d1
    ret


Call_003_4f68:
    xor a
    ld [$c457], a
    ld [$c459], a
    ld c, a
    ld a, [hl]
    call Call_003_44be
    or a
    jr z, jr_003_4f94

    ld b, a
    ld c, $01
    bit 0, b
    jr z, jr_003_4f87

    ld a, $01
    ld [$c457], a
    ld a, [hl]
    ld [$c458], a

jr_003_4f87:
    bit 1, b
    jr z, jr_003_4f94

    ld a, $01
    ld [$c459], a
    ld a, [hl]
    ld [$c45a], a

jr_003_4f94:
    ld a, [hl]
    or $80
    call Call_003_44be
    or a
    jr z, jr_003_4fbe

    ld b, a
    ld c, $01
    bit 0, b
    jr z, jr_003_4faf

    ld a, $01
    ld [$c457], a
    ld a, [hl]
    or $80
    ld [$c458], a

jr_003_4faf:
    bit 1, b
    jr z, jr_003_4fbe

    ld a, $01
    ld [$c459], a
    ld a, [hl]
    or $80
    ld [$c45a], a

jr_003_4fbe:
    ret


Call_003_4fbf:
    ld a, [$c452]
    rst $00
    bit 1, a
    call $ca4f
    ld d, b
    rst $08
    ld d, b
    xor a
    ret


    ld b, $00
    ld a, [$c457]
    or a
    jr nz, jr_003_4fde

    ld a, [$c45a]
    ld [$c458], a
    inc b
    jr jr_003_4fea

jr_003_4fde:
    ld a, [$c459]
    or a
    jr nz, jr_003_4fea

    ld a, [$c458]
    ld [$c45a], a

jr_003_4fea:
    ld a, b
    ldh [$8a], a

jr_003_4fed:
    rst $10
    call Call_003_5052
    call Call_003_41bb
    ld b, a
    and $f0
    jr nz, jr_003_5044

    ld a, b
    and $09
    jr nz, jr_003_5005

    ld a, b
    and $02
    jr nz, jr_003_503f

    jr jr_003_4fed

jr_003_5005:
    call Call_003_50a0
    ldh a, [$8a]
    or a
    jr nz, jr_003_501b

    ld a, [$c457]
    or a
    jr z, jr_003_5038

    ld a, [$c458]
    ld b, a
    ld a, $00
    jr jr_003_5027

jr_003_501b:
    ld a, [$c459]
    or a
    jr z, jr_003_5038

    ld a, [$c45a]
    ld b, a
    ld a, $01

jr_003_5027:
    call Call_003_4461
    ld a, b
    call Call_003_50ee
    ld a, $03
    call Call_003_50d1
    call Call_003_50dd
    xor a
    ret


jr_003_5038:
    ld a, $01
    call Call_003_50d1
    jr jr_003_4fed

jr_003_503f:
    call Call_003_50a0
    scf
    ret


jr_003_5044:
    call Call_003_50a0
    ldh a, [$8a]
    xor $01
    ldh [$8a], a
    call Call_003_5052
    jr jr_003_4fed

Call_003_5052:
    ldh a, [$a3]
    and $04
    jr nz, jr_003_50a0

    ldh a, [$8a]
    or a
    jr nz, jr_003_5067

    ld a, [$c458]
    ld b, a
    call Call_003_449e
    dec a
    jr jr_003_506f

jr_003_5067:
    ld a, [$c45a]
    ld b, a
    call Call_003_44ae
    inc a

jr_003_506f:
    ld hl, $4343
    rst $08
    ld d, h
    ld e, l
    ld hl, $42cf
    ld a, b
    and $7f
    add a
    add a
    add l
    ld l, a
    jr nc, jr_003_5082

    inc h

jr_003_5082:
    ld a, b
    and $80
    ld c, a
    ld a, d
    and $40
    rlca
    xor c
    jr z, jr_003_508e

    inc hl

jr_003_508e:
    bit 7, d
    jr z, jr_003_5094

    inc hl
    inc hl

jr_003_5094:
    ld b, d
    ld a, d
    and $3f
    add $98
    ld d, a
    ld a, [hl]
    call $437d
    ret


Call_003_50a0:
jr_003_50a0:
    ldh a, [$8a]
    or a
    jr nz, jr_003_50ab

    call Call_003_449e
    dec a
    jr jr_003_50af

jr_003_50ab:
    call Call_003_44ae
    inc a

jr_003_50af:
    ld hl, $4343
    rst $08
    ld d, h
    ld e, l
    ld hl, $42cf
    bit 7, d
    jr z, jr_003_50be

    inc hl
    inc hl

jr_003_50be:
    ld b, d
    ld a, d
    and $3f
    add $98
    ld d, a
    ld a, [hl]
    call $437d
    ret


    call Call_003_5112
    xor a
    ret


    xor a
    ret


Call_003_50d1:
    push bc
    ld b, a
    ld a, [$c3b6]
    or a
    ld a, b
    call z, Call_000_0579
    pop bc
    ret


Call_003_50dd:
    call Call_003_427a
    ld b, $1e
    call Call_003_50e9
    call Call_003_4413
    ret


Call_003_50e9:
jr_003_50e9:
    rst $10
    dec b
    jr nz, jr_003_50e9

    ret


Call_003_50ee:
    ld b, a
    ld hl, $c3fb
    ld a, [$c3b0]
    or a
    jr z, jr_003_50fb

    ld hl, $c419

jr_003_50fb:
    dec [hl]
    ld hl, $c3fb
    ld a, [$c3b0]
    or a
    jr z, jr_003_5108

    ld hl, $c419

jr_003_5108:
    ld a, b
    and $7f

jr_003_510b:
    inc hl
    cp [hl]
    jr nz, jr_003_510b

    ld [hl], $00
    ret


Call_003_5112:
    ld hl, $c3fc
    ld a, [$c3b0]
    or a
    jr z, jr_003_511e

    ld hl, $c41a

jr_003_511e:
    call Call_003_425d

jr_003_5121:
    ld a, [hl+]
    or a
    jr nz, jr_003_5121

    dec hl
    ld de, $c3be
    ld a, [$c3db]
    add e
    ld e, a
    jr nc, jr_003_5131

    inc d

jr_003_5131:
    ld a, [de]
    ld [hl], a
    ld hl, $c3fb
    ld a, [$c3b0]
    or a
    jr z, jr_003_513f

    ld hl, $c419

jr_003_513f:
    inc [hl]
    ld hl, $c3da
    dec [hl]
    ld hl, $c3db
    inc [hl]
    ret


Call_003_5149:
    ld a, [$c3b3]
    cp $03
    jr z, jr_003_516c

    dec a
    xor $01
    ld [$c454], a
    call Call_003_51d6
    ld a, [$c3b0]
    xor $01
    ld [$c3b0], a
    ld [$c3b2], a
    ld a, [$c455]
    call $4534
    jr jr_003_51ca

jr_003_516c:
    xor a
    ld [$c454], a
    call Call_003_51d6
    ld a, [$c455]
    ld [$c456], a
    ld a, $01
    ld [$c454], a
    call Call_003_51d6
    ld a, [$c456]
    ld b, a
    ld a, [$c455]
    cp b
    jr c, jr_003_51a4

    jr z, jr_003_51bc

    ld a, $01
    ld [$c3b3], a
    call Call_003_52b7
    xor a
    ld [$c3b0], a
    ld [$c3b2], a
    ld a, [$c455]
    call $4534
    jr jr_003_51ca

jr_003_51a4:
    ld a, $02
    ld [$c3b3], a
    call Call_003_52b7
    ld a, $01
    ld [$c3b0], a
    ld [$c3b2], a
    ld a, [$c456]
    call $4534
    jr jr_003_51ca

jr_003_51bc:
    ld a, $04
    ld [$c3b3], a
    call Call_003_52b7
    ld a, [$c3b2]
    ld [$c3b0], a

jr_003_51ca:
    call Call_003_4547
    ld b, $78
    call Call_003_50e9
    call Call_003_55dc
    ret


Call_003_51d6:
    ld a, $01
    ld [$c453], a
    ld a, [$c454]
    ld [$c3b0], a
    xor a
    ldh [$8b], a
    call Call_003_4910
    xor a
    ld [$c453], a
    ret


Jump_003_51ec:
    xor a
    ld [$c455], a
    ld b, $3c
    call Call_003_50e9
    ld hl, $c417
    ld d, $fb
    ld a, [$c3fb]
    ld e, a
    dec e
    ld a, [$c3b0]
    or a
    jr z, jr_003_520f

    ld hl, $c435
    ld d, $19
    ld a, [$c419]
    ld e, a
    dec e

jr_003_520f:
    ld b, $0a
    call Call_003_50e9

jr_003_5214:
    ld a, l
    cp d
    jr z, jr_003_524a

    ld a, [hl-]
    or a
    jr z, jr_003_5214

    push af
    call Call_003_44e5
    ld a, [$c455]
    add b
    add c
    ld [$c455], a
    pop af
    push hl
    call Call_003_50ee
    pop hl
    push hl
    push de
    ld hl, $4b42
    ld a, e
    rst $08
    ld d, h
    ld e, l
    ld a, [$42cf]
    call $437d
    pop de
    pop hl
    dec e
    call Call_003_5250
    ld a, $04
    call Call_000_0579
    jr jr_003_520f

jr_003_524a:
    ld b, $78
    call Call_003_50e9
    ret


Call_003_5250:
    push hl
    push de
    ld a, [$c455]
    ld de, $9e09
    call Call_003_4594
    pop de
    pop hl
    ret


Call_003_525e:
    ld a, [$c3fb]
    or a
    jr z, jr_003_5273

    ld a, [$c419]
    or a
    jr z, jr_003_527a

    ld a, [$c3b5]
    cp $02
    jr nc, jr_003_5281

    jr jr_003_5288

jr_003_5273:
    ld a, $01
    ld [$c3b3], a
    jr jr_003_5286

jr_003_527a:
    ld a, $02
    ld [$c3b3], a
    jr jr_003_5286

jr_003_5281:
    ld a, $03
    ld [$c3b3], a

jr_003_5286:
    scf
    ret


jr_003_5288:
    xor a
    ret


Call_003_528a:
    ld a, [$c3b1]
    or a
    jr z, jr_003_52b2

    ld b, $32
    cp $01
    jr z, jr_003_5298

    ld b, $64

jr_003_5298:
    ld a, [$c418]
    cp b
    jr nc, jr_003_52a6

    ld a, [$c436]
    cp b
    jr nc, jr_003_52ac

    jr jr_003_52b2

jr_003_52a6:
    ld a, $01
    ld [$c3b4], a
    ret


jr_003_52ac:
    ld a, $02
    ld [$c3b4], a
    ret


jr_003_52b2:
    xor a
    ld [$c3b4], a
    ret


Call_003_52b7:
    call Call_003_427a
    ld hl, $5378
    ld a, $40
    call Call_000_081b
    ld a, $03
    call Call_000_05a0
    ld b, $78
    call Call_003_50e9
    call Call_000_152d
    call Call_000_0974
    call Call_003_55dc
    ret


    ld a, [$c3b3]
    rst $00
    nop
    nop
    db $e4
    ld d, d
    ei
    ld d, d
    ld [de], a
    ld d, e
    ld [hl+], a
    ld d, e
    ld a, [$c338]
    rst $00
    xor $52
    ldh a, [rHDMA2]
    ld a, [c]
    ld d, d
    jr jr_003_5324

    jr jr_003_5331

    ld a, [$c303]
    cp $02
    jr z, jr_003_5324

    jr jr_003_5357

    ld a, [$c338]
    rst $00
    dec b
    ld d, e
    rlca
    ld d, e
    add hl, bc
    ld d, e
    jr jr_003_5357

    jr jr_003_5344

    ld a, [$c303]
    cp $03
    jr z, jr_003_5324

    jr jr_003_5357

    ld a, [$c338]
    rst $00
    inc e
    ld d, e
    ld e, $53
    jr nz, @+$55

    jr jr_003_5364

    jr jr_003_5364

    jr jr_003_5364

    jr jr_003_5371

jr_003_5324:
    ld hl, $53a0
    call Call_000_0876
    ld hl, $53a4
    call Call_000_0876
    ret


jr_003_5331:
    ld hl, $5380
    call Call_000_0876
    ld hl, $5384
    call Call_000_0876
    ld hl, $538c
    call Call_000_0876
    ret


jr_003_5344:
    ld hl, $5380
    call Call_000_0876
    ld hl, $5388
    call Call_000_0876
    ld hl, $538c
    call Call_000_0876
    ret


jr_003_5357:
    ld hl, $5398
    call Call_000_0876
    ld hl, $539c
    call Call_000_0876
    ret


jr_003_5364:
    ld hl, $5390
    call Call_000_0876
    ld hl, $5394
    call Call_000_0876
    ret


jr_003_5371:
    ld hl, $53a8
    call Call_000_0876
    ret


    nop
    nop
    ld h, c
    sbc b
    db $10
    rlca
    sub $52
    ld b, c
    nop
    xor h
    ld d, e
    add l
    nop
    cp l
    ld d, e
    add l
    nop
    add $53
    push bc
    nop
    rst $08
    ld d, e
    ld h, d
    nop
    ret c

    ld d, e
    add [hl]
    nop
    and $53
    ld h, e
    nop
    db $ec
    ld d, e
    add h
    nop
    ld hl, sp+$53
    ld h, c
    nop
    xor h
    ld d, e
    and l
    nop
    rst $08
    ld d, e
    add d
    nop
    add hl, bc
    ld d, h
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
    ld a, a
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_003_53f6

    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_003_5400

    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$59

    ld l, c
    ld l, [hl]
    ld l, $00
    ld b, e
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, @+$68

    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld l, $00
    ld b, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_003_5460

    ld [hl], l
    ld h, e

jr_003_53f6:
    ld l, e
    nop
    ld l, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_003_5472

    ld l, c
    ld l, l

jr_003_5400:
    ld h, l
    ld l, $00
    ld d, a
    ld c, c
    ld c, [hl]
    ld d, e
    ld l, $00
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_003_5478

    ld [hl], e
    jr nz, @+$66

    ld [hl], d
    ld h, c
    ld [hl], a
    ld l, [hl]
    ld l, $00

Call_003_5418:
    ld hl, $550b
    ld a, $40
    call Call_000_081b
    ld a, $03
    call Call_000_05a0
    ld b, $78
    call Call_003_50e9
    call Call_000_152d
    call Call_000_0974
    ret


    ld a, [$c3b4]
    rst $00
    nop
    nop
    dec sp
    ld d, h
    ld d, d
    ld d, h
    ld a, [$c338]
    rst $00
    ld b, l
    ld d, h
    ld b, a
    ld d, h
    ld c, c
    ld d, h
    jr jr_003_5469

    jr jr_003_54a1

    ld a, [$c303]
    cp $02
    jr z, jr_003_5469

    jr jr_003_5485

    ld a, [$c338]
    rst $00
    ld e, h
    ld d, h
    ld e, [hl]
    ld d, h
    ld h, b
    ld d, h
    jr jr_003_5485

    jr jr_003_54c3

jr_003_5460:
    ld a, [$c303]
    cp $03
    jr z, jr_003_5469

    jr jr_003_5485

jr_003_5469:
    ld hl, $5513
    call Call_000_0876
    ld hl, $5517

jr_003_5472:
    call Call_000_0876
    ld hl, $551b

jr_003_5478:
    call Call_000_0876
    ld hl, $551f
    call Call_000_0876
    call Call_003_54e5
    ret


jr_003_5485:
    ld hl, $5523
    call Call_000_0876
    ld hl, $5527
    call Call_000_0876
    ld hl, $552b
    call Call_000_0876
    ld hl, $552f
    call Call_000_0876
    call Call_003_54e5
    ret


jr_003_54a1:
    ld hl, $5533
    call Call_000_0876
    ld hl, $5537
    call Call_000_0876
    ld hl, $553b
    call Call_000_0876
    ld hl, $553f
    call Call_000_0876
    ld hl, $5543
    call Call_000_0876
    call Call_003_54f8
    ret


jr_003_54c3:
    ld hl, $5547
    call Call_000_0876
    ld hl, $554b
    call Call_000_0876
    ld hl, $554f
    call Call_000_0876
    ld hl, $5553
    call Call_000_0876
    ld hl, $5557
    call Call_000_0876
    call Call_003_54f8
    ret


Call_003_54e5:
    ld a, [$c418]
    ld de, $990d
    call Call_003_4594
    ld a, [$c436]
    ld de, $992d
    call Call_003_4594
    ret


Call_003_54f8:
    ld a, [$c418]
    ld de, $994d
    call Call_003_4594
    ld a, [$c436]
    ld de, $996d
    call Call_003_4594
    ret


    nop
    nop
    ld h, c
    sbc b
    db $10
    ld [$5431], sp
    ld b, c
    nop
    ld e, e
    ld d, l
    ld h, c
    nop
    ld l, h
    ld d, l
    and c
    nop
    sbc e
    ld d, l
    pop bc
    nop
    and [hl]
    ld d, l
    ld b, c
    nop
    ld a, l
    ld d, l
    ld h, c
    nop
    adc e
    ld d, l
    and c
    nop
    sbc e
    ld d, l
    pop bc
    nop
    and [hl]
    ld d, l
    ld b, c
    nop
    ld e, e
    ld d, l
    add c
    nop
    or c
    ld d, l
    and c
    nop
    rst $08
    ld d, l
    pop hl
    nop
    sbc e
    ld d, l
    ld bc, $a601
    ld d, l
    ld b, c
    nop
    ld e, e
    ld d, l
    add c
    nop
    ret nz

    ld d, l
    and c
    nop
    rst $08
    ld d, l
    pop hl
    nop
    sbc e
    ld d, l
    ld bc, $a601
    ld d, l
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
    ld a, a
    nop
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$59

    ld c, c
    ld c, [hl]
    jr nz, jr_003_55c9

    ld c, b
    ld b, l
    jr nz, jr_003_55c0

    ld b, c
    ld c, l
    ld b, l
    nop
    jr nz, jr_003_559f

    jr nz, jr_003_55d4

    ld c, a
    ld d, d
    ld d, d
    ld e, c
    inc l
    jr nz, @+$5b

    ld c, a
    ld d, l
    nop
    jr nz, jr_003_55d9

    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_003_55e6

    ld c, b
    ld b, l
    jr nz, @+$49

    ld b, c
    ld c, l
    ld b, l
    ld l, $00
    jr nz, jr_003_55ed

    ld c, h
    ld b, c

jr_003_559f:
    ld e, c
    ld b, l
    ld d, d
    jr nz, jr_003_55d5

    ld a, [hl-]
    nop
    jr nz, @+$52

    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, @+$34

    ld a, [hl-]
    nop
    jr nz, jr_003_5603

    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, jr_003_55eb

    jr nz, @+$59

    ld c, c
    ld c, [hl]
    ld d, e
    nop

jr_003_55c0:
    jr nz, jr_003_5612

    ld c, h
    ld b, c
    ld e, c
    ld b, l
    ld d, d
    jr nz, @+$34

jr_003_55c9:
    jr nz, @+$59

    ld c, c
    ld c, [hl]
    ld d, e
    nop
    jr nz, jr_003_55f1

    jr nz, jr_003_5627

    ld c, b

jr_003_55d4:
    ld b, l

jr_003_55d5:
    jr nz, @+$49

    ld b, c
    ld c, l

jr_003_55d9:
    ld b, l
    ld l, $00

Call_003_55dc:
    ld a, [$c3ae]
    or a
    jr z, jr_003_55f1

    cp $01
    jr z, jr_003_55eb

jr_003_55e6:
    xor a
    call Call_000_05a0
    ret


jr_003_55eb:
    ld a, $01

jr_003_55ed:
    call Call_000_05a0
    ret


jr_003_55f1:
    ld a, $02
    call Call_000_05a0
    ret


Call_003_55f7:
    ld a, [$c338]
    cp $02
    ret nz

    ldh a, [$a3]
    cp $04
    jr nc, jr_003_5605

jr_003_5603:
    add $04

jr_003_5605:
    ld b, a
    ld [$ffb7], a
    ld a, b
    add $31
    xor $5f
    ld [$ffb8], a
    ld a, b

jr_003_5612:
    xor $11
    ld [$ffb9], a
    ld a, b
    xor $aa
    ld [$ffba], a
    ld a, [$ffb7]
    or a
    jr z, jr_003_5628

    ld a, [$ffb8]
    or a

jr_003_5627:
    ret nz

jr_003_5628:
    ld a, $63
    ld [$ffb7], a
    ld a, $c9
    ld [$ffb8], a
    ret


Call_003_5633:
    ld bc, $e002

jr_003_5636:
    ldh a, [rSTAT]
    and c
    jr z, jr_003_5636

jr_003_563b:
    ldh a, [rSTAT]
    and c
    jr nz, jr_003_563b

    ld a, [hl+]
    or a
    ret z

    add b
    ld [de], a
    inc e
    ld a, [hl+]
    or a
    ret z

    add b
    ld [de], a
    inc e
    ld a, [hl+]
    or a
    ret z

    add b
    ld [de], a
    inc e
    jr jr_003_5636

Call_003_5654:
    ret


Call_003_5655:
    call Call_003_5691

jr_003_5658:
    call Call_003_4bae
    ld a, [$c451]
    or a
    jr z, jr_003_5689

    cp $01
    jr z, jr_003_5672

    ld a, $01
    call Call_003_569e
    call Call_000_152d
    call Call_003_569a
    jr jr_003_568c

jr_003_5672:
    ld a, $00
    call Call_003_569e
    ld b, $1e
    call Call_003_50e9
    call Call_003_56a6
    ld b, $28
    call Call_003_50e9
    call Call_003_5112
    jr jr_003_5658

jr_003_5689:
    call Call_003_5710

jr_003_568c:
    xor a
    ld [$c451], a
    ret


Call_003_5691:
    ld hl, $5707
    ld a, $40
    call Call_000_081b
    ret


Call_003_569a:
    call Call_000_0974
    ret


Call_003_569e:
    ld hl, $56ad
    rst $08
    call Call_000_0876
    ret


Call_003_56a6:
    ld hl, $56bf
    call Call_000_0876
    ret


    or e
    ld d, [hl]
    or a
    ld d, [hl]
    cp e
    ld d, [hl]
    ld hl, $c300
    ld d, [hl]
    ld hl, $d400
    ld d, [hl]
    ld hl, $e500
    ld d, [hl]
    ld hl, $f600
    ld d, [hl]
    jr nz, jr_003_5708

    ld l, a
    ld l, l
    ld [hl], b
    jr nz, jr_003_5737

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_003_5713

    ld d, d
    ld b, c
    ld d, a
    jr nz, jr_003_56d4

jr_003_56d4:
    jr nz, @+$45

    ld l, a
    ld l, l
    ld [hl], b
    jr nz, jr_003_5748

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$52

    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_003_56e5

jr_003_56e5:
    jr nz, jr_003_572a

    ld l, a
    ld l, l
    ld [hl], b
    jr nz, @+$6a

    ld h, c
    ld [hl], e
    jr nz, @+$64

    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$22

    nop
    jr nz, @+$22

    jr nz, jr_003_571a

    jr nz, @+$22

    jr nz, jr_003_571e

    jr nz, jr_003_5720

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_003_5726

    nop
    nop

jr_003_5708:
    nop
    ld hl, $1098
    ld bc, $570f
    ret


Call_003_5710:
    call Call_003_5779

jr_003_5713:
    call Call_003_5717
    ret


Call_003_5717:
    ld [$c45b], a

jr_003_571a:
    ld a, [$c3fa]
    or a

jr_003_571e:
    jr z, jr_003_5753

jr_003_5720:
    ld hl, $c45b
    call Call_003_4f68

jr_003_5726:
    ld a, c
    or a
    jr nz, jr_003_572e

jr_003_572a:
    ld a, $00
    jr jr_003_5772

jr_003_572e:
    ld a, [$c45c]
    or a
    jr nz, jr_003_5742

    ld a, [$c457]

jr_003_5737:
    or a
    jr z, jr_003_5770

    ld a, [$c458]
    ld b, a
    ld a, $00
    jr jr_003_574e

jr_003_5742:
    ld a, [$c459]
    or a
    jr z, jr_003_5770

jr_003_5748:
    ld a, [$c45a]
    ld b, a
    ld a, $01

jr_003_574e:
    call Call_003_4461
    jr jr_003_575e

jr_003_5753:
    ld a, [$c45b]
    ld [$c3ea], a
    ld a, $01
    ld [$c3fa], a

jr_003_575e:
    ld a, [$c45b]
    call Call_003_50ee
    ld a, $03
    call Call_003_50d1
    call Call_003_569a
    call Call_003_50dd
    ret


jr_003_5770:
    ld a, $01

jr_003_5772:
    push af
    call Call_003_45e7
    pop af
    jr jr_003_5772

Call_003_5779:
    xor a
    ldh [$8a], a
    ldh [$8b], a
    ld hl, $c41a
    ld b, $1c

jr_003_5783:
    push bc
    ld a, [hl+]
    push hl
    or a
    jr z, jr_003_57a1

    ldh [$8c], a
    call Call_003_57b6
    ld hl, $ff8a
    cp [hl]
    jr c, jr_003_57a1

    jr z, jr_003_57a1

    ldh [$8a], a
    ldh a, [$8c]
    ldh [$8b], a
    ld a, [$c45c]
    ldh [$8d], a

jr_003_57a1:
    pop hl
    pop bc
    dec b
    jr nz, jr_003_5783

    ld a, $02
    call Call_003_569e
    call Call_000_152d
    ldh a, [$8d]
    ld [$c45c], a
    ldh a, [$8b]
    ret


Call_003_57b6:
    ldh [$8e], a
    ld b, $00
    call Call_003_4bf4
    jr z, jr_003_57db

    ldh a, [$8e]
    call Call_003_5910
    add b
    ld b, a
    ldh a, [$8e]
    call Call_003_5902
    add b
    ld b, a
    ldh a, [$8e]
    call Call_003_58ea
    add b
    ld b, a
    ldh a, [$8e]
    call Call_003_57dd
    add b
    ld b, a

jr_003_57db:
    ld a, b
    ret


Call_003_57dd:
    push bc
    ldh [$97], a
    call Call_003_5960
    ldh [$8f], a
    ldh a, [$97]
    call Call_003_599d
    ldh [$90], a
    xor a
    ldh [$91], a
    ldh [$92], a
    ldh [$93], a
    ldh [$94], a
    ldh [$95], a
    ldh [$96], a
    ldh a, [$8f]
    cp $ff
    jr z, jr_003_5817

    ld b, a
    ldh a, [$97]
    call Call_003_58b5
    ldh [$91], a
    ldh a, [$8f]
    ld b, a
    ldh a, [$97]
    call Call_003_5862
    ldh [$93], a
    ld hl, $ff91
    add [hl]
    ldh [$95], a

jr_003_5817:
    ldh a, [$90]
    cp $ff
    jr z, jr_003_5835

    ld b, a
    ldh a, [$97]
    call Call_003_58b5
    ldh [$92], a
    ldh a, [$90]
    ld b, a
    ldh a, [$97]
    call Call_003_5862
    ldh [$94], a
    ld hl, $ff92
    add [hl]
    ldh [$96], a

jr_003_5835:
    ld hl, $ff96
    ldh a, [$95]
    cp [hl]
    jr nc, jr_003_5846

    ld a, $01
    ld [$c45c], a
    ldh a, [$96]
    jr jr_003_5860

jr_003_5846:
    ld hl, $ff95
    ldh a, [$96]
    cp [hl]
    jr nc, jr_003_5856

    xor a
    ld [$c45c], a
    ldh a, [$95]
    jr jr_003_5860

jr_003_5856:
    ld a, [$ffb7]
    and $01
    ld [$c45c], a
    ldh a, [$95]

jr_003_5860:
    pop bc
    ret


Call_003_5862:
    push bc
    ld a, b
    call Call_003_44e5
    ld a, b
    call Call_003_5918
    ldh [$98], a
    pop bc
    push bc
    ld a, b
    call Call_003_44e5
    ld a, b
    call Call_003_593c
    ld hl, $ff98

Jump_003_587a:
    add [hl]
    ld [hl], a
    pop bc
    push bc
    ld a, b
    call Call_003_44e5
    ld a, c
    call Call_003_5918
    ldh [$99], a
    pop bc
    push bc
    ld a, b
    call Call_003_44e5
    ld a, c
    call Call_003_593c
    ld hl, $ff99
    add [hl]
    ld [hl], a
    ldh a, [$98]
    cp $07
    jr nz, jr_003_58ad

    ldh a, [$99]
    cp $07
    jr nz, jr_003_58ad

    ld hl, $ff98
    ldh a, [$99]
    add [hl]
    add $05
    jr jr_003_58b3

jr_003_58ad:
    ld hl, $ff98
    ldh a, [$99]
    add [hl]

jr_003_58b3:
    pop bc
    ret


Call_003_58b5:
    push bc
    ld a, b
    call Call_003_44e5
    ld a, b
    call Call_003_5918
    ldh [$98], a
    pop bc
    push bc
    ld a, b
    call Call_003_44e5
    ld a, c
    call Call_003_5918
    ldh [$99], a
    pop bc
    ldh a, [$98]
    or a
    jr z, jr_003_58e2

    ldh a, [$99]
    or a
    jr z, jr_003_58e2

    ld hl, $ff98
    ldh a, [$99]
    add [hl]
    add a
    add $08
    jr jr_003_58e9

jr_003_58e2:
    ld hl, $ff98
    ldh a, [$99]
    add [hl]
    add a

jr_003_58e9:
    ret


Call_003_58ea:
    push bc
    push de
    push af
    call Call_003_44e5
    ld a, b
    call Call_003_5918
    ld d, a
    pop af
    call Call_003_44e5
    ld a, c
    call Call_003_5918
    add d
    add a
    pop de
    pop bc
    ret


Call_003_5902:
    push bc
    call Call_003_44e5
    ld a, b
    cp c
    pop bc
    jr z, jr_003_590d

    xor a
    ret


jr_003_590d:
    ld a, $07
    ret


Call_003_5910:
    push bc
    call Call_003_44e5
    ld a, b
    add c
    pop bc
    ret


Call_003_5918:
    push bc
    push de
    push hl
    ld d, a
    xor a
    push af
    ld hl, $c41a
    ld e, $1c

jr_003_5923:
    ld a, [hl+]
    or a
    jr z, jr_003_5934

    call Call_003_44e5
    ld a, d
    cp b
    jr z, jr_003_5931

    cp c
    jr nz, jr_003_5934

jr_003_5931:
    pop af
    inc a
    push af

jr_003_5934:
    dec e
    jr nz, jr_003_5923

    pop af
    pop hl
    pop de
    pop bc
    ret


Call_003_593c:
    push bc
    push de
    push hl
    ld d, a
    xor a
    push af
    ld hl, $c3dc
    ld e, $1e

jr_003_5947:
    ld a, [hl+]
    or a
    jr z, jr_003_5958

    call Call_003_44e5
    ld a, d
    cp b
    jr z, jr_003_5955

    cp c
    jr nz, jr_003_5958

jr_003_5955:
    pop af
    inc a
    push af

jr_003_5958:
    dec e
    jr nz, jr_003_5947

    pop af
    pop hl
    pop de
    pop bc
    ret


Call_003_5960:
    ldh [$9a], a
    call Call_003_44be
    and $01
    jr nz, jr_003_5978

    ldh a, [$9a]
    or $80
    call Call_003_44be
    and $01
    jr nz, jr_003_598b

    ld a, $ff
    jr jr_003_599c

jr_003_5978:
    call Call_003_4494
    call Call_003_44e5
    push bc
    ldh a, [$9a]
    call Call_003_44e5
    pop hl
    ld c, l
    call Call_003_59da
    jr jr_003_599c

jr_003_598b:
    call Call_003_4494
    call Call_003_44e5
    push bc
    ldh a, [$9a]
    call Call_003_44e5
    pop hl
    ld c, h
    call Call_003_59da

jr_003_599c:
    ret


Call_003_599d:
    ldh [$9a], a
    call Call_003_44be
    and $02
    jr nz, jr_003_59b5

    ldh a, [$9a]
    or $80
    call Call_003_44be
    and $02
    jr nz, jr_003_59c8

    ld a, $ff
    jr jr_003_59d9

jr_003_59b5:
    call Call_003_448a
    call Call_003_44e5
    push bc
    ldh a, [$9a]
    call Call_003_44e5
    pop hl
    ld c, h
    call Call_003_59da
    jr jr_003_59d9

jr_003_59c8:
    call Call_003_448a
    call Call_003_44e5
    push bc
    ldh a, [$9a]
    call Call_003_44e5
    pop hl
    ld c, l
    call Call_003_59da

jr_003_59d9:
    ret


Call_003_59da:
    ld hl, $44fc
    ld d, $01
    call Call_003_59fc
    cp $1d
    ret nz

    ld a, b
    ld b, c
    ld c, a
    ld hl, $44fc
    ld d, $01
    call Call_003_59fc
    cp $1d
    ret nz

jr_003_59f3:
    ld a, $02
    push bc
    call Call_003_45e7
    pop bc
    jr jr_003_59f3

Call_003_59fc:
jr_003_59fc:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    cp b
    jr nz, jr_003_5a06

    ld a, e
    cp c
    jr z, jr_003_5a0c

jr_003_5a06:
    inc d
    ld a, d
    cp $1d
    jr nz, jr_003_59fc

jr_003_5a0c:
    ld a, d
    ret


    call c, $e65a
    ld e, d
    ldh a, [$5a]
    ld a, [$045a]
    ld e, e
    ld c, $5b
    jr jr_003_5a77

    ld [hl+], a
    ld e, e
    inc l
    ld e, e
    ld [hl], $5b
    ld b, b
    ld e, e
    ld c, d
    ld e, e
    ld d, h
    ld e, e
    ld e, [hl]
    ld e, e
    ld l, b
    ld e, e
    ld [hl], d
    ld e, e
    ld a, h
    ld e, e
    add [hl]
    ld e, e
    sub b
    ld e, e
    sbc d
    ld e, e
    and h
    ld e, e
    xor [hl]
    ld e, e
    cp b
    ld e, e
    jp nz, $cc5b

    ld e, e
    sub $5b
    ldh [$5b], a
    ld [$f45b], a
    ld e, e
    cp $5b
    ld [$125c], sp
    ld e, h
    inc e
    ld e, h
    ld h, $5c
    jr nc, jr_003_5ab0

    ld a, [hl-]
    ld e, h
    ld b, h
    ld e, h
    ld c, [hl]
    ld e, h
    ld e, b
    ld e, h
    ld h, d
    ld e, h
    ld l, h
    ld e, h
    db $76
    ld e, h
    add b
    ld e, h
    adc d
    ld e, h
    sub h
    ld e, h
    sbc [hl]
    ld e, h
    xor b
    ld e, h
    or d
    ld e, h
    cp h
    ld e, h
    add $5c
    ret nc

    ld e, h
    call c, $e85c

jr_003_5a77:
    ld e, h
    xor $5c
    ld hl, sp+$5c
    ld [bc], a
    ld e, l
    inc c
    ld e, l
    ld d, $5d
    jr nz, jr_003_5ae1

    ld a, [hl+]
    ld e, l
    inc [hl]
    ld e, l
    ld a, $5d
    ld c, b
    ld e, l
    ld d, d
    ld e, l
    ld e, h
    ld e, l
    ld h, [hl]
    ld e, l
    ld [hl], b
    ld e, l
    ld a, d
    ld e, l
    add h
    ld e, l
    adc [hl]
    ld e, l
    sbc b
    ld e, l
    and d
    ld e, l
    xor h
    ld e, l
    or [hl]
    ld e, l
    ret nz

    ld e, l
    jp z, $d45d

    ld e, l
    sbc $5d
    add sp, $5d
    ld a, [c]
    ld e, l
    db $fc
    ld e, l

jr_003_5ab0:
    ld b, $5e
    db $10
    ld e, [hl]
    ld a, [de]
    ld e, [hl]
    inc h
    ld e, [hl]
    ld l, $5e
    jr c, jr_003_5b1a

    ld b, d
    ld e, [hl]
    ld c, h
    ld e, [hl]
    ld d, [hl]
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld l, d
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    adc b
    ld e, [hl]
    sub d
    ld e, [hl]
    sbc h
    ld e, [hl]
    and [hl]
    ld e, [hl]
    or b
    ld e, [hl]
    cp d
    ld e, [hl]
    call nz, $ce5e
    ld e, [hl]
    ret c

    ld e, [hl]
    ld [bc], a
    inc b
    nop
    nop
    nop

jr_003_5ae1:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld h, e
    ld h, h
    ld l, l
    ld l, [hl]
    ld [hl], a
    ld a, b
    ld a, e
    ld a, h
    ld [bc], a
    inc b
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, e
    ld a, h
    ld [bc], a
    inc b
    ld h, a
    ld h, h
    ld l, l
    ld [hl], c
    ld [hl], a
    ld a, b
    ld a, e
    ld a, h
    ld [bc], a
    inc b
    ld l, b
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld [hl], a
    ld a, b
    ld a, e
    ld a, h
    ld [bc], a
    inc b
    ld h, a
    ld l, c
    ld [hl], e
    ld [hl], c
    ld [hl], a
    ld a, b
    ld a, e
    ld a, h
    ld [bc], a
    inc b

jr_003_5b1a:
    ld l, b
    ld l, d
    ld [hl], h
    ld [hl], d
    ld [hl], a
    ld a, b
    ld a, e
    ld a, h
    ld [bc], a
    inc b
    ld l, e
    ld l, h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, e
    ld a, h
    ld [bc], a
    inc b
    ld h, e
    ld h, h
    ld l, l
    ld l, [hl]
    ld a, c
    ld a, d
    ld a, l
    ld a, [hl]
    ld [bc], a
    inc b
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], b
    ld a, c
    ld a, d
    ld a, l
    ld a, [hl]
    ld [bc], a
    inc b
    ld h, a
    ld h, h
    ld l, l
    ld [hl], c
    ld a, c
    ld a, d
    ld a, l
    ld a, [hl]
    ld [bc], a
    inc b
    ld l, b
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld a, c
    ld a, d
    ld a, l
    ld a, [hl]
    ld [bc], a
    inc b
    ld h, a
    ld l, c
    ld [hl], e
    ld [hl], c
    ld a, c
    ld a, d
    ld a, l
    ld a, [hl]
    ld [bc], a
    inc b
    ld l, b
    ld l, d
    ld [hl], h
    ld [hl], d
    ld a, c
    ld a, d
    ld a, l
    ld a, [hl]
    ld [bc], a
    inc b
    ld l, e
    ld l, h
    ld [hl], l
    db $76
    ld a, c
    ld a, d
    ld a, l
    ld a, [hl]
    ld [bc], a
    inc b
    ld h, e
    ld h, h
    ld l, l
    ld l, [hl]
    ld [hl], a
    ld a, a
    add c
    ld a, h
    ld [bc], a
    inc b
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], b
    ld [hl], a
    ld a, a
    add c
    ld a, h
    ld [bc], a
    inc b
    ld h, a
    ld h, h
    ld l, l
    ld [hl], c
    ld [hl], a
    ld a, a
    add c
    ld a, h
    ld [bc], a
    inc b
    ld l, b
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld [hl], a
    ld a, a
    add c
    ld a, h
    ld [bc], a
    inc b
    ld h, a
    ld l, c
    ld [hl], e
    ld [hl], c
    ld [hl], a
    ld a, a
    add c
    ld a, h
    ld [bc], a
    inc b
    ld l, b
    ld l, d
    ld [hl], h
    ld [hl], d
    ld [hl], a
    ld a, a
    add c
    ld a, h
    ld [bc], a
    inc b
    ld l, e
    ld l, h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, a
    add c
    ld a, h
    ld [bc], a
    inc b
    ld h, e
    ld h, h
    ld l, l
    ld l, [hl]
    ld a, c
    add b
    add d
    ld a, [hl]
    ld [bc], a
    inc b
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], b
    ld a, c
    add b
    add d
    ld a, [hl]
    ld [bc], a
    inc b
    ld h, a
    ld h, h
    ld l, l
    ld [hl], c
    ld a, c
    add b
    add d
    ld a, [hl]
    ld [bc], a
    inc b
    ld l, b
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld a, c
    add b
    add d
    ld a, [hl]
    ld [bc], a
    inc b
    ld h, a
    ld l, c
    ld [hl], e
    ld [hl], c
    ld a, c
    add b
    add d
    ld a, [hl]
    ld [bc], a
    inc b
    ld l, b
    ld l, d
    ld [hl], h
    ld [hl], d
    ld a, c
    add b
    add d
    ld a, [hl]
    ld [bc], a
    inc b
    ld l, e
    ld l, h
    ld [hl], l
    db $76
    ld a, c
    add b
    add d
    ld a, [hl]
    ld [bc], a
    inc b
    ld h, e
    ld h, h
    ld l, l
    ld l, [hl]
    add e
    ld a, a
    add c
    add l
    ld [bc], a
    inc b
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], b
    add e
    ld a, a
    add c
    add l
    ld [bc], a
    inc b
    ld h, a
    ld h, h
    ld l, l
    ld [hl], c
    add e
    ld a, a
    add c
    add l
    ld [bc], a
    inc b
    ld l, b
    ld h, [hl]
    ld l, a
    ld [hl], d
    add e
    ld a, a
    add c
    add l
    ld [bc], a
    inc b
    ld h, a
    ld l, c
    ld [hl], e
    ld [hl], c
    add e
    ld a, a
    add c
    add l
    ld [bc], a
    inc b
    ld l, b
    ld l, d
    ld [hl], h
    ld [hl], d
    add e
    ld a, a
    add c
    add l
    ld [bc], a
    inc b
    ld l, e
    ld l, h
    ld [hl], l
    db $76
    add e
    ld a, a
    add c
    add l
    ld [bc], a
    inc b
    ld h, e
    ld h, h
    ld l, l
    ld l, [hl]
    add h
    add b
    add d
    add [hl]
    ld [bc], a
    inc b
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], b
    add h
    add b
    add d
    add [hl]
    ld [bc], a
    inc b
    ld h, a
    ld h, h
    ld l, l
    ld [hl], c
    add h
    add b
    add d
    add [hl]
    ld [bc], a
    inc b
    ld l, b
    ld h, [hl]
    ld l, a
    ld [hl], d
    add h
    add b
    add d
    add [hl]
    ld [bc], a
    inc b
    ld h, a
    ld l, c
    ld [hl], e
    ld [hl], c
    add h
    add b
    add d
    add [hl]
    ld [bc], a
    inc b
    ld l, b
    ld l, d
    ld [hl], h
    ld [hl], d
    add h
    add b
    add d
    add [hl]
    ld [bc], a
    inc b
    ld l, e
    ld l, h
    ld [hl], l
    db $76
    add h
    add b
    add d
    add [hl]
    ld [bc], a
    inc b
    ld h, e
    ld h, h
    ld l, l
    ld l, [hl]
    sbc [hl]
    sbc a
    and b
    and c
    ld [bc], a
    inc b
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], b
    sbc [hl]
    sbc a
    and b
    and c
    ld [bc], a
    inc b
    ld h, a
    ld h, h
    ld l, l
    ld [hl], c
    sbc [hl]
    sbc a
    and b
    and c
    ld [bc], a
    inc b
    ld l, b
    ld h, [hl]
    ld l, a
    ld [hl], d
    sbc [hl]
    sbc a
    and b
    and c
    ld [bc], a
    inc b
    ld h, a
    ld l, c
    ld [hl], e
    ld [hl], c
    sbc [hl]
    sbc a
    and b
    and c
    ld [bc], a
    inc b
    ld l, b
    ld l, d
    ld [hl], h
    ld [hl], d
    sbc [hl]
    sbc a
    and b
    and c
    ld [bc], a
    inc b
    ld l, e
    ld l, h
    ld [hl], l
    db $76
    sbc [hl]
    sbc a
    and b
    and c
    dec b
    ld [bc], a
    add a
    adc b
    adc c
    adc d
    adc e
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    dec b
    ld [bc], a
    adc h
    adc c
    adc l
    adc [hl]
    adc a
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld [bc], a
    ld [bc], a
    sub b
    sub c
    sbc h
    sbc l
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld h, e
    and d
    and e
    ld h, h
    ld a, e
    xor h
    xor l
    ld a, h
    inc b
    ld [bc], a
    and h
    and l
    and e
    ld h, h
    xor [hl]
    xor a
    xor l
    ld a, h
    inc b
    ld [bc], a
    ld h, e
    and [hl]
    and e
    ld h, h
    or b
    xor h
    xor l
    ld a, h
    inc b
    ld [bc], a
    and h
    and a
    and e
    ld h, h
    or c
    xor a
    xor l
    ld a, h
    inc b
    ld [bc], a
    xor b
    and [hl]
    and e
    ld h, h
    or b
    or d
    xor l
    ld a, h
    inc b
    ld [bc], a
    xor c
    and a
    and e
    ld h, h
    or c
    or e
    xor l
    ld a, h
    inc b
    ld [bc], a
    xor d
    xor e
    and e
    ld h, h
    or h
    or l
    xor l
    ld a, h
    inc b
    ld [bc], a
    ld h, e
    and d
    or [hl]
    or a
    ld a, e
    xor h
    cp b
    cp c
    inc b
    ld [bc], a
    and h
    and l
    or [hl]
    or a
    xor [hl]
    xor a
    cp b
    cp c
    inc b
    ld [bc], a
    ld h, e
    and [hl]
    or [hl]
    or a
    or b
    xor h
    cp b
    cp c
    inc b
    ld [bc], a
    and h
    and a
    or [hl]
    or a
    or c
    xor a
    cp b
    cp c
    inc b
    ld [bc], a
    xor b
    and [hl]
    or [hl]
    or a
    or b
    or d
    cp b
    cp c
    inc b
    ld [bc], a
    xor c
    and a
    or [hl]
    or a
    or c
    or e
    cp b
    cp c
    inc b
    ld [bc], a
    xor d
    xor e
    or [hl]
    or a
    or h
    or l
    cp b
    cp c
    inc b
    ld [bc], a
    ld h, e
    and d
    cp d
    ld h, h
    ld a, e
    xor h
    xor l
    cp e
    inc b
    ld [bc], a
    and h
    and l
    cp d
    ld h, h
    xor [hl]
    xor a
    xor l
    cp e
    inc b
    ld [bc], a
    ld h, e
    and [hl]
    cp d
    ld h, h
    or b
    xor h
    xor l
    cp e
    inc b
    ld [bc], a
    and h
    and a
    cp d
    ld h, h
    or c
    xor a
    xor l
    cp e
    inc b
    ld [bc], a
    xor b
    and [hl]
    cp d
    ld h, h
    or b
    or d
    xor l
    cp e
    inc b
    ld [bc], a
    xor c
    and a
    cp d
    ld h, h
    or c
    or e
    xor l
    cp e
    inc b
    ld [bc], a
    xor d
    xor e
    cp d
    ld h, h
    or h
    or l
    xor l
    cp e
    inc b
    ld [bc], a
    ld h, e
    and d
    cp h
    or a
    ld a, e
    xor h
    cp b
    cp l
    inc b
    ld [bc], a
    and h
    and l
    cp h
    or a
    xor [hl]
    xor a
    cp b
    cp l
    inc b
    ld [bc], a
    ld h, e
    and [hl]
    cp h
    or a
    or b
    xor h
    cp b
    cp l
    inc b
    ld [bc], a
    and h
    and a
    cp h
    or a
    or c
    xor a
    cp b
    cp l
    inc b
    ld [bc], a
    xor b
    and [hl]
    cp h
    or a
    or b
    or d
    cp b
    cp l
    inc b
    ld [bc], a
    xor c
    and a
    cp h
    or a
    or c
    or e
    cp b
    cp l
    inc b
    ld [bc], a
    xor d
    xor e
    cp h
    or a
    or h
    or l
    cp b
    cp l
    inc b
    ld [bc], a
    ld h, e
    and d
    cp d
    cp [hl]
    ld a, e
    xor h
    cp a
    cp e
    inc b
    ld [bc], a
    and h
    and l
    cp d
    cp [hl]
    xor [hl]
    xor a
    cp a
    cp e
    inc b
    ld [bc], a
    ld h, e
    and [hl]
    cp d
    cp [hl]
    or b
    xor h
    cp a
    cp e
    inc b
    ld [bc], a
    and h
    and a
    cp d
    cp [hl]
    or c
    xor a
    cp a
    cp e
    inc b
    ld [bc], a
    xor b
    and [hl]
    cp d
    cp [hl]
    or b
    or d
    cp a
    cp e
    inc b
    ld [bc], a
    xor c
    and a
    cp d
    cp [hl]
    or c
    or e
    cp a
    cp e
    inc b
    ld [bc], a
    xor d
    xor e
    cp d
    cp [hl]
    or h
    or l
    cp a
    cp e
    inc b
    ld [bc], a
    ld h, e
    and d
    cp h
    ret nz

    ld a, e
    xor h
    pop bc
    cp l
    inc b
    ld [bc], a
    and h
    and l
    cp h
    ret nz

    xor [hl]
    xor a
    pop bc
    cp l
    inc b
    ld [bc], a
    ld h, e
    and [hl]
    cp h
    ret nz

    or b
    xor h
    pop bc
    cp l
    inc b
    ld [bc], a
    and h
    and a
    cp h
    ret nz

    or c
    xor a
    pop bc
    cp l
    inc b
    ld [bc], a
    xor b
    and [hl]
    cp h
    ret nz

    or b
    or d
    pop bc
    cp l
    inc b
    ld [bc], a
    xor c
    and a
    cp h
    ret nz

    or c
    or e
    pop bc
    cp l
    inc b
    ld [bc], a
    xor d
    xor e
    cp h
    ret nz

    or h
    or l
    pop bc
    cp l
    inc b
    ld [bc], a
    ld h, e
    and d
    jp nz, Jump_003_7bc3

    xor h
    call nz, Call_000_04c5
    ld [bc], a
    and h
    and l
    jp nz, $aec3

    xor a
    call nz, Call_000_04c5
    ld [bc], a
    ld h, e
    and [hl]
    jp nz, $b0c3

    xor h
    call nz, Call_000_04c5
    ld [bc], a
    and h
    and a
    jp nz, $b1c3

    xor a
    call nz, Call_000_04c5
    ld [bc], a
    xor b
    and [hl]
    jp nz, $b0c3

    or d
    call nz, Call_000_04c5
    ld [bc], a
    xor c
    and a
    jp nz, $b1c3

    or e
    call nz, Call_000_04c5
    ld [bc], a
    xor d
    xor e
    jp nz, $b4c3

    or l
    call nz, $40c5
    ld [bc], a
    inc e
    nop
    nop
    jr nc, jr_003_5f15

    ld hl, $2539
    ld [hl-], a
    ld de, $0000
    nop
    ld [de], a
    ld [hl+], a
    ld c, a
    ld c, [hl]
    ld b, l
    ld d, e
    ld a, [de]
    inc sp
    ld b, e
    ld c, a
    ld d, d
    ld b, l
    ld h, d
    ld h, d
    ld h, d
    dec bc
    add b
    jp c, Jump_003_670e

    inc [hl]
    db $d3
    ld d, e
    sbc b
    ld e, c
    scf
    ld h, b
    db $ec
    ld d, c
    add a
    and b
    ld e, $00
    ld a, d
    ret nz

    ld c, a

jr_003_5f15:
    ld bc, $07c0
    ld [$9898], sp
    adc e
    jp z, $bc08

    and b
    and b
    ld l, h
    sub l
    ld d, c
    db $ed
    jp nz, $902b

    ld a, [bc]
    sub b
    ld b, b
    ld [bc], a
    ldh a, [rP1]
    nop
    nop
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, h
    ld l, b
    ld h, [hl]
    ld h, a
    ld l, c
    ld l, b
    ld l, d
    ld l, e
    ld l, h
    nop
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    nop
    adc h
    adc c
    adc l
    adc [hl]
    adc a
    nop
    sub b
    sub c
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld l, l
    ld [hl], c
    ld l, a
    ld [hl], d
    ld [hl], e
    ld [hl], c
    ld [hl], h
    ld [hl], d
    ld [hl], l
    halt
    nop
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    nop
    sbc h
    sbc l
    nop
    nop
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    nop
    nop
    nop
    and b
    and c
    and b
    and c
    ld h, e
    and d
    and e
    ld h, h
    and h
    and l
    and e
    ld h, h
    ld h, e
    and [hl]
    and a
    and e
    ld h, h
    xor b
    xor c
    xor d
    xor e
    and e
    ld h, h
    ld a, e
    xor h
    xor l
    ld a, h
    xor [hl]
    xor a
    xor l
    ld a, h
    or b
    or c
    or d
    or e
    xor l
    ld a, h
    or h
    or l
    xor l
    ld a, h
    or [hl]
    or a
    and h
    and l
    or [hl]
    or a
    ld h, e
    and [hl]
    and a
    or [hl]
    or a
    xor b
    xor c
    xor d
    xor e
    or [hl]
    or a
    cp b
    cp c
    xor [hl]
    xor a
    cp b
    cp c
    or b
    or c
    or d
    or e
    cp b
    cp c
    or h
    or l
    cp b
    cp c
    cp d
    cp d
    and a
    cp d
    cp d
    cp d
    cp d
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp h
    cp h
    and a
    cp h
    cp h
    cp h
    cp h
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp a
    cp a
    cp a
    or d
    or e
    cp a
    cp a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    pop bc
    pop bc
    or d
    or e
    pop bc
    pop bc
    jp nz, $a4c3

    and l
    jp nz, Jump_003_63c3

    and [hl]
    and a
    jp nz, $a8c3

    xor c
    xor d
    xor e
    jp nz, $c4c3

    push bc
    xor [hl]
    xor a
    call nz, $b0c5
    or c
    or d
    or e
    call nz, $b4c5
    or l
    call nz, $00c5
    nop
    nop
    and a
    ld [$04e2], sp
    db $f4
    ld a, [hl-]
    ld bc, $08d6
    inc a
    ld b, a
    sub b
    ld a, [hl-]
    nop
    db $10
    sbc h
    inc h
    inc e
    ld e, l
    rst $00
    pop bc
    cp a
    db $10
    dec a
    dec e
    db $d3
    sub a
    ld e, c
    ld l, $fc
    db $10
    ld e, $24
    ld e, $5d
    rst $20
    pop bc
    rst $08
    inc b
    cp a
    dec e
    di
    sub a
    reti


    cpl
    ld a, h
    ld d, $85
    or h
    ld c, a
    inc b
    adc l
    inc hl
    ld l, c
    ld e, e
    ld c, h
    jp c, Jump_000_2d75

    ld c, l
    ld l, d
    xor e
    ld d, a
    ld e, d
    jp z, $d6d6

    cp d
    or a
    ldh a, [$5b]
    ld d, $d9
    dec a
    ld [de], a
    ld [hl], $8d
    or l
    ld l, l
    or e
    ld l, l
    call nc, Call_000_35b7
    cp d
    xor l
    db $dd
    ld l, a
    dec hl
    ld a, e
    ld e, e
    ld [$c3df], a
    ld [hl], b
    ld l, e
    add l
    ld e, h
    ld a, [hl-]
    ld [c], a
    ld d, a
    ld d, $b8
    push de
    rst $10
    add d
    db $e4
    or a
    add hl, hl
    cp c
    ld l, a
    xor b
    cp l
    ld h, h
    ld [hl], e
    sbc e
    sbc [hl]
    and l
    pop de
    xor [hl]
    sub l
    ld [hl], h
    db $eb
    xor c
    ld e, l
    ld e, d
    db $eb
    ld d, a
    sbc [hl]
    dec bc
    or d
    db $dd
    and [hl]
    db $ed
    cp a
    and d
    db $fd
    sub c
    sbc $6e
    ld a, [$1c30]
    add hl, bc
    rlca
    dec b
    call c, $061f
    rst $28
    inc b
    cp h
    ld b, a
    ld [hl], c
    add hl, sp
    ld [hl], c
    ld h, h
    inc c
    ld h, b
    inc c
    ld h, b
    ld [bc], a
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
    jr jr_003_6117

    inc e
    jr jr_003_611e

    db $10
    ld e, $3c
    jr nc, jr_003_613f

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

jr_003_6117:
    ld a, h
    ld a, $3c
    jr c, @+$1a

    inc a
    inc a

jr_003_611e:
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

jr_003_613f:
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

jr_003_615e:
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
    jr nc, jr_003_615e

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
    jr c, jr_003_61da

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

jr_003_61da:
    ld a, [hl]
    ld a, [hl]
    ccf
    jr nc, jr_003_620f

    jr nc, jr_003_61f9

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

jr_003_61f2:
    jr nc, jr_003_61f2

    ld hl, sp-$04
    ldh a, [$ec]
    ld h, [hl]

jr_003_61f9:
    nop
    ld [hl], b
    ld [hl], b
    add $c6
    ld h, e
    call c, $eedc
    ldh [$60], a
    add $0c
    inc c
    jr nc, jr_003_6241

    ld a, $38
    ld a, [hl]
    db $76
    rst $38
    db $76

jr_003_620f:
    db $76
    dec sp
    ld a, a
    rst $38
    ld a, a
    nop
    cp $fd
    ld a, [hl]
    cp [hl]
    db $ed
    ld [hl], e
    rst $38
    ld h, c
    or [hl]
    rst $08
    cp $87
    or [hl]
    rst $08
    xor d
    ld a, a
    xor d
    rst $38
    rst $38
    ld a, h
    ccf
    cp [hl]
    xor d
    xor d
    ld a, a
    ld a, h
    ccf
    nop
    nop
    ld a, h
    rst $00
    add a
    rst $00
    add [hl]
    rst $00
    add [hl]
    rst $00
    add [hl]
    rst $00
    rst $00
    rst $20
    ld h, [hl]
    ld [hl], a
    ld h, [hl]

jr_003_6241:
    ld [hl], a
    ld h, a
    pop bc
    pop bc
    db $e3
    ld h, e
    ld [hl], a
    ld h, [hl]
    rst $30
    add $86
    add [hl]
    rst $00
    add $33
    ld sp, $313b
    dec sp
    ld sp, $b1bb
    add a
    add e
    add e
    ld [hl], e
    ld h, e
    db $e3
    db $e3
    rst $30
    jp $e3c3


    pop hl
    di
    jp Jump_000_00c1


    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rrca
    dec c
    rrca
    dec d
    rra
    dec d
    rra
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$60], a
    ret nc

    ld [hl], b
    ldh a, [$50]
    jp $ffff


    ld [hl], a
    ld h, a
    db $e3
    rst $20
    add a
    rst $00
    add $67
    rst $30
    rst $20
    rst $30
    ei
    pop af
    ei
    ld [hl], c
    cp e
    ld sp, $ff1b
    rst $38
    rst $20
    rlca
    inc bc
    pop af
    ldh [$f0], a
    ld h, b
    ld [hl], a
    ld h, a
    pop hl
    rst $30
    rst $00
    db $e3
    ld h, c
    ld [hl], e
    ld h, c
    di
    pop bc
    db $e3
    ld a, [de]
    dec d
    rra
    db $10
    rra
    db $10
    rla
    jr jr_003_62c5

    ld [$0304], sp
    inc b
    ldh a, [$50]
    or b
    ld d, b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, @-$5e

jr_003_62c5:
    ld h, b
    ret nz

    ld b, b
    add b
    ld b, b
    ld a, a
    cp $7f
    rst $38
    ccf
    db $eb
    rst $30
    cp $e3
    rst $38
    db $e3
    ld [$aaf7], a
    ld [hl], a
    db $eb
    ld [hl], a
    rst $38
    ld h, e
    rst $38
    ld h, e
    ld [$6277], a
    rst $38
    ld h, d
    xor e
    ld [hl], a
    cp $23
    rst $38
    inc hl
    nop
    rst $38
    ld a, [hl]
    ccf
    cp a
    rst $38
    ld a, [hl]
    cp $3f
    ld a, l
    cp $ff

jr_003_62f6:
    db $fc
    ld a, [hl]
    rst $38
    cp $7f
    ld a, a
    db $fc
    db $fd
    cp $7f
    rst $10
    rst $28
    ld a, a
    rst $00
    rst $38
    rst $00
    ld d, a
    rst $28
    sub $ef
    cp $c7
    cp $c7
    ld d, l
    xor $ff
    db $fc
    cp $7f
    ld d, [hl]
    push de
    xor $c4
    rst $38
    call nz, $fe47

Jump_003_631c:
    ld b, a
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
    jr nc, jr_003_62f6

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
    jp z, Jump_003_587a

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

Jump_003_63c3:
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
    jr c, jr_003_6447

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
    jp Jump_003_64fa


    ld a, l

jr_003_6419:
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
    jr c, jr_003_6452

    ld l, c
    pop bc
    inc [hl]
    ld a, b
    ld l, a
    jr z, jr_003_6419

    pop bc
    or l
    add h
    pop hl
    add c
    or c
    inc bc
    ld d, b
    call c, Call_003_723b
    ret nz

    ld b, a
    dec b

jr_003_6447:
    scf
    ld l, [hl]
    call c, Call_003_4c2f
    ret


    adc h
    ld [hl], b
    add b
    ld c, l
    ld b, [hl]

jr_003_6452:
    dec de
    call nz, Call_003_7ee4
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
    jr c, jr_003_6506

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
    ld [hl], l
    ret c

    sbc b
    ld [hl], h
    di
    inc a
    and e
    rlca
    ccf

jr_003_64ca:
    ld b, c
    add a
    jp $820e


    ld h, c
    ret nz

    ld e, a
    rlca
    cpl
    add a
    ld a, h
    inc a
    ld a, $27
    sbc a
    add hl, de
    ld e, $32
    jr jr_003_64ca

    rst $10
    sub b
    adc a
    ld [hl+], a
    rlca
    adc h
    db $10
    adc a
    jr nz, @+$23

    ld a, b
    rst $38
    bit 0, h
    ld e, $76
    pop af
    db $eb
    rst $20
    ld hl, $bc3c
    sub b
    ld a, d
    ld e, e
    ret


    xor a

Jump_003_64fa:
    and h
    add h
    di
    ld [hl], d
    sbc [hl]
    cp d
    push af
    ld [$e3b1], sp
    inc h
    inc hl

jr_003_6506:
    ret z

jr_003_6507:
    ld c, b
    ld b, c
    add sp, -$11
    ld l, d
    adc c
    ld e, $df
    ld b, $f8
    jr c, @-$03

    add hl, de
    ld a, $1d
    ldh a, [rNR22]
    ld [c], a
    ret nz

    ld a, e
    ldh [$3d], a
    ld l, h
    sub c

jr_003_651f:
    rst $28
    nop
    ld sp, hl
    or b
    ld a, $b9
    ld c, a
    and h
    adc a
    or d
    inc de
    push hl
    add hl, bc
    db $f4
    rst $28
    ld l, b
    and c
    xor $11
    ld a, [hl]
    reti


    push hl
    inc [hl]
    cpl
    ret nz

    add hl, bc
    ld a, [c]
    dec hl
    xor $48
    ld h, b
    cp e
    ldh a, [$62]
    rst $00
    cp h
    add h
    db $fd
    pop hl
    ldh a, [rNR42]
    ccf
    sbc b
    ld a, [hl]
    add b
    db $f4
    or b
    rra
    inc c
    dec c
    xor c
    add b
    sbc $b8
    ld [hl], $76
    inc bc
    ld a, h
    ldh [$e0], a
    ld d, b
    ld c, l
    db $e4
    dec c
    sbc l
    add c
    db $dd
    inc [hl]
    jp c, Jump_003_4b14

    ld l, c
    inc h
    scf
    sbc $0e
    dec d
    inc b
    ret c

    ld [hl], e
    ld b, $76
    inc bc
    ld h, c
    call nz, $e280
    ld bc, $3820
    sub b
    ld c, b
    jr c, jr_003_6507

    jr c, jr_003_651f

    jp nz, $801d

    pop hl
    pop bc
    dec de
    adc d
    inc b
    adc [hl]
    ld a, [hl+]
    adc b
    db $e3
    ld b, c
    daa
    dec a
    sbc b
    ld [c], a
    pop bc
    daa
    adc a
    ld e, c
    ld e, [hl]
    ld b, d
    ld h, b
    ld c, $32
    add d
    pop bc
    sbc h
    ld h, b
    ld [c], a
    ld [hl], b
    or [hl]
    rlca
    ld e, b
    ld [hl], b
    xor e
    ld e, $4f
    add hl, bc
    db $e4
    rst $00
    sub h
    ld h, b
    dec h
    jp nz, Jump_003_631c

    add a
    and b
    db $e4
    sbc b
    ld [$60cf], sp
    cp c
    ld d, a
    ld e, c
    add hl, sp
    ld d, [hl]
    ld [bc], a
    push de
    ld h, $39
    ld [hl], $02
    ld e, [hl]
    ld e, c
    sub $13
    dec de
    ret z

    rla
    add h
    ld bc, $e439
    jr c, jr_003_65ce

jr_003_65ce:
    inc de
    sbc a
    ld b, e
    ld [hl], l
    ld hl, $2c38
    scf
    ld h, d
    inc de
    add [hl]
    rst $00
    sbc d
    db $dd
    and a
    cp d
    inc hl
    ld a, [hl-]
    inc hl
    ld a, d
    jr nz, jr_003_6612

    adc e
    cp d
    inc [hl]
    ld a, [hl-]
    jr c, @+$38

    ld d, b
    ld [de], a
    db $76
    adc a
    add sp, -$68
    dec c
    xor e
    xor [hl]
    sub h
    ld [bc], a
    inc bc
    and d
    ldh [$e9], a
    sub c
    inc hl
    and l
    rst $20
    and h
    sbc c
    ld a, [hl-]
    add [hl]
    jp c, Jump_003_7abc

    add [hl]
    ld [$39e9], sp
    ld [$a94f], a
    ret


    ld [$a89b], a
    di
    and a
    add hl, sp

jr_003_6612:
    ld a, [hl-]
    ld a, h
    add sp, -$74
    ld e, [hl]
    add a
    ld c, $8d
    inc b
    ld [$7abe], a
    ld c, h
    sbc $d4
    ld c, b
    pop hl
    add a
    xor h
    ld h, b
    ld a, [hl-]
    add h
    rla
    xor [hl]
    ret c

    ld [$b0b3], a
    ld d, b
    ld a, d
    ld h, h
    inc de
    xor a
    jp nz, $b63a

    db $ec
    sub h
    ld e, $a9
    dec b
    db $ec
    ld [hl], l
    ld [$4ed8], a
    add a
    add e
    xor l
    ld b, h
    add e
    ld h, [hl]
    ld bc, $eb25
    adc e
    xor l
    ld h, b
    inc hl
    or a
    call Call_003_41f9
    db $ed
    add b
    jr nz, jr_003_6690

    ld e, d
    inc h
    xor $cb
    cp c
    or l
    ld h, l
    xor $cd
    ld e, $f6
    adc [hl]
    db $ec
    add b
    xor $90
    ld c, [hl]
    or a
    ld e, $f8
    ld b, c
    rst $28
    ld c, e
    or a
    ld hl, sp-$11
    pop de
    rrca
    ld b, $8f
    inc b
    and a
    cp h
    call $c7a7
    ret nz

    ret


    ldh a, [$db]
    jp nz, Jump_003_7b31

    adc h
    ld a, h
    dec [hl]
    rlca
    cp l
    jp nz, $0042

    reti


    ld bc, $0000
    nop
    nop
    ld b, d
    nop

jr_003_6690:
    reti


    ld bc, $0000
    ld c, b
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

Jump_003_670e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_723b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_7abc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_7b31:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_7bc3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_7ee4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
