; Disassembly of "4-in-1 Funpak - Volume II (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    pop hl
    add a
    rst $18
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rst $38

RST_08::
    add a
    rst $18
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    rst $38
    rst $38

RST_10::
    push af
    push bc
    push de
    push hl
    jp Jump_000_03f4


    rst $38

RST_18::
    add l
    ld l, a
    ret nc

    inc h
    ret


    rst $38
    rst $38
    rst $38

RST_20::
    cpl
    inc a
    add l
    ld l, a
    ret c

    dec h
    ret


    rst $38

RST_28::
    add e
    ld e, a
    ret nc

    inc d
    ret


    rst $38
    rst $38
    rst $38

RST_30::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jp Jump_000_04af


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp Jump_000_054f


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp Jump_000_0550


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    jp Jump_000_0551


Call_000_005b:
    di
    xor a
    call Call_000_00d6

JoypadTransitionInterrupt::
    ld a, $01
    ld [$2150], a
    ld a, $80
    db $e0

    ld b, b
    call Call_000_00bd
    call Call_000_0380
    ld hl, $c000

Jump_000_0072:
    ld bc, $1ff5

Call_000_0075:
    call Call_000_1535
    ld hl, $ff8a
    ld bc, $0075
    call Call_000_1535
    call Call_000_0386
    ld c, $80
    ld b, $0a
    ld hl, $0092

jr_000_008b:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_008b

    ret


    ld a, $c1
    ldh [rDMA], a
    ld a, $28

jr_000_0098:
    dec a
    jr nz, jr_000_0098

    ret


Call_000_009c:
    ld hl, $00a7

jr_000_009f:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld [c], a
    inc c
    jr nz, jr_000_009f

    ret


    ld bc, $0200
    nop
    ld b, d
    nop
    ld b, e
    nop
    ld b, a
    nop
    ld c, b
    nop
    ld c, c
    nop
    ld b, l
    ld l, a
    ld b, c
    ld b, b
    rrca
    nop
    rst $38
    add hl, bc

Call_000_00bd:
    ldh a, [rLCDC]
    rlca
    ret nc

Jump_000_00c1:
    ldh a, [rIE]

Jump_000_00c3:
    push af

Jump_000_00c4:
    res 0, a
    call Call_000_00d6

jr_000_00c9:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_00c9

Call_000_00cf:
    ldh a, [rLCDC]
    and $5f
    ldh [rLCDC], a
    pop af

Call_000_00d6:
    ld b, a
    xor a
    ldh [rIF], a
    ld a, b

Jump_000_00db:
    ldh [rIE], a
    ret


Call_000_00de:
jr_000_00de:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_00de

    ret


Call_000_00e7:
jr_000_00e7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_00e7

    ret


Call_000_00ee:
    ldh a, [rLCDC]
    rlca
    ret nc

jr_000_00f2:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_00f2

jr_000_00f8:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_00f8

    ret


    rst $38

Boot::
    nop
    jp Jump_000_0158


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "FUNPAK 4IN1 - V2"

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
    db $71

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $9c

HeaderGlobalChecksum::
    db $7b, $c1

    ld a, h
    nop
    inc bc
    nop
    and d
    dec c
    dec bc
    nop

Jump_000_0158:
    ld sp, $e000
    call Call_000_038c
    call Call_000_1457

Jump_000_0161:
jr_000_0161:
    ld sp, $e000
    push hl
    ld hl, $ffb7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $ffb9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_005b
    pop hl
    ld a, l
    ld [$ffb9], a
    ld a, h
    ld [$ffba], a
    pop hl
    ld a, l
    ld [$ffb7], a
    ld a, h
    ld [$ffb8], a
    pop hl
    call Call_000_03a2
    call Call_000_019a
    call Call_000_01f4
    call Call_000_145e
    call Call_000_0255
    jr jr_000_0161

Call_000_019a:
    ld a, [$c319]
    or a
    ret nz

    inc a
    ld [$c319], a
    ld bc, $20f0
    call Call_000_01b8
    ret c

    ld bc, $0078
    call Call_000_01b8
    ret c

    ld bc, $a078
    call Call_000_01b8
    ret


Call_000_01b8:
    push bc
    call Call_000_00bd
    pop bc
    push bc
    ld a, b
    call Call_000_05e0
    ld a, $91
    ldh [rLCDC], a
    call Call_000_151b
    call Call_000_1525
    call $0b31
    ld a, $01
    ld [$c304], a
    pop bc
    ld b, c

jr_000_01d6:
    push bc
    rst $10
    pop bc
    ld a, [$c309]
    cp $01
    jr z, jr_000_01ec

    dec b
    jr nz, jr_000_01d6

    xor a
    ld [$c304], a
    call Call_000_1521
    xor a
    ret


jr_000_01ec:
    call Call_000_0cc6

Call_000_01ef:
    call Call_000_1521
    scf
    ret


Call_000_01f4:
    ld a, [$c303]
    or a
    ret nz

    call Call_000_00bd
    xor a
    ldh [$a6], a
    ld a, $01
    call Call_000_05e0
    call $0b31
    ld a, $91
    ldh [rLCDC], a

Jump_000_020b:
    ld a, $01
    call Call_000_05a0
    call Call_000_151b
    ld a, $01
    ld [$c304], a
    ld [$c313], a
    xor a
    ld [$c338], a
    call Call_000_0482
    ld bc, $01e0
    ld d, $09

jr_000_0227:
    rst $10
    ld a, [$c309]
    cp $01
    jr z, jr_000_024e

    ldh a, [$a9]
    and d
    jr nz, jr_000_023b

    dec bc
    ld a, b
    or c
    jr nz, jr_000_0227

    jr jr_000_0227

jr_000_023b:
    jr nz, jr_000_0247

    ld a, $01
    ldh [$a6], a
    xor a
    ld [$c304], a
    jr jr_000_024a

jr_000_0247:
    call Call_000_0c64

jr_000_024a:
    call Call_000_1521
    ret


jr_000_024e:
    call Call_000_0cc6
    call Call_000_1521
    ret


Call_000_0255:
    call Call_000_0abf
    ldh a, [$a6]
    or a
    jr z, jr_000_025e

    ret


jr_000_025e:
    xor a
    ld [$c313], a
    ld a, $09
    call Call_000_05a0
    call Call_000_0271
    call Call_000_0301
    call Call_000_035d
    ret


Call_000_0271:
    call Call_000_00bd
    ld a, $21
    call Call_000_05e0
    ld a, $93
    ldh [rLCDC], a
    ld hl, $02b5
    ld a, $80
    call Call_000_081b
    call Call_000_151b
    call Call_000_08a0
    ld a, [$c33a]
    ld [$c338], a
    call Call_000_0974
    ret


    ld a, [$c303]
    push af
    call Call_000_02a4
    pop af
    cp $03
    ret nz

    pop hl
    jp Jump_000_08a0


Call_000_02a4:
    call $0b31
    xor a
    ld [$c304], a
    ret


    ld a, [$c303]
    and a
    ret nz

    pop hl
    jp Jump_000_08a0


    inc bc
    nop
    and h
    sbc b
    dec bc
    dec b
    sub h
    ld [bc], a
    sub l
    ld [bc], a
    sub l
    ld [bc], a
    xor h
    ld [bc], a
    ld [hl+], a
    nop
    db $e3
    ld [bc], a
    ld h, d
    nop
    db $ec
    ld [bc], a
    and d
    nop
    or $02
    ld [bc], a
    nop
    call nz, $0b98
    inc bc
    sub h
    ld [bc], a
    sub l
    ld [bc], a
    sub l
    ld [bc], a
    ld [hl+], a
    nop
    db $e3
    ld [bc], a
    ld h, d
    nop
    db $ec
    ld [bc], a
    ld sp, $5020
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    nop
    ld [hl-], a
    jr nz, jr_000_033f

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    ld [hl-], a
    jr nz, jr_000_0340

    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld [hl], e
    nop

