; Disassembly of "Adventure Island (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    pop hl

jr_000_0001:
    rst $20
    ld h, d
    ld l, e
    jp hl


    nop
    nop
    nop

RST_08::
    pop hl
    push de
    jr jr_000_0001

    nop
    nop
    nop
    nop

RST_10::
    add l
    ld l, a
    ret nc

    inc h
    ret


    nop
    nop
    nop

RST_18::
    add l
    ld l, a
    jr nc, jr_000_001d

    inc h

jr_000_001d:
    ld a, [hl]
    ret


Jump_000_001f:
    nop

RST_20::
    add a
    rst $10
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


    nop
    nop

RST_28::
    add e
    ld e, a
    ret nc

    inc d
    ret


    nop
    nop
    nop

RST_30::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_38::
    nop
    nop
    nop
    nop

Jump_000_003c:
    nop
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_0186


    nop
    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_01f6


    nop
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


Call_000_0061:
    nop

Jump_000_0062:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_0068:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_0070:
    nop

Call_000_0071:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00a0:
    nop
    nop

Jump_000_00a2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00c3:
    nop

Jump_000_00c4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00ff:
    nop

Boot::
    nop

Call_000_0101:
Jump_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "ADVENTURE ISLAND"

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $01

HeaderROMSize::
    db $02

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $18

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $42

HeaderGlobalChecksum::
    db $94, $61

Jump_000_0150:
    di
    ld sp, $dfff
    call Call_000_028b
    call Call_000_02f6
    ld hl, $c000
    ld bc, $1ff0
    call Call_000_0348
    ld hl, $ff8a
    ld bc, $0075
    call Call_000_0348
    ld a, $6e
    call Call_000_0350
    call Call_000_0211
    xor a
    ld [$c400], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, $01
    ldh [rIE], a
    ei
    jp Jump_000_064f


Jump_000_0186:
    push af
    push bc
    push de
    push hl
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_000_01cc

    call $ff80
    call Call_000_0415
    ld a, [$c65d]
    ldh [rSCX], a
    ld a, [$c65f]
    ldh [rSCY], a
    ldh a, [$a0]
    and a
    jr z, jr_000_01b7

    ldh a, [rLCDC]
    ldh [rLCDC], a
    ld a, $40
    ldh [rSTAT], a
    ldh a, [$a1]
    ldh [rLYC], a

Call_000_01b1:
    ldh a, [rIE]
    or $02
    ldh [rIE], a

jr_000_01b7:
    ld a, [$c400]
    and a
    jr z, jr_000_01cc

    ldh a, [$8c]
    bit 2, a
    jr z, jr_000_01cc

    ldh a, [$8d]
    bit 3, a
    jr z, jr_000_01cc

    jp Jump_000_0150


jr_000_01cc:
    ld a, [$c400]
    cp $03
    call nz, Call_000_02eb
    ld a, $03
    ld [$2000], a
    call $4003
    ldh a, [$99]
    ld [$2000], a
    ld hl, $ff92
    inc [hl]
    jr nz, jr_000_01e9

    inc hl
    inc [hl]

jr_000_01e9:
    ldh a, [$94]
    and a
    jr z, jr_000_01f1

    dec a
    ldh [$94], a

jr_000_01f1:
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_01f6:
    push af
    ldh a, [rSTAT]
    bit 2, a
    jr z, jr_000_020f

    and $fb

Jump_000_01ff:
    ldh [rSTAT], a
    ldh a, [rIE]
    and $fd
    ldh [rIE], a
    ldh a, [$a3]
    ldh [rSCY], a
    ldh a, [$a2]
    ldh [rSCX], a

jr_000_020f:
    pop af
    reti


Call_000_0211:
    ld a, $03
    ldh [$99], a
    ld [$2000], a

Jump_000_0218:
    jp $4000


    add b

Jump_000_021c:
    add b
    add b

Call_000_021e:
Jump_000_021e:
    add b

Jump_000_021f:
    add b

Jump_000_0220:
    add b
    add b

Jump_000_0222:
    add b
    add b
    add b
    add b
    add b
    add b

Jump_000_0228:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

Jump_000_0230:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

Call_000_0238:
Jump_000_0238:
    add b
    add b

Jump_000_023a:
    add b
    add b

Call_000_023c:
Jump_000_023c:
    add b
    add b

Call_000_023e:
Jump_000_023e:
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
    add b

Call_000_0263:
Jump_000_0263:
    push bc
    push de
    push hl
    ld b, a
    ld c, $00
    cp $80
    jr nc, jr_000_0287

    cp $7a
    jr nc, jr_000_0280

    cp $20
    jr c, jr_000_0280

    ld hl, $021b
    rst $18
    ld hl, $dee6
    cp [hl]
    jr c, jr_000_0287

    ld c, a

jr_000_0280:
    ld a, c
    ld [$dee6], a
    ld a, b
    ldh [$e5], a

jr_000_0287:
    pop hl
    pop de
    pop bc
    ret


Call_000_028b:
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7a09


Call_000_0295:
Jump_000_0295:
    ldh a, [rLCDC]
    or $80
    ldh [rLCDC], a
    call Call_000_02b4
    call Call_000_02c3
    ldh a, [$8b]
    ldh [rIE], a
    ret


Call_000_02a6:
    call Call_000_02b4
    ldh a, [rLCDC]
    and $fc
    ldh [rLCDC], a
    ldh a, [$8b]
    ldh [rIE], a
    ret


Call_000_02b4:
    ldh a, [rIE]
    ldh [$8b], a
    res 0, a
    ldh [rIE], a

jr_000_02bc:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_02bc

    ret


Call_000_02c3:
    ldh a, [rLCDC]
    or $03
    ldh [rLCDC], a
    ret


    ldh a, [rLCDC]
    and $df
    ldh [rLCDC], a
    ret


Call_000_02d1:
    ldh a, [rLCDC]
    or $60
    ldh [rLCDC], a
    ret


Call_000_02d8:
Jump_000_02d8:
    ldh [$94], a

jr_000_02da:
    db $76
    ldh a, [$94]
    and a
    jr nz, jr_000_02da

    ret


Call_000_02e1:
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl+]
    ldh [rOBP1], a
    ret


Call_000_02eb:
    ld a, $05
    ld [$2000], a
    ld b, $14
    call Call_000_0e96
    jp hl


Call_000_02f6:
    ld a, $16
    call Call_000_0e8e
    jp hl


Call_000_02fc:
Jump_000_02fc:
    add [hl]
    ld [hl+], a
    ret nc

Call_000_02ff:
    inc [hl]

Call_000_0300:
Jump_000_0300:
    ret


Call_000_0301:
Jump_000_0301:
    ld hl, $c000
    ld bc, $00a0

Call_000_0307:
    jp Jump_000_0348


    ld hl, $c200
    ld bc, $0010
    jp Jump_000_0348


Call_000_0313:
    ldh a, [$be]
    cp $a0
    ret nc

    ld a, $0a
    call Call_000_0eaa
    jp hl


Call_000_031e:
    push de
    push hl
    ld h, $00
    ldh a, [$8f]
    and $f8
    ld l, a

Call_000_0327:
    sla l
    rl h
    sla l
    rl h
    ld de, $9800
    add hl, de
    ldh a, [$8e]
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    add hl, de
    ld a, h
    ldh [$90], a
    ld a, l
    ldh [$91], a
    pop hl
    pop de
    ret


Call_000_0348:
Jump_000_0348:
jr_000_0348:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0348

    ret


Call_000_0350:
    ld d, a
    ld hl, $9800
    ld bc, $0800

jr_000_0357:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0357

    ret


Call_000_035f:
Jump_000_035f:
jr_000_035f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_035f

    ret


Call_000_0368:
jr_000_0368:
    ld a, [hl+]
    and a
    ret z

    ldh [$90], a
    ld a, [hl+]
    ldh [$91], a
    ld a, [hl+]
    ld b, a
    call Call_000_0377
    jr jr_000_0368

Call_000_0377:
Jump_000_0377:
    ldh a, [rLCDC]
    bit 7, a
    jr nz, jr_000_0393

    ld c, b
    ld b, $00
    ldh a, [$90]
    ld d, a
    ldh a, [$91]
    ld e, a
    bit 7, c
    jr z, jr_000_035f

    res 7, c
    ld a, [hl+]

jr_000_038d:
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_038d

    ret


jr_000_0393:
    ld d, h
    ld e, l
    ld hl, $c101
    ld a, [hl]
    add b
    cp $30
    jr c, jr_000_03a7

    xor a
    ld [$c100], a
    ld a, $01
    call Call_000_02d8

jr_000_03a7:
    ld a, $01
    ld [$c100], a
    ld a, [hl+]
    rst $10
    ldh a, [$90]
    ld [hl+], a
    ldh a, [$91]
    ld [hl+], a
    bit 7, b
    jr z, jr_000_03c4

    res 7, b
    ld a, b
    ld [hl+], a
    ld a, [de]
    inc de

jr_000_03be:
    ld [hl+], a
    dec b
    jr nz, jr_000_03be

    jr jr_000_03cc

jr_000_03c4:
    ld a, b
    ld [hl+], a

jr_000_03c6:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_03c6

jr_000_03cc:
    xor a
    ld [hl], a
    ld a, l
    dec a
    dec a
    ld [$c101], a
    xor a
    ld [$c100], a
    ld h, d
    ld l, e
    ret


Call_000_03db:
    ld a, b
    ldh [$90], a
    ld a, c
    ldh [$91], a

Call_000_03e1:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a

Call_000_03e5:
jr_000_03e5:
    push bc
    call Call_000_0377
    ld c, $91
    ld a, [c]
    add $20
    ld [c], a
    jr nc, jr_000_03f7

    dec c
    ld a, [c]
    inc a
    and $9b
    ld [c], a

jr_000_03f7:
    pop bc
    bit 7, c
    jr z, jr_000_040e

    bit 7, b
    jr z, jr_000_0403

    dec hl
    jr jr_000_040e

jr_000_0403:
    ld a, b

Call_000_0404:
Jump_000_0404:
    and $7f
    ld e, a

Call_000_0407:
    ld a, l

Call_000_0408:
Jump_000_0408:
    sub e
    ld l, a
    ld a, h
    sbc $00
    ld h, a

jr_000_040e:
    dec c
    ld a, c
    and $7f

Call_000_0412:
    jr nz, jr_000_03e5

Call_000_0414:
    ret


Call_000_0415:
    ld a, [$c100]
    and a
    ret nz

    ld hl, $c102

jr_000_041d:
    ld a, [hl+]
    and a
    jr nz, jr_000_042d

    ld [$c101], a

Call_000_0424:
Jump_000_0424:
    ld [$c102], a
    ld a, $01
    ld [$c100], a

Call_000_042c:
Jump_000_042c:
    ret


jr_000_042d:
    ld d, a
    ld a, [hl+]
    ld e, a

Call_000_0430:
Jump_000_0430:
    ld a, [hl+]
    ld b, a

jr_000_0432:
    ld a, [hl+]
    ld [de], a

Call_000_0434:
Jump_000_0434:
    inc de
    dec b
    jr nz, jr_000_0432

Call_000_0438:
Jump_000_0438:
    jr jr_000_041d

Call_000_043a:
Jump_000_043a:
    ld a, d
    ldh [$90], a
    ld a, e
    ldh [$91], a
    push bc
    call Call_000_046a
    ld c, $01
    push hl
    ld hl, $c435
    call Call_000_03e5
    pop hl
    pop bc
    push bc
    call Call_000_046a
    dec c
    dec c
    set 7, c
    push hl
    ld hl, $c435
    call Call_000_03e5
    pop hl
    pop bc
    call Call_000_046a
    ld hl, $c435
    call Call_000_0377
    ret


Call_000_046a:
    push bc
    ld de, $c435
    ld a, [hl+]
    ld [de], a

Call_000_0470:
Jump_000_0470:
    inc de
    ld c, b
    dec c
    dec c
    ld a, [hl+]

jr_000_0475:
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0475

    ld a, [hl+]
    ld [de], a
    pop bc
    ret


Call_000_047e:
    ld c, $00

Call_000_0480:
jr_000_0480:
    push bc
    push hl
    ld b, [hl]
    call Call_000_049c
    pop hl
    pop bc
    inc hl
    inc c
    ld a, $06
    cp c
    jr nz, jr_000_0480

    ret


    nop
    add b
    add b
    add b
    nop
    adc b
    add b
    adc b
    nop
    sub b
    add b
    sub b

Call_000_049c:
    call Call_000_04d1
    jr z, jr_000_04a4

    call Call_000_04dd

jr_000_04a4:
    ld a, c
    ld hl, $0490
    rst $20
    ld hl, $c6e7
    ld b, $08

jr_000_04ae:
    push bc
    ld b, $40
    ld a, d
    ldh [$90], a
    ld a, e
    ldh [$91], a
    call Call_000_0377
    ld b, $40
    ld a, d
    ldh [$90], a
    ld a, e
    ldh [$91], a
    call Call_000_0377
    ld a, e
    add $80
    ld e, a
    jr nc, jr_000_04cc

    inc d

jr_000_04cc:
    pop bc
    dec b
    jr nz, jr_000_04ae

    ret


Call_000_04d1:
    ld de, $ff9a
    ld a, c
    add e
    ld e, a
    jr nc, jr_000_04da

    inc d

jr_000_04da:
    ld a, [de]
    cp b
    ret


Call_000_04dd:
    ld hl, $ff99
    ld a, [hl]
    push af
    ld a, b
    swap a
    srl a
    and $07
    ld [hl], a
    ld [$2000], a
    ld a, b
    ld [de], a
    and $1f
    ld b, a
    push bc
    ld a, b
    ld hl, $4000
    rst $20

Jump_000_04f8:
    ld h, d
    ld l, e
    ld de, $c6e7
    call Call_000_0508
    pop bc
    pop af
    ldh [$99], a
    ld [$2000], a
    ret


Call_000_0508:
    ld a, [hl+]
    ld c, a

jr_000_050a:
    ld a, [hl+]
    cp c
    jr z, jr_000_0512

    ld [de], a
    inc de
    jr jr_000_050a

jr_000_0512:
    ld a, [hl+]
    and a
    ret z

    ld b, a
    ld a, [hl+]

jr_000_0517:
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0517

    jr jr_000_050a

Call_000_051e:
    ld a, $01
    ldh [$99], a
    ld [$2000], a

Call_000_0525:
    jp $7ae2


    ret


Call_000_0529:
    ldh a, [$99]
    push af
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7afc
    pop af
    ldh [$99], a
    ld [$2000], a
    ret


Call_000_053d:
    and $0f
    rst $18
    ld [$c435], a
    ld a, d
    ldh [$90], a
    ld a, e
    ldh [$91], a
    ld b, $01
    ld hl, $c435
    jp Jump_000_0377


Call_000_0551:
Jump_000_0551:
    push de
    push hl
    ld b, a
    swap a
    and $0f
    rst $18
    ld [$c435], a
    pop hl
    ld a, b
    and $0f
    rst $18
    ld [$c436], a
    ld a, d
    ldh [$90], a
    ld a, e
    ldh [$91], a
    ld b, $02
    ld hl, $c435
    call Call_000_0377
    pop de
    inc de
    inc de
    ret


    ld b, $02
    ldh a, [$8d]
    bit 0, a
    jr z, jr_000_0582

    bit 0, b
    scf
    ret


jr_000_0582:
    bit 1, a
    jr z, jr_000_05d7

    bit 1, b
    scf
    ret


Call_000_058a:
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c400]
    cp $02
    jr z, jr_000_05b2

    ld de, $c432
    ld hl, $ff8d
    bit 6, [hl]
    jr z, jr_000_05a6

    ld a, [de]
    and a
    jr nz, jr_000_05a3

    ld a, b

jr_000_05a3:
    dec a
    jr jr_000_05cf

jr_000_05a6:
    ld a, [hl]
    and $84
    ret z

    ld a, [de]
    inc a
    cp b
    jr c, jr_000_05cf

    xor a
    jr jr_000_05cf

jr_000_05b2:
    ld de, $c431
    ld hl, $ff8d
    bit 5, [hl]
    jr z, jr_000_05c4

    ld a, [de]
    and a
    jr nz, jr_000_05c1

    ld a, c

jr_000_05c1:
    dec a
    jr jr_000_05cf

jr_000_05c4:
    ld a, [hl]
    and $14
    jr z, jr_000_05d7

    ld a, [de]
    inc a
    cp c
    jr c, jr_000_05cf

    xor a

jr_000_05cf:
    ld [de], a
    ld a, $38
    call Call_000_0263
    scf
    ret


jr_000_05d7:
    scf
    ccf
    ret


Call_000_05da:
    xor a
    ld [$c431], a
    ld [$c432], a
    ld [$c433], a
    ld [$c434], a
    jp Jump_000_05ea


Call_000_05ea:
Jump_000_05ea:
    ld c, [hl]
    inc hl
    inc hl
    ld a, [$c434]
    and a
    jr z, jr_000_0604

    push hl
    push bc
    ld c, $90
    ld [c], a
    inc c
    ld a, [$c433]
    ld [c], a
    ld b, $01
    call Call_000_0377
    pop bc
    pop hl

jr_000_0604:
    inc hl
    push hl

Call_000_0606:
Jump_000_0606:
    inc hl
    ld a, [$c432]
    and a

Jump_000_060b:
    jr z, jr_000_0616

    ld b, a
    sla c

Jump_000_0610:
    xor a

jr_000_0611:
    add c
    dec b
    jr nz, jr_000_0611

    rst $10

jr_000_0616:
    ld a, [$c431]
    add a
    rst $10
    ld a, [hl+]
    ldh [$91], a
    ld [$c433], a
    ld a, [hl]

Call_000_0622:
    ldh [$90], a
    ld [$c434], a
    pop hl
    ld b, $01
    jp Jump_000_0377


    sub e
    db $d3
    sub e
    ld [bc], a
    ld [de], a
    inc bc
    inc de
    inc b
    inc d
    dec b
    dec d

Jump_000_0638:
    ld b, $16
    jr nz, @+$32

    ld hl, $2231
    ld [hl-], a
    nop
    nop
    nop
    nop
    and a
    nop

Jump_000_0646:
    ld sp, $dfff
    call Call_000_02a6
    call Call_000_028b

Jump_000_064f:
    ld hl, $062d
    call Call_000_02e1
    call Call_000_0211
    ld a, $7f
    call Call_000_0263
    ld hl, $c101
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7c6e
    ld a, [$c400]
    and $0f
    rst $00
    ld l, a
    rlca
    cp l
    ld [$091f], sp
    ld [hl], e
    dec c
    db $db
    inc c
    db $fc
    dec bc
    ld h, [hl]
    inc c
    inc b
    dec bc
    sub a
    dec bc
    ld h, h
    dec c
    adc c
    ld b, $21
    ld b, b
    ld b, $cd
    ld a, [hl]
    inc b
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    ld hl, $7d04
    call Call_000_0368
    call Call_000_0295
    ld hl, $06d0
    call Call_000_05da

jr_000_06a5:
    ld a, $01
    call Call_000_02d8
    ld hl, $06d0
    call Call_000_058a
    ld hl, $06d0
    call c, Call_000_05ea
    ldh a, [$8d]
    bit 0, a
    jr z, jr_000_06a5

    ld a, [$c432]
    sla a
    sla a

Jump_000_06c3:
    sla a
    ld [$c413], a
    ld a, $01
    ld [$c400], a
    jp Jump_000_083b


    ld bc, $0008
    rlca
    and c
    sbc b
    pop bc
    sbc b
    pop hl
    sbc b
    ld bc, $2199
    sbc c
    ld b, c
    sbc c
    ld h, c
    sbc c
    add c
    sbc c

jr_000_06e4:
    call Call_000_028b
    ld a, $01

Call_000_06e9:
    ldh [$99], a
    ld [$2000], a
    ld hl, $7e17
    call Call_000_0368
    call Call_000_0295
    call Call_000_0745

jr_000_06fa:
    ld a, $01
    call Call_000_02d8
    ld hl, $c413
    ld c, $8d
    ld a, [c]

Call_000_0705:
    and $10
    jr z, jr_000_070c

    inc [hl]
    jr jr_000_06e4

jr_000_070c:
    ld a, [c]
    and $20
    jr z, jr_000_0714

    dec [hl]
    jr jr_000_06e4

jr_000_0714:
    ld a, [c]
    and $40

Call_000_0717:
    jr z, jr_000_071f

    ld a, [hl]
    add $10
    ld [hl], a
    jr jr_000_06e4

jr_000_071f:
    ld a, [c]
    and $80
    jr z, jr_000_072a

    ld a, [hl]
    sub $10
    ld [hl], a
    jr jr_000_06e4

jr_000_072a:
    ld a, [c]
    bit 0, a
    jr z, jr_000_0735

    ld hl, $c401
    inc [hl]
    jr jr_000_06e4

jr_000_0735:
    ldh a, [$8d]
    bit 3, a
    jr z, jr_000_06fa

    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7e2c


Call_000_0745:
    ld hl, $c413
    ld a, [hl]
    and $3f
    ld [hl], a
    ld de, $984d
    ld hl, $0630
    call Call_000_0551
    ld hl, $c401
    ld a, [hl]
    and $01
    ld [hl], a
    ld de, $986d
    ld hl, $0630
    jp Jump_000_0551


    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7d9d


    ld hl, $08af
    call Call_000_047e
    ld a, $03
    call Call_000_0e8e
    ld c, $00
    call Call_000_112f
    ld a, $04
    call Call_000_0e8e
    ld c, $01
    call Call_000_112f
    ld a, $05
    call Call_000_0e8e
    ld c, $03
    call Call_000_112f
    ld hl, $08ac
    call Call_000_02e1
    xor a
    call Call_000_0e8e
    call Call_000_0368
    ld a, [$c403]
    and a
    jr z, jr_000_07ae

    ld a, $12
    call Call_000_0e8e
    call Call_000_0368

jr_000_07ae:
    ld a, $01
    call Call_000_0e8e
    ld bc, $9841
    call Call_000_03db
    ld hl, $08b5
    call c, Call_000_05ea
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7bc3
    call Call_000_12e0
    ld a, $50
    call Call_000_02d8
    ld hl, $08b5
    call Call_000_05da
    ld a, [$c403]
    ld [$c432], a
    ld hl, $08b5
    call Call_000_05ea
    ld bc, $0168

jr_000_07e6:
    call Call_000_086b
    jr nz, jr_000_07e6

jr_000_07eb:
    call Call_000_086b
    ld hl, $c65d
    inc [hl]
    jr nz, jr_000_07eb

    ld a, $02
    call Call_000_0e8e
    call Call_000_0368
    ld a, $01
    call Call_000_0263
    ld bc, $04b0

jr_000_0804:
    call Call_000_086b
    jr nz, jr_000_0804

    xor a
    ld [$c400], a
    jp Jump_000_0646


    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

Jump_000_0818:
    ld a, [$c432]
    and a
    jr z, jr_000_0838

    ld hl, $0810
    ld a, [$c413]
    and $07
    rst $10
    ld a, [$c413]
    and $38
    or [hl]
    ld [$c413], a
    ld a, [$c40f]
    and a
    jr nz, jr_000_0844

    jr jr_000_083b

jr_000_0838:
    ld [$c413], a

Jump_000_083b:
jr_000_083b:
    ld hl, $c41a
    ld bc, $0005
    call Call_000_0348

jr_000_0844:
    xor a
    ld [$c41f], a
    ld [$c428], a
    ld hl, $c415
    ld bc, $0004
    call Call_000_0348
    xor a
    ld [$c42f], a
    ld [$c401], a
    ld [$c404], a
    ld a, $03

Call_000_0860:
    ld [$c419], a
    ld a, $01
    ld [$c400], a

Call_000_0868:
    jp Jump_000_0646


Call_000_086b:
    push bc
    call Call_000_0d6e
    call Call_000_12e0
    ld a, [$c403]
    and a
    jr z, jr_000_0884

    ld hl, $08b5
    call Call_000_058a
    ld hl, $08b5
    call c, Call_000_05ea

jr_000_0884:
    ld a, [$c413]
    cp $08
    jr nc, jr_000_089f

    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7ca7
    jr c, jr_000_089f

    ld a, $0a
    ld [$c400], a
    jp Jump_000_0646


jr_000_089f:
    pop bc
    ld hl, $ff8d
    bit 3, [hl]
    jp nz, Jump_000_0818

    dec bc
    ld a, b
    or c
    ret


    sbc h
    db $d3
    sub e
    ret nz

    adc $ae
    pop bc
    xor h
    xor l
    ld bc, $8002
    add a
    ld b, [hl]
    sbc h
    ld h, [hl]
    sbc h
    ld a, [$c413]
    and $07
    jp z, Jump_000_08cd

