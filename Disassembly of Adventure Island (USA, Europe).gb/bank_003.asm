; Disassembly of "Adventure Island (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    jp Jump_003_4016


    jp Jump_003_4081


    ld bc, $7a24
    adc $ff
    rst $38
    rst $38
    db $ec
    and a
    ld b, d
    stop
    nop
    nop
    nop
    nop

Jump_003_4016:
    ld a, $80
    ldh [rNR52], a
    ld a, $ff
    ldh [rNR51], a
    ld a, $77
    ldh [rNR50], a
    xor a
    ldh [rNR30], a
    ld hl, $4006
    ld de, $ff30
    ld b, $10

jr_003_402d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_402d

    ld a, $80
    ldh [rNR30], a
    ld a, $08
    ldh [rNR10], a
    ld a, $00
    ldh [rNR11], a
    ldh [rNR21], a
    ldh [rNR31], a
    ldh [rNR41], a
    xor a
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR32], a
    ldh [rNR42], a
    ldh [rNR13], a

Call_003_4050:
    ldh [rNR23], a
    ldh [rNR33], a
    ldh [rNR43], a
    ld a, $80
    ldh [rNR14], a
    ldh [rNR24], a
    ldh [rNR34], a
    ldh [rNR44], a
    ld hl, $de00
    ld bc, $00e8

jr_003_4066:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_003_4066

    ld c, $00

jr_003_406f:
    call Call_003_4140
    inc c
    ld a, c
    cp $06
    jr c, jr_003_406f

    ld hl, $ded8
    ld [hl], $db
    inc hl
    ld [hl], $49
    ret


Jump_003_4081:
    ldh a, [$e5]
    cp $80
    call c, Call_003_40bd
    ld b, $06
    ld a, [$dee4]
    and a
    jr z, jr_003_4094

    ld b, $02
    ld a, $04

jr_003_4094:
    ld [$dede], a

jr_003_4097:
    push bc
    ld hl, $44dc
    ld a, [$dede]
    rst $10
    ld a, [$dedf]
    and [hl]
    jr z, jr_003_40ae

    call Call_003_4204
    call Call_003_4532
    call Call_003_45d5

jr_003_40ae:
    ld hl, $dede
    inc [hl]
    pop bc
    dec b
    jr nz, jr_003_4097

    call Call_003_4650
    call Call_003_4670
    ret


Call_003_40bd:
    ld c, a
    or $80
    ldh [$e5], a
    xor a
    ld [$dee0], a
    ld [$dee1], a
    ld [$dee3], a
    ld a, c
    cp $00
    jp z, Jump_003_4016

    cp $7a
    jp c, Jump_003_4193

    sub $7a
    rst $00
    and $40
    db $eb
    ld b, b
    inc b
    ld b, c
    dec c
    ld b, c
    inc de
    ld b, c
    ld d, $40
    xor a
    ld [$dee4], a
    ret


    ld a, $01
    ld [$dee4], a
    xor a
    ldh [rNR32], a
    ld a, $08
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR42], a
    ld a, $80
    ldh [rNR14], a
    ldh [rNR24], a
    ldh [rNR44], a
    ret


    ld hl, $dee0
    ld a, [hl]
    and a
    jr nz, jr_003_410c

    inc [hl]

jr_003_410c:
    ret


Call_003_410d:
    ld c, $00
    ld b, $04
    jr jr_003_4117

    ld c, $04
    ld b, $02

jr_003_4117:
    call Call_003_4140
    inc c
    dec b
    jr nz, jr_003_4117

    call Call_003_41fa
    ret


    nop
    inc h
    ld c, b
    ld l, h
    sub b
    or h
    ld [de], a
    rst $38
    ld [$17ff], a
    rst $38
    xor $ff
    inc e
    rst $38
    di
    rst $38
    ld hl, $f7ff
    rst $38
    rla
    rst $38
    xor $ff
    ld hl, $f7ff
    rst $38

Call_003_4140:
    ld hl, $4122

Call_003_4143:
    ld a, c
    rst $18
    ldh [$e0], a
    ld d, a
    ld hl, $de00
    rst $10
    ld [hl], d
    ld hl, $de09
    ld a, d
    rst $10
    ld [hl], $7d
    inc hl
    ld [hl], $4d
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    scf
    rr [hl]
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    inc [hl]
    inc hl
    ld [hl+], a

Jump_003_4171:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$dee5], a
    ld hl, $4128
    ld a, c
    sla a

Jump_003_4181:
    rst $20
    push de
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    xor a
    ld [hl+], a
    inc hl
    ld [hl], a
    ld a, $80
    ld [de], a
    inc de
    inc de
    ld [de], a
    ret


Jump_003_4193:
    ld hl, $4cfa
    rst $20
    ld hl, $ffe3
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [de]
    ldh [$e1], a
    and $30
    jr nz, jr_003_41b9

    ld [$dee0], a
    ld [$dee4], a
    ld [$dee3], a
    ld [$dedc], a
    ld [$dedd], a
    ld c, $00
    ld a, $06
    jr jr_003_41c3

jr_003_41b9:
    swap a
    and $0f
    ldh [$e1], a
    ld c, $04
    ld a, $02

jr_003_41c3:
    ldh [$e2], a
    ld b, $01

jr_003_41c7:
    call Call_003_4140
    ld hl, $ffe1
    srl [hl]
    jr nc, jr_003_41f3

    ld hl, $44dc
    ld a, c
    rst $10
    ld a, [$dedf]
    or [hl]
    ld [$dedf], a
    ldh a, [$e3]
    ld l, a
    ldh a, [$e4]
    ld h, a
    ld a, b
    rst $18
    ld e, a
    inc hl
    ld d, [hl]
    ld hl, $de09
    ldh a, [$e0]
    rst $10
    ld [hl], e
    inc hl
    ld [hl], d
    inc b
    inc b

jr_003_41f3:
    inc c
    ld hl, $ffe2
    dec [hl]
    jr nz, jr_003_41c7

Call_003_41fa:
    xor a
    ldh [rNR32], a
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a
    ret


Call_003_4204:
    ld hl, $4122
    ld a, [$dede]
    rst $18
    ldh [$e0], a
    ld hl, $de0f
    rst $18
    and a
    jr z, jr_003_4218

    dec [hl]
    jr z, jr_003_4218

    ret


jr_003_4218:
    ld hl, $de09
    ldh a, [$e0]
    rst $10
    ld a, [hl+]
    ldh [$e3], a
    ld a, [hl]

Call_003_4222:
    ldh [$e4], a
    call Call_003_44ec
    cp $d0
    jr c, jr_003_4291

    sub $d0
    ld de, $4224
    rst $08
    ld l, e
    ld b, e
    ld l, a
    ld b, e
    ld [hl], e
    ld b, e
    ld [hl], a
    ld b, e
    ld a, e
    ld b, e
    ld a, a
    ld b, e
    add e
    ld b, e
    adc l
    ld b, e
    sbc b
    ld b, e
    and e
    ld b, e
    xor a
    ld b, e
    cp h
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    ld b, e
    call nc, $e843
    ld b, e
    db $fc
    ld b, e
    ld [$1444], sp
    ld b, h
    jr nz, jr_003_42a3

    nop
    nop
    ld b, a
    ld b, h
    ld c, l
    ld b, h
    ld e, c
    ld b, h
    ld h, [hl]
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    ld b, h
    ld a, l
    ld b, h
    sub l
    ld b, h
    and a
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    ld b, h
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
    or a
    ld b, h

jr_003_4291:
    push af
    ld hl, $de0b
    ldh a, [$e0]
    rst $18
    ld b, a
    ld hl, $de0f
    ldh a, [$e0]
    rst $10
    xor a
    ld [hl], a
    ld a, b
    and a

jr_003_42a3:
    jr z, jr_003_42b1

    pop af
    push af
    and $0f
    inc a
    ld [hl], a
    xor a

jr_003_42ac:
    add [hl]
    dec b
    jr nz, jr_003_42ac

    ld [hl], a

jr_003_42b1:
    pop af
    and $f0
    cp $c0
    jr nz, jr_003_42d0

    ld hl, $de12
    ldh a, [$e0]
    rst $10
    ld a, [hl]
    or $80
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
    inc a
    ld [hl], a
    jp Jump_003_435a


jr_003_42d0:
    swap a
    ld b, a
    ld a, [$dee5]
    and a
    jp nz, Jump_003_435a

    ld hl, $de12
    ldh a, [$e0]
    rst $18
    and $7f
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $4702
    ld a, [$dede]
    rst $18
    ld hl, $46da
    inc a
    inc a
    rst $20
    xor a
    ld [de], a
    ld hl, $de21
    ldh a, [$e0]
    rst $10
    xor a
    ld [hl+], a
    inc hl
    ld [hl], a
    ld a, [$dede]
    cp $03
    jr nz, jr_003_430f

    ld a, b
    call Call_003_4527
    jp Jump_003_435a


jr_003_430f:
    cp $05
    jr nz, jr_003_432f

    ld hl, $de0d
    ldh a, [$e0]
    rst $10
    ld a, b
    add [hl]
    inc hl
    add [hl]
    and $0f
    ld b, a
    ld hl, $de19
    ldh a, [$e0]
    rst $10
    ld a, b
    ld [hl+], a
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    jp Jump_003_435a


jr_003_432f:
    ld hl, $de0c
    ldh a, [$e0]
    rst $10
    ld a, b
    add [hl]
    inc hl
    add [hl]
    inc hl
    add [hl]
    ld hl, $490d
    rst $20
    ld hl, $de19
    ldh a, [$e0]
    rst $10
    push hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    inc hl
    ld c, $00
    ld a, [hl]
    cp $80
    jr c, jr_003_4353

    dec c

jr_003_4353:
    pop hl
    add [hl]
    ld [hl+], a
    ld a, c
    adc [hl]
    ld [hl+], a
    inc [hl]

Jump_003_435a:
    xor a
    ld [$dee5], a
    ld hl, $de09
    ldh a, [$e0]
    rst $10
    ldh a, [$e3]
    ld [hl+], a
    ldh a, [$e4]
    ld [hl], a
    ret


    ld b, $00
    jr jr_003_4385

    ld b, $0c
    jr jr_003_4385

    ld b, $18
    jr jr_003_4385

    ld b, $24
    jr jr_003_4385

    ld b, $30
    jr jr_003_4385

    ld b, $3c

Call_003_4381:
    jr jr_003_4385

    ld b, $48

jr_003_4385:
    ld hl, $de0c
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    ld hl, $de0c
    ldh a, [$e0]
    rst $10
    ld a, [hl]
    add $0c
    ld [hl], a
    ret


    ld hl, $de0c
    ldh a, [$e0]
    rst $10
    ld a, [hl]
    sub $0c
    ld [hl], a
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de0d
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de0e
    ldh a, [$e0]
    rst $18
    add b
    ld [hl], a
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de1c
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de0b
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    rr a
    rr a
    rr a
    and $c0
    ld b, a
    ld hl, $de10
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de12
    ldh a, [$e0]
    rst $10
    ld a, b
    or $80
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de20
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de1e
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de22
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $4443
    ld a, [$dede]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cpl
    ld c, a
    ldh a, [rNR51]
    and c
    ld c, a
    ld a, b
    and [hl]
    or c
    ldh [rNR51], a
    ld a, [$dee7]
    and [hl]
    or c
    ld [$dee7], a
    ret


    ld de, $4422
    adc b
    ld a, $01
    ld [$dee5], a
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de11
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de11
    ldh a, [$e0]
    rst $18
    add b
    ld [hl], a
    ret


    call Call_003_44ec
    ld b, a
    ld hl, $de1d
    ldh a, [$e0]
    rst $10
    ld [hl], b
    ret


    call Call_003_44ec
    push af
    call Call_003_44f9
    pop af
    jp Jump_003_4500


    call Call_003_451a
    sub $01
    jr z, jr_003_448f

    push af
    call Call_003_450f
    call Call_003_44f9
    pop af
    jp Jump_003_4500


jr_003_448f:
    call Call_003_451a
    jp Jump_003_451a


    call Call_003_44ec
    push af
    call Call_003_44ec
    push af
    call Call_003_44f9
    pop af
    ldh [$e4], a
    pop af
    ldh [$e3], a
    ret


    jp Jump_003_450f


    call Call_003_44ec
    push af
    call Call_003_44ec
    ldh [$e4], a
    pop af
    ldh [$e3], a
    ret


    ld hl, $44e4
    ld a, [$dede]
    ld c, a
    rst $10
    ld a, [$dedf]
    and [hl]
    ld [$dedf], a
    call Call_003_4140
    xor a
    ld [$dee6], a
    ld a, [$dedf]
    and $30
    or a
    jr nz, jr_003_44da

    ld a, [$dee7]
    ldh [rNR51], a

jr_003_44da:
    pop af
    ret


    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b
    cp $fd
    ei
    rst $30
    rst $28
    rst $18
    cp a
    ld a, a

Call_003_44ec:
    ld hl, $ffe4
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld a, [de]
    inc [hl]
    jr nz, jr_003_44f8

    inc hl
    inc [hl]

jr_003_44f8:
    ret


Call_003_44f9:
    ldh a, [$e4]
    call Call_003_4500
    ldh a, [$e3]

Call_003_4500:
Jump_003_4500:
    push af
    ld hl, $de00
    ldh a, [$e0]
    rst $18
    inc [hl]
    ld hl, $de01
    rst $10
    pop af
    ld [hl], a
    ret


Call_003_450f:
Jump_003_450f:
    call Call_003_451a
    ldh [$e3], a
    call Call_003_451a
    ldh [$e4], a
    ret


Call_003_451a:
Jump_003_451a:
    ld hl, $de00
    ldh a, [$e0]
    rst $10
    dec [hl]
    ld a, [hl]
    ld hl, $de01
    rst $18
    ret


Call_003_4527:
    ld hl, $49b5
    rst $20
    ld hl, $ded8
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_003_4532:
    ld a, [$dede]
    cp $03
    jr z, jr_003_453a

    ret


jr_003_453a:
    xor a
    ld hl, $dedc
    ld [hl+], a
    ld [hl], a
    ld hl, $de12
    ldh a, [$e0]
    rst $18
    cp $80
    jr c, jr_003_4554

    ld a, [$dedf]
    and $20
    ret nz

    xor a
    ldh [rNR42], a
    ret


jr_003_4554:
    ld hl, $ded8
    ld a, [hl+]
    ldh [$e3], a
    ld a, [hl]
    ldh [$e4], a

jr_003_455d:
    call Call_003_44ec
    ld b, a
    cp $ff
    jr z, jr_003_45c6

    and $e0
    jr z, jr_003_4593

    cp $e0
    jr z, jr_003_4587

    cp $40
    jr z, jr_003_45a6

    cp $80
    jr z, jr_003_4578

    jp Jump_003_45c6


jr_003_4578:
    ld hl, $de12
    ldh a, [$e0]
    rst $10
    ld a, b
    and $1f
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_003_455d

jr_003_4587:
    ld hl, $de10
    ldh a, [$e0]
    rst $10
    ld a, b
    and $07
    ld [hl], a
    jr jr_003_455d

jr_003_4593:
    ld hl, $dedd
    inc [hl]
    ld hl, $de19
    ldh a, [$e0]
    rst $10
    ld a, b
    and $07
    ld [hl+], a
    xor a
    ld [hl+], a
    inc [hl]
    jr jr_003_45ba

jr_003_45a6:
    ld hl, $dedc
    inc [hl]
    ld a, b
    and $0f
    ld [$dedb], a
    call Call_003_44ec
    ld [$deda], a
    ld hl, $de3f
    inc [hl]

jr_003_45ba:
    ld hl, $ffe3
    ld de, $ded8
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Jump_003_45c6:
jr_003_45c6:
    xor a
    ld hl, $dedc
    ld [hl+], a
    ld [hl], a
    ld hl, $de19
    ldh a, [$e0]
    rst $10
    ld [hl+], a
    ld [hl], a
    ret


Call_003_45d5:
    ld hl, $de12
    ldh a, [$e0]
    rst $18
    ld b, a
    cp $80
    jr nc, jr_003_45fc

    inc hl
    ld a, [hl+]
    and a
    jr nz, jr_003_4633

    push hl
    ld hl, $4a00
    ld a, b
    rst $20
    ld hl, $ffe3
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld b, [hl]

Jump_003_45f3:
    call Call_003_4644
    cp $fe
    jr z, jr_003_460b

    jr c, jr_003_461c

jr_003_45fc:
    ld hl, $de12
    ldh a, [$e0]
    rst $18
    or $80
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_003_460b:
    ld hl, $de15
    ldh a, [$e0]
    rst $10
    call Call_003_4644
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc b
    jp Jump_003_45f3


jr_003_461c:
    push af
    ld hl, $de13
    ldh a, [$e0]
    rst $10
    pop af
    ld [hl+], a
    push hl
    call Call_003_4644
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc b
    pop hl
    ld [hl], b

jr_003_4633:
    dec hl
    dec [hl]
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    ld a, [de]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    adc [hl]
    ld [de], a
    ret


Call_003_4644:
    ldh a, [$e3]
    add b
    ld e, a
    ldh a, [$e4]
    adc $00
    ld d, a
    ld a, [de]
    inc b
    ret


Call_003_4650:
    ld hl, $dee0
    ld a, [hl+]
    and a
    jr z, jr_003_466f

    ld a, [$dee4]
    and a
    jr nz, jr_003_466f

    inc [hl]
    ld a, [hl]
    cp $08
    jr c, jr_003_466f

    xor a
    ld [hl+], a
    inc hl
    inc [hl]
    ld a, [hl]
    cp $10
    jr c, jr_003_466f

    call Call_003_410d

jr_003_466f:
    ret


Call_003_4670:
    ld a, [$dee4]
    and a
    jr nz, jr_003_4691

    xor a
    ld [$dede], a

jr_003_467a:
    ld hl, $46ae
    ld a, [$dede]
    rst $10
    ld a, [$dedf]
    and [hl]
    call z, Call_003_4708
    ld hl, $dede
    inc [hl]
    ld a, [hl]
    cp $04
    jr c, jr_003_467a

jr_003_4691:
    ld a, $04
    ld [$dede], a

jr_003_4696:
    ld hl, $44dc
    ld a, [$dede]
    rst $10
    ld a, [$dedf]
    and [hl]
    call nz, Call_003_4708
    ld hl, $dede
    inc [hl]
    ld a, [hl]
    cp $06
    jr c, jr_003_4696

    ret


    nop
    stop
    jr nz, @+$12

    rst $38
    ld de, $12ff
    rst $38
    inc de
    rst $38
    inc d
    rst $38
    nop
    nop
    ld d, $ff
    rla
    rst $38
    jr @+$01

    add hl, de
    rst $38
    ld a, [de]
    rst $38
    dec de
    rst $38
    inc e
    rst $38
    dec e
    rst $38
    ld e, $ff
    nop
    nop
    jr nz, @+$01

    ld hl, $22ff
    rst $38
    inc hl
    rst $38
    add sp, -$01
    jp hl


    rst $38
    ld [$ebff], a
    rst $38
    db $ec
    rst $38
    nop
    nop
    db $ed
    rst $38
    xor $ff
    rst $28
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    db $f4
    rst $38
    push af
    rst $38
    nop
    nop
    or $ff
    rst $30
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    nop
    dec b
    ld a, [bc]
    rrca
    dec b
    rrca

Call_003_4708:
    ld hl, $4122
    ld a, [$dede]
    rst $18
    ldh [$e0], a
    ld a, [$dede]
    rst $00
    ld [hl+], a
    ld b, a
    cpl
    ld b, a
    ld d, a
    ld b, a
    ld h, c
    ld b, a
    ld c, d
    ld b, a
    ld h, a
    ld b, a

jr_003_4721:
    ret


    ld c, $00
    call Call_003_4771
    call $4787
    call Call_003_47f9
    jr jr_003_4721

    ld a, [$dedc]
    and a
    jr z, jr_003_474a

    ld hl, $4122
    ld a, $03
    rst $18
    ldh [$e0], a
    ld c, $05
    call Call_003_4771
    call $4787
    call Call_003_48fb
    jr jr_003_4721

jr_003_474a:
    ld c, $05
    call Call_003_4771
    call $4787
    call Call_003_47f9
    jr jr_003_4721

    ld c, $0a
    call $4787
    call Call_003_47f9
    jr jr_003_4721

    ld a, [$dedd]
    and a
    jr z, jr_003_476f

    ld c, $0f
    call $4787
    call Call_003_47f9

jr_003_476f:
    jr jr_003_4721

Call_003_4771:
    ld hl, $de10
    ldh a, [$e0]
    rst $18
    or $00
    ld b, a
    ld hl, $46b2
    ld a, c
    inc a
    rst $20
    ld a, b
    ld [de], a
    ret


    nop
    jr nz, jr_003_47a6

    jr nz, jr_003_47a9

    ld d, $de
    ldh a, [$e0]
    rst $18
    swap a
    and $0f
    ld b, a
    ld hl, $de11
    ldh a, [$e0]
    rst $10
    ld a, b
    sub [hl]
    jr c, jr_003_47a2

    ld hl, $dee3
    sub [hl]
    jr nc, jr_003_47a3

