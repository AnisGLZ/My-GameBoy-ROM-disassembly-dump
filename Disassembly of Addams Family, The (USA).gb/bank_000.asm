; Disassembly of "Addams Family, The (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    rst $38

Call_000_0001:
    rst $38

Jump_000_0002:
    rst $38

Jump_000_0003:
    rst $38

Call_000_0004:
Jump_000_0004:
    rst $38
    rst $38
    rst $38
    rst $30

RST_08::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18

RST_10::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    push af
    ld a, [$c004]
    push af
    ld a, $10
    db $ea

RST_30::
    inc b
    ldh [$c3], a
    ld c, c
    inc b
    rst $38
    rst $38

Jump_000_0037:
    rst $38

RST_38::
    ld [$c005], sp
    ld sp, $c050
    jr RST_28

VBlankInterrupt::
    jp Jump_000_1806


    nop
    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_1851


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


    ldh a, [rP1]
    and $0f

Jump_000_0065:
    cp $03
    db $28

    ld [bc], a
    pop af
    reti


jr_000_006b:
    push hl
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_000_0073

    inc hl
    inc [hl]

Call_000_0073:
jr_000_0073:
    pop hl
    pop af
    jr RST_38

    rst $38
    rst $38
    rst $38
    rst $38

Call_000_007b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0085:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_009a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00a2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00b4:
    rst $38

Jump_000_00b5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_00ba:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_00c3:
    rst $38

Jump_000_00c4:
    rst $38
    rst $38
    rst $38

Jump_000_00c7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00cc:
Jump_000_00cc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38

Call_000_00e4:
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00ef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_00f7:
    rst $38

Call_000_00f8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00ff:
Jump_000_00ff:
    rst $38

Boot::
    nop

Call_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "ADDAMS FAMILY", $00, $00, $00

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
    db $f0

HeaderGlobalChecksum::
    db $04, $55

Jump_000_0150:
    di
    ld sp, $df80
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    dec a
    ldh [$ab], a
    ldh [$ad], a
    ld a, $80
    ldh [$ae], a
    ld a, $ff
    ldh [$af], a
    ldh [$b0], a
    call Call_000_1aa7
    call Call_000_1a8f
    ld hl, $c050
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c054
    ld [hl], $ff
    ld hl, $4000
    call Call_000_1a4c
    call Call_000_146e

Jump_000_0186:
    di
    ld sp, $df80
    xor a
    ld [$dcb7], a
    call Call_000_144c
    call Call_000_1a8f
    ld hl, $c054
    ld bc, $003a
    xor a
    call Call_000_1b90
    ld hl, $c087
    ld bc, $0007
    ld a, $3f
    call Call_000_1b90

Jump_000_01a9:
    ld a, $ff
    ld [$c080], a
    ld a, $2f

Jump_000_01b0:
    ld [$c067], a
    ld a, $1f
    ld [$c068], a
    ld a, $05
    ld [$c065], a
    xor a
    ld [$c066], a
    ld hl, $16cf
    ld de, $c07f
    ld bc, $0002
    call Call_000_1ace
    ld hl, $46b4
    ld de, $c075
    ld bc, $0008
    call Call_000_1ace
    ld a, $09
    ld [$c070], a
    ld [$c069], a
    ld [$c06d], a

Jump_000_01e4:
    xor a
    ld [$c06c], a
    ld [$c06e], a
    ld [$c06a], a
    ld [$c06f], a
    ld [$c0d5], a
    ld [$c0d6], a
    ei
    ld a, $13
    ldh [rIE], a
    ld a, $08

Jump_000_01fe:
    call Call_000_1a1b

jr_000_0201:
    ld a, $08
    call Call_000_1336
    call Call_000_13bf
    ld a, $32
    ld [$c0d3], a

jr_000_020e:
    ldh a, [rLY]
    cp $8f
    jr c, jr_000_020e

    ld hl, $c0d3
    call $5dcd
    jr nz, jr_000_0233

    call Call_000_14e0
    ld a, $09
    call Call_000_1336
    call Call_000_13bf
    ld a, [$dc80]
    bit 7, a
    jr nz, jr_000_023d

    call Call_000_14e0
    jr jr_000_0201

jr_000_0233:
    call Call_000_1a65
    ld a, [$dc80]
    bit 7, a
    jr z, jr_000_020e

jr_000_023d:
    ld hl, $dffc
    ld [hl], $00
    inc hl
    ld [hl], $d1
    inc hl
    ld [hl], $df
    ld a, $00
    call Call_000_1a1b
    call Call_000_07a5
    call Call_000_14e0
    call Call_000_14fa
    ld hl, $4000
    call Call_000_1a4c
    call Call_000_144c
    ld a, $01
    ld [$c06b], a

Jump_000_0264:
    di
    ld sp, $df80
    ld a, $01
    ld [$2000], a
    dec a
    ldh [$ab], a
    call Call_000_1aa7
    call Call_000_1a8f
    call Call_000_15df
    ld a, [$c070]
    ld hl, $3522
    call Call_000_1b61
    ld a, [hl]
    ldh [$a9], a
    ld a, $03
    ldh [$aa], a
    ld a, $04
    ldh [$a8], a
    call Call_000_1aa7
    di
    ld a, [$c063]
    or a
    jr nz, jr_000_02e7

    ld hl, $d300
    ld de, $9800
    ld bc, $04ad
    call Call_000_1ace
    ld a, [$c070]
    ld hl, $34aa
    call Call_000_1b67
    ldh a, [$a9]
    ldh [$8a], a
    ld [$2000], a
    ld de, $8000
    call Call_000_1dea
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_1ace
    ld a, [$c070]
    ld hl, $34d2
    call Call_000_1b67
    ld de, $c300
    call Call_000_1dea
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ld hl, $9800
    ld de, $d300
    ld bc, $04ad
    call Call_000_1ace

jr_000_02e7:
    ld a, [$c070]

Jump_000_02ea:
    ld hl, $34fa
    call Call_000_1b67
    ld a, l
    ldh [$ba], a
    ld a, h
    ldh [$bb], a
    ld hl, $d5e0
    ld de, $c300
    ld c, $28
    ld a, [$dc8b]
    ld b, a
    call Call_000_1ee6
    ld hl, $c2a0
    ld de, $d3b0
    ld b, $1b
    ld c, $10
    call Call_000_1ee6
    call $4603
    ld a, [$c070]
    cp $0c
    jr nz, jr_000_0327

    ld hl, $9560
    ld bc, $0010
    ld a, $ff
    call Call_000_1b90

jr_000_0327:
    ld hl, $d560
    ld bc, $0080
    xor a
    call Call_000_1b90
    ld hl, $d630
    ld bc, $017d
    ld a, $ff
    call Call_000_1b90
    ld a, [$c070]
    ld hl, $33c6
    call Call_000_1b67
    ld de, $d788

jr_000_0348:
    ld a, [hl]
    cp $ff
    jr z, jr_000_0355

    ld bc, $0009
    call Call_000_1ace
    jr jr_000_0348

jr_000_0355:
    ld a, $ff
    ld [$d680], a
    ld a, [$c063]
    or a

Call_000_035e:
    jr nz, jr_000_0380

    ld a, [$c070]
    ld hl, $2cb6
    call Call_000_1b74
    ld hl, $d680

jr_000_036c:
    ld a, [de]
    ld [hl], a
    inc a
    jr z, jr_000_0380

    xor a
    ld [hl+], a

Jump_000_0373:
    ld [hl+], a
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    jr jr_000_036c

jr_000_0380:
    ld a, $03

Jump_000_0382:
    ldh [$8a], a
    ld [$2000], a
    ld hl, $8e30
    ld de, $8e31
    ld bc, $002f
    ld [hl], $00
    call Call_000_1ace
    ld hl, $4080
    ld de, $8df0
    ld bc, $0050
    call Call_000_1ace

Call_000_03a1:
    ld hl, $40c0
    ld bc, $0004
    call Call_000_1ace
    ld h, d
    ld l, e
    ld de, $0008
    add hl, de
    ld d, h
    ld e, l
    ld hl, $40cc
    ld bc, $0004
    call Call_000_1ace
    ld hl, $40c0
    ld bc, $0010
    call Call_000_1ace
    ld hl, $40d0
    ld bc, $0040
    call Call_000_1ace
    ld hl, $4110
    ld bc, $0040
    call Call_000_1ace
    ld hl, $4110
    ld bc, $0040
    call Call_000_1ace
    ld hl, $41f0
    ld de, $8f60
    ld bc, $00a0
    call Call_000_1ace
    ld hl, $4450
    ld de, $9c00
    ld bc, $0214
    xor a

Call_000_03f5:
    call Call_000_1596
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    xor a

Call_000_0400:
    ld [$d630], a
    ld a, $04

Jump_000_0405:
    ld [$d631], a
    ld b, $04
    ld hl, $d670
    xor a

jr_000_040e:
    ld [hl+], a
    dec b
    jr nz, jr_000_040e

Call_000_0412:
    call Call_000_1bfd
    call Call_000_11ff
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ld a, $e7
    ldh [rLCDC], a
    ei
    ld a, $13
    ldh [rIE], a
    ldh a, [rSTAT]
    or $40
    ldh [rSTAT], a
    ld a, $80
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    call $7af9
    call Call_000_096d
    ld a, $01
    ldh [$ab], a
    ld [$c0e0], a
    xor a
    ldh [rIF], a
    ldh [$bc], a
    ldh [$bd], a
    ldh [$ac], a
    ldh [$ad], a
    ld [$c1f2], a
    ld [$dcb7], a
    ld a, $4c
    ld [$c0eb], a
    call Call_000_1f4d
    call Call_000_2123
    ld a, [$c063]
    or a
    jr nz, jr_000_0472

    ld a, [$c070]
    ld hl, $39d5
    call Call_000_1b61
    ld a, [hl]
    call Call_000_1a1b

jr_000_0472:
    db $76
    ldh a, [$ac]
    or a
    jr z, jr_000_0472

    ld a, [$c063]
    or a
    call z, Call_000_14c7
    xor a
    ld [$c073], a
    ld a, [$c070]
    cp $0c
    jr nz, jr_000_048f

    ld a, $01
    ld [$dc9a], a

Jump_000_048f:
jr_000_048f:
    call Call_000_1a65
    ld hl, $401b
    call Call_000_1a4c
    call Call_000_0a2d
    ld a, [$dca8]
    ld [$d3c8], a
    call $550e
    call $4e5a
    call Call_000_0eaa
    call $4b67
    call $7af9
    call $4d12
    call $5131
    call Call_000_09b2

jr_000_04b9:
    ldh a, [$ac]
    or a
    jr z, jr_000_04b9

    call Call_000_199b
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    call $7a01

Call_000_04cb:
    call Call_000_096d
    ld a, $01
    ld [$dcb7], a
    dec a
    ldh [$ac], a
    ldh a, [$be]
    ld [$c2c7], a
    ldh a, [$bf]
    ld [$c2c8], a
    call Call_000_222b
    call $46e7
    call $4e1f
    call $53be
    call Call_000_2123
    call $522b
    call Call_000_1f4d
    call Call_000_053c
    ld a, [$dc80]
    bit 6, a
    jr z, jr_000_0529

    ld a, [$dc91]
    bit 6, a
    jr nz, jr_000_0531

    set 6, a
    ld [$dc91], a
    ld a, [$c086]
    ld hl, $c087
    call Call_000_1b61
    ld a, [$c1fa]
    ld [hl], a
    ld a, [$c086]
    inc a
    cp $07
    jr c, jr_000_0521

    xor a

jr_000_0521:
    ld [$c086], a
    call $4b3b
    jr jr_000_0531

jr_000_0529:
    ld a, [$dc91]
    res 6, a
    ld [$dc91], a

jr_000_0531:
    jp Jump_000_048f


    ret


jr_000_0535:
    ld a, [$dff6]
    or a
    jr nz, jr_000_0535

    ret


Call_000_053c:
    ld a, [$dcb7]
    or a
    ret z

    ld a, [$d3c7]
    cp $ff
    ret nz

    ld a, [$dc80]
    bit 7, a
    ret z

    ld a, $0c
    call Call_000_1a0f
    ld b, $05
    call Call_000_156f
    ld hl, $4012
    call Call_000_1a4c

jr_000_055d:
    call Call_000_1a65
    ld a, [$dc80]
    bit 7, a
    jr nz, jr_000_055d

jr_000_0567:
    call Call_000_1a65
    ld a, [$dc80]
    bit 7, a
    jr z, jr_000_0567

jr_000_0571:
    call Call_000_1a65
    ld a, [$dc80]
    bit 7, a
    jr nz, jr_000_0571

    ld hl, $4015
    call Call_000_1a4c
    ld a, $0c
    jp Jump_000_1a0f


Call_000_0586:
    ld a, $07
    ldh [$8a], a
    ld [$2000], a
    ld hl, $7642
    ld de, $8d40
    ld bc, $02c0
    ldh a, [rLCDC]
    and $80
    jr z, jr_000_05a7

    call Call_000_1b45
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


jr_000_05a7:
    call Call_000_1ace
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_05b2:
    ld a, $02
    ld [$c1f8], a
    ld hl, $8f10
    ld de, $8f12
    call Call_000_1583
    ld [hl], $ff
    inc hl
    ld [hl], $00
    dec hl
    ld bc, $000e
    call Call_000_1b45

Jump_000_05cc:
    ld hl, $9c00
    ld de, $9c01
    ld [hl], $f1
    ld bc, $0007
    call Call_000_1b45
    ld hl, $9c00
    ld de, $9c20
    ld bc, $0008
    call Call_000_1b45
    ldh a, [$aa]
    ldh [$8a], a
    ld [$2000], a
    ld hl, $4000

Jump_000_05f0:
    ld de, $8e60
    ld b, $80
    call Call_000_1b12
    ld a, $01
    ldh [$8a], a

Jump_000_05fc:
    ld [$2000], a
    ld hl, $8ee0
    ld de, $8ee1
    call Call_000_1583
    ld [hl], $00
    ld bc, $001f
    call Call_000_1b45
    ld a, $ff
    ld [$8eee], a
    ld [$8efe], a
    xor a
    ld [$8eef], a
    ld [$8eff], a
    ld hl, $7847
    ld de, $9c00
    ld bc, $0008
    call Call_000_1b45
    ld de, $9c20
    ld bc, $0008
    jp Jump_000_1b45


Call_000_0634:
    ld hl, $c1bb
    ld a, [hl]
    inc a
    scf
    ret nz

    push hl
    call Call_000_09e1
    ld hl, $80c0
    ld de, $80c1
    ld bc, $001f
    call Call_000_1583
    ld [hl], $00
    call Call_000_1b45
    ld a, $02
    ldh [$d8], a
    xor a
    ldh [$ce], a
    ldh [$d4], a
    ld a, $ff
    ldh [$c9], a
    ld a, $01
    ldh [$cb], a
    ld a, $05
    ldh [$cd], a
    ld a, $05
    ldh [$c4], a
    ld a, $0c
    ld [$d31a], a
    ld a, $0c
    ld [$d31e], a
    ldh a, [$8f]
    ld l, a
    ldh a, [$90]
    ld h, a
    ld de, $fffa
    add hl, de
    ld a, l
    ldh [$c7], a
    ld a, h
    ldh [$c8], a
    ldh a, [$9a]
    ldh [$d2], a
    ldh a, [$8d]
    ld l, a
    ldh a, [$8e]
    ld h, a
    ld de, $0010
    add hl, de
    ld a, l
    ldh [$c5], a
    ld a, h
    ldh [$c6], a
    pop hl
    jp Jump_000_09f4


Call_000_069b:
    ld a, [$dcb2]
    or a
    jr z, jr_000_06ac

    ld a, [$c071]
    cp $02
    ret nz

    ld a, [$dcb2]
    inc a
    ret z

jr_000_06ac:
    ld a, [$c1fa]
    or a
    scf
    ret z

    ld hl, $c1a0
    ld b, $02
    call $4e4d
    ret c

    push hl
    call Call_000_09e1
    ld a, $08
    call Call_000_1a0f
    ldh a, [$aa]
    ldh [$8a], a
    ld [$2000], a
    ld a, [$c071]
    ld hl, $0767
    call Call_000_1b67
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

Jump_000_06db:
    add hl, hl
    ld de, $44b4
    add hl, de
    ld de, $8080
    ld b, $40
    call Call_000_1b12
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ld a, $01
    ldh [$d8], a
    xor a
    ldh [$ce], a
    ldh [$d4], a
    dec a
    ldh [$cc], a
    ld a, $01
    ldh [$cd], a
    ldh [$cb], a
    ld a, [$dcb2]
    or a
    jr z, jr_000_070b

    ld a, $0c
    ldh [$cc], a

Call_000_070b:
jr_000_070b:
    ld c, $08
    ldh a, [$96]
    bit 0, a
    ld de, $0014

Call_000_0714:
    jr z, jr_000_0719

    ld de, $ffec

jr_000_0719:
    ld a, [$c071]
    dec a
    ldh [$c4], a
    cp $03
    jr z, jr_000_0732

    cp $04
    jr z, jr_000_0732

    ld de, $0000
    ld c, $02
    ldh a, [$96]
    and $01
    ldh [$ce], a

jr_000_0732:
    ld a, c
    ld [$c1fb], a
    ld a, $08
    ld [$d312], a
    ld a, $0a
    ld [$d316], a
    ld a, $2c
    ldh [$d6], a
    ld a, $01
    ldh [$d7], a
    ldh a, [$8f]
    ld l, a
    ldh a, [$90]
    ld h, a
    add hl, de
    ld a, l
    ldh [$c7], a
    ld a, h
    ldh [$c8], a
    ldh a, [$8d]
    ld l, a
    ldh a, [$8e]
    ld h, a
    ld de, $000c
    add hl, de
    ld a, l
    ldh [$c5], a
    ld a, h
    ldh [$c6], a
    pop hl
    jp Jump_000_09f4


    xor b
    ld e, c
    xor d
    ld e, c
    xor h
    ld e, c
    xor [hl]
    ld e, c
    or b
    ld e, c

Call_000_0773:
    ld [$c06c], a
    add a
    ld c, a
    ld b, $00
    ld a, [$c070]
    ld [$c06d], a
    or a
    ld hl, $3b58
    jr z, jr_000_078d

    ld de, $000c

jr_000_0789:
    add hl, de
    dec a
    jr nz, jr_000_0789

Jump_000_078d:
jr_000_078d:
    add hl, bc
    ld a, [hl+]
    cp $20
    jr z, jr_000_079b

    ld [$c069], a
    ld a, [hl]
    ld [$c06a], a
    ret


jr_000_079b:
    ld a, [hl]
    ld [$c074], a
    ld a, $01
    ld [$c063], a
    ret


Call_000_07a5:
jr_000_07a5:
    call Call_000_1a65
    ld a, [$df89]
    or a
    ret z

    ld a, [$dc80]

Call_000_07b0:
    or a
    jr nz, jr_000_07a5

jr_000_07b3:
    call Call_000_1a65
    ld a, [$df89]
    or a
    ret z

    ld a, [$dc80]
    or a
    jr z, jr_000_07b3

    ret


Call_000_07c2:
    di
    xor a
    ldh [$ad], a
    ld a, $80
    ld [$ffae], a
    ld [$ff45], a
    ld a, $ff
    ldh [$b0], a
    ldh [$af], a
    ei
    ld [$c1d6], a

jr_000_07d8:
    ldh a, [rLY]
    cp $8f
    jr c, jr_000_07d8

    ld a, $e5
    ldh [rLCDC], a
    ret


Jump_000_07e3:
    ld a, $1f
    ld [$c068], a
    ld a, $3f
    ld [$c1fa], a
    ld a, $2f
    ld [$c067], a
    ld a, [$c070]
    cp $0f
    jr z, jr_000_07fd

    xor a
    ld [$dca2], a

jr_000_07fd:
    ld a, [$c086]
    ld hl, $c087
    call Call_000_1b61
    ld [hl], $3f
    call Call_000_07a5
    call Call_000_07c2
    call Call_000_14e0
    ld a, $81
    ldh [rLCDC], a
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ldh [$be], a
    ldh [$bf], a
    ld [$c2c7], a
    ld [$c2c8], a
    call Call_000_0915
    ld hl, $9800
    ld de, $9801
    ld bc, $023f
    call Call_000_1583
    ld [hl], $00
    call Call_000_1b45
    ld hl, $9000
    ld de, $9002
    call Call_000_1583
    ld [hl], $ff
    inc hl
    ld [hl], $00
    dec hl
    ld bc, $000e
    call Call_000_1b45
    ld hl, $7eb0
    ld de, $9010
    ld bc, $00e0
    call Call_000_1b45
    call Call_000_0586
    ld hl, $c065
    call $5dcd
    jr nz, jr_000_08c4

    ld a, $02
    call Call_000_1a1b
    call Call_000_3ead
    ld hl, $c054
    ld de, $c050
    ld b, $04
    call Call_000_3ee0
    ld hl, $089a
    call Call_000_1ba5
    ld hl, $9926
    ld c, $f3
    call $771e
    ld hl, $c054
    call Call_000_1bae
    call Call_000_14c7
    call Call_000_154b
    call Call_000_1555
    call Call_000_14fa
    jp Jump_000_0186


    ld b, $05
    ld b, a
    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_000_08f1

    ld d, [hl]
    ld b, l
    ld d, d
    cp $05
    ld [$4946], sp
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, @+$55

    ld b, e
    ld c, a
    ld d, d
    ld b, l
    cp $05

Call_000_08b5:
    inc c
    ld c, b
    ld c, c
    ld b, a
    ld c, b
    jr nz, jr_000_090f

    ld b, e
    ld c, a
    ld d, d
    ld b, l
    cp $06
    dec c
    rst $38

jr_000_08c4:
    ld hl, $98a7
    call Call_000_1583
    ld a, $05
    call Call_000_0936
    ld hl, $9967
    call Call_000_1583
    ld a, $0a
    call Call_000_0936
    ld hl, $98c6
    ld c, $f3
    call $771e
    call Call_000_0940
    call Call_000_14c7

Jump_000_08e8:
    call Call_000_154b
    call Call_000_1555
    call Call_000_14fa

jr_000_08f1:
    ld a, [$c06b]
    or a
    jr z, jr_000_0909

    ld a, [$c06d]
    ld [$c070], a
    ld a, [$c06c]
    ld [$c06a], a
    call Call_000_14fa
    jp $6291