Jump_000_08c5:
    ld a, $02

Jump_000_08c7:
    ld [$c400], a
    jp Jump_000_091f


Jump_000_08cd:
    ld hl, $0914
    call Call_000_047e
    ld a, $46
    call Call_000_0e9c
    ld c, $00
    call Call_000_112f
    ld a, $47
    call Call_000_0e9c
    ld bc, $9800
    call Call_000_03db
    ld hl, $091a
    call Call_000_0368
    ld a, $01

Call_000_08f0:
Jump_000_08f0:
    ldh [$99], a
    ld [$2000], a
    call $7e5a
    call Call_000_0295
    ld a, $0a
    call Call_000_0263

jr_000_0900:
    call Call_000_0d6e
    call Call_000_12e0
    ldh a, [$8d]
    and $0f
    jr z, jr_000_0900

    ld a, $02
    ld [$c400], a
    jp Jump_000_0646


    ret nz

    adc $ae
    pop bc
    xor d
    xor e
    sbc d
    jr nz, @-$6a

    inc h
    nop

Jump_000_091f:
    ld a, [$c413]
    and $07
    cp $06
    jr nz, jr_000_092e

    call Call_000_0295
    jp Jump_000_0a06


jr_000_092e:
    ld hl, $0adb
    ld de, $c435
    ld bc, $0006
    call Call_000_035f
    ld a, $02
    ldh [$99], a
    ld [$2000], a
    ld hl, $7800
    ld a, [$c413]
    rst $20
    ld h, d
    ld l, e
    ld a, [hl+]
    ld [$c43a], a
    push hl
    ld hl, $c435
    call Call_000_047e
    ld hl, $1190
    ld c, $02
    call Call_000_112f
    ld bc, $0e0a
    ld de, $9820
    ld hl, $0ae1
    call Call_000_043a
    ld bc, $1407
    ld de, $9960
    ld hl, $0ae1
    call Call_000_043a
    ld a, $02
    ldh [$99], a
    ld [$2000], a
    pop hl
    ld bc, $9841
    call Call_000_03db
    ld a, $06
    call Call_000_0e8e
    call Call_000_0368
    ld hl, $0aea
    call Call_000_05da
    ld a, $07
    call Call_000_0e8e
    ld a, [$c413]
    and $38
    sla a
    rst $10
    ld b, $10
    ld a, $98
    ldh [$90], a
    ld a, $02
    ldh [$91], a
    call Call_000_0377
    call Call_000_0eb7
    call Call_000_0ac7
    call Call_000_0a0e
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7ee5
    call Call_000_0ec1
    ld hl, $0aea
    call Call_000_05ea
    call Call_000_0295
    ld a, $0a
    call Call_000_0263

jr_000_09cf:
    call Call_000_0d6e
    call Call_000_12e0
    ld hl, $0aea
    call Call_000_058a
    ld hl, $0aea
    call c, Call_000_05ea
    ldh a, [$8d]
    bit 3, a
    jr nz, jr_000_0a06

    and $03
    jr z, jr_000_09cf

    call Call_000_0a18
    call Call_000_0a0e
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7ee5
    ld hl, $0aea
    call Call_000_05ea
    call Call_000_0ec1
    jr jr_000_09cf

Jump_000_0a06:
jr_000_0a06:
    ld a, $03
    ld [$c400], a
    jp Jump_000_0646


Call_000_0a0e:
    ld a, $01
    ldh [$99], a
    ld [$2000], a

Call_000_0a15:
    jp $7c08


Call_000_0a18:
    ldh a, [$8d]
    bit 1, a
    jr nz, jr_000_0a2c

    ld a, [$c431]
    rst $00
    ld [hl], $0a
    ld b, b
    ld a, [bc]
    ld b, a
    ld a, [bc]
    ld c, [hl]
    ld a, [bc]
    ld d, l
    ld a, [bc]

jr_000_0a2c:
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7eaf


    ld b, $04
    ld a, [$c41a]

jr_000_0a3b:
    and a
    jr z, jr_000_0a6d

    jr jr_000_0a72

    ld b, $08
    ld a, [$c41b]
    jr jr_000_0a3b

    ld b, $0c
    ld a, [$c41c]
    jr jr_000_0a3b

    ld b, $10
    ld a, [$c41d]
    jr jr_000_0a3b

    ld hl, $c41f
    bit 0, [hl]
    jr nz, jr_000_0a6d

    ld a, [$c41e]
    and a
    jr z, jr_000_0a6d

    set 0, [hl]
    ld hl, $c41e
    dec [hl]

Call_000_0a68:
Jump_000_0a68:
    ld a, $36
    jp Jump_000_0263


jr_000_0a6d:
    ld a, $37
    jp Jump_000_0263


Call_000_0a72:
Jump_000_0a72:
jr_000_0a72:
    ld hl, $c428
    ld a, [hl]
    and $1c
    cp $04
    jr nz, jr_000_0a81

    ld hl, $c41a
    jr jr_000_0a9a

jr_000_0a81:
    cp $08
    jr nz, jr_000_0a8a

    ld hl, $c41b
    jr jr_000_0a9a

jr_000_0a8a:
    cp $0c
    jr nz, jr_000_0a93

    ld hl, $c41c
    jr jr_000_0a9a

jr_000_0a93:
    cp $10
    jr nz, jr_000_0aa0

    ld hl, $c41d

jr_000_0a9a:
    ld a, [hl]
    cp $09
    jr nc, jr_000_0aa0

    inc [hl]

jr_000_0aa0:
    ld hl, $c41a
    ld a, b
    and a
    jr z, jr_000_0abe

    cp $14
    jr z, jr_000_0ab9

    srl a
    srl a
    dec a
    rst $10
    ld a, [hl]
    and a
    jr z, jr_000_0a6d

    dec [hl]
    call Call_000_0a68

jr_000_0ab9:
    ld hl, $c42a
    res 7, [hl]

jr_000_0abe:
    ld hl, $c428
    ld a, [hl]
    and $e3
    or b
    ld [hl], a
    ret


Call_000_0ac7:
    ld hl, $0af8

jr_000_0aca:
    ld a, [hl+]
    ld e, a
    or [hl]
    ret z

    ld a, [hl+]
    push hl
    ld h, a
    ld l, e
    ld de, $0000
    call Call_000_2322
    pop hl
    jr jr_000_0aca

    ret nz

    ret nz

    db $e3
    pop bc
    and a
    ret nz

    ld b, l
    ld b, [hl]
    ld b, a
    ld d, [hl]
    nop
    ld d, [hl]
    ld d, l
    ld b, [hl]
    ld d, a
    dec b
    ld bc, $0700
    add c
    sbc c
    add l
    sbc c
    adc c
    sbc c
    adc l
    sbc c
    sub c
    sbc c
    ld c, $2e
    add hl, de
    ld l, $30
    ld l, $43
    ld l, $56
    ld l, $00
    nop
    ld hl, $0b76
    call Call_000_047e
    ld c, $00
    ld hl, $0b82
    call Call_000_112f
    ld c, $01
    ld hl, $0b86
    call Call_000_112f
    ld a, $0b
    call Call_000_0eaa
    ld bc, $9820
    call Call_000_03db
    ld a, $0c
    call Call_000_0eaa
    ld bc, $9832
    call Call_000_03db
    ld a, $0d
    call Call_000_0eaa
    ld bc, $9a00
    call Call_000_03db
    ld hl, $3043
    ld de, $4877
    call Call_000_2322
    call Call_000_0295
    ld bc, $00b4
    call Call_000_0b68
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    ld hl, $7f5a
    call Call_000_0368
    ld bc, $0474
    call Call_000_0b68
    ld a, $08
    ld [$c400], a
    jp Jump_000_0646


Call_000_0b68:
jr_000_0b68:
    push bc
    call Call_000_0d6e
    call Call_000_12e0
    pop bc
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0b68

    ret


    db $e4
    push hl
    and a
    pop bc
    xor c
    xor e
    db $e3
    adc $a7
    and [hl]
    sub b
    sub c
    and $1c
    inc b
    nop
    and $30
    ld b, $c3
    ld a, [hl-]
    inc b
    ret


    ld a, $02
    nop
    db $e4
    ld c, $02
    db $e4
    ld e, $02
    nop
    ld hl, $0b7c
    call Call_000_047e
    ld c, $00
    ld hl, $0b90

Call_000_0ba2:
    call Call_000_112f
    ld a, $18
    call Call_000_0e8e
    ld bc, $9800
    call Call_000_03db
    ld a, $22
    call Call_000_0e74
    call Call_000_0368
    ld hl, $3032
    ld de, $f050
    call Call_000_2322
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7e47
    ld b, $80

jr_000_0bcd:
    push bc
    ld bc, $0008
    call Call_000_0b68
    ld hl, $c65d
    inc [hl]
    ld hl, $ffa2
    dec [hl]
    ld a, [hl]
    and $1f
    jr nz, jr_000_0be6

    ld a, $40
    call Call_000_0263

jr_000_0be6:
    pop bc
    dec b
    jr nz, jr_000_0bcd

    ld a, $12
    call Call_000_0263
    ld a, $46
    call Call_000_0e64
    call Call_000_0368

jr_000_0bf7:
    call Call_000_0d6e
    jr jr_000_0bf7

    ld hl, $0c60
    call Call_000_047e
    xor a
    ld [$c42a], a
    call Call_000_0ec1
    ld a, $48
    call Call_000_0e64
    ld c, $02
    call Call_000_112f
    ld a, $0d
    call Call_000_0e8e
    ld bc, $98ee
    call Call_000_03db
    ld bc, $0e09
    ld de, $9800
    ld hl, $0ae1
    call Call_000_043a
    ld a, $10
    call Call_000_0e8e
    call Call_000_0368
    ld a, $0e
    call Call_000_0e8e
    ld bc, $9920
    call Call_000_03db
    ld hl, $2f0b
    ld de, $2076
    call Call_000_2322
    ld hl, $2f01
    ld de, $8838
    call Call_000_2322
    call Call_000_0295
    ld a, $09
    call Call_000_0263

Jump_000_0c57:
    call Call_000_0d6e
    call Call_000_12e0
    jp Jump_000_0c57


    ret nz

    ret nz

    pop hl
    pop bc
    and a
    or b
    ld hl, $0cd5
    call Call_000_047e
    xor a
    ld [$c42a], a
    call Call_000_0ec1
    ld a, $47
    call Call_000_0e64
    ld c, $02
    call Call_000_112f
    ld bc, $1409
    ld de, $9800
    ld hl, $0ae1
    call Call_000_043a
    ld a, $09
    call Call_000_0e8e
    call Call_000_0368
    ld a, $08
    call Call_000_0e8e
    ld bc, $9a00
    call Call_000_03db
    ld a, $0a
    call Call_000_0e8e
    ld bc, $99ce
    call Call_000_03db
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7ba8
    call Call_000_0295
    ld a, $09
    call Call_000_0263
    ld bc, $01e0
    call Call_000_0cc7
    ld a, $03
    ld [$c400], a
    jp Jump_000_0646


Call_000_0cc7:
jr_000_0cc7:
    push bc
    call Call_000_0d6e

Call_000_0ccb:
    call Call_000_12e0
    pop bc
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0cc7

    ret


    ret nz

    ret nz

    ld [c], a
    pop bc
    and a
    or b
    ld a, [$c413]
    and $07

Call_000_0ce0:
    cp $06
    jr nz, jr_000_0ce9

    call Call_000_0295
    jr jr_000_0d56

jr_000_0ce9:
    ld hl, $0d5e
    call Call_000_047e
    xor a
    ld [$c42a], a
    call Call_000_0ec1
    ld a, $48
    call Call_000_0e9c
    ld bc, $9820
    call Call_000_03db
    ld hl, $2f71
    ld de, $2060
    call Call_000_2322
    call Call_000_0295
    ld a, $0f
    call Call_000_0263
    ld a, $20
    ldh [$92], a
    ld b, $06

jr_000_0d18:
    push bc
    call Call_000_0d6e
    ld hl, $ff8d
    res 1, [hl]
    call Call_000_12e0
    pop bc
    ld hl, $c665
    ld a, [hl]
    and a
    jr z, jr_000_0d31

    inc [hl]
    bit 7, a
    jr nz, jr_000_0d4c

jr_000_0d31:
    ld a, b
    and a
    jr z, jr_000_0d18

    ldh a, [$92]
    cp $2a
    jr c, jr_000_0d18

    xor a
    ldh [$92], a
    dec b
    push bc
    ld hl, $2f9f
    ld de, $9000
    call Call_000_2322
    pop bc
    jr jr_000_0d18

jr_000_0d4c:
    ld a, $0d
    call Call_000_0263
    ld a, $80
    call Call_000_02d8

jr_000_0d56:
    ld a, $01
    ld [$c400], a
    jp Jump_000_0646


    ret nz

    ret nz

    ret nz

    pop bc
    and a
    xor c
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $79d7


Call_000_0d6e:
    ld a, $01
    jp Jump_000_02d8


    ld a, $01
    ld [$c403], a
    xor a
    ld [$c421], a
    ld [$c402], a
    call Call_000_0eb7
    call Call_000_1a80
    call Call_000_0f4d
    call Call_000_0f1f
    call Call_000_0ec1
    ld a, [$c1fd]
    cp $08
    jr nz, jr_000_0da4

    ld a, $01
    ldh [$99], a
    ld [$2000], a
    ld hl, $7c5e
    ld c, $03
    call Call_000_112f

Jump_000_0da4:
jr_000_0da4:
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7c2d

jr_000_0dae:
    call Call_000_0d6e
    call Call_000_02eb
    call Call_000_1a86
    call Call_000_1acc
    call Call_000_12e0
    ld hl, $c425
    ldh a, [$8d]
    bit 3, a
    jr z, jr_000_0de3

    ld a, [hl]
    xor $01
    ld [hl], a
    jr nz, jr_000_0dd3

    ld a, $7a
    call Call_000_0263
    jr jr_000_0de7

jr_000_0dd3:
    ld a, $3f
    call Call_000_0263
    call Call_000_0d6e
    ld a, $7b
    call Call_000_0263
    ld hl, $c425

jr_000_0de3:
    bit 0, [hl]
    jr nz, jr_000_0dae

jr_000_0de7:
    ld a, [$c421]
    bit 0, a
    jp nz, Jump_000_0e21

    ld a, [$c424]
    and a
    jr nz, jr_000_0e14

    call Call_000_0ec1
    ld a, [$c425]
    bit 7, a

Call_000_0dfd:
    jr nz, jr_000_0dae

Call_000_0dff:
    call Call_000_11ac
    call Call_000_108d
    jr jr_000_0dae

    call Call_000_0eb7
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7a2e


jr_000_0e14:
    call Call_000_0eb7
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7a69


Jump_000_0e21:
    push af
    ld hl, $c428
    ld a, [hl]
    and $e3
    ld [hl], a
    call Call_000_0eb7
    pop af
    bit 7, a
    jr z, jr_000_0e3d

    ld a, $60
    call Call_000_02d8

Jump_000_0e36:
    ld a, $10
    call Call_000_0263
    jr jr_000_0e57

Call_000_0e3d:
jr_000_0e3d:
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7aa4

jr_000_0e47:
    call Call_000_0d6e
    call Call_000_108d
    call Call_000_12e0
    ld a, [$c421]
    bit 7, a
    jr z, jr_000_0e47

jr_000_0e57:
    call Call_000_12e0
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7ab2


Call_000_0e64:
    ld e, a
    ld a, $02
    ldh [$99], a
    ld [$2000], a
    ld hl, $7800

jr_000_0e6f:
    ld a, e
    rst $20
    ld h, d
    ld l, e
    ret


Call_000_0e74:
    ld e, a
    ld a, $03
    ldh [$99], a
    ld [$2000], a
    ld hl, $7800
    jr jr_000_0e6f

    ld e, a
    ld a, $04
    ldh [$99], a
    ld [$2000], a
    ld hl, $4000
    jr jr_000_0e6f

Call_000_0e8e:
    ld b, a
    ld a, $05
    ldh [$99], a
    ld [$2000], a

Call_000_0e96:
    ld e, b
    ld hl, $7a00
    jr jr_000_0e6f

Call_000_0e9c:
    ld b, a
    ld a, $06
    ldh [$99], a
    ld [$2000], a
    ld e, b
    ld hl, $7800
    jr jr_000_0e6f

Call_000_0eaa:
    ld e, a
    ld a, $07
    ldh [$99], a
    ld [$2000], a
    ld hl, $4000
    jr jr_000_0e6f

Call_000_0eb7:
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7dd9


Call_000_0ec1:
    ld hl, $c42a
    bit 7, [hl]
    ret nz

    ld a, [$c428]
    and $1c
    ret z

    cp [hl]
    jr z, jr_000_0ee7

    ld [hl], a
    ld hl, $c428
    ld a, [hl]
    and $e3
    ld [hl], a
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_000_0ee4

    call Call_000_12e0
    call Call_000_0d6e

jr_000_0ee4:
    call Call_000_0f1f

jr_000_0ee7:
    ld hl, $c42a
    ld a, [$c428]
    or [hl]
    ld [$c428], a
    set 7, [hl]
    and $1c
    cp $14
    ret z

    ld a, [$c400]
    cp $02
    ret z

    ldh a, [rLCDC]
    bit 7, a
    ret z

    xor a
    ld [$c426], a
    ld hl, $c425
    set 7, [hl]

Jump_000_0f0c:
    ld b, $40

jr_000_0f0e:
    push bc
    call Call_000_0d6e
    call Call_000_12e0
    pop bc
    dec b
    jr nz, jr_000_0f0e

    ld hl, $c425
    res 7, [hl]

Call_000_0f1e:
    ret


Call_000_0f1f:
    ldh a, [$99]
    push af
    ld a, $06
    ldh [$99], a
    ld [$2000], a
    ld a, [$c42a]
    ld hl, $7880
    srl a
    srl a
    rst $20
    ld h, d
    ld l, e
    ld c, $01
    call Call_000_112f
    pop af
    ldh [$99], a
    ld [$2000], a
    ret


    ret nz

    ret nz

    ret nz

    pop bc
    ret nz

    ret nz

    sbc h
    ld de, $ef01
    nop

Call_000_0f4d:
    ld hl, $0f42
    call Call_000_047e
    call Call_000_1115
    ld hl, $0f48
    call Call_000_0368
    call Call_000_104e

Jump_000_0f5f:
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    call $7b2b
    push hl
    ld h, d
    ld l, e
    push hl
    ld c, $04
    call Call_000_0480
    pop hl
    call $7b44
    ld a, [hl+]
    push hl
    push af
    ld a, $03
    ldh [$99], a
    ld [$2000], a
    pop af
    ld hl, $7800
    rst $20
    ld hl, $c667
    call Call_000_0fa9
    pop hl
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    ld a, [hl]
    push af
    ld a, $03
    ldh [$99], a
    ld [$2000], a
    pop af
    ld hl, $7800
    rst $20
    ld hl, $c66f
    call Call_000_0fa9
    jr jr_000_0fba

Call_000_0fa9:
    ld b, $08

jr_000_0fab:
    ld c, $08

jr_000_0fad:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_000_0fad

    ld a, $08
    rst $10
    dec b
    jr nz, jr_000_0fab

    ret


jr_000_0fba:
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    call $7924
    pop hl
    ld a, [hl+]
    push hl
    ld hl, $4200
    rst $20
    ld h, d
    ld l, e
    call Call_000_02e1
    pop hl
    ld a, [hl+]
    and a
    jr nz, jr_000_0fe7

    ld a, $30
    ld [$c410], a
    ld a, $50
    ld [$c411], a
    jr jr_000_0ff1

jr_000_0fe7:
    ld a, $48
    ld [$c410], a
    ld a, $50
    ld [$c411], a

jr_000_0ff1:
    call $7b5b
    ld a, [$c65f]
    and $f0
    ld l, a
    sub $a0
    ld [$c65f], a
    ld a, [$c660]
    ld h, a
    sbc $00
    ld [$c660], a
    push hl
    xor a
    ld [$c0dc], a
    ld b, $14

jr_000_100f:
    push bc

Call_000_1010:
    ld a, $08
    ld [$c0da], a
    call Call_000_11ac
    ld a, [$c413]
    and $07
    cp $07
    jr z, jr_000_1028

    ld a, [$c42f]
    bit 0, a
    jr nz, jr_000_1033

jr_000_1028:
    call Call_000_1acc
    ld a, $08
    ld [$c0da], a
    call Call_000_12e0

jr_000_1033:
    pop bc
    dec b
    jr nz, jr_000_100f

    ld a, $02
    ld [$c0dc], a
    ld a, $08
    ld [$c0da], a
    call Call_000_12e0
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    jp $7b85


Call_000_104e:
    ld hl, $c42f
    bit 0, [hl]
    jr z, jr_000_107d

    ld hl, $c413
    ld a, [hl+]
    and $07
    cp $07
    jr z, jr_000_1071

    ld a, [hl]
    and $07
    cp $07
    ret nz

    ld hl, $c559
    ld de, $c459
    ld bc, $0100
    jp Jump_000_035f


jr_000_1071:
    ld hl, $c459
    ld de, $c559
    ld bc, $0100
    call Call_000_035f

jr_000_107d:
    ld a, $08
    call Call_000_0eaa
    jp hl


    cp c
    xor a
    cp e
    ld a, [$adfb]
    xor $f8
    ld sp, hl
    db $fd

Call_000_108d:
    ldh a, [$92]
    and $0f
    ld b, a
    ld a, [$c101]
    or b
    ret nz

Call_000_1097:
    ldh a, [$99]
    push af
    ld de, $9c01
    ld hl, $1083
    ld bc, $c416
    call Call_000_0529
    ld a, $9c
    ldh [$90], a
    ld a, $08
    ldh [$91], a
    ld a, $0c

Call_000_10b0:
    call Call_000_0e8e
    ld a, [$c423]
    sla a
    sla a
    sla a
    rst $10
    ld b, $08
    call Call_000_0377
    ld de, $9c12

Jump_000_10c5:
    ld hl, $1083
    ld a, [$c419]
    call Call_000_053d
    pop af
    ldh [$99], a
    ld [$2000], a
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr nz, jr_000_1108

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

Call_000_1101:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, b
    ld h, c
    ld h, d

jr_000_1108:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e

Jump_000_1111:
    ld [hl], h
    ld [hl], l

Call_000_1113:
    db $76
    ld [hl], a

Call_000_1115:
    ld a, $06
    ldh [$99], a
    ld [$2000], a
    ld hl, $7800
    ld a, [$c413]
    rst $20
    push de
    ld a, [de]
    ld b, a
    ld c, $02
    call Call_000_049c
    pop hl
    inc hl
    ld c, $02

Call_000_112f:
    xor a

Call_000_1130:
    ldh [$9b], a

jr_000_1132:
    ld a, [hl+]
    and a
    jr nz, jr_000_1137

    ret


jr_000_1137:
    push hl
    ld hl, $ff9b
    ld b, a
    cp [hl]
    jr z, jr_000_114a

    ld [hl], a
    pop hl

Call_000_1141:
    push hl
    push bc
    call Call_000_04d1
    call Call_000_04dd
    pop bc

jr_000_114a:
    pop hl
    push bc
    ld a, [hl]
    push hl
    ld hl, $10d5
    rst $18
    call Call_000_117c
    push de
    ld a, c
    ld hl, $0490
    rst $20
    pop hl
    add hl, de
    ld a, h
    ldh [$90], a
    ld a, l
    ldh [$91], a
    pop hl
    ld a, [hl+]
    push hl
    ld c, [hl]
    call Call_000_117c
    ld hl, $c6e7
    add hl, de
    ld a, c
    swap a
    and $70
    ld b, a
    call Call_000_0377
    pop hl
    inc hl
    pop bc
    jr jr_000_1132

Call_000_117c:
    ld d, $00
    ld e, a
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ret


    ld [c], a
    ld d, $02
    ld [c], a
    jr @+$04

    ld [c], a
    jr nz, jr_000_119d

    ld [c], a
    inc h
    inc b
    rst $20

jr_000_119d:
    jr z, jr_000_11a3

    rst $20
    jr nc, jr_000_11a6

    rst $20

jr_000_11a3:
    inc [hl]
    inc b
    db $e3

jr_000_11a6:
    jr c, jr_000_11ac

    ld [c], a
    inc a
    ld [bc], a
    nop