jr_003_47a2:
    xor a

jr_003_47a3:
    or $00
    ld b, a

jr_003_47a6:
    swap b
    ld e, a

jr_003_47a9:
    ld a, c
    cp $0a
    jr nz, jr_003_47ba

    ld a, e
    and $0f
    srl a
    srl a
    ld hl, $4783
    rst $18
    ld b, a

jr_003_47ba:
    xor a
    ld [$dee2], a
    ld hl, $46da
    ld a, c
    inc a
    inc a
    rst $20
    ld a, [de]
    and $f0
    cp b
    ret z

    ld a, $01
    ld [$dee2], a
    ld hl, $46b2
    ld a, c
    inc a
    inc a
    rst $20
    ld a, c
    cp $0a
    jr z, jr_003_47ed

    inc de
    inc de
    ld a, [de]
    and $7f
    ld [de], a
    dec de
    dec de
    ld a, b
    ld [de], a
    inc de
    inc de
    ld a, [de]
    or $80
    ld [de], a
    jr jr_003_47ef

jr_003_47ed:
    ld a, b
    ld [de], a

jr_003_47ef:
    ld hl, $46da

Jump_003_47f2:
    ld a, c
    inc a
    inc a
    rst $20
    ld a, b
    ld [de], a
    ret


Call_003_47f9:
    ld hl, $de1b
    ldh a, [$e0]
    rst $10
    xor a
    ld [hl], a
    ld b, $00
    ld hl, $de1d
    ldh a, [$e0]
    rst $18
    cp $80
    jr c, jr_003_480e

    dec b

jr_003_480e:
    dec hl
    dec hl
    dec hl
    dec hl
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ld hl, $de19
    ldh a, [$e0]
    rst $10
    ld a, [hl+]
    ldh [$e1], a
    ld a, [hl]
    ldh [$e2], a
    ld hl, $de22
    ldh a, [$e0]
    rst $18
    push hl
    ld hl, $4c7a
    rst $20
    ld hl, $ffe3
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop hl
    inc hl
    ld a, [hl]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld hl, $ffe1
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl], a
    inc de
    ld a, [de]
    cp $00
    jr nz, jr_003_4853

    inc de
    ld a, [de]
    cp $08
    jr z, jr_003_485b

jr_003_4853:
    ld hl, $de23
    ldh a, [$e0]
    rst $10
    inc [hl]
    inc [hl]

jr_003_485b:
    ld hl, $de20
    ldh a, [$e0]
    rst $18
    and a
    jr z, jr_003_48a0

    inc hl
    cp [hl]
    jr c, jr_003_486b

    inc [hl]
    jr jr_003_48a0

jr_003_486b:
    ld hl, $de1e
    ldh a, [$e0]
    rst $18
    push hl
    ld hl, $4bf8
    rst $20
    ld a, e
    ldh [$e3], a
    ld a, d
    ldh [$e4], a
    pop hl
    inc hl
    ld a, e
    add [hl]
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    inc de
    inc [hl]
    push af
    ld a, [de]
    cp $80
    jr nz, jr_003_4890

    xor a
    ld [hl], a

jr_003_4890:
    ld b, $00
    pop af
    cp $80
    jr c, jr_003_4898

    dec b

jr_003_4898:
    ld hl, $ffe1
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a

jr_003_48a0:
    ld hl, $ffe2
    srl [hl]
    dec hl
    rr [hl]
    ld b, [hl]
    ld hl, $46b2
    ld a, c
    add $03
    rst $20
    ld a, c
    cp $0f
    jr nz, jr_003_48cf

    ld hl, $de10
    ldh a, [$e0]
    rst $10
    ld a, [$dede]
    cp $03
    jr z, jr_003_48ca

    ld a, b
    and $07
    or $68
    ld b, a
    jr jr_003_48cf

jr_003_48ca:
    ld a, b
    and $07
    or [hl]
    ld b, a

jr_003_48cf:
    ld a, b
    ld [de], a
    ld a, c
    cp $0a
    jr z, jr_003_48dc

    ld a, [$dee2]
    and a
    jr nz, jr_003_48ee

jr_003_48dc:
    ld hl, $48f5
    ld a, [$dede]
    rst $10
    ldh a, [rNR52]
    and [hl]
    jr z, jr_003_48ee

    ldh a, [$e2]
    and $07
    jr jr_003_48f2

jr_003_48ee:
    ldh a, [$e2]
    and $07

jr_003_48f2:
    inc de
    ld [de], a
    ret


    ld bc, $0402
    ld [$0802], sp

Call_003_48fb:
    ld hl, $dedb
    ld a, [hl-]
    srl a
    ld b, a
    ld a, [hl]
    rr a
    ldh [rNR23], a
    ld a, b
    or $80
    ldh [rNR24], a
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
    ld d, [hl]
    nop
    jr c, jr_003_492a

    inc c

jr_003_492a:
    ld [bc], a
    call nc, $9202
    inc bc
    ld b, h
    inc b
    xor $04
    sub d
    dec b
    ld [hl+], a
    ld b, $b0
    ld b, $36
    rlca
    or h
    rlca
    ld a, [hl+]
    ld [$089c], sp
    ld b, $09
    ld l, d
    add hl, bc
    ret z

    add hl, bc
    ld [hl+], a
    ld a, [bc]
    db $76
    ld a, [bc]
    add $0a
    db $10
    dec bc
    ld e, b
    dec bc
    sbc d
    dec bc
    jp c, Jump_000_160b

    inc c
    ld c, [hl]
    inc c
    add d
    inc c
    or h
    inc c
    db $e4
    inc c
    db $10
    dec c
    ld a, [hl-]
    dec c
    ld h, d
    dec c
    adc b
    dec c
    xor h
    dec c
    call z, $ec0d
    dec c
    ld a, [bc]
    ld c, $26
    ld c, $40
    ld c, $5a
    ld c, $72
    ld c, $88
    ld c, $9c
    ld c, $b0
    ld c, $c4
    ld c, $d6
    ld c, $e6
    ld c, $f6
    ld c, $04
    rrca
    ld [de], a
    rrca
    jr nz, jr_003_499a

    inc l
    rrca
    jr c, jr_003_499e

    ld b, h
    rrca
    ld c, [hl]
    rrca
    ld e, b
    rrca
    ld h, d
    rrca
    ld l, d
    rrca
    ld [hl], d

jr_003_499a:
    rrca
    ld a, d
    rrca
    add d

jr_003_499e:
    rrca
    adc b
    rrca
    sub b
    rrca
    sub [hl]
    rrca
    sbc h
    rrca
    and d
    rrca
    and [hl]
    rrca
    xor h
    rrca
    or b
    rrca
    or h
    rrca
    cp b
    rrca
    cp h
    rrca
    rst $08
    ld c, c
    call c, $ef49
    ld c, c
    rst $30
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $e3
    adc l
    ld b, h
    ld e, e
    ld b, h
    cp h
    ld b, l
    jr z, @+$48

    inc de
    ld b, a
    ccf
    rst $38
    sbc h
    dec b
    dec b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    db $e3
    adc l
    inc d
    rla
    add hl, de
    inc e
    rra
    rst $38
    adc l
    ld b, $02
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    rst $38
    ld c, d
    ld c, d
    ld d, c
    ld c, d
    ld e, b
    ld c, d
    ld e, a
    ld c, d
    ld h, [hl]
    ld c, d
    ld l, l
    ld c, d
    ld [hl], h
    ld c, d
    ld a, [hl]
    ld c, d
    adc b
    ld c, d
    sub d
    ld c, d
    sbc h
    ld c, d
    xor a
    ld c, d
    or [hl]
    ld c, d
    ret nz

    ld c, d
    jp z, $d14a

    ld c, d
    ret c

    ld c, d
    ld [c], a
    ld c, d
    db $ec
    ld c, d
    ld sp, hl
    ld c, d
    inc c
    ld c, e
    inc [hl]
    ld c, e
    ld a, $4b
    ld c, b
    ld c, e
    ld c, a
    ld c, e
    ld d, [hl]
    ld c, e
    ld h, b
    ld c, e
    ld l, d
    ld c, e
    ld a, l
    ld c, e
    add a
    ld c, e
    sub c
    ld c, e
    sbc b
    ld c, e
    sbc a
    ld c, e
    or d
    ld c, e
    cp a
    ld c, e
    jp nc, $e54b

    ld c, e
    cp $00
    ld hl, sp+$1f
    nop
    ld hl, sp-$01
    cp $00
    ldh [rDIV], a
    nop
    inc b
    rst $38
    cp $00
    ld hl, sp+$08
    nop
    cp $ff
    cp $00
    ld hl, sp+$0f
    nop
    ldh a, [rIE]
    cp $00
    ld hl, sp+$0a
    nop
    db $fc
    rst $38
    cp $00
    ld hl, sp-$11
    nop
    rst $38
    rst $38
    cp $00
    ld hl, sp+$08
    nop
    db $fc
    ret c

    nop
    rst $38
    rst $38
    cp $00
    ld hl, sp+$0c
    nop
    db $fc
    ret z

    nop
    rst $38
    rst $38
    cp $00
    ret nz

    inc e
    nop
    ld [bc], a
    add b
    nop
    cp $ff
    cp $00
    ld hl, sp+$01
    nop
    nop
    rlca
    nop
    ldh [rIE], a
    cp $00
    ld hl, sp+$01
    nop
    nop
    ld bc, $e000
    cp $00
    add sp, $01
    nop
    nop
    rlca
    nop
    add sp, -$01
    cp $00
    ret nc

    ld [$e800], sp
    rst $38
    cp $00
    ld hl, sp+$07
    nop
    nop
    cp $00
    nop
    rst $38
    cp $00
    ldh a, [$03]
    nop
    nop
    ld [bc], a
    nop
    adc b
    rst $38
    cp $00
    and b
    ld b, $00
    add sp, -$01
    cp $00
    and b
    ld [bc], a
    nop
    ldh [rIE], a
    cp $00
    ldh a, [$5a]
    nop
    nop
    dec b
    nop
    ret nc

    rst $38
    cp $00
    sub b
    inc bc
    nop
    jr nz, jr_003_4aef

    nop
    ret c

    rst $38
    cp $00
    ret c

jr_003_4aef:
    inc b
    nop
    ld [$000a], sp
    nop
    ret z

    nop
    rst $38
    rst $38
    cp $00
    ld d, b
    ld [bc], a
    nop
    nop
    inc b
    nop
    jr z, jr_003_4b04

    nop

jr_003_4b04:
    jr jr_003_4b07

    nop

jr_003_4b07:
    add sp, $08
    nop
    cp $ff
    cp $00
    jr z, @+$07

    nop
    nop
    rlca
    nop
    jr @+$05

    nop
    ld [$000a], sp
    nop
    inc bc
    nop
    ld hl, sp+$06
    nop
    add sp, $06
    nop
    jr jr_003_4b2c

    nop
    add sp, $06
    nop
    jr jr_003_4b33

    nop

jr_003_4b2c:
    add sp, $06
    nop
    jr @+$2a

    nop
    rst $38

jr_003_4b33:
    rst $38
    cp $00
    ld hl, sp-$10
    nop
    nop
    ldh a, [rP1]
    nop
    rst $38
    cp $00
    ld hl, sp-$10
    nop
    nop
    ldh a, [rP1]
    rst $38
    rst $38
    cp $00
    ld hl, sp+$2d
    nop
    db $fc
    rst $38
    cp $00
    ld hl, sp+$3c
    nop
    nop
    rst $38
    cp $00
    ld hl, sp+$08
    nop
    nop
    ld [bc], a
    nop
    ret z

    rst $38
    cp $00
    ld hl, sp+$07
    nop
    nop
    rra
    nop
    ld hl, sp-$01
    cp $00
    ld [$cc64], sp
    nop
    ld h, h
    call z, Call_000_2d00
    sbc c
    ld bc, $00fe
    ldh [$2d], a
    nop
    nop
    rst $38
    cp $00
    ldh a, [$0d]
    nop
    nop
    ld [bc], a
    nop
    adc b
    rst $38
    cp $00
    ld hl, sp+$07
    nop
    nop
    cp $00
    nop
    rst $38
    cp $00
    ld hl, sp+$3f
    inc [hl]
    rst $38
    rst $38
    cp $00
    ld hl, sp-$60
    xor e
    cp $ff
    cp $00
    ld hl, sp+$08
    nop
    nop
    cp $00
    ld d, b
    inc b
    nop
    nop
    cp $00
    db $10
    inc b
    nop
    nop
    rst $38
    cp $00
    ld hl, sp+$14
    nop
    rst $38
    cp $00
    jr nc, jr_003_4bda

    nop
    nop
    rst $38
    cp $00
    sub b
    inc b
    nop

jr_003_4bc4:
    jr jr_003_4bc4

    nop
    ld hl, sp+$1e
    ld b, h
    nop
    cp $00
    and b
    ret z

    nop
    nop
    rst $38
    cp $00
    add sp, $02
    nop
    ld [$00fe], sp

jr_003_4bda:
    ld hl, sp+$0a
    nop
    nop
    cp $00
    sbc b
    ret z

    nop
    nop
    rst $38
    cp $00
    ret z

    ld b, $00
    ld [$00fe], sp
    ld hl, sp+$0f
    nop
    nop
    cp $00
    cp b
    ret z

    nop
    nop
    rst $38
    jr jr_003_4c46

    dec h
    ld c, h
    ld [hl-], a
    ld c, h
    ccf
    ld c, h
    ld c, b
    ld c, h
    ld c, h
    ld c, h
    ld d, b
    ld c, h
    ld e, c
    ld c, h
    ld e, l
    ld c, h
    ld h, h
    ld c, h
    ld [hl], l
    ld c, h
    jr jr_003_4c5c

    jr jr_003_4c5e

    jr @+$4e

    jr @+$4e

    jr jr_003_4c64

    nop
    inc bc
    ld b, $09
    ld b, $03
    nop
    db $fd
    ld a, [$faf7]
    db $fd
    add b
    nop
    ld bc, $0302
    ld [bc], a
    ld bc, $ff00
    cp $fd
    cp $ff
    add b
    nop
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    nop
    cp $fc
    ld a, [$fefc]
    add b
    nop
    ld [bc], a
    inc b
    ld [bc], a
    nop
    cp $fc

jr_003_4c46:
    cp $80
    nop
    inc b
    db $fc
    add b
    nop
    ld [bc], a
    cp $80
    nop
    ld bc, $0102
    nop
    rst $38
    cp $fd
    add b
    nop
    ld b, $fa

jr_003_4c5c:
    add b
    nop

jr_003_4c5e:
    nop
    ld b, $06
    ld a, [$80fa]

jr_003_4c64:
    nop
    dec b
    rrca
    add hl, de
    inc hl
    add hl, de
    rrca
    dec b
    nop
    ei
    pop af
    rst $20
    db $dd
    rst $20
    pop af
    ei
    add b
    nop
    ld e, $00
    ld [c], a
    add b
    adc h
    ld c, h
    sub b
    ld c, h
    sbc d
    ld c, h
    xor b
    ld c, h
    or d
    ld c, h
    cp h
    ld c, h
    call nz, $dc4c
    ld c, h
    db $e4
    ld c, h
    nop
    nop
    nop
    ld [$003c], sp
    ld e, $00
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [$ffc4], sp
    ret c

    rst $38
    ld [c], a
    rst $38
    db $ec
    rst $38
    or $ff
    nop
    nop
    nop
    ld [$ffd8], sp
    db $ec
    rst $38
    ei
    rst $38
    nop
    nop
    nop
    ld [$0012], sp
    inc c
    nop
    dec b
    nop
    nop
    nop
    nop
    ld [$0000], sp
    jr c, @+$01

    nop
    nop
    nop
    ld [$0059], sp
    or d
    nop
    ld h, h
    nop
    ld b, d
    nop
    nop
    nop
    sbc h
    rst $38
    add sp, -$02
    sbc h
    rst $38
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    ld [$ff6a], sp
    sbc h
    rst $38
    nop
    nop
    nop
    ld [$0000], sp
    ld d, c
    rst $38
    and d
    cp $4c
    rst $38
    ld l, d
    rst $38
    adc b
    rst $38
    and [hl]
    rst $38
    adc $ff
    nop
    nop
    ld h, h
    nop
    nop
    ld [$4d7c], sp
    add b
    ld c, l
    adc c
    ld c, l
    sub d
    ld c, l
    sbc e
    ld c, l
    and h
    ld c, l
    xor l
    ld c, l
    or [hl]
    ld c, l
    cp a
    ld c, l
    ret z

    ld c, l
    pop de
    ld c, l
    ret c

    ld c, l
    pop hl
    ld c, l
    add sp, $4d
    rst $28
    ld c, l
    ld hl, sp+$4d
    rst $38
    ld c, l
    ld [$0f4e], sp
    ld c, [hl]
    jr jr_003_4d70

    ld hl, $284e
    ld c, [hl]
    cpl
    ld c, [hl]
    jr c, jr_003_4d78

    ld b, c
    ld c, [hl]
    ld c, d
    ld c, [hl]
    ld d, e
    ld c, [hl]
    ld e, h
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    sub d
    ld c, [hl]
    or a
    ld c, [hl]
    db $fd
    ld c, [hl]
    ld de, $5a4f
    ld c, a
    sbc a
    ld c, a
    rst $28
    ld c, a
    inc c
    ld d, b
    ld sp, $4e50
    ld d, b
    ld h, a
    ld d, b
    sub l
    ld d, b
    xor b
    ld d, b
    jp z, $f850

    ld d, b
    ld l, $51
    ld c, a
    ld d, c
    ld h, h
    ld d, c
    add a
    ld d, c
    sbc h
    ld d, c
    dec bc
    ld d, d
    ld h, $52
    ccf
    ld d, d
    ld h, h
    ld d, d
    add e
    ld d, d

jr_003_4d70:
    or e
    ld d, d
    rst $08
    ld d, d
    db $e4
    ld d, d
    inc e
    ld d, e

jr_003_4d78:
    ld sp, $4453
    ld d, e
    nop
    ret nz

    ret nz

    rst $38
    rrca
    rst $28
    db $76
    dec de
    ld [hl], a
    ld c, b
    ld [hl], a
    ld [c], a
    db $76
    rrca
    or e
    ld d, h
    or c
    ld d, e
    ld e, c
    ld d, l
    ld l, d
    ld d, e
    rrca
    rst $00
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    ld b, [hl]
    ld d, a
    sub $55
    rrca
    push af
    ld e, b
    daa
    ld e, b
    push bc
    ld e, c
    jp hl


    ld d, a
    rrca
    ld e, c
    ld e, e
    ld bc, $c95b
    ld e, e
    cp e
    ld e, d
    rrca
    jp nc, Jump_003_6f5c

    ld e, h
    inc [hl]
    ld e, l
    cpl
    ld e, h
    rrca
    xor e
    ld e, [hl]
    rla
    ld e, [hl]
    add hl, sp
    ld e, a
    bit 3, l
    rrca
    dec a
    ld h, b
    db $eb
    ld e, a
    add a
    ld h, b
    jp Jump_000_0f5f


    ld e, a
    ld h, c
    ld b, $61
    ret nz

    ld h, c
    adc $60
    rlca
    push af
    ld h, c
    ld b, [hl]
    ld h, d
    sub h
    ld h, d
    rrca
    ld e, a
    ld h, e
    add hl, bc
    ld h, e
    or b
    ld h, e
    ld [c], a
    ld h, d
    rlca
    sub a
    ld h, h
    ld d, l
    ld h, h
    cp l
    ld h, h
    rlca
    ldh [$64], a
    ld sp, hl
    ld h, h
    ld d, $65
    rrca
    inc [hl]
    ld h, [hl]
    ld a, h
    ld h, l
    push af
    ld h, [hl]
    jr z, jr_003_4e5d

    rlca
    sub l
    ld h, a
    ret nz

    ld h, a
    inc b
    ld l, b
    rrca
    ld h, c
    ld l, b
    ccf
    ld l, b
    add c
    ld l, b
    dec l
    ld l, b
    rlca
    cp [hl]
    ld l, b
    sbc h
    ld l, b
    pop hl
    ld l, b
    rrca
    call nc, $cf6a
    ld l, c
    ld l, c
    ld l, e
    ld bc, $0f69
    ld c, $6d
    db $e3
    ld l, h
    jr c, @+$6f

    ret nc

    ld l, h
    rlca
    ld l, a
    ld l, l
    ld c, a
    ld l, l
    adc l
    ld l, l
    rlca
    inc bc
    ld l, [hl]
    xor d
    ld l, l
    ld a, d
    ld l, [hl]
    rrca
    ld a, [hl+]
    ld h, h
    ld de, $4064
    ld h, h
    dec b
    ld h, h
    rrca
    xor b
    ld l, a
    ld sp, hl
    ld l, [hl]
    ld d, b
    ld [hl], b
    or a
    ld l, [hl]
    rrca
    rrca
    ld [hl], d
    ld d, h
    ld [hl], c
    push bc
    ld [hl], d
    rst $30
    ld [hl], b
    rrca
    ld hl, sp+$73
    adc a
    ld [hl], e
    ld c, c
    ld [hl], h

