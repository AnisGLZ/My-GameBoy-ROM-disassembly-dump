; Disassembly of "Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    call Call_002_402c
    call Call_002_4010
    xor a
    ldh [rNR30], a
    ldh [rNR50], a
    ldh [rNR51], a
    ldh [rNR52], a
    ret


Call_002_4010:
    push af
    xor a
    ld [$d88d], a
    ld [$d939], a
    ld [$d9e5], a
    ld [$da91], a
    ld [$d89a], a
    ld [$d946], a
    ld [$d9f2], a
    ld [$da9e], a
    pop af
    ret


Call_002_402c:
    push af
    xor a
    ld [$db3d], a
    ld [$dbe9], a
    ld [$dc95], a
    ld [$dd41], a
    pop af
    ret


    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $8a
    ld e, a
    ld a, h
    adc $4d
    ld d, a
    ld hl, $d88d
    call Call_002_4069
    ld hl, $d939
    call Call_002_4069
    ld hl, $d9e5
    call Call_002_4069
    ld hl, $da91
    call Call_002_4069
    ld hl, $d800
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_002_4069:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    or c
    ret z

    ld [hl], $80
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $95
    inc hl
    ld [hl], $40
    inc hl
    dec bc
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $01
    ld a, l
    add $0b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld [hl], $00
    inc hl
    ld [hl], $01
    inc hl
    ld [hl], $01
    ret


    add [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $3b
    ld e, a
    ld a, h
    adc $4a
    ld d, a
    ld hl, $db3d
    call Call_002_40b9
    ld hl, $dbe9
    call Call_002_40b9
    ld hl, $dc95
    call Call_002_40b9
    ld hl, $dd41

Call_002_40b9:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    or c
    ret z

    ld [hl], $80
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $e3
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $01
    ld a, l
    add $0b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld [hl], $00
    inc hl
    ld [hl], $01
    inc hl
    ld [hl], $01
    ret


    add [hl]
    ld [$d805], sp
    ld sp, $db3d
    call Call_002_4190
    ld sp, $dbe9
    call Call_002_4190
    ld sp, $dc95
    call Call_002_4190
    ld sp, $dd41
    call Call_002_4190
    xor a
    ld [$d804], a
    ld sp, $d88d
    call Call_002_4190
    ld sp, $d939
    call Call_002_4190
    ld sp, $d9e5
    call Call_002_4190
    ld sp, $da91
    call Call_002_4190
    ld hl, $d805
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ld hl, $db4a
    ld a, [$db3d]
    or a
    jr nz, jr_002_412f

    ld hl, $d89a

jr_002_412f:
    ld a, [hl+]
    cp $ff
    jr z, jr_002_4136

    ldh [rNR12], a

jr_002_4136:
    ld a, [hl+]
    ldh [rNR13], a
    ld a, [hl+]
    ldh [rNR14], a
    ld a, [hl+]
    ldh [rNR11], a
    ld hl, $dbf6
    ld a, [$dbe9]
    or a
    jr nz, jr_002_414b

    ld hl, $d946

jr_002_414b:
    ld a, [hl+]
    cp $ff
    jr z, jr_002_4152

    ldh [rNR22], a

jr_002_4152:
    ld a, [hl+]
    ldh [rNR23], a
    ld a, [hl+]
    ldh [rNR24], a
    ld a, [hl+]
    ldh [rNR21], a
    ld hl, $dca2
    ld a, [$dc95]
    or a
    jr nz, jr_002_4167

    ld hl, $d9f2

jr_002_4167:
    ld a, [hl+]
    cp $ff
    jr z, jr_002_416e

    ldh [rNR32], a

jr_002_416e:
    ld a, [hl+]
    ldh [rNR33], a
    ld a, [hl+]
    and $7f
    ldh [rNR34], a
    ld hl, $dd4e
    ld a, [$dd41]
    or a

Jump_002_417d:
    jr nz, jr_002_4182

    ld hl, $da9e

jr_002_4182:
    ld a, [hl+]
    cp $ff
    jr z, jr_002_4189

    ldh [rNR42], a

jr_002_4189:
    ld a, [hl+]
    ldh [rNR43], a
    ld a, [hl+]
    ldh [rNR44], a
    ret


Call_002_4190:
    ld hl, sp+$02
    ld a, [hl+]
    or a
    ret z

    ld [$d804], a
    ld b, [hl]
    ld hl, sp+$0f
    ld [hl], $ff
    ld hl, sp+$11
    res 7, [hl]
    ld hl, sp+$14
    dec [hl]
    jp nz, Jump_002_4487

    inc hl
    dec [hl]
    dec hl
    jp nz, Jump_002_4487

    ld a, b
    and $f0
    ld b, a
    ld hl, sp+$04
    ld a, [hl+]
    ld d, [hl]
    ld e, a

Jump_002_41b6:
jr_002_41b6:
    ld a, [de]
    inc de
    cp $84
    jp c, Jump_002_43b6

    add $45
    ld l, a
    ld a, $41
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    push af
    ld b, c
    db $fd
    ld b, c
    ld c, e
    ld b, d
    ld d, e
    ld b, d
    ld e, d
    ld b, d
    ld h, b
    ld b, d
    ld l, c
    ld b, d
    ld a, b
    ld b, d
    ld a, l
    ld b, d
    adc h
    ld b, d
    xor [hl]
    ld b, d
    jp nz, $9142

    ld b, d
    xor c
    ld b, d
    rst $00
    ld b, d
    rst $08
    ld b, d
    push af
    ld b, d
    cp $42
    inc b
    ld b, e
    ld b, a
    ld b, e
    adc h
    ld b, e
    sub h
    ld b, e
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    ld e, c
    ld d, a
    jr jr_002_41b6

    ld hl, sp+$06
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld e, a
    ld a, [de]
    dec [hl]
    jr nz, jr_002_4238

    ld a, $01
    ld [hl+], a
    xor a
    ld [hl-], a

jr_002_420c:
    inc de

jr_002_420d:
    ld a, [de]
    cp $80
    jr c, jr_002_4238

    jr nz, jr_002_4219

    inc de
    ld a, [de]
    ld [hl], a
    jr jr_002_420c

jr_002_4219:
    cp $82
    jr nz, jr_002_4223

    inc de
    ld a, [de]
    inc hl
    ld [hl-], a
    jr jr_002_420c

jr_002_4223:
    cp $84
    jr nz, jr_002_4230

    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld e, c
    ld d, a
    jr jr_002_420d

jr_002_4230:
    ld hl, sp+$0f
    xor a
    ld [hl], a
    ld hl, sp+$02
    ld [hl], a
    ret


jr_002_4238:
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    add a
    add $aa
    ld l, a
    ld a, $4d
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jp Jump_002_41b6


    ld a, [de]
    inc de
    ld hl, sp+$13
    ld [hl], a
    jp Jump_002_41b6


    ld hl, sp+$13
    ld [hl], $00
    jp Jump_002_41b6


    ld hl, sp+$15
    inc [hl]
    jp Jump_002_41b6


    set 3, b
    ld hl, sp+$0f
    ld [hl], $00
    jp Jump_002_446d


    set 5, b
    res 4, b
    ld hl, sp+$16
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    jp Jump_002_41b6


    res 5, b
    jp Jump_002_41b6


    set 4, b
    res 5, b
    ld hl, sp+$0b
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    jp Jump_002_41b6


    res 4, b
    jp Jump_002_41b6


    set 7, b
    res 6, b
    ld a, [de]
    inc de
    add a
    add $69
    ld l, a
    ld a, $49
    adc $00
    ld h, a
    ld a, [hl+]
    ld c, [hl]
    ld hl, sp+$22
    ld [hl+], a
    ld [hl], c
    jp Jump_002_41b6


    res 7, b
    jp Jump_002_41b6


    set 6, b
    res 7, b
    ld hl, sp+$20
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl], a
    ld hl, sp+$1b
    ld a, [de]
    inc de
    ld [hl], a
    jp Jump_002_41b6


    res 6, b
    jp Jump_002_41b6


    ld a, [de]
    inc de
    ld hl, sp+$0e
    ld [hl], a
    jp Jump_002_41b6


    set 2, b
    ld a, [de]
    inc de
    add a
    add $4e
    ld l, a
    ld a, $00
    adc $46
    ld h, a
    push de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, sp+$11
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    ld a, [de]
    inc de
    ld [hl-], a
    ld a, [de]
    inc de
    ld [hl], a
    ld hl, sp+$28
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    jp Jump_002_446d


    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld [c], a
    jp Jump_002_41b6


    ld hl, $d807
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ldh [rNR31], a
    ldh [rNR30], a
    ld c, $30
    ld l, e
    ld h, d
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    ld e, l
    ld d, h
    ld a, $80
    ldh [rNR30], a
    ldh [rNR34], a
    jp Jump_002_41b6


    ld hl, $d807
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ldh [rNR31], a
    ldh [rNR30], a
    ld c, $30
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    ld a, $80
    ldh [rNR30], a
    ldh [rNR34], a
    jp Jump_002_41b6


    ld a, [de]
    inc de
    ld hl, sp+$12
    ld [hl], a
    jp Jump_002_41b6


    set 1, b
    ld hl, sp+$1a
    ld a, [de]
    inc de
    ld [hl-], a
    ld a, [de]
    inc de
    ld [hl-], a
    ld a, [de]
    inc de
    ld [hl-], a
    ld a, [de]
    inc de
    push de
    add a
    add $8c
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    ld a, [hl+]
    ld c, [hl]
    ld hl, sp+$12
    ld [hl+], a
    ld [hl], c
    jp Jump_002_4468


Jump_002_43b6:
    push de
    ld hl, sp+$0b
    add [hl]
    inc hl
    ld [hl+], a
    bit 4, b
    jr z, jr_002_43d9

    set 0, b
    add [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld [hl], c
    add a
    add $8c
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld hl, sp+$12
    ld [hl+], a
    ld [hl], d
    jp Jump_002_4468


jr_002_43d9:
    add a
    add $8c
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld hl, sp+$12
    ld [hl+], a
    ld [hl], d
    bit 5, b
    jr z, jr_002_442c

    set 1, b
    ld e, a
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, sp+$18
    add [hl]
    add a
    add $8c
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    ld a, [hl+]
    sub e

Jump_002_4400:
    ld e, a
    ld a, [hl+]
    sbc d
    ld d, a
    ld hl, sp+$19
    ld a, [hl+]
    ld [hl+], a
    ld c, a
    ld a, e
    ld e, c

jr_002_440b:
    sra d
    rra
    srl c
    jr nc, jr_002_440b

    ld [hl+], a
    ld [hl], d
    ld l, a
    ld h, d
    srl e
    jr c, jr_002_441f

jr_002_441a:
    add hl, hl
    srl e
    jr nc, jr_002_441a

jr_002_441f:
    ld e, l
    ld d, h
    ld hl, sp+$12
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    jp Jump_002_4468


jr_002_442c:
    bit 6, b
    jr z, jr_002_445d

    ld e, a
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, sp+$23
    add [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld [hl], c
    add a
    add $8c
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    ld a, [hl+]
    sub e
    ld e, a
    ld a, [hl+]
    sbc d
    ld d, a
    ld hl, sp+$1d
    ld a, [hl+]
    ld [hl+], a
    ld c, a
    ld a, e
    sla c

jr_002_4452:
    sra d
    rra
    srl c
    jr nc, jr_002_4452

    ld [hl+], a
    ld [hl], d
    jr jr_002_4468

jr_002_445d:
    bit 7, b
    jr z, jr_002_4468

    ld hl, sp+$24
    ld a, [hl+]
    ld c, [hl]
    inc hl
    ld [hl+], a
    ld [hl], c

Jump_002_4468:
jr_002_4468:
    ld hl, sp+$10
    ld a, [hl+]
    ld [hl], a
    pop de

Jump_002_446d:
    ld hl, sp+$13
    ld a, [hl+]
    or a
    jr nz, jr_002_4475

    ld a, [de]
    inc de

jr_002_4475:
    add [hl]
    ld [hl+], a
    ld a, $01
    adc [hl]
    ld [hl+], a
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$11
    set 7, [hl]
    jp Jump_002_4566


Jump_002_4487:
    bit 2, b
    jp nz, Jump_002_456a

    bit 3, b
    jp nz, Jump_002_4566

    bit 1, b
    jr z, jr_002_44ae

    ld hl, sp+$19
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, sp+$10
    ld a, [hl]
    sub e
    ld [hl+], a
    ld e, a
    ld a, [hl]
    sbc d
    ld [hl+], a
    ld hl, sp+$18
    dec [hl]
    jp nz, Jump_002_4566

    res 1, b
    ld d, a
    jr jr_002_44cd

jr_002_44ae:
    bit 0, b
    jr z, jr_002_450d

    ld hl, sp+$0d
    dec [hl]
    jp nz, Jump_002_4566

    res 0, b
    ld hl, sp+$0a
    ld a, [hl]
    add a
    add $8c
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], d
    ld e, a

jr_002_44cd:
    bit 6, b
    jr z, jr_002_44fe

    ld hl, sp+$0a
    ld a, [hl]
    ld hl, sp+$21
    add [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld [hl], c
    add a
    add $8c
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    ld a, [hl+]
    sub e
    ld e, a
    ld a, [hl+]
    sbc d
    ld d, a
    ld hl, sp+$1b
    ld a, [hl+]
    ld [hl+], a
    ld c, a
    ld a, e
    sla c

jr_002_44f2:
    sra d
    rra
    srl c
    jr nc, jr_002_44f2

    ld [hl+], a
    ld [hl], d
    jp Jump_002_4566


jr_002_44fe:
    bit 7, b
    jp z, Jump_002_4566

    ld hl, sp+$22
    ld a, [hl+]
    ld c, [hl]
    inc hl
    ld [hl+], a
    ld [hl], c
    jp Jump_002_4566


jr_002_450d:
    bit 6, b
    jr z, jr_002_453a

    ld hl, sp+$1f
    ld a, [hl-]
    or a
    jr nz, jr_002_4535

    ld a, [hl-]
    ld e, [hl]
    ld d, a
    ld hl, sp+$10
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld hl, sp+$1b
    ld a, [hl+]
    dec [hl]
    jp nz, Jump_002_4566

    add a
    ld [hl+], a
    xor a
    sub e
    ld [hl+], a
    ld a, $00
    sbc d
    ld [hl+], a
    jp Jump_002_4566


jr_002_4535:
    inc hl
    dec [hl]
    jp Jump_002_4566


jr_002_453a:
    bit 7, b
    jr z, jr_002_4566

    ld hl, sp+$24
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [de]
    cp $80
    jr nz, jr_002_4550

    ld hl, sp+$22
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, sp+$25
    ld a, [de]

jr_002_4550:
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ld hl, sp+$0a
    add [hl]
    add a
    add $8c
    ld l, a
    ld a, $45
    adc $00
    ld h, a
    ld a, [hl+]
    ld c, [hl]
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], c

Jump_002_4566:
jr_002_4566:
    ld hl, sp+$03
    ld [hl], b
    ret


Jump_002_456a:
    ld hl, sp+$26
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [de]
    cp $ff
    jr z, jr_002_4582

    ld hl, sp+$11
    ld [hl-], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld hl, sp+$26
    ld a, e
    ld [hl+], a
    ld [hl], d
    jr jr_002_4566

jr_002_4582:
    res 2, b
    set 3, b
    ld hl, sp+$0f
    ld [hl], $00
    jr jr_002_4566

    inc l
    nop
    sbc l
    nop
    rlca
    ld bc, $016b
    jp z, Jump_000_2301

    ld [bc], a
    ld [hl], a
    ld [bc], a
    rst $00
    ld [bc], a
    ld [de], a
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    jp c, $1603

    add h
    ld c, [hl]
    add h
    add e
    add h
    or l
    add h
    push hl
    add h
    ld de, $3b85
    add l
    ld h, e
    add l
    adc c
    add l
    xor h
    add l
    call $ed85
    add l
    dec bc
    ld b, [hl]
    daa
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld e, d
    ld b, [hl]
    ld [hl], d
    ld b, [hl]
    adc b
    ld b, [hl]
    sbc l
    ld b, [hl]
    or c
    ld b, [hl]
    call nz, $d646
    ld b, [hl]
    and $46
    or $46
    dec b
    daa
    inc de
    daa
    jr nz, jr_002_4601

    dec l
    daa
    add hl, sp
    daa
    ld b, h
    daa
    ld c, [hl]
    daa
    ld e, b
    daa
    ld h, d
    daa
    ld l, e
    daa
    ld [hl], e
    daa
    ld a, e
    daa
    add d
    rla
    adc c
    rla
    sub b
    rla
    sub [hl]
    rla
    sbc h
    rla
    and d
    rla
    and a
    rla
    xor h
    rla
    or c
    rla
    or l
    rla
    cp c

jr_002_4601:
    rla
    cp l
    rla
    pop bc
    rrca
    call nz, $c80f
    rrca
    rrc a
    adc $0f
    pop de
    rrca
    db $d3
    rrca
    sub $0f
    ret c

    rrca
    jp c, $dc0f

    rrca
    sbc $0f
    ldh [$0b], a
    ld [c], a
    dec bc
    db $e4
    dec bc
    push hl
    dec bc
    rst $20
    dec bc
    add sp, $0b
    jp hl


    dec bc
    db $eb
    dec bc
    db $ec
    dec bc
    db $ed
    dec bc
    xor $0b
    rst $28
    dec bc
    ldh a, [$09]
    pop af
    add hl, bc
    ld a, [c]
    add hl, bc
    ld a, [c]
    add hl, bc
    di
    add hl, bc
    db $f4
    add hl, bc
    db $f4
    add hl, bc
    push af
    add hl, bc
    or $09
    or $09
    rst $30
    add hl, bc
    nop
    nop
    rst $38
    nop
    ld [hl], d
    ld b, [hl]
    and h
    ld b, [hl]
    ld [$de47], sp
    ld b, [hl]
    ld b, c
    ld b, a
    ld e, l
    ld b, a
    sbc l
    ld b, a
    or c
    ld b, a
    cp a
    ld b, a
    pop af
    ld b, a
    dec hl
    ld c, b
    ld d, l
    ld c, b
    add a
    ld c, b
    and e
    ld c, b
    rst $00
    ld c, b
    ei
    ld c, b
    add hl, bc
    ld c, c
    ld b, e
    ld c, c
    sub c
    nop
    ld e, c
    nop
    ld e, e
    nop
    ld e, e
    nop
    ld e, l
    nop
    ld e, a
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    rst $38
    sub c
    nop
    ld a, c
    nop
    ld l, c
    nop
    ld e, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld e, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    rst $38
    ld d, d
    nop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    rst $38
    sub c
    nop
    ld [de], a
    nop
    inc h
    nop
    ld [hl], $00
    ld c, b
    nop
    ld e, d
    nop
    ld l, h
    nop
    ld a, a
    rst $38
    nop
    stop
    ld [hl-], a
    nop
    stop
    ld [hl-], a
    nop
    stop
    stop
    ld [hl-], a
    nop
    stop
    ld [hl-], a
    nop
    stop
    stop
    ld [hl-], a
    nop
    stop
    ld [hl-], a
    nop
    stop
    stop
    ld [hl-], a
    nop
    stop
    ld [hl-], a
    nop
    db $10
    rst $38
    ld [hl], c
    nop
    ld a, c
    nop
    ld l, c
    nop
    ld e, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    rst $38
    ld h, l
    nop
    ld a, c
    nop
    ld l, c
    nop
    ld e, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    add c
    nop
    ld d, c
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
    add b
    rst $38
    ld h, c
    nop
    ld [hl+], a
    nop
    ld [de], a
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    dec d
    nop
    inc d
    nop
    inc de
    nop
    ld [de], a
    rst $38
    ld h, d
    nop
    ld c, c
    nop
    ld e, c
    nop
    ld l, c
    nop
    ld a, c
    nop
    adc c
    nop
    adc c
    rst $38
    ld b, d
    nop
    add hl, sp
    nop
    dec sp
    nop
    ld e, e
    nop
    ld e, l
    nop
    ld e, a
    nop
    ld h, b
    nop
    jr nc, jr_002_47cf

jr_002_47cf:
    jr nc, jr_002_47d1

jr_002_47d1:
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_002_47db

jr_002_47db:
    jr nc, jr_002_47dd

jr_002_47dd:
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_002_47e7

jr_002_47e7:
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    rst $38
    ld [hl], c
    nop
    ld a, c
    nop
    ld l, c
    nop
    ld e, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    nop
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    rst $38
    ld d, c
    nop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    rst $38
    ld h, c
    nop
    ld e, c
    nop
    ld e, e
    nop
    ld e, e
    nop
    ld e, l
    nop
    ld e, a
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    rst $38
    ld h, c
    nop
    ld l, c
    nop
    ld l, d
    nop
    ld l, e
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld b, b
    rst $38
    ld b, c
    nop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    dec d
    nop
    inc d
    nop
    inc de
    nop
    ld [de], a
    nop
    dec d
    nop
    inc d
    nop
    inc de
    nop
    ld [de], a
    nop
    dec d
    nop
    inc d
    nop
    inc de
    nop
    ld [de], a
    rst $38
    ld h, d
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    add b
    nop
    add b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    rst $38
    ld b, d
    nop
    ld e, c
    nop
    ld e, e
    nop
    ld e, e
    nop
    ld e, e
    nop
    ld e, h
    nop
    ld e, e
    rst $38
    and d
    nop
    ld a, c
    nop
    ld l, c
    nop
    ld e, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld e, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    rst $38
    jp nz, Jump_002_7900

    nop
    ld e, e
    nop
    ld e, e
    nop
    ld e, e
    nop
    ld e, h
    nop
    ld e, e
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld e, l
    rst $38
    add e
    ld c, c
    adc b
    ld c, c
    adc l
    ld c, c
    sub c
    ld c, c
    sub l
    ld c, c
    sbc c
    ld c, c
    sbc l
    ld c, c
    xor e
    ld c, c
    or b
    ld c, c
    cp e
    ld c, c
    reti


    ld c, c
    ld [bc], a
    ld c, d
    ld hl, $0c4a
    nop
    nop
    nop
    add b
    nop
    inc b
    rlca
    inc c
    add b
    nop
    inc b
    add hl, bc
    add b
    nop
    inc bc
    ld [$0080], sp
    dec b
    add hl, bc
    add b
    nop
    inc b
    rlca
    add b
    nop
    inc b
    rlca
    ld a, [bc]
    inc c
    db $10
    inc de
    ld d, $18
    inc e
    rra
    ld [hl+], a
    inc h
    add b
    inc c
    nop
    nop
    nop
    add b
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$0c08], sp
    inc c
    add b
    inc c
    inc c
    nop
    nop
    inc c
    inc c
    nop
    nop
    inc c
    inc c
    nop
    nop
    rst $38
    cp $fd
    db $fc
    ei
    ld a, [$fcfb]
    db $fd
    cp $ff
    ld [bc], a
    inc b
    dec b
    ld b, $09
    inc c
    add b
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld a, [c]
    rrca
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    add b
    ld bc, $0102
    inc b
    ld bc, $0108
    ld c, $01
    ld de, $0806
    ld b, $0a
    ld b, $0c
    ld b, $0f
    ld b, $14
    inc c
    dec c
    inc c
    rrca
    inc c
    rst $28
    inc c
    inc d
    inc c
    rla
    add b
    ld [bc], a
    inc b
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $10
    ld [de], a
    inc d
    ld d, $18
    ld a, [de]
    inc e
    ld e, $20
    ld [hl+], a
    inc h
    ld h, $28
    ld a, [hl+]
    inc b
    db $fc
    ld l, $30
    add b
    nop
    nop
    inc sp
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld c, e
    nop
    nop
    ld d, [hl]
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    ld c, e
    nop
    nop
    xor e
    ld c, e
    nop
    nop
    or b
    ld c, e
    nop
    nop
    cp l
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, Call_000_004b
    nop
    ld l, c
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld c, h
    ld e, c
    ld c, h
    ld [hl], d
    ld c, h
    adc e
    ld c, h
    nop
    nop
    nop
    nop
    ret z

    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, Jump_000_004c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $f4
    ld c, h
    nop
    nop
    dec h
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, l
    nop
    nop
    ld d, d
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld c, l
    nop
    nop
    ld l, a
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld c, l
    nop
    nop
    nop
    nop
    and h
    ld h, $80
    and h
    ld a, [de]
    add b
    and h
    stop

