; Disassembly of "Addams Family, The (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    jp Jump_006_5bb5


    jp Jump_006_5bfd


    jp Jump_006_41d0


    jp Jump_006_4021


    jp Jump_006_42bd


    jp Jump_006_5c74


    jp Jump_006_4060


    jp Jump_006_406e


    jp Jump_006_4028


    jp Jump_006_4074


    jp Jump_006_4056


Jump_006_4021:
    call Call_006_42bd
    call Call_006_5c74
    ret


Jump_006_4028:
    ldh a, [rNR50]
    and $07
    jr z, jr_006_4035

    cp $01
    jr z, jr_006_4035

    sub $01
    ld b, a

jr_006_4035:
    ldh a, [rNR50]
    and $70
    jr z, jr_006_4056

    cp $10
    jr z, jr_006_4056

    srl a
    srl a
    srl a
    srl a
    dec a
    sla a
    sla a
    sla a
    sla a
    or b
    or $88
    ldh [rNR50], a
    ret


Jump_006_4056:
jr_006_4056:
    ld a, $00
    ldh [rNR51], a
    ldh [rNR50], a
    ld [$dfff], a
    ret


Jump_006_4060:
    ld a, $00
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR32], a
    ldh [rNR42], a
    ld [$dfff], a
    ret


Jump_006_406e:
    ld a, $ff
    ld [$dfff], a
    ret


Jump_006_4074:
    ld a, $ff
    ldh [rNR51], a
    ldh a, [rNR50]
    and $07
    cp $07
    jr z, jr_006_4083

    add $01
    ld b, a

jr_006_4083:
    ldh a, [rNR50]
    and $70
    srl a
    srl a
    srl a
    srl a
    cp $07
    ret z

    add $01
    sla a
    sla a
    sla a
    sla a
    or b
    or $88
    ldh [rNR50], a
    ret


    sbc l
    rlca
    ld l, e
    jp z, $7823

    rst $00
    ld [de], a
    ld e, c
    sbc h
    db $db
    rla
    ld c, a
    add h
    or [hl]
    push hl
    ld [de], a
    inc a
    ld h, h
    adc c
    xor l
    adc $ee
    inc c
    jr z, jr_006_40fe

    ld e, e
    ld [hl], e
    adc c
    sbc [hl]
    or d
    push bc
    rst $10
    rst $20
    rst $30
    ld b, $14
    ld hl, $3a2e
    ld b, l
    ld c, a
    ld e, c
    ld h, e
    ld l, h
    ld [hl], h
    ld a, h
    add e
    adc d
    sub c
    sub a
    sbc l
    and e
    xor b
    xor l
    or c
    or [hl]
    cp d
    cp [hl]
    jp nz, $c9c5

    call z, $d2cf
    call nc, $d9d7
    db $db
    db $dd
    rst $18
    pop hl
    db $e3
    push hl
    and $e8
    jp hl


    ld [$edec], a
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    di
    db $f4
    push af
    push af
    rst $30
    rst $30

jr_006_40fe:
    ld hl, sp-$08
    ld a, [$00fa]

Call_006_4103:
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], e
    ld b, a
    xor [hl]
    ld b, a
    push hl
    ld b, a
    ld e, $48
    ld l, l
    ld b, d
    jr z, jr_006_41b6

    ld e, l
    ld c, b
    adc [hl]
    ld c, b
    and a
    ld c, b
    ld l, l
    ld b, d
    xor a
    ld c, b
    ld b, e
    ld c, c
    ld c, d
    ld c, c
    cp b
    ld c, c
    ld l, l
    ld b, d
    jp nz, $d149

    ld c, c
    call c, $e349

Jump_006_4187:
    ld c, c
    ld l, l
    ld b, d
    ld a, d
    ld c, l
    cp c
    ld c, l
    jp nz, Jump_000_2d4d

    ld c, [hl]
    ld l, l
    ld b, d
    cp b
    ld c, a
    rst $08
    ld c, a
    ret c

    ld c, a
    db $eb
    ld c, a
    ld l, l
    ld b, d
    sbc h
    ld d, c
    di
    ld d, c
    db $fc
    ld d, c
    cpl
    ld d, d
    ld l, l
    ld b, d
    pop hl
    ld d, d
    db $f4
    ld d, d
    inc bc
    ld d, e
    ld h, [hl]
    ld d, e
    ld l, l
    ld b, d
    pop hl
    ld d, h
    ld c, $55

jr_006_41b6:
    scf
    ld d, l
    ld b, b
    ld d, l
    adc l
    ld b, d
    ld h, c
    ld d, [hl]
    ld a, [c]
    ld d, [hl]
    ei
    ld d, [hl]
    jr nc, @+$59

    ld l, l
    ld b, d
    call $2459
    ld e, d
    ld d, c
    ld e, d
    ld e, h
    ld e, d
    adc l
    ld b, d

Jump_006_41d0:
    ld l, a
    ld h, $00
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $4162
    add hl, de
    ld a, [hl+]
    ld [$df8b], a
    ld a, [hl+]
    ld [$df8c], a
    ld a, [hl+]
    ld [$dfa3], a
    ld a, [hl+]
    ld [$dfa4], a
    ld a, [hl+]
    ld [$dfbb], a
    ld a, [hl+]
    ld [$dfbc], a
    ld a, [hl+]
    ld [$dfd3], a
    ld a, [hl+]
    ld [$dfd4], a
    ld a, [hl+]
    ld [$dfe9], a
    ld a, [hl+]
    ld [$dfea], a
    ld a, $01
    ld [$df8a], a
    ld [$dfa2], a
    ld a, $02
    ld [$dfba], a
    ld [$dfd2], a
    ld a, $03
    ld [$df89], a
    ld [$dfa1], a
    ld [$dfb9], a
    ld [$dfd1], a
    ld [$dfff], a
    ld a, $08
    ldh [rNR10], a
    ld a, $ff
    ldh [rNR51], a
    ld a, $77
    ldh [rNR50], a
    ld a, $8f
    ldh [rNR52], a
    ld a, $80
    ldh [rNR30], a
    ld a, $00
    ldh [$91], a
    ldh [$a9], a
    ldh [$c1], a
    ldh [$d9], a
    ld [$df9d], a
    ld [$dfb5], a
    ld [$dfcd], a
    ld [$dfe5], a
    ld [$df9e], a
    ld [$dfb6], a
    ld [$dfce], a
    ld [$dfe6], a
    ret


    ld [bc], a
    inc bc
    inc b
    ld b, $08
    inc c
    db $10
    jr jr_006_4286

    jr nc, jr_006_42a8

    ld h, b
    add b
    ret nz

    cp $09
    inc bc
    inc b
    ld b, $09
    inc c
    ld [de], a
    jr jr_006_4299

    jr nc, @+$4a

    ld h, b
    sub b
    ret nz

    ld [$2010], sp
    dec b
    rlca
    ld a, [bc]
    rrca
    inc d
    ld e, $28
    inc a
    ld d, b

jr_006_4286:
    ld a, b
    and b
    ldh a, [$0d]
    ld c, $19
    ld b, $04
    ld b, $08
    inc c
    db $10
    jr jr_006_42b4

    jr nc, @+$42

    ld h, b
    add b
    dec d

jr_006_4299:
    dec b
    ld b, $0a
    dec bc
    ld b, $09
    inc c
    ld [de], a
    jr @+$26

    jr nc, @+$4a

    ld h, b
    sub b
    ret nz

jr_006_42a8:
    rst $38
    ld hl, $1008
    jr nz, jr_006_42b5

    ld a, [bc]
    rrca
    inc d
    ld e, $2d
    inc a

jr_006_42b4:
    ld e, d

jr_006_42b5:
    ld a, b
    or h
    ldh a, [$0a]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c

Call_006_42bd:
Jump_006_42bd:
    ld a, [$dfff]
    and a
    ret z

    ld hl, $dfeb
    ld de, $42bd
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$df9d]
    ld [$dfee], a
    ld hl, $df89
    ld de, $ff11
    call Call_006_445b
    ld a, [$df89]
    and $01
    jr z, jr_006_431c

    ld hl, $df93
    ld de, $df94
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $ff12
    call Call_006_4412
    ld de, $df94
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $df96
    ld de, $df97
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $df8e
    call Call_006_4431
    ld de, $df97
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $df89
    ld de, $ff13
    call Call_006_44fb

jr_006_431c:
    ld hl, $dfeb
    ld de, $431c
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dfb5]
    ld [$dfee], a
    ld hl, $dfa1
    ld de, $ff16
    call Call_006_445b
    ld a, [$dfa1]
    and $01
    jr z, jr_006_4376

    ld hl, $dfab
    ld de, $dfac
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $ff17
    call Call_006_4412
    ld de, $dfac
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $dfae
    ld de, $dfaf
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $dfa6
    call Call_006_4431
    ld de, $dfaf
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $dfa1
    ld de, $ff18
    call Call_006_44fb

jr_006_4376:
    ld hl, $dfeb
    ld de, $4376
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dfcd]
    ld [$dfee], a
    ld hl, $dfb9
    ld de, $ff1b
    call Call_006_445b
    ld a, [$dfb9]
    and $01
    jr z, jr_006_43d0

    ld hl, $dfc3
    ld de, $dfc4
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $ff1c
    call Call_006_4412
    ld de, $dfc4
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $dfc6
    ld de, $dfc7
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $dfbe
    call Call_006_4431
    ld de, $dfc7
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $dfb9
    ld de, $ff1d
    call Call_006_44fb

jr_006_43d0:
    ld hl, $dfeb
    ld de, $43d0
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dfe5]
    ld [$dfee], a
    ld hl, $dfd1

Jump_006_43e2:
    ld de, $ff20
    call Call_006_445b
    ld a, [$dfd1]
    and $01
    jr z, jr_006_4408

    ld hl, $dfdb
    ld de, $dfdc
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $ff21
    call Call_006_4412
    ld de, $dfdc
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a

jr_006_4408:
    ld hl, $dfd1
    ld de, $ff22
    call Call_006_44fb
    ret


Call_006_4412:
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret nz

    ld a, [bc]
    cp $ff
    jr nz, jr_006_4420

    ld a, $00
    ld [hl], a
    ret


jr_006_4420:
    ld [de], a
    inc bc
    ld a, [bc]
    ld [hl], a
    ld a, l
    sub $06
    ld l, a
    jr nc, jr_006_442b

    dec h

jr_006_442b:
    ld a, [hl]
    or $80
    ld [hl], a
    inc bc
    ret


Call_006_4431:
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret nz

    inc bc
    ld a, [bc]
    ld [hl], a
    dec bc
    ld a, [de]
    ld l, a
    dec de
    ld a, [de]
    ld h, a
    ld a, [bc]
    cp $ff
    ret z

    cp $7f
    jr nc, jr_006_444e

    add l
    ld l, a
    jr nc, jr_006_444c

    inc h

jr_006_444c:
    jr jr_006_4453

jr_006_444e:
    add l
    ld l, a
    jr c, jr_006_4453

Jump_006_4452:
    dec h

jr_006_4453:
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc bc
    inc bc
    ret


Call_006_445b:
    ld a, [hl]
    and $02
    ret z

    inc hl
    dec [hl]
    ret nz

    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    cp $5f
    jp nc, Jump_006_453f

    push de
    ld de, $dfee
    ld a, [de]
    ld d, a
    ld a, [bc]
    add d
    ld de, $4102
    add e
    ld e, a
    jr nc, jr_006_447c

    inc d

jr_006_447c:
    ld a, [de]
    inc hl
    ld [hl], a
    ld de, $dfee
    ld a, [de]
    ld d, a
    ld a, [bc]
    add d
    ld de, $40a2
    add e
    ld e, a
    jr nc, jr_006_448e

    inc d

jr_006_448e:
    ld a, [de]
    inc hl
    ld [hl], a
    inc bc
    ld a, [bc]
    and $0f
    push hl
    ld hl, $dfea
    ld d, [hl]
    dec hl
    ld e, [hl]
    pop hl
    add e
    ld e, a
    jr nc, jr_006_44a2

    inc d

jr_006_44a2:
    ld a, [de]
    ld de, $fffc
    add hl, de
    ld [hl], a
    ld a, [bc]
    and $f0
    srl a
    srl a
    srl a
    push hl
    ld hl, $464a
    add l
    ld l, a
    jr nc, jr_006_44ba

    inc h

jr_006_44ba:
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    inc bc
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld b, d
    ld c, e
    pop de
    inc hl
    ld a, [bc]
    or [hl]
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    inc de
    inc hl
    ld a, [bc]
    ld [hl], a
    inc hl
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    inc hl
    ld a, [bc]
    ld [hl], a
    inc bc
    inc hl
    ld a, [bc]
    ld [hl], a
    inc bc
    inc hl
    ld a, [bc]
    ld [hl], a
    ret


Call_006_44fb:
    ld a, [hl]
    and $01
    ret z

    ld bc, $0005
    add hl, bc
    ld a, e
    cp $22
    jp z, Jump_006_4529

    ld a, [hl]
    ld [de], a

jr_006_450b:
    dec hl
    inc de
    push de
    push hl
    ld a, [hl]
    and $80
    jr z, jr_006_4521

    ld bc, $0003
    add hl, bc
    dec de
    dec de
    dec de
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    ld [de], a

jr_006_4521:
    pop hl
    pop de
    ld a, [hl]
    ld [de], a
    and $7f
    ld [hl], a
    ret


Jump_006_4529:
    ld a, [$dfed]
    ld [de], a
    jr jr_006_450b

    ld d, e
    ld b, l
    ld l, a
    ld b, l
    ld a, b
    ld b, l
    adc c
    ld b, l
    sbc l
    ld b, l
    rst $18
    ld b, l
    rla
    ld b, [hl]
    ld a, [hl+]
    ld b, [hl]

Jump_006_453f:
    sub $60
    add a
    push hl
    dec hl
    dec hl
    inc [hl]
    ld hl, $4530
    add l
    ld l, a
    jr nc, jr_006_454e

    inc h

jr_006_454e:
    ld a, [hl]
    dec hl
    ld l, [hl]
    ld h, a
    jp hl


    ld hl, $dfea
    ld a, [hl]
    dec hl
    ld l, [hl]
    ld h, a
    inc bc
    ld a, [bc]
    and $0f
    add l
    ld l, a
    jr jr_006_4563

    inc h

jr_006_4563:
    ld a, [hl]
    pop hl
    ld de, $fffe
    add hl, de
    ld [hl], a
    inc bc
    inc hl
    jp Jump_006_463c


    pop hl
    ld bc, $fffd
    add hl, bc
    ld a, $00
    ld [hl], a
    ret


    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    jp Jump_006_4640


    pop hl
    inc bc
    ld a, [bc]
    ld [$dfed], a
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    call Call_006_463c
    jp Jump_006_4640


    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    ld a, [bc]
    sla a
    ld de, $5b45
    add e
    ld e, a
    jr nc, jr_006_45b1

    inc d

jr_006_45b1:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld d, h
    ld e, l
    ld a, $10
    add e
    ld e, a
    jr nc, jr_006_45bf

    inc d

jr_006_45bf:
    inc bc
    ld a, [bc]
    ld [de], a
    inc de
    ld a, [de]
    and a
    jr z, jr_006_45ca

    inc bc
    jr jr_006_45d6

jr_006_45ca:
    ld a, $01
    ld [de], a
    dec de
    dec de
    inc bc
    ld a, [bc]
    sub $01
    ld [de], a
    inc de
    inc de

jr_006_45d6:
    inc bc
    inc de
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    jr jr_006_4640

    inc bc
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    ld d, h
    ld e, l
    ld a, $11
    add e
    ld e, a
    jr nc, jr_006_45f1

    inc d

jr_006_45f1:
    ld a, [de]
    and a
    jr z, jr_006_4609

    sub $01
    ld [de], a
    inc de
    inc de
    inc de
    ld a, [de]
    sub $04
    ld [hl+], a
    inc de
    ld a, [de]
    jr nc, jr_006_4605

    sub $01

jr_006_4605:
    ld [hl], a
    jp Jump_006_4640


jr_006_4609:
    inc de
    ld a, $00
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    jr jr_006_4640

    inc bc
    ld a, [bc]
    ld [$dff0], a
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    call Call_006_463c
    jr jr_006_4640

    inc bc
    ld a, [bc]
    ldh [rNR51], a
    inc bc
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    call Call_006_463c
    jr jr_006_4640

Call_006_463c:
Jump_006_463c:
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Jump_006_4640:
jr_006_4640:
    pop hl
    ld de, $dfeb
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    jp hl


    ld h, h
    ld b, [hl]
    ld [hl], b
    ld b, [hl]
    ld a, h
    ld b, [hl]
    adc b
    ld b, [hl]
    sub h
    ld b, [hl]
    and b
    ld b, [hl]
    xor h
    ld b, [hl]
    cp b
    ld b, [hl]
    call nz, $d046
    ld b, [hl]
    call c, $e846
    ld b, [hl]
    db $f4
    ld b, [hl]
    add b
    sbc a
    rst $20
    nop
    nop
    nop
    ld [bc], a
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    add b
    adc a
    ld [hl], a
    nop
    nop
    nop
    ld [bc], a
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    ret nz

    ld [bc], a
    ld b, b
    nop
    nop
    ld b, a
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    ret nz

    jp nc, VBlankInterrupt

    nop
    ld b, a
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    ld b, a
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    add b
    adc a
    ld d, a
    nop
    nop
    nop
    ld [bc], a
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    add b
    cp a
    add b
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    add b
    sbc a
    and a
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    ret nz

    ld a, $51
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    add b
    sbc a
    add a

Call_006_46df:
    nop
    rlca
    ld b, a
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    add b
    rst $38
    ld b, b
    nop
    nop
    ld b, a
    ld bc, $4732
    nop
    nop
    nop
    add b
    sbc a
    ld b, [hl]
    nop
    rlca
    ld b, a
    nop
    ld [hl-], a
    ld b, a
    nop
    nop
    nop
    jr nz, jr_006_4707

    ld b, b
    rrca
    ld h, b
    rrca
    rst $38

jr_006_4707:
    ldh a, [$0a]
    ldh [$0a], a
    ret nc

    ld a, [bc]
    ret nz

    ld a, [bc]
    or b
    ld a, [bc]
    and b
    ld a, [bc]
    sub b
    ld a, [bc]
    add b
    ld a, [bc]
    ld [hl], b
    ld a, [bc]
    ld h, b
    ld a, [bc]
    ld b, b
    ld a, [bc]
    jr nc, jr_006_4729

    jr nz, jr_006_472b

    db $10
    ld a, [bc]
    nop
    ld a, [bc]
    rst $38
    jr nz, jr_006_4729

    ld b, b

jr_006_4729:
    ld e, $60

jr_006_472b:
    inc d
    rst $38
    ld b, b
    inc c
    ld h, b
    ld a, b
    rst $38
    inc bc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    inc bc
    inc b
    inc bc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    inc bc
    inc b
    inc bc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    inc bc
    inc b
    inc bc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    inc bc
    inc b
    inc bc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    inc bc
    inc b
    inc bc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    inc bc
    inc b
    inc bc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    inc bc
    inc b
    inc bc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    inc bc
    inc b
    rst $38
    ld h, a
    rst $38
    add hl, de
    rla
    ld e, $16
    dec h
    inc d
    inc h
    jr jr_006_47de

    inc d
    ld h, $14
    dec h
    inc d
    ld [hl+], a
    inc d
    ld e, $14
    add hl, de
    ld d, $1e
    inc d
    jr jr_006_47a5

    ld a, [de]
    inc d
    add hl, de
    inc d
    dec de
    inc d
    dec e
    inc d
    ld e, $16
    dec h
    inc d
    inc h
    jr jr_006_47fc

    inc d
    ld h, $14
    dec h
    inc d
    ld [hl+], a
    inc d
    ld e, $14

jr_006_47a5:
    add hl, de
    ld d, $1e
    inc d
    jr jr_006_47c5

    ld h, [hl]
    ld bc, $0d61
    rla
    ld [de], a
    ld d, $19
    inc d
    jr @+$1a

    ld h, b
    inc d
    ld a, [de]
    inc d
    add hl, de
    inc d
    ld d, $14
    ld [de], a
    inc d
    dec c
    ld d, $12
    inc d
    inc c

jr_006_47c5:
    jr jr_006_47d5

    inc d
    dec c
    inc d
    rrca
    inc d
    ld de, $1214
    ld d, $19
    inc d
    jr @+$1a

    ld h, b

jr_006_47d5:
    inc d
    ld a, [de]
    inc d
    add hl, de
    inc d
    ld d, $14
    ld [de], a
    inc d

jr_006_47de:
    dec c
    ld d, $12
    inc d
    db $10
    ld a, [de]
    ld h, c
    dec c
    daa
    ld [de], a
    ld h, $19
    inc h
    jr jr_006_4815

    ld h, b
    inc b
    ld a, [de]
    inc h
    add hl, de
    inc h
    ld d, $24
    ld [de], a
    inc h
    dec c
    ld h, $12
    inc h
    inc c

jr_006_47fc:
    jr z, jr_006_480c

    inc h
    dec c
    inc h
    rrca
    inc h
    ld de, $1224
    ld h, $19
    inc h
    jr jr_006_4833

    ld h, b

jr_006_480c:
    inc h
    ld a, [de]
    inc h
    add hl, de
    inc h
    ld d, $24
    ld [de], a
    inc h

jr_006_4815:
    dec c
    ld h, $12
    inc h
    inc c
    daa
    inc c
    ld b, d
    ld h, c
    nop
    adc d
    nop
    adc d
    nop
    adc d
    ld h, d
    ld e, $48
    ld h, c
    ld h, a
    rst $38
    db $10
    dec e
    ld [de], a
    dec e
    inc d
    dec e
    dec d
    ld d, $21

jr_006_4833:
    ld d, $1c
    rla
    ld h, b
    ld [de], a
    inc e
    ld [de], a
    dec e
    dec e
    inc e
    dec e
    ld a, [de]
    dec e
    inc e
    dec e
    ld a, [de]
    dec e
    jr @+$1f

    ld a, [de]
    dec e
    jr @+$1f

    rla
    dec e
    jr jr_006_486b

    rla
    dec e
    dec d
    dec e
    rla
    dec e
    dec d
    dec e
    inc d
    dec e
    dec d
    jr jr_006_48c1

    ld bc, $0461
    dec e
    ld b, $1d
    ld [$091d], sp
    ld d, $15
    ld d, $10
    rla
    ld h, b
    ld [de], a

jr_006_486b:
    db $10
    ld [de], a
    ld de, $101d
    dec e
    ld c, $1d
    db $10
    dec e
    ld c, $1d
    inc c
    dec e
    ld c, $1d
    inc c
    dec e
    dec bc
    dec e
    inc c
    dec e
    dec bc
    dec e
    add hl, bc
    dec e
    dec bc
    dec e
    add hl, bc
    dec e
    ld [$091d], sp
    jr @+$63

    dec d
    ld b, [hl]
    dec d
    ld h, $10
    ld h, $15
    ld h, $10
    ld h, $1a
    ld h, $18
    ld h, $17
    ld h, $15
    ld h, $10
    ld h, $15
    jr jr_006_48ba

    ld b, [hl]
    ld h, c
    nop
    adc d
    nop
    adc d
    ld h, d
    and a
    ld c, b
    ld h, c
    ld h, a
    rst $38
    ld h, h
    nop
    nop
    ld bc, $172d
    ld h, b
    inc b
    ld h, [hl]

jr_006_48ba:
    ld bc, $1061
    inc d
    ld [de], a
    inc d
    inc d

jr_006_48c1:
    inc d
    dec d
    ld d, $17
    inc d
    jr jr_006_48de

    ld a, [de]
    inc d
    inc e
    ld d, $1a
    inc d
    jr jr_006_48e6

    inc e
    inc d
    dec de
    ld d, $19
    inc d
    rla
    ld d, $1b
    inc d
    ld a, [de]
    ld d, $18
    inc d

jr_006_48de:
    ld d, $16
    ld a, [de]
    inc d
    dec d
    ld d, $17
    inc d

jr_006_48e6:
    jr jr_006_48fe

    ld a, [de]
    inc d
    inc e
    ld d, $21
    inc d
    jr nz, jr_006_4906

    ld hl, $1d14
    ld d, $1c
    inc d
    ld a, [de]
    inc d
    inc e
    inc d
    dec e
    inc d
    inc e
    add hl, de

jr_006_48fe:
    inc e
    inc d
    dec e
    inc d
    inc e
    inc d
    ld a, [de]
    inc d

jr_006_4906:
    inc e
    inc d
    ld a, [de]
    inc d
    jr jr_006_4920

    ld a, [de]
    inc d
    jr @+$16

    rla
    inc d
    jr @+$16

    rla
    inc d
    dec d
    inc d
    rla
    inc d
    dec d
    inc d
    inc de
    inc d
    dec d
    inc d

jr_006_4920:
    inc de
    inc d
    ld de, $1314
    inc d
    ld de, $1014
    rla
    db $10
    ld d, $10
    inc d
    db $10
    inc d
    ld [de], a
    inc d
    inc d
    inc d
    dec d
    add hl, de
    inc e
    ld d, $1c
    inc d
    inc e
    inc d
    ld e, $14
    jr nz, jr_006_4954

    ld hl, $6517
    ld h, h
    nop
    db $f4
    ld bc, $1724
    ld h, c
    ld h, h
    ld bc, $0100
    ld h, c
    jr nc, jr_006_4998

    dec d
    daa
    db $10

jr_006_4954:
    daa
    dec d
    daa
    inc e
    ld h, $15
    inc h
    rla
    daa
    ld [de], a
    ld h, $17
    inc h
    ld d, $27
    ld de, $1626
    inc h
    dec d
    daa
    db $10
    daa
    dec d
    daa
    jr @+$28

    dec d
    inc h

jr_006_4971:
    ld a, [de]
    daa
    dec d
    ld h, $1a
    inc h
    inc e
    inc h
    dec e
    inc h
    inc e
    inc h
    ld a, [de]
    inc h
    jr jr_006_49a5

    rla
    inc h
    jr jr_006_49ac

    rla
    daa
    dec d
    daa
    inc de
    daa
    ld de, $1027
    daa
    ld c, $27
    dec d
    daa
    db $10
    ld h, $10
    inc h
    db $10

jr_006_4998:
    inc h
    ld [de], a
    inc h
    inc d
    inc h
    dec d
    ld h, $17
    inc h
    jr jr_006_49c9

    ld a, [de]
    inc h