Call_000_11ac:
jr_000_11ac:
    ld a, [$c0d8]
    and a
    jr z, jr_000_11ef

    ld bc, $0001
    ld de, $00a0
    ld a, [$c0dc]
    bit 0, a
    jr z, jr_000_11c5

    ld bc, $ffff
    ld de, $fff0

jr_000_11c5:
    ld hl, $c65d
    ld a, [hl]
    add c
    ld [hl+], a
    ld c, a
    ld a, [hl]
    adc b
    ld [hl], a
    ld h, a
    ld l, c
    ld a, l
    and $07
    jr nz, jr_000_11e9

    add hl, de
    ld d, h
    ld e, l
    ld a, [$c65f]
    ld l, a
    ld a, [$c660]
    ld h, a
    call Call_000_1243
    ld hl, $ffb4
    set 7, [hl]

jr_000_11e9:
    ld hl, $c0d8
    dec [hl]
    jr jr_000_11ac

jr_000_11ef:
    ld a, [$c0da]
    and a
    ret z

    ld bc, $0001
    ld a, [$c0dc]
    bit 1, a
    jr z, jr_000_1201

    ld bc, $ffff

jr_000_1201:
    ld hl, $c65f
    ld a, [hl]
    add c
    ld [hl+], a
    ld c, a
    ld a, [hl]
    adc b
    ld [hl], a
    ld h, a
    ld l, c
    ld a, [$c0dc]
    bit 1, a
    jr z, jr_000_1220

    ld de, $0000
    ld a, l
    and $07
    cp $07
    jr nz, jr_000_123d

    jr jr_000_1228

jr_000_1220:
    ld de, $0090
    ld a, l
    and $07
    jr nz, jr_000_123d

jr_000_1228:
    add hl, de
    ld a, [$c65d]
    sub $10
    ld e, a
    ld a, [$c65e]
    sbc $00
    ld d, a
    call Call_000_1260
    ld hl, $ffb5
    set 7, [hl]

Jump_000_123d:
jr_000_123d:
    ld hl, $c0da
    dec [hl]
    jr jr_000_11ef

Call_000_1243:
    ld a, $02
    ldh [$99], a
    ld [$2000], a
    ld a, d
    ldh [$b7], a
    ld a, e
    ldh [$b6], a
    ldh [$8e], a
    ld a, l
    ldh [$8f], a
    call Call_000_031e
    push de
    push hl
    ld a, $40
    call Call_000_0e64
    jp hl


Call_000_1260:
    ld a, $02
    ldh [$99], a
    ld [$2000], a
    ld a, e
    and $f0
    ld e, a
    ldh [$8e], a
    ld a, h
    ldh [$b9], a
    ld a, l
    ldh [$b8], a
    ldh [$8f], a
    call Call_000_031e
    ld bc, $1284
    push bc
    push de
    push hl
    ld a, $41
    call Call_000_0e64
    jp hl


    ldh a, [$91]
    and $e0
    ldh [$91], a
    ld hl, $c0a0
    ld b, $20
    call Call_000_0377
    ret


Call_000_1293:
    push de
    ld d, h
    ld e, l
    ld hl, $0000
    call Call_000_12bf
    and a
    jr z, jr_000_12ab

    ld c, a
    ld a, [$c65b]
    add a
    ld e, a
    ld d, $00

jr_000_12a7:
    add hl, de
    dec c
    jr nz, jr_000_12a7

jr_000_12ab:
    ld b, h
    ld c, l
    pop de
    ld hl, $cae5
    bit 7, d
    jr nz, jr_000_12bd

    call Call_000_12bf
    add a
    ld hl, $cae7
    rst $10

jr_000_12bd:
    add hl, bc
    ret


Call_000_12bf:
    ld a, d
    swap a
    and $f0
    ld d, a
    ld a, e
    swap a
    and $0e
    or d
    srl a
    ret


Call_000_12ce:
    sla c
    rl b
    sla c
    rl b
    ld a, [$c661]
    ld l, a
    ld a, [$c662]
    ld h, a
    add hl, bc
    ret


Call_000_12e0:
    xor a
    ldh [$bf], a
    ldh [$be], a
    ldh a, [$bf]

jr_000_12e7:
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $0f
    jr z, jr_000_1325

    call Call_000_19e1
    ldh a, [$c0]
    and $0f
    ld de, $130b
    push de
    ld hl, $1301
    rst $20
    ld h, d
    ld l, e
    jp hl


    jr nc, @+$15

Call_000_1303:
    ret c

    inc d
    ld [hl-], a
    rra
    ld [hl-], a
    rra
    ldh [rNR24], a
    call Call_000_1a5a
    call Call_000_1a1b
    ldh a, [$c0]
    bit 7, a
    jr nz, jr_000_1325

    and $0f
    jr z, jr_000_1325

    ld a, $07
    ldh [$99], a
    ld [$2000], a
    call Call_000_0313

jr_000_1325:
    ld hl, $ffbf
    ld a, [hl]
    add $10
    ld [hl], a
    cp $90
    jr c, jr_000_12e7

    ld h, $c0
    ldh a, [$be]
    ld l, a
    ld b, $00

jr_000_1337:
    cp $a0
    ret nc

    ld [hl], b
    add $04
    ld l, a
    jr jr_000_1337

    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_000_1358

    jr nc, jr_000_1350

jr_000_1350:
    jr nc, jr_000_1352

jr_000_1352:
    jr nc, jr_000_135e

    ld a, [bc]
    nop
    jr nc, jr_000_1358

jr_000_1358:
    ld [$0508], sp
    inc b
    nop
    nop

jr_000_135e:
    ld [$0008], sp

Call_000_1361:
    nop
    nop
    nop
    nop
    nop
    ld [$0c08], sp
    inc c
    ld a, [bc]
    ld a, [bc]
    inc d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0006], sp
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
    ld [$0004], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0806], sp
    ld [$0000], sp
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$1406], sp
    inc d
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    db $10
    ld a, [bc]
    inc c
    ld a, [bc]
    ld [$0006], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

Call_000_13ff:
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_1412:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    ld [$000a], sp
    ld [bc], a
    nop
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld bc, $0100
    ld b, $07
    rlca
    ld [$0a08], sp
    inc sp
    dec [hl]
    inc sp
    dec [hl]
    dec [hl]
    ld [hl], $17
    jr jr_000_1444

    inc b
    ld d, $17

jr_000_1444:
    nop
    nop
    jr jr_000_1461

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    dec d
    inc de
    dec d
    dec d
    ld d, $13
    inc d
    inc bc

jr_000_1461:
    inc b
    add hl, de
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    jr nz, jr_000_1498

    jr nz, jr_000_149d

    ld [hl+], a
    dec e
    jr nz, @+$05

    inc b
    dec e
    jr nz, jr_000_1485

jr_000_1485:
    nop
    nop
    nop
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    ld a, [de]
    dec de
    ld a, [bc]
    dec bc
    dec e
    jr nz, jr_000_1495

jr_000_1495:
    nop
    nop
    nop

jr_000_1498:
    ld [hl+], a
    inc h
    ld [hl+], a
    inc h
    inc h

jr_000_149d:
    daa
    inc h
    daa
    inc bc
    inc b
    inc h
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $0c
    ld c, $0c
    ld c, $0e
    db $10
    inc bc
    inc b
    db $10
    ld de, $0000
    ld [de], a
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_14d6:
    nop
    nop
    ldh a, [rLCDC]
    bit 7, a
    ret z

    ld a, [$c421]
    and a
    jr z, jr_000_14e8

    ld a, $81
    ldh [$c0], a
    ret


jr_000_14e8:
    ld a, $06
    ldh [$cd], a
    ld a, $14
    ldh [$ce], a
    ld hl, $c427
    res 1, [hl]
    res 3, [hl]
    res 4, [hl]
    ld hl, $c429
    ld a, [hl]
    and a
    jr z, jr_000_1501

    dec [hl]

jr_000_1501:
    ld hl, $ffc8
    res 7, [hl]
    call Call_000_1665
    ld hl, $ffc0
    res 7, [hl]
    ld a, [$c425]
    and a
    jr z, jr_000_1520

    ldh a, [$92]
    bit 3, a
    jp z, Jump_000_1563

    set 7, [hl]
    jp Jump_000_1563


jr_000_1520:
    ld a, [$c402]
    bit 6, a
    jr nz, jr_000_1563

    ld a, [$c413]
    and $07
    cp $06
    jp z, Jump_000_1675

    cp $07
    jr nz, jr_000_153a

    ld hl, $ff8d
    res 1, [hl]

jr_000_153a:
    ld hl, $c427
    bit 7, [hl]
    jp nz, Jump_000_16c4

    ldh a, [$c3]
    cp $60
    jp nc, Jump_000_1692

Jump_000_1549:
    call Call_000_1678
    ld a, [$c426]
    ld de, $1563
    rst $08
    ld l, e
    dec d
    ld l, e
    dec d
    ld l, e
    dec d
    ld l, e
    dec d
    jp $6b15


    dec d
    inc c
    ld d, $6b
    dec d

Jump_000_1563:
jr_000_1563:
    call Call_000_199c
    xor a
    ld [$c420], a
    ret


    call Call_000_17cc
    call Call_000_1ce8
    call Call_000_17e0
    call Call_000_189f
    call Call_000_1927
    call Call_000_16fd
    ld a, [$c427]
    bit 4, a
    jr nz, jr_000_15ac

    ld a, [$c428]
    and $1c
    cp $14
    jr z, jr_000_159f

jr_000_158d:
    ld hl, $c42c
    ld a, [hl]
    and a
    ret z

    dec [hl]
    inc hl
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld a, $05
    ld [$c426], a
    ret


jr_000_159f:
    ld hl, $c427
    bit 0, [hl]
    jr z, jr_000_158d

    ldh a, [$8c]
    bit 5, a
    jr z, jr_000_158d

jr_000_15ac:
    ld a, $03
    ld [$c426], a
    ld hl, $c42c
    ld a, [hl]
    and a
    ret z

    dec [hl]
    inc hl
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld a, $07
    ld [$c426], a
    ret


    ld hl, $ff8c
    set 1, [hl]
    set 0, [hl]
    call Call_000_1ce8
    ld a, $14
    call Call_000_1ed5
    ldh [$d4], a
    ldh a, [$c8]
    bit 5, a
    jr nz, jr_000_15df

    call Call_000_180d
    jr jr_000_15e2

jr_000_15df:
    call Call_000_184c

jr_000_15e2:
    call Call_000_189f
    call Call_000_1927
    call Call_000_16fd
    xor a
    ld [$c306], a
    ld [$c426], a
    ld hl, $ffd8
    ldh a, [$c8]
    bit 5, a
    jr z, jr_000_1601

    inc [hl]
    ld a, [hl]
    cpl
    inc a
    jr jr_000_1603

jr_000_1601:
    dec [hl]
    ld a, [hl]

jr_000_1603:
    cp $0a
    ret c

    ld a, $04
    ld [$c426], a

Jump_000_160b:
    ret


    ld a, $0f
    call Call_000_0eaa
    jp hl


Call_000_1612:
Jump_000_1612:
    ld a, [$c428]
    and $1c
    jr z, jr_000_1647

Call_000_1619:
Jump_000_1619:
    ld hl, $c428
    ld a, [hl]
    and $e3
    ld [hl], a
    bit 1, a
    jr z, jr_000_162b

    ld a, $30
    ld [$c429], a
    jr jr_000_1657

jr_000_162b:
    ld a, $04
    ld [$c426], a
    ld a, $18
    ld [$c30c], a
    ld hl, $c308
    ld a, [$c208]
    bit 5, a
    jr nz, jr_000_1643

    ld a, $22
    ld [hl], a
    ret


jr_000_1643:
    ld a, $de
    ld [hl], a
    ret


jr_000_1647:
    ld a, [$c401]
    and a
    ret nz

    ld a, [$c429]
    and a
    ret nz

    ld a, $01
    ld [$c421], a
    ret


Call_000_1657:
jr_000_1657:
    ld hl, $2a68
    ld a, [$c201]
    ld e, a
    ld a, [$c203]
    ld d, a
    jp Jump_000_2322


Call_000_1665:
    ld a, [$c413]
    cp $1c
    jr z, jr_000_166f

    cp $1e
    ret nz

jr_000_166f:
    ld hl, $c427
    set 2, [hl]
    ret


Jump_000_1675:
    jp Jump_000_1549


Call_000_1678:
    ld a, [$c413]
    and $07
    cp $06
    ret nc

    ld hl, $c423
    ld a, [hl-]
    and a
    jr nz, jr_000_168b

    call Call_000_1612
    ret


jr_000_168b:
    dec [hl]
    ret nz

    ld a, $b4
    ld [hl+], a
    dec [hl]
    ret


Jump_000_1692:
    ld hl, $c427
    set 7, [hl]
    ld a, [$c428]
    and $1c
    jr z, jr_000_16a9

    cp $14
    ret nz

    call Call_000_1657
    call Call_000_1619
    jr jr_000_16b0

jr_000_16a9:
    ld a, [$c41f]
    and a
    jp nz, Jump_000_16c4

jr_000_16b0:
    ld hl, $2568
    ldh a, [$c1]
    ld e, a
    ldh a, [$c3]
    ld d, a
    call Call_000_2322
    xor a
    ld [$c428], a
    ld [$c426], a
    ret


Jump_000_16c4:
    xor a
    ldh [$dc], a

Jump_000_16c7:
    ld hl, $c427
    bit 0, [hl]
    jr nz, jr_000_16db

    ld a, $02
    ldh [$d5], a
    call Call_000_1927
    ld hl, $c427
    bit 0, [hl]
    ret z

jr_000_16db:
    ld a, $01
    ld [$c426], a
    ldh a, [$c3]
    cp $80
    jr c, jr_000_16eb

    ld hl, $ffc8
    set 7, [hl]

jr_000_16eb:
    cp $b0
    jr c, jr_000_16f5

    ld a, $01
    ld [$c424], a
    ret


jr_000_16f5:
    add $01
    ldh [$c3], a
    call Call_000_199c
    ret


Call_000_16fd:
    ld a, [$c428]
    and $1e
    srl a
    ld hl, $134c
    rst $18
    call Call_000_1ed5
    ldh [$d5], a
    ld a, [$c428]
    bit 1, a
    jr nz, jr_000_171a

    and $1c
    cp $10
    jr nz, jr_000_172c

jr_000_171a:
    ldh a, [$8c]
    and $01
    jr nz, jr_000_1725

    call Call_000_1741
    jr jr_000_1728

jr_000_1725:
    call Call_000_1754

jr_000_1728:
    ldh a, [$8d]
    jr jr_000_1733

jr_000_172c:
    ldh a, [$8d]
    bit 0, a
    call nz, Call_000_173a

jr_000_1733:
    ldh a, [$8d]
    bit 1, a
    jr nz, jr_000_175e

    ret


Call_000_173a:
    ld hl, $c427
    bit 0, [hl]
    jr nz, jr_000_174b

Call_000_1741:
    ld a, [$c427]
    bit 5, a
    ret nz

    xor a
    ldh [$dc], a
    ret


jr_000_174b:
    ldh a, [$dc]
    and a
    ret nz

    ld a, $3c
    call Call_000_0263

Call_000_1754:
    ld hl, $c427
    res 0, [hl]
    ld a, $0b
    ldh [$dc], a
    ret


jr_000_175e:
    ld hl, $c42c
    ld a, [hl]
    and a
    ret nz

    ld a, [$c420]
    cp $02
    ret nc

    ld a, [$c428]
    and $1c
    srl a
    srl a
    rst $00
    add b
    rla
    sub b
    rla

Call_000_1778:
    sbc d
    rla
    add b
    rla
    and h
    rla
    add b
    rla
    ld hl, $c41f
    bit 0, [hl]
    ret z

    ld a, $04
    ld [$c42c], a
    ld hl, $2991
    jr jr_000_17b2

    ld a, $04
    ld [$c42c], a
    ld hl, $2a19
    jr jr_000_17b2

    ld a, $04
    ld [$c42c], a
    ld hl, $2a39
    jr jr_000_17b2

    ld a, [$c427]
    bit 0, a
    ret nz

    ld a, $04
    ld [$c42c], a
    ld hl, $29e8

jr_000_17b2:
    ld b, $08
    ldh a, [$c8]
    bit 5, a
    jr z, jr_000_17bc

    ld b, $f8

jr_000_17bc:
    ldh a, [$c3]
    add b
    ld d, a
    ldh a, [$c1]
    ld e, a
    call Call_000_2322
    ld a, $04
    ld [$c42d], a
    ret


Call_000_17cc:
    ldh a, [$99]
    push af
    ld de, $17d9
    push de
    ld a, $20
    call Call_000_0e74
    jp hl


    pop af
    ldh [$99], a
    ld [$2000], a
    ret


Call_000_17e0:
    ld a, [$c428]
    and $1c
    cp $14
    jr z, jr_000_17f3

    ldh a, [$8c]
    and $30
    jr z, jr_000_1801

    bit 4, a
    jr z, jr_000_17fb

jr_000_17f3:
    ldh a, [$c8]
    and $df
    ldh [$c8], a
    jr jr_000_1801

jr_000_17fb:
    ldh a, [$c8]
    or $20
    ldh [$c8], a

jr_000_1801:
    ld hl, $ffd4
    ld a, [hl]
    and a
    ret z

    ldh a, [$d8]
    bit 7, a
    jr nz, jr_000_184c

Call_000_180d:
jr_000_180d:
    ld e, $00

Call_000_180f:
    call Call_000_1bfb
    ld a, [$c666]
    bit 0, a
    ret nz

    ldh a, [$d4]
    and $0f
    ld b, a
    ldh a, [$c3]
    cp $40
    jr c, jr_000_1846

    ld hl, $c65d
    ld a, [hl+]
    add $a0
    ld e, a
    ld a, [hl]
    adc $00
    ld d, a
    call Call_000_12bf
    ld hl, $c65b
    cp [hl]
    jr nc, jr_000_1841

    ld a, b
    ld [$c0d8], a
    ld hl, $c0dc
    res 0, [hl]
    ret


jr_000_1841:
    ldh a, [$c3]
    cp $98
    ret nc

jr_000_1846:
    ldh a, [$c3]
    add b
    ldh [$c3], a
    ret


Call_000_184c:
jr_000_184c:
    ld a, [$c428]
    and $1c
    cp $14
    jr z, jr_000_180d

    ld e, $02
    call Call_000_1bfb
    ld a, [$c666]
    bit 0, a
    ret nz

    ldh a, [$d4]
    and $0f
    ld b, a
    ldh a, [$c3]
    cp $30
    jr nc, jr_000_1899

    ld a, [$c413]
    and $07
    cp $06
    jr nz, jr_000_187d

    ld a, [$c65d]
    cp $a0
    jr c, jr_000_188a

    jr jr_000_1894

jr_000_187d:
    ld hl, $c65e
    ld a, [hl-]
    bit 0, a
    jr nz, jr_000_188a

    ld a, [hl]
    and $f8
    jr z, jr_000_1894

jr_000_188a:
    ld a, b
    ld [$c0d8], a
    ld hl, $c0dc
    set 0, [hl]
    ret


jr_000_1894:
    ldh a, [$c3]
    cp $0c
    ret c

jr_000_1899:
    ldh a, [$c3]
    sub b
    ldh [$c3], a
    ret


Call_000_189f:
    ld hl, $ffdc
    ld a, [hl]
    and a
    ret z

    ld a, [$c428]
    bit 1, a
    jr nz, jr_000_18db

    jr jr_000_18b6

jr_000_18ae:
    xor a
    ld [hl], a
    ld hl, $c427
    res 5, [hl]
    ret


jr_000_18b6:
    ld a, [$c427]
    bit 5, a
    jr nz, jr_000_18c9

    ldh a, [$8c]
    bit 0, a
    jr nz, jr_000_18c9

    ld a, $1f
    cp [hl]
    jr c, jr_000_18c9

    ld [hl], a

jr_000_18c9:
    inc [hl]
    ld a, [hl]

Call_000_18cb:
    cp $27
    jr nc, jr_000_18ae

    cp $1f
    jr c, jr_000_18db

    sub $1f
    ld hl, $1340
    rst $18
    ldh [$d5], a

jr_000_18db:
    ld a, $02
    ld [$c426], a
    ldh a, [$d5]
    ld c, a
    ld e, $03
    call Call_000_1bfb
    ld a, [$c666]
    bit 0, a
    ret nz

Call_000_18ee:
    ld a, [$c410]
    ld b, a
    ldh a, [$c1]
    cp b
    jr nc, jr_000_191a

    ld a, [$c413]
    and $07
    cp $06
    jr z, jr_000_1920

Call_000_1900:
    ld hl, $c660
    ld a, [hl-]
    and a
    jr nz, jr_000_190b

    ld a, [hl]
    sub c
    jr c, jr_000_1915

jr_000_190b:
    ld a, c
    ld [$c0da], a
    ld hl, $c0dc
    set 1, [hl]
    ret


jr_000_1915:
    ldh a, [$c1]
    cp $20
    ret c

jr_000_191a:
    ldh a, [$c1]
    sub c
    ldh [$c1], a
    ret


jr_000_1920:
    ldh a, [$c1]
    cp $0c
    jr nc, jr_000_191a

    ret


Call_000_1927:
    ld hl, $c430
    ld a, [hl]
    and a
    jr z, jr_000_1930

    dec [hl]
    ret


jr_000_1930:
    ld hl, $ffdc
    ld a, [hl]
    and a
    ret nz

    ld hl, $c427
    ld a, [hl]
    and $1a
    ret nz

    ld e, $01
    call Call_000_1bfb
    ld hl, $c427
    set 0, [hl]
    ld a, [$c666]
    bit 0, a
    jr nz, jr_000_1985

    res 0, [hl]
    ldh a, [$d5]
    ld c, a
    ld a, $02
    ld [$c426], a

Call_000_1958:
    ld a, [$c411]
    ld b, a
    ldh a, [$c1]
    cp b
    jr c, jr_000_197f

    ld hl, $c65f
    ld a, [hl+]
    add $90
    ld e, a
    ld a, [hl]
    adc $00
    ld d, a
    call Call_000_12bf
    ld hl, $c65c
    cp [hl]
    jr nc, jr_000_197f

    ld a, c
    ld [$c0da], a
    ld hl, $c0dc
    res 1, [hl]
    ret


jr_000_197f:
    ldh a, [$c1]
    add c
    ldh [$c1], a
    ret


jr_000_1985:
    ld a, [$c427]
    bit 1, a
    ret nz

    bit 3, a
    ret nz

Call_000_198e:
    ld hl, $c65f
    ldh a, [$c1]
    add [hl]
    sub $04
    or $07
    sub [hl]
    ldh [$c1], a
    ret


Call_000_199c:
Jump_000_199c:
    ld a, [$c426]
    and $07
    sla a
    ld b, a
    ld hl, $c428
    ld a, [hl]
    and $01
    ld c, a
    ld a, [hl]
    and $1e
    sla a
    sla a
    sla a
    or b
    ld e, a
    or c
    ld hl, $1358
    rst $18
    call Call_000_19d0
    ld hl, $1418
    ld a, e
    srl a
    rst $20
    ld hl, $ffc7
    ld a, [hl]
    cp e
    jr c, jr_000_19ce

    cp d
    ret c

jr_000_19ce:
    ld [hl], e
    ret


Call_000_19d0:
    ld b, a
    ld hl, $ffdb
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ld hl, $ffc7
    inc [hl]
    ret


    ret


    ret


Call_000_19e1:
    ld e, l

Jump_000_19e2:
    ld c, $c0
    call Call_000_19ea
    ld h, $c3
    ld l, e

Call_000_19ea:
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
    inc c
    ret


Call_000_1a1b:
    ld h, $c2
    ldh a, [$bf]
    ld l, a
    ld e, a
    ld c, $c0
    call Call_000_1a29
    ld h, $c3
    ld l, e

Call_000_1a29:
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ret


Call_000_1a5a:
    ld a, $17
    call Call_000_0e8e
    jp hl


    ld hl, $ffc0
    ld de, $ffd0
    ld b, $10
    xor a

Call_000_1a69:
jr_000_1a69:
    ld [hl+], a
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1a69

    ret


Call_000_1a70:
    ld de, $c200

jr_000_1a73:
    ld a, [de]
    and a
    ret z

    ld a, e
    add $10
    ld e, a
    cp $90
    jr c, jr_000_1a73

    scf
    ret