jr_002_4b3c:
    and h
    dec h
    rst $38
    and h
    inc h
    ld [hl], a
    xor h
    add b
    and b
    add d
    sub b
    rst $38

jr_002_4b48:
    inc c
    inc de
    inc c
    sub d
    add [hl]
    and b
    ld c, e

jr_002_4b4f:
    sub b
    ld b, $08
    inc c
    ld a, [bc]
    sub d
    add [hl]
    xor h
    add b
    and b
    add d
    sub b
    ld [$2403], sp
    inc bc
    ld hl, $1d03
    inc bc
    ld a, [de]
    inc bc
    rla
    inc bc
    sub d
    add [hl]
    xor h
    ld b, b
    and b
    add e
    sbc h
    ld b, $0c
    ld a, [de]
    sbc [hl]
    add [hl]
    xor h
    add b
    and b
    add c
    inc h
    ld bc, $0130
    add [hl]
    xor h
    add b
    and b
    add d
    sbc h
    rlca
    inc h
    inc c
    sbc [hl]
    add [hl]
    xor h
    add b
    and b
    add c
    jr nc, jr_002_4b8d

    inc a

jr_002_4b8d:
    ld bc, $013e
    jr nc, jr_002_4b93

    add [hl]

jr_002_4b93:
    xor h
    ld b, b
    and b
    add d
    sub b
    ld [$240c], sp
    inc c
    sub d
    add [hl]
    xor h
    nop
    and b
    adc b
    adc [hl]
    ld b, $90
    db $fc
    jr @+$09

    jr jr_002_4b3c

    add [hl]
    and b
    ld b, c
    inc c
    ld bc, $ac86
    nop
    and b
    adc b
    sub b
    inc b
    jr jr_002_4bbf

    jr jr_002_4b48

    ld [bc], a
    sub d
    add [hl]
    and b
    ld b, c

jr_002_4bbf:
    adc [hl]
    jr @+$0e

    ld [bc], a
    add [hl]
    and b
    add h
    inc de
    jr jr_002_4b4f

    and b
    adc b
    inc h
    inc bc
    jr z, jr_002_4bd2

    dec hl
    inc bc
    cpl

jr_002_4bd2:
    inc bc
    inc h
    inc bc
    jr nc, jr_002_4bda

    and b
    ld a, b
    inc h

jr_002_4bda:
    inc bc
    jr z, jr_002_4be0

    dec hl
    inc bc
    cpl

jr_002_4be0:
    inc bc
    inc h
    inc bc
    jr nc, jr_002_4be8

    and b
    ld l, b
    inc h

jr_002_4be8:
    inc bc
    jr z, jr_002_4bee

    dec hl
    inc bc
    cpl

jr_002_4bee:
    inc bc
    inc h
    inc bc
    jr nc, jr_002_4bf6

    and b
    ld e, b
    inc h

jr_002_4bf6:
    inc bc
    jr z, jr_002_4bfc

    dec hl
    inc bc
    cpl

jr_002_4bfc:
    inc bc
    inc h
    inc bc
    jr nc, jr_002_4c04

    and b
    ld c, b
    inc h

jr_002_4c04:
    inc bc
    jr z, jr_002_4c0a

    dec hl
    inc bc
    cpl

jr_002_4c0a:
    inc bc
    inc h
    inc bc
    jr nc, jr_002_4c12

    and b
    jr c, jr_002_4c36

jr_002_4c12:
    inc bc
    jr z, jr_002_4c18

    dec hl
    inc bc
    cpl

jr_002_4c18:
    inc bc
    inc h
    inc bc
    jr nc, jr_002_4c20

    and b
    jr z, @+$26

jr_002_4c20:
    inc bc
    jr z, jr_002_4c26

    dec hl
    inc bc
    cpl

jr_002_4c26:
    inc bc
    inc h
    inc bc
    jr nc, jr_002_4c2e

    and b
    jr jr_002_4c52

jr_002_4c2e:
    inc bc
    jr z, jr_002_4c34

    dec hl
    inc bc
    cpl

jr_002_4c34:
    inc bc
    inc h

jr_002_4c36:
    inc bc
    jr nc, jr_002_4c3c

    add [hl]
    and b
    add h

jr_002_4c3c:
    sub b
    db $fc
    inc bc
    inc h
    inc bc
    ld h, $03
    jr z, jr_002_4c48

    add hl, hl
    inc bc
    dec hl

jr_002_4c48:
    inc bc
    dec l
    inc bc
    cpl
    inc bc
    jr nc, jr_002_4c52

    sub d
    add [hl]
    and b

jr_002_4c52:
    add d
    sub b
    inc c
    ld b, $02
    sub d
    add [hl]
    and b
    add e
    xor h
    add b
    sbc b
    ld bc, $0201
    dec hl
    inc c
    dec hl
    ld b, $2b
    ld b, $2b
    inc c
    inc l
    inc c
    dec hl
    inc c
    inc l
    inc c
    dec hl
    inc c
    add [hl]
    and b
    add e
    xor h
    add b
    sbc b

jr_002_4c77:
    ld bc, $0201
    daa
    inc c
    daa
    ld b, $27
    ld b, $27
    inc c
    add hl, hl
    inc c
    daa

jr_002_4c85:
    inc c
    add hl, hl
    inc c
    daa
    inc c
    add [hl]
    and b
    ld hl, $00a6
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    sbc b
    ld bc, $0201
    rrca
    inc c
    rrca
    ld b, $0f
    ld b, $0f
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    rrca
    inc c
    add [hl]
    sbc b
    ld bc, $0201
    rla
    inc c
    rla
    ld b, $17
    ld b, $17
    inc c
    jr @+$0e

    rla
    inc c
    jr jr_002_4cd1

    rla
    jr nc, @-$78

    and b
    add h
    sbc h
    ld bc, $0c24
    sbc [hl]
    add [hl]
    xor h

jr_002_4cd1:
    add b
    and b
    add h
    sbc h
    add hl, bc
    inc h
    jr jr_002_4c77

    add [hl]
    and b
    ld hl, $00a6
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    sub b
    rst $38
    jr @+$15

    jr jr_002_4c85

    add [hl]
    and b
    add h
    inc c
    ld bc, $010d
    and b
    ld [hl], h
    inc c
    ld bc, $010d
    and b
    ld h, h
    inc c
    ld bc, $010d
    and b
    ld d, h
    inc c
    ld bc, $010d
    and b
    ld b, h
    inc c
    ld bc, $010d
    and b
    inc [hl]
    inc c
    ld bc, $010d
    and b
    inc h
    inc c
    ld bc, $010d
    and b
    inc d
    inc c
    ld bc, $010d
    add [hl]
    and b
    add d
    sbc b
    ld bc, $0201
    sub h
    inc c
    ld bc, $0124
    rra
    ld bc, $0224
    rra
    ld [bc], a
    inc h
    inc bc
    rra
    inc bc
    inc h
    inc b
    rra
    inc b
    inc h
    dec b
    rra
    dec b
    inc h
    ld b, $1f
    ld b, $24
    inc c
    add [hl]
    and b
    add c
    sub b
    inc b
    ld b, $2b
    ld b, $92
    add [hl]
    and b
    add c
    xor h
    nop
    jr nc, jr_002_4d59

    inc h

jr_002_4d59:
    ld bc, $0118
    inc h
    ld bc, $0130
    add [hl]
    and b
    add d
    ld [bc], a
    inc c
    add [hl]
    and b
    ld c, e
    ld [bc], a
    ld b, $a0
    add d
    ld [bc], a
    ld b, $86
    xor h
    add b
    and b
    add h
    sbc h
    ld a, [bc]
    jr @+$1c

    add [hl]
    and h
    ld h, $80
    and h
    ld a, [de]
    add b
    and h
    stop
    and h
    dec h
    rst $38
    and h
    inc h
    ld [hl], a
    xor h
    add b
    add [hl]
    ldh [rKEY1], a
    ldh [rKEY1], a
    ldh [rKEY1], a
    ldh [rKEY1], a
    ret z

    ld c, l
    pop de
    ld c, l
    push de
    ld c, l
    db $db
    ld c, l
    db $e3
    ld c, l
    db $eb
    ld c, l
    rst $28
    ld c, l
    push af
    ld c, l
    ld sp, hl
    ld c, l
    cp $4d
    inc b
    ld c, [hl]
    ld a, [bc]
    ld c, [hl]
    ld l, a
    ld c, a
    or b
    ld c, a
    or a
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    add sp, $50
    ld c, d
    ld d, c
    db $e3
    ld d, c
    ld b, d
    ld d, d
    cp b
    ld c, [hl]
    xor $4e
    ld [hl-], a
    ld c, a
    ld c, $4e
    ld [hl+], a
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    add d
    db $f4
    nop
    add d
    db $f4
    inc b
    add h
    ret z

    ld c, l
    ld [$d184], sp
    ld c, l
    add d
    add sp, $07
    add h
    push de
    ld c, l
    dec b
    ld b, $84
    db $db
    ld c, l
    ld [bc], a
    ld bc, $0286
    add d
    db $f4
    add hl, bc
    ld bc, $e784
    ld c, l
    ld a, [bc]
    add h
    rst $20
    ld c, l
    add d
    add sp, $0b
    add h
    rst $20
    ld c, l
    ld bc, $f584
    ld c, l
    ld [bc], a
    inc c
    add h
    ld sp, hl
    ld c, l
    add d
    db $f4
    dec c
    add h
    cp $4d
    add d
    db $f4
    ld c, $84
    inc b
    ld c, [hl]
    ld bc, $0a84
    ld c, [hl]
    and b
    or h
    adc b
    ld hl, $888e
    ld b, d
    sbc h
    ld bc, $1f1f
    rra
    rra
    ld a, [de]
    ld a, [de]
    ld a, [de]
    adc b
    ld hl, $861a
    and b
    or [hl]
    sbc b
    ld b, $01
    ld [bc], a
    sub h
    inc c
    ld bc, $0b88
    adc [hl]
    scf
    ld [hl], $88
    inc l
    scf
    adc b
    dec bc
    dec hl
    ld a, [hl+]
    adc b
    inc l
    dec hl
    adc b
    dec bc
    rra
    ld e, $88
    inc l
    rra
    adc b
    dec bc
    ld h, $25
    adc b
    inc l
    ld h, $88
    dec bc
    ld h, $25
    adc b
    inc l
    ld h, $88

jr_002_4e50:
    dec bc
    ld [hl-], a
    ld sp, $2c88
    ld [hl-], a
    adc b
    dec bc
    ld a, $3d
    adc b
    ld h, e
    ld a, $86
    and b
    ld hl, $00a6
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    sub h
    inc c
    ld bc, $0698
    ld bc, $8802
    dec bc
    inc de
    adc b
    inc l
    adc [hl]
    adc b
    dec bc
    inc de
    rla
    adc b
    inc l
    adc [hl]
    adc b
    dec bc
    rla
    jr @-$76

    inc l
    adc [hl]
    adc b
    dec bc
    jr jr_002_4ea2

    adc b
    inc l
    adc [hl]
    adc b
    dec bc
    ld [de], a
    ld c, $88
    inc l
    adc [hl]
    adc b
    dec bc
    ld c, $10
    adc b
    inc l
    adc [hl]
    adc b

jr_002_4ea2:
    dec bc
    db $10
    ld [de], a
    adc b
    inc l
    adc [hl]
    adc b
    dec bc
    ld [de], a
    adc b
    ld d, $13
    adc b
    dec bc
    inc de
    adc b
    ld d, $15
    adc b
    dec bc
    ld [de], a
    add [hl]
    and b
    or h
    sbc b
    ld b, $01
    ld [bc], a
    sub h
    inc c
    ld bc, $0a88
    rla
    adc b
    inc d
    jr jr_002_4e50

    ld a, [bc]
    jr @-$76

    inc d
    rla
    adc b
    ld a, [bc]
    rla
    adc b
    inc d
    dec d
    adc b
    ld a, [bc]
    dec d
    adc b
    inc d
    ld [de], a
    adc b

jr_002_4eda:
    ld a, [bc]
    ld c, $88

jr_002_4edd:
    ld e, $13
    adc b
    ld a, [bc]
    rra
    inc e
    ld a, [de]
    adc b
    ld e, $13
    adc b
    dec b
    rra
    adc b
    ld e, a
    adc [hl]
    add [hl]
    and b
    or h
    sbc h
    ld [bc], a
    adc b
    ld a, [bc]
    ld a, [de]
    sbc h
    inc bc
    adc b
    inc d
    inc e
    adc b
    ld a, [bc]
    inc e
    sbc h
    inc b
    adc b
    inc d
    rra
    adc b
    ld a, [bc]
    rra
    adc b
    inc d
    ld hl, $0a88
    ld hl, $059c
    adc b
    inc d
    ld h, $88
    ld a, [bc]
    ld h, $9c
    inc bc
    adc b
    ld e, $23

jr_002_4f18:
    sbc h
    inc b
    adc b
    ld a, [bc]
    rra
    sbc h
    inc bc
    adc b
    ld a, [bc]
    inc e
    sbc h
    dec b
    adc b
    ld a, [bc]
    ld a, [de]
    sbc h
    inc bc
    adc b
    ld e, $17
    sbc h
    inc bc
    adc b
    ld h, h
    inc hl
    add [hl]
    and b
    ld hl, $00a6

jr_002_4f36:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, [bc]
    inc hl
    adc b
    inc d
    inc h
    adc b
    ld a, [bc]
    inc h
    adc b
    inc d
    jr z, jr_002_4eda

    ld a, [bc]
    jr z, jr_002_4edd

    inc d
    ld a, [hl+]
    adc b
    ld a, [bc]
    ld a, [hl+]

jr_002_4f5a:
    adc b
    inc d
    dec l
    adc b
    ld a, [bc]
    dec l
    adc b
    ld e, $2b
    adc b
    ld a, [bc]
    jr z, jr_002_4f8b

    ld hl, $1e88
    rra
    adc b
    ld h, h
    adc [hl]
    add [hl]
    and h
    ld h, $80
    and h
    ld a, [de]
    add b
    and h
    stop
    and h
    dec h

jr_002_4f7a:
    rst $38
    and h
    inc h
    ld [hl], a
    and b
    or h
    sbc b
    ld b, $01
    ld [bc], a
    sub h
    inc c
    ld bc, $0a88
    inc de
    dec d

jr_002_4f8b:
    rla
    adc b
    ld e, d
    jr jr_002_4f18

    ld a, [bc]
    dec d
    rla
    add hl, de
    adc b
    ld e, d
    ld a, [de]
    adc b
    ld a, [bc]
    dec d
    rla
    add hl, de

jr_002_4f9c:
    adc b
    ld e, $1a
    adc b
    ld a, [bc]
    dec d
    rla
    add hl, de
    adc b
    ld e, $1a
    adc b
    ld a, [bc]
    inc de
    dec d
    rla
    adc b
    ld e, d
    jr jr_002_4f36

    adc b
    ld d, b
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    add [hl]
    and h
    ld h, $80
    and h
    ld a, [de]
    add b
    and h
    stop
    and h
    dec h
    rst $38

jr_002_4fc3:
    and h
    inc h
    ld [hl], a
    add [hl]
    and b
    or h
    adc b
    ld a, [bc]
    inc de
    dec d
    rla
    adc b
    ld e, d
    jr jr_002_4f5a

    ld a, [bc]
    dec d
    rla
    add hl, de
    adc b
    ld e, d
    ld a, [de]
    adc b
    ld a, [bc]
    dec d
    rla
    add hl, de
    adc b
    ld e, $1a
    adc b
    ld a, [bc]
    dec d
    rla
    add hl, de

jr_002_4fe6:
    adc b
    ld e, $1a
    adc b
    ld a, [bc]
    inc de
    dec d
    rla
    adc b
    ld b, [hl]
    jr jr_002_4f7a

    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    inc de
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a
    jr jr_002_4f9c

jr_002_5000:
    ld bc, $0a88
    inc h
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a
    inc e
    sbc h
    ld bc, $0a88
    inc h
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a
    dec e
    sbc h
    ld bc, $0a88
    add hl, hl
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a
    jr jr_002_4fc3

jr_002_5027:
    ld bc, $0a88
    add hl, hl
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a

jr_002_5032:
    inc de
    sbc h
    ld bc, $0a88
    dec hl
    sbc [hl]
    adc b
    inc d

jr_002_503b:
    rla
    sbc h
    ld bc, $0a88
    dec hl
    sbc [hl]
    adc b
    inc d

jr_002_5044:
    sbc b
    ld b, $01
    ld [bc], a
    jr jr_002_4fe6

    ld bc, $0a88

jr_002_504d:
    inc h
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a
    inc de
    sbc h
    ld bc, $0a88
    inc h
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a
    jr jr_002_5000

    ld bc, $0a88
    inc h
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01

jr_002_506e:
    ld [bc], a
    inc e
    sbc h
    ld bc, $0a88
    inc h
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a
    dec e
    sbc h
    ld bc, $0a88
    add hl, hl
    sbc [hl]
    adc b
    inc d
    sbc b
    ld b, $01
    ld [bc], a
    jr jr_002_5027

    ld bc, $0a88
    add hl, hl
    sbc [hl]
    adc b
    ld [hl-], a
    sbc b
    ld b, $01
    ld [bc], a
    inc de
    adc b
    ld a, [bc]
    rla
    adc b
    inc a
    jr @-$76

    inc d
    jr @-$76

    ld a, [bc]
    inc e
    inc de
    dec d
    rla
    adc b
    inc d
    jr jr_002_5032

    ld a, [bc]
    inc e
    inc de
    dec d
    rla
    adc b
    inc d
    jr jr_002_503b

    ld a, [bc]
    inc e
    inc de
    dec d
    rla
    adc b
    inc d
    jr jr_002_5044

    ld a, [bc]
    inc e
    inc de
    dec d
    rla
    adc b
    ld e, d
    jr jr_002_504d

    ld a, [bc]
    dec d
    rla
    add hl, de
    adc b
    ld e, d
    ld a, [de]
    adc b
    ld a, [bc]
    dec d
    rla
    add hl, de
    adc b
    ld e, $1a
    adc b
    ld a, [bc]
    dec d
    rla
    add hl, de
    adc b
    ld e, $1a
    adc b
    ld a, [bc]
    rra
    ld hl, $8823
    ld e, $24
    adc b
    ld l, [hl]
    jr jr_002_506e

    adc b
    inc a
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    inc d
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    ld d, b
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    inc d
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    ret z

    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    inc d
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    inc d
    adc [hl]
    adc b
    inc a
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    inc d
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    ld d, b
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    inc d
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    ret z

    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    inc d
    adc [hl]
    adc b
    ld a, [bc]
    and d
    ld [bc], a
    adc b
    dec b
    and d
    ld bc, $01a2
    adc b
    ld a, [bc]
    and d
    ld bc, $a286
    ld bc, $01a2
    and d
    ld bc, $1488
    and d
    nop
    adc b
    ld a, [bc]
    and d
    nop
    adc b
    inc d
    and d
    ld bc, $0a88
    and d
    ld bc, $1488
    and d
    nop
    adc b
    ld a, [bc]
    and d
    nop
    adc b
    inc d
    and d
    ld bc, $0588
    and d
    ld bc, $01a2
    adc b
    inc d
    and d
    nop
    adc b
    ld a, [bc]
    and d
    nop
    adc b
    inc d
    and d
    ld bc, $0a88
    and d
    ld bc, $1488
    and d
    nop
    adc b
    ld a, [bc]
    and d
    nop
    adc b
    inc d
    and d
    ld bc, $0588
    and d
    ld bc, $01a2
    adc b
    inc d
    and d
    nop
    adc b
    ld a, [bc]
    and d
    nop
    adc b
    inc d
    and d
    ld bc, $0588
    and d
    ld bc, $01a2
    adc b
    inc d
    and d
    nop
    adc b
    ld a, [bc]
    and d
    nop
    adc b
    inc d
    and d
    ld bc, $0a88
    and d
    ld bc, $0588
    and d
    ld bc, $01a2
    and d
    ld bc, $01a2
    adc b
    ld a, [bc]
    and d
    ld bc, $01a2
    and d
    ld bc, $01a2
    adc b
    inc a
    and d
    inc bc
    adc b
    add a
    adc [hl]
    adc [hl]
    adc b
    ld e, $a2
    ld [bc], a
    and d
    ld [bc], a
    adc [hl]
    adc [hl]
    and d
    ld [bc], a
    and d
    ld [bc], a
    adc b
    sub c
    adc [hl]
    adc [hl]
    add [hl]
    and b
    ld hl, $12a6
    inc [hl]

jr_002_51e8:
    ld d, [hl]
    ld a, b
    ld [de], a
    inc [hl]
    ld d, [hl]
    ld a, b
    ld [de], a
    inc [hl]
    ld d, [hl]
    ld a, b
    ld [de], a
    inc [hl]
    ld d, [hl]
    ld a, b
    adc b
    ld d, b
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc b
    inc a
    adc [hl]
    adc b
    ld a, [bc]
    sbc h
    ld bc, $2b2b
    dec hl
    dec hl
    dec hl
    sbc [hl]
    adc b
    ld e, $2b