Call_000_0301:
    ld hl, $031b
    ld a, $80
    call Call_000_081b
    call Call_000_151b
    call Call_000_08a0
    call Call_000_1521
    call Call_000_0c5d
    ld a, [$c33a]
    ldh [$b6], a
    ret


    inc b
    nop
    add h
    sbc b
    ld a, [bc]
    rlca
    ld a, [de]
    inc bc
    ld a, [de]
    inc bc
    ld a, [de]
    inc bc
    ld a, [de]
    inc bc
    ld a, [de]
    inc bc
    ld [hl+], a
    nop
    dec sp
    inc bc
    ld h, d
    nop

Call_000_0331:
    ld b, l
    inc bc
    and d
    nop
    ld c, [hl]
    inc bc
    ld [c], a
    nop
    ld d, a
    inc bc
    ld d, e
    ld l, a
    ld l, h
    ld l, c

jr_000_033f:
    ld [hl], h

jr_000_0340:
    ld h, c
    ld l, c
    ld [hl], d
    ld h, l
    nop
    ld b, h
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld l, a
    ld h, l
    ld [hl], e
    nop
    ld b, e
    ld [hl], d
    ld l, c
    ld h, d
    ld h, d
    ld h, c
    ld h, a
    ld h, l
    nop
    ld e, c
    ld h, c
    ld h, e
    ld l, b
    ld [hl], h
    nop

Call_000_035d:
    push af
    call Call_000_03ed
    ld a, $02
    call Call_000_05a0
    pop af
    ldh a, [$b6]
    ld c, a
    ld hl, $037c
    rst $18
    ld a, [hl]
    ld [$2150], a
    ld a, c
    rst $00
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    ld [bc], a
    inc bc
    dec b
    inc b

Call_000_0380:
    ld a, [$c319]
    ldh [$80], a
    ret


Call_000_0386:
    ldh a, [$80]
    ld [$c319], a
    ret


Call_000_038c:
    call Call_000_00bd
    ld hl, $c000
    ld bc, $1ffb
    call Call_000_1535
    ld hl, $ff80
    ld bc, $007f
    call Call_000_1535
    ret


Call_000_03a2:
    ld hl, $c0c0
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Jump_000_03ae:
    ld [hl], a
    ld a, $07
    ld [$2150], a
    call $4105
    ld a, $01
    ld [$2150], a
    xor a
    ld [$c302], a
    ld [$c300], a
    ld [$c301], a
    ldh [$a7], a
    ld [$c004], a
    ld [$c005], a
    ldh [$a4], a
    ldh [$a6], a
    ld [$c304], a
    inc a
    ld [$c313], a
    call $0b31

Call_000_03dc:
    call Call_000_009c
    ei
    ldh a, [rLCDC]
    and $80
    ldh [rLCDC], a
    call Call_000_00bd
    call Call_000_1541
    ret


Call_000_03ed:
    call Call_000_1541
    xor a
    ldh [$b0], a
    ret


Jump_000_03f4:
    xor a
    ld [$c317], a

jr_000_03f8:
    ld a, [$c317]
    or a
    jr z, jr_000_03f8

    call Call_000_0464
    call Call_000_1480
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_0409:
    call Call_000_043c
    ld a, [$c303]
    and a
    jr nz, jr_000_0416

    call Call_000_0428
    ret


jr_000_0416:
    ld a, [$c30b]
    ld b, a
    ld a, c
    ld [$c30b], a
    ld c, b
    ld a, [$c303]
    cp $03
    jr z, jr_000_0432

    jr jr_000_0428

Call_000_0428:
jr_000_0428:
    ldh a, [$ab]
    xor c
    and c
    ldh [$a9], a
    ld a, c
    ldh [$ab], a
    ret


jr_000_0432:
    ldh a, [$ac]
    xor c
    and c
    ldh [$aa], a
    ld a, c
    ldh [$ac], a
    ret


Call_000_043c:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
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
    or b
    ld c, a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_0464:
    ldh a, [$a6]
    or a
    jr nz, jr_000_0481

    ld a, [$c313]
    or a
    ret nz

    ld hl, $c314
    ldh a, [$ab]
    and $0f

Call_000_0475:
    cp $0f
    jr nz, jr_000_047e

    dec [hl]
    jp z, Jump_000_0161

    ret


jr_000_047e:
    ld [hl], $05
    ret


jr_000_0481:
    ret


Call_000_0482:
    xor a
    ldh [$a9], a
    ldh [$aa], a
    dec a
    ldh [$ab], a
    ldh [$ac], a
    ret


    ld a, $07
    jp Jump_000_0579


    ld a, $ad
    ldh [rNR10], a
    ld a, $05
    ldh [rNR11], a
    ld a, $ff
    ldh [rNR13], a
    ld a, $c7
    ldh [rNR14], a
    ld a, $8f
    ldh [rNR52], a
    ld a, $77

Call_000_04a8:
    ldh [rNR50], a
    ld a, $ff
    ldh [rNR51], a
    ret


Jump_000_04af:
    push af
    push bc
    push de
    push hl
    ld a, [$7fff]
    ldh [$a8], a
    call $ff80
    ld a, [$c303]
    cp $03
    call nz, Call_000_04e1
    ldh a, [$a8]

Call_000_04c5:
    ld [$2150], a
    pop hl
    pop de
    pop bc
    ldh a, [rSTAT]
    and $03
    cp $01
    jr z, jr_000_04df

jr_000_04d3:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_04d3

jr_000_04d9:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_04d9

jr_000_04df:
    pop af
    reti


Call_000_04e1:
    ei
    ld a, [$c307]
    or a
    jr z, jr_000_04f6

    ld b, $00

Jump_000_04ea:
    push af
    push af
    pop af
    pop af
    dec b
    jp nz, Jump_000_04ea

    xor a
    ld [$c307], a

jr_000_04f6:
    ld a, $01
    ld [$2150], a
    ldh a, [$b0]
    ldh [rSCX], a
    call Call_000_14c8
    ldh a, [$ad]
    ldh [rWY], a
    ldh a, [$ae]
    ldh [rWX], a
    ld a, [$c303]
    cp $03
    jr nz, jr_000_0519

    call Call_000_0409
    call Call_000_0b51
    jr jr_000_051f

jr_000_0519:
    call Call_000_0b51
    call Call_000_0409

jr_000_051f:
    ld a, $01
    ld [$c317], a
    call Call_000_056b
    ld a, $07
    ld [$2150], a
    call $4000
    ld a, $01
    ld [$2150], a
    ld a, [$c303]
    cp $02
    call z, Call_000_0cd9
    ld a, [$c303]
    dec a
    call z, Call_000_0cd9
    call Call_000_1480
    ldh a, [$a4]
    or a
    ret nz

    ld hl, $ffa3
    inc [hl]
    ret


Jump_000_054f:
    reti


Jump_000_0550:
    reti


Jump_000_0551:
    ei
    push af
    push bc
    push de
    push hl
    ld a, [$7fff]
    ld [$c30c], a
    call Call_000_0bbd
    ld a, [$c30c]
    ld [$2150], a
    pop hl
    pop de
    pop bc
    pop af
    reti


    reti


Call_000_056b:
    ld a, [$c302]
    or a
    ret z

    dec a
    ld [$c302], a
    ret nz

    ld [$c300], a
    ret


Call_000_0579:
Jump_000_0579:
    push hl
    push bc
    ld b, a
    ld a, [$c302]
    or a
    jr z, jr_000_058d

    ld a, [$c300]
    or a
    jr z, jr_000_058d

    cp b
    jr z, jr_000_058d

    jr c, jr_000_059d

jr_000_058d:
    ld a, b
    ld [$c300], a
    ld hl, $05a9
    rst $08
    ld a, l
    ld [$c004], a
    ld a, h
    ld [$c302], a

jr_000_059d:
    pop bc
    pop hl
    ret


Call_000_05a0:
    ld [$c301], a
    or $80
    ld [$c005], a
    ret


    add b
    nop
    add h
    inc e
    add l
    db $10
    add [hl]
    db $10
    add a
    inc b
    adc b
    jr nz, @-$7e

    nop
    add b
    nop
    ldh a, [$a9]
    and $08
    jr z, jr_000_05da

    ldh a, [$a5]
    or a
    jr nz, jr_000_05da

    ld a, $06
    call Call_000_0579
    ldh a, [$a4]
    xor $01
    ldh [$a4], a
    or a
    jr z, jr_000_05d7

    call Call_000_05de
    jr jr_000_05da