Call_000_1a80:
    ld a, $09
    call Call_000_0eaa
    jp hl


Call_000_1a86:
    ld hl, $ffb4
    bit 7, [hl]
    ret z

    ld a, $07
    ldh [$99], a
    ld [$2000], a
    ld hl, $ffb6
    ld a, [hl+]
    srl [hl]
    rr a
    srl [hl]
    rr a
    srl [hl]
    rr a
    srl [hl]
    rr a
    ld c, a
    ld hl, $c459
    ld a, [hl+]
    ld b, a

jr_000_1aad:
    inc hl
    ld a, [hl+]
    cp c
    jr z, jr_000_1abc

    inc hl

jr_000_1ab3:
    dec b
    jr nz, jr_000_1aad

    ld hl, $ffb4
    res 7, [hl]
    ret


jr_000_1abc:
    dec hl
    dec hl
    call Call_000_1b0d
    jr z, jr_000_1ab3

    call Call_000_1a70
    ret c

    call Call_000_1b53
    jr jr_000_1ab3

Call_000_1acc:
    ld hl, $ffb5
    bit 7, [hl]
    ret z

    ld a, $07
    ldh [$99], a
    ld [$2000], a
    ld hl, $ffb8
    ld a, [hl+]
    srl [hl]
    rr a
    srl [hl]
    rr a
    srl [hl]
    rr a
    ld c, a
    ld hl, $c459
    ld a, [hl+]
    ld b, a

jr_000_1aef:
    ld a, [hl+]
    cp c
    jr z, jr_000_1afe

    inc hl
    inc hl

jr_000_1af5:
    dec b
    jr nz, jr_000_1aef

    ld hl, $ffb5
    res 7, [hl]
    ret


jr_000_1afe:
    dec hl
    call Call_000_1b0d
    jr z, jr_000_1af5

    call Call_000_1a70
    ret c

    call Call_000_1b53
    jr jr_000_1af5

Call_000_1b0d:
    ld de, $c209

jr_000_1b10:
    ld a, [de]
    cp b
    jr nz, jr_000_1b18

    inc hl
    inc hl
    inc hl
    ret


jr_000_1b18:
    ld a, e
    add $10
    ld e, a
    cp $90
    jr c, jr_000_1b10

    ret


Call_000_1b21:
    ld b, $00
    ld a, [hl+]
    ld c, a
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ld a, c
    ldh [$a4], a
    ld a, b
    ldh [$a5], a
    ret


Call_000_1b38:
    ld b, $00
    ld a, [hl+]
    ld c, a
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ld a, c
    ldh [$a4], a
    ld a, b
    ldh [$a5], a
    ret


Call_000_1b53:
    push bc
    push hl
    push de
    ld l, e
    ld h, d
    inc d
    ld b, $10
    xor a
    call Call_000_1a69
    pop de
    pop hl
    push hl
    push de
    inc de
    call Call_000_1b21
    ld a, [$c65f]
    ld c, a
    ld a, [$c660]
    ld b, a
    ldh a, [$a4]
    sub c
    ld [de], a
    inc de
    ldh a, [$a5]
    sbc b
    ld [de], a
    inc de
    ld b, a
    ldh a, [$b4]
    bit 7, a
    jr z, jr_000_1b84

    ld a, b
    and a
    jr nz, jr_000_1bde

jr_000_1b84:
    call Call_000_1b38
    ld a, [$c65d]
    and $f8
    ld c, a
    ld a, [$c65e]
    ld b, a
    ldh a, [$a4]
    sub c
    ld [de], a
    inc de
    ldh a, [$a5]
    sbc b
    ld [de], a
    ld b, a
    ldh a, [$b5]
    bit 7, a
    jr z, jr_000_1ba5

    ld a, b
    and a
    jr nz, jr_000_1bde

jr_000_1ba5:
    pop de
    push de
    ld b, $00
    ld c, [hl]
    sla c
    rl b
    ld hl, $6e88
    add hl, bc
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $07
    ld e, a
    ld a, [hl-]
    ld [de], a
    dec de
    dec de
    ld a, [hl]
    add a
    ld hl, $6e80
    rst $10
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop de
    pop hl
    inc hl
    inc hl
    pop bc
    push de
    ld a, e
    add $09
    ld e, a
    ld a, b
    ld [de], a
    ld a, [hl]
    call Call_000_1be5
    pop hl
    inc l
    inc h
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_000_1bde:
    pop de
    pop hl
    inc hl
    inc hl
    inc hl
    pop bc
    ret


Call_000_1be5:
    ld hl, $243b
    bit 7, a
    jr z, jr_000_1bef

    ld hl, $253b

jr_000_1bef:
    and $7f
    rst $20
    ret


    ld b, $01
    ld a, [$00e8]
    nop
    nop
    nop

Call_000_1bfb:
    xor a
    ld [$c666], a
    ld a, [$c400]
    cp $03
    ret nz

    push bc
    ld hl, $1bf3
    ld a, e
    ldh [$a8], a
    rst $18
    bit 0, e
    jr z, jr_000_1c52

    call Call_000_1c3e
    ld a, c
    cp $90
    jr nc, jr_000_1c3c

    ld a, e
    and $fc
    push af
    ld hl, $1bf5
    rst $18
    add $02
    call Call_000_1c7f
    call Call_000_1c92
    call Call_000_1d22
    pop af
    ld hl, $1bf3
    rst $18
    sub $02
    call Call_000_1c7f
    call Call_000_1c92
    call Call_000_1d22

jr_000_1c3c:
    pop bc
    ret


Call_000_1c3e:
    ld c, a
    ld b, $00
    bit 7, c
    jr z, jr_000_1c46

    dec b

jr_000_1c46:
    ldh a, [$c1]
    add c
    ldh [$a4], a
    ld c, a
    ldh a, [$c2]
    adc b
    ldh [$a5], a
    ret


jr_000_1c52:
    call Call_000_1c7f
    ld a, e
    and $fc
    push af
    ld hl, $1bf6
    rst $18
    inc a
    inc a
    call Call_000_1c3e
    ld a, c
    cp $90
    jr nc, jr_000_1c6d

    call Call_000_1c92
    call Call_000_1d22

jr_000_1c6d:
    pop af
    ld hl, $1bf4
    rst $18
    dec a
    dec a
    call Call_000_1c3e
    call Call_000_1c92
    call Call_000_1d22
    pop bc
    ret


Call_000_1c7f:
    ld c, a
    ld b, $00
    bit 7, c
    jr z, jr_000_1c87

    dec b

jr_000_1c87:
    ldh a, [$c3]
    add c
    ldh [$a6], a
    ldh a, [$c4]
    adc b
    ldh [$a7], a
    ret


Call_000_1c92:
    ld a, $02
    ldh [$99], a
    ld [$2000], a
    ld hl, $c65d
    ldh a, [$a6]
    add [hl]
    ld e, a
    ldh [$8e], a
    inc hl
    ldh a, [$a7]
    adc [hl]
    ld d, a
    ld hl, $c65f
    ldh a, [$a4]
    add [hl]
    ldh [$8f], a
    inc hl
    ldh a, [$a5]
    adc [hl]
    ld h, a
    ldh a, [$8f]
    ld l, a
    call Call_000_1293
    ld c, $00
    ldh a, [$8f]
    bit 4, a
    jr z, jr_000_1cc4

    ld c, $08

jr_000_1cc4:
    ld a, [hl+]
    add c
    ld c, a

Jump_000_1cc7:
    ld a, [hl]
    adc $00
    ld b, a
    ldh a, [$8e]
    bit 4, a
    jr z, jr_000_1cd2

    inc bc

jr_000_1cd2:
    call Call_000_12ce
    ldh a, [$8e]
    bit 3, a
    jr z, jr_000_1cdc

    inc hl

jr_000_1cdc:
    ldh a, [$8f]
    bit 3, a
    jr z, jr_000_1ce4

    inc hl
    inc hl

jr_000_1ce4:
    ld a, [hl]
    and $7f
    ret


Call_000_1ce8:
    ld hl, $c428
    res 1, [hl]
    xor a
    ld [$c42e], a
    ld hl, $ffc1
    ld a, [hl+]
    inc a
    ldh [$a4], a
    ld a, [hl+]
    ldh [$a5], a
    ld a, [hl+]
    ldh [$a6], a
    ld a, [hl+]

Call_000_1cff:
    ldh [$a7], a
    ld a, $01
    ldh [$a8], a
    call Call_000_1c92
    call $1d47
    ld a, [$c427]
    bit 1, a
    ret nz

    ld hl, $c42e
    inc [hl]
    ld hl, $ffa4
    ld a, [hl]
    sub $08
    ld [hl], a
    call Call_000_1c92
    jp $1d47


Call_000_1d22:
    ld hl, $c667
    rst $18
    rst $00
    ld l, h
    dec e
    and l
    dec e
    xor l
    dec e
    xor l
    dec e
    xor l
    dec e
    rst $00
    dec e
    rst $00
    dec e
    rst $00
    dec e
    ld l, h
    dec e
    ld h, a
    ld e, $6c
    dec e
    ld l, h
    dec e
    cp e
    ld e, $be
    ld e, $d3
    ld e, $d4
    ld e, $21
    ld h, a
    add $df
    rst $00
    ld l, h
    dec e
    ld l, h
    dec e
    pop hl
    dec e
    dec h
    ld e, $25
    ld e, $2f
    ld e, $3d
    ld e, $3d
    ld e, $47
    ld e, $6c
    dec e
    db $76
    ld e, $9b
    ld e, $6c
    dec e
    ld l, h
    dec e
    db $d3
    ld e, $d4
    ld e, $fa
    ld bc, $fec2
    adc b
    ret c

    ld hl, $c42f
    bit 0, [hl]
    jr nz, jr_000_1d8b

Jump_000_1d79:
    ld a, [$c401]
    and a
    ret nz

    ld a, $2a
    call Call_000_0263
    ld a, $81
    ld [$c421], a
    ldh [$c0], a
    ret


jr_000_1d8b:
    ld hl, $c413
    ld b, [hl]
    ld a, [$c414]
    ld [hl], a
    ld a, b
    ld [$c414], a
    jp Jump_000_0646


Jump_000_1d9a:
jr_000_1d9a:
    ldh a, [$a8]
    cp $01
    ret nz

    ld a, $01
    ld [$c666], a
    ret


    ldh a, [$a8]
    cp $01
    ret nz

    jp Jump_000_1ebe


    ldh a, [$bf]
    and a
    jp nz, Jump_000_1ebe

    ldh a, [$a6]
    ld b, a
    ld a, $01
    ld [$c426], a
    ldh a, [$c8]
    bit 5, a
    jr z, jr_000_1dc5

    ldh a, [$c3]
    cp b
    ret c

jr_000_1dc5:
    jr jr_000_1d9a

    ldh a, [$bf]
    and a
    jp nz, Jump_000_1ebe

    ldh a, [$a6]
    ld b, a
    ld a, $01
    ld [$c426], a
    ldh a, [$c8]
    bit 5, a
    jr nz, jr_000_1ddf

    ldh a, [$c3]
    cp b
    ret nc

jr_000_1ddf:
    jr jr_000_1d9a

    ldh a, [$d6]
    call Call_000_1ee7
    ld c, a

jr_000_1de7:
    ldh a, [$c8]
    bit 5, a
    jr nz, jr_000_1df2

jr_000_1ded:
    call Call_000_18ee
    jr jr_000_1df9

jr_000_1df2:
    ldh a, [$92]
    and $03
    call nz, Call_000_1958

jr_000_1df9:
    ld a, $01
    ld [$c426], a
    ld hl, $c427
    ld a, [hl]
    or $03
    ld [hl], a
    ldh a, [$c8]
    bit 5, a
    jr nz, jr_000_1e11

    ld a, $02
    ldh [$d8], a
    jr jr_000_1e15

jr_000_1e11:
    ld a, $fe
    ldh [$d8], a

jr_000_1e15:
    ld a, [$c42e]
    and a
    jp z, Jump_000_1d9a

    ldh a, [$c1]

Call_000_1e1e:
    sub $04
    ldh [$c1], a
    jp Jump_000_1d9a


    ldh a, [$d6]
    srl a
    call Call_000_1ee7
    ld c, a
    jr jr_000_1de7

    ldh a, [$d6]
    call Call_000_1ee7
    ld c, a

jr_000_1e35:
    ldh a, [$c8]
    bit 5, a
    jr z, jr_000_1df2

    jr jr_000_1ded

    ldh a, [$d6]
    srl a
    call Call_000_1ee7
    ld c, a
    jr jr_000_1e35

    ldh a, [$92]
    and $07
    jr nz, jr_000_1e57

    ld hl, $ffc1
    inc [hl]
    ld a, [hl]
    cp $90
    jp nc, Jump_000_1d79

jr_000_1e57:
    ld hl, $ffc8
    set 7, [hl]
    ld hl, $c427
    set 0, [hl]
    ld hl, $c427
    set 3, [hl]
    ret


    ld a, [$c428]
    and $1c
    cp $08
    ret z

    ld hl, $c427
    set 2, [hl]
    jr jr_000_1ebe

    ld a, [$c428]
    and $1c
    cp $04
    jr z, jr_000_1e82

    jp Jump_000_1612


jr_000_1e82:
    ld hl, $c427
    set 0, [hl]
    set 4, [hl]
    ldh a, [$92]
    and $07
    ret nz

    ld hl, $ffc1
    ldh a, [$92]
    bit 3, a
    jr nz, jr_000_1e99

    inc [hl]
    ret


jr_000_1e99:
    dec [hl]
    ret


    ld a, [$c428]
    and $1c
    jr z, jr_000_1eb5

    cp $0c
    jr z, jr_000_1eb5

    ld hl, $2a68
    ldh a, [$c1]
    ld e, a
    ldh a, [$c3]
    ld d, a
    call Call_000_2322
    jp Jump_000_1619


jr_000_1eb5:
    ld hl, $c428
    set 1, [hl]
    ret


    jp Jump_000_1612


Jump_000_1ebe:
jr_000_1ebe:
    ld hl, $c427
    bit 1, [hl]
    jr z, jr_000_1ecd

    res 1, [hl]
    ldh a, [$c1]

Call_000_1ec9:
    sub $04
    ldh [$c1], a

jr_000_1ecd:
    ld a, $01
    ld [$c666], a
    ret


    ret


    ret


Call_000_1ed5:
    ld hl, $ffd7

jr_000_1ed8:
    swap a
    ld b, a
    and $0f
    ld c, a
    ld a, b
    and $f0
    add [hl]
    ld [hl], a
    ld a, $00
    adc c
    ret


Call_000_1ee7:
    ld hl, $ffde
    jr jr_000_1ed8

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
    jr nz, jr_000_1ef9

jr_000_1ef9:
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    stop
    nop
    nop
    jr nz, jr_000_1f10

Call_000_1f10:
jr_000_1f10:
    ldh a, [$cc]
    ld hl, $1eef
    rst $10

Call_000_1f16:
    ld a, [$c416]
    push af
    ld de, $c418
    call Call_000_051e
    pop af
    bit 0, a
    ret z

    ld a, [$c416]
    bit 0, a
    ret nz

    ld a, $01
    call Call_000_02d8
    jp Jump_000_2588


    ld a, [$c425]
    bit 0, a
    ret nz

    ldh a, [$d0]
    bit 0, a
    jr z, jr_000_1f42

    ld hl, $c420
    inc [hl]

jr_000_1f42:
    ld a, $01
    ldh [$99], a
    ld [$2000], a
    ld hl, $ffdf
    ld a, [hl]
    and $7f
    jr z, jr_000_1f5d

    dec [hl]
    ld hl, $ffc0
    res 7, [hl]
    and $02
    jr z, jr_000_1f5d

    set 7, [hl]

jr_000_1f5d:
    ld hl, $ffd3
    ld a, [hl]
    and a
    jr z, jr_000_1f69

    dec [hl]
    call Call_000_1fe7
    ret


jr_000_1f69:
    call Call_000_1fe7

Jump_000_1f6c:
    call Call_000_230d
    ld c, a
    and $3f
    ld b, a
    ld a, c
    and $c0
    jr z, jr_000_1f8b

    cp $40
    jr nz, jr_000_1f80

    ld a, b
    ldh [$d3], a
    ret


jr_000_1f80:
    cp $80
    jr nz, jr_000_1f8b

    call Call_000_2303
    ld c, a
    jp Jump_000_22f5


jr_000_1f8b:
    ld a, b
    rst $00
    ld a, [de]
    inc hl
    ld l, c
    ld [hl+], a
    rst $00
    ld hl, $226f
    ld a, a
    rra
    ld [hl], a
    ld [hl+], a
    ld a, l
    ld [hl+], a
    add h
    ld [hl+], a
    adc h
    ld [hl+], a
    ld b, e
    ld [hl+], a
    ld c, e
    ld [hl+], a
    ld d, e
    ld [hl+], a
    ld e, [hl]
    ld [hl+], a
    and c
    ld hl, $22cd
    ret z

    ld [hl+], a
    ldh [rNR43], a
    sbc h
    ld [hl+], a
    and b
    ld [hl+], a
    xor a
    ld [hl+], a
    or e
    ld [hl+], a
    rra
    ld [hl+], a
    push af
    ld hl, $21d9
    ldh [rNR42], a
    rst $20
    ld hl, $21ee
    and a
    ld hl, $21b2
    cp a
    ld hl, $2360
    ld l, l
    inc hl
    ld [hl], l
    inc hl
    dec a
    ld hl, $215a
    ld [hl], a
    ld hl, $218c
    ld a, l
    inc hl
    sub h
    inc hl
    sbc l
    inc hl
    and [hl]
    inc hl
    or h
    inc hl
    call nz, $d123
    inc hl
    sub h
    ld [hl+], a

Call_000_1fe7:
    ld a, [$c425]
    bit 7, a
    ret nz

    ldh a, [$d0]
    bit 0, a
    ret nz

    ldh a, [$da]
    and a
    ret z

    ldh a, [$92]
    bit 0, a
    jp z, Jump_000_20b6

    ld a, [$c421]

Call_000_2000:
    and a
    ret nz

    ld hl, $c200
    call Call_000_2135
    ret nc

    ld hl, $ffd0
    bit 1, [hl]
    jr nz, jr_000_206a

    bit 3, [hl]

Jump_000_2012:
    jr z, jr_000_2033

    pop af
    ld hl, $c201
    ld a, [hl]
    sub $18
    ld [hl], a
    ld a, $02
    call Call_000_253d
    ld a, $31
    call Call_000_0263
    ld a, [$c428]
    and $1c
    jp z, Jump_000_1619

    call Call_000_1619
    jr jr_000_204e

jr_000_2033:
    pop af
    ld a, [$c402]
    bit 6, a
    ret nz

    ld hl, $c428
    bit 7, [hl]

Jump_000_203f:
    jr nz, jr_000_204e

Jump_000_2041:
    ld a, [hl]
    and $1c
    jr z, jr_000_2049

    call Call_000_1657

jr_000_2049:
    call Call_000_1612
    jr jr_000_205a

jr_000_204e:
    ld hl, $2a68
    ldh a, [$c1]
    ld e, a
    ldh a, [$c3]
    ld d, a
    call Call_000_2322

jr_000_205a:
    ldh a, [$df]
    bit 7, a
    ret nz

    ldh a, [$d0]
    bit 5, a
    ret nz

    call Call_000_20b0
    jp Jump_000_231a


jr_000_206a:
    bit 2, [hl]
    jr nz, jr_000_207e

    ldh a, [$df]
    bit 7, a
    jr nz, jr_000_209f

    ld a, $21
    call Call_000_0263
    call Call_000_20b0
    jr jr_000_209f

jr_000_207e:
    res 2, [hl]
    call Call_000_23d1
    ld e, $01
    ld a, [$c306]
    cp $04
    jr c, jr_000_209c

    ld e, $10
    cp $11
    jr c, jr_000_2094

    ld e, $18

jr_000_2094:
    bit 7, d
    jr z, jr_000_209c

    ld a, e
    cpl
    inc a
    ld e, a

jr_000_209c:
    ld a, e
    ldh [$d4], a

jr_000_209f:
    xor a

Call_000_20a0:
    ldh [$d3], a
    ldh a, [$d9]
    ldh [$d1], a
    ldh a, [$da]
    ldh [$d2], a
    xor a
    ldh [$d9], a
    ldh [$da], a
    ret


Call_000_20b0:
    ld a, $42
    call Call_000_0e64
    jp hl


Jump_000_20b6:
    ld hl, $ffd0
    bit 2, [hl]
    jr nz, jr_000_20c3

    bit 1, [hl]
    ret nz

    bit 4, [hl]

Jump_000_20c2:
    ret nz

jr_000_20c3:
    ld hl, $c310

jr_000_20c6:
    ldh a, [$bf]
    cp l
    jr z, jr_000_20cf

    bit 0, [hl]
    jr nz, jr_000_20db

jr_000_20cf:
    ld a, l
    add $10
    ld l, a
    cp $90
    jr c, jr_000_20c6

    ret


jr_000_20d8:
    pop hl
    jr jr_000_20cf

jr_000_20db:
    push hl
    dec h
    call Call_000_2135
    jr nc, jr_000_20d8

    ld a, $24
    call Call_000_0263
    ldh a, [$d0]
    bit 5, a
    jr z, jr_000_20f1

    ld a, $10
    ldh [$df], a

jr_000_20f1:
    ld a, l
    add $08
    ld l, a
    ld e, [hl]
    ld a, e
    dec a
    ldh [$ca], a
    ld hl, $ffcb
    ld a, [hl]
    and a
    jr z, jr_000_20d8

Call_000_2101:
    sub e
    jr z, jr_000_2114

    ld [hl], a
    push af
    and $fe
    cp $0c
    jr nz, jr_000_2111

    ld hl, $ffc8
    set 4, [hl]

Call_000_2111:
jr_000_2111:
    pop af
    jr nc, jr_000_212e

jr_000_2114:
    ldh a, [$d9]
    ldh [$d1], a
    ldh a, [$da]
    ldh [$d2], a
    xor a
    ld [hl+], a
    ldh [$d0], a
    ld hl, $ffd3
    ld [hl+], a
    ld [hl+], a

Call_000_2125:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    call Call_000_1f10

jr_000_212e:
    pop hl
    xor a
    ld [hl], a
    dec h
    ld [hl], a

Call_000_2133:
    pop af
    ret


Call_000_2135:
    ld b, h
    ld c, l

Call_000_2137:
    ld a, $45
    call Call_000_0e64
    jp hl


    ldh a, [$d4]
    bit 7, a
    jr nz, jr_000_2148

    call Call_000_23e1
    jr jr_000_214b

jr_000_2148:
    call Call_000_23e6

jr_000_214b:
    jp nc, Jump_000_2154

    call Call_000_22e9
    jp Jump_000_1f6c


Jump_000_2154:
    call Call_000_22e9
    jp Jump_000_22f5


    ldh a, [$d4]
    bit 7, a
    jr nz, jr_000_2165

    call Call_000_23e1
    jr jr_000_2168

jr_000_2165:
    call Call_000_23e6

jr_000_2168:
    jp c, Jump_000_2171

    call Call_000_22e9
    jp Jump_000_1f6c


Jump_000_2171:
    call Call_000_22e9
    jp Jump_000_22f5


    call Call_000_23eb
    jp nc, Jump_000_2183

    call Call_000_22e9
    jp Jump_000_1f6c


Jump_000_2183:
    xor a
    ldh [$d5], a
    call Call_000_22e9
    jp Jump_000_22f5


    call Call_000_23eb
    jp c, Jump_000_219b

    xor a
    ldh [$d5], a
    call Call_000_22e9
    jp Jump_000_1f6c


Jump_000_219b:
    call Call_000_22e9
    jp Jump_000_22f5


    call Call_000_230d
    jp Jump_000_0263


    call Call_000_230d
    ld hl, $ffc0
    or [hl]
    ld [hl], a
    jp Jump_000_1f6c


    call Call_000_230d
    ldh [$cd], a
    call Call_000_230d
    ldh [$ce], a
    jp Jump_000_1f6c


    call Call_000_230d
    ldh [$cf], a
    jp Jump_000_1f6c


    call Call_000_230d
    ld l, a
    call Call_000_2303
    ld h, a
    ldh a, [$c3]
    ld d, a
    ldh a, [$c1]
    ld e, a
    call Call_000_2322
    ret


    ld hl, $ffd4
    inc [hl]
    jp Jump_000_1f6c


    ld hl, $ffd5
    inc [hl]
    jp Jump_000_1f6c


    ld hl, $ffd4
    dec [hl]
    jp Jump_000_1f6c


    ld hl, $ffd5
    dec [hl]
    jp Jump_000_1f6c