Jump_000_0909:
jr_000_0909:
    ld a, [$c06d]
    ld [$c070], a

jr_000_090f:
    ld a, [$c06c]
    jp $628b


Call_000_0915:
    ld hl, $d300
    ld bc, $00a0
    xor a
    call Call_000_1b90
    ld hl, $c100
    ld bc, $00a0
    xor a
    call Call_000_1b90
    ld hl, $c200
    ld bc, $00a0
    xor a
    call Call_000_1b90
    jp $ff80


Call_000_0936:
    ld [hl+], a
    inc a
    ld [hl+], a

Call_000_0939:
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a

Call_000_093d:
    inc a
    ld [hl], a
    ret


Call_000_0940:
    ld a, [$c065]
    or a
    ret z

    ld hl, $9985
    ld de, $001f
    ld a, [$c065]
    or a
    ret z

    ld b, a
    cp $05
    jr c, jr_000_0957

    ld b, $05

jr_000_0957:
    push hl
    call Call_000_1583
    ld [hl], $01
    inc hl
    ld [hl], $02
    add hl, de
    ld [hl], $03
    inc hl
    ld [hl], $04
    pop hl
    inc hl
    inc hl
    dec b
    jr nz, jr_000_0957

    ret


Call_000_096d:
Jump_000_096d:
    ldh a, [$ab]
    ldh [$b2], a
    xor a

Call_000_0972:
    ldh [$ab], a
    ld a, $20
    ldh [$b6], a
    ld de, $d320
    ld hl, $c19c
    ld bc, $fff9

jr_000_0981:
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    inc e
    add hl, bc
    ldh a, [$b6]
    dec a
    ldh [$b6], a
    jr nz, jr_000_0981

    ld hl, $d300
    ld de, $c200
    ld b, $a0
    call Call_000_1ac7
    ld hl, $d300
    ld de, $c100
    ld b, $20
    call Call_000_1ac7
    ldh a, [$b2]
    or $01
    ldh [$ab], a
    ret


Call_000_09b2:
    ld a, [$c0ca]
    or a
    ret z

    ld a, [$c0cb]
    inc a
    cp $04
    jr c, jr_000_09c0

    xor a

jr_000_09c0:
    ld [$c0cb], a
    ret nz

    ld hl, $d300
    ld b, $04
    xor a

jr_000_09ca:
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    dec b
    jr nz, jr_000_09ca

    ld hl, $c0ce
    dec [hl]
    ret nz

    xor a
    ld [$c0ca], a
    ret


    ld hl, $1da1
    jp Jump_000_177a


Call_000_09e1:
    push bc
    ld c, $c4
    ld b, $09

jr_000_09e6:
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_09e6

Call_000_09f2:
Jump_000_09f2:
    pop bc
    ret


Call_000_09f4:
Jump_000_09f4:
    push bc
    ld c, $c4
    ld b, $09

jr_000_09f9:
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    dec b
    jr nz, jr_000_09f9

    pop bc
    ret


Call_000_0a07:
    push bc
    ld c, $8c
    ld b, $09

jr_000_0a0c:
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    ld a, [c]
    ld [hl+], a
    inc c
    dec b
    jr nz, jr_000_0a0c

    pop bc
    ret


Call_000_0a1a:
    push bc
    ld c, $8c
    ld b, $09

jr_000_0a1f:
    ld a, [hl+]
    ld [c], a

Call_000_0a21:
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_0a1f

    pop bc
    ret


Call_000_0a2d:
    ld a, [$d3c7]
    cp $ff
    ret nz

    ld a, [$c063]
    or a
    jp nz, Jump_000_0aea

    ld a, [$dcb7]
    or a
    ret z

    ld hl, $dc92
    ld a, [$dc96]
    or a
    jr nz, jr_000_0a82

    ld a, [$d3c0]
    or a
    jp nz, Jump_000_0ae5

    ld a, [$dcb8]
    or a
    jp nz, Jump_000_0ae5

    ld a, [$dc80]
    and $08
    jp z, Jump_000_0ae5

    ld a, [$dc80]
    and $20
    jp z, Jump_000_0ae5

    bit 5, [hl]
    jp nz, Jump_000_0aea

    set 5, [hl]
    xor a
    ld [$dcb8], a

Call_000_0a71:
    ld a, [$d3c6]
    cp $30
    jr c, jr_000_0ad9

    ld a, $01
    ld [$dc96], a
    ld a, $04
    ld [$dcb8], a

jr_000_0a82:
    ld hl, $dcb8
    ld a, [hl]
    or a
    jr z, jr_000_0ac4

    ld a, [$dc8c]
    ld b, a
    ld a, [$dc89]
    cp b
    jr nc, jr_000_0ad9

    dec [hl]
    ld a, [$dc8a]
    dec a
    and $03
    ld [$dc8a], a
    jr nz, jr_000_0aa3

    ld hl, $dc89
    inc [hl]

jr_000_0aa3:
    ldh a, [$bf]
    add $04
    ldh [$bf], a
    ld a, $04
    call $794b
    ldh a, [$bd]
    sub $04
    ldh [$bd], a
    cp $10
    call nc, Call_000_1156
    ld a, [$dca8]
    res 2, a
    set 3, a
    ld [$dca8], a
    ret


jr_000_0ac4:
    ld a, [$d3c6]
    cp $30
    jr c, jr_000_0ad2

    ld a, $04
    ld [$dcb8], a
    jr jr_000_0a82

jr_000_0ad2:
    ld hl, $dca8
    res 2, [hl]
    res 3, [hl]

jr_000_0ad9:
    call Call_000_0d83

Call_000_0adc:
    xor a
    ld [$dc96], a
    ld [$dcb8], a
    jr jr_000_0aea

Jump_000_0ae5:
    ld hl, $dc92
    res 5, [hl]

Jump_000_0aea:
jr_000_0aea:
    ld a, [$d3c1]
    and $03
    jr nz, jr_000_0b09

    ld a, [$dc9a]
    or a
    jr nz, jr_000_0b09

Call_000_0af7:
    ld a, [$dca3]
    ld c, a
    ld a, [$dca2]
    cp $01
    ret z

    cp c
    ret nz

    ld a, [$dca2]
    cp $01
    ret z

jr_000_0b09:
    ld a, [$c063]
    or a
    jp nz, Jump_000_0bda

    ld hl, $d3b0
    call Call_000_0a1a
    xor a
    ld [$dca8], a
    ld hl, $dcb8
    ld a, [$dc8c]
    ld b, a
    ld a, [hl]
    or a

Call_000_0b23:
    jp z, Jump_000_0bab

    cp $80
    jr nc, jr_000_0b63

    ld a, [$dc89]
    cp b

Call_000_0b2e:
    jr nc, jr_000_0ba8

    dec [hl]
    ld a, [$dc8a]
    dec a
    and $03
    ld [$dc8a], a
    jr nz, jr_000_0b40

    ld hl, $dc89
    inc [hl]

jr_000_0b40:
    ldh a, [$bf]
    add $04
    ldh [$bf], a
    ld a, $04
    call $794b
    ldh a, [$bd]
    sub $04
    ldh [$bd], a
    cp $10
    call nc, Call_000_1156
    ld a, [$dca8]
    res 2, a
    set 3, a
    ld [$dca8], a
    jp Jump_000_0bda


jr_000_0b63:
    ld a, [$c070]
    cp $06
    ld c, $0a
    jr z, jr_000_0b72

    ld c, $09
    jr nc, jr_000_0b72

    ld c, $0a

jr_000_0b72:
    ld a, [$dc89]
    cp c
    jr c, jr_000_0ba8

    inc [hl]
    ld a, [$dc8a]
    inc a
    and $03
    ld [$dc8a], a
    jr nz, jr_000_0b88

    ld hl, $dc89
    dec [hl]

jr_000_0b88:
    ldh a, [$bf]
    sub $04
    ldh [$bf], a
    ld a, $fc
    call $794b
    ldh a, [$bc]
    sub $04
    ldh [$bc], a
    call c, Call_000_112a
    ld a, [$dca8]
    res 3, a
    set 2, a
    ld [$dca8], a
    jr jr_000_0bda

jr_000_0ba8:
    call Call_000_0d83

Jump_000_0bab:
    ld a, [$dca8]
    res 3, a
    res 2, a
    ld [$dca8], a
    call $79d0
    ld a, h
    or a
    jr nz, jr_000_0bda

    ld c, $08
    ld a, [$dca2]
    cp $06
    jr nz, jr_000_0bc7

    ld c, $18

jr_000_0bc7:
    ld a, l
    cp c
    jr nc, jr_000_0bd0

    ld a, $f4
    ld [$dcb8], a

jr_000_0bd0:
    ld a, l
    cp $61
    jr c, jr_000_0bda

    ld a, $0c
    ld [$dcb8], a

Jump_000_0bda:
jr_000_0bda:
    ld a, [$dc98]
    or a
    jr z, jr_000_0be3

    cp $05
    ret z

jr_000_0be3:
    ld a, [$dcb2]
    cp $ff
    ret z

    or a
    jr z, jr_000_0bf5

    ld a, [$dc9e]
    xor $01
    ld [$dc9e], a
    ret z

jr_000_0bf5:
    ld a, [$dc9a]
    or a
    jr z, jr_000_0c0d

    call $527a
    ld a, [$dc9f]
    sub $01
    ld [$dc9f], a
    ret nc

    ld a, [$dca0]
    ld [$dc9f], a

jr_000_0c0d:
    ld a, [$c0d0]

Call_000_0c10:
    and $7f
    jr z, jr_000_0c2d

    ld hl, $c0cf
    dec [hl]
    jr nz, jr_000_0c23

    ld [hl], $04
    ld a, [$c0d0]
    dec a
    ld [$c0d0], a

Call_000_0c23:
jr_000_0c23:
    ld a, [$c0d0]
    bit 7, a
    jp z, Jump_000_0d07

    jr jr_000_0c65

jr_000_0c2d:
    ld a, [$dcaf]

Call_000_0c30:
    or a
    jr z, jr_000_0c3a

Call_000_0c33:
    bit 7, a
    jp z, Jump_000_0d07

    jr jr_000_0c65

jr_000_0c3a:
    ld a, [$dc9a]
    or a
    jr z, jr_000_0c4c

Jump_000_0c40:
    ld a, [$dc9d]
    or a
    ret z

    cp $80
    jp nc, Jump_000_0ce2

    jr jr_000_0c65

jr_000_0c4c:
    ld a, [$dc80]

Call_000_0c4f:
    bit 0, a
    jp z, Jump_000_0ce2

    ld a, [$d3ba]
    bit 2, a
    ret nz

    bit 0, a
    jp nz, Jump_000_0ce2

    ld a, [$dcbc]
    ld [$dcba], a

jr_000_0c65:
    ld a, [$dcba]

Jump_000_0c68:
    ld [$d3be], a
    ld hl, $dca8
    res 0, [hl]
    res 1, [hl]

Call_000_0c72:
    ld hl, $d3ba
    set 6, [hl]
    ld hl, $d3b0
    call Call_000_0db9
    ret c

    ld hl, $d3ba
    res 6, [hl]
    ld a, [$d3be]
    ld c, a
    ld a, [$d3c5]
    add c
    cp $50
    ret c

    cp $99
    jr c, jr_000_0c96

    xor a
    ld [$d3be], a

jr_000_0c96:
    ld a, [$c063]
    or a
    ret nz

    ld a, [$dc8b]
    sub $02
    ld b, a
    ld a, [$dc83]
    cp b
    jr nc, jr_000_0cc0

    ld a, [$dc8b]
    sub $0c
    ld b, a
    ld a, [$dc83]
    cp b
    jr c, jr_000_0cc0

    ld a, [$dcba]
    add $0e
    ld b, a
    ldh a, [$c0]
    and $0f
    add c
    cp b
    ret nc

jr_000_0cc0:
    ldh a, [$be]
    add c
    ldh [$be], a
    ld hl, $d3b8
    res 0, [hl]
    ld hl, $dca8
    set 0, [hl]
    ldh a, [$c0]
    push af
    ld a, c
    call $792e
    pop af
    and $0f
    add c
    jr z, jr_000_0cdf

    cp $10
    ret c

jr_000_0cdf:
    jp Jump_000_1071


Jump_000_0ce2:
    ld a, [$dc9a]
    or a
    jr z, jr_000_0cf2

    ld a, [$dc9d]
    or a
    ret z

    cp $80
    ret c

    jr jr_000_0d07

jr_000_0cf2:
    ld a, [$dc80]
    bit 1, a
    ret z

Call_000_0cf8:
    ld a, [$d3ba]
    bit 2, a
    ret nz

    bit 0, a
    ret z

    ld a, [$dcbc]

Call_000_0d04:
    ld [$dcba], a

Jump_000_0d07:
jr_000_0d07:
    ld a, [$dcba]
    cpl
    inc a
    ld [$d3be], a
    ld hl, $dca8
    res 1, [hl]
    res 0, [hl]
    ld hl, $d3ba
    set 6, [hl]
    ld hl, $d3b0
    call Call_000_0db9
    ret c

    ld hl, $d3ba
    res 6, [hl]
    ld a, [$d3be]
    ld c, a
    ld a, [$d3c5]
    add c
    cp $50
    ret nc

    cp $08
    jr nc, jr_000_0d3a

    xor a
    ld [$d3be], a

jr_000_0d3a:
    ld a, [$c063]
    or a
    ret nz

    ldh a, [$c0]
    ld l, a
    ldh a, [$c1]
    or l
    ret z

    ldh a, [$c1]
    cp $ff
    jr nz, jr_000_0d63

    ldh a, [$be]
    ld c, a
    ldh a, [$c0]
    cpl
    inc a
    add c
    ldh [$be], a
    ld a, [$dc8b]
    dec a
    ld [$dc83], a
    xor a
    ldh [$c0], a
    ldh [$c1], a

Call_000_0d62:
    ret


jr_000_0d63:
    ldh a, [$be]
    add c
    ldh [$be], a
    ld hl, $d3b8
    res 0, [hl]
    ld hl, $dca8
    set 1, [hl]
    ldh a, [$c0]

Call_000_0d74:
    push af
    ld a, c
    call $792e
    pop af
    and $0f
    add c
    cp $10
    ret c

    jp Jump_000_1025


Call_000_0d83:
    ldh a, [$bf]
    and $f8
    ldh [$bf], a
    ldh a, [$bc]
    and $f0
    ldh [$bc], a
    ldh a, [$bd]
    and $f0
    ldh [$bd], a
    ldh a, [$c2]
    and $f8
    ldh [$c2], a
    xor a
    ld [$dc8a], a
    ld [$dcb8], a
    ret


    ld a, [$c0d5]
    ld l, a
    ld a, [$c0d6]
    ld h, a
    push af
    ld a, $01
    jr c, jr_000_0db1

    xor a

jr_000_0db1:
    ld [$c0e7], a

Jump_000_0db4:
    call Call_000_0a07
    pop af
    ret


Call_000_0db9:
    ld a, l
    ld [$c0d5], a
    ld a, h
    ld [$c0d6], a
    call Call_000_0a1a
    ld hl, $0da3

Jump_000_0dc7:
    push hl
    ld c, $10
    ldh a, [$96]

Jump_000_0dcc:
    bit 0, a
    jr z, jr_000_0dd2

    ld c, $00

jr_000_0dd2:
    ld b, $18
    ldh a, [$8c]
    or a
    jr nz, jr_000_0de7

    ld a, [$dcb2]
    or a
    jr z, jr_000_0de7

    push bc
    call Call_000_0de7
    pop bc
    ret c

    ld b, $10

Call_000_0de7:
Jump_000_0de7:
jr_000_0de7:
    call Call_000_0f4d
    call Call_000_0e91
    jr nc, jr_000_0e15

    cp $03
    jr c, jr_000_0e2a

    cp $08
    jr z, jr_000_0e2a

Jump_000_0df7:
    cp $0d
    jr z, jr_000_0e15

    cp $0e
    jr z, jr_000_0e2a

    cp $0c
    jr z, jr_000_0e2a

    cp $0b
    jr z, jr_000_0e2a

    cp $03
    jr nz, jr_000_0e15

    ldh a, [$94]

Jump_000_0e0d:
    bit 7, a
    jr nz, jr_000_0e15

    set 7, a
    ldh [$94], a

jr_000_0e15:
    ldh a, [$a0]
    or a

Call_000_0e18:
    jr nz, jr_000_0e7e

    ld a, [$c0d0]
    or a
    jr nz, jr_000_0e26

    ld a, [$dcaf]
    or a
    jr z, jr_000_0e30

jr_000_0e26:
    xor $80

Jump_000_0e28:
    jr jr_000_0e3a

jr_000_0e2a:
    ld a, $00
    ldh [$9a], a
    scf
    ret


jr_000_0e30:
    ld a, [$dc9a]
    or a
    ret z

    ld a, [$dc9d]
    or a
    ret z

jr_000_0e3a:
    cp $80
    ldh a, [$96]
    jr nc, jr_000_0e48

    bit 0, a
    jr z, jr_000_0e7e

    ld c, $10
    jr jr_000_0e4e

jr_000_0e48:
    bit 0, a
    jr nz, jr_000_0e7e

    ld c, $00

jr_000_0e4e:
    ld b, $18
    call Call_000_0f4d
    call Call_000_0e91
    jr nc, jr_000_0e7e

    cp $03
    jr c, jr_000_0e2a

    cp $08
    jr z, jr_000_0e2a

    cp $0d
    jr z, jr_000_0e7e

    cp $0e
    jr z, jr_000_0e2a

    cp $0c
    jr z, jr_000_0e2a

    cp $0b
    jr z, jr_000_0e2a

    cp $03

Call_000_0e72:
    jr nz, jr_000_0e7e

    ldh a, [$94]
    bit 7, a
    jr nz, jr_000_0e7e

    set 7, a
    ldh [$94], a

jr_000_0e7e:
    xor a
    ret


    ld c, $10
    ldh a, [$96]
    bit 0, a
    jr z, jr_000_0e8a

    ld c, $00

jr_000_0e8a:
    ld b, $18
    jp Jump_000_0de7


jr_000_0e8f:
    xor a
    ret


Call_000_0e91:
    ld a, [$c1f5]
    ld l, a
    ld a, [$c1f6]
    ld h, a
    ld a, [$c1f7]

Jump_000_0e9c:
    cp e
    jr c, jr_000_0e8f

    ld a, e
    ld d, a
    call Call_000_1b61
    ld a, [hl]
    ld e, a
    or a
    ret z

    scf
    ret


Call_000_0eaa:
    ld a, $be
    ld [$c2c0], a
    ld a, $dc
    ld [$c2c1], a
    ld de, $d3b5
    ld hl, $d650
    xor a
    ld [$c0db], a
    ldh [$b1], a
    ld b, $10

jr_000_0ec2:
    push bc
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_000_0eee

    cp [hl]
    jr z, jr_000_0eee

    ld c, a
    inc de
    ld a, [de]
    or a
    jr z, jr_000_0eee

    ld a, $13
    call Call_000_1b5b
    ld a, [de]
    or a
    jr z, jr_000_0eee

    inc de
    ld a, [de]
    ldh [$a7], a
    ld [hl], c
    ld a, b
    cpl
    inc a
    add $10
    call Call_000_1ceb
    ld a, $01
    ld [$c0db], a

jr_000_0eee:
    pop hl
    pop de

Jump_000_0ef0:
    pop bc
    inc hl
    ld a, $1b
    call Call_000_1b5b
    dec b
    jr nz, jr_000_0ec2

    ld a, [$c063]
    or a
    ret nz

    ld a, [$c0db]

Jump_000_0f02:
    ldh [$b1], a
    ret


    ld a, e
    cp $80
    ld d, $00
    jr c, jr_000_0f0e

    ld d, $ff

jr_000_0f0e:
    add hl, de
    ret


Call_000_0f10:
    ldh a, [$a1]
    ld l, a
    ldh a, [$a2]
    ld h, a
    ld a, l
    cp $e8
    jr nc, jr_000_0f21

    cp $d9
    jr c, jr_000_0f21

Jump_000_0f1f:
    scf
    ret


jr_000_0f21:
    ld a, h
    cp $e0
    jr nc, jr_000_0f2c

    cp $d1
    jr c, jr_000_0f2c

    scf
    ret


jr_000_0f2c:
    xor a
    ret


Call_000_0f2e:
    call Call_000_0f4d
    call Call_000_0e91
    ret nc

    cp $12
    jr z, jr_000_0f4b

    cp $13
    jr z, jr_000_0f4b

Call_000_0f3d:
    cp $0d
    jr z, jr_000_0f4b

    cp $0b
    jr z, jr_000_0f4b

    cp $08
    ret z

    cp $03
    ret nc

jr_000_0f4b:
    scf
    ret


Call_000_0f4d:
    push bc
    ld hl, $ff8f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $f8
    ld d, $ff
    add hl, de
    ld d, $00
    ld e, c
    ld a, c
    cp $80

Jump_000_0f5f:
    jr c, jr_000_0f62

    dec d

jr_000_0f62:
    add hl, de
    ld d, $00
    ldh a, [$9a]
    ld e, a
    cp $80
    jr c, jr_000_0f6d

    dec d

jr_000_0f6d:
    add hl, de
    ld a, l
    ldh [$b6], a
    ld a, h
    ldh [$b7], a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ld [$dc87], a
    ld hl, $ff8d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $f0
    ld d, $ff
    add hl, de
    ld d, $00
    ldh a, [$9b]
    ld e, a
    cp $80
    jr c, jr_000_0f9d

    dec d

jr_000_0f9d:
    add hl, de
    ld d, $00
    ld a, b
    ld e, a
    cp $80
    jr c, jr_000_0fa7

    dec d

jr_000_0fa7:
    add hl, de
    ld a, l

Call_000_0fa9:
    ldh [$b8], a
    ld a, h
    ldh [$b9], a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ld [$dc88], a
    ld a, [$dc8e]
    inc a
    sub l
    jr c, jr_000_0fd4

    ld a, [$dc87]
    ld b, a
    ld a, [$dc8d]

Jump_000_0fd0:
    inc a
    sub b
    jr nc, jr_000_0fd8

Call_000_0fd4:
jr_000_0fd4:
    ld l, $00
    jr jr_000_0ff1

jr_000_0fd8:
    ld a, [$dc88]
    ld hl, $d5e0
    call Call_000_1b67