jr_000_05d7:
    call Call_000_05df

jr_000_05da:
    ldh a, [$a4]
    or a
    ret


Call_000_05de:
    ret


Call_000_05df:
    ret


Call_000_05e0:
    push af
    ld a, [$7fff]
    ld [$ffa2], a
    pop af
    ld c, a
    and $e0
    swap a
    ld b, a
    add a
    add b
    ld l, a
    ld h, $00
    ld de, $06bb
    add hl, de
    ld a, [hl+]
    ld [$2150], a
    inc hl
    ld a, [hl+]
    ld [$ffb1], a
    ld a, [hl+]
    ld [$ffb2], a
    ld a, [hl+]
    ld [$ffb3], a
    ld a, [hl+]
    ld [$ffb4], a
    ld a, c
    and $1f

Jump_000_060f:
    add a
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $ffb1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [hl+]
    ld [$c323], a
    inc hl
    and $80
    jr nz, jr_000_0673

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $ffb3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld de, $8000
    call Call_000_0710
    pop hl
    push hl
    ld a, [$c323]
    and $1f
    cp $01
    jr nz, jr_000_0650

    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld hl, $ffb3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    call Call_000_0710

jr_000_0650:
    pop hl
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ffb3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld de, $9800
    ldh a, [rLCDC]
    bit 3, a
    jr z, jr_000_0669

    ld de, $9c00

jr_000_0669:
    call Call_000_0710
    ld a, [$ffa2]
    ld [$2150], a
    ret


jr_000_0673:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $ffb3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld de, $8000
    call Call_000_06df
    pop hl
    push hl
    ld a, [$c323]
    and $1f
    cp $01
    jr nz, jr_000_069e

Call_000_0690:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld hl, $ffb1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    call Call_000_06df

jr_000_069e:
    pop hl
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ffb3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld de, $9800
    ldh a, [rLCDC]
    bit 3, a
    jr z, jr_000_06b7

    ld de, $9c00

jr_000_06b7:
    call Call_000_06df
    ret


    ld b, $00
    reti


    ld [hl], l
    nop
    ld b, b
    ld b, $00
    ld d, a
    ld a, [hl]
    add hl, bc
    db $76
    inc bc
    nop
    add [hl]
    ld h, [hl]
    ld [c], a
    ld e, [hl]
    inc b
    nop
    ld h, d
    ld e, l
    ld [hl], $54
    dec b
    nop
    sub d
    ld d, a
    xor a
    ld c, l
    ld bc, $4e00
    ld c, b
    nop
    ld b, b

Call_000_06df:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_000_06e3:
    ld a, [hl+]
    cp c
    jr nz, jr_000_06f5

    ld a, [hl+]
    or a
    ret z

    push bc
    ld b, a
    ld a, [hl+]

jr_000_06ed:
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_06ed

    pop bc
    jr jr_000_06e3

jr_000_06f5:
    cp b
    jr nz, jr_000_0705

    ld a, [hl+]
    push bc
    ld b, a
    ld a, [hl+]

jr_000_06fc:
    ld [de], a
    inc a
    inc de
    dec b
    jr nz, jr_000_06fc

    pop bc
    jr jr_000_06e3

jr_000_0705:
    ld [de], a
    inc de
    jr jr_000_06e3

jr_000_0709:
    ld a, [$ff91]
    cp d
    ret z

    jr jr_000_0745

Call_000_0710:
    push hl
    call Call_000_0808
    pop hl
    ld a, [hl+]
    add e
    ld [$ff90], a
    ld a, [hl+]
    adc d
    ld [$ff91], a
    ld a, e
    ld [$ff8e], a
    ld a, d
    ld [$ff8f], a
    ld c, l
    ld b, h
    ld a, [hl+]
    add c
    ld c, a
    ld a, [hl+]
    adc b
    ld b, a
    ld a, l
    ld [$ff92], a
    ld a, h
    ld [$ff93], a
    ld l, c
    ld h, b
    ld a, $01
    ld [$ff8a], a
    dec hl

Jump_000_073f:
jr_000_073f:
    ld a, [$ff90]
    cp e
    jr z, jr_000_0709

jr_000_0745:
    ld a, [$ff8a]
    rrca
    ld [$ff8a], a
    jr nc, jr_000_074f

    inc hl

jr_000_074f:
    and [hl]
    add $ff
    jr c, jr_000_078e

    ld b, $01

jr_000_0756:
    ld a, [$ff8a]
    rrca
    ld [$ff8a], a
    jr nc, jr_000_0760

    inc hl

jr_000_0760:
    and [hl]
    add $ff
    jr c, jr_000_0776

    ld a, [$ff8a]
    rrca
    ld [$ff8a], a
    jr nc, jr_000_076f

    inc hl

jr_000_076f:
    and [hl]
    add $ff
    rl b
    jr jr_000_0756

jr_000_0776:
    push hl
    ld hl, $ff92
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_077d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b

Jump_000_0781:
    jr nz, jr_000_077d

    ld a, l
    ld [$ff92], a

Jump_000_0787:
    ld a, h
    ld [$ff93], a
    pop hl
    jr jr_000_073f

jr_000_078e:
    ld a, e
    ld [$ff8c], a
    ld a, d
    ld [$ff8d], a
    push hl
    ld hl, $ff8e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld l, a
    ld a, d
    sbc h
    ld c, a
    jr z, jr_000_07a8

    ld l, a
    ld c, $08

jr_000_07a8:
    ld h, $c2
    ld a, [hl]
    add c
    ld c, a
    pop hl
    ld de, $0000

jr_000_07b1:
    ld a, [$ff8a]
    rrca
    ld [$ff8a], a
    jr nc, jr_000_07bb

    inc hl

jr_000_07bb:
    and [hl]
    add $ff
    rl e
    rl d
    dec c
    jr nz, jr_000_07b1

    ld a, [$ff8e]
    add e
    ld e, a
    ld a, [$ff8f]
    adc d
    ld d, a
    ld b, $01

jr_000_07d1:
    ld a, [$ff8a]
    rrca
    ld [$ff8a], a
    jr nc, jr_000_07db

    inc hl

jr_000_07db:
    and [hl]
    add $ff
    jr c, jr_000_07f1

    ld a, [$ff8a]
    rrca
    ld [$ff8a], a
    jr nc, jr_000_07ea

    inc hl

jr_000_07ea:
    and [hl]
    add $ff
    rl b
    jr jr_000_07d1

jr_000_07f1:
    inc b
    inc b
    push hl
    ld l, e
    ld h, d
    ld a, [$ff8c]
    ld e, a
    ld a, [$ff8d]
    ld d, a

jr_000_07fe:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_07fe

    pop hl
    jp Jump_000_073f


Call_000_0808:
    ld hl, $c200
    ld bc, $c201
    xor a
    ld [hl+], a
    inc a

jr_000_0811:
    ld [hl], a
    inc l
    ret z

    dec c
    jr nz, jr_000_0811

    inc a
    ld c, l
    jr jr_000_0811

Call_000_081b:
    ld [$c33f], a
    ld a, [hl+]
    ld [$c339], a
    ld a, [hl+]
    ld [$c33a], a
    ld a, [hl+]
    ld e, a
    ld [$c330], a
    ld a, [hl+]
    ld d, a
    ld [$c331], a
    ld a, [hl+]
    ld c, a
    ld [$c33b], a
    ld a, [hl+]
    ld b, a
    ld [$c33c], a
    ld a, [hl+]
    ld [$c332], a
    ld a, [hl+]
    ld [$c333], a
    ld a, l
    ld [$c334], a
    ld a, h
    ld [$c335], a
    push hl
    push de
    pop hl
    call Call_000_09c8
    call Call_000_0a07
    rst $10
    pop hl
    ld a, [$c339]
    ld b, a
    add a
    rst $18
    ld a, l
    ld [$c336], a
    ld a, h
    ld [$c337], a
    ld a, b
    and a
    jr z, jr_000_086f

Jump_000_0867:
jr_000_0867:
    push bc
    call Call_000_0876
    pop bc
    dec b
    jr nz, jr_000_0867

