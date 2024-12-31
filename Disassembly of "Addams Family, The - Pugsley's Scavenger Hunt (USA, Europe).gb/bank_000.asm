; Disassembly of "Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_0158


Jump_000_0003:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0007:
    rst $38

RST_08::
    jp Jump_000_0158


Jump_000_000b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    ret


    rst $38

Call_000_0012:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_001f:
    rst $38

RST_20::
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    ret


Call_000_0029:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    ret


    rst $38
    rst $38

Call_000_0033:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    ret


    rst $38

Call_000_003a:
    rst $38
    rst $38

Jump_000_003c:
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jp Jump_000_0086


    rst $38
    rst $38
    rst $38

Jump_000_0046:
    rst $38

Call_000_0047:
    rst $38

LCDCInterrupt::
    jp Jump_000_0061


Call_000_004b:
    rst $38

Jump_000_004c:
    rst $38

Call_000_004d:
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    jp Jump_000_0086


    rst $38

Jump_000_005c:
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti


Jump_000_0061:
    di
    push af
    ld a, [$c142]
    and a
    db $28

    dec d
    ldh a, [rLYC]

jr_000_006b:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_006b

    ld a, $97
    ldh [rLCDC], a
    xor a
    ldh [rLYC], a
    ldh [rSCY], a
    ldh [rSCX], a
    pop af
    reti


jr_000_007e:
    ldh a, [rSTAT]

Call_000_0080:
    and $02
    jr nz, jr_000_007e

    pop af
    reti


Jump_000_0086:
    di
    push af
    push bc
    push de
    push hl
    ld a, [$c142]
    and a
    jr z, jr_000_009c

    ld a, $9f
    ldh [rLCDC], a
    ld a, $87
    ldh [rLYC], a
    call Call_000_045e

jr_000_009c:
    ld a, [$c162]
    inc a
    ld [$c162], a
    ld a, [$c20e]
    and a
    call nz, Call_000_00bd
    xor a

Call_000_00ab:
    ld [$c145], a
    ld a, $e0
    ldh [rIF], a
    pop hl

Jump_000_00b3:
    pop de
    pop bc

jr_000_00b5:
    ldh a, [rSTAT]
    and $02

Call_000_00b9:
    jr nz, jr_000_00b5

    pop af
    reti


Call_000_00bd:
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $40e5

Call_000_00cc:
    jp Jump_000_264a


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00d5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00dd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00ed:
    rst $38
    rst $38

Jump_000_00ef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00f9:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_00fd:
    rst $38
    rst $38
    rst $38

Boot::
    nop
    jp Jump_000_0158


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "ADDAMS FAMILY 2", $00

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
    db $67

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $9e

HeaderGlobalChecksum::
    db $3d, $b7

    jr nz, jr_000_0152

Jump_000_0152:
jr_000_0152:
    nop
    jr nz, @+$0c

    ld e, $16
    ld a, [de]

Jump_000_0158:
    di

Call_000_0159:
    push af

jr_000_015a:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_015a

    pop af
    xor a
    ldh [rBGP], a
    call Call_000_25c6
    ld hl, $c000
    ld d, h
    ld e, l
    inc de
    ld bc, $2000
    ld [hl], $00
    call Call_000_0913
    call Call_000_3d79
    xor a
    ldh [rIF], a
    ldh [rIE], a

jr_000_017f:
    ldh a, [rLY]
    cp $92
    jr c, jr_000_017f

    ld a, $01
    ld [$2100], a
    ld [$c144], a
    ld sp, $fffe
    call Call_000_08a7

Call_000_0193:
    ld a, $03
    ldh [rIE], a
    ld a, $48
    ldh [rLYC], a
    ld a, $87
    ldh [rLCDC], a
    ld [$c148], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $07
    ldh [rTAC], a
    ld a, $07

Jump_000_01ac:
    ld [$c144], a
    ld [$2100], a
    call Call_000_0905
    call Call_000_0a3a
    call Call_000_0a85
    ld hl, $40a0
    ld de, $c000
    ld bc, $c080
    ld a, $80

jr_000_01c6:
    push af
    ld a, [hl+]
    srl a
    ld [de], a

Jump_000_01cb:
    inc e
    cpl
    ld [bc], a
    inc c
    pop af
    dec a
    jr nz, jr_000_01c6

Jump_000_01d3:
    ld a, [$c144]
    push af
    xor a
    ld [$c141], a
    ld [$c21b], a
    ld [$c1ca], a
    ld hl, $c253
    ld bc, $0223
    ld [hl], $80
    ld d, h
    ld e, l
    inc de
    call Call_000_0913
    ld hl, $df00
    ld bc, $00e5
    ld [hl], $80
    ld d, h
    ld e, l
    inc de
    call Call_000_0913
    pop af
    ld [$c144], a

Call_000_0201:
Jump_000_0201:
    ld [$2100], a
    ld a, $ff
    ld [$c20e], a

Call_000_0209:
    ld a, $8d
    ld [$c23c], a
    ld a, $07
    ld [$c23d], a
    call Call_000_08f8
    ld a, $05
    ld [$c19a], a
    call $7807
    call Call_000_0905
    ld hl, $c144
    ld a, [hl]
    push af
    ld a, $02
    ld [hl], a
    ld [$2100], a
    call $7fe5
    pop af
    ld [hl], a
    ld [$2100], a

Call_000_0234:
    call Call_000_3d92

Call_000_0237:
Jump_000_0237:
    xor a
    ld hl, $c1b4
    ld [hl+], a
    ld [hl], a
    ld hl, $c198
    ld [hl+], a
    ld [hl+], a
    ld [$c197], a
    ld [$c19b], a
    ld a, $ff
    ld [$c20e], a
    ld a, $0c
    ld [$c17f], a
    ld a, $09

Jump_000_0254:
    ld [$c17d], a
    ld a, [$c1a5]
    ld [$c196], a
    xor a
    ld [$c180], a
    ld [$c555], a
    ld [$c21a], a
    ld [$c1b6], a
    ld hl, $c19c
    ld [hl+], a
    ld [hl], a
    call Call_000_0e61
    call Call_000_1853
    call Call_000_0f3a
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $54f5
    pop af
    ld [$c144], a
    ld [$2100], a
    ld a, $ff
    ld [$c195], a
    ld hl, $c56e
    ld a, $02
    ld [hl+], a
    ld a, $fe
    ld [hl+], a

Jump_000_029c:
    ld a, [$c180]
    and a
    jr nz, jr_000_02ae

    ld a, [$c21b]

Call_000_02a5:
    and a
    jr z, jr_000_02ae

    call $7d46
    call Call_000_3d79

jr_000_02ae:
    ld a, [$c17c]
    cp $1e
    jr nz, jr_000_02e1

    ld a, [$c141]
    and $02
    jr z, jr_000_02e1

    ld a, [$c180]
    and a
    jr nz, jr_000_02e1

    push af

jr_000_02c3:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_02c3

    pop af
    xor a
    ldh [rBGP], a
    call Call_000_3fee
    call Call_000_197d
    call Call_000_25f5
    call Call_000_3fde
    call Call_000_093e
    jp Jump_000_01d3


jr_000_02e1:
    xor a
    ld hl, $c162
    ld [hl+], a
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc hl
    inc [hl]
    inc [hl]
    inc hl
    ld a, [hl]
    add $03
    ld [hl], a
    call Call_000_08bd
    call Call_000_0a3a
    call Call_000_157f
    call Call_000_25cb
    bit 3, a
    jr nz, jr_000_030c

Jump_000_0301:
    ld a, b
    and $08
    jr z, jr_000_030c

    call Call_000_3c55
    call Call_000_08f8

jr_000_030c:
    call Call_000_3dce
    call $79ee
    call Call_000_1730
    call Call_000_15e9
    call Call_000_35f2

Jump_000_031b:
    call Call_000_20ee
    call Call_000_1ee6
    call Call_000_0d50

jr_000_0324:
    ld a, [$c162]
    cp $02
    jr c, jr_000_0324

    ld hl, $c1b6
    ld a, [hl]
    and a
    jr z, jr_000_0349

    dec [hl]

Call_000_0333:
    jr nz, jr_000_0339

    ld a, $1b
    jr jr_000_0347

jr_000_0339:
    and $03
    jr nz, jr_000_0349

    ldh a, [rBGP]
    cp $3f
    ld a, $03
    jr z, jr_000_0347

    ld a, $3f

jr_000_0347:
    ldh [rBGP], a

jr_000_0349:
    ld a, $78
    ld [$c1b0], a
    call Call_000_0c55
    call Call_000_0ca1
    call $798b
    call $7674
    push af

jr_000_035b:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_035b

    pop af
    call $ff80
    call Call_000_045e
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $5536
    pop af
    ld [$c144], a
    ld [$2100], a
    call Call_000_1ee6
    call Call_000_08bd
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $551a
    call Call_000_3ebb
    pop af
    ld [$c144], a
    ld [$2100], a
    call Call_000_0f91
    call $79b1
    ld a, [$c196]
    and a
    jp nz, Jump_000_029c

jr_000_03ac:
    xor a
    ld [$c162], a
    ld a, $78
    ld [$c1b0], a
    ld a, [$c144]

Jump_000_03b8:
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $5536
    pop af
    ld [$c144], a
    ld [$2100], a
    push af

Call_000_03cc:
jr_000_03cc:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_03cc

    pop af
    call Call_000_0c55
    call Call_000_0ca1
    push af

jr_000_03dc:
    ldh a, [rSTAT]
    and $03
    cp $01

Call_000_03e2:
    jr nz, jr_000_03dc

    pop af
    call $ff80
    xor a
    ld b, $10

jr_000_03eb:
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_03eb

Call_000_03f0:
jr_000_03f0:
    ld a, [$c162]
    cp $02
    jr c, jr_000_03f0

    ld a, [$c562]
    and a
    jr z, jr_000_03ac

    ld a, [$c154]
    ld l, a
    ld a, [$c155]

Jump_000_0404:
    ld h, a
    ld bc, $00d8
    ld a, l
    sub c
    ld l, a
    ld a, h

Jump_000_040c:
    sbc b
    ld h, a
    jr c, jr_000_03ac

    ld hl, $c56d
    dec [hl]
    ld b, $14
    call Call_000_0937
    call Call_000_3fde
    call Call_000_197d
    ld a, [$c19a]
    cp $01
    jp z, $7902

    dec a
    ld [$c19a], a
    ld a, [$c17c]
    cp $1d
    jr c, jr_000_0444

    cp $23
    jr nc, jr_000_0444

    push af
    call Call_000_25bd
    call Call_000_3c6a
    xor a
    ldh [rBGP], a
    pop af
    jp Jump_000_0254


jr_000_0444:
    call Call_000_2568
    jp Jump_000_029c


Call_000_044a:
    ld a, $ff
    ld [$c20e], a
    call Call_000_19a2
    call Call_000_0470
    call Call_000_06bd
    call Call_000_04c7
    jp Jump_000_05a3


Call_000_045e:
    ld a, [$c1d8]
    ldh [rSCX], a
    ld a, [$c1d9]
    ldh [rSCY], a
    ret


Call_000_0469:
    ld c, $80

Call_000_046b:
Jump_000_046b:
    ld hl, $9800
    jr jr_000_0475

Call_000_0470:
Jump_000_0470:
    ld hl, $9c00
    ld c, $80

jr_000_0475:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0475

    ld [hl], c
    ld d, h
    ld e, l
    inc de
    ld bc, $0400
    jp Jump_000_091c


Call_000_0485:
    ld a, [$c144]
    push af
    call Call_000_0470
    call Call_000_06bd
    call Call_000_0585
    call Call_000_19a2
    ld a, $8c
    ld [$c1ea], a
    xor a
    ld [$c1e3], a
    ld hl, $60bc
    call $4171
    call Call_000_04c7
    jp Jump_000_264a


Call_000_04aa:
    call Call_000_19a2
    ld hl, $60f7
    call $4171
    ld a, [$c144]
    push af
    call Call_000_0470
    call Call_000_06bd
    pop af
    ld [$c144], a
    ld [$2100], a
    jp Jump_000_04c7


Call_000_04c7:
Jump_000_04c7:
    ld a, [$c144]
    push af
    ld de, $80a0
    ld bc, $0040
    ld hl, $45c0
    ld a, $03
    ld [$c144], a
    ld [$2100], a
    call Call_000_091c
    jp Jump_000_264a


Call_000_04e2:
Jump_000_04e2:
    ld a, [$c1c1]
    and a
    ret z

    bit 7, a
    ret nz

    ld d, a
    srl a
    ld b, a
    ld a, [$c1b0]
    ld l, a
    ld h, $de
    ld e, $0c
    ld c, $20
    ld a, d
    cp $01
    jr z, jr_000_050c

jr_000_04fd:
    call Call_000_0516
    ld a, $10
    add c

Jump_000_0503:
    ld c, a
    dec b
    jr nz, jr_000_04fd

    ld a, d
    and $01
    jr z, jr_000_0511

jr_000_050c:
    dec e
    dec e

Call_000_050e:
    call Call_000_0516

jr_000_0511:
    ld a, l
    ld [$c1b0], a
    ret


Call_000_0516:
    ld [hl], c
    inc l
    ld [hl], $98
    inc l
    ld [hl], e
    inc l
    ld [hl], $00
    inc l
    ld [hl], c
    inc l
    ld [hl], $a0
    inc l
    ld [hl], e
    inc l
    ld [hl], $20
    inc l
    ret


Call_000_052b:
    ld a, [$c144]
    push af
    call Call_000_1998
    call Call_000_0470
    call Call_000_06bd
    ld hl, $5fac
    call $4171
    call Call_000_04c7
    jp Jump_000_264a


    ld hl, $7e4c
    jr jr_000_054c

    ld hl, $7ecc

jr_000_054c:
    ld a, [$c144]
    push af
    ld a, $01
    ld [$c144], a
    ld [$2100], a
    ld c, $10
    ld b, $08
    ld de, $9c40
    call Call_000_24e7
    jp Jump_000_264a


jr_000_0565:
    ld c, $01
    jr jr_000_056b

jr_000_0569:
    ld c, $02

jr_000_056b:
    ld h, d
    ld l, e
    ld de, $0018

jr_000_0570:
    ld b, $08

jr_000_0572:
    ldh a, [rSTAT]

Call_000_0574:
    and $02
    jr nz, jr_000_0572

    ld [hl], $80
    inc hl
    dec b
    jr nz, jr_000_0572

    add hl, de
    dec c
    jr nz, jr_000_0570

    ld d, h
    ld e, l
    ret


Call_000_0585:
Jump_000_0585:
    ld hl, $483e
    jr jr_000_05d4

Jump_000_058a:
    ld hl, $487e
    jr jr_000_05d4

Jump_000_058f:
    ld hl, $48be
    jr jr_000_05d4

    ld hl, $4a0b

jr_000_0597:
    ld b, $0b
    call Call_000_05de
    jr jr_000_0569

    ld hl, $4a63
    jr jr_000_0597

Jump_000_05a3:
    ld hl, $4abb
    ld b, $0a
    call Call_000_05de
    jr jr_000_0565

    ld hl, $4b0b
    ld b, $0c
    jr jr_000_05de

    call Call_000_05f5
    ld hl, $4906
    jr jr_000_05d8

    call Call_000_05f5
    ld hl, $493e
    jr jr_000_05d8

    call Call_000_060d
    ld hl, $4976
    jr jr_000_05d8

    call Call_000_05f5
    ld hl, $49ae
    jr jr_000_05d8

jr_000_05d4:
    ld b, $08
    jr jr_000_05de

jr_000_05d8:
    ld a, l
    ld [$c114], a
    ld b, $07

Call_000_05de:
jr_000_05de:
    ld a, [$c144]
    push af
    ld a, $04
    ld [$c144], a
    ld [$2100], a
    ld de, $9e2a
    ld c, $08
    call Call_000_24e7
    jp Jump_000_264a


Call_000_05f5:
    ld hl, $9dd0
    ld de, $001d
    ld b, $07

jr_000_05fd:
    ldh a, [rSTAT]

Jump_000_05ff:
    and $02
    jr nz, jr_000_05fd

    ld a, $80
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, de
    dec b
    jr nz, jr_000_05fd

    ret


Call_000_060d:
    ld hl, $49ee
    ld a, [$c144]
    push af
    ld a, $04
    ld [$c144], a
    ld [$2100], a
    ld de, $9dd0
    ld b, $07
    ld c, $03
    call Call_000_24e7
    jp Jump_000_264a


Call_000_0629:
    call Call_000_19a2
    call Call_000_0470
    call Call_000_06bd
    call Call_000_04c7
    ld a, [$c144]
    push af
    ld a, $06
    ld [$c144], a

Call_000_063e:
    ld [$2100], a
    ld hl, $7f8a
    ld de, $87a0
    ld bc, $0020
    call Call_000_091c
    jp Jump_000_264a


Call_000_0650:
Jump_000_0650:
    ld hl, $7fab
    jr jr_000_0658

Call_000_0655:
    ld hl, $7f6b

jr_000_0658:
    ld de, $9c20
    ld b, $08
    ld c, b
    ld a, [$c144]
    push af
    ld a, $05
    ld [$c144], a
    ld [$2100], a
    call Call_000_24e7
    jp Jump_000_264a


Call_000_0670:
    ld a, [$c17c]
    sub $1d
    and a
    jr nz, jr_000_067a

    inc a
    ret


jr_000_067a:
    ld b, a
    ld a, $01

jr_000_067d:
    add a
    dec b
    jr nz, jr_000_067d

    ret


Call_000_0682:
    call Call_000_0670
    ld c, a
    ld a, [$c141]
    and c
    ret z

    ld a, [$c17c]
    cp $21
    jr z, jr_000_069a

    cp $1f
    jr z, jr_000_069a

    ld a, $06
    jr jr_000_069b

jr_000_069a:
    xor a

jr_000_069b:
    ld [$c1cb], a
    jp Jump_000_0d16


Call_000_06a1:
    call Call_000_19a2
    call Call_000_0470
    call Call_000_06bd
    ld a, [$c141]
    and $04
    ret nz

    xor a
    ld [$c1f6], a
    ld hl, $5e16
    call $4171
    jp Jump_000_04c7


Call_000_06bd:
    ld hl, $06dd
    ld bc, $0010
    ld de, $8ff0
    call Call_000_091c
    ld hl, $9a20
    ld a, $ff
    ld b, $20
    ld e, a

jr_000_06d1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_06d1

    ld a, e
    ld [hl+], a
    dec b
    jr nz, jr_000_06d1

    ret


    nop
    nop
    nop
    nop
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d

Jump_000_06e9:
    nop
    nop

Call_000_06eb:
    nop
    nop

Call_000_06ed:
Jump_000_06ed:
    ld [$c1de], a
    ld a, [$c1d1]
    ld c, a
    ld a, [$c1d2]

Call_000_06f7:
    ld b, a

Jump_000_06f8:
    ld e, $05

jr_000_06fa:
    ld a, [bc]
    and $80
    jr z, jr_000_0705

    inc bc

Jump_000_0700:
    dec e
    jr nz, jr_000_06fa

    and a
    ret


jr_000_0705:
    ld a, $05
    sub e
    ld e, a
    ld a, [$c1cc]
    add e
    ld [$c140], a
    push bc
    call Call_000_2493
    ld d, h
    ld e, l
    jp nz, Jump_000_0788

    push hl
    push bc
    ld a, [$c1de]
    call Call_000_24ae
    ld a, l
    ld [$c1b8], a
    ld a, h
    ld [$c1b9], a
    inc hl
    ld a, [hl]
    call Call_000_2419
    ld c, [hl]
    call Call_000_23ea
    pop bc

Call_000_0733:
    pop hl
    jp c, Jump_000_0788

    ld [$c476], a
    ld a, $0f
    sub b
    ld [$c1d7], a
    ld c, [hl]
    ld a, [$c1b8]
    ld l, a
    ld a, [$c1b9]
    ld h, a
    ld a, [hl+]
    or $a0
    push de
    ld [de], a
    inc de
    inc de
    ld a, [$c140]
    ld [de], a
    inc de
    ld a, [hl+]
    ld c, a
    ld [de], a
    inc de
    push hl
    call Call_000_242d
    ld a, [$c1dc]
    ld [de], a
    inc de
    ld a, [$c1dd]
    ld [de], a
    inc de
    ld a, [$c1da]
    ld [de], a
    inc de
    ld a, [$c1db]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ld bc, $0006
    call Call_000_0913
    pop de
    pop bc
    ld a, [$c1d7]
    or $80
    ld [bc], a
    scf
    ret


Jump_000_0788:
    pop bc
    and a
    ret


    push de
    call $4184

Call_000_078f:
    call Call_000_04e2
    pop de
    ld hl, $0005
    add hl, de
    ld d, h
    ld e, l
    ld a, [$c10d]
    ld l, a
    ld a, [$c10e]
    ld h, a
    ld bc, $0088

Call_000_07a4:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    push bc
    ld d, h
    ld e, l
    ld a, [$c10f]
    ld l, a
    ld a, [$c110]
    ld h, a
    ld bc, $0018
    add hl, bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl

Call_000_07c9:
    pop de
    ld a, [$c111]
    and a
    jp z, Jump_000_081a

    xor a
    ld [$c111], a
    ld a, [$c10f]
    ld l, a
    ld a, [$c110]
    ld h, a
    ld bc, $0008
    add hl, bc
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    push af
    ld a, [$c10d]
    ld l, a
    ld a, [$c10e]
    ld h, a
    pop af
    ld bc, $0080
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c1dc], a
    ld a, h

Jump_000_0801:
    ld [$c1dd], a
    ld a, $13
    call Call_000_06ed
    ld a, $14
    call Call_000_06ed
    ld a, $15
    call Call_000_06ed
    ld a, $08
    ld [$c1f6], a
    jr jr_000_0840

Jump_000_081a:
    call $7f73
    ld a, [$c1f6]
    dec a
    ld [$c1f6], a
    ret nz

    ld a, $04
    ld [$c1f6], a
    ld a, [$c1f5]
    cpl
    and $01

Call_000_0830:
    ld [$c1f5], a
    and a
    jr nz, jr_000_083b

    ld hl, $7d84
    jr jr_000_0843

jr_000_083b:
    ld hl, $7dc4
    jr jr_000_0843

jr_000_0840:
    ld hl, $7e04

jr_000_0843:
    ld a, [$c144]
    push af
    ld a, $01
    ld [$c144], a
    ld [$2100], a
    ld de, $9d40
    ld b, $08
    ld c, $08
    call Call_000_24e7
    jp Jump_000_264a


    call Call_000_0861
    jr jr_000_0881

Call_000_0861:
    call $6d0f

jr_000_0864:
    ld hl, $00b0
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a

Jump_000_086d:
    jp c, Jump_000_2a3a

    ret


    call Call_000_0876
    jr jr_000_0881