jr_002_5213:
    jr z, jr_002_5239

    rra
    rra
    inc hl
    inc h
    rra
    dec hl
    jr z, jr_002_5241

    adc b
    inc d
    rra
    adc b
    ld a, [bc]
    inc h
    adc b
    inc d
    inc hl
    adc b
    ld a, [bc]
    rra
    adc b
    inc d
    ld hl, $0a88
    inc hl
    inc h
    adc b
    inc d
    adc [hl]
    adc b
    ld d, b
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]

jr_002_5239:
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc b
    ld [hl-], a
    adc [hl]

jr_002_5241:
    add [hl]
    and b
    or h
    adc b
    ld d, b
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc b
    ld e, $8e
    sbc b
    ld b, $01
    ld bc, $1488
    inc h
    adc b
    ld a, [bc]
    jr z, jr_002_51e8

    inc d
    inc h
    adc b
    ld a, [bc]
    ld hl, $1488
    dec e
    adc b
    ld e, $26
    adc b
    ld a, [bc]
    ld [hl+], a
    adc b
    inc d
    inc hl
    adc b
    ld a, [bc]
    ld h, $88
    inc d
    inc hl
    adc b
    ld a, [bc]
    rra
    adc b
    inc d
    inc e
    adc b
    ld e, $24
    adc b
    dec b
    rra
    ld hl, $1488
    inc h
    adc b
    ld a, [bc]
    jr z, jr_002_5213

    inc d
    inc h
    adc b
    ld a, [bc]
    ld hl, $1488
    dec e
    adc b
    ld e, $26
    adc b
    ld a, [bc]
    inc h
    adc b
    dec b
    inc hl
    inc h
    inc hl
    inc h
    adc b
    ld a, [bc]
    rra
    adc b
    inc d
    ld hl, $0a88
    inc hl
    adc b
    inc a
    inc h
    adc b
    ld d, b
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc b
    inc d
    adc [hl]
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
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
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc bc
    inc b
    dec b
    inc bc
    inc b
    dec b
    inc bc
    inc b
    dec b
    inc bc
    inc b
    dec b
    inc bc
    inc b
    dec b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    dec b
    inc bc
    inc b
    dec b
    rlca
    ld b, $05
    inc bc
    inc b
    dec b
    inc bc
    inc b
    dec b
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
    nop
    nop
    nop
    nop
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
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    nop
    dec b
    ld b, $07
    nop
    rst $38

Call_002_5352:
Jump_002_5352:
    push hl
    ld a, [$c205]
    ld c, a
    ld a, [$c206]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    pop hl
    ret z

    ld a, l
    ld [$c203], a
    ld a, h
    ld [$c204], a
    ld a, l
    ld [$c205], a
    ld a, h
    ld [$c206], a
    jr jr_002_538d

Call_002_5377:
    ld a, [$c209]
    sub $01
    ld [$c209], a
    ret nc

    ld a, $05
    ld [$c209], a
    ld a, [$c203]
    ld l, a
    ld a, [$c204]
    ld h, a

jr_002_538d:
    ld a, [hl+]
    cp $ff
    jr nz, jr_002_539d

    push af
    ld a, [$c205]
    ld l, a
    ld a, [$c206]
    ld h, a
    pop af
    ld a, [hl+]

jr_002_539d:
    push af
    ld a, l
    ld [$c203], a
    ld a, h
    ld [$c204], a
    pop af
    ld c, a
    ld a, [$c552]
    and a
    ld a, c
    jr z, jr_002_53b5

    cp $12
    jr nc, jr_002_53b5

    add $15

jr_002_53b5:
    or $80
    ld [$c1ae], a
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
    rrca
    rrca
    ld c, $0e
    dec c
    dec c
    inc c
    inc c
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0708], sp
    rlca
    ld b, $06
    dec b
    dec b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    rrca
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $fe
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
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
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
    ld bc, $0100
    nop
    ld bc, $0101
    ld bc, $0102
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld bc, $1008
    jr @+$22

    ld a, [bc]
    dec bc
    inc c
    dec bc
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    inc de
    rst $38
    ld c, $0f
    rst $38
    db $10
    ld de, $14ff
    rst $38
    dec c
    rst $38
    ld hl, $c500
    ld b, $6a
    xor a

jr_002_54fb:
    ld [hl+], a
    dec b
    jr nz, jr_002_54fb

    ld hl, $52ba
    call Call_002_5352
    xor a
    ld [$c541], a
    ld [$c570], a
    ld [$c571], a
    ld [$c542], a
    ld a, $01
    ld [$c543], a
    jp Jump_002_636a


    ld a, [$c549]
    and a
    jp z, Jump_002_5536

    push af
    xor a
    ld [$c549], a
    call Call_002_5536
    ld a, [$c549]
    and a
    jr z, jr_002_5534

    pop af
    ld [$c549], a
    ret


jr_002_5534:
    pop af
    ret


Call_002_5536:
Jump_002_5536:
    xor a
    ld [$c55c], a
    ld a, [$c180]
    and a
    ret nz

    ld a, [$c544]
    and a
    ret nz

    ld a, [$c545]
    ld [$c546], a
    ld a, [$c548]
    and $80
    jr z, jr_002_5555

    xor a
    ld [$c548], a

jr_002_5555:
    ld a, [$c156]
    and $0f
    ld [$c53d], a
    ld a, [$c154]
    and $0f
    ld [$c53c], a
    call Call_002_5609
    call Call_002_5ecb
    ld a, [$c548]
    or $80
    ld [$c548], a
    xor a
    ld [$c545], a
    ld [$c549], a
    ld [$c54a], a
    ld [$c546], a
    ld [$c547], a
    call Call_002_558c
    call Call_002_5377
    jp Jump_002_634f


Call_002_558c:
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld e, $20
    ld a, [$c543]
    cp $02
    jr nz, jr_002_55a3

    ld bc, $0010
    srl e
    add hl, bc

jr_002_55a3:
    ld a, l
    ld [$c54b], a
    ld a, h
    ld [$c54c], a
    ld a, [$c571]
    add e
    ld [$c54d], a
    ld a, [$c548]
    and $7f
    jr z, jr_002_55c1

    ld a, [$c54d]
    add $02
    ld [$c54d], a

jr_002_55c1:
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ld [$c54e], a
    ld a, h
    ld [$c54f], a
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$c543]
    and a
    jr nz, jr_002_5600

    inc hl

jr_002_5600:
    ld a, l
    ld [$c54f], a
    ld a, h
    ld [$c550], a
    ret


Call_002_5609:
    ld a, [$c543]
    cp $03
    jp z, Jump_002_56e4

    call Call_002_567b
    ld a, [$c543]
    and a
    jr nz, jr_002_5631

    call Call_002_5d7b

Jump_002_561d:
    ld a, [$c54a]
    and $80
    ret z

    call Call_002_598f
    and $80
    ret z

    ld a, $10
    call Call_002_62f7
    jp Jump_002_63b7


jr_002_5631:
    cp $04
    jp z, Jump_002_5b06

    cp $01
    jp z, Jump_002_585c

    cp $02
    jr nz, jr_002_5645

    call Call_002_57e0
    jp Jump_002_561d


jr_002_5645:
    cp $05
    ret nz

    jp Jump_002_5706


jr_002_564b:
    ld a, [$c543]
    cp $03
    ret z

    push de
    ld a, e
    sub $04
    ld e, a
    ld a, [de]
    pop de
    cp $12
    jp z, Jump_002_63b7

    ld a, $01
    ld [$c543], a
    ld a, [$c147]
    and $01
    jr z, jr_002_566e

    ld a, $04
    ld [$c543], a

jr_002_566e:
    ld a, $08
    ld [$c551], a
    ld a, [$c1c7]
    and a
    jp z, Jump_002_63b7

    ret


Call_002_567b:
    ld d, $10
    ld a, $1c
    call Call_002_6319
    ld a, [$c543]
    and a
    jr nz, jr_002_5693

    push de
    ld a, e
    sub $04
    ld e, a
    ld a, [de]
    pop de
    cp $12
    jr z, jr_002_564b

jr_002_5693:
    ld a, [de]
    cp $12
    jr z, jr_002_564b

    cp $07
    jr nz, jr_002_56ae

    xor a
    ld [$c55f], a
    ld c, a
    ld a, [$c571]
    and $80
    jr nz, jr_002_56bd

    ld a, c
    inc a
    ld [$c55f], a
    ret


jr_002_56ae:
    push de
    ld a, e
    add $04
    ld e, a
    ld a, [de]
    pop de
    cp $07
    ret nz

    ld a, [$c55f]
    and a
    ret z

jr_002_56bd:
    xor a
    ld [$c55f], a
    ld [$c548], a
    ld [$c560], a
    ld a, $04
    ld [$c543], a
    ld a, $08
    ld [$c551], a
    ld a, [$c477]
    or $01
    ld [$c477], a
    ld a, $fe
    call Call_002_62f4
    ld hl, $54de
    jp Jump_002_5352


Jump_002_56e4:
    ld a, [$c561]
    ld c, a
    ld l, $80
    add l
    ld l, a
    ld h, $54
    ld a, [hl]
    ld [$c571], a
    cp $06
    jr nz, jr_002_56fd

    ld a, $01
    ld [$c562], a
    jr jr_002_5702

jr_002_56fd:
    ld a, c
    inc a
    ld [$c561], a

jr_002_5702:
    ld a, [hl]
    jp Jump_002_62f4


Jump_002_5706:
    xor a
    ld [$c570], a
    ld [$c571], a
    ld a, [$c147]
    bit 6, a
    jr nz, jr_002_5774

    bit 7, a
    jp nz, Jump_002_57b6

    ld hl, $54e6
    call Call_002_5352
    ld d, $10
    ld a, $10
    call Call_002_6319
    ld a, [hl]
    cp $05
    jr z, jr_002_5750

    cp $06
    jr z, jr_002_5750

    push hl
    ld a, l
    add $04
    ld l, a
    ld a, [hl]
    pop hl
    cp $05
    jr z, jr_002_5750

    cp $06
    jr z, jr_002_5750

    ld hl, $54de
    call Call_002_5352
    ld a, $01
    ld [$c543], a
    xor a
    ld [$c551], a
    jp Jump_002_585c


jr_002_5750:
    ld a, [$c147]
    and $01
    ret z

    ld a, [$c477]
    bit 0, a
    ret nz

    ld a, [$c477]
    or $01
    ld [$c477], a
    ld a, $08
    ld [$c551], a
    ld a, $04
    ld [$c543], a
    ld hl, $54de
    jp Jump_002_5352


jr_002_5774:
    ld d, $10
    ld a, $fe
    call Call_002_6319
    ld a, [hl]
    cp $01
    jr z, jr_002_57a2

    cp $02
    jr z, jr_002_57a2

    cp $05
    jr z, jr_002_579e

    cp $06
    jr z, jr_002_579e

    push hl
    ld a, l
    add $08
    ld l, a
    ld a, [hl]
    pop hl
    and a
    jr z, jr_002_57a8

    cp $05
    jr z, jr_002_579e

    cp $06
    jr nz, jr_002_57a2

jr_002_579e:
    ld a, $fe
    jr jr_002_57ad

jr_002_57a2:
    ld hl, $54e6
    jp Jump_002_5352


jr_002_57a8:
    xor a
    ld [$c543], a
    ret


jr_002_57ad:
    call Call_002_62f4
    ld hl, $54e8
    jp Jump_002_5352


Jump_002_57b6:
    ld d, $10
    ld a, $10
    call Call_002_6319
    ld a, [hl]
    and a
    jr z, jr_002_57c5

    cp $05
    jr z, jr_002_57d7

jr_002_57c5:
    push hl
    ld a, l
    add $04
    ld l, a
    ld a, [hl]
    pop hl
    and a
    jr z, jr_002_57db

    cp $05
    jr z, jr_002_57d7

    cp $06
    jr nz, jr_002_57db

jr_002_57d7:
    ld a, $02
    jr jr_002_57ad

jr_002_57db:
    xor a
    ld [$c543], a
    ret


Call_002_57e0:
    ld a, [$c147]
    and $80
    jp nz, Jump_002_5d7b

    ld d, $0a
    ld a, $0f
    call Call_002_6319
    ld a, [hl]
    cp $02
    jr z, jr_002_580a

    ld d, $15
    ld a, $0f
    call Call_002_6319
    ld a, [hl]
    cp $02
    jr z, jr_002_580a

    xor a
    ld [$c543], a
    ld hl, $52ba
    jp Jump_002_5352


jr_002_580a:
    ld a, [$c548]
    and $7f
    ret nz

    ld a, [$c546]
    and a
    ret nz

    ld a, [$c552]
    and a
    jr nz, jr_002_583e

    push hl
    ld a, l
    add $05
    ld l, a
    ld a, [hl]
    pop hl
    cp $02
    jr z, jr_002_584e

    jp Jump_002_5839


jr_002_5829:
    push hl
    ld a, l
    add $03
    ld l, a
    ld a, [hl]
    pop hl
    cp $02
    jr nz, jr_002_5839

    ld a, $0c
    jp Jump_002_62d2


Jump_002_5839:
jr_002_5839:
    ld a, $01
    jp Jump_002_62d2


jr_002_583e:
    push hl
    ld a, l
    add $03
    ld l, a
    ld a, [hl]
    pop hl
    cp $02
    jr z, jr_002_5829

jr_002_5849:
    ld a, $ff
    jp Jump_002_62d2


jr_002_584e:
    ld a, l
    add $05
    ld l, a
    ld a, [hl]
    cp $02
    jr nz, jr_002_5849

    ld a, $f4
    jp Jump_002_62d2


Jump_002_585c:
    ld a, [$c147]
    and $40
    jr z, jr_002_5881

    ld d, $10
    xor a
    call Call_002_6319
    ld a, [hl]
    cp $06
    jr nz, jr_002_5881

    ld a, $05
    ld [$c543], a
    xor a
    ld [$c563], a
    ld [$c570], a
    ld [$c571], a
    ld [$c553], a
    ret


jr_002_5881:
    ld a, [$c551]
    ld b, a
    and $80
    jp z, Jump_002_5961

    ld a, [$c56c]
    and a
    jr z, jr_002_58c5

    ld a, [$c477]
    ld c, a
    bit 0, a
    jr nz, jr_002_58bd

    ld a, [$c147]
    bit 0, a
    jr z, jr_002_58bd

    ld a, $01
    or c
    ld [$c477], a
    push bc
    call Call_002_59cf
    pop bc
    and $80
    jr nz, jr_002_58bd

    ld a, $0c
    ld [$c551], a
    xor a
    ld [$c560], a
    ld hl, $54eb
    jp Jump_002_5352


jr_002_58bd:
    push bc
    ld hl, $54eb
    call Call_002_5352
    pop bc

jr_002_58c5:
    ld a, [$c55f]
    and a
    jr z, jr_002_58f4

    ld a, [$c477]
    ld c, a
    bit 0, a
    jr nz, jr_002_58f4

    ld a, [$c147]
    bit 0, a
    jr z, jr_002_58f4

    ld a, $01
    or c
    ld [$c477], a
    ld a, $0c
    ld [$c551], a
    xor a
    ld [$c560], a
    ld a, $04
    ld [$c543], a
    ld hl, $54ee
    jp Jump_002_5352


jr_002_58f4:
    ld a, b
    cpl
    inc a
    ld b, a
    ld h, $54
    ld a, $60
    add b
    ld l, a
    ld a, [$c55f]
    ld c, a
    ld a, [$c56c]
    or c
    jr z, jr_002_590d

    ld a, [hl]
    srl a
    jr jr_002_590e

jr_002_590d:
    ld a, [hl]

jr_002_590e:
    call Call_002_62f4
    ld a, [$c551]
    cp $ec
    jr z, jr_002_591c

    dec a
    ld [$c551], a

jr_002_591c:
    call Call_002_5bae
    and a
    jr z, jr_002_5937

jr_002_5922:
    ld a, [$c571]
    cp $04
    ret nz

    ld a, [$c55f]
    ld c, a
    ld a, [$c56c]
    or c
    ret nz

    ld hl, $54e2
    jp Jump_002_5352


jr_002_5937:
    ld a, [$c560]
    and a
    jr nz, jr_002_5956

    ld a, [$c154]
    and $0f
    cp $04
    jr nc, jr_002_5922

    ld a, [$c571]
    ld c, a
    ld a, [$c154]
    add c
    and $0f
    cpl
    inc a
    add c
    call Call_002_62f7

jr_002_5956:
    xor a
    ld [$c543], a
    ld [$c551], a
    ld [$c571], a
    ret


Jump_002_5961:
    ld h, $54
    ld a, $60
    add b
    ld l, a
    ld a, [$c55f]
    and a
    jr z, jr_002_5972

    ld a, [hl]
    srl a
    jr jr_002_5973

jr_002_5972:
    ld a, [hl]

jr_002_5973:
    cpl
    inc a
    call Call_002_62f4
    ld a, [$c571]
    and a
    jr z, jr_002_5989

    call Call_002_59cf
    and a
    jr z, jr_002_5989

    xor a

jr_002_5985:
    ld [$c551], a
    ret


jr_002_5989:
    ld a, [$c551]
    dec a
    jr jr_002_5985

Call_002_598f:
    xor a
    ld c, a
    ld a, [$c543]
    cp $02
    jr nz, jr_002_599a

    ld c, $08

jr_002_599a:
    ld d, $10
    ld a, $04
    add c
    call Call_002_6319
    ld a, [de]
    cp $12
    jp z, Jump_002_5a68

    ld d, $0a
    ld a, $04
    add c
    call Call_002_6319
    ld a, [hl]
    cp $02
    jr z, jr_002_59c4

    ld d, $14
    ld a, $04
    add c
    call Call_002_6319
    ld a, [hl]
    cp $02
    jr z, jr_002_59c4

    xor a
    ret


jr_002_59c4:
    ld a, $ff
    and a
    ret


jr_002_59c8:
    ld a, $ff
    ld [$c554], a
    and a
    ret


Call_002_59cf:
    xor a
    ld [$c554], a
    ld [$c568], a
    ld d, $10
    ld a, $04
    call Call_002_6319
    ld a, [de]
    cp $12
    jp z, Jump_002_5a68

    ld d, $09
    ld a, $ff
    call Call_002_6319
    ld a, [de]
    cp $10
    jr z, jr_002_59c8

    ld a, [hl]
    cp $02
    jr nz, jr_002_59fd

    ld c, a
    ld a, [$c568]
    inc a
    ld [$c568], a
    ld a, c

jr_002_59fd:
    ld c, a
    and $7f
    cp $08
    jr nz, jr_002_5a09

    call Call_002_5a97
    jr jr_002_5a1c

jr_002_5a09:
    cp $09
    jr nz, jr_002_5a12

    call Call_002_5abd
    jr jr_002_5a1c

jr_002_5a12:
    cp $5f
    jr z, jr_002_5a19

    xor a
    jr jr_002_5a1c

jr_002_5a19:
    call Call_002_5a80

jr_002_5a1c:
    ld c, a
    ld a, [$c568]
    or c
    ld [$c568], a
    ld d, $15
    ld a, $ff
    call Call_002_6319
    ld a, [de]
    cp $10
    jr z, jr_002_59c8

    ld a, [hl]
    cp $02
    jr z, jr_002_5a5f

    ld c, a
    and $7f
    cp $08
    jr nz, jr_002_5a43

    call Call_002_5a97
    jr nz, jr_002_5a5f

    jr jr_002_5a57

jr_002_5a43:
    cp $09
    jr nz, jr_002_5a4e

    call Call_002_5abd
    jr nz, jr_002_5a5f

    jr jr_002_5a57

jr_002_5a4e:
    cp $5f
    jr nz, jr_002_5a57

    call Call_002_5a80
    jr nz, jr_002_5a5f

jr_002_5a57:
    ld a, [$c568]
    and a
    jr nz, jr_002_5a5f

    xor a
    ret


jr_002_5a5f:
    ld c, $19
    call Call_000_3da4
    ld a, $ff
    and a
    ret


Jump_002_5a68:
    ld a, [$c543]
    cp $03
    jr nz, jr_002_5a71

    xor a
    ret


jr_002_5a71:
    call Call_002_63b7
    ld a, [$c543]
    cp $03
    jr nz, jr_002_5a7d

    xor a
    ret


jr_002_5a7d:
    ld a, $ff
    ret


Call_002_5a80:
    ld a, [$c542]
    xor $01
    ld [$c542], a
    ld a, [$c555]
    and a
    jr nz, jr_002_5a93

    ld a, $19
    ld [$c555], a

jr_002_5a93:
    ld a, $ff
    and a
    ret


Call_002_5a97:
    ld a, $28
    add l
    ld e, a
    ld a, [de]
    cp $e0
    jr c, jr_002_5ab7

    call Call_000_1ed7
    bit 7, a
    jr nz, jr_002_5abb

    ld a, [$c55c]
    and a
    jr nz, jr_002_5ab7

    inc a
    ld [$c55c], a
    ld a, $89
    ld [bc], a
    call Call_000_0d61

jr_002_5ab7:
    ld a, $ff
    and a
    ret


jr_002_5abb:
    xor a
    ret


Call_002_5abd:
    ld a, $28
    add l
    ld e, a
    ld a, [de]
    cp $e0
    ret c

    call Call_000_1ed7
    bit 7, a
    ret nz

    ld a, [$c55c]
    and a
    jr nz, jr_002_5adb

    inc a
    ld [$c55c], a
    ld a, $88
    ld [bc], a
    call Call_000_0d61

jr_002_5adb:
    ld a, $ff
    and a
    ret


Call_002_5adf:
    ld a, $28
    add l
    ld e, a
    ld a, [de]
    cp $e0
    ret c

    call Call_000_1ed7
    bit 7, a
    jr z, jr_002_5afc

    ld a, [$c55c]
    and a
    jr nz, jr_002_5afc

    inc a
    ld [$c55c], a
    ld a, $ff
    and a
    ret


jr_002_5afc:
    ld a, $89
    ld [bc], a
    call Call_000_0d61
    ld a, $ff
    and a
    ret


Jump_002_5b06:
    ld a, [$c55f]
    and a
    ld c, $00
    jr z, jr_002_5b10

    ld c, $12

jr_002_5b10:
    call Call_000_3da4
    ld a, [$c147]
    bit 0, a
    jr nz, jr_002_5b30