jr_000_086f:
    ld hl, $c332
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_000_0876:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and $fb
    ld d, a
    push hl
    ld hl, $c330
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    push hl
    pop de
    pop hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    push hl
    ld l, c
    ld h, a
    call Call_000_0892
    pop hl
    ret


Call_000_0892:
jr_000_0892:
    ld a, [hl+]
    and a
    ret z

    add $e0
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    inc de
    jr jr_000_0892

Call_000_08a0:
Jump_000_08a0:
    call Call_000_094c

Jump_000_08a3:
jr_000_08a3:
    rst $10
    ld a, [$c33f]
    ld b, a
    ld c, $a9
    bit 6, b
    jr z, jr_000_08bc

    ld a, [$c338]
    and $02
    jr z, jr_000_08bc

    ld a, [$c3b0]
    and a
    jr z, jr_000_08bc

    inc c

jr_000_08bc:
    ld a, [c]
    cp $40
    ld c, $ff
    jr z, jr_000_092c

    cp $80
    ld c, $01
    jr z, jr_000_092c

    bit 7, b
    jr nz, jr_000_0915

    cp $08
    ret z

    ld c, $01
    cp $01
    jr z, jr_000_0900

    cp $02
    jr z, jr_000_0900

    ld c, $ff
    cp $20
    jr z, jr_000_08e6

    ld c, $01
    cp $10
    jr nz, jr_000_08a3

jr_000_08e6:
    ld a, [$c339]
    and a
    jr z, jr_000_08a3

    ld hl, $c336
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33a]
    add a

Jump_000_08f6:
    add a
    rst $18
    inc hl
    ld a, [hl]

Call_000_08fa:
    and $04
    cp $04
    jr nz, jr_000_08a3

jr_000_0900:
    ld a, [$c339]
    and a
    jr z, jr_000_08a3

    ld hl, $c334
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33a]
    rst $08
    call Call_000_0973
    jr jr_000_08a3

jr_000_0915:
    and $0f
    jr z, jr_000_08a3

    ld a, [$c339]
    and a
    ret z

    ld hl, $c334
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33a]
    rst $08
    call Call_000_0973
    ret


jr_000_092c:
    ld hl, $c339
    ld a, [hl]
    and a
    jp z, Jump_000_08a3

    ld a, [$c33a]
    add c
    cp [hl]
    jr nz, jr_000_093c

    xor a

jr_000_093c:
    bit 7, a
    jr z, jr_000_0943

    ld a, [hl]
    sub $01

jr_000_0943:
    ld [$c33a], a
    call Call_000_094c
    jp Jump_000_08a3


Call_000_094c:
    ld a, [$c33a]
    call Call_000_0992
    ld hl, $c340
    ld a, [$c33d]
    ld [hl+], a
    ld a, [$c33e]
    ld [hl], a
    call Call_000_0ad5
    ld a, [$c339]
    and a
    jr z, jr_000_096f

    dec a
    jr z, jr_000_096f

    ld de, $c340
    call Call_000_0add

jr_000_096f:
    call Call_000_0b1b
    ret


Call_000_0973:
    jp hl


Call_000_0974:
    rst $10
    call Call_000_0ad5
    call Call_000_0b1b
    ld hl, $c330
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33b]
    ld c, a
    ld a, [$c33c]
    ld b, a
    call Call_000_0a01
    push de
    pop hl
    call Call_000_09c8
    ret


Call_000_0992:
    push af
    ld a, [$c330]
    ld e, a
    ld a, [$c331]
    ld d, a
    ld hl, $c336
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add a
    rst $08
    add hl, de
    ld a, h
    and $03
    ld h, a
    push hl
    ld a, l
    and $1f
    sla a
    sla a
    sla a
    sub $06
    ld [$c33d], a
    pop hl
    ld a, l
    srl h
    rra
    srl h
    rra
    and $f8
    add $0e
    ld [$c33e], a
    ret


Call_000_09c8:
    rst $10
    push bc
    push hl
    inc b
    inc b
    inc c
    inc c

jr_000_09cf:
    push bc
    push hl
    call Call_000_0a01

jr_000_09d4:
    push af
    call Call_000_00ee
    pop af
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr z, jr_000_09f1

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr z, jr_000_09f1

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr z, jr_000_09f1

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_09d4

jr_000_09f1:
    pop hl
    call Call_000_09fc
    pop bc
    dec b
    jr nz, jr_000_09cf

    pop hl
    pop bc
    ret


Call_000_09fc:
    ld bc, $0020
    add hl, bc
    ret


Call_000_0a01:
    ld e, l
    ld a, h
    xor $04
    ld d, a
    ret


Call_000_0a07:
    rst $10
    push bc
    push hl
    ld a, $01
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    inc a

jr_000_0a13:
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    dec c
    jr z, jr_000_0a38

    ld [hl+], a
    dec c
    jr z, jr_000_0a38

    ld [hl+], a
    dec c
    jr z, jr_000_0a38

    ld [hl+], a
    dec c
    jr z, jr_000_0a38

    ld [hl+], a
    dec c
    jr z, jr_000_0a38

    ld [hl+], a
    dec c
    jr z, jr_000_0a38

    ld [hl+], a
    dec c
    jr z, jr_000_0a38

    ld [hl+], a
    dec c
    jr nz, jr_000_0a13

jr_000_0a38:
    inc a
    push af
    call Call_000_00ee
    pop af
    ld [hl], a
    pop hl
    call Call_000_0aba
    pop bc

jr_000_0a44:
    push bc
    push hl
    ld a, $04
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    xor a

jr_000_0a4f:
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    dec c
    jr z, jr_000_0a74

    ld [hl+], a
    dec c
    jr z, jr_000_0a74

    ld [hl+], a
    dec c
    jr z, jr_000_0a74

    ld [hl+], a
    dec c
    jr z, jr_000_0a74

    ld [hl+], a
    dec c
    jr z, jr_000_0a74

    ld [hl+], a
    dec c
    jr z, jr_000_0a74

    ld [hl+], a
    dec c
    jr z, jr_000_0a74

    ld [hl+], a
    dec c
    jr nz, jr_000_0a4f

jr_000_0a74:
    ld a, $05
    push af
    call Call_000_00ee
    pop af
    ld [hl], a
    pop hl
    call Call_000_0aba
    pop bc
    dec b
    jr nz, jr_000_0a44

    ld a, $06
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    inc a

jr_000_0a8d:
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    dec c
    jr z, jr_000_0ab2

    ld [hl+], a
    dec c
    jr z, jr_000_0ab2

    ld [hl+], a
    dec c
    jr z, jr_000_0ab2

    ld [hl+], a
    dec c
    jr z, jr_000_0ab2

    ld [hl+], a
    dec c
    jr z, jr_000_0ab2

    ld [hl+], a
    dec c
    jr z, jr_000_0ab2

    ld [hl+], a
    dec c
    jr z, jr_000_0ab2

    ld [hl+], a
    dec c
    jr nz, jr_000_0a8d

jr_000_0ab2:
    inc a
    push af
    call Call_000_00ee
    pop af
    ld [hl], a
    ret


Call_000_0aba:
    ld bc, $0020
    add hl, bc
    ret


Call_000_0abf:
    ld hl, $c342
    push hl
    ld hl, $0b29
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


Call_000_0ad5:
    ld a, $28
    ldh [$b5], a
    ld hl, $c100
    ret


Call_000_0add:
    push hl
    push de
    pop hl
    ld a, [hl+]
    ldh [$8b], a
    ld a, [hl+]
    ldh [$8c], a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl

jr_000_0aee:
    ldh a, [$8b]
    ldh [$8a], a
    push bc

jr_000_0af3:
    ld a, [de]
    and a
    jr z, jr_000_0b06

    ldh a, [$8c]
    ld [hl+], a
    ldh a, [$8a]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$b5]
    dec a
    ldh [$b5], a

jr_000_0b06:
    inc de
    ldh a, [$8a]
    add $08
    ldh [$8a], a
    dec b
    jr nz, jr_000_0af3

    ldh a, [$8c]
    add $08
    ldh [$8c], a
    pop bc
    dec c
    jr nz, jr_000_0aee

    ret


Call_000_0b1b:
    ldh a, [$b5]
    and a
    ret z

    ld b, a
    xor a