Call_000_21f5:
    ld hl, $ffd0
    ld a, [hl]
    and $0f
    ld [hl], a
    ldh a, [$d4]
    and a
    jr z, jr_000_2210

    bit 7, a
    jr nz, jr_000_220a

    call Call_000_23e1
    jr jr_000_220d

jr_000_220a:
    call Call_000_23e6

jr_000_220d:
    call c, Call_000_2222

jr_000_2210:
    ldh a, [$d5]
    and a
    jr z, jr_000_221e

    bit 7, a
    ret nz

    call Call_000_23eb
    call c, Call_000_2236

jr_000_221e:
    ret


    call Call_000_2236

Call_000_2222:
    ldh a, [$99]
    push af
    ld de, $222f
    push de
    ld a, $43
    call Call_000_0e64
    jp hl


    pop af
    ldh [$99], a
    ld [$2000], a
    ret


Call_000_2236:
    ldh a, [$99]
    push af
    ld de, $222f
    push de
    ld a, $44
    call Call_000_0e64
    jp hl


    call Call_000_230d
    ldh [$c3], a
    jp Jump_000_1f6c


    call Call_000_230d
    ldh [$c1], a
    jp Jump_000_1f6c


    call Call_000_230d
    ld hl, $ffc3
    add [hl]
    ld [hl], a
    jp Jump_000_1f6c


    call Call_000_230d
    ld hl, $ffc1
    add [hl]
    ld [hl], a
    jp Jump_000_1f6c


    call Call_000_22e9
    push bc
    pop hl
    jp hl


    call Call_000_230d
    ldh [$c7], a
    jp Jump_000_1f6c


    ldh a, [$c0]
    and $7f
    jr jr_000_2281

    ldh a, [$c0]
    or $80

jr_000_2281:
    ldh [$c0], a
    ret


    call Call_000_230d
    ldh [$d4], a
    jp Jump_000_1f6c


    call Call_000_230d
    ldh [$d5], a
    jp Jump_000_1f6c


    call Call_000_230d
    ldh [$d6], a
    jp Jump_000_1f6c


    ld c, $00
    jr jr_000_22a2

    ld c, $01

jr_000_22a2:
    ld b, $00
    call Call_000_2303
    ld hl, $ffdb
    add hl, bc
    ld [hl], a
    jp Jump_000_1f6c


    ld c, $00
    jr jr_000_22b5

    ld c, $01

jr_000_22b5:
    ld b, $00
    ld hl, $ffdb
    add hl, bc
    dec [hl]

Jump_000_22bc:
    jp nz, Jump_000_22f2

Jump_000_22bf:
    call Call_000_230d
    call Call_000_230d
    jp Jump_000_1f6c


    call Call_000_230d
    ldh [$c7], a
    call Call_000_22e9
    ld hl, $ffd1
    ld a, [hl]
    ld e, a
    inc hl
    ld d, [hl]
    ld hl, $ffdd
    ld a, e
    ld [hl], a
    inc hl
    ld [hl], d
    jr jr_000_22f5

    ld hl, $ffdd
    ld a, [hl]
    ld c, a
    inc hl
    ld b, [hl]
    jr jr_000_22f5

Call_000_22e9:
    call Call_000_230d
    ld c, a
    call Call_000_2303
    ld b, a
    ret


Jump_000_22f2:
    call Call_000_22e9

Jump_000_22f5:
jr_000_22f5:
    ld hl, $ffd1
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_000_1f6c


    ldh a, [$bf]
    or l

Call_000_2301:
    ld l, a
    ret


Call_000_2303:
    push hl
    push de

Call_000_2305:
    push bc
    call Call_000_230d
    pop bc
    pop de
    pop hl
    ret


Call_000_230d:
    ld hl, $ffd1
    ld e, [hl]
    inc [hl]
    ld l, $d2
    ld d, [hl]
    jr nz, jr_000_2318

    inc [hl]

jr_000_2318:
    ld a, [de]
    ret


Jump_000_231a:
    xor a
    ldh [$c0], a
    ldh [$d0], a
    ldh [$c9], a
    ret


Call_000_2322:
Jump_000_2322:
    push hl
    call Call_000_2353
    ret c

    ld c, l
    ld a, $03
    ld [hl+], a
    ld [hl], e
    inc hl
    xor a
    ld [hl+], a
    ld [hl], d
    inc hl
    ld [hl+], a
    ld [hl+], a

Call_000_2333:
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
    ld l, c
    inc h
    pop bc
    xor a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
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
    ret


Call_000_2353:
    ld hl, $c200

jr_000_2356:
    ld a, [hl]
    and a
    ret z

    ld a, l
    add $10
    ld l, a
    jr nc, jr_000_2356

    ret


    call Call_000_230d

Call_000_2363:
    ldh [$d9], a
    call Call_000_230d
    ldh [$da], a
    jp Jump_000_1f6c


    call Call_000_230d
    ldh [$cb], a
    jp Jump_000_1f6c


    call Call_000_230d
    ldh [$cc], a
    jp Jump_000_1f6c


    ld a, $07
    ldh [$99], a
    ld [$2000], a
    call Call_000_230d
    ld hl, $6e80
    rst $20
    ld a, e
    ldh [$c5], a
    ld a, d
    ldh [$c6], a
    jp Jump_000_1f6c


Call_000_2394:
    ldh a, [$c8]
    xor $20
    ldh [$c8], a
    jp Jump_000_1f6c


    ldh a, [$c8]
    xor $40
    ldh [$c8], a
    jp Jump_000_1f6c


    call Call_000_230d
    ld b, a
    ldh a, [$c8]
    and $ef
    or b
    ldh [$c8], a
    jp Jump_000_1f6c


    call Call_000_230d
    ld e, a
    call Call_000_2303
    ld d, a
    ld a, [de]
    and a
    jp z, Jump_000_22f2

    jp Jump_000_22bf


    call Call_000_230d
    ld e, a
    call Call_000_2303
    ld d, a
    ld a, [de]
    and a
    jp Jump_000_22bc


Call_000_23d1:
    ld d, $00
    ld hl, $c203
    ldh a, [$c3]
    sub [hl]
    jr nc, jr_000_23df

    cpl
    inc a
    ld d, $80

jr_000_23df:
    ld e, a
    ret


Call_000_23e1:
    xor a
    ldh [$a8], a
    jr jr_000_2431

Call_000_23e6:
    xor a
    ldh [$a8], a
    jr jr_000_2431

Call_000_23eb:
    ld a, $01
    ldh [$a8], a
    ld hl, $ffc1
    ld a, [hl+]
    inc a
    ldh [$a4], a
    ld a, [hl+]
    ldh [$a5], a
    ld a, [hl+]
    ldh [$a6], a
    ld a, [hl+]
    ldh [$a7], a
    call Call_000_2409
    ret c

    ld hl, $ffd0
    set 7, [hl]
    ret


Call_000_2409:
    call Call_000_1c92
    ld hl, $c667
    rst $18
    rst $00
    ld sp, $3324
    inc h
    jr c, jr_000_243b

    jr c, jr_000_243d

    jr c, jr_000_243f

    jr c, jr_000_2441

    jr c, jr_000_2443

    jr c, jr_000_2445

    jr c, @+$26

    jr c, @+$26

    ld sp, $3124
    inc h
    ld sp, $3824
    inc h
    ld sp, $3124
    inc h

jr_000_2431:
    scf

jr_000_2432:
    ret


    ldh a, [$a8]
    and a
    jr z, jr_000_2431

    scf
    ccf
    ret


jr_000_243b:
    sbc a

jr_000_243c:
    dec h

jr_000_243d:
    xor b
    dec h

jr_000_243f:
    and d
    dec h

jr_000_2441:
    rst $08
    dec h

jr_000_2443:
    rst $08
    dec h

jr_000_2445:
    dec c
    ld h, $20
    ld h, $26
    ld h, $77
    ld h, $8c
    ld h, $ea

jr_000_2450:
    ld h, $fc
    ld h, $35
    daa
    ld a, d
    daa
    adc h
    daa
    sbc [hl]

jr_000_245a:
    daa
    or b
    daa
    jp nz, $ce27

    daa
    jp c, $ea27

    daa
    xor d
    jr z, jr_000_2432

    jr z, jr_000_2450

    jr z, jr_000_246e

    add hl, hl
    xor h

jr_000_246e:
    jr z, jr_000_243c

    jr z, jr_000_245a

    jr z, jr_000_2478

    add hl, hl
    or d
    ld a, [hl+]
    add hl, de

jr_000_2478:
    dec hl
    add c
    dec hl
    push bc
    dec hl
    ld a, [c]
    dec hl
    sbc a
    dec h
    sbc a
    dec h
    daa
    inc l
    sbc a
    dec h
    sbc a
    dec h
    sbc a
    dec h
    ld d, $33
    ld e, b
    inc sp
    sbc a
    dec h
    ld [hl], h
    inc sp

jr_000_2493:
    sub a
    inc sp
    cp e
    inc sp
    sbc a
    dec h
    jp nc, $9f33

    dec h
    ldh [$33], a
    sbc a
    dec h
    xor $33
    ld [bc], a
    inc [hl]
    inc e
    inc [hl]
    ld [hl], $34
    ld d, b
    inc [hl]
    ld l, d
    inc [hl]
    add sp, $34
    ld a, [$3b34]
    dec [hl]
    ld a, d
    dec [hl]
    or [hl]
    dec [hl]
    add $35
    ld h, $36
    ld a, [hl-]
    ld [hl], $57
    ld [hl], $9f
    dec h
    sbc b
    ld [hl], $d8
    ld [hl], $ea
    ld [hl], $f6
    ld [hl], $11
    scf
    ld h, b
    scf
    ld [hl], h
    scf
    sbc c
    scf
    pop bc
    scf
    rla
    jr c, jr_000_24fa

    jr c, jr_000_2510

    jr c, @+$76

    jr c, @-$73

    jr c, jr_000_2493

    jr c, @-$24

    jr c, @-$09

    jr c, jr_000_24f4

    add hl, sp
    ld l, d
    inc [hl]
    ld a, $39
    ld e, $29
    ld a, $29
    sbc a
    dec h
    ld c, h
    add hl, sp
    ld l, h
    add hl, sp
    ld a, d

jr_000_24f4:
    add hl, sp
    ld a, d
    add hl, sp
    sbc a
    dec h
    sbc e

jr_000_24fa:
    add hl, sp
    sbc a
    dec h
    xor [hl]
    add hl, sp

Call_000_24ff:
    jp c, $f639

    add hl, sp
    ld d, d
    add hl, hl

Call_000_2505:
    sbc a
    dec h
    rst $38
    add hl, sp
    sbc a
    dec h

Call_000_250b:
    inc h
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]

Call_000_250f:
    add c

jr_000_2510:
    dec hl
    add hl, sp
    dec hl
    ld b, h
    ld a, [hl-]
    sbc b
    ld a, [hl-]
    sub a
    inc a
    cp d
    inc a
    inc bc
    dec a
    ld c, l
    dec a
    xor a
    dec a
    di
    dec a
    jr c, jr_000_2563

    sbc a
    dec h
    sbc a
    dec h
    sbc a
    dec h
    ld hl, $ffd0
    set 1, [hl]
    ret


Jump_000_2531:
    ld hl, $c423
    add [hl]
    cp $10
    jr c, jr_000_253b

    ld a, $10

jr_000_253b:
    ld [hl], a
    ret


Call_000_253d:
    ld b, a
    ld hl, $c423
    ld a, [hl]
    sub b
    jr nc, jr_000_2546

    xor a

jr_000_2546:
    ld [hl], a
    ret


    jr nz, jr_000_2556

    dec h
    ld [bc], a
    inc bc
    ld c, $a5
    sub l
    jr nz, jr_000_2562

    dec h
    ld [bc], a
    inc bc
    rrca

jr_000_2556:
    and l
    sub l
    jr nz, jr_000_256e

    dec h
    ld [bc], a
    inc bc
    db $10
    and l
    sub l
    jr nz, @+$1e

jr_000_2562:
    dec h

jr_000_2563:
    ld [bc], a
    inc bc
    ld de, $95a5
    dec h
    ld [bc], a
    inc bc
    ld [de], a
    jr nz, jr_000_258e

jr_000_256e:
    and l
    sub l
    dec h
    ld [bc], a
    inc bc
    inc de
    ld bc, $2588
    and l
    sbc b
    dec h
    ld [bc], a
    inc bc
    inc d
    ld bc, $2582
    and l
    sbc b

Call_000_2582:
    call Call_000_2588
    call Call_000_2588

Call_000_2588:
Jump_000_2588:
    ld hl, $c419
    ld a, [hl]
    cp $09

jr_000_258e:
    ret nc

    inc [hl]
    ld a, $20
    jp Jump_000_0263


    ld bc, $1f10
    ld l, b
    ld [$0ee0], sp
    add h
    ld [hl-], a
    nop
    ld [hl], b
    and l
    sbc a
    add hl, hl
    rra
    call nz, Call_000_25a8
    nop

Call_000_25a8:
    inc e
    ld [$1e10], sp
    cp b
    dec h
    ld bc, $252b
    dec h
    ld [bc], a
    inc bc
    ld bc, $a570
    or l
    ld bc, $25bc
    nop
    ld hl, $c41f
    bit 0, [hl]
    jr nz, jr_000_25c6

    set 0, [hl]
    ret


jr_000_25c6:
    ld hl, $c41e
    ld a, [hl]
    cp $09
    ret nc

    inc [hl]
    ret


    ld b, $1c
    ld [$1e0e], sp
    ret c

    dec h
    and l
    db $e3
    dec b
    ld bc, $25de
    and l
    ld c, b
    ld a, $02
    jp Jump_000_2531


    ld bc, $252b
    rlca
    nop
    ld bc, $2601
    add hl, hl
    call nc, $e8ff
    dec h
    dec b
    ld de, $443c
    inc de
    di
    dec h
    ld de, $050c
    ld b, l
    ld b, $45
    inc de
    ld sp, hl
    dec h
    nop
    call Call_000_23d1
    ld a, e
    cp $38
    ret nc

    ld a, $01
    ldh [$d4], a
    ret


    inc e
    ld [$1e0e], sp
    dec d
    ld h, $a5
    db $e3
    dec b
    ld bc, $261b
    and l
    ld d, b
    ld a, $02
    jp Jump_000_2531


    dec h
    ld [bc], a
    inc bc
    ld d, $a6
    ld a, [hl+]
    dec h
    ld [bc], a
    inc bc
    rla
    inc e
    ld [$1e10], sp
    ld [hl], $26
    ld bc, $252b
    ld [hl], b
    and [hl]
    inc sp
    ld bc, $263b
    and l
    ld l, b
    ld a, $10
    jp Jump_000_2531


    ld bc, $2644
    db $10
    call Call_000_2654
    ld hl, $ffc7
    ld a, $0c
    ld [hl], a
    ldh a, [$cb]
    cp $02
    ret z

    inc [hl]
    ret


Call_000_2654:
    ld hl, $ffd0
    ld a, [hl]
    or $06
    ld [hl], a
    ret


    ld a, [hl+]
    call nc, $62ff
    ld h, $10
    ld [$11e0], sp
    ld a, [bc]
    dec d
    ld a, [de]
    inc de
    ld h, [hl]
    ld h, $08
    db $10
    ld de, $1610
    jr jr_000_2685

    ld l, a
    ld h, $07
    nop
    db $10
    ld b, $29
    ld e, $c4
    ld a, [hl]
    ld h, $00
    dec b
    rra
    ld [bc], a
    inc e
    ld [$1e10], sp

jr_000_2685:
    sbc c
    ld h, $0e
    ld b, b
    ld h, $a6
    add a
    rra
    ld [bc], a
    inc e
    ld b, $08
    ld e, $99
    ld h, $0e
    ld b, b
    ld h, $a6
    sub h
    ld c, $5c
    ld h, $01
    dec hl
    dec h
    add hl, hl
    rra
    call nz, Call_000_25a8
    ld bc, $26aa
    ld [hl], b
    and [hl]
    and a
    ld a, [$c428]
    and $1c
    jr nz, jr_000_26be

    ld a, $04
    ldh [$c7], a
    ld a, $cb
    ldh [$d9], a
    ld a, $26
    ldh [$da], a
    ret


jr_000_26be:
    ld a, $0b
    ldh [$c7], a
    ld a, $e4
    ldh [$d9], a
    ld a, $26
    ldh [$da], a
    ret


    ld bc, $26d1
    dec c
    inc hl
    nop
    ld b, $14
    call Call_000_0a72
    ld a, [$c208]
    and $df
    ld [$c208], a
    xor a
    ldh [$d6], a
    ldh [$d8], a
    ret


    ld [bc], a
    ld h, b
    dec h
    dec c
    ld hl, $1f00
    ld [bc], a
    inc e
    ld [$1e10], sp
    rst $30
    ld h, $0e
    ld b, b
    ld h, $a6
    ld a, [c]
    ld c, $5c
    ld h, $a6
    jr nz, @+$21

    ld [bc], a
    inc e
    ld [$1e10], sp
    add hl, bc
    daa
    ld c, $40
    ld h, $a7
    inc b
    ld c, $5c

Call_000_270b:
    ld h, $03
    add hl, de
    rlca
    ld e, b
    ld bc, $2720
    ld bc, $2762
    ld a, [hl+]
    call nc, Call_000_13ff
    daa
    ld bc, $272a
    and a
    ld d, [hl]
    ld hl, $c428
    set 7, [hl]
    ld a, $0b
    jp Jump_000_0263


    ld hl, $c428
    res 7, [hl]
    ld a, [$c1fd]
    jp Jump_000_0263


    rra
    ld [bc], a
    inc e
    ld [$1e10], sp
    ld b, d
    daa
    ld c, $40
    ld h, $a7
    dec a
    ld c, $5c
    ld h, $0d
    inc c
    inc bc
    ld a, [de]
    rlca
    ld h, b
    ld bc, $275d
    ld a, [hl+]
    call nc, $4bff
    daa
    ld bc, $272f
    ld [$07f0], sp
    jr nz, jr_000_2770

    and a
    ld e, d
    ld hl, $c422
    dec [hl]
    dec [hl]
    ld a, [$c201]
    sub $10
    ldh [$c1], a
    ld a, [$c203]
    sub $10
    ldh [$c3], a

jr_000_2770:
    ldh a, [$92]
    and $03
    ret nz

    ld hl, $ffd4
    dec [hl]
    ret


    rra
    ld [bc], a
    inc e
    ld [$1e10], sp
    add a
    daa
    ld c, $40
    ld h, $a7
    add d
    ld c, $5c
    ld h, $a8
    xor d
    rra
    ld [bc], a
    inc e
    ld [$1e10], sp
    sbc c
    daa
    ld c, $40
    ld h, $a7
    sub h
    ld c, $5c
    ld h, $a8
    jp z, Jump_000_021f

    inc e
    ld [$1e10], sp
    xor e
    daa
    ld c, $40
    ld h, $a7
    and [hl]
    ld c, $5c
    ld h, $a8
    and $1f
    ld [bc], a
    inc e
    ld [$1e10], sp
    cp l
    daa
    ld c, $40
    ld h, $a7
    cp b
    ld c, $5c
    ld h, $a9
    ld [bc], a
    ld b, $01
    ret z

    daa
    and a
    or $3e
    ld bc, $02ea
    call nz, $06c9
    ld bc, $27d4
    and a
    or $3e
    ld [bc], a
    ld [$c402], a
    ret


    ld b, $01
    ldh [$27], a
    and a
    or $3e
    inc bc
    ld [$c402], a
    ret


    dec d
    ld hl, $1523
    ld b, $01
    ldh a, [$27]
    and a
    or $3e
    inc b
    ld [$c402], a
    ret


Jump_000_27f6:
    rra
    ld b, b
    inc e
    ld [$1e10], sp
    inc b
    jr z, jr_000_2800

    ld d, h

jr_000_2800:
    ld h, $70
    xor b
    ld bc, $5401
    ld h, $29
    inc c
    jp Jump_000_27f6


    dec b
    ld [hl], b
    rra
    ld [bc], a
    ld e, $18
    jr z, @+$10

    ld b, b
    ld h, $a8
    inc de
    ld c, $5c
    ld h, $03
    jr jr_000_283c

    ld h, $28
    ld bc, $252b
    ld [hl], b
    xor b
    inc hl
    inc bc
    dec d
    ld a, [bc]
    sub b
    ld bc, $288c
    inc e
    db $10
    db $10
    ld e, $3b
    jr z, jr_000_2835

    sub a

jr_000_2835:
    jr z, @+$0a

    ldh a, [$15]
    xor b
    jr c, @+$13

jr_000_283c:
    ld [hl-], a
    dec d
    ld bc, $28a2
    inc de
    dec a
    jr z, jr_000_2846

    ld c, b

jr_000_2846:
    jr z, jr_000_2848

jr_000_2848:
    ld a, [$c413]
    ld [$c414], a
    ld a, [$c402]
    and $07
    dec a
    rst $00
    ld e, l
    jr z, jr_000_28bc

    jr z, @+$6d

    jr z, jr_000_28ce

    jr z, jr_000_289c

    rlca
    ld [$c413], a
    jr jr_000_2877

    ld a, $06
    ld [$c400], a
    jr jr_000_2877

    ld a, $05
    ld [$c400], a
    jr jr_000_2877

    ld a, $0f
    ld [$c413], a

jr_000_2877:
    ld hl, $c65d
    ld de, $c455
    ld bc, $0004
    call Call_000_035f
    ld hl, $c42f
    set 0, [hl]
    pop af
    jp Jump_000_0646


    ld a, [$c402]
    dec a
    ld hl, $27e6
    rst $18
    ldh [$c7], a
    ret


    ld hl, $c402
    set 6, [hl]

jr_000_289c:
    ld a, $01
    ld [$c426], a
    ret


Call_000_28a2:
    ldh a, [$c1]
    sub $0e
    ld [$c201], a
    ret


    inc bc
    ld e, $1e
    cp b
    jr z, jr_000_28cc

    ld [$0114], sp
    dec hl
    dec h
    ld [hl], b
    xor b
    or l
    ld bc, $28be
    dec c

jr_000_28bc:
    inc hl
    nop
    ld b, $08
    ld hl, $c41b
    jp Jump_000_28c6


Jump_000_28c6:
    inc [hl]
    jp Jump_000_0a72


    inc bc
    inc e

jr_000_28cc:
    ld e, $d8

jr_000_28ce:
    jr z, jr_000_28ec

    ld [$0114], sp
    dec hl
    dec h
    ld [hl], b
    xor b
    push de
    ld bc, $28de
    dec c
    inc hl
    nop
    ld b, $04
    ld hl, $c41a
    jp Jump_000_28c6


    inc bc
    rra
    ld e, $f4
    jr z, jr_000_2908

jr_000_28ec:
    ld [$0114], sp
    dec hl
    dec h
    ld [hl], b
    xor b
    pop af
    ld bc, $28fa
    dec c
    inc hl
    nop
    ld b, $10
    ld hl, $c41d
    jp Jump_000_28c6


    inc bc
    dec e
    ld e, $10

Call_000_2906:
    add hl, hl
    inc e

jr_000_2908:
    ld [$0114], sp
    dec hl
    dec h
    ld [hl], b
    xor c
    dec c
    ld bc, $2916
    dec c
    inc hl
    nop
    ld b, $0c
    ld hl, $c41c
    jp Jump_000_28c6


    ld e, $32
    add hl, hl
    rra
    ld [bc], a
    inc e
    inc b
    ld a, [bc]
    ld bc, $292c
    ld [hl], b
    xor c
    add hl, hl
    ld hl, $ffd0
    set 3, [hl]
    ret


    add hl, hl
    jp z, $1eff

    add hl, hl
    ld [bc], a
    ld d, a
    ld a, [hl+]
    ld bc, $20b0