jr_006_49a5:
    inc e
    ld h, $1e
    inc h
    jr nz, jr_006_49d1

    inc e

jr_006_49ac:
    inc h
    ld hl, $1c24
    inc h
    jr jr_006_49d7

    dec d
    daa
    dec d
    ld b, c
    ld h, l
    nop
    adc d
    nop
    adc d
    nop
    adc d
    ld h, d
    cp b
    ld c, c
    ld h, c
    ld h, a
    rst $38
    ld h, h
    ld [bc], a
    cp $02
    ld h, h

jr_006_49c9:
    inc b
    cp $01
    ld h, [hl]
    ld bc, $c262
    ld c, c

jr_006_49d1:
    ld h, h
    inc bc
    ld a, [bc]
    ld [bc], a
    ld h, h
    dec b

jr_006_49d7:
    ld a, [bc]
    ld bc, $d162
    ld c, c
    jr @+$4c

    inc h
    ld c, d
    ld h, d
    call c, $0c49
    adc d
    jr jr_006_4971

    ld h, d
    db $e3
    ld c, c
    add hl, bc
    inc d
    dec d
    inc d
    jr jr_006_4a04

    add hl, bc
    inc d
    dec b
    inc d
    ld de, $1414
    inc d
    ld de, $0914
    inc d
    dec d
    inc d
    jr jr_006_4a14

    add hl, bc
    inc d
    inc bc
    inc d

jr_006_4a04:
    rrca
    inc d
    inc de
    inc d
    ld h, b
    inc d
    ld h, l
    ld [bc], a
    inc d
    ld c, $14
    ld de, $0e14
    inc d
    ld a, [bc]

jr_006_4a14:
    inc d
    ld d, $14
    add hl, de
    inc d
    ld d, $14
    ld [bc], a
    inc d
    ld c, $14
    ld de, $0e14
    inc d
    dec b
    inc d
    inc c
    inc d
    ld de, $6014
    inc d
    rlca
    inc d
    ld c, $14
    inc de
    inc d
    ld c, $14
    ld [$0f14], sp
    inc d
    inc d
    inc d
    rrca
    inc d
    add hl, bc
    inc d
    db $10
    inc d
    dec d
    inc d
    db $10
    inc d
    add hl, bc
    inc d
    db $10
    inc d
    dec d
    inc d
    ld h, b
    inc d
    ld [bc], a
    inc d
    ld c, $14
    ld de, $0e14
    inc d
    ld a, [bc]
    inc d
    ld d, $14
    add hl, de
    inc d
    ld d, $14
    ld [bc], a
    inc d
    ld c, $14
    ld de, $0e14
    inc d
    ld a, [bc]
    inc d
    ld d, $14
    add hl, de
    inc d
    ld h, b
    inc d
    inc bc
    inc d
    rrca
    inc d
    inc de
    inc d
    rrca
    inc d
    dec b
    inc d
    ld de, $1514
    inc d
    ld de, $0714
    inc d
    inc de
    inc d
    rla
    inc d
    inc de
    inc d
    inc b
    inc d
    db $10
    inc d
    inc d
    inc d
    ld h, b
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    jr jr_006_4aa5

    dec d
    inc d
    dec b
    inc d
    ld de, $1414
    inc d
    ld de, $0914
    inc d
    dec d
    inc d
    jr jr_006_4ab5

    dec d
    inc d
    inc bc
    inc d

jr_006_4aa5:
    rrca
    inc d
    inc de
    inc d
    ld h, b
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    jr jr_006_4ac5

    dec d
    inc d
    dec b
    inc d

jr_006_4ab5:
    ld de, $1414
    inc d
    ld de, $0914
    inc d
    dec d
    inc d
    jr jr_006_4ad5

    dec d
    inc d
    inc bc
    inc d

jr_006_4ac5:
    rrca
    inc d
    inc de
    inc d
    ld h, b
    inc d
    dec b
    inc d
    ld de, $1514
    inc d
    ld de, $0214
    inc d

jr_006_4ad5:
    ld de, $1514
    inc d
    ld de, $0314
    inc d
    rrca
    inc d
    inc de
    inc d
    rrca
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    add hl, de
    inc d
    ld h, b
    inc d
    ld [bc], a
    inc d
    ld c, $14
    ld de, $0e14
    inc d
    ld a, [bc]
    inc d
    ld d, $14
    add hl, de
    inc d
    ld d, $14
    ld [bc], a
    inc d
    ld c, $14
    ld de, $0e14
    inc d
    ld a, [bc]
    inc d
    ld d, $14
    add hl, de
    inc d
    ld h, b
    inc d
    ld [bc], a
    inc d
    ld c, $14
    ld de, $0e14
    inc d
    ld b, $14
    dec c
    inc d
    ld [de], a
    inc d
    dec c
    inc d
    inc b
    inc d
    db $10
    inc d
    inc d
    inc d
    db $10
    inc d
    inc b
    inc d
    db $10
    inc d
    inc d
    inc d
    ld h, b
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    jr jr_006_4b45

    dec d
    inc d
    ld b, $14
    ld [de], a
    inc d
    dec d
    inc d
    ld [de], a
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    jr jr_006_4b55

    dec d
    inc d
    dec b
    inc d

jr_006_4b45:
    ld de, $1414
    inc d
    ld h, b
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    jr jr_006_4b65

    dec d
    inc d
    ld b, $14

jr_006_4b55:
    ld [de], a
    inc d
    dec d
    inc d
    ld [de], a
    inc d
    ld [bc], a
    inc d
    ld c, $14
    ld de, $0e14
    inc d
    inc bc
    inc d

jr_006_4b65:
    rrca
    inc d
    inc de
    inc d
    rrca
    inc d
    inc b
    inc d
    db $10
    inc d
    inc d
    inc d
    db $10
    inc d
    ld b, $14
    ld [de], a
    inc d
    ld d, $14
    ld [de], a
    inc d
    dec b
    inc d
    ld de, $1414
    inc d
    ld de, $0514
    inc d
    ld de, $1414
    inc d
    ld de, $0414
    inc d
    ld c, $14
    inc d
    inc d
    ld c, $14
    inc b
    inc d
    ld c, $14
    inc d
    inc d
    ld c, $14
    inc b
    inc d
    ld c, $14
    inc d
    inc d
    ld c, $14
    inc b
    inc d
    ld c, $14
    inc d
    inc d
    ld c, $14
    inc b
    inc d
    ld c, $14
    inc d
    inc d
    ld c, $14
    inc b
    inc d
    ld c, $14
    inc d
    inc d
    ld c, $14
    ld h, l
    ld hl, $2355
    ld d, d
    inc h
    ld d, h
    ld hl, $2054
    ld d, h
    dec e
    ld d, h
    jr jr_006_4c20

    ld hl, $2355
    ld d, d
    inc h
    ld d, h
    ld hl, $2254
    ld e, b
    ld h, l
    ld a, [de]
    ld d, h
    inc e
    ld d, h
    dec e
    ld d, h
    rra
    ld d, h
    dec e
    ld d, h
    ld a, [de]
    ld d, h
    add hl, de

Call_006_4be2:
    ld d, [hl]
    ld a, [de]
    ld d, h
    inc e
    ld d, h
    dec e
    ld d, h
    rra
    ld d, h
    ld hl, $1d54
    ld d, h
    ld a, [de]
    ld d, h
    dec d
    ld d, h
    ld d, $56
    ld d, $46
    jr jr_006_4c4f

    jr jr_006_4c41

    add hl, de
    ld d, [hl]
    add hl, de
    ld b, [hl]
    inc e
    ld d, [hl]
    inc e
    ld b, [hl]
    ld a, [de]
    ld d, l
    inc e
    ld d, d
    dec e
    ld d, h
    rra
    ld d, h
    dec e
    ld d, h
    add hl, de
    ld d, h
    ld d, $56
    ld a, [de]
    ld d, l
    inc e
    ld d, d
    dec e
    ld d, h
    rra
    ld d, h
    dec e
    ld e, b
    dec de
    ld d, d
    rra
    ld d, d
    ld [hl+], a

jr_006_4c20:
    ld d, d
    rra
    ld d, d
    daa
    ld d, d
    ld [hl+], a
    ld d, d
    rra
    ld d, d
    dec de
    ld d, d
    jr jr_006_4c7f

    dec e
    ld d, d
    ld hl, $2452
    ld d, d
    ld hl, $1d52
    ld d, d
    jr jr_006_4c8b

    dec d
    ld d, d
    rla
    ld d, d
    ld a, [de]
    ld d, d
    rra
    ld d, d

jr_006_4c41:
    ld a, [de]
    ld d, d
    rla
    ld d, d
    inc de
    ld d, d
    rla
    ld d, d
    ld a, [de]
    ld d, d
    inc e
    ld e, b
    dec d
    ld d, l

jr_006_4c4f:
    rla
    ld d, d
    jr jr_006_4ca7

    ld a, [de]
    ld d, h
    jr jr_006_4cab

    inc d
    ld d, h
    ld de, $1556
    ld d, l
    rla
    ld d, d
    jr jr_006_4cb5

    ld a, [de]
    ld d, h
    ld d, $58
    dec d
    ld d, l
    rla
    ld d, d
    jr jr_006_4cbf

    ld a, [de]
    ld d, h
    jr jr_006_4cc3

    inc d
    ld d, h
    ld de, $1556
    ld d, l
    rla
    ld d, d
    jr jr_006_4ccd

    ld a, [de]
    ld d, h
    dec de
    ld e, b
    dec e
    ld e, b

jr_006_4c7f:
    ld a, [de]
    ld e, b

Jump_006_4c81:
    dec de
    ld e, b
    dec de
    ld c, b
    dec e
    ld e, b
    ld a, [de]
    ld e, b
    ld a, [de]
    ld d, d

jr_006_4c8b:
    dec e
    ld d, d
    ld hl, $1d52
    ld d, d
    ld a, [de]
    ld d, d
    dec d
    ld d, d
    ld de, $1552
    ld d, d
    ld d, $52
    add hl, de
    ld d, d
    dec e
    ld d, d
    ld [hl+], a
    ld d, d
    dec e
    ld d, d
    add hl, de
    ld d, d
    ld d, $52

jr_006_4ca7:
    add hl, de
    ld d, d
    ld a, [de]
    ld d, d

jr_006_4cab:
    dec e
    ld d, d
    ld hl, $1d52
    ld d, d
    ld a, [de]
    ld d, d
    dec d
    ld d, d

jr_006_4cb5:
    ld de, $1552
    ld d, d
    ld [de], a
    ld d, d
    ld d, $52
    add hl, de
    ld d, d

jr_006_4cbf:
    ld e, $52
    ld [hl+], a
    ld d, d

jr_006_4cc3:
    ld e, $52
    add hl, de
    ld d, d
    ld d, $52
    rla
    ld d, d
    inc e
    ld d, d

jr_006_4ccd:
    jr nz, jr_006_4d21

    inc hl
    ld d, d
    jr z, jr_006_4d25

    inc hl
    ld d, d
    jr nz, jr_006_4d29

    inc e
    ld d, d
    rla
    ld d, d
    inc e
    ld d, d
    jr nz, jr_006_4d31

    inc hl
    ld d, d
    jr z, @+$54

    inc hl
    ld d, d
    jr nz, jr_006_4d39

    inc e
    ld d, d
    dec d
    ld d, l
    rla
    ld d, d
    jr jr_006_4d43

    ld a, [de]
    ld d, h
    add hl, de
    ld d, h
    dec d
    ld d, h
    ld [de], a
    ld d, [hl]
    dec d
    ld d, l
    rla
    ld d, d
    jr jr_006_4d51

    ld a, [de]
    ld d, h
    jr jr_006_4d59

    dec d
    ld d, l
    rla
    ld d, d
    jr jr_006_4d5b

    ld a, [de]
    ld d, h
    add hl, de
    ld d, h
    dec d
    ld d, h
    ld [de], a
    ld d, [hl]
    ld c, $52
    db $10
    ld d, d
    ld de, $1352
    ld d, d
    dec d
    ld d, d
    ld d, $52
    jr jr_006_4d6f

    add hl, de
    ld d, d
    dec de
    ld d, d

jr_006_4d21:
    ld a, [de]
    ld d, d
    jr jr_006_4d77

jr_006_4d25:
    ld d, $52
    dec d
    ld d, d

jr_006_4d29:
    inc de
    ld d, d
    ld de, $0f52
    ld d, d
    db $10
    ld e, b

jr_006_4d31:
    ld [de], a
    ld e, b
    ld de, $1458
    ld e, b
    db $10
    ld d, d

jr_006_4d39:
    inc d
    ld d, d
    rla
    ld d, d
    inc e
    ld d, d
    jr nz, jr_006_4d93

    inc e
    ld d, d

jr_006_4d43:
    rla
    ld d, d
    inc d
    ld d, d
    db $10
    ld d, d

jr_006_4d49:
    inc d
    ld d, d
    rla
    ld d, d
    inc e
    ld d, d
    jr nz, jr_006_4da3

jr_006_4d51:
    inc e
    ld d, d
    rla
    ld d, d
    inc d
    ld d, d
    rla
    ld d, d

jr_006_4d59:
    inc e
    ld d, d

jr_006_4d5b:
    jr nz, jr_006_4daf

    inc hl
    ld d, d
    jr z, jr_006_4db3

    inc hl
    ld d, d
    jr nz, @+$54

    inc e
    ld d, d
    rla
    ld d, d
    inc e
    ld d, d
    jr nz, jr_006_4dbf

    inc hl
    ld d, d

jr_006_4d6f:
    jr nz, jr_006_4dc3

    inc hl
    ld d, d
    jr nz, @+$54

    inc hl
    ld d, d

jr_006_4d77:
    jr z, jr_006_4dd3

    ld h, l
    ld h, a
    rst $38
    ld h, h
    rlca
    nop
    ld bc, $0a64
    nop
    inc b
    ld h, h
    dec bc
    nop
    inc b
    ld h, h
    inc c
    nop
    ld [$0a64], sp
    nop
    inc b
    ld h, h
    dec bc
    nop

jr_006_4d93:
    inc b
    ld h, h
    inc c
    nop
    ld [$0a64], sp
    dec b
    inc b
    ld h, h
    dec bc
    dec b
    inc b
    ld h, h
    inc c
    dec b

jr_006_4da3:
    ld [$0a64], sp
    dec b
    inc b
    ld h, h
    dec bc
    dec b
    inc b
    ld h, h
    inc c
    dec b

jr_006_4daf:
    ld [$0b64], sp
    inc b

jr_006_4db3:
    inc b
    ld h, [hl]
    ld bc, $8062
    ld c, l
    nop
    adc d
    inc c
    adc d
    jr jr_006_4d49

jr_006_4dbf:
    ld h, d
    cp c
    ld c, l
    ld h, h

jr_006_4dc3:
    ld b, $0c
    ld bc, $0664
    ld [$6401], sp
    ld b, $0c
    ld bc, $0664
    ld [$6401], sp