jr_003_4e51:
    ld d, a
    ld [hl], e
    rrca
    inc c
    ld [hl], l
    add a
    ld [hl], l
    dec c
    db $76
    rst $18
    ld [hl], h
    nop

jr_003_4e5d:
    db $10
    ld h, b
    ld c, [hl]
    ld [c], a
    dec c
    pop hl
    inc bc
    and $ff
    ldh [rSB], a
    reti


    db $f4
    jp hl


    nop
    db $d3
    add h
    rst $10
    add h
    rst $10
    add l
    rst $10
    add d
    call nc, $d784
    add l
    rst $10
    add h
    rst $10
    add h
    ret nz

    rst $38
    db $10
    add c
    ld c, [hl]
    ld [c], a
    dec c
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    jp hl


    nop
    call nc, $d713
    db $10
    jr nz, jr_003_4e51

    rst $38
    db $10
    sub l
    ld c, [hl]
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    jp hl


    nop
    db $d3
    sub b
    rst $10
    sub b
    ld d, b
    db $10
    ret c

    sub b
    ld d, c
    rst $10
    db $10
    ret c

    sub b
    ld d, b
    jp hl


    ld [$d811], sp
    ret nz

    jp hl


    inc c
    sub b
    ret nz

    rst $38
    db $10
    cp d
    ld c, [hl]
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rSC], a
    push hl
    ld [$00e9], sp
    reti


    nop
    db $e4
    ld [bc], a
    db $e3
    dec bc
    jp nc, $d394

    jp hl


    inc bc
    inc b
    jp hl


    dec b
    ld b, h
    jp hl


    nop
    inc b
    jp hl


    inc bc
    inc b
    jp hl


    dec b
    ld b, h
    push hl
    ld [bc], a
    ldh [$03], a
    jp hl


    nop
    ldh a, [rDIV]
    ld b, b
    jp c, $ea02

    inc bc
    pop af
    jp c, $e9f8

    ld b, $e5
    rlca
    call nc, $09f0
    ld b, b
    jp c, $ea03

    ld bc, $c0f1
    rst $38
    stop
    ld c, a
    ld [c], a
    dec c
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    jp hl


    nop
    db $d3
    add b
    sub b
    rst $10
    ld d, h
    ret nz

    rst $38
    jr nc, jr_003_4f29

    ld c, a
    ld a, $4f
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rSB], a
    jp hl


    inc bc
    ret nc

    sub c
    ret nz

    ld [c], a
    nop
    pop hl
    inc bc
    and $ed

jr_003_4f29:
    ldh [rSB], a
    db $e4
    ld [bc], a
    db $e3
    dec bc
    jp hl


    nop
    reti


    db $f4
    ldh a, [$0e]
    jp nc, $a090

    ret nz

    ld [$f101], a
    ret nz

    rst $38
    ld [c], a
    dec b
    ldh [rSB], a
    jp hl


    rlca
    ld d, c
    reti


    nop
    jp hl


    nop
    ld d, c
    jp hl


    nop
    ld h, c
    jp hl


    nop
    ld [hl], c
    jp hl


    nop
    ldh a, [$03]
    ld e, a
    ld [$f106], a
    ret nz

    rst $38
    db $10
    ld e, l
    ld c, a
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rSC], a
    db $e4
    ld [bc], a
    db $e3
    dec bc
    jp hl


    inc bc
    reti


    rst $30
    jp nc, $7080

    ldh [rSB], a
    ret nz

    reti


    ld de, $00e2
    pop hl
    ld bc, $ffe6
    ldh [rSB], a
    db $e4
    ld [bc], a
    db $e3
    dec bc
    jp hl


    inc bc
    db $eb
    call nz, $37d5
    db $eb
    nop
    ld [c], a
    dec b
    pop hl
    ld bc, $ffe6
    ldh [rSC], a
    db $e4
    ld a, [bc]
    db $e3
    inc bc
    jp hl


    inc c
    reti


    ld hl, sp-$2f
    add c
    ret nz

    add c
    ret nz

    rst $38
    db $10
    and d
    ld c, a
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    db $e4
    ld [bc], a
    db $e3
    dec bc
    jp hl


    nop
    reti


    nop
    db $d3
    db $10
    or b
    jp hl


    dec b
    call nc, $d540
    jp hl


    nop
    ld b, b
    ld h, b
    jp hl


    inc c
    reti


    nop
    jp nc, $b010

    jp hl


    dec b
    db $d3
    ld b, b
    call nc, Call_000_06e9
    ld b, b
    ld h, b
    call nc, Call_000_00d9
    pop de
    db $10
    or b
    jp hl


    ld [$40d2], sp
    db $d3
    jp hl


    ld a, [bc]
    ld b, b
    ld h, b
    db $d3
    db $d3
    jp hl


    ld a, [bc]
    ldh a, [$03]
    sub b
    db $db
    db $fd
    call nc, $ea10
    ld bc, $02da
    pop af
    ret nz

    rst $38
    db $10
    ld a, [c]
    ld c, a
    ld [c], a
    ld [de], a
    pop hl
    inc bc
    and $ff
    ldh [rSB], a
    db $e4
    ld a, [bc]
    db $e3
    inc bc
    jp hl


    dec b
    push de
    or b
    jp hl


    nop
    reti


    db $fd
    push de
    db $eb
    db $e3
    ld [hl], e
    ret nz

    rst $38
    db $10
    rrca
    ld d, b
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    jp hl


    dec b
    reti


    inc bc
    db $eb
    ld e, a
    db $d3
    ld d, c
    ld [c], a

Call_003_5020:
    rlca
    pop hl
    ld [bc], a
    and $ff
    ldh [rSC], a
    jp hl


    nop
    reti


    nop
    db $eb
    jp nc, Jump_000_14d6

    ret nz

    rst $38
    db $10
    inc [hl]
    ld d, b
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $ff
    ldh [rTIMA], a
    db $e4
    ld bc, $0be3
    jp hl


    nop
    push hl
    ld bc, $fceb
    reti


    nop
    push de
    ccf
    db $eb
    nop
    ret nz

    rst $38
    db $10
    ld d, c

Call_003_5050:
    ld d, b
    ld [c], a
    dec b
    pop hl
    nop
    and $ff
    ldh [rSB], a
    jp hl


    nop
    reti


    nop
    ldh a, [rTIMA]
    db $d3
    ld [hl], b
    ld d, b
    call nc, $f100
    ret nz

    rst $38
    db $10
    ld l, d
    ld d, b
    ld [c], a
    ld [de], a
    pop hl
    inc bc
    and $ff

Call_003_5070:
    ldh [rSB], a
    jp hl


    nop
    reti


    ld bc, $01d2
    ret nz

    reti


    inc c
    pop hl
    ld [bc], a
    jp hl


    nop
    db $eb
    sbc h
    db $d3
    ld c, b
    db $eb
    nop
    reti


    nop
    jp hl


    ld [$02e0], sp
    reti


    ld bc, $02e1
    jp nc, $c000

    nop
    ret nz

    rst $38
    db $10
    sbc b
    ld d, b
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $ff
    ldh [rSC], a
    jp hl


    inc bc
    db $eb
    or $d4
    ld h, e
    ret nz

    rst $38
    db $10
    xor e
    ld d, b
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    reti


    db $f4
    jp hl


    nop
    call nc, $04f0
    ld [hl], c
    jp c, $f101

    jp c, $d7fc

    nop
    ret c

    or d
    sub c
    ld [hl], c
    ld d, c
    inc sp
    ret nz

    rst $38
    db $10
    call $e250
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rSB], a
    jp hl


    nop
    pop de
    nop
    ret nz

    reti


    rst $38
    ldh a, [$03]
    db $e4
    ld [bc], a
    db $e3
    dec bc
    db $d3
    nop
    jp nc, $90b0

    ld [hl], b
    pop af
    jp hl


    ld [$04f0], sp
    jp nc, Jump_003_4171

    ret nz

    jp c, $eaff

    ld bc, $c0f1
    rst $38
    db $10
    ei
    ld d, b
    ld [c], a
    dec b
    pop hl
    nop
    and $ff

Call_003_5101:
    ldh [rSB], a
    jp hl


    nop
    reti


    nop
    ldh a, [rSC]
    db $e4
    ld [bc], a
    db $e3
    dec bc
    db $d3
    ld d, b
    ld b, b
    ld [hl], b
    ld h, b
    sub b
    add b
    pop af
    ldh a, [$03]
    db $e4
    ld [bc], a
    db $e3
    dec bc
    jp nc, $7050

    sub b
    ld [$da02], a
    inc c
    pop af
    jp c, $ebdc

    inc d
    jp hl


    add hl, bc
    call nc, $c0b6
    rst $38
    jr nc, jr_003_5163

    ld d, c
    ld b, [hl]
    ld d, c
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rSB], a
    jp hl


    nop
    push de
    sub b

jr_003_513f:
    db $eb
    add e
    push de
    ld h, c
    ret nz

    ret nz

    rst $38
    jp hl


    inc bc
    ldh [rSB], a
    ld [hl], b
    ld h, b
    ld d, b
    ret nz

    rst $38
    db $10
    ld d, d

Call_003_5151:
    ld d, c
    ld [c], a
    rlca
    pop hl
    ld [bc], a
    and $ff
    ldh [$03], a
    jp hl


    nop
    reti


    nop
    db $eb
    ld a, [bc]
    db $d3

Call_003_5161:
    ld [hl], $c0

jr_003_5163:
    rst $38
    db $10
    ld h, a
    ld d, c
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    push hl
    dec b
    db $d3
    sub b
    jp hl


    nop
    reti


    db $fd
    ldh a, [$03]
    db $d3
    sub b
    add b
    jp c, $f1fb

    jp c, $e90f

    inc c
    pop de
    sub c
    ret nz

    rst $38
    db $10
    adc d
    ld d, c
    ld [c], a
    rlca
    pop hl
    ld [bc], a
    and $ff
    ldh [rDIV], a
    jp hl


    nop
    reti


    nop
    db $eb
    rst $20
    sub $13
    ret nz

    rst $38
    jr nc, jr_003_513f

    ld d, c
    pop hl
    ld d, c
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    jp hl


    inc bc
    reti


    nop
    db $e4
    ld [bc], a
    db $e3
    dec bc
    pop de
    db $eb
    add c
    ld de, $00eb
    ret nz

    db $eb
    add c
    ld de, $00eb
    pop bc
    pop de
    pop hl
    inc bc
    reti


    rlca
    push hl
    inc b
    ldh a, [rSC]
    nop
    db $10
    ld [$f102], a
    reti


    push af
    ldh [$03], a
    jp hl


    dec b
    ldh a, [rSC]

Jump_003_51d4:
    ld b, b
    ret nz

    ld [$4003], a
    ret nz

    ld [$da02], a
    rst $38
    pop af
    ret nz

    rst $38
    ld [c], a
    ld [de], a
    ldh [rSB], a
    db $e4
    ld a, [bc]
    db $e3
    inc bc
    jp hl


    nop
    reti


    nop
    and c
    pop bc
    and c
    ret nz

    ldh a, [rTIMA]
    ld h, b
    ld h, b
    ld [$f102], a
    reti


    nop
    ldh [$03], a
    jp hl


    dec b
    ldh a, [rSC]
    add b
    ret nz

    ld [$8003], a
    ret nz

    ld [$f104], a
    ret nz

    rst $38
    db $10
    ld c, $52
    ld [c], a
    dec c
    pop hl
    ld bc, $ffe6
    ldh [rSB], a
    jp hl


    nop
    db $d3
    ld d, h
    sub d
    rst $10
    inc bc
    ld d, e
    rst $10
    ld d, a
    rst $10
    jp hl


    dec bc
    ld d, c
    ret nz

    rst $38
    db $10
    add hl, hl
    ld d, d
    ld [c], a
    ld [de], a
    pop hl
    nop
    and $ff
    ldh [rSB], a
    jp hl


    nop
    db $d3
    ldh a, [rTMA]
    db $db
    ret


    ld h, b
    db $db
    cp a
    ld [hl], b
    pop af
    ret nz

    rst $38
    db $10
    ld b, d
    ld d, d
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rSB], a
    jp hl


    nop
    db $d3
    sub c
    rst $10
    sub b
    rst $10
    sub b
    ret c

    ret c

    sub b
    rst $10
    jp hl


    dec b
    sub b
    rst $10
    jp hl


    ld [bc], a
    sub c
    ret nz

    rst $10
    jp hl


    dec b
    sub b
    ret nz

    rst $38
    db $10
    ld h, a
    ld d, d
    ld [c], a
    nop
    pop hl
    inc bc
    and $ff

jr_003_526d:
    ldh [rSB], a
    db $e4
    ld a, [bc]
    db $e3
    inc bc
    jp hl


    nop

jr_003_5275:
    ldh a, [rSC]
    and b
    db $eb
    ld b, [hl]
    jp nc, $ebaa

    add e
    db $d3
    ld [hl+], a
    pop af
    ret nz

    rst $38
    db $10
    add [hl]
    ld d, d
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    jp hl


    nop
    reti


    db $f4
    push de
    ld h, c
    jr nc, @-$26

    or b
    ld [hl], b
    and b

jr_003_5299:
    and b
    ld h, b
    jr nz, jr_003_5275

    or b
    rst $10
    nop
    ret c

    ld [hl], b
    ld b, b
    or b
    ld [hl], b
    jp hl


    dec b
    ld b, b
    jp hl


    ld [$f050], sp
    db $10
    jr nz, jr_003_5299

    ld bc, $c0f1
    rst $38
    jr nc, jr_003_526d

    ld d, d
    ret z

    ld d, d
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rDIV], a
    jp hl


    nop
    db $eb
    push af
    push de
    ld [hl], e
    ret nz

    rst $38
    ldh [rDIV], a
    ld [c], a
    dec b

jr_003_52cc:
    ld [hl], b
    ret nz

    rst $38
    db $10
    jp nc, $e252

    ld [de], a
    pop hl
    ld [bc], a
    and $ff
    ldh [rDIV], a
    reti


    db $f4
    jp hl


    nop
    db $eb
    add hl, de
    call nc, $c053
    rst $38
    inc bc
    jp hl


    ld d, d
    nop
    ld d, e
    ld [c], a
    dec c
    pop hl
    inc bc
    and $ff
    ldh [rDIV], a
    jp hl


    nop
    reti


    nop
    db $d3
    jr nz, jr_003_52cc

    jr nz, jr_003_534a

    sub b
    push de
    db $10
    jr nz, @-$3e

    rst $38
    ld [c], a
    dec c
    pop hl
    inc bc
    and $ff
    ldh [rDIV], a
    jp hl


    nop
    reti


    nop
    jp nc, $e090

    ld bc, $e0c1
    inc b
    db $d3
    sub b
    call nc, Call_003_6020
    sub b
    sub b
    ret nz

    rst $38
    db $10
    rra
    ld d, e
    ld [c], a
    dec b
    pop hl
    ld bc, $ffe6
    ldh [rSB], a
    call nc, $f5d9
    db $db
    rlca
    sub b
    ret nz

    sub l
    ret nz

    rst $38
    db $10
    inc [hl]
    ld d, e
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $ff
    ldh [rSB], a
    jp hl


    dec b
    call nc, $a590
    ld [hl], l
    ret nz

    rst $38
    jr nz, jr_003_538d

    ld d, e
    and $ff
    ld [c], a

jr_003_534a:
    ld [de], a
    ldh [rTMA], a
    jp hl


    ld c, $e1
    ld [bc], a
    ldh a, [rDIV]
    add b
    ld [$f1ff], a
    jp hl


    add hl, bc
    xor e
    jp hl


    rlca
    ld c, a
    jp hl


    add hl, bc
    ldh a, [rTIMA]
    ld b, b
    ld [$f101], a
    jp hl


    ld c, $43
    ret nz

    rst $38
    ldh [rDIV], a
    jp hl


    inc b
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]