Jump_000_0fe1:
    ld d, $00
    ld a, [$dc87]
    ld e, a
    add hl, de
    ld a, l
    ld [$dca6], a
    ld a, h
    ld [$dca7], a

Call_000_0ff0:
    ld l, [hl]

jr_000_0ff1:
    ld h, $00

Jump_000_0ff3:
    add hl, hl
    add hl, hl
    ldh a, [$ba]
    add l
    ld l, a
    ldh a, [$bb]
    adc h
    ld h, a
    ld a, [$c063]

Jump_000_1000:
    or a
    ldh a, [$a9]
    jr z, jr_000_1007

    ldh a, [$a8]

jr_000_1007:
    ldh [$8a], a
    ld [$2000], a
    ldh a, [$b6]
    and $08
    jr z, jr_000_1013

    inc hl

jr_000_1013:
    ldh a, [$b8]
    and $08
    jr z, jr_000_101b

    inc hl
    inc hl

jr_000_101b:
    ld e, [hl]
    pop bc
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Jump_000_1025:
    ldh a, [$be]
    srl a
    srl a
    srl a
    and $fe
    add $1e
    and $1f
    ld e, a
    ld a, [$c0e1]
    add e
    ld e, a
    ld a, [$c0e2]
    ld d, a
    ldh a, [$bf]
    and $0f
    ld l, $00
    jr z, jr_000_104e

    ld a, [$dca8]
    bit 3, a
    jr z, jr_000_104e

    ld l, $10

jr_000_104e:
    ldh a, [$bf]
    sub $10
    add l
    and $f0
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, de
    ld a, h
    and $9b
    ld d, a
    ld e, l
    ld a, [$dc8b]
    ld c, a
    ld a, [$dc83]
    sub $01
    jr nc, jr_000_106c

    add c

Jump_000_106c:
jr_000_106c:
    ld [$dc83], a
    jr jr_000_10c1

Call_000_1071:
Jump_000_1071:
    ldh a, [$be]
    srl a
    srl a
    srl a
    and $fe
    add $14
    and $1f

Call_000_107f:
    ld e, a
    ld a, [$c0e1]
    add e
    ld e, a
    ld a, [$c0e2]
    ld d, a
    ldh a, [$bf]
    and $0f
    ld l, $00
    jr z, jr_000_109a

    ld a, [$dca8]
    bit 3, a
    jr z, jr_000_109a

    ld l, $10

jr_000_109a:
    ldh a, [$bf]
    sub $10
    add l
    and $f0
    ld l, a
    ld h, $00
    add hl, hl

Call_000_10a5:
    add hl, hl
    add hl, de
    ld a, h
    and $9b
    ld d, a
    ld e, l
    ld a, [$dc8b]
    ld c, a
    ld a, [$dc83]
    inc a
    cp c
    jr c, jr_000_10b8

    xor a

jr_000_10b8:
    ld [$dc83], a
    add $0b
    cp c
    jr c, jr_000_10c1

    sub c

jr_000_10c1:
    ld c, a
    ldh a, [$a9]
    ldh [$8a], a
    ld [$2000], a
    ld a, [$dc84]
    ldh [$b3], a
    ld b, $0b

jr_000_10d0:
    ldh a, [$b3]
    ld hl, $d5e0
    call Call_000_1b67
    ld a, l
    add c
    ld l, a
    adc h
    sub l
    ld h, a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$ba]
    add l
    ld l, a
    ldh a, [$bb]
    adc h
    ld h, a

jr_000_10eb:
    ldh a, [rSTAT]
    cpl
    and $03

Call_000_10f0:
    jr nz, jr_000_10eb

jr_000_10f2:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_10f2

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, $1f
    add e
    ld e, a
    adc d

Call_000_1102:
    sub e
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, [$dc8c]
    ld l, a
    ldh a, [$b3]
    inc a

Call_000_1110:
    cp l
    jr c, jr_000_1114

    xor a

jr_000_1114:
    ldh [$b3], a
    ld a, $1f
    add e
    ld e, a
    adc d
    sub e
    and $9b
    ld d, a

Jump_000_111f:
    dec b
    jr nz, jr_000_10d0

    ld a, $01
    ldh [$8a], a

Jump_000_1126:
    ld [$2000], a
    ret


Call_000_112a:
    ld a, [$c0e1]
    ld e, a
    ld a, [$c0e2]
    ld d, a
    ldh a, [$bf]
    sub $10
    and $f0
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, de
    ld a, h
    and $9b
    ld h, a
    ld a, $0f
    ldh [$bc], a
    ld a, [$dc84]
    sub $01
    jr nc, jr_000_1151

    ld a, [$dc8c]
    dec a

jr_000_1151:
    ld [$dc84], a
    jr jr_000_1187

Call_000_1156:
    ld a, [$c0e1]
    ld e, a
    ld a, [$c0e2]
    ld d, a
    ldh a, [$bf]
    add $80

Jump_000_1162:
    and $f0
    ld l, a
    ld h, $00

Call_000_1167:
    add hl, hl
    add hl, hl
    add hl, de
    ld a, h
    and $9b
    ld h, a
    ld a, $0f

Jump_000_1170:
    ldh [$bd], a
    ld a, [$dc8c]
    ld c, a
    ld a, [$dc84]
    inc a
    cp c
    jr c, jr_000_117e

    xor a

jr_000_117e:
    ld [$dc84], a
    add $08
    cp c
    jr c, jr_000_1187

    sub c

jr_000_1187:
    ld c, a
    ldh a, [$be]
    srl a
    srl a
    srl a
    and $fe
    add $1e
    and $1f
    add l
    ld e, a
    ld d, h
    ld a, c
    ld hl, $d5e0
    call Call_000_1b67
    ld a, [$dc8b]
    dec a
    ld b, a
    ld a, [$dc83]
    cp b
    ld b, $00
    jr nz, jr_000_11b0

    ld a, $ff
    ld b, a

jr_000_11b0:
    ld c, a
    add hl, bc
    ldh a, [$a9]
    ldh [$8a], a
    ld [$2000], a
    ld a, e
    and $1f
    ld c, a
    ld b, $0c

jr_000_11bf:
    push de
    ld a, [hl+]
    push hl
    call Call_000_12e9
    pop hl
    pop de
    inc de
    inc de
    ld a, c
    add $02
    ld c, a
    cp $20
    jr c, jr_000_11d8

    and $1f
    ld c, a
    ld a, e
    sub $20
    ld e, a

jr_000_11d8:
    ld a, d
    and $9b
    ld d, a
    dec b
    jr nz, jr_000_11bf

    ld a, $01
    ldh [$8a], a

Call_000_11e3:
    ld [$2000], a
    ret


Call_000_11e7:
    ld hl, $c300
    ld a, [$dc84]
    or a
    jr z, jr_000_11f7

    add b
    ld hl, $d5e0
    call Call_000_1b67

jr_000_11f7:
    ld b, $00
    ld a, [$dc83]
    ld c, a
    add hl, bc
    ret


Call_000_11ff:
    ldh a, [$a9]
    ldh [$8a], a
    ld [$2000], a
    xor a

Call_000_1207:
    ldh [$b5], a
    ld a, [$dc8b]
    dec a
    ld c, a
    ld a, [$dc83]
    sub $01
    jr nc, jr_000_1216

    ld a, c

jr_000_1216:
    ld [$dc83], a
    ld a, $00
    ld [$c0e1], a
    ld a, $98
    ld [$c0e2], a
    xor a
    ldh [$b2], a
    ldh a, [$be]
    srl a
    srl a
    srl a
    and $fe
    add $1e
    and $1f
    ld e, a
    ld d, $98
    ld a, $00
    ld [$c0e1], a
    ld a, $98
    ld [$c0e2], a
    ld b, $00
    call Call_000_11e7
    ld b, $0f
    ld c, $0f
    ld a, [$dc84]
    ldh [$b2], a
    ld a, [$dc83]
    ldh [$b3], a

jr_000_1254:
    push bc
    push de
    ld a, e
    and $1f
    ld b, a
    ld a, [$dc83]
    ldh [$b3], a

jr_000_125f:
    push de
    ld a, [hl]
    push hl
    ldh a, [$b5]
    or a
    ld a, [hl]
    jr z, jr_000_126d

    call Call_000_12e9
    jr jr_000_1270

jr_000_126d:
    call Call_000_1316

jr_000_1270:
    pop hl
    ld a, [$dc8b]
    dec a
    ld e, a
    inc hl
    ldh a, [$b3]
    inc a
    ldh [$b3], a
    cp e
    jr c, jr_000_128c

    jr z, jr_000_128c

    sub e
    ldh [$b3], a
    dec hl
    ld a, e
    cpl
    inc a
    ld e, a
    ld d, $ff
    add hl, de

jr_000_128c:
    pop de
    inc de
    inc de
    ld a, b
    add $02
    ld b, a
    cp $20
    jr c, jr_000_129e

    and $1f
    ld b, a
    ld a, e
    sub $20
    ld e, a

jr_000_129e:
    ld a, d
    and $9b

Jump_000_12a1:
    ld d, a
    dec c
    jr nz, jr_000_125f

    ld a, [$dc8c]
    ld c, a
    ldh a, [$b2]
    inc a
    cp c
    jr c, jr_000_12b0

    xor a

jr_000_12b0:
    ldh [$b2], a
    ld hl, $d5e0
    call Call_000_1b67
    ld a, [$dc83]
    ld e, a
    ld d, $00
    add hl, de
    pop de
    pop bc
    ld a, $40
    add e
    ld e, a
    adc d
    sub e
    and $9b
    ld d, a
    dec b
    jr nz, jr_000_1254

    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_12d5:
    ld c, a
    ldh a, [$a9]
    ldh [$8a], a
    ld [$2000], a
    ld a, c
    call Call_000_12e9
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_12e9:
    ld l, a
    ld h, $00
    add hl, hl

Call_000_12ed:
    add hl, hl
    ldh a, [$ba]
    add l
    ld l, a
    ldh a, [$bb]
    adc h
    ld h, a

jr_000_12f6:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_12f6

jr_000_12fd:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_12fd

    ld a, [hl+]
    ld [de], a
    inc e

Call_000_1306:
    ld a, [hl+]
    ld [de], a
    ld a, $1f

Call_000_130a:
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    inc e
    ret


Call_000_1316:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$ba]
    add l
    ld l, a
    ldh a, [$bb]

Call_000_1321:
    adc h
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, $1f
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, [hl+]

Call_000_1330:
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    inc e
    ret


Call_000_1336:
    ld [$c0d5], a
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ldh [$bf], a
    ldh [$be], a
    ld [$c2c7], a
    ld [$c2c8], a
    ldh [rWX], a
    ld a, $90
    ldh [rWY], a
    ld a, $e1
    ldh [rLCDC], a
    call Call_000_0915
    ld hl, $9c00
    ld de, $9c01
    ld bc, $00ff

Jump_000_135e:
    call Call_000_1583
    ld [hl], $fd
    call Call_000_1b45
    ld a, $07
    ldh [$8a], a
    ld [$2000], a
    ld a, [$c0d5]
    ld hl, $149f
    call Call_000_1b67
    ld de, $c300
    call Call_000_1dea
    ld hl, $c300
    ld de, $9000
    ld bc, $0cf0
    call Call_000_1ad7
    ld a, [$c0d5]
    ld hl, $14b3
    call Call_000_1b67
    ld de, $c300
    call Call_000_1dea
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    call Call_000_143b
    ld bc, $0d14
    ld hl, $c300
    ld de, $9800
    xor a
    call Call_000_15b8
    xor a
    ld [$c1f1], a
    call Call_000_0586
    ld a, $68
    ldh [rWY], a
    xor a
    ldh [rWX], a
    jp Jump_000_14c7


Call_000_13bf:
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ld a, [$c0d5]
    ld hl, $3fde
    call Call_000_1b67

jr_000_13cf:
    call Call_000_1ba5
    call Call_000_1421
    push hl

jr_000_13d6:
    call Call_000_1a65
    ld a, [$dc80]
    or a
    jr nz, jr_000_13d6

    ld a, $00
    ld [$c0d1], a
    ld a, $02
    ld [$c0d2], a

jr_000_13e9:
    call Call_000_1576
    call Call_000_1a65
    ld de, $fffe
    ld hl, $c0d1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$c0d1], a
    ld a, h
    ld [$c0d2], a

Call_000_1401:
    or l
    jr z, jr_000_1412

    ld a, [$dcb7]
    or a
    jr nz, jr_000_13e9

    ld a, [$dc80]
    or a
    jr z, jr_000_13e9

    pop hl
    ret


jr_000_1412:
    pop hl
    ld a, [hl]
    cp $ff
    ret z

    push hl
    call Call_000_142e
    call Call_000_143b
    pop hl
    jr jr_000_13cf

Call_000_1421:
jr_000_1421:
    ldh a, [rWY]
    cp $91
    ret nc

    inc a
    ldh [rWY], a
    call Call_000_1576
    jr jr_000_1421

Call_000_142e:
jr_000_142e:
    ldh a, [rWY]
    cp $68
    ret c

    dec a
    ldh [rWY], a
    call Call_000_1576
    jr jr_000_142e

Call_000_143b:
    ld hl, $99a0
    ld de, $99a1
    ld bc, $009f
    call Call_000_1583
    ld [hl], $fd
    jp Jump_000_1b45


Call_000_144c:
    xor a
    ldh [rIE], a
    ldh [rIF], a
    ldh [rSCX], a
    ldh [rSCY], a
    ldh [$bf], a
    ldh [$be], a
    ld [$c2c7], a
    ld [$c2c8], a
    ldh [$ab], a
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    inc a
    ld [$c1f1], a
    ret


Call_000_146e:
    call Call_000_144c
    call Call_000_0915
    call Call_000_0586
    ld hl, $9800
    ld de, $9801
    ld bc, $023f
    ld [hl], $fd
    call Call_000_1ace
    ld a, $91
    ldh [rLCDC], a
    ld hl, $3ef8
    call Call_000_1ba5
    call Call_000_14c7
    ld b, $00
    call Call_000_156f
    ld b, $80
    call Call_000_156f
    jp Jump_000_14e0


    nop
    ld b, b
    nop
    ld b, b
    call nz, Call_000_1a4d
    ld e, [hl]
    add [hl]
    ld h, h
    add h
    ld d, d
    ret c

    ld c, b
    db $10
    ld e, b
    add h

Call_000_14b0:
    ld l, a
    nop
    ld b, b
    add sp, $47
    add sp, $47
    cp h
    ld d, c
    cp [hl]
    ld h, e
    and b
    ld l, [hl]
    ld d, b
    ld d, a
    ld b, $4d
    ld l, b
    ld e, l
    ld l, h
    ld [hl], l
    add sp, $47

Call_000_14c7:
Jump_000_14c7:
    xor a
    ld [$c1f1], a
    ld hl, $153f
    ld de, $1543

jr_000_14d1:
    call Call_000_1516

Call_000_14d4:
    ld a, [$c1f1]
    inc a
    cp $04
    ret nc

    ld [$c1f1], a
    jr jr_000_14d1

Call_000_14e0:
Jump_000_14e0:
    ld a, $03
    ld [$c1f1], a
    ld hl, $153f
    ld de, $1543

jr_000_14eb:
    call Call_000_1516
    ld a, [$c1f1]
    dec a
    cp $ff
    ret z

    ld [$c1f1], a
    jr jr_000_14eb

Call_000_14fa:
    ld b, $07

Jump_000_14fc:
jr_000_14fc:
    push bc
    ld hl, $4018
    call Call_000_1a4c
    pop bc
    dec b
    jr nz, jr_000_14fc

    ret


    ld b, $07

Call_000_150a:
jr_000_150a:
    push bc
    ld hl, $401b
    call Call_000_1a4c
    pop bc
    dec b
    jr nz, jr_000_150a

    ret


Call_000_1516:
    push hl
    push de
    ld a, [$c1f1]
    cp $04
    jp nc, Jump_000_1782

    call Call_000_1b61
    ld a, [$c1f1]
    call Call_000_1b5b

jr_000_1529:
    ld a, [$ff44]
    cp $90
    jr c, jr_000_1529

    ld a, [de]
    ldh [rOBP1], a
    ld a, [hl]
    ldh [rBGP], a
    ldh [rOBP0], a
    pop de
    pop hl
    ld b, $06
    jp Jump_000_156f


    rst $38
    xor [hl]
    ld l, l
    ld l, h
    rst $38
    xor [hl]
    ld e, l
    ld c, h
    rst $38
    ld [$e4e5], a

Call_000_154b:
jr_000_154b:
    call Call_000_1a65
    ld a, [$dc80]
    or a
    jr nz, jr_000_154b

    ret


Call_000_1555:
jr_000_1555:
    call Call_000_1a65
    ld a, [$dc80]
    or a
    jr z, jr_000_1555

    ret


jr_000_155f:
    call Call_000_1a65
    ld a, [$dc80]
    bit 7, a
    jr z, jr_000_156b

    pop bc
    ret


jr_000_156b:
    or a
    jr z, jr_000_155f

    ret


Call_000_156f:
Jump_000_156f:
jr_000_156f:
    call Call_000_1576
    dec b
    ret z

    jr jr_000_156f

Call_000_1576:
jr_000_1576:
    ldh a, [rLY]
    cp $8f
    jr c, jr_000_1576

jr_000_157c:
    ldh a, [rLY]
    cp $8f
    jr nc, jr_000_157c

    ret


Call_000_1583:
    ldh a, [rLCDC]
    and $80
    ret z

jr_000_1588:
    ldh a, [rSTAT]
    cpl

Call_000_158b:
    and $03
    jr nz, jr_000_1588

jr_000_158f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_158f

    ret


Call_000_1596:
    ldh [$b2], a
    ld a, $20
    ldh [$b3], a
    jr jr_000_15a0

Call_000_159e:
    ldh [$b2], a

jr_000_15a0:
    push bc
    push de

jr_000_15a2:
    ldh a, [$b2]
    add [hl]
    ld [de], a
    inc hl
    inc de
    dec c
    jr nz, jr_000_15a2

    pop de
    ldh a, [$b3]
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    pop bc
    dec b
    jr nz, jr_000_15a0

    ret


Call_000_15b8:
Jump_000_15b8:
    ldh [$b2], a

jr_000_15ba:
    push bc
    push de

jr_000_15bc:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_15bc

jr_000_15c3:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_15c3

    ldh a, [$b2]
    add [hl]
    ld [de], a
    inc hl
    inc de
    dec c
    jr nz, jr_000_15bc

    pop de
    ld a, $20
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    pop bc
    dec b
    jr nz, jr_000_15ba

    ret


Call_000_15df:
    ld hl, $ff8c
    ld bc, $0052
    xor a
    call Call_000_1b90
    ld hl, $d300
    ld bc, $0330
    xor a
    call Call_000_1b90
    ld hl, $dc80
    ld bc, $00de
    xor a
    call Call_000_1b90
    ld hl, $c08e
    ld bc, $1272
    xor a
    call Call_000_1b90
    ld hl, $dcbe
    ld bc, $00a0
    ld a, $ff
    call Call_000_1b90
    ld hl, $d3b0
    ld bc, $01b0
    ld a, $ff
    call Call_000_1b90
    ld hl, $c1a0
    ld bc, $0036
    ld a, $ff
    call Call_000_1b90
    ld hl, $c1d6
    ld bc, $001b
    ld a, $ff
    call Call_000_1b90
    ld a, $01
    ld [$c0e0], a
    ld a, [$c086]
    call $4b3b
    ld hl, $c08e
    ld de, $d300
    ld b, $08
    ld c, $14
    call Call_000_1ee6
    ld hl, $c0b6
    xor a
    ld b, $04
    ld c, $14
    call Call_000_1ef2
    ld a, $80
    ldh [$ae], a
    ld a, $ff
    ldh [$af], a
    ldh [$b0], a
    xor a
    ld [$dc9d], a
    inc a
    ld [$dc9c], a
    ld [$dc90], a
    ld a, [$c069]
    ld [$c070], a
    ld hl, $3482
    call Call_000_1b67
    ld a, l
    ld [$dc8b], a
    ld a, h
    ld [$dc8c], a
    ld [$dc89], a
    ld a, [$c070]
    ld hl, $345a
    call Call_000_1b67
    ld a, l
    ld [$dc8d], a
    ld a, h
    ld [$dc8e], a
    ld a, $ff
    ld [$c1fe], a
    ld [$c1ff], a
    ld [$c072], a
    ld [$c1fd], a
    ld a, $20
    ld [$c1f9], a
    ld a, [$c06a]
    ld c, a
    ld a, [$c070]
    call Call_000_1701
    ld a, [$c070]
    ld hl, $3536
    call Call_000_1b67
    ld a, l
    ld [$c1f5], a
    ld a, h
    ld [$c1f6], a
    ld a, [$c070]
    ld hl, $355e
    call Call_000_1b61
    ld a, [hl]

Call_000_16cb:
    ld [$c1f7], a
    ret


    ld [bc], a
    rst $38

Call_000_16d1:
    ld b, $07
    ld hl, $c07f
    ld c, a

jr_000_16d7:
    ld a, [hl]
    cp c
    ret z

    cp $ff
    jr z, jr_000_16e3

    inc hl
    dec b
    jr nz, jr_000_16d7

    ret


jr_000_16e3:
    ld [hl], c
    inc hl
    dec b
    jr z, jr_000_16ea

    ld [hl], $ff

jr_000_16ea:
    inc b
    ld a, b
    cpl
    inc a
    add $07
    ld [$c086], a
    ld hl, $c087
    call Call_000_1b61
    ld [hl], $3f
    ld a, [$c086]
    jp $4b3b


Call_000_1701:
    ld hl, $3c48

Call_000_1704:
    ld de, $0018
    or a
    jr z, jr_000_170e

jr_000_170a:
    add hl, de
    dec a
    jr nz, jr_000_170a

jr_000_170e:
    ld b, $00
    ld a, c
    add a
    add a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld [$dc84], a
    ld a, [hl+]
    ld [$dc83], a
    ld a, [hl+]
    ld c, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

Call_000_1726:
    ld a, l
    ld [$d3b1], a
    ld a, h
    ld [$d3b2], a
    ld l, c
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    ld [$d3b3], a
    ld a, h
    ld [$d3b4], a
    ld a, [$dc83]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    ldh [$c0], a
    ldh [$be], a
    ld [$c2c7], a
    ldh [rSCX], a
    ld a, h
    ldh [$c1], a
    ld a, [$dc8c]
    ld c, a
    ld a, [$dc84]
    inc a
    cp c
    jr c, jr_000_1760

    xor a