Call_000_293d:
    nop
    ld e, $43
    add hl, hl
    xor c
    ld hl, $ca29
    rst $38
    ld a, $29
    ld [bc], a
    ld [hl], b
    dec h
    ld [bc], a
    ld d, a
    ld a, [hl+]
    ld bc, $20b0
    nop
    inc e
    dec b
    ld a, [bc]
    ld e, $7a
    add hl, hl
    ld bc, $252b
    ld [$0e18], sp
    ld l, l
    add hl, hl
    ld c, $6d
    add hl, hl
    ld [$0ee8], sp
    ld l, l
    add hl, hl
    ld c, $6d
    add hl, hl
    xor c
    ld e, e
    rlca
    db $10
    dec d
    ld b, e
    dec d
    ld b, e
    rlca
    ldh a, [$15]
    ld b, e
    dec d
    ld b, e
    db $10
    ld bc, $297e
    nop
    ld a, [$c428]
    and $1c
    cp $0c
    ret z

    ld a, $06
    ld [$c426], a
    ld a, $96
    ld [$c30d], a
    ret


    rra
    ld bc, $0a1c
    db $10
    dec h
    ld [bc], a
    inc c
    db $f4
    ld [$0d08], sp
    dec l
    ld bc, $29d0
    inc bc
    nop
    ld bc, $29c5
    ld bc, $29c5
    inc bc
    ld bc, $c501
    add hl, hl
    ld bc, $29c5
    inc bc
    ld [bc], a
    ld bc, $29c5
    ld bc, $29c5
    inc bc
    inc bc
    ld bc, $29c5
    ld bc, $29c5
    ld [$a914], sp
    and c
    call Call_000_21f5
    ldh a, [$d0]
    bit 7, a
    ret z

    jp Jump_000_231a


    ld a, $cc
    ld hl, $c208
    bit 5, [hl]
    jr nz, jr_000_29e0

    ld hl, $ffc8
    set 5, [hl]
    ld a, $34

jr_000_29e0:
    ldh [$d4], a
    ld hl, $ffd0
    set 0, [hl]
    ret


    rra
    ld bc, $081c
    db $10
    dec h
    ld bc, $0903
    inc c
    db $f4
    ld [$0d08], sp
    dec l
    ld bc, $2a06
    inc bc
    add hl, bc
    ld bc, $29c5
    ld bc, $29c5
    ld [$a914], sp
    ld a, [$203e]
    ld hl, $c208
    bit 5, [hl]
    jr z, jr_000_2a11

    ld a, $e0

jr_000_2a11:
    ldh [$d4], a
    ld hl, $ffd0
    set 0, [hl]
    ret


    rra
    ld [bc], a
    inc e
    ld [$2510], sp
    ld bc, $0503
    inc c
    db $fc
    dec c
    dec hl
    ld bc, $29d0
    ld de, $0303
    dec b
    ld c, $98
    ld [hl-], a
    inc bc
    ld b, $0e
    sbc b
    ld [hl-], a
    inc de
    dec hl
    ld a, [hl+]
    nop
    rra
    ld [bc], a
    inc e
    ld [$2510], sp
    ld bc, $0703
    dec c
    inc l
    ld bc, $29d0
    ld de, $0303
    rlca
    ld c, $98
    ld [hl-], a
    inc bc
    ld [$980e], sp
    ld [hl-], a
    inc de
    ld c, c
    ld a, [hl+]
    nop
    dec h
    ld [bc], a
    inc bc
    dec b
    jr nz, jr_000_2a71

    xor d
    ld h, l
    dec h
    ld [bc], a
    inc bc
    dec b
    jr nz, jr_000_2a75

    ld bc, $1f10
    dec h
    ld [bc], a
    inc bc
    dec b
    dec c
    ld [hl+], a
    inc bc
    dec b
    ld b, [hl]

jr_000_2a71:
    inc bc
    ld b, $46
    inc bc

jr_000_2a75:
    rlca
    ld b, [hl]
    nop
    dec h
    nop
    dec c
    ld a, [hl-]
    ld [$03d0], sp
    ld [$1515], sp
    dec d
    ld [$03e0], sp
    add hl, bc
    dec d
    dec d
    dec d
    dec c
    db $10
    ld e, h
    ld [$0320], sp
    ld [$900e], sp
    ld [hl-], a
    ld [$0330], sp
    add hl, bc
    dec d
    ld bc, $2a9e
    xor d
    sbc b
    ld a, [$c201]
    cp $a8
    ret c

    ld hl, $c421
    set 7, [hl]
    ret


    ld hl, $ffdf
    set 7, [hl]
    jp Jump_000_1f6c


    inc e
    dec b
    ld c, $1e
    pop bc
    ld a, [hl+]
    ld bc, $2aaa
    ld bc, $252b
    ld a, h
    xor d
    cp [hl]
    ld bc, $2af2
    ld a, [hl+]
    call nc, $b2ff
    ld a, [hl+]
    inc bc
    dec h
    ld bc, $2b04
    ld bc, $28a2
    inc e
    dec b
    jr @+$20

    jp c, $7c2a

    xor d
    rst $10
    ld bc, $2af2
    ld a, [hl+]
    call nc, $d4ff
    ld a, [hl+]
    inc bc
    inc h
    inc e
    dec b
    db $10
    ld e, $ed
    ld a, [hl+]
    ld b, h
    xor d
    or d
    ld bc, $2b16
    xor d
    ld [c], a
    ld hl, $ffd4
    ld a, $01
    ld [hl], a
    ld a, [$c427]
    bit 0, a
    ret nz

    ld a, [$c30c]
    ldh [$d4], a
    ret


    ld a, $30
    call Call_000_0263
    ld hl, $c427
    res 0, [hl]
    set 5, [hl]
    ld a, $01
    ld [$c30c], a
    ret


    jp Jump_000_2bb7


    inc e
    db $10
    db $10
    ld bc, $2aaa
    ld bc, $252b
    ld e, $2d
    dec hl
    inc bc
    ld hl, $0348
    ld [hl+], a
    ld c, b
    xor e
    dec h
    ld bc, $2b32
    xor e
    add hl, de
    ld a, $02
    ld [$c0d8], a
    jr jr_000_2baa

    inc e
    db $10
    db $10
    ld bc, $2aaa
    ld bc, $252b
    ld e, $48
    dec hl
    ld a, h
    xor e
    ld b, l
    ld c, $78
    dec hl
    ld e, $78
    dec hl
    ld de, $0e0a
    ld a, a
    dec hl
    inc de
    ld d, b
    dec hl
    inc bc
    daa
    ld de, $0e0a
    ld a, a
    dec hl
    inc de
    ld e, d
    dec hl
    ld e, $00
    nop
    inc bc
    jr z, jr_000_2b77

    ld a, [bc]
    ld c, $7f
    dec hl
    inc de
    ld h, a
    dec hl
    inc bc
    add hl, hl
    ld de, $0e0a
    ld a, a
    dec hl
    inc de
    ld [hl], c
    dec hl

jr_000_2b77:
    nop
    ld bc, $2baf
    ld e, $78
    dec hl
    db $10
    ld b, c
    db $10
    inc e
    db $10
    db $10
    ld e, $90
    dec hl
    ld bc, $2aaa
    ld bc, $252b
    ld a, h
    xor e
    adc l
    ld bc, $2baf
    xor e
    add c
    ld hl, $ffd4
    ldh a, [$d8]
    jr z, jr_000_2baf

    ld [$c0d8], a
    bit 7, [hl]
    jr nz, jr_000_2baa

    ld hl, $c0dc
    res 0, [hl]
    jr jr_000_2baf

jr_000_2baa:
    ld hl, $c0dc
    set 0, [hl]

jr_000_2baf:
    ld hl, $ffc1
    ld a, [$c201]
    sub [hl]
    ret nc

Jump_000_2bb7:
    call Call_000_28a2
    ld hl, $c427
    set 0, [hl]
    ld a, $04
    ld [$c430], a
    ret


    inc e
    db $10
    db $10
    ld bc, $2aaa
    ld bc, $252b
    ld e, $d4
    dec hl
    ld a, h
    xor e
    pop de
    ld [$0e00], sp
    db $eb
    dec hl
    ld e, $eb
    dec hl
    ld de, $0e20
    ld e, $2c
    inc de
    sbc $2b
    ld [$0e18], sp
    ld e, $2c
    xor e
    and $01
    xor a
    dec hl
    ld e, $eb
    dec hl
    db $10
    inc e
    db $10
    db $10
    ld bc, $2aaa
    ld bc, $252b
    ld e, $20
    inc l
    ld [$11fc], sp
    ld b, b
    ld c, $1e
    inc l
    inc de
    ld [bc], a
    inc l
    ld [$1104], sp
    add b
    ld c, $1e
    inc l
    inc de
    inc c
    inc l
    ld [$11fc], sp
    ld b, b
    ld c, $1e
    inc l
    inc de
    ld d, $2c
    xor e
    cp $15
    db $10
    ld bc, $2baf
    ld e, $20
    inc l
    db $10
    inc e
    db $10
    db $10
    ld bc, $2aaa
    ld bc, $252b
    ld e, $5e
    inc l
    rlca
    ld hl, sp+$11
    ld b, b
    ld c, $53
    inc l
    inc de
    scf
    inc l
    rlca
    ld [$8011], sp
    ld c, $53
    inc l
    inc de
    ld b, c
    inc l
    rlca
    ld hl, sp+$11
    ld b, b
    ld c, $53
    inc l
    inc de
    ld c, e
    inc l
    xor h
    inc sp
    ld bc, $2c57
    db $10
    call Call_000_2222
    ld a, c
    ldh [$d8], a
    ret


    ld bc, $2b95
    ld e, $5e
    inc l
    db $10
    dec h
    ld [bc], a
    inc bc
    jr nz, @+$1e

    ld [$1e08], sp
    ld h, b
    dec h
    ld bc, $252b
    ld [hl], b
    xor h
    ld [hl], d
    dec h
    nop
    ld de, $0303
    daa
    ld e, h
    inc bc
    jr z, jr_000_2cdb

    inc bc
    add hl, hl
    ld e, h
    inc de
    ld a, c
    inc l
    ld [$03d0], sp
    ld [$1515], sp
    dec d
    ld [$03e0], sp
    add hl, bc
    dec d
    dec d
    dec d
    ld b, h
    ld [$0320], sp
    ld [$0a11], sp
    dec d
    inc de
    sbc d
    inc l
    ld [$0330], sp
    add hl, bc
    ld c, $94
    ld [hl-], a
    ld de, $0304
    ld a, [hl+]
    ld c, h
    inc bc
    dec hl
    ld c, h
    inc de
    and a
    inc l
    ld [$0700], sp
    db $10
    ld de, $030b
    nop
    ld c, $98
    ld [hl-], a
    inc bc
    ld bc, $980e
    ld [hl-], a
    inc de
    or [hl]
    inc l
    ld h, b
    ld [bc], a
    ld h, b
    dec l
    ld h, $60
    rlca
    ldh a, [rNR11]
    rla
    inc bc
    nop
    ld c, $98
    ld [hl-], a
    inc bc
    ld bc, $980e
    ld [hl-], a
    inc de
    call $262c

jr_000_2cdb:
    ld [hl], b
    rlca
    db $10
    ld de, $0309
    inc sp
    ld c, $98
    ld [hl-], a
    inc bc
    inc [hl]
    ld c, $98
    ld [hl-], a
    inc de
    ldh [$2c], a
    ld d, b
    inc bc
    dec [hl]
    rlca
    db $10
    ld [$0ed8], sp
    sbc b
    ld [hl-], a
    ld [$0ee0], sp
    sbc b
    ld [hl-], a
    ld b, h
    ld [$0e20], sp

Call_000_2d00:
    sbc b
    ld [hl-], a
    ld [$0e28], sp
    sbc b
    ld [hl-], a
    ld d, b
    inc bc
    ld d, $02
    db $76
    dec l
    ld d, b
    ld [$0700], sp
    db $10
    ld de, $030c
    inc sp
    ld c, $98
    ld [hl-], a
    inc bc
    inc [hl]
    ld c, $98
    ld [hl-], a
    inc de
    inc d
    dec l
    ld h, $60
    rlca
    ldh a, [rNR11]
    ld [de], a
    inc bc
    nop
    ld c, $98
    ld [hl-], a
    inc bc
    ld bc, $980e
    ld [hl-], a
    inc de
    daa
    dec l
    ld h, $08
    ld b, b
    dec d
    dec d
    inc bc
    nop
    ld c, b
    inc bc
    ld bc, $ad48
    add hl, sp
    dec h
    nop
    inc bc
    inc l
    ld a, a
    ld a, a
    ld a, a
    ld h, h
    ld de, $0702
    ld [$1515], sp
    rlca
    ld hl, sp+$15
    dec d
    inc de
    ld c, e
    dec l
    rlca
    nop
    ld [$0e20], sp
    sub b
    ld [hl-], a
    dec c
    inc h
    nop
    dec h
    ld [bc], a
    inc bc
    inc c
    rlca
    ldh a, [rNR11]
    rrca
    ld [$0ee8], sp
    sub [hl]
    ld [hl-], a
    ld [$0e18], sp
    sub [hl]
    ld [hl-], a
    inc de
    ld l, b
    dec l
    nop
    dec h
    ld bc, $0503
    jr z, jr_000_2dac

    rlca
    jr nz, jr_000_2d90

    dec b
    inc bc
    dec b
    ld c, $98
    ld [hl-], a
    inc bc
    ld b, $0e
    sbc b
    ld [hl-], a
    inc de
    add b
    dec l
    nop
    dec h
    nop

jr_000_2d90:
    ld bc, $2dc1
    ld de, $0308
    ld [hl], $0e
    cp b
    dec l
    inc bc
    scf
    ld c, $b8
    dec l
    inc de
    sub l
    dec l
    ld de, $0314
    ld [hl], $48
    inc bc
    scf
    ld c, b
    inc de
    and h

jr_000_2dac:
    dec l
    ld bc, $2db0
    ld a, $02
    ld [$c400], a
    jp Jump_000_0646


    dec d
    ld b, b
    ld b, b
    ld b, b
    dec d
    ld b, b
    ld b, b
    ld b, b
    db $10
    ld hl, $2dd5
    ld a, [$c413]
    srl a
    srl a
    srl a
    rst $20
    ld a, e
    ldh [$d4], a
    ld a, d
    ldh [$d5], a
    ret


    nop
    ldh a, [$f2]
    ld a, [c]
    ld [$08fc], sp
    inc b
    nop
    ld c, $f8
    ld [$06f4], sp
    ld [$25f8], sp
    nop
    ld bc, $2dc1
    ld de, $0308
    jr c, @+$10

    cp b
    dec l
    inc bc

Jump_000_2df2:
    add hl, sp
    ld c, $b8
    dec l
    inc de
    db $ec
    dec l
    ld de, $0314
    jr c, jr_000_2e46

    inc bc
    add hl, sp
    ld c, b
    inc de
    ei
    dec l
    ld bc, $2db0
    dec h
    nop
    inc bc
    ld a, [hl-]
    ld a, h
    xor [hl]
    add hl, bc
    ld a, [bc]
    ld b, b
    add hl, bc
    jr z, jr_000_2e38

    nop
    ld bc, $199c
    xor [hl]
    inc d
    ld a, [bc]
    jr nc, @+$0b

    jr c, @+$27

    ld [bc], a
    inc bc
    ld bc, $1f29
    call nz, $2e2c
    dec b
    ld c, b
    ld b, $48
    xor [hl]
    ld hl, $4006
    xor [hl]
    ld hl, $800a
    add hl, bc
    db $10
    dec h
    ld [bc], a
    inc bc
    ld a, [hl+]

jr_000_2e38:
    ld a, [hl+]
    ld a, [de]
    call nz, $2e40
    ld b, $ae
    jr c, jr_000_2e46

    xor [hl]
    jr c, @+$0c

    add b
    add hl, bc

jr_000_2e46:
    jr nc, jr_000_2e6d

    ld [bc], a
    inc bc
    dec hl
    ld a, [hl+]
    dec de
    call nz, Call_000_2e53
    ld b, $ae
    ld c, e

Call_000_2e53:
    dec b
    xor [hl]
    ld c, e
    ld a, [bc]
    add b
    add hl, bc
    sub b
    dec h
    ld [bc], a
    ld a, [hl+]
    ld e, $c4
    ld h, [hl]
    ld l, $03
    inc c
    ld b, b
    xor [hl]
    ld e, h
    inc bc
    ld bc, $ae40
    ld e, h
    dec h
    nop

jr_000_2e6d:
    ld bc, $199c
    xor [hl]
    ld l, l
    dec h
    ld [bc], a
    inc bc
    inc c
    ld a, h
    ld a, h
    ld de, $0704
    db $10
    dec d
    ld b, h
    rlca
    ldh a, [$15]
    ld b, h
    inc de
    ld a, d
    ld l, $07
    nop
    ld [$0ee0], sp
    sub h
    ld [hl-], a
    ld [$0e20], sp
    sub h
    ld [hl-], a
    ld bc, $2e99
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    nop
    ld a, [$c413]
    cp $02
    jr nz, jr_000_2ea8

    ld a, $1b
    ld [$c40f], a
    jp Jump_000_2eef


jr_000_2ea8:
    ld hl, $c419
    ld a, [hl]
    cp $03
    jr nc, jr_000_2eb7

    call Call_000_2582
    ld a, $14
    jr jr_000_2eef

jr_000_2eb7:
    cp $05
    jr nc, jr_000_2ec2

    call Call_000_2588
    ld a, $13
    jr jr_000_2eef

jr_000_2ec2:
    ld hl, $c423
    ld a, [hl]
    cp $05
    jr nc, jr_000_2ed1

    ld a, $10
    ld [hl], a
    ld a, $17
    jr jr_000_2eef

jr_000_2ed1:
    ld de, $c41a
    ld hl, $c41b
    ld b, $04

jr_000_2ed9:
    ld a, [de]
    cp [hl]
    jr c, jr_000_2ee1

    jr z, jr_000_2ee1

    ld d, h
    ld e, l

jr_000_2ee1:
    inc hl
    dec b
    jr nz, jr_000_2ed9

    ld h, d
    ld l, e
    inc [hl]
    ld a, l
    sub $1a
    ld hl, $2ef2
    rst $18

Jump_000_2eef:
jr_000_2eef:
    ldh [$c7], a
    ret


    ld [hl-], a
    inc [hl]
    inc sp
    dec [hl]
    ld bc, $0225
    inc bc
    jr nc, @+$4e

    inc bc
    ld sp, $ae4c
    ld sp, hl
    dec h
    ld [bc], a
    inc bc
    ld l, $50
    inc bc
    cpl
    ld d, b
    xor a
    inc bc
    dec h
    nop
    ld bc, $2f12
    xor a
    dec c
    ldh a, [$c3]
    cp $0a
    jr nc, jr_000_2f20

    ld a, $03
    ld [$c400], a
    jp Jump_000_0646


jr_000_2f20:
    cp $40
    jr c, jr_000_2f4c

    cp $60
    jr c, jr_000_2f2d

    ld hl, $ffc8
    set 7, [hl]

jr_000_2f2d:
    cp $90
    jr c, jr_000_2f6a

    ld a, [$c413]
    and $f8
    add $08
    ld [$c413], a
    ld a, $01
    ld [$c400], a
    xor a
    ld [$c404], a
    ld hl, $c42f
    res 0, [hl]
    jp Jump_000_0646


jr_000_2f4c:
    ld hl, $ffc8
    ldh a, [$8c]
    bit 4, a
    jr z, jr_000_2f5b

    res 5, [hl]
    ld a, $0c
    jr jr_000_2f63

jr_000_2f5b:
    bit 5, a
    jr z, jr_000_2f67

    set 5, [hl]
    ld a, $f4

jr_000_2f63:
    ldh [$d4], a
    jr jr_000_2f6a

jr_000_2f67:
    xor a
    ldh [$d4], a

jr_000_2f6a:
    call Call_000_2222
    call Call_000_199c
    ret


    dec h
    nop
    ld bc, $2f78
    xor a
    ld [hl], e
    ld a, $02
    ld [$c426], a
    call Call_000_17cc
    call Call_000_17e0
    call Call_000_189f
    ldh a, [$c1]
    cp $6f
    jr nc, jr_000_2f91

    call Call_000_1927
    jr jr_000_2f99

jr_000_2f91:
    ld hl, $c427
    set 0, [hl]
    call Call_000_198e

jr_000_2f99:
    call Call_000_16fd
    jp Jump_000_199c


    dec h
    ld [bc], a
    inc bc
    inc c
    rra
    ld [bc], a
    inc e
    ld a, [bc]
    inc d
    ld e, $03
    jr nc, jr_000_2fad

    ld d, h

jr_000_2fad:
    ld h, $08
    jr nz, jr_000_2fc2

    inc e
    dec d
    ld bc, $2ffb
    inc de
    or d
    cpl
    rlca
    nop
    ld [$1120], sp
    jr nz, jr_000_2fd5

    add hl, de
    ld a, [de]

jr_000_2fc2:
    ld bc, $2ffb
    inc de
    cp a
    cpl
    rlca
    ldh [$08], a
    nop
    ld de, $1520
    rla
    ld a, [de]
    ld bc, $2ffb
    inc de

jr_000_2fd5:
    adc $2f
    rlca
    nop
    ld [$11e0], sp
    jr nz, jr_000_2ff3

    rla
    jr jr_000_2fe2

    ei

jr_000_2fe2:
    cpl
    inc de
    db $dd
    cpl
    rlca
    jr nz, jr_000_2ff1

    nop
    ld de, $1520
    add hl, de
    jr jr_000_2ff1

    ei

jr_000_2ff1:
    cpl
    inc de

jr_000_2ff3:
    db $ec
    cpl
    add hl, bc
    sub b
    ld a, [bc]
    jr c, @-$4f

    cp c
    ld a, [$c665]
    and a
    ret z

Call_000_3000:
    jp Jump_000_231a


    ld bc, $3007
    nop
    ld a, $01
    ld [$c665], a
    ldh a, [$92]
    and $0e
    srl a
    ld hl, $3022
    rst $20
    ld h, d
    ld l, e
    ldh a, [$c3]
    ld d, a
    ldh a, [$c1]
    ld e, a
    call Call_000_2322
    ret


    ld c, b
    dec h
    ld d, b
    dec h
    ld e, b
    dec h
    ld h, b
    dec h
    ld d, b
    dec h
    ld e, b
    dec h
    ld l, b
    dec h

Call_000_3030:
    ld [hl], b
    dec h
    dec h
    ld [bc], a
    inc bc
    ld c, l
    rlca
    ld [bc], a
    ld de, $0e80
    sub h
    ld [hl-], a
    inc de
    ld a, [hl-]
    jr nc, jr_000_30bd

    or b
    ld b, b
    dec h
    ld [bc], a
    inc bc
    dec sp
    ld a, h
    inc bc
    inc a
    ld [bc], a
    ld a, h
    jr nc, jr_000_30ca

    inc bc
    dec a
    ld a, h
    ld [bc], a
    sub b
    jr nc, @+$7e

    dec c
    ld a, [de]
    inc bc
    ld a, $7c
    ld [bc], a
    cp [hl]
    jr nc, @+$04

    call nz, $7c30
    ld [bc], a
    cp [hl]
    jr nc, @+$04

    call nz, Call_000_1130
    inc b
    inc bc
    ccf
    ld c, a
    inc bc
    ld b, b
    ld c, a
    inc de
    ld l, c
    jr nc, jr_000_3076

    ld b, c
    ld a, h
    ld e, [hl]

jr_000_3076:
    inc bc
    ld b, d
    ld a, h
    ld b, c
    or b
    ld a, c

Jump_000_307c:
    dec h
    ld [bc], a
    inc bc
    inc c
    add hl, bc
    ld e, b
    ld a, [bc]
    ld [hl], b
    ld [$11d0], sp
    ld [hl], $15
    jr jr_000_30a3

    inc de
    adc b
    jr nc, @-$54

    ld l, b
    dec h
    ld [bc], a
    add hl, bc
    ld d, [hl]
    inc bc
    ld b, e
    ld a, h
    ld de, $0303
    ld b, h
    ld c, a
    inc bc
    ld b, l
    ld c, a
    inc de
    sbc c
    jr nc, jr_000_30b4

jr_000_30a3:
    ld b, $03
    ld b, [hl]
    ld c, a
    inc bc
    ld b, a
    ld c, a
    inc de
    and h
    jr nc, jr_000_30b7

    ld e, d
    inc bc
    ld c, b
    ld a, h
    ld [bc], a
    rst $10

jr_000_30b4:
    jr nc, jr_000_30b9

    ld c, c

jr_000_30b7:
    ld a, h
    inc bc

jr_000_30b9:
    ld c, d
    ld a, h
    ld b, c
    or b

jr_000_30bd:
    cp e
    rlca
    db $fc
    ld [$b0fc], sp

Jump_000_30c3:
    ret z

    rlca
    inc b
    ld [$09fe], sp
    ld d, b