jr_000_0b21:
    ld [hl+], a
    inc l
    inc l
    inc l
    dec b
    jr nz, jr_000_0b21

    ret


    dec hl
    dec bc
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    dec e
    ld e, $af
    ldh [rSC], a
    ldh [rSB], a
    ld [$c303], a
    ld [$c307], a
    ld [$c308], a
    ld [$c309], a
    ld [$c30d], a
    ld [$c30e], a
    ld a, $b3
    ld [$c30a], a
    call Call_000_0b63
    ret


Call_000_0b51:
    ld a, [$c304]
    or a
    jr z, jr_000_0ba2

    ld a, [$c303]
    rst $00
    ld l, c
    dec bc
    ld l, d
    dec bc
    ld [hl], l
    dec bc
    sbc e
    dec bc

Call_000_0b63:
    ld a, [$c30a]
    call Call_000_0ba2
    ret


    ldh a, [rIF]
    bit 3, a
    ret nz

    ld a, $d5
    call Call_000_0bb0
    ret


    ld a, [$c30b]
    call Call_000_0bb0
    ret


    cp $05
    jr nz, jr_000_0b8a

    dec a
    ld [$c30e], a
    ld a, $e7
    call Call_000_0bb0
    ret


jr_000_0b8a:
    ld hl, $ffb7
    dec a
    ld [$c30e], a
    add l
    ld l, a
    jr nc, jr_000_0b96

    inc h

jr_000_0b96:
    ld a, [hl]
    call Call_000_0bb0
    ret


    ld a, [$c30b]
    call Call_000_0ba2
    ret


Call_000_0ba2:
jr_000_0ba2:
    ld b, a
    di
    xor a
    ldh [rSC], a
    ld a, b
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ei
    ret


Call_000_0bb0:
    ld b, a
    ld a, $01
    ldh [rSC], a
    ld a, b
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ret


Call_000_0bbd:
    ld a, [$c304]
    or a
    jr z, jr_000_0bd1

    ldh a, [rSB]
    cp $d5
    jr z, jr_000_0bed

    cp $b3
    jr z, jr_000_0bff

    cp $ee
    jr z, jr_000_0c06

jr_000_0bd1:
    ld [$c305], a
    call Call_000_0c2c
    ld a, [$c303]
    cp $03
    call z, Call_000_04e1

jr_000_0bdf:
    ld a, $01
    ld [$c306], a
    ld a, [$c303]
    or a
    ret nz

    call Call_000_0b63
    ret


jr_000_0bed:
    ld a, [$c30d]
    or a
    jr nz, jr_000_0bdf

    ld a, $01
    ld [$c309], a
    ld a, $ee
    ld [$c30a], a
    jr jr_000_0bdf

jr_000_0bff:
    ld a, $01
    ld [$c308], a
    jr jr_000_0bdf

jr_000_0c06:
    ld a, $02
    ld [$c308], a
    jr jr_000_0bdf

    ld hl, $ffb7
    dec a
    ld [$c30e], a
    add l
    ld l, a
    jr nc, jr_000_0c19

    inc h

jr_000_0c19:
    ld a, [$c303]
    cp $02
    jr z, jr_000_0bdf

    ldh a, [rSB]
    ld [hl], a
    jr jr_000_0bdf

    ld a, $04
    ld [$c30e], a
    jr jr_000_0bdf

Call_000_0c2c:
    ld a, [$c304]
    or a
    jr nz, jr_000_0c36

    xor a
    ld [$c305], a

jr_000_0c36:
    ld a, [$c303]
    or a
    ret z

    cp $03
    jr z, jr_000_0c45

    ld a, [$c305]
    ld c, a
    jr jr_000_0c53

jr_000_0c45:
    ld a, [$c305]
    ld c, a
    ldh a, [$ab]
    xor c
    and c
    ldh [$a9], a
    ld a, c
    ldh [$ab], a
    ret


jr_000_0c53:
    ldh a, [$ac]
    xor c
    and c
    ldh [$aa], a
    ld a, c
    ldh [$ac], a
    ret


Call_000_0c5d:
    xor a
    ldh [$a3], a
    call Call_000_145e
    ret


Call_000_0c64:
    ld a, $01
    ld [$c30d], a
    ld b, $0a

jr_000_0c6b:
    xor a
    ldh [$8a], a
    ld a, $01
    ld [$c303], a
    rst $10
    ld a, [$c309]
    cp $01
    jr z, jr_000_0caf

    ld a, [$c308]
    cp $01
    jr z, jr_000_0c98

    ld a, $01
    ld [$c307], a
    ldh [$8a], a
    rst $10
    ld a, [$c308]
    cp $01
    jr nz, jr_000_0caf

    ld a, [$c309]
    cp $01
    jr z, jr_000_0caf

jr_000_0c98:
    ldh a, [$8a]
    ld [$c307], a
    rst $10
    ld a, [$c309]
    cp $01
    jr z, jr_000_0caf

    ld a, [$c308]
    cp $02
    jr z, jr_000_0cb8

    dec b
    jr nz, jr_000_0c6b

jr_000_0caf:
    call $0b31
    xor a
    ld [$c304], a
    jr jr_000_0cbf

jr_000_0cb8:
    ld a, $02
    ld [$c303], a
    or $01

jr_000_0cbf:
    push af
    xor a
    ld [$c30d], a
    pop af
    ret


Call_000_0cc6:
    xor a
    ld [$c306], a
    call Call_000_0cd9
    ld a, $03
    ld [$c303], a
    xor a
    call Call_000_0ba2
    or $01
    ret


Call_000_0cd9:
jr_000_0cd9:
    ld a, [$c306]
    or a
    jr z, jr_000_0cd9

    xor a
    ld [$c306], a
    ret


Call_000_0ce4:
    ld hl, $c3bb
    ld a, [$c3b0]
    and a
    ret z

    ld hl, $c3be
    ret


Call_000_0cf0:
Jump_000_0cf0:
    push de
    push hl
    call Call_000_0ce4
    ld b, $03
    ld a, $02
    rst $18
    xor a
    ld e, a
    ld a, c

jr_000_0cfd:
    adc [hl]
    daa
    ld [hl-], a
    ld a, e
    dec b
    jr nz, jr_000_0cfd

    pop hl
    pop de
    ret


Call_000_0d07:
    push de
    push hl
    call Call_000_0ce4
    ld b, $03

Call_000_0d0e:
    ld a, $02
    rst $18
    xor a
    ld e, a

jr_000_0d13:
    ld a, [hl]
    sbc c
    daa
    ld [hl-], a
    ld c, e
    dec b
    jr nz, jr_000_0d13

    pop hl
    pop de
    ret


Call_000_0d1e:
    ld a, [hl]
    swap a
    and $0f
    cp $05
    jr c, jr_000_0d50

    ld a, $0d
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    inc de
    push de
    inc hl
    inc hl
    xor a
    ld b, a
    sbc [hl]
    daa
    dec hl
    ld e, a
    ld a, b
    sbc [hl]
    daa
    dec hl
    ld d, a
    ld a, b
    sbc [hl]
    daa
    push de
    pop hl
    pop de
    call Call_000_0d6d
    ld a, h
    call Call_000_0d66
    ld a, l
    call Call_000_0d66
    ret


jr_000_0d50:
    ld a, $00
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    inc de
    ld a, [hl+]
    call Call_000_0d6d
    ld a, [hl+]
    call Call_000_0d66
    ld a, [hl+]
    call Call_000_0d66
    ret


Call_000_0d66:
    push af
    swap a
    call Call_000_0d6d

Call_000_0d6c:
    pop af

Call_000_0d6d:
    and $0f
    add $10
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    inc de
    ret


    sbc c
    dec c
    sbc a
    dec c
    and e
    dec c
    and [hl]
    dec c
    xor c
    dec c
    xor a
    dec c
    or l
    dec c
    cp e
    dec c
    pop bc
    dec c
    rst $00
    dec c
    call $d30d
    dec c
    reti


    dec c
    rst $18
    dec c
    push hl
    dec c
    db $eb
    dec c
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    dec e
    ld e, $02
    ld bc, $6c6b
    ld bc, $6d01
    ld bc, $6d01
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    add c
    add d
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    add e
    add h
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    ld [hl], d
    add l
    add d
    ld [bc], a
    ld [bc], a
    ld [hl], e
    ld [hl], h