jr_002_5b1a:
    ld a, $01
    ld [$c543], a
    ld a, [$c55f]
    ld c, a
    ld a, [$c56c]
    or c
    jp nz, Jump_002_585c

    ld hl, $54de
    jp Jump_002_5352


jr_002_5b30:
    call Call_002_59cf
    jr z, jr_002_5b47

    xor a
    ld [$c551], a
    ld a, $01
    ld [$c543], a
    ld hl, $54f3
    call Call_002_5352
    jp Jump_002_585c


jr_002_5b47:
    ld a, [$c551]
    ld c, a
    cp $10
    jr z, jr_002_5b1a

    ld a, c
    inc a
    ld [$c551], a
    ld a, [$c55f]
    and a
    jr z, jr_002_5b5f

    ld a, $fe
    jp Jump_002_62f4


jr_002_5b5f:
    ld a, $fc
    jp Jump_002_62f4


Call_002_5b64:
    xor a
    ld c, a
    ld a, [$c557]
    add c
    ld [$c557], a
    ld a, [$c556]
    cp $08
    jr nc, jr_002_5b77

    xor a
    jr jr_002_5b79

jr_002_5b77:
    ld a, $0f

jr_002_5b79:
    ld [$c556], a
    jr jr_002_5b7f

Call_002_5b7e:
    ld c, a

jr_002_5b7f:
    ld a, [hl]
    and $0f
    swap a
    ld b, a
    ld a, [$c556]
    add b
    ld h, $54
    ld l, a
    ld a, [$c557]
    ld b, a
    ld a, [hl]
    sub b
    add c
    bit 7, a
    jr nz, jr_002_5b9d

    cp $05
    jr nc, jr_002_5bab

    jr jr_002_5ba1

jr_002_5b9d:
    cp $fc
    jr c, jr_002_5bab

jr_002_5ba1:
    call Call_002_62f4
    ld a, $01
    ld [$c560], a
    xor a
    ret


jr_002_5bab:
    ld a, $ff
    ret


Call_002_5bae:
    xor a
    ld [$c558], a
    ld [$c55e], a
    ld [$c55d], a
    ld [$c560], a
    ld d, $10
    ld c, $20
    ld a, [$c56f]
    add c
    call Call_002_6319
    ld a, [hl]
    bit 7, a
    jr z, jr_002_5bd6

    ld [$c558], a
    ld a, [$c56f]
    call Call_002_5b7e
    and a
    ret z

jr_002_5bd6:
    ld d, $10
    ld c, $20
    ld a, [$c56e]
    add c
    call Call_002_6319
    ld a, [de]
    cp $80
    jr nz, jr_002_5bf7

    ld a, [$c55e]
    inc a
    ld [$c55e], a
    call Call_002_5e48
    ld c, $1d
    call Call_000_3da4
    xor a
    ret


jr_002_5bf7:
    ld a, [hl]
    ld [$c55d], a
    bit 7, a
    jr z, jr_002_5c07

    ld a, [$c56e]
    call Call_002_5b7e
    and a
    ret z

jr_002_5c07:
    ld d, $10
    ld a, $10
    call Call_002_6319
    ld a, [hl]
    cp $02
    jr nz, jr_002_5c1b

    ld a, $f0
    call Call_002_62f7
    jp Jump_002_5c90


jr_002_5c1b:
    ld a, [$c570]
    add $09
    ld d, a
    ld a, $20
    call Call_002_6319
    ld a, [$c557]
    cp $04
    jr nc, jr_002_5c4e

    ld a, [hl]
    and $7f
    cp $02
    jr z, jr_002_5c90

    cp $01
    jr z, jr_002_5c90

    cp $05
    jr z, jr_002_5c90

    cp $09
    jr z, jr_002_5c90

    cp $5f
    jr z, jr_002_5c90

    cp $0b
    jp z, Jump_002_5d70

    cp $0c
    jp z, Jump_002_5d69

jr_002_5c4e:
    ld a, [hl]
    bit 7, a
    jp nz, Jump_002_5d20

    ld a, [$c570]
    add $15
    ld d, a
    ld a, $20
    call Call_002_6319
    ld a, [$c557]
    cp $04
    jr nc, jr_002_5c87

    ld a, [hl]
    and $7f
    cp $02
    jr z, jr_002_5c90

    cp $01
    jr z, jr_002_5c90

    cp $05
    jr z, jr_002_5c90

    cp $09
    jr z, jr_002_5c90

    cp $5f
    jr z, jr_002_5c90

    cp $0b
    jp z, Jump_002_5d70

    cp $0c
    jp z, Jump_002_5d69

jr_002_5c87:
    ld a, [hl]
    bit 7, a
    jp nz, Jump_002_5d20

    jp Jump_002_5d1d


Jump_002_5c90:
jr_002_5c90:
    xor a
    ld [$c564], a
    ld a, [$c552]
    and a
    jr z, jr_002_5cb7

    push hl
    inc l
    ld a, [hl]
    pop hl
    cp $02
    jr z, jr_002_5cd2

    cp $01
    jr z, jr_002_5cd2

    push hl
    ld a, l
    sub $04
    ld l, a
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_002_5cdf

    cp $02
    jr z, jr_002_5cdf

    jr jr_002_5cd2

jr_002_5cb7:
    push hl
    dec l
    ld a, [hl]
    pop hl
    cp $02
    jr z, jr_002_5cd2

    cp $01
    jr z, jr_002_5cd2

    push hl
    ld a, l
    sub $04
    ld l, a
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_002_5cfc

    cp $02
    jr z, jr_002_5cfc

jr_002_5cd2:
    ld a, [$c557]
    and a
    jr z, jr_002_5cdd

    cpl
    inc a
    call Call_002_62f7

jr_002_5cdd:
    xor a
    ret


jr_002_5cdf:
    ld a, [$c17c]
    cp $0d
    jr nz, jr_002_5ced

    ld a, [$c548]
    and $7f
    jr nz, jr_002_5d0e

jr_002_5ced:
    ld a, $04
    call Call_002_62d2
    xor a
    ld [$c563], a
    ld [$c570], a
    ld a, $ff
    ret


jr_002_5cfc:
    ld a, [$c570]
    bit 7, a
    jr nz, jr_002_5cd2

    push hl
    ld a, l
    sub $05
    ld l, a
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_002_5cd2

jr_002_5d0e:
    ld a, $fc
    call Call_002_62d2
    xor a
    ld [$c563], a
    ld [$c570], a
    ld a, $ff
    ret


Jump_002_5d1d:
jr_002_5d1d:
    ld a, $ff
    ret


Jump_002_5d20:
    ld a, [$c543]
    cp $01
    jr nz, jr_002_5d61

    ld a, [$c55d]
    bit 7, a
    jr nz, jr_002_5d1d

    cp $01
    jr z, jr_002_5cdd

    cp $02
    jr z, jr_002_5cdd

    ld a, [$c570]
    bit 7, a
    jr z, jr_002_5d4a

    push hl
    ld a, l
    add $03
    ld l, a
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_002_5d1d

    jr jr_002_5d55

jr_002_5d4a:
    push hl
    ld a, l
    add $05
    ld l, a
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_002_5d1d

jr_002_5d55:
    xor a
    call Call_002_5b64
    and a
    jr nz, jr_002_5d1d

    xor a
    ld [$c558], a
    ret


jr_002_5d61:
    xor a
    call Call_002_5b64
    and a
    jr nz, jr_002_5d1d

    ret


Jump_002_5d69:
    ld a, $01
    ld [$c564], a
    xor a
    ret


Jump_002_5d70:
    call Call_002_5adf
    ld a, $ff
    ld [$c565], a
    xor a
    ret


    ret


Call_002_5d7b:
Jump_002_5d7b:
    xor a
    ld [$c571], a
    ld [$c566], a
    ld [$c567], a
    ld a, [$c548]
    and a
    jr z, jr_002_5d92

    ld a, [$c54a]
    and a
    jp z, Jump_002_5db1

jr_002_5d92:
    call Call_002_5bae
    bit 7, a
    jr z, jr_002_5da1

    ld a, [$c548]
    and a
    jr nz, jr_002_5db1

    jr jr_002_5e14

jr_002_5da1:
    ld a, [$c567]
    inc a
    ld [$c567], a
    ld a, [$c55e]
    and a
    jr z, jr_002_5db1

    jp Jump_002_5e20


Jump_002_5db1:
jr_002_5db1:
    ld a, [$c477]
    bit 0, a
    jr nz, jr_002_5dc8

    ld a, [$c147]
    bit 0, a
    jr z, jr_002_5dc8

    ld c, a
    or $01
    ld [$c477], a
    jp Jump_002_5df7


jr_002_5dc8:
    ld a, [$c147]
    bit 7, a
    ret z

    ld d, $10
    ld a, $20
    call Call_002_6319
    ld a, [hl]
    cp $05
    jr nz, jr_002_5dec

    xor a
    ld [$c567], a
    ld [$c570], a
    ld a, $05
    ld [$c543], a
    ld hl, $54e6
    jp Jump_002_5352


jr_002_5dec:
    ld a, $02
    ld [$c543], a
    ld hl, $54e4
    jp Jump_002_5352


Jump_002_5df7:
    ld a, $04
    ld [$c543], a
    ld a, $08
    ld [$c551], a
    xor a
    ld [$c567], a
    ld [$c549], a
    ld [$c548], a
    ld [$c560], a
    ld hl, $54de
    jp Jump_002_5352


jr_002_5e14:
    xor a
    ld [$c551], a
    ld a, $01
    ld [$c543], a
    jp Jump_002_585c


Jump_002_5e20:
    xor a
    ld [$c567], a
    ld a, [$c147]
    bit 0, a
    jr z, jr_002_5e3d

    ld c, a
    ld a, [$c477]
    or c
    ld [$c477], a
    ld a, $04
    ld [$c543], a
    xor a
    ld [$c551], a
    ret


jr_002_5e3d:
    ld a, $0c
    ld [$c551], a
    ld a, $01
    ld [$c543], a
    ret


Call_002_5e48:
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld bc, $0008
    add hl, bc
    ld a, l
    and $f0
    ld [$c20f], a
    ld a, h
    ld [$c210], a
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld bc, $0010
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c211], a
    ld a, h
    ld [$c212], a
    jp Jump_000_3e21


Call_002_5e7a:
    ld a, [$c560]
    and a
    ret z

    ld a, [$c558]
    and a
    ret z

    ld a, [$c147]
    and $30
    ret nz

    ld a, [$c558]
    and $0f
    cp $02
    jr z, jr_002_5eaa

    cp $03
    ret nz

    ld a, [$c570]
    bit 7, a
    jr nz, jr_002_5ec1

    ld c, a
    ld a, [$c56e]
    cp c
    jp z, Jump_002_627e

    ld a, c
    inc a
    jp Jump_002_627e


jr_002_5eaa:
    ld a, [$c570]
    and a
    jr z, jr_002_5eb4

    bit 7, a
    jr z, jr_002_5ec1

jr_002_5eb4:
    ld c, a
    ld a, [$c56f]
    cp c
    jp z, Jump_002_6282

    ld a, c
    dec a
    jp Jump_002_6282


jr_002_5ec1:
    ld a, [$c563]
    and a
    ret z

    dec a
    ld [$c563], a
    ret


Call_002_5ecb:
    ld a, [$c543]
    cp $03
    ret z

    ld a, [$c543]
    cp $02
    jr z, jr_002_5f24

    ld a, [$c548]
    and a
    jr nz, jr_002_5ee8

    ld a, [$c546]
    and a
    jr z, jr_002_5ee8

    bit 7, a
    jr z, jr_002_5eff

jr_002_5ee8:
    ld a, [$c147]
    ld c, a
    and $c0
    jr z, jr_002_5ef7

    ld a, [$c543]
    cp $05
    jr z, jr_002_5eff

jr_002_5ef7:
    ld a, c
    and $20
    jr z, jr_002_5eff

    call Call_002_6250

jr_002_5eff:
    ld a, [$c548]
    and a
    jr nz, jr_002_5f0c

    ld a, [$c546]
    bit 7, a
    jr nz, jr_002_5f24

jr_002_5f0c:
    ld a, [$c147]
    and $c0
    jr z, jr_002_5f1a

    ld a, [$c543]
    cp $05
    jr z, jr_002_5f24

jr_002_5f1a:
    ld a, [$c147]
    and $10
    jr z, jr_002_5f24

    call Call_002_626b

jr_002_5f24:
    ld a, [$c543]
    cp $02
    jr z, jr_002_5f32

    ld a, [$c147]
    and $30
    jr nz, jr_002_5f35

jr_002_5f32:
    call Call_002_5e7a

jr_002_5f35:
    jp Jump_002_60f4


Call_002_5f38:
    ld [$c556], a
    ld a, [$c560]
    and a
    jr nz, jr_002_5f64

    ld a, [de]
    sub $80
    and $0f
    swap a
    ld c, a
    ld a, [$c556]
    add c
    ld h, $54
    ld l, a
    ld a, [$c557]
    ld c, a
    ld a, [hl]
    sub c
    bit 7, a
    jr z, jr_002_5f64

    cp $fc
    jr c, jr_002_5f60

    xor a
    ret


jr_002_5f60:
    ld a, $ff
    and a
    ret


jr_002_5f64:
    xor a
    ret


Call_002_5f66:
Jump_002_5f66:
    ld a, [$c570]
    add $09
    ld d, a
    ld a, [$c571]
    ld c, a
    ld a, $1f
    sub c
    call Call_002_6319
    ld a, [hl]
    bit 7, a
    jr z, jr_002_5f8a

    and $10
    jr z, jr_002_5f8a

    ld a, $0f
    push hl
    call Call_002_5f38
    pop hl
    and a
    jp nz, Jump_002_5ff8

jr_002_5f8a:
    ld a, [hl]
    cp $02
    jr z, jr_002_5ff8

    cp $09
    jr z, jr_002_5ff8

    cp $5f
    jr z, jr_002_5ff8

    cp $0c
    jr nz, jr_002_5fa1

    ld a, [$c564]
    and a
    jr nz, jr_002_5ff8

jr_002_5fa1:
    ld a, [$c543]
    cp $02
    jr z, jr_002_5fcf

    push hl
    ld a, l
    sub $04
    ld l, a
    ld a, [hl]
    pop hl
    cp $02
    jr z, jr_002_5ff8

    cp $09
    jr z, jr_002_5ff8

    cp $5f
    jr z, jr_002_5ff8

    ld d, $05
    ld a, $02
    call Call_002_6319
    ld a, [hl]
    cp $02
    jr z, jr_002_5ff8

    cp $09
    jr z, jr_002_5ff8

    cp $5f
    jr z, jr_002_5ff8

jr_002_5fcf:
    ld a, [$c55f]
    and a
    jr z, jr_002_5fe6

    ld a, [$c570]
    bit 7, a
    jr z, jr_002_5fe2

    srl a
    or $80
    jr jr_002_5fe9

jr_002_5fe2:
    srl a
    jr jr_002_5fe9

jr_002_5fe6:
    ld a, [$c570]

jr_002_5fe9:
    ld c, a
    ld a, [$c549]
    add c
    jr z, jr_002_600c

    ld c, a
    bit 7, a
    jr z, jr_002_600c

    jp Jump_002_6027


Jump_002_5ff8:
jr_002_5ff8:
    ld a, [$c560]
    and a
    jr z, jr_002_600c

    push hl
    ld a, l
    sub $04
    ld l, a
    ld a, [hl]
    pop hl
    and a
    jr z, jr_002_5fcf

    bit 7, a
    jr nz, jr_002_5fcf

jr_002_600c:
    ld a, [$c549]
    bit 7, a
    jr z, jr_002_601c

    ld a, [$c548]
    and a
    jr nz, jr_002_601c

    call Call_002_63b7

jr_002_601c:
    xor a
    ld [$c563], a
    ld [$c570], a
    ld [$c553], a
    ret


Jump_002_6027:
    ld a, c
    jp Jump_002_62d2


Call_002_602b:
Jump_002_602b:
    ld a, [$c570]
    add $15
    ld d, a
    ld a, [$c571]
    ld b, a
    ld a, $1f
    sub b
    call Call_002_6319
    ld a, [hl]
    bit 7, a
    jr z, jr_002_604f

    and $10
    jr z, jr_002_604f

    xor a
    push hl
    call Call_002_5f38
    pop hl
    jr z, jr_002_604f

    jp Jump_002_60be


jr_002_604f:
    cp $02
    jr z, jr_002_60be

    cp $09
    jr z, jr_002_60be

    cp $5f
    jr z, jr_002_60be

    cp $0c
    jr nz, jr_002_6065

    ld a, [$c564]
    and a
    jr nz, jr_002_60be

jr_002_6065:
    ld a, [$c543]
    cp $02
    jr z, jr_002_6093

    push hl
    ld a, l
    sub $04
    ld l, a
    ld a, [hl]
    pop hl
    cp $02
    jr z, jr_002_60be

    cp $09
    jr z, jr_002_60be

    cp $5f
    jr z, jr_002_60be

    ld d, $19
    ld a, $02
    call Call_002_6319
    ld a, [hl]
    cp $02
    jr z, jr_002_60be

    cp $09
    jr z, jr_002_60be

    cp $5f
    jr z, jr_002_60be

jr_002_6093:
    ld a, [$c55f]
    and a
    jr z, jr_002_60ad

    ld a, [$c570]
    bit 7, a
    jr z, jr_002_60a9

    srl a
    jr z, jr_002_60ad

    or $80
    jp Jump_002_60b0


jr_002_60a9:
    srl a
    jr nz, jr_002_60b0

jr_002_60ad:
    ld a, [$c570]

Jump_002_60b0:
jr_002_60b0:
    ld c, a
    ld a, [$c549]
    add c
    jr z, jr_002_60d2

    ld c, a
    bit 7, a
    jr nz, jr_002_60d2

    jr jr_002_60f0

Jump_002_60be:
jr_002_60be:
    ld a, [$c560]
    and a
    jr z, jr_002_60d2

    push hl
    ld a, l
    sub $04
    ld l, a
    ld a, [hl]
    pop hl
    and a
    jr z, jr_002_6093

    and $80
    jr nz, jr_002_6093

jr_002_60d2:
    ld a, [$c549]
    and a
    jr z, jr_002_60e5

    and $80
    jr nz, jr_002_60e5

    ld a, [$c548]
    and a
    jr nz, jr_002_60e5

    call Call_002_63b7

jr_002_60e5:
    xor a
    ld [$c563], a
    ld [$c570], a
    ld [$c553], a
    ret


jr_002_60f0:
    ld a, c
    jp Jump_002_62d2


Jump_002_60f4:
    ld a, [$c543]
    cp $02
    jr z, jr_002_6134

    ld a, [$c147]
    bit 5, a
    jr z, jr_002_6119

    ld a, [$c570]
    bit 7, a
    jr z, jr_002_610c

    jp Jump_002_61a9


jr_002_610c:
    ld a, [$c563]
    and a
    jr z, jr_002_6134

    dec a
    ld [$c563], a
    jp Jump_002_6134


jr_002_6119:
    ld a, [$c147]
    bit 4, a
    jr z, jr_002_6134

    ld a, [$c570]
    bit 7, a
    jr nz, jr_002_612a

    jp Jump_002_61a9


jr_002_612a:
    ld a, [$c563]
    and a
    jr z, jr_002_6134

    dec a
    ld [$c563], a

Jump_002_6134:
jr_002_6134:
    xor a
    ld [$c570], a
    ld a, [$c563]
    and a
    jr z, jr_002_6182

    ld a, [$c553]
    bit 7, a
    jr z, jr_002_615b

    ld a, [$c563]
    ld hl, $54a4
    add l
    ld l, a
    ld a, [hl]
    cpl
    inc a
    ld [$c570], a
    and a
    jr z, jr_002_616d

    call nz, Call_002_5f66
    jr jr_002_616d

jr_002_615b:
    ld a, [$c563]
    ld hl, $54a4
    add l
    ld l, a
    ld a, [hl]
    ld [$c570], a
    and a
    jr z, jr_002_616d

    call nz, Call_002_602b

jr_002_616d:
    ld a, [$c563]
    and a
    jr z, jr_002_6182

    dec a
    ld [$c563], a
    cp $08
    jr c, jr_002_6182

    ld a, [$c559]
    inc a
    ld [$c559], a

jr_002_6182:
    ld a, [$c543]
    and a
    jr nz, jr_002_618e

    ld hl, $52ba
    call Call_002_5352

jr_002_618e:
    ld a, [$c147]
    and $f0
    jr nz, jr_002_619e

    ld a, [$c563]
    and a
    jr nz, jr_002_619e

    call Call_002_6209

jr_002_619e:
    ld a, [$c545]
    ld c, a
    ld a, [$c548]
    or c
    jr nz, jr_002_61e5

    ret


Jump_002_61a9:
    ld a, [$c543]
    cp $00
    jr nz, jr_002_61b6

    ld hl, $54d9
    call Call_002_5352

jr_002_61b6:
    ld a, [$c570]
    bit 7, a
    jr nz, jr_002_61d4

    ld a, [$c552]
    and a
    jr z, jr_002_61ca

    ld a, [$c559]
    inc a
    ld [$c559], a

jr_002_61ca:
    ld a, [$c545]
    bit 7, a
    jr nz, jr_002_61e5

    jp Jump_002_602b


jr_002_61d4:
    ld a, [$c552]
    and a
    jr nz, jr_002_61e1

    ld a, [$c559]
    inc a
    ld [$c559], a

jr_002_61e1:
    call Call_002_5f66
    ret


jr_002_61e5:
    ld a, [$c570]
    and a
    ret nz

    ld a, [$c549]
    and a
    ret z

    bit 7, a
    jr nz, jr_002_61fd

    ld a, [$c545]
    bit 7, a
    ret nz

    call Call_002_602b
    ret


jr_002_61fd:
    ld a, [$c545]
    and a
    jr z, jr_002_6206

    bit 7, a
    ret z

jr_002_6206:
    jp Jump_002_5f66


Call_002_6209:
    ld a, [$c147]
    ld c, a
    bit 2, a
    jr z, jr_002_6220

    ld a, [$c477]
    bit 2, a
    jr nz, jr_002_6220

    or $04
    ld [$c477], a
    jp Jump_002_623f


jr_002_6220:
    ld a, c
    bit 1, a
    ret z

    ld a, [$c477]
    bit 1, a
    ret nz

    or $02
    ld [$c477], a
    ld a, $01
    ld [$c570], a
    ld [$c553], a
    call Call_002_602b
    xor a
    ld [$c552], a
    ret


Jump_002_623f:
    ld a, $ff
    ld [$c570], a
    ld [$c553], a
    call Call_002_5f66
    ld a, $01
    ld [$c552], a
    ret