Call_000_0876:
    call $7f36
    call $6d0f
    jr jr_000_0864

    call Call_000_0888

jr_000_0881:
    ld b, $24
    ld c, $28
    jp Jump_000_2e47


Call_000_0888:
    call $7f3f
    call $6d0f
    jr jr_000_0864

    call Call_000_0888

jr_000_0893:
    ld b, $41
    ld c, $45
    jp Jump_000_2e47


    call $7f5d
    call Call_000_0861
    jr jr_000_0893

    call Call_000_0876
    jr jr_000_0893

Call_000_08a7:
    ld hl, $08b3
    ld de, $ff80
    ld bc, $000a
    jp Jump_000_0913


    ld a, $de
    ldh [rDMA], a
    ld a, $28

jr_000_08b9:
    dec a
    jr nz, jr_000_08b9

    ret


Call_000_08bd:
    ldh a, [$9a]
    ldh [$9c], a
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld e, a

Jump_000_08cf:
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
    or e
    ldh [$9a], a
    ld a, $30
    ldh [rP1], a
    ld hl, $ff9a
    ldh a, [$9c]
    xor [hl]
    and [hl]
    ldh [$9c], a
    ldh a, [$9a]
    ld [$c147], a
    ret


Call_000_08f8:
Jump_000_08f8:
    push af

jr_000_08f9:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_08f9

    pop af
    jp Jump_000_3ff4


Call_000_0905:
    push af

jr_000_0906:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_0906

    pop af
    xor a
    ldh [rBGP], a
    ret


Call_000_0913:
Jump_000_0913:
jr_000_0913:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0913

    ret


Call_000_091c:
Jump_000_091c:
jr_000_091c:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_091c

    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_091c

    ret


Call_000_092b:
    ld a, $ff
    ld [$c145], a

jr_000_0930:
    ld a, [$c145]
    or a
    jr nz, jr_000_0930

    ret


Call_000_0937:
Jump_000_0937:
jr_000_0937:
    call Call_000_092b
    dec b
    jr nz, jr_000_0937

    ret


Call_000_093e:
    ld b, $04

jr_000_0940:
    push bc
    ld b, $06
    call Call_000_0937
    call Call_000_094e
    pop bc
    dec b
    jr nz, jr_000_0940

    ret


Call_000_094e:
    ldh a, [rBGP]
    ld b, a
    and $03
    or a
    jr z, jr_000_095e

    cp $01
    jr z, jr_000_0962

    ld e, $03
    jr jr_000_0964

jr_000_095e:
    ld e, $01
    jr jr_000_0964

jr_000_0962:
    ld e, $02

jr_000_0964:
    ld a, b
    and $0c
    or a
    jr z, jr_000_0972

    cp $04
    jr z, jr_000_0976

    ld d, $0c
    jr jr_000_0978

jr_000_0972:
    ld d, $04
    jr jr_000_0978

jr_000_0976:
    ld d, $08

jr_000_0978:
    ld a, b
    and $30
    or a
    jr z, jr_000_0986

    cp $10
    jr z, jr_000_098a

    ld l, $30
    jr jr_000_098c

jr_000_0986:
    ld l, $10
    jr jr_000_098c

jr_000_098a:
    ld l, $20

jr_000_098c:
    ld a, b
    and $c0
    or a
    jr z, jr_000_099a

    cp $40
    jr z, jr_000_099e

    ld h, $c0
    jr jr_000_09a0

jr_000_099a:
    ld h, $40
    jr jr_000_09a0

jr_000_099e:
    ld h, $80

jr_000_09a0:
    ld a, e
    or d
    or l
    or h
    ldh [rBGP], a
    ret


Call_000_09a7:
Jump_000_09a7:
    ld b, $04

jr_000_09a9:
    push bc
    ld b, $06
    call Call_000_0937
    call Call_000_09b7
    pop bc
    dec b
    jr nz, jr_000_09a9

    ret


Call_000_09b7:
    ld a, [$c14b]
    and $03
    ld e, a
    ldh a, [rBGP]
    and $03
    cp e
    jr z, jr_000_09d6

    cp $03
    jr z, jr_000_09d4

    cp $02
    jr z, jr_000_09d0

    ld e, $00
    jr jr_000_09d6

jr_000_09d0:
    ld e, $01
    jr jr_000_09d6

jr_000_09d4:
    ld e, $02

jr_000_09d6:
    ld a, [$c14b]
    and $0c
    ld d, a
    ldh a, [rBGP]
    and $0c
    cp d
    jr z, jr_000_09f5

    cp $0c
    jr z, jr_000_09f3

    cp $08
    jr z, jr_000_09ef

    ld d, $00
    jr jr_000_09f5

jr_000_09ef:
    ld d, $04
    jr jr_000_09f5

jr_000_09f3:
    ld d, $08

jr_000_09f5:
    ld a, [$c14b]
    and $30
    ld l, a
    ldh a, [rBGP]
    and $30
    cp l
    jr z, jr_000_0a14

    cp $30
    jr z, jr_000_0a12

    cp $20
    jr z, jr_000_0a0e

    ld l, $00
    jr jr_000_0a14

jr_000_0a0e:
    ld l, $10
    jr jr_000_0a14

jr_000_0a12:
    ld l, $20

jr_000_0a14:
    ld a, [$c14b]

Call_000_0a17:
    and $c0
    ld h, a
    ldh a, [rBGP]
    and $c0
    cp h
    jr z, jr_000_0a33

    cp $c0
    jr z, jr_000_0a31

    cp $80
    jr z, jr_000_0a2d

    ld h, $00
    jr jr_000_0a33

jr_000_0a2d:
    ld h, $40
    jr jr_000_0a33

jr_000_0a31:
    ld h, $80

jr_000_0a33:
    ld a, e
    or d
    or l
    or h
    ldh [rBGP], a
    ret


Call_000_0a3a:
Jump_000_0a3a:
    ld de, $de01
    ld hl, $de00
    ld [hl], l
    ld bc, $00ff
    jp Jump_000_0913


Call_000_0a47:
jr_000_0a47:
    push hl
    call Call_000_0a63
    ld a, [$c14d]
    ld e, a
    ld a, [$c14e]
    ld d, a
    ld a, d
    and $01
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop hl
    jr c, jr_000_0a47

    ld h, d
    ld l, e
    ret


Call_000_0a63:
    push bc
    push hl
    ld a, [$c14d]
    ld c, a
    ld a, [$c14e]
    add c
    ld c, a
    ld a, [$c151]
    add c
    push af
    ld b, $04
    ld hl, $c14d

jr_000_0a78:
    ld a, [hl+]
    ld [hl], a
    dec b
    jr nz, jr_000_0a78

    pop af
    cpl
    ld [$c14d], a
    pop hl
    pop bc
    ret


Call_000_0a85:
    ld hl, $c14d
    ldh a, [rDIV]
    ld [hl+], a
    srl a
    ld [hl+], a
    ld b, a
    ldh a, [rLY]
    sla a
    sla a
    xor b
    ld [hl+], a
    cpl
    ld [hl+], a
    rl a
    xor c
    ld [hl], a
    ret


Call_000_0a9e:
    ld a, e
    ld [$c16c], a
    ld a, d
    ld [$c16d], a
    ld a, [$c172]
    ld h, d
    ld l, e
    ld de, $0000
    push af
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    pop af

jr_000_0ab8:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    dec a
    jr nz, jr_000_0ab8

    ld a, l
    ld [$c13e], a
    ld a, h
    ld [$c13f], a
    ret


Jump_000_0acf:
    ld d, $de
    ld a, [$c1b0]
    ld e, a
    ld a, [$c1c7]
    and a
    jr z, jr_000_0ae2

    dec a
    ld [$c1c7], a
    and $01
    ret nz

Jump_000_0ae2:
jr_000_0ae2:
    ld a, [$c1b0]
    ld e, a
    ld d, $de

jr_000_0ae8:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0ae8

    ld a, [hl]
    cp $ff
    jr nz, jr_000_0af6

    jp Jump_000_38a0


jr_000_0af6:
    add b
    ld [de], a
    inc hl
    inc de
    ld a, [hl+]
    add c
    ld [de], a
    inc de

Call_000_0afe:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]

Jump_000_0b02:
    or $10
    ld [de], a
    inc hl
    inc de
    jr jr_000_0ae8

    nop
    nop
    jr nc, jr_000_0b0d

jr_000_0b0d:
    nop
    ld [$0032], sp
    nop
    db $10
    inc [hl]
    nop
    nop
    jr jr_000_0b4e

    nop
    stop
    jr c, jr_000_0b1d

jr_000_0b1d:
    db $10
    ld [$003a], sp
    db $10
    db $10
    inc a
    nop
    db $10
    jr jr_000_0b66

Jump_000_0b28:
    nop
    jr nz, jr_000_0b2b

jr_000_0b2b:
    ld b, b
    nop
    jr nz, jr_000_0b37

    ld b, d
    nop
    jr nz, jr_000_0b43

    ld b, h
    nop
    jr nz, jr_000_0b4f

jr_000_0b37:
    ld b, [hl]
    nop
    rst $38
    nop
    nop
    ld c, b
    nop
    nop
    ld [$004a], sp
    nop

jr_000_0b43:
    db $10
    ld c, h
    nop
    nop
    jr jr_000_0b97

    nop
    stop
    ld d, b
    nop

jr_000_0b4e:
    db $10

jr_000_0b4f:
    ld [$0046], sp
    db $10
    db $10
    ld b, [hl]
    nop
    db $10
    jr jr_000_0bab

    nop
    jr nz, jr_000_0b5c

jr_000_0b5c:
    ld b, [hl]
    nop
    jr nz, jr_000_0b68

    ld b, [hl]
    nop
    jr nz, jr_000_0b74

    ld b, [hl]
    nop

jr_000_0b66:
    jr nz, jr_000_0b80

jr_000_0b68:
    ld b, [hl]
    nop
    rst $38
    rst $28
    inc [hl]
    call c, $8042
    nop
    sub l
    dec [hl]
    ld e, h

jr_000_0b74:
    ld b, e
    and b
    nop
    rst $28
    inc [hl]
    db $fc
    ld b, e
    add b
    nop
    rst $28
    inc [hl]
    ld a, h

jr_000_0b80:
    ld b, h
    and b
    nop
    rst $28
    inc [hl]
    db $fc
    ld b, h
    and b
    nop
    rst $28
    inc [hl]
    ld a, h
    ld b, l
    and b
    nop
    rst $28
    inc [hl]
    db $fc
    ld b, l
    and b
    nop
    nop
    dec [hl]

jr_000_0b97:
    ld a, h
    ld b, [hl]
    and b
    nop
    rst $28
    inc [hl]
    ld a, h
    ld b, l
    and b
    nop
    rst $28
    inc [hl]
    ld a, h
    ld c, b
    add b
    nop
    rst $28
    inc [hl]
    db $fc
    ld b, [hl]

jr_000_0bab:
    add b
    nop
    rst $28
    inc [hl]
    ld a, h
    ld b, a
    add b
    nop
    rst $28
    inc [hl]
    db $fc
    ld b, a
    add b
    nop
    rst $28
    inc [hl]
    ld e, h
    ld c, e
    add b
    nop
    rst $28

Call_000_0bc0:
    inc [hl]
    db $fc
    ld c, b
    add b
    nop
    rst $28
    inc [hl]
    ld a, h
    ld c, c
    add b
    nop
    rst $28
    inc [hl]
    db $fc
    ld c, b
    add b
    nop
    rst $28
    inc [hl]
    ld a, h
    ld c, c
    add b
    nop
    rst $28
    inc [hl]
    call c, $804b
    nop
    ld [hl+], a
    dec [hl]
    call c, $804b
    nop
    inc sp
    dec [hl]
    sbc h
    ld c, l
    add b
    nop
    ld [hl+], a
    dec [hl]
    call c, $8042
    nop
    xor d
    dec [hl]
    ld e, h
    ld b, e
    and b
    nop
    ld [hl+], a
    dec [hl]
    db $fc
    ld b, e
    add b
    nop
    ld [hl+], a
    dec [hl]
    ld a, h
    ld b, h
    and b
    nop

Jump_000_0c01:
    ld [hl+], a
    dec [hl]
    db $fc
    ld b, h
    and b
    nop
    ld [hl+], a
    dec [hl]
    ld a, h
    ld b, l
    and b
    nop
    ld [hl+], a
    dec [hl]

Jump_000_0c0f:
    db $fc
    ld b, l
    and b
    nop
    ld de, $7c35
    ld b, [hl]
    and b
    nop
    ld [hl+], a
    dec [hl]
    ld a, h
    ld b, l
    and b
    nop
    ld [hl+], a
    dec [hl]
    ld a, h
    ld c, b
    add b
    nop
    ld [hl+], a
    dec [hl]
    db $fc
    ld b, [hl]
    add b
    nop
    ld [hl+], a
    dec [hl]
    ld a, h
    ld b, a
    add b
    nop
    ld [hl+], a
    dec [hl]
    db $fc
    ld b, a
    add b
    nop
    ld [hl+], a
    dec [hl]
    ld e, h
    ld c, e
    add b
    nop
    ld [hl+], a
    dec [hl]
    db $fc
    ld c, b
    add b
    nop
    ld [hl+], a
    dec [hl]
    ld a, h
    ld c, c
    add b
    nop
    ld [hl+], a
    dec [hl]
    db $fc
    ld c, b
    add b
    nop
    ld [hl+], a
    dec [hl]
    ld a, h
    ld c, c
    add b
    nop

Call_000_0c55:
    ld a, [$c1ae]
    ld c, a
    and $80
    ret z

    ld a, c
    and $7f

Jump_000_0c5f:
    ld [$c1ae], a
    add a
    ld c, a
    add a
    add c
    ld hl, $0b6b
    ld b, $00
    ld c, a
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, e
    ld [$c1ac], a
    ld a, d
    ld [$c1ad], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld h, d
    ld l, e
    ld de, $8000
    ld a, [$c144]
    push af
    ld a, $01
    ld [$c144], a
    ld [$2100], a
    push af

jr_000_0c92:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_0c92

    pop af
    call Call_000_091c
    jp Jump_000_264a


Call_000_0ca1:
    call Call_000_0cb7
    ld a, [$c15f]
    ld c, a
    ld a, [$c160]
    ld b, a
    ld a, [$c1ac]
    ld l, a
    ld a, [$c1ad]
    ld h, a
    jp Jump_000_0acf


Call_000_0cb7:
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c15f], a
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b

Jump_000_0ce6:
    ld h, a
    ld a, l
    add $08
    ld [$c160], a
    ret


Call_000_0cee:
Jump_000_0cee:
    ld bc, $c597
    add hl, bc

Call_000_0cf2:
    ld c, [hl]
    ld a, [$c144]
    push af
    ld a, [$c181]
    ld [$c144], a
    ld [$2100], a
    ld b, $00

Call_000_0d02:
    ld a, [$c185]
    ld l, a
    ld a, [$c186]
    ld h, a
    add hl, bc
    ld c, [hl]
    pop af
    ld [$c144], a
    ld [$2100], a
    ld a, c
    and a
    ret


Call_000_0d16:
Jump_000_0d16:
    ld a, [$c1e0]
    cp $ff
    ret z

    ld h, a
    ld a, [$c1df]
    ld l, a

jr_000_0d21:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld a, [de]

Call_000_0d29:
    and a
    push bc
    ld c, $02
    jr z, jr_000_0d3d

    cp $03
    ld c, $04
    jr z, jr_000_0d3d

    cp $04
    ld c, $03
    jr z, jr_000_0d3d

    ld c, $00

jr_000_0d3d:
    ld a, c
    ld [de], a
    pop bc
    inc bc
    ld a, [bc]
    cp $ff
    jr nz, jr_000_0d4c

    inc bc
    ld a, [bc]
    cp $ff
    ret z

    dec bc

jr_000_0d4c:
    ld h, b
    ld l, c
    jr jr_000_0d21

Call_000_0d50:
    ld a, [$c555]
    and a
    ret z

    dec a
    ld [$c555], a
    cp $18
    jr z, jr_000_0d5e

    ret


jr_000_0d5e:
    call Call_000_0d16

Call_000_0d61:
    push af

jr_000_0d62:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_0d62

    pop af
    ld a, $ff
    ld [$c14b], a
    ldh [rBGP], a
    call Call_000_19ba
    ld b, $0a
    call Call_000_0937
    ld a, $1b
    ld [$c14b], a
    ldh [rBGP], a
    ret


Call_000_0d82:
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld bc, $0010
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    and $fe
    ld l, a
    ld a, [$c16c]
    ld e, a
    ld a, [$c16d]
    ld d, a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
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
    add hl, de
    ret


Call_000_0dc3:
    call Call_000_0d82
    ld de, $c597
    add hl, de
    ret


Call_000_0dcb:
    ld hl, $5445
    ld de, $8300
    ld a, [$c144]
    push af
    ld a, $01
    ld [$c144], a
    ld [$2100], a
    call Call_000_3a5a
    pop af
    ld [$c144], a
    ld [$2100], a
    ld hl, $0b09
    jp Jump_000_0df5


Call_000_0ded:
    ld hl, $0b3a
    jr jr_000_0df5

Call_000_0df2:
    ld hl, $0b09

Jump_000_0df5:
jr_000_0df5:
    push hl
    push af

Jump_000_0df7:
    ld a, [$c1a0]
    ld l, a
    ld a, [$c1a1]
    ld h, a
    pop af
    push af
    ld a, [$c15b]
    ld e, a
    ld a, [$c15c]
    ld d, a
    pop af
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    add $08
    ld c, a
    push af
    ld a, [$c1a2]
    ld l, a
    ld a, [$c1a3]
    ld h, a
    pop af
    push af
    ld a, [$c15d]
    ld e, a
    ld a, [$c15e]
    ld d, a
    pop af
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    add $08

Jump_000_0e31:
    ld b, a
    ld de, $de14
    pop hl

jr_000_0e36:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0e36

    ld a, [hl]
    cp $ff
    jr nz, jr_000_0e4e

    push af

jr_000_0e42:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_0e42

    pop af
    jp $ff80


jr_000_0e4e:
    add b
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    add c
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    jr jr_000_0e36

Call_000_0e61:
    call Call_000_1021
    call Call_000_0905
    call Call_000_0469
    call Call_000_0469
    ld b, $08
    call Call_000_0937
    ld hl, $c597

jr_000_0e75:
    ld [hl], $00
    inc hl
    ld a, h
    cp $de
    jr nz, jr_000_0e75

    ld a, [$c144]
    push af
    call Call_000_0905
    ld a, [$c17d]
    ld [$c17c], a
    add a
    ld hl, $7c0d
    ld b, $00
    ld c, a
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    call Call_000_1036
    call Call_000_11f6
    call Call_000_10b5
    call Call_000_0eed
    call Call_000_08f8
    ld a, [$c17c]
    ld c, a
    ld a, [$c158]
    cp c
    jr z, jr_000_0eb4

    ld hl, $c56d
    dec [hl]

jr_000_0eb4:
    ld hl, $719a
    ld a, c
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    ld [$c1ba], a
    ld a, d
    ld [$c1bb], a
    pop af
    ld [$c144], a
    ld [$2100], a
    ret


Call_000_0ed0:
    ld a, [$c17c]
    cp $21
    jr z, jr_000_0eea

    call Call_000_0dcb
    call Call_000_0ded
    ld b, $08
    call Call_000_0937
    call Call_000_0df2
    ld b, $08
    call Call_000_0937

jr_000_0eea:
    jp Jump_000_0a3a


Call_000_0eed:
    ld a, [$c144]
    push af
    ld a, $01
    ld [$c144], a
    ld [$2100], a
    ld hl, $5500
    ld de, $80a0
    call Call_000_3a5a

Call_000_0f02:
Jump_000_0f02:
    ld hl, $80a0
    ld de, $80a0
    ld bc, $0020
    push bc
    push bc
    call Call_000_091c
    ld hl, $4cbc
    ld de, $80e0
    pop bc
    call Call_000_091c
    ld hl, $4d1c
    pop bc
    call Call_000_091c
    ld hl, $4cdc
    ld bc, $0040
    call Call_000_091c
    pop af
    ld [$c144], a
    ld [$2100], a
    ld hl, $4c5c
    ld de, $80c0
    call Call_000_3e2c

Call_000_0f3a:
Jump_000_0f3a:
    ld a, [$c196]
    and a
    ret z

    ld e, a
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    ld a, e
    dec a
    swap a
    add a
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $7ea5
    add hl, bc
    ld de, $8220
    ld bc, $0040
    call Call_000_091c
    pop af
    ld [$c144], a
    ld [$2100], a
    ret


jr_000_0f6a:
    ld a, [$c147]
    and $80
    ret z

Call_000_0f70:
    ld a, [$c543]
    cp $02
    ret nz

Jump_000_0f76:
jr_000_0f76:
    xor a
    ld [$c21a], a
    call Call_000_3fde
    call Call_000_093e
    call Call_000_0eed
    call Call_000_0e61
    call Call_000_1853
    ld c, $1e
    call Call_000_3da4
    jp Jump_000_09a7


Call_000_0f91:
    call Call_000_12d5
    ret nc

    and $e0
    ld c, a
    cp $40
    jr z, jr_000_0f6a

    cp $60
    jr z, jr_000_0f76

    cp $a0
    jp z, Jump_000_0f76

    ld a, [$c147]
    and $40
    ret z

Jump_000_0fab:
    ld a, [$c543]
    and a
    ret nz

    ld a, c
    cp $20
    jp z, Jump_000_0f76

    cp $00
    jr z, jr_000_0fbb

    ret


jr_000_0fbb:
    ld a, [$c17d]
    cp $1e
    jr nz, jr_000_0fca

    ld a, [$c141]
    and $1d
    cp $1d
    ret nz

jr_000_0fca:
    xor a
    ld [$c21a], a
    ld c, $0a
    call Call_000_3da4

Jump_000_0fd3:
    call Call_000_0a3a
    push af

jr_000_0fd7:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_0fd7

Call_000_0fdf:
    pop af
    call Call_000_045e
    call $ff80
    call Call_000_0dcb
    call Call_000_0df2
    ld b, $08
    call Call_000_0937
    call Call_000_0ded
    ld b, $08
    call Call_000_0937
    call Call_000_093e
    call Call_000_0a3a
    call $ff80
    call Call_000_0eed
    call Call_000_0e61
    call Call_000_1853
    call Call_000_09a7
    ld c, $0b
    call Call_000_3da4
    ld a, [$c17d]
    cp $1d
    jr c, jr_000_101e

    cp $23
    jr c, jr_000_1021

jr_000_101e:
    call Call_000_0ed0

Call_000_1021:
jr_000_1021:
    call Call_000_0a3a
    ld c, $1e
    call Call_000_3da4
    push af

jr_000_102a:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_102a

    pop af
    jp $ff80


Call_000_1036:
    ld a, [hl]
    push hl
    ld h, $00
    ld l, a
    ld a, l