jr_003_538d:
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld a, [c]
    and e
    ld d, e
    ld hl, sp+$6a
    ld d, e
    ret nz

    rst $38
    inc sp
    ld sp, $3131
    ld sp, $3131
    inc sp
    ld sp, $c131
    ld sp, $f313
    ld [c], a
    inc hl
    pop hl
    ld [bc], a
    and $f0
    ldh [rDIV], a
    jp hl


    ld [$02e4], sp
    db $e3
    rrca
    ld a, [c]
    sub b
    ld d, h
    pop bc
    push de
    ld h, c
    ld h, c
    ld h, c
    ld b, e
    or e
    ld [hl], c
    call nc, $d371
    ld [hl], c
    call nc, $2371
    db $d3
    ld [hl], c
    ld [hl], c
    ld a, [c]
    sub b
    ld d, h
    pop bc
    call nc, Call_003_6193
    dec b
    ld h, c
    ld [hl], l
    ld hl, $71d3
    push de
    ld [hl], c
    db $d3
    ld [hl], c
    ld hl, $05d4
    ld b, l
    ld [hl], e
    pop bc
    ld bc, $71d5
    call nc, Call_000_2301
    inc bc
    dec b
    db $d3
    or l
    or e
    call nc, $d577
    ld [hl], c
    call nc, $d373
    ld [hl], c
    ld a, [c]
    and b
    ld d, h
    ld a, [c]
    and b
    ld d, h
    call nc, $d561
    inc bc
    call nc, $d561
    dec h
    call nc, $b3b5
    pop bc
    dec h
    ld b, e
    or e
    db $d3
    dec b
    ld b, l
    ld [hl], e
    pop bc
    ld bc, $71d4
    db $d3
    ld bc, $0323
    ld [hl], l
    call nc, $d325
    ld [hl], e
    call nc, Call_000_0525
    db $d3
    or e
    sub l
    sub l
    call nc, $0503
    db $d3
    or l
    call nc, $d3b3
    ld [hl], c
    jp $c371


    ld [hl], c
    pop bc
    ld [hl], c
    push bc
    call nc, $d5b3
    inc bc
    jp hl


    rlca
    call nc, $d5b1
    ld [hl], c
    call nc, $d5b1
    ld [hl], c
    call nc, $d5b1
    ld h, c
    call nc, $d5b1
    ld h, c
    ld a, [c]
    xor c
    ld d, h
    ld a, [c]
    xor c
    ld d, h
    ld a, [c]
    xor c
    ld d, h
    ld a, [c]
    xor c
    ld d, h
    ld a, [c]
    xor [hl]
    ld d, h
    ld a, [c]
    xor [hl]
    ld d, h
    ld a, [c]
    xor [hl]
    ld d, h
    ld a, [c]
    xor [hl]
    ld d, h
    ld a, [c]
    xor [hl]
    ld d, h
    ld a, [c]
    xor [hl]
    ld d, h
    jp hl


    dec b
    db $d3
    sub e
    or e
    call nc, Call_000_2505
    inc bc
    db $d3
    ld h, l
    sub l
    or e
    sub l
    ld [hl], l
    jp $d4b1


    ld [hl], c
    pop bc
    db $d3
    or c
    push de
    ld [hl], c
    call nc, $c171
    ld [hl], c
    ld hl, sp-$4f
    ld d, e
    ret nz

    rst $38
    pop bc
    call nc, Call_003_6161
    ld h, c
    ld b, e
    ld h, e
    pop bc
    ld [hl], c
    db $d3
    ld [hl], c
    call nc, $2173
    ld [hl], e
    di
    call nc, $d561
    inc hl
    call nc, $d561
    inc bc
    di
    call nc, $d5b1
    ld b, c
    di
    call nc, $d561
    ld hl, $e2f3
    inc hl
    pop hl
    ld [bc], a
    and $0f
    ldh [rDIV], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld a, [bc]
    ld a, [c]
    ld a, [hl-]
    ld d, l
    pop bc
    call nc, Call_003_6123
    push de
    inc hl
    inc bc
    call nc, $c7b7
    ld a, [c]
    ld a, [hl-]
    ld d, l
    pop bc
    push de
    inc hl
    ld hl, $4361
    ld bc, $b7d4
    rst $00
    ld a, [c]
    ld c, b
    ld d, l
    push de
    ld b, l
    dec h
    ld [hl], e
    call nc, $c7b7
    ld a, [c]
    ld d, h
    ld d, l
    ld a, [c]
    ld d, h
    ld d, l
    ld a, [c]
    ld d, h
    ld d, l
    ld a, [c]
    ld d, h
    ld d, l
    ld a, [c]
    ld d, h
    ld d, l
    call nc, $d591
    ld h, l
    ld b, l
    inc hl
    pop bc
    call nc, $d5b5
    inc bc
    inc hl
    ld a, [c]
    ld c, b
    ld d, l
    dec h
    ld [hl], l
    call nc, $d5b3
    ld h, l
    ld b, l
    inc hl
    dec b
    dec h
    ld h, e
    ld b, l
    dec h
    ld h, e
    ld [hl], c
    jp $c371


    ld [hl], c
    pop bc
    ld [hl], c
    push bc
    call nc, $9373
    or l
    push de
    dec b
    inc hl
    ld b, l
    ld h, l
    ld b, e
    dec h
    dec bc
    push bc
    inc bc
    inc hl
    ld b, l
    ld h, l
    ld b, e
    dec h
    ld b, l
    inc hl
    dec b
    call nc, $c3b5
    ld [hl], l
    ld h, l
    ld b, e
    ld hl, sp-$4d
    ld d, h
    ret nz

    rst $38
    pop bc
    call nc, Call_003_6123
    push de
    inc hl
    inc bc
    pop bc
    call nc, $d5b5
    inc bc
    inc hl
    di
    push de
    ld b, l
    call nc, $d575
    ld b, e
    pop bc
    ld b, e
    ld b, c
    ld h, e
    ld b, e
    di
    call nc, $d591
    ld h, e
    di
    ld [c], a
    inc hl
    pop hl
    inc bc
    and $ff
    ldh [rDIV], a
    jp hl


    nop
    db $e4
    ld [bc], a
    db $e3
    rrca
    ld a, [c]
    sbc h
    ld d, l
    ld a, [c]
    sbc h
    ld d, l
    ld a, [c]
    sbc h
    ld d, l
    ld a, [c]
    sbc h
    ld d, l
    ld a, [c]
    and [hl]
    ld d, l
    ld a, [c]
    or b
    ld d, l
    ld a, [c]
    cp h
    ld d, l
    ld a, [c]
    add $55
    ld a, [c]
    and [hl]
    ld d, l
    ld a, [c]
    or b
    ld d, l
    ld a, [c]
    cp h
    ld d, l
    ld a, [c]
    add $55
    ld a, [c]
    or b
    ld d, l
    ld a, [c]
    cp h
    ld d, l
    ld a, [c]
    cp h
    ld d, l
    ld a, [c]
    or b
    ld d, l
    ld hl, sp+$59
    ld d, l
    ret nz

    rst $38
    db $d3
    ld hl, $9523
    inc hl
    ld [hl], l
    inc hl
    ld hl, $f373
    db $d3
    ld bc, $0103
    ld [hl], e
    inc bc
    ld [hl], l
    dec b
    ld [hl], e
    di
    db $d3
    ld [hl], c
    ld [hl], e
    ld [hl], c
    call nc, $d323
    ld [hl], e
    dec h
    ld [hl], l
    inc hl
    di
    db $d3
    ld hl, $2123
    sub e
    inc hl
    sub l
    dec h
    sub e
    di
    db $d3
    ld [hl], c
    ld [hl], e
    ld [hl], c
    call nc, $d323
    ld [hl], e
    call nc, Call_000_2125
    db $d3
    ld [hl], e
    call nc, $f323
    ldh [rTMA], a
    jp hl


    dec b
    jp Jump_000_2df2


    ld d, [hl]
    ld a, [c]
    dec l
    ld d, [hl]
    ld a, [c]
    dec l
    ld d, [hl]
    ld a, [c]
    dec l
    ld d, [hl]
    ld a, [c]
    dec l
    ld d, [hl]
    ld a, [c]
    dec l
    ld d, [hl]
    ld a, [c]
    dec l
    ld d, [hl]
    ld a, [c]
    dec l
    ld d, [hl]
    ld a, [c]
    jr nc, jr_003_564c

    ld a, [c]
    jr nc, jr_003_564f

    ld a, [c]
    jr nc, jr_003_5652

    ld a, [c]
    jr nc, @+$58

    ld a, [c]
    jr nc, jr_003_5658

    ld a, [c]
    jr nc, jr_003_565b

    ld a, [c]
    jr nc, jr_003_565e

    ld a, [c]
    jr nc, jr_003_5661

    ld a, [c]
    jr nc, jr_003_5664

    ld a, [c]
    jr nc, jr_003_5667

    ld a, [c]
    jr nc, @+$58

    ld a, [c]
    jr nc, jr_003_566d

    ld a, [c]
    jr nc, jr_003_5670

    ld a, [c]
    jr nc, jr_003_5673

    ld a, [c]
    jr nc, @+$58

    ld a, [c]
    jr nc, @+$58

    ld a, [c]
    jr nc, @+$58

    ld sp, $f831
    sub $55
    ret nz

    rst $38
    jp $f31b


    ld de, $3131
    ld sp, $e2f3
    ld [hl+], a
    pop hl
    inc bc
    and $f0
    ldh [rTMA], a
    jp hl


    ld [$02e4], sp
    db $e3
    ld de, $61d3
    call nc, $d321
    or l
    call nc, Call_003_7561

jr_003_564c:
    ld bc, $b3d3

jr_003_564f:
    call nc, Call_000_2101

jr_003_5652:
    db $d3
    or e
    call nc, $d323
    or e

jr_003_5658:
    call nc, $2173

jr_003_565b:
    ld h, e
    ld b, a
    pop bc

jr_003_565e:
    ld [hl], c
    ld h, c
    ld b, c

jr_003_5661:
    ld hl, $2161

jr_003_5664:
    ld bc, $6123

jr_003_5667:
    sub c
    ld hl, $6171
    db $d3
    or c

jr_003_566d:
    call nc, Call_000_2301

jr_003_5670:
    db $d3
    ld [hl], c
    or c

jr_003_5673:
    sub e
    call nc, Call_003_6123
    ld hl, $d301
    or e
    call nc, Call_003_6121
    ld hl, $b7d3
    ld a, [c]
    or l
    ld d, [hl]
    call nc, $a191
    push de
    ld hl, $9151
    and c
    sub c
    ld d, c
    call nc, $d5a1
    ld hl, $5131
    ld hl, $5131
    sub c
    ld a, [c]
    or l
    ld d, [hl]
    sub c
    and c
    sub c
    ld d, c
    ld bc, $3151
    ld hl, $2151
    ld sp, $5351
    sub e
    sub $01
    push de
    sub c
    ld [hl], c
    ld h, c
    inc hl
    ld hl, sp+$35
    ld d, [hl]
    ret nz

    rst $38
    push de
    and c
    sub c
    and c
    ld d, c
    ld hl, $9151
    and c
    ld d, c
    sub c
    and c
    ld d, c
    sub c
    ld hl, $5131
    di
    ld [c], a
    ld [hl+], a
    pop hl
    inc bc
    and $0f
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    dec bc
    call nc, Call_003_6121
    ld [hl], e
    or c
    push de
    ld bc, $6123
    ld [hl], c
    ld hl, $d401
    or c
    ld [hl], l
    push de
    ld h, c
    ld [hl], c
    ld hl, $d401
    or c
    ld [hl], e
    push de
    inc hl
    rrca
    pop bc
    ld hl, $7161
    sub e
    ld h, c
    inc hl
    call nc, $d5b1
    ld bc, $7361
    call nc, $d5b1
    inc hl
    ld bc, $6121
    ld hl, $d401
    or e
    ld a, a
    pop bc
    ld a, [c]
    ld [hl], $57
    call nc, $d351
    sub c
    call nc, $3121
    ld d, e
    ld hl, $d327
    ld d, c
    sub c
    and c
    call nc, $f201
    ld [hl], $57
    ld hl, $0131
    db $d3
    ld d, c
    sub c
    call nc, $d303
    and l
    and c
    call nc, $d303
    ld d, e
    ld h, l
    ld [hl], c
    sub e
    ld hl, sp-$39
    ld d, [hl]
    ret nz

    rst $38
    call nc, $3121
    ld d, c
    and c
    ld d, e
    ld sp, $2121
    ld sp, $9151
    inc hl
    inc hl
    ld sp, $e2f3
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    jp $05e2


    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    rst $00

Call_003_5767:
    ld d, a
    ld a, [c]
    rst $00
    ld d, a
    ld a, [c]
    adc $57
    ld a, [c]
    adc $57
    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    adc $57
    ld a, [c]
    adc $57
    ld a, [c]
    ret nz

    ld d, a
    ld a, [c]
    ret nz

    ld d, a
    ld [c], a
    add hl, de
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    call c, $f257
    call c, $f257
    push de
    ld d, a
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    push de
    ld d, a
    ld a, [c]
    call c, $f257
    call c, $f257
    push de
    ld d, a
    ld a, [c]
    call c, $f257
    db $e3
    ld d, a
    ld a, [c]
    db $e3
    ld d, a
    ld hl, sp+$51
    ld d, a
    ret nz

    rst $38
    db $d3
    ld [hl], c
    or c
    call nc, Call_003_6121
    di
    db $d3
    ld bc, $7141
    call nc, $f301
    db $d3
    ld hl, $6191
    call nc, $f301
    db $d3
    and c
    call nc, Call_003_5151
    ld d, c
    di
    db $d3
    ld d, c
    call nc, Call_000_0101
    ld bc, $d3f3
    ld hl, $9191
    sub c
    di
    ldh [rTAC], a
    jp hl


    nop
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld a, [c]
    ld [hl+], a
    ld e, b
    ld hl, sp-$17
    ld d, a
    ret nz

    rst $38
    jp $c323


    inc hl
    di
    ld [c], a
    add hl, de
    pop hl
    inc bc
    and $f0
    ldh [rTAC], a
    jp hl


    dec c
    db $e4
    ld [bc], a
    db $e3
    inc d
    ld a, [c]
    add [hl]
    ld e, b
    ld a, [c]
    sbc d
    ld e, b
    ld a, [c]
    xor [hl]
    ld e, b
    ld a, [c]
    add $58
    ld a, [c]
    add [hl]
    ld e, b
    ld a, [c]
    sbc d
    ld e, b
    ld a, [c]
    xor [hl]
    ld e, b
    ld a, [c]
    add $58
    ld [c], a
    dec b
    ld a, [c]
    call c, $f258
    push hl
    ld e, b
    ld [c], a
    ld a, [de]
    db $d3
    add d
    add d
    call nc, $2221
    ld [c], a
    dec b
    ld [de], a
    ld hl, $92d3
    or d
    call nc, $1221
    sub $10
    ret nz

    db $10
    ret nz

    db $10
    ld a, [c]
    call c, $f258
    push hl
    ld e, b
    db $d3
    add d

jr_003_5875:
    sub d
    or c
    ret nz

    or d
    add c
    or c
    sub d
    sub d
    sub c
    add d
    add d
    or c
    ld hl, sp+$27
    ld e, b

jr_003_5884:
    ret nz

    rst $38
    ld [c], a
    dec c
    db $d3
    db $10
    ld [c], a
    add hl, de
    db $10
    pop bc
    ld b, b
    add b
    ret nz

    sub b
    ret nz

    sub b
    ld b, b
    pop bc
    or b
    add b
    sub b
    di
    ret nz

    db $d3
    db $10
    ret nz

    or b
    jr nz, @-$3e

    db $10
    ret nz

jr_003_58a3:
    call nc, $c010
    db $10
    ret nz

    db $d3
    sub b
    ld b, b
    ret nz

    ld b, b
    di
    ret nz

    push de
    ld b, b
    db $10
    ret nz

    jr nz, jr_003_5875

    call nc, Call_000_10b0
    ret nz

jr_003_58b9:
    sub b
    db $10
    sub b
    db $d3
    ld [c], a
    dec c
    jr nz, jr_003_58a3

    add hl, de
    jr nz, jr_003_5884

    jr nz, jr_003_58b9

    db $d3
    sub b
    ld b, b
    db $10
    sub b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    db $10
    ld b, b
    sub b

jr_003_58d3:
    ld [c], a
    dec c
    add b
    ld [c], a
    add hl, de
    add b
    ret nz

    add b
    di
    call nc, Call_003_4222
    ld h, c
    ret nz

    ld [hl+], a
    ld b, c
    ld h, c
    di
    call nc, Call_000_1141
    db $d3
    sub b
    or c
    call nc, $c111
    push de
    sub b
    ret nz

    sub b

jr_003_58f2:
    ret nz

    sub b
    di
    ld [c], a
    add hl, de
    pop hl
    inc bc
    and $0f
    ldh [rTAC], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    inc d
    ld a, [c]
    ld l, l
    ld e, c
    ld a, [c]
    add d
    ld e, c
    ld a, [c]
    sbc h
    ld e, c
    ret nz

    push de
    sub b
    ld b, b
    db $10
    jr nz, jr_003_58d3

    call nc, $c0b0
    push de
    db $10
    call nc, $c090
    push de
    db $10
    ret nz

    call nc, $c0b0
    or b
    ld a, [c]
    ld l, l
    ld e, c
    ld a, [c]
    add d
    ld e, c
    ld a, [c]
    sbc h
    ld e, c
    ret nz

    push de
    sub b
    ld b, b
    db $10
    jr nz, jr_003_58f2

    call nc, $c0b0
    sub b
    pop bc

jr_003_5937:
    sub b
    pop bc
    push de
    sub c
    ld [c], a
    dec b
    ld a, [c]
    or d
    ld e, c

jr_003_5940:
    ld [c], a
    ld a, [de]
    call nc, $b2b2
    push de
    ld h, c
    ld h, d
    ld [c], a
    dec b
    ld b, d
    ld h, c
    ld [de], a
    ld [hl+], a
    ld h, c
    ld b, a
    ld a, [c]
    or d
    ld e, c
    call nc, $d5b2
    ld [de], a
    ld hl, $22c0
    ld b, c
    ld hl, $c011
    ld de, $11c0
    call nc, $c0b1
    or c
    ret nz

    push de
    ld b, c
    ld hl, sp-$0b
    ld e, b
    ret nz

    rst $38
    pop bc
    call nc, $d590
    db $10
    call nc, $d5b0
    jr nz, jr_003_5937

    db $10
    pop bc
    call nc, $c090
    or b
    push de
    jr nz, jr_003_5940

    db $10
    di
    ret nz

    push de
    ld b, b
    ret nz

    jr nz, jr_003_59e8

    ret nz

    ld [c], a
    dec c
    ld b, b
    ld [c], a
    add hl, de
    ld b, b
    ret nz

    db $10
    ret nz

    jr nz, jr_003_59d4

    ret nz

    ld [c], a
    dec c
    ld b, b
    ld [c], a
    add hl, de
    ld b, b
    di
    ret nz

    push de
    add b
    sub b
    ld b, b
    ld h, b
    ret nz

    jr nz, jr_003_59e5

    ret nz

    db $10
    ret nz

    jr nz, jr_003_5a0a

    ret nz

    ld [c], a
    dec c
    ld h, b
    ld [c], a
    add hl, de
    ld h, b
    di
    push de
    ld h, d
    add d
    sub c
    ret nz

    ld h, d
    add c
    ld [c], a
    ld a, [de]
    sub c
    sub c
    ld [c], a
    dec b
    ld b, c
    db $10
    ld hl, $c047
    di
    ld [c], a
    add hl, de
    pop hl
    inc bc
    and $ff
    ldh [rTAC], a
    jp hl


    nop
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c

jr_003_59d4:
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]

jr_003_59e5:
    and c
    ld e, d
    ld a, [c]

jr_003_59e8:
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c

jr_003_5a0a:
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    xor [hl]
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    sub h

jr_003_5a85:
    ld e, d
    ld a, [c]
    sub h
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld a, [c]
    and c
    ld e, d
    ld hl, sp-$3b
    ld e, c
    ret nz

    rst $38
    db $d3

jr_003_5a95:
    sub b
    call nc, $e290
    dec c
    sub $40
    ld [c], a
    add hl, de
    db $d3
    sub b
    di
    db $d3
    ld b, b
    call nc, $e240
    dec c
    sub $40
    ld [c], a
    add hl, de
    db $d3
    ld b, b
    di

jr_003_5aae:
    db $d3
    jr nz, jr_003_5a85

    jr nz, jr_003_5a95

    dec c
    sub $20
    ld [c], a
    add hl, de
    db $d3
    jr nz, jr_003_5aae

    ldh [rTMA], a
    jp hl


    dec b
    ld a, [c]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f25a]
    ld a, [$f85a]
    cp e
    ld e, d
    ret nz

    rst $38
    ld de, $3131
    ld de, $3131
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rTMA], a
    jp hl


    ld b, $e4
    ld [bc], a
    db $e3
    add hl, de
    ld a, [c]
    ld c, c
    ld e, e
    call nc, Call_003_6141
    inc de
    add e
    db $d3
    or e
    call nc, $2145
    ld b, e
    ld hl, $6341
    ld b, e
    sub e
    ld b, e
    ld a, [c]
    ld c, c
    ld e, e
    add c
    or c
    ld b, c
    add c
    ld h, c
    ld b, c
    ld hl, $6141
    ld h, c
    inc hl
    ld d, c
    add c
    ld de, $8355
    ld d, e
    inc de
    and e
    and c
    and c
    and e
    db $d3
    or c
    call nc, $8141
    or c
    add c
    ld b, c
    ld hl, sp+$01
    ld e, e
    ret nz

    rst $38
    call nc, $8193
    sub c
    ld h, e
    ld b, l
    ld h, c
    inc de
    ld h, c
    ld b, c
    sub c
    add c
    ld hl, $1b61
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    add hl, de
    ld a, [c]
    or d
    ld e, e
    call nc, Call_000_2111
    ld b, c
    add c
    or e
    ld sp, $8141
    sub c
    push de
    ld de, $b1d4
    sub c
    add c
    ld h, c
    add c
    ld b, c
    ld hl, $f21b
    or d
    ld e, e
    ld hl, $8161
    or c
    push de
    inc hl
    call nc, $8161
    or c
    push de
    ld hl, $b1d4
    add c
    ld sp, $8151
    or c
    push de
    inc sp
    call nc, $8151
    or c
    push de
    ld sp, $81d4
    or c
    push de
    ld h, e
    call nc, Call_003_6363
    ld b, c
    add c
    or c
    push de
    ld b, c
    call nc, $81b1
    ld hl, sp+$59
    ld e, e
    ret nz

    rst $38
    call nc, Call_000_2111
    ld sp, $8141
    sub c
    push de
    ld sp, $1341
    call nc, $d593
    ld hl, $d411
    or c
    sub c
    ld h, c
    add c
    ld c, e
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    ld a, [c]
    ld de, $f25c
    ld de, $f25c
    jr jr_003_5c38

    ld a, [c]
    ld de, $f25c
    rra
    ld e, h
    ld a, [c]
    rra
    ld e, h
    ld a, [c]
    ld de, $f25c
    ld de, $f25c
    ld de, $f25c
    ld de, $f25c
    jr jr_003_5c50

    ld a, [c]
    ld de, $f25c
    rra
    ld e, h
    ld a, [c]
    rra
    ld e, h
    ld a, [c]
    daa
    ld e, h
    ld a, [c]
    daa
    ld e, h
    db $d3
    ld h, e
    call nc, Call_003_6111
    inc de
    ld a, [c]
    rra
    ld e, h
    ld hl, sp-$37
    ld e, e
    ret nz

    rst $38
    db $d3
    sub e
    call nc, $9141
    ld b, e
    di
    db $d3
    inc hl
    sub c
    call nc, $9321
    di
    db $d3
    ld b, e
    or c
    call nc, $d341
    or e
    di
    db $d3
    inc de
    ld d, c
    call nc, $d331
    or e
    di
    ldh [rTMA], a
    jp hl


    dec b
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b

jr_003_5c38:
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b