Call_000_0dbf:
    add [hl]
    add a
    ld [bc], a
    ld [bc], a
    ld [hl], l
    ld [hl], d
    add l
    adc b
    ld [bc], a
    ld [bc], a
    db $76
    ld [hl], a
    adc c
    adc d
    ld [bc], a
    ld [bc], a
    ld a, b
    ld a, c
    adc e
    adc h
    ld [bc], a
    ld [bc], a
    ld a, d
    ld a, e
    adc l
    adc [hl]
    ld [bc], a
    ld [bc], a
    ld a, b
    ld a, h
    adc a
    adc h
    ld [bc], a
    ld [bc], a
    ld a, l
    ld a, e
    adc l
    sub b
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld a, h
    adc a
    sub c
    ld [bc], a
    ld [bc], a
    ld a, a
    add b
    sub d
    sub e
    push bc
    ld c, $a9
    bit 3, [hl]
    jr nz, jr_000_0e06

    ld a, [$c338]
    cp $02
    jr c, jr_000_0e06

    ld a, [$c3b0]
    or a
    jr z, jr_000_0e06

    inc c

jr_000_0e06:
    ld a, [c]
    pop bc
    ret


Call_000_0e09:
    rst $10
    push bc
    ld c, $a9
    bit 3, [hl]
    jr nz, jr_000_0e1f

    ld a, [$c338]
    cp $02
    jr c, jr_000_0e1f

    ld a, [$c3b0]
    or a
    jr z, jr_000_0e1f

    inc c

jr_000_0e1f:
    ld a, [c]
    pop bc
    ret


Call_000_0e22:
    push hl
    ld l, e
    ld h, $00
    ld e, d
    ld d, h
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


Call_000_0e36:
    push hl

Call_000_0e37:
    ld de, $0003
    add hl, de
    ld d, [hl]
    inc hl
    ld e, [hl]
    pop hl
    ret


Call_000_0e40:
    call Call_000_0e36
    call Call_000_0e22
    ret


Call_000_0e47:
    push bc
    push de
    push hl
    rst $10
    ld a, $20
    sub c
    ld e, a
    ld d, $00
    dec b
    dec b
    dec c
    dec c
    push af
    call Call_000_00ee
    pop af
    ld a, $01
    ld [hl+], a
    push bc
    ld a, $02

jr_000_0e60:
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    dec c
    jr z, jr_000_0e85

    ld [hl+], a
    dec c
    jr z, jr_000_0e85

    ld [hl+], a
    dec c
    jr z, jr_000_0e85

    ld [hl+], a
    dec c
    jr z, jr_000_0e85

    ld [hl+], a
    dec c
    jr z, jr_000_0e85

    ld [hl+], a
    dec c
    jr z, jr_000_0e85

    ld [hl+], a
    dec c
    jr z, jr_000_0e85

    ld [hl+], a
    dec c
    jr nz, jr_000_0e60

jr_000_0e85:
    push af
    call Call_000_00ee
    pop af
    ld a, $03
    ld [hl+], a
    pop bc
    add hl, de

jr_000_0e8f:
    push af
    call Call_000_00ee
    pop af
    ld a, $04
    ld [hl+], a
    push bc
    xor a

jr_000_0e99:
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    dec c
    jr z, jr_000_0ebe

    ld [hl+], a
    dec c
    jr z, jr_000_0ebe

    ld [hl+], a
    dec c
    jr z, jr_000_0ebe

    ld [hl+], a
    dec c
    jr z, jr_000_0ebe

    ld [hl+], a
    dec c
    jr z, jr_000_0ebe

    ld [hl+], a
    dec c
    jr z, jr_000_0ebe

    ld [hl+], a
    dec c
    jr z, jr_000_0ebe

    ld [hl+], a
    dec c
    jr nz, jr_000_0e99

jr_000_0ebe:
    push af
    call Call_000_00ee
    pop af
    ld a, $05
    ld [hl+], a
    pop bc
    add hl, de
    dec b
    jr nz, jr_000_0e8f

    push af
    call Call_000_00ee
    pop af
    ld a, $06
    ld [hl+], a
    ld a, $07

jr_000_0ed5:
    push af
    call Call_000_00ee
    pop af
    ld [hl+], a
    dec c
    jr z, jr_000_0efa

    ld [hl+], a
    dec c
    jr z, jr_000_0efa

    ld [hl+], a
    dec c
    jr z, jr_000_0efa

    ld [hl+], a
    dec c
    jr z, jr_000_0efa

    ld [hl+], a
    dec c
    jr z, jr_000_0efa

    ld [hl+], a
    dec c
    jr z, jr_000_0efa

    ld [hl+], a
    dec c
    jr z, jr_000_0efa

    ld [hl+], a
    dec c
    jr nz, jr_000_0ed5

jr_000_0efa:
    push af
    call Call_000_00ee
    pop af
    ld a, $08
    ld [hl+], a
    pop hl
    pop de
    pop bc
    ret


Call_000_0f06:
    push bc
    push de
    push hl
    rst $10

jr_000_0f0a:
    push bc
    push hl
    ld e, l
    ld a, h
    xor $04
    ld d, a

jr_000_0f11:
    push af
    call Call_000_00ee
    pop af
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr z, jr_000_0f2e

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr z, jr_000_0f2e

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr z, jr_000_0f2e

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0f11

jr_000_0f2e:
    pop hl
    ld bc, $0020
    add hl, bc
    pop bc
    dec b
    jr nz, jr_000_0f0a

    pop hl
    pop de
    pop bc
    ret


Call_000_0f3b:
    bit 0, [hl]
    ret z

    push bc
    push hl
    push de
    call Call_000_0e40
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, e
    ld h, d
    pop de
    call Call_000_0f06
    pop hl
    ld a, $04
    or [hl]
    ld [hl], a
    pop bc
    ret


Call_000_0f56:
    bit 0, [hl]
    ret z

    bit 2, [hl]
    ret z

    push bc
    push hl
    push de
    call Call_000_0e40
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, e
    ld h, d
    pop de
    ld a, h
    xor $04
    ld h, a
    call Call_000_0f06
    pop hl
    ld a, $06
    xor $ff
    and [hl]
    ld [hl], a
    pop bc
    ret


Call_000_0f7a:
    bit 0, [hl]
    ret z

    bit 1, [hl]
    ret nz

Call_000_0f80:
    push bc
    push hl
    push de
    call Call_000_0e40
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, e
    ld h, d
    pop de
    call Call_000_0e47
    pop hl
    ld a, $02
    or [hl]
    ld [hl], a
    pop bc
    ret


Call_000_0f98:
    ld a, [de]
    and $01
    ret nz

    push bc
    push de
    push hl
    ld c, $09

jr_000_0fa1:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0fa1

    pop hl
    pop de
    pop bc
    ld a, [de]
    or $01
    ld [de], a
    ret


Call_000_0faf:
    bit 0, [hl]
    ret z

    call Call_000_0f56
    ld a, $01
    xor $ff
    and [hl]
    ld [hl], a
    ret


Call_000_0fbc:
    push bc
    push de
    push hl
    push hl
    ld bc, $0007
    add hl, bc
    ld [hl], d
    inc hl
    ld [hl], e
    pop hl
    ld c, e
    ld b, d
    call Call_000_0e36
    ld a, e
    add c
    ld e, a
    ld a, d
    add b
    ld d, a
    call Call_000_0e22
    ld bc, $0005
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    pop bc
    ret


Call_000_0fe1:
    sub $20
    push af
    call Call_000_00ee
    pop af
    ld [de], a

Jump_000_0fe9:
    inc de
    add $20
    ret


Call_000_0fed:
    push de
    jr jr_000_0ff3

jr_000_0ff0:
    call Call_000_0fe1

jr_000_0ff3:
    ld a, [hl+]
    or a
    jr nz, jr_000_0ff0

    pop de
    ret


Call_000_0ff9:
    push bc
    push de
    push hl
    ld a, $30
    ld [de], a
    inc de
    ld [de], a
    inc de
    push de
    ld bc, $ff9c
    ld e, $00