jr_006_4dd3:
    ld b, $05
    ld bc, $0664
    dec b
    ld bc, $0664
    dec c
    ld bc, $0664
    dec c
    ld bc, $0664
    ld [$6401], sp
    ld b, $08
    ld bc, $0664
    inc c
    ld bc, $0664
    inc c
    ld bc, $0664
    inc c
    ld bc, $0664
    inc c
    ld bc, $0664
    dec b
    ld bc, $0664
    dec b
    ld bc, $0964
    inc c
    ld bc, $0d64
    inc c
    ld [bc], a
    ld h, h
    dec c
    ld [$6402], sp
    dec c
    inc c
    ld [bc], a
    ld h, h
    dec c
    ld [$6402], sp
    dec c
    ld de, $6402
    dec c
    dec c
    ld [bc], a
    ld h, h
    dec c
    ld de, $6402
    dec c
    dec c
    ld [bc], a
    ld h, h
    dec c
    inc de
    ld bc, $0662
    ld c, [hl]
    add hl, bc
    adc d
    dec d
    adc d
    ld hl, $628a
    dec l
    ld c, [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    inc [hl]
    dec d
    inc [hl]
    db $10
    inc [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    inc [hl]
    inc b
    inc [hl]
    db $10
    inc [hl]
    ld h, l
    inc b
    inc [hl]
    inc b
    inc [hl]
    inc b
    inc [hl]
    inc b
    ld b, a
    dec b
    ld [hl], $04
    inc [hl]
    inc b
    inc [hl]
    inc b
    inc [hl]
    inc b
    ld b, a
    ld [bc], a
    ld [hl], $04
    inc [hl]
    inc b
    inc [hl]
    inc b
    inc [hl]
    inc b
    ld b, a
    db $10
    ld [hl], $10
    jr c, jr_006_4e78

    ld c, b
    ld h, l
    add hl, bc
    inc [hl]
    dec d
    inc [hl]
    add hl, bc
    inc [hl]
    dec d
    inc [hl]
    add hl, bc
    inc [hl]
    dec d
    inc [hl]
    add hl, bc
    inc [hl]

jr_006_4e78:
    dec d
    inc [hl]
    ld h, l
    dec d
    inc d
    rla
    inc d
    jr jr_006_4e95

    ld a, [de]
    inc d
    inc e
    inc d
    jr @+$16

    dec d
    inc d
    jr @+$16

    dec e
    inc d
    dec de
    inc d
    add hl, de
    inc d
    jr jr_006_4ea7

    ld d, $14

jr_006_4e95:
    inc d
    inc d
    inc de
    inc d
    ld de, $1014
    jr @+$17

    jr jr_006_4eb4

    jr @+$13

    inc d
    inc de
    inc d
    dec d
    inc d

jr_006_4ea7:
    ld d, $12
    jr @+$14

    ld a, [de]
    ld d, $1b
    ld d, $1a
    ld d, $15
    ld d, $1a

jr_006_4eb4:
    ld d, $1b
    ld d, $1a
    ld d, $21
    ld d, $16
    ld d, $17
    ld d, $16
    ld d, $11
    ld d, $16
    ld d, $17
    ld d, $16
    ld d, $1d
    ld d, $11
    ld d, $12
    ld d, $11
    ld d, $0c
    ld d, $11
    ld d, $12
    ld d, $11
    ld d, $18
    ld d, $1c
    inc d
    jr jr_006_4ef3

    dec d
    inc d
    db $10
    inc d
    inc c
    inc d
    db $10
    inc d
    dec d
    inc d
    jr jr_006_4eff

    inc e
    inc d
    ld hl, $1c14
    inc d
    jr jr_006_4f07

jr_006_4ef3:
    dec d
    inc d
    jr jr_006_4f0b

    inc e
    inc d
    jr jr_006_4f0f

    ld hl, $1814
    inc d

jr_006_4eff:
    ld [hl+], a
    inc d
    jr jr_006_4f17

    ld hl, $1814
    inc d

jr_006_4f07:
    inc e
    inc d
    jr jr_006_4f1f

jr_006_4f0b:
    ld hl, $1814
    inc d

jr_006_4f0f:
    ld [hl+], a
    inc d
    jr jr_006_4f27

    ld hl, $1814
    inc d

jr_006_4f17:
    jr z, jr_006_4f2d

    jr jr_006_4f2f

    ld h, $14
    dec e
    inc d

jr_006_4f1f:
    daa
    inc d
    dec e
    inc d
    ld h, $14
    dec e
    inc d

jr_006_4f27:
    ld hl, $1d14
    inc d
    ld h, $14

jr_006_4f2d:
    dec e
    inc d

jr_006_4f2f:
    daa
    inc d
    dec e
    inc d
    ld h, $14
    dec e
    inc d
    ld hl, $1d14
    inc d
    inc e
    inc d
    inc e
    inc d
    inc e
    inc d
    ld h, b
    rla
    dec e
    ld d, $1c
    inc d
    inc e
    inc d
    inc e
    inc d
    ld h, b
    rla
    ld a, [de]
    ld d, $1c
    inc d
    inc e
    inc d
    inc e
    inc d
    ld h, b
    rla
    jr z, @+$18

    jr z, jr_006_4f75

    ld h, l
    dec d

jr_006_4f5d:
    ld d, d
    jr jr_006_4fb2

    inc e
    ld d, d
    jr jr_006_4fb6

    ld h, l
    jr jr_006_4fb9

    inc e
    ld d, d
    rra
    ld d, d
    inc e
    ld d, d
    ld h, l
    jr @+$54

    dec e
    ld d, d
    jr nz, @+$54

    dec e

jr_006_4f75:
    ld d, d
    ld h, l
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld h, b
    rla
    dec d
    ld d, $14
    inc d
    inc d
    inc d
    inc d
    inc d
    ld h, b
    rla
    ld de, $1416
    inc d
    inc d
    inc d
    inc d
    inc d
    ld h, b

jr_006_4fb2:
    rla
    jr nz, @+$18

    inc d

jr_006_4fb6:
    ld a, [de]
    ld h, l
    ld h, a

jr_006_4fb9:
    rst $38
    ld h, h
    ld c, $00
    ld [bc], a
    ld h, h
    stop
    ld bc, $0e64
    nop
    ld bc, $1264
    nop
    ld bc, $0166
    ld h, d
    cp b
    ld c, a
    inc c
    adc d
    jr jr_006_4f5d

    inc h
    adc d
    ld h, d
    rst $08
    ld c, a
    ld h, h
    rrca
    nop
    ld [bc], a
    ld h, h
    ld de, $0100
    ld h, h
    rrca
    nop
    ld [bc], a
    ld h, h
    inc de
    nop
    ld bc, $d862
    ld c, a
    ld h, e
    ld hl, $1464
    nop
    inc e
    add hl, bc
    adc d
    ld h, h
    inc d
    nop
    inc bc
    ld h, d
    db $eb
    ld c, a
    ld h, c
    dec d
    ld d, $18
    ld d, $1c
    ld d, $21
    ld d, $1d
    inc d
    inc e
    inc d
    ld a, [de]
    rla
    inc e
    ld d, $1d
    inc d
    inc e
    inc d
    dec e
    inc d
    inc e

Jump_006_5012:
    inc d
    ld a, [de]
    ld d, $18
    inc d
    ld a, [de]
    inc d
    inc e
    ld a, [de]
    ld h, b
    inc d
    ld h, l
    inc e
    inc d
    ld a, [de]
    inc d
    inc e
    inc d
    rra
    ld d, $1c
    inc d
    ld a, [de]
    inc d
    jr jr_006_5040

    ld a, [de]
    inc d
    rla
    inc d
    inc de
    rla
    dec d
    inc d
    rla
    ld d, $18
    jr jr_006_5099

    inc d
    ld a, [de]
    inc d
    inc e
    ld d, $1d
    inc d

jr_006_5040:
    rra
    inc d
    ld hl, $1f14
    ld d, $1d
    inc d
    inc e
    inc d
    ld a, [de]
    inc d
    inc e
    ld d, $1c
    ld d, $1c
    inc d
    ld a, [de]
    inc d
    jr jr_006_506a

    inc e
    ld d, $1a
    inc d
    jr jr_006_5070

    rra
    ld d, $1d
    inc d
    inc e
    ld d, $1a
    inc d
    inc e
    inc d
    ld a, [de]
    inc d
    jr jr_006_5080

jr_006_506a:
    rla
    inc d
    jr @+$16

    rla
    inc d

jr_006_5070:
    inc d
    ld d, $15
    ld d, $17
    ld d, $14
    ld d, $15
    inc d
    rla
    inc d
    jr jr_006_5092

    ld a, [de]
    inc d

jr_006_5080:
    inc e
    ld d, $21
    ld d, $1d
    inc d
    inc e
    inc d
    ld a, [de]
    rla
    inc e
    ld d, $1d
    inc d
    inc e
    inc d
    dec e
    inc d

jr_006_5092:
    inc e
    inc d
    ld a, [de]
    ld d, $18
    inc d
    ld a, [de]

jr_006_5099:
    inc d
    inc e
    rla
    ld a, [de]
    inc d
    jr jr_006_50b6

    rla
    inc d
    jr jr_006_50b8

    rla
    inc d
    ld h, l
    inc e
    inc d
    ld e, $14
    rra
    inc d
    rra
    ld d, $1e
    inc d
    inc e
    ld d, $1a
    inc d
    inc e

jr_006_50b6:
    inc d
    ld a, [de]

jr_006_50b8:
    inc d
    rla
    ld d, $13
    inc d
    dec d
    inc d
    rla
    inc d
    jr jr_006_50d7

    rla
    inc d
    dec d
    inc d
    jr jr_006_50df

    rla
    inc d
    dec d
    ld d, $1c
    jr jr_006_50e0

    jr jr_006_50ee

    dec e
    dec e
    dec e
    inc e
    dec e

jr_006_50d7:
    ld a, [de]
    dec e
    inc e
    dec e
    ld a, [de]
    dec e
    jr @+$1f

jr_006_50df:
    ld a, [de]

jr_006_50e0:
    dec e
    jr jr_006_5100

    rla
    dec e
    jr jr_006_5104

    rla
    dec e
    inc e
    ld a, [de]
    db $10
    ld a, [de]
    inc e

jr_006_50ee:
    ld a, [de]
    ld h, l
    dec d
    scf
    inc e
    scf
    ld hl, $0e36
    scf
    dec d
    scf
    ld a, [de]
    ld [hl], $10
    scf
    rla
    scf

jr_006_5100:
    inc e
    ld [hl], $10
    scf

jr_006_5104:
    rla
    scf
    inc e
    ld [hl], $65
    inc c
    scf
    inc de
    scf
    jr @+$38

    inc de
    scf
    ld a, [de]
    scf
    rra
    ld [hl], $15
    scf
    inc e
    scf
    ld hl, $1136
    ld [hl], $18
    inc [hl]
    inc de
    ld [hl], $1a
    inc [hl]
    rra
    ld [hl], $15
    scf
    inc e
    inc [hl]
    ld hl, $0c38
    scf
    inc de
    scf
    jr jr_006_5167

    inc de
    scf
    ld a, [de]
    scf
    rra
    ld [hl], $10
    scf
    rla
    inc [hl]
    inc e
    ld [hl], $10
    ld [hl], $65
    inc c
    scf
    inc de
    scf
    jr @+$38

    inc de
    scf
    ld a, [de]
    scf
    rra
    ld [hl], $11
    scf
    jr jr_006_5187

    dec e
    ld [hl], $10
    ld [hl], $17
    jr c, jr_006_516e

    ld [hl], $1c
    dec a
    dec e
    dec a
    inc e
    dec a
    ld a, [de]
    dec a
    inc e

Jump_006_5161:
    dec a
    ld a, [de]
    dec a
    jr jr_006_51a3

    ld a, [de]

jr_006_5167:
    dec a
    jr jr_006_51a7

    rla
    dec a
    jr @+$3f

jr_006_516e:
    rla
    dec a
    db $10
    scf
    rla
    scf
    inc e
    ld [hl], $10
    scf
    rla
    scf
    inc e
    ld [hl], $10
    scf
    rla
    scf
    inc e
    ld [hl], $65
    dec d
    sub h
    dec d
    sub h

jr_006_5187:
    ld h, e
    dec h
    dec d
    sub h
    ld h, e
    ld hl, $9415
    dec d
    sub h
    dec d
    sub h
    ld h, e
    dec h
    dec d
    sub h
    ld h, e
    ld hl, $9415
    ld h, l
    ld h, a
    rst $38
    ld h, h
    dec d
    nop
    ld [bc], a
    ld h, h

jr_006_51a3:
    dec d
    ld sp, hl
    ld [bc], a
    ld h, h

jr_006_51a7:
    dec d
    ei
    ld bc, $1564
    ld sp, hl
    ld bc, $1564
    nop
    ld [bc], a
    ld h, h
    dec d
    nop
    ld [bc], a
    ld h, h
    dec d
    ld sp, hl
    ld [bc], a
    ld h, h
    dec d
    ei
    ld bc, $1564
    ld sp, hl

Jump_006_51c1:
    ld bc, $1564
    nop
    ld [bc], a
    ld h, h
    dec d
    dec b
    ld [bc], a
    ld h, h
    dec d
    cp $02
    ld h, h
    dec d
    nop
    ld bc, $1564
    cp $01
    ld h, h
    dec d
    dec b
    ld [bc], a
    ld h, h
    dec d
    dec b
    ld [bc], a
    ld h, h
    dec d
    cp $02
    ld h, h
    dec d
    nop
    ld bc, $1564
    cp $01
    ld h, h
    dec d
    dec b
    ld [bc], a
    ld h, [hl]
    ld bc, $9c62
    ld d, c
    add hl, bc
    adc d
    dec d
    adc d
    ld hl, $628a
    di
    ld d, c
    ld h, h
    ld d, $00
    ld bc, $1664
    dec b
    ld bc, $1764
    nop
    ld bc, $1664
    nop
    ld bc, $1664
    dec b
    ld bc, $1764
    nop
    ld bc, $1664
    dec b
    ld bc, $1664
    ld a, [bc]
    ld bc, $1764
    dec b
    ld bc, $1664
    dec b
    ld bc, $1664
    ld a, [bc]
    ld bc, $1764
    dec b
    ld bc, $fc62
    ld d, c
    add hl, bc
    adc d
    dec d
    adc d
    ld hl, $628a
    cpl
    ld d, d
    add hl, bc
    inc d
    dec d
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    add hl, bc
    ld [de], a
    inc c
    ld [de], a
    db $10
    ld [de], a
    inc c
    ld [de], a
    ld h, l
    dec l
    ld [hl-], a
    inc l
    ld [hl-], a
    dec hl
    ld [hl-], a
    ld a, [hl+]
    ld [hl-], a
    add hl, hl
    ld [hl-], a
    jr z, jr_006_528b

Jump_006_5259:
    daa
    ld [hl-], a
    ld h, $32
    dec h
    ld [hl-], a
    inc h
    ld [hl-], a
    dec h
    ld [hl-], a
    ld h, $32
    jr z, @+$34

    add hl, hl
    ld [hl-], a
    jr z, jr_006_529d

    ld h, $32
    jr z, jr_006_52a3

    dec l
    inc [hl]
    inc h
    inc [hl]
    dec l
    inc [hl]
    ld hl, $2d34
    inc [hl]
    jr z, @+$38

    ld h, l
    inc [hl]
    ld [hl-], a
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld sp, $3032
    ld [hl-], a
    cpl
    ld [hl-], a
    ld l, $32
    dec l

jr_006_528b:
    ld [hl-], a
    inc l
    ld [hl-], a
    dec hl
    ld [hl-], a
    ld a, [hl+]
    ld [hl-], a
    add hl, hl
    ld [hl-], a
    jr z, jr_006_52c8

    daa
    ld [hl-], a
    ld h, $32
    dec h
    ld [hl-], a
    ld [hl-], a

jr_006_529d:
    ld [hl-], a
    ld sp, $3032
    ld [hl-], a
    cpl

jr_006_52a3:
    ld [hl-], a
    ld l, $32
    dec l
    ld [hl-], a
    inc l
    ld [hl-], a
    dec hl
    ld [hl-], a
    ld a, [hl+]
    ld [hl-], a
    add hl, hl
    ld [hl-], a
    jr z, jr_006_52e4

    daa
    ld [hl-], a
    ld h, $32
    dec h
    ld [hl-], a
    inc h
    ld [hl-], a
    inc hl
    ld [hl-], a
    ld hl, $2232
    ld [hl-], a
    inc hl
    ld [hl-], a
    inc h
    ld [hl-], a
    dec h
    ld [hl-], a
    ld h, $32

jr_006_52c8:
    daa
    ld [hl-], a
    jr z, jr_006_52fe

    inc h
    inc [hl]
    ld hl, $1c34
    inc [hl]
    ld hl, $2434
    inc [hl]
    ld hl, $2434
    inc [hl]

jr_006_52da:
    jr z, jr_006_5310

    dec l
    inc [hl]
    ld h, b
    rla
    ld h, l
    ld h, a

jr_006_52e2:
    rst $38
    ld h, h

jr_006_52e4:
    jr jr_006_52da

    ld bc, $1a64
    db $f4
    ld [bc], a
    ld h, h
    jr jr_006_52e2

    ld bc, $0166
    ld h, d
    pop hl
    ld d, d

jr_006_52f4:
    ld h, h
    add hl, de

Jump_006_52f6:
    nop
    ld bc, $1b64
    nop
    ld bc, $1964

jr_006_52fe:
    nop
    ld bc, $f462
    ld d, d
    inc de
    jr z, jr_006_5318

    jr z, @+$11

    jr z, jr_006_5320

    jr z, jr_006_5324

    jr z, @+$15

    jr z, @+$17

jr_006_5310:
    jr z, jr_006_5324

    jr z, @+$15

    jr z, jr_006_5328

    jr z, @+$11

jr_006_5318:
    jr z, jr_006_5330

    jr z, jr_006_5334

    jr z, jr_006_5338

    jr z, @+$15

jr_006_5320:
    jr z, @+$15

    jr z, @+$11

jr_006_5324:
    jr z, jr_006_533c

    jr z, jr_006_5340

jr_006_5328:
    jr z, @+$15

    jr z, @+$11

    jr z, jr_006_533a

    jr z, jr_006_533e

jr_006_5330:
    jr z, jr_006_5340

    jr z, @+$11

jr_006_5334:
    jr z, jr_006_534c

    jr z, jr_006_5350

jr_006_5338:
    jr z, @+$15

jr_006_533a:
    jr z, @+$17

jr_006_533c:
    jr z, @+$17

jr_006_533e:
    jr z, jr_006_534e

jr_006_5340:
    jr z, jr_006_5350

    jr z, @+$15

    jr z, jr_006_5358

    jr z, @+$11

Call_006_5348:
    jr z, jr_006_5360

    jr z, jr_006_5364

jr_006_534c:
    jr z, @+$15

jr_006_534e:
    jr z, jr_006_5365

jr_006_5350:
    jr z, jr_006_5364

    jr z, jr_006_5367

    jr z, jr_006_5368

    jr z, jr_006_5367

jr_006_5358:
    jr z, jr_006_5370

    jr z, jr_006_5374

    jr z, jr_006_5378

    jr z, jr_006_5373

jr_006_5360:
    jr z, jr_006_5375

    jr z, jr_006_53c6

jr_006_5364:
    inc bc

jr_006_5365:
    ld d, e
    inc c

jr_006_5367:
    adc d

jr_006_5368:
    jr jr_006_52f4

    inc h
    adc d
    jr nc, @-$74

    ld h, d
    ld h, [hl]

jr_006_5370:
    ld d, e
    ld l, $a6

jr_006_5373:
    dec l

jr_006_5374:
    and h

jr_006_5375:
    dec hl

jr_006_5376:
    and h
    ld [hl-], a

jr_006_5378:
    and [hl]
    dec l
    and [hl]
    scf
    and h
    dec [hl]
    and h
    inc sp
    and h
    scf
    and h
    dec [hl]
    and [hl]
    ld [hl-], a
    and [hl]
    inc sp
    and [hl]
    ld [hl-], a
    and h
    jr nc, @-$5a

    ld [hl-], a
    and [hl]
    ld l, $a6
    ld l, $a4
    dec l
    and h
    ld l, $a4
    dec hl
    and h
    dec l
    xor b
    ld l, $a6
    dec l
    and h
    dec hl
    and h
    ld [hl-], a
    and [hl]
    dec l
    and [hl]
    scf
    and h
    dec [hl]
    and h
    inc sp
    and h

jr_006_53ab:
    scf
    and h
    dec [hl]
    and [hl]
    ld [hl-], a
    and [hl]
    inc sp
    and a
    dec [hl]
    and d
    scf
    and d
    add hl, sp
    and [hl]
    scf
    and h
    ld [hl], $a4
    scf
    xor d

jr_006_53bf:
    ld h, l
    scf
    and h
    dec [hl]
    and h
    inc sp
    and h

jr_006_53c6:
    scf
    and h
    dec [hl]
    and [hl]
    ld [hl-], a
    and [hl]
    inc sp
    and h
    ld [hl-], a
    and h
    jr nc, jr_006_5376

    inc sp
    and h
    ld [hl-], a
    and [hl]
    ld l, $a6
    ld l, $a7
    dec l
    and h
    dec hl
    and [hl]
    dec l
    and h
    ld l, $a4
    dec l
    xor d
    ld h, l
    inc de
    and h
    ld a, [de]
    and h
    ld d, $a4

jr_006_53eb:
    ld a, [de]
    and h
    ld [de], a
    and h
    ld a, [de]
    and h
    dec d
    and h
    ld a, [de]
    and h
    rrca
    and h
    ld d, $a4
    inc de
    and h
    ld d, $a4
    ld d, $a4
    dec e
    and h
    ld a, [de]
    and h
    dec e
    and h
    jr jr_006_53ab

    rra
    and h
    dec de
    and h
    rra
    and h
    inc de
    and h
    ld a, [de]
    and h
    ld d, $a4
    ld a, [de]
    and h
    dec d

jr_006_5416:
    and h
    inc e
    and h
    jr jr_006_53bf

    inc e
    and h
    ld [de], a
    and h
    ld a, [de]
    and h
    dec d
    and h
    ld a, [de]
    and h
    inc de
    and h
    ld a, [de]
    and h
    ld d, $a4
    ld a, [de]
    and h
    ld [de], a
    and h
    ld a, [de]
    and h
    dec d
    and h
    ld a, [de]
    and h
    rrca
    and h
    dec de
    and h
    ld d, $a4
    dec de
    and h
    ld d, $a4
    dec e
    and h
    ld a, [de]
    and h
    dec e
    and h
    jr jr_006_53eb

    rra
    and h
    dec de
    and h
    rra
    and h
    ld a, [de]
    and h
    ld hl, $1ea4
    and h
    ld hl, $13a4

jr_006_5456:
    and h
    ld a, [de]
    and h
    ld d, $a4
    ld a, [de]
    and h
    inc de
    xor b
    ld h, l
    rrca
    and h
    ld d, $a4
    inc de
    and h
    ld d, $a4

jr_006_5468:
    ld d, $a4
    dec e
    and h

jr_006_546c:
    ld a, [de]
    and h
    dec e
    and h

jr_006_5470:
    jr jr_006_5416

    rra
    and h

jr_006_5474:
    dec de
    and h
    rra
    and h
    inc de
    and h
    ld a, [de]
    and h
    ld d, $a4
    ld a, [de]
    and h
    rrca
    and h
    ld d, $a4
    inc de
    and h
    ld d, $a4
    inc c
    and h
    inc de
    and h
    rrca
    and h
    inc de
    and h
    ld c, $a4
    dec d
    and h
    ld [de], a
    and h
    dec d
    and h
    ld c, $a4
    dec d
    and h
    ld [de], a
    and h
    dec d
    and h
    rrca
    and h
    ld d, $a4
    inc de
    and h
    ld d, $a4
    ld d, $a4
    dec e
    and h
    ld a, [de]
    and h
    dec e
    and h
    jr jr_006_5456

    rra
    and h
    dec de
    and h
    rra
    and h
    inc de
    and h
    ld a, [de]
    and h
    ld d, $a4
    ld a, [de]
    and h
    dec d
    and h
    jr jr_006_5468

    inc e
    and h
    jr jr_006_546c

    dec d
    and h
    jr jr_006_5470

    inc e
    and h
    jr jr_006_5474

    ld c, $a4
    ld [de], a
    and h
    dec d
    and h
    ld [de], a
    and h
    ld c, $a4
    ld [de], a
    and h
    dec d
    and h
    ld [de], a
    and h
    ld h, l
    ld h, a
    rst $38
    ld h, h
    inc e

Jump_006_54e5:
    dec b
    ld bc, $881a
    ld h, h
    inc e
    dec b
    ld bc, $8605
    jr jr_006_554c

    jr jr_006_5552

    jr jr_006_5550

    jr jr_006_5556

    ld h, h
    ld e, $05
    ld bc, $2064
    dec b
    inc b
    ld h, h
    ld hl, $0105
    dec b
    adc b
    ld h, h
    ld [hl+], a
    dec b
    ld bc, $0166
    ld h, d
    pop hl
    ld d, h
    ld h, h
    inc e
    ld sp, hl
    ld bc, $881a
    ld h, h
    inc e
    ld sp, hl
    ld bc, $8605
    inc c
    ld e, e
    inc c
    ld e, a
    inc c
    ld e, e
    inc c
    ld e, a
    ld h, h
    rra
    ld sp, hl
    ld bc, $2064
    ld sp, hl
    inc b
    ld h, h
    ld hl, $01f9
    dec b
    adc b
    ld h, h
    ld [hl+], a
    ld sp, hl
    ld bc, $0e62
    ld d, l
    nop
    ld c, d
    inc c
    ld c, d
    jr @+$4c

    ld h, d
    scf
    ld d, l
    ld h, e
    ld [hl+], a
    ld h, h
    dec e
    nop
    ld [bc], a
    nop
    add [hl]
    nop
    adc d
    nop
    adc d

jr_006_554c:
    nop
    adc d
    nop
    adc d

jr_006_5550:
    nop
    adc d

jr_006_5552:
    nop
    adc c
    ld h, h
    dec e

jr_006_5556:
    nop
    ld [bc], a
    nop
    add [hl]
    ld h, d
    ld b, b
    ld d, l
    inc de
    ld e, a
    dec d
    ld e, [hl]
    rla
    ld e, a
    jr jr_006_55be

    dec d
    ld e, a
    rla
    ld e, [hl]
    add hl, de
    ld e, a
    ld a, [de]
    ld e, c
    dec d
    ld e, a
    rla
    ld e, [hl]
    add hl, de
    ld e, a
    ld a, [de]
    ld d, [hl]
    dec d
    ld e, a
    rla
    ld e, [hl]
    add hl, de
    ld e, a
    ld a, [de]
    ld d, [hl]
    inc de
    ld e, a
    dec d
    ld e, [hl]
    rla
    ld e, a
    jr jr_006_55db

    ld h, l
    jr jr_006_55e3

    inc e
    ld e, a
    jr jr_006_55e7

    inc de
    ld e, a
    ld de, $1a5b
    ld e, a
    nop
    adc e
    ld d, $5f
    rla
    ld e, e
    ld a, [de]
    ld e, a
    rla
    ld e, e
    inc de
    ld e, a
    db $10
    ld e, e
    jr jr_006_5601

    nop
    add h
    inc de
    ld e, h
    dec d
    ld e, l
    rla
    ld e, h
    jr jr_006_5607

    inc e
    ld e, a
    jr @+$5d

    inc de
    ld e, a
    ld de, $1a5b
    ld e, a
    nop
    adc e
    jr jr_006_5619

    rla
    ld e, e
    jr jr_006_561d

jr_006_55be:
    dec d
    ld e, e
    rla
    ld e, a
    jr jr_006_561c

    ld h, l
    jr jr_006_5622

    dec de
    ld e, a
    inc de
    ld e, a
    dec d
    ld e, [hl]
    rla
    ld e, a
    ld h, l
    inc de
    ld e, a
    dec d
    ld e, [hl]
    rla
    ld e, a
    jr jr_006_5631

    dec d
    ld e, a
    rla

jr_006_55db:
    ld e, [hl]
    add hl, de
    ld e, a
    ld a, [de]
    ld e, c
    dec d
    ld e, a
    rla

jr_006_55e3:
    ld e, [hl]
    add hl, de
    ld e, a
    ld a, [de]

jr_006_55e7:
    ld d, [hl]
    dec d
    ld e, a
    rla
    ld e, [hl]
    add hl, de
    ld e, a
    ld a, [de]
    ld d, [hl]
    rra
    ld e, a
    ld hl, $235e
    ld e, a
    inc h
    ld d, [hl]
    jr jr_006_5650

    nop
    adc b
    ld h, l
    inc de
    ld e, a
    inc e
    ld e, [hl]

jr_006_5601:
    jr jr_006_5662

    inc e
    ld e, a
    inc de
    ld e, [hl]

jr_006_5607:
    inc e
    ld e, a
    ld de, $1156
    ld e, a
    dec d
    ld e, [hl]
    jr @+$61

    inc de
    ld e, a
    ld a, [de]
    ld e, [hl]
    rla
    ld e, a
    ld a, [de]
    ld e, a

jr_006_5619:
    inc de
    ld e, [hl]
    ld a, [de]

jr_006_561c:
    ld e, a

jr_006_561d:
    inc c
    ld d, [hl]
    nop
    add h
    inc de

jr_006_5622:
    ld e, h
    dec d
    ld e, l
    rla
    ld e, h
    inc de
    ld e, a
    inc e
    ld e, [hl]
    jr jr_006_568c

    inc e
    ld e, a
    inc de
    ld e, [hl]

jr_006_5631:
    inc e
    ld e, a
    ld de, $1556
    ld e, a
    jr jr_006_5697

    dec e
    ld e, a
    inc de
    ld e, a
    ld a, [de]
    ld e, [hl]
    rla
    ld e, a
    ld a, [de]
    ld e, a
    inc de
    ld e, [hl]
    ld a, [de]
    ld e, a
    inc c
    ld d, [hl]
    nop
    add [hl]
    ld h, l
    dec d
    adc b
    dec d
    sub [hl]

jr_006_5650:
    dec d
    sub [hl]
    dec d
    adc b
    dec d
    sub [hl]
    dec d
    sub [hl]
    dec d
    adc d
    dec d
    adc b
    dec d
    sub [hl]
    dec d
    sub [hl]
    ld h, l
    ld h, a

jr_006_5662:
    rst $38
    ld h, h
    inc hl
    nop
    ld bc, $2564
    nop
    ld bc, $2664
    nop
    ld bc, $2564
    nop
    ld bc, $2764
    nop
    ld bc, $2864

jr_006_5679:
    nop
    ld bc, $2864
    inc c
    ld bc, $1a30
    ld h, h

jr_006_5682:
    add hl, hl
    nop
    ld bc, $2b64
    nop
    ld bc, $5228
    inc hl

jr_006_568c:
    ld d, d
    jr nz, @+$54

    inc e
    ld d, d
    rla
    ld d, d
    inc d
    ld d, d
    db $10
    ld d, d

jr_006_5697:
    dec bc
    ld d, d
    db $10
    ld e, b
    ld h, h
    dec hl
    nop
    ld bc, $aa28
    ld h, h
    inc l
    nop
    ld [$2c64], sp
    dec b
    ld [$2c64], sp
    rlca
    inc b
    ld h, h
    dec l
    nop
    ld [bc], a
    ld h, h
    dec l
    dec b
    ld [bc], a
    jr z, jr_006_5679

    daa
    jp nz, $c226

    dec h
    jp nz, $c224

    inc hl

jr_006_56c0:
    jp nz, $c222

    ld hl, $20c2
    jp nz, $c21f

    ld e, $c2
    dec e
    jp nz, $c21c

    dec de

Jump_006_56d0:
    jp nz, $c21a

    add hl, de
    jp nz, $c218

    rla
    jp nz, $c216

    dec d
    jp nz, $c214

    inc de
    jp nz, $c212

    ld de, $10c2
    ret z

    jr nz, @+$18

    inc e
    ld d, $20
    jr jr_006_5754

    ld bc, $6162
    ld d, [hl]
    nop
    adc d
    inc c
    adc d
    jr jr_006_5682

    ld h, d
    ld a, [c]
    ld d, [hl]
    ld h, h
    inc h
    nop
    ld bc, $2a64
    nop
    ld bc, $2e64
    db $f4
    inc b
    ld h, h
    ld l, $f9
    inc b
    inc e
    inc h
    rla
    inc h
    inc e
    inc h
    rla
    inc h
    db $10
    inc h
    rla
    inc h
    inc e
    inc h
    rla
    inc h
    inc e
    inc h
    rla
    inc h
    inc e
    inc h
    rla
    inc h
    db $10
    inc h
    rla
    inc h
    inc e
    inc h
    rla
    inc h
    db $10
    ld a, [hl+]
    ld h, d
    ei
    ld d, [hl]
    nop
    adc d
    inc c
    adc d
    jr jr_006_56c0

    inc h
    add [hl]
    ld h, d
    jr nc, jr_006_5792

    ld hl, $2315
    ld [de], a
    inc h
    dec d
    ld h, $12
    jr z, jr_006_575b

    dec l
    ld d, $29
    dec d
    jr z, jr_006_575d

    ld h, $15
    add hl, hl
    ld [de], a
    jr z, jr_006_5767

    inc hl
    ld d, $21

jr_006_5754:
    dec d
    inc hl
    ld [de], a
    inc h
    dec d
    ld h, $12

jr_006_575b:
    jr z, jr_006_5773

jr_006_575d:
    dec l
    ld d, $27
    jr jr_006_578a

    jr jr_006_5785

    dec d
    inc hl
    ld [de], a

jr_006_5767:
    inc h
    dec d
    ld h, $12
    jr z, jr_006_5783

    dec l
    ld d, $29
    dec d
    jr z, jr_006_5785

jr_006_5773:
    ld h, $15
    add hl, hl
    ld [de], a
    jr z, @+$18

    ld h, $16
    inc h
    dec d
    ld h, $12
    jr z, jr_006_5796

    add hl, hl
    ld [de], a

jr_006_5783:
    jr z, jr_006_579b

jr_006_5785:
    dec l
    ld d, $30
    jr @+$2e

jr_006_578a:
    jr jr_006_57f1

    add hl, hl
    dec e
    jr z, jr_006_57ad

    ld h, $1d

jr_006_5792:
    jr z, jr_006_57b1

    ld h, $1d

jr_006_5796:
    inc h
    dec e
    ld h, $1d
    inc h

jr_006_579b:
    dec e
    inc hl
    dec e
    inc h
    dec e
    inc hl
    dec e
    ld hl, $651d
    jr nz, jr_006_57b9

    ld a, [de]
    ld [de], a
    dec e
    ld [de], a
    jr nz, jr_006_57bf

jr_006_57ad:
    inc hl
    ld [de], a
    dec e
    ld [de], a

jr_006_57b1:
    jr nz, jr_006_57c5

    inc hl
    ld [de], a
    ld h, $12
    jr nz, @+$14

jr_006_57b9:
    inc hl
    ld [de], a
    ld h, $12
    add hl, hl
    ld [de], a

jr_006_57bf:
    inc hl
    ld [de], a
    ld h, $12
    add hl, hl
    ld [de], a

jr_006_57c5:
    jr z, jr_006_57e1

    ld h, l
    inc hl
    dec e
    ld hl, $201d
    dec e
    ld hl, $1f1d
    dec e
    dec e
    dec e
    rra
    dec e
    dec e
    dec e
    inc e
    dec e
    dec e
    dec e
    inc e
    dec e
    ld a, [de]
    dec e
    ld h, l

jr_006_57e1:
    ld a, [de]
    ld [de], a
    inc d
    ld [de], a
    rla
    ld [de], a
    ld a, [de]
    ld [de], a
    dec e
    ld [de], a
    rla
    ld [de], a
    ld a, [de]
    ld [de], a
    dec e
    ld [de], a

jr_006_57f1:
    jr nz, jr_006_5805

    ld a, [de]
    ld [de], a
    dec e
    ld [de], a
    jr nz, @+$14

    inc hl

Call_006_57fa:
    ld [de], a
    dec e
    ld [de], a
    jr nz, jr_006_5811

    inc hl
    ld [de], a
    ld h, l
    add hl, bc
    ld d, $28

jr_006_5805:
    ld d, [hl]
    ld c, $16
    add hl, hl
    ld d, [hl]
    ld [$2616], sp
    ld d, [hl]
    add hl, bc
    ld d, $24

jr_006_5811:
    ld d, [hl]
    dec b
    ld d, $21
    ld d, [hl]
    inc bc
    ld d, $24
    ld d, [hl]
    inc b
    ld d, $23
    ld d, [hl]
    inc hl
    ld d, [hl]
    nop
    add [hl]
    add hl, bc
    ld d, $28
    ld d, [hl]
    ld [bc], a
    ld d, $29
    ld d, [hl]
    dec bc
    ld d, $26
    ld d, [hl]
    inc c
    ld d, $28
    ld d, [hl]
    inc b
    ld d, $26
    ld d, [hl]
    inc b
    ld d, $23
    ld d, [hl]
    ld hl, $1556
    ld d, [hl]
    dec d
    inc d
    nop
    add a
    ld h, l
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [de], a
    dec b
    dec e
    rlca
    dec e
    add hl, bc
    dec e
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    ld [de], a

jr_006_5859:
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    ld [de], a
    ld h, l
    add hl, bc

jr_006_5863:
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc

jr_006_5869:
    ld [de], a
    ld h, l
    ld hl, $18c2
    jp nz, $c21c

    ld hl, $18c2
    jp nz, $c21c

    ld hl, $18c2
    jp nz, $c21f

    rla
    jp nz, $c21a

    rra
    jp nz, $c217

    ld a, [de]
    jp nz, $c21f

    rla
    jp nz, $c21d

    dec d
    jp nz, $c218

    dec e
    jp nz, $c215

    jr jr_006_5859

    dec e
    jp nz, $c215

    inc e
    jp nz, $c215

    jr jr_006_5863

    inc e
    jp nz, $c215

    jr jr_006_5869

    inc e
    jp nz, $c215

    ld h, l
    dec d
    ld [hl], $1c
    ld [hl], $21
    ld [hl], $15
    ld [hl], $1a
    ld [hl], $21
    ld [hl], $1c
    ld [hl], $20
    ld [hl], $15
    ld [hl], $1c
    ld [hl], $21
    ld [hl], $1c
    ld [hl], $11
    ld [hl], $18
    ld [hl], $1c
    ld [hl], $17
    ld [hl], $15
    ld [hl], $1c
    ld [hl], $21
    ld [hl], $15
    ld [hl], $1a
    ld [hl], $21
    ld [hl], $15
    ld [hl], $1c
    ld [hl], $15
    ld [hl], $1c
    ld [hl], $21
    ld [hl], $1c
    ld [hl], $1a

Call_006_58e5:
    ld [hl], $21
    ld [hl], $1c
    jr z, jr_006_5905

    ld h, $18
    ld h, $17
    ld h, $15
    ld h, $10
    jr z, jr_006_5911

    jr z, @+$17

    ld [hl], $15
    ld [hl], $17
    ld [hl], $18
    ld [hl], $1a
    ld [hl], $18
    ld [hl], $17
    ld [hl], $15

jr_006_5905:
    ld [hl], $14
    ld [hl], $11
    ld [hl], $10
    ld [hl], $0e
    ld [hl], $10
    inc [hl]
    rla

jr_006_5911:
    inc [hl]
    inc e
    inc [hl]
    rla
    inc [hl]
    db $10
    inc [hl]
    rla
    inc [hl]
    inc e
    inc [hl]
    rla
    inc [hl]
    db $10
    inc [hl]
    rla
    inc [hl]
    inc e
    inc [hl]
    rla
    inc [hl]
    db $10
    inc [hl]
    rla
    inc [hl]
    inc e
    inc [hl]
    rla
    inc [hl]
    ld hl, $1538
    jr c, jr_006_5998

    dec d
    ld [hl], $30
    ld [hl], $0e
    ld [hl], $26
    ld [hl], $14
    ld [hl], $2f
    ld [hl], $15
    ld [hl], $2d
    ld [hl], $11
    ld [hl], $29
    ld [hl], $0f
    ld [hl], $2d
    ld [hl], $10
    ld [hl], $2c
    ld [hl], $2c
    ld [hl], $00
    ld b, [hl]
    dec d
    ld [hl], $30
    ld [hl], $0e
    ld [hl], $26
    ld [hl], $17
    ld [hl], $2f
    ld [hl], $0c
    ld [hl], $30
    ld [hl], $10
    ld [hl], $2f
    ld [hl], $10
    ld [hl], $2c
    ld [hl], $28
    ld [hl], $15
    ld [hl], $15
    inc [hl]
    nop
    ld b, a
    ld h, $26
    ld h, $3d
    jr z, jr_006_59b6

    add hl, hl
    dec a
    jr z, @+$28

    inc [hl]
    ld h, $1c
    ld h, $17
    ld h, $10
    jr z, jr_006_59ac

    ld h, $26
    dec a
    jr z, @+$3f

    add hl, hl
    dec a
    jr z, @+$28

    inc [hl]
    ld h, $1c
    ld h, $17
    ld h, $10
    jr z, jr_006_59c5

jr_006_5998:
    ld h, $2d
    dec a
    ld l, $3d
    jr nc, jr_006_59dc

    ld l, $28
    dec l
    ld h, $2d
    dec a
    ld l, $3d
    jr nc, jr_006_59e6

    ld l, $28
    ld [hl-], a

jr_006_59ac:
    ld h, $32
    dec a
    inc sp
    dec a
    dec [hl]
    dec a
    inc sp
    jr z, jr_006_59e8

jr_006_59b6:
    ld h, $32
    dec a
    inc sp
    dec a
    dec [hl]
    dec a
    inc sp
    jr z, @+$36

    add hl, hl
    nop
    ld b, [hl]
    ld h, l
    dec d

jr_006_59c5:
    ld h, $21
    ld h, $15
    ld h, $21
    ld h, $65
    ld h, a
    rst $38
    ld h, h
    cpl
    inc c
    inc b
    ld h, h
    cpl
    ld [$6404], sp
    cpl
    inc c
    inc b
    ld h, h

jr_006_59dc:
    cpl
    ld [$6404], sp
    cpl
    inc c
    inc b
    ld h, h
    cpl
    dec c

jr_006_59e6:
    inc b
    ld a, [de]

jr_006_59e8:
    ld d, h
    ld hl, $2454
    ld d, h
    ld hl, $6454
    cpl
    rlca
    ld bc, $2f64
    inc c
    ld [bc], a
    ld a, [de]
    ld d, h
    ld hl, $2454
    ld d, h
    ld hl, $6454
    cpl
    rlca
    ld bc, $2f64
    inc c
    ld [bc], a
    ld h, h
    scf
    jr jr_006_5a11

    ld h, h
    scf
    add hl, de
    inc b
    ld h, h
    scf

jr_006_5a11:
    inc de
    inc b
    ld h, h
    scf
    jr jr_006_5a1b

    ld h, h
    ld [hl-], a
    jr jr_006_5a1f

jr_006_5a1b:
    ld h, h
    inc sp
    jr jr_006_5a29

jr_006_5a1f:
    ld h, [hl]
    ld bc, $cd62
    ld e, c
    ld h, h
    jr nc, jr_006_5a27

jr_006_5a27:
    inc b
    rlca

jr_006_5a29:
    ld a, [de]
    ld h, h
    dec [hl]
    nop
    ld [bc], a
    ld h, h
    dec [hl]
    ld bc, $6402
    dec [hl]
    ei
    ld [bc], a
    ld h, h
    dec [hl]
    nop
    ld [bc], a
    ld h, h
    dec [hl]
    dec b
    ld [bc], a
    ld h, h
    dec [hl]
    nop
    ld [bc], a
    ld h, h
    dec [hl]
    db $fc
    ld bc, $3564
    ei
    ld bc, $3564
    nop
    ld bc, $2462
    ld e, d
    ld h, h
    ld sp, $0100
    ld h, h
    ld [hl], $00
    ld bc, $5162
    ld e, d
    inc c
    adc d
    nop
    add [hl]
    ld h, d
    ld e, h
    ld e, d
    inc de
    call nz, $c41a
    dec de
    call nz, $c41a
    ld h, l
    inc de
    call nz, $c418
    dec de
    call nz, $c41a
    ld h, l
    inc de
    call nz, $c416
    ld a, [de]
    call nz, $c418
    ld h, l
    inc de
    call nz, $c41a
    dec de

jr_006_5a83:
    call nz, $c41a
    ld h, l
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    inc c
    adc d
    ld h, l
    rlca
    ld d, $07
    inc d
    rlca
    inc d
    rlca
    ld d, $07
    inc d
    rlca
    inc d
    ld h, l
    inc de
    cp c
    inc de
    ld b, [hl]
    inc de
    cp c
    inc de
    ld b, [hl]
    rrca
    cp c
    rrca
    ld b, [hl]
    rrca
    cp d
    inc de
    cp b
    ld d, $b6
    ld a, [de]
    or [hl]
    dec de

jr_006_5ab2:
    cp b
    ld a, [de]
    cp b
    ld e, $b8
    dec e
    or [hl]
    ld e, $b6
    dec de
    cp b
    ld d, $b8
    inc de
    cp b
    ld d, $b6
    rra
    or [hl]
    ld [hl+], a

jr_006_5ac6:
    cp b
    rra
    cp b
    jr nz, jr_006_5a83

    dec de
    or [hl]
    rla

jr_006_5ace:
    or [hl]
    inc d
    or [hl]
    ld d, $b6
    rla
    or [hl]
    inc d
    or [hl]
    ld a, [de]
    or [hl]
    ld e, $b6
    ld hl, $24b6
    or [hl]
    ld [hl+], a

jr_006_5ae0:
    or h
    ld hl, $1fb4
    cp b
    add hl, de

jr_006_5ae6:
    or [hl]
    ld a, [de]
    or [hl]
    ld e, $b6
    ld hl, $24b6
    or [hl]
    ld [hl+], a
    cp b
    inc de
    or a
    inc de
    or h
    ld h, l
    inc de
    cp d

jr_006_5af8:
    rra
    cp b
    jr nz, jr_006_5ab2

    rra
    or [hl]
    ld a, [de]
    cp b
    ld d, $b6
    inc de
    or [hl]
    jr @-$46

    ld a, [de]
    or [hl]
    dec de
    or [hl]
    jr jr_006_5ac6

    ld a, [de]
    cp b
    jr jr_006_5ac6

    ld a, [de]
    or [hl]
    dec d
    cp b
    ld d, $b6
    jr jr_006_5ace

    ld d, $b8
    dec d
    or [hl]
    ld d, $b6
    inc de
    cp d
    dec de
    cp b
    rra
    or [hl]
    dec de
    or [hl]
    jr jr_006_5ae0

    ld a, [de]
    or [hl]
    dec de
    or [hl]
    ld a, [de]
    cp b
    jr jr_006_5ae6

    ld a, [de]
    or [hl]
    rra
    cp b
    ld hl, $22b6
    ld h, $22
    cp b
    ld hl, $22b6
    or [hl]
    jr nz, jr_006_5af8

    ld e, $b8
    rra
    ld a, [hl+]
    ld h, l
    cp h
    ld c, b
    ld c, a
    ld c, c
    ld [$bc49], a
    ld c, e
    dec bc
    ld c, d
    push de
    ld c, e
    ld [hl], $4e
    ld a, e
    ld c, [hl]
    ld [hl], a
    ld c, a
    ld b, a
    ld c, [hl]
    ld e, h
    ld c, a
    ld h, l
    ld c, a
    ld l, [hl]
    ld c, a
    ld l, d
    ld c, [hl]
    ei

Jump_006_5b62:
    ld c, a
    ldh a, [$50]
    ld e, $50
    add hl, bc
    ld d, c
    and a
    ld d, b
    ld b, b
    ld d, c
    add e
    ld d, c
    jr c, jr_006_5bc3

    ld c, l
    ld d, d
    ld a, h
    ld d, d
    ld [hl], c
    ld d, e
    push hl
    ld d, e
    ret nz

    ld d, e
    ld h, b
    ld d, h
    ld e, l
    ld d, l
    ld c, h
    ld d, [hl]
    add [hl]
    ld d, l
    db $fd
    ld d, l
    push bc
    ld d, l
    ld h, e
    ld d, l
    ret nc

    ld d, l
    dec sp
    ld d, a
    xor h
    ld e, b
    adc h
    ld d, a
    and l
    ld d, a
    ret z

    ld d, a
    pop hl
    ld d, a
    ld [bc], a
    ld e, b
    inc sp
    ld e, c
    ld b, e
    ld e, b
    ld h, d
    ld e, b
    ld l, e
    ld e, b
    call nz, $6359
    ld e, d
    add a
    ld e, d
    sbc l
    ld e, d
    ld l, h
    ld e, d
    ld [hl], l
    ld e, d
    ld [hl], l
    ld e, d
    sub b
    ld e, d
    or $5a
    ld a, [hl]
    ld e, d

Jump_006_5bb5:
    ld a, $00
    ld [$dff1], a
    ld [$dff2], a
    ld [$dff4], a
    ld [$dff5], a

jr_006_5bc3:
    ld [$dff7], a
    ld [$dff8], a
    ld [$dffa], a
    ld [$dffb], a
    ld [$df89], a
    ld [$dfa1], a
    ld [$dfb9], a
    ld [$dfd1], a
    ld a, $ff
    ldh [rNR51], a
    ldh [rNR50], a
    ld a, $00
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR32], a
    ldh [rNR42], a
    ldh [rNR43], a
    ld de, $ff30
    ld hl, $5eec
    ld b, $10

jr_006_5bf5:
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    dec b
    jr nz, jr_006_5bf5

    ret


Jump_006_5bfd:
    ld hl, $5d13
    sla a
    add l
    ld l, a
    jr nc, jr_006_5c07

    inc h

jr_006_5c07:
    ld a, [hl]
    ld c, a
    inc hl
    ld a, [hl]
    ld b, a
    ld a, [bc]
    inc bc
    cp $01
    jr z, jr_006_5c31

    cp $02
    jr z, jr_006_5c48

    cp $03
    jr z, jr_006_5c5f

    ld a, [$df89]
    and $fe
    ld [$df89], a
    ld a, c
    ld [$dff1], a
    ld a, b
    ld [$dff2], a
    ld a, $02
    ld [$dff3], a
    jr jr_006_5c74

jr_006_5c31:
    ld a, [$dfa1]
    and $fe
    ld [$dfa1], a
    ld a, c
    ld [$dff4], a
    ld a, b
    ld [$dff5], a
    ld a, $02
    ld [$dff6], a
    jr jr_006_5c74

jr_006_5c48:
    ld a, [$dfb9]
    and $fe
    ld [$dfb9], a
    ld a, c
    ld [$dff7], a
    ld a, b
    ld [$dff8], a
    ld a, $02
    ld [$dff9], a
    jr jr_006_5c74

jr_006_5c5f:
    ld a, [$dfd1]
    and $fe
    ld [$dfd1], a
    ld a, c
    ld [$dffa], a
    ld a, b
    ld [$dffb], a
    ld a, $02
    ld [$dffc], a

Call_006_5c74:
Jump_006_5c74:
jr_006_5c74:
    ld hl, $df89
    ld a, l
    ld [$dffd], a
    ld a, h
    ld [$dffe], a
    ld hl, $dff1
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_5c8f

    ld de, $ff11
    call Call_006_5ce1

jr_006_5c8f:
    ld hl, $dfa1
    ld a, l
    ld [$dffd], a
    ld a, h
    ld [$dffe], a
    ld hl, $dff4
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_5caa

    ld de, $ff16
    call Call_006_5ce1

jr_006_5caa:
    ld hl, $dfb9
    ld a, l
    ld [$dffd], a
    ld a, h
    ld [$dffe], a
    ld hl, $dff7
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_5cc5

    ld de, $ff1b
    call Call_006_5ce1

jr_006_5cc5:
    ld hl, $dfd1
    ld a, l
    ld [$dffd], a
    ld a, h
    ld [$dffe], a
    ld hl, $dffa
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_5ce0

    ld de, $ff20
    call Call_006_5ce1

jr_006_5ce0:
    ret


Call_006_5ce1:
    inc hl
    dec [hl]
    jr z, jr_006_5ce6

    ret


jr_006_5ce6:
    ld a, [bc]
    cp $ff
    jr z, jr_006_5d02

    ld [hl], a
    inc bc
    ld a, [bc]
    ld [de], a
    inc bc
    inc de
    ld a, [bc]
    ld [de], a
    inc bc
    inc de
    inc de
    ld a, [bc]
    ld [de], a
    inc bc
    dec de
    ld a, [bc]
    ld [de], a
    inc bc
    dec hl
    ld [hl], b
    dec hl
    ld [hl], c
    ret


jr_006_5d02:
    ld a, $00
    dec hl
    ld [hl], a
    dec hl
    ld [hl], a
    ld hl, $dffd
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    or $01
    ld [bc], a
    ret


    add hl, sp
    ld e, l
    ld c, d
    ld e, l
    ld d, [hl]
    ld e, l
    ld h, d
    ld e, l
    ld a, b
    ld e, l
    adc c
    ld e, l
    or e
    ld e, l
    call nz, $ee5d
    ld e, l
    ld a, [$155d]
    ld e, [hl]
    ccf
    ld e, [hl]
    ld h, h
    ld e, [hl]
    adc c
    ld e, [hl]
    db $db
    ld e, [hl]
    dec d
    ld e, [hl]
    ccf
    ld e, [hl]
    ld d, [hl]
    ld e, l
    ld h, d
    ld e, l
    ld bc, $8003
    pop af
    add d
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    jr z, @-$7e

    ld a, [c]
    add d
    nop
    rst $38
    inc bc
    ld h, h
    nop
    push af
    add b
    ld b, [hl]
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    ld [hl-], a
    nop
    ld a, [c]
    add b
    ld d, h
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    ld [bc], a
    nop
    pop af
    add b
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    pop af
    add b
    ld b, a
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    ld [bc], a
    nop
    add hl, bc
    add b
    ld b, c
    inc bc
    nop
    pop af
    add b
    ld b, c
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    ld [$a800], sp
    add b
    ld b, d
    ld [bc], a
    nop
    add sp, $00
    ld b, e
    ld [bc], a
    nop
    ret c

    nop
    ld b, d
    ld [bc], a
    nop
    ret z

    nop
    ld b, d
    ld [bc], a
    nop
    cp b
    nop
    ld b, e
    ld [bc], a
    nop
    xor b
    nop
    ld b, e
    ld a, [bc]
    nop
    and c
    add b
    ld b, h
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    dec b
    nop

jr_006_5db6:
    add hl, de
    add b
    ld h, $0a
    nop
    pop af
    add b
    dec h
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    ld bc, $f000
    add b
    inc [hl]
    ld bc, $b000
    add b
    ld [hl-], a
    ld bc, $e000
    add b
    dec [hl]
    ld bc, $a000
    add b
    ld [hl-], a
    ld bc, $d000
    add b
    ld [hl], $01
    nop
    sub b
    add b
    ld [hl-], a
    inc c
    nop
    or c
    add b
    inc [hl]
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    ld [bc], a
    nop
    pop af
    add b
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    ld b, e
    rst $38
    inc bc
    ld [bc], a
    nop
    ld a, [c]
    add b
    ld b, d
    inc bc
    nop
    ld a, [c]
    add b
    ld b, e
    inc b
    nop
    nop
    nop
    ld b, h
    ld e, $00
    ld a, [c]
    add b
    ld b, a
    ld bc, $0000
    nop
    ld b, l
    rst $38
    ld bc, $8004
    pop af
    add a
    or c
    inc b
    add b
    pop af
    add a
    cp d
    inc b
    add b
    pop af
    add a
    jp nz, $8004

    pop af
    add a
    call z, $8004
    pop af
    add a
    jp nc, $8004

    pop af
    add a
    rst $10
    jr z, jr_006_5db6

    di
    add a
    reti


    ld bc, $0000
    nop
    nop
    rst $38
    ld bc, $8003
    pop af
    add a
    inc d
    inc bc
    add b
    pop af
    add a
    adc d
    inc bc
    add b
    pop af
    add a
    push bc
    inc bc
    add b
    pop af
    add a
    or c
    inc bc
    add b
    pop af
    add a
    ld h, e
    ld [$f180], sp
    add a
    inc d
    ld bc, $0000
    nop
    nop
    rst $38
    ld bc, $8002
    pop af
    add a
    reti


    ld [bc], a
    add b
    pop af
    add a
    db $dd
    ld [bc], a
    add b
    pop af
    add a
    pop hl
    ld [bc], a
    add b
    pop af
    add a
    reti


    ld [bc], a
    add b
    pop af
    add a
    call z, $8002
    pop af
    add a
    jp nz, $8002

    pop af
    add a
    or c
    rst $38
    ld bc, $8002
    ld hl, sp-$7c
    jr z, jr_006_5e93

    add b
    ld hl, sp-$7a

jr_006_5e93:
    ld [hl-], a
    inc bc
    add b
    ret z

    add [hl]
    inc a
    inc bc
    add b
    cp b
    add [hl]
    ld b, [hl]
    inc bc
    add b
    xor b
    add [hl]
    ld d, b
    inc bc
    add b
    sbc b
    add [hl]
    ld e, d
    inc bc
    add b
    add b
    add [hl]
    ld h, h
    inc bc
    add b
    add b
    add [hl]
    ld l, [hl]
    inc bc
    add b
    add b
    add [hl]
    ld a, b
    inc bc
    add b
    add b
    add [hl]
    add d
    inc bc
    add b
    add b
    add [hl]
    adc h
    inc bc
    add b
    add b
    add [hl]
    sub [hl]
    inc bc
    add b
    add b
    add [hl]
    and b
    inc bc
    add b
    add b
    add [hl]
    xor d
    inc bc
    add b
    add b

jr_006_5ed3:
    add [hl]
    or h
    ld bc, $0000
    nop
    nop
    rst $38
    nop
    inc bc
    ld b, b
    pop af
    add d
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    jr z, jr_006_5f28

    ld a, [c]
    add d
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    and b
    ld [hl], b

jr_006_5f00:
    ld c, b
    jr z, @+$03

    ld b, $82
    inc hl
    ld de, $8205
    or b
    ret z

    ld e, h
    ld h, [hl]
    cpl
    inc sp
    sub a
    reti


    db $eb
    db $f4
    ld sp, hl
    db $fd
    rst $38
    dec b
    ld a, a
    add $a3
    ld [hl], c
    ret z

    or h
    ld a, b
    rst $38
    rra
    sub b
    push bc
    db $e3
    sub d
    ld c, c
    dec hl
    inc a
    sbc [hl]

jr_006_5f28:
    ldh a, [$58]
    inc e
    ld a, [bc]
    inc bc
    add c
    ld b, d
    ld [hl], c
    jr z, jr_006_5f00

    ld h, l
    add hl, sp
    call c, Call_000_37af
    sub e
    push hl
    pop af
    scf
    sbc h
    adc $27
    ld [hl], e
    xor b
    and h
    ld c, d
    ld hl, $060e
    ld [bc], a
    jp nz, Jump_006_51c1

    jr jr_006_5ed3

    add d
    ld b, c
    sub d
    rst $00
    nop
    ld de, $d088
    ld [bc], a
    ld [hl], l
    ld d, b
    sbc [hl]
    ld a, $26
    or h
    and a
    ei
    ld sp, hl
    db $fc
    nop
    xor h
    ld d, e
    and [hl]
    ld [hl], e
    add hl, de
    ld a, h
    or [hl]
    ld d, [hl]
    ldh [$50], a
    jr c, jr_006_5f77

    add hl, bc
    inc b
    add d
    ld bc, $4000
    jr nz, jr_006_5f7b

    inc b
    ld bc, $8000

jr_006_5f77:
    inc a
    rra
    ld l, l
    or l

jr_006_5f7b:
    jp c, $f76d

    ld de, $a605
    rst $08
    ld l, c
    or l
    db $db
    ld l, a
    ld d, $ab
    ld h, l
    cp d
    ldh [$1f], a
    db $10
    rrca
    ret z

    rlca
    ei
    and [hl]
    rlca
    ld b, $7f
    ld b, b
    ld d, e
    ld l, c
    sub h
    call z, $1356
    inc b
    db $10
    rrca
    add d
    jr nc, jr_006_5fba

    inc l
    ld h, $33
    rla
    sbc b
    set 3, [hl]
    jr jr_006_5fad

    rlca
    nop

jr_006_5fad:
    ld b, c
    ldh [rIF], a
    call z, $eebf
    add c
    dec bc
    sub c
    inc bc
    scf
    sbc l
    rst $08

jr_006_5fba:
    add sp, $73
    ld sp, hl
    jp nc, $0303

    ld d, c
    sbc [hl]
    ld a, b
    ld h, e
    adc a
    ld sp, hl
    nop
    cp $93
    ld c, l
    sub a
    call $f13f
    db $e3
    db $fc
    adc [hl]
    and $9b
    xor e
    ld a, b
    ld l, e
    ld e, b
    inc e
    ld e, $1d
    ld a, [c]
    db $f4
    db $10
    db $e3
    rst $18
    or h
    add d
    ld h, c
    ld hl, $81fc
    or a
    cp e
    ld l, c
    db $ed
    inc b
    inc bc
    ld bc, $f841
    inc b
    push hl
    ld e, e
    ld [hl], h
    add d
    pop bc
    ld d, e
    db $fd
    ld bc, $bbd1
    push af
    dec l
    ld l, c
    add h
    add d
    db $fd
    nop
    ld a, a

Call_006_6001:
    jr nc, @+$11

    call nz, $f001
    rlca
    xor h
    ld a, a
    xor $cb
    ld l, b
    or a
    ld sp, hl
    db $76
    rlca
    ccf
    ldh [$7f], a
    nop
    ld a, l
    db $fd
    rst $18
    and d

jr_006_6018:
    inc bc
    db $ec
    rlca
    db $76
    rrca
    nop
    jr nz, jr_006_6018

    ld [bc], a
    jr nz, jr_006_6046

    ldh [rDIV], a
    ccf
    nop
    rlca
    ld h, b
    rst $38
    ld bc, $88cf
    jr z, jr_006_6033

    add c
    ldh [$97], a
    ld h, d

jr_006_6033:
    ld c, $76
    dec e
    and l
    db $fd
    ld l, l
    ld a, [bc]
    ld [bc], a
    ld bc, $d021
    ld e, h
    ld a, [de]
    ld d, a
    ld c, c
    ld a, h
    add [hl]
    ld b, c
    add b

jr_006_6046:
    ld b, b
    sub h
    ld [hl+], a
    dec b
    ld b, c

jr_006_604b:
    jr nz, jr_006_6077

    rlca
    ld [hl+], a
    add c
    ld d, h
    ld [hl], $8a
    jp z, $8e21

    ld l, $05

jr_006_6058:
    ret nz

    or b
    ld d, b
    ld [$068a], sp
    and c
    ld [hl], b
    push de
    dec l

Call_006_6062:
    and d
    ret c

    cp h
    ld h, e
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    ld [bc], a
    dec b
    inc b
    ld b, $03
    inc b
    rlca

jr_006_6077:
    ld [$0904], sp

jr_006_607a:
    ld a, [bc]
    dec bc
    inc c
    dec c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld de, $1514
    ld d, $0c
    dec c
    rla
    jr jr_006_609b

    dec c
    inc c
    dec c
    add hl, de
    ld a, [de]
    inc c
    dec c
    dec de
    inc e
    dec e
    ld e, $1f

jr_006_609b:
    ld e, $1e
    jr nz, jr_006_60bd

    ld hl, $2322
    inc h
    dec h
    nop
    add b
    and b
    ld d, b
    ld c, b
    inc e
    ld a, [de]
    dec bc
    ld [$c283], sp
    and c
    jr nc, jr_006_607a

    ld e, h
    jr c, @+$08

    inc b
    adc b
    ld b, h
    and d
    ld sp, $9c48
    ld e, d

jr_006_60bd:
    dec hl
    jr jr_006_604b

    add $a3
    ld sp, $68c8
    ld d, $3f
    jr nz, jr_006_6058

    add c
    add b
    ld a, [c]
    add hl, de
    inc l
    adc [hl]
    ld b, c
    dec b
    sub d
    add c
    ld h, e
    jp nc, $fc78

    ld l, [hl]
    ld d, l
    rra
    inc b
    ld [bc], a
    ld h, [hl]
    inc de
    add hl, de
    sbc h
    cp d
    add hl, hl
    ld a, [hl+]
    sub a
    call z, Call_000_10a5
    add sp, $6c
    ld a, d
    ld h, c
    ccf
    sbc a
    ret z

    ld h, e
    ld [hl], h
    ld c, b
    db $e4
    jp nc, $055e

    and h
    ld c, a
    and c
    jp nc, $141a

    jp nc, Jump_006_4c81

    and h
    rst $00
    add hl, hl
    inc de
    ld a, b
    cp l
    ld a, $9f
    ld d, h
    sbc [hl]
    ld b, b
    xor d
    push af
    ld a, c
    ld c, l
    ld [hl], d
    ld e, e
    ld e, h
    xor c
    ld b, h
    dec h
    ld d, [hl]
    ld a, [bc]
    call nz, Call_006_4be2
    add hl, bc
    sbc l
    ret c

    ld l, e
    sub [hl]
    xor c
    ld d, l
    ld l, [hl]
    ld h, c
    dec l
    xor e
    ld e, d
    db $e3
    ldh [$a0], a
    ld e, l
    adc $3f
    ld [bc], a
    or c
    call z, $b52d
    jp z, $84f4

    jr jr_006_6141

    xor [hl]
    add b
    xor a
    nop
    jr z, @-$79

    ld a, [$659f]
    add d
    call nz, Call_006_58e5

jr_006_6141:
    ld a, [bc]
    cp l
    db $eb
    dec c
    add l
    or e
    push de
    and $58
    xor b
    and h
    inc d
    dec e
    sbc b
    call z, Call_006_67c2
    sub d
    cp h
    ld e, $77
    ld hl, $ad42
    sbc $72
    ret nc

    ld l, b
    sbc h
    ld h, $2f
    sbc c
    adc b
    inc bc
    or l
    ld e, d
    or b
    ld h, $8e
    scf
    xor c
    ld [bc], a
    ld l, e
    ld [hl], d
    cp d

jr_006_616e:
    inc c
    adc h
    ld c, [hl]
    ld [bc], a
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_006_617a

    ld a, [hl]

jr_006_617a:
    ret nz

    inc l
    ld l, $17
    rst $20
    rst $30
    jp hl


    push af
    or $7b
    ld a, e
    dec e
    and c
    call $d3a2
    db $f4
    ld b, $0a
    ld b, $be
    ld e, a
    ld c, d
    push af
    ld [hl], c
    inc [hl]
    sbc b
    sbc l
    ld c, [hl]
    rrca
    ld b, a
    add a
    db $d3
    ld [c], a
    ret nc

    add sp, -$17
    inc [hl]
    xor l
    adc $ea
    di
    ld a, d
    ld a, b
    cp l
    inc c
    ld hl, $e12f
    ld c, $d7
    ld h, e
    ld [hl], l
    cp b
    cp l
    ld e, [hl]
    ld c, c
    ld e, a
    rst $28
    rst $20
    db $eb
    ld sp, hl
    db $f4
    db $fd
    adc e
    cp [hl]
    adc a
    rrca
    ld [hl], e
    xor e
    xor b
    ret nc

    db $d3
    jr z, jr_006_616e

    add h
    adc h
    ld a, [c]
    ld h, d
    ld l, b
    ld a, [hl-]
    or h
    dec e
    xor e
    push de
    and l
    ld a, [c]
    db $ed
    ld c, h
    sbc [hl]
    ld c, l
    ld b, a
    and e
    ld e, a
    ldh [rNR10], a
    inc de
    db $f4
    ld l, $fa
    ld [hl], h
    dec e
    jp c, $f506

    ld bc, $827d
    ccf
    ld b, a
    rra
    ret nc

    daa
    rst $20
    ld hl, sp+$01
    cp $7c
    rla
    inc a
    ld c, d
    xor $85
    ld e, e
    ld h, h
    xor h
    or h
    ld d, l
    ld a, [de]
    ld a, [bc]
    ld c, l
    dec b
    ld [hl-], a
    sub b
    sbc h
    ld c, h
    ld a, [hl]
    ld a, $1e
    rst $28
    add a
    ld b, e
    db $dd
    and b
    rst $28
    ld d, b
    scf
    ret z

    dec bc
    db $e4
    ld bc, $0af4
    cp $03
    add c
    rst $18
    ldh [rSVBK], a
    ld a, e
    call c, $efbe
    rra
    sub a
    rst $08
    db $eb
    rst $30
    ld sp, hl
    db $fd
    db $fc
    ld a, a
    ld bc, $1f3f
    and b
    rla
    db $d3
    ret z

    ld a, [hl-]
    dec d
    dec c
    inc b
    or l
    ld a, [de]
    and b
    ld l, b
    ld d, l
    ld a, [$7d7e]
    sbc a
    ld e, [hl]
    rst $00
    or a
    ld l, c
    db $dd
    or h
    ld l, [hl]
    ld e, a
    sub a
    call c, $fb03
    ld [hl], d
    ld a, h
    ld a, [hl-]
    xor a
    ld d, $b7
    adc e
    adc d
    pop hl
    ld h, e
    ld a, $b2
    dec c
    ld b, a
    add e
    ld l, e
    adc c
    or h
    sbc b
    db $ec
    ld h, [hl]
    ld a, e
    add hl, sp
    cp [hl]
    sbc $6e
    or a
    dec de
    ld l, l
    and [hl]

jr_006_6264:
    xor e
    ld d, c
    sub d
    ret z

    ld l, b
    daa
    pop hl
    db $dd
    ld a, [c]
    xor [hl]
    ld e, d
    rla
    adc l
    adc d
    and $61
    dec a
    ld a, [de]
    adc [hl]
    ld b, $72
    sub c
    ld l, b
    jr nc, @-$36

    ld b, h
    ld d, b
    jr nz, @+$2e

    inc d
    rla
    dec bc
    inc bc
    pop bc
    pop bc
    ld a, [c]
    pop af
    jp hl


    or e
    ret


    ld l, c
    ld [hl], b
    sbc d
    cp b
    dec hl
    scf
    ld b, l
    and d
    ld hl, sp+$39
    ccf
    rst $00
    add e
    ld hl, sp+$00
    jr nz, jr_006_6264

    db $d3
    inc b
    add b
    rra
    ret z

    dec b
    or c
    and d
    ld bc, $830f
    ldh [rP1], a
    ld [bc], a
    ld hl, $0040
    pop bc
    cpl
    adc [hl]
    inc bc
    ld a, h
    ldh a, [$33]
    add $81
    ld e, h
    ld h, h
    ld [de], a
    rst $08
    inc sp
    ld d, b
    ld [$8b32], a
    ld d, d
    ld d, h
    adc b
    jr nz, jr_006_62d1

    add c
    nop
    ld l, b
    jr z, @+$05

    add e
    ld b, b
    jr jr_006_6306

    ld hl, $0032

jr_006_62d1:
    add b
    ld b, b
    sub [hl]
    ldh [$84], a
    cp $24
    ld b, a
    pop hl
    inc h
    cp [hl]
    add hl, hl
    ld c, l
    pop hl
    ld c, h
    ld l, [hl]
    ld a, [hl+]
    ld c, e
    ld h, c
    ld e, h
    ld e, b
    ld h, $89
    add b
    ret c

    inc [hl]
    ld a, [de]
    sub h
    add e
    ld b, h
    and a
    add hl, hl
    ld e, b
    ld [bc], a
    ld a, h

jr_006_62f4:
    sbc l

jr_006_62f5:
    rrca
    add e
    call nz, Call_006_7ff0
    rra
    add e
    ldh a, [$fc]
    rra
    rlca
    ret nz

    and b
    jr z, @+$17

    dec b
    ld h, l

jr_006_6306:
    xor c
    ld [hl], b
    ld a, [hl]
    rra
    dec d
    jp $7654


    ld a, [hl-]
    adc e
    or d
    call nc, $169d
    add h
    ld [c], a
    inc [hl]
    add a
    ld de, $00c4
    xor b
    ld [hl-], a
    rra
    ld b, a
    ld d, e
    jr z, jr_006_62f4

    cpl
    ld c, e
    ld d, c
    ld l, b
    ld d, d
    daa
    ld c, c
    ld d, [hl]
    xor c
    xor b
    add e
    jr nz, jr_006_62f5

    add c
    or b
    ld a, $87
    db $d3
    call nc, Call_000_3a7b
    add a
    ld h, e
    ld d, h
    ld l, l
    sbc [hl]
    pop bc
    ld d, d
    ld l, b
    sub d
    scf
    ld b, l
    ld d, c
    add sp, -$4e
    cpl
    ld c, l
    ld d, c
    ld l, b
    ld h, d
    ld h, l
    ld a, [bc]
    and c
    ld l, h
    db $dd
    ld l, a
    ld b, b
    nop
    inc b
    ld bc, $a940
    or h
    ld [$2081], sp
    ld e, h
    and a
    add hl, hl
    ld e, h
    dec e
    rst $08
    jp nc, $b9bc

    rla
    rst $00
    ld d, d
    db $ec
    add sp, $1d
    ld c, l
    ld h, e
    db $fc
    rst $30
    ccf
    adc a

jr_006_636f:
    ld h, e
    db $f4
    push af
    ld l, c
    adc a
    jp $f8d0


    inc a
    rrca
    ret nz

    db $10
    ld b, $3e
    adc h
    ld [c], a
    inc a
    rst $10
    dec d
    ret z

    or d

jr_006_6384:
    inc l
    ld d, l
    dec d
    ld c, b
    and d
    ld a, [hl+]
    call nz, $acb1
    ld c, b
    inc h
    ld b, c
    cpl
    sbc b
    and [hl]
    jr nz, jr_006_6384

    inc a
    rlca
    or $70
    cp a
    db $10
    inc b
    nop
    ld a, h
    db $10
    dec c
    jp nz, $a0f0

    jr jr_006_63c1

    inc b
    inc bc
    ld b, b
    add sp, $3b
    ld c, a
    ld d, e
    db $fc
    ld a, [c]
    rra
    ld b, a
    dec h
    cp b
    rst $38
    ld e, e
    add h
    inc de
    adc h
    and d
    db $10
    ld c, d
    dec hl
    or b
    ld [hl+], a
    dec h
    add hl, bc
    ld b, d
    adc b

jr_006_63c1:
    ld a, $0c
    ld b, e
    ret nc

    adc $f6
    dec c
    add e
    sub b
    db $fc
    jr c, jr_006_63dc

    ld b, e
    jp hl


    ld e, d
    ld e, b
    rrca
    add d
    and b
    ld d, b
    ld [$0102], sp
    ld c, d
    cp l
    ld l, a
    cp c

jr_006_63dc:
    xor $8b
    and e
    ld [$0000], sp
    ld b, d
    jr c, jr_006_636f

    ld bc, $a208
    inc l
    dec b
    ld [hl+], a
    ld b, l
    ld hl, $8a4c
    ccf
    add b
    inc hl
    db $ec
    db $fd
    ld bc, $6040
    adc h
    jr nz, jr_006_63fa

jr_006_63fa:
    add d
    ld de, $55dc
    scf
    adc d
    add c

jr_006_6401:
    ret c

    xor b
    ld a, $0a
    sub c
    ld b, h
    ld hl, $0508
    inc bc
    db $fc
    rst $18
    jp $a330


    db $fc

jr_006_6411:
    sbc [hl]
    inc d
    dec c
    ld h, c
    ld h, b
    ld d, $26
    ld c, $c3
    ret z

    ld e, $38
    adc a
    ld b, b
    jr nc, jr_006_6411

    inc a
    ld c, $03
    add e
    add hl, bc
    ld bc, $ec30
    ld b, d
    add $c4
    ld b, l
    ld de, $8a44
    jp nz, $0041

    ld b, b
    add hl, sp
    ld a, [bc]
    ld b, c
    nop
    and a
    ld d, c
    ld a, [bc]
    ld b, h
    ld hl, $2128
    ld a, $ca
    and c
    ld b, h
    jr nz, jr_006_644d

    dec b
    inc e
    cp a
    ld sp, $8ec2
    ld a, [c]
    sub h

jr_006_644d:
    ld c, d
    ld hl, $4108
    jr z, @+$01

    ld e, $f6
    dec bc
    and d
    sbc h
    nop
    ret nz

    db $10
    jr jr_006_645f

    inc bc
    add b

jr_006_645f:
    ld [hl], b
    ld l, h
    ld [$010c], sp
    ld d, c
    or h
    add hl, hl
    jr nc, jr_006_646d

    call Call_006_6eb3
    nop

jr_006_646d:
    ret nz

    ret nc

    db $10
    dec de
    ld [bc], a
    add e
    nop
    ld c, h
    ld h, e
    ld [$214d], sp
    ld b, d
    jr z, jr_006_6401

    ld c, b
    ld [bc], a
    ld h, b
    add hl, de
    ld [hl+], a
    ld c, c
    ld hl, $f50c
    add hl, bc
    add h
    or d
    db $f4
    rst $30
    ld h, $cc
    inc hl
    ret nz

    ld [hl], d
    ld [hl+], a
    ld bc, $98c2
    xor a
    inc c
    pop bc
    ld [c], a
    ld c, h
    dec b
    inc bc
    add b
    or b
    inc [hl]
    rla
    ld b, $c2
    pop af
    call c, Call_000_1b5e
    ld c, e
    db $d3
    ld a, b
    ld a, a
    cpl
    adc a
    pop af
    ld hl, sp-$11
    dec sp
    adc e
    ld a, [c]
    ld hl, sp+$5b
    ld d, $82
    ldh a, [$dc]
    ld e, a
    dec de
    set 2, e
    ld [hl], h
    ld a, [hl]
    db $eb
    ld b, a

jr_006_64be:
    ei
    and b
    rst $18
    ld c, h
    call z, $b400
    ld l, $25
    ret


    ld h, e
    or h
    xor $3d
    ld c, a
    ld h, c
    db $e4
    ld a, d
    ld c, a
    add h
    dec h
    inc b
    inc bc
    dec a
    ld c, $e1
    add sp, -$4a
    cpl
    ld b, a
    or e
    ld hl, sp+$7d
    db $eb
    adc a
    ld a, d
    sub h
    ld a, l
    ld b, l
    ld b, h
    jr nc, jr_006_6524

    ld c, [hl]
    inc b
    ld b, e
    add c
    sub h
    push af
    inc sp
    rlca
    add e
    inc h
    and b
    inc e
    dec c
    ld [bc], a
    ret nz

    add sp, $36
    rrca
    ld b, e
    or b
    ld a, [$8b3d]
    jp nc, Jump_006_7eec

    or $0f
    db $eb
    and e
    dec de
    ld b, l
    db $e3
    ld b, e
    nop
    add b
    jr @+$06

    ld bc, $e0c0
    ld [hl], $01
    nop
    jr nc, jr_006_64be

    dec l
    adc c
    ld b, b
    inc c
    ld [hl-], a
    inc b
    ld b, b
    db $10
    ld b, d
    sbc d
    ld b, $49
    add d
    ld b, h

jr_006_6524:
    ld c, c
    jr nc, @-$74

    pop af
    sub d
    ld [hl], h
    dec sp
    call $eb9f
    db $fc
    jr nc, jr_006_653c

    nop
    add b
    ret c

    inc d
    nop
    jp $c620


    ld hl, $b004

jr_006_653c:
    add hl, hl
    ld b, $a6
    ret nz

    ld [hl], b
    db $10
    rra
    inc b
    rst $00
    pop hl
    dec a
    ld l, [hl]
    ld bc, $40c0
    ld a, h
    ld [de], a
    rra
    ld b, h
    jp Jump_006_52f6


    ld c, a
    ld d, e
    rst $38
    dec a
    ld b, $a6
    ret nz

    ld [hl], b
    db $10
    rra
    inc b
    rst $00
    pop de
    inc [hl]
    ld a, [$800e]
    ld [hl], b
    db $10
    ld e, $04
    ld b, a
    pop de
    jr c, @+$01

    rrca
    adc h
    db $d3
    ld sp, $4821
    jp nc, $d153

    jr z, jr_006_65c0

    sub d
    call nz, Call_000_30b9
    rra
    call nz, $c922
    inc [hl]
    ld c, l
    sub e
    add h
    ld [$4f61], a
    ld c, a
    and l
    ld bc, $0f17
    call nz, Call_006_6001
    and b
    ld b, e
    db $10
    db $e4
    ld b, c
    ld [de], a
    ld b, l
    dec b
    and e
    ldh a, [rSC]
    ld [hl-], a
    sub c
    and h
    ld [hl], c
    ld e, $48
    ld [de], a
    inc h
    sub b
    ld a, h
    rrca
    call nz, Call_006_6d01
    dec bc
    ld b, e
    ld d, b
    db $f4
    ld b, l
    inc de
    rst $30
    dec b
    and e
    ldh a, [rSC]
    ld b, $80
    ld d, h
    ld l, l
    dec e
    ld b, a
    jp nc, $8d14

    dec h
    jr c, @+$04

    ld bc, $88e0

jr_006_65c0:
    cpl
    xor [hl]
    ld h, c
    pop af
    nop

jr_006_65c5:
    ld a, l
    sbc [hl]
    sbc $c7
    ld h, a
    jp hl


    push af
    or h
    ld e, d
    nop
    ld b, d
    and c
    ld l, b
    inc b
    inc bc
    add b
    ld b, b
    cp b
    ld b, h
    rrca
    add [hl]
    ld b, a
    di
    ld [c], a
    ret nc

    add sp, -$17
    inc [hl]
    xor l
    adc $ea
    pop af
    ld a, d
    ld a, b
    cp h
    cp a
    ccf
    sub b
    sub [hl]
    ld c, e
    or $03
    or l
    ret c

    db $dd
    ld l, [hl]
    cpl
    ld d, a
    add a
    db $d3
    db $e3
    push af
    ld hl, sp-$07
    ld a, l
    ld [hl-], a
    sbc c
    xor a
    ret nc

    inc e
    dec a
    ldh a, [rOBP0]
    ld e, a
    inc e
    sub l
    and $c8
    db $fc
    add h
    add h
    cp a

jr_006_660d:
    sub d
    jp nz, $90e1

    pop hl

jr_006_6612:
    inc bc
    pop hl
    sub b
    cp $79
    ccf
    ret nz

    ld a, [bc]
    or l
    ld e, c
    ld d, h
    xor e
    ld c, l
    ld a, [hl+]
    sub a
    ld d, l
    ld l, d
    ld [hl-], a
    ld c, c
    ld d, l
    ld l, a
    ld c, [hl]
    inc h
    cp a
    rst $18
    rst $28
    ld a, d
    db $db
    db $dd
    sub $f7
    xor a
    rst $10
    db $db
    xor [hl]
    or a
    db $db
    ld [hl], l
    ld a, [hl-]
    xor e
    dec a
    sub a
    ld d, h
    ld l, b
    ld d, c
    ld sp, $ca15
    and [hl]
    jr nz, jr_006_65c5

    adc b
    ld l, b
    ld h, $11
    dec c
    add $c5
    ld d, e
    ld sp, $0c6e
    inc d
    inc de
    dec c
    inc b
    add d
    ld hl, $1890
    jr nz, @+$12

    ld [$003c], sp
    inc d
    ld b, $0a
    inc bc
    rlca
    ld [bc], a
    inc bc
    ld b, c
    ret nc

    db $ed
    ld a, d
    cp a
    sbc $47
    db $d3
    sub l
    ld l, $16
    ld b, c
    ld [hl], c
    xor b
    adc b
    ld a, [hl+]
    inc l
    ret c

    adc c
    jr z, jr_006_660d

    ld d, c
    ld h, l
    pop hl
    ld b, b
    ld b, h
    ld [hl], d
    jr z, jr_006_6689

    adc d
    ld b, l
    add c
    ld d, c
    dec h
    ld [hl+], a
    sbc d
    add hl, hl

jr_006_6689:
    db $fc
    ld [bc], a
    dec b
    add e
    ld b, b
    and b
    ld h, c
    jr jr_006_6612

    inc b
    ld hl, $953b
    ld e, e
    jp z, $b283

    and d

jr_006_669b:
    add a
    ret nz

    and d
    jr c, jr_006_66bc

    inc e
    ld e, $08
    inc c
    ld b, $0f
    rlca
    cp h
    ld e, $0f
    rst $00
    push hl
    ld l, a
    sbc a
    ret nc

    rst $20
    add a
    jp $f3e7


    rst $38
    ld b, a
    xor a
    pop de
    ld l, h

jr_006_66b9:
    or [hl]
    ld e, e
    xor l

jr_006_66bc:
    sub $ab
    ld d, l
    add d
    pop bc
    ld a, h
    cp [hl]
    ld l, e
    ld [hl], d
    ld d, d
    jp nz, Jump_006_43e2

    ld b, $81
    ld b, c
    jr nz, jr_006_669b

    or d
    call nc, Call_000_14d4
    dec c
    ld a, a
    cp h
    rla
    ld a, [bc]
    add e
    add c
    ld b, c
    sbc $a8
    ld l, a
    sub h
    rla
    ld [$b905], a
    call nc, Call_000_1aee
    adc e
    pop de
    call nc, Call_000_1abb
    adc e
    ld [hl], c
    ld d, b
    rst $28
    ld a, [bc]
    rra
    and d
    db $fc
    jr nz, jr_006_6713

    call nz, $fc03
    add b
    ld d, d
    pop hl
    db $10
    ld [bc], a
    ld [de], a
    ld d, d
    sbc $52
    pop hl
    and e
    ld b, d
    and c
    ld b, b
    ld bc, $7cef
    ld e, h
    ld [$1f6a], sp
    add h
    ld [c], a
    jr @+$4c

    ld d, $3f
    ret nz

jr_006_6713:
    ldh a, [$74]
    dec d
    inc bc
    ret nz

    or e
    ret c

    inc d
    ld a, $c0
    and e
    db $f4
    dec b
    add a
    inc de
    ld [de], a
    cp h
    xor [hl]
    inc de
    ld b, h
    jp nz, $9c74

    rrca
    ld b, e
    jp Jump_006_7cf4


    ld l, h
    rrca
    ldh a, [rTMA]
    jr nz, jr_006_66b9

    adc [hl]
    jp nc, Jump_006_7db0

    rla
    dec bc
    jp nc, $ddb0

    add c
    jp nz, $dea3

    inc l
    adc e
    add b
    ld c, b
    ld l, $4f
    ld [$0925], sp
    ld c, b
    jr nz, jr_006_678d

    ld b, b
    ld c, c
    ld d, [hl]
    ld d, a
    sub l
    and l
    sbc c
    ld h, d
    ld d, $7a
    rlca
    call nc, $f708
    dec e
    rst $08
    pop af
    db $fc
    sbc $17
    adc a
    ldh [rDIV], a
    dec c
    inc bc
    adc a
    jp $eff4


    dec sp
    call z, Call_000_38e3
    sbc [hl]
    daa
    add e
    ldh [$f8], a
    ld a, h
    rra
    dec bc
    pop bc
    ldh a, [$f9]
    ld e, $51
    or d
    cp h
    ld l, a
    ld c, a
    sub d
    dec h
    inc b
    ret nz

    ld a, [hl-]
    adc [hl]
    and e
    ld e, b
    sub $2b
    adc d
    pop hl

jr_006_678c:
    ld a, c

jr_006_678d:
    jr nz, jr_006_67be

    rst $08
    db $e3
    db $fc
    db $fd
    ccf
    and [hl]
    ld h, l
    inc c
    ld [$0002], sp
    ld b, b
    db $10
    ld a, [bc]
    ld [bc], a
    add b
    ld d, b
    ld d, $94
    and l
    sbc h
    ld e, b
    ld a, d
    ld h, d
    rra
    jp hl


    adc d
    ld e, [hl]
    sub l
    and a
    jp hl


    ld l, d
    ld d, d
    sub d
    ld d, [hl]
    db $dd
    ld e, d
    sub l
    sub $a7
    inc e
    ld [hl], b
    inc e
    rlca
    and [hl]
    sub h
    inc [hl]

jr_006_67be:
    ld [hl], $af
    xor h
    dec hl

Call_006_67c2:
    ld a, [de]
    ret


    ld b, e
    ld h, c
    ld l, d
    and b
    dec e
    ret


    ld [hl], h
    jp $fef0


    xor l
    nop
    jr jr_006_6827

    ld b, h
    ld d, l
    xor [hl]
    ld bc, $eafa
    and [hl]
    db $76
    ld a, [bc]
    and d
    xor b
    ld d, h
    dec d
    ld a, [bc]
    add d
    and b
    ld d, b
    inc d
    ld a, [bc]
    ld [bc], a
    add b
    ld b, b
    db $10
    db $10
    jp c, $03d4

    xor d
    db $ec
    dec de
    ld c, $a8
    ld d, [hl]
    ret z

    and d
    jr z, jr_006_678c

    dec h
    ld l, l
    xor e
    ld [hl], d
    sbc $b7
    ld l, l
    or d
    ld d, l
    ld b, c
    ld [hl], l
    ld l, [hl]
    ld b, c
    db $fd
    dec c
    or h
    inc l
    db $eb
    ld [hl-], a
    ldh [$bb], a
    ld l, $2b
    ld l, c
    dec c
    or d
    xor h
    adc d
    cp $f3
    ld a, [hl+]
    pop bc
    ld d, b
    ld d, [hl]
    or d
    ld b, e
    ld l, e
    call nz, $8d2a
    cp a
    cpl
    db $db
    ld a, [$bfff]
    ld c, h
    inc c

jr_006_6827:
    ld [$70c0], sp
    call Call_000_3c06
    add sp, $35
    dec c
    ld b, c
    xor h
    ld l, e
    ld [hl], a
    xor b
    rla
    ld a, d
    sbc d
    ld a, $31
    inc de
    ld [c], a
    cp h
    and h
    add b
    jr nz, @+$0c

    sub [hl]
    push bc
    or c
    adc h
    ld e, h
    dec b
    add $71
    call z, Call_000_1d6f
    cp [hl]
    add b
    dec bc
    and b
    ld b, b
    xor a
    ld bc, $4200
    sub b
    dec b
    ld bc, $a84b
    ld d, b
    dec hl
    jp z, $7cf1

    ld e, a
    bit 6, d
    db $fc
    call nz, $a55f
    cpl
    ld l, d
    inc b
    push af
    dec a
    ld [hl], e
    ld a, h
    db $e4
    ld [$14ce], a
    scf
    scf
    ccf
    ccf
    ld sp, $2d17
    jp $af42


    adc e
    db $e3
    ld d, $61
    ld [hl], d
    inc a
    xor [hl]
    jp z, $c515

    ld a, l
    jr z, @-$5e

    or e
    inc [hl]
    pop bc
    ld e, a
    dec l
    db $d3
    ld b, d
    ldh a, [$bc]
    rla
    dec b
    call c, $ae9a
    xor e
    ld [hl], l
    di
    inc a
    rst $08
    ld d, [hl]
    ld [hl], h
    call c, Call_006_6d95
    jp $ce72


    add e
    and b
    db $f4
    dec a
    inc sp
    xor h
    ld [$566c], a
    or $c3
    rst $38
    ld l, [hl]
    reti


    rrca
    dec c
    xor e
    inc a
    adc $f3
    adc d
    ld a, d
    and $de
    ld [de], a
    ld de, $e6fe
    db $76
    dec e
    ld a, [de]
    dec [hl]
    call $82a6
    nop
    add e
    ld h, $0a
    ld [bc], a
    adc h
    and h
    db $eb
    ld a, [hl-]
    ldh a, [$67]
    rrca
    ld [bc], a
    or h
    add b
    ld a, [de]
    jp c, Jump_000_078d

    add c
    jp hl


    ret z

    ld a, [hl]
    rra
    or b
    inc bc
    ei
    add d
    pop hl
    jr c, @+$62

    ld d, b
    dec hl
    ld a, [bc]
    ld a, [c]
    ld l, [hl]
    ld a, [bc]

jr_006_68eb:
    cp h
    db $e4
    add hl, sp
    jr nz, jr_006_68eb

    sub h
    ret z

    ld e, d
    ld b, b
    inc de
    dec e
    jp nc, Jump_000_1000

    jr jr_006_6901

    inc bc
    ld b, b
    sbc $44
    dec a
    rrca

jr_006_6901:
    ld l, c
    xor d
    ld b, d
    sub d
    and a
    xor c
    db $eb
    ld l, b
    ld b, l
    ld de, $656c
    ccf
    cp d
    dec d
    ld l, d
    ld a, [hl]
    ld a, [$a99c]
    db $eb
    call z, $966a
    pop de
    xor e
    rlca
    scf
    ld de, $10c8
    cp e
    ld c, [hl]
    push de
    ld h, c
    db $eb
    sbc $3a
    call nc, $c0ad
    db $fc
    sra [hl]
    rla
    ld sp, hl
    ld l, [hl]
    ld e, e
    ld e, a
    dec bc
    call Call_006_7ff3
    dec l
    or $bd
    jp $b47e


    nop
    ld d, h
    ei
    pop de
    ld c, a
    push hl
    rrca
    jp c, $fe30

    ld sp, hl
    xor b
    rst $18
    sbc e
    ld b, b
    ld hl, sp-$2b
    dec b
    dec sp
    xor $53
    db $f4
    rlca
    scf
    ld a, l
    ld d, [hl]
    db $eb
    ei
    ld a, [de]
    ret z

    or d
    xor h
    srl d
    ret nc

    ld [hl], h
    dec hl
    ld l, e
    ld e, b
    ccf
    ld [hl], l
    ld a, l
    rst $28
    ld a, b
    adc a
    inc hl
    ret z

    ld a, [c]
    ld a, $ab
    ld [hl], c
    ret c

    ld d, l
    rrca
    ld h, $d9
    or [hl]
    adc h
    db $eb
    and c
    inc bc
    add b
    xor $af
    ld d, $50
    rst $38
    ld c, a
    db $d3
    adc l
    ei
    ld a, a
    ld h, d
    xor c
    jp Jump_000_2cac


    ld h, a
    ld a, d
    add $77
    sub h
    db $db
    db $db
    dec bc
    ld [hl], a
    cp b
    add a
    ld a, e
    adc b
    ld [hl], a
    xor h
    ld h, a
    ld a, d
    add $77
    xor h
    ld h, a
    ld a, d
    add $77
    cp b
    add a
    ld a, e
    adc b
    ld [hl], a
    cp b
    adc h
    inc [hl]
    ld [$77c3], a
    ld c, l
    rst $08
    jr c, @-$5e

    db $76
    adc a
    pop de
    pop de
    xor d
    ret nc

    rlca
    ld b, e
    and c
    ldh [$f0], a
    ld [hl], b
    jr c, @+$1a

    inc c
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $8001
    jp z, Jump_006_70e5

    db $10
    ld [$050a], sp
    adc c
    ld b, l
    ld [hl+], a
    pop de
    ld d, b
    db $10
    db $10
    ld [$55ab], sp
    sub l
    ld c, d
    and b
    add hl, bc
    inc c
    adc d
    ld b, e
    ld a, [bc]
    jr nz, jr_006_69f1

    rra
    ld a, [c]
    add a
    ld hl, sp+$3c
    ld e, $06
    inc bc
    ld c, b
    ld b, d
    ld bc, $4000
    jr nz, jr_006_6a18

    inc d

jr_006_69f1:
    ld d, b
    jr z, @+$0c

    dec b
    dec b
    ld a, d
    cp h
    cp [hl]
    ld e, a
    add l
    ld b, e
    ld hl, $70c0
    dec sp
    ld a, [$4487]
    and d
    pop de
    ld e, a
    rrca
    adc c
    inc e
    sub h
    add c
    ld [hl], $9c
    ld a, [hl+]
    dec d
    dec b
    ld b, d
    and h
    adc [hl]
    ld b, [hl]
    ld a, [hl+]
    dec d
    dec b
    ld b, d

jr_006_6a18:
    or l
    ld e, d
    cp e
    xor c
    call nc, Call_006_6ad4
    ld b, b
    sbc d
    dec c
    ld [$2234], sp
    or [hl]
    push de
    ld l, d
    jp z, $e1c3

    pop af
    ld hl, sp-$04
    cp $7f
    sub h
    ld e, e
    daa
    ret nz

    jr @+$33

    ret nz

    ldh [$28], a
    inc d
    ld c, l
    ld bc, $a840
    cp b
    ld a, [bc]
    ld a, [hl]
    inc bc
    and b
    reti


    db $ed
    ld [hl], $bb
    ld l, e
    cp $d9
    ld b, e
    sub h
    ld h, c
    ld e, a
    ld hl, sp+$7c
    jr c, jr_006_6ab2

    jr nc, jr_006_6a60

    ld b, $46
    ld [hl+], a
    ld c, a
    ld d, a
    xor e
    ret


    push hl
    sub c
    xor c
    ret z

    and c

jr_006_6a60:
    ld d, [hl]
    push bc
    ld a, [$d8fe]
    ld a, [$3f7d]
    ld e, a
    cp c
    call c, $87fe
    ld b, c
    sbc [hl]
    ld a, [hl]
    adc d
    add c
    ld b, e
    ld e, d
    add $a3
    ld d, l
    xor c
    db $d3
    ld [$5261], a
    ld b, h
    ld b, $c7
    ld h, d
    ld a, [hl]
    ccf
    ld l, e
    add d
    xor d
    or b
    ld e, c
    db $dd
    ld l, $e8
    inc b
    ld d, e
    sub l
    inc de
    add a
    db $e3
    ld a, [c]
    sub c
    inc b
    add e
    ld h, l
    and h
    scf
    adc d
    cp h
    xor [hl]
    add e
    ld c, $86
    ld d, d
    sub b
    ld [de], a
    ld l, b
    inc [hl]
    ld [de], a
    sub c
    jp nz, $dba1

    dec l
    ld e, h
    ld a, [hl]
    dec a
    and e
    sub a
    ld b, c
    inc bc
    jp $51af


jr_006_6ab2:
    ld c, b
    ld b, e
    add l
    jp $7c04


    cp [hl]
    ld a, b
    ld d, d
    add h
    ld [de], a
    ld [$458a], sp
    push af
    ld a, b
    inc hl
    ld a, $ff
    ld d, a
    or e
    push hl
    db $ed
    ld b, c
    rra
    ld c, a
    cp d
    inc [hl]
    ld d, d
    ld a, [hl+]
    ld a, $8f
    ld b, a
    sub c

Call_006_6ad4:
    call nz, Call_000_0c72
    add e
    db $10
    ld b, h
    dec d
    ld l, $05
    ld [hl], h
    inc b
    ld [$2619], sp
    ld e, l
    ld d, e
    adc b
    inc l
    ld d, b
    add e
    ld d, a
    ld d, h
    ld b, c
    reti


    ld h, l
    sub b
    ld b, h
    jp hl


    inc a
    ld h, [hl]
    sbc b
    ld b, e
    ld sp, hl
    sub [hl]
    ld e, b
    sub b
    sub [hl]
    jp z, Jump_006_5012

    nop
    ld a, b
    ld c, c
    ld [hl+], a
    ld h, h
    adc $53
    sub l
    adc a
    ld b, h
    rst $18
    ld [$1fa2], sp
    db $76
    ld h, b
    sbc b
    ld [hl+], a
    rlca
    ld h, [hl]
    sbc e
    ld d, h
    add l
    ld a, h
    ld e, a
    add b
    push af
    and c
    ld l, d
    ld e, e
    ld [de], a
    inc d
    ld a, l
    dec e
    adc [hl]
    ld d, c
    pop hl
    ld d, [hl]
    ld a, [hl-]
    dec d
    ld e, h
    sub b
    ld d, [hl]
    ld b, b
    sub b
    add b
    and l
    ld e, l
    ld a, [bc]
    add b
    db $e4

jr_006_6b2f:
    ld l, b
    db $10
    add b
    sub c
    db $e4
    and c
    dec b
    ld a, [$e447]
    pop hl
    ld d, [hl]
    ld d, b
    sub h
    jr nz, jr_006_6b2f

    and d
    inc c
    sub l
    ld h, b
    jp hl


    ld e, l
    ld bc, $0000
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_006_6b7c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_006_6b8c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_006_6b9c

    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l
    ld l, $2f
    jr nc, jr_006_6bad

jr_006_6b7c:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc bc
    ld [hl], $37
    nop
    jr c, jr_006_6bbf

    nop
    nop
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_006_6b8c:
    ld a, $3f
    ld b, b
    ld b, c
    inc bc
    inc b
    ld b, d
    ld b, e
    inc bc
    inc b
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    nop

jr_006_6b9c:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc hl
    inc h
    ld d, b
    ld d, c
    daa
    jr z, jr_006_6bfd

    ld d, e
    ld d, h

jr_006_6bad:
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_006_6bbf:
    ld e, l
    ld h, d
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld h, e
    ld e, l
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
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld a, c
    nop
    ld a, d
    ld a, e
    nop
    ld a, h
    nop
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    nop
    add d
    ld l, [hl]
    nop
    nop
    add e
    nop
    nop
    add h
    add l

jr_006_6bfd:
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld a, [hl]
    nop
    adc e
    adc h
    adc l
    nop
    adc [hl]
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    sub c
    nop
    sub d
    nop
    sub e
    sub h
    nop
    sub l
    sub [hl]
    nop
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc e
    sbc l
    sbc [hl]
    sbc a
    and b
    ld [hl], c
    ld [hl], d
    and c
    and d
    and e
    sbc e
    and h
    and l
    sbc a
    and [hl]
    sbc a
    and [hl]
    and a
    and [hl]
    sbc a
    and [hl]
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    ld [hl], b
    nop
    ld a, h
    nop
    xor a
    or b
    or c
    or d
    add c
    sbc e
    nop
    or e
    nop
    or h
    or l
    sbc a
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    adc e
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_00c3

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp $c4ca


    set 1, h
    call $cfce
    ret nc

    nop
    pop de
    jp nc, $c100

    nop
    nop
    db $d3
    call nc, $d5a6
    sub $d5
    sub $d7
    jp z, $cad7

    ret c

    nop
    ret c

    nop
    inc bc
    ld bc, $04c1
    ld c, b
    inc d
    ld [de], a
    dec c
    dec b
    add c
    jp nz, $f060

    xor b
    ld b, h
    ld a, [hl-]
    dec de
    db $10
    add [hl]
    ld b, h
    and c
    ld [hl], c
    ld c, b
    ld a, h
    ld c, [hl]
    dec l
    dec d
    adc b
    add $62
    pop af
    db $10
    db $10
    inc c
    ld [$8f05], sp
    ld c, b

jr_006_6ca8:
    inc h
    ld d, d
    jr jr_006_6ca8

    sub [hl]
    ld b, b
    ld b, l
    inc hl
    ld de, $04c9
    jp nz, Jump_000_3461

    sbc l
    add hl, hl
    sub l
    bit 4, l
    di
    add hl, sp
    add h
    xor b
    sub c
    ld sp, $4d9c
    rst $20
    inc sp
    ret


    call c, Call_006_57fa

Jump_006_6cc9:
    add hl, sp
    sbc d
    call $b467
    add hl, bc
    db $fc
    ld [$488b], a
    and e
    jp nc, $94a8

    ld a, b
    push bc
    ld a, [hl-]
    inc d
    nop
    inc h
    sub d
    add b
    inc de
    ld e, d
    adc l
    ld c, [hl]
    add l
    ld l, $27
    ld d, l
    add b
    dec d
    cp d
    db $ed
    ld c, d
    cp c
    ld e, a
    xor a
    ld d, h
    db $ec
    ld b, b
    ld a, [bc]
    dec c
    ld h, [hl]
    ret


    ld l, b
    or b
    jp c, Jump_006_76ac

    cp e
    dec b
    or d
    rst $18
    ld h, [hl]
    sub a

Call_006_6d01:
    call c, $d266
    cp d
    push hl
    ld [hl], d
    xor e
    db $76
    and c
    call $d7ee
    set 5, l
    ld a, [$80ff]
    cp [hl]
    ld d, a
    rst $20
    jr c, @+$1e

    ld l, $1b
    rrca
    ld a, [hl]
    pop bc
    sbc $f1
    ld d, a
    ld e, e
    dec c
    and $cf
    adc a
    sub a
    rst $10
    ld [hl], c
    add hl, de
    ld c, h
    ld b, [hl]
    dec sp
    dec hl
    sbc b
    call z, $b1db
    ld [hl], $3b
    cp $12
    db $ed
    sbc a
    cp e
    inc c
    add $98
    ld l, l
    dec e
    ret c

    sub a
    ld a, [hl]
    ld de, $445f
    ld b, d
    jr nc, jr_006_6d4b

    or d
    cp $31
    ret nz

    ld l, h
    ld l, [hl]

jr_006_6d4b:
    ret nz

    ret nz

    ld e, [hl]
    db $db
    ld l, a
    cp b
    dec b
    add e
    or $77
    db $ed
    push hl
    di
    ld l, d
    dec bc
    dec b
    ld l, a
    ld [hl], b
    inc hl
    ld de, $ca90
    ei
    sub a
    call Call_006_46df
    db $e3
    adc h
    scf
    jr nc, jr_006_6dd2

    and e
    dec e
    ld e, a
    inc [hl]
    ld h, d
    ld b, c
    jr nz, jr_006_6d9a

    add h
    ld [hl+], a
    ld [de], a
    add hl, bc
    ld b, h
    db $dd
    and c
    dec [hl]
    ld [hl], b
    sub [hl]
    ld [hl+], a
    pop de
    db $eb
    xor $de
    rra
    jr jr_006_6d85

jr_006_6d85:
    jr jr_006_6d94

    ldh a, [$80]
    ld a, l
    ld a, l
    jr nz, jr_006_6d94

    xor h
    ld h, [hl]
    ld c, $07
    ld [$7ec6], a

jr_006_6d94:
    ld l, l

Call_006_6d95:
    and b
    scf
    rst $10
    db $eb
    ld a, [bc]

jr_006_6d9a:
    dec b
    ld [hl], b
    cp d
    and b
    ret c

    ld [hl], b
    dec e
    ld l, d
    sub l
    ret nz

    ld e, h
    jr jr_006_6e06

    ld e, l
    ld [hl], l
    db $fc
    db $10
    inc b
    ld e, a
    sub a
    db $ed
    ld a, [hl]
    add d
    inc bc
    and b
    db $ec
    scf
    ld [hl], e
    ld a, [de]
    add b
    nop
    ld c, e
    dec c
    dec e
    ld [hl], c
    inc l
    jr c, jr_006_6dd2

    pop hl
    sub b
    sub c
    db $eb
    ld a, [bc]
    ld hl, $4cc8
    ld a, [hl-]
    add hl, bc
    inc e
    rst $00
    ld [hl], l
    rst $18
    adc b
    ld h, d
    scf
    and b

jr_006_6dd2:
    ld bc, $5f88
    adc b
    ld c, c
    db $eb
    dec c
    ret nz

    rla
    push bc
    and a
    adc c
    ld e, l
    cp b
    ld h, l
    ld e, h
    adc c
    rst $18
    add a
    xor h
    inc de
    ld a, [hl]
    and b
    pop bc
    inc l
    inc h
    inc c
    add c
    ldh [$7c], a
    jr nz, jr_006_6dfb

    add hl, de
    sbc b
    jr nz, jr_006_6e08

    adc l
    and e
    adc b
    inc l
    nop

jr_006_6dfb:
    sub b
    ret nz

    db $10
    ld e, d
    ld c, e
    ld c, $a4
    ret c

    ld h, h
    ld a, [hl-]
    rrca

jr_006_6e06:
    ldh [$e9], a

jr_006_6e08:
    ld l, $53
    ld a, [hl]
    ld [bc], a
    rla
    ld [c], a
    ld c, e
    ld c, $25
    db $10
    db $ec
    ccf
    ld c, $04
    add hl, bc
    ld a, $51
    sub a
    inc b
    ld [$51d6], sp
    ld a, [hl]
    inc bc
    xor b
    ld h, l
    db $ec
    ld a, d
    ret nz

    and $e5
    or a
    ld [bc], a
    and h
    or b
    inc h
    dec bc

jr_006_6e2d:
    ld a, l
    db $e3
    ld l, c
    ld d, $39
    sub d
    ld bc, $4a10
    ld d, e
    adc a
    add d
    nop
    db $fd
    adc b
    adc l
    and h
    ld c, c
    jp z, Jump_000_0037

    ld h, l
    ld l, c
    ld a, [$a17f]
    jr z, jr_006_6ea2

    cp $6f
    sbc d
    add sp, -$67
    add $86
    and e
    jr z, jr_006_6e2d

    jr nc, jr_006_6e68

    ld a, d
    add sp, $39
    db $fd
    ld a, h
    add b
    ld h, b
    ld h, l
    reti


    inc h
    ld [de], a
    ld [de], a
    ld c, d
    ld l, c
    ld h, $a6
    ret nz

    ld b, b
    ld [de], a

jr_006_6e68:
    sbc l
    ld c, c
    ld [$821a], a
    and e
    and a
    ld a, [hl+]
    ld d, h
    adc [hl]
    and [hl]
    xor b
    xor d
    adc d
    sub d
    and a
    xor e
    ld a, [hl+]
    sub h
    add b
    ld bc, $245f
    dec d
    db $fd
    ld [$1400], sp
    db $f4
    ld [hl], b
    ld [$2b02], sp
    ld h, h
    ld l, [hl]
    cp e
    xor [hl]
    xor e
    call nc, $be6a
    xor l
    db $eb
    or b
    ld b, $88
    ld l, l
    rst $18
    dec h
    push af
    add h
    ld d, e
    inc l
    sub l
    ld a, [de]
    jp z, Jump_006_4452

jr_006_6ea2:
    ld d, l
    ld c, c
    ld c, e
    or d
    db $ed
    dec de
    ld [hl], $d2
    ld d, d
    sub l
    add h
    pop de
    ld e, c
    or l
    sub a
    ld b, c
    ld [hl+], a

Call_006_6eb3:
    add h
    adc e
    call c, Call_006_7586
    ld l, l
    ld e, d
    ld d, [hl]
    rst $30
    ld a, [hl+]
    ldh [$72], a
    ld l, [hl]
    dec de
    adc [hl]
    ld [c], a
    cp c
    sub [hl]
    ld b, l
    jp hl


    ld [hl-], a
    or [hl]
    ld l, $d6
    ld c, c
    ld e, a
    and c
    ld l, l
    rst $10
    sub c
    xor l
    ld h, [hl]
    xor a
    ld d, b
    ld [bc], a
    ld b, $71
    ld l, a
    ld h, l
    ld [hl], c
    cp [hl]
    cp l
    ld d, l
    ld d, l
    ld a, [hl]
    reti


    ld l, b
    ld e, [hl]
    db $eb
    call nz, Call_006_780f
    ld [c], a
    dec sp
    add sp, $00
    ld l, c
    sbc b
    add [hl]
    adc h
    dec [hl]
    dec c
    xor a
    ld h, a
    adc d
    db $f4
    ld h, l
    ld e, [hl]
    ld h, l
    pop hl
    ld [hl], a
    ld d, [hl]
    ld e, b
    ld b, a
    ld h, $8c
    sbc d
    and [hl]
    cp e
    add hl, de
    ld e, h
    ld [$1aa0], sp
    ld d, e
    db $10
    ld [hl], d
    jp Jump_006_4187


    and h
    ld l, e
    or c
    nop
    and h
    ld a, [hl+]
    ld a, [bc]
    jp nz, $ddc0

    rst $10
    ld c, $72
    ld d, [hl]
    ld h, [hl]
    ld [hl+], a
    db $76

jr_006_6f1e:
    pop af
    and $1f
    ld b, $c4
    push de
    ld b, l
    sbc [hl]
    push hl
    ld e, l
    xor b
    jp hl


    cp $f2
    ld [hl], l
    ld e, l
    ld [$dbc5], a
    ld e, a
    ldh [$e8], a
    ld b, c
    call Call_000_2200
    ld h, a
    inc b
    cpl
    inc c
    jr nz, jr_006_6f1e

    ldh a, [$3d]
    pop de
    ld [hl], h
    ld b, $56
    ld c, $98
    ld l, e
    inc l
    ld [hl], e
    inc e
    ret z

    ld [hl-], a
    adc c
    add l
    xor d
    call $5673
    inc bc
    ld a, [hl-]
    adc $c0
    db $fc
    and d
    ld c, e
    db $10
    jr nz, jr_006_6f79

    ld e, d
    ld e, l
    call z, Call_000_30b6
    cp $4b
    ret c

    and $29
    add $53
    dec b
    xor h
    ld c, c
    or b
    ld bc, $7706
    dec e
    push bc
    db $eb
    call c, Call_000_2bb7
    dec c
    cp c
    or c
    xor e

jr_006_6f79:
    inc l
    dec de
    ld l, [hl]
    sbc e
    add hl, de
    inc c
    ld d, c
    sub d
    ld h, c
    or l
    call z, $89ee
    pop hl
    jr c, jr_006_6fe2

    xor [hl]
    adc e
    adc $81
    xor [hl]
    dec hl
    adc d
    ld a, d
    ld hl, sp-$42
    ld l, $dc
    ld a, h
    add e
    db $fd
    and [hl]
    ld bc, $d34c
    inc a
    ret c

    ld c, l
    and l
    sbc l
    ld [hl], c
    ld [hl-], a
    sub [hl]
    ld h, c
    ld b, b
    ld a, [de]
    cp e
    sbc a
    xor b
    ld a, [hl-]
    ld a, [bc]
    xor c
    rra
    xor b
    dec hl
    sbc $09
    ld [$317e], sp
    sub [hl]
    push hl
    jp nz, Jump_006_5259

    and h
    rst $00
    xor l
    ld de, $d5d7
    ld d, a
    sbc h
    ld e, a
    add b
    ld a, [de]
    ld a, [c]
    cp a
    ld b, [hl]
    add h
    ld a, e
    ld bc, $460b
    inc l
    bit 0, d
    db $d3
    ld d, d
    ld d, e
    and h
    ld h, c
    add d
    ld d, h
    xor $06
    add c
    ld a, e
    ld e, l
    cp e
    ld b, l
    ld [hl], b
    ld bc, $fcef

jr_006_6fe2:
    push de
    jr nc, jr_006_702f

    rst $28
    sub h
    ld b, l
    ld [hl-], a
    jp hl


jr_006_6fea:
    cp c
    ld l, $86
    jr c, @+$4b

    db $f4
    jp c, $81bc

    ld a, a
    adc $3b
    ld e, e
    sbc a
    rst $18
    ld e, d
    dec a
    ld c, e
    adc e
    add $60
    rra
    ld e, e
    db $db
    db $e4
    ld e, l
    or b
    ld h, [hl]
    rlca
    sbc c
    db $eb
    dec a
    db $ec
    rra
    rst $28
    ld h, [hl]
    ld a, [hl]
    xor a
    pop bc
    ld a, a
    db $e4
    ld a, [c]
    rrca
    add hl, hl
    rst $18
    ld h, b
    ld l, e
    dec b
    rst $38
    and $be
    pop af
    rra
    ld l, a
    db $fd

Jump_006_7021:
    ld [hl], h
    ld a, [c]
    ld b, l
    ld [hl], e
    db $ec
    cp l
    and $be
    or e
    db $fc
    add c
    ld e, l
    adc a
    db $fd

jr_006_702f:
    db $76
    add d
    stop
    inc c
    ld a, [bc]
    ld b, $01
    ld de, $2000
    ldh a, [$80]
    cp b
    ld h, d
    stop
    dec e
    ld [de], a
    pop hl
    sub b
    ld [hl], c
    adc b
    nop
    inc bc
    inc c
    ld de, $e008
    ld [c], a
    ld b, c
    jr z, jr_006_6fea

    jr jr_006_7085

    ld a, [de]
    ld b, l
    and e
    add e
    ld c, b
    add h
    ld [hl+], a
    inc sp
    dec de
    add h
    inc c
    db $e3
    ldh a, [$c1]
    cp b
    ld [c], a
    ld b, l
    ld [de], a
    adc b
    ld b, e
    pop hl
    sub b
    ld sp, hl
    inc h
    cp [hl]
    ld c, $22
    add hl, de
    ld b, c
    ldh [$92], a
    ld c, c
    db $10
    ld b, b
    ld [hl+], a
    ld [de], a
    add d
    ld c, [hl]
    nop
    nop
    sub b
    ld d, h
    cp d
    db $10
    ld a, [hl-]
    dec e
    ld b, d
    inc b
    ld d, c
    reti


    cp h

jr_006_7085:
    and d
    ld c, b
    daa
    add c
    ld a, [bc]
    dec b
    ld [hl+], a
    and c
    ld e, b
    or d
    ld d, l
    inc h
    adc a
    jp z, $c0a2

    db $10
    and b
    ld d, [hl]
    ld c, $3e
    rra
    adc [hl]
    ld [$0a00], sp
    or h
    db $e4
    ld bc, $813b
    ld d, [hl]
    and b
    pop af
    reti


    ld b, b
    add $6d
    ld c, $83
    sub d
    pop bc
    jr nz, @-$43

    adc l
    jp z, $1885

    dec de
    ld c, l
    ldh [$75], a
    db $eb
    inc b
    ld [hl+], a
    ld [hl], a
    dec a
    sbc a
    ld c, a
    and b
    sub $d0
    inc b
    ccf
    inc bc
    add c
    dec h
    adc c
    dec h
    ld e, b
    ld h, b
    inc c
    sub d
    cp e
    ld e, a
    add d
    dec bc
    ld b, l
    jp nz, $80f1

    add sp, $77
    ld a, c
    sub d
    ld h, h
    call nz, Call_000_3090
    sbc l
    ld l, b
    add d
    ld b, d
    ld hl, $c090

Jump_006_70e5:
    add hl, de
    ld l, e
    call Call_000_09f2
    sbc d
    ld a, [bc]
    push de
    inc b
    or c
    pop de
    xor b
    ret c

    sub a
    ld b, l
    dec h
    db $eb
    dec [hl]
    sub b

jr_006_70f8:
    db $ed
    db $76
    or h
    sub a
    ld e, l
    inc e
    db $dd
    ldh [$63], a
    pop bc
    ld h, $47
    ld b, a
    ld a, [hl]
    cp a
    add hl, bc
    ld [hl], $1b
    ld l, $07
    ld [$c42d], sp
    ld [c], a
    rst $28
    ld a, b
    ldh [rNR34], a
    dec h
    ei
    sub l
    ld a, $09
    pop af
    ld sp, hl
    sub a
    db $db
    rst $30
    ld a, [hl-]
    ld a, h
    ld hl, $f1e4
    ld a, d
    db $fd
    adc [hl]
    scf
    inc hl
    and c
    ret z

    sbc $f6
    ld a, e
    pop hl
    ld l, [hl]
    inc a
    inc b
    nop
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_006_7139

jr_006_7139:
    inc bc
    rlca
    add h
    jp nz, Jump_006_7021

    sub a
    ei

Jump_006_7141:
    ld sp, hl
    or h
    or [hl]
    dec l
    xor l
    ret


    dec bc
    ld [hl], a
    ld hl, sp+$01
    add sp, -$2e
    ld e, $b6
    call nz, $b88d
    or d
    ld [$b282], sp
    jr c, jr_006_70f8

    adc a
    or c
    ld h, b
    add b
    ld hl, $cfae
    ld [$e23b], sp
    jp z, $d3d4

    or l
    or h
    dec h
    ld l, l
    ld b, l
    adc c
    and d
    ld h, d
    add sp, -$28
    sub d
    or [hl]
    adc a
    ld c, b
    inc h
    ld d, d
    ld b, b
    inc b
    sbc c
    inc l
    adc [hl]
    sub l
    ld c, [hl]
    sub b
    ld d, e
    ret


    jr z, jr_006_71a1

    cpl
    add hl, hl
    sub l
    add b
    dec h
    xor [hl]
    ld e, c
    add h
    ret z

    ld bc, $2c34
    call $20e7
    ld [$12fd], sp
    ld b, a
    ld b, [hl]
    ld c, b
    ld d, b
    ld l, c
    ld c, a
    db $f4
    ld h, d
    or h
    rst $20
    ld b, $82
    ld b, l
    sbc a

jr_006_71a1:
    and $33
    ld e, d
    ld [hl], d
    add hl, de
    ld l, b
    nop
    ld b, l
    xor h
    sub $98
    ld h, h
    or b
    rst $20
    ld e, a
    or b
    ret nz

    db $ed
    ld l, c
    rst $00
    ld a, [$8001]
    ccf
    ld c, a
    sbc a
    push de
    ld b, $85
    ld h, c
    sub c
    ld e, h
    ld h, d
    ld d, e
    sbc d
    ld d, l
    ld h, $f7
    ld hl, sp+$04
    ld b, $fc
    ld a, h
    cp a
    add d
    and c
    ld h, c
    xor b
    sbc b
    ld [$7246], a
    and l
    sub d
    xor a
    ld h, l
    ld sp, $4099
    ld h, b
    ld d, e
    sbc c
    ld d, l
    and [hl]
    adc h
    push bc
    ld [$76f1], a
    ld [hl-], a
    sbc c
    add b
    and b
    ld h, a
    ld a, [hl+]
    sbc c
    ld l, d
    ld d, $d2
    ld h, d
    or c
    jr @+$6d

    or l

jr_006_71f5:
    ld [c], a
    push af
    ld a, h
    cp a
    ld h, b

jr_006_71fa:
    dec d
    ld h, [hl]
    ld e, h
    ld h, $1b
    ld de, $c68a
    ld h, e
    or d
    dec c
    ld d, l
    ld [hl], $53
    inc l
    cp b
    inc [hl]
    cpl
    adc $b9
    call z, $fff1
    ld b, b
    add b
    pop de
    rlca
    ld b, d
    rst $08
    push de
    db $76
    and e
    ld d, h
    cp $d6
    nop
    ld e, a
    ret z

    ld b, $10
    pop af
    inc a
    ld a, h
    ld [hl], l
    ld a, [bc]
    dec b
    ret nz

    ld b, h
    ldh a, [rSB]
    adc h
    nop
    ld e, b
    db $10
    jr nc, jr_006_71fa

    inc sp
    db $e3
    db $e4

jr_006_7235:
    db $fc
    sub l
    dec bc
    dec l
    call nz, $d28f
    inc bc
    inc b
    nop
    sbc a
    nop

jr_006_7241:
    dec hl
    inc c
    dec bc
    sub e
    ld [bc], a
    db $ec
    ldh [$ab], a
    jr nc, jr_006_72c9

    ld d, e
    ld h, a
    ld b, $28
    jp hl


    db $76
    add hl, bc
    ld b, b
    ld h, c
    ld [hl], h
    ld b, $13
    ld b, b
    ld h, c
    sub h
    ld [bc], a
    inc d
    ret nz

    ld bc, $30ec
    ld de, $81c3
    db $fd
    ld [$c640], sp
    and l
    ld d, h
    inc d
    inc hl
    add [hl]
    rst $00
    ld l, b
    inc l
    ld bc, $6610
    jr jr_006_71f5

    ld [de], a
    ld b, $91
    cp b
    add l
    ld bc, $3001
    nop
    dec d
    nop
    ld [$0000], sp
    xor b
    jr jr_006_728d

    add b
    nop
    xor c
    ld a, l
    add e
    ld [bc], a
    dec c
    ld d, l

jr_006_728d:
    db $10
    ld bc, $c111
    rst $28
    add b
    ld h, b
    db $10
    dec h
    add hl, bc
    jr jr_006_72d9

    ld hl, $000c
    inc d
    pop bc
    nop
    ld e, $3f
    sub b
    inc h
    add hl, de
    inc b
    ld hl, sp+$3f
    jp nz, $9c43

    ld h, l
    add hl, sp
    adc h
    ld d, c
    jr jr_006_7235

    ld de, $518a
    sbc b
    and c
    jr jr_006_7241

    ld sp, $a688
    add hl, de
    ret nz

    ld h, b
    ld e, $56
    sub [hl]
    dec h
    ld a, c
    ld l, d
    ld d, [hl]
    sub c
    nop
    add hl, de
    ld a, d
    ld e, a

jr_006_72c9:
    sbc b
    ld h, $03
    db $fd
    ld d, $5c
    sub b
    ld e, c
    adc h
    dec h

jr_006_72d3:
    add hl, sp
    add [hl]
    ld [hl], e
    sub h
    rst $00
    db $10

jr_006_72d9:
    ret z

    pop de
    inc d
    cp c
    ld a, [de]
    ld c, e
    ld de, $e144
    ld [$f14f], sp
    cp $42
    sbc [hl]
    inc h
    inc bc
    ret nz

    rst $38
    sub e
    adc [hl]
    ld d, c
    sbc d
    ld c, d
    sub e
    inc h
    jp hl


    ld b, b
    db $e3
    jr z, jr_006_733b

    di
    dec c
    ld [hl], d
    sub a
    add b
    jr nc, jr_006_7307

    rlca
    ld bc, $d34f
    db $ec
    add hl, de
    inc b
    ld b, e

jr_006_7307:
    sub b
    add h
    ld l, c
    inc d
    ld c, [hl]
    sub d
    call nz, $0489
    ld l, c
    nop
    call nz, Call_000_0939
    jp Jump_000_0ef0


    ld d, a
    nop
    add b
    ld b, b
    ld [$0005], sp
    ld [$984a], a
    inc bc
    ld a, $4f
    ldh a, [$a0]
    jr nc, jr_006_72d3

    ld [$c0d0], a
    ld [HeaderLogo], sp
    add b
    ld b, b
    jr nc, jr_006_7341

    add hl, hl
    db $d3
    nop
    ld b, b
    jr jr_006_7343

    ld [bc], a
    ret nz

jr_006_733b:
    ret nc

    ld d, $17
    jp nc, Jump_006_56d0

jr_006_7341:
    ld [hl], $8a

jr_006_7343:
    or c
    or h
    push de
    dec c
    adc d
    and c
    ld l, h
    or l
    dec de
    ld c, e
    and c
    ret c

    xor l
    ld a, [de]
    jp z, $9461

    sbc a
    rra
    sbc h
    add c
    cp $25
    rra
    rst $00
    push af
    ret c

    add b
    or l
    xor l
    add h
    ld e, b
    sbc a
    ld e, $66
    ld c, c
    adc [hl]
    sbc $58
    pop de
    ld h, e
    db $e4
    sbc [hl]
    ld h, $47
    push af
    jp hl


    sbc d
    ld [hl], c
    ld b, [hl]
    ld b, $7c
    ccf
    ld e, l
    adc c
    sub e
    ld sp, hl
    adc d
    ld l, c
    sbc h
    ldh a, [rNR24]
    xor e
    ccf
    jr @+$6c

    sbc $b9
    xor [hl]
    db $eb
    jp nc, $bfb2

    or b
    ld l, h
    ld [hl-], a
    ret c

jr_006_7390:
    ld a, [hl+]
    ld b, $c1
    ld d, b
    inc [hl]
    ld a, [bc]
    ld bc, $40aa
    ld a, [bc]
    ld e, [hl]
    ld b, c
    ret nz

    add hl, de
    adc h
    ld l, d
    ld d, $c3
    ld d, b
    or h
    ld a, [de]
    dec b
    add b
    ret nc

    cpl
    dec b
    and d
    and l
    jp hl


    adc h
    ld [$4ec0], a
    db $d3
    add sp, -$0a
    dec b
    ld b, c
    jr nc, jr_006_7390

    dec h
    ld h, h
    add hl, de
    ld h, $51
    inc b
    ld b, d
    nop
    jr nc, jr_006_73c2

jr_006_73c2:
    rlca
    nop
    nop
    ldh a, [rP1]
    rra
    ld e, d
    adc h
    inc c
    xor d
    db $d3
    ld e, b
    sub $ac
    swap c
    rrca
    ret nz

    dec bc
    ld c, a
    scf
    call $3cb3
    db $eb
    ld sp, $33cf
    and e
    ret nz

    nop
    ccf
    or e
    cp l
    ld a, [bc]
    ld h, b
    jr nz, jr_006_7428

    inc de
    inc b
    ld bc, $4038
    inc de
    call nz, $3e01
    ld [hl], b
    and [hl]
    inc hl
    ld b, b
    call nc, Call_000_1c34
    rst $30
    ld sp, $cd7b
    ldh a, [$03]
    ld d, [hl]
    ld sp, $7df5
    ld l, e
    ld sp, $cb8b
    or b
    nop
    ei
    nop
    ld [hl+], a
    ld a, [c]
    rst $38
    ld h, c
    call z, Call_000_2990
    ld a, b
    ld b, $01
    add b
    adc d
    ret nz

    db $10
    ld [$1142], sp
    inc c
    ld b, e
    ld sp, $71cc
    db $f4
    ld a, l
    inc sp
    call z, Call_000_0ff0
    ld h, $00

jr_006_7428:
    rlca
    pop bc
    ld a, [c]
    rst $18
    or a
    call nz, Call_000_1c71
    adc a
    inc hl
    ret z

    cp [hl]
    dec bc
    add e
    ld [hl+], a
    ld c, b
    sub c
    inc d
    ld b, l
    ld sp, $4d0c
    di
    adc e
    db $e3
    ld h, $44
    ld [$30c0], sp
    ld c, $03
    add b
    ld [hl], b
    inc e
    inc bc
    add b
    ldh [$98], a
    ld h, $37
    ld d, e
    inc [hl]
    call $ce3b
    di
    sbc a
    sbc a
    add sp, $39
    db $fd
    call nc, Call_000_33cc
    db $10
    ld h, b
    cp $ec
    ccf
    ld sp, hl
    inc l
    sub d
    ld e, a

jr_006_7468:
    db $dd
    ret nz

    ld b, b
    inc de
    ld l, d
    inc b
    ld bc, $c400
    ld sp, $ce38
    add hl, sp
    add h
    ld bc, $4f3f
    reti


    adc [hl]
    ccf
    ld b, c
    ld [bc], a
    jr nc, @-$6f

    ld a, [hl]
    pop hl
    ld hl, sp+$73
    inc d
    push bc
    ld [c], a
    ld c, [hl]
    inc hl
    adc b
    ld h, d
    jr @-$7b

    ldh [$fa], a
    ld h, e
    jp nz, $0f00

    dec hl
    adc h
    sub a
    adc b
    ld [de], a
    inc b
    pop hl
    jr c, @+$7d

    jr nc, jr_006_7502

    add hl, de
    inc hl
    ld c, b
    sbc $6f
    sbc l
    db $e3
    ld a, b
    db $db
    ld d, h
    and $39
    adc a
    ld a, a
    adc e
    db $e3
    ld sp, hl
    ld a, $0e
    ld [hl], h
    ld b, d
    db $10
    or [hl]
    sbc $c7
    ld l, d
    db $eb
    add b
    jr nz, @+$0d

    ld l, b
    xor $7a
    ld [hl], d
    inc e
    add a
    sbc $a6
    ld d, b
    nop
    ld c, $03
    add b
    ret nc

    scf
    ld hl, sp-$02
    cp a
    rst $08
    db $ec
    ld c, $ee
    ld l, b
    sub b
    rrca
    ld l, b
    db $eb
    add b
    ret nz

    inc sp
    ld l, d
    jp c, $a2b6

    jr nz, jr_006_7468

    db $ec
    ld d, b
    nop
    inc b
    ld a, [bc]
    rlca
    inc b
    ccf
    sbc a
    ret c

    inc l
    jr jr_006_74fd

    inc e
    ld c, $09
    inc b
    add d
    pop bc
    ld h, b
    ldh a, [$7c]
    ld a, $22
    ret nz

jr_006_74f9:
    ld h, b
    jr @+$0e

    ld [bc], a

jr_006_74fd:
    ld bc, $c102
    ld h, b
    sub b

jr_006_7502:
    adc [hl]
    rst $00
    and e
    and e
    ld de, $2088
    ld de, $9204
    add b
    rra
    rst $08
    ldh [rNR23], a
    inc c
    inc c
    ld b, $02
    ld bc, $a001
    ret c

    ld l, h
    jp z, $8364

    ld b, c
    ret nz

    sbc h
    ld c, $01
    add b
    ret nz

    ldh [rSVBK], a
    ld a, b
    inc a
    daa
    sub e
    ldh [$f8], a
    ld a, l
    add [hl]
    jp Jump_000_0f1f


    and b
    add b
    db $10
    inc c
    ld a, [bc]
    sub d
    rst $08
    ld h, a
    and e
    ld d, c
    and c
    sub b
    call z, $c284
    ld h, c
    add h
    jr c, jr_006_75a0

    jr nc, jr_006_75aa

    ld [bc], a
    ld [bc], a
    ld de, $1017
    adc b
    ld h, a
    ld b, c
    db $10
    adc b
    ld b, b
    ld hl, $9c61
    ld b, l
    db $ec
    add $0b
    ld b, h
    ld [c], a
    inc c
    inc c
    ld b, $4b
    and l
    sub d
    xor d
    ld c, l
    inc l
    inc bc
    ld a, [hl+]
    sub [hl]
    ld e, e
    ld h, h
    ld h, c
    add b
    push bc
    adc [hl]
    rst $00
    ld a, [hl-]
    adc h
    call nz, Call_006_6062
    ld hl, sp+$5c
    ld a, [bc]
    ld d, l
    jr z, jr_006_74f9

    ld b, a
    ld h, [hl]
    xor c
    db $f4
    ld hl, sp-$04
    ld a, [hl]
    inc hl
    ld de, $debd
    ld hl, sp+$28
    inc e

Call_006_7586:
    adc [hl]
    rst $00
    ld e, [hl]
    ld hl, $9810
    call z, Call_006_7a64
    ccf
    inc de
    ld c, c

jr_006_7592:
    add l
    pop bc
    or c
    inc [hl]
    dec l
    ld [$137f], sp
    dec c
    ld b, b
    and b
    ld e, [hl]
    cpl
    rla

jr_006_75a0:
    db $e3
    pop af
    jr @-$72

    ld l, l
    or [hl]
    ld [c], a
    or b
    add hl, hl
    push af

jr_006_75aa:
    ld bc, $38e1
    sbc e
    cp b
    ld sp, $2077
    inc b
    ld d, a
    ld d, h
    di
    ld a, c
    rst $08
    and a
    jp c, $ec8d

    ld a, [bc]
    inc sp
    ld h, e
    sub c
    and c
    db $10
    sbc c
    add a
    inc de
    adc c
    db $e4
    ld a, [c]
    sbc l
    ld d, a
    and d
    ldh a, [$8a]
    push de
    ld h, $b5
    ld d, [hl]
    ld [hl], b
    push de
    ld a, [hl+]
    db $fd

jr_006_75d5:
    ld a, [hl]
    or c
    add [hl]
    xor a
    ld b, $9c
    inc e
    ld c, [hl]
    inc sp
    pop bc
    ret z

    db $e4
    ld [hl], b
    jr c, jr_006_75d5

    rlca
    inc bc
    add c
    ret nc

    db $ed
    ld a, e
    rst $10
    db $eb
    add $88
    cp l
    ld [c], a
    jr nz, jr_006_7602

    ld [$0e1c], sp
    sbc b
    ld a, l
    ld [hl+], a
    ld [hl-], a
    ret z

    ld e, h
    dec l
    cp $ff
    sub a
    ld a, a
    sbc a
    rst $30

jr_006_7602:
    ld sp, hl
    rst $00
    jr nc, jr_006_7592

    ld h, $25
    adc e
    add c
    and b
    ld h, h
    ld a, [de]
    add hl, bc
    rra
    call Call_006_7cf3
    rst $28
    dec sp
    rst $18
    ret z

    ld b, d
    ld de, $1884
    ld hl, sp+$3a
    ld [de], a
    add l
    adc a
    or $f4
    ld sp, hl
    add [hl]
    and c
    cp b
    ld l, c
    xor d
    add a
    adc a
    call nz, Call_000_21a2
    adc b
    and d
    ld [hl], $a9
    ld l, l
    ld c, h
    ld [hl+], a

jr_006_7633:
    ld h, b
    dec [hl]
    rst $00
    ld hl, $5848
    xor b
    add l
    db $10
    inc b
    ld bc, $4104
    adc e
    db $e3
    ld d, $5a
    ld sp, $c410
    ld [hl-], a
    inc e
    add a
    ld e, d
    sub e
    add e
    add c
    dec d
    adc a
    adc h
    rlca
    ld a, [c]
    ld sp, $9657
    ld [de], a
    inc h
    adc c
    adc d
    jp nc, $84a4

    ld c, b
    ld [de], a
    inc d
    sub l
    dec h
    ld de, $435e
    jr nc, jr_006_7633

    ld h, a
    add hl, de
    call nz, Call_000_3ef1
    inc c
    sub e
    dec h
    ld [hl], b
    dec b
    inc l
    ld h, h
    pop bc
    dec b
    ld e, [hl]
    inc c
    cpl
    set 6, h
    push de
    ld b, c

jr_006_767c:
    rlca
    call nc, $f091
    ld a, h
    ld sp, $74cc
    add hl, bc
    db $fc
    ld b, b
    sub b
    ld l, b
    ld e, h
    rst $38
    ld d, d
    ld h, [hl]
    and b
    ld [bc], a
    ld l, l
    sbc e
    ld d, b

jr_006_7692:
    ld h, l
    push hl
    ld b, h
    dec de
    add [hl]
    rst $20
    sub d
    ld l, l
    sbc d
    ld c, a
    db $f4

jr_006_769d:
    sbc d
    ld [hl], b
    ld c, d
    ld h, $d5
    dec h
    and [hl]
    ld l, d
    dec d
    inc de
    inc [hl]
    call $ce39
    db $76

Jump_006_76ac:
    db $f4
    ei
    ld a, $e1
    ld h, h
    and d
    ld [hl], l
    jr nc, jr_006_767c

    ld h, c
    reti


    rst $20
    and d
    adc a
    db $d3
    push af
    ld [$6144], sp
    and l
    ld l, c
    ld b, [hl]
    jr c, jr_006_7692

    ld a, [hl-]
    dec b
    and [hl]
    and a
    sub l
    ld [hl], a
    ld a, l
    ld [c], a
    ld h, d
    ld e, b
    pop de
    jr jr_006_7717

    ld de, $4104
    jr nc, @+$4e

    sub d
    adc b
    adc d
    or b
    adc b
    ld l, e
    dec de
    sub h
    add hl, bc
    inc l
    ld b, h
    ld e, a
    add b
    add hl, de
    ld [bc], a
    ld [hl], c
    ret z

    ld h, d
    add hl, de
    dec [hl]
    ld l, c
    and d
    ld a, [$40f0]
    ld l, l
    ld d, b
    dec [hl]
    ld h, $67
    sbc c
    ld d, a
    add hl, sp
    ld h, b
    ld bc, $ac78
    ld a, e
    jr nz, jr_006_7737

    ld sp, $f7cf
    sub c
    jr z, jr_006_769d

    ld e, [hl]
    ld b, l
    adc l
    inc b
    ld a, a
    ld de, $56d4
    cpl
    ld b, l
    pop de
    sbc e
    ld h, b
    jr nz, jr_006_7758

    ld [c], a
    push af
    inc [hl]
    cp b

jr_006_7717:
    ld l, $06
    ld sp, $4d8d
    ld h, $c9
    or d
    db $ec
    cp e
    ld c, $c3
    cp c

jr_006_7724:
    xor $7b
    dec de
    ld l, [hl]
    cp e
    or d
    db $eb
    ld b, e
    ld d, d
    and a
    ret


    inc l
    add b
    nop
    ld b, h
    or c
    ld e, d
    ld c, c
    sub b

jr_006_7737:
    inc h
    add sp, $78
    cp [hl]
    add a
    add a
    ret


    cp l
    ld a, d
    ld e, c
    add d
    call z, $2eb3
    ld c, e
    sub d
    call nc, $2db5
    dec bc
    ld b, h
    jp hl


    ld [bc], a
    ld d, [hl]

jr_006_774f:
    xor c
    or l
    dec de
    ld a, [bc]
    ld d, [hl]
    adc b
    inc bc
    jr nc, jr_006_7724

jr_006_7758:
    add hl, de
    add [hl]
    ld h, b
    sbc b
    ld h, $0c
    add e
    jr nz, jr_006_77a9

    ld [de], a
    inc b
    pop af
    or b
    ld c, l
    ld hl, $9557
    ld b, l
    ld de, $4a35
    sbc a
    and b
    dec e
    ld de, $0171
    add hl, bc
    jr c, jr_006_778e

    ld b, [hl]
    ld l, e
    call nc, $2ae1
    ld c, e
    adc a
    add e
    pop hl
    inc hl
    call z, Call_000_30b3
    ld hl, $81e2
    di
    ld [hl], b
    db $fc
    ld a, [de]
    ld b, $9f
    pop bc
    ld h, b

jr_006_778e:
    ld e, b
    call z, $c30d
    ld [hl], b
    db $d3
    inc [hl]
    call Call_006_4103
    dec de
    ld c, a
    rra
    add $b9
    xor [hl]
    ld b, c
    sub c
    ld a, l
    inc sp
    ld c, l
    jr @+$30

    reti


    jp nz, Jump_000_00f7

jr_006_77a9:
    jr nz, jr_006_774f

    ld hl, $b1a6
    ld h, c
    ld l, l
    ld c, d
    ld a, e
    dec l
    bit 6, d
    ret c

    or [hl]
    ld l, d
    xor a
    scf
    db $fd
    dec d
    ld b, l
    ret c

    or h
    db $eb
    ld h, l
    reti


    add e
    ld [$f27d], sp
    or c
    ld h, [hl]
    di
    cp $07
    dec de
    add $f5
    ld [hl], $b3
    inc bc
    jp nc, $f1c7

    rst $20
    ld a, c
    inc de
    db $eb
    jp hl


    rst $20
    ld a, l
    rra
    ld b, l
    ld a, [bc]
    sub h
    dec a
    ld [hl], a
    cp $03
    ld a, a
    dec sp
    ld c, [hl]
    jp nc, $9964

    ld a, a
    ld a, [bc]
    ld c, [hl]
    inc hl
    adc c
    ld a, a
    dec c
    ld l, $33
    adc l
    sub b
    ld h, e
    ld e, $41
    db $fc
    call $8700
    ld a, [c]
    di
    ld a, a
    dec l
    sub h
    ld h, l
    db $fc
    ld [de], a
    ld sp, hl
    cp [hl]
    ld [hl], c
    db $fc
    dec h
    ld sp, hl
    cp $81
    db $fc
    push de
    rst $08
    push af

Call_006_780f:
    db $ed
    ld a, e
    add h
    ld l, c
    ld [c], a
    ld b, $5f
    ld b, a
    pop de
    reti


    ld a, a
    and d
    sub e
    rra
    push bc
    add a
    or c
    inc b
    ld e, a
    adc $a1
    and [hl]
    sub a
    ld a, [$8f55]
    ld d, c
    sub $66
    or c
    cp $57
    sbc [hl]
    ei
    add b
    ld b, e
    cp d
    rst $28
    ei
    add a
    pop af
    ld a, [hl+]
    ld e, e
    ld [hl], c
    sub l
    ld e, a
    dec hl
    xor a
    dec e
    ld d, c
    db $e4
    ld a, c
    ld a, d
    ld d, c
    ld a, [de]
    ld [c], a
    scf
    ld h, e
    ld c, c
    ld [hl-], a
    ld c, a
    and e
    jp hl


    ld d, h
    inc h
    db $e3
    sub $5e
    di
    inc c
    sub c
    ld b, d
    ld a, c
    dec d
    ld a, b
    db $dd
    sbc b
    ld l, e
    jr c, @+$56

    ld hl, $32a8
    ld c, h
    sbc b
    push hl
    ld l, $7c
    sbc a
    inc h
    push de
    cp c
    ld d, d
    ld c, a
    and e
    add sp, $15
    dec b
    ld d, b
    db $f4
    inc a
    rst $10
    dec [hl]
    push hl
    db $76
    sbc b
    ld e, a
    rla
    jp z, $8302

    ld b, h
    pop de
    ld c, $b3
    xor h
    rla
    dec b
    pop bc
    ld [hl], b
    ld e, h
    cpl
    dec bc
    jp z, $bcf2

    cpl
    dec bc
    jp nz, $bdf0

jr_006_7892:
    nop
    cpl
    ret nz

    adc e
    xor $98
    dec hl
    and l
    db $eb
    ld [$bd7a], sp
    ld hl, $476f
    call nc, $f539
    inc bc
    adc b
    call nz, $30a2
    ld hl, sp-$54
    ld e, d
    dec hl
    inc de
    jr nz, @+$12

    rrca
    rst $20
    ldh a, [rP1]
    nop
    jr nz, jr_006_78c7

    ld a, a
    cp a
    ld [c], a
    ldh [rNR41], a
    inc de
    ld sp, hl
    db $fd
    ld e, $90
    ld c, b
    and e
    jp nc, Jump_006_6cc9

    or b

jr_006_78c7:
    ld [bc], a
    ld bc, $bf7e
    ld c, b
    ld b, h
    ld [hl+], a
    add hl, de
    inc c
    ld b, [hl]
    inc hl
    ld [hl], b
    cp b
    ld h, h
    ld bc, $e0c0
    ld c, h
    daa
    ld [hl+], a
    inc h
    sub d
    ld c, b
    and h
    ld d, [hl]
    dec de
    dec c
    ld b, $83
    ld [bc], a
    ld bc, $0103
    add a
    add e
    jp nz, $3045

    xor b
    add b
    ld h, h
    ld b, c
    ld a, [de]
    xor l
    ld e, d
    ld c, [hl]
    inc bc
    ld bc, $81d2
    jr nz, jr_006_7892

    sbc e
    call z, $254a
    inc h
    ld [de], a
    ld a, [bc]
    and l
    ld d, h
    xor d
    ld d, h
    ld e, $0f
    jr c, jr_006_7926

    inc l
    jp nc, $a800

    ld d, [hl]
    db $db
    ld l, [hl]
    ld a, [bc]
    xor a
    xor $6b
    pop af
    ld hl, sp-$02
    add hl, sp
    ld a, b
    cp h
    sbc a
    jp $f4e1


    db $fd
    ld sp, hl
    ld a, $df
    ld l, a
    ret z

    or b

jr_006_7926:
    ld a, b
    ld a, [hl-]
    ld [hl], b
    jr c, jr_006_7947

    ld e, c
    inc l
    add d
    ld bc, $8205
    add $2f
    dec de
    adc l
    ld h, b
    or b
    ld b, h
    ld [hl+], a
    inc d
    adc d
    ld b, l
    sbc [hl]
    rst $08
    ld d, d
    add hl, hl
    db $10
    ld c, b
    dec h
    ld d, d
    xor c
    ld d, d
    xor c

jr_006_7947:
    ld a, h
    ld a, $1f
    ld a, [hl-]
    ld b, a
    set 5, l
    rst $30
    add h
    jp nz, $a64c

    ld c, a
    rst $00
    db $e4
    sbc a
    ld e, a
    or b
    ld a, a
    inc l
    sub [hl]
    ld c, [hl]
    scf
    inc e
    db $db
    inc h
    jr nz, jr_006_7973

    ld d, e
    ld [bc], a
    pop hl
    ld a, c
    inc d
    jp c, $c56c

    ld h, d
    and c
    ret nc

    ld hl, sp-$4f
    add b
    pop bc
    and b

jr_006_7973:
    ret nc

    xor b
    ld d, h
    ld d, b
    jr z, jr_006_7992

    ld [de], a
    ld b, e
    sbc a
    ret nc

    adc [hl]
    ld c, c
    ld a, d
    ld [hl], d
    ld h, a
    ldh a, [rWX]
    xor a
    ret c

    sub e
    sub b
    ld a, e
    ld a, l
    ret z

    pop hl
    ld b, e
    cp a
    ldh [$8e], a
    ld c, h
    dec hl

jr_006_7992:
    inc [hl]
    xor h
    ld e, h
    add e
    ld [hl], e
    ld a, [de]
    ld b, b
    jr nz, jr_006_79c1

    ld [de], a
    ld e, a
    jr z, jr_006_79c1

    ld b, c
    ldh a, [$90]
    cp a
    db $e3
    sbc $a6
    inc bc
    ld bc, $e0c0
    or l
    ld e, $0f
    inc bc
    pop bc
    push hl
    reti


    ld a, h
    ld e, a
    ld d, $88
    ld a, [bc]
    inc bc
    inc bc
    jp nc, Jump_000_01b0

    push af
    ld a, l
    adc $05
    ld a, [hl-]
    dec bc

jr_006_79c1:
    ld d, e
    rst $08
    db $f4
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld [bc], a
    inc bc
    inc b
    dec b
    inc b
    ld b, $07
    ld [$0907], sp
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
    jr jr_006_7a00

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld e, $1e
    jr nz, jr_006_7a0f

    ld hl, $221d
    jr nz, @+$23

    inc hl
    inc h
    jr nz, jr_006_7a1b

    inc h
    jr nz, jr_006_7a1d

    ld hl, $201e

jr_006_7a00:
    ld [hl+], a
    ld hl, $2625
    daa
    jr z, @+$2b

    jr nz, @+$2c

    add hl, hl
    dec hl
    inc l
    dec l
    ld l, $2f

jr_006_7a0f:
    jr nz, jr_006_7a41

    cpl
    ld hl, $2031
    ld hl, $320d
    rrca
    db $10
    inc sp

jr_006_7a1b:
    inc [hl]
    dec [hl]

jr_006_7a1d:
    ld [hl], $37
    jr c, jr_006_7a57

    add hl, sp
    ld [hl], $36

jr_006_7a24:
    ld [hl], $36
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    dec sp
    dec sp
    dec sp
    ld hl, $2020
    ld hl, $3d3c
    ld a, $3f
    ld b, b
    jr nz, jr_006_7a7a

    ld b, d
    ld hl, $4443
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_006_7a41:
    ld c, c

jr_006_7a42:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    ld c, a
    ld d, b
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld c, h
    ld e, b
    ld c, h
    ld e, c
    ld e, d

jr_006_7a57:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_006_7a60:
    ld h, h
    ld d, a
    ld c, h
    ld h, l

Call_006_7a64:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld c, b
    ccf
    ld l, d
    ld l, e
    ccf
    ld l, h
    ld l, l
    ld h, e
    ld l, [hl]
    ld l, a
    ld hl, $7020
    ld hl, $7121
    ld [hl], d
    ld [hl], e

jr_006_7a7a:
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld hl, $7c20
    ld hl, $7e7d
    ld a, a
    add b
    ld hl, $2081
    add d
    add e
    nop
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    jr nz, jr_006_7a24

    ld hl, $8d8c
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
    sbc b
    jr nz, jr_006_7a42

    ld hl, $9b9a
    sbc d
    sbc e
    sbc h
    sbc l
    sbc h
    sbc l
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc a
    and b
    and c
    sbc [hl]
    and d
    jr nz, jr_006_7a60

    and h
    sbc [hl]
    sbc [hl]
    and l
    and [hl]
    sbc [hl]
    sbc [hl]

jr_006_7ac4:
    sbc [hl]
    and a
    sbc [hl]
    sbc [hl]
    xor b
    sbc [hl]
    sbc [hl]
    sbc [hl]
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    ld hl, $2020
    or e
    or h
    or l
    sbc [hl]
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
    sbc [hl]
    sbc [hl]
    jp nz, $c29e

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    jp $c39e


    sbc [hl]
    ld hl, $c5c4
    ld hl, $20c6
    rst $00
    ret z

    nop
    add b
    add e
    ld b, c
    and b
    ld e, b
    inc h
    inc [hl]
    add hl, bc
    rlca
    ld b, d
    ld b, c
    jr nc, @+$6a

    inc l
    jr c, jr_006_7b2a

    dec b
    add e
    jp nz, Jump_006_7141

    ld c, b
    add h
    inc h
    inc [hl]
    ld c, $05
    add d
    and d
    ld [hl], c
    jr nz, jr_006_7b77

    ld h, d
    ld hl, $8704
    ld b, a
    ldh [$80], a

jr_006_7b2a:
    jp hl


    inc e
    add [hl]
    ld c, a
    jr z, jr_006_7ac4

    ret


    ret nz

    or d
    nop
    ret nc

    db $e4
    ld [hl], h
    dec sp
    inc e
    adc [hl]
    and $23
    cp c
    add h
    sub $62
    ld a, [hl-]
    inc b
    add d
    and e
    ld d, b
    ld a, b
    inc d
    ld a, [bc]
    ld b, e
    db $10
    and b
    jp Jump_006_54e5


    add hl, sp
    ld b, h
    or [hl]
    ld c, l
    ld d, $92
    pop de
    add hl, hl
    ld [hl], h
    jp z, Jump_000_106c

    dec bc
    daa
    sub a
    call z, Call_006_5348
    ld c, c
    add c
    ld a, [bc]
    ld h, c
    cpl
    adc e
    add $43
    ld d, e
    add sp, $1d
    ld a, [hl-]
    cp a
    ld h, b
    and e
    ret c

    inc l
    ld [hl], h
    cp d
    add h
    add [hl]
    and h
    add hl, sp

jr_006_7b77:
    ld hl, $47d5
    ld h, h
    ld a, [hl-]
    ret nz

    ld [$3ec5], a
    ld bc, $c0d8
    or a
    ld c, e
    nop
    ld l, h
    jr c, @+$1f

    rrca
    ld d, e
    ld l, $b4
    ei
    dec h
    ld a, [hl]
    jp hl


    add b

jr_006_7b92:
    ld [bc], a
    add c
    add b
    ret c

    inc l
    ld h, $06
    ld h, a
    ld l, [hl]
    sub h
    call c, $2264
    pop bc
    ld l, b
    cp d
    jp hl


    add [hl]
    sub b
    ldh [$6c], a
    jp nc, $1ebc

    ld b, h
    ld a, $20
    cp [hl]
    ld e, h
    ldh a, [$79]
    ld b, b
    sub $43
    add hl, bc
    add hl, hl
    ret


    pop hl
    ld [hl], b
    push de
    add hl, bc
    ld a, h
    cp b
    ld [hl], h
    add hl, sp
    sbc c
    ld d, l
    ld [hl], b
    or e
    adc c
    jr c, @-$38

    cp b
    ld [bc], a
    sbc a
    pop bc
    ld b, $03
    ld hl, $d398
    ld b, e
    and d
    and a
    ld [$82c4], sp
    ld d, c
    inc [hl]
    and a
    dec l
    ld b, h
    db $d3
    ld c, d
    ld a, [c]
    sbc c
    xor h
    sub [hl]
    sub h
    ld [hl], l
    ld a, [hl+]
    db $d3
    ld c, e
    push af
    dec [hl]
    ld c, c
    sub l
    ld e, d
    ld h, c
    push bc
    rst $10
    rst $10
    ld h, h
    inc hl
    ld d, c
    or b
    call c, Call_000_2871
    pop de
    ld h, b
    add hl, hl
    and d
    ld [hl], c
    ld b, b
    and h
    ld d, l
    add $a7
    ld [hl], b
    xor c
    ld sp, hl
    call c, $96f7
    db $eb
    db $e3
    xor b
    ld a, [c]
    add hl, sp
    db $76

jr_006_7c0b:
    sbc e
    ld e, l
    or a
    ld e, e
    jr z, jr_006_7b92

    ld bc, $7f3e
    ld c, a
    xor a
    db $db

jr_006_7c17:
    rst $28
    ld hl, sp+$07
    cp $81
    rst $38
    adc a
    xor a
    db $ed
    ld a, [$5f7f]
    sub a
    cp $01
    add c
    jr nz, @+$5a

    db $10
    ld a, [de]
    ld l, e
    rst $18
    jr nc, jr_006_7c91

    dec bc
    add e
    jr nz, jr_006_7c0b

jr_006_7c33:
    ld a, [hl-]
    rrca
    add h
    ld hl, $4a18
    inc de
    add l
    ld hl, $5a58
    rla
    ld b, $01
    sbc b
    ld l, d
    dec de
    ld b, $50
    stop
    nop
    add b
    add e
    ld d, b
    ld c, b
    inc l
    db $10
    inc e
    dec bc
    add h
    pop bc
    and c
    ld [hl], b
    ret z

    jr nz, jr_006_7c84

    dec e
    dec c
    adc b
    jp Jump_006_5161


    jr z, jr_006_7cc8

    jr z, @+$14

    ld a, [bc]
    add d
    ld [bc], a
    ld h, e
    ld [hl], c
    ld d, d
    ld l, c
    jr c, jr_006_7cdd

    ld a, [hl-]
    dec e
    ret z

    and h
    ld [hl], d
    add hl, hl
    inc b
    ld a, d
    ld [hl], $0b
    add c
    ld b, b
    and d
    or d
    ret z

    inc h
    ld a, d
    ld e, e
    jr nc, jr_006_7c17

    call nz, $c041
    sbc b
    add b

jr_006_7c84:
    ld l, d
    ld [de], a
    dec bc
    adc d
    ret z

    inc h
    ld [de], a
    ld [hl-], a
    ld de, $470a
    dec sp
    dec e

jr_006_7c91:
    ld b, d
    and l
    ld d, b
    add hl, sp
    ld l, h
    cp [hl]
    dec de
    jr nz, jr_006_7c33

    ld d, d
    add e
    ld b, b
    ld l, b
    jr nc, jr_006_7cb4

    ld [hl+], a
    ld [de], a
    adc b
    adc $66
    ld d, h
    ld de, $fcdc
    add [hl]
    ld b, e
    xor e
    ld c, $e8
    jr nc, @+$5c

    inc h
    db $10
    ld [hl], $1c

jr_006_7cb4:
    ld c, $87
    and c
    and b
    ld d, b
    inc l
    db $10
    ld a, [bc]
    ld b, $b4
    ld e, c
    xor c
    ld sp, $405b
    ld l, d
    push de
    ld [de], a
    sub a
    reti


jr_006_7cc8:
    and b
    sub $9b
    jr z, jr_006_7d1f

    and e
    ld c, e
    add [hl]
    ld d, l
    ld l, e
    ld [hl-], a
    ld a, [hl-]
    call Call_000_0972
    ld e, [hl]
    dec c

jr_006_7cd9:
    rlca
    call nz, Call_000_1102

jr_006_7cdd:
    dec d
    ld a, [hl-]
    sub $3a
    add d
    adc [hl]
    ld b, a
    ld a, b
    sub b
    push de
    or d
    di
    inc c
    or d
    pop bc
    ld b, c
    ldh [$f8], a
    dec l
    call z, Call_000_130a

Call_006_7cf3:
    cp h

Jump_006_7cf4:
    ld c, e
    nop
    reti


    bit 0, [hl]
    ld [hl], e
    inc d
    ld a, [hl-]
    sub b
    ld c, a
    rst $00
    jp $01f2


    ld b, $ad
    ld e, h
    jr @-$78

    or b
    ld [hl+], a
    ld sp, $9420
    ld c, l
    ld l, a
    cp c
    pop bc
    ld sp, $bcf8
    ld l, b
    rst $20
    ld h, l
    ld h, l
    cp c
    jp c, Jump_006_5b62

    sbc l
    sub [hl]
    ccf
    dec h

jr_006_7d1f:
    ld h, a
    ldh [$dd], a
    push hl
    cp e
    ld c, h
    ld l, [hl]
    dec sp
    ld b, d
    ld a, [hl-]
    xor h
    sub c
    ld c, b
    call nz, $4072
    db $ec
    add a
    ld a, a
    push de
    add b
    and l
    ld h, c
    and c
    jr c, jr_006_7cd9

jr_006_7d39:
    ld d, d
    ld a, [hl+]
    and h
    ld [hl], c
    or [hl]
    cp e
    inc a
    ld c, [hl]
    or $95
    rst $18
    ld [c], a
    reti


    ld a, [c]
    or $fc
    call z, $c5b3
    db $dd
    sbc [hl]
    ld c, $c9
    inc h
    and d
    ld e, c
    ld [hl-], a
    ld c, e
    ret z

    dec c
    ld l, d
    and b
    ld b, b
    ld c, a
    xor a
    db $db
    rst $28
    sub h
    jp z, $bf7d

    ld e, a
    ld a, a
    rst $28
    pop hl
    ld sp, hl
    add b
    jr nz, jr_006_7d7a

    dec a
    cp $81
    jr nz, jr_006_7dc7

    ld a, [de]
    inc b
    ld a, [hl]
    ld h, b
    ld a, b
    add hl, hl
    dec b
    ld a, l
    ld b, c
    adc b
    ld a, [hl-]

jr_006_7d7a:
    rrca
    add h
    ld hl, $4a18
    inc de
    add l
    ld hl, $5a58
    rla
    add [hl]
    ld hl, $6a98
    ld c, $06
    ld h, c
    ret c

    ld [hl], h
    jr jr_006_7dd0

    ld b, b
    nop
    nop
    add b
    add e
    ld d, b
    ld c, b
    jr nz, jr_006_7dbd

    dec d
    rlca
    inc b
    add d
    ld h, b
    ret nc

    xor b
    ld e, b
    ld l, b
    dec d
    ld b, $0d
    ld b, e
    ld h, b
    or c
    ld c, b
    xor h
    ld e, d
    cpl
    jr jr_006_7d39

    add d
    db $e3

Jump_006_7db0:
    ld sp, $acc8
    ld l, $1b
    ld a, [bc]
    adc c
    ld b, a
    db $e4
    ld d, b
    xor b
    inc d
    ld a, [bc]

jr_006_7dbd:
    dec a
    ld [$4384], sp
    and h
    db $10
    ld c, b
    add h
    ld c, d
    ld b, l

jr_006_7dc7:
    dec de
    adc [hl]
    add $05
    add d
    pop de
    ld [hl], b
    cp [hl]
    ld h, l

jr_006_7dd0:
    jr c, @-$62

    pop bc
    inc hl
    ld [hl], b
    and b
    ld e, h
    ld a, [$1a44]
    sbc [hl]
    ld [bc], a
    ld h, a
    jp nc, $1c68

    ld d, d
    inc de
    ld a, [hl+]
    add [hl]
    ld c, b
    ld h, c
    pop af
    ld a, [de]
    ld e, h
    ld [$3028], a
    add hl, de
    inc c
    add $91
    ld h, b
    ret c

    ld [hl], b
    ld a, [hl-]
    ld e, $8a
    add c
    add b
    and b
    ld l, d
    ret c

    ld b, h
    dec h
    dec e
    xor [hl]
    pop bc
    dec hl
    ld [hl], c
    ld c, c
    db $fc
    ld d, $cd
    ld b, c
    sbc b
    pop de
    ld l, d
    push de
    adc b
    sub h
    and [hl]
    add a
    inc c
    dec b
    jp $d4a5


    ld a, [hl+]
    ld a, h
    ld d, h
    ld l, d
    ld [hl], $1b
    adc [hl]
    ld [hl+], a
    pop bc

jr_006_7e1d:
    pop af
    nop
    add h
    ld b, l
    ld d, l

jr_006_7e22:
    xor e
    sub $42
    ld h, c
    add hl, bc
    sub l
    or b
    dec a
    add a
    sbc l
    ld d, c
    ld l, a
    or a
    ld a, [$3808]
    rla
    adc a
    or e
    add $e6
    jr nz, jr_006_7e22

    and h
    jp c, Jump_000_05cc

    dec c
    ld bc, $f36b
    ld a, [hl+]
    push hl
    ld [hl], d
    cp l
    ld h, b
    add d
    adc b
    call nz, $5182
    inc [hl]
    db $10
    dec bc
    sbc c
    dec c
    ld h, e
    jr nc, jr_006_7e54

    and b

jr_006_7e54:
    and [hl]
    add h
    dec [hl]
    ld h, h
    xor l
    ld bc, $fa6f
    cp h
    ld d, b
    ld a, [bc]
    dec b
    and e
    jp nc, $ead3

    dec [hl]
    jr c, jr_006_7e1d

    ld h, h
    daa
    and c
    or c
    ld l, h
    dec [hl]
    ld sp, $048e
    inc d
    ld c, [hl]
    jr z, jr_006_7e88

    adc d
    and d
    db $db
    sbc l
    ld [hl], $6b
    adc l
    or d
    add d
    ld [hl], e
    ld a, c
    or [hl]
    jr nc, jr_006_7eb6

    ld e, b
    ld a, [hl+]
    ld d, $82
    pop de
    ld a, c

jr_006_7e88:
    inc e
    xor d
    ld a, l
    ld [c], a
    push af
    cp [hl]
    add d
    ld [hl], h
    add hl, hl
    db $fd
    dec c
    ld b, [hl]
    and d
    dec l
    call c, $e6e5
    add e
    ld e, [hl]
    ccf
    ld b, a
    inc h
    ld d, l
    jp hl


    adc [hl]
    dec b
    jp nz, $a0fd

    db $10
    inc de
    rst $28
    ld hl, sp-$04
    cp $bf
    ld a, a
    rst $08
    ret nc

    dec a
    rst $38
    ld [hl], b
    rra
    ld hl, sp+$0a
    ld [bc], a

jr_006_7eb6:
    ld a, [hl]
    ld h, b
    ld b, a
    push af
    db $fc
    add b
    ldh [$88], a
    dec c
    rst $38
    add c
    ret nz

    ldh a, [rNR12]
    inc c
    add e
    jr nz, jr_006_7f38

    ld h, d
    inc de
    add l
    ld hl, $5a58
    rla
    add [hl]
    ld hl, $0a98
    add hl, de
    add a
    ld hl, $7ad8
    rra
    adc b
    ld hl, $04e4
    nop
    inc b
    nop
    sbc [hl]
    ld [bc], a
    ld h, a
    jp nc, $1c68

    ld d, d
    inc de
    ld a, [hl+]
    add [hl]
    ld c, b
    ld h, c

Jump_006_7eec:
    pop af
    ld a, [de]
    ld e, h
    ld [$3028], a
    add hl, de
    inc c
    add $91
    ld h, b
    ret c

    ld [hl], b
    ld a, [hl-]
    ld e, $8a
    add c
    add b
    and b
    ld l, d
    ret c

    ld b, h
    dec h
    dec e
    xor [hl]
    pop bc
    dec hl
    ld [hl], c
    ld c, c
    db $fc
    ld d, $cd
    ld b, c
    sbc b
    pop de
    ld l, d
    push de
    adc b
    sub h
    and [hl]
    add a
    inc c
    dec b
    jp $d4a5


    ld a, [hl+]
    ld a, h
    ld d, h
    ld l, d
    ld [hl], $1b
    adc [hl]
    ld [hl+], a
    pop bc

jr_006_7f23:
    pop af
    nop
    add h
    ld b, l
    ld d, l

jr_006_7f28:
    xor e
    sub $42
    ld h, c
    add hl, bc
    sub l
    or b
    dec a
    add a
    sbc l
    ld d, c
    ld l, a
    or a
    ld a, [$3808]

jr_006_7f38:
    rla
    adc a
    or e
    add $e6
    jr nz, jr_006_7f28

    and h
    jp c, Jump_000_05cc

    dec c
    ld bc, $f36b
    ld a, [hl+]
    push hl
    ld [hl], d
    cp l
    ld h, b
    add d
    adc b
    call nz, $5182
    inc [hl]
    db $10
    dec bc
    sbc c
    dec c
    ld h, e
    jr nc, jr_006_7f5a

    and b

jr_006_7f5a:
    and [hl]
    add h
    dec [hl]
    ld h, h
    xor l
    ld bc, $fa6f
    cp h
    ld d, b
    ld a, [bc]
    dec b
    and e
    jp nc, $ead3

    dec [hl]
    jr c, jr_006_7f23

    ld h, h
    daa
    and c
    or c
    ld l, h
    dec [hl]
    ld sp, $048e
    inc d
    ld c, [hl]
    jr z, jr_006_7f8e

    adc d
    and d
    db $db
    sbc l
    ld [hl], $6b
    adc l
    or d
    add d
    ld [hl], e
    ld a, c
    or [hl]
    jr nc, jr_006_7fbc

    ld e, b
    ld a, [hl+]
    ld d, $82
    pop de
    ld a, c

jr_006_7f8e:
    inc e
    xor d
    ld a, l
    ld [c], a
    push af
    cp [hl]
    add d
    ld [hl], h
    add hl, hl
    db $fd
    dec c
    ld b, [hl]
    and d
    dec l
    call c, $e6e5
    add e
    ld e, [hl]
    ccf
    ld b, a
    inc h
    ld d, l
    jp hl


    adc [hl]
    dec b
    jp nz, $a0fd

    db $10
    inc de
    rst $28
    ld hl, sp-$04
    cp $bf
    ld a, a
    rst $08
    ret nc

    dec a
    rst $38
    ld [hl], b
    rra
    ld hl, sp+$0a
    ld [bc], a

jr_006_7fbc:
    ld a, [hl]
    ld h, b
    ld b, a
    push af
    db $fc
    add b
    ldh [$88], a
    dec c
    rst $38
    add c
    ret nz

    ldh a, [rNR12]
    inc c
    add e
    jr nz, @+$72

    ld h, d
    inc de
    add l
    ld hl, $5a58
    rla
    add [hl]
    ld hl, $0a98
    add hl, de
    add a
    ld hl, $7ad8
    rra
    adc b
    ld hl, $04e4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_006_7ff0:
    nop
    nop
    nop

Call_006_7ff3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