jr_000_30ca:
    ld a, [bc]
    ld l, [hl]
    dec h
    ld [bc], a
    inc bc
    ld c, e
    ld de, $1528
    inc de
    jp nc, RST_30

    dec h
    ld [bc], a
    inc bc
    ld c, h
    add hl, bc
    ld d, h
    ld a, [bc]
    ld l, [hl]
    ld [$11fe], sp
    inc a
    dec d
    inc de
    db $e3
    jr nc, jr_000_3164

    or b
    rst $20
    dec h
    inc bc
    inc bc
    inc hl
    jr z, jr_000_3100

    jr nz, @+$0e

    or b
    or $20
    inc d
    ld bc, $1f10
    dec c
    jr z, jr_000_30fd

    or b

jr_000_30fd:
    jr nz, jr_000_3100

    dec e

jr_000_3100:
    ld sp, $c008
    ld de, $150c
    jr @+$15

    dec b
    ld sp, $4427
    ld [$1540], sp
    dec d
    ld bc, $3115
    or c
    ld c, $f0
    pop bc
    cp $98
    jp nc, Jump_000_231a

    ret


    ld a, $08
    ld hl, $c208
    bit 5, [hl]
    jr z, jr_000_3128

    ld a, $f8

jr_000_3128:
    ldh [$d4], a
    ret


    ld b, $02
    ld l, b
    ld a, [hl+]
    ld d, d
    dec b
    and [hl]
    ld h, $00
    rra
    ld bc, $0420
    inc e
    ld b, $0c
    ld e, $f9
    jr nc, jr_000_314f

    rra
    ld bc, $0820
    inc e
    ld b, $0c
    ld e, $f9
    jr nc, jr_000_315a

    rra
    ld bc, $0c20
    inc e

jr_000_314f:
    ld b, $0c
    ld e, $f9
    jr nc, jr_000_3165

    rra
    ld bc, $1020
    inc e

jr_000_315a:
    ld b, $0c
    ld e, $f9
    jr nc, jr_000_3170

    rra
    ld bc, $1420

jr_000_3164:
    inc e

jr_000_3165:
    ld b, $0c
    ld e, $f9
    jr nc, @+$12

    rra
    ld bc, $1820
    inc e

jr_000_3170:
    ld b, $0c
    ld e, $f9
    jr nc, jr_000_3186

    rra
    rst $38
    inc e
    inc bc
    ld b, $1e
    inc sp
    ld sp, $9801
    ccf
    db $10
    call Call_000_23d1
    ld a, d

jr_000_3186:
    and $80
    jp nz, Jump_000_3193

Jump_000_318b:
    ld hl, $ffc8
    res 5, [hl]
    jp Jump_000_1f6c


Jump_000_3193:
    ld hl, $ffc8
    set 5, [hl]
    jp Jump_000_1f6c


    call Call_000_23d1
    ld b, d
    ldh a, [$d4]
    xor b
    and $80
    jp nz, Jump_000_1f6c

    ld hl, $ffd4
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    and $80
    jp nz, Jump_000_318b

    jp Jump_000_3193


    ld hl, $ffd4
    jp Jump_000_31bf


    ld hl, $ffd5

Jump_000_31bf:
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    jp Jump_000_1f6c


    ldh a, [$cb]
    and $01
    jp z, Jump_000_1f6c

    ld hl, $ffc8
    set 4, [hl]
    jp Jump_000_1f6c


    ld b, $00
    ld a, [$c203]
    ld hl, $ffc3
    sub [hl]
    jr nc, jr_000_31e3

    cpl
    inc a
    inc b

jr_000_31e3:
    ld d, a
    ld c, $00
    ld a, [$c201]
    ld hl, $ffc1
    sub [hl]
    jr nc, jr_000_31f2

    cpl
    inc a
    inc c

jr_000_31f2:
    ld e, a
    ld a, d
    cp $60
    ld d, a
    jp nc, Jump_000_3212

    ld a, e
    cp $60
    ld e, a
    jp nc, Jump_000_3212

    ld a, d

Call_000_3202:
    cp $30
    ld d, a
    jp nc, Jump_000_3216

    ld a, e
    cp $30
    ld e, a
    jp nc, Jump_000_3216

    jp Jump_000_321a


Jump_000_3212:
    srl d
    srl e

Jump_000_3216:
    srl d
    srl e

Jump_000_321a:
    srl d
    srl e
    ld a, d
    dec b
    jp nz, Jump_000_3225

    cpl
    inc a

Jump_000_3225:
    ld hl, $ffd4
    ld [hl], a
    ld a, e
    dec c
    jp nz, Jump_000_3230

    cpl
    inc a

Jump_000_3230:
    ld hl, $ffd5
    ld [hl], a
    jp Jump_000_1f6c


    call Call_000_23d1
    ld a, e
    cp $30
    jp Jump_000_3261


    call Call_000_23d1
    ld a, e
    cp $38
    jp Jump_000_3261


    call Call_000_23d1
    ld a, e
    cp $3c
    jp Jump_000_3261


    call Call_000_23d1
    ld a, e
    cp $40
    jp Jump_000_3261


    call Call_000_23d1
    ld a, e
    cp $50

Jump_000_3261:
    push af
    call Call_000_22e9
    pop af
    jp nc, Jump_000_22f5

    jp Jump_000_1f6c


    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d

Call_000_327a:
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    db $10
    dec d
    jr @+$1a

    dec d
    jr jr_000_32bb

    dec d
    jr @+$1a

    dec d
    jr jr_000_32c1

    dec d
    jr jr_000_32c4

    dec d
    jr jr_000_32c7

    db $10
    dec d
    jr @+$1a

    ld bc, $32bd
    dec d
    jr @+$1a

    inc h
    or [hl]

jr_000_32bb:
    ld [hl-], a
    db $10
    ldh a, [$d5]
    and $80

jr_000_32c1:
    jp nz, Jump_000_32c7

jr_000_32c4:
    jp Jump_000_1f6c


Jump_000_32c7:
jr_000_32c7:
    ld bc, $32b0
    jp Jump_000_22f5


    ld [$15f0], sp
    jr jr_000_32ea

    inc h
    rst $08
    ld [hl-], a
    db $10
    ld de, $0108
    pop hl
    ld [hl-], a
    dec d
    ld b, b
    inc de
    ret c

    ld [hl-], a
    db $10
    ld hl, $ffd6
    ld a, [hl]
    inc [hl]
    and $1f
    ld b, $00

jr_000_32ea:
    ld c, a
    ld hl, $32f6
    add hl, bc
    ld de, $ffc1
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    db $fc
    db $fc
    db $fd
    db $fd
    cp $ff
    rst $38
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    rst $38
    rst $38
    cp $fd
    db $fd
    db $fc
    db $fc
    ld c, $55
    ld sp, $0403
    ld b, b
    ld bc, $3182
    add hl, hl
    rra
    call nz, $3319
    ld bc, $3252
    add hl, de
    inc sp
    ld [bc], a
    jr c, @+$35

    inc bc
    rlca
    ld a, h
    ld a, h
    inc bc
    inc b
    ld a, h

Call_000_3333:
    ld bc, $3182
    or e
    add hl, hl
    ld c, $76
    ld sp, $041c
    inc b
    rlca
    ld hl, sp+$08
    db $f4
    dec h
    inc bc
    ld bc, $319b
    ld de, $0f10
    ld [$3294], sp
    rrca
    add hl, bc
    sub h
    ld [hl-], a
    ld bc, $31bc
    inc de
    ld c, c
    inc sp
    nop
    ld c, $55
    ld sp, $0403
    ld d, b
    ld bc, $3237
    ld e, e
    inc sp
    inc bc
    dec b

Call_000_3365:
    rlca
    ld hl, sp+$08
    ret c

    ld bc, $319b
    ld c, $b0
    ld [hl-], a
    ld bc, $3182
    or e
    ld e, e
    ld c, $55
    ld sp, $1028
    inc bc
    inc c
    ld c, b
    inc bc
    dec c
    ld c, b
    ld bc, $3249
    ld a, c
    inc sp
    inc bc
    ld c, $07
    ld hl, sp+$08
    jp z, $9b01

    ld sp, $2e0d
    ld c, $b0
    ld [hl-], a
    ld bc, $3182
    or e
    ld a, c
    rra
    ld bc, $061c
    inc c
    ld e, $b1
    inc sp
    ld de, $0d04
    add hl, sp

Call_000_33a3:
    inc bc
    inc c
    ld c, b
    inc bc
    dec c
    ld c, b
    ld bc, $3182
    inc de
    and e
    inc sp
    or e
    sbc a
    ld a, [hl+]
    jp z, $f4ff

    jr nc, jr_000_33c5

    ld h, b
    ld sp, $77b3
    rra
    ld bc, $061c
    inc c
    ld e, $c5
    inc sp
    or e
    sbc a

jr_000_33c5:
    ld a, [hl+]
    jp z, $2bff

    ld sp, $600e
    ld sp, $2b1e
    ld sp, $77b3
    ld c, $55
    ld sp, $f008
    ld c, $7c
    ld [hl-], a
    ld c, d
    ld bc, $31bc
    or e
    rst $10
    ld c, $4a
    ld sp, $fc07
    inc bc
    ld [bc], a
    ld d, h
    dec d
    inc bc
    inc bc
    ld d, h
    or e
    push hl
    ld c, $6b
    ld sp, $7b01
    dec sp
    rlca
    ldh a, [$08]
    nop
    rrca
    nop
    sub $32
    rrca
    ld bc, $32d6
    or e
    ld hl, sp+$0e
    ld l, e
    ld sp, $0a1e
    inc [hl]
    or e
    pop af
    ld b, $02
    ld l, b
    ld a, [hl+]
    ld d, d
    dec b
    dec h
    ld [bc], a
    inc bc
    inc c
    ld [$1510], sp
    inc h
    ld d, $34
    and a
    ld a, d
    ld c, $6b
    ld sp, $241e
    inc [hl]
    or e
    pop af
    ld b, $02
    ld l, b
    ld a, [hl+]
    ld d, d
    dec b
    dec h
    ld [bc], a
    inc bc
    inc c
    ld [$1510], sp
    inc h
    jr nc, jr_000_3468

    and a
    adc h
    ld c, $6b
    ld sp, $3e1e
    inc [hl]
    or e
    pop af
    ld b, $02
    ld l, b
    ld a, [hl+]
    ld d, d
    dec b
    dec h
    ld [bc], a
    inc bc
    inc c
    ld [$1510], sp
    inc h
    ld c, d
    inc [hl]
    and a
    sbc [hl]
    ld c, $6b
    ld sp, $581e
    inc [hl]
    or e
    pop af
    ld b, $02
    ld l, b
    ld a, [hl+]
    ld d, d
    dec b
    dec h
    ld [bc], a
    inc bc
    inc c
    ld [$1510], sp
    inc h
    ld h, h
    inc [hl]

jr_000_3468:
    and a
    or b
    ld c, $55
    ld sp, $0140
    ld e, e
    ld [hl-], a
    ld l, l
    inc [hl]
    ld bc, $3182
    rlca
    inc d
    ld [$01f8], sp
    sbc e
    ld sp, $0211
    ld [de], a
    db $10
    dec d
    dec d

jr_000_3483:
    dec d
    ld bc, $34b4
    inc d
    add c
    inc [hl]
    ld [$1308], sp
    ld a, a
    inc [hl]
    rlca
    nop
    ld [$0ef0], sp
    add h
    ld [hl-], a
    ld d, b
    ld bc, $3182
    rlca
    ld [$1008], sp
    ld bc, $319b
    ld de, $0e05
    add h
    ld [hl-], a
    ld bc, $31bc
    inc de
    and e
    inc [hl]
    or h
    ld [hl], e
    ld b, b
    ld bc, $34d6
    or h
    xor [hl]
    ld a, [$c203]
    and $f8
    ld b, a
    ldh a, [$c3]

Call_000_34bc:
    and $f8
    cp b
    jp nz, Jump_000_1f6c

    ld a, [$c201]
    sub $28
    ld b, a
    ld hl, $ffc1
    ld a, [hl]
    sub b
    jp nz, Jump_000_34db

Jump_000_34d0:
    ld bc, $3496
    jp Jump_000_22f5


    ldh a, [$d6]
    ld hl, $ffc1

Jump_000_34db:
    dec [hl]
    dec a
    jp z, Jump_000_34d0

    ldh [$d6], a
    ld bc, $34ae
    jp Jump_000_22f5


    ld c, $4a
    ld sp, $061c
    inc d
    rlca
    ld hl, sp+$0f
    daa
    adc h
    ld [hl-], a
    rrca
    jr z, jr_000_3483

    ld [hl-], a
    or h
    ldh a, [$1f]
    ld bc, $061c
    inc c

Jump_000_34ff:
    ld e, $2c
    dec [hl]
    rlca
    ld hl, sp+$03
    ld hl, $0811
    dec d
    dec d
    dec d
    dec d
    ld bc, $3182
    inc de
    ld [$0135], sp
    or [hl]
    ld sp, $06b5
    rra
    ld bc, $041c
    ld a, [bc]
    ld e, $2c
    dec [hl]
    ld bc, $292c
    inc bc

Call_000_3523:
    ld [hl+], a
    ld a, h
    ld a, h
    ld a, h
    ld bc, $3533
    or h
    ld a, [$ca2a]
    rst $38
    db $f4
    jr nc, @-$49

    rla
    ld hl, $ffd0
    res 3, [hl]
    jp Jump_000_1f6c


    ld c, $6b
    ld sp, $1503
    ld c, b
    inc bc
    ld d, $48
    ld bc, $325b
    ld a, $35
    rlca
    db $f4
    ld [$1110], sp
    ld [bc], a
    inc bc
    dec d
    ld [de], a
    ld [$0115], sp

Call_000_3555:
    ld l, b
    dec [hl]
    inc d
    ld d, e
    dec [hl]
    inc bc
    ld d, $13
    ld d, c
    dec [hl]
    or l
    ld c, l
    rlca
    nop
    ld c, $99
    dec [hl]
    or l
    ld a, l
    ld hl, $c201
    ldh a, [$c1]
    sub [hl]
    jp z, Jump_000_3574

    jp Jump_000_1f6c


Jump_000_3574:
    ld bc, $3561
    jp Jump_000_22f5


    ld c, $55
    ld sp, $f807
    ld [$0e10], sp
    sbc c
    dec [hl]
    ld de, $0e05
    sub l
    dec [hl]
    inc de
    add [hl]
    dec [hl]
    ld c, $99
    dec [hl]
    ld b, b
    ld bc, $31b6
    or l
    add c
    ld [de], a
    ld [bc], a
    or l
    sbc e
    ld [de], a
    ld bc, $bc01
    ld sp, $1503
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    inc bc
    ld d, $15
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    inc d
    sbc [hl]
    dec [hl]
    db $10
    ld c, $55
    ld sp, $f008
    ld c, $95
    dec [hl]
    inc bc
    dec d
    ld b, h
    inc bc
    ld d, $44
    or l
    cp e
    ld b, b
    ld bc, $3612
    rra
    ld bc, $061c
    inc d
    ld e, $e0
    dec [hl]
    dec h
    inc bc
    rlca
    inc h
    rrca
    inc hl
    call $0f32
    inc h
    call $b532
    sub $2a
    jp z, $f4ff

    dec [hl]
    rra
    ld bc, $f41e
    dec [hl]
    jr z, jr_000_35fc

    inc bc
    inc hl
    ld c, b
    inc bc
    inc h
    ld c, b
    or l
    jp nc, Jump_000_0301

    ld [hl], $06
    ld [bc], a
    ld [$5230], a

jr_000_35fc:
    dec b
    dec bc
    ld d, b
    jr z, jr_000_3601

jr_000_3601:
    xor h
    ld h, l
    call Call_000_23d1
    ld a, d
    and $80
    jp z, Jump_000_1f6c

    ld bc, $30f0
    jp Jump_000_22f5


    ld hl, $ffc3
    ld a, [hl]
    and $fe
    cp $00
    jp z, Jump_000_1f6c

    call Call_000_20b0
    ld bc, $35c6
    jp Jump_000_22f5


    ld c, $4a
    ld sp, $071c
    ld c, $03
    dec de
    ld c, b
    inc bc
    inc e
    ld c, b
    inc bc
    dec e
    ld c, b
    inc bc
    ld e, $48
    or [hl]
    inc l
    rra
    ld [bc], a
    jr nz, jr_000_364e

    inc e
    ld b, $14
    ld e, $f9
    jr nc, @+$0a

    db $f4
    ld de, $0e05
    sub b
    ld [hl-], a
    ld bc, $31c6

jr_000_364e:
    inc de
    ld c, b
    ld [hl], $4a
    ld bc, $31bc
    or [hl]
    ld b, [hl]
    dec e
    jr @+$10

    ld h, b
    ld sp, $2b03
    ld b, b
    ld bc, $325b
    ld e, h
    ld [hl], $07
    db $ec
    ld [$0ee8], sp
    ld [hl], h
    ld [hl], $07
    inc d
    ld [$0ee8], sp
    ld [hl], h
    ld [hl], $b6
    ld h, h
    ld de, $0302
    ld a, [hl+]
    ld d, b
    inc bc
    inc l
    ld [de], a
    inc b
    dec d
    dec d
    dec d
    dec d
    inc d
    ld a, l
    ld [hl], $13
    db $76
    ld [hl], $07
    nop
    ld [$0308], sp
    dec hl
    ld de, $1518
    dec d
    dec d
    dec d
    inc de
    adc a
    ld [hl], $50
    db $10
    ld c, $55
    ld sp, $061c
    ld a, [bc]
    dec e
    db $fc
    rlca
    ld hl, sp+$08
    ld hl, sp+$0e
    jp nz, Jump_000_0e36

    cp e
    ld [hl], $0e
    cp e
    ld [hl], $01
    cp h
    ld sp, $c20e
    ld [hl], $01
    or [hl]
    ld sp, $9401
    inc hl
    or [hl]
    and h
    ld de, HeaderLogo
    cp h
    ld sp, $c4b6
    ld de, $0302
    cpl
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    inc bc
    jr nc, jr_000_36e4

    dec d
    dec d
    dec d
    dec d
    dec d
    inc de
    call nz, $1036
    ld c, $34
    ld sp, $0a1c
    inc c
    rlca
    ld hl, sp+$0f
    dec l
    sub h
    ld [hl-], a

jr_000_36e4:
    rrca
    ld l, $94
    ld [hl-], a
    or [hl]
    ldh [$1f], a
    ld bc, $0420
    inc e
    ld a, [bc]
    db $10
    ld e, $2b
    ld sp, $deb6
    ld c, $55
    ld sp, $3103
    ld d, b
    inc bc
    ld [hl-], a
    ld d, b
    add hl, hl

jr_000_3700:
    rra
    call nz, $36f9
    ld de, $0304
    ld sp, $0350
    ld [hl-], a
    ld d, b
    inc de
    ld b, $37
    or a
    inc b
    ld c, $60
    ld sp, $061c
    inc d
    ld de, $0304
    ld b, h
    ld c, b
    inc bc
    ld b, l
    ld c, b
    inc de
    add hl, de
    scf
    ld bc, $3182
    inc bc
    ld b, [hl]
    ld [$0edc], sp
    or b
    ld [hl-], a
    dec c
    inc sp
    ld [bc], a
    inc [hl]
    scf
    ld e, b
    or a
    rla
    ld b, $0a
    nop
    ld bc, $3758
    ld [bc], a
    ld c, h
    scf
    ld c, d
    ld [bc], a
    ld b, [hl]
    scf
    ld c, d
    ld [bc], a
    ld c, d
    scf
    nop
    dec bc
    jr nc, jr_000_3700

    ld c, h
    dec bc
    ret c

    dec h
    inc bc
    inc bc
    add hl, hl
    ld [$0e18], sp
    db $76
    ld sp, $b715
    ld d, l
    ld a, [$c203]
    ldh [$c3], a
    jp Jump_000_1f6c


    ld c, $60
    ld sp, $061c
    inc d
    ld bc, $3b7b
    rlca
    ldh a, [$08]
    nop
    ld bc, $32e1
    dec d
    ld b, b
    or a
    ld l, l
    ld c, $55
    ld sp, $2503
    rlca
    nop
    ld [$0edc], sp
    or b
    ld [hl-], a
    inc bc
    ld h, $50

Call_000_3783:
    ld bc, $3240
    ld [hl], a
    scf
    inc bc
    dec h
    rlca
    ldh a, [$08]
    adc $01
    sbc e
    ld sp, $b00e
    ld [hl-], a
    inc bc
    ld h, $50
    or a
    ld [hl], a
    ld c, $34
    ld sp, $f007
    ld c, $af
    scf
    ld a, h
    ld c, $ab
    scf
    ld e, [hl]
    ld bc, $31b6
    or a
    sbc [hl]
    ld de, $b704
    or c
    ld de, $0302
    rra
    dec d
    dec d
    dec d
    dec d
    inc bc
    jr nz, jr_000_37cf

    dec d
    dec d
    dec d
    inc de
    or c
    scf
    db $10
    dec e
    ld c, $0e
    ld h, b
    ld sp, $021f
    ld [$06c0], sp
    ld bc, $3809
    or a

jr_000_37cf:
    call nc, $7c06
    ld a, [bc]
    ld a, b
    ld bc, $3810
    dec h
    inc bc
    dec b

jr_000_37da:
    dec c
    ld [hl-], a
    rrca
    ld c, b
    sbc l
    ld [hl-], a
    ld bc, $31c6
    ld bc, $37fc
    ld bc, $37ef
    rrca
    ld b, a
    sbc l
    ld [hl-], a
    or a
    call c, $c1f0
    cp $78
    jp c, Jump_000_1f6c

    ld bc, $37d0
    jp Jump_000_22f5


Call_000_37fc:
    ldh a, [$d5]
    and $80
    jp z, Jump_000_1f6c

    ld bc, $37dc
    jp Jump_000_22f5


    ldh a, [$d5]
    ldh [$d6], a
    jp Jump_000_1f6c


    ldh a, [$d6]
    ldh [$d5], a
    jp Jump_000_1f6c


    dec e
    ld c, $0e
    ld d, l
    ld sp, $bd08
    ld b, $01
    add hl, bc
    jr c, jr_000_37da

    call nc, $6b0e
    ld sp, $101c
    inc c
    rlca
    ldh a, [$08]
    pop bc
    ld de, $0e10
    and e
    ld [hl-], a
    inc de
    jr nc, jr_000_386e

    cp b
    ld a, [hl+]
    ld c, $34
    ld sp, $051c
    ld a, [bc]
    dec bc
    ld [de], a
    rlca
    db $f4
    ld [$0e00], sp
    ld e, [hl]
    jr c, jr_000_384f

    nop
    ld [$0e0c], sp
    ld h, d
    jr c, jr_000_3856

jr_000_384f:
    inc c
    ld [$0e00], sp
    ld e, [hl]
    jr c, jr_000_385d

jr_000_3856:
    nop
    ld [$0ef4], sp
    ld h, d
    jr c, @-$46

jr_000_385d:
    ld b, b
    ld de, $b806
    ld h, h
    ld de, $0304
    inc de
    dec d
    dec d
    dec d

jr_000_3869:
    dec d
    inc bc
    inc d
    dec d
    dec d

jr_000_386e:
    dec d
    dec d
    inc de
    ld h, h
    jr c, jr_000_3884

    ld c, $60
    ld sp, $0d1c
    inc c
    ld bc, $3b7b
    rlca
    ldh a, [$08]
    nop
    rrca
    ld a, $d6

jr_000_3884:
    ld [hl-], a
    rrca
    ccf
    sub $32
    cp b
    add c
    rra
    ld bc, $061c
    inc d
    ld e, $9f
    jr c, @+$09

    ld [$170f], a
    call $0f32
    jr jr_000_3869

    ld [hl-], a
    cp b
    sub l
    ld a, [hl+]
    jp z, $f4ff

    jr nc, @+$21

    ld bc, $1420
    ld e, $f9
    jr nc, jr_000_38d4

    db $10
    inc bc
    rla
    ld c, b
    inc bc
    jr @+$4a

    cp b
    sub e
    ld c, $4a
    ld sp, $061c
    ld [$f807], sp
    ld bc, $319b
    ld de, $0f06
    jr c, jr_000_385d

    ld [hl-], a
    rrca
    add hl, sp
    sbc b
    ld [hl-], a
    inc de
    jp nz, $0138

    sbc e
    ld sp, $e008
    ld c, $b0