Call_000_103c:
    ld [$c170], a
    ld a, h
    ld [$c171], a
    add hl, hl
    ld a, l
    ld [$c174], a
    ld a, h
    ld [$c175], a
    ld b, h
    ld c, l
    add hl, hl
    add hl, hl
    push hl
    add hl, bc
    ld a, l

Call_000_1053:
    ld [$c176], a
    ld a, h
    ld [$c177], a
    pop hl
    add hl, hl
    ld de, $00b0
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    ld [$c1a9], a
    ld a, h
    ld [$c1aa], a
    pop hl
    inc hl
    ld a, [hl+]
    ld [$c172], a
    push hl
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $00a0
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    ld [$c1a7], a
    ld a, h
    ld [$c1a8], a
    pop hl
    ld a, [hl+]
    ld [$c1fc], a
    ld c, [hl]
    inc hl
    ld d, h
    ld e, l
    ld hl, $6f58

Jump_000_1098:
    ld b, $00
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, c
    ld [$c1df], a
    ld a, b
    ld [$c1e0], a
    ld h, d
    ld l, e
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, e
    ld [$c178], a
    ld a, d
    ld [$c179], a
    ret


Call_000_10b5:
    ld a, [$c56a]
    ld l, a
    ld a, [$c56b]
    ld h, a
    ld a, [hl]
    ld [$c184], a
    inc hl
    ld a, l
    ld [$c189], a
    ld a, h
    ld [$c18a], a
    ld a, [$c17f]
    ld [$c17e], a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$c21a]
    and a
    jr z, jr_000_10e2

    ld a, [$c182]
    ld l, a
    ld a, [$c183]
    ld h, a

jr_000_10e2:
    ld a, [hl+]
    and a
    jr nz, jr_000_10ea

    add $01
    jr jr_000_10f3

jr_000_10ea:
    cp $ff
    jr nz, jr_000_10f3

    ld a, [$c170]
    sub $03

jr_000_10f3:
    ld e, a
    xor a
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    ld a, e
    ld [$c1a0], a
    ld a, d
    ld [$c1a1], a
    push hl
    ld hl, $0010
    add hl, de
    ld a, l
    ld [$c156], a
    ld a, h
    ld [$c157], a
    ld h, d
    ld l, e
    ld bc, $0040
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b

Call_000_1121:
    ld h, a
    jr nc, jr_000_1129

    ld de, $0000

Call_000_1127:
    jr jr_000_1153

jr_000_1129:
    ld d, h
    ld e, l
    push af
    ld a, [$c174]
    ld l, a
    ld a, [$c175]
    ld h, a
    pop af
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld bc, $00b0
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    jr nc, jr_000_1153

    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld d, h
    ld e, l

jr_000_1153:
    ld a, e
    and $f0
    ld e, a
    ld a, [$c1fc]
    and $80
    jr z, jr_000_1161

    ld de, $0008

jr_000_1161:
    ld a, e
    ld [$c15b], a
    ld a, d
    ld [$c15c], a
    pop hl
    ld a, [hl+]
    and a
    jr nz, jr_000_1172

    add $01
    jr jr_000_117b

jr_000_1172:
    cp $ff
    jr nz, jr_000_117b

    ld a, [$c172]
    sub $05

jr_000_117b:
    ld e, a
    xor a
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    ld a, e
    ld [$c1a2], a
    ld a, d
    ld [$c1a3], a
    ld hl, $0010
    add hl, de
    ld a, l
    ld [$c154], a
    ld a, h
    ld [$c155], a
    ld h, d
    ld l, e
    ld bc, $0040
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr nc, jr_000_11b0

    ld de, $0000
    jr jr_000_11e3

jr_000_11b0:
    ld d, h
    ld e, l
    push af
    ld a, [$c172]
    ld l, a
    ld a, [$c173]
    ld h, a
    pop af
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld bc, $00a0
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    jr c, jr_000_11db

    ld hl, $0008
    add hl, de
    ld d, h
    ld e, l
    jr jr_000_11e3

jr_000_11db:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld d, h
    ld e, l

jr_000_11e3:
    ld a, [$c1fc]
    and $80
    jr z, jr_000_11ed

    ld de, $0000

jr_000_11ed:
    ld a, e
    ld [$c15d], a
    ld a, d
    ld [$c15e], a
    ret


Call_000_11f6:
    ld a, [hl+]
    push hl
    ld hl, $123d
    add a
    add a
    add a
    ld d, $00

Call_000_1200:
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$c181], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, e
    ld [$c17a], a
    ld a, d
    ld [$c17b], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    ld [$c185], a
    ld a, d
    ld [$c186], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    ld [$c1e6], a
    push af
    ld a, e
    ld [$c1e7], a
    ld a, d
    ld [$c1e8], a
    pop af
    call Call_000_3e41
    pop hl
    ld a, l
    ld [$c56a], a
    ld a, h
    ld [$c56b], a

Jump_000_123c:
    ret


    ld bc, $4000
    sbc c
    ld b, d
    xor c
    ld d, [hl]
    ld b, $01
    jr z, jr_000_129e

    sbc d
    ld e, d
    rst $30
    ld c, l
    ld b, $01
    add $5d
    ld b, [hl]
    ld h, b
    xor a
    ld e, l
    dec b
    ld bc, $4000
    sbc c
    ld b, d
    xor c
    ld d, [hl]
    ld b, $02
    or [hl]
    ld h, h
    cp e
    ld h, e
    nop
    ld b, b
    dec b
    ld [bc], a
    or [hl]
    ld h, h
    cp e
    ld h, e
    nop
    ld b, b
    dec b
    ld [bc], a
    or [hl]
    ld h, h
    jr c, @+$66

    nop
    ld b, b
    dec b
    ld [bc], a
    cp [hl]
    ld h, [hl]
    jr c, @+$66

    sbc c
    ld c, d
    dec b
    inc b
    call c, $d44b
    ld c, l
    ld c, l
    ld d, l
    dec b
    inc b
    call c, $d44b
    ld c, l
    add hl, hl
    ld c, e
    ld b, $04
    call c, $d44b
    ld c, l
    bit 3, e
    ld b, $04
    call c, $d44b
    ld c, l
    call $0660
    inc b

jr_000_129e:
    call c, $d44b
    ld c, l
    dec l
    ld h, a
    ld b, $04
    call c, $d44b
    ld c, l
    ret nz

    ld a, e
    ld b, $04
    scf

Jump_000_12af:
    ld a, b
    and $76
    dec e
    ld l, b
    dec b
    ld bc, $6921
    and c
    ld l, e
    rst $38
    ld l, d
    ld b, $04
    dec l
    ld e, h
    dec c
    ld e, [hl]
    and d
    ld [hl], h
    ld b, $05
    and a
    ld a, l
    rst $28
    ld a, [hl]
    and e
    ld [hl], d
    dec b
    inc b
    call c, $d44b
    ld c, l
    or l
    ld a, c
    inc bc

Call_000_12d5:
    ld a, [$c189]
    ld l, a
    ld a, [$c18a]
    ld h, a
    ld a, [$c184]

Jump_000_12e0:
    push af
    ld a, [hl+]
    and a
    jr nz, jr_000_12eb

    ld [$c1a4], a
    jp Jump_000_148a


jr_000_12eb:
    cp $ff
    jr nz, jr_000_12fa

    ld [$c1a4], a
    ld a, [$c170]
    sub $01
    jp Jump_000_13ee


jr_000_12fa:
    ld e, a
    ld a, [hl]
    cp $ff
    jr nz, jr_000_1303

    inc hl
    jr jr_000_136a

Jump_000_1303:
jr_000_1303:
    and a
    jr nz, jr_000_130a

    inc hl
    jp Jump_000_154b


jr_000_130a:
    xor a
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    ld a, e
    ld [$c1a0], a

Call_000_131c:
    ld a, d
    ld [$c1a1], a
    push hl
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld b, h
    ld c, l
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_000_134a

    ld hl, $0000
    add hl, bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    ld bc, $0003
    jp nc, Jump_000_13e6

    jr jr_000_135f

jr_000_134a:
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld bc, $0003
    pop hl
    jp nc, Jump_000_13e6

jr_000_135f:
    ld a, [hl+]
    and a
    jr nz, jr_000_1366

    jp Jump_000_154b


jr_000_1366:
    cp $ff
    jr nz, jr_000_1372

jr_000_136a:
    ld a, [$c172]
    sub $04
    jp Jump_000_14a3


jr_000_1372:
    ld e, a
    xor a
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    ld a, e
    ld [$c1a2], a
    ld a, d
    ld [$c1a3], a
    push hl
    inc hl
    ld a, [hl]
    ld [$c1f4], a
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld b, h
    ld c, l
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_000_13c3

    ld hl, $0020
    ld a, [$c1f4]
    and $e0
    cp $60
    jr nz, jr_000_13b0

    ld hl, $0004

jr_000_13b0:
    add hl, bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    ld bc, $0002
    jr nc, jr_000_13e6

    jr jr_000_13d7

jr_000_13c3:
    ld hl, $0030
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld bc, $0002
    pop hl
    jr nc, jr_000_13e6

Jump_000_13d7:
jr_000_13d7:
    pop af

Jump_000_13d8:
    ld a, [hl+]

Jump_000_13d9:
    ld [$c17d], a
    ld a, [hl]
    ld c, a
    and $1f
    ld [$c17f], a
    ld a, c
    scf
    ret


Jump_000_13e6:
jr_000_13e6:
    add hl, bc
    pop af
    dec a
    jp nz, Jump_000_12e0

    and a
    ret


Jump_000_13ee:
    push hl
    call Call_000_156f
    dec de
    ld a, [$c156]
    ld l, a

Jump_000_13f7:
    ld a, [$c157]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h

Jump_000_13ff:
    sbc d

Jump_000_1400:
    ld h, a
    pop hl
    jp c, Jump_000_1484

Jump_000_1405:
    ld a, [hl+]
    call Call_000_156f
    ld a, l
    ld [$c1fd], a
    ld a, h
    ld [$c1fe], a
    push hl
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    call Call_000_1564
    ld a, l
    ld [$c1ff], a
    ld a, h
    ld [$c200], a
    pop hl
    ld b, $01
    pop af
    ld c, a
    push af
    inc hl
    inc hl

Call_000_1433:
jr_000_1433:
    ld a, [hl+]
    ld e, a
    ld a, [$c1a4]
    cp e
    jr nz, jr_000_1441

    ld a, [hl+]
    call Call_000_156f
    jr jr_000_1455

jr_000_1441:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_000_1433

    dec b
    jr nz, jr_000_1455

    ld a, [$c1fd]
    ld l, a
    ld a, [$c1fe]
    ld h, a
    jp Jump_000_13d7


jr_000_1455:
    push hl
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    call Call_000_1564
    ld a, [$c1ff]
    ld e, a
    ld a, [$c200]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop hl
    jp c, Jump_000_13d7

    ld a, [$c1fd]
    ld l, a
    ld a, [$c1fe]
    ld h, a
    jp Jump_000_13d7


Jump_000_1484:
    ld bc, $0003
    jp Jump_000_13e6


Jump_000_148a:
    ld de, $0008
    push hl
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop hl
    jp nc, Jump_000_1484

    jp Jump_000_1405


Jump_000_14a3:
    ld a, [$c172]
    sub $02
    call Call_000_156f
    dec de
    push hl
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop hl
    jp c, Jump_000_1545

Jump_000_14bf:
    dec hl
    dec hl
    ld a, [hl+]
    call Call_000_156f
    inc hl
    ld a, l
    ld [$c1fd], a
    ld a, h
    ld [$c1fe], a
    push hl
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    call Call_000_1564
    ld a, l
    ld [$c201], a
    ld a, h
    ld [$c202], a
    pop hl
    ld b, $01
    pop af
    ld c, a
    push af
    inc hl
    inc hl
    inc hl

jr_000_14f1:
    ld a, [hl]
    and a
    jr z, jr_000_14f9

    cp $ff
    jr nz, jr_000_1501

jr_000_14f9:
    dec hl
    ld a, [hl+]
    call Call_000_156f
    inc hl
    jr jr_000_1516

jr_000_1501:
    inc hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_000_14f1

    dec b
    jr nz, jr_000_1516

    ld a, [$c1fd]
    ld l, a
    ld a, [$c1fe]
    ld h, a
    jp Jump_000_13d7


jr_000_1516:
    push hl
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    call Call_000_1564
    ld a, [$c201]
    ld e, a
    ld a, [$c202]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop hl
    jp c, Jump_000_13d7

    ld a, [$c1fd]
    ld l, a
    ld a, [$c1fe]
    ld h, a
    jp Jump_000_13d7


Jump_000_1545:
    ld bc, $0002
    jp Jump_000_13e6


Jump_000_154b:
    ld de, $0008
    push hl
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop hl
    jp nc, Jump_000_1545

    jp Jump_000_14bf


Call_000_1564:
    bit 7, a
    ret z

    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    ld l, a
    inc hl
    ret


Call_000_156f:
    ld e, a
    xor a
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    ret


Call_000_157f:
    xor a
    ld [$c1b0], a
    ret


Call_000_1584:
    push hl
    ld a, [$c184]
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, a
    ld a, [$c189]
    ld c, a
    ld a, [$c18a]
    ld b, a
    add hl, bc
    ld a, [hl+]
    ld [$c1ca], a
    inc hl
    push af
    ld a, l
    ld [$c1be], a
    ld a, h
    ld [$c1bf], a
    pop af
    ld d, h
    ld e, l
    ld h, $00
    ld b, h
    ld l, a
    ld c, l
    add hl, hl
    add hl, bc
    add hl, de
    ld a, [hl+]
    ld [$c1cc], a
    push af
    ld a, l
    ld [$c1d3], a
    ld a, h
    ld [$c1d4], a
    pop af
    ld d, h
    ld e, l
    ld c, a
    ld b, $00
    ld h, b
    add a
    ld l, a
    add hl, bc
    add hl, de
    ld a, l
    ld [$c218], a
    ld a, h
    ld [$c219], a

jr_000_15d3:
    ld a, [hl+]
    cp $fe
    jr z, jr_000_15dc

    cp $ff
    jr nz, jr_000_15d3

jr_000_15dc:
    ld [$c18e], a
    ld a, l
    ld [$c20a], a
    ld a, h
    ld [$c20b], a
    pop hl
    ret


Call_000_15e9:
    ld a, [$c1ba]
    ld e, a
    ld a, [$c1bb]
    ld d, a
    ld a, [$c1be]
    ld l, a
    ld a, [$c1bf]
    ld h, a
    ld a, [$c1ca]
    and a
    ret z

Jump_000_15fe:
    push af
    push hl
    push de
    ld a, [de]
    bit 6, a
    jp nz, Jump_000_16c3

    and $20
    jp z, Jump_000_16c3

    inc hl
    inc hl
    ld c, [hl]
    dec hl
    push hl
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld d, h
    ld e, l
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_000_1641

    ld hl, $0010
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop hl
    jr nc, jr_000_164f

    jp Jump_000_16c3


jr_000_1641:
    ld hl, $0020
    add hl, de
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    jp c, Jump_000_16c3

jr_000_164f:
    ld c, [hl]
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld d, h
    ld e, l
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_000_167e

    ld hl, $0010
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr c, jr_000_16c3

    jr jr_000_168a

jr_000_167e:
    ld hl, $0010
    add hl, de
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_000_16c3

jr_000_168a:
    pop de
    pop hl
    ld a, [de]
    or $7f
    ld [de], a
    ld a, [hl]
    and $03
    and a
    jr nz, jr_000_169b

    call Call_000_16e8
    jr jr_000_16c5

jr_000_169b:
    cp $03
    jr nz, jr_000_16a4

    call Call_000_171a
    jr jr_000_16c5

jr_000_16a4:
    cp $02
    jr nz, jr_000_16ad

    call Call_000_16d8
    jr jr_000_16c5

jr_000_16ad:
    cp $01
    jr nz, jr_000_16c5

    ld c, $13
    call Call_000_3da4
    ld hl, $c56e
    ld a, [hl]
    cp $04
    jr nc, jr_000_16c5

    inc [hl]
    inc hl
    dec [hl]
    jr jr_000_16c5

Jump_000_16c3:
jr_000_16c3:
    pop de
    pop hl

jr_000_16c5:
    inc de
    ld bc, $0003
    add hl, bc
    pop af
    dec a
    jp nz, Jump_000_15fe

    ret


    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    ld l, a

Call_000_16d6:
    inc hl
    ret


Call_000_16d8:
jr_000_16d8:
    ld c, $03
    call Call_000_3da4
    ld a, [$c19a]
    cp $63
    ret nc

    inc a
    ld [$c19a], a
    ret


Call_000_16e8:
    ld a, [$c198]
    ld l, a
    ld a, [$c199]
    ld h, a
    ld bc, $000a
    add hl, bc
    ld a, l
    ld [$c198], a
    ld a, h
    ld [$c199], a
    ld hl, $c19c
    inc [hl]
    ld a, [hl]

Jump_000_1701:
    cp $19
    jr z, jr_000_171a

    cp $32
    jr z, jr_000_171a

    cp $4b
    jr z, jr_000_171a

    cp $64
    jr nz, jr_000_1715

    ld [hl], $00
    jr jr_000_16d8

jr_000_1715:
    ld c, $0d
    jp Jump_000_3da4


Call_000_171a:
jr_000_171a:
    ld a, [$c1a5]
    ld c, a
    ld a, [$c196]
    cp c
    jr nc, jr_000_1728

    inc a
    ld [$c196], a

jr_000_1728:
    ld c, $0e
    call Call_000_3da4
    jp Jump_000_0f3a


Call_000_1730:
    ld a, [$c1be]
    ld l, a
    ld a, [$c1bf]
    ld h, a
    ld d, $de
    ld a, [$c1b0]
    ld e, a
    ld a, [$c1ba]
    ld c, a
    ld a, [$c1bb]
    ld b, a
    ld a, [$c1ca]
    and a
    ret z

Jump_000_174b:
    push af
    push bc
    push hl
    ld a, [bc]
    and $80
    jp z, Jump_000_1839

    ld a, c
    ld [$c169], a
    ld a, b
    ld [$c16a], a
    inc hl
    inc hl
    ld c, [hl]
    dec hl
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    push hl
    ld h, b
    ld l, c
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    and a
    ld a, l
    pop hl
    jp nz, Jump_000_1839

    cp $a0
    jp nc, Jump_000_1839

    add $08
    ld [de], a
    inc de
    push af
    ld c, [hl]
    dec hl
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    ld a, [hl]
    push af
    ld h, b
    ld l, c
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop bc
    ld a, h
    and a
    jr z, jr_000_17c2

Jump_000_17b7:
    cp $ff
    jr nz, jr_000_17c7

    ld a, l
    cp $f8
    jr nc, jr_000_17cb

    jr jr_000_17c7

jr_000_17c2:
    ld a, l
    cp $b0
    jr c, jr_000_17cb

jr_000_17c7:
    pop af
    dec de
    jr jr_000_1839

jr_000_17cb:
    ld [de], a
    inc de
    ld a, b
    ld [$c16b], a
    ld a, [$c169]
    ld c, a
    ld a, [$c16a]
    ld b, a
    ld a, [bc]
    bit 6, a
    jr z, jr_000_17fd

    dec a
    and $0f
    jr z, jr_000_17e5

    or $80

jr_000_17e5:
    or $40
    ld [bc], a

Call_000_17e8:
    cpl
    srl a
    srl a
    and $03
    add a
    ld b, $0e
    add b
    ld b, a
    ld h, a
    ld a, $20
    ld [$c214], a
    ld a, h
    jr jr_000_1813

jr_000_17fd:
    ld a, [$c16b]
    ld b, $01
    and $03
    add $50
    ld c, a

Jump_000_1807:
    ld a, [bc]
    ld [$c214], a
    ld a, c
    add $04
    ld c, a
    ld a, [bc]
    ld b, a
    ld h, $00

jr_000_1813:
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    pop af
    ld [de], a
    inc e
    ld a, l
    add $08
    ld [de], a
    inc e
    ld a, [$c214]
    ld h, a
    and $20
    ld a, b
    jr nz, jr_000_182c

    ld a, b
    add $02

jr_000_182c:
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    inc e
    pop hl
    pop bc
    ld a, [bc]
    or $20
    ld [bc], a
    jr jr_000_1844

Jump_000_1839:
jr_000_1839:
    pop hl
    pop bc
    ld a, [bc]
    bit 6, a
    jr z, jr_000_1841

    xor a

jr_000_1841:
    and $df
    ld [bc], a

jr_000_1844:
    inc bc
    push bc
    ld bc, $0003
    add hl, bc
    pop bc
    pop af
    dec a
    jp nz, Jump_000_174b

    jp Jump_000_38a0


Call_000_1853:
    call Call_000_0905
    ld a, [$c17d]
    call Call_000_1ac5
    call Call_000_0a9e
    call Call_000_1584
    call $7d18
    call Call_000_0cb7
    call $3a37
    call $7e7f
    call Call_000_1952
    call Call_000_1aff
    ld a, [$c17d]
    cp $0e
    jr nz, jr_000_1885

    ld a, $02
    ld hl, $c647
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jr jr_000_18a1

jr_000_1885:
    cp $09
    jr nz, jr_000_18a1

    ld a, $02
    ld [$c6e5], a
    ld [$c6f9], a
    ld [$c834], a
    ld [$c826], a
    ld [$c962], a
    ld [$c96b], a
    ld [$c974], a
    ld [hl+], a

jr_000_18a1:
    call Call_000_19ba
    ld a, $ff
    ld [$c1e4], a
    xor a
    ld [$c21a], a
    call Call_000_1987
    xor a
    ld [$c543], a
    ld [$c1b6], a
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $54f5
    call $4010
    pop af
    ld [$c144], a
    ld [$2100], a
    call Call_000_0c55
    call Call_000_0ca1
    ld a, [$c17d]
    ld c, a
    cp $11
    ld b, $38
    ld a, $1b
    jr nz, jr_000_18e6

    ld a, $bf
    ld b, $ff

jr_000_18e6:
    ld [$c14b], a
    ld a, b
    ldh [rOBP0], a
    ld a, c
    cp $1f
    jr nz, jr_000_18f6

    call Call_000_06a1
    jr jr_000_1925

jr_000_18f6:
    cp $1e
    jr nz, jr_000_18ff

    call Call_000_044a
    jr jr_000_1925

jr_000_18ff:
    cp $20
    jr nz, jr_000_1908

    call Call_000_04aa
    jr jr_000_1925

jr_000_1908:
    cp $21
    jr nz, jr_000_1911

    call Call_000_052b
    jr jr_000_1925

jr_000_1911:
    cp $1d
    jr nz, jr_000_191a

    call Call_000_0485
    jr jr_000_1925

jr_000_191a:
    cp $22
    jr nz, jr_000_1923

    call Call_000_0629
    jr jr_000_1925