jr_003_5c50:
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld a, [c]
    ld l, b
    ld e, h
    ld hl, sp+$2f
    ld e, h
    ret nz

    rst $38
    ld sp, $1331
    ld sp, $1331
    di
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $f0
    ldh [rTMA], a
    jp hl


    ld [$02e4], sp
    db $e3
    add hl, de
    ld a, [c]
    cp a
    ld e, h
    ld a, [c]
    cp a
    ld e, h
    call nc, $c371
    ld [hl], c
    jp $c171


    ld h, c
    jp $c361


    ld h, c
    pop bc
    ld sp, $31c3
    jp $8082


    sbc e
    sub c
    sub c
    ld a, [c]
    ret


    ld e, h
    ld a, [c]
    ret


    ld e, h
    call nc, $c331
    ld sp, $31c3
    pop bc
    ld h, c
    jp $c361


    ld h, c
    pop bc
    db $d3
    add c
    jp $c381


    add c
    add c
    sub c
    sub c
    pop bc
    sub c
    jp $c191


    ld hl, sp+$6f
    ld e, h
    ret nz

    rst $38
    call nc, $c351
    ld d, a
    pop bc
    ld h, c
    jp $c167


    di
    call nc, Call_000_0705
    pop bc
    db $d3
    sub l
    sub a
    pop bc
    di
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $0f
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    add hl, de
    ld a, [c]
    ld [hl+], a
    ld e, l
    ld a, [c]
    ld [hl+], a
    ld e, l
    call nc, $c3a1
    and c
    jp $c1a1


    or c
    jp $c3b1


    or c
    pop bc
    add c
    jp $c381


    push de
    ld [bc], a
    nop
    dec hl
    ld hl, $f221
    inc l
    ld e, l
    ld a, [c]
    inc l
    ld e, l
    call nc, $c381
    add c
    jp $c181


    sub c
    jp $c391


    sub c
    pop bc
    ld de, $11c3
    jp Jump_000_1111


    ld hl, $c121
    ld hl, $21c3
    pop bc
    ld hl, sp-$2e
    ld e, h
    ret nz

    rst $38
    call nc, $c381
    add a
    pop bc
    sub c
    jp $c197


    di
    call nc, $3735
    pop bc
    dec h
    daa
    pop bc
    di
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    ld a, [c]
    sub l
    ld e, l
    ld a, [c]
    and e
    ld e, l
    ld a, [c]
    sub l
    ld e, l
    ld a, [c]
    and e
    ld e, l
    db $d3
    ld sp, $a171
    ld sp, $a171
    ld sp, $f271
    xor l
    ld e, l
    ld a, [c]
    xor l
    ld e, l
    jp nc, $d3b1

    ld sp, $3101
    add c
    ld sp, $d481
    ld bc, $31d3
    add c
    ld hl, $9161
    call nc, $d321
    ld h, c
    sub c
    ld hl, $f291
    or e
    ld e, l
    ld a, [c]
    and e
    ld e, l
    ld a, [c]
    or e
    ld e, l
    ld a, [c]
    and e
    ld e, l
    jp nc, $d381

    ld bc, $8131
    ld bc, $8131
    ld bc, $bdf2
    ld e, l
    ld a, [c]
    sub l
    ld e, l
    ld a, [c]
    cp l
    ld e, l
    ld hl, sp+$34
    ld e, l
    ret nz

    rst $38
    db $d3
    ld de, $8151
    call nc, $d311
    ld d, c
    add c
    call nc, $d311
    ld d, c
    di
    db $d3
    ld hl, $9161
    ld hl, $9161
    ld hl, $f361
    jp nc, $d3b1

    ld sp, $f361
    db $d3
    ld bc, $8131
    ld bc, $8131
    ld bc, $f331
    db $d3
    ld hl, $9161
    call nc, $d321
    ld h, c
    sub c
    call nc, $d321
    ld h, c
    di
    ldh [rTMA], a
    jp hl


    inc bc
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    dec c
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    dec c
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    dec c
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    inc b
    ld e, [hl]
    ld a, [c]
    dec c
    ld e, [hl]
    ld hl, sp-$35
    ld e, l
    ret nz

    rst $38
    pop bc
    ld sp, $31c1
    pop bc
    ld sp, $3131
    di
    pop bc
    ld sp, $31c1
    pop bc
    ld sp, $3030
    ld sp, $e2f3
    dec b
    pop hl
    ld [bc], a
    and $f0
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld de, $31d4
    ld de, $b3d3
    or c
    ld h, c
    ld b, c
    ld sp, $a363
    ld h, e
    and e
    or l
    call nc, $d331

jr_003_5e36:
    or e
    call nc, Call_000_2333
    ld hl, $a7d3
    pop bc
    call nc, Call_000_0307
    inc bc
    scf
    rla
    dec d
    db $d3
    and c
    and a
    or l
    or c
    ld [c], a
    jr nz, jr_003_5e36

    inc bc
    dec d
    ld de, $8133
    add e
    call nc, $8331
    ld bc, $a3d3
    ld sp, $01d5
    call nc, Call_000_33a3
    db $d3
    ld d, c
    ld h, c
    add e
    call nc, Call_000_1101
    ld sp, $5131
    ld h, c
    add e
    push de
    ld bc, $3010
    ld d, c
    ld [c], a
    jr nz, @-$3d

    call nc, $8080
    and c
    ld bc, $8131
    and b
    and b
    push de
    nop
    nop
    call nc, $a0a0
    add c
    ld sp, $d301
    and b
    and b
    add c
    jr nc, jr_003_5ebb

    add c
    call nc, $3001
    jr nc, jr_003_5ef1

    ld h, b
    add c
    and c
    push de
    db $10
    db $10
    ld h, c
    ld de, $a1d4
    add c
    ld h, b
    ld h, b
    ld de, $a0d3
    and b
    add c

jr_003_5ea3:
    ld h, c
    db $10
    db $10
    ld hl, sp+$17
    ld e, [hl]
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $0f
    ldh [rTMA], a
    jp hl


    ld b, $e4
    ld [bc], a
    db $e3
    ld de, $b1d4

jr_003_5ebb:
    and c
    add c
    ld h, e
    ld sp, $d311
    or c
    and e
    call nc, $d325
    and c
    call nc, $3123
    inc sp
    and c
    add e
    ld h, e
    ld d, e
    add c
    ld h, a
    pop bc
    pop bc
    add l
    inc sp
    ld d, e
    ld h, a
    ld d, a
    ld h, l
    ld de, $3517
    ld sp, $5155
    ld [c], a
    jr nz, jr_003_5ea3

    add b
    add b
    and c
    ld bc, $8131
    and b
    and b
    push de
    nop
    nop
    call nc, $a0a0
    add c

jr_003_5ef1:
    ld sp, $d301
    and b
    and b
    add c
    jr nc, @+$32

    add c
    call nc, $3001
    jr nc, jr_003_5f5f

    ld h, b
    add c
    and c
    push de
    db $10
    db $10
    ld h, c
    ld de, $a1d4
    add c
    ld h, b
    ld h, b
    ld de, $a0d3
    and b
    add c
    ld h, c
    db $10
    db $10
    inc sp
    add c
    add e
    call nc, $8331
    ld bc, $a3d3
    ld sp, $01d5
    call nc, Call_000_33a3
    db $d3
    ld d, c
    ld h, c
    add e
    call nc, Call_000_1101
    ld sp, $5131
    ld h, c
    add e
    push de
    ld bc, $3010
    ld d, c
    ld hl, sp-$55
    ld e, [hl]
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    ld a, [c]
    sub e
    ld e, a
    db $d3
    ld h, c
    and c
    call nc, Call_003_6521
    inc hl
    ld a, [c]
    sub e
    ld e, a
    db $d3
    and c
    call nc, $d323
    ld h, c
    and c
    call nc, Call_000_1113
    db $d3
    add l
    call nc, $8135

jr_003_5f5f:
    ld bc, $61b3
    inc de
    ld d, c
    add e
    db $d3
    and c
    call nc, Call_003_6111
    and e
    ld h, c
    inc de
    db $d3
    or e
    call nc, Call_000_1361
    ld d, c
    add e
    ld [c], a
    add hl, de
    ld a, [c]
    sbc c
    ld e, a
    ld a, [c]
    and d
    ld e, a
    ld a, [c]
    xor [hl]
    ld e, a
    ld a, [c]
    or a
    ld e, a
    ld a, [c]
    sbc c
    ld e, a
    ld a, [c]
    and d
    ld e, a
    ld a, [c]
    xor [hl]
    ld e, a
    ld a, [c]
    or a
    ld e, a
    ld hl, sp+$39
    ld e, a
    ret nz

    rst $38
    db $d3
    or l
    call nc, Call_000_3365
    di
    db $d3
    add c
    add e
    call nc, $d383
    add c
    add e
    di
    db $d3
    add c
    add c
    call nc, $d381
    add e
    add c
    add b
    add b
    add c
    di
    db $d3
    ld h, c
    ld h, e
    call nc, $d363
    ld h, c
    ld h, e
    di
    db $d3
    ld h, c
    ld h, c
    call nc, $d361
    ld h, e
    ld h, c
    ld h, b
    ld h, b
    ld h, c
    di
    ldh [rTMA], a
    jp hl


    inc bc
    ld a, [c]
    db $e4
    ld e, a
    ld a, [c]
    db $e4
    ld e, a
    ld a, [c]
    db $e4
    ld e, a
    ld a, [c]
    db $e4
    ld e, a
    ld a, [c]
    db $e4
    ld e, a
    ld a, [c]
    db $e4
    ld e, a
    ld a, [c]
    db $e4
    ld e, a
    ld a, [c]
    db $e4
    ld e, a
    ld hl, sp-$3d
    ld e, a
    ret nz

    rst $38
    inc sp
    ld sp, $3331
    ld sp, $f311
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld de, $53d4
    ld d, c
    ld sp, $6151
    add e
    add c
    ld h, c
    add c
    and c
    push de
    inc bc
    ld bc, $a1d4
    push de
    ld bc, $0311
    call nc, $81a1
    ld h, c
    add c
    ld d, e
    ld d, c
    ld sp, $5353
    push de
    ld bc, $a1d4
    push de
    inc bc
    ld bc, $3111

Call_003_6020:
    ld d, c
    ld sp, $01a1
    call nc, $d5a1
    inc bc
    ld bc, $a1d4
    push de
    ld bc, $0311
    ld d, c

Call_003_6030:
    ld sp, $3111
    ld d, e
    ld sp, $0311
    inc bc
    ld hl, sp-$15
    ld e, a
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rTMA], a
    jp hl


    dec b
    db $e4
    ld [bc], a
    db $e3
    ld de, $a3d4
    and c
    add c
    and c
    push de
    ld bc, $1113
    ld bc, $3111
    ld d, e
    ld d, c
    ld sp, $6151
    ld d, e
    ld sp, $01a1

Call_003_6060:
    ld de, $a3d4
    and c
    add c
    and e
    and e
    push de
    ld d, c
    ld sp, $5153
    ld h, c
    add c
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $5153
    ld sp, $6151
    ld d, e
    and c
    add c
    ld h, c
    add c
    and e
    add c
    ld h, c
    ld d, e
    ld d, e
    ld hl, sp+$3d
    ld h, b
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    ld a, [c]
    cp d
    ld h, b
    ld a, [c]
    cp d
    ld h, b
    ld a, [c]
    cp d
    ld h, b
    ld a, [c]
    cp d
    ld h, b
    ld a, [c]
    call nz, $f260
    call nz, $d360
    ld d, e
    call nc, Call_003_5101
    db $d3
    inc sp
    call nc, $d333
    inc sp
    and c
    call nc, $d331
    ld d, e
    call nc, $f853
    add a
    ld h, b
    ret nz

    rst $38
    db $d3
    and e
    call nc, Call_003_5161
    db $d3
    and e
    call nc, $f3a3
    db $d3
    ld d, e
    call nc, Call_003_5101
    db $d3
    ld d, e
    call nc, $f353
    ldh [rDIV], a
    jp hl


    inc bc
    ld a, [c]
    rst $28
    ld h, b
    ld a, [c]
    ei
    ld h, b
    ld a, [c]
    rst $28
    ld h, b
    ld a, [c]
    ei
    ld h, b
    ld a, [c]
    rst $28
    ld h, b
    ld a, [c]
    ei
    ld h, b
    ld a, [c]
    rst $28
    ld h, b
    ld a, [c]
    ei
    ld h, b
    ld hl, sp-$32
    ld h, b
    ret nz

    rst $38
    inc sp
    ld sp, $3331
    inc sp
    ld sp, $3131
    ld sp, $3333
    di
    inc sp
    ld sp, $3331
    inc sp
    inc sp
    ld sp, $3331
    inc de
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rDIV], a
    jp hl


    add hl, bc
    ld a, [c]

Call_003_6111:
    dec l
    ld h, c
    ld a, [c]
    ld a, [hl-]
    ld h, c
    ld a, [c]
    ld b, l
    ld h, c
    ld a, [c]
    ld d, d
    ld h, c
    ld a, [c]
    dec l
    ld h, c
    ld a, [c]
    ld a, [hl-]

Call_003_6121:
    ld h, c
    ld a, [c]

Call_003_6123:
    ld b, l
    ld h, c
    ld a, [c]
    ld d, d
    ld h, c
    ld hl, sp+$06
    ld h, c
    ret nz

    rst $38
    call nc, $d5b3
    ld b, e
    add e
    or e
    sub $43
    push de
    or e
    add e
    ld b, e
    di
    call nc, $d5b3
    inc sp
    add e
    sub e
    or e

Call_003_6141:
    sub e
    ld h, e
    inc sp
    di
    call nc, $d5b3
    inc sp
    add e
    or e
    sub $33
    push de
    or e
    ld h, e
    inc sp
    di
    call nc, $d5b3
    ld b, e
    add e
    or e
    sub $43
    push de
    or e
    add e
    ld b, e
    di
    ld [c], a

Call_003_6160:
    dec b

Call_003_6161:
Jump_003_6161:
    pop hl
    inc bc

Call_003_6163:
    and $0f
    ldh [rDIV], a
    jp hl


    dec b
    db $e4
    ld [bc], a
    db $e3
    ld de, $8af2
    ld h, c
    ld a, [c]
    sbc c
    ld h, c
    ld a, [c]
    and h
    ld h, c
    ld a, [c]
    or d
    ld h, c
    ld a, [c]
    adc d
    ld h, c
    ld a, [c]
    sbc c
    ld h, c
    ld a, [c]
    and h
    ld h, c
    ld a, [c]
    or d
    ld h, c
    ld hl, sp+$5f
    ld h, c
    ret nz

    rst $38
    db $d3
    or c
    pop bc
    or c
    or e
    call nc, $8341
    or c

Call_003_6193:
    or e
    or c
    or c
    sub e
    add c
    di
    call nc, $c191
    sub c
    pop bc
    sub c
    ld h, e
    ld sp, $bfd3
    di
    db $d3
    or c
    pop bc
    or c
    call nc, Call_003_6331
    sub e
    or c
    sub e
    ld h, c
    inc sp
    sub e
    di
    call nc, $c181
    add c
    sub c
    add c
    ld b, e
    ld de, $b7d3
    or e
    call nc, $f343
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rDIV], a
    jp hl


    nop
    ld a, [c]
    pop af
    ld h, c
    call nc, $9f3f
    rra
    ld h, a
    db $d3
    or e
    call nc, $f233
    pop af
    ld h, c
    ld a, [c]
    pop af
    ld h, c
    ccf
    sub e
    db $d3
    or e
    call nc, $d313
    or e
    call nc, Call_003_671f
    db $d3
    or a
    ld a, [c]
    pop af
    ld h, c
    ld hl, sp-$40
    ld h, c
    ret nz

    rst $38
    call nc, $8f4f
    di
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $0f
    ldh [rDIV], a
    jp hl


    nop
    db $e4
    ld [bc], a
    db $e3
    ld de, $d2cb
    or c
    pop bc
    or c
    or c
    pop bc
    db $d3
    ld b, c
    ld sp, $b1c1
    or c
    pop bc
    or c
    or c
    sub c
    pop bc
    add c
    sub c
    pop bc
    sub c
    pop bc
    sub c
    ld h, c
    pop bc
    ld sp, $b3d2
    res 6, c
    pop bc
    or c
    db $d3
    ld sp, $c161
    sub c
    pop bc
    or c
    sub c
    pop bc
    ld h, c
    ld sp, $91c1
    pop bc

Call_003_6232:
    add c
    pop bc
    add c
    sub c
    add c
    ld b, c
    pop bc
    ld de, $d2c5
    or c
    pop bc
    db $d3
    ld b, c
    jp Jump_000_04f8


    ld h, d
    ret nz

    rst $38
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $f0
    ldh [rDIV], a
    jp hl


    add hl, bc
    db $e4
    ld [bc], a
    db $e3
    ld de, $8af2
    ld h, d
    call nc, $c341
    ld b, c
    ld b, c
    ld b, c
    pop bc
    ld a, [c]
    adc d
    ld h, d
    ld h, c
    jp Jump_003_6161


    ld h, c
    pop bc
    ld sp, $9131
    pop bc
    or c
    pop bc
    sub c
    jp $c361


    ld h, c
    ld h, c
    ld h, c
    pop bc
    push de
    ld de, $1111
    call nc, $c1b1
    sub c
    add c
    jp $c341


    ld b, c
    ld b, c
    ld b, c
    pop bc
    ld hl, sp+$54
    ld h, d
    ret nz

    rst $38
    call nc, $4141
    add c
    pop bc
    or c
    pop bc
    sub c
    jp $e2f3


    dec b
    pop hl
    inc bc
    and $ff
    ldh [rDIV], a
    jp hl


    add hl, bc
    ld a, [c]
    rst $10
    ld h, d
    push de
    add c
    jp $8181


    add c
    pop bc
    ld a, [c]
    rst $10
    ld h, d
    push de
    or c
    jp $b1b1


    or c
    pop bc
    sub c
    sub c
    or c
    pop bc
    sub $31
    pop bc
    ld de, $d5c3
    sub c
    jp $9191


    sub c
    pop bc
    sub $41
    ld b, c

jr_003_62c5:
    ld b, c
    ld sp, $11c1
    push de
    or c
    jp $c381


    add c
    add c
    add c
    pop bc
    ld hl, sp-$62
    ld h, d
    ret nz

    rst $38
    push de
    add c
    add c
    or c
    pop bc
    sub $31
    pop bc
    ld de, $f3c3
    ldh [rTMA], a
    jp hl


    inc bc
    ld a, [c]
    ld a, [$f262]
    ld a, [$f262]
    ld a, [$3062]
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_003_6326

    jr nc, jr_003_630f

    ret nz

    rst $38
    ld sp, $30c1
    jr nc, jr_003_632f

    jr nc, jr_003_6331

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_003_6337

    jr nc, @-$0b

    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $f0

jr_003_630f:
    ldh [rTMA], a
    jp hl


    ld [$02e4], sp
    db $e3
    ld de, $34f2

jr_003_6319:
    ld h, e
    ld a, [c]
    ld c, c
    ld h, e
    ld a, [c]
    ld c, c
    ld h, e
    call nc, $a020
    jr nz, jr_003_62c5

    ld b, b

jr_003_6326:
    push de
    nop
    call nc, $d540
    nop
    ld d, b
    ld d, b
    ret nz

jr_003_632f:
    ld d, b
    ld d, b

Call_003_6331:
jr_003_6331:
    jp nz, $ffc0

    call nc, $a020

jr_003_6337:
    ret nz

    and b
    and b
    ret nz

    and b
    ret nz

    sub b
    nop
    push de
    nop
    call nc, Call_003_5070
    jr nz, jr_003_6319

    and b

Call_003_6347:
    sub b
    di
    call nc, $a020
    ret nz

    and b
    and b
    ret nz

    and b
    ret nz

    ld [hl], b
    nop
    push de
    nop
    call nc, $d570
    ld b, b
    call nc, $2050
    nop
    di
    ld [c], a

jr_003_6360:
    dec b

jr_003_6361:
    pop hl

jr_003_6362:
    ld [bc], a

Call_003_6363:
    and $0f
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld de, $84f2
    ld h, e
    ld a, [c]
    sbc d
    ld h, e
    sub $20
    jr nz, jr_003_6337

    jr nz, jr_003_63e9

    ret nz

    ld [hl], b
    ret nz

    sub b
    sub b
    ret nz

    sub b
    sub b
    jp nz, $ffc0

    db $d3
    and b
    call nc, Call_003_5020
    jr nz, jr_003_6361

    and b
    call nc, $d650
    and b
    call nc, TimerOverflowInterrupt
    ret nz

    add b
    ret nz

    sub b
    ld d, b
    jr nz, jr_003_639a

jr_003_639a:
    call nc, Call_000_20a0
    ld d, b
    jr nz, jr_003_6360

    jr nz, jr_003_6362

    ld d, b
    ld b, b
    db $d3
    nop
    call nc, $d350
    nop
    sub $00
    ld b, b
    ld d, b
    ld [hl], b
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    ld a, [c]
    jp nc, $f263

    db $eb
    ld h, e
    db $d3
    and b
    ret nz

    and b
    ret nz

    call nc, $c000
    nop
    ret nz

    ld d, b
    ld d, b
    ret nz

    ld d, b
    ld d, b
    jp nz, $ffc0

    db $d3
    and b
    ret nz

    and b
    jp nc, $d4a0

    ld d, b
    ld d, b
    db $d3
    nop
    call nc, Call_003_4050
    ret nz

    ld d, b
    db $d3
    nop
    call nc, Call_003_5050
    db $d3
    ld d, b