jr_000_1760:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    ldh [$c2], a
    ld a, h
    ldh [$c3], a
    ld a, $10
    ldh [$bf], a
    ld [$c2c8], a
    ldh [rSCY], a
    ld [$dcbd], a
    ret


Jump_000_177a:
    ei
    inc a
    ldh [rBGP], a
    db $76
    jp Jump_000_177a


Jump_000_1782:
    ld a, $e7
    ldh [rLCDC], a

jr_000_1786:
    push hl
    ld a, [$c0db]
    inc a
    ld [$c0db], a
    ldh [rBGP], a
    pop hl
    push af
    push bc
    call Call_000_1a65
    pop bc
    pop af
    ld a, [$dc80]
    or a
    jr z, jr_000_1786

    ld a, $6c
    ldh [rBGP], a
    ret


    ld a, h
    call Call_000_17a8
    ld a, l

Call_000_17a8:
    push af
    push hl
    push bc
    push af
    rlca
    rlca
    rlca
    rlca
    and $0f
    call Call_000_17bf
    pop af
    and $0f
    call Call_000_17bf
    pop bc
    pop hl
    pop af
    ret


Call_000_17bf:
    cp $0a
    jr c, jr_000_17c7

    add $ca
    jr jr_000_17c9

jr_000_17c7:
    add $f3

jr_000_17c9:
    ld c, a
    ld a, [$dc81]
    ld b, a
    ld a, [$dc82]
    call Call_000_17ea
    ld a, [$dc81]
    inc a
    ld [$dc81], a

jr_000_17db:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_17db

jr_000_17e2:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_17e2

    ld [hl], c
    ret


Call_000_17ea:
    ld de, $9c00
    and $1f
    ld l, a
    ld h, $00
    jr z, jr_000_17f9

    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

jr_000_17f9:
    add hl, de
    ld a, b
    and $1f
    ld e, a
    ld d, $00
    add hl, de
    ld a, h
    and $9f
    ld h, a
    ret


Jump_000_1806:
    di
    push af
    push bc
    push de
    push hl
    ld a, [$c2c7]
    ldh [rSCX], a
    ld a, [$c2c8]
    ldh [rSCY], a
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ldh a, [$ab]
    or a
    jr z, jr_000_1833

    ldh a, [$ab]
    xor $80
    ldh [$ab], a
    bit 7, a
    ld a, $c2
    jr z, jr_000_182e

    ld a, $c1

jr_000_182e:
    ldh [$81], a
    call $ff80

jr_000_1833:
    ld a, $01

Call_000_1835:
    ldh [$ac], a
    ld a, [$c1f2]
    inc a
    ld [$c1f2], a
    ld a, $06
    ld [$2000], a
    call $4009
    ldh a, [$8a]
    ld [$2000], a
    pop hl
    pop de
    pop bc
    pop af
    ei
    reti


Jump_000_1851:
    push af
    ldh a, [$ad]
    or a
    jr z, jr_000_18ae

    cp $01
    jp z, Jump_000_18be

    cp $02
    jr z, jr_000_1882

    ldh a, [$ae]
    ldh [rLYC], a
    xor a
    ldh [$ad], a
    ld a, $0a

jr_000_1869:
    dec a
    jr nz, jr_000_1869

Jump_000_186c:
    ldh a, [rLCDC]
    xor $08
    ldh [rLCDC], a
    ld a, [$c2c8]
    ldh [rSCY], a
    ld a, [$c2c7]
    ldh [rSCX], a
    ld a, $6c
    ldh [rBGP], a
    pop af
    reti


jr_000_1882:
    ldh a, [$b0]
    ldh [rLYC], a
    ld a, $03
    ldh [$ad], a
    ld a, $0a

jr_000_188c:
    dec a
    jr nz, jr_000_188c

    ldh a, [rLCDC]
    xor $08
    ldh [rLCDC], a
    ld a, [$c1d7]
    cpl
    inc a
    add $30
    ldh [rSCY], a

Call_000_189e:
    ld a, [$c1d9]
    sub $08
    cpl
    inc a
    ldh [rSCX], a
    ld a, [$c0eb]
    ldh [rBGP], a
    pop af
    reti


jr_000_18ae:
    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a
    ld a, $8f
    ldh [rLYC], a
    ld a, $01
    ldh [$ad], a
    pop af
    reti


Jump_000_18be:
    ldh a, [$b1]
    or a
    jr z, jr_000_18d5

    push bc
    push de
    push hl
    ldh a, [$8a]
    push af
    call Call_000_18fd
    pop af
    ldh [$8a], a
    ld [$2000], a
    pop hl
    pop de
    pop bc

jr_000_18d5:
    ld a, $02

Jump_000_18d7:
    ldh [$ad], a
    ldh a, [$af]
    cp $ff
    jr nz, jr_000_18e4

    xor a
    ldh [$ad], a
    ldh a, [$ae]

jr_000_18e4:
    ldh [rLYC], a
    pop af
    reti


Call_000_18e8:
    ld hl, $dcbe
    ld de, $0005
    ld b, $20
    ld c, $20

Call_000_18f2:
    call Call_000_1907
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_18fd:
    ld hl, $dcbe
    ld de, $0005
    ld b, $04
    ld c, $20

Call_000_1907:
Jump_000_1907:
jr_000_1907:
    ld a, [hl]
    inc a
    jr nz, jr_000_1913

    add hl, de
    dec c
    jr nz, jr_000_1907

    xor a
    ldh [$b1], a
    ret


jr_000_1913:
    dec a
    ld [hl], $ff
    inc hl
    ldh [$8a], a
    ld [$2000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a

Call_000_1929:
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
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
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
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
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
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
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
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    pop hl
    inc hl
    inc hl
    dec c
    jr nz, jr_000_198d

    xor a
    ldh [$b1], a
    ret


jr_000_198d:
    ld de, $0005
    dec b
    jp nz, Jump_000_1907

Jump_000_1994:
    ret


    ld b, $08
    ld c, $08
    jr jr_000_19a1

Call_000_199b:
    ld b, $20
    ld a, $20
    ldh [$b2], a

jr_000_19a1:
    ld hl, $dcbe
    ld de, $0005
    xor a
    ldh [$b1], a

Jump_000_19aa:
jr_000_19aa:
    ld a, [hl]
    inc a
    jr nz, jr_000_19b7

    add hl, de
    ldh a, [$b2]
    dec a
    ldh [$b2], a
    jr nz, jr_000_19aa

    ret


jr_000_19b7:
    dec a
    ld [hl], $ff
    inc hl
    ldh [$8a], a
    ld [$2000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $04

jr_000_19ca:
    ldh a, [rSTAT]

Jump_000_19cc:
    cpl
    and $03
    jr nz, jr_000_19ca

jr_000_19d1:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_19d1

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
    inc e

Jump_000_19e6:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_19ca

    pop hl
    inc hl
    inc hl
    ldh a, [$b2]
    dec a
    ldh [$b2], a
    ret z

    ld de, $0005
    dec b
    jp nz, Jump_000_19aa

    ret


Call_000_1a03:
    ld c, a
    ld a, [$dff6]
    or a
    ret nz

    ld a, c
    ld hl, $4003
    jr jr_000_1a4c

Call_000_1a0f:
Jump_000_1a0f:
    ld c, a
    ld a, [$dffc]
    or a
    ret nz

    ld a, c
    ld hl, $4003
    jr jr_000_1a4c

Call_000_1a1b:
    ld c, a
    ldh a, [$91]
    ld [$c2c3], a
    ldh a, [$a9]
    ld [$c2c4], a
    ldh a, [$c1]
    ld [$c2c5], a
    ldh a, [$d9]
    ld [$c2c6], a
    ld a, c
    ld hl, $4006
    call Call_000_1a4c
    ld a, [$c2c3]
    ldh [$91], a
    ld a, [$c2c4]
    ldh [$a9], a
    ld a, [$c2c5]
    ldh [$c1], a
    ld a, [$c2c6]
    ldh [$d9], a
    ret


Call_000_1a4c:
jr_000_1a4c:
    ld c, a

Call_000_1a4d:
    ldh a, [$8a]
    ldh [$8b], a
    ld a, $06
    ldh [$8a], a
    ld [$2000], a
    ld a, c
    call Call_000_1a64
    ldh a, [$8b]
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_1a64:
    jp hl


Call_000_1a65:
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a

Call_000_1a72:
    ld b, a
    ld a, $20
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
    ld [$dc80], a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_1a8f:
    ld c, $80
    ld b, $0a
    ld hl, $1a9d

jr_000_1a96:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_1a96

    ret


    ld a, $d3
    ldh [rDMA], a
    ld a, $28

jr_000_1aa3:
    dec a
    jr nz, jr_000_1aa3

    ret


Call_000_1aa7:
    ldh a, [rLCDC]
    and $80
    ret z

    ldh a, [rIE]
    ld [$c05e], a
    res 0, a
    ldh [rIE], a

jr_000_1ab5:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_1ab5

Call_000_1abb:
    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ld a, [$c05e]
    ldh [rIE], a
    ret


Call_000_1ac7:
jr_000_1ac7:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_1ac7

    ret


Call_000_1ace:
Jump_000_1ace:
jr_000_1ace:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1ace

    ret


Call_000_1ad7:
jr_000_1ad7:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_1ad7

jr_000_1ade:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1ade

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, d
    cp $98
    jr nz, jr_000_1aee

    ld a, $88

Call_000_1aee:
jr_000_1aee:
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1ad7

    ret


jr_000_1af5:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_1af5

jr_000_1afc:
    ldh a, [rSTAT]
    and $03

Jump_000_1b00:
    jr nz, jr_000_1afc

    ld a, [de]
    ldh [$b2], a
    ld a, [hl]
    ld [de], a
    ldh a, [$b2]
    ld [hl], a
    inc hl
    inc de
    dec bc
    ld a, b
    or a
    jr nz, jr_000_1af5

    ret


Call_000_1b12:
    srl b
    srl b
    srl b
    jr nz, jr_000_1b1c

    ld b, $01

jr_000_1b1c:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_1b1c

jr_000_1b23:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1b23

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
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1b1c

    ret


Call_000_1b45:
Jump_000_1b45:
jr_000_1b45:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_1b45

jr_000_1b4c:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1b4c

    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1b45

    ret


Call_000_1b5b:
    add e
    ld e, a
    adc d

Call_000_1b5e:
    sub e
    ld d, a
    ret


Call_000_1b61:
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ret


Call_000_1b67:
    add a
    jr nc, jr_000_1b6b

    inc h

jr_000_1b6b:
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_000_1b74:
    push hl
    add a
    ld e, a
    ld d, $00
    jr nc, jr_000_1b7c

    inc d

jr_000_1b7c:
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ret


Call_000_1b82:
    push hl
    add a
    ld c, a
    ld b, $00
    jr nc, jr_000_1b8a

    inc b

jr_000_1b8a:
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    ret


Call_000_1b90:
Jump_000_1b90:
    ld e, a

jr_000_1b91:
    ld a, e
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1b91

    ret


    ld a, [hl]
    inc hl
    ld [$dc81], a
    inc hl
    ld a, e
    ld [$dc82], a
    jr jr_000_1bae

Call_000_1ba5:
jr_000_1ba5:
    ld a, [hl]
    inc hl
    ld [$dc81], a
    ld a, [hl+]
    ld [$dc82], a

Call_000_1bae:
jr_000_1bae:
    ld a, [hl+]
    cp $ff
    ret z

    cp $fe
    jr z, jr_000_1ba5

    push hl
    call Call_000_1bbd
    pop hl
    jr jr_000_1bae

Call_000_1bbd:
    cp $3a
    jr nc, jr_000_1bdd

    cp $2c
    jr nz, jr_000_1bc9

    ld a, $6c
    jr jr_000_1bdd

jr_000_1bc9:
    cp $27
    jr nz, jr_000_1bd1

    ld a, $6b
    jr jr_000_1bdd

jr_000_1bd1:
    cp $20
    jr nz, jr_000_1bd9

    ld a, $6a
    jr jr_000_1bdd

jr_000_1bd9:
    add $10
    add $20

jr_000_1bdd:
    sub $41
    add $d4
    ld c, a
    ld a, [$dc82]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$dc81]
    ld e, a
    inc a
    ld [$dc81], a
    ld d, $98
    add hl, de
    call Call_000_1583
    ld [hl], c
    ret


Call_000_1bfd:
    ld hl, $1dc4
    ld de, $d3b0
    ld bc, $001b
    call Call_000_1ace
    xor a
    ld [$d3c1], a
    ld hl, $1db4
    ld de, $d300
    ld bc, $0010
    call Call_000_1ace
    ld a, [$c06a]
    ld c, a
    ld a, [$c070]
    call Call_000_1701
    ld a, [$c06e]
    and $bb
    ld [$d3ba], a
    ld a, [$c06f]
    ld [$dca2], a
    call $6354

Call_000_1c34:
    ld a, $00
    call $69db
    ldh a, [$91]
    ld [$d3b5], a
    ld hl, $d3a0
    ld bc, $0010
    ld a, $00
    call Call_000_1b90
    ld hl, $d303
    ld de, $0004
    ld a, $10
    ld b, $28

jr_000_1c53:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_1c53

    call $4b67
    call $7af9
    call $4d12
    call Call_000_0eaa
    call Call_000_18e8
    jp $7a01


Call_000_1c6a:
    ld [$c0e5], a
    ld e, a
    ld hl, $d3a0

Call_000_1c71:
    call Call_000_1b61
    set 7, [hl]
    ld a, [hl]
    and $01
    xor $01
    jr z, jr_000_1c7f

    ld a, $40

jr_000_1c7f:
    ld d, a

Call_000_1c80:
    ldh [$b3], a
    ld a, c

Jump_000_1c83:
    ld [$c0e6], a
    ld a, e
    call Call_000_1da1
    ld a, c
    ldh [$b2], a
    ld hl, $c0b6
    call Call_000_1b61
    ld a, [hl]
    add d
    ld l, a
    ld h, $08
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ldh a, [$a7]
    cp $04
    ld hl, $1ce5
    jp nc, Jump_000_1782

    call Call_000_1b67
    ld a, l
    ld [$c0e3], a
    ld a, h
    ld [$c0e4], a
    ld a, [$c0e5]
    ld hl, $d631
    add a
    call Call_000_1b61
    ld b, [hl]
    ld a, b
    ldh [$b4], a
    ld a, [$c0e5]
    or a
    ld hl, $d3c2
    jr z, jr_000_1cd0

    ld de, $001b

jr_000_1ccc:
    add hl, de
    dec a
    jr nz, jr_000_1ccc

jr_000_1cd0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, b
    ld d, $00
    ld a, [$c0e6]
    or a
    jr z, jr_000_1ce0

jr_000_1cdc:
    add hl, de
    dec a
    jr nz, jr_000_1cdc

jr_000_1ce0:
    pop de
    ret


    inc bc
    inc bc
    inc b
    or h
    ld b, h
    ld hl, sp+$59
    nop
    ld b, b

Call_000_1ceb:
    call Call_000_1c6a
    ldh a, [$a7]
    push hl
    ld hl, $1ce2

Jump_000_1cf4:
    call Call_000_1b61
    ld a, [hl]
    ldh [$a7], a
    pop hl
    ldh [$8a], a
    ld [$2000], a

Jump_000_1d00:
    ld c, $ff
    ld a, b

jr_000_1d03:
    sub $02
    inc c
    jr nc, jr_000_1d03

    ld a, c
    or a
    jr z, jr_000_1d0e

    ld b, $02

Jump_000_1d0e:
jr_000_1d0e:
    ld a, [hl+]
    push hl
    ld l, a

Call_000_1d11:
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push bc
    ld a, [$c0e3]
    add l
    ld c, a
    ld a, [$c0e4]
    adc h
    ld b, a
    ld a, [$c2c0]
    ld l, a
    ld a, [$c2c1]
    ld h, a
    ldh a, [$a7]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, l
    ld [$c2c0], a
    ld a, h
    ld [$c2c1], a
    ld a, $20
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    pop bc
    pop hl
    dec b
    jp nz, Jump_000_1d0e

    ldh a, [$b4]
    sub $02
    jr z, jr_000_1d99

    jr c, jr_000_1d99

    ldh [$b4], a
    ldh a, [$b2]
    inc a
    ldh [$b2], a
    cp $10
    jr c, jr_000_1d64

    ld hl, $1ceb
    jp Jump_000_177a


jr_000_1d64:
    push hl
    ld hl, $d670
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ldh a, [$b2]

Call_000_1d6f:
    ld c, a
    cpl
    inc a
    add $10
    ld b, a

Jump_000_1d75:
    ld a, [$c0e5]
    ld e, a
    call Call_000_1da9
    ld a, c
    dec a
    ldh [$b2], a
    ld hl, $c0b6
    call Call_000_1b61
    ldh a, [$b3]
    add [hl]
    ld l, a
    ld h, $08
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    ldh a, [$b4]
    ld b, a
    pop hl
    jp Jump_000_1d00


jr_000_1d99:
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_1da1:
    ld hl, $d670
    ld e, a
    ld b, $10
    ld c, $ff

Call_000_1da9:
jr_000_1da9:
    inc c
    dec b
    ld a, [hl+]
    cp e
    ret z

    ld a, b
    or a
    jr nz, jr_000_1da9

    scf
    ret


    ld h, b
    jr nc, jr_000_1db7

jr_000_1db7:
    db $10
    ld h, b
    jr c, jr_000_1dbd

    db $10
    ld [hl], b

jr_000_1dbd:
    jr nc, jr_000_1dc3

Call_000_1dbf:
    db $10
    ld [hl], b
    jr c, jr_000_1dc9

jr_000_1dc3:
    stop
    ld h, b
    nop
    jr nc, jr_000_1dc9

jr_000_1dc9:
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc d
    ld e, c
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $0600
    add hl, bc
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld b, l
    ld c, [hl]
    ld d, h
    ld d, e
    rst $38

Call_000_1dea:
    ld a, $40
    ldh [$f8], a
    ld a, $80
    ldh [$f1], a
    ld a, l

Call_000_1df3:
    ldh [$f2], a
    ld a, h

Jump_000_1df6:
    ldh [$f3], a
    ld a, e
    ldh [$f4], a
    ld a, d
    ldh [$f5], a

jr_000_1dfe:
    ld a, $80
    ldh [$f7], a
    ld a, $01
    ldh [$f9], a
    ld a, $02
    ldh [$fa], a
    ld a, $01

Jump_000_1e0c:
    ldh [$fb], a
    call Call_000_1ebd
    ldh a, [$f4]
    ld l, a
    ldh a, [$f5]
    ld h, a
    ld a, e
    ldh [$f6], a
    ld [hl+], a
    ld a, l
    ldh [$f4], a
    ld a, h
    ldh [$f5], a

Jump_000_1e21:
jr_000_1e21:
    ld a, e
    ldh [$fc], a
    ld a, d
    ldh [$fd], a
    call Call_000_1ebd
    ld a, d
    cp $01
    jr nz, jr_000_1e37

    ld a, e
    or a
    jr z, jr_000_1dfe

    dec a
    jr nz, jr_000_1e37

    ret


jr_000_1e37:
    push de
    ld bc, $dc00
    ldh a, [$fa]
    ld l, a
    ldh a, [$fb]
    ld h, a
    ld a, e
    sub l
    ld a, d
    sbc h
    jr c, jr_000_1e51

    ldh a, [$f6]
    inc c
    ld [bc], a
    ldh a, [$fc]
    ld e, a
    ldh a, [$fd]
    ld d, a

jr_000_1e51:
    ld a, d
    or a
    jr z, jr_000_1e66

jr_000_1e55:
    ld hl, $d000
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    inc c
    ld [bc], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, d
    or a
    jr nz, jr_000_1e55

jr_000_1e66:
    ldh a, [$f4]
    ld l, a
    ldh a, [$f5]
    ld h, a
    ld a, e
    ldh [$f6], a
    inc c
    ld [bc], a

jr_000_1e71:
    ld a, [bc]
    ld [hl+], a
    dec c
    jr nz, jr_000_1e71

    ld a, l
    ldh [$f4], a
    ld a, h
    ldh [$f5], a
    pop de
    ldh a, [$fa]
    ld c, a
    ldh a, [$fb]
    ld b, a
    ldh a, [$f9]
    cp b
    jr c, jr_000_1e21

    ld hl, $d000
    add hl, bc
    add hl, bc
    add hl, bc
    inc bc
    ldh a, [$f6]
    ld [hl+], a
    ldh a, [$fc]
    ld [hl+], a
    ldh a, [$fd]
    ld [hl+], a
    ld a, c
    ldh [$fa], a
    ld a, b
    ldh [$fb], a
    inc c
    jp nz, Jump_000_1e21

    ldh a, [$f9]
    cp b
    jp nz, Jump_000_1e21

    ldh a, [$f8]
    ld c, a
    ldh a, [$f7]
    cp c
    jp z, Jump_000_1e21

    srl a

Jump_000_1eb3:
    ldh [$f7], a
    ld a, b
    add a
    inc a
    ldh [$f9], a
    jp Jump_000_1e21


Call_000_1ebd:
Jump_000_1ebd:
    ldh a, [$f2]

Call_000_1ebf:
    ld l, a
    ldh a, [$f3]
    ld h, a
    ldh a, [$f7]
    ld e, a
    ld d, $00
    ldh a, [$f1]

jr_000_1eca:
    add a
    jr z, jr_000_1edc

    rl e
    rl d
    jr nc, jr_000_1eca

jr_000_1ed3:
    ldh [$f1], a
    ld a, l
    ldh [$f2], a
    ld a, h
    ldh [$f3], a
    ret


jr_000_1edc:
    ld a, [hl+]
    rla
    rl e
    rl d
    jr nc, jr_000_1eca

    jr jr_000_1ed3

Call_000_1ee6:
jr_000_1ee6:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, b
    call Call_000_1b5b
    dec c

Call_000_1eef:
    jr nz, jr_000_1ee6

    ret


Call_000_1ef2:
jr_000_1ef2:
    ld [hl+], a
    add b
    dec c
    jr nz, jr_000_1ef2

    ret


Call_000_1ef8:
    ld a, [$c0cc]
    or a
    jr z, jr_000_1f36

    dec a

Call_000_1eff:
    ld [$c0cc], a
    ld a, [$dca2]
    ld c, a
    cp $05
    jr z, jr_000_1f2e

    cp $02
    jr nz, jr_000_1f12

    xor a
    ld [$c0cc], a

jr_000_1f12:
    ld hl, $c05d
    inc [hl]
    ld a, [hl]
    cp $0b
    jr c, jr_000_1f2a

    xor a
    ld [$c05d], a
    ld a, [$dca2]

Call_000_1f22:
    cp $01
    jr z, jr_000_1f2a

    xor a
    ld [$dca2], a

Call_000_1f2a:
jr_000_1f2a:
    ld a, c
    cp $02
    ret z

jr_000_1f2e:
    ld hl, $c068
    ld a, [hl]
    or a
    jr z, jr_000_1f36

    dec [hl]

jr_000_1f36:
    ld a, [$c0cd]
    or a
    ret z

    dec a
    ld [$c0cd], a
    ld hl, $c068
    ld a, [hl]
    inc [hl]
    cp $1f
    ret nz

    dec [hl]
    xor a
    ld [$c0cd], a
    ret


Call_000_1f4d:
    ld a, [$dc99]
    or a
    ret nz

    call $7857
    call Call_000_20bc
    call $7711
    call Call_000_1ef8
    ld a, [$c1f8]
    or a

Call_000_1f62:
    jr z, jr_000_1f69

    cp $80
    jp c, $777a

jr_000_1f69:
    ld a, [$c1f8]
    or a
    jr z, jr_000_1fba

    xor a
    ld [$c1f8], a
    dec a
    ld [$c1ff], a
    ld hl, $9c00
    ld de, $9c01
    ld bc, $0007
    ld [hl], $f1
    call Call_000_1b45
    ld hl, $9c00
    ld de, $9c20
    ld bc, $0008
    call Call_000_1b45
    ldh a, [$aa]
    ldh [$8a], a
    ld [$2000], a
    ld hl, $40d0
    ld de, $8e60
    ld b, $40
    call Call_000_1b12
    ld hl, $4110
    ld b, $40
    call Call_000_1b12
    ld hl, $4110
    ld b, $40
    call Call_000_1b12
    ld a, $01
    ldh [$8a], a

Call_000_1fb7:
    ld [$2000], a

jr_000_1fba:
    ld a, [$c1ff]
    ld c, a

Call_000_1fbe:
    ld a, [$c068]
    and $1f
    cp c
    ret z

    ld [$c1ff], a
    inc a
    ldh [$b3], a
    ld hl, $9c00
    srl a
    srl a
    srl a
    ld b, a
    cpl
    inc a
    add $03
    cp $80
    jr c, jr_000_1fde

    xor a

jr_000_1fde:
    ldh [$b2], a
    ldh a, [$b3]
    and $07
    jr nz, jr_000_1fee

    ldh a, [$b2]
    or a
    jr z, jr_000_1fee

    inc a
    ldh [$b2], a

Call_000_1fee:
jr_000_1fee:
    ld a, b
    or a

Jump_000_1ff0:
    jr z, jr_000_2013

jr_000_1ff2:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_1ff2

jr_000_1ff9:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1ff9

    ld de, $001f
    ld a, $e6
    ld [hl+], a
    inc a
    ld [hl], a
    add hl, de
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ld de, $ffe1

Call_000_200f:
    add hl, de
    dec b
    jr nz, jr_000_1ff2

jr_000_2013:
    ldh a, [$b3]
    and $07
    jr z, jr_000_2037

jr_000_2019:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_2019

jr_000_2020:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_2020

    ld a, $ee
    ld de, $001f
    ld [hl+], a
    inc a

Jump_000_202d:
    ld [hl], a

Call_000_202e:
    inc a
    add hl, de
    ld [hl+], a
    inc a
    ld [hl], a
    ld de, $ffe1
    add hl, de

jr_000_2037:
    ldh a, [$b2]
    or a
    jr z, jr_000_205e

    ld c, a

jr_000_203d:
    ldh a, [rSTAT]
    cpl

Call_000_2040:
    and $03
    jr nz, jr_000_203d

jr_000_2044:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_2044

    ld a, $ea
    ld de, $001f
    ld [hl+], a
    inc a
    ld [hl], a
    add hl, de
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ld de, $ffe1
    add hl, de
    dec c

Jump_000_205c:
    jr nz, jr_000_203d

jr_000_205e:
    ldh a, [$b3]

Call_000_2060:
    and $07
    ret z

    add a
    add a
    ld hl, $4478
    call Call_000_1b61
    ld de, $8ee0
    ldh a, [$aa]
    ldh [$8a], a
    ld [$2000], a
    ld b, $04

jr_000_2077:
    push bc

Call_000_2078:
    ld a, [hl+]
    add a
    add a
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $40d0
    add hl, bc
    ld c, $02

jr_000_2087:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_2087

jr_000_208e:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_208e

    ld a, [hl+]
    ld [de], a

Jump_000_2096:
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
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_2087

    pop hl
    pop bc
    dec b
    jr nz, jr_000_2077

Jump_000_20b4:
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_20bc:
    ld a, [$c072]
    ld c, a
    ld a, [$c071]
    cp c
    ret z

    ld [$c072], a
    ld hl, $4498
    add a
    add a
    call Call_000_1b61
    ld de, $8f20
    ld b, $04
    ldh a, [$aa]
    ldh [$8a], a
    ld [$2000], a

jr_000_20dc:
    ld a, [hl+]
    push hl
    add a
    add a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $42
    ld h, a
    ld c, $02

jr_000_20ef:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_20ef

jr_000_20f6:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_20f6

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
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_20ef

    pop hl
    dec b
    jr nz, jr_000_20dc

    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_2123:
    ld hl, $d788

Jump_000_2126:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    dec [hl]
    jp nz, Jump_000_21cf

    inc hl
    ld a, [hl]
    ld c, a
    and $3f
    dec hl
    ld [hl+], a
    ld a, c
    bit 7, a
    jr z, jr_000_214c

    bit 6, a
    jr z, jr_000_214c

    inc hl
    dec [hl]
    ld a, [hl+]
    jr nz, jr_000_2163

    dec hl
    dec hl
    res 6, [hl]
    inc hl
    inc hl
    jr jr_000_2163

jr_000_214c:
    inc hl
    inc [hl]
    ld a, [hl+]
    cp [hl]
    jr nz, jr_000_2163

    dec hl
    ld a, c
    bit 7, a
    jr z, jr_000_2161

    dec hl
    set 6, [hl]
    inc hl
    dec [hl]
    dec [hl]
    ld a, [hl+]
    jr jr_000_2163

jr_000_2161:
    xor a
    ld [hl+], a

jr_000_2163:
    ldh [$b2], a
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld a, [hl+]
    ldh [$a7], a
    ld a, [hl+]
    ldh [$b3], a
    ld a, [hl]
    push af
    ldh a, [$b3]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ldh a, [$b2]
    or a
    jr z, jr_000_218a

    push de
    push hl
    pop de
    pop hl

jr_000_2184:
    add hl, de
    dec a
    jr nz, jr_000_2184

    ld e, l
    ld d, h

jr_000_218a:
    pop af
    ld l, a
    cp $80
    ld h, $08
    jr nc, jr_000_2194

    ld h, $09

jr_000_2194:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    push de
    pop hl
    pop de
    ldh a, [$b3]
    add a
    ld b, a
    ldh a, [$a7]

Call_000_21a2:
    ldh [$8a], a
    ld [$2000], a

jr_000_21a7:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_000_21a7

jr_000_21ae:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_21ae

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
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_21a7

Jump_000_21cf:
    pop hl
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ld de, $0009
    add hl, de
    jp Jump_000_2126


Call_000_21de:
    ld hl, $d3cb
    ld bc, $0195
    ld a, $ff
    call Call_000_1b90
    ld hl, $d670
    ld b, $10

jr_000_21ee:
    ld a, [hl]
    or a
    jr z, jr_000_21f4

    ld [hl], $ff

jr_000_21f4:
    inc hl
    dec b
    jr nz, jr_000_21ee

    ld hl, $d632
    ld bc, $001e
    ld a, $ff

Call_000_2200:
    call Call_000_1b90

Call_000_2203:
    ld hl, $d650
    ld bc, $0010
    ld a, $ff
    call Call_000_1b90
    ld hl, $d660
    ld bc, $0010
    ld a, $ff
    call Call_000_1b90
    ld hl, $d300
    ld b, $28
    xor a

jr_000_221f:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $10
    inc l
    dec b
    jr nz, jr_000_221f

    jp Jump_000_096d


Call_000_222b:
    ld a, [$d3c7]
    cp $ff
    ret nz

    ld a, [$c063]
    or a
    jr nz, jr_000_2245

    ldh a, [$af]
    inc a
    ret z

    ld a, $ff
    ldh [$af], a
    ldh [$b0], a
    ld [$c1d6], a
    ret


jr_000_2245:
    ld a, [$c1d6]
    cp $f0
    jp z, Jump_000_24d5

    xor a
    ldh [$b1], a
    ld a, [$c074]
    cp $ff
    ret z

    ldh [$b5], a
    cp $06
    jr nz, jr_000_2261

    ld a, $01
    ld [$d3ba], a

jr_000_2261:
    ldh a, [$b5]
    cp $05
    ld a, $04
    jr z, jr_000_226b

    ld a, $03

jr_000_226b:
    call Call_000_1a1b
    ldh a, [$b5]
    cp $01
    jr z, jr_000_2278

Jump_000_2274:
    xor a
    ld [$dca2], a

jr_000_2278:
    ldh a, [$b5]
    cp $04
    jr nz, jr_000_2283

    ld a, $ff
    ld [$d673], a

jr_000_2283:
    call Call_000_21de
    ld hl, $1dc4
    ld de, $c1d6
    ld bc, $001b

Call_000_228f:
    call Call_000_1ace
    ld a, $f0
    ld [$c1d6], a
    ldh a, [$b5]
    ld [$c1ea], a
    ld a, $01
    ld [$c1df], a
    ld a, $ff
    ld [$d788], a
    ld hl, $c1d7
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c1ea]
    ld hl, $3a53
    call Call_000_1b67
    ld a, l
    ld [$c1d7], a
    ld a, h
    ld [$c1d9], a
    xor a
    ld [$c1da], a
    ld [$c1d8], a
    ld a, $01
    ld [$c1e0], a
    ld a, [$c1ea]
    ld hl, $3a61
    call Call_000_1b61
    ld a, [hl]
    ld [$c1e3], a
    xor a
    ld [$c1e2], a
    call Call_000_2b36
    ld hl, $9c00
    ld de, $d560
    ld bc, $0040
    call Call_000_1b45