jr_000_1923:
    jr jr_000_193f

jr_000_1925:
    call Call_000_0682
    call Call_000_3fd2
    ld a, $80
    ld [$c164], a
    call Call_000_157f
    call Call_000_20ee
    call Call_000_35f2
    call Call_000_35f2
    call Call_000_35f2

jr_000_193f:
    call Call_000_0a3a
    push af

jr_000_1943:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_1943

    pop af
    call $ff80
    call Call_000_08f8

Call_000_1952:
    ld a, [$c1ca]
    and a
    ret z

    ld b, a
    ld a, [$c1be]
    ld l, a
    ld a, [$c1bf]
    ld h, a
    ld a, [$c1ba]
    ld e, a
    ld a, [$c1bb]
    ld d, a

jr_000_1968:
    ld a, [hl+]
    and $03
    cp $01
    jr z, jr_000_1973

    cp $03
    jr nz, jr_000_1976

jr_000_1973:
    ld a, $80
    ld [de], a

jr_000_1976:
    inc hl
    inc hl
    inc de
    dec b
    jr nz, jr_000_1968

    ret


Call_000_197d:
    push af

jr_000_197e:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_197e

    pop af

Call_000_1987:
    di
    xor a
    ld [$c13d], a
    ld [$c142], a
    ld a, $87
    ldh [rLCDC], a
    ld [$c148], a
    ei
    ret


Call_000_1998:
    push af

jr_000_1999:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_1999

    pop af

Call_000_19a2:
    di
    ld a, $97
    ldh [rLCDC], a
    xor a
    ldh [rLYC], a
    ldh a, [rIE]
    or $02
    ldh [rIE], a
    ld a, $ff
    ld [$c13d], a
    ld [$c142], a
    ei
    ret


Call_000_19ba:
Jump_000_19ba:
    ld a, [$c144]
    push af
    ld a, [$c181]
    ld [$c144], a
    ld [$2100], a
    ld a, [$c15b]
    and $0f
    ld [$c1d8], a
    ldh [rSCX], a
    ld a, [$c15d]
    and $0f
    ld [$c1d9], a
    ldh [rSCY], a
    call Call_000_251e
    ld a, l
    ld [$c152], a
    ld a, h
    ld [$c153], a
    ld de, $ffdf
    ld a, d
    and $03
    ld d, a
    ld a, $0b

Jump_000_19ef:
    push af
    push hl
    ld a, $0c

Jump_000_19f3:
    push af
    ld a, [hl]
    cp $e0
    call nc, Call_000_1ebf
    ld c, a
    inc hl
    push hl

Call_000_19fd:
    xor a
    sla c
    rla
    sla c
    rla
    ld b, a

Call_000_1a05:
    ld a, [$c17a]
    ld l, a

Call_000_1a09:
    ld a, [$c17b]
    ld h, a
    add hl, bc
    push de
    push hl
    ld hl, $9800
    add hl, de
    ld d, h
    ld e, l
    pop hl

jr_000_1a17:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1a17

    ld a, [hl+]
    xor $80
    ld [de], a

jr_000_1a21:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1a21

    inc de
    ld a, [hl+]
    xor $80
    ld [de], a
    pop de
    push hl
    ld h, d
    ld l, e
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    ld h, a
    ld d, h
    ld e, l
    pop hl
    push de
    push hl
    ld hl, $9800
    add hl, de
    ld d, h
    ld e, l
    pop hl

jr_000_1a44:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1a44

    ld a, [hl+]
    xor $80
    ld [de], a
    inc de
    ld a, [hl]
    xor $80
    ld [de], a
    pop de
    ld h, d
    ld l, e
    ld bc, $001e
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    and $03
    ld h, a
    ld d, h
    ld e, l

Call_000_1a65:
    pop hl
    pop af
    dec a

Call_000_1a68:
    jp nz, Jump_000_19f3

    ld h, d
    ld l, e
    ld bc, $0028
    add hl, bc
    ld a, h
    and $03
    ld h, a
    ld d, h
    ld e, l
    pop hl
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    pop af
    dec a
    jp nz, Jump_000_19ef

    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    ld c, [hl]
    xor a
    sla c
    rla
    sla c
    rla
    ld b, a
    ld a, [$c17a]
    ld l, a
    ld a, [$c17b]
    ld h, a
    add hl, bc
    ld a, [$c1d8]
    and $08
    jr nz, jr_000_1aa8

    inc hl

jr_000_1aa8:
    ld a, [$c1d9]
    and $08
    jr nz, jr_000_1ab1

    inc hl
    inc hl

jr_000_1ab1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1ab1

    ld a, [hl]
    xor $80
    ld [$9800], a

Jump_000_1abd:
    pop af
    ld [$c144], a
    ld [$2100], a
    ret


Call_000_1ac5:
    ld a, [$c144]
    push af
    ld a, [$c181]
    ld [$c144], a
    ld [$2100], a
    ld a, [$c178]
    ld l, a
    ld a, [$c179]
    ld h, a
    ld de, $c58f
    call Call_000_3a5a
    push de
    ld h, d
    ld l, e
    ld de, $c597
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld b, h
    ld c, l
    ld a, c
    ld [$c20c], a
    ld a, b
    ld [$c20d], a
    pop de
    pop af
    ld [$c144], a
    ld [$2100], a
    ret


Call_000_1aff:
    ld a, [$c20a]
    ld l, a

Call_000_1b03:
    ld a, [$c20b]
    ld h, a
    ld de, $c21c
    ld b, $20

jr_000_1b0c:
    ld a, [hl+]
    cp $09
    jr z, jr_000_1b15

    cp $08
    jr nz, jr_000_1b17

jr_000_1b15:
    xor $01

jr_000_1b17:
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1b0c

    ld hl, $c597
    ld a, [$c20c]
    ld c, a
    ld a, [$c20d]
    ld b, a

jr_000_1b27:
    ld a, [hl]
    cp $02
    jr nz, jr_000_1b2e

    ld [hl], $00

jr_000_1b2e:
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1b27

    ret


Call_000_1b35:
    ld c, a
    ld a, [$c1d8]
    ld e, a
    cpl
    and $07
    cp c
    ld a, e
    jp nc, Jump_000_1b90

    ld a, c
    push af
    ld a, e
    srl a
    srl a
    srl a
    add $15
    and $1f
    ld d, $00
    ld e, a
    ld a, [$c1d9]
    and $f8
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    ld bc, $000b
    add hl, bc
    ld a, [$c1d8]
    and $08
    jr nz, jr_000_1b77

    call Call_000_1e15
    jr jr_000_1b8b

jr_000_1b77:
    call Call_000_1e15
    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    inc hl
    ld a, l
    ld [$c152], a
    ld a, h
    ld [$c153], a

jr_000_1b8b:
    pop af
    ld c, a
    ld a, [$c1d8]

Jump_000_1b90:
    add c
    ld [$c1d8], a
    ld b, $00
    ld a, [$c15b]
    ld l, a
    ld a, [$c15c]
    ld h, a
    add hl, bc
    ld a, l
    ld [$c15b], a
    ld a, h
    ld [$c15c], a
    ret


Jump_000_1ba8:
    ld c, a
    ld a, [$c1d9]
    ld e, a
    cpl
    and $07
    cp c
    ld a, e
    jp nc, Jump_000_1c5e

    ld a, c
    push af
    push af
    push de
    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    ld a, [$c176]
    ld c, a
    ld a, [$c177]
    ld b, a
    add hl, bc
    call Call_000_1db6
    ld a, [$c1d9]
    and $08
    jr z, jr_000_1bed

    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    add hl, bc
    ld a, l
    ld [$c152], a
    ld a, h
    ld [$c153], a

jr_000_1bed:
    pop de
    pop af
    ld a, e
    add $98
    and $f8
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld a, [$c1d8]
    sub $08
    srl a
    srl a

Call_000_1c02:
    srl a
    and $1f
    ld c, a
    ld b, $00
    add hl, bc
    cp $0b
    jr c, jr_000_1c4a

    ld a, $20
    sub c

Call_000_1c11:
    ld c, a
    push hl
    push bc
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    push bc
    ld hl, $c577
    pop bc

Call_000_1c1f:
    ld b, $00
    call Call_000_091c
    pop bc
    pop de
    ld a, $16
    sub c
    push hl
    ld h, d

Jump_000_1c2b:
    ld l, e
    ld e, c
    ld c, a
    ld a, $20
    sub e
    ld d, $00
    ld e, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, h
    and $03
    ld h, a
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    pop hl
    call Call_000_091c
    jr jr_000_1c59

jr_000_1c4a:
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c577
    ld bc, $0016
    call Call_000_091c

jr_000_1c59:
    pop af
    ld c, a
    ld a, [$c1d9]

Jump_000_1c5e:
    add c
    ld [$c1d9], a
    ld b, $00
    ld a, [$c15d]
    ld l, a
    ld a, [$c15e]
    ld h, a
    add hl, bc
    ld a, l
    ld [$c15d], a
    ld a, h
    ld [$c15e], a
    ret


Jump_000_1c76:
    ld c, a
    ld a, [$c1d9]
    ld e, a
    and $07
    cp c

Jump_000_1c7e:
    ld a, e
    jp nc, Jump_000_1d27

    ld a, c
    push af
    push af
    push de
    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    call Call_000_1db6
    ld a, [$c1d9]
    and $08
    jr nz, jr_000_1cb6

    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    ld a, [$c170]
    ld c, a
    ld a, [$c171]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c152], a
    ld a, h
    ld [$c153], a

jr_000_1cb6:
    pop de
    pop af
    ld a, e
    sub $08
    and $f8
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld a, [$c1d8]
    sub $08
    srl a
    srl a
    srl a
    and $1f
    ld c, a
    ld b, $00
    add hl, bc
    cp $0b
    jr c, jr_000_1d13

    ld a, $20
    sub c
    ld c, a
    push hl
    push bc
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    push bc
    ld hl, $c577
    pop bc
    ld b, $00
    call Call_000_091c
    pop bc
    pop de
    ld a, $16
    sub c
    push hl
    ld h, d
    ld l, e
    ld e, c
    ld c, a
    ld a, $20
    sub e
    ld d, $00
    ld e, a
    ld a, l
    sub e
    ld l, a

Call_000_1d00:
    ld a, h

Call_000_1d01:
    sbc d
    ld h, a
    ld a, h
    and $03
    ld h, a
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    pop hl
    call Call_000_091c

Jump_000_1d11:
    jr jr_000_1d22

jr_000_1d13:
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c577
    ld bc, $0016
    call Call_000_091c

jr_000_1d22:
    pop af
    ld c, a
    ld a, [$c1d9]

Jump_000_1d27:
    sub c
    ld [$c1d9], a
    ld b, $00
    ld a, [$c15d]
    ld l, a
    ld a, [$c15e]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c15d], a
    ld a, h
    ld [$c15e], a
    ret


Call_000_1d44:
    ld c, a
    ld a, [$c1d8]
    ld e, a
    and $07
    cp c
    ld a, e
    jr nc, jr_000_1d99

    ld a, c
    push af
    ld a, e
    sub $08
    srl a
    srl a
    srl a
    and $1f
    ld d, $00
    ld e, a
    ld a, [$c1d9]
    and $f8
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    ld a, [$c1d8]
    and $08
    jr z, jr_000_1d80

    call Call_000_1e15
    jr jr_000_1d94

jr_000_1d80:
    call Call_000_1e15
    ld a, [$c152]
    ld l, a
    ld a, [$c153]
    ld h, a
    dec hl
    ld a, l
    ld [$c152], a
    ld a, h
    ld [$c153], a

jr_000_1d94:
    pop af
    ld c, a
    ld a, [$c1d8]

jr_000_1d99:
    sub c
    ld [$c1d8], a
    ld b, $00
    ld a, [$c15b]
    ld l, a
    ld a, [$c15c]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c15b], a
    ld a, h
    ld [$c15c], a
    ret


Call_000_1db6:
    ld a, [$c144]
    push af
    ld a, [$c181]
    ld [$c144], a
    ld [$2100], a
    ld de, $c577
    ld a, [$c1d8]
    and $08
    jr z, jr_000_1dce

    dec de

jr_000_1dce:
    ld a, $0c

jr_000_1dd0:
    push af
    ld a, [hl]
    cp $e0
    call nc, Call_000_1ebf
    ld c, a
    inc hl
    push hl
    xor a
    sla c
    rla
    sla c
    rla
    ld b, a
    ld a, [$c17a]
    ld l, a
    ld a, [$c17b]
    ld h, a
    add hl, bc
    ld a, [$c1d9]
    and $08
    srl a
    srl a
    ld b, $00
    ld c, a
    add hl, bc

jr_000_1df8:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1df8

    ld a, [hl+]
    xor $80
    ld [de], a

Call_000_1e02:
    inc de
    ld a, [hl]
    xor $80
    ld [de], a
    inc de
    pop hl
    pop af
    dec a
    jr nz, jr_000_1dd0

    pop af
    ld [$c144], a
    ld [$2100], a
    ret


Call_000_1e15:
    ld a, [$c144]
    push af
    ld a, [$c181]
    ld [$c144], a
    ld [$2100], a
    push hl
    ld h, d
    ld l, e

Jump_000_1e25:
    ld b, $00
    ld c, $40
    ld a, [$c1d9]
    and $08
    jr nz, jr_000_1e32

    srl c

jr_000_1e32:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc $00
    and $03
    ld h, a
    ld d, h
    ld e, l
    pop hl
    ld a, $0b

jr_000_1e40:
    push af
    push hl
    ld a, [hl]
    cp $e0
    call nc, Call_000_1ebf
    ld c, a
    xor a
    sla c
    rla
    sla c
    rla
    ld b, a
    push de
    ld hl, $9800
    add hl, de
    ld d, h
    ld e, l
    ld a, [$c17a]
    ld l, a
    ld a, [$c17b]
    ld h, a
    add hl, bc
    ld a, [$c1d8]
    and $08
    srl a
    srl a
    srl a
    ld b, $00
    ld c, a
    add hl, bc

jr_000_1e70:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1e70

    ld a, [hl+]
    xor $80
    ld [de], a
    inc hl
    ld b, h
    ld c, l
    pop de
    ld a, $20
    add e
    ld l, a
    ld a, $00
    adc d
    and $03
    ld h, a
    push hl
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c

jr_000_1e91:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1e91

    ld a, [hl+]
    xor $80
    ld [de], a
    inc hl
    pop de
    ld a, $20
    add e
    ld l, a
    ld a, $00
    adc d
    and $03
    ld h, a
    ld d, h
    ld e, l
    pop hl
    ld a, [$c170]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    dec a
    jr nz, jr_000_1e40

    pop af
    ld [$c144], a
    ld [$2100], a
    ret


Call_000_1ebf:
    call Call_000_1ed7
    ld c, a
    and $7f
    cp $0b
    jr z, jr_000_1ed0

    cp $08
    ld a, $00
    ret z

    inc a
    ret


jr_000_1ed0:
    bit 7, c
    ld a, $00
    ret z

    inc a
    ret


Call_000_1ed7:
    push hl
    ld hl, $c21c
    and $1f
    ld b, $00
    ld c, a
    add hl, bc
    ld b, h
    ld c, l
    ld a, [hl]
    pop hl
    ret


Call_000_1ee6:
    ld a, [$c1c0]
    ld [$c1c2], a
    xor a
    ld [$c1c0], a
    ld a, [$c13e]
    ld l, a
    ld a, [$c13f]
    ld h, a
    ld a, $0f

Jump_000_1efa:
    push af
    push hl
    xor a
    ld [$c547], a
    ld [$c546], a
    ld a, [hl+]
    ld [$c1c8], a

Jump_000_1f07:
    and $a4
    cp $a4
    jp nz, Jump_000_2010

    ld a, [hl-]
    ld [$c1c9], a
    push hl
    ld d, h
    ld e, l
    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, c
    ld [$c1c5], a
    ld a, b
    ld [$c1c6], a
    ld hl, $0010
    add hl, de
    ld a, [hl]
    ld [$c15a], a
    ld l, a
    push hl
    ld a, [$c54b]
    ld l, a
    ld a, [$c54c]
    ld h, a
    ld d, h
    ld e, l
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    jr c, jr_000_1f5d

    ld h, $00
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    pop hl
    jp c, Jump_000_2010

    and a
    jp z, Jump_000_2010

    ld [$c159], a
    ld a, $7f
    ld [$c547], a
    jr jr_000_1f7f

jr_000_1f5d:
    ld a, [$c54d]
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c159], a
    pop hl
    jp c, Jump_000_2010

    and a
    jp z, Jump_000_2010

    cp $10
    jr nc, jr_000_1f7f

    ld a, $ff
    ld [$c547], a

jr_000_1f7f:
    ld d, h
    ld e, l
    ld hl, $0007
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $000f
    add hl, de
    ld l, [hl]
    push hl
    ld a, [$c156]

Call_000_1f91:
    ld l, a
    ld a, [$c157]
    ld h, a
    ld d, h
    ld e, l
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c217], a
    pop hl
    jr c, jr_000_1fb7

    ld h, $00
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr c, jr_000_2010

    ld a, $7f
    ld [$c546], a
    jr jr_000_1fcc

jr_000_1fb7:
    ld a, $ff
    ld [$c546], a
    ld hl, $0010
    add hl, de
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c217], a
    jr c, jr_000_2010

jr_000_1fcc:
    ld a, [$c1c8]
    and $10
    jr z, jr_000_1fda

    pop de
    push de
    call Call_000_201f
    jr jr_000_2004

jr_000_1fda:
    ld c, a
    ld a, [$c15a]
    cp $0f

Jump_000_1fe0:
    jr z, jr_000_2004

    ld a, c
    and $01
    jr nz, jr_000_1fee

    ld a, [$c547]
    and $80
    jr z, jr_000_1ff6

jr_000_1fee:
    ld a, [$c1c7]
    and a
    jr nz, jr_000_2004

    jr jr_000_2004

jr_000_1ff6:
    ld a, [$c15a]
    and $0f
    cp $0f
    jr z, jr_000_2004

    pop de

Jump_000_2000:
    push de
    call Call_000_38e6

jr_000_2004:
    pop de
    push de
    ld hl, $000d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3619

Jump_000_2010:
jr_000_2010:
    pop hl
    ld bc, $0018
    add hl, bc
    xor a
    ld [$c547], a
    pop af
    dec a
    jp nz, Jump_000_1efa

Jump_000_201e:
    ret


Call_000_201f:
    ld hl, $0011
    add hl, de
    ld a, [hl+]
    ld [$c1c3], a
    ld a, [hl]
    ld [$c1c4], a
    ld a, [$c159]
    cp $06
    jr c, jr_000_2046

    ld a, [$c1c3]
    ld [$c549], a
    xor a
    ld [$c570], a
    ld [$c563], a
    ld a, [$c546]
    ld [$c545], a
    ret


jr_000_2046:
    ld a, [$c547]
    bit 7, a
    jr nz, jr_000_2096

    ld a, [$c1c7]
    and a
    ret nz

    ld a, [$c543]
    cp $01
    jr z, jr_000_206c

    cp $04
    jr z, jr_000_206c

    ld a, [$c1c4]
    bit 7, a
    ret nz

    ld a, [$c548]
    and $7f
    ret nz

    jp Jump_000_38e6


jr_000_206c:
    ld a, [$c571]
    and a
    jr z, jr_000_207e

    bit 7, a

Jump_000_2074:
    ret z

    xor a
    ld [$c551], a
    ld a, $01
    ld [$c543], a

jr_000_207e:
    ld a, [$c1c5]
    ld l, a
    ld a, [$c1c6]
    ld h, a
    ld b, $00
    ld a, [$c15a]
    ld c, a
    add hl, bc
    ld a, l
    ld [$c154], a
    ld a, h
    ld [$c155], a
    ret


Jump_000_2096:
jr_000_2096:
    ld a, [$c571]
    bit 7, a
    ret nz

    ld a, [$c543]
    cp $04
    ret z

    ld a, [$c567]
    and a
    jr z, jr_000_20b4

    ld a, [$c1c4]
    bit 7, a
    jr nz, jr_000_20b4

    xor a
    ld [$c567], a
    ret


jr_000_20b4:
    ld a, [$c1c5]
    ld l, a
    ld a, [$c1c6]
    ld h, a
    ld bc, $0020
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c154], a
    ld a, h
    ld [$c155], a
    ld a, [$c1c3]
    ld [$c549], a
    ld a, [$c1c4]
    ld [$c54a], a
    ld a, $01
    ld [$c548], a
    ld a, [$c543]
    cp $01
    jr nz, jr_000_20e9

    xor a
    ld [$c543], a

jr_000_20e9:
    xor a
    ld [$c571], a
    ret


Call_000_20ee:
    ld a, [$c1d3]
    ld l, a
    ld a, [$c1d4]
    ld h, a
    xor a
    ld [$c140], a
    ld [$c1e9], a
    ld a, [$c1cf]
    ld c, a
    ld a, [$c1d0]
    ld b, a
    ld a, [$c1cb]
    and a
    ret z

Jump_000_210a:
    push af
    push bc
    push hl
    ld d, a
    ld a, [bc]
    ld e, a
    bit 7, a
    jp nz, Jump_000_224c

    ld a, d
    cp $05
    jp c, Jump_000_2308

    bit 6, e
    jp z, Jump_000_2308

    ld d, h
    ld e, l
    ld a, [de]
    cp $2c
    jp z, Jump_000_2308

    ld [$c168], a
    inc de
    inc de
    ld a, [de]
    dec de
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    ld [$c1dc], a
    ld a, h
    ld [$c1dd], a
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    call Call_000_235f
    push bc
    call Call_000_23ad
    ld a, [$c168]
    and $fe
    cp $50
    jr z, jr_000_2160

    cp $18
    jr nc, jr_000_2165

jr_000_2160:
    call Call_000_2380
    jr jr_000_2168

jr_000_2165:
    call Call_000_23cd

jr_000_2168:
    ld a, c

Jump_000_2169:
    and a
    pop bc
    jp z, Jump_000_2308

    ld b, a
    ld a, c
    and a
    jp z, Jump_000_2308

    or b
    and $0a
    cp $0a
    jr z, jr_000_217d

    jr jr_000_21a2

jr_000_217d:
    ld a, [$c168]
    and a
    jr z, jr_000_21a2

    cp $21
    jr z, jr_000_219a

Call_000_2187:
    cp $22
    jr z, jr_000_219a

    and $fe
    cp $50
    jr z, jr_000_219a

    ld a, [$c1e4]
    and a
    jr nz, jr_000_21a2

    jp Jump_000_2308


jr_000_219a:
    ld a, [$c164]
    and $80
    jp z, Jump_000_2308