jr_003_63e9:
    sub $00
    db $d3
    and b
    ret nz

    and b
    jp nc, $d4a0

    ld d, b
    ld d, b
    db $d3
    nop
    call nc, TimerOverflowInterrupt
    ret nz

    nop
    db $d3
    nop
    call nc, $7070
    db $d3
    ld b, b
    call nc, $f370
    ldh [rTMA], a
    jp hl


    inc bc
    ld a, [c]
    ld a, [$f862]
    dec b
    ld h, h
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rTMA], a
    jp hl


    ld [$02e4], sp
    db $e3
    ld de, $34f2
    ld h, e
    ld a, [c]
    ld c, c
    ld h, e
    ld hl, sp+$11
    ld h, h
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld de, $84f2
    ld h, e
    ld hl, sp+$2a
    ld h, h
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    ld a, [c]
    jp nc, $f263

    db $eb
    ld h, e
    ld hl, sp+$40
    ld h, h
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [$0e], a
    jp hl


    rlca
    db $d3
    or b
    ret nz

    or b
    or b
    or b
    ret nz

    call nc, $c010
    jr nz, jr_003_648b

    db $10
    ret nz

    db $d3
    or b
    ret nz

    and b
    ret nz

    ld [hl], b
    ld [hl], b
    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    sub b
    ret nz

    or b
    ret nz

    ld [hl], b
    ld [hl], b
    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld h, b
    ret nz

    ld [hl], b

jr_003_648b:
    ld [hl], b
    ld [hl], b
    ret nz

    or b
    ret nz

    or b
    ret nz

    ld hl, sp+$55
    ld h, h
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [$0e], a
    jp hl


    dec b
    db $e4
    ld [bc], a
    db $e3
    add hl, de
    call nc, $6042
    ld [hl], e
    pop bc
    ld h, b
    ld [hl], b
    ld b, c
    ld sp, $1022
    rlca
    db $d3
    ld [hl], c
    sub c
    or d
    call nc, Call_000_3b10
    ld hl, sp-$69
    ld h, h
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [$0e], a
    jp hl


    nop
    ld a, [c]
    push de
    ld h, h
    ld a, [c]
    push de
    ld h, h
    ld a, [c]
    push de
    ld h, h
    ld hl, sp-$43
    ld h, h
    ret nz

    rst $38
    db $d3
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld [hl], c
    call nc, $f331
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rTIMA], a
    jp hl


    ld [bc], a
    push de
    ld [bc], a
    ld [hl], d
    ld [hl-], a
    nop
    sub d
    ld [c], a
    rla
    db $e4
    ld [bc], a
    db $e3
    dec bc
    ld e, c
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rTIMA], a
    jp hl


    ld [bc], a
    db $d3
    add c
    call nc, Call_000_1101
    ld sp, $9171
    push de
    ld bc, $17e2
    db $e4
    ld [bc], a
    db $e3
    dec bc
    ld e, b
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTIMA], a
    jp hl


    nop
    db $d3

Call_003_6521:
    add c
    call nc, Call_000_1303
    ld e, h
    ret nz

    rst $38
    ldh [$09], a
    jp hl


    rlca
    ld a, [c]
    ld h, h
    ld h, l
    ld a, [c]
    ld h, h
    ld h, l
    ld a, [c]
    ld h, [hl]
    ld h, l
    ld a, [c]
    ld h, [hl]
    ld h, l
    ld a, [c]
    ld h, [hl]
    ld h, l
    ld sp, $3121
    ld hl, $2030
    jr nz, jr_003_6563

    jr nz, jr_003_6565

    jr nz, @+$22

    ld a, [c]
    ld l, a
    ld h, l
    ld a, [c]
    ld l, a
    ld h, l
    ld a, [c]
    ld l, a
    ld h, l
    ld a, [c]
    ld l, a
    ld h, l
    ld a, [c]
    ld l, a
    ld h, l
    ld a, [c]
    ld l, a
    ld h, l
    ld a, [c]
    ld l, a
    ld h, l
    ld a, [c]
    ld l, a
    ld h, l
    ld hl, sp+$32
    ld h, l
    ret nz

Call_003_6563:
jr_003_6563:
    rst $38
    rst $08

jr_003_6565:
    di
    ld sp, $3121
    ld hl, $2131
    ld sp, $f321
    jr nc, jr_003_65a1

    ld hl, $3030
    ld hl, $3030
    ld hl, $3030
    ld hl, $e2f3
    dec b
    pop hl
    inc bc
    and $f0
    ldh [$09], a
    jp hl


    nop
    ld [c], a
    dec de
    db $d3
    rrca
    add sp, $0f
    ld [c], a
    dec b
    db $e4
    ld [bc], a
    db $e3
    ld de, $05e9
    ld [c], a
    inc c
    nop
    call nc, RST_00

jr_003_659a:
    db $d3
    ld h, b
    or b
    or b
    nop
    sub b
    nop

jr_003_65a1:
    ld h, b
    ld h, b
    ld h, b

jr_003_65a4:
    ld [hl], b
    ld [hl], b
    nop
    ld h, b
    nop

jr_003_65a9:
    call nc, $8080
    db $d3
    ld h, b
    call nc, Call_000_3030
    db $d3
    nop

jr_003_65b3:
    call nc, $d330
    nop

jr_003_65b7:
    call nc, $7070
    db $d3
    ld h, b
    call nc, Call_003_6060
    db $d3
    nop

jr_003_65c1:
    call nc, $d330
    jr nc, jr_003_659a

    jr nc, jr_003_65f8

    db $d3
    sub b
    call nc, Call_003_7060
    db $d3
    jr nc, jr_003_65a4

    sub b
    db $d3
    jr nc, jr_003_65a9

    nop
    nop
    db $d3
    sub b
    push de
    nop
    nop
    db $d3
    jr nc, jr_003_65b3

jr_003_65de:
    nop
    db $d3
    jr nc, jr_003_65b7

    nop
    nop
    db $d3
    sub b
    call nc, $a090
    db $d3
    jr nc, jr_003_65c1

    nop
    db $d3
    jr nc, @-$29

    jr nc, jr_003_6622

    db $d3
    sub b
    push de
    jr nc, @+$32

    db $d3

jr_003_65f8:
    jr nc, @-$29

    jr nc, jr_003_65de

    dec b
    call nc, $e817
    dec d
    add sp, -$20

jr_003_6603:
    ld b, $10
    nop
    db $d3
    or b
    ldh [$09], a
    sbc a
    and a
    add sp, -$5b
    add sp, -$20
    ld b, $a0
    sub b
    add b
    ldh [$09], a
    ld a, a
    and a
    add sp, -$5b
    add sp, -$20
    ld b, $a0
    sub b
    add b
    ldh [$09], a

jr_003_6622:
    ld a, a
    ld h, a
    add sp, $65
    add sp, -$20
    ld b, $60

jr_003_662a:
    ld d, b
    ld b, b
    ldh [$09], a
    ccf
    ld hl, sp-$72
    ld h, l
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [$09], a
    jp hl


    nop
    ld [c], a
    dec de
    db $d3
    ld l, a

jr_003_6642:
    add sp, $6f
    ld [c], a
    dec b
    db $e4
    ld [bc], a
    db $e3
    ld de, $0ce2
    jp hl


    dec b
    jp nc, $d490

    jr nc, jr_003_6683

    db $d3
    jr nc, jr_003_662a

    jr nz, @+$22

    db $d3
    sub b
    call nc, $d200
    sub b

jr_003_665e:
    db $d3
    sub b
    sub b
    jr nc, jr_003_6603

    and b
    sub b
    sub b
    jp nc, $d490

    ld h, b
    ld h, b
    db $d3
    jr nc, jr_003_6642

    ld [hl], b
    ld [hl], b
    db $d3

jr_003_6671:
    sub b
    call nc, $d260
    sub b
    call nc, $a0a0
    db $d3
    jr nc, @-$2a

jr_003_667c:
    sub b
    sub b
    db $d3

jr_003_667f:
    sub b
    call nc, $d270

jr_003_6683:
    sub b
    call nc, Call_003_6060
    db $d3
    jr nc, jr_003_665e

    sub b
    and b
    db $d3
    sub b
    push de
    nop
    jp nc, $d590

    jr nc, jr_003_66c5

    db $d3
    jr nc, @-$29

    jr nc, jr_003_66ca

    db $d3
    sub b
    push de
    jr nc, jr_003_6671

    sub b
    push de
    jr nc, jr_003_66d3

    db $d3
    jr nc, @-$29

    nop
    jr nz, jr_003_667c

    sub b
    push de
    jr nc, jr_003_667f

    sub b
    push de
    ld h, b
    ld h, b
    db $d3
    jr nc, @-$29

    ld h, b
    ld h, b
    db $d3
    sub b
    push de
    ld h, b
    ld [c], a
    dec b
    call nc, $e867
    ld h, l
    add sp, -$20
    ld b, $60
    ld d, b

jr_003_66c5:
    ld b, b
    ldh [$09], a
    ccf
    push de

jr_003_66ca:
    scf
    add sp, $35
    add sp, -$20
    ld b, $30
    jr nz, jr_003_66e3

jr_003_66d3:
    ldh [$09], a
    rrca
    call nc, $e837
    dec [hl]
    add sp, -$20
    ld b, $30
    jr nz, jr_003_66f0

    ldh [$09], a
    rrca

jr_003_66e3:
    db $d3
    sub a
    add sp, -$6b
    add sp, -$20
    ld b, $90
    add b
    ld [hl], b
    ldh [$09], a
    ld l, a

jr_003_66f0:
    ld hl, sp+$46
    ld h, [hl]
    ret nz

    rst $38
    ld [c], a
    dec e
    pop hl
    inc bc
    and $ff

jr_003_66fb:
    ldh [$09], a
    jp hl


    nop
    ld a, [c]
    ld e, b
    ld h, a
    ld a, [c]
    ld e, b
    ld h, a
    ld a, [c]
    ld e, b
    ld h, a
    ld a, [c]
    ld e, b
    ld h, a
    ld a, [c]
    ld h, d
    ld h, a
    ld a, [c]
    ld h, d
    ld h, a
    ld a, [c]
    ld h, d
    ld h, a
    ld a, [c]
    ld h, d
    ld h, a
    ld a, [c]
    ld h, d
    ld h, a
    ld a, [c]
    ld h, d
    ld h, a
    ld a, [c]
    ld l, [hl]

Call_003_671f:
    ld h, a
    ld a, [c]
    ld l, [hl]
    ld h, a
    ld a, [c]
    ld l, [hl]
    ld h, a
    ld a, [c]
    ld l, [hl]
    ld h, a
    ld a, [c]
    ld a, e
    ld h, a
    ld a, [c]
    ld a, e
    ld h, a
    ld a, [c]
    ld a, e
    ld h, a
    ld a, [c]
    ld a, e
    ld h, a
    ld a, [c]
    ld a, e
    ld h, a
    ld a, [c]
    ld a, e
    ld h, a
    ld a, [c]
    ld a, e
    ld h, a
    ld a, [c]
    ld a, e
    ld h, a
    ld a, [c]
    adc b
    ld h, a
    ld a, [c]
    adc b
    ld h, a
    ld a, [c]
    adc b
    ld h, a
    ld a, [c]
    adc b
    ld h, a
    ld a, [c]
    adc b
    ld h, a
    ld a, [c]
    adc b
    ld h, a
    ld hl, sp+$0b
    ld h, a
    ret nz

    rst $38
    jp nc, $9090

    ret nz

    sub b
    sub b
    ret nz

    sub b
    sub b
    di
    jp nc, $9090

    db $d3
    sub b
    jr nc, jr_003_6799

    jr nc, jr_003_66fb

    jp nc, $f390

    db $d3
    ld h, b
    ld h, b
    call nc, Call_000_3000
    jr nc, jr_003_6776

jr_003_6776:
    db $d3
    ld h, b
    call nc, $f300
    db $d3
    jr nc, jr_003_67ae

    sub b
    call nc, RST_00
    db $d3
    jr nc, jr_003_67e5

    call nc, $f330
    db $d3
    sub b
    sub b
    call nc, Call_003_6030
    ld h, b
    jr nz, @-$2b

    sub b
    call nc, $f300
    ld [c], a
    dec b
    pop hl
    inc bc

jr_003_6799:
    and $0f
    ldh [rTAC], a
    jp hl


    ld b, $e4
    ld [bc], a
    db $e3
    ld de, $72d3
    add d
    call nc, $1202
    ld [hl-], a
    ld [hl], d
    ld [hl-], a
    ld [de], a
    ld [bc], a

jr_003_67ae:
    db $d3
    add d
    call nc, $1202
    ld [hl-], a
    ld [hl], d
    add d
    and d
    add d
    ld [hl], d
    ld [hl-], a
    ld [de], a
    ld hl, sp-$5d
    ld h, a
    ret nz

    rst $38
    ld [c], a
    ld [de], a
    pop hl
    ld [bc], a
    and $f0
    ldh [rTAC], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld de, $f1f2
    ld h, a
    ld a, [c]
    pop af
    ld h, a
    ld a, [c]
    pop af
    ld h, a
    ld a, [c]
    pop af
    ld h, a
    ld a, [c]
    pop af
    ld h, a
    ld a, [c]
    ei
    ld h, a
    ld a, [c]
    ei
    ld h, a
    ld a, [c]
    ei

jr_003_67e5:
    ld h, a
    ld a, [c]
    ei
    ld h, a
    ld a, [c]
    ei
    ld h, a
    ld hl, sp-$32
    ld h, a
    ret nz

    rst $38
    push de
    jr nc, jr_003_6864

    add b
    sub $00
    push de
    add b
    ld [hl], b
    di
    push de
    add b
    sub $00
    db $10
    jr nc, @+$12

    nop
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTAC], a
    jp hl


    ld bc, $82d3
    call nc, Call_000_3202
    ld [hl], d
    add d
    push de
    ld [bc], a
    call nc, Call_003_7282
    ld [hl-], a
    ld [bc], a
    ld [hl-], a
    ld [hl], d
    add d
    push de
    ld [bc], a
    ld [de], a
    ld [hl-], a
    ld [de], a
    ld [bc], a
    call nc, Call_003_7282
    ld hl, sp+$0e
    ld l, b
    ret nz

    rst $38
    ldh [rTIMA], a
    jp hl


    rlca
    ld sp, $3121
    ld hl, $2131
    ld sp, $3121
    ld hl, $13c1
    ret nz

    rst $38
    ld [c], a
    inc c
    pop hl
    inc bc
    and $f0
    ldh [rTIMA], a
    jp hl


    dec b
    db $e4
    ld [bc], a
    db $e3
    ld de, $01d5
    ret nz

    call nc, $c081
    push de
    ld bc, $a1d4
    ret nz

    add c
    ret nz

    ld [hl], c
    ld sp, $d3c3
    ld sp, $ffc0
    ld [c], a
    inc c
    pop hl