jr_000_38d4:
    ld [hl-], a
    ld [$5000], sp
    cp b
    cp l
    ld c, $3f
    ld sp, $041c
    inc c
    ld [$11f8], sp
    inc bc
    rrca
    ld c, c
    sub h
    ld [hl-], a
    rrca
    ld c, d
    sub h
    ld [hl-], a
    inc de
    db $e4
    jr c, @+$4a

    ld bc, $31bc
    cp b
    ld [c], a
    ld c, $4a
    ld sp, $061c
    ld [$f807], sp
    ld de, $0f02
    ld b, c
    sub h
    ld [hl-], a
    rrca
    ld b, b
    sub h
    ld [hl-], a
    inc de
    rst $38
    jr c, jr_000_3953

    ld bc, $31b6
    cp b
    db $fd
    ld c, $60
    ld sp, $031c
    ld b, $03
    dec sp
    ld d, b
    inc bc
    inc a
    ld d, b
    add hl, hl
    rra
    call nz, $3916
    ld [bc], a
    ld sp, $1139
    inc b
    inc bc
    dec sp
    ld d, b
    inc bc
    inc a
    ld d, b
    inc de
    ld h, $39
    cp c
    ld hl, $760e
    ld sp, $d501
    ld sp, $0325
    inc bc
    dec a
    dec d
    cp c
    dec sp
    ld c, $4a
    ld sp, $fc07
    inc bc
    ld c, e
    ld d, h
    dec d
    inc bc
    ld c, h
    ld d, h
    cp c
    ld b, e
    ld bc, $20b0
    rra
    ld [bc], a
    inc e
    rlca

jr_000_3953:
    ld c, $1e
    ld h, l
    add hl, sp
    rlca
    db $f4
    ld [$15f4], sp
    jr jr_000_3976

    inc h
    ld e, e
    add hl, sp
    dec c
    cpl
    cp c
    ld d, a
    add hl, hl
    jp z, $4fff

    add hl, sp
    xor d
    ld e, a
    ld c, $76
    ld sp, $061c
    inc c
    inc bc
    ld a, [bc]
    ld d, b
    inc bc

jr_000_3976:
    dec bc
    ld d, b
    cp c
    ld [hl], d
    ld c, $76
    ld sp, $031c
    inc c
    ld b, b
    ld bc, $3252
    add b
    add hl, sp
    ld e, [hl]
    ld [$0d20], sp
    inc [hl]
    dec d
    inc h
    adc e
    add hl, sp
    rlca
    ld hl, sp+$08
    call c, $9b01
    ld sp, $1815
    jr jr_000_3953

    sub [hl]
    ld c, $76
    ld sp, $051c
    inc d
    ld b, b
    ld bc, $3252
    and c
    add hl, sp
    ld [$0d20], sp
    dec sp
    dec d
    cp c
    xor e
    ld b, $0d
    dec [hl]
    ld [bc], a
    cp a
    add hl, sp
    ld d, b
    ld [bc], a
    jp $5039


    ld [bc], a
    rst $00
    add hl, sp
    ld a, h
    cp c
    xor a
    rlca
    ldh a, [$b9]
    ret


    rlca
    ld hl, sp-$47
    ret


    rlca
    db $10
    ld c, $76
    ld sp, $ce08
    dec h
    inc bc
    rrca
    ld b, d
    and e
    ld [hl-], a
    rrca
    ld b, e
    and e
    ld [hl-], a
    cp c
    ret nc

    ld b, $02
    ld [c], a

jr_000_39dd:
    add hl, sp
    ld a, h
    ld e, [hl]
    cp c
    db $db
    ld c, $76
    ld sp, $051c
    ld a, [bc]
    ld [$25bd], sp
    inc bc
    rrca
    ld l, h
    and e
    ld [hl-], a
    rrca
    ld l, l
    and e
    ld [hl-], a
    cp c
    db $ec
    ld b, $02
    ld [c], a
    add hl, sp
    ld a, h
    ld a, h
    ld a, h
    cp c
    rst $30
    dec b
    ld de, $0304
    ld c, a
    ld c, b
    inc bc
    ld d, b
    ld c, b
    inc de
    ld [bc], a
    ld a, [hl-]
    ld b, $02
    inc d
    ld a, [hl-]
    ld a, h
    ld a, h
    ld e, [hl]
    cp c
    rst $38
    ld c, $76
    ld sp, $041c
    ld [$0325], sp
    inc bc
    ld d, c
    ld [$1500], sp
    jr jr_000_39dd

    jr nz, jr_000_3a33

    db $76
    ld sp, $f808
    ld c, $7c
    ld [hl-], a
    ld c, $7c
    ld [hl-], a
    ld bc, $31bc
    cp d

jr_000_3a33:
    add hl, hl
    ld c, $76
    ld sp, $f807
    ld c, $7c
    ld [hl-], a
    ld c, $7c
    ld [hl-], a
    ld bc, $31b6
    cp d
    add hl, sp
    rra
    rst $38
    inc e
    rrca
    db $10
    ld bc, $3f98
    ld bc, $2aaa
    ld bc, $252b
    ld e, $7f
    ld a, [hl-]
    ld de, $0e1e
    ld a, e
    ld a, [hl-]
    inc de
    ld d, a
    ld a, [hl-]
    ld [$1140], sp
    ld [$7d0e], sp
    ld a, [hl-]
    inc de
    ld h, c
    ld a, [hl-]
    ld de, $0e3c
    ld a, e
    ld a, [hl-]
    inc de
    ld l, c
    ld a, [hl-]
    ld [$11f8], sp
    ld b, b
    ld c, $7d
    ld a, [hl-]
    inc de
    ld [hl], e
    ld a, [hl-]
    cp d
    ld d, l
    ld b, c
    db $10
    dec d
    db $10
    ld bc, $3a86
    ld e, $7f
    ld a, [hl-]
    db $10
    ld hl, $ffc1
    ld a, [$c201]
    sub $08
    sub [hl]
    jp c, Jump_000_2bb7

    ld hl, $c428
    jp Jump_000_2041


    ld c, $b0
    ccf
    dec e
    ld c, $1c
    db $10
    ld e, $1e
    inc c
    ccf
    ld bc, $3abf
    ld de, $0304
    ld d, d
    ld d, b
    inc bc
    ld d, e
    ld d, b
    inc de
    xor b
    ld a, [hl-]
    ld [bc], a
    rst $00
    ld a, [hl-]
    ld [bc], a
    reti


    ld a, [hl-]
    inc bc
    ld d, d
    ld d, b
    inc bc
    ld d, e
    ld d, b
    cp d
    or a
    ld hl, $c1fe
    ld [hl], $10
    jp Jump_000_1f6c


    ld bc, $3b7b
    ld e, $3e
    dec sp
    ld c, $eb
    ld a, [hl-]
    ld bc, $3bcd
    nop
    ld c, $f7
    ld a, [hl-]
    cp d
    ret nc

    ld bc, $3b7b
    ld e, $57
    dec sp
    ld c, $eb
    ld a, [hl-]
    ld bc, $3bcd
    ld [bc], a
    ld c, $f7
    ld a, [hl-]
    cp d
    ld [c], a
    rra
    ld [bc], a
    inc e
    inc b
    ld [$080c], sp
    dec h
    inc bc
    inc bc
    ld d, h
    db $10
    dec d
    dec d
    dec d
    dec d
    ld bc, $3b81
    ld bc, $3b8f
    db $10
    ld de, $0309
    ld d, l
    ld b, h
    inc bc
    ld d, h
    ld b, h
    inc de
    inc b
    dec sp
    ld bc, $31d5

Call_000_3b10:
    ld c, $6c
    ld [hl-], a
    ld c, $70
    dec sp
    ld bc, $3b1b
    cp d
    rst $00
    ldh a, [$d6]
    cp $04
    jp nz, Jump_000_3b28

    ld bc, $3adc
    jp Jump_000_22f5


Jump_000_3b28:
    cp $08
    jp nz, Jump_000_3b33

    ld bc, $3ad9
    jp Jump_000_22f5


Jump_000_3b33:
    cp $05
    jp nz, Jump_000_1f6c

    ld bc, $3aca
    jp Jump_000_22f5


    ld c, $70
    dec sp
    ld bc, $3b46
    cp d
    rst $00
    ld hl, $ffd6
    ld a, [hl]
    cp $04
    jp nc, Jump_000_1f6c

    ld [hl], $05
    ld bc, $3aca
    jp Jump_000_22f5


    ld c, $70
    dec sp
    ld bc, $3b5f
    cp d
    reti


    ld hl, $ffd6
    ld a, [hl]
    cp $03
    jp nc, Jump_000_1f6c

    ld [hl], $04
    ld bc, $3adc
    jp Jump_000_22f5


    ld b, $02
    ld l, b
    ld a, [hl+]
    ld d, d
    add hl, bc
    sub b
    ld a, [bc]
    ld b, b
    dec b
    db $10
    xor a
    ldh [$d6], a
    jp Jump_000_1f6c


    ld a, [$c1fe]
    cp $10
    jp z, Jump_000_1f6c

    ld bc, $2a68
    jp Jump_000_22f5


    ldh a, [$d4]
    and a
    jp z, Jump_000_3ba1

    ldh a, [$c3]
    and $07
    cp $04
    jp nz, Jump_000_1f6c

    jp Jump_000_3baa


Jump_000_3ba1:
    ldh a, [$c1]
    and $07
    cp $04
    jp nz, Jump_000_1f6c

Jump_000_3baa:
    ldh a, [$c3]
    ld b, a
    ldh a, [$c1]
    ld c, a
    ld a, [$c65d]
    add b
    ldh [$8e], a
    ld a, [$c65f]
    add c
    sub $08
    ldh [$8f], a
    call Call_000_031e
    ld b, $01
    ld hl, $3bcc
    call Call_000_0377
    jp Jump_000_1f6c


    daa
    call Call_000_230d
    ld b, $00
    ld c, a
    ld hl, $3c6f
    add hl, bc
    ld a, [hl]
    ld [$c1f5], a
    inc hl
    ld a, [hl]
    ld [$c1f6], a
    ld hl, $3c73
    add hl, bc
    ld a, [hl]
    ld [$c1f7], a
    inc hl
    ld a, [hl]
    ld [$c1f8], a
    ld b, $00
    ldh a, [$d6]
    ld c, a
    ld a, [$c1f5]
    ld l, a
    ld a, [$c1f6]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jp z, Jump_000_3c06

    cp $ff
    jp nz, Jump_000_3c10

Jump_000_3c06:
    ld hl, $ffd6
    inc [hl]
    ld bc, $3b02
    jp Jump_000_22f5


Jump_000_3c10:
    ldh a, [$c3]
    cp [hl]
    jp nz, Jump_000_3c29

    ld a, [$c1f7]
    ld l, a
    ld a, [$c1f8]
    ld h, a
    add hl, bc
    ldh a, [$c1]
    cp [hl]
    jp nz, Jump_000_3c29

    ld hl, $ffd6
    inc [hl]

Jump_000_3c29:
    ld a, [$c1f7]
    ld l, a
    ld a, [$c1f8]

Jump_000_3c30:
    ld h, a
    ld b, $00
    ld d, b
    ldh a, [$d6]
    ld c, a
    add hl, bc
    ldh a, [$c1]
    cp [hl]
    jp z, Jump_000_3c4b

    jp nc, Jump_000_3c46

    ld d, $08
    jp Jump_000_3c48


Jump_000_3c46:
    ld d, $f8

Jump_000_3c48:
    xor a
    ldh [$d4], a

Jump_000_3c4b:
    ld a, d
    ldh [$d5], a
    ld a, [$c1f5]
    ld l, a
    ld a, [$c1f6]
    ld h, a
    ld d, b
    add hl, bc
    ldh a, [$c3]
    cp [hl]
    jp z, Jump_000_3c6b

    jp nc, Jump_000_3c66

    ld d, $08
    jp Jump_000_3c68


Jump_000_3c66:
    ld d, $f8

Jump_000_3c68:
    xor a
    ldh [$d5], a

Jump_000_3c6b:
    ld a, d
    ldh [$d4], a
    ret


    ld [hl], a
    inc a
    adc b
    inc a
    add b
    inc a
    sub b
    inc a
    ld a, h
    inc a
    inc d
    ld e, h
    ld bc, $2c7c
    inc a
    rst $38
    inc e
    inc l
    inc a
    ld c, h
    ld bc, $340c
    inc [hl]
    ld l, h
    inc c
    ld d, h
    ld bc, $3c7c
    inc h
    rst $38
    ld a, h
    ld h, h
    ld e, h
    ld bc, $4c54
    ld h, h
    ld c, $b0
    ccf
    inc e
    db $10
    jr jr_000_3c9f

    sbc b

jr_000_3c9f:
    ccf
    inc bc
    ld d, [hl]
    ld a, h
    ld a, h
    ld e, [hl]
    ld bc, $3fa0
    ld [bc], a
    ld hl, sp+$3e
    inc bc
    ld d, a
    ld a, h
    ld e, [hl]
    add hl, hl
    ret z

    rst $38
    or a
    inc a
    ld [bc], a
    ld hl, sp+$3e
    ld e, [hl]
    cp h
    sbc l
    ld c, $c1
    ccf
    rra
    jr jr_000_3cdc

    ld a, [bc]
    db $10
    dec bc
    ld [$0311], sp
    ld c, $89
    ccf
    ld c, $e6
    inc a
    add hl, hl
    ret z

    rst $38
    call nc, Call_000_023c
    ld hl, sp+$3e
    ld c, $f7
    inc a
    ld e, $00
    nop
    ld c, $8c

jr_000_3cdc:
    ccf
    dec bc
    ret z

    inc de
    add $3c
    add hl, bc
    adc b

Call_000_3ce4:
    cp h
    call nz, Call_000_0f1e
    ccf
    ld [de], a
    ld [bc], a
    inc bc
    ld e, b
    ld e, [hl]
    inc bc
    ld e, c
    ld e, [hl]
    inc d
    db $eb
    inc a
    ld [bc], a
    ld hl, sp+$3e
    ld [de], a
    ld [bc], a
    inc bc
    ld e, b
    ld e, [hl]
    inc bc
    ld e, c
    ld e, [hl]

Jump_000_3cff:
    inc d
    ld sp, hl
    inc a
    db $10
    ld c, $c1
    ccf
    rra
    jr nz, @+$1e

    db $10
    jr nz, jr_000_3d1d

    ld [bc], a
    ld c, $89
    ccf
    ld c, $30
    dec a
    ld bc, $3ee9
    dec de
    dec a
    ld [bc], a
    ld hl, sp+$3e
    ld c, $41

jr_000_3d1d:
    dec a
    ld e, $00
    nop
    ld c, $8c
    ccf
    ld bc, $2394
    add hl, bc
    db $10
    inc de
    dec c
    dec a
    add hl, bc
    sub b
    cp l
    dec bc
    ld e, $0f
    ccf
    ld [de], a
    ld [bc], a
    inc bc

jr_000_3d36:
    ld e, d
    ld e, [hl]
    inc bc
    ld e, e
    ld e, [hl]
    inc d
    dec [hl]
    dec a
    ld [bc], a
    ld hl, sp+$3e
    ld [de], a
    ld [bc], a
    inc bc
    ld e, d
    ld e, [hl]
    inc bc
    ld e, e
    ld e, [hl]
    inc d
    ld b, e
    dec a
    db $10
    ld c, $c1
    ccf
    rra
    jr nz, jr_000_3d6f

    inc c
    jr jr_000_3d67

    inc bc
    ld c, $89
    ccf
    ld c, $7a
    dec a
    add hl, hl
    ret z

    rst $38
    ld h, l
    dec a
    ld [bc], a
    ld hl, sp+$3e
    ld c, $8b

jr_000_3d67:
    dec a
    ld e, $00
    nop
    ld c, $8c
    ccf
    dec bc

jr_000_3d6f:
    jr nc, jr_000_3d72

    sub a

jr_000_3d72:
    dec a
    inc de
    ld d, a
    dec a
    add hl, bc
    jr nz, jr_000_3d36

    ld d, l
    ld e, $0f
    ccf
    ld [de], a
    ld [bc], a
    inc bc
    ld e, h
    ld e, [hl]
    inc bc
    ld e, l
    ld e, [hl]
    inc d
    ld a, a
    dec a
    ld [bc], a
    ld hl, sp+$3e
    ld [de], a
    ld [bc], a
    inc bc
    ld e, h
    ld e, [hl]
    inc bc
    ld e, l
    ld e, [hl]
    inc d
    adc l
    dec a
    db $10
    ldh a, [$c3]
    cp $50
    jp z, Jump_000_3da8

    cp $80
    jp nz, Jump_000_1f6c

    ld a, $20
    jp Jump_000_3daa


Jump_000_3da8:
    ld a, $30

Jump_000_3daa:
    ldh [$c1], a
    jp Jump_000_1f6c


    ld c, $b0
    ccf
    dec de
    ld b, b
    rra
    jr jr_000_3dd3

    ld c, $18
    ld [$0ef8], sp
    call nc, Call_000_0e3d
    call nc, Call_000_293d
    ret z

    rst $38

Call_000_3dc4:
    ret


    dec a
    ld [bc], a
    ld hl, sp+$3e
    ld c, $d4
    dec a
    ld c, $d4
    dec a
    ld [bc], a
    ld hl, sp+$3e
    cp l

jr_000_3dd3:
    cp e
    ld de, $1202
    inc b
    inc bc
    ld e, [hl]
    dec d
    dec d
    dec d
    dec d
    inc d
    jp c, Jump_000_123d

    inc b
    inc bc
    ld e, a
    dec d
    dec d
    dec d
    dec d
    inc d
    push hl
    dec a
    inc de
    sub $3d
    ld bc, $31bc
    db $10
    ld c, $c1
    ccf
    rra
    jr nz, @+$1e

    ld c, $10
    ld de, $0e02
    adc c
    ccf
    ld e, $0f
    ccf
    ld c, $31

Call_000_3e05:
    ld a, $0e
    jr nz, jr_000_3e47

    ld c, $28
    ld a, $1e
    nop
    nop
    inc bc
    ld h, d
    ld a, h
    ld a, h
    ld e, [hl]
    ld c, $8c
    ccf
    ld a, [bc]
    jr nc, @+$15

    db $fd
    dec a
    ld a, [bc]
    ld [hl], b
    cp l

jr_000_3e1f:
    ei
    add hl, hl
    ret z

    rst $38
    jr z, jr_000_3e63

    ld [bc], a
    ld hl, sp+$3e
    inc bc
    ld h, b
    ld e, [hl]
    ld [bc], a
    ld hl, sp+$3e
    inc bc
    ld h, c
    ld e, [hl]
    inc bc
    ld h, b
    ld e, [hl]
    inc bc
    ld h, c
    ld e, [hl]
    db $10
    ld c, $c1
    ccf
    jr nz, jr_000_3e3d

jr_000_3e3d:
    rra
    db $10
    inc e
    db $10
    jr z, jr_000_3e54

    ld [bc], a
    ld c, $89
    ccf

jr_000_3e47:
    ld e, $28
    ccf
    ld c, $73
    ld a, $0e
    ld h, d
    ld a, $0e
    ld l, d
    ld a, $1e

jr_000_3e54:
    nop
    nop
    ld c, $8c
    ccf
    ld a, [bc]
    ld [hl], b
    inc de
    ld b, h
    ld a, $0a
    jr z, jr_000_3e1f

    ld b, d
    add hl, hl

jr_000_3e63:
    ret z

    rst $38
    ld l, d
    ld a, $02
    ld hl, sp+$3e
    inc bc
    ld h, e
    ld e, [hl]
    ld [bc], a

jr_000_3e6e:
    ld hl, sp+$3e
    inc bc
    ld h, h
    ld e, [hl]
    inc bc
    ld h, e
    ld e, [hl]
    inc bc
    ld h, h
    ld e, [hl]
    db $10
    rra
    jr nz, jr_000_3e9d

    jr nz, jr_000_3e9b

    db $10
    jr jr_000_3e83

    xor b

jr_000_3e83:
    ccf
    jr z, jr_000_3e86

jr_000_3e86:
    inc bc
    ld h, l
    ld a, [bc]
    jr nc, jr_000_3e94

    sub b
    ld de, $0e02
    adc c
    ccf
    ld e, $0f
    ccf

jr_000_3e94:
    ld [de], a
    ld [$c90e], sp
    ld a, $0e
    or c

jr_000_3e9b:
    ld a, $0e

jr_000_3e9d:
    cp c
    ld a, $1e
    nop
    nop
    ld c, $8c
    ccf
    ld a, [bc]
    ld [hl], b
    inc de
    adc [hl]
    ld a, $01
    db $d3
    ld a, $0a
    jr nc, jr_000_3e6e

    adc h
    ld bc, $3ee9
    cp c
    ld a, $02
    ld hl, sp+$3e
    ld [de], a
    inc b
    inc bc
    ld h, l
    ld b, h
    inc bc
    ld h, [hl]
    ld b, h
    inc d

Jump_000_3ec2:
    cp e
    ld a, $02
    ld hl, sp+$3e
    ld [de], a
    inc c
    inc bc
    ld h, l
    ld b, h
    inc bc
    ld h, [hl]
    ld b, h
    inc d
    ret


    ld a, $10
    ldh a, [$c3]
    cp $90
    jp nc, Jump_000_3edf

    ld a, $90
    jp Jump_000_3ee1


Jump_000_3edf:
    ld a, $10

Jump_000_3ee1:
    ldh [$c3], a
    call Call_000_2394
    jp Jump_000_1f6c


    ldh a, [$c8]
    and $10
    push af
    call Call_000_22e9
    pop af
    jp z, Jump_000_22f5

    jp Jump_000_1f6c


    ld c, $76
    ld sp, $d501
    ld sp, $0325
    inc bc
    ld h, a
    ld c, $98
    ld [hl-], a
    inc bc
    ld l, b
    ld c, $98
    ld [hl-], a
    cp [hl]
    cp $01
    ld hl, $0e3f
    ld d, c
    ccf
    ld bc, $3f19
    ld b, c
    ld bc, $0e07
    call Call_000_3f4b
    xor a
    ld [$c200], a
    ret


    xor a
    ld [$c1fe], a
    jp Jump_000_1f6c


    ld c, $51
    ccf
    ld bc, $3f33
    ld bc, $3f4b
    cp [hl]
    ld a, d
    ld a, $3f
    call Call_000_0e9c

Call_000_3f38:
    ld c, $02
    call Call_000_112f
    ld a, $01

Jump_000_3f3f:
    ldh [$99], a
    ld [$2000], a
    ret


    ld hl, $c402
    set 6, [hl]
    ret


Call_000_3f4b:
    ld hl, $c402
    res 6, [hl]
    ret


    ld bc, $3f45
    ld d, h
    ld b, $11
    ld [bc], a
    ld [bc], a
    ld l, d
    ccf
    ld d, b
    ld [bc], a
    ld l, [hl]
    ccf
    ld d, b
    ld [bc], a
    ld [hl], d
    ccf
    ld d, b
    inc de
    ld e, b
    ccf
    ld a, h
    ld a, h
    db $10
    inc c
    db $10
    cp a
    db $76
    dec bc
    ldh a, [$bf]
    db $76
    dec bc
    db $10
    inc c
    ld hl, sp+$25
    inc bc
    ld de, $0d04
    dec h
    inc bc
    ld l, c
    ld c, b
    inc bc
    ld l, d
    ld c, b
    inc bc
    ld l, e
    ld c, b
    inc de
    ld a, d
    ccf
    nop
    ld b, $7c
    ld e, [hl]
    ld [de], a
    inc b
    dec b
    ld b, h
    ld b, $44
    inc d
    adc [hl]
    ccf
    dec b
    ld b, h
    db $10
    ld hl, $ffd0
    set 4, [hl]
    jp Jump_000_1f6c


    ld hl, $ffd0
    res 4, [hl]
    jp Jump_000_1f6c


    ld hl, $ffd0
    set 5, [hl]
    jp Jump_000_1f6c


    ld b, b
    ld bc, $3fd1
    or b
    ccf
    rra
    inc d
    jr nz, jr_000_3fda

    ld e, $0f
    ccf
    ld bc, $3fa8
    db $10
    ld b, $40
    ld bc, $3fd1
    jp nz, Jump_000_203f

    jr nz, jr_000_3fe9

    nop
    nop
    ld bc, $3fa8
    db $10
    ld a, [$c65d]
    cp $a0
    push af
    call Call_000_22e9

jr_000_3fda:
    pop af
    jp c, Jump_000_22f5

    jp Jump_000_1f6c


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3fe9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fff:
    nop