jr_000_21a2:
    push de
    call Call_000_2493
    ld d, h
    ld e, l
    pop hl
    jp nz, Jump_000_2308

    push hl
    push bc
    ld a, [hl]
    call Call_000_24aa
    ld a, l
    ld [$c1b8], a
    ld a, h
    ld [$c1b9], a
    inc hl
    ld a, [hl]
    call Call_000_2419
    ld c, [hl]
    call Call_000_23ea
    pop bc
    pop hl
    jp c, Jump_000_2308

    ld [$c476], a
    ld a, $0f
    sub b
    ld [$c1d7], a
    ld c, [hl]
    ld a, [$c1b8]
    ld l, a
    ld a, [$c1b9]
    ld h, a
    ld a, [hl+]
    or $a0
    ld [de], a
    inc de
    inc de
    ld a, [$c140]
    ld [de], a
    inc de
    ld a, [hl+]
    ld c, a
    ld [de], a
    inc de
    push hl
    call Call_000_242d
    push hl
    ld a, [$c1b8]

Call_000_21f1:
    ld l, a
    ld a, [$c1b9]
    ld h, a
    ld bc, $0007
    add hl, bc
    ld a, [hl]
    push af
    ld a, [$c1dc]
    ld l, a
    ld a, [$c1dd]
    ld h, a
    pop af
    bit 7, a
    jr nz, jr_000_2216

    cp $11
    jr c, jr_000_2216

    ld bc, $0010
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a

jr_000_2216:
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    ld a, [$c1da]
    ld [de], a
    inc de
    ld a, [$c1db]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ld bc, $0005
    call Call_000_0913
    ld a, [hl+]
    and $7f
    ld [de], a
    inc de
    ld a, [$c1e9]
    inc a
    ld [$c1e9], a
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    jp Jump_000_2344


Jump_000_224c:
    and $3f
    call $7f93
    ld a, [$c13e]
    ld e, a
    ld a, [$c13f]
    ld d, a
    add hl, de
    ld a, l
    ld [$c1d5], a
    ld a, h
    ld [$c1d6], a
    ld a, [hl+]
    ld [$c168], a
    inc hl
    inc hl
    ld c, a
    ld a, [hl]
    cp $83
    jr nz, jr_000_2274

    ld a, $10
    or c
    ld [$c168], a

jr_000_2274:
    inc hl
    ld a, [hl+]
    add a
    ld [$c1b1], a
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld bc, $0008
    add hl, bc
    ld a, h
    call Call_000_235f
    ld b, c
    ld c, l
    ld a, [$c1b0]
    ld e, a
    ld d, $de
    ld a, c
    ld [de], a
    inc de
    pop hl
    inc hl
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    push bc
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, [$c168]
    and $10
    jr z, jr_000_22c0

    call Call_000_2380
    jr jr_000_22c3

jr_000_22c0:
    call Call_000_23cd

jr_000_22c3:
    ld a, c
    pop bc
    and a
    jr z, jr_000_231e

    ld c, a
    or b
    jr z, jr_000_231e

    and $0a
    cp $0a
    jr z, jr_000_22d6

    pop hl
    jp Jump_000_2308


jr_000_22d6:
    ld b, l
    dec de
    ld a, [de]
    ld c, a
    ld a, [$c1d5]
    ld l, a
    ld a, [$c1d6]
    ld h, a
    ld a, [hl]
    and $02
    pop hl
    jr z, jr_000_2308

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_22ec:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_2304

    add c
    ld [de], a
    inc e
    ld a, [hl+]
    add b
    ld [de], a
    inc e
    ld a, [$c1b1]
    add [hl]
    inc hl
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a

Jump_000_2301:
    inc e
    jr jr_000_22ec

jr_000_2304:
    ld a, e
    ld [$c1b0], a

Jump_000_2308:
jr_000_2308:
    pop hl
    inc hl
    inc hl
    inc hl
    ld a, [$c140]
    inc a
    ld [$c140], a
    pop bc

jr_000_2314:
    pop af
    inc bc
    dec a
    jp nz, Jump_000_210a

    ld [$c1e4], a
    ret


jr_000_231e:
    pop hl
    ld a, [$c1d5]
    ld l, a
    ld a, [$c1d6]
    ld h, a
    ld [hl], $00
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    cp $ff

Jump_000_232f:
    jr nz, jr_000_2335

    ld bc, $0013
    add hl, bc

jr_000_2335:
    ld c, [hl]
    call Call_000_2405
    pop hl
    inc hl
    inc hl
    inc hl
    pop bc
    ld a, [bc]
    and $7f
    ld [bc], a
    jr jr_000_2356

Jump_000_2344:
    pop hl
    inc hl
    inc hl
    inc hl
    pop bc
    push hl
    ld a, [bc]
    and $c0
    ld l, a
    ld a, [$c1d7]
    or l
    or $80
    ld [bc], a
    pop hl

jr_000_2356:
    ld a, [$c140]
    inc a
    ld [$c140], a
    jr jr_000_2314

Call_000_235f:
    ld c, $00
    ld a, h
    and a
    jr z, jr_000_2374

    cp $ff
    ret nz

    ld a, l
    cp $a8
    ret c

    cp $e0
    ld c, $04
    ret c

    ld c, $08
    ret


jr_000_2374:
    ld a, l
    cp $f8
    ret nc

    ld c, $04
    cp $b0
    ret nc

    ld c, $08
    ret


Call_000_2380:
    ld b, $e8
    ld a, [$c17c]
    cp $1a
    jr nz, jr_000_238b

    ld b, $c0

jr_000_238b:
    ld c, $00
    ld a, h
    cp $02
    jr c, jr_000_23a1

    cp $fe
    ret c

    cp $ff
    jr z, jr_000_239b

    inc c
    ret


jr_000_239b:
    inc c
    ld a, l
    cp b
    ret c

    inc c
    ret


jr_000_23a1:
    and a
    jr z, jr_000_23a6

    inc c
    ret


jr_000_23a6:
    inc c
    ld a, l
    cp $a8
    ret nc

    inc c
    ret


Call_000_23ad:
    ld a, [de]
    dec de
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ret


Call_000_23cd:
    ld c, $00
    ld a, h
    and a
    jr z, jr_000_23e0

    cp $ff
    ret nz

    ld a, l
    cp $b8
    ret c

    inc c
    cp $e8
    ret c

    inc c
    ret


jr_000_23e0:
    ld a, l
    cp $f0
    ret nc

Jump_000_23e4:
    inc c
    cp $b0
    ret nc

    inc c
    ret


Call_000_23ea:
    ld hl, $c115

jr_000_23ed:
    ld a, [hl]
    cp $ff
    jr nz, jr_000_23f4

    scf
    ret


jr_000_23f4:
    bit 7, a
    jr nz, jr_000_2401

    cp c
    jr nz, jr_000_2401

    or $80
    ld [hl+], a
    ld a, [hl]
    and a

Jump_000_2400:
    ret


Jump_000_2401:
jr_000_2401:
    inc hl
    inc hl
    jr jr_000_23ed

Call_000_2405:
    ld hl, $c115

jr_000_2408:
    ld a, [hl+]

Jump_000_2409:
    cp $ff

Call_000_240b:
    ret z

    ld a, [hl]
    cp c
    jr nz, jr_000_2416

    dec hl
    ld a, [hl]
    and $7f
    ld [hl], a
    ret


jr_000_2416:
    inc hl
    jr jr_000_2408

Call_000_2419:
    ld [$c161], a
    ld c, a
    xor a
    ld h, a
    ld l, c
    sla c
    rla
    sla c
    rla
    ld b, a
    add hl, bc
    ld bc, $2f27
    add hl, bc
    ret


Call_000_242d:
    call Call_000_2419
    ld a, [$c476]
    ld b, a
    ld [de], a
    inc de
    push de
    ld c, [hl]
    ld a, b
    call Call_000_2480
    ld d, b
    ld e, c
    push hl
    ld hl, $8000
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    call Call_000_2480
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld a, [$c144]
    push af
    ld a, $03
    ld [$c144], a
    ld [$2100], a
    ld a, [$c161]
    cp $28
    jr nz, jr_000_2466

    call Call_000_3a5a
    jr jr_000_2475

jr_000_2466:
    cp $a9
    jr c, jr_000_2472

    ld a, $01
    ld [$c144], a
    ld [$2100], a

jr_000_2472:
    call Call_000_091c

jr_000_2475:
    pop af
    ld [$c144], a
    ld [$2100], a
    pop hl
    inc hl
    pop de
    ret


Call_000_2480:
    ld c, a
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    ret


Call_000_2493:
    ld a, [$c13e]
    ld l, a
    ld a, [$c13f]
    ld h, a
    ld de, $0018
    ld b, $0f

jr_000_24a0:
    ld a, [hl]
    and $80
    ret z

    add hl, de
    dec b
    jr nz, jr_000_24a0

    dec b
    ret


Call_000_24aa:
    ld h, $40
    ld l, a
    ld a, [hl]

Call_000_24ae:
    cp $3b
    jr c, jr_000_24ca

    cp $3f
    jr nc, jr_000_24ca

    ld c, a
    ld a, [$c181]
    cp $01
    jr nz, jr_000_24c3

    ld a, c
    add $37
    jr jr_000_24ca

jr_000_24c3:
    cp $02
    ld a, c
    jr z, jr_000_24ca

    add $3b

jr_000_24ca:
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $2652
    add hl, bc
    ret


Call_000_24d5:
    ld a, [$c144]
    push af
    ld a, $06
    ld [$c144], a
    ld [$2100], a
    call $7fe3
    jp Jump_000_264a


Call_000_24e7:
Jump_000_24e7:
    ld a, c
    ld [$c574], a
    ld a, $20
    sub c
    ld [$c572], a
    push af

jr_000_24f2:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_24f2

    pop af

jr_000_24fb:
    ld a, [$c574]
    ld c, a

jr_000_24ff:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_24ff

    ld a, [hl+]
    xor $80
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_24ff

    push hl
    ld a, [$c572]
    ld l, a
    ld a, [$c573]
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    dec b
    jr nz, jr_000_24fb

    ret


Call_000_251e:
    ld a, [$c170]
    ld e, a
    ld a, [$c171]
    ld d, a
    ld a, [$c15d]
    ld l, a
    ld a, [$c15e]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, h
    or l
    jr z, jr_000_254a

    ld b, l
    ld h, $00
    ld l, h

jr_000_2546:
    add hl, de
    dec b
    jr nz, jr_000_2546

jr_000_254a:
    ld a, [$c15b]
    ld e, a
    ld a, [$c15c]
    ld d, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    add hl, de
    ld de, $c597
    add hl, de
    ret


Call_000_2568:
    ld hl, $c17c
    ld a, [hl+]
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    xor a
    ldh [rBGP], a
    call Call_000_10b5
    call $3a37
    call $7e7f
    call Call_000_1952
    call $7d18
    call Call_000_19ba
    ld a, $ff
    ld [$c1e4], a
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $54f5
    pop af
    ld [$c144], a
    ld [$2100], a
    ld a, $32
    ld [$c1c7], a
    ld a, [$c1a5]
    ld [$c196], a
    call Call_000_0f3a
    push af

jr_000_25ae:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_25ae

    pop af
    ld a, [$c14b]
    ldh [rBGP], a
    ret


Call_000_25bd:
    ld a, $1b
    ld [$c14b], a
    ldh [rBGP], a
    ld a, $38

Call_000_25c6:
    ldh [rOBP0], a
    ldh [rOBP1], a
    ret


Call_000_25cb:
    ld a, [$c477]
    ld c, a
    ld a, [$c147]
    ld b, a
    and c
    ld [$c477], a
    ret


Call_000_25d8:
    ld a, [$c144]
    push af
    ld a, $04
    ld [$c144], a
    ld [$2100], a
    ld hl, $7a53
    ld de, $9000
    call Call_000_3a5a
    ld bc, $0010
    call Call_000_091c
    jr jr_000_264a

Call_000_25f5:
    ld a, [$c144]
    push af
    call $7d32
    xor a
    ldh [rBGP], a
    ld a, $01
    ld [$c144], a
    ld [$2100], a
    call $7f4c
    ld a, $04

Call_000_260c:
    ld [$c144], a
    ld [$2100], a
    call $7813
    ld a, $03
    ld [$c144], a
    ld [$2100], a
    call $7f61
    jr jr_000_264a

Call_000_2622:
    ld hl, $52e3
    jr jr_000_262a

Call_000_2627:
    ld hl, $54d9

jr_000_262a:
    ld a, [$c144]
    push af
    ld a, $02

Call_000_2630:
    ld [$c144], a
    ld [$2100], a
    call $5352
    jr jr_000_264a

Call_000_263b:
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $5377

Jump_000_264a:
jr_000_264a:
    pop af
    ld [$c144], a
    ld [$2100], a
    ret


Jump_000_2652:
    ld b, $00
    add e
    ld l, h
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_2661

    dec b
    inc e
    ld l, l
    ld a, [de]
    ld [hl], $18

jr_000_2661:
    jr nz, jr_000_2669

    ld bc, $6413
    ld a, [de]
    ld [hl], $18

jr_000_2669:
    jr nz, jr_000_2671

    ld a, [bc]
    db $fc
    ld h, h
    ld a, [de]
    ld [hl], $18

jr_000_2671:
    jr nz, jr_000_2679

    rlca
    ld e, e
    ld h, h
    ld a, [de]
    ld [hl], $10

jr_000_2679:
    db $10
    ld [bc], a
    rrca
    and a
    ld l, $64
    ld a, [hl+]
    jr @+$22

    ld b, $01
    inc de
    ld h, h
    ld a, [de]
    ld [hl], $10
    db $10
    ld b, $99
    adc d
    ld h, h
    ld a, [de]
    ld [hl], $18
    jr nz, @+$08

    ret nc

    jp z, $636e

    db $76
    ld [$060f], sp
    pop de
    call nc, $b424
    ld [hl], d

jr_000_26a0:
    ld [$060f], sp
    nop
    ret c

    ld l, [hl]
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_26b1

    inc d
    call nc, $1a24
    ld [hl], $00

jr_000_26b1:
    nop
    ld b, $15
    call nc, $1a24
    ld [hl], $00
    nop
    ld b, $16
    call nc, $1a24
    ld [hl], $00
    nop
    ld b, $03
    dec e
    ld h, a
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_26d1

    sbc a
    ld e, b
    ld h, a
    ld a, [de]
    ld [hl], $18

jr_000_26d1:
    jr nz, jr_000_26d9

    ld l, h
    cp l
    ld l, h
    ld a, [de]
    ld [hl], $10

jr_000_26d9:
    db $10
    ld b, $6c
    add hl, hl
    ld l, e
    ld a, [de]
    ld [hl], $10
    db $10
    rlca
    inc e
    ld e, h
    ld h, c
    dec e
    ld [hl], $0c
    rra
    ld b, $24
    ld a, [hl]
    ld [$361a], sp
    db $10
    db $10
    ld b, $24
    ld e, h
    ld [$361a], sp
    db $10
    db $10
    ld b, $24
    ld [hl], c
    ld [$361a], sp

Jump_000_2700:
jr_000_2700:
    db $10

Call_000_2701:
    db $10
    rla
    jr z, jr_000_26a0

    dec l
    ld a, c
    dec l

Call_000_2708:
Jump_000_2708:
    ld b, b
    jr nz, jr_000_270d

    add hl, hl
    di

jr_000_270d:
    dec l
    ld a, [de]

Jump_000_270f:
    ld [hl], $00

Call_000_2711:
    nop
    ld b, $30
    nop
    nop
    ld a, [de]
    ld [hl], $00
    nop
    ld b, $32
    cp $6d
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_2729

    dec [hl]
    add h
    ld a, a
    ld a, [de]
    ld [hl], $10

jr_000_2729:
    db $10
    ld b, $36
    rst $38
    ld l, h
    ld a, [de]
    ld [hl], $10
    db $10
    inc b
    add hl, sp
    ld d, $7a
    ld a, [c]
    ld a, d
    jr z, jr_000_2772

    ld [bc], a
    scf
    cp e
    inc l
    ld h, h
    ld a, [hl+]
    nop
    nop
    ld [bc], a
    jr c, jr_000_2700

    inc l
    ld h, h
    ld a, [hl+]
    nop
    nop
    dec b
    add hl, sp
    adc e
    rlca
    ld a, [c]
    ld a, d
    jr z, jr_000_276a

    inc b
    add hl, sp
    ld a, [de]
    dec hl
    ld a, [c]
    ld a, d
    jr nz, jr_000_278a

    rlca
    dec a
    push hl
    dec hl
    call nc, $102b
    db $10
    rlca
    dec a
    pop hl
    dec hl
    call nc, $102b
    db $10

jr_000_276a:
    rlca
    dec a
    db $dd
    dec hl
    call nc, $102b
    db $10

jr_000_2772:
    rlca
    dec a
    reti


    dec hl
    call nc, $102b
    db $10
    rlca
    dec a
    push de
    dec hl
    call nc, $102b
    db $10
    ld b, $3b
    nop
    nop
    ld a, [de]
    ld [hl], $10
    db $10

jr_000_278a:
    ld b, $3c
    nop
    nop
    ld a, [de]
    ld [hl], $10
    db $10
    ld b, $3b
    nop
    nop
    ld a, [de]
    ld [hl], $10
    db $10
    inc b
    add hl, sp
    ld h, l
    ld a, [hl+]
    ld a, [c]
    ld a, d
    jr nz, jr_000_27c2

    ld b, $41
    sub b
    ld [$361a], sp
    db $10
    db $10
    ld b, $41
    sbc d
    ld [$361a], sp
    db $10
    db $10

jr_000_27b2:
    ld b, $41
    and d
    ld [$361a], sp
    db $10
    db $10
    inc de
    add hl, bc
    dec de
    ld a, a
    ld h, h
    ld a, [hl+]
    jr jr_000_27d2

jr_000_27c2:
    inc b
    add hl, sp
    jp $f27c


    ld a, d
    jr nc, jr_000_282a

    ld b, $46
    ld h, b
    dec l
    ld a, [de]
    ld [hl], $10
    db $10

jr_000_27d2:
    ld b, [hl]
    ld l, e
    pop af
    ld h, a
    ld a, [de]
    ld [hl], $10
    db $10

jr_000_27da:
    ld b, $4f
    ld e, h
    ld l, h
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_27e9

    ld d, a
    ld b, d
    ld l, l
    ld a, [de]
    ld [hl], $18

jr_000_27e9:
    jr nz, jr_000_27ec

    ld h, [hl]

jr_000_27ec:
    ld e, e
    scf
    ld h, h
    ld a, [hl+]
    db $10
    db $10
    ld b, $5d
    nop
    nop
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_2801

    ld a, c
    adc [hl]
    ld l, l
    ld a, [de]
    ld [hl], $18

jr_000_2801:
    db $10
    ld b, $72
    ld l, b
    ld l, l
    ld a, [de]
    ld [hl], $10
    db $10
    rlca
    ld h, a
    ld [hl], a
    ld h, l
    ld h, h
    ld a, [hl+]

Call_000_2810:
    jr jr_000_27b2

    rlca
    ld l, c
    db $fc
    ld h, l
    ld h, h
    ld a, [hl+]
    db $10
    rrca
    inc bc
    ld h, l
    add hl, de
    scf

Jump_000_281e:
    ld h, h
    ld a, [hl+]
    db $10
    db $10
    rlca
    ld h, h
    cp l
    ld l, e
    ld h, h
    ld a, [hl+]
    jr jr_000_284a

jr_000_282a:
    rla
    ld h, e
    jr z, jr_000_289a

    ld h, h
    ld a, [hl+]
    jr jr_000_27d2

    rla
    ld h, e
    ld b, d
    ld l, h
    ld h, h
    ld a, [hl+]
    jr jr_000_27da

    rra
    ld h, e
    cp l
    ld l, e
    ld h, h
    ld a, [hl+]
    jr @-$5e

    rra
    ld h, e
    rst $10
    ld l, e
    ld h, h
    ld a, [hl+]
    jr @-$5e

jr_000_284a:
    ld b, $75
    or h
    ld l, l
    ld h, h
    ld a, [hl+]
    db $10
    db $10
    ld b, [hl]
    ld l, e
    inc bc
    ld l, b
    ld a, [de]
    ld [hl], $10
    db $10
    rlca
    ld l, e
    call nc, $1a24
    ld [hl], $10
    db $10
    ld bc, $603d
    ld [hl], $64
    ld a, [hl+]
    db $10
    db $10
    ld b, $7f
    ld c, [hl]
    ld h, e
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_287a

    add l
    dec [hl]
    ld h, h
    ld h, h
    ld a, [hl+]
    jr jr_000_289a

jr_000_287a:
    ld b, [hl]
    add e
    pop bc
    ld h, d
    ld a, [de]
    ld [hl], $10
    db $10
    ld b, [hl]
    add e
    ret


    ld h, d
    ld a, [de]
    ld [hl], $10
    db $10
    inc bc
    add h
    ld e, $37
    ld h, h

Call_000_288f:
    ld a, [hl+]
    db $10
    db $10
    rlca
    dec a
    ld h, $65
    ld h, h
    ld a, [hl+]
    db $10
    db $10

jr_000_289a:
    ld bc, $703d
    ld [hl], $64
    ld a, [hl+]
    db $10
    db $10
    ld bc, $833d
    ld [hl], $1a
    ld [hl], $10
    db $10
    dec b
    dec a
    sub h
    ld [hl], $1a
    ld [hl], $10
    db $10
    ld b, $8d
    or b
    ld h, h
    ld a, [de]
    ld [hl], $10
    jr nz, jr_000_28c1

    sub e
    jp hl


    ld h, h
    ld a, [de]
    ld [hl], $18

jr_000_28c1:
    jr nz, @+$09

    ld l, d
    call nc, $6424
    ld a, [hl+]
    ld [$0608], sp
    and c
    sbc [hl]
    ld h, a
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_28d9

    and e
    nop
    nop
    ld a, [de]
    ld [hl], $08

jr_000_28d9:
    ld [$a406], sp
    pop bc
    ld l, b
    ld a, [de]
    ld [hl], $10
    db $10
    ld b, $a6
    call nc, Call_000_1a68
    ld [hl], $10
    db $10
    rlca
    db $10
    rst $20
    ld l, b
    ld h, h
    ld a, [hl+]
    jr jr_000_2902

    ld b, $11
    db $ec
    ld l, b
    ld h, h
    ld a, [hl+]
    jr @+$12

    ld b, $12
    ld e, h
    ld l, c
    ld h, h
    ld a, [hl+]
    db $10
    db $10

jr_000_2902:
    ld b, $14
    push hl

Jump_000_2905:
    ld l, c
    ld a, [de]

Call_000_2907:
    ld [hl], $10
    jr nz, jr_000_2911

    cp a
    inc a
    ld l, d
    ld a, [de]
    ld [hl], $18

jr_000_2911:
    jr nz, jr_000_2919

    or c
    ld [bc], a
    ld l, d
    ld a, [de]
    ld [hl], $18