jr_000_1008:
    inc e
    add hl, bc
    jr c, jr_000_1008

    ld a, h
    or l
    jr z, jr_000_1015

    ld bc, $0064
    add hl, bc
    dec e

jr_000_1015:
    ld a, e
    add $30
    pop de
    ld [de], a
    inc de
    push de
    ld bc, $fff6
    ld e, $00

jr_000_1021:
    inc e
    add hl, bc
    jr c, jr_000_1021

    ld a, h
    or l
    jr z, jr_000_102e

    ld bc, $000a
    add hl, bc
    dec e

jr_000_102e:
    ld a, e
    add $30
    pop de
    ld [de], a
    inc de
    ld a, l
    add $30
    ld [de], a
    inc de
    xor a
    ld [de], a
    pop hl
    pop de
    pop bc
    ret


Call_000_103f:
    push bc
    push hl
    ld c, $00
    jr jr_000_104e

jr_000_1045:
    inc c
    cp $30
    jr nz, jr_000_105a

    ld a, $20
    ld [hl], a
    inc hl

jr_000_104e:
    ld a, [hl]
    or a
    jr nz, jr_000_1045

    ld a, c
    or a
    jr z, jr_000_105a

    dec hl
    ld a, $30
    ld [hl], a

jr_000_105a:
    pop hl
    pop bc
    ret


Call_000_105d:
    push hl
    jr jr_000_1075

jr_000_1060:
    cp $20
    jr nz, jr_000_1069

    ld a, $8a
    ld [hl], a
    jr jr_000_1074

jr_000_1069:
    cp $30
    jr c, jr_000_1074

    cp $3a
    jr nc, jr_000_1074

    add $50
    ld [hl], a

jr_000_1074:
    inc hl

jr_000_1075:
    ld a, [hl]
    or a
    jr nz, jr_000_1060

    pop hl
    ret


Call_000_107b:
    push bc
    push de
    push hl
    cp $0a
    jr nz, jr_000_1091

    push hl
    ld de, $0007
    add hl, de
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc e
    pop hl
    call Call_000_0fbc
    jr jr_000_10c1

jr_000_1091:
    cp $0d
    jr nz, jr_000_10a9

    cp $0a
    jr nz, jr_000_1091

    push hl
    ld de, $0007
    add hl, de
    ld d, $01
    inc hl
    ld e, [hl]
    inc e
    pop hl
    call Call_000_0fbc
    jr jr_000_10c1

jr_000_10a9:
    ld de, $0005
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    inc [hl]
    sub $20
    push af
    call Call_000_00ee
    pop af
    ld [de], a
    inc de
    add $20
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e

jr_000_10c1:
    pop hl
    pop de
    pop bc
    ret


Call_000_10c5:
    bit 0, [hl]
    ret z

    bit 1, [hl]

Jump_000_10ca:
    ret z

    push bc
    push de
    push hl
    rst $10
    pop hl
    pop de
    pop bc
    push de
    ld e, c
    ld d, b
    call Call_000_0fbc
    pop de
    jr jr_000_10de

jr_000_10db:
    call Call_000_107b

jr_000_10de:
    ld a, [de]
    inc de
    or a
    jr nz, jr_000_10db

    ret


Call_000_10e4:
    push de
    push hl
    push af
    ld hl, $0d79
    ld a, $00
    add a
    push af
    add l
    ld l, a
    jr nc, jr_000_10f3

    inc h

jr_000_10f3:
    pop af
    pop af
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld de, $c3a8
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop hl
    pop de
    ret


Call_000_1110:
    push bc
    push de
    push hl
    call Call_000_0e36
    push de
    call Call_000_1186
    pop hl
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c3a8
    ld a, d
    dec a
    sla a
    sla a
    sla a
    inc a
    ld [hl+], a
    ld a, e
    add $02
    sla a
    sla a
    sla a
    sub $02
    ld [hl], a
    pop hl
    pop de
    pop bc
    ret


Call_000_113b:
    push bc
    push de
    push hl
    call Call_000_0ad5
    ld de, $c3a8
    call Call_000_0add
    call Call_000_0b1b
    pop hl
    pop de
    pop bc
    ret


Call_000_114e:
    push hl
    ld de, $000a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ret


Call_000_1158:
    push de
    push hl
    call Call_000_114e
    ld a, [de]
    pop hl
    pop de
    ret


Call_000_1161:
    push de
    push hl
    ld de, $000c
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    ret


Call_000_116b:
    push hl
    push af
    call Call_000_114e
    pop af
    inc de
    ld l, e
    ld h, d
    push bc
    add a
    ld b, a
    add a
    add a
    add b
    pop bc
    push af
    add l
    ld l, a
    jr nc, jr_000_1181

    inc h

jr_000_1181:
    pop af
    ld e, l
    ld d, h
    pop hl
    ret


Call_000_1186:
    push hl
    call Call_000_116b
    ld hl, $0004
    add hl, de
    ld d, [hl]
    inc hl
    ld e, [hl]
    pop hl
    ret


    push hl
    call Call_000_1186
    ld l, e
    ld h, $00
    ld e, d
    ld d, h
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


Call_000_11a6:
    push hl
    push af
    call Call_000_1186
    pop af
    ld c, e
    ld b, d
    call Call_000_116b
    ld hl, $0006
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ret


    push bc
    push hl
    call Call_000_116b
    ld l, e
    ld h, d
    ld de, $0002
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    pop bc
    ret


Call_000_11cb:
    push bc
    push hl
    call Call_000_116b
    ld l, e
    ld h, d
    ld de, $0000
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    pop bc
    ret


Call_000_11dc:
    push de
    push hl
    call Call_000_116b
    ld hl, $0008
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    ret


Call_000_11e9:
    push de
    push hl
    call Call_000_116b
    ld hl, $0009
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    ret


Call_000_11f6:
    push bc
    push de
    push af
    call Call_000_116b
    push hl
    ld hl, $0008
    add hl, de
    ld [hl], b
    ld hl, $0002
    add hl, de
    ld a, [hl+]

Jump_000_1207:
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_1225

    ld a, b
    push af
    add l
    ld l, a
    jr nc, jr_000_1213

    inc h

jr_000_1213:
    pop af
    push af
    add l
    ld l, a
    jr nc, jr_000_121a

    inc h

jr_000_121a:
    pop af
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0006
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b

jr_000_1225:
    pop hl
    pop af
    call Call_000_122d
    pop de
    pop bc
    ret


Call_000_122d:
    bit 0, [hl]
    ret z

    push bc
    push de
    push hl
    call Call_000_11a6
    call Call_000_10c5
    pop hl
    pop de
    pop bc
    ret


Call_000_123d:
    bit 0, [hl]
    ret z

    bit 1, [hl]
    ret nz

    push bc
    push de
    push hl
    call Call_000_0f7a
    call Call_000_1158
    ld b, a

jr_000_124d:
    push bc
    ld a, b
    dec a
    call Call_000_11dc
    ld c, b
    dec c
    ld b, a
    ld a, c
    call Call_000_11f6
    pop bc
    dec b
    jr nz, jr_000_124d

    pop hl
    pop de
    pop bc
    ret


Call_000_1262:
    push bc
    push de
    push hl
    ld bc, $0009
    add hl, bc
    push hl
    ld hl, $0009
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld b, $04

jr_000_1273:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1273

    pop hl
    pop de
    pop bc
    ret


Call_000_127d:
    push bc
    push de
    push hl
    ld hl, $000a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [hl], b
    dec hl
    ld [hl], c
    ld l, e
    ld h, d
    ld a, [hl]
    push bc
    add a
    ld b, a
    add a
    add a
    add b
    pop bc
    inc a
    ld d, a

jr_000_1296:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_000_1296

    pop hl
    pop de
    pop bc
    ret


Call_000_12a0:
    ld a, [de]
    and $01
    ret nz

    push bc
    push de
    push hl
    call Call_000_0f98
    call Call_000_1262
    call Call_000_127d
    ld l, e
    ld h, d
    ld hl, $0009
    add hl, de
    ld a, [de]
    or [hl]
    ld [de], a
    ld l, e
    ld h, d
    call Call_000_0f3b
    call Call_000_123d
    pop hl
    pop de
    pop bc
    ret