Call_002_6250:
    ld a, $01
    ld [$c552], a
    ld a, [$c570]
    ld c, a
    and a
    jr z, jr_002_625f

    bit 7, a
    ret z

jr_002_625f:
    ld a, [$c56f]
    cp c
    jp z, Jump_002_6282

    ld a, c
    dec a
    jp Jump_002_6282


Call_002_626b:
    xor a
    ld [$c552], a
    ld a, [$c570]
    bit 7, a
    ret nz

    ld c, a
    ld a, [$c56e]
    cp c
    jr z, jr_002_627e

    ld a, c
    inc a

Jump_002_627e:
jr_002_627e:
    ld d, $01
    jr jr_002_6284

Jump_002_6282:
    ld d, $ff

jr_002_6284:
    ld a, [$c570]
    bit 7, a
    jr z, jr_002_628d

    cpl
    inc a

jr_002_628d:
    ld e, a
    ld a, [$c56e]
    cp e
    jr z, jr_002_62b4

    ld a, [$c213]
    inc a
    ld [$c213], a
    ld c, e
    ld e, a
    ld a, $d4
    add c
    ld c, a
    ld b, $54
    ld a, [bc]
    cp e
    jr z, jr_002_62a9

    jr nc, jr_002_62b4

jr_002_62a9:
    ld a, [$c570]
    add d
    ld [$c570], a
    xor a
    ld [$c213], a

jr_002_62b4:
    ld a, [$c570]
    ld [$c553], a
    bit 7, a
    jr z, jr_002_62c0

    cpl
    inc a

jr_002_62c0:
    inc a
    sla a
    sla a
    sla a
    jr z, jr_002_62cb

    sub $02

jr_002_62cb:
    ld [$c563], a
    ret


    ld [$c570], a

Call_002_62d2:
Jump_002_62d2:
    ld c, a
    ld a, [$c53d]
    add c
    ld [$c53d], a
    ld a, c
    ld b, $00
    and $80
    jr z, jr_002_62e2

    dec b

jr_002_62e2:
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    add hl, bc
    ld a, l
    ld [$c156], a
    ld a, h
    ld [$c157], a
    ret


Call_002_62f4:
Jump_002_62f4:
    ld [$c571], a

Call_002_62f7:
    ld c, a
    ld a, [$c53c]
    add c
    ld [$c53c], a
    ld a, c
    ld b, $00
    and $80
    jr z, jr_002_6307

    dec b

jr_002_6307:
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    add hl, bc
    ld a, l
    ld [$c154], a
    ld a, h
    ld [$c155], a
    ret


Call_002_6319:
    add $10
    ld b, a
    ld a, [$c53c]
    add b
    ld b, a
    and $0f
    ld [$c557], a
    ld a, b
    and $f0
    srl a
    srl a
    ld e, a
    ld a, d
    add $08
    ld d, a
    ld a, [$c53d]
    add d
    ld d, a
    and $0f
    ld [$c556], a
    ld a, d
    swap a
    and $0f
    add e
    ld e, a
    ld d, $c5
    ld h, d
    ld l, $14
    add l
    ld l, a
    push hl
    push de
    pop hl
    pop de
    ret


Jump_002_634f:
    ld a, [$c55a]
    ld c, a
    ld a, [$c54e]
    cp c
    jr z, jr_002_635e

    ld [$c55a], a
    jr jr_002_636a

jr_002_635e:
    ld a, [$c55b]
    ld c, a
    ld a, [$c54f]
    cp c
    ret z

    ld [$c55b], a

Jump_002_636a:
jr_002_636a:
    call Call_000_0dc3
    ld a, [$c170]
    ld c, a
    ld b, $00
    dec hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld de, $c500
    ld b, $05

jr_002_637f:
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
    push de
    ld a, [$c170]
    ld e, a
    ld a, [$c171]
    ld d, a
    dec de
    dec de
    dec de
    dec de
    add hl, de
    pop de
    dec b
    jr nz, jr_002_637f

    ld hl, $c500
    ld de, $c528
    ld bc, $0014
    call Call_000_0913
    jp Jump_000_3cf8


    ld h, $c5
    ld b, $05
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_002_63b7:
Jump_002_63b7:
    call Call_000_38e6
    ret


    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, a
    nop
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    ld [bc], a
    db $d3
    nop
    ld [bc], a
    ld [bc], a
    db $d3
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ret nc

    pop de
    call nc, Call_000_00d5
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    ld hl, $2228
    inc h
    jr z, jr_002_6453

    jr z, @+$26

    jr z, @+$26

    inc h
    inc h
    ld hl, $2121
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, a
    nop
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

jr_002_6453:
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    call nz, $d202
    nop
    ld [bc], a
    ld [bc], a
    jp nc, RST_00

    nop
    nop
    ld [bc], a
    ld [bc], a
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
    nop

Jump_002_6496:
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    ld bc, $8000
    ld hl, $2228
    inc h
    jr z, jr_002_64d2

    inc h
    jr z, jr_002_64d2

    jr z, @+$2a

    inc h
    inc h
    inc h
    nop
    ld bc, $0100
    db $fc
    db $fd
    cp $ff
    db $fc
    db $fd
    cp $ff
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    db $10
    ld de, $1110
    ld [de], a
    inc de
    ld d, $17

jr_002_64d2:
    jr jr_002_64ed

    inc d
    dec d
    db $10
    ld a, [de]
    db $10
    ld de, $171b
    ld d, $17
    ld [bc], a
    inc bc
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc
    ld b, $07
    inc c
    dec c
    dec e
    ld e, $1e

jr_002_64ed:
    dec e
    rra
    jr nz, jr_002_6511

    rra
    ld hl, $2221
    ld [hl+], a
    inc hl
    inc h
    inc hl
    inc h
    dec h
    ld h, $25
    ld h, $27
    daa
    jr z, jr_002_652a

    inc hl
    add hl, hl
    ld a, [hl+]
    ld [hl+], a
    dec hl
    ld h, $22
    inc l
    dec l
    daa
    inc hl
    ld l, $27
    jr nc, @+$31

jr_002_6511:
    ld h, $25
    ld [hl-], a
    cp $28
    inc sp
    inc h
    jr z, @+$01

    db $fc
    ld hl, $3625
    ld hl, $37fd
    inc h
    ld [bc], a
    inc bc
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc

jr_002_652a:
    ld b, $07
    inc c
    dec c
    ld b, c
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, e
    ld b, h
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, l
    ld c, [hl]
    ld c, e
    ld c, h
    ld c, a
    ld d, b
    ld d, c
    ld bc, $5352
    nop
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, a
    ld e, c
    ld e, b
    ld e, b
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld h, b
    ld e, a
    ld h, c
    ld h, d
    ld h, h
    ld h, e
    ld h, l
    ld h, [hl]
    ld l, b
    ld h, a
    ld l, c
    ld l, d
    ld l, h
    ld l, e
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld [hl], e
    ld [hl], b
    ld [hl], c
    ld [hl], h
    ld [hl], l
    nop
    halt
    ld [hl], a
    ld a, b
    db $76
    ld a, c
    ld [hl], a
    ld a, d
    inc e
    ld a, e
    inc e
    ld a, h
    ld bc, $017d
    nop
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    add l
    nop
    adc b
    add [hl]
    add a
    adc c
    adc d
    nop
    dec h
    nop
    dec h
    adc e
    ld e, b
    adc e
    ld e, b
    ld e, b
    adc e
    ld e, b
    adc e
    inc h
    ld bc, $0124
    adc h
    adc l
    sub b
    inc e
    adc [hl]
    adc a
    inc e
    sub c
    sub d
    sub e
    sub e
    sub d
    sub h
    sub l
    sbc d
    sub d
    sub [hl]
    sub l
    sub e
    sub d
    sub [hl]
    sub a
    sub e
    sbc b
    sbc c
    sub e
    sbc d
    sub d
    sub d
    sbc e
    sub e
    sbc b
    sbc c
    sub e
    sbc h
    sbc l
    sub d
    sub e
    sbc [hl]
    sbc l
    sub d
    sbc e
    sbc [hl]
    sbc a
    sub h
    sub a
    sbc h
    sbc a
    nop
    ld bc, $a1a0
    nop
    ld bc, $01a2
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    or b
    xor d
    ld bc, $abb7
    xor h
    ld bc, $aead
    xor a
    or e
    or c
    or d
    or a
    or b
    or l
    or [hl]
    xor e
    ld bc, $b8b3
    nop
    ld bc, $bab9
    nop
    ld bc, $bab9
    nop
    ld bc, $bdbc
    cp a
    ret nz

    cp [hl]
    cp [hl]
    pop bc
    jp nz, $bebe

    jp $c4b7


    push bc
    add $c0
    rst $00
    cp [hl]
    pop bc
    ret z

    cp [hl]
    cp [hl]
    nop
    ld bc, $cac9
    ret


    jp z, $cccb

    call $cfce
    ret nc

    nop
    ld bc, $cecd
    nop
    pop de
    nop
    ld bc, $d3d2
    dec h
    ld [hl], $21
    ld hl, $2222
    call nc, $37d5
    inc h
    sub $01
    nop
    ld bc, $d700
    nop
    ret c

    reti


    ld bc, $01da
    db $db
    db $dd
    call c, $ddde
    db $dd
    sbc $de
    db $dd
    rst $18
    sbc $e0
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    pop hl
    ld [c], a
    push hl
    rst $20
    jp c, $e701

    rst $20
    nop
    ld bc, $e6e7
    nop
    ret c

    add sp, -$16
    jp hl


    db $eb
    db $ec
    ld [$ebed], a
    xor $31
    rst $28
    inc [hl]
    dec [hl]
    ld sp, $3438
    inc e
    inc e
    inc e
    inc e
    ld c, $0f
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $bab9
    nop
    pop de
    nop
    ld bc, $01d6
    nop
    ld bc, $01d9
    jp c, $0001

    rst $10
    nop
    ret c

    nop
    rst $10
    nop
    ret c

    nop
    ld bc, $bdbc
    nop
    ld bc, $bab9
    nop
    ld bc, $bab9
    nop
    ld bc, $bab9
    nop
    ld bc, $bdbc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    db $fc
    db $fd
    cp $ff
    db $fc
    db $fd
    cp $ff
    ld [hl], $37
    jr c, jr_002_6707

    ld a, [hl-]
    dec sp
    inc a
    dec a
    db $10
    ld de, $1110
    ld [de], a
    inc de
    ld d, $17
    jr jr_002_66f5

    inc d
    dec d
    db $10
    ld a, [de]
    db $10
    ld de, $171b
    ld d, $17
    ld [bc], a
    inc bc
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc
    ld b, $07
    inc c
    dec c
    dec e
    ld e, $1d

jr_002_66f5:
    ld e, $1f
    jr nz, jr_002_6737

    ccf
    ld hl, $2221
    ld [hl+], a
    inc hl
    inc h
    inc hl
    inc h
    dec h
    ld h, $25
    ld h, $27

jr_002_6707:
    daa
    jr z, jr_002_6732

    inc hl
    add hl, hl
    ld a, [hl+]
    ld [hl+], a
    dec hl
    ld h, $22
    inc l
    dec l
    daa
    inc hl
    ld l, $27
    jr nc, jr_002_6748

    ld h, $25
    ld [hl-], a
    cp $28
    inc sp
    inc h
    jr z, @+$01

    db $fc
    ld hl, $3425
    ld hl, $35fd
    inc h
    ld [bc], a
    inc bc
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc

jr_002_6732:
    ld b, $07
    inc c
    dec c
    reti


jr_002_6737:
    reti


    dec e
    ld e, $00
    jp Boot


    ret z

    ld bc, $0100
    reti


    reti


    push de
    sub $40
    ld b, c

jr_002_6748:
    ld b, h
    ld b, l
    ld b, d
    ld b, e
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, l
    ld c, c
    ld c, d
    ld b, [hl]
    ld c, l
    ld c, e
    ld c, h
    nop
    ld bc, $4f4e
    ld c, [hl]
    ld d, b
    ld d, c
    ld d, e
    ld d, c
    ld d, d
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    inc hl
    ld h, $23
    ld h, $1c
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    nop
    ld bc, $5756
    nop
    ld bc, $0158
    ld e, c
    ld e, d
    ld e, h
    ld e, l
    ld e, e
    ld bc, $015e
    nop
    ld bc, $015f
    nop
    ld h, b
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
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    add a
    adc b
    adc b
    add a
    adc c
    adc d
    adc a
    add a
    adc e
    adc d
    adc b
    add a
    adc e
    adc h
    adc b
    adc l
    adc [hl]
    adc b
    adc a
    add a
    add a
    sub b
    adc b
    adc l
    adc [hl]
    adc b
    sub c
    sub d
    add a
    adc b
    sub e
    sub d
    add a
    sub b
    sub e
    sub h
    adc c
    adc h
    sub c
    sub h
    nop
    ld bc, $9596
    nop
    ld bc, $9700
    sbc c
    sbc b
    sbc e
    sbc d
    sbc l
    sbc h
    and l
    sbc [hl]
    ld bc, $a09f
    xor h
    ld bc, $a3a1
    and d
    xor b
    and h
    and a
    and [hl]
    and l
    xor h
    xor e
    xor d
    nop
    and b
    xor l
    xor b
    nop
    ld bc, $aeaf
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    nop
    ld bc, $b1b2
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    or h
    or l
    or e
    or e
    xor h
    or [hl]
    cp b

Call_002_6809:
    or a
    or h
    cp c
    or e
    cp d
    ld a, a
    add b
    add c
    ld bc, $8382
    add l
    add [hl]
    add h
    ld bc, $01bc
    cp l
    cp [hl]
    ret nz

    pop bc
    cp a
    ld bc, $01c2
    nop
    ld bc, $c400
    nop
    call $ce00
    rst $08
    rst $08
    ret nc

    ret nc

    rst $08
    pop de
    ret nc

    jp nc, $1c1c

    inc e
    inc e
    nop
    ret


    nop
    jp z, Jump_000_01cb

    call z, $cd01
    rst $08
    adc $d0
    rst $08
    rst $08
    ret nc

    ret nc

    rst $08
    pop de
    ret nc

    jp nc, $d4d3

    db $d3
    call nc, $d6d5
    db $d3
    call nc, $d9d7
    call z, $d901
    reti


    nop
    ld bc, $d8d9
    nop
    jp z, $dcda

jr_002_6860:
    db $db
    db $dd
    sbc $dc
    rst $18
    db $dd
    ldh [$e2], a
    pop hl
    ld sp, $e2e4
    db $e3
    ld sp, $1c1c
    inc e
    inc e
    reti


    reti


    nop
    ld bc, $0f0e
    inc d
    dec d
    db $fc
    db $fd
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $d3
    call nc, $d4d3
    dec e
    ld e, $1d
    ld e, $00
    ld bc, $aeaf
    nop
    ret


    nop
    jp z, Boot

    ld c, [hl]
    ld c, a
    inc hl
    ld h, $23
    ld h, $00
    ld bc, $b1b2
    rra
    jr nz, jr_002_68eb

    ccf
    nop
    ret


    nop
    jp z, Jump_000_01cb

    call z, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld bc, $00e4
    nop
    nop
    ld h, b
    jr jr_002_6860

    ld e, c
    ld d, a
    inc b
    ld bc, $0001
    ld de, $1c00
    nop
    add b
    nop
    inc e
    ld de, $1615
    add hl, de
    ld a, [de]
    jr c, @+$17

    jr jr_002_68f4

    rla

jr_002_68eb:
    add b
    ld [$1016], sp
    ld de, $1303
    inc d
    rla

jr_002_68f4:
    jr @+$15

    ld a, [de]
    adc b
    db $10
    add hl, de
    inc [hl]
    ld [$1014], sp
    ld h, $16
    ld hl, $2c86
    db $10
    add h
    ld d, $d0
    ld hl, $7b2c
    db $10
    rst $30
    ld b, e
    jp $430a


    dec e
    dec d
    ld [de], a
    ld d, e
    nop
    ld hl, $0787
    ld d, $1d
    inc e
    db $10
    db $10
    inc c
    or c
    nop
    ld de, $2fe3
    db $10
    inc de
    rrca
    ld d, e
    nop
    ld h, l
    adc [hl]
    rlca
    inc d
    ld b, c
    db $10
    ld h, h
    ld d, $09
    dec h
    cp l
    add hl, bc
    add hl, bc
    db $10
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld bc, $0058
    nop
    nop
    ld l, d
    ld b, d
    and $3e
    sbc $04
    ld bc, $0001
    stop
    dec d
    nop
    adc a
    nop
    db $10
    ld bc, $1e09
    nop
    dec d
    ld [de], a
    inc bc
    nop
    ld h, a
    ld d, $0f
    db $10
    inc a
    ld h, $01
    nop
    ld de, $1bf1
    rrca
    add hl, de
    ld a, [de]
    ld h, [hl]
    dec c
    add hl, bc
    add c
    rrca
    rla
    jr jr_002_69d7

    rrca
    add hl, bc
    add e
    rrca
    ld [hl], c
    rst $08
    ld bc, $732d
    rla
    ld c, c
    ld c, a
    ccf
    jp hl


    ld [bc], a
    ld c, a
    dec a
    ccf
    ld [bc], a
    ld c, a
    jp hl


    inc bc
    cpl
    cp l
    inc h
    ld bc, $370f
    inc h
    or a
    add hl, bc
    ld c, a
    jp nc, Jump_000_03b8

    dec a
    ld c, a
    nop
    rst $30
    inc b
    dec e
    ld e, $1f
    nop
    inc b
    dec e
    db $f4
    inc b
    rra
    jr c, jr_002_69c1

    rra
    rrca
    sbc c
    nop
    ld a, [de]
    ld a, [bc]

jr_002_69aa:
    dec e
    ld c, b
    adc a
    nop
    inc de
    sub c
    ld d, $14
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld bc, $0058
    nop
    nop
    adc d
    di

jr_002_69c1:
    or h
    ld c, h
    inc e
    inc b
    ld bc, $0001
    stop
    dec d
    nop
    add b
    nop
    db $10
    add hl, de
    inc d
    inc bc
    inc de
    inc d
    scf
    inc de
    rrca

jr_002_69d7:
    nop
    jr c, jr_002_69de

    ld a, [bc]
    ld a, [de]
    ld [hl], e
    inc d

jr_002_69de:
    inc d
    rst $00
    inc bc
    nop
    db $10
    ld d, $bc
    rlca
    rrca
    rlca
    rra
    inc de
    rrca
    ld d, $01
    inc b
    ld bc, $6301
    nop
    ld a, [bc]
    dec d
    ld de, $18de
    cpl
    ld b, $0f
    rlca
    dec d
    inc d
    ld [bc], a
    inc bc
    ld [bc], a
    or a
    ld bc, $0a00
    cp l
    add hl, bc
    rra
    rla
    ld c, a
    jr nc, jr_002_69aa

    dec d
    ld [de], a
    ld [de], a
    sub c
    ld [$2713], sp
    cpl
    inc de
    ret nc

    inc d
    ld a, e
    ld e, a
    rlca
    cpl
    ret nc

    ld bc, $1c29
    add hl, de
    ld d, $15
    jr jr_002_6a4c

    ld a, [de]
    pop hl
    ld bc, $1062
    rla
    jr jr_002_6a30

    ld [de], a
    rla
    ld hl, $0922

jr_002_6a30:
    adc b
    inc bc
    db $10
    ld de, $1bd0
    ld [hl+], a
    add e
    inc e
    jr jr_002_6a4b

    dec c
    rla
    ld d, $18
    ld d, b
    ld de, $1849
    add hl, de
    ld h, a
    inc d
    inc c
    ld de, $2229
    rra

jr_002_6a4b:
    dec c

jr_002_6a4c:
    ld c, c
    add hl, de
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    db $ec
    nop
    nop
    inc bc
    push de
    sbc [hl]
    or e
    or e
    ld [hl], a
    ld [bc], a
    ld bc, $0001
    cp $00
    ld c, $00
    add [hl]
    nop
    ld [$3f3e], sp
    ld bc, $401b
    ld b, c
    ld b, d
    ld [bc], a
    ret nz

    inc c
    nop
    ld b, d
    ld a, $3a
    ccf
    dec d
    ld b, c
    ld [de], a
    nop
    ld d, $ca
    add hl, bc
    jr nc, jr_002_6aa6

    ld b, d
    rrca
    ld d, $40
    ld b, d
    sbc d
    ld sp, $0789
    ld b, d
    inc a
    ld hl, $0005
    ld d, $80
    inc de
    ld d, $3b
    dec a
    ld e, c
    dec d
    dec b
    add sp, $16
    nop
    ld d, c
    ld e, l
    ld [bc], a
    ld a, [hl-]
    ld [hl-], a
    rlca
    ccf
    rst $00
    adc a

jr_002_6aa6:
    ld b, d

jr_002_6aa7:
    cp l
    add hl, de
    dec sp
    ld l, $00
    sbc b
    sub l
    inc a
    nop
    dec a
    ld b, b
    add e
    db $fd
    dec d
    jp $9514


    db $10
    ld l, d
    ld l, e
    adc a
    ld bc, $0111
    jp Jump_000_1807


    inc bc
    rla
    adc $07
    dec h
    jr jr_002_6aa7

    ld b, l
    ld bc, $5000
    ld [bc], a
    dec b
    rla
    jr jr_002_6ad3

    add hl, de

jr_002_6ad3:
    rrca
    ld a, [de]
    ld de, $4240
    db $10
    and h
    ld a, [bc]
    dec b
    ldh a, [rNR21]
    nop
    ld de, $4140
    db $fd
    dec b
    ld d, b
    rst $20
    inc bc
    db $f4
    jr jr_002_6aa6

    jr jr_002_6b27

    inc e
    nop
    ld e, [hl]
    ld a, e
    ld e, a
    ld b, $03
    sub l
    ld [hl], c
    sbc l
    ld l, c
    dec sp
    cp l
    rst $00
    ld [de], a
    sbc l
    rlca
    sub l
    db $10
    cp b
    ld [bc], a
    add hl, bc
    pop de
    add hl, de
    ld a, d
    ld a, [de]
    rla
    ld l, b
    ld c, h
    db $fd
    ld h, $17
    jp z, Jump_000_17b7

    inc a
    cp e
    rla
    dec de
    pop bc
    rla
    db $fd
    add hl, bc
    ld [hl], a
    rst $20
    ld c, $32
    ld c, $9e
    inc de
    ld b, e
    ld c, $0b
    ld e, $7a
    ld c, $12
    db $fd
    ld e, b