jr_000_2919:
    jr nz, jr_000_2921

    cp c
    ld h, d
    ld l, d
    ld a, [de]
    ld [hl], $18

jr_000_2921:
    jr nz, jr_000_2929

    jp z, $6a9b

    ld a, [de]
    ld [hl], $18

jr_000_2929:
    jr nz, jr_000_2931

    call $6aae
    ld a, [de]
    ld [hl], $18

jr_000_2931:
    jr nz, jr_000_2939

    jp nc, Jump_000_2652

    ld h, h
    ld a, [hl+]
    db $10

jr_000_2939:
    db $10
    ld b, $d5
    ld d, d
    ld h, $64
    ld a, [hl+]
    db $10
    db $10
    ld b, $ab
    ld d, d
    ld h, $64
    ld a, [hl+]
    db $10
    db $10
    ld b, $ae
    ld d, d
    ld h, $64
    ld a, [hl+]
    db $10
    db $10
    ld d, $d8
    ld b, d
    ld l, h
    ld h, h
    ld a, [hl+]
    jr jr_000_296a

    ld b, $d9
    ld d, d
    ld h, $1a
    ld [hl], $18
    jr nz, jr_000_2969

    ld sp, $2652
    ld a, [de]
    ld [hl], $10

jr_000_2969:
    db $10

jr_000_296a:
    ld b, $fd
    ld d, d
    ld h, $64
    ld a, [hl+]
    db $10
    db $10
    ld b, $fd
    ld d, d
    ld h, $64
    ld a, [hl+]
    db $10
    db $10
    ld b, $fd
    ld d, d
    ld h, $64
    ld a, [hl+]
    db $10
    db $10
    ld b, $fd
    ld d, d
    ld h, $1a
    ld [hl], $10
    db $10
    ld b, $19
    ld d, d
    ld h, $1a

Jump_000_298f:
    ld [hl], $18
    jr nz, jr_000_2999

    add hl, de
    ld d, d

Call_000_2995:
    ld h, $1a
    ld [hl], $18

jr_000_2999:
    jr nz, jr_000_29a1

    nop
    ld d, d
    ld h, $1a
    ld [hl], $10

jr_000_29a1:
    db $10
    ld b, $00
    ld d, d
    ld h, $1a
    ld [hl], $10
    db $10
    ld b, $00
    ld d, d
    ld h, $1a
    ld [hl], $10
    db $10
    ld b, $cf
    add d
    ld l, h
    ld a, [de]
    ld [hl], $18
    jr nz, jr_000_29c1

    rst $08
    add d
    ld l, h
    ld a, [de]
    ld [hl], $18

jr_000_29c1:
    jr nz, jr_000_29c9

    ld a, [c]
    add d
    ld l, h
    ld a, [de]
    ld [hl], $18

jr_000_29c9:
    jr nz, jr_000_29cc

    ld h, [hl]

jr_000_29cc:
    ld d, [hl]
    scf
    ld h, h
    ld a, [hl+]
    db $10
    db $10
    ld b, $41
    ldh [$6e], a
    ld a, [de]
    ld [hl], $10
    db $10
    ld b, $41
    rst $08
    ld l, [hl]
    ld a, [de]
    ld [hl], $10
    db $10
    rla
    ld c, $28
    ld l, h
    ld h, h
    ld a, [hl+]
    jr jr_000_29fa

    rla
    ld c, $42
    ld l, h
    ld h, h
    ld a, [hl+]
    jr jr_000_2a02

    rra
    ld c, $bd
    ld l, e
    ld h, h
    ld a, [hl+]
    jr jr_000_2a0a

jr_000_29fa:
    rra
    ld c, $d7

Jump_000_29fd:
    ld l, e
    ld h, h
    ld a, [hl+]
    jr jr_000_2a12

Call_000_2a02:
jr_000_2a02:
    rla
    inc b

Jump_000_2a04:
    jr z, @+$6e

    ld h, h
    ld a, [hl+]
    jr jr_000_2a1a

jr_000_2a0a:
    rla
    inc b
    ld b, d
    ld l, h
    ld h, h
    ld a, [hl+]
    jr jr_000_2a22

Jump_000_2a12:
jr_000_2a12:
    rra
    inc b
    cp l
    ld l, e
    ld h, h
    ld a, [hl+]
    jr jr_000_2a2a

jr_000_2a1a:
    rra
    inc b
    rst $10
    ld l, e
    ld h, h
    ld a, [hl+]
    jr jr_000_2a32

jr_000_2a22:
    dec b
    add hl, sp
    xor e
    ld b, d
    ld a, [c]

Call_000_2a27:
    ld a, d
    ld b, b
    ld b, b

jr_000_2a2a:
    dec b
    jp nc, $7cf3

    add hl, bc
    ld l, $10
    rrca

jr_000_2a32:
    rla
    inc b
    db $eb
    ld a, h
    inc b
    ld a, l
    jr jr_000_2a4a

Call_000_2a3a:
Jump_000_2a3a:
    ld hl, $0004
    add hl, de
    ld c, [hl]
    call Call_000_2405

Jump_000_2a42:
    ld hl, $0000
    add hl, de
    ld a, [hl]
    push af

Jump_000_2a48:
    and $7f

jr_000_2a4a:
    ld [hl+], a
    inc hl
    ld c, [hl]
    ld b, $00
    ld a, [$c1cf]
    ld l, a
    ld a, [$c1d0]
    ld h, a
    add hl, bc
    pop af
    bit 6, a

Jump_000_2a5b:
    ld c, $7f
    ld a, [hl]
    jr nz, jr_000_2a62

    ld c, $3f

jr_000_2a62:
    and c
    ld [hl], a
    ret


    push de
    call $4184
    call Call_000_04e2
    pop de
    ld a, [$c10f]
    ld l, a
    ld a, [$c110]
    ld h, a
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    ld a, l
    cpl
    ld [$c1d8], a
    ld bc, $0040
    add hl, bc
    push hl
    ld a, [$c10d]
    ld l, a
    ld a, [$c10e]
    ld h, a
    ld a, l
    ld [$c1dc], a
    ld a, h
    ld [$c1dd], a
    ld a, l
    cpl
    ld [$c1d9], a
    ld bc, $0028
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $0005
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c1c1]
    bit 7, a
    jr nz, jr_000_2ab8

    and a
    jr nz, jr_000_2ac7

jr_000_2ab8:
    inc hl
    inc hl
    inc hl
    ld [hl], $16
    inc hl
    ld [hl], $2d
    push bc
    push de
    pop bc
    pop de
    jp $7a65


jr_000_2ac7:
    ld a, [$c111]
    and a
    ret z

    xor a
    ld [$c111], a
    ld a, [$c10d]
    ld l, a
    ld a, [$c10e]
    ld h, a
    ld bc, $0038
    add hl, bc
    ld a, l
    ld [$c1dc], a
    ld a, h
    ld [$c1dd], a
    ld a, [$c10f]
    ld l, a
    ld a, [$c110]
    ld h, a
    ld bc, $0018
    add hl, bc
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    push hl
    ld a, $2b
    call Call_000_06ed
    ld a, $2c
    call Call_000_06ed

Jump_000_2b03:
    pop hl
    ld bc, $0060
    add hl, bc
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    ld a, $2a

Jump_000_2b12:
    call Call_000_06ed
    ld a, $2b
    jp Jump_000_06ed


    push de
    call $4184
    call Call_000_04e2
    pop de
    ld a, [$c111]
    ld c, a
    ld a, [$c112]
    or c
    jr nz, jr_000_2b34

    ld a, [$c1e3]
    add $04
    ld [$c1e3], a

jr_000_2b34:
    push de
    ld a, [$c10f]
    ld l, a
    ld a, [$c110]
    ld h, a
    ld bc, $0020
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c1da], a
    ld a, h
    ld [$c1db], a
    ld a, l
    cpl
    ld [$c1d8], a
    ld a, [$c10d]
    ld l, a
    ld a, [$c10e]
    ld h, a
    push hl
    ld bc, $00a0
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c1dc], a
    ld a, h
    ld [$c1dd], a
    ld a, l
    cpl
    ld [$c1d9], a
    pop hl
    ld bc, $0000
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld b, h
    ld c, l
    ld hl, $0005
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld de, $0050
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c1c1]
    bit 7, a
    jr nz, jr_000_2b96

    and a
    jr nz, jr_000_2ba6

jr_000_2b96:
    inc hl
    inc hl
    inc hl
    ld [hl], $16
    inc hl
    ld [hl], $2d
    push bc
    push de
    pop bc
    pop de
    pop hl
    jp $7a65


jr_000_2ba6:
    pop de
    ld hl, $0011
    add hl, de
    ld a, [hl]
    dec a
    ld [hl], a
    ret nz

    ld a, $0a
    ld [hl+], a
    ld a, [hl]
    inc a
    cp $04
    jr c, jr_000_2bb9

    xor a

jr_000_2bb9:
    ld [hl], a
    and a
    jp z, Jump_000_0585

    cp $01
    jp z, Jump_000_058a

    cp $02
    jp z, Jump_000_058f

    cp $03
    jp z, Jump_000_058a

    ret


Call_000_2bce:
    add $40

Call_000_2bd0:
    ld h, $c0
    ld l, a
    ld a, [hl]
    ret


    ld c, $c0
    jr jr_000_2be7

    ld c, $a0
    jr jr_000_2be7

    ld c, $80
    jr jr_000_2be7

    ld c, $60
    jr jr_000_2be7

    ld c, $40

jr_000_2be7:
    ld hl, $0012
    add hl, de
    ld [hl], c
    ld bc, $2bf2
    jp $6346


    ld a, [$c111]
    and a
    jr z, jr_000_2c06

    ld a, [$c1ea]
    add $04
    cp $d7
    jr nc, jr_000_2c17

    ld [$c1ea], a
    jr jr_000_2c17

jr_000_2c06:
    ld a, [$c112]
    and a
    jr z, jr_000_2c17

    ld a, [$c1ea]
    dec a
    cp $8c
    jr c, jr_000_2c17

    ld [$c1ea], a

jr_000_2c17:
    ld a, [$c141]
    and $01
    jr z, jr_000_2c25

    ld hl, $0000
    add hl, de
    ld [hl], $00
    ret


jr_000_2c25:
    ld hl, $0011
    add hl, de
    ld a, [hl]
    sub $01
    ld [hl], a
    jr nc, jr_000_2c31

    ld [hl], $06

jr_000_2c31:
    inc hl
    ld c, [hl]
    ld a, [$c1e3]
    add c
    push af
    call Call_000_2bd0
    ld hl, $0005
    add hl, de
    push hl
    call Call_000_2c73
    ld a, [$c10d]
    ld l, a
    ld a, [$c10e]
    ld h, a
    add hl, bc
    ld bc, $0019
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    pop af
    push hl
    call Call_000_2bce
    call Call_000_2c73
    ld a, [$c10f]
    ld l, a
    ld a, [$c110]
    ld h, a
    add hl, bc
    ld bc, $0058
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Call_000_2c73:
    sra a
    ld b, $00
    bit 7, a
    jr z, jr_000_2c7c

    dec b

jr_000_2c7c:
    ld c, a
    ld hl, $0000
    ld a, [$c1ea]

jr_000_2c83:
    add hl, bc
    dec a
    jr nz, jr_000_2c83

    ld b, $08

jr_000_2c89:
    sra h
    rr l
    dec b
    jr nz, jr_000_2c89

    ld b, h
    ld c, l
    ret


Call_000_2c93:
    push de
    ld h, $00
    ld l, a
    and $80
    jr z, jr_000_2c9c

    dec h

jr_000_2c9c:
    ld a, [$c1ea]

Call_000_2c9f:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l
    dec a
    jr z, jr_000_2cae

jr_000_2caa:
    add hl, de
    dec a
    jr nz, jr_000_2caa

jr_000_2cae:
    ld a, h
    sra a
    ld c, a
    ld b, $00
    and $80
    jr z, jr_000_2cb9

    dec b

jr_000_2cb9:
    pop de
    ret


    ld a, $ff
    ld [$c180], a
    ld hl, $0012
    add hl, de
    ld a, [hl]
    inc a
    ld [hl], a
    cp $32
    jr c, jr_000_2cde

    ld hl, $0000
    add hl, de
    ld [hl], $00
    ld hl, $0004
    add hl, de
    ld c, [hl]
    call Call_000_2405
    xor a
    ld [$c180], a
    ret


jr_000_2cde:
    and $03
    ret nz

    push de
    ld hl, $0030
    call Call_000_0a47
    push af
    ld a, [$c1fa]
    ld c, a
    ld a, [$c1fb]
    ld b, a
    pop af
    add hl, bc
    ld b, h
    ld c, l
    pop de
    ld hl, $0005
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    push hl
    ld hl, $0030
    call Call_000_0a47

Jump_000_2d05:
    ld a, [$c1f8]
    ld c, a
    ld a, [$c1f9]
    ld b, a
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ret


    call Call_000_0670
    ld c, a
    ld a, [$c141]
    or c
    ld [$c141], a
    ld a, $ff
    ld [$c21b], a
    ld a, [$c17c]
    cp $22
    jr z, jr_000_2d33

    cp $21
    jr z, jr_000_2d33

    jr jr_000_2d37

jr_000_2d33:
    ld hl, $c1a5
    inc [hl]

jr_000_2d37:
    xor a
    ld [$c1b6], a
    ld hl, $0000
    add hl, de
    ld [hl], $00
    ld hl, $0004
    add hl, de
    ld c, [hl]
    call Call_000_2405
    ld hl, $0011
    add hl, de
    ld [hl], $32
    ld c, $0c
    call Call_000_3da4
    ld a, [$c1a5]
    ld [$c196], a
    call Call_000_0f3a
    jp Jump_000_0470


    call $6d0f
    call $7f5d
    ld hl, $00b0
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jp c, Jump_000_2a3a

    ld b, $46
    ld c, $4a
    jp Jump_000_2e47


    ld bc, $2d9c
    call $6346
    inc hl
    ld [hl], $9b
    inc hl
    ld [hl], $2d
    ld hl, $0011
    add hl, de
    ld [hl], $02
    inc hl
    ld [hl], $00
    ld hl, $0001
    add hl, de
    ld a, [hl]
    or $08
    ld [hl], a
    ld a, $02
    ld [$c569], a
    ret


    call $7f66

Call_000_2d9f:
    ld a, c
    and $1f
    jr nz, jr_000_2dd1

    push de
    push bc
    push hl
    ld hl, $0030
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [$c1da], a
    ld a, b
    ld [$c1db], a
    dec hl
    ld b, [hl]
    dec hl
    ld c, [hl]
    push hl
    ld hl, $ffe8
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [$c1dc], a
    ld a, b
    ld [$c1dd], a
    ld a, $17
    call Call_000_06ed
    pop bc
    pop de

jr_000_2dd1:
    ld a, c
    and $0f
    ret nz

    call Call_000_2e65
    ld bc, $0004
    add hl, bc
    call Call_000_0cee
    ret z

    ld bc, $24d4
    call $6346
    xor a
    ld [$c569], a
    ld hl, $0011
    add hl, de
    ld [hl], $00
    inc hl
    ld [hl], $00
    call $7f53
    ld a, c
    and $07
    ret nz

    ld hl, $0003
    add hl, de
    ld a, [hl]
    inc a
    cp $30
    jp nc, Jump_000_2a3a

    ld [hl], a
    jp Jump_000_2eb4


    ld a, [$c569]
    ld [$c1c3], a
    xor a
    ld [$c1c4], a
    ld a, [$c159]
    cp $06
    ret nc

    ld a, [$c547]
    and $80
    jp nz, Jump_000_2096

    ret


    xor a
    ld [$c1f6], a
    ld bc, $615c
    jp $6346


    ld bc, $24d4
    ld a, $0d
    call $6346
    ld hl, $0003
    add hl, de
    ld [hl], a
    call Call_000_2eb4
    scf
    ret


Call_000_2e3e:
    ld a, [$c141]
    and $04
    ret z

    jp Jump_000_2a3a


Call_000_2e47:
Jump_000_2e47:
    ld hl, $0011
    add hl, de
    ld a, [hl]
    sub $01
    ld [hl], a
    ret nc

    ld [hl], $06
    ld hl, $0003
    add hl, de
    ld a, [hl]
    inc a
    cp c
    push af
    jr c, jr_000_2e5d

    ld a, b

jr_000_2e5d:
    ld [hl], a
    push de
    call Call_000_2eb4
    pop de
    pop af
    ret


Call_000_2e65:
    push de
    ld hl, $0005
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld d, h
    ld e, l
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    ld a, c
    and $fe
    ld c, a
    ld a, [$c16c]
    ld l, a
    ld a, [$c16d]
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld h, d
    ld l, e
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    add hl, bc
    pop de
    ret


Jump_000_2ea8:
    ld hl, $000b
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $0003
    add hl, de
    ld [hl], a

Call_000_2eb4:
Jump_000_2eb4:
    ld h, d
    ld l, e
    push hl
    push hl
    ld bc, $0004
    add hl, bc
    ld c, [hl]
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    ld hl, $8000
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld bc, $0003
    add hl, bc
    ld a, [hl]
    call Call_000_2419
    ld c, [hl]
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    inc hl
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld a, [$c144]
    push af
    ld a, $03
    ld [$c144], a
    ld [$2100], a
    ld a, [$c161]
    cp $ac
    jr c, jr_000_2f0f

    ld a, $01
    ld [$c144], a
    ld [$2100], a

jr_000_2f0f:
    call Call_000_091c
    pop af
    ld [$c144], a
    ld [$2100], a
    pop hl
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    ld de, $0009
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    ld b, $d5
    ld c, c
    jp c, $0634

    ld [hl], l
    ld c, e
    ld b, e
    inc [hl]
    ld b, $35
    ld c, h
    ld b, e
    inc [hl]
    inc b
    ld d, l
    ld l, c
    ld [hl], b
    inc sp
    ld [bc], a
    ld d, l
    ld e, l
    ld e, h
    inc [hl]
    ld b, $b5
    ld c, l
    sbc e
    inc [hl]
    ld b, $55
    ld c, [hl]
    sbc e
    inc [hl]
    inc b
    ld [hl], l
    ld c, d
    pop hl
    dec [hl]
    inc b
    push af
    ld c, d
    pop hl
    dec [hl]
    ld [bc], a
    ret nz

    ld b, a
    inc de
    inc [hl]
    ld b, $d5
    ld l, h
    ld b, e
    inc [hl]
    ld b, $95
    ld l, l
    ld b, e
    inc [hl]
    ld b, $55
    ld l, [hl]
    ld b, e
    inc [hl]
    ld b, $00
    ld b, l
    ld a, [hl+]
    inc [hl]
    ld [bc], a
    ld d, l
    ld e, l
    ld e, h
    inc [hl]
    ld b, $f5
    ld c, h
    ld b, e
    inc [hl]
    inc b
    ld [hl], l
    ld h, e
    ret nz

    inc sp
    inc b
    ld [hl], l
    ld h, e
    db $eb
    inc sp
    ld [bc], a
    push de
    ld h, e
    call nz, $0233
    push de
    ld h, e
    ld hl, $0634
    dec d
    ld h, h
    ld b, [hl]
    inc sp
    ld b, $15
    ld h, h
    ld e, a
    inc sp
    ld b, $d5
    ld l, h
    add d
    inc [hl]
    ld b, $95
    ld l, l
    add d
    inc [hl]
    ld b, $55
    ld l, [hl]
    add d
    inc [hl]
    ld b, $f5
    ld [hl], a
    ld b, [hl]
    inc sp
    ld b, $75
    ld a, b
    ld b, e
    inc [hl]
    ld b, $35
    ld a, c
    ld b, [hl]
    inc sp
    ld b, $00
    ld b, c
    ld b, e
    inc [hl]
    ld b, $c0
    ld b, c
    ld b, e
    inc [hl]
    ld b, $80
    ld b, d
    ld b, e
    inc [hl]
    ld b, $40
    ld b, e
    ld b, e
    inc [hl]
    ld b, $00
    ld b, c
    add d
    inc [hl]
    ld b, $c0
    ld b, c
    add d
    inc [hl]
    ld b, $80
    ld b, d
    add d
    inc [hl]
    ld b, $40
    ld b, e
    add d
    inc [hl]
    ld [bc], a
    nop
    ld b, b
    call nz, $0233
    ld b, b
    ld b, b
    call nz, $0233
    add b
    ld b, b
    call nz, $0233
    ret nz

    ld b, b
    call nz, Call_000_1433
    ld b, b
    ld c, b
    ld c, h
    dec [hl]
    ld [bc], a
    ld [hl], l
    ld h, l
    call nz, $0233
    or l
    ld h, l
    call nz, $0233
    push af
    ld h, l
    call nz, $0233
    dec [hl]
    ld h, [hl]
    call nz, $0233
    ld [hl], l
    ld h, [hl]
    call nz, $0233

Call_000_300e:
    or l
    ld h, [hl]
    call nz, $0233
    push af
    ld h, [hl]
    call nz, $0233
    sub l
    ld l, b
    call nz, $0233
    sub l
    ld l, b
    ld hl, $0634
    push de
    ld e, c
    ld b, e
    inc [hl]
    ld b, $95
    ld e, d
    ld b, e
    inc [hl]
    ld b, $55
    ld e, e
    ld b, e
    inc [hl]
    ld [bc], a
    nop
    ld b, [hl]
    call nz, $0233
    add b
    ld b, [hl]
    call nz, $0633
    nop
    ld b, h
    ld b, e
    inc [hl]
    ld [bc], a
    ret nz

    ld b, h
    call nz, $0233
    ret nz

    ld b, a
    call nz, $0233
    nop
    ld c, b
    call nz, $0233
    ld b, b
    ld c, b
    call nz, $0233
    add b
    ld c, b
    call nz, $0233
    push de
    ld l, b
    call nz, $0233
    dec d
    ld l, c
    call nz, $0233
    dec [hl]
    ld l, c
    inc de
    inc [hl]
    ld [bc], a
    push af
    ld l, b
    call nz, $0233
    push af
    ld h, d
    inc de
    inc [hl]
    ld [bc], a
    dec d
    ld h, e
    call nz, $0233
    ld d, l
    ld h, e
    inc de
    inc [hl]
    ld [bc], a
    dec d
    ld h, e
    ld hl, $0434
    ld bc, $5c6b
    inc [hl]
    ld [bc], a
    nop
    ld c, b
    call nz, $0233
    nop
    ld c, b
    ld hl, sp+$33
    ld [bc], a
    nop
    ld c, b
    ld bc, $0234
    nop
    ld c, b
    ld hl, $0634
    push de
    ld e, c
    add d
    inc [hl]
    ld b, $95
    ld e, d
    add d
    inc [hl]
    ld b, $55
    ld e, e
    add d
    inc [hl]
    ld b, $15
    ld e, h
    ld b, e
    inc [hl]
    ld b, $15
    ld e, h
    add d
    inc [hl]
    ld b, $b5
    ld d, h
    ld b, e
    inc [hl]
    ld b, $75
    ld d, l
    ld b, e
    inc [hl]
    ld b, $35
    ld d, [hl]
    ld b, e
    inc [hl]
    ld b, $f5
    ld d, [hl]
    ld b, e
    inc [hl]
    ld b, $b5
    ld d, h
    add d
    inc [hl]
    ld b, $75
    ld d, l
    add d
    inc [hl]
    ld b, $35
    ld d, [hl]
    add d
    inc [hl]
    ld b, $f5
    ld d, [hl]
    add d
    inc [hl]
    ld b, $75
    ld d, d
    ld b, e
    inc [hl]
    ld b, $35
    ld d, e
    ld b, e
    inc [hl]
    ld b, $f5
    ld d, e
    ld b, e
    inc [hl]
    ld b, $75
    ld d, d
    add d
    inc [hl]
    ld b, $35
    ld d, e
    add d
    inc [hl]
    ld b, $f5
    ld d, e
    add d
    inc [hl]
    ld b, $d5
    ld l, c
    ld b, e
    inc [hl]
    ld b, $95
    ld l, d