Call_000_22eb:
    ld hl, $d300
    ld de, $9800
    ld bc, $04ad
    call Call_000_1b45
    ld a, [$c074]
    ld hl, $3a92
    call Call_000_1b61
    ld a, [hl]
    ldh [$a8], a
    ldh [$8a], a
    ld [$2000], a
    ld a, [$c1ea]
    ld hl, $3a68
    call Call_000_1b67
    ld de, $c300
    call Call_000_1dea
    ld hl, $c300
    ld de, $9000
    ld bc, $0df0
    call Call_000_1ad7
    ld a, [$c1ea]
    cp $03
    jr z, jr_000_234d

    cp $04
    jr z, jr_000_234d

    cp $05
    jr z, jr_000_234d

    ld hl, $3a99
    call Call_000_1b67
    ld de, $c300
    call Call_000_1dea
    ld hl, $c300
    ld de, $9300
    ld bc, $0af0
    call Call_000_1ad7
    ld a, [$c1ea]

jr_000_234d:
    ld hl, $3a84
    call Call_000_1b67
    ld de, $c300
    call Call_000_1dea
    ld hl, $9800
    ld de, $d300
    ld bc, $04ad
    call Call_000_1b45
    ld hl, $d560
    ld de, $9c00
    ld bc, $0040
    call Call_000_1b45
    ld hl, $d560
    ld bc, $0080
    xor a
    call Call_000_1b90
    ld hl, $9c40
    ld de, $9c41
    call Call_000_1583
    ld [hl], $30
    ld bc, $013f
    call Call_000_1b45
    ld a, [$c1ea]
    ld hl, $3a76
    call Call_000_1b67
    ld a, l
    ldh [$ba], a
    ld a, h
    ldh [$bb], a
    ld a, $0b
    ld [$dc8b], a
    dec a
    ld [$dc8d], a
    ld a, $09
    ld [$dc8c], a
    dec a
    ld [$dc8e], a
    ld a, [$c1ea]
    ld hl, $3b36
    call Call_000_1b67
    ld c, $00
    xor a
    call Call_000_1704
    ld a, [$c1ea]
    ld hl, $3aca
    call Call_000_1b67
    ld a, l
    ld [$c1f5], a
    ld a, h
    ld [$c1f6], a
    ld a, [$c1ea]
    ld hl, $3ad8
    call Call_000_1b61
    ld a, [hl]
    ld [$c1f7], a
    ld hl, $d5e0
    ld de, $c300
    ld c, $28
    ld a, [$dc8b]
    ld b, a
    call Call_000_1ee6
    ld a, [$c1ea]
    cp $00
    jr nz, jr_000_23f8

    ld a, [$5a45]
    ld [$c1e7], a
    jr jr_000_2402

jr_000_23f8:
    cp $01
    jr nz, jr_000_2402

    ld a, [$6380]
    ld [$c1e7], a

jr_000_2402:
    ld a, [$c1ea]
    ld hl, $3a37
    call Call_000_1b67
    ld a, l
    ld [$c0d5], a
    ld a, h
    ld [$c0d6], a
    ld hl, $d3cb
    ld b, $0f
    ld de, $001b

jr_000_241b:
    ld a, [hl]
    push hl
    cp $04
    jr nz, jr_000_242d

    ld de, $0012
    add hl, de
    ld a, [$c0d5]
    ld [hl+], a
    ld a, [$c0d6]
    ld [hl], a

jr_000_242d:
    ld de, $001b
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_241b

    ld a, [$c1ea]
    ld hl, $3a45
    call Call_000_1b61
    ld a, [hl]
    ld [$c1ed], a
    ld a, $01
    call Call_000_1207
    xor a
    ld [$c1eb], a
    ld [$c1ec], a
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    call $7af9
    call Call_000_0eaa
    call Call_000_199b
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    call $7a01
    call Call_000_096d
    ld a, $01

Jump_000_246d:
    ldh [$ab], a
    ld a, [$c1ea]
    cp $06
    jr nz, jr_000_2482

    ld hl, $344f
    ld de, $d788
    ld bc, $000a
    call Call_000_1ace

jr_000_2482:
    ld a, [$c1ea]
    cp $01
    jr nz, jr_000_2495

    ld hl, $3445
    ld de, $d788
    ld bc, $000a
    call Call_000_1ace

jr_000_2495:
    ld a, [$c1ea]
    cp $03
    jr nz, jr_000_24a8

    ld hl, $3402
    ld de, $d788
    ld bc, $0013
    call Call_000_1ace

jr_000_24a8:
    call Call_000_14c7
    ld a, [$c1ea]
    cp $03
    jr z, jr_000_24d5

    cp $04
    jr z, jr_000_24d5

    cp $05
    jr z, jr_000_24d5

    ld hl, $3ab5
    call Call_000_1b67
    ld b, h
    ld c, l
    ld a, [$c1ea]
    ld hl, $3a4c
    call Call_000_1b61
    ld a, b
    add a
    add a
    add a
    add [hl]
    ldh [$b0], a
    ld a, [hl]
    ldh [$af], a

Jump_000_24d5:
jr_000_24d5:
    ld a, [$c1ea]
    cp $04
    jr z, jr_000_24e2

    cp $03
    jr z, jr_000_24e2

    jr jr_000_24f1

jr_000_24e2:
    ld a, [$d3cb]
    inc a

Call_000_24e6:
    ret nz

    ld a, $01
    ld [$c064], a
    ld hl, $c1ed
    set 7, [hl]

jr_000_24f1:
    ld a, [$c1ed]
    bit 7, a
    jp z, Jump_000_260b

    ld a, [$c064]
    or a
    ret z

    ld hl, $c087
    ld bc, $0007
    ld a, $3f
    call Call_000_1b90
    ld a, [$c074]
    cp $00
    jr z, jr_000_251c

    cp $01
    jr z, jr_000_251c

    cp $03
    jr z, jr_000_251c

    cp $04
    jr nz, jr_000_252e

jr_000_251c:
    ld a, [$c066]
    inc a
    ld [$c066], a
    cp $04
    jr nz, jr_000_252e

    ld a, $05
    ld c, $00
    call $4699

jr_000_252e:
    ld a, $01
    ld [$c06b], a
    xor a
    ld [$c063], a

Call_000_2537:
    ld [$c064], a
    ld [$c1ed], a
    ld a, [$c074]
    ld hl, $39ce
    call Call_000_1b61
    ld a, [hl]
    cp $ff
    call nz, Call_000_16d1
    ld a, [$c074]
    ld hl, $39e9
    call Call_000_1b61
    ld a, [hl]

Call_000_2556:
    ldh [$b2], a
    inc a
    jp z, Jump_000_25c1

    call Call_000_07c2
    call Call_000_14e0
    call Call_000_0915
    ldh a, [$b2]
    call Call_000_1336
    call Call_000_13bf

Jump_000_256d:
    ld a, [$c074]
    cp $06
    jr nz, jr_000_25c1

    call Call_000_14e0
    ld a, $05
    call Call_000_1a1b
    ld a, $00
    call Call_000_1336
    call Call_000_13bf
    call Call_000_142e
    call Call_000_143b
    call Call_000_3ead
    ld hl, $c054
    ld de, $c050
    ld b, $04
    call Call_000_3ee0
    ld hl, $25b3
    call Call_000_1ba5
    ld hl, $c054
    call Call_000_1bae
    call Call_000_1421
    call Call_000_154b
    call Call_000_1555
    call Call_000_14e0
    jp Jump_000_0186


    ld b, $0e
    ld c, b
    ld c, c
    jr nz, @+$55

    ld b, e
    ld c, a
    ld d, d
    ld b, l
    cp $06
    rrca
    rst $38

Jump_000_25c1:
jr_000_25c1:
    ld a, [$c074]
    add a
    ld hl, $3a22
    call Call_000_1b61
    ld a, [hl+]
    ld [$c069], a
    ld [$c06d], a
    ld a, [hl]
    ld [$c06a], a
    ld [$c06c], a
    ld a, [$c074]
    ld hl, $3a14
    add a
    call Call_000_1b61
    ld c, $00
    ld a, [hl+]
    cp $ff
    jr z, jr_000_25f6

    bit 7, a
    jr z, jr_000_25ef

    inc c

jr_000_25ef:
    and $7f
    push hl
    call $4699
    pop hl

jr_000_25f6:
    ld c, $00
    ld a, [hl]
    cp $ff
    jp z, $6291

    bit 7, a
    jr z, jr_000_2603

    inc c

jr_000_2603:
    and $7f
    call $4699
    jp $6291


Jump_000_260b:
    and $7f
    jp nz, Jump_000_2695

    call Call_000_21de
    ld a, [$c1ea]
    ld hl, $3a06
    call Call_000_1b67
    call Call_000_2b3f
    ld hl, $d3cb
    ld b, $0f

Call_000_2624:
    ld a, $ff
    ldh [$b2], a

jr_000_2628:
    ld a, [hl]
    cp $ff
    jr z, jr_000_2684

    push bc
    push hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    push hl
    ld a, [$c1d7]
    ld l, a
    ld a, [$c1d8]
    ld h, a

Jump_000_263d:
    add hl, de
    ld d, h
    ld a, l
    pop hl
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    push hl
    ld a, [$c1ea]
    ld hl, $39f6
    call Call_000_1b82
    ld a, [$c1d9]
    ld l, a
    ld a, [$c1da]
    ld h, a
    add hl, bc
    add hl, de
    ld d, h
    ld a, l
    pop hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld bc, $0008
    add hl, bc
    ld [hl+], a
    ld [hl], d
    ld de, $fffa
    add hl, de
    ldh a, [$b2]
    inc a
    ldh [$b2], a
    ld de, $39f0
    call Call_000_1b5b
    ld a, [de]
    ld [hl], a
    pop hl
    pop bc
    ld de, $001b
    add hl, de
    dec b
    jr nz, jr_000_2628

jr_000_2684:
    ld a, [$c1ed]
    set 7, a
    ld [$c1ed], a
    ld de, $0000
    ld bc, $0001
    jp $7754


Jump_000_2695:
    call Call_000_298b
    ld a, [$c1ea]
    cp $00
    jp nz, Jump_000_2748

    ld a, [$c0ec]
    or a
    jr z, jr_000_26ac

    dec a
    ld [$c0ec], a
    jr jr_000_26b1

jr_000_26ac:
    ld a, $4c
    ld [$c0eb], a

jr_000_26b1:
    ld hl, $c1df
    dec [hl]
    jr z, jr_000_26d4

    call Call_000_2b05
    ld a, [$c1ea]
    ld hl, $3ab5
    call Call_000_1b67
    ld a, l
    add $08
    ld c, a
    ld b, $01
    ld hl, $d560
    ld de, $9c40
    ld a, $30
    jp Jump_000_15b8


jr_000_26d4:
    ld [hl], $0c
    ld a, [$c1dd]
    inc a
    and $03
    ld [$c1dd], a
    ld hl, $2744
    call Call_000_1b61
    ld a, [hl]

Call_000_26e6:
    ld [$c1db], a
    call Call_000_2a84
    call Call_000_2b05
    call Call_000_2a6b
    call Call_000_2a4b
    ret nz

    ld hl, $c1e0
    ld a, [hl]
    bit 0, a
    jr z, jr_000_2722

    ld a, [$c1d9]
    ld l, a
    ld a, [$c1da]
    ld h, a
    ld de, $fffe
    add hl, de
    ld a, l
    ld [$c1d9], a
    ld a, h
    ld [$c1da], a
    ld a, [$c1e2]
    inc a
    ld [$c1e2], a
    cp $2c
    ret nz

    ld hl, $c1e0
    res 0, [hl]
    ret


jr_000_2722:
    ld de, $0002
    ld a, [$c1d9]
    ld l, a
    ld a, [$c1da]
    ld h, a
    add hl, de
    ld a, l
    ld [$c1d9], a
    ld a, h
    ld [$c1da], a
    ld a, [$c1e2]
    dec a
    ld [$c1e2], a
    ret nz

    ld hl, $c1e0
    set 0, [hl]
    ret


    nop
    ld bc, $0102