jr_002_6b27:
    ld l, c
    dec a
    dec sp
    ld e, $3c
    dec a
    db $10
    inc d
    sub l
    ld [c], a
    add a
    ld [hl], d
    ld l, [hl]
    add hl, bc
    ld e, $d1
    ld de, $1d10
    db $fd
    or c
    ld h, $2a
    ld c, a
    ld [bc], a
    inc bc
    ld e, $00
    cpl
    jr nc, jr_002_6b4b

    inc b
    di
    inc de
    nop
    ld [hl], d

jr_002_6b4b:
    jp nc, $c404

    ld e, $c6
    ld c, $0d
    ld a, [bc]
    ld [c], a
    pop af
    inc b
    dec de
    dec c
    ld c, $eb
    rlca
    jr jr_002_6b7b

    db $10
    ld [hl], a
    inc bc
    ld sp, hl

jr_002_6b61:
    ccf
    ld a, h
    ld e, a
    ld bc, $6f11
    ld d, $3b
    ld a, $64
    ld bc, $71d1
    ld [hl], c
    inc bc
    ld [hl], e
    ld sp, hl
    ld d, $a5
    jr jr_002_6b61

    dec e
    db $fd
    inc a
    ld h, $09

jr_002_6b7b:
    db $fd
    ld sp, $327b
    dec b
    inc b
    ret z

    dec de
    ld a, [$2071]
    call nz, $950d
    ld [hl], c
    jr c, jr_002_6b99

    dec c
    adc $75
    db $fd
    ld [bc], a
    ld b, l
    db $e3
    ld [$0d1b], sp
    ld [hl], l
    rst $00
    inc bc

jr_002_6b99:
    ld [hl], $0d
    nop
    adc a
    ld [bc], a
    db $10
    ld h, b
    ld h, c
    inc bc
    ld a, $00
    ld h, d
    inc bc
    rra
    jp c, $0142

    ld d, $dc
    dec a
    dec h
    ld h, d
    inc d
    call c, Call_000_21f1
    ld sp, hl
    ldh [$0c], a
    db $fd
    ld e, c
    inc sp
    inc [hl]
    dec [hl]
    dec a
    ld [hl], $00
    ld [bc], a
    inc b
    ldh [rNR32], a
    nop
    rra
    ld hl, $6d1e
    ld h, c
    ld e, $00
    ld l, l
    ld hl, $c820
    add hl, bc
    dec [hl]
    ld [$091e], sp
    or a
    dec sp
    sub d
    ld [$1e1b], sp
    ld a, d
    dec de
    inc bc
    ld [hl], $6f
    db $10
    ld a, [bc]
    adc c
    ld sp, hl
    inc bc
    db $fd
    dec sp
    dec sp
    dec a
    dec sp
    ld [c], a
    ld [bc], a
    ld sp, hl
    ld de, $1f19
    dec h
    ld [de], a
    sub c
    rst $38
    ld de, $fc27
    ld [bc], a
    nop
    or [hl]
    ld bc, $0d01
    nop
    db $fd
    dec b
    db $10
    dec d
    dec de
    ld [$f0fc], a
    ld c, $07
    ld sp, hl
    scf
    jr c, jr_002_6c43

    ld c, [hl]
    cp h
    inc bc
    inc b
    inc c
    nop
    ld b, l
    ld a, c
    ld b, h
    rlca
    db $10
    ld [hl], h
    db $db
    jp nz, RST_10

    ld [hl], e
    ld h, e
    add hl, bc
    adc h
    ldh [$75], a
    ld c, a
    ld h, e
    ld a, c
    ld b, l
    ld bc, $7b1b
    ld h, e
    dec de
    dec c
    sbc [hl]
    dec de
    ld [bc], a
    ld [hl], $4c
    nop
    db $10
    ld [hl], c
    ld hl, sp+$02
    pop af
    sbc h
    cp a
    ld bc, $0173
    ld a, l
    ei
    dec b
    ld b, e
    push af
    ld e, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]

jr_002_6c43:
    ld a, [c]
    ld d, $ff
    rla
    daa
    db $fc
    rst $30
    inc b

jr_002_6c4b:
    dec c
    sub $08
    ld [hl], $aa
    db $ed
    jr jr_002_6c4b

    ld de, $3df9
    ld d, b
    ld d, h
    dec b
    inc b
    pop hl
    ld a, [bc]
    nop
    ld c, b
    ld b, a
    ld b, [hl]
    rst $00
    dec b
    ld [hl], b
    rst $20
    inc b
    ei
    ld e, $e9
    add hl, bc
    rst $18
    rst $28
    dec sp
    ld [bc], a
    ld a, [hl]
    ld de, $fb14
    ld a, h
    ld h, b
    ld [bc], a
    ld a, b
    pop af
    inc bc
    ld a, [bc]
    dec de
    inc e
    ld [hl], d
    dec e
    cp h
    rst $10
    ld h, b
    ld b, [hl]
    ld [hl], c
    pop af
    or h
    ld a, [hl]
    add hl, de
    ld a, [bc]
    rst $38
    ld a, h
    ld [hl], c
    rrca
    ld a, $10
    ld de, $7d04
    jr c, jr_002_6c9b

    nop
    db $e3
    add hl, bc
    db $fd
    ld d, l
    ld d, [hl]
    sub $05
    inc b
    inc d

jr_002_6c9b:
    ld e, l
    ld c, a
    ld c, l
    nop
    inc bc
    db $76
    ld c, l
    ld c, h
    ld c, e
    ld c, d
    ld c, c
    di
    ld [$0dfb], sp
    db $f4
    dec bc
    rst $18
    or a
    dec sp
    cp a
    ld [bc], a
    ld de, $6713
    ei
    ret nc

    ld h, h
    ld [de], a
    rrca
    ld h, h
    ld a, b
    db $db
    ld bc, $6e0a
    dec b
    ld [hl], e
    ld b, $bc
    db $e3
    ld [bc], a
    or c
    and d
    jp nz, $fb33

    ld h, a
    rst $30
    inc bc
    rst $38
    rst $00
    ld [bc], a
    rst $10
    rst $00
    rlca
    pop hl
    rst $00
    ld bc, $ef9f
    ld bc, $09fb
    sbc a
    ld [bc], a
    ld c, $1e
    db $fd
    ld d, a
    ld e, b
    dec b
    inc b
    sbc l
    pop bc
    ld h, a
    add hl, de
    ld d, c
    ld d, e
    ld d, d
    ld d, c
    dec c
    nop
    ld b, $c5
    ld b, [hl]
    rrca
    rra
    ld c, d
    ld [hl], b
    dec b
    cp a
    ei
    ld [$df56], sp
    dec sp
    db $fd
    ld e, $fb
    and e
    db $eb
    inc h
    inc de
    ld h, e
    db $fd
    ldh a, [rSB]
    ld a, [bc]
    rlca
    ld [$e709], sp
    cp h
    rst $00
    dec b
    jp nz, $08d6

    dec e
    ld h, a
    db $db
    ld [hl], b
    call nz, $e109
    and d
    sbc a
    ld d, h
    ld c, e
    dec [hl]
    cp a
    ld [hl-], a
    add hl, bc
    dec [hl]
    ld [bc], a
    ld e, $2e
    ld bc, $9efd
    inc e
    ld e, $5a
    ld e, e
    ld e, h
    inc b
    inc b
    sub e
    rla
    ld a, [hl-]
    nop
    inc d
    sbc b
    ld a, c
    rst $38
    ld a, d
    cp l
    ld bc, $0306
    ld c, d
    inc l
    push de
    dec c
    db $e3
    or [hl]
    ld h, e
    db $f4
    inc bc
    rst $18
    ld h, h
    dec sp
    ld [hl], c
    sbc $11
    ld [$fd1b], sp
    inc bc
    ei
    ld [$dc1a], sp
    jp nc, Jump_002_4400

    ld h, a
    ld a, [$01fb]
    ld a, [bc]
    adc a
    ld [hl], a
    inc d
    ld bc, $fbd4
    add $4f
    ld [hl], a
    ld d, b
    ei
    inc bc
    ld e, a
    ld [hl], e
    db $f4
    ld [bc], a
    db $db
    adc a
    add hl, bc
    ld a, d
    ld a, [bc]
    adc a
    sbc a
    ld bc, $f98a
    inc a
    jr nz, jr_002_6de9

    ld [bc], a
    ei
    ld [hl], e
    sub b
    ldh a, [$78]
    daa
    rst $30
    ld bc, $36df
    pop de
    ld a, [c]
    nop
    ld a, c
    ld e, h
    ld [bc], a
    inc b
    add hl, de
    daa
    rla
    ld d, $02
    ld a, $b2
    ld [c], a
    sub $3e
    jp hl


    inc de
    ld bc, $4913
    add hl, de
    adc a
    dec c
    inc bc
    dec h
    nop
    ld a, [de]
    cp l
    dec sp
    dec bc
    add hl, de
    pop af
    ld bc, $e87e
    inc c
    dec de
    ld d, b
    ld e, $a1
    ld e, [hl]
    ld a, l
    adc l
    xor h
    ld a, [de]
    ld l, c
    rst $00
    rla
    inc d
    ld e, $c6
    inc de
    ld [$802c], sp
    inc d
    db $10
    ld l, b
    ld l, c
    db $e4
    ld bc, $e51f
    inc de
    add hl, bc
    inc de
    sbc a
    ld b, c
    push de
    ld hl, $ea11
    add hl, bc
    ccf
    dec bc
    ld a, [de]
    jr z, @+$2b

    ld de, $df1e
    ccf
    ld a, [bc]
    ld e, [hl]
    sub e
    rla
    sub $04
    or $59
    db $fd
    ld d, [hl]
    push bc
    ld e, b
    dec sp
    and e
    rrca
    jp z, Jump_000_0201

jr_002_6de9:
    db $10
    rst $08
    dec sp
    nop
    ld a, [bc]
    ld a, b
    add hl, de
    ld bc, $6834
    ld de, $02f8
    ld b, [hl]
    rst $30
    inc b
    ld [bc], a
    sub l
    ld bc, $1482
    ld h, c
    jp hl


    ld b, b
    dec sp
    rst $28
    inc c
    inc h
    ld a, [bc]
    ld c, e
    jr nc, @+$7d

    and e
    ld a, [bc]
    nop
    rst $08
    ld bc, $14d5
    ld a, [bc]
    ld c, b
    add hl, sp
    ld a, [de]
    inc d
    ld a, e
    ld a, $03
    pop de
    sbc $0a
    ld hl, $fd0f
    db $fc
    ld [bc], a
    inc l
    inc d
    rst $30
    inc bc
    inc h
    cp a
    jr jr_002_6e41

    ld [bc], a
    dec a
    ld h, c
    inc d
    dec b
    ld c, d
    rst $28
    inc bc
    add d
    ld [bc], a
    ld b, l
    or a
    cp [hl]
    rst $20
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    db $ec
    nop
    nop

jr_002_6e41:
    inc bc
    inc h
    jr jr_002_6e55

    add e

jr_002_6e46:
    ld e, b
    inc b
    ld bc, $0001
    cp $00
    ld c, $00
    add b
    nop
    ld [$3c3c], sp
    dec a

jr_002_6e55:
    dec d
    ld [de], a
    ldh a, [rNR41]
    nop
    ld d, $40
    ld b, c
    ld a, e
    ld b, d
    ld [hl+], a
    dec l
    jp Jump_000_0046


    jr @+$06

    rla
    add e
    add b
    ld a, $3a
    ccf
    reti


    ld de, $1c80
    ccf
    and $0c
    ld bc, $e510
    ld a, c
    rla
    inc b
    inc hl
    dec d
    ld [hl+], a
    ret


    ld b, d
    inc b
    ld bc, $3a3a
    dec a
    ld e, $1f
    nop
    rlca
    ld b, l
    jr jr_002_6e46

    ld hl, $4b2d
    nop
    ld de, $3e7b
    inc de
    xor [hl]
    inc h
    inc e
    ccf
    db $d3
    di
    inc b
    ld bc, $cc3e
    ld b, $2f

jr_002_6e9e:
    ld de, $1011
    or e
    ret


    sbc [hl]
    nop
    ld de, $53fd
    ld c, $02
    rst $08
    ld [bc], a
    dec c
    ld c, $02
    ld e, $0e
    ld c, $0e
    inc b
    ld a, [de]
    rst $30
    ld h, l
    db $fd
    ld b, a
    ld a, h
    and e
    inc d
    db $fd
    daa
    rst $10
    ld d, $14
    inc e
    rlca
    ld a, c
    ld d, $07
    db $fd
    rla
    ld sp, hl
    ld b, $be
    ld b, c
    db $e3
    dec b
    ld c, [hl]
    cpl
    jr nc, jr_002_6e9e

    ld bc, $0d0a
    db $e3
    dec c
    or $02
    ld [de], a
    dec c
    ld c, c
    dec c
    ld c, $03
    db $fc
    dec c
    dec c
    sbc $04
    ld a, [de]
    ld h, h
    nop
    ld hl, sp+$15
    ld a, h
    adc h
    rst $10
    ld l, d
    db $10
    ld l, e
    ld l, d
    ld de, $e504
    ld bc, $0720
    inc de
    ld [hl], c
    rst $30
    ld [de], a
    ld c, a
    add a
    ld b, $4e
    ld sp, $0032
    adc a
    ld [bc], a
    ld [c], a
    dec c
    dec c
    ld [bc], a
    inc l
    ld [de], a
    dec c
    ld c, $f7
    inc b
    dec bc
    cp h
    ld [bc], a
    dec l
    ld h, c
    nop
    ld bc, $00df
    inc d
    and b
    ld a, [de]
    jp z, $9e11

    call Call_000_07a4
    ld e, $13
    ld [hl], c
    dec e
    ld e, c
    inc bc
    ld e, c
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    sbc $05
    ld [c], a
    ld bc, $f712
    dec bc
    db $fd
    cp l
    inc b
    dec l
    ld a, [de]
    nop
    ld h, e
    add d
    ld [hl], e
    jp $f730


    add hl, de
    rrca
    ld a, [de]
    pop bc
    rla
    db $fd
    nop
    ld e, [hl]
    ld e, a
    nop
    rst $20
    dec b
    db $fd
    ld [hl], c
    cp h
    ld bc, $0813
    nop
    ld [hl], e
    call nc, Call_000_004d
    ldh a, [rDIV]
    inc de
    scf
    jr c, @+$3b

    ld e, c
    ld c, [hl]
    xor h
    rlca
    pop hl
    ld [hl], l
    xor h
    ld bc, $0e12
    rst $30
    dec bc
    ld a, [de]
    adc a
    ld [bc], a
    nop
    ld b, l
    ld b, h
    inc de
    inc de
    cp h
    ld h, b
    ld h, c
    ccf
    nop
    ld h, d
    ld [bc], a
    ld a, $0a
    ld [hl], e
    ld h, $1e
    db $f4
    jr jr_002_6fc1

    db $fd
    inc c
    ld de, $3c3b
    dec a
    ld [bc], a
    inc a
    pop af
    ld b, $15
    ld d, b
    ld d, h
    jr nz, @+$09

    rra
    ld hl, $811e
    nop
    ld hl, $2720
    ld [de], a
    cp l
    inc bc
    ld c, $08
    ld a, [de]
    pop hl
    inc bc
    nop
    ld c, b
    ld b, a
    ld b, [hl]
    jp hl


    jr @-$65

    sbc a
    rlca
    ld h, b
    inc bc
    cp a
    add hl, bc
    ld h, $79
    dec bc
    dec de
    db $fd
    rla
    ret c

    dec h
    add hl, de
    ld a, [de]
    add a
    rlca
    sub d
    dec bc
    db $fd
    ld bc, $4022
    ld [hl], e
    db $e3
    ld a, $3e
    ld a, [hl-]

jr_002_6fc1:
    ld a, [hl-]
    or e
    cp $1a
    call nz, Call_000_1c02
    ld d, l
    ld d, [hl]
    pop bc
    ld [$2263], sp
    inc hl
    dec c
    sub [hl]
    ld [bc], a
    ld h, e
    ld a, e
    ld [de], a
    ld [bc], a
    ld c, $c2
    ld [$711a], sp
    ld c, a
    ld c, l
    add b
    nop
    db $76
    ld c, l
    ld c, h
    ld c, e
    ld c, d
    ld a, c
    ld c, c
    add hl, de
    db $fd
    ld [hl], c
    sbc [hl]
    rlca
    ld [hl], e
    ld bc, $290c
    ld [hl], a
    ld e, a
    di
    ei
    ld b, $0b
    push hl
    inc bc
    add hl, hl
    ld [hl], e
    rst $28
    add hl, de
    db $fd
    inc b
    add d
    ld l, [hl]
    ld [hl], c
    nop
    sub d
    ld e, e
    adc a
    jr z, jr_002_7007

    sbc a

jr_002_7007:
    db $ec
    db $10
    ld [hl+], a
    db $fd
    dec d
    add a
    cp h
    ld b, c
    ld d, c
    db $ed
    rst $30
    inc bc
    di
    inc l
    ld d, a
    ld e, b
    db $fd
    add hl, de
    inc h
    dec h
    dec c
    ld [bc], a
    ld h, e
    ld h, a
    ld [de], a
    cp h
    ld [bc], a
    ld c, $08
    ld a, [de]
    add hl, de
    ld [$5351], sp
    ld d, d
    ld d, c
    ld h, a
    nop
    ld b, $0f
    rst $28
    ld b, $49
    ld b, $4c
    cp a
    add l
    ld h, b
    and a
    push hl
    cp l
    inc bc
    inc c
    ld [bc], a
    dec c
    rrca
    ld b, $02
    dec a
    inc sp
    add hl, de
    ld bc, $e74d
    inc b
    ld b, a
    add hl, de
    cp [hl]
    ld b, $62
    dec b
    inc h
    ld l, [hl]
    ld sp, $04fa
    cp l
    ld [c], a
    ld [hl], e
    inc bc
    ld b, l
    pop hl
    rlca
    db $fd
    rla
    jr jr_002_7061

    ret nc

    db $fc
    inc a

jr_002_7061:
    rst $28
    and h
    rst $28
    inc de
    dec [hl]
    ld [c], a
    ld h, c
    ld e, d
    ld [hl-], a
    ld a, a
    ld [hl], c
    ld a, [bc]
    ld [hl], $63
    xor d
    jp c, $6f63

    ld [de], a
    ld [bc], a
    ld a, d
    ld c, $04
    dec bc
    sub b
    ld a, [de]
    ld b, e
    ld c, d
    dec a
    ld h, b
    ld b, h
    ld b, $10
    ld a, e
    nop
    rlca
    adc l
    call c, $9907
    ld [c], a
    sub d
    ld [bc], a
    rst $08
    rst $28
    dec b
    dec a
    dec c
    ld [hl], e
    ld [bc], a
    inc sp
    ld b, a
    ld d, a
    db $10
    and d
    ld [$5f47], sp
    xor [hl]
    db $10
    rrca
    ld e, $6e
    ld [bc], a
    ld sp, $0079
    ld [de], a
    inc de
    ld bc, $01f0
    inc a
    ld [hl], e
    ld [$3978], a
    nop
    ccf
    add l
    ld hl, $0169
    dec hl
    rst $08
    inc a
    ld e, a
    ld [hl], h
    dec bc
    db $fd
    ld [hl], l
    ld d, e
    ld h, e
    ld a, [de]
    call c, $fd07
    ld b, e
    ld c, d
    ccf
    ld d, c
    ld b, h
    ccf
    ld c, a
    adc b
    rst $18
    ld [bc], a
    db $db
    jp nc, Jump_002_7904

    ld a, e

jr_002_70d1:
    dec bc
    jr jr_002_70d1

    call nc, Call_000_3304
    ld d, a
    ld a, d
    db $10
    ld [$29c1], sp
    db $eb
    rst $18
    xor d
    ld b, $12
    ld l, [hl]
    rst $08
    rst $28
    ld [hl], e
    inc bc
    ld a, l
    ld sp, $9e05
    dec de
    dec b
    sub e
    ld hl, sp+$03
    rra
    adc c
    ld a, [$00e5]
    dec l
    cp b
    cp b
    ld bc, $1400
    ld a, e
    dec sp
    ld bc, $de0a
    ld [$0b00], sp
    ld a, [de]
    ld c, b
    inc d
    dec a
    dec a
    sbc c
    db $fd
    inc de
    pop hl
    rlca
    add hl, de
    db $10
    ld l, b
    ld l, c
    ld a, [bc]
    ld bc, $857b
    rrca
    ld d, h
    rst $08
    add hl, bc
    ld c, l
    db $10
    ld bc, $313d
    db $10
    ld [$c83b], sp
    rra
    ld a, h
    xor d
    inc b
    ld a, e
    ld l, [hl]
    ld [bc], a
    or a
    sub $03
    ld l, a
    ld a, c
    ld bc, $7708
    inc d
    ld l, l
    add l
    inc a
    sbc l
    inc a
    or d
    cp b
    ld e, c
    ld bc, $4f3b
    rrca
    ld bc, $0a7b
    ld [$d303], sp
    dec bc
    ld a, [de]
    ld c, l
    or $06
    rst $20
    ld [$1319], sp
    rst $28
    dec b
    inc hl
    ld c, $79
    ld d, h
    dec c
    inc sp
    inc d
    rst $28
    ld b, $09
    inc bc
    ld c, d
    add b
    dec a
    or b
    ld bc, $ef72
    inc b
    dec de
    add hl, bc
    sbc $61
    add hl, bc
    ld [hl], a
    rst $30
    rlca
    sub e
    add b
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    db $ec
    nop
    nop
    inc bc
    adc [hl]
    or l
    xor h
    ld c, $0a
    ld [bc], a
    ld bc, $0001
    cp $00
    ld c, $00
    add l
    nop
    ld [$4240], sp
    jr jr_002_718d

    ld b, c