Call_000_3100:
    ld b, e
    inc [hl]
    ld b, $55
    ld l, e
    or e
    inc sp
    ld b, $d5
    ld l, c
    add d
    inc [hl]
    ld b, $95
    ld l, d
    add d
    inc [hl]
    ld b, $55
    ld l, e
    add d
    inc [hl]
    ld b, $95
    ld d, b
    ld b, e
    inc [hl]
    ld b, $55
    ld d, c
    ld l, c
    inc [hl]
    rlca
    or l
    ld c, a
    ret z

    inc sp
    rlca
    ld [hl], l
    ld e, b
    ret z

    inc sp
    ld b, $b5
    ld d, a
    ld l, c
    inc [hl]
    rlca
    ld [hl], l
    ld e, b
    ret z

    inc sp
    ld [bc], a
    dec d
    ld d, d
    call nz, $0133
    ld d, l
    ld d, d
    ret z

    inc sp
    ld [bc], a
    ld [hl], l

Jump_000_3140:
    ld c, a
    call nz, $0233
    push af
    ld c, [hl]
    call nz, $0233
    dec [hl]
    ld c, a
    call nz, $0233
    push af
    ld c, [hl]
    ld hl, $0234
    dec [hl]
    ld c, a
    ld hl, $0234
    push de
    ld h, h
    call nz, $0233
    dec d
    ld h, l
    call nz, $0233
    push de
    ld h, h
    ld hl, $0234
    dec d
    ld h, l
    ld hl, $0234
    ld d, l
    ld h, l
    call nz, $0233
    push de
    ld e, h
    call nz, $0233
    dec d
    ld e, l
    ld bc, $0234
    dec d
    ld e, l
    ld hl, $0234
    dec d
    ld e, l
    call nz, Call_000_0333
    dec [hl]
    ld h, a
    ret nz

    inc sp
    inc bc
    sub l
    ld h, a
    ret nz

    inc sp
    inc bc
    push af
    ld h, a
    ret nz

    inc sp
    inc bc
    dec [hl]
    ld h, a
    db $eb
    inc sp
    inc bc
    sub l
    ld h, a
    db $eb
    inc sp
    inc bc
    push af
    ld h, a
    db $eb
    inc sp
    ld b, $15
    ld l, a
    ld b, e
    inc [hl]
    ld b, $d5
    ld l, a
    ld b, e
    inc [hl]
    ld b, $95
    ld [hl], b
    ld b, e
    inc [hl]
    ld b, $55
    ld [hl], c
    ld b, e
    inc [hl]
    ld [bc], a
    sub l
    ld l, h
    call nz, Call_000_0733
    or l
    ld l, e
    ret z

    inc sp
    ld b, $f5
    ld [hl], h
    ld b, e
    inc [hl]
    ld b, $b5
    ld [hl], l
    ld b, e
    inc [hl]
    ld b, $75
    db $76
    ld b, e
    inc [hl]
    ld b, $35
    ld [hl], a
    ld b, e
    inc [hl]
    ld b, $f5
    ld [hl], h
    add d
    inc [hl]
    ld b, $b5
    ld [hl], l
    add d
    inc [hl]
    ld b, $75
    db $76
    add d
    inc [hl]
    ld b, $35
    ld [hl], a
    add d
    inc [hl]
    ld b, $35
    ld e, a
    rst $28
    inc [hl]

Call_000_31ed:
Jump_000_31ed:
    ld b, $b5
    ld e, a
    rst $28
    inc [hl]
    ld b, $35
    ld h, b
    rst $28
    inc [hl]
    ld b, $35
    ld e, a
    ld [hl+], a
    dec [hl]
    ld b, $b5
    ld e, a
    ld [hl+], a
    dec [hl]
    ld b, $35
    ld h, b
    ld [hl+], a
    dec [hl]
    ld b, $b5
    ld [hl], d
    ld b, e
    inc [hl]
    ld b, $75
    ld [hl], e
    ld b, e
    inc [hl]
    ld b, $35
    ld [hl], h
    ld b, e
    inc [hl]
    ld b, $b5
    ld [hl], d
    add d
    inc [hl]
    ld b, $75
    ld [hl], e
    add d
    inc [hl]

Call_000_321f:
    ld b, $35
    ld [hl], h
    add d
    inc [hl]
    ld b, $b5
    ld h, b
    ld b, e
    inc [hl]
    ld b, $75
    ld h, c
    ld b, e
    inc [hl]
    ld b, $35
    ld h, d
    ld b, e
    inc [hl]
    ld b, $b5
    ld h, b
    add d
    inc [hl]
    ld b, $75
    ld h, c
    add d

Call_000_323c:
    inc [hl]
    ld b, $35
    ld h, d
    add d
    inc [hl]
    ld b, $95
    ld e, l
    ld b, e
    inc [hl]
    ld b, $55
    ld e, [hl]
    ld b, e
    inc [hl]
    ld b, $95
    ld e, l
    add d
    inc [hl]
    ld b, $55
    ld e, [hl]
    add d
    inc [hl]
    ld bc, $5f15
    ret z

    inc sp
    ld [bc], a
    ld d, l
    ld e, c
    call nz, $0233
    sub l
    ld e, c
    call nz, $0233
    ld d, l
    ld e, c
    ld hl, $0234
    sub l
    ld e, c
    ld hl, $0634
    or l
    ld c, l
    or b
    inc [hl]
    ld b, $55
    ld c, [hl]
    or b
    inc [hl]
    ld b, $61
    ld l, h
    add d
    inc [hl]
    ld [bc], a
    ld h, c
    ld [hl], b
    call nz, $0233
    and c
    ld [hl], b
    call nz, $0233
    pop hl
    ld [hl], b
    call nz, $0233
    ld h, c
    ld [hl], b
    ld hl, $0234
    and c
    ld [hl], b
    ld hl, $0234
    pop hl
    ld [hl], b
    ld hl, $0634
    pop hl
    ld h, b
    ld b, e
    inc [hl]
    ld b, $a1
    ld h, c
    ld b, e
    inc [hl]
    ld b, $01
    ld h, d
    ld b, e
    inc [hl]
    ld b, $61
    ld h, d
    ld b, e
    inc [hl]
    ld b, $e1
    ld h, b
    add d
    inc [hl]
    ld b, $a1
    ld h, c
    add d
    inc [hl]
    ld b, $01
    ld h, d
    add d
    inc [hl]
    ld b, $61
    ld h, d
    add d
    inc [hl]
    ld b, $a1
    ld h, c
    ld b, e
    inc [hl]
    ld b, $61
    ld h, d

Call_000_32cc:
    ld b, e
    inc [hl]
    ld b, $21
    ld h, e
    ld b, e
    inc [hl]
    ld b, $a1
    ld h, c
    add d
    inc [hl]
    ld b, $61
    ld h, d
    add d
    inc [hl]
    ld b, $21
    ld h, e
    add d
    inc [hl]
    ld b, $a1
    ld h, h
    ld b, e
    inc [hl]
    ld b, $61
    ld h, l
    ld b, e
    inc [hl]
    ld b, $a1
    ld h, h
    ld b, e
    inc [hl]
    ld b, $61
    ld h, l
    ld b, e
    inc [hl]
    ld b, $a1
    ld h, h
    add d
    inc [hl]
    ld b, $61
    ld h, l
    add d
    inc [hl]
    ld b, $a1

Call_000_3302:
    ld h, h
    add d

Call_000_3304:
    inc [hl]
    ld b, $61
    ld h, l
    add d
    inc [hl]
    ld b, $21
    ld h, [hl]
    ld b, e
    inc [hl]
    ld b, $e1
    ld h, [hl]
    ld b, e
    inc [hl]
    ld b, $01
    ld l, b
    ld b, e

Call_000_3318:
    inc [hl]
    ld b, $21
    ld h, [hl]
    add d
    inc [hl]
    ld b, $e1
    ld h, [hl]
    add d
    inc [hl]
    ld b, $01
    ld l, b
    add d
    inc [hl]
    ld b, $a1
    ld h, a
    ld b, e
    inc [hl]
    ld b, $61
    ld l, b
    ld b, e
    inc [hl]
    ld [bc], a
    adc d
    ld a, a
    call nz, $0133
    ld e, h
    ld c, h
    rla
    inc [hl]
    ld bc, $4e1c
    inc de
    inc [hl]
    ld [bc], a
    ret nz

    ld c, d
    call nz, Call_000_0033
    nop
    nop
    nop
    nop
    ld [$0002], sp
    nop
    stop
    jr nz, jr_000_3363

    nop
    inc b
    nop
    db $10
    ld [$0006], sp
    db $10
    db $10
    inc b
    jr nz, @+$01

    nop
    nop
    nop
    nop

jr_000_3363:
    nop
    ld [$2000], sp
    stop
    ld [bc], a
    nop
    db $10
    ld [$2002], sp
    rst $38
    nop
    nop

Call_000_3372:
    nop
    nop
    nop
    ld [$0002], sp
    nop
    stop
    jr nz, jr_000_338d

    nop
    inc b
    nop
    db $10
    ld [$0006], sp
    db $10
    db $10
    inc b
    jr nz, @+$01

    nop
    nop
    nop
    nop

jr_000_338d:
    nop
    ld [$0002], sp
    db $10
    ld hl, sp+$04
    nop
    stop
    ld b, $00
    db $10
    ld [$0008], sp
    db $10
    db $10
    ld a, [bc]
    nop
    rst $38
    jr nz, @-$06

    nop
    nop
    jr nz, jr_000_33a8

jr_000_33a8:
    ld [bc], a
    nop
    jr nz, @+$0a

    inc b
    nop
    jr nz, jr_000_33c0

    ld b, $00
    rst $38
    stop
    nop
    nop
    db $10
    ld [$0002], sp
    db $10
    db $10
    inc b
    nop
    rst $38

jr_000_33c0:
    nop
    db $10
    inc b
    nop
    nop
    ld [$0002], sp
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc b
    nop
    nop
    ld [$0006], sp
    stop
    nop
    nop
    db $10
    ld [$0002], sp
    rst $38
    stop
    inc b
    jr nz, jr_000_33f3

    ld [$2002], sp
    db $10
    stop
    jr nz, @+$01

    nop
    nop
    inc b
    jr nz, jr_000_33f0

jr_000_33f0:
    ld [$2002], sp

jr_000_33f3:
    nop
    stop
    jr nz, @+$01

    nop
    nop
    nop
    ld b, b
    nop
    ld [$4002], sp
    rst $38
    nop
    ld [$6000], sp
    nop
    nop
    ld [bc], a
    ld h, b
    rst $38
    nop
    ld [$201c], sp
    nop
    nop
    inc e
    nop
    rst $38
    nop
    ld [$2000], sp
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc c
    nop
    rst $38
    nop
    ld [$2000], sp
    nop
    nop
    ld [bc], a
    jr nz, @+$01

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    db $10
    ld hl, sp+$06
    nop
    stop
    ld [$1000], sp
    ld [$000a], sp
    rst $38
    nop
    nop
    nop
    nop
    nop

Call_000_3448:
    ld [$0002], sp
    nop
    db $10
    inc b
    nop
    stop
    ld b, $00
    db $10
    ld [$0008], sp
    db $10
    db $10
    ld a, [bc]
    nop
    rst $38
    nop
    inc b
    nop
    nop
    nop
    inc c
    ld [bc], a
    nop
    nop
    inc d
    nop
    jr nz, @+$01

    nop
    inc b
    nop
    nop
    nop
    inc c
    ld [bc], a
    nop
    nop
    inc d
    inc b
    nop
    db $10
    inc b
    ld b, $00
    db $10
    inc c
    ld [$1000], sp
    inc d
    ld a, [bc]
    nop
    rst $38
    nop
    nop
    inc b
    jr nz, jr_000_3487

jr_000_3487:
    ld [$2002], sp
    nop
    stop
    jr nz, jr_000_349f

    nop
    ld a, [bc]
    jr nz, jr_000_34a3

    ld [$2008], sp
    db $10
    db $10
    ld b, $20
    rst $38
    nop
    nop
    nop
    nop

jr_000_349f:
    nop
    ld [$0002], sp

jr_000_34a3:
    db $10
    ld hl, sp+$04
    nop
    stop
    ld b, $00
    db $10
    ld [$0008], sp
    rst $38
    nop
    nop
    ld [bc], a
    jr nz, jr_000_34b5

jr_000_34b5:
    ld [$2000], sp
    stop
    ld [$1020], sp
    ld [$2006], sp
    db $10
    db $10
    inc b
    jr nz, @+$01

    ld [$00f8], sp
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    stop
    ld b, $00
    db $10
    ld [$0008], sp
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    stop
    ld b, $00
    db $10
    ld [$0008], sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp
    stop
    inc b
    nop
    db $10
    ld [$0006], sp
    rst $38
    nop
    nop
    ld [bc], a
    jr nz, jr_000_3505

jr_000_3505:
    ld [$2000], sp
    stop
    inc b
    nop
    db $10
    ld [$0006], sp
    rst $38
    nop
    ld [$0002], sp
    nop
    nop
    nop
    nop
    db $10
    ld [$2004], sp
    stop
    ld b, $20
    rst $38
    nop
    nop
    ld [bc], a
    jr nz, jr_000_3527

jr_000_3527:
    ld [$2000], sp
    stop
    ld b, $20
    db $10
    ld [$2004], sp
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    nop
    stop
    jr nz, jr_000_3554

    nop
    ld b, $00
    db $10
    ld [$2006], sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp

jr_000_3554:
    nop
    db $10
    inc b
    nop
    nop
    jr jr_000_3561

    nop
    nop
    jr nz, jr_000_3567

    nop
    nop

jr_000_3561:
    jr z, @+$0c

    nop
    nop
    jr nc, @+$0e

jr_000_3567:
    nop
    nop
    jr c, jr_000_3579

    nop
    stop
    stop
    db $10
    ld [$0012], sp
    db $10
    db $10
    inc d
    nop
    db $10

jr_000_3579:
    jr @+$18

    nop
    db $10
    jr nz, jr_000_3597

    nop
    db $10
    jr z, jr_000_359d

    nop
    db $10
    jr nc, @+$1e

    nop
    db $10
    jr c, jr_000_35a9

    nop
    ldh a, [$30]
    jr nz, jr_000_3590

jr_000_3590:
    ldh a, [$38]
    ld [hl+], a
    nop
    rst $38
    nop
    nop

jr_000_3597:
    nop
    nop
    nop
    ld [$0002], sp

jr_000_359d:
    stop
    inc b
    nop
    db $10
    ld [$0006], sp
    ld [$0810], sp
    nop

jr_000_35a9:
    rst $38
    ld [$08f8], sp
    jr nz, jr_000_35af

jr_000_35af:
    ld [$2000], sp
    nop
    nop
    ld [bc], a
    jr nz, jr_000_35c7

    ld [$2004], sp
    stop
    ld b, $20
    rst $38
    ld [$00f8], sp
    nop
    nop
    nop
    ld [bc], a
    nop

jr_000_35c7:
    nop
    ld [$0004], sp
    stop
    ld b, $00
    rst $38
    nop
    ld hl, sp+$04
    jr nz, jr_000_35d5

jr_000_35d5:
    nop
    ld [bc], a
    jr nz, jr_000_35e9

    nop
    ld b, $20
    ld [$0008], sp
    jr nz, @+$01

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop

jr_000_35e9:
    ld hl, sp+$08
    inc b
    nop
    ld [$0608], sp
    nop
    rst $38

Call_000_35f2:
    ld a, [$c13e]
    ld l, a
    ld a, [$c13f]
    ld h, a
    ld a, $0f

jr_000_35fc:
    push af
    push hl
    ld a, [hl]
    and $80
    jr z, jr_000_360f

    ld d, h
    ld e, l
    ld bc, $000b
    add hl, bc

Jump_000_3609:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3619

jr_000_360f:
    pop hl
    ld bc, $0018
    add hl, bc
    pop af
    dec a
    jr nz, jr_000_35fc

    ret


Call_000_3619:
    jp hl


Call_000_361a:
Jump_000_361a:
    call $7f9e

Call_000_361d:
    ld a, [$c547]
    and $80
    ret z

    ld hl, $c543
    ld a, [hl]
    cp $03
    ret z

    ld a, [$c147]
    and $01
    ld a, $01
    jr z, jr_000_3635

    ld a, $04

jr_000_3635:
    ld [hl], a
    ld a, $08
    ld [$c551], a
    ret


    ld hl, $0011

Call_000_363f:
    add hl, de
    ld a, [hl]
    dec a
    jr nz, jr_000_364f

    ld hl, $0017
    add hl, de
    ld c, [hl]
    call Call_000_2405
    jp Jump_000_2a42


jr_000_364f:
    ld [hl], a
    cpl
    srl a
    srl a
    and $03
    ld b, $07
    add b
    ld hl, $0004
    add hl, de
    ld [hl], a
    ret


    ld a, [$c166]
    ld [$c167], a
    call Call_000_36a6
    ret nc

    call Call_000_36fc
    jp Jump_000_3957


    ld a, [$c166]
    add $80
    cpl
    ld [$c167], a
    call Call_000_36a6
    ret nc

    call Call_000_36fc
    jp Jump_000_3957


    ld a, [$c166]
    add a
    ld [$c167], a
    call Call_000_36a6
    ret nc

    call Call_000_36fc
    jp Jump_000_3957


    ld a, [$c166]
    cpl
    add a
    ld [$c167], a
    call Call_000_36a6
    ret nc

    call Call_000_36fc
    jp Jump_000_3957


Call_000_36a6:
    push de
    ld a, $01
    call $7258
    ld a, b
    bit 7, a
    jr z, jr_000_36bc

    cp $fe
    jr c, jr_000_36f9

    ld a, c
    cp $d8
    jr c, jr_000_36f9

    jr jr_000_36c4

jr_000_36bc:
    and a
    jr nz, jr_000_36f9

    ld a, c
    cp $c0
    jr nc, jr_000_36f9

jr_000_36c4:
    ld a, d
    and a
    jr z, jr_000_36d3

    cp $ff
    jr nz, jr_000_36f9

    ld a, e
    cp $c0
    jr c, jr_000_36f9

    jr jr_000_36d8

jr_000_36d3:
    ld a, e
    cp $a0
    jr nc, jr_000_36f9

jr_000_36d8:
    ld hl, $c249
    call $72af
    pop de
    push de
    push hl
    ld a, $02
    call $7258
    pop hl
    call $72af
    pop de
    push de
    push hl
    ld a, $03
    call $7258
    pop hl
    call $72af
    pop de
    scf
    ret


jr_000_36f9:
    pop de
    and a
    ret


Call_000_36fc:
    ld a, $03
    jp Jump_000_3839


    ld a, [$c165]
    ld [$c167], a

Call_000_3707:
    call $6218
    call Call_000_36a6
    ret nc

    ld a, $02
    call Call_000_37e1
    call $7220
    jp Jump_000_38a5


    ld bc, $62a6
    jr jr_000_3721

    ld bc, $3701

jr_000_3721:
    push bc
    ld hl, $0005
    add hl, de
    ld c, [hl]
    push hl
    inc hl
    ld b, [hl]
    ld hl, $0010
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld c, [hl]
    push hl
    inc hl
    ld b, [hl]
    ld a, [$c181]
    cp $04
    ld hl, $0004
    jr z, jr_000_3746

    ld hl, $000c

jr_000_3746:
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $000b
    add hl, de
    pop bc
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    ld bc, $377e
    jr jr_000_375e

    ld bc, $378c

jr_000_375e:
    push bc
    ld hl, $0007
    add hl, de

Jump_000_3763:
    ld c, [hl]
    inc hl
    ld b, [hl]
    push hl
    ld a, [$c181]
    ld hl, $001a
    cp $02
    jr z, jr_000_3773

    ld l, $04

jr_000_3773:
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld [hl], b
    dec hl
    ld [hl], c
    pop bc
    jp $6346


    ld a, [$c164]
    cpl
    ld [$c167], a
    jr jr_000_378f

Jump_000_3787:
    ld a, [$c165]
    jr jr_000_378f

    ld a, [$c164]

jr_000_378f:
    ld [$c167], a
    push de
    ld a, $01
    call $7258
    ld a, b
    and $80
    ld a, c
    jr z, jr_000_37a5

    ld a, c
    cp $dd
    jr c, jr_000_37df

    jr jr_000_37a9

jr_000_37a5:
    cp $d0
    jr nc, jr_000_37df

jr_000_37a9:
    ld hl, $c249
    call $72af
    pop de
    push de
    push hl
    ld a, $02
    call $7258
    pop hl
    call $72af
    pop de
    push de
    push hl
    ld a, $03
    call $7258
    pop hl
    call $72af
    pop de
    push de
    push hl
    ld a, $04
    call $7258
    pop hl
    call $72af
    pop de
    ld a, $03
    call Call_000_37e1
    call $7220
    jp Jump_000_38a5


jr_000_37df:
    pop de
    ret


Call_000_37e1:
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    add a
    ld [$c1ed], a
    ld hl, $0005
    add hl, de
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld e, l
    pop hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld hl, $c249
    ld a, [$c1b0]
    ld d, $de
    ld e, a
    pop af

jr_000_381f:
    push af
    ld a, [hl+]
    add $08
    ld c, a
    ld [de], a
    inc de
    ld a, [hl+]
    ld b, a
    ld [de], a

Jump_000_3829:
    inc de
    ld a, [$c1ed]
    ld [de], a
    inc de
    ld a, $00
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_000_381f

    jr jr_000_38a0

Jump_000_3839:
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    add a
    ld [$c1ed], a
    ld hl, $0005
    add hl, de
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld e, l
    pop hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a

Jump_000_386a:
    ld a, h
    sbc b
    ld h, a
    ld hl, $c249
    ld a, [$c1b0]
    ld d, $de
    ld e, a
    pop af