Jump_000_2748:
    cp $01
    jp nz, Jump_000_281a

    ld a, [$c1eb]
    bit 1, a
    jr z, jr_000_277f

    bit 2, a
    jr nz, jr_000_276a

    set 2, a
    ld [$c1eb], a
    ld a, $04
    ld [$c1e2], a
    ld a, $07
    ld [$c1db], a
    call Call_000_2811

jr_000_276a:
    ld hl, $c1e2
    dec [hl]
    ret nz

    ld a, [$c1eb]
    res 1, a
    res 2, a
    ld [$c1eb], a
    ld a, $07
    ld [$c1dd], a
    ret


jr_000_277f:
    ld a, $6c
    ld [$c0eb], a
    ld hl, $c1df
    dec [hl]
    jr z, jr_000_27a9

    call Call_000_2ac7
    ld c, $0a
    ld b, $01
    ld a, [$c1eb]
    bit 0, a
    ld hl, $d5a0
    ld de, $9cc0
    jr nz, jr_000_27a4

    ld hl, $d5c0
    ld de, $9d00

jr_000_27a4:
    ld a, $30
    jp Jump_000_15b8


jr_000_27a9:
    ld [hl], $0c
    ld a, [$c1dd]
    or a
    jr nz, jr_000_27eb

    ld hl, $c1eb
    bit 7, [hl]
    jr nz, jr_000_27cc

    set 7, [hl]
    bit 0, [hl]
    ld a, $03
    jr z, jr_000_27c2

    ld a, $05

jr_000_27c2:
    ld [$c1db], a
    xor a
    ld [$c1ec], a
    jp Jump_000_2811


jr_000_27cc:
    set 6, [hl]
    bit 0, [hl]
    ld a, $04
    jr z, jr_000_27d6

    ld a, $06

jr_000_27d6:
    ld [$c1db], a
    ld a, [$c1ec]
    or a
    jp z, Jump_000_2811

    res 7, [hl]
    res 6, [hl]
    ld hl, $c1dd
    inc [hl]
    jp Jump_000_2811


Call_000_27eb:
jr_000_27eb:
    ld a, [$c1db]
    inc a
    cp $03
    jr c, jr_000_27f4

    xor a

jr_000_27f4:
    ld [$c1db], a
    call Call_000_2811
    call Call_000_2a4b
    ret nz

    ld a, [$c1dd]
    inc a
    and $07
    ld [$c1dd], a
    ret nz

    ld a, [$c1eb]
    xor $01
    ld [$c1eb], a
    ret


Call_000_2811:
Jump_000_2811:
    call Call_000_2a84
    call Call_000_2ac7
    jp Jump_000_2a6b


Jump_000_281a:
    cp $02
    jp nz, Jump_000_295e

    ld a, [$c0ec]
    or a
    jr z, jr_000_2839

    dec a

Call_000_2826:
    ld [$c0ec], a
    and $01
    ld a, $6c
    jr z, jr_000_2831

    ld a, $53

jr_000_2831:
    ld [$c0eb], a
    ld a, $06
    jp Jump_000_291a


jr_000_2839:
    ld a, $6c
    ld [$c0eb], a
    ld a, [$c1eb]
    bit 1, a
    jr nz, jr_000_2855

    ld hl, $c1df
    dec [hl]
    ret nz

    ld [hl], $0c
    ld a, [$c1e3]
    or a
    jp nz, Jump_000_2901

    jr jr_000_28af

jr_000_2855:
    bit 0, a
    jr nz, jr_000_2874

    set 0, a
    ld [$c1eb], a
    ld a, $04
    ld [$c1dd], a

Call_000_2863:
    ld a, [$c1de]
    cp $03
    jr z, jr_000_286f

    ld a, $02
    ld [$c1de], a

jr_000_286f:
    ld a, $06

Call_000_2871:
    ld [$c1df], a

jr_000_2874:
    ld a, [$c1ec]
    ld e, a
    ld d, $00
    ld a, [$c1d9]
    ld l, a
    ld a, [$c1da]
    ld h, a
    ld a, h
    or a
    jr nz, jr_000_288b

    ld a, l
    cp $48
    jr nc, jr_000_288c

jr_000_288b:
    add hl, de

jr_000_288c:
    ld a, l
    ld [$c1d9], a
    ld a, h
    ld [$c1da], a
    ld hl, $c1dd
    dec [hl]
    ld a, $06
    jp nz, Jump_000_291a

    ld [hl], $04
    ld a, [$c1ec]
    dec a
    ld [$c1ec], a
    ld a, $06
    jp nz, Jump_000_291a

    xor a
    ld [$c1eb], a

jr_000_28af:
    ld hl, $c1e0
    bit 7, [hl]
    jr nz, jr_000_28bf

    ld [hl], $00
    set 7, [hl]
    ld a, $04
    ld [$c1e2], a

jr_000_28bf:
    ld hl, $c1e2
    dec [hl]
    jr nz, jr_000_2901

    inc [hl]
    ld a, [$c1dd]
    cp $05
    jr nz, jr_000_28e6

    ld c, $5e
    ld b, $07
    call Call_000_2a00
    jr nc, jr_000_28dd

    ld a, $04
    ld [$c1e2], a
    jr jr_000_2901

jr_000_28dd:
    ld a, [$c1dd]
    cp $03
    jr nc, jr_000_28e6

    ld a, $02

jr_000_28e6:
    inc a
    cp $06
    jr nc, jr_000_28f0

    ld [$c1dd], a
    jr jr_000_291a

Jump_000_28f0:
jr_000_28f0:
    ld a, $18
    ld [$c1df], a
    ld a, $04
    ld [$c1e2], a
    ld [hl], $04
    ld a, [$c1dd]
    jr jr_000_291a

Jump_000_2901:
jr_000_2901:
    ld a, [$c1e0]
    bit 6, a
    ld a, $00
    jr nz, jr_000_291a

    ld a, [$c1dd]
    inc a
    and $03
    ld [$c1dd], a
    ld hl, $295a
    call Call_000_1b61
    ld a, [hl]

Jump_000_291a:
jr_000_291a:
    ld [$c1db], a
    call Call_000_2a84
    call Call_000_2a6b
    call Call_000_2a4b
    ret nz

    ld a, [$c1db]
    cp $03
    ret nc

    ld a, [$c1e0]
    set 6, a
    ld [$c1e0], a
    ld de, $fffe
    ld a, [$c1d9]
    ld l, a
    ld a, [$c1da]
    ld h, a
    cp $ff
    jr nz, jr_000_2948

    ld a, l
    cp $f0
    ret c

jr_000_2948:
    add hl, de
    ld a, l
    ld [$c1d9], a
    ld a, h
    ld [$c1da], a
    ld a, [$c1e0]
    res 6, a
    ld [$c1e0], a
    ret


    nop
    ld bc, $0102

Jump_000_295e:
    cp $05
    ret nz

    ld a, [$c1e0]

Jump_000_2964:
    bit 7, a
    jr nz, jr_000_2978

    set 7, a
    ld [$c1e0], a
    ld a, $80
    ld [$c1e8], a
    ld a, $07
    ld [$c1e9], a
    ret


jr_000_2978:
    ld hl, $c1e8
    dec [hl]
    ret nz

    inc hl
    dec [hl]
    ret nz

    ld a, $01
    ld [$c064], a
    ld a, $80
    ld [$c1ed], a
    ret


Call_000_298b:
    ld a, [$d3c7]
    inc a
    ret nz

Call_000_2990:
    ld a, [$c0ca]
    or a
    ret nz

    ld a, [$c1ea]
    cp $03
    ret nc

    ld hl, $c1d6
    call Call_000_09e1
    ld hl, $c1d9

Call_000_29a4:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$d8]
    cp $00
    jr nz, jr_000_29d8

    ld a, [$d3b2]
    or a
    ret nz

    ld a, [$d3b1]
    cp $40
    ret c

    ld c, $40
    ld de, $0050

jr_000_29bd:
    add hl, de
    ld a, [$d3b3]
    cpl
    inc a
    ld e, a
    ld a, [$d3b4]
    cpl
    ld d, a
    add hl, de
    ld a, h
    or a
    ret z

    ld a, l
    cpl
    inc a
    cp c
    ret nc

    ld a, $01
    ld [$c0cc], a
    ret


jr_000_29d8:
    cp $01
    jr nz, jr_000_29ee

    ld a, [$d3b2]
    or a

Call_000_29e0:
    ret nz

    ld a, [$d3b1]
    cp $30
    ret c

    ld de, $0054
    ld c, $40
    jr jr_000_29bd

jr_000_29ee:
    ld a, [$d3b2]
    or a
    ret nz

    ld a, [$d3b1]
    cp $50
    ret c

    ld de, $0054
    ld c, $18
    jr jr_000_29bd

Call_000_2a00:
Jump_000_2a00:
    ld hl, $d3cb
    ld a, c
    ldh [$b2], a
    ld a, b
    ldh [$b3], a
    ld b, $0f

jr_000_2a0b:
    ld a, [hl]
    push hl
    cp $04
    jr nz, jr_000_2a19

    ld de, $0008
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_000_2a23

jr_000_2a19:
    ld de, $001b
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_2a0b

    scf
    ret


jr_000_2a23:
    ld [hl], $01
    ld de, $0011
    add hl, de
    ld [hl], $01
    ld de, $ffff
    add hl, de
    ld a, [$c1de]
    inc a
    and $07
    ld [$c1de], a
    ld [hl], a
    ld de, $fff4
    add hl, de
    ldh a, [$b2]
    ld [hl+], a
    ldh a, [$b3]
    ld [hl], a
    ld a, $03
    call Call_000_1a0f
    pop hl
    xor a
    ret


Call_000_2a4b:
    ld a, [$c1e3]
    or a
    ret z

    dec a
    ld [$c1e3], a
    ld de, $fffe
    ld a, [$c1d9]
    ld l, a
    ld a, [$c1da]
    ld h, a
    add hl, de
    ld a, l
    ld [$c1d9], a
    ld a, h
    ld [$c1da], a
    or $01
    ret


Call_000_2a6b:
Jump_000_2a6b:
    ld a, [$c1ea]
    ld hl, $3ab5
    call Call_000_1b67
    ld a, l
    add $08
    ld c, a
    ld b, h
    ld hl, $d560
    ld de, $9c40
    ld a, $30
    jp Jump_000_15b8


Call_000_2a84:
    ld a, [$c1ea]
    ld hl, $3ac3
    call Call_000_1b61
    ld e, [hl]
    ld d, $00
    ld a, [$c1ea]
    ld hl, $3ab5
    call Call_000_1b82
    ld a, [$c1ea]
    ld hl, $3aa7
    call Call_000_1b67
    ld a, [$c1db]
    or a
    jr z, jr_000_2aac

jr_000_2aa8:
    add hl, de
    dec a
    jr nz, jr_000_2aa8

jr_000_2aac:
    ld de, $d568
    ldh a, [$a8]
    ldh [$8a], a
    ld [$2000], a
    ld a, c
    add $08
    ldh [$b3], a
    xor a
    call Call_000_159e
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_2ac7:
    ld hl, $d3ce
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    ret z

    ld a, [$c1eb]
    bit 6, a
    ret z

    bit 0, a
    ld hl, $d5c0
    jr z, jr_000_2adf

    ld hl, $d5a0

jr_000_2adf:
    ld bc, $000a
    xor a
    call Call_000_1b90
    ld a, [$c1e7]
    ld c, a
    ld a, [$d3d7]
    srl a
    srl a
    srl a
    inc a
    ret z

Call_000_2af5:
    ld b, a
    ld a, [$c1eb]
    bit 0, a
    ld hl, $d5ca
    jr z, jr_000_2b23

    ld hl, $d5aa
    jr jr_000_2b23

Call_000_2b05:
    ld hl, $d560
    ld bc, $0011
    xor a
    call Call_000_1b90
    ld a, [$c1e7]
    ld c, a
    ld a, [$d3d7]
    srl a
    srl a
    srl a
    ret z

    ld b, a
    ld hl, $d569
    ld [hl], $01

jr_000_2b23:
    ld a, [$d3d5]
    bit 0, a
    jr z, jr_000_2b30

jr_000_2b2a:
    inc hl
    ld [hl], c
    dec b
    jr nz, jr_000_2b2a

Call_000_2b2f:
    ret


jr_000_2b30:
    dec hl
    ld [hl], c
    dec b
    jr nz, jr_000_2b30

    ret


Call_000_2b36:
    ld a, [$c1ea]
    ld hl, $2ba3
    call Call_000_1b67

Call_000_2b3f:
jr_000_2b3f:
    ld a, [hl]
    cp $ff

Call_000_2b42:
    ret z

    push hl
    push hl
    call $7db4
    jr nc, jr_000_2b52

    pop hl
    pop hl
    ld hl, $2b36
    jp Jump_000_177a


jr_000_2b52:
    ld a, l
    ld [$c0d5], a
    ld a, h
    ld [$c0d6], a
    call Call_000_0a1a
    pop de
    inc de
    ld a, [de]
    ldh [$8f], a
    inc de
    ld a, [de]
    ldh [$90], a
    inc de
    ld a, [de]
    ldh [$8d], a
    inc de
    ld a, [de]
    ldh [$8e], a
    inc de
    ld a, [de]
    ldh [$96], a
    ld a, [$c0d5]
    ld l, a
    ld a, [$c0d6]
    ld h, a
    call Call_000_0a07
    inc de
    ld a, [de]
    or a
    jr z, jr_000_2b9c

    ldh a, [$b3]
    call Call_000_1da1
    ld l, c

Jump_000_2b88:
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $d303
    add hl, de
    ld de, $0004
    ld a, $04

jr_000_2b96:
    ld [hl], $90
    add hl, de
    dec a
    jr nz, jr_000_2b96

jr_000_2b9c:
    pop hl
    ld de, $0007
    add hl, de
    jr jr_000_2b3f

    or c
    dec hl
    ld a, [c]
    dec hl
    adc $2b
    ld a, [$512b]
    inc l
    rra
    inc l
    ld [bc], a
    inc l
    inc c
    nop
    nop
    ld c, h
    nop
    nop

Call_000_2bb7:
    nop
    ld [$0060], sp
    ld b, b
    nop
    nop
    nop
    ld [$0040], sp
    ld [hl], b
    nop
    nop
    ld bc, $8008
    nop
    ld [hl], b
    nop
    nop
    ld bc, $0cff
    and b
    nop
    nop
    nop

Call_000_2bd3:
    nop
    nop
    inc c
    and b
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    jr nz, jr_000_2be1

jr_000_2be1:
    nop
    ld bc, $7012
    nop
    ld b, b
    nop
    ld bc, $1301
    xor b
    nop
    ld d, b
    nop
    nop
    nop
    rst $38
    inc c
    ld b, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc e
    sub h
    nop
    jr nz, jr_000_2bff

Call_000_2bff:
jr_000_2bff:
    nop
    nop
    rst $38
    dec l
    stop
    ld [hl], b
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $20
    nop
    ld d, b
    nop
    nop
    nop
    cpl
    jr nc, jr_000_2c1a

jr_000_2c1a:
    nop
    nop
    nop
    nop
    rst $38

Jump_000_2c1f:
    ld hl, $0058
    add b
    nop
    nop
    nop
    ld hl, $0030
    ld h, b
    nop
    nop
    nop
    ld hl, $0080
    ld b, b
    nop
    nop
    nop
    ld [hl+], a
    ld b, b
    nop
    stop
    nop
    nop
    ld [hl+], a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    add b
    nop
    ld [$0000], sp
    nop
    inc hl
    ld b, b
    nop

Call_000_2c4c:
    nop
    nop
    nop
    nop
    rst $38
    ld e, $8c
    nop
    inc l
    nop
    nop
    nop
    rra
    adc h
    nop
    inc a
    nop
    nop

Call_000_2c5e:
    nop
    jr nz, jr_000_2c61

jr_000_2c61:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_000_2c68

jr_000_2c68:
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc d
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_2c75:
    inc d
    stop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    stop
    nop
    nop
    inc d
    stop
    stop
    nop
    nop
    rst $38
    inc d
    nop
    nop
    stop
    nop
    nop
    inc d
    stop
    stop
    nop
    nop
    inc d
    nop
    nop
    jr nz, jr_000_2c9e

jr_000_2c9e:
    nop
    nop
    inc d
    stop

Call_000_2ca3:
    jr nz, jr_000_2ca5

jr_000_2ca5:
    nop
    nop
    inc d
    nop

Jump_000_2ca9:
    nop
    jr nc, jr_000_2cac

Jump_000_2cac:
jr_000_2cac:
    nop
    nop
    inc d
    stop
    jr nc, jr_000_2cb3

jr_000_2cb3:
    nop
    nop
    rst $38
    rst $18
    inc l
    ld a, [bc]
    dec l
    ld [hl-], a
    dec l
    ld e, d
    dec l
    sub c
    dec l
    or e
    dec l
    db $db
    dec l
    db $f4
    dec l
    or $2f
    inc e
    ld l, $47
    ld l, $81
    ld l, $bb
    ld l, $de
    inc l
    sbc $2c
    rlca
    cpl
    ld d, e
    cpl
    add h
    cpl
    xor a
    cpl
    call nc, $ff2f
    inc b
    ld [$0703], sp
    ld bc, $0a38
    ld [$1903], sp
    inc b
    ld [hl-], a
    jr nz, jr_000_2cf4

    inc bc
    inc hl
    ld bc, $2b36
    rlca
    inc bc

jr_000_2cf4:
    ld b, b
    rlca
    inc bc
    ld b, e
    ld bc, $4936
    rlca
    inc bc
    ld c, h
    ld [bc], a
    ld [hl-], a
    add hl, de
    ld bc, $012c
    ld bc, $1f29
    ld bc, $ff29
    dec b
    dec b
    inc b
    inc de
    inc bc
    inc b
    ld [hl+], a
    ld bc, $2636
    ld [$2803], sp
    inc bc
    inc b
    cpl
    ld bc, $3036
    ld [$3b03], sp
    ld [$3903], sp
    ld bc, $4438
    ld bc, $4a38
    ld [$5503], sp
    ld bc, $5d36
    ld [$ff03], sp
    ld [$0402], sp
    inc b
    ld [$0f03], sp
    ld [$1803], sp
    ld bc, $1c38
    inc bc
    jr c, jr_000_2d67

    ld [$2803], sp
    inc bc
    inc b
    ld [hl-], a
    inc b
    inc b
    add hl, sp
    ld [bc], a
    inc [hl]

Jump_000_2d4d:
    ld b, b
    inc bc
    dec [hl]
    ld c, b
    ld [bc], a
    inc [hl]
    ld d, d
    ld b, $35
    add hl, sp
    ld bc, $ff25
    ld [$0404], sp
    ld c, $01
    ld [hl], $1b
    inc bc
    inc b
    inc h
    ld [$2603], sp

jr_000_2d67:
    ld bc, $2936
    inc bc

Jump_000_2d6b:
    inc b
    cpl
    ld [bc], a
    inc b
    inc sp
    ld [$3903], sp
    dec b
    inc b
    ld b, h
    ld bc, $5036
    inc bc
    inc b
    ld e, e
    inc bc
    inc b
    ld h, c
    ld [$6103], sp
    ld b, $04
    ld h, [hl]
    ld bc, $6c36
    ld [$6103], sp
    ld bc, $6f2b
    ld bc, $ff2a
    nop
    ld bc, $0228

Call_000_2d95:
    ld bc, $0529
    rlca
    inc bc
    ld [$0303], sp
    add hl, de
    ld bc, $2036
    ld [$2303], sp
    inc bc
    ld [hl-], a
    dec [hl]
    ld [$3d03], sp
    ld b, $04
    ld b, h
    ld [$4b03], sp
    ld bc, $ff38
    inc b
    ld bc, $0c36
    ld [$1303], sp
    ld bc, $1538
    ld [$1b03], sp
    inc bc
    inc b
    ld [hl+], a
    ld bc, $2938
    ld [$3003], sp
    inc bc
    inc b
    jr c, jr_000_2dd2

    inc b
    ld b, e
    ld bc, $4e36

jr_000_2dd2:
    ld bc, $4936
    ld [$5403], sp
    ld [$ff03], sp
    inc bc
    rlca
    inc bc
    ld [$0304], sp
    inc bc
    dec c
    inc bc
    dec bc
    dec c
    inc bc
    add hl, bc
    dec d
    inc bc
    dec bc
    dec de
    jr c, jr_000_2dfd

    jr jr_000_2e1b

    ld bc, $2905
    rst $38
    inc b
    inc bc

jr_000_2df6:
    scf
    inc sp
    ld c, $26
    ld de, $3707

jr_000_2dfd:
    dec de
    ld c, $37
    ld a, [hl+]
    ld [$3137], sp
    ld c, $37
    ld a, [hl-]
    ld c, $37
    ld b, d
    dec b
    scf
    ld c, b
    add hl, bc
    scf
    ld d, h
    add hl, bc
    scf
    ld h, d
    ld b, $37
    ld l, [hl]
    inc bc
    scf
    ld a, b
    rlca
    scf

jr_000_2e1b:
    rst $38
    inc bc
    ld bc, $0b36
    inc b
    inc b
    ld de, $0308
    inc b
    add hl, bc
    inc bc
    inc b
    ld c, $03
    db $10
    ld de, $0603
    inc de
    inc b
    dec e
    ld [$2003], sp
    ld bc, $1736
    dec bc
    inc b
    rla
    jr jr_000_2e40

    ld h, $11
    inc bc

jr_000_2e40:
    inc b
    inc de
    ld a, [hl+]
    rla
    add hl, de
    dec hl
    rst $38
    ld [$3807], sp
    ld [bc], a
    dec c
    dec d
    ld d, $02
    jr c, jr_000_2e6a

    add hl, bc
    jr c, jr_000_2e7b

    ld b, $15
    dec hl
    rrca
    dec hl
    inc l
    rrca
    add hl, hl
    ld d, [hl]
    ld b, $38
    ld c, [hl]
    ld c, $38
    ld a, e
    ld b, $15
    ld h, c
    ld [$6b15], sp
    ld [bc], a

jr_000_2e6a:
    jr c, @+$75

    rrca
    jr c, jr_000_2df6

    db $10
    inc bc
    adc l
    ld [$8115], sp
    ld [bc], a
    jr c, @-$73

    ld [$9315], sp