jr_002_718d:
    nop
    ld b, d
    dec d
    db $10
    ld [de], a
    ld [de], a
    ld d, $08
    db $f4
    ld b, $00
    sub b
    ld d, $05
    push af
    inc bc
    nop
    sub h
    daa
    inc e
    inc a
    ld a, $3f
    inc bc
    add hl, sp
    ld b, d
    ldh a, [$08]
    rlca
    ld a, $3a
    ccf
    ld b, e
    ld b, b
    dec c
    adc c
    ld a, [hl+]
    ld d, $29
    ld [$3711], sp
    inc a
    cp l
    ld bc, $0a4e
    ld a, l
    rst $28
    dec b
    ld de, $3d07
    ld a, a
    ld [de], a
    dec c
    xor d
    jp hl


    add hl, bc
    or a
    or [hl]
    add hl, hl
    ld [hl], b
    ld [hl], c
    ld b, e
    ld a, $02
    ret


    ld bc, $3f07
    add d
    inc e
    dec sp
    inc a
    inc a
    dec a
    ld b, b
    ld a, [bc]
    ld d, $10
    nop
    nop
    ld a, d
    ld de, $6409
    rst $00
    ld d, $18
    ld l, a
    ld a, [hl+]
    ld [bc], a
    ld e, c
    nop
    daa
    ld b, e
    inc e
    ld b, b
    ld b, d
    rst $08
    inc bc
    add hl, sp
    ld d, $08
    inc l
    rlca
    ld a, $6a
    ld e, $18
    inc bc
    rla
    ld [$b111], sp
    ld c, [hl]
    rla
    rst $28
    inc c
    ld a, l
    ld b, $7a
    ld de, $7f06
    ld c, a
    inc sp
    ld d, $79
    nop
    ld bc, $1131
    db $e4
    dec bc
    db $fd
    db $10
    sbc l
    ld a, [de]
    sub d
    ld b, c
    ld b, d
    ld [de], a
    ld a, [bc]
    rla
    jr jr_002_729c

    inc bc
    ld [$d865], sp
    inc c
    ld d, $10
    ld l, e
    ld l, d
    add l
    ld bc, $1c29
    ld l, b
    rst $28
    ld [bc], a
    ld de, $7206
    rlca
    ld a, d
    rst $00
    ld l, d
    ld [hl], d
    xor h
    ld bc, $118c
    rst $30
    dec d
    ld h, [hl]
    cp l
    rrca
    adc a
    ld a, [hl+]
    nop
    db $e3
    inc de
    db $fd
    dec sp
    dec a
    ld c, h
    ld bc, $2a0a
    and a
    ld [bc], a
    cp h
    add hl, bc
    nop
    ld b, $16
    cpl
    ld a, e
    jr nc, @+$0d

    inc e
    sbc $0f
    add hl, sp
    ld c, $eb
    rst $30
    ld b, $11
    cp h
    ld bc, $024f
    ld b, e
    ld c, $89
    sub e
    dec a
    ld c, $0e
    add hl, bc
    ld d, l
    ld c, a
    ld a, [hl+]
    ld [bc], a
    ld a, c
    inc b
    ld h, $fd
    ld b, b
    add hl, hl
    adc e
    sub h
    ld hl, sp+$79
    ld bc, $3e80
    ccf
    inc a
    ld a, $3f
    inc h
    db $fd
    ld sp, $327b
    ld b, [hl]
    db $fd
    sbc $01
    ld c, a
    ld [bc], a
    ld b, e
    jr jr_002_729e

    ld c, $0d
    db $fc
    dec c
    dec c
    or d
    ld de, $0a5a
    rst $08
    ld a, [hl+]

jr_002_729c:
    ld [bc], a
    ld a, c

jr_002_729e:
    inc b
    ld [hl+], a
    db $fd
    ld b, b
    push af
    dec b
    scf
    ld e, d
    ld d, $04
    xor $19
    rrca
    rrca
    ld d, a
    di
    ret nz

    ld hl, $59fd
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $f2
    daa
    db $fd
    ld b, b
    db $d3
    ld e, c
    rst $28
    dec bc
    ld de, $7904
    ld c, a
    inc bc
    db $fd
    dec c
    rst $08
    rst $38
    ld bc, $fd67
    ld a, [bc]
    ld c, $14
    dec c
    ld c, $2a
    rst $30
    ld [bc], a
    inc b
    xor d
    inc h
    db $fd
    and d
    ld hl, $6a18
    ld l, e
    ld h, l
    ld bc, $aa17
    inc d
    ld de, $3b3e
    inc a
    inc bc
    cp a
    rra
    dec de
    add e
    ei
    scf
    jr c, @+$3b

    ld c, [hl]
    jp z, $fd27

    dec d
    xor a
    cp [hl]
    cp l
    rrca
    ld de, $4f03
    add sp, $01
    ld b, e
    dec a
    ld sp, hl
    dec c
    ld bc, $eafd
    ld bc, $7b0d
    ld a, [hl+]
    ld [bc], a
    inc b
    db $eb
    ld a, $0f
    ldh a, [rNR11]
    ld [c], a
    ld b, l
    ld a, b
    ld b, h
    dec c
    ld d, $50
    ld d, h
    rst $30
    ld a, [de]
    db $fd
    xor d
    ld bc, $ac3a
    cp e
    inc bc
    ld [bc], a
    ld [bc], a
    rst $20
    ld [$01a9], sp
    inc bc
    ld de, $0aeb
    ld c, a
    inc de
    ld b, e
    ld [hl], c
    add hl, hl
    xor $75
    ld de, $02e9
    dec c
    cp l
    ld a, [hl+]
    ld [bc], a
    inc b
    rst $28
    ld c, $6f
    ld h, $9f
    ld de, $0f11
    db $fd
    ld c, b
    ld b, a
    ld b, [hl]
    inc c
    ld e, $16
    ld d, l
    ld d, [hl]
    ld a, [de]
    db $fd
    rst $30
    ld bc, $a33a
    dec c
    nop
    dec a
    ld [bc], a
    ld bc, $4f0a
    jr nc, jr_002_739a

    rra
    ld hl, $991e
    nop
    ld hl, $110f
    ld [bc], a
    inc h
    dec c
    jr nz, jr_002_738e

    rst $30
    ld [bc], a
    inc b
    sbc c
    ld a, [bc]
    ld l, a
    ld [hl], c
    ld [bc], a
    ld [hl], e
    di
    ld h, $11
    pop hl
    ld b, $c9
    ld a, c
    ld c, a
    ld c, l
    ld b, b
    nop
    db $76
    ld c, l
    ld c, h
    ld c, e
    inc a
    ld c, d
    ld c, c
    inc c
    db $fd
    ld d, a
    ld c, l
    ld e, b
    ld h, a
    ld b, a
    nop
    ld [hl], e
    adc a
    ld bc, $79fa
    nop
    dec bc

jr_002_738e:
    ld a, d
    ld a, [hl-]
    dec de
    db $fd
    ld c, a
    ld c, a
    inc bc
    dec b
    ld h, [hl]
    ld h, e
    ld [hl+], a
    inc hl

jr_002_739a:
    dec c
    db $10
    ld [bc], a
    ld h, e
    ld de, $02f4
    dec c
    sub $2a
    dec a
    inc b
    ld [hl], c
    dec bc
    ld l, a
    push de
    add $16
    rrca
    ld a, [de]
    nop
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld l, a
    add hl, hl
    ld a, [bc]
    ld l, a
    ld d, $bd
    inc c
    ld bc, $ee01
    inc bc
    ld h, $59
    add hl, bc
    nop
    ret nz

    ld de, $5119
    ld d, e
    ld d, d
    ld b, e
    ld d, c
    nop
    ld a, e
    ld b, $05
    ld d, $c2
    ld bc, $5a2e
    ld e, e
    ld e, h
    rst $08
    ld h, a
    ld b, $6f
    inc e
    dec b
    ld [$3a3f], sp
    ld a, [de]
    ld bc, $263d
    ld [hl], e
    ld [de], a
    db $fd
    inc hl
    ld c, a
    add hl, de
    ret c

    ld bc, $0649
    ld h, e
    inc h
    add hl, hl
    dec h
    dec c
    ld [bc], a
    daa
    db $fd
    and h
    ld bc, $2a0d
    rst $30
    ld bc, $b004
    ld a, [bc]
    ld l, a
    nop
    inc d
    dec sp
    inc a
    inc d
    dec a
    db $10
    ld [hl], c
    ld [hl], b
    dec bc
    ld de, $3d3b
    inc de
    ld l, b
    ld [$1659], sp
    inc c
    ld h, h
    rrca
    ld [$3c78], a
    ld [$eb79], a
    dec c
    ld e, a
    or $10
    ld a, b
    daa
    ld de, $8407
    ld c, $cf
    dec d
    inc a
    ld bc, $1626
    db $10
    xor h
    ld d, e
    ld e, e
    xor [hl]
    xor a
    ld l, $4b
    nop
    ld hl, $051c
    daa
    ld de, $01a4
    nop
    ld sp, $2696
    ld d, c
    ld a, [de]
    db $ed
    ld [hl], b
    inc bc
    inc b
    ld bc, $f519
    inc b
    ld a, [de]
    ld hl, $ab4f
    scf
    ld c, c
    inc de
    ld b, $74
    sub c
    add sp, $0d
    add hl, de
    ld a, [de]
    or h
    ld de, $e403
    rst $30
    dec c
    ld h, e
    and a
    ld a, [hl+]
    cp l
    ld [bc], a
    inc b
    add hl, bc
    ld l, a
    ld c, $72
    ld a, [$134b]
    ld a, e
    ld [$0a59], sp
    pop hl
    cp d
    add hl, hl
    add a
    push hl
    dec a
    sbc $02
    ld a, c
    ld d, $0f
    db $fd
    ld [hl], d
    xor b
    rst $38
    adc a
    adc b
    or $28
    add hl, hl
    ld de, $074e
    sub h
    ld c, $3e
    jp nc, Jump_000_3e18

    ld d, $13
    inc bc
    add hl, hl
    inc h
    ld e, h
    ld c, c
    nop
    xor c
    inc e
    dec b
    daa
    ld de, $01b1
    nop
    inc d
    ld l, b
    ld l, c
    xor b
    ld bc, $3da4
    and h
    ld a, [bc]
    sbc $01
    inc bc
    ld de, $197a
    inc bc
    ld c, [hl]
    ld l, a
    ld b, e
    inc bc
    ld hl, $1467
    ld de, $06ef
    db $76
    dec bc
    ld a, e
    add c
    dec b
    ld [hl], d
    adc a
    ccf
    dec sp
    ld [bc], a
    db $d3
    ld [$7551], sp
    sbc c
    ccf
    db $e3
    ld [bc], a
    add d
    ld de, $c83e
    dec c
    db $fd
    inc de
    ld a, d
    ld d, e
    ld a, [bc]
    db $fd
    ld b, h
    ld d, $3b
    ld [c], a
    ld hl, $046b
    inc h
    db $fd
    inc e
    ld a, d
    inc de
    dec bc
    adc l
    ld c, d
    rst $00
    ld a, [hl]
    ld d, $05
    ld a, [hl-]
    ld a, [c]
    inc bc
    ld de, $7014
    ld [hl], h
    dec sp
    sbc [hl]
    or h
    ld a, d
    inc d
    ld [bc], a
    cp l
    ld a, [bc]
    ret nz

    inc de
    ld d, h
    ld hl, $8552
    dec b
    ret nc

    adc l
    inc a
    sbc e
    ld [hl-], a
    rst $08
    dec c
    db $fd
    ld a, $02
    dec a
    ld a, [bc]
    inc de
    add hl, bc
    ld [hl], b
    db $eb
    ld bc, $3c0f
    ld c, $00
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    db $ec
    nop
    nop
    inc bc
    ld e, l
    add e
    dec h
    dec [hl]
    ret z

    inc b
    ld bc, $0001
    cp $00
    ld c, $00
    add c
    nop
    ld [$3d3c], sp
    dec d
    ld [de], a
    db $e3
    add a
    nop
    ld d, $3b
    pop bc
    ld b, $93
    ld d, $40
    ld b, d
    dec d
    rst $28
    add hl, bc
    ld b, $05
    ld e, c
    daa
    add hl, bc
    rst $28
    ld [bc], a
    dec de
    dec e
    ld bc, $3e67
    ld a, [hl-]
    ld a, [hl-]
    ccf
    db $10
    ld l, a
    db $db
    dec b
    pop bc
    ld b, d
    nop
    ld e, [hl]
    ld e, a
    ld h, h
    nop
    db $ed
    dec bc
    ld bc, $9c16
    ld a, [de]
    ld [hl], b
    ld bc, $1bf3
    nop
    ld de, $c33c
    db $10
    inc b
    rrca
    rla
    pop bc
    xor b
    jr jr_002_75d5

    ld l, d
    ld l, e
    inc c
    ld b, $05
    ld l, d
    add a
    ld b, $ac
    ld [$0927], sp
    db $f4
    ld [bc], a
    dec de
    sbc [hl]
    adc c
    ld [bc], a
    dec b
    ld a, d
    nop
    ld [bc], a
    ld a, d
    sub b
    and b
    dec d
    ld a, c
    ld de, $fd03
    ld [hl], b
    ld h, a
    ld [bc], a

jr_002_758b:
    adc a
    jr c, jr_002_758b

    ld h, l
    ld h, [hl]
    inc c
    ld e, $00
    ld h, a
    ld e, a
    ld hl, $0f41
    ld de, $3d3b
    db $10
    inc e
    ld a, e
    daa
    ld [bc], a
    db $eb
    sbc $06
    push af
    ld c, $fd
    ldh a, [$03]
    ld d, $63
    nop
    ld h, e
    db $e3
    dec d
    ld [hl], c
    add a
    db $fd
    ld b, c
    ld b, d
    rst $28
    ld c, c
    ei
    jr nz, jr_002_7600

    ld d, $77
    ld [hl], c
    db $fc
    db $10
    ei
    ld [hl], b
    add hl, de
    nop
    add hl, de
    rrca
    nop
    ld a, [de]
    ldh [rNR12], a
    ld l, c
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $30
    ld [$9309], sp
    inc e
    db $fd
    ld h, l
    ret c

    adc h

jr_002_75d5:
    ld h, a
    ld b, c
    inc a
    ld a, d

jr_002_75d9:
    dec a
    jr nc, jr_002_75d9

    rst $00
    ld [hl], $71
    cp [hl]
    dec bc
    ld [hl], e
    dec b
    ld e, $42
    ld [hl], c
    rrca
    db $fd
    jr z, jr_002_764a

    ld h, c
    nop
    ld h, d
    db $fd
    ld de, $9ffb
    ld [$143c], sp
    ld e, $05
    ld d, $fd
    sbc e
    ld e, l
    rrc d
    ld h, c
    ld h, b
    ld a, [hl-]
    inc de

jr_002_7600:
    ld a, $31
    ld [hl-], a
    ld a, h
    rst $30
    ld bc, $625e
    ld a, [hl]
    ld l, a
    ld l, $fb
    db $fc
    rrca
    sbc e
    ld [hl], c
    ld sp, hl
    ld bc, $eccf
    sbc h
    ld b, d
    ldh a, [rNR14]
    db $fd
    jr c, @+$3b

    scf
    rst $30
    ld [$ef09], sp
    inc c
    add l
    ld bc, $6105
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld d, $0e
    ld h, h
    ld a, c
    inc de
    dec de
    db $fd
    ld [hl], c
    dec h
    dec [hl]
    adc a
    ccf
    ld l, a
    rlca
    ld a, b
    rst $08
    dec b
    cp [hl]
    ld [hl], c
    add hl, de
    ld hl, sp+$0e
    xor h
    rst $30
    ld [bc], a
    ld d, $c4
    ld [bc], a
    rst $28
    xor e
    ld hl, $c22a

jr_002_764a:
    db $10
    scf
    rst $08
    ld [hl+], a
    ld bc, $c59e
    ld b, d
    ld [$0f09], sp
    dec sp
    ld l, a
    dec bc
    rlca
    ld h, b
    inc [hl]
    ld l, h
    ld l, h
    scf
    cp a
    ld [$0b09], sp
    jr z, jr_002_76d2

    ld l, a
    add hl, bc
    ld [hl], c
    nop
    ld l, [hl]
    nop
    ld [hl], e
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    add d
    jr jr_002_76d6

    jp z, $971d

    rst $30
    ld sp, $15a6
    db $fd
    dec [hl]
    ld [c], a
    nop
    ld e, c
    add hl, bc
    add hl, bc
    ld [hl], h
    adc a
    pop bc
    ld e, [hl]
    ld [hl], l
    inc b
    ld e, d
    ld e, h
    ld a, $e4
    rrca
    or h
    or d
    ld d, $7c
    ld l, [hl]
    ld b, $28
    rst $28
    db $76
    add c
    ld [hl], a
    sub e
    db $fd
    and e
    push hl
    db $e3
    db $10
    and $de
    ld b, $52
    ld [bc], a
    dec c
    rst $30
    ld de, $bdfd
    inc b
    sbc [hl]
    inc bc
    ld [hl], b
    add a
    ld h, e
    ld e, $1f
    db $10
    rst $08
    inc bc
    rst $30
    ld a, $00
    rrca
    ld c, a
    rst $30
    ld b, h
    ld b, l
    inc b
    adc d
    adc d
    ld d, e
    dec [hl]
    ld a, d
    adc a
    add hl, bc
    ld l, a
    ld b, $9f
    or c
    inc b
    db $76
    dec bc
    sbc b
    ld [$4014], sp
    ld b, d
    inc de
    rst $08
    xor d
    ld [hl], b

jr_002_76d2:
    ld [bc], a
    ld d, $8a
    ld l, [hl]

jr_002_76d6:
    nop
    ld a, h
    ld d, $06
    ld a, e
    rst $28
    dec b
    add hl, sp
    and e
    push hl
    ld [c], a
    db $10
    and $73
    add hl, bc
    dec a
    db $f4
    dec b
    dec c
    ld l, a
    ld l, a
    ld l, b
    ld [bc], a
    adc a
    dec b
    dec b
    adc a
    dec e
    ld [$50af], sp
    or b
    ld bc, $6370
    jr nz, jr_002_771c

    db $10
    xor b
    ld h, e
    db $f4
    ld bc, $4000
    ld sp, hl
    dec de
    inc e
    dec e
    ldh a, [rTAC]
    ld [hl], b
    ld b, [hl]
    ld b, a
    ld c, b
    rst $30
    inc b
    db $fd
    inc h
    dec [hl]
    ld [hl], b
    sbc d
    add hl, bc
    ccf
    ld [hl-], a
    cpl
    ld a, [$0533]
    dec bc
    or h

jr_002_771c:
    ld sp, hl
    ccf
    ld bc, $2c07
    ld d, b
    ld [hl], c
    ld d, $8d
    db $fd
    rst $28
    ld [bc], a
    db $fd
    inc b
    sbc c
    rst $30
    inc l
    ld [hl+], a
    scf
    ld a, [hl]
    ld [hl], c
    inc c
    ei
    db $f4
    ld b, $06
    call nz, Call_002_6809
    ld l, c
    inc de
    ld bc, $3e11
    ld a, [hl-]
    ld l, a
    inc b
    ldh a, [$61]
    dec b
    ld a, d
    ld l, [hl]
    dec b
    db $fd
    ld h, $52
    ld c, [hl]
    adc d
    adc [hl]
    ld h, a
    ld l, b
    inc bc
    inc b
    ld a, [bc]
    db $fd
    ld l, l
    dec b
    ld b, $49
    jr z, jr_002_775b

    nop
    nop

jr_002_775b:
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    db $10
    ld [hl], d
    ld c, [hl]
    ld c, l
    ld bc, $4f49
    dec [hl]
    add hl, hl
    sub a
    add e
    add hl, bc
    ld l, a
    rst $20
    ld b, $b1
    jp nc, Jump_000_0b02

    ret nc

    ld sp, hl
    ld bc, $137e
    inc bc
    adc d
    sbc [hl]
    ld sp, hl
    sbc e
    ld d, $df
    inc b
    cpl
    dec b
    add hl, hl
    rst $30
    ld de, $2026

jr_002_7786:
    nop
    ld c, l

jr_002_7788:
    ld a, [de]
    jr c, jr_002_7786

    ld bc, $d3ed
    add hl, bc
    ld b, $49
    add hl, bc
    sub [hl]
    ld h, h
    inc de
    db $e3
    inc bc
    rst $28
    ld b, $4e
    add sp, $02
    db $fd
    ld d, d
    inc l
    adc d
    jr z, jr_002_7788

    add sp, $6b
    ld [hl+], a
    ld b, c
    ld b, d
    ld b, a
    rst $30
    rlca
    ld [$d609], sp
    dec b
    sbc a
    add c
    nop
    ld d, d
    ld d, e
    ld d, b
    ld d, c
    or d
    ld bc, $5405
    ld b, h
    ld c, $14
    ld l, b
    cpl
    ld a, e
    sbc l
    ld [$d65e], sp
    ld [bc], a
    ld e, h
    jp nc, $dff9

    and $05
    cp h
    cp e
    ld bc, $6f16
    db $fd
    ld c, $fb
    ld [$d23b], sp
    adc a

jr_002_77d6:
    rst $18
    sub c
    ld [bc], a
    rst $18
    pop af
    ld bc, $edd3
    db $dd
    ldh [$bf], a
    add sp, $06
    jr nz, jr_002_77d6

    ld de, $10f0
    or d
    inc de
    ld [hl], c
    inc bc
    db $eb
    ld c, $fd
    add hl, sp
    sbc a
    ld h, b
    inc de
    ld h, l
    inc b
    add hl, bc
    dec a
    sbc [hl]
    jp nc, Jump_000_0003

    pop hl
    and $3d
    dec sp
    jr c, @+$1a

    sbc d
    inc b
    sub c
    ld sp, $2fad
    cp l
    ld bc, $000f
    dec a
    ld [c], a
    add hl, bc
    ld bc, $a0a8
    ld bc, $f311
    ld [bc], a
    ld d, $13
    call c, $3b13
    sub c
    xor l
    sub l
    jp c, Jump_002_6496

    daa
    inc d
    sbc [hl]
    ld [$060d], sp
    sbc c
    add hl, bc
    inc d
    dec d
    adc c
    ld e, b
    inc de
    inc de
    inc d
    rst $30
    inc d
    ld h, c
    ld [$f703], a
    ld [hl-], a
    rst $08
    ccf
    add hl, bc
    ccf
    ld c, a
    ld a, [bc]
    inc b
    ld [hl], d
    inc bc
    inc d
    adc a
    ld [bc], a
    ld a, [hl-]
    ld bc, $0443
    rlca
    sbc $01
    inc bc
    ld [$f72e], sp
    ld bc, $9f03
    dec b
    ld bc, $0513
    cp h
    ld c, a
    inc b
    ld a, [de]
    inc a
    push af
    dec d
    ccf
    dec a
    ld [hl], c
    ld [bc], a
    daa
    xor $11
    ld b, $10
    dec b
    add hl, de
    ld a, [de]
    inc bc
    xor d
    and h
    ret


    ld a, [de]
    dec c
    or c
    ld h, c
    dec a
    jp hl


    ld de, $eaa3
    rst $30
    add a
    ld sp, hl
    ld b, d
    ld d, c
    ld c, l
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    db $ec
    nop
    nop
    inc bc
    ld h, b
    ld c, [hl]
    rst $28
    ld sp, $024a
    ld bc, $0001
    cp $00
    ld c, $00
    adc a
    nop
    ld [$2141], sp
    inc bc
    nop
    ld b, d
    dec sp
    inc a
    dec a
    ld b, b
    sbc $0c
    rrca
    ld [$b018], sp
    rra
    add hl, de
    rrca
    inc b
    rrca
    ld a, [de]
    ld de, $1215
    ld a, [bc]
    nop
    ld d, $10
    ld [hl], c
    inc c
    dec h
    ld b, d
    adc a
    db $10
    ld d, $40
    ld [hl+], a
    add hl, hl
    ld [hl], h
    ld b, c
    ld sp, $4109
    inc e
    ld l, d
    db $10
    or e
    dec a
    ld de, $0840
    ld d, $ef
    ld d, $3a
    ld c, $1e
    nop
    ld d, $17
    ld [de], a
    dec de
    ldh a, [$0c]
    ld l, $3e
    ld b, e
    ccf
    ld a, e
    dec d
    inc c
    rrca
    sub $08
    jr jr_002_78e3