jr_000_3877:
    push af
    ld a, [hl+]
    add $08
    ld c, a

Jump_000_387c:
    ld [de], a
    inc de
    ld a, [hl+]
    ld b, a
    ld [de], a
    inc de
    ld a, [$c1ed]
    ld [de], a
    inc de
    ld a, $00
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    ld a, b
    add $08
    ld [de], a
    inc de
    ld a, [$c1ed]
    ld [de], a
    inc de
    ld a, $20
    ld [de], a

Call_000_389b:
    inc de
    pop af
    dec a
    jr nz, jr_000_3877

Jump_000_38a0:
jr_000_38a0:
    ld a, e
    ld [$c1b0], a
    ret


Jump_000_38a5:
    ld a, [$c207]
    ld l, a
    ld a, [$c208]
    ld h, a
    ld b, [hl]
    inc hl
    ld a, [hl]
    sub $08
    ld c, a
    ld a, [$c15f]
    ld e, a
    ld a, [$c160]
    ld d, a
    ld a, e
    sub c
    jr c, jr_000_38c6

    ld a, $18
    add c
    cp e
    ret c

    jr jr_000_38cb

jr_000_38c6:
    ld a, $10
    add e
    cp c
    ret c

jr_000_38cb:
    ld a, d
    sub b
    jr c, jr_000_38e1

    ld a, $20
    ld a, [$c543]
    cp $02
    ld a, $20
    jr nz, jr_000_38dc

    srl a

jr_000_38dc:
    add b
    cp d
    ret c

    jr jr_000_38e6

jr_000_38e1:
    ld a, $20
    add d
    cp b
    ret c

Call_000_38e6:
Jump_000_38e6:
jr_000_38e6:
    ld a, [$c543]
    cp $03
    ret z

    ld a, [$c1c7]
    and a
    ret nz

    ld hl, $0003
    add hl, de
    ld a, [hl]
    cp $39
    jr nz, jr_000_38ff

    ld a, [$c1b6]
    and a
    ret nz

jr_000_38ff:
    ld a, [$c1b4]
    ld c, a
    ld a, [$c1b5]
    or c
    ret nz

    ld a, [$c56e]
    cp $03
    jr nc, jr_000_3919

    ld hl, $c196
    ld a, [hl]
    and a
    ret z

    dec [hl]
    call Call_000_0f3a

jr_000_3919:
    ld a, $32
    ld [$c1c7], a
    ld hl, $c56e
    ld [hl], $02
    inc hl
    ld [hl], $fe
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld c, $02
    call Call_000_3da4
    ld a, [$c196]
    and a
    ret nz

    ld a, $03
    ld [$c543], a
    ld c, $11
    call Call_000_3da4
    xor a
    ld [$c1c7], a
    ld a, [$c144]
    push af

Call_000_3946:
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    ld hl, $54f1
    call $5352
    jp Jump_000_264a


Jump_000_3957:
    ld hl, $c249
    ld a, [$c15f]
    ld e, a
    ld a, [$c160]
    ld d, a
    ld a, $03

jr_000_3964:
    push af
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld a, e
    sub c
    jr c, jr_000_3975

    ld a, $10
    add c
    cp e
    jr c, jr_000_399c

    jr jr_000_397b

jr_000_3975:
    ld a, $10
    add e
    cp c
    jr c, jr_000_399c

jr_000_397b:
    ld a, d
    sub b
    jr c, jr_000_3992

    ld a, [$c543]
    cp $02
    ld a, $20
    jr nz, jr_000_398a

    srl a

jr_000_398a:
    add b
    cp d
    jr c, jr_000_399c

    pop af
    jp Jump_000_38e6


jr_000_3992:
    ld a, $10
    add d
    cp b
    jr c, jr_000_399c

    pop af
    jp Jump_000_38e6


jr_000_399c:
    pop af
    dec a
    jr nz, jr_000_3964

    ret


    or e
    add hl, sp
    pop bc
    add hl, sp
    rst $08
    add hl, sp
    sbc $39
    db $ec
    add hl, sp
    db $fc
    add hl, sp
    ld a, [bc]
    ld a, [hl-]
    ld a, [de]
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    rlca
    rlca
    rlca
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $ff01
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $02ff
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    ld b, $ff
    inc d
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
    rst $38
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    rst $38
    rlca
    rlca
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $06ff
    ld b, $06
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_3a14:
    ld [bc], a
    ld bc, $0101
    ld bc, $07ff
    rlca
    rlca
    ld b, $06
    ld b, $02
    ld [bc], a
    rst $38
    ld b, $06
    inc b
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
    ld bc, $faff
    db $fc
    pop bc
    and $7f
    ld hl, $39a1
    ld c, a
    ld b, $00
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c115
    ld c, $13

jr_000_3a4b:
    ld a, [de]
    cp $ff
    jr nz, jr_000_3a52

    ld [hl], a
    ret


jr_000_3a52:
    inc de
    ld [hl+], a
    ld [hl], c
    inc hl
    add c
    ld c, a
    jr jr_000_3a4b

Call_000_3a5a:
    ld bc, $0012
    add hl, bc
    scf
    ld a, [hl+]
    adc a
    add a
    jp Jump_000_3b0c


jr_000_3a65:
    ld a, [hl+]
    adc a
    jp Jump_000_3aae


jr_000_3a6a:
    ld a, [hl+]
    adc a
    jp Jump_000_3ab3


jr_000_3a6f:
    ld a, [hl+]
    adc a
    jp Jump_000_3ab8


jr_000_3a74:
    ld a, [hl+]
    adc a
    jp Jump_000_3ac7


jr_000_3a79:
    ld a, [hl+]
    adc a
    jp Jump_000_3a83


jr_000_3a7e:
    ld c, $04

jr_000_3a80:
    add a
    jr z, jr_000_3a79

Jump_000_3a83:
    rl b
    dec c
    jr nz, jr_000_3a80

    push af
    ld a, $03
    add b
    add a
    ld c, a

jr_000_3a8e:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3a8e

    ld a, [hl+]
    ld [de], a
    inc de

jr_000_3a97:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3a97

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3a8e

    pop af
    jp Jump_000_3b0c


jr_000_3aa7:
    ld a, [hl+]
    adc a
    jr c, jr_000_3b27

jr_000_3aab:
    add a
    jr z, jr_000_3a65

Jump_000_3aae:
    rl c
    add a
    jr z, jr_000_3a6a

Jump_000_3ab3:
    jr nc, jr_000_3ac4

    add a
    jr z, jr_000_3a6f

Jump_000_3ab8:
    dec c
    push hl
    ld h, a
    ld a, c
    adc a
    ld c, a
    cp $09
    ld a, h
    pop hl
    jr z, jr_000_3a7e

Jump_000_3ac4:
jr_000_3ac4:
    add a
    jr z, jr_000_3a74

Jump_000_3ac7:
    jr nc, jr_000_3ae3

    add a
    jr nz, jr_000_3ace

    ld a, [hl+]
    adc a

jr_000_3ace:
    rl b
    add a
    jr nz, jr_000_3ad5

    ld a, [hl+]
    adc a

jr_000_3ad5:
    jr c, jr_000_3b41

    inc b
    dec b
    jr nz, jr_000_3ae3

    inc b

Jump_000_3adc:
    add a
    jr nz, jr_000_3ae1

    ld a, [hl+]
    adc a

jr_000_3ae1:
    rl b

jr_000_3ae3:
    push af
    ld a, e
    sub [hl]
    push hl
    ld l, a
    ld a, d
    sbc b
    ld h, a
    dec hl

jr_000_3aec:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3aec

    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3aec

    pop hl
    inc hl
    pop af
    jr jr_000_3b0c

jr_000_3afd:
    ld a, [hl+]
    adc a
    jr c, jr_000_3b1f

jr_000_3b01:
    push af

jr_000_3b02:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3b02

    ld a, [hl+]
    ld [de], a
    inc de
    pop af

Jump_000_3b0c:
jr_000_3b0c:
    add a
    jr c, jr_000_3b1d

    push af

jr_000_3b10:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3b10

    ld a, [hl+]
    ld [de], a
    inc de
    pop af
    add a
    jr nc, jr_000_3b01

jr_000_3b1d:
    jr z, jr_000_3afd

jr_000_3b1f:
    ld bc, $0002
    add a
    jr z, jr_000_3aa7

    jr nc, jr_000_3aab

jr_000_3b27:
    add a
    jr z, jr_000_3b54

Jump_000_3b2a:
    jr nc, jr_000_3ae3

    inc c
    add a
    jr z, jr_000_3b59

Jump_000_3b30:
    jr nc, jr_000_3ac4

    ld c, [hl]
    inc hl
    inc c
    dec c
    jr z, jr_000_3b5e

    push af
    ld a, c
    add $08
    ld c, a
    pop af
    jp Jump_000_3ac4


jr_000_3b41:
    add a
    jr nz, jr_000_3b46

    ld a, [hl+]
    adc a

jr_000_3b46:
    rl b
    set 2, b
    add a
    jr nz, jr_000_3b4f

    ld a, [hl+]
    adc a

jr_000_3b4f:
    jr c, jr_000_3ae3

    jp Jump_000_3adc


jr_000_3b54:
    ld a, [hl+]
    adc a
    jp Jump_000_3b2a


jr_000_3b59:
    ld a, [hl+]
    adc a
    jp Jump_000_3b30


jr_000_3b5e:
    add a
    jr nz, jr_000_3b63

    ld a, [hl+]
    adc a

jr_000_3b63:
    jr c, jr_000_3b0c

    ret


Call_000_3b66:
    ld a, [$c144]
    push af
    ld a, $06
    ld [$c144], a
    ld [$2100], a
    ld hl, $4000
    ld de, $8800
    call Call_000_3a5a
    jp Jump_000_264a


Call_000_3b7e:
Jump_000_3b7e:
jr_000_3b7e:
    ld a, [de]
    inc de
    bit 7, a
    jr z, jr_000_3ba1

    cp $fe
    jr z, jr_000_3bf6

    cp $ff
    ret z

    and $7f
    ld c, a
    ld a, [de]
    inc de
    ld h, $00
    ld b, $00
    add a
    add a
    add a
    ld l, a
    add hl, hl
    add hl, hl
    add hl, bc
    ld bc, $9800
    add hl, bc
    jr jr_000_3bec

jr_000_3ba1:
    cp $30
    jr c, jr_000_3bad

    cp $3a
    jr nc, jr_000_3bad

    add $6b
    jr jr_000_3bdb

jr_000_3bad:
    cp $3f
    jr nz, jr_000_3bb5

    ld a, $a8
    jr jr_000_3bdb

jr_000_3bb5:
    cp $40
    jr nz, jr_000_3bbb

    ld a, $89

jr_000_3bbb:
    cp $2d
    jr nz, jr_000_3bc1

    ld a, $8c

jr_000_3bc1:
    cp $2e
    jr nz, jr_000_3bc7

    ld a, $86

jr_000_3bc7:
    cp $2c
    jr nz, jr_000_3bcd

    ld a, $87

jr_000_3bcd:
    cp $27
    jr nz, jr_000_3bd3

    ld a, $8f

jr_000_3bd3:
    cp $20
    jr nz, jr_000_3bd9

    ld a, $60

jr_000_3bd9:
    add $20

jr_000_3bdb:
    ld c, a
    ld a, [$c19e]
    ld l, a
    ld a, [$c19f]
    ld h, a

jr_000_3be4:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3be4

    ld a, c
    ld [hl+], a

jr_000_3bec:
    ld a, l
    ld [$c19e], a
    ld a, h
    ld [$c19f], a
    jr jr_000_3b7e

jr_000_3bf6:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c0d
    ld de, $c190
    call Call_000_3b7e
    pop de
    jp Jump_000_3b7e


Call_000_3c0d:
    ld de, $c190
    push de

Jump_000_3c11:
    ld bc, $2710
    call Call_000_3c3e
    ld bc, $03e8
    call Call_000_3c3e
    ld bc, $0064
    call Call_000_3c3e
    ld c, $0a
    call Call_000_3c3e
    ld a, l
    call Call_000_3c50
    pop de
    ld c, $00

jr_000_3c2f:
    ld a, [de]
    cp $30
    ret nz

    ld a, $2e
    ld [de], a
    inc de
    inc c
    ld a, $03
    cp c
    jr nc, jr_000_3c2f

    ret


Call_000_3c3e:
    ld a, $ff

jr_000_3c40:
    inc a
    ld [$c1e5], a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, [$c1e5]
    jr nc, jr_000_3c40

    add hl, bc

Call_000_3c50:
    add $30
    ld [de], a

Jump_000_3c53:
    inc de
    ret


Call_000_3c55:
    ld a, [$c562]
    and a
    ret nz

    ld a, c
    or $08
    ld [$c477], a
    ld a, [$c17c]
    cp $1d
    jr c, jr_000_3c6a

    cp $23
    ret c

Call_000_3c6a:
jr_000_3c6a:
    call Call_000_0905
    call Call_000_0a3a
    call $ff80
    ld a, [$c144]
    push af
    ld a, $06
    ld [$c144], a
    ld [$2100], a
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    call Call_000_3b66
    call Call_000_0469
    ld a, $07
    ld [$c144], a
    ld [$2100], a
    ld de, $74b9
    call Call_000_3b7e
    call $7b3e
    ld de, $c23c
    call z, Call_000_3b7e
    call $7c93
    ld a, [$c17c]
    ld [$c215], a
    ld de, $7530
    call Call_000_3b7e
    push af

jr_000_3cb1:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_3cb1

    pop af
    ld a, $1b
    ldh [rBGP], a

jr_000_3cbe:
    call Call_000_08bd
    call Call_000_25cb
    and $08
    jr nz, jr_000_3cbe

    ld a, b
    and $08
    jr z, jr_000_3cbe

    ld a, c
    or $08
    ld [$c477], a
    call Call_000_0905
    ld a, [$c1e6]
    ld a, a
    ld [$c144], a
    ld [$2100], a
    ld a, [$c1e7]
    ld l, a
    ld a, [$c1e8]
    ld h, a
    ld de, $8800
    call Call_000_3a5a
    pop af
    ld [$c144], a
    ld [$2100], a
    jp Jump_000_19ba


Jump_000_3cf8:
    ld a, [$c144]
    push af
    ld a, [$c181]
    ld [$c144], a
    ld [$2100], a
    ld a, $14
    ld de, $c500
    ld bc, $c514

jr_000_3d0d:
    push af
    push bc
    ld a, [de]
    cp $e0
    jr c, jr_000_3d22

    and $1f
    ld c, a
    ld b, $00
    ld hl, $c21c
    add hl, bc
    ld a, [hl]
    and $7f
    jr jr_000_3d2f

jr_000_3d22:
    ld l, a
    ld a, [$c185]
    ld c, a
    ld a, [$c186]
    ld b, a
    ld h, $00
    add hl, bc
    ld a, [hl]

jr_000_3d2f:
    ld l, a
    cp $21
    jr c, jr_000_3d39

    cp $2b
    jr nc, jr_000_3d39

    xor a

jr_000_3d39:
    ld [de], a
    ld a, l
    cp $10
    jr z, jr_000_3d6d

    jr c, jr_000_3d6e

    cp $80

Call_000_3d43:
    jr nz, jr_000_3d4c

    ld a, $02
    ld [de], a
    ld a, $80
    jr jr_000_3d6e

jr_000_3d4c:
    jr nc, jr_000_3d6a

    cp $5d
    jr c, jr_000_3d6e

    cp $5f
    jr nc, jr_000_3d6e

    jr jr_000_3d64

    cp $5e
    jr z, jr_000_3d64

    jr jr_000_3d6d

    cp $5d
    jr z, jr_000_3d64

    jr jr_000_3d6d

jr_000_3d64:
    ld a, $02
    ld [de], a
    pop bc
    jr jr_000_3d6f

jr_000_3d6a:
    ld [de], a
    jr jr_000_3d6e

jr_000_3d6d:
    xor a

jr_000_3d6e:
    pop bc

jr_000_3d6f:
    ld [bc], a
    inc bc
    inc de

Call_000_3d72:
    pop af
    dec a
    jr nz, jr_000_3d0d

    jp Jump_000_264a


Call_000_3d79:
    di
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $4000
    pop af
    ld [$c144], a
    ld [$2100], a
    ei
    ret


Call_000_3d92:
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    call $4010
    jp Jump_000_264a


Call_000_3da4:
Jump_000_3da4:
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    ld a, c
    push hl
    push de
    call $4096
    pop de
    pop hl
    jp Jump_000_264a


Call_000_3dbb:
Jump_000_3dbb:
    ld a, [$c144]
    push af
    ld a, $02
    ld [$c144], a
    ld [$2100], a
    ld a, c
    call $403c
    jp Jump_000_264a


Call_000_3dce:
    ld a, [$c55e]
    and a
    ret z

    ld a, [$c551]
    cp $07
    jr nz, jr_000_3ddf

    push de
    call Call_000_3e26
    pop de

jr_000_3ddf:
    call Call_000_3dec
    ld a, b
    add $20
    ld b, a
    ld hl, $340a
    jp Jump_000_0ae2


Call_000_3dec:
    ld a, [$c20f]
    ld l, a
    ld a, [$c210]
    ld h, a
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h

Jump_000_3e00:
    sbc b
    ld h, a
    ld a, l
    push af
    ld a, [$c211]
    ld l, a
    ld a, [$c212]
    ld h, a
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h

Jump_000_3e18:
    sbc b
    ld h, a
    ld a, l
    add $08
    ld b, a
    pop af
    ld c, a
    ret


Jump_000_3e21:
    ld hl, $4d5c
    jr jr_000_3e29

Call_000_3e26:
    ld hl, $4d7c

jr_000_3e29:
    ld de, $81c0

Call_000_3e2c:
    ld a, [$c144]
    push af
    ld a, $01
    ld [$c144], a
    ld [$2100], a
    ld bc, $0020
    call Call_000_091c
    jp Jump_000_264a


Call_000_3e41:
    ld a, [$c144]
    push af
    ld a, [$c1e7]
    ld l, a
    ld a, [$c1e8]
    ld h, a
    ld a, [$c1e6]
    ld [$c144], a
    ld [$2100], a
    ld de, $8800
    call Call_000_3a5a
    jp Jump_000_264a


Call_000_3e5f:
    ld c, a
    ld hl, $98a7

jr_000_3e63:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3e63

    ld a, $64
    ld [hl+], a
    ld b, $04

jr_000_3e6e:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3e6e

    ld a, $65
    ld [hl+], a
    dec b
    jr nz, jr_000_3e6e

    inc a
    ld [hl], a
    ld hl, $98c7
    ld de, $001b
    ld a, c
    add a
    ld c, a

Jump_000_3e85:
    add a
    add a
    add c
    ld c, $05

jr_000_3e8a:
    ld b, $04
    push af

Jump_000_3e8d:
jr_000_3e8d:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3e8d

    pop af
    ld [hl], $67
    inc hl

jr_000_3e97:
    push af

jr_000_3e98:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3e98

    pop af
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_3e97

    ld [hl], $68
    add hl, de
    dec c
    jr nz, jr_000_3e8a

jr_000_3eaa:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3eaa

    ld a, $69
    ld [hl+], a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc a
    ld [hl], a
    ret


Call_000_3ebb:
    ld a, [$c13d]
    and a
    ret nz

Call_000_3ec0:
    ld a, [$c156]
    ld l, a
    ld a, [$c157]
    ld h, a
    ld a, [$c15b]
    ld c, a
    ld a, [$c15c]
    ld b, a
    ld a, l
    sub c
    ld l, a

Jump_000_3ed3:
    ld a, h
    sbc b
    ld h, a
    ld d, h
    ld e, l
    ld bc, $0050
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_000_3f09

    push hl
    ld a, [$c15b]
    ld l, a
    ld a, [$c15c]
    ld h, a
    ld a, [$c1a9]
    ld c, a
    ld a, [$c1aa]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    jr nc, jr_000_3f33

    ld a, l
    cp $08
    jr c, jr_000_3f04

    ld a, $08

jr_000_3f04:
    call Call_000_1b35
    jr jr_000_3f33

Call_000_3f09:
jr_000_3f09:
    ld hl, $0050
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr c, jr_000_3f33

    push hl
    ld b, $00
    ld c, l
    ld a, [$c15b]
    ld l, a
    ld a, [$c15c]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    jr c, jr_000_3f33

    ld a, l
    cp $08
    jr c, jr_000_3f30

    ld a, $08

jr_000_3f30:
    call Call_000_1d44

Call_000_3f33:
jr_000_3f33:
    ld a, [$c154]
    ld l, a
    ld a, [$c155]
    ld h, a
    ld a, [$c15d]
    ld c, a
    ld a, [$c15e]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld d, h
    ld e, l
    ld bc, $0048
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_000_3f79

    push hl

Jump_000_3f57:
    ld a, [$c15d]
    ld l, a
    ld a, [$c15e]
    ld h, a
    ld a, [$c1a7]
    ld c, a
    ld a, [$c1a8]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    ret nc

    ld a, l
    cp $08
    jr c, jr_000_3f76

    ld a, $08

jr_000_3f76:
    jp Jump_000_1ba8


jr_000_3f79:
    ld hl, $0048
    ld a, l
    sub e
    ld l, a
    ld a, h

Jump_000_3f80:
    sbc d
    ld h, a
    ret c

    push hl
    ld b, $00
    ld c, l
    ld a, [$c15d]
    ld l, a
    ld a, [$c15e]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    jr nc, jr_000_3f9d

    ld a, [$c15d]
    jr jr_000_3f9e

jr_000_3f9d:
    ld a, l

jr_000_3f9e:
    cp $08
    jr c, jr_000_3fa4

    ld a, $08

jr_000_3fa4:
    jp Jump_000_1c76


Call_000_3fa7:
    ld a, [$c144]
    push af
    ld a, $06
    ld [$c144], a
    ld [$2100], a
    call $7faa
    jp Jump_000_264a


Call_000_3fb9:
    ld a, [$c1d1]
    ld l, a
    ld a, [$c1d2]
    ld h, a
    ld b, $00
    ld c, $05

jr_000_3fc5:
    ld a, [hl+]
    and $80
    jr nz, jr_000_3fcb

    inc b

jr_000_3fcb:
    dec c
    jr nz, jr_000_3fc5

    ld a, b
    cp $04
    ret


Call_000_3fd2:
    xor a
    jr jr_000_3fda

Call_000_3fd5:
    ld a, $ff
    ld [$c56d], a

jr_000_3fda:
    ld [$c56c], a
    ret


Call_000_3fde:
    call Call_000_0a3a
    push af

jr_000_3fe2:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_3fe2

    pop af
    jp $ff80


Call_000_3fee:
    call Call_000_0469
    jp Jump_000_0470


Call_000_3ff4:
Jump_000_3ff4:
    ld a, [$c14b]
    ldh [rBGP], a
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