jr_003_6864:
    inc bc
    and $0f
    ldh [rTIMA], a
    jp hl


    inc bc
    db $e4
    ld [bc], a
    db $e3
    ld de, $31d5
    ret nz

    ld bc, $31c0
    ld de, $01c0
    ret nz

    call nc, $81a1
    jp $81d3


    ret nz

    rst $38
    ld [c], a
    inc c
    pop hl
    ld [bc], a
    and $ff
    ldh [rTIMA], a
    jp hl


    nop
    db $d3
    add c
    ld sp, $3181
    ld sp, $31a1
    and c
    ld [c], a
    dec b
    call nc, $d385
    add l
    ret nz

    rst $38
    ld [c], a
    ld [de], a
    pop hl
    inc bc
    and $f0
    ldh [$0a], a
    jp hl


    ld [$02e4], sp
    db $e3
    ld de, $d5c0
    ld bc, $91d4
    ld d, c
    push de
    ld bc, $b3d4
    ld b, e
    ld d, c
    ld [hl], c
    sub c
    push de
    ld bc, $47d4
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [$0a], a
    jp hl


    inc b
    db $e4
    ld [bc], a
    db $e3
    ld de, $41d5
    ld bc, $91d4
    push de
    ld b, c
    inc hl
    call nc, $9173
    or c
    push de
    ld bc, $d451
    or b
    push de
    ld [hl], a
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [$0a], a
    jp hl


    nop
    db $d3
    ld d, c
    sub c
    call nc, $d301
    sub c
    ld b, c
    ld [hl], c
    or c
    ld [hl], c
    ld hl, $9151
    ld d, c
    ld bc, $d471
    inc bc
    jp $ffc0


    ldh [rDIV], a
    jp hl


    rlca
    ld a, [c]
    jp nz, $f269

    jp nz, $f269

    jp nz, $f269

    jp nz, $f269

    jp nz, $f269

    jp nz, $f269

    jp nz, $f269

    jp nz, $f269

    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    ld a, [c]
    ret z

    ld l, c
    inc hl
    jp $c323


    inc de
    jp $c0c7


    rst $38
    inc sp
    inc de
    inc sp
    ld hl, $f321
    inc sp
    ld hl, $3321
    ld hl, $f321
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rDIV], a
    jp hl


    ld [$02e4], sp
    db $e3
    add hl, de
    ld a, [c]
    sub [hl]
    ld l, d
    ld a, [c]
    sub [hl]
    ld l, d
    ld a, [c]
    sbc [hl]
    ld l, d
    ld a, [c]
    sub [hl]
    ld l, d
    ld a, [c]
    sub [hl]
    ld l, d
    ld a, [c]
    sbc [hl]
    ld l, d
    ld [c], a
    inc e
    db $d3
    ld [hl], l
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld [c], a
    dec b
    call nc, $7331
    and e
    add l
    ld d, a
    rst $00
    ld d, c
    add e
    push de
    inc bc
    call nc, $77a5
    rst $00
    ld [hl], c
    and e
    push de
    inc sp
    dec h
    dec [hl]
    inc hl
    dec b
    dec h
    inc bc
    call nc, $77a5
    rst $00
    ld sp, $a373
    add l
    ld d, a
    rst $00
    ld d, c
    add e
    push de
    inc bc
    call nc, Call_003_75a5
    push de
    dec sp
    inc sp
    ld d, e
    ld [hl], l
    add l
    ld [hl], e
    ld d, l
    dec [hl]
    inc hl
    ccf
    push bc
    ld a, [c]
    xor b
    ld l, d
    call nc, $058f
    dec [hl]
    add e
    ld [hl], l
    dec sp
    jp $a8f2


    ld l, d
    call nc, Call_000_250f
    dec b
    db $d3
    and e
    ld [hl], a
    and a
    call nc, $a137
    dec [hl]
    ld hl, $d303
    and c
    ld a, [c]
    cp e
    ld l, d
    call nc, Call_000_2133
    ld sp, $a3d3
    call nc, $d303
    and c
    call nc, Call_000_2137
    ld sp, $a3d3
    call nc, $0133
    inc sp
    and e
    push de
    inc bc
    ld bc, $3153
    inc hl
    call nc, $d5a3
    ld bc, $73d4
    and c
    and l
    ld sp, $a371
    inc sp
    and e
    and c
    ld sp, $0321
    db $d3
    and c
    ld a, [c]
    cp e
    ld l, d
    call nc, Call_000_2133
    ld sp, $a3d3
    call nc, $d303
    and c
    call nc, Call_000_2137
    ld bc, $c2f2
    ld l, d
    ld a, [c]
    jp nz, $c06a

    rst $38
    pop bc
    call nc, $c131
    ld sp, $3353
    di
    call nc, Call_000_0525
    inc bc
    db $d3
    and l
    call nc, Call_000_2305
    di
    db $d3
    and c
    call nc, Call_000_3333
    ld d, l
    ld [hl], l
    add l
    ld d, l
    inc hl
    db $d3
    and e
    call nc, $3575
    db $d3
    xor a
    sub e
    di
    pop bc
    call nc, Call_000_0327
    db $d3
    and e
    di
    db $d3
    and e
    call nc, Call_000_3523
    ld d, l
    inc sp
    dec h
    dec b
    db $d3
    and e
    ld [hl], e
    jp $c373


    ld [hl], e
    jp $e2f3


    dec b
    pop hl
    inc bc
    and $0f
    ldh [rDIV], a
    jp hl


    ld b, $e4
    ld [bc], a
    db $e3
    add hl, de
    ld a, [c]
    inc d
    ld l, e
    ld a, [c]
    inc d
    ld l, e
    ld a, [c]
    inc e
    ld l, e
    ld a, [c]
    inc d
    ld l, e
    ld a, [c]
    inc d
    ld l, e
    ld a, [c]
    inc e
    ld l, e
    ld [c], a
    inc e
    call nc, $3535
    inc sp
    dec [hl]
    ld [c], a
    dec b
    ld a, [c]
    inc h
    ld l, e
    ld a, [c]
    ld d, c
    ld l, e
    ld a, [c]
    inc h
    ld l, e
    ld a, [c]
    ld d, c
    ld l, e
    ld a, [c]
    inc h
    ld l, e
    ld a, [c]
    ld e, l
    ld l, e
    ld a, [c]
    ld e, l
    ld l, e
    ret nz

    rst $38
    pop bc
    call nc, $c171
    ld [hl], c
    add e
    ld [hl], e
    di
    call nc, Call_000_3555
    inc sp
    dec h
    dec [hl]
    ld d, e
    di
    call nc, $7331
    and e
    add l
    ld d, a
    rst $00
    ld d, c
    add e
    push de
    inc bc
    call nc, $77a5
    rst $00
    ld [hl], c
    and e
    push de
    inc sp
    dec h
    dec [hl]
    inc hl
    dec b
    dec h
    inc bc
    call nc, $77a5
    rst $00
    ld sp, $a373
    add l
    ld d, a
    rst $00
    ld d, c
    add e
    push de
    inc bc
    call nc, Call_003_75a5
    push de
    dec sp
    di
    push de
    inc sp
    ld d, e
    ld [hl], l
    add l
    ld [hl], e
    ld d, l
    dec [hl]
    inc hl
    ccf
    push bc
    di
    push de
    inc sp
    ld d, e
    ld [hl], l
    add l
    ld [hl], e
    ld d, l
    dec [hl]
    inc hl
    ccf
    rst $00
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rDIV], a
    jp hl


    nop
    ld a, [c]
    or c
    ld l, h
    ld a, [c]
    or c
    ld l, h
    ld [c], a
    inc e
    call nc, $3535
    inc sp
    dec [hl]
    jp $e2c5


    dec b
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    jp z, $f26c

    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    jp z, $f26c

    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    jp z, $f26c

    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    pop bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    push bc
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    ld a, [c]
    cp h
    ld l, h
    call nc, $c333
    inc sp
    jp $c333


    rst $00
    ret nz

    rst $38
    call nc, $333b
    dec sp
    inc sp
    db $d3
    adc e
    add e
    xor e
    and e
    di
    db $d3
    and e
    call nc, $f353
    call nc, $a333
    di
    db $d3
    add e
    call nc, $f333
    call nc, Call_003_7303
    inc bc
    ld [hl], e
    di
    ldh [rDIV], a
    jp hl


    dec b
    rst $08
    ld de, $c1c1
    ld sp, $c111
    pop bc
    pop bc
    dec [hl]
    dec [hl]
    dec [hl]
    rla
    ret nz

    rst $38
    ld [c], a
    ld [de], a
    pop hl
    inc bc
    and $f0
    ldh [rDIV], a
    jp hl


    add hl, bc
    db $e4
    ld [bc], a
    db $e3
    ld de, $d4c0
    ld de, $9141
    push de
    ld de, $4121
    sub c
    sub $11
    push de
    ld de, $41d4
    pop bc
    ld b, c
    push de
    rla
    call nc, $95b5
    ld [hl], l
    ld [c], a
    ld e, $4f
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rDIV], a
    jp hl


    dec b
    db $e4
    ld [bc], a
    db $e3
    ld de, $41d3
    sub c
    call nc, Call_000_2111
    ld b, c
    sub c
    push de
    ld de, $4121
    call nc, $c191
    sub c
    push de
    ld b, a
    dec h
    dec d
    call nc, $d5b5
    ld [c], a
    rla
    rra
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rDIV], a
    jp hl


    nop
    rst $08
    db $d3
    sub l
    sub l
    sub e
    ld [hl], l
    or l
    call nc, $d325
    sbc a
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $f0
    ldh [$0a], a
    jp hl


    ld [$02e4], sp
    db $e3
    ld de, $91d3
    and c
    call nc, Call_003_5101
    ld [hl], c
    ld d, c
    ld [hl], c
    and c
    ld h, e
    ld h, c
    ld b, c
    ld [c], a
    rra
    ld h, a
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [$0a], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld de, $01d4
    ld d, c
    sub c
    push de
    ld bc, $a1d4
    sub c
    and c
    ld [hl], c
    ld [c], a
    rra
    sbc a
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [$0a], a
    jp hl


    nop
    db $d3
    ld d, c
    sub c
    call nc, $d301
    sub c
    ld sp, $a171
    ld sp, $6121
    sub c
    call nc, $2721
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rTMA], a
    jp hl


    add hl, bc
    ld a, [c]
    rst $28
    ld l, l
    ld a, [c]
    ld hl, sp+$6d
    push de
    ld b, e
    or e
    sub $43
    inc de
    ld b, e
    push de
    or e
    sub e
    sub $43
    ld h, e
    ld b, e
    ld h, e
    inc de
    ld a, [c]
    rst $28
    ld l, l
    ld a, [c]
    ld hl, sp+$6d
    push de
    ld h, e
    or e
    add e
    add e
    or e
    sub $63
    push de
    ld d, e
    add e
    or e
    add e
    or e
    sub $53
    push de
    ld h, e
    sub $13
    push de
    and e
    ld b, e
    or e
    sub $43
    ld hl, sp-$56
    ld l, l
    ret nz

    rst $38
    push de
    sub e
    sub $43
    ld h, e
    inc de
    ld h, e
    ld b, e
    di
    push de
    ld h, e
    sub e
    sub $23
    push de
    sub e
    sub $43
    sub e
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rTMA], a
    jp hl


    dec b
    db $e4
    ld [bc], a
    db $e3
    ld de, $62f2
    ld l, [hl]
    ld a, [c]
    ld [hl], b
    ld l, [hl]
    call nc, Call_000_2111
    ld b, c
    add c
    or e
    ld sp, $8141
    sub c
    push de
    ld de, $b1d4
    sub c
    add c
    ld h, c
    add c
    ld b, c
    ld hl, $f21b
    ld h, d
    ld l, [hl]
    ld a, [c]
    ld [hl], b
    ld l, [hl]
    ld hl, $8161
    or c
    push de
    inc hl
    call nc, $8161
    or c
    push de
    ld hl, $b1d4
    add c
    ld sp, $8151
    or c
    push de
    inc sp
    call nc, $8151
    or c
    push de
    ld sp, $81d4
    or c
    push de
    ld h, e
    call nc, Call_003_6363
    ld b, c
    add c
    or c
    push de
    ld b, c
    call nc, $81b1
    ld hl, sp+$03
    ld l, [hl]
    ret nz

    rst $38
    call nc, Call_000_2111
    ld sp, $8141
    sub c
    push de
    ld sp, $1341
    call nc, $f393
    push de
    ld hl, $d411
    or c
    sub c
    ld h, c
    add c
    ld c, e
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    ld a, [c]
    xor d
    ld l, [hl]
    ld a, [c]
    or b
    ld l, [hl]
    call nc, $978b
    ld h, e
    ld b, a
    ld h, e
    ld b, a
    ld h, e
    ld a, [c]
    xor d
    ld l, [hl]
    ld a, [c]
    or b
    ld l, [hl]
    ld h, e
    or e
    add e
    ld h, a
    inc hl
    inc sp
    ld d, e
    add e
    or a
    inc sp
    dec de
    add a
    add e
    ld hl, sp+$7a
    ld l, [hl]
    ret nz

    rst $38
    call nc, Call_003_6347
    sub a
    ld b, e
    di
    call nc, Call_000_2363
    inc de
    ld b, a
    add e
    di
    ldh [rTMA], a
    jp hl


    rlca
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld a, [c]
    ldh a, [$6e]
    ld hl, sp-$49
    ld l, [hl]
    ret nz

    rst $38
    ld sp, $3111
    ld de, $1131
    ld sp, $f311
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rTMA], a
    jp hl


    ld [$02e4], sp
    db $e3
    ld de, $19e2
    db $d3
    ld b, c
    ld b, c
    ld h, c
    ld b, c
    pop bc
    ld b, c
    ld h, c
    pop bc
    ld [c], a
    dec b
    push de
    ld hl, $0141
    ld b, c
    daa
    ld [c], a
    add hl, de
    db $d3
    add c
    add c
    and c
    add c
    pop bc
    add c
    and c
    pop bc
    ld [c], a
    dec b
    push de
    ld h, c
    add c
    ld b, c
    add c
    ld h, a
    pop bc
    db $d3
    ld hl, $6341
    ld b, c
    ld h, c
    jp Jump_003_4181


    ld bc, $b1d4
    pop bc
    or c

jr_003_6f3c:
    pop bc
    db $d3
    add c
    sub c
    and c
    or c
    and c
    sub c
    add e
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    jp Jump_000_19e2


    ld b, c
    ld b, c
    ld h, c
    ld h, c
    add c
    ld h, c
    pop bc
    ld h, c
    add c
    nop
    jr nz, jr_003_6f58

jr_003_6f58:
    jr nz, jr_003_6f3c

    dec b
    and c

Jump_003_6f5c:
    ld h, c
    and c
    add a
    ld [c], a
    add hl, de
    and c
    and c
    call nc, $d301
    and c
    pop bc
    and c
    call nc, $d301
    and b
    nop
    jp nc, Jump_000_00a0

    ld [c], a
    dec b
    db $d3
    ld h, c
    ld hl, $4761
    ld a, [c]
    sbc e
    ld l, a
    ld a, [c]
    sbc e
    ld l, a
    ld [c], a
    dec b
    db $d3
    inc bc
    ld [c], a
    add hl, de
    ld hl, $c121
    ld hl, $21c1
    ld [c], a
    dec b
    ld h, e
    ld [c], a
    add hl, de
    ld [hl], c
    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    ld [hl], b
    ld [hl], b
    ld hl, sp-$07
    ld l, [hl]
    ret nz

    rst $38
    ld [c], a
    add hl, de
    db $d3
    ld b, c
    add c
    add c
    add c
    ld b, b
    ld b, b
    ld b, c
    ld bc, $f341
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rTMA], a
    jp hl


    ld b, $e4
    ld [bc], a
    db $e3
    ld de, $19e2
    db $d3
    add c
    add c
    and c
    add c
    pop bc
    add c
    and c
    pop bc
    ld a, [c]
    dec a
    ld [hl], b
    call nc, Call_000_0101
    ld hl, $c101
    ld bc, $c321
    ld a, [c]
    ld b, a
    ld [hl], b
    ld [c], a
    dec b
    call nc, $8161
    sub e
    add c
    sub c
    jp $01d5


    call nc, $81b1
    ld b, c
    pop bc
    ld b, c
    pop bc
    db $d3
    or c
    call nc, Call_000_1101
    inc hl
    ld de, $d301
    or e
    and c
    sub c
    add e
    push bc
    ld [c], a
    add hl, de
    and c
    and c
    call nc, $d301
    and c
    pop bc
    and c
    call nc, $c101
    ld a, [c]
    dec a
    ld [hl], b
    ld hl, $4121
    ld hl, $21c1
    ld b, c
    jp Jump_003_47f2


    ld [hl], b
    push de
    ld bc, $0101
    nop
    call nc, $60a0
    and b
    ld b, c
    jp Jump_000_0101


    ld bc, $d300
    and b
    ld h, b
    and b
    ld b, c
    pop bc
    ld [c], a
    dec b
    ld b, e
    ld [c], a
    add hl, de
    ld h, c
    ld h, c
    pop bc
    ld h, c
    pop bc
    ld h, c
    ld [c], a
    dec b
    sub e
    ld [c], a
    add hl, de
    call nc, Call_000_0101
    pop bc
    ld bc, $00c1
    nop
    ld hl, sp-$58
    ld l, a
    ret nz

    rst $38
    pop bc
    db $d3
    ld bc, $0101
    ld bc, $0101
    pop bc
    di
    db $d3
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    jp $e2f3


    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTMA], a
    jp hl


    nop
    ld a, [c]
    push bc
    ld [hl], b
    ld a, [c]
    adc $70

Call_003_7060:
    ld a, [c]
    call c, $f270
    adc $70
    ld [c], a
    add hl, de
    db $d3
    ld hl, $c121
    ld b, c
    and c
    ld hl, $41c3
    ld b, c
    pop bc
    call nc, $d301
    and c
    ld b, c
    ld bc, $41c1
    pop bc
    ld d, c
    pop bc
    add c
    jp $c151


    ld b, c
    pop bc
    or c
    call nc, $d341
    ld b, c
    jp $05e2


    ld h, c
    add c
    pop bc
    ld h, c
    add c
    ld bc, $c141
    ld a, [c]
    adc $70
    ld a, [c]
    call c, $f270
    adc $70
    ld a, [c]
    ld [$f270], a
    ld [$e270], a
    add hl, de
    db $d3
    ld bc, $c101
    ld bc, $21c1
    ld [c], a
    dec c
    jr nz, jr_003_70d0

    ld [c], a
    add hl, de
    ld hl, $2121
    pop bc
    ld hl, $41c1
    ld [c], a
    dec c
    ld b, b
    ld b, b
    ld [c], a
    dec b
    ld bc, $50f8
    ld [hl], b
    ret nz

    rst $38
    db $d3
    ld bc, $21c3
    pop bc
    ld bc, $8161
    di
    ld [c], a
    add hl, de

jr_003_70d0:
    pop bc
    db $d3
    ld bc, $0101
    ld bc, $0101
    pop bc
    ld [c], a
    dec b
    di
    db $d3
    ld b, c
    ld h, c
    pop bc
    ld bc, $e2c1
    add hl, de
    ld h, c
    ld h, c
    ld h, c
    ld [c], a
    dec b
    di
    db $d3
    ld bc, $e2c5
    dec c
    nop
    nop
    ld [c], a
    dec b
    ld bc, $01c1
    di
    ldh [rTIMA], a
    jp hl


    dec b
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld c, e
    ld [hl], c
    ld a, [c]
    ld c, e
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld c, e
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld a, [c]
    ld b, d
    ld [hl], c
    ld hl, sp-$09
    ld [hl], b
    ret nz

    rst $38
    pop bc
    ld hl, $21c1
    pop bc
    ld hl, $2121
    di
    pop bc
    ld hl, $2121
    pop bc
    ld hl, $2121
    di
    ld [c], a
    add hl, de
    pop hl
    inc bc
    and $f0
    ldh [rTIMA], a
    jp hl


    ld [$02e4], sp
    db $e3
    ld de, $d4c1
    add c
    add c
    add c
    ld h, c
    pop bc
    add c
    jp $c1a1


    and c
    add c
    pop bc
    ld h, c
    push bc
    ld d, c
    ld d, c
    ld h, c
    pop bc
    add c
    pop bc
    and c
    pop bc
    and c
    ld [c], a
    dec b
    push de
    rlca
    ld [c], a
    add hl, de
    push bc
    call nc, $a181
    pop bc
    add c
    ld d, c
    pop bc
    ld de, $c111
    ld de, $c131
    ld d, c
    ld h, c
    jp $a181


    pop bc
    add c
    ld d, c
    pop bc
    ld d, c
    ld d, c
    pop bc
    ld d, c
    ld h, c
    pop bc
    ld h, c
    pop bc
    ld h, c
    pop bc
    ld d, c
    ld [c], a
    dec b
    ld d, a
    jp Jump_000_19e2


    push de
    ld bc, $0101
    pop bc
    call nc, $d5a1
    inc bc
    ld de, $1111
    ld de, $c131
    ld sp, $51c1
    ld h, c
    and c
    add e
    ld d, c
    ld bc, $d4c1
    and c
    and c
    and c
    and c
    push de
    ld bc, $d4c1
    and c
    pop bc
    add c
    pop bc
    ld d, c
    ld d, c
    jp $01d5


    jp Jump_000_1111


    ld de, $c131
    ld de, $01c3
    pop bc
    ld bc, $a1d4
    pop bc
    add c
    pop bc
    ld [hl], c
    pop bc
    ld [hl], c
    ld d, e
    ld [hl], c
    ld d, c
    jp $01d5


    ld bc, $d401
    and c
    add c
    pop bc
    ld h, c
    ld a, [c]
    cp $71
    ld a, [c]
    cp $71
    ld hl, sp+$54
    ld [hl], c
    ret nz

    rst $38
    jp Jump_003_51d4


    ld d, c
    add c
    pop bc
    ld d, c
    jp $11d5


    ld de, $c111
    ld sp, $31c1
    di
    ld [c], a
    add hl, de
    pop hl
    inc bc
    and $0f
    ldh [rTIMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld de, $d5c1
    ld d, c
    ld d, c
    ld d, c
    ld sp, $51c1
    jp $c161


    ld h, c
    ld d, c
    pop bc
    ld sp, $11c5
    ld de, $c131
    ld d, c
    pop bc
    ld h, c
    pop bc
    ld h, c
    ld [c], a
    dec b
    add a
    ld [c], a
    add hl, de
    push bc
    ld d, c
    ld h, c
    pop bc
    ld d, c
    ld de, $d4c1
    and c
    and c
    pop bc
    and c
    push de
    ld bc, $11c1
    ld sp, $51c3
    ld h, c
    pop bc
    ld d, c
    ld de, $11c1
    ld de, $11c1
    ld sp, $33c1
    ld sp, $11c1
    ld [c], a
    dec b
    rla
    jp Jump_000_19e2


    add c
    add c
    add c
    pop bc
    ld h, c
    add e
    and c
    and c
    and c
    and c
    sub $01
    pop bc
    ld bc, $11c1
    ld sp, $5161
    pop bc
    ld de, $81d5
    pop bc
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    add c
    pop bc
    ld h, c

Call_003_7282:
    pop bc
    ld d, c
    pop bc
    ld de, $c311
    add c
    jp $a1a1


    and c
    sub $01
    pop bc
    push de
    and c
    jp $c181


    add c
    ld h, c
    pop bc
    ld d, c
    pop bc
    ld sp, $31c1
    ld de, $31c1
    ld de, $81c3
    add c
    add c
    ld h, c
    ld d, c
    pop bc
    ld sp, $b4f2
    ld [hl], d
    ld a, [c]
    or h
    ld [hl], d
    ld hl, sp+$0f
    ld [hl], d
    ret nz

    rst $38
    jp $11d5


    ld de, $c151
    ld de, $a1c3
    and c
    and c
    pop bc
    sub $01
    pop bc
    ld bc, $e2f3
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTIMA], a
    jp hl


    nop
    ld a, [c]
    inc l
    ld [hl], e
    ld a, [c]
    inc l
    ld [hl], e
    ld a, [c]
    inc l
    ld [hl], e
    ld a, [c]
    inc l
    ld [hl], e
    db $d3
    ld de, $d411
    ld de, $13d3
    call nc, $d311
    inc de
    add c
    add c
    add c
    call nc, $d383
    add c
    call nc, $d381
    add c
    ld a, [c]
    ld b, d
    ld [hl], e
    ld a, [c]
    ld b, d
    ld [hl], e
    db $d3
    ld h, c
    and c
    call nc, $d311
    add e
    call nc, $d331
    add c
    ld h, c

Call_003_7303:
    ld d, c
    ld d, c
    call nc, $d301
    and e
    call nc, $a151
    ld d, c
    db $d3
    ld sp, $a131
    inc sp
    and c
    call nc, $d333
    add c
    add c
    add c
    call nc, $d383
    add c
    call nc, $d381
    add c
    ld a, [c]
    inc l
    ld [hl], e
    ld a, [c]
    inc l
    ld [hl], e
    ld hl, sp-$3b
    ld [hl], d
    ret nz

    rst $38
    db $d3
    ld de, $d411
    ld de, $13d3
    call nc, $d311
    inc de
    ld h, c
    ld h, c
    call nc, $d361
    add e
    call nc, $d381
    add e
    di
    db $d3
    ld h, c
    and c
    call nc, $d311
    add e
    call nc, $3101
    db $d3
    add c
    ld de, $d481
    ld de, $63d3
    ld d, c
    inc de
    di
    ldh [rTAC], a
    jp hl


    dec b
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld a, [c]
    add h
    ld [hl], e
    ld hl, sp+$57
    ld [hl], e
    ret nz

    rst $38
    ld [hl+], a
    jr nz, jr_003_73a8

    ld hl, $2020
    jr nz, jr_003_73ac

    ld hl, $f321
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rTAC], a
    jp hl


    ld [$02e4], sp
    db $e3
    ld de, $b4f2
    ld [hl], e
    ld a, [c]
    or h
    ld [hl], e
    ld a, [c]
    cp l
    ld [hl], e
    ld a, [c]
    cp l

jr_003_73a8:
    ld [hl], e
    ld a, [c]
    ret c

    ld [hl], e