Call_000_12c5:
    bit 0, [hl]
    ret z

    bit 1, [hl]
    ret z

    push bc
    push de
    push hl
    call Call_000_10e4
    call Call_000_1161
    ld [$c347], a
    ld d, a
    call Call_000_1158
    sub d
    ld [$c348], a
    xor a
    ld [$c349], a

Jump_000_12e3:
jr_000_12e3:
    ld a, [$c348]
    cp $02
    jr c, jr_000_12f8

    ld a, [$c349]
    ld d, a
    ld a, [$c347]
    add d
    call Call_000_1110
    call Call_000_113b

jr_000_12f8:
    call Call_000_0e09
    bit 0, a
    jr z, jr_000_130f

    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    call Call_000_11e9
    or a
    jr nz, jr_000_1313

    jr jr_000_1375

jr_000_130f:
    bit 4, a
    jr z, jr_000_1363

jr_000_1313:
    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    call Call_000_11e9
    or a
    jr z, jr_000_12e3

    ld b, a
    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    call Call_000_11dc
    cp b
    jr c, jr_000_1332

    ld a, $ff

jr_000_1332:
    inc a
    ld b, a
    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    ld c, a
    call Call_000_11f6
    push de
    ld a, c
    call Call_000_11cb
    ld a, d
    or e
    jr z, jr_000_1360

    ld a, b
    push af
    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    pop af
    call Call_000_1357
    jr jr_000_1358

Call_000_1357:
    jp hl


jr_000_1358:
    push af
    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    pop af

jr_000_1360:
    pop de
    jr jr_000_12e3

jr_000_1363:
    bit 1, a
    jr z, jr_000_1381

    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    call Call_000_11e9
    or a
    jr nz, jr_000_1385

jr_000_1375:
    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    scf
    jp Jump_000_140f


jr_000_1381:
    bit 5, a
    jr z, jr_000_13d7

jr_000_1385:
    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    call Call_000_11e9
    or a
    jp z, Jump_000_12e3

    ld b, a
    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    call Call_000_11dc
    or a
    jr nz, jr_000_13a5

    ld a, b
    inc a

jr_000_13a5:
    dec a
    ld b, a
    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    ld c, a
    call Call_000_11f6
    push de
    ld a, c
    call Call_000_11cb
    ld a, d
    or e
    jr z, jr_000_13d3

    ld a, b
    push af
    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    pop af
    call Call_000_13ca
    jr jr_000_13cb

Call_000_13ca:
    jp hl


jr_000_13cb:
    push af
    ld a, e
    ld e, l
    ld l, a
    ld a, d
    ld d, h
    ld h, a
    pop af

jr_000_13d3:
    pop de
    jp Jump_000_12e3


jr_000_13d7:
    bit 6, a
    jr z, jr_000_13eb

    ld a, [$c349]
    or a
    jr nz, jr_000_13e4

    ld a, [$c348]

jr_000_13e4:
    dec a
    ld [$c349], a
    jp Jump_000_12e3


jr_000_13eb:
    bit 7, a
    jr z, jr_000_1401

    ld a, [$c348]
    ld b, a
    ld a, [$c349]
    inc a
    cp b
    jr c, jr_000_13fb

    xor a

jr_000_13fb:
    ld [$c349], a
    jp Jump_000_12e3


jr_000_1401:
    and $08
    jp z, Jump_000_12e3

    ld a, [$c349]
    ld c, a
    ld a, [$c347]
    add c
    or a

Jump_000_140f:
    push af
    call Call_000_0ad5
    call Call_000_0b1b
    pop af
    pop hl
    pop de
    pop bc
    ret


Call_000_141b:
    push bc
    push de
    ld de, $c34a
    ld bc, $c357
    call Call_000_12a0
    ld hl, $c34a
    call Call_000_12c5
    push af
    ld hl, $c34a
    call Call_000_0faf
    pop af
    pop de
    pop bc
    ret


Call_000_1437:
    push bc
    push de
    push hl
    ld de, $c34a
    ld bc, $c357
    call Call_000_12a0

jr_000_1443:
    ld hl, $c34a
    call Call_000_0e09
    and $0f
    jr z, jr_000_1443

    ld hl, $c34a
    call Call_000_0faf
    pop hl
    pop de
    pop bc
    ret


Call_000_1457:
    push af
    xor a
    ld [$ffba], a
    pop af
    ret


Call_000_145e:
    push af
    ld a, [$c338]
    and $02
    jr nz, jr_000_146c

    ld a, [$ffba]
    or a
    jr nz, jr_000_1479

jr_000_146c:
    ld a, $40
    ldh [$b7], a
    ld a, $2a
    ldh [$b8], a
    ld a, $a8
    ld [$ffb9], a

jr_000_1479:
    ld a, $01
    ld [$ffba], a
    pop af
    ret


Call_000_1480:
    push hl
    push de
    ld hl, $ffb7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ffb9]
    ld e, a
    ld a, [$ffba]
    ld d, a
    ld a, h
    sla a
    xor e
    rla
    rla
    rr l
    rr h
    rr e
    ld a, e
    ld [$ffb9], a
    ld a, d
    ld [$ffba], a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ld a, l
    pop de
    pop hl
    ret


Call_000_14ae:
    push hl
    push de
    ld e, a
    ld d, $00
    ld l, d
    ld h, d
    call Call_000_1480

jr_000_14b8:
    srl a
    jr nc, jr_000_14bd

    add hl, de

jr_000_14bd:
    sla e
    rl d
    or a
    jr nz, jr_000_14b8

    ld a, h
    pop de
    pop hl
    ret


Call_000_14c8:
    ld hl, $c000
    ld a, [hl]
    or a
    jr z, jr_000_14d1

    dec [hl]
    ret


jr_000_14d1:
    ld de, $c002
    ld a, $01
    ld [de], a
    ld hl, $c001
    ldh a, [rBGP]
    cp [hl]
    ret z

    xor a
    ld [de], a
    ld a, $01
    ld [$c000], a
    ld a, [$c003]
    inc a
    and $03
    ld [$c003], a
    add a
    add $13
    ld l, a
    adc $15
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c001]
    and h
    ld d, a
    ldh a, [rBGP]
    ld c, a
    and h
    cp d
    ret z

    jr c, jr_000_150a

    ld a, l
    cpl
    inc a
    ld l, a

jr_000_150a:
    ld a, c
    add l
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ret


    ld bc, $0403
    inc c
    db $10
    jr nc, jr_000_155a

    ret nz

Call_000_151b:
    ld a, $e4
    ld [$c001], a
    ret


Call_000_1521:
    xor a
    ld [$c001], a

Call_000_1525:
jr_000_1525:
    rst $10
    ld a, [$c002]
    or a
    jr z, jr_000_1525

    ret


Call_000_152d:
jr_000_152d:
    rst $10
    ldh a, [$a9]
    and $0f
    jr z, jr_000_152d

    ret


Call_000_1535:
Jump_000_1535:
    xor a

jr_000_1536:
    ld [hl+], a
    dec bc
    inc c
    dec c
    jr nz, jr_000_1536

    inc b
    dec b
    jr nz, jr_000_1536

    ret


Call_000_1541:
    ld hl, $c100
    ld bc, $00a0
    jp Jump_000_1535


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_000_155a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_158e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_16f3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_17d6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_17f4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_181c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_192f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_1a07:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1b23:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1c30:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1c42:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1c47:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1c4c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_1c6c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1c73:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_1cec:
    rst $38
    rst $38
    rst $38

Jump_000_1cef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1d30:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1d61:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_1e06:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_1ee3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2004:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_201d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_2039:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2060:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_20b9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_22ae:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_22ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_2304:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2333:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_2341:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_2360:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_2566:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_26e1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2730:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2a2b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2a3d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2d0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2d75:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_2e6b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_2f07:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3023:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3038:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3079:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_30b0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_31f0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_327b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3333:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3458:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_35b7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_36fb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3868:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_38fc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_39f1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3a83:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3bb1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3be1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3cf4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3d0c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3dde:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3e47:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ec0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3fc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3fe0:
    rst $38
    rst $38
    rst $38

Jump_000_3fe3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