jr_000_2e7b:
    rrca
    inc bc
    sub e
    ld [bc], a
    jr c, @+$01

    ld a, l
    ld b, $04
    db $76
    inc bc
    inc b
    ld l, e
    dec b
    inc b
    ld h, d
    rlca
    inc bc
    ld e, c
    rlca
    inc bc
    ld d, c
    ld bc, $4838
    ld bc, $4038
    rlca
    inc b
    scf
    rlca
    inc bc
    jr nc, jr_000_2ea3

    inc b
    inc sp

Call_000_2ea0:
    rlca
    inc bc
    add hl, hl

jr_000_2ea3:
    inc b
    inc b
    dec e
    rlca
    inc b
    rla
    dec b
    inc b
    ld c, $07
    inc bc
    ld [$0406], sp
    ld h, e
    ld bc, $4e2c
    ld bc, $012a
    ld bc, $ff29
    add hl, bc
    inc bc
    ld de, $0114
    ld de, $151c
    ld de, $150e
    ld de, $0125
    ld de, $0330
    ld de, $013a
    ld de, $0541
    ld de, $034a
    ld de, $0150
    ld de, $0567
    ld de, $0778
    ld de, $056a
    ld de, $0c66
    ld de, $0c52
    ld de, $0c3d
    ld de, $1738
    ld de, $1544
    ld de, $1954
    ld de, $1957
    ld de, $1664
    ld de, $1954

Jump_000_2efc:
    ld de, $1580
    add hl, sp
    ld a, e
    add hl, bc
    ld a, [hl+]
    inc bc
    jr @+$2d

    rst $38
    dec b
    inc bc
    ld sp, $0311
    ld sp, $0424
    ld sp, $031f
    ld sp, $0238
    ld sp, $0244
    ld sp, $0145
    ld sp, $0345
    ld sp, $0246
    ld sp, $034f
    ld sp, $0456
    ld sp, $0360
    ld sp, $0366
    ld sp, $036f
    ld sp, $0377
    ld sp, $0388
    ld sp, $0390
    ld sp, $0495
    ld sp, $03a5
    ld sp, $03aa
    ld sp, $04af
    ld sp, $01b5
    dec hl
    sub c
    rlca
    ld a, [hl+]
    sub c
    ld b, $2b
    nop

Call_000_2f50:
    ld bc, $ff2a
    ld a, [bc]
    dec b
    ld bc, $0712
    ld bc, $0219
    ld [bc], a
    inc h
    dec b
    dec c
    dec h
    ld [bc], a
    ld [bc], a
    dec l
    inc b
    rrca
    ld [hl], $02
    ld [bc], a
    ld b, b
    dec b
    rrca
    ld b, a
    ld [bc], a
    ld [bc], a
    ld c, [hl]
    ld [bc], a
    dec c
    ld d, l
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    rrca
    ld e, h
    ld b, $0f
    ld l, d
    inc bc
    ld b, $56
    ld b, $29
    ld e, c
    ld b, $2c
    rst $38
    rlca
    ld [bc], a
    ld bc, $0610
    ld bc, $0213
    dec b
    ld d, $06
    ld bc, $0218
    dec b
    ld [hl], $02
    ld [bc], a
    ld a, $06
    ld bc, $0e37
    ld bc, $024a
    dec b
    ld d, [hl]
    dec b
    rrca
    ld e, [hl]
    inc bc
    ld b, $64
    ld [bc], a
    ld bc, $026a
    ld bc, $0155
    ld a, [hl+]
    rst $38
    rlca
    ld [bc], a
    dec b
    ld de, $0202

Call_000_2fb5:
    rla
    ld [bc], a
    ld bc, $031c
    ld b, $26
    dec b
    ld b, $34
    dec b
    rrca
    ld b, c
    ld b, $06
    ld b, a
    rlca
    rrca
    ld d, b
    ld b, $06
    ld e, b
    dec b
    ld bc, $025e
    dec b
    ld l, d
    ld [bc], a
    ld bc, $0bff
    ld b, $30
    ld e, $05
    jr nc, jr_000_3000

    inc bc
    jr nc, jr_000_3006

    ld b, $30
    inc sp
    inc c

Call_000_2fe2:
    jr nc, jr_000_2fff

    dec c
    jr nc, jr_000_2ff8

    dec c
    jr nc, jr_000_301d

    ld [bc], a
    daa

jr_000_2fec:
    scf
    dec bc
    dec hl
    ld [$2a0c], sp
    inc h
    inc c
    inc l
    rst $38
    ld a, [bc]
    rlca

jr_000_2ff8:
    rla
    ld d, $04
    jr jr_000_3022

    inc b

Jump_000_2ffe:
    ld a, [de]

jr_000_2fff:
    dec l

Call_000_3000:
jr_000_3000:
    ld [bc], a
    ld a, [de]
    dec a
    inc b
    jr jr_000_304d

jr_000_3006:
    ld [$5117], sp
    ld [$5516], sp
    ld [$6016], sp
    dec b
    ld a, [de]
    ld l, [hl]
    rlca
    ld a, [de]
    ld a, e
    ld [bc], a
    ld a, [de]
    adc e
    ld [$9916], sp
    inc bc
    ld a, [de]

jr_000_301d:
    and a
    ld [$c017], sp
    inc b

jr_000_3022:
    jr jr_000_2fec

    ld [$ff17], sp
    dec d
    inc b
    inc [hl]
    dec b
    ld [bc], a
    dec [hl]
    db $10
    ld bc, $1336
    ld [bc], a
    scf
    rst $38
    dec b
    ld bc, $1601
    ld bc, $1f02
    ld bc, $3505

Jump_000_303e:
    ld bc, $4a04
    ld [bc], a
    ld b, $ff
    call z, $d830

jr_000_3047:
    jr nc, @-$42

    jr nc, jr_000_3047

    jr nc, @+$0a

jr_000_304d:
    ld sp, $3116
    ld [hl+], a
    ld sp, $3130
    ld a, $31
    ld d, d
    ld sp, $315e
    ld e, [hl]
    ld sp, $315e
    ld e, [hl]
    ld sp, $316a
    db $76
    ld sp, $3182
    sub d
    ld sp, $319e
    xor [hl]
    ld sp, $31ba
    jp z, $e231

    ld sp, $31ee
    ld a, [$0a31]
    ld [hl-], a

Jump_000_3078:
    ld a, [de]
    ld [hl-], a
    ld h, $32
    jr nc, jr_000_30b0

    inc a
    ld [hl-], a
    ld b, [hl]
    ld [hl-], a
    ld l, h
    ld [hl-], a
    add b
    ld [hl-], a
    and [hl]
    ld [hl-], a
    cp b
    ld [hl-], a
    ld e, [hl]
    ld sp, $32c2
    adc $32

Call_000_3090:
    jp c, $da32

    ld [hl-], a
    jp c, $da32

    ld [hl-], a
    jp c, $e632

    ld [hl-], a
    ld a, [c]
    ld [hl-], a
    db $fc
    ld [hl-], a
    ld [$1233], sp
    inc sp
    ld h, $33
    ld [hl], $33
    ld c, b
    inc sp
    ld d, h
    inc sp
    ld h, b
    inc sp
    ld [hl], h
    inc sp

jr_000_30b0:
    add h
    inc sp
    add h

Call_000_30b3:
    inc sp
    sub b
    inc sp

Call_000_30b6:
    and b
    inc sp
    xor h

Call_000_30b9:
    inc sp
    cp d
    inc sp

Call_000_30bc:
    inc d
    ld e, c
    ld [bc], a
    ld [bc], a
    inc b
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld [$0010], sp
    db $10
    ld [$59a8], sp
    ld [bc], a
    ld bc, $0002
    rst $38
    ld bc, $0000
    nop
    ld [$59a8], sp
    ld [bc], a
    ld bc, $0502
    rst $38
    ld bc, $0000
    nop
    dec d
    add b
    ld e, c
    inc b
    ld [bc], a
    ld [$ff00], sp
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld [$1000], sp
    db $10
    ld hl, sp+$10
    nop
    db $10
    ld [$1010], sp
    sub d
    ld [hl], e
    ld [bc], a
    ld bc, $0102

Jump_000_3102:
    ld bc, $0001
    nop
    nop
    ld [$739a], sp
    inc bc
    ld bc, $0203
    ld bc, $0001
    nop
    nop
    ld [$1000], sp
    and [hl]
    ld [hl], e
    ld [bc], a
    ld bc, $0c02
    ld [bc], a
    ld bc, $0000
    nop
    ld [$73ae], sp
    inc bc
    ld bc, $0203
    ld b, c
    ld bc, $0000
    nop
    ld [$1000], sp
    or a
    ld [hl], e
    inc bc
    ld bc, $0203
    ld [bc], a
    ld bc, $0000
    nop

Call_000_313b:
    ld [$1000], sp
    jp Jump_000_0373


    ld [bc], a
    ld b, $05
    ld bc, $0001
    nop
    nop
    ld [$1000], sp
    stop

Jump_000_314e:
    db $10
    ld [$1010], sp
    ld a, b
    ld [hl], e
    ld [bc], a
    ld bc, $1502
    rst $38
    ld bc, $0000
    nop
    ld [$73e1], sp
    ld [bc], a
    ld bc, $0302
    rst $38
    ld bc, $0000
    nop
    ld [$5460], sp
    ld [bc], a
    ld bc, $0402
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld [$73dd], sp
    ld [bc], a
    ld bc, $0102
    ld bc, $0001
    nop
    nop
    ld [$73dd], sp
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    nop
    nop
    nop
    ld [$0010], sp
    db $10
    ld [$73d5], sp
    ld [bc], a
    ld bc, $0602
    ld bc, $0001
    nop
    nop
    ld [$73d5], sp
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld bc, $0001
    nop
    nop
    ld [$0010], sp
    db $10
    ld [$73e3], sp
    ld [bc], a
    ld bc, $0802
    ld bc, $0001
    nop
    nop
    ld [$546c], sp
    inc b
    ld bc, $0904
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld [$1000], sp
    nop
    jr @+$76

    ld d, h
    ld [bc], a
    inc b
    ld [$ff0a], sp
    ld [bc], a
    nop
    nop
    nop
    ld [$0010], sp
    db $10
    ld [$0020], sp
    jr nz, @+$0a

    jr nc, jr_000_31e0

jr_000_31e0:
    jr nc, @+$0a

    ld a, b
    ld [hl], e
    ld [bc], a
    ld bc, $0b02

Call_000_31e8:
    rst $38
    ld bc, $0000
    nop
    ld [$73e9], sp
    ld [bc], a
    ld bc, $0d02
    ld [bc], a
    ld bc, $0000
    nop
    ld [$73f1], sp
    inc b
    ld bc, $0e04

jr_000_3200:
    rst $38
    ld bc, $0000
    nop
    ld [$1000], sp
    nop
    jr jr_000_3200

    ld [hl], e
    inc b
    ld bc, $0f04
    rst $38
    ld bc, $0000

jr_000_3214:
    nop
    ld [$1000], sp
    nop
    jr jr_000_3214

    ld [hl], e
    ld [bc], a
    ld bc, $1002
    rst $38
    ld bc, $0000
    nop

Jump_000_3225:
    ld [$73fb], sp
    ld bc, $0101
    ld de, $01ff
    inc b
    inc b
    db $fc
    ld [hl], e
    ld [bc], a
    ld bc, $1302
    rst $38
    ld bc, $feff

Jump_000_323a:
    rst $38
    ld b, $fb
    ld [hl], e
    ld bc, $0101
    ld [de], a
    rst $38
    ld bc, $0404
    adc h
    ld d, h
    dec b
    inc bc
    rrca
    inc d
    db $10
    ld [bc], a
    nop
    nop
    nop
    ld [$1000], sp
    nop
    jr jr_000_3257

jr_000_3257:
    jr nz, @+$12

    nop
    db $10
    ld [$1010], sp
    db $10
    jr @+$12

    jr nz, jr_000_3283

    nop
    jr nz, jr_000_326e

    jr nz, @+$12

    jr nz, jr_000_3282

    jr nz, @+$22

    add b
    ld [hl], e

jr_000_326e:
    inc bc
    ld [bc], a
    ld b, $15
    rst $38
    ld bc, $0000
    nop
    ld [$1000], sp
    stop
    db $10
    ld [$1010], sp
    ret z

    ld d, h

jr_000_3282:
    dec b

jr_000_3283:
    inc bc
    rrca
    ld d, $ff
    ld [bc], a
    nop
    nop
    nop
    ld [$1000], sp
    nop
    jr jr_000_3291

jr_000_3291:
    jr nz, @+$22

    nop
    jr nz, jr_000_329e

    jr nz, jr_000_32a8

    jr nz, @+$1a

    jr nz, @+$22

    jr nc, jr_000_329e

jr_000_329e:
    jr nc, jr_000_32a8

    jr nc, @+$12

    jr nc, @+$1a

    jr nc, @+$22

    inc b
    ld d, l

jr_000_32a8:
    dec b
    ld bc, $1705
    db $10
    ld [bc], a
    nop
    nop
    nop
    ld [$1000], sp
    nop
    jr jr_000_32b7

jr_000_32b7:
    jr nz, jr_000_32cc

    ld d, l
    ld bc, $0101
    inc b
    rst $38
    ld [bc], a
    nop
    nop
    ld d, $55
    ld [bc], a
    ld bc, $1802
    rst $38
    ld [bc], a
    nop
    nop

jr_000_32cc:
    nop
    ld [$5514], sp
    ld [bc], a
    ld bc, $1802
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld [$73fe], sp
    ld [bc], a
    ld bc, $1902
    rst $38
    ld bc, $0000
    nop
    ld [$7408], sp
    ld [bc], a
    ld bc, $1a02
    rst $38
    ld bc, $0000
    nop
    ld [$740a], sp
    ld bc, $0101
    ld a, [de]
    rst $38
    ld bc, $0000
    inc c
    ld [hl], h
    ld [bc], a
    ld bc, $1a02
    rst $38
    ld bc, $0000
    nop
    ld [$740b], sp
    ld bc, $0101
    ld a, [de]
    rst $38
    ld bc, $0000
    scf
    ld d, l
    inc bc
    ld [bc], a
    ld b, $1b
    db $10
    ld [bc], a
    nop
    nop
    nop
    ld [$1000], sp
    stop
    db $10
    ld [$1010], sp
    ld e, $55
    ld [bc], a
    ld [bc], a
    inc b
    inc e
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld [$0010], sp
    db $10

Jump_000_3335:
    ld [$5532], sp
    dec b
    ld bc, $1d05
    rst $38
    ld [bc], a
    ld hl, sp+$00
    ld hl, sp+$08
    ld hl, sp+$10
    ld hl, sp+$18
    ld hl, sp+$20
    ld c, $74
    ld [bc], a
    ld bc, $0d02
    ld [bc], a
    ld bc, $0000
    nop
    ld [$7416], sp
    ld [bc], a
    ld bc, $1e02
    ld [bc], a
    ld bc, $0000
    nop
    ld [$741c], sp
    inc bc
    ld [bc], a
    ld b, $1f
    ld [bc], a
    ld bc, $0000
    nop
    ld [$1000], sp
    stop
    db $10
    ld [$1010], sp
    inc e
    ld [hl], h
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0102

Call_000_337c:
    nop
    nop
    nop
    ld [$0010], sp
    db $10
    ld [$7422], sp
    ld [bc], a
    ld bc, $2002
    ld bc, $0001
    nop
    nop
    ld [$7434], sp
    inc b
    ld bc, $2104
    rst $38
    ld bc, $0000
    nop
    ld [$1000], sp
    nop
    jr jr_000_33e1

    ld [hl], h
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0000
    nop
    ld [$7446], sp
    inc bc
    ld bc, $0203
    ld [bc], a
    ld bc, $0000
    nop
    ld [$1000], sp
    xor b
    ld e, c
    ld [bc], a
    ld bc, $1a02
    rst $38
    nop
    nop
    nop
    nop
    ld [$33ee], sp
    xor $33
    xor $33

Call_000_33cc:
    xor $33
    xor $33
    xor $33
    xor $33
    dec d
    inc [hl]
    ld e, c
    inc [hl]
    xor $33
    rst $28
    inc sp
    xor $33
    ld sp, $ee34

jr_000_33e1:
    inc sp
    xor $33

Call_000_33e4:
    dec sp
    inc [hl]
    xor $33
    xor $33
    xor $33
    xor $33
    rst $38
    ld bc, $ff08
    rlca
    sbc d
    ld a, l
    dec b
    inc b
    ld e, c
    ld bc, $0408
    rlca
    sbc d
    ld a, l
    dec b
    inc b

Call_000_3400:
    ld e, l
    rst $38
    ld bc, $ff08
    rlca
    scf
    ld [hl], b
    inc b
    inc b
    rlca
    ld bc, $0208

Call_000_340e:
    rlca
    rst $30
    ld [hl], c
    inc b
    inc b
    dec bc
    rst $38
    ld bc, $ff08
    rlca
    scf
    ld [hl], b
    inc b
    inc b
    inc d
    ld bc, $0208
    rlca
    rst $30
    ld [hl], c
    inc b
    inc b
    jr @+$03

    ld [$0704], sp
    or a
    ld [hl], e
    inc b

Jump_000_342e:
    inc b
    inc e
    rst $38
    ld bc, $ff85
    dec b
    ld [hl], $7b
    ld [bc], a
    inc b
    ld d, d
    rst $38
    ld bc, $ff85
    dec b
    ld [hl], a
    ld [hl], l
    inc b
    inc c
    ld c, d
    rst $38
    ld bc, $ff85
    dec b
    ld [hl], a
    ld [hl], l
    inc b
    inc c
    ld a, [bc]
    rst $38
    ld bc, $ff10
    inc bc
    push de
    ld a, c
    inc bc
    db $10
    dec bc
    rst $38
    rst $38
    ld c, a

Call_000_345b:
    ld a, [bc]
    ld h, c
    ld a, [bc]
    ld d, h
    ld a, [bc]
    ld [hl], b

Jump_000_3461:
    ld a, [bc]
    ld d, d
    ld a, [bc]
    ld e, d

Jump_000_3465:
    ld a, [bc]
    ld de, $7f1f
    ld [de], a
    adc $09
    dec hl
    dec e
    and c
    ld de, $0985
    add e
    ld e, $46
    ld [hl+], a
    ld e, l
    inc c
    or a
    add hl, bc
    ld [hl], c
    add hl, bc
    ld [hl], c
    add hl, bc
    ld [hl], c
    add hl, bc
    jr c, jr_000_3492

    ld c, a
    add hl, bc
    ld h, c
    add hl, bc
    ld d, h
    add hl, bc
    ld [hl], b
    add hl, bc
    ld d, d
    add hl, bc
    ld e, d
    add hl, bc
    ld de, $7f1f
    ld [de], a

jr_000_3492:
    adc $09
    dec hl
    dec e
    and c
    db $10
    add l
    add hl, bc
    add e
    ld e, $46
    ld [hl+], a
    ld e, l
    dec bc
    or a
    add hl, bc
    ld [hl], c
    ld [$0871], sp
    ld [hl], c
    ld [$1038], sp
    nop
    ld b, b
    ld a, h
    ld c, h

Jump_000_34ae:
    sub b
    ld d, [hl]
    add d
    ld h, d
    ld [hl-], a
    ld l, l
    nop
    ld b, b
    scf
    ld a, c
    ld [bc], a
    ld a, c
    ld c, a
    ld [hl], h
    ret nz

    ld c, c
    jp c, $d054

    ld h, h
    ld [hl], d
    ld h, c
    sbc $7e
    sbc $7e
    ld l, [hl]
    ld l, a
    ld [hl-], a
    ld [hl], c
    ld [hl-], a
    ld [hl], c
    ld [hl-], a
    ld [hl], c
    db $fc
    ld e, [hl]
    ld [de], a
    ld c, e
    db $76
    ld d, l
    ld l, b
    ld h, c
    ldh a, [rOCPD]
    ld h, $7a
    adc [hl]
    ld c, b
    cpl
    ld a, [hl]
    ld [de], a
    ld a, h
    dec h
    ld a, b
    ld a, [$fa52]
    ld h, b
    db $76
    ld l, l
    add d
    ld l, h
    sbc $7e
    sbc $7e
    ld b, $7a
    ld [bc], a
    ld a, e
    ld c, b
    ld a, h
    sub d
    ld a, l
    and h
    ld h, b
    or $49
    db $76

jr_000_34fd:
    ld d, h
    inc l

jr_000_34ff:
    ld h, b
    db $e4

jr_000_3501:
    ld l, d
    ld a, [$6678]
    ld b, a
    jp $a67d


    ld a, e
    push bc
    ld [hl], a
    jp z, $e651

    ld e, a
    db $76
    ld l, h
    ld b, [hl]
    ld l, e
    sbc $7e
    sbc $7e
    ld c, d
    ld a, c
    add $79
    add $79
    add $79
    ld l, b
    ld h, b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    rlca
    inc bc
    dec b
    dec b

Jump_000_352d:
    dec b
    ld b, $06
    ld b, $05
    ld b, $06
    ld b, $06
    ld [hl], d
    dec [hl]
    or h
    dec [hl]
    ld a, [$3635]
    ld [hl], $59

Call_000_353f:
    ld [hl], $a9
    ld [hl], $dc
    ld [hl], $04
    scf
    dec h
    scf
    ld c, d
    scf
    cp e
    scf
    inc e
    jr c, jr_000_3593

    jr c, jr_000_34fd

    jr c, jr_000_34ff

    jr c, jr_000_3501

    jr c, jr_000_35ad

    add hl, sp
    ld d, [hl]
    add hl, sp
    ld d, [hl]
    add hl, sp
    sub d
    add hl, sp
    ld b, d
    ld b, [hl]
    inc a
    inc hl
    ld d, b
    inc sp
    jr z, jr_000_3587

    dec h
    ld [hl], c
    ld h, c
    jr z, jr_000_35d3

    nop
    nop
    xor d

Call_000_356e:
    inc a
    inc a
    inc a
    jr z, jr_000_3573

jr_000_3573:
    dec c
    nop
    nop

Jump_000_3576:
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

jr_000_3587:
    nop
    nop
    nop
    nop
    nop
    inc d
    inc d
    nop
    inc d
    inc d
    inc d
    inc d

jr_000_3593:
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    inc d
    inc d
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $1500
    dec d
    dec d
    dec d