jr_003_73ac:
    ld a, [c]
    ret c

    ld [hl], e
    ld hl, sp-$71
    ld [hl], e
    ret nz

    rst $38
    call nc, Call_000_0717
    db $d3
    cp e
    pop bc
    and b
    or b
    di
    pop bc
    db $d3
    ld h, c
    ret nz

    call nc, Boot
    db $d3
    ld h, b
    ret nz

    ld h, c
    ret nz

    call nc, Call_003_4140
    ret nz

    db $10
    ld de, $4240
    db $10
    ld de, $c010
    ld [hl], b
    ld [hl], c
    di
    pop bc
    call nc, $b080
    ret nz

    add b
    or b
    ret nz

    add b
    or b
    ret nz

    add b
    or b
    ret nz

    add b
    or b
    pop bc
    ld [hl], b
    and b
    ret nz

    ld [hl], b
    and b
    ret nz

    ld [hl], b
    and b
    ret nz

    ld [hl], b
    and b
    ret nz

    ld [hl], b
    and b
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rTAC], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    ld de, $26f2
    ld [hl], h
    ld a, [c]
    ld h, $74
    ld a, [c]
    ld l, $74
    ld a, [c]
    ld l, $74
    db $d3
    ld d, l
    ld [hl], c
    add e
    inc hl
    ld b, a
    rla
    dec h
    ld b, c
    ld d, a
    ld b, l
    ld [hl], b
    and b
    call nc, $f847
    ld hl, sp+$73
    ret nz

    rst $38
    call nc, Call_003_5767
    ld c, e
    pop bc
    jr nc, @+$42

    di
    pop bc
    call nc, $c011
    ld b, b
    ld b, c
    nop
    ret nz

    ld de, $70c0
    ld [hl], c
    ret nz

    ld h, b
    ld h, c
    push de
    nop
    ld [bc], a
    call nc, Call_003_6160
    ld d, b
    ret nz

    push de
    ld b, b
    ld b, c
    di
    ld [c], a
    dec b
    pop hl
    inc bc
    and $ff
    ldh [rTAC], a
    jp hl


    nop
    ld a, [c]
    call nz, $f274
    call nz, $f274
    call nz, $f274
    call nz, $f274
    ret z

    ld [hl], h
    ld a, [c]
    ret z

    ld [hl], h
    ld a, [c]
    ret z

    ld [hl], h
    ld a, [c]
    ret z

    ld [hl], h
    ld a, [c]
    call nz, $f274
    call nz, $f274
    call nz, $f274
    call nz, $f274
    ret z

    ld [hl], h
    ld a, [c]
    ret z

    ld [hl], h
    ld a, [c]
    ret z

    ld [hl], h
    ld a, [c]
    ret z

    ld [hl], h
    ld a, [c]
    call z, $f274
    call z, $f274
    call z, $f274
    call z, $f274
    rst $10
    ld [hl], h
    ld a, [c]
    rst $10
    ld [hl], h
    ld a, [c]
    rst $10
    ld [hl], h
    ld a, [c]
    rst $10
    ld [hl], h
    ld a, [c]
    db $db
    ld [hl], h
    ld a, [c]
    db $db
    ld [hl], h
    ld a, [c]
    db $db
    ld [hl], h
    ld a, [c]
    db $db
    ld [hl], h
    ld a, [c]
    rst $10
    ld [hl], h
    ld a, [c]
    rst $10
    ld [hl], h
    ld a, [c]
    rst $10
    ld [hl], h
    ld a, [c]
    rst $10
    ld [hl], h
    ld a, [c]
    db $db
    ld [hl], h
    ld a, [c]
    db $db
    ld [hl], h
    ld a, [c]
    db $db
    ld [hl], h
    ld a, [c]
    db $db
    ld [hl], h
    ld hl, sp+$49
    ld [hl], h

jr_003_74c2:
    ret nz

    rst $38
    db $d3
    add c
    sub c
    di
    db $d3
    ld h, c
    ld [hl], c
    di
    db $d3
    ld h, c
    and c
    ld bc, $6171
    and c
    ld b, c
    call nc, $f301
    db $d3
    ld d, c
    add c
    di
    db $d3
    ld b, c
    ld [hl], c
    di
    ldh [rTMA], a
    jp hl


    dec b
    rst $08
    ld a, [c]
    rst $38
    ld [hl], h
    ld a, [c]
    rst $38
    ld [hl], h
    ld a, [c]
    rst $38
    ld [hl], h
    ld a, [c]
    rst $38
    ld [hl], h
    ld a, [c]
    rst $38
    ld [hl], h
    ld a, [c]
    rst $38
    ld [hl], h
    ld a, [c]
    rst $38
    ld [hl], h
    dec d
    dec d
    inc de
    rra
    ret nz

    rst $38
    ret nz

    jr nc, jr_003_74c2

    jr nc, jr_003_7535

    ld de, $30c0
    ret nz

    jr nc, jr_003_753b

    ld de, $e2f3
    dec b
    pop hl
    ld [bc], a
    and $0f
    ldh [rTMA], a
    jp hl


    ld b, $e4
    ld [bc], a
    db $e3
    inc d
    rst $00
    push de
    add b
    ld h, b
    ld b, b
    jr nc, jr_003_7531

    call nc, $90b0
    add b
    ld a, [c]
    ld c, a
    ld [hl], l
    ld a, [c]
    ld d, h
    ld [hl], l
    ld a, [c]
    ld h, b
    ld [hl], l
    ld a, [c]
    ld l, b
    ld [hl], l

jr_003_7531:
    ld a, [c]
    ld [hl], b
    ld [hl], l
    ld a, [c]

jr_003_7535:
    ld [hl], a
    ld [hl], l
    ld a, [c]
    ld a, a
    ld [hl], l
    ld b, l

jr_003_753b:
    ld d, l
    ld [hl], e
    ldh [$03], a
    ldh a, [rNR10]
    add b
    push de
    ld b, b
    pop af
    ldh [rTMA], a
    db $d3
    ld b, c
    jp $4040


    ld b, c
    ret nz

    rst $38
    push de
    dec [hl]
    ld b, c
    rla
    di
    ret nz

    ld h, b
    ret nz

    ld h, b
    or c
    sub c
    add b
    ld b, b
    ret nz

    ld b, d
    pop bc
    di
    ld b, d

Call_003_7561:
    ld [hl-], a
    ld b, c
    inc de
    ld sp, $b1d4
    di
    push de
    or d
    ld h, d
    or c
    add d
    ld [de], a
    ld sp, $41f3
    ld sp, $6541
    ld sp, $f311
    call nc, $d5b3
    inc bc
    dec d
    call nc, $f381
    or c
    sub c
    db $10
    ld b, d
    add c
    or c
    ld h, e
    di
    ld [c], a
    dec b
    pop hl
    ld [bc], a
    and $f0
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    inc d
    db $d3
    or c
    call nc, Call_000_01b1
    push de
    ld bc, $b0d6
    sub b
    add b
    ld h, b
    ld b, b
    jr nc, jr_003_75b4

    push de

Call_003_75a5:
    or b
    ld a, [c]
    adc $75
    ld a, [c]
    reti


    ld [hl], l
    ld a, [c]
    ldh [$75], a
    ld a, [c]
    jp hl


    ld [hl], l
    ld a, [c]
    ld a, [c]

jr_003_75b4:
    ld [hl], l
    ld a, [c]
    cp $75
    ld a, [c]
    ld b, $76
    add l
    sub l
    or e
    ldh [$03], a
    ldh a, [rNR10]
    ld b, b
    or b
    pop af
    ldh [rTMA], a
    ld b, c
    jp $4040


    ld b, c
    ret nz

    rst $38
    db $d3
    add c
    or c
    ret nz

    or d
    call nc, $d313
    or c
    pop bc
    di
    ld h, d
    ld [hl-], a
    ld h, c
    ld b, d
    add b
    add e
    di
    or d
    or d
    or c
    or d
    call nc, $d312
    or c
    di
    call nc, Call_003_6232
    ld sp, $8242
    db $d3
    add c
    di
    call nc, $d313
    or e
    call nc, $3111
    db $d3
    or b
    ret nz

    sub c
    di
    add e
    add e
    call nc, $d352
    add d
    pop bc
    di
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld h, d
    ld sp, $e2f3
    add hl, de
    pop hl
    inc bc
    and $ff
    ldh [$03], a
    jp hl


    nop
    db $d3
    or e
    or e
    call nc, $d503
    inc bc
    call nc, $d513
    inc de
    call nc, $d533
    inc sp
    ld a, [c]
    ld d, e
    db $76
    ld a, [c]
    ld e, [hl]
    db $76
    ld a, [c]
    ld l, d
    db $76
    ld a, [c]
    ld e, [hl]
    db $76
    ld a, [c]
    add c
    db $76
    ld a, [c]
    adc [hl]
    db $76
    ld a, [c]
    and l
    db $76
    ld a, [c]
    cp l
    db $76
    ld a, [c]
    push de
    db $76
    ld [c], a
    dec b
    db $d3
    cp e
    call nc, Call_000_270b
    ld c, a
    add sp, $4f
    ld b, e
    rst $00
    db $d3
    ld b, c
    ld b, c
    ld b, e
    ret nz

    rst $38
    call nc, $4341
    add c
    push de
    ld b, c
    call nc, $d341
    or e
    di
    db $d3
    or c
    call nc, Call_003_4143
    push de
    ld b, c
    call nc, $d341
    or e
    di
    db $d3
    or c
    call nc, Call_003_6163
    push de
    ld h, c
    call nc, $d361
    or e
    or c
    call nc, $b141
    ld b, c
    sub $41
    call nc, $d341
    or e
    di
    or c
    call nc, Call_003_4143
    sub $41
    call nc, $d541
    or c
    db $d3
    or c
    di
    or c
    call nc, $d3b1
    or c
    call nc, $d561
    ld h, c
    call nc, $d361
    or e
    call nc, $8311
    add c
    sub $81
    call nc, Call_003_4381
    di
    db $d3
    sub c
    call nc, Call_000_1113
    push de
    ld de, $11d4
    db $d3
    sub e
    sub c
    call nc, Call_000_1113
    sub $11
    call nc, $d511
    ld de, $92d3
    di
    ldh [rSB], a
    ret nz

    ldh [$03], a
    ld b, c
    or e
    call nc, $d540
    ld sp, $31d3
    call nc, $c101
    db $d3
    inc de
    add c
    add c
    add l
    add sp, -$7f
    di
    sub e
    call nc, $c141
    ld b, l
    pop bc
    db $d3
    or e
    call nc, Call_003_6563
    ld h, c
    di
    ldh [rTMA], a
    jp hl


    dec b
    jp Jump_000_08f0


    ld a, [c]
    rst $38
    ld [hl], h
    pop af
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $0f
    ldh [rTMA], a
    jp hl


    ld b, $e4
    ld [bc], a
    db $e3
    inc d
    call nc, $c080
    or b
    ret nz

    ld a, [c]
    ld c, a
    ld [hl], l
    ld a, [c]
    ld d, h
    ld [hl], l
    ld a, [c]
    ld h, b
    ld [hl], l
    ld a, [c]
    ld l, b
    ld [hl], l
    ld a, [c]
    ld [hl], b
    ld [hl], l
    ld a, [c]
    ld [hl], a
    ld [hl], l
    ld a, [c]
    ld a, a
    ld [hl], l
    ld b, a
    ld d, a
    ret nz

    rst $38
    ld [c], a
    dec b
    pop hl
    inc bc
    and $f0
    ldh [rTMA], a
    jp hl


    rlca
    db $e4
    ld [bc], a
    db $e3
    inc d
    push de
    ld b, b
    jr nc, jr_003_773d

    call nc, $f2b0
    adc $75
    ld a, [c]
    reti


    ld [hl], l
    ld a, [c]
    ldh [$75], a
    ld a, [c]
    jp hl


    ld [hl], l
    ld a, [c]
    ld a, [c]

jr_003_773d:
    ld [hl], l
    ld a, [c]
    cp $75
    ld a, [c]
    ld b, $76
    add a
    sub a
    ret nz

    rst $38
    ld [c], a
    add hl, de
    pop hl
    inc bc
    and $ff
    ldh [$03], a
    jp hl


    nop
    rst $00
    ld a, [c]
    ld d, e
    db $76
    ld a, [c]
    ld e, [hl]
    db $76
    ld a, [c]
    ld l, d
    db $76
    ld a, [c]
    ld e, [hl]
    db $76
    ld a, [c]
    add c
    db $76
    ld a, [c]
    adc [hl]
    db $76
    ld a, [c]
    and l
    db $76
    ld a, [c]
    cp l
    db $76
    ld a, [c]
    push de
    db $76
    ld [c], a
    dec b
    db $d3
    cp a
    call nc, $c00f
    rst $38
    nop
    nop
    sub [hl]
    ld [bc], a
    sub [hl]
    inc b
    sub d
    nop
    sub d
    nop
    ld d, b
    nop
    rra
    nop
    stop
    rra
    nop
    stop
    rra
    nop
    jr jr_003_77a2

    ld l, b
    jr jr_003_77a1

    nop
    ldh a, [rP1]
    stop
    ldh a, [rP1]
    stop
    ldh a, [rP1]
    jr nc, @+$52

    inc l
    jr nc, jr_003_77b4

jr_003_77a1:
    ld [bc], a

jr_003_77a2:
    inc de
    ld [bc], a
    ld de, $3d00
    ld hl, $4878
    ldh [rNR41], a
    ld bc, $0700
    ld bc, $1018
    jr jr_003_77bc

jr_003_77b4:
    jr nc, jr_003_77d6

    ldh a, [$50]
    ldh [$a0], a
    ldh a, [$50]

jr_003_77bc:
    cp h
    and h
    inc c
    ld a, [bc]
    stop
    ccf
    nop
    ld bc, $7f00
    nop
    ld bc, $ff00
    nop
    dec c
    inc c
    rlca
    ld bc, $2838
    ldh a, [rNR10]
    nop
    nop

jr_003_77d6:
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld [hl], c
    nop
    ld sp, hl
    sub b
    jp hl


    ld c, h
    and l
    add h
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    db $fc
    nop
    inc b
    nop
    db $fc
    nop
    inc b
    nop
    db $fc
    nop
    inc b
    nop
    inc b
    nop
    jr jr_003_7804

    ld b, [hl]
    ld a, b
    add [hl]
    ld a, b

jr_003_7804:
    add $78
    ld b, $79
    ld b, [hl]
    ld a, c
    add [hl]
    ld a, c
    add $79
    ld b, $7a
    ld b, [hl]
    ld a, d
    add [hl]
    ld a, d
    add $7a
    ld b, $7b
    ld b, [hl]
    ld a, e
    add [hl]
    ld a, e
    add $7b
    ld b, $7c
    ld b, [hl]
    ld a, h
    add [hl]
    ld a, h
    add $7c
    ld b, $7d
    ld b, [hl]
    ld a, l
    add [hl]
    ld a, l
    ld b, [hl]
    ld a, b
    ld b, [hl]
    ld a, b
    add $7d
    ld b, $7e
    ld b, [hl]
    ld a, b
    ld b, [hl]
    ld a, b
    ld b, [hl]
    ld a, b
    ld b, [hl]
    ld a, b
    ld b, [hl]
    ld a, b
    ld b, [hl]
    ld a, b
    ld h, e
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    and c
    ld a, a
    nop
    nop
    nop
    dec c
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
    dec c
    inc bc
    inc b
    rlca
    ld b, $05
    dec c
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
    nop
    nop
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
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
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
    dec c
    dec c
    ld [bc], a
    nop
    nop
    nop
    nop
    dec c
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
    dec c
    inc bc
    inc b
    rlca
    ld b, $00
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
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
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
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
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
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
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
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
    dec c
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    nop
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    nop
    nop
    ld bc, $0101
    nop
    nop
    inc c
    nop
    dec bc
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
    dec c
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0101
    nop
    nop
    nop
    dec bc
    dec bc
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
    ld bc, $000b
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
    inc c
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
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
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    rlca
    ld b, $03
    inc b
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
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
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    dec c
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
    ld bc, $0101
    ld bc, $0000
    dec c
    dec c
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
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    nop
    dec c
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
    ld [bc], a
    dec b
    dec c
    dec c
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
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
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
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
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
    dec c
    dec c
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
    dec c
    dec c
    nop
    nop
    dec c
    dec c
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
    dec c
    nop
    nop
    dec c
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
    dec c
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
    dec c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec c
    dec c
    dec c
    dec c
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
    ld bc, $0000
    ld bc, $0000
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
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    dec c
    dec c
    nop
    nop
    ld a, [bc]
    nop
    ld bc, $000a
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld a, [bc]
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
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    dec c
    dec c
    nop
    nop
    nop
    nop
    rlca
    ld b, $0d
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
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
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    ld [$0d0d], sp
    ld [$0000], sp
    nop
    nop
    ld bc, $0101
    ld bc, $0c01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    dec c
    dec c
    dec c
    dec c
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
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_7e46:
    ld a, $0e
    ldh [$d6], a
    ldh a, [$8c]
    and $30
    jp z, Jump_003_7f22

    bit 4, a
    jr z, jr_003_7e5c

    ld a, $1d
    ldh [$d6], a
    jp Jump_003_7f22


jr_003_7e5c:
    ld a, $0a
    ldh [$d6], a
    jp Jump_003_7f22


    ld a, $01
    ld [$c426], a
    ld hl, $c428
    ld a, [hl]
    and $1c
    cp $14
    jr z, jr_003_7e46

    cp $10
    jr nz, jr_003_7e83

    set 0, [hl]
    ld a, [$c427]
    bit 0, a
    jr z, jr_003_7e96

    res 0, [hl]
    jr jr_003_7e96

jr_003_7e83:
    set 0, [hl]
    ld a, [$c413]
    and $07
    cp $07
    jr z, jr_003_7e96

    ldh a, [$8c]
    bit 1, a
    jr nz, jr_003_7e96

    res 0, [hl]

jr_003_7e96:
    ldh a, [$8c]
    and $30
    jr nz, jr_003_7ed9

    ldh a, [$92]
    and $01
    jp nz, Jump_003_7f57

jr_003_7ea3:
    ld hl, $ffd8
    ld a, [hl]
    bit 7, a
    jr nz, jr_003_7eb7

    cp $04
    jr c, jr_003_7ece

    cp $10
    jr c, jr_003_7ec3

    dec [hl]
    jp Jump_003_7f57


jr_003_7eb7:
    cp $fc
    jr nc, jr_003_7ece

    cp $f0
    jr nc, jr_003_7ec3

    inc [hl]
    jp Jump_003_7f57


jr_003_7ec3:
    ld hl, $ffd6
    ld a, [hl]
    and a
    jr z, jr_003_7ece

    dec [hl]
    jp Jump_003_7f57


jr_003_7ece:
    xor a
    ld [$c426], a
    ldh [$d6], a
    ldh [$d8], a
    jp Jump_003_7f57


jr_003_7ed9:
    ld hl, $ffd8
    ldh a, [$8c]
    bit 5, a
    jr nz, jr_003_7ee9

    inc [hl]
    bit 7, [hl]
    jr nz, jr_003_7eee

    jr jr_003_7f06

jr_003_7ee9:
    dec [hl]
    bit 7, [hl]
    jr nz, jr_003_7f06

jr_003_7eee:
    ldh a, [$8d]
    and $30
    jr nz, jr_003_7ea3

    ld a, [$c428]
    and $1c
    jr z, jr_003_7eff

    cp $14
    jr nz, jr_003_7ea3

jr_003_7eff:
    ld a, $03
    ld [$c426], a
    jr jr_003_7ea3

jr_003_7f06:
    ldh a, [$8d]
    and $30
    jr z, jr_003_7f11

    xor a
    ldh [$d6], a
    ldh [$d8], a

jr_003_7f11:
    ld hl, $7f71
    ld a, [$c428]
    and $1f
    rst $18
    ld hl, $ffd6
    inc [hl]
    cp [hl]
    jr nc, jr_003_7f22

    ld [hl], a

Jump_003_7f22:
jr_003_7f22:
    ld a, [$c427]
    and $04
    srl a
    ld b, a
    ld a, [$c428]
    and $1d
    or b
    ld hl, $7f89
    rst $18
    ld b, a
    ld hl, $ffd8
    ld a, [hl]
    bit 7, a
    jr nz, jr_003_7f43

    cp b
    jr c, jr_003_7f4c

    ld [hl], b
    jr jr_003_7f4c

jr_003_7f43:
    cpl
    inc a
    cp b
    jr c, jr_003_7f4c

    ld a, b
    cpl
    inc a
    ld [hl], a

jr_003_7f4c:
    ld a, [$c428]
    bit 7, a
    jr z, jr_003_7f57

    ld a, $1d
    ldh [$d6], a

Jump_003_7f57:
jr_003_7f57:
    ldh a, [$d6]
    call Call_003_7f5f
    ldh [$d4], a
    ret


Call_003_7f5f:
    swap a
    ld b, a
    and $0f
    ld c, a
    ld hl, $ffd7
    ld a, b
    and $f0
    add [hl]
    ld [hl], a
    ld a, c
    adc $00
    ret


    db $10
    inc d
    dec c
    dec c
    db $10
    dec e
    nop
    nop
    db $10
    dec e
    nop
    nop
    db $10
    rla
    rla
    ld a, [de]
    dec c
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld de, $6450
    ld b, $0e
    ld d, b
    ld h, h
    ld b, $0e
    ld b, $0e
    ld b, $0e
    ld c, h
    ld h, h
    ld b, $0e
    ld c, h
    ld h, h
    nop
    nop
    nop
    nop
    sbc c
    nop
    and b
    ld a, h
    sbc c
    jr nz, jr_003_7fc8

    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]

jr_003_7fc8:
    sbc c
    ld b, b
    and b
    ld a, a
    sbc c
    ld h, b
    and b
    adc b
    sbc c
    add b
    and b
    adc b
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