jr_002_78e3:
    nop
    ld de, $1f1e
    db $10
    ld de, $6a10
    ld [hl], e
    ld l, e
    ld bc, $0642
    inc c
    add a
    ld l, a
    jr jr_002_78f8

    cp c
    ld h, $76

jr_002_78f8:
    ld sp, $391a
    ld h, a
    inc [hl]
    jr @+$20

    db $fd

Jump_002_7900:
    rla
    ld a, [bc]
    ld d, $f7

Jump_002_7904:
    dec d
    ld a, [hl-]
    ld d, $32
    nop
    ld a, c
    rlca
    ld [bc], a
    nop
    ld de, $0aef
    ld [de], a
    inc d
    halt
    ld [hl], d
    ld c, c
    ld b, d
    sla l
    ld bc, $0f3d
    ld bc, $e308
    inc c
    jr nc, jr_002_7942

    ld hl, $f029
    jr jr_002_7931

    and c
    ld b, $0c
    rst $28
    ld [hl+], a
    ld l, e
    rlca
    db $76
    ld c, b
    add hl, sp

jr_002_7931:
    pop af
    ld [hl+], a
    ld d, $00
    ld [hl], b
    ld h, a
    nop
    cp h
    inc bc
    inc hl
    ld a, [bc]
    dec hl
    ld de, $0af2
    ld [de], a
    ld [hl], b

jr_002_7942:
    adc e
    ld [bc], a
    nop
    ld e, $05
    nop
    inc b
    dec bc
    add sp, -$3c
    ld a, e
    ld d, $04
    ld l, $de
    ld bc, $080f
    jr @-$4d

    nop

jr_002_7957:
    rla
    dec l
    xor d
    rst $28
    dec bc
    inc c
    jr z, jr_002_79b5

    db $fd
    add hl, sp
    ld a, e
    ld [hl], b
    ld [$f5a9], sp
    inc e
    ld d, b
    sub [hl]
    inc hl
    jr z, jr_002_7973

    ld l, a
    dec d
    ld [hl], c
    and a
    db $fd
    rst $20
    dec h

jr_002_7973:
    adc a
    rla
    ld b, e
    or e
    jr jr_002_7957

    inc c
    rrca
    ld [$b018], sp
    nop
    inc [hl]
    dec [hl]
    dec a
    ld [hl], $37
    ld c, $0c
    add sp, $27
    nop
    rst $08
    add hl, sp
    ld l, a
    add hl, bc
    ccf
    dec d
    ld [hl], c
    inc e
    ld e, c
    ld d, b
    inc hl
    ld h, c
    rlca
    ld h, b
    ld h, c
    inc b
    nop

jr_002_799a:
    ld h, d
    jr nz, jr_002_799a

    ld [de], a
    rrca
    and a
    nop
    ret


    inc e
    nop
    ld e, [hl]
    ld e, a
    rrca
    ld [bc], a
    dec bc
    ld a, e
    rrca
    ld [$cf18], sp
    rla
    db $fd
    ldh [$29], a
    ld a, [hl]
    db $fd
    rrca

jr_002_79b5:
    add hl, sp
    db $fd
    inc e
    ld d, b
    ld h, l
    inc hl
    sub h
    rlca
    xor b
    and l
    inc b
    ld d, h
    ld sp, $3d3b
    add e
    ld bc, $cf10
    dec h
    db $fd
    ld [bc], a
    dec [hl]
    ld a, b
    db $fd
    ld d, $00
    ld b, h
    ld b, l
    ldh a, [rSC]
    dec bc
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, d
    ld e, b
    inc b
    dec sp
    ld l, a
    rrca
    ld [$167b], sp
    ld de, $d43f
    dec d
    db $fd
    nop
    jr nz, @+$42

    ld b, d
    ld bc, $fc13
    ld [$6efd], sp
    db $fd
    ld d, d
    ei
    push hl
    inc b
    nop
    pop hl
    ld e, $05
    ld [c], a
    ld [bc], a
    db $10
    ld e, $46
    ld b, a
    ld c, b
    ld bc, $030b
    ld e, c
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    db $d3
    ld [bc], a
    dec sp
    ld a, e
    rrca
    ld [$de16], sp
    dec b
    nop
    inc b
    ccf
    ld a, [c]
    inc c
    db $fd
    db $76
    rrca
    xor b
    ld [hl], a
    ld bc, $ad00
    dec sp
    dec a
    ld b, e
    ld b, e
    dec sp
    inc a
    inc a
    db $fd
    ld [$f9fd], sp
    inc b
    ld b, d
    ld l, [hl]
    ld a, [hl+]
    pop af
    dec hl
    pop hl
    ld [hl], a
    rst $28
    ld a, [de]
    db $fd
    inc bc
    ld a, e
    jr c, jr_002_7a48

    db $fd
    rst $30
    rlca
    sbc l
    add b
    ld b, $00
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [hl], d
    ld c, [hl]
    ld b, c
    ld c, l

jr_002_7a48:
    ld bc, $f778
    ld bc, $b2a8
    dec sp
    ld l, a
    rrca
    ld [$1678], sp
    ld [$7a3f], sp
    ld a, e
    and c
    ld bc, $6e7c
    rst $28
    dec bc
    db $fd
    ld [bc], a
    sbc c
    rst $30
    db $ec
    ei
    db $fd
    ld a, $1f
    ld b, d
    ld b, b
    ccf
    ld b, $bf
    db $fd
    rlca
    dec h
    ld b, d
    add hl, de
    ld e, d
    dec e
    xor d
    rra
    ld [bc], a
    ret nc

    db $fc
    add hl, de
    ld a, a
    rrca
    ld [bc], a
    db $fd
    ld c, e
    ld bc, $ef3c
    inc b
    jr c, @+$10

    ld a, [hl]
    db $fd
    ld [$789d], sp
    nop
    ld [$5268], sp
    ld d, e
    ld [hl], $50
    ld d, c
    ld bc, $2d05
    ld d, h
    ld a, [de]
    ld a, c
    sub l
    dec d
    dec sp
    ld l, [hl]
    db $76
    cp b
    ld bc, $a300
    ld d, $6e
    rst $18
    ld bc, $0352
    xor c
    ld c, l
    and a
    rst $20
    ld [bc], a
    ccf
    ld l, a
    jp nz, $f913

    ld [hl], c
    sub c
    dec hl
    inc l
    push af
    ld a, $03
    ccf
    ld sp, hl
    ld b, $fb
    db $fd
    dec b
    add d
    sub d
    daa
    inc d
    xor a
    dec e
    adc c
    ld b, $23
    ld de, $c73b
    ld sp, $01bc
    ld [$3806], sp
    ld c, a
    add d
    ld [hl], c
    ld [hl], c
    ld b, l
    ld d, $6f
    adc a
    ld a, [hl]
    ld [hl], c
    ld b, $2c
    ld e, d
    nop
    ld e, $9f
    ld a, c
    adc b
    ld c, d
    ld [c], a
    ld bc, $3d00
    db $10
    rst $10
    xor b
    or d
    cp d
    inc e
    rrca
    db $fd
    rst $30
    ld b, $16
    rst $28
    inc b
    ld c, l
    inc b
    ld [hl], e
    ld a, $3f
    push de
    dec d
    db $fd
    ld b, b
    db $ed
    ld b, b
    ld b, d
    ld a, $45
    ccf
    sub d
    add b
    sub h
    ei
    ld l, [hl]
    ld l, c
    ld h, d
    ld l, a
    jp hl


    ld bc, $42d0
    ei
    jp nc, Jump_002_7b23

    ld bc, $fd05
    xor c
    ld [c], a
    ld e, b
    db $10
    ld [$b413], sp
    ld a, e
    dec e
    inc b
    jr c, @-$04

    ld [bc], a
    ld c, l

Jump_002_7b23:
    add hl, de
    rst $30
    ld [bc], a
    ld e, $e5
    dec b
    sbc l
    ld bc, $1d1e
    ld bc, $1e01
    ld e, $14
    ld a, $3a
    ld bc, $9900
    ld d, e
    ld a, [de]
    inc l
    add hl, sp
    ld [hl], c
    sub c
    ld b, e
    ld a, [de]
    call nz, Call_000_19fd
    jp nc, Jump_002_7e57

    pop de
    ld [bc], a
    ld c, l
    ld e, $79
    ld c, a
    ld de, $3e03
    sbc $3f
    inc d
    db $fd
    ld c, d
    ld [hl], c
    adc [hl]
    db $ed
    ld de, $3ad9
    inc a
    ld sp, $88fb
    reti


    ld l, b
    ld l, c
    dec l
    ld bc, $ac11
    jp hl


    ld bc, $fbb3
    sub d
    db $fd
    ld d, d
    ld hl, $a901
    ld [c], a
    or e
    ld [$04f3], sp
    ld [hl], h
    inc a
    db $f4
    dec b
    add b
    sbc [hl]
    dec hl
    inc d
    inc e
    push hl
    ld e, $9f
    ld a, $04
    call nz, $8f2f
    ld d, e
    dec a
    ld bc, $57ca
    inc d
    xor h
    sbc [hl]
    ld b, e
    ld sp, hl
    dec sp
    rst $18
    inc b
    ld d, $04
    sbc [hl]
    ld c, l
    inc d
    dec b
    db $fd
    pop hl
    ld [hl+], a
    ld a, [de]
    add hl, de
    rst $28
    ld b, $03
    ld [bc], a
    ld a, [hl+]
    nop
    ld a, [de]
    adc [hl]
    db $ed
    cp a
    pop af
    inc [hl]
    ld l, b
    db $fd
    xor a
    ld sp, hl
    inc h
    ld h, [hl]
    cp e
    rlca
    rst $28
    ld [bc], a
    ld bc, $7b02
    db $fd
    inc b
    ld [hl], e
    sub d
    adc l
    ld b, e
    add e
    ld [$04c7], sp
    db $76
    ld a, [hl-]
    ld a, [hl-]
    rst $20
    add hl, bc
    ret nz

    inc d
    cp a
    inc d
    inc e
    inc bc
    ld a, $f2
    ccf
    inc b
    ld e, $f9
    ld a, $06
    ld de, $0f82
    ccf
    adc a
    db $fd
    ld a, $06
    ld a, e
    jr z, @+$0a

    ld [hl-], a
    db $db
    ld [bc], a
    ld c, e

jr_002_7be1:
    sbc a
    and e
    or a
    sbc $03
    inc bc
    inc bc
    ld a, [hl+]
    pop de
    dec c
    ld a, $40
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    db $ec
    nop
    nop
    ld [bc], a
    and l
    ld b, c
    rst $20
    adc c
    dec hl
    inc b
    ld bc, $0001
    cp $00
    ld c, $00
    add h
    nop
    ld [$4240], sp
    add a
    ld bc, $1215
    ld d, $00
    ld d, $7a
    dec c
    ld b, b
    ld bc, $5590
    ld e, b
    push af
    dec h
    ld [$3d80], sp
    db $10
    add hl, de
    rrca
    rrca
    ld a, [de]
    ld a, e
    ld de, $4d02
    sbc $08
    rrca
    ld [hl+], a
    ld bc, $110f
    ld e, $1f
    db $10
    inc c
    inc e
    inc bc
    dec sp
    dec a
    ld [hl], h
    ld h, c
    ld d, $05
    db $10
    ld l, d
    ld l, e
    sub h
    ld bc, $0d11
    rst $30
    ld bc, $a98c
    ld bc, $218f
    rst $28
    ld [$0201], sp
    ld a, d
    inc e
    rrca
    nop
    dec b
    ld d, l
    ld l, e
    ld l, d
    ld e, $01
    ld de, $0824
    ld e, b
    rla
    ld b, b
    jr jr_002_7be1

    and b
    rla
    rst $30
    ld [bc], a
    add hl, de
    and h
    ld [bc], a
    rrca
    ld e, l
    ld a, e
    dec d
    ld b, $05
    sbc $02
    dec d
    add hl, bc
    adc c
    rrca
    ld de, $2120
    db $10
    inc c
    ld b, [hl]
    inc bc
    ld d, c
    adc h
    ld c, a
    db $10
    add sp, $08
    ld b, c
    nop
    rlca
    ld l, d
    ld h, c
    add e
    jr jr_002_7c89

    sub [hl]
    ld [bc], a
    ld l, e

jr_002_7c89:
    ld a, [hl]
    dec c
    dec bc
    ld [hl], c
    ld a, e
    db $10
    ld bc, $d61c
    rrca
    ld bc, $5573
    nop
    ld a, c
    ld c, c
    inc hl
    ld [$3770], sp
    rlca
    add hl, sp
    adc a
    and b
    inc h
    ld c, d
    sub $06
    ld c, b
    rrca
    sub c
    db $10
    sub c
    ld h, e
    ld [hl], b
    rst $20
    inc bc
    or a
    ld de, $0d9d
    sub a
    ld de, $329e
    jr jr_002_7cc4

    inc bc
    db $ec
    sbc a
    rla
    and l
    ld [$8026], sp
    rlca
    or $07
    nop

jr_002_7cc4:
    ld e, [hl]
    ccf
    ld [hl], c
    ld de, $4607
    ld d, e
    rst $10
    ld a, e
    nop
    inc bc
    xor l
    sub $04
    inc bc
    ld a, b
    nop
    inc bc
    ld c, l
    ld [hl], b
    nop
    di
    ld de, $0008
    sbc $12
    ld de, $4102
    sbc [hl]
    add hl, de
    db $f4
    inc b
    sbc a
    adc d
    dec bc
    ld de, $877a
    ld [bc], a
    rla
    ld b, l
    add hl, bc
    ld [hl], b
    sub d
    ld [bc], a
    ld h, e
    nop
    cp l
    dec d
    ld d, $e1
    add hl, bc
    ld de, $1316
    ld b, [hl]
    reti


    dec hl
    ld l, a
    rst $28
    dec bc
    ldh a, [rTAC]
    ccf
    nop
    ld [hl], c
    ld [$533d], sp
    ld de, $371e
    rst $20
    ld b, b
    nop
    ld [hl], b
    or e
    inc d
    sub a
    ld b, $6f
    jp $bd18


    inc de
    inc d
    db $10
    ret


    ld [$1114], sp
    ld c, a
    rst $30
    xor l
    dec e
    db $fd
    sbc a
    ld e, l
    ld [hl], b
    inc bc
    cp l
    ld a, c
    ld h, e
    db $fd
    rst $20
    rla
    sub a
    ld l, a
    cp l
    rra
    cp l
    ld b, $fd
    add hl, hl
    rst $30
    ld a, [c]
    add hl, bc
    dec sp
    ld [hl], c
    ld hl, $0114
    ld [$7b00], sp
    ld [$e47b], sp
    rst $08
    ld l, $00
    ld l, [hl]
    dec d
    daa
    dec e
    ld de, $f73e
    ld a, [bc]
    db $fd
    ld e, d
    ld de, $d55f
    ld de, $1e1e
    ld a, [de]
    adc [hl]
    nop
    dec a
    ld b, h
    ld b, l
    inc d
    dec e
    ld e, l
    dec sp
    db $fd
    inc b
    ei
    ld e, d
    di
    rst $10
    ei
    ld e, c
    nop
    ld [$8ee7], sp
    db $fd
    ld [hl], c
    call nz, $960d
    ret z

    pop bc
    ld l, [hl]
    rrca
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld c, b
    add hl, de
    ld d, h
    ld b, l
    ld a, [$01bf]
    push af
    or c
    ld [$0071], a
    ei
    dec b
    ei
    rst $20
    ld [$f155], sp
    ld bc, $0023
    nop
    rst $28
    ld bc, $056b
    ld e, c
    inc bc
    nop
    rst $28
    ld [bc], a
    daa
    ld [bc], a
    ld a, $16
    ld l, [hl]
    ld [de], a
    rra
    sub [hl]
    ld l, [hl]
    dec h
    rlca
    call nz, $1171
    add $16
    or l
    nop
    ld bc, $4a49
    ld c, e
    ld c, h
    ld [hl], d
    ld c, [hl]
    ld c, l
    rlca
    ld bc, $cc78
    ld d, $03
    db $dd
    inc sp
    sbc e
    ld [$b213], a
    ccf
    nop
    inc d
    inc b
    ld a, d
    ei
    ld [$84c9], sp
    dec l
    ld l, b
    ld l, c
    jr nz, jr_002_7dd0

    add hl, bc

jr_002_7dd0:
    ld l, c
    ld a, e
    ld l, b
    db $10
    ld bc, $03df
    adc c
    ld b, e
    ld [hl], $af
    jp nc, Jump_002_417d

    sbc d
    dec bc
    ld l, [hl]
    db $eb
    inc bc
    sbc l
    inc h
    pop bc
    nop
    dec c
    ld d, d
    ld d, e
    ld d, b
    ld d, c
    ld bc, $058f
    ld d, h
    ld a, [de]
    dec d
    ld e, d
    db $fd
    adc a
    db $ed
    ld [bc], a
    and a
    ret


    db $f4
    inc bc
    ei
    inc l
    adc [hl]
    ret


    ld a, c
    ld l, [hl]
    dec b
    ld h, c
    inc d
    rst $28
    dec b
    ld l, e
    ld [$003e], sp
    inc d
    ld [bc], a
    add e
    db $ed
    add hl, de
    ld a, [de]
    jp nc, $0823

    rst $08
    pop de
    ld [hl], c
    inc b
    rra
    and b
    add hl, de
    ld a, [de]
    add hl, bc
    cp l
    rst $18
    ld [$fb05], sp
    ld bc, $c98f
    inc bc
    ld bc, $ac3c
    nop
    dec e
    or $02
    ld bc, $4350
    add hl, de
    and d
    rst $30
    dec b
    call $04db
    ld d, e
    dec l
    cp [hl]
    rst $28
    add hl, bc
    ld [$7a09], sp
    ld h, c
    dec d
    ld bc, $33c7
    ld de, $2492
    ld [$c719], sp
    inc a
    ld a, [de]
    ld l, c
    adc a
    ld [bc], a
    rrca
    inc d
    inc de
    inc bc
    ld c, c
    rrca
    adc e
    ld a, [bc]
    dec b

Jump_002_7e57:
    ccf
    dec bc
    inc de
    inc b
    ld a, $85
    inc d
    inc b
    jp nz, Jump_000_3e8d

    ld a, [hl-]
    ld h, a
    nop
    ccf
    pop hl
    add hl, bc
    and e
    inc d
    db $10
    ld de, $3011
    ld sp, hl
    dec b
    jp Jump_000_3a14


    ld a, d
    pop de
    sbc c
    ret


    ld e, $2f
    inc d
    add hl, bc
    ld [$08f7], sp
    ld h, c
    xor h
    ld d, $01
    inc sp
    ld a, d
    inc d
    dec h
    ld [$395b], sp
    sbc $02
    ld l, a
    ld a, [bc]
    rrca
    ld a, e
    inc de
    inc bc
    dec b
    sbc $12
    ld bc, $fd02
    rrca
    add hl, de
    ld a, [de]
    dec d
    ld d, $06
    ld de, $1303
    inc d
    ld b, a
    db $ed
    add b
    nop
    nop
    nop
    nop
    jr c, @+$12

    ld a, [hl]
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld a, $7f
    ld e, $7f
    ld e, $3f
    inc c
    ccf
    inc b
    rra
    inc bc
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    inc e
    ld [$3c7e], sp
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    cp $78
    cp $78
    db $fc
    jr nc, @-$02

    jr nz, @-$06

    ret nz

    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    jr c, jr_002_7efa

    ld a, [hl]
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ld e, $7f
    inc e

jr_002_7efa:
    ccf
    inc c
    ccf
    inc b
    rra
    inc bc
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    inc e
    ld [$3c7e], sp
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    inc a
    rst $38
    inc a
    cp $78
    cp $f8
    db $fc
    jr nc, @-$02

    jr nz, @-$06

    ret nz

    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    jr c, jr_002_7f3a

    ld a, [hl]
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ccf
    rst $38
    ld a, $7f
    ld e, $7f
    rra

jr_002_7f3a:
    ccf
    inc c
    ccf
    inc b
    rra
    inc bc
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    inc e
    ld [$3c7e], sp
    rst $38
    cp $ff
    ld a, $ff
    ld a, $ff
    inc a
    rst $38
    ld a, h
    cp $38
    cp $38
    db $fc
    jr nc, @-$02

    ld h, b
    ld hl, sp-$40
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    jr c, jr_002_7f7a

    ld a, [hl]
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    add hl, sp
    rst $38
    jr c, @+$81

    jr jr_002_7ff8

    rra

jr_002_7f7a:
    ccf
    rrca
    ccf
    rlca
    rra
    inc bc
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    inc e
    ld [$3c7e], sp
    rst $38
    cp $ff
    cp $ff
    cp $ff
    inc a
    rst $38
    inc e
    cp $18
    cp $38
    db $fc
    jr nc, @-$02

    ldh [$f8], a
    ret nz

    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    jr c, jr_002_7fba

    ld a, [hl]
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    inc a
    ld a, a
    ld e, $7f
    rra

jr_002_7fba:
    ccf
    inc c
    ccf
    inc b
    rra
    inc bc
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    inc e
    ld [$3c7e], sp
    rst $38
    cp $ff
    ld a, $ff
    ld a, $ff
    db $fc
    rst $38
    ld a, h
    cp $38
    cp $38
    db $fc
    jr nc, @-$02

    ld h, b
    ld hl, sp-$40
    ldh a, [rP1]
    ldh [rP1], a
    add b
    ld a, [$c141]
    ld c, $03
    bit 4, a
    jr z, jr_002_7fef

    inc c

jr_002_7fef:
    and $20
    jr z, jr_002_7ff4

    inc c

jr_002_7ff4:
    ld a, c
    ld [$c1a5], a

jr_002_7ff8:
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