jr_000_35ad:
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    nop
    ld bc, $0101
    ld bc, $1001
    ld de, $1312
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
    inc d
    inc d
    inc d
    inc d

jr_000_35d3:
    inc d
    inc d

Call_000_35d5:
    inc d
    inc d
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

Call_000_35f1:
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
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

Call_000_360f:
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
    ld bc, $0101
    db $10
    ld de, $1312
    nop
    nop
    nop
    nop
    inc d
    inc d
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    inc d
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
    dec c
    nop
    dec c
    nop
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    ld c, $0e
    ld c, $0e
    ld c, $01
    db $10
    db $10
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    dec c
    nop
    nop
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
    ld c, $0e
    ld c, $0e
    ld c, $01
    db $10
    ld [de], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0d01
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
    inc d
    inc d
    nop
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    nop
    ld c, $0e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    dec c
    dec c
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
    ld bc, $1210
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    db $10
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

Call_000_36fc:
    inc d
    inc d
    inc d

Call_000_36ff:
    inc d
    inc d
    inc d
    nop
    nop
    nop
    dec c
    nop
    dec c
    nop
    inc bc
    inc bc
    inc bc
    dec c
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld c, $0e
    ld bc, $0f01
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc d
    nop
    ld bc, $0e01
    ld c, $01
    ld c, $0f
    rrca
    rrca
    rrca
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
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    inc d
    nop
    inc d
    inc d
    inc d
    inc d
    nop
    inc d
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0d0d
    dec c
    dec c
    nop
    nop
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
    inc b
    inc b
    inc b
    nop
    dec c

Call_000_376a:
    dec c
    inc bc
    inc bc
    nop
    inc bc

Jump_000_376f:
    inc bc
    nop

Jump_000_3771:
    inc b
    inc bc
    dec c
    inc b
    inc b
    inc bc
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
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

Call_000_37af:
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
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
    ld bc, $0e01
    ld c, $0d
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
    dec c
    dec c
    nop
    nop
    ld bc, $010e

Jump_000_37f5:
    ld bc, $0e0e
    ld [de], a
    ld [de], a
    nop
    nop
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3804:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3813:
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

Call_000_381c:
    nop
    ld bc, $0101
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld bc, $0e01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3834:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc d
    inc d
    nop
    ld bc, $0e01
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    nop
    nop

Jump_000_3869:
    dec c

Call_000_386a:
    dec c
    nop
    nop

Jump_000_386d:
    dec c

Call_000_386e:
    dec c

Jump_000_386f:
    nop
    nop
    inc b
    inc b

Jump_000_3873:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rrca
    rrca

Call_000_3890:
    rrca
    rrca
    ld [$0808], sp
    ld [$0707], sp
    rlca
    rlca
    rlca
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld [$0808], sp
    ld [$0700], sp
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    rrca
    nop
    rrca
    nop

Jump_000_38d5:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

Call_000_38e2:
    dec bc

Call_000_38e3:
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
    ld c, $0e
    ld bc, $0101
    ld bc, $0d0d
    inc c
    inc c
    rlca
    rlca
    rlca
    rlca
    dec c

Call_000_38ff:
    dec c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    nop
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    nop
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d

Call_000_394f:
    inc d
    inc d
    inc d
    inc d
    nop
    inc d
    inc d
    nop
    nop
    ld bc, $0101
    ld bc, $1414
    inc d
    ld bc, $0e01
    ld c, $01
    ld bc, $0e0e
    ld [bc], a
    ld [bc], a
    ld c, $0e
    dec c
    dec c
    nop
    nop
    dec c

Call_000_3970:
    dec c
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0e0d
    ld c, $03
    inc bc
    inc bc
    inc bc
    inc d
    inc d
    inc d
    inc d
    inc d

Jump_000_398e:
    inc d
    inc d
    ld bc, $0012
    ld bc, $0e01
    ld c, $01
    ld c, $0e
    ld c, $0e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b

Call_000_39cf:
    inc b
    rst $38
    inc bc
    ld b, $ff
    rst $38
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]

Call_000_39e0:
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rlca
    rlca
    rlca
    ld b, $05
    rlca
    inc bc
    inc b
    ld b, $ff
    ld [bc], a
    dec b
    rrca
    ld de, $1e05
    ld [de], a
    ld h, b
    nop
    ld h, h
    nop
    ld e, b
    nop

Call_000_39fc:
    nop
    nop
    nop

Call_000_39ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc e
    inc l
    adc e
    inc l
    ld l, [hl]

Jump_000_3a0b:
    inc l
    ld l, [hl]
    inc l
    ld l, [hl]
    inc l
    ld l, [hl]
    inc l
    ld l, [hl]
    inc l
    add l
    rst $38
    inc b
    rst $38
    dec b
    add b
    nop
    rst $38
    dec bc
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    inc b
    inc b
    ld bc, $0105
    nop
    inc b
    dec bc
    ld [bc], a

Call_000_3a2c:
    ld [de], a
    inc b

Call_000_3a2e:
    nop
    nop
    db $10
    inc b
    rlca
    ld [$0404], sp
    inc b
    ld h, b
    ld d, h
    ld h, d
    ld d, h
    ld h, h
    ld d, h
    ld h, h
    ld d, h
    inc de
    ld d, l
    ld h, h
    ld d, h
    xor b
    ld e, c
    ld b, b
    db $10
    dec b
    rrca
    rrca
    rrca
    rrca
    cpl
    cpl
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    add b
    ld d, b
    ld h, b
    ld [hl], b
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_000_3a83

    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    ld b, [hl]
    ld e, d
    add c
    ld h, e
    ld e, l

Jump_000_3a6d:
    ld l, c
    and e
    ld l, d
    db $76
    ld a, l
    xor l
    ld l, h
    ld l, l
    ld l, [hl]
    xor b
    ld e, d
    ld l, e
    ld h, l
    dec a

Call_000_3a7b:
    ld l, d
    dec hl
    ld l, h
    add sp, $7e
    inc bc
    ld l, [hl]
    rst $18

jr_000_3a83:
    ld l, a
    cp b
    ld e, d
    sub a
    ld h, l
    ld [hl], l
    ld l, d
    ld h, e
    ld l, h
    jr jr_000_3b0d

    dec sp
    ld l, [hl]
    rlca
    ld [hl], b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    ld e, e
    ld d, l
    ldh [$5a], a
    jp Jump_000_0065


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add l
    ld e, c
    add b
    ld h, c
    pop de
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0405], sp
    dec b
    inc bc
    inc b
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    ld b, b
    ld b, b
    inc d
    rrca
    jr jr_000_3acd

    ld b, $2e
    dec sp
    ld a, [de]

jr_000_3acd:
    dec sp

Call_000_3ace:
    inc sp
    dec sp
    dec bc
    dec sp
    inc b
    dec sp
    push hl
    ld a, [hl-]
    rst $18
    ld a, [hl-]
    dec b
    inc d
    inc bc
    rrca
    rlca
    rra
    ld b, $00
    ld bc, $0001
    nop
    ld bc, $0e00
    ld c, $0e
    ld c, $00
    nop
    nop
    nop
    nop

Call_000_3aef:
    nop
    nop
    ld c, $0e
    ld c, $0e
    ld c, $00
    nop
    ld c, $0e
    ld c, $00
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    dec c

jr_000_3b0d:
    nop
    dec c
    nop
    dec c
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rlca
    ld bc, $0c01
    inc c
    ld bc, $0101
    ld bc, $0101
    inc c
    inc c
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
    ld bc, $0101
    ld bc, $0000
    ld bc, $3b44
    ld c, b
    dec sp
    ld b, h
    dec sp
    ld c, h
    dec sp
    ld b, h
    dec sp
    ld d, b
    dec sp
    ld d, h
    dec sp
    nop
    ld bc, $0307
    nop
    ld bc, $0402
    nop
    ld bc, $0206
    nop
    ld bc, $0501
    nop
    ld bc, $0a07
    ld bc, $0102
    inc bc
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$0200], sp
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $0409
    nop
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0100
    ld bc, $000c
    nop
    nop
    inc b
    ld [bc], a
    inc b

Call_000_3b7f:
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    dec b
    ld [bc], a
    dec b
    inc bc

Call_000_3b8c:
    inc bc
    nop
    inc bc
    ld bc, $000f
    nop
    nop
    ld b, $00
    ld b, $00
    inc b
    nop
    inc b
    ld bc, $0010
    ld b, $00
    jr nz, jr_000_3ba4

    nop
    nop

jr_000_3ba4:
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0000
    nop
    nop

Call_000_3bae:
    nop
    inc b
    nop
    nop
    nop
    nop
    jr nz, jr_000_3bb9

    nop
    nop
    nop

jr_000_3bb9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_000_3bc8

    nop
    dec b
    ld a, [bc]
    nop
    dec bc
    nop

jr_000_3bc8:
    nop
    nop
    nop
    nop
    ld bc, $0004
    nop
    add hl, bc
    ld bc, $0000
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_000_3bea

    nop
    nop
    nop
    nop

jr_000_3bea:
    nop
    nop

Call_000_3bec:
    nop
    nop
    nop
    nop

Call_000_3bf0:
    ld [bc], a
    inc b
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3c00:
    nop
    nop
    nop

Call_000_3c03:
    nop
    rrca
    nop

Call_000_3c06:
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3c0c:
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3c12:
    nop
    nop
    jr nz, jr_000_3c17

    nop

jr_000_3c17:
    nop
    nop
    nop

Call_000_3c1a:
    nop
    nop
    ld de, $0000
    nop
    jr nz, jr_000_3c27

Call_000_3c22:
    nop

Call_000_3c23:
    nop
    nop
    nop
    nop

jr_000_3c27:
    nop
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

Jump_000_3c33:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_000_3c3a

jr_000_3c3a:
    nop
    nop

Call_000_3c3c:
    nop
    nop
    nop
    nop

Call_000_3c40:
    nop

Jump_000_3c41:
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $0000
    nop
    rrca
    ld [bc], a
    ld d, $00
    jr nc, jr_000_3c51

    scf
    nop

jr_000_3c51:
    nop
    ld [$0003], sp
    nop
    ld [$0003], sp
    rlca
    ld [$000d], sp
    ld b, c
    ld [$0048], sp
    ld [de], a
    ld [bc], a
    add hl, de
    nop
    ld c, d
    ld [bc], a
    ld d, c
    nop
    jr nc, @+$0a

    ld [hl], $00
    ld d, h
    ld [$005a], sp
    rla
    ld [$001d], sp
    nop
    ld [$0003], sp

Jump_000_3c79:
    add hl, de
    ld [bc], a
    rra
    nop
    ld b, a
    ld [bc], a
    ld c, l
    nop
    inc b
    ld [$000a], sp

Call_000_3c85:
    ld a, $08
    ld b, h
    nop
    dec sp
    ld [$0041], sp
    nop
    ld [$0003], sp
    dec c
    ld [bc], a
    inc de
    nop
    nop
    ld [$0003], sp
    ld [bc], a
    ld [$0008], sp
    nop
    ld [$0003], sp
    nop
    ld [$0003], sp
    nop
    ld [$0003], sp
    jr z, jr_000_3cad

    ld l, $00

jr_000_3cad:
    db $10
    ld [$0017], sp
    rla
    ld [$001d], sp
    nop
    ld [$0003], sp
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [$0003], sp
    jr nc, jr_000_3cc5

    ld [hl], $00

jr_000_3cc5:
    ld b, $08
    inc c
    nop
    rrca
    ld [$0015], sp
    nop
    ld [$0003], sp
    ld c, [hl]
    ld [$0055], sp
    nop
    ld [$1603], sp
    nop
    dec e
    dec b
    ld d, $00
    dec e
    dec b
    ld d, $00
    dec e
    dec b
    ld d, $00

Jump_000_3ce6:
    dec e
    dec b

Jump_000_3ce8:
    ld d, $00
    dec e
    dec b
    ld d, $00
    dec e

Call_000_3cef:
    dec b
    add hl, bc

Call_000_3cf1:
    nop
    ld c, $01
    add hl, bc

Call_000_3cf5:
    nop
    ld c, $01
    add hl, bc
    nop
    ld c, $01
    add hl, bc
    nop
    ld c, $01
    add hl, bc

Jump_000_3d01:
    nop
    ld c, $01
    add hl, bc
    nop
    ld c, $01
    nop
    nop
    ld b, $02
    nop
    nop
    ld b, $02
    nop
    nop
    ld b, $02
    nop
    nop
    ld b, $02
    nop
    nop
    ld b, $02
    nop
    nop
    ld b, $02
    inc d
    ld de, $1719
    inc d
    jr nz, jr_000_3d42

    jr z, jr_000_3d3d

    nop

Jump_000_3d2a:
    dec de
    ld bc, $1114
    add hl, de
    rla
    inc d
    ld de, $1719

Call_000_3d34:
    inc d
    ld de, $1719
    rlca
    nop
    ld c, $01
    rlca

jr_000_3d3d:
    sub l
    ld c, $9d

Jump_000_3d40:
    rlca
    nop

jr_000_3d42:
    ld c, $01

Jump_000_3d44:
    rlca
    nop
    ld c, $01
    rlca
    nop
    ld c, $01
    rlca
    nop
    ld c, $01
    ld [$077a], sp
    add e
    ld [$077a], sp
    add e
    ld [$0700], sp
    inc bc
    ld [$077a], sp
    add e
    ld [$077a], sp
    add e
    ld [$077a], sp
    add e

Jump_000_3d68:
    dec d

Call_000_3d69:
    nop
    inc e
    ld bc, $0015
    inc e
    ld bc, $0015
    inc e
    ld bc, $0015
    inc e
    ld bc, $0015

Call_000_3d7a:
    inc e
    ld bc, $0015
    inc e
    ld bc, $0018
    ld e, $04
    jr jr_000_3d86

jr_000_3d86:
    ld e, $04
    jr jr_000_3d8a

jr_000_3d8a:
    ld e, $04
    jr jr_000_3d8e

jr_000_3d8e:
    ld e, $04
    jr jr_000_3d92

jr_000_3d92:
    ld e, $04
    jr jr_000_3d96

jr_000_3d96:
    ld e, $04
    ld [bc], a
    nop
    ld [$0202], sp
    nop
    ld [$0202], sp
    nop
    ld [$0202], sp
    nop
    ld [$0202], sp
    nop
    ld [$0202], sp
    nop
    ld [$0002], sp
    inc b
    nop
    ld [$0400], sp
    nop
    ld [$0400], sp
    nop
    ld [$0400], sp
    nop
    ld [$0400], sp
    nop
    ld [$0400], sp
    nop
    ld [$0008], sp
    nop
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp

Call_000_3dd7:
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc

Call_000_3df8:
    ld [$0000], sp

Call_000_3dfb:
    inc bc
    ld [$0000], sp

Call_000_3dff:
    inc bc
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc

Call_000_3e08:
    ld [$0000], sp
    inc bc
    ld [$0000], sp
    inc bc

Call_000_3e10:
    rlca
    nop
    dec c
    ld bc, $0007
    dec c
    ld bc, $0007
    dec c
    ld bc, $0007
    dec c
    ld bc, $0007
    dec c
    ld bc, $0007
    dec c
    ld bc, $8021
    ld c, [hl]
    push hl
    or a
    jr z, jr_000_3e70

    ld hl, $ff96
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_3e50

    set 7, [hl]
    res 2, [hl]
    ld a, [hl]
    bit 0, a
    ld a, $fc
    jr z, jr_000_3e46

    ld a, $04
    set 2, [hl]

jr_000_3e46:
    ldh [$9a], a
    ld a, $04
    ldh [$93], a

Call_000_3e4c:
    ld a, $01
    ldh [$95], a

Call_000_3e50:
jr_000_3e50:
    ld hl, $ff95
    dec [hl]
    jr nz, jr_000_3e5c

    ld [hl], $03
    ld hl, $ff93
    dec [hl]

jr_000_3e5c:
    ld a, $01
    ldh [$9b], a
    ldh a, [$96]
    bit 2, a
    ld a, [hl]
    jr nz, jr_000_3e69

    cpl
    inc a

jr_000_3e69:
    ldh [$9a], a
    or a
    ret nz

Call_000_3e6d:
    xor a
    ldh [$a3], a

jr_000_3e70:
    ldh a, [$a0]
    dec a
    jr nz, jr_000_3e7e

    xor a
    ld [$d310], a
    ld [$d314], a
    jr jr_000_3e85

jr_000_3e7e:
    xor a
    ld [$d318], a
    ld [$d31c], a

jr_000_3e85:
    ld a, $ff
    ld hl, $ff8c
    ld bc, $001b
    jp Jump_000_1b90


Call_000_3e90:
    add a

Jump_000_3e91:
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    pop de
    ld a, c
    ldh [$8a], a
    ld [$2000], a
    call Call_000_1b12
    ld a, $01
    ldh [$8a], a
    ld [$2000], a
    ret


Call_000_3ead:
    ld hl, $c05f
    ld de, $c050
    ld a, [de]
    cp [hl]
    jr z, jr_000_3eba

    jr c, jr_000_3ed4

    ret


jr_000_3eba:
    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr z, jr_000_3ec3

    jr c, jr_000_3ed4

    ret


jr_000_3ec3:
    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr z, jr_000_3ecc

    jr c, jr_000_3ed4

    ret


jr_000_3ecc:
    inc de
    inc hl
    ld a, [de]

Call_000_3ecf:
    cp [hl]
    ret z

    jr c, jr_000_3ed4

    ret


jr_000_3ed4:
    ld hl, $c05f
    ld de, $c050
    ld bc, $0004
    jp Jump_000_1ace


Call_000_3ee0:
jr_000_3ee0:
    xor a
    ld a, [de]
    daa
    ld c, a
    and $f0
    swap a
    add $30
    ld [hl+], a
    ld a, c
    and $0f
    add $30

Jump_000_3ef0:
    ld [hl+], a

Call_000_3ef1:
    inc de
    dec b
    jr nz, jr_000_3ee0

    ld [hl], $ff

Call_000_3ef7:
    ret


    ld [bc], a

Call_000_3ef9:
    ld bc, $4854
    ld b, l

Call_000_3efd:
    jr nz, jr_000_3f40

    ld b, h
    ld b, h
    ld b, c
    ld c, l
    ld d, e
    jr nz, jr_000_3f4c

    ld b, c
    ld c, l
    ld c, c
    ld c, h
    ld e, c
    cp $05
    inc bc
    ld d, h
    ld c, l
    jr nz, jr_000_3f70

    jr nz, jr_000_3f73

    jr nz, jr_000_3f47

    add hl, sp
    add hl, sp
    ld sp, $01fe
    inc b
    ld d, b
    ld b, c
    ld d, d
    ld b, c
    ld c, l
    ld c, a
    ld d, l
    ld c, [hl]
    ld d, h
    jr nz, jr_000_3f77

    ld c, c
    ld b, e
    ld d, h
    ld d, l
    ld d, d
    ld b, l
    ld d, e
    cp $04
    dec b
    ld b, e
    ld c, a
    ld d, d
    ld d, b
    ld c, a
    ld d, d
    ld b, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    cp $01

Call_000_3f3e:
    ld b, $41

jr_000_3f40:
    ld c, h
    ld c, h
    jr nz, jr_000_3f96

    ld c, c
    ld b, a
    ld c, b

jr_000_3f47:
    ld d, h
    ld d, e
    jr nz, jr_000_3f9d

    ld b, l

jr_000_3f4c:
    ld d, e
    ld b, l
    ld d, d
    ld d, [hl]
    ld b, l
    ld b, h
    cp $02
    ld [$4d54], sp
    jr nz, jr_000_3f9d

    ld b, l
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    ld b, c

Call_000_3f5f:
    ld d, h

Call_000_3f60:
    ld b, l

Jump_000_3f61:
    ld d, e
    jr nz, @+$43

    cp $04
    add hl, bc
    ld d, h
    ld d, d
    ld b, c

Call_000_3f6a:
    ld b, h
    ld b, l
    ld c, l
    ld b, c
    ld d, d
    ld c, e

jr_000_3f70:
    jr nz, @+$51

    ld b, [hl]

jr_000_3f73:
    cp $01
    ld a, [bc]
    ld d, b

jr_000_3f77:
    ld b, c
    ld d, d
    ld b, c
    ld c, l
    ld c, a
    ld d, l
    ld c, [hl]
    ld d, h
    jr nz, jr_000_3fd1

    ld c, c
    ld b, e
    ld d, h
    ld d, l
    ld d, d
    ld b, l
    ld d, e
    cp $04
    dec bc
    ld b, e
    ld c, a
    ld d, d
    ld d, b
    ld c, a
    ld d, d
    ld b, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]

jr_000_3f96:
    ld e, l
    cp $01
    dec c
    ld d, l
    ld d, e
    ld b, l

jr_000_3f9d:
    ld b, h
    jr nz, jr_000_3ff5

    ld c, [hl]
    ld b, h
    ld b, l
    ld d, d
    jr nz, jr_000_3ff2

    ld c, c
    ld b, e
    ld b, l
    ld c, [hl]
    ld d, e
    ld b, l
    cp $06
    ld c, $42
    ld e, c
    jr nz, @+$51

    ld b, e
    ld b, l
    ld b, c
    ld c, [hl]
    cp $04
    rrca
    ld e, a
    jr nz, jr_000_3fee

    add hl, sp
    add hl, sp
    ld sp, $4f20
    ld b, e
    ld b, l
    ld b, c
    ld c, [hl]
    cp $00
    ld de, $494c
    ld b, e
    ld b, l
    ld c, [hl]
    ld d, e
    ld b, l

Call_000_3fd0:
    ld b, h

jr_000_3fd1:
    jr nz, @+$44

    ld e, c
    jr nz, @+$50

    ld c, c
    ld c, [hl]
    ld d, h
    ld b, l
    ld c, [hl]
    ld b, h
    ld c, a
    rst $38
    ld l, $42
    ld bc, $f246
    ccf
    dec a
    ld b, b
    xor h
    ld b, b
    dec c
    ld b, c
    ld e, d
    ld b, c
    ret c

    ld b, c

jr_000_3fee:
    ld b, d
    ld b, h
    ld e, d
    ld b, h

jr_000_3ff2:
    ld [$4d0e], sp

jr_000_3ff5:
    ld e, c
    cp $05
    rrca
    ld b, h
    ld b, c
    ld d, d

Call_000_3ffc:
    ld c, h
    ld c, c
    ld c, [hl]

Call_000_3fff:
    ld b, a
