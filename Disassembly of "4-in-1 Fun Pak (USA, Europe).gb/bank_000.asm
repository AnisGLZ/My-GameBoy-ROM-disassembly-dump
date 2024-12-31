; Disassembly of "4-in-1 Fun Pak (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    ret


jr_000_0001:
    ldh a, [rSTAT]

Call_000_0003:
    and $02
    jr nz, jr_000_0001

    ret


RST_08::
    ldh a, [rLCDC]
    rlca
    ret nc

jr_000_000c:
    ldh a, [rSTAT]
    and $02

RST_10::
    jr z, jr_000_000c

    jr jr_000_0001

    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    ld a, [$c3a4]
    or a
    jr z, RST_18

    xor a
    db $ea

RST_20::
    and h

Call_000_0021:
Jump_000_0021:
    jp $24c9


jr_000_0024:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


RST_28::
    pop hl
    rlca
    add l
    ld l, a
    jr nc, jr_000_0024

    jr @-$0b

RST_30::
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    ret


    rst $38
    rst $38
    rst $38

Jump_000_003c:
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jp $c000


Call_000_0043:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp $c003


    rst $38
    rst $38
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
    jp $c006


    rst $38

Jump_000_005c:
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_0070:
    di
    ld sp, $e000
    ld a, $01
    ld [$2000], a
    call Call_000_0990
    ld a, $bb

jr_000_007e:
    ld [$c00a], a
    ld a, $01
    ld [$c313], a
    call Call_000_0907
    call Call_000_09ac
    call Call_000_093d
    xor a
    ld [$c3ba], a
    ld [$c3bb], a
    call Call_000_0e45
    ld a, $01
    call Call_000_0e45
    call Call_000_0e5a
    ld b, $06
    ld hl, $4b77
    call Call_000_09de
    jp Jump_000_0150


Jump_000_00ac:
    di
    ld sp, $e000
    ld a, $01
    ld [$2000], a
    call Call_000_0990

jr_000_00b8:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_00b8

    ld a, $bc
    jr jr_000_007e

Jump_000_00c2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00c7:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_00cb:
    rst $38

Call_000_00cc:
    rst $38
    rst $38
    rst $38

Call_000_00cf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_00f4:
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp Jump_000_00ac


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "4 IN 1 FUN PAK", $00, $00

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
    db $31

HeaderGlobalChecksum::
    db $ff, $9b

Jump_000_0150:
    call Call_000_0166

Jump_000_0153:
jr_000_0153:
    call Call_000_01ce
    call Call_000_03b8
    call Call_000_0637
    ld a, $80
    ld [$c3bb], a
    call Call_000_0844
    jr jr_000_0153

Call_000_0166:
    di
    ld a, $ff
    ld [$c00b], a
    xor a
    call Call_000_0ed2
    xor a
    call Call_000_0f4d
    xor a
    call Call_000_0f69
    xor a
    ld [$c010], a
    ld a, [$c00a]
    cp $bb
    ret z

    xor a
    call Call_000_0e45
    ld a, $01
    ld [$c39d], a
    ld a, $e4
    ld b, a
    call Call_000_0b1c
    ld a, $01
    ldh [rIE], a
    ld b, $01
    call Call_000_09c6
    ld hl, $62e0
    ld de, $8800
    call Call_000_13a5
    ld hl, $656e
    ld de, $9800
    call Call_000_13a5
    xor a
    ld b, a
    ld c, a
    ld d, a
    ld e, a
    ld l, a
    ld h, a
    ldh [rIF], a
    ld a, $81
    ldh [rLCDC], a
    ei
    ld b, $b4

jr_000_01bc:
    push bc
    rst $18
    pop bc
    dec b
    jr nz, jr_000_01bc

    call Call_000_0b26

jr_000_01c5:
    ld a, [$c39a]
    or a
    jr nz, jr_000_01c5

    jp Jump_000_0c49


Call_000_01ce:
    di
    xor a
    call Call_000_0e45
    ld a, $ff
    ld [$c00b], a
    xor a
    ld [$c3ae], a
    ld [$c3af], a
    ld [$c3ac], a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c3b4], a
    ld [$c019], a
    ld [$c3a5], a
    ld [$c01a], a
    ld [$c018], a
    xor a
    ld hl, $c3a6
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c3a9
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$c009], a
    ld a, $80
    ld [$c3ad], a
    res 7, a
    ldh [rSC], a
    ld a, $f1
    ldh [rSB], a
    ld a, [$c3ad]
    ldh [rSC], a
    ldh a, [rNR50]
    and $88
    ldh [rNR50], a
    ld a, $89
    ld [$c3bb], a
    ld a, $02
    ld [$c39d], a
    ld a, $e4
    ld b, a
    call Call_000_0b1c
    ld a, $03
    ld [$c017], a
    ld a, [$c00a]
    cp $bb
    jr z, jr_000_0244

    xor a
    ld [$c017], a

jr_000_0244:
    ld a, $09
    ldh [rIE], a
    xor a
    call Call_000_0ed2
    xor a
    call Call_000_0f4d
    xor a
    call Call_000_0f69
    ld b, $01
    call Call_000_09c6
    ld hl, $502a
    ld de, $8800
    call Call_000_13a5
    ld hl, $5506
    ld de, $9800
    call Call_000_13a5
    ld a, $81
    ldh [rLCDC], a
    ei
    ld a, $ff
    ld [$c00b], a

jr_000_0275:
    rst $18
    ld a, [$c39a]
    or a
    jr nz, jr_000_0284

    ld a, [$c00a]
    cp $bb
    call z, Call_000_0d23

jr_000_0284:
    call Call_000_02d0
    ld a, [$c3b0]
    cp $f2
    jr z, jr_000_02b6

    ld a, [$c310]
    cp $08
    jr nz, jr_000_0275

    ld a, $01
    ld [$c3b4], a
    di
    ld a, $81
    ld [$c3ad], a
    res 7, a
    ldh [rSC], a
    ld a, $f2
    ldh [rSB], a
    ld a, [$c3ad]
    ldh [rSC], a
    ei
    rst $18
    ld a, [$c3b0]
    cp $f1
    jr nz, jr_000_02bb

jr_000_02b6:
    ld a, $01
    ld [$c3ae], a

jr_000_02bb:
    ld a, $01
    ld [$c3ac], a
    xor a
    ld [$c39d], a
    call Call_000_0b26

jr_000_02c7:
    ld a, [$c39a]
    or a
    jr nz, jr_000_02c7

    jp Jump_000_0c49


Call_000_02d0:
    ld a, [$c018]
    cp $3c
    jr nz, jr_000_02e3

    xor a
    ld [$c018], a
    ld b, $05
    ld hl, $5d22
    call Call_000_09de

jr_000_02e3:
    ld a, [$c310]
    cp $04
    jr nz, jr_000_02ee

    ld hl, $c018
    inc [hl]

jr_000_02ee:
    ld a, [$c3a5]
    cp $3c
    ret nz

    xor a
    ld [$c3a5], a
    ld a, [$c017]

Jump_000_02fb:
    or a
    jr z, jr_000_0303

    dec a
    ld [$c017], a
    ret


jr_000_0303:
    call Call_000_0b26

jr_000_0306:
    ld a, [$c39a]
    or a
    jr nz, jr_000_0306

    di

jr_000_030d:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_030d

    xor a
    ldh [rLCDC], a
    ld [$c3a9], a
    ld [$c3aa], a
    ld [$c018], a
    ei
    ld a, [$c01a]
    inc a
    cp $03
    jr nz, jr_000_0329

    xor a

jr_000_0329:
    ld [$c01a], a
    or a
    jr z, jr_000_0379

    dec a
    jr z, jr_000_0361

    ld hl, $66a7
    ld de, $8800
    call Call_000_13a5
    ld a, $04
    ld [$c017], a
    ld a, $27
    ld [$c3b4], a
    ld hl, $6e9b
    ld a, [$c00a]
    cp $bb
    jr z, jr_000_038f

    ld a, $bb
    ld [$c00a], a
    ld de, $9800
    call Call_000_13a5
    ld a, $01
    ld [$c017], a
    jr jr_000_03ac

jr_000_0361:
    ld hl, $4000
    ld de, $8800
    call Call_000_13a5
    ld a, $08
    ld [$c017], a
    ld a, $1b
    ld [$c3b4], a
    ld hl, $4d05
    jr jr_000_038f

jr_000_0379:
    ld hl, $502a
    ld de, $8800
    call Call_000_13a5
    ld a, $03
    ld [$c017], a

Jump_000_0387:
    ld a, $e4
    ld [$c3b4], a
    ld hl, $5506

jr_000_038f:
    ld de, $9800
    call Call_000_13a5
    ld a, [$c00a]
    cp $bb
    jr z, jr_000_03ac

    cp $bd
    jr nz, jr_000_03a7

    ld a, $bb
    ld [$c00a], a
    jr jr_000_03ac

jr_000_03a7:
    ld a, $01
    ld [$c017], a

jr_000_03ac:
    ld a, [$c3b4]
    ld b, a
    call Call_000_0b1c
    ld a, $81
    ldh [rLCDC], a
    ret


Call_000_03b8:
    xor a
    call Call_000_0e45
    ld b, $01
    call Call_000_09c6
    ld hl, $55ae
    ld de, $8800
    call Call_000_13a5
    ld hl, $4e01
    ld de, $9800
    call Call_000_13a5
    ld a, $bb
    ld [$c00a], a
    ld a, $ff
    ld [$c00b], a
    xor a
    ld [$c013], a
    ld [$c014], a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c3b3], a
    ld [$c3a5], a
    ld hl, $c3a6
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c3a9
    ld [hl+], a
    ld [hl+], a

Call_000_03fe:
    ld [hl], a

Jump_000_03ff:
    ld [$c009], a
    ld a, $04
    call Call_000_0ed2
    ld a, $01
    call Call_000_0f4d
    xor a
    call Call_000_0f69
    ldh a, [rSTAT]
    and $03
    or $44
    ldh [rSTAT], a
    ld a, $27
    ld b, a
    call Call_000_0b1c
    ld a, [$c3ae]
    or a
    jr nz, jr_000_0437

    ld a, $03
    ldh [rIE], a
    xor a
    ld [$c3b1], a
    ld a, $3c
    ldh [rLYC], a
    ld a, $10
    ld [$c3b2], a
    jr jr_000_044c

jr_000_0437:
    ld a, $0b
    ldh [rIE], a
    call Call_000_0d56
    ld a, $02
    ld [$c3b1], a
    ld a, $64
    ldh [rLYC], a
    ld a, $10
    ld [$c3b2], a

jr_000_044c:
    ld a, $81
    ldh [rLCDC], a
    ei
    ld a, $ff
    ld [$c00b], a

jr_000_0456:
    call Call_000_04fb
    ld a, [$c39a]
    or a
    jr nz, jr_000_0456

    ld a, [$c3b0]
    ld b, a
    cp $ff
    jp z, Jump_000_0070

    ld a, [$c310]
    or b
    ld b, a
    cp $08
    jr nz, jr_000_0456

    ld a, [$c310]
    and $08
    ld [$c3b4], a
    ld a, [$c3b1]
    cp $02
    jr z, jr_000_04bf

    xor a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c3ae], a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $01
    ld [$c3b4], a
    ld a, [$c310]
    cp $08
    jr nz, jr_000_0456

    ld a, [$c3b1]
    cp $01
    jr z, jr_000_04b1

    xor a
    ld [$c012], a
    ld [$c011], a
    ld a, $01
    ld [$c3a2], a
    jr jr_000_04d8

jr_000_04b1:
    ld a, $01
    ld [$c011], a
    ld [$c012], a
    xor a
    ld [$c3a2], a
    jr jr_000_04d8

jr_000_04bf:
    ld a, [$c3ae]
    or a
    jr z, jr_000_0456

    ld a, [$c3ad]
    and $01
    xor $01
    add $02
    ld [$c011], a
    ld [$c012], a
    xor a
    ld [$c3a2], a

jr_000_04d8:
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    call Call_000_0f4d
    call Call_000_0b26

jr_000_04e8:
    xor a
    ld [$c3af], a
    ld a, [$c39a]
    or a
    jr nz, jr_000_04e8

    ldh a, [rSTAT]
    and $03
    ldh [rSTAT], a
    jp Jump_000_0c49


Call_000_04fb:
    rst $18
    ld a, [$c3a5]
    cp $05
    jr nz, jr_000_0521

    xor a
    ld [$c3a5], a
    ld a, [$c3b3]
    bit 7, a
    jr z, jr_000_0517

    dec a
    cp $7f
    jr nz, jr_000_051e

    ld a, $01
    jr jr_000_051e

jr_000_0517:
    inc a
    cp $04
    jr nz, jr_000_051e

    ld a, $83

jr_000_051e:
    ld [$c3b3], a

Jump_000_0521:
jr_000_0521:
    ld hl, $c013
    inc [hl]
    jr nz, jr_000_052f

    inc hl
    inc [hl]
    ld a, [hl]
    cp $07
    jp z, Jump_000_0070

jr_000_052f:
    call Call_000_0df7
    ret z

    ld b, a
    ld a, [$c39a]
    or a
    ret nz

    ld a, b
    cp $40
    jr nz, jr_000_0551

    ld a, [$c3b1]
    or a
    jr z, jr_000_054a

    dec a
    ld [$c3b1], a
    jr jr_000_0566

jr_000_054a:
    ld a, $02
    ld [$c3b1], a
    jr jr_000_0566

jr_000_0551:
    cp $80
    jr nz, jr_000_0571

    ld a, [$c3b1]
    cp $02
    jr z, jr_000_0562

    inc a
    ld [$c3b1], a
    jr jr_000_0566

jr_000_0562:
    xor a
    ld [$c3b1], a

jr_000_0566:
    ld a, $87
    ld [$c3ba], a
    xor a
    ld hl, $c013
    ld [hl+], a
    ld [hl], a

jr_000_0571:
    ld a, [$c3b1]
    or a
    jr z, jr_000_058e

    dec a
    jr z, jr_000_0584

    ld a, $64
    ldh [rLYC], a
    ld a, $10
    ld [$c3b2], a
    ret


jr_000_0584:
    ld a, $50
    ldh [rLYC], a
    ld a, $10
    ld [$c3b2], a
    ret


jr_000_058e:
    ld a, $3c
    ldh [rLYC], a
    ld a, $10
    ld [$c3b2], a
    ret


    di
    push af
    push bc
    push de
    push hl
    rst $08
    ld a, [$c39a]
    or a
    jr nz, jr_000_05bc

    ld a, [$c3b2]
    ld b, a
    ldh a, [rLY]
    add b
    ld b, a
    ldh a, [rBGP]

Call_000_05ae:
    ld c, a
    ld a, $e7
    ldh [rBGP], a

jr_000_05b3:
    ldh a, [rLY]
    cp b
    jr c, jr_000_05b3

    ld a, c
    ldh [rBGP], a
    ei

jr_000_05bc:
    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rla
    jr nc, jr_000_05d0

jr_000_05c4:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_05c4

jr_000_05ca:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_05ca

jr_000_05d0:
    pop af
    reti


    push af
    push bc
    push de
    push hl
    di
    ld a, [$c3ae]
    or a
    jr z, jr_000_05f2

    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_000_05f2

    ld a, [$c3af]
    inc a
    ld [$c3af], a
    cp $f0
    jp z, Jump_000_0070

    jr jr_000_05f7

jr_000_05f2:
    ld a, $01
    ld [$c3a4], a

jr_000_05f7:
    ld a, [$c3a7]
    ldh [rSCX], a
    ld a, [$c3aa]

Jump_000_05ff:
    ldh [rSCY], a
    call Call_000_0b3a
    call Call_000_062d
    ld hl, $c3a5
    inc [hl]
    ld hl, $c395
    inc [hl]
    ld b, $06
    ld hl, $4a72
    call Call_000_09de
    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rlca
    jr nc, jr_000_062b

jr_000_061f:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_061f

jr_000_0625:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0625

jr_000_062b:
    pop af
    reti


Call_000_062d:
    ld a, [$c39a]
    or a
    ret nz

    ld a, $27
    ldh [rBGP], a
    ret


Call_000_0637:
    xor a
    call Call_000_0e45
    ld hl, $4f16
    ld de, $9800
    call Call_000_13a5
    ld a, $ff
    ld [$c00b], a
    xor a
    ld [$c013], a
    ld [$c014], a
    ld [$c3b3], a
    ld [$c3a5], a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld [$c009], a
    ld a, $05
    call Call_000_0ed2
    ld a, $02
    call Call_000_0f4d
    xor a
    call Call_000_0f69
    ldh a, [rSTAT]
    and $03
    or $44
    ldh [rSTAT], a
    ld a, $27
    ld b, a
    call Call_000_0b1c
    ld a, [$c3ae]
    or a
    jr nz, jr_000_068a

    ld a, $03
    ldh [rIE], a
    jr jr_000_0691

jr_000_068a:
    ld a, $0b
    ldh [rIE], a
    call Call_000_0d56

jr_000_0691:
    xor a
    ld [$c3b1], a
    ld a, $3a
    ldh [rLYC], a
    ld a, $0c
    ld [$c3b2], a
    ld a, $81
    ldh [rLCDC], a
    ei
    ld a, $ff
    ld [$c00b], a

jr_000_06a8:
    call Call_000_06fb
    ld a, [$c39a]
    or a
    jr nz, jr_000_06a8

    ld a, [$c3b0]
    ld b, a
    cp $ff
    jp z, Jump_000_0070

    ld a, [$c310]
    or b
    ld b, a
    cp $08
    jr nz, jr_000_06a8

    ld a, [$c310]
    and $08
    ld [$c3b4], a
    ld b, $09
    ld a, [$c3ae]
    or a
    jr nz, jr_000_06d5

    ld b, $01

jr_000_06d5:
    ld a, b
    ldh [rIE], a
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    call Call_000_0f4d
    call Call_000_0b26

jr_000_06e8:
    xor a
    ld [$c3af], a
    ld a, [$c39a]

Call_000_06ef:
    or a
    jr nz, jr_000_06e8

    ldh a, [rSTAT]
    and $03
    ldh [rSTAT], a
    jp Jump_000_0c49


Call_000_06fb:
    rst $18
    ld a, [$c3a5]
    cp $05
    jr nz, jr_000_0721

    xor a
    ld [$c3a5], a
    ld a, [$c3b3]
    bit 7, a
    jr z, jr_000_0717

    dec a
    cp $7f
    jr nz, jr_000_071e

    ld a, $01
    jr jr_000_071e

jr_000_0717:
    inc a
    cp $04
    jr nz, jr_000_071e

    ld a, $83

jr_000_071e:
    ld [$c3b3], a

jr_000_0721:
    ld hl, $c013
    inc [hl]
    jr nz, jr_000_072f

    inc hl
    inc [hl]
    ld a, [hl]
    cp $07
    jp z, Jump_000_0070

jr_000_072f:
    call Call_000_0df7
    ret z

    ld b, a
    ld a, [$c39a]
    or a
    ret nz

    ld a, b
    cp $40
    jr nz, jr_000_0751

    ld a, [$c3b1]
    or a
    jr z, jr_000_074a

    dec a
    ld [$c3b1], a
    jr jr_000_0766

jr_000_074a:
    ld a, $03
    ld [$c3b1], a
    jr jr_000_0766

jr_000_0751:
    cp $80
    jr nz, jr_000_0771

    ld a, [$c3b1]
    cp $03
    jr z, jr_000_0762

    inc a
    ld [$c3b1], a
    jr jr_000_0766

jr_000_0762:
    xor a
    ld [$c3b1], a

jr_000_0766:
    ld a, $87
    ld [$c3ba], a
    xor a
    ld hl, $c013
    ld [hl+], a
    ld [hl], a

jr_000_0771:
    ld a, [$c3b1]
    or a
    jr z, jr_000_079b

    dec a
    jr z, jr_000_0791

    dec a
    jr z, jr_000_0787

    ld a, $69
    ldh [rLYC], a
    ld a, $0f
    ld [$c3b2], a
    ret


jr_000_0787:
    ld a, $58
    ldh [rLYC], a
    ld a, $10
    ld [$c3b2], a
    ret


jr_000_0791:
    ld a, $48
    ldh [rLYC], a
    ld a, $10
    ld [$c3b2], a
    ret


jr_000_079b:
    ld a, $3a
    ldh [rLYC], a
    ld a, $0c
    ld [$c3b2], a
    ret


    di
    push af
    push bc
    push de
    push hl
    rst $08
    ld a, [$c39a]
    or a
    jr nz, jr_000_07c9

    ld a, [$c3b2]
    ld b, a
    ldh a, [rLY]
    add b
    ld b, a
    ldh a, [rBGP]
    ld c, a
    ld a, $e7
    ldh [rBGP], a

jr_000_07c0:
    ldh a, [rLY]

Jump_000_07c2:
    cp b
    jr c, jr_000_07c0

    ld a, c
    ldh [rBGP], a
    ei

jr_000_07c9:
    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rla
    jr nc, jr_000_07dd

jr_000_07d1:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_07d1

jr_000_07d7:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_07d7

jr_000_07dd:
    pop af
    reti


    push af
    push bc
    push de
    push hl
    di
    ld a, [$c3ae]
    or a
    jr z, jr_000_07ff

    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_000_07ff

    ld a, [$c3af]
    inc a
    ld [$c3af], a
    cp $f0
    jp z, Jump_000_0070

    jr jr_000_0804

jr_000_07ff:
    ld a, $01
    ld [$c3a4], a

jr_000_0804:
    ld a, [$c3a7]
    ldh [rSCX], a
    ld a, [$c3aa]
    ldh [rSCY], a
    call Call_000_0b3a
    call Call_000_083a
    ld hl, $c3a5
    inc [hl]
    ld hl, $c395
    inc [hl]
    ld b, $06
    ld hl, $4a72
    call Call_000_09de
    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rlca
    jr nc, jr_000_0838

jr_000_082c:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_082c

jr_000_0832:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0832

jr_000_0838:
    pop af
    reti


Call_000_083a:
    ld a, [$c39a]
    or a
    ret nz

    ld a, $27
    ldh [rBGP], a
    ret


Call_000_0844:
    ld a, $ff
    ld [$c00b], a
    ld a, [$c3b1]
    or a
    jr nz, jr_000_086c

    push af
    ld a, $01
    ld [$c010], a
    ld a, $06
    call Call_000_0ed2
    xor a
    call Call_000_0f4d
    ld a, $01
    call Call_000_0f69
    ldh a, [rNR50]
    and $88
    or $77
    ldh [rNR50], a
    pop af

jr_000_086c:
    or a
    jr nz, jr_000_0873

    ld a, $00
    jr jr_000_0883

jr_000_0873:
    dec a
    jr nz, jr_000_087a

    ld a, $01
    jr jr_000_0883

jr_000_087a:
    dec a
    jr nz, jr_000_0881

    ld a, $02
    jr jr_000_0883

jr_000_0881:
    ld a, $03

jr_000_0883:
    ld [$c00f], a
    ld b, a
    add a
    add b
    add $99
    ld l, a
    ld a, $08
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_000_09de


    rlca
    and [hl]
    ld b, b
    ld [bc], a
    nop
    ld b, b
    inc b
    nop
    ld b, b
    inc bc
    nop
    ld b, b

Jump_000_08a5:
    di
    ld sp, $e000
    xor a
    ld [$c010], a
    ldh [rIF], a
    inc a
    ldh [rIE], a
    xor a
    call Call_000_0ed2
    xor a
    call Call_000_0f4d
    xor a
    call Call_000_0f69
    ei
    xor a
    ld [$c310], a
    ld [$c311], a
    ld [$c3b0], a
    ld a, $80
    ld [$c3bb], a
    call Call_000_0b26

jr_000_08d1:
    ld a, [$c39a]
    or a
    jr nz, jr_000_08d1

    call Call_000_0c49
    jp Jump_000_0153


Call_000_08dd:
    ld a, [$c3ae]
    or a
    jr nz, jr_000_08fc

    ld a, [$c3a2]
    or a
    jr nz, jr_000_08f1

    xor a
    ld [$c3a1], a
    ld [$c3a3], a
    ret


jr_000_08f1:
    ld a, [$c00c]
    ld [$c3a3], a
    xor a
    ld [$c3a1], a
    ret


jr_000_08fc:
    ld a, [$c00c]
    ld [$c3a3], a
    xor a
    ld [$c3a1], a
    ret


Call_000_0907:
    xor a
    ldh [rIF], a
    ldh [rIE], a
    ldh [rLCDC], a
    ldh [rSTAT], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ldh [rDIV], a
    ldh [rTIMA], a
    ldh [rTMA], a
    ldh [rTAC], a
    ldh [rSC], a
    ldh [rSB], a
    ld hl, $ff80
    ld b, $7f

jr_000_0927:
    ld [hl+], a
    dec b
    jr nz, jr_000_0927

    cpl
    ldh [rP1], a
    ld [$c00f], a
    ld a, $c3
    ld [$c000], a
    ld [$c003], a
    ld [$c006], a
    ret


Call_000_093d:
    xor a
    ld [$c397], a
    ld [$c398], a
    ld [$c399], a
    ld [$c39a], a
    ld [$c39b], a
    ld [$c39c], a
    ld [$c39d], a
    ld [$c39e], a
    ld [$c39f], a
    ld [$c3a0], a
    ld [$c009], a
    ld [$c310], a
    ld [$c311], a
    ld [$c3a6], a
    ld [$c3a7], a
    ld [$c3a8], a
    ld [$c3a9], a
    ld [$c3aa], a
    ld [$c3ab], a
    ld [$c314], a
    ld [$c395], a
    ld hl, $c3ba
    ld bc, $00c4

jr_000_0983:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0983

    ld b, $01
    call Call_000_09c6
    ret


Call_000_0990:
    ld hl, $c000
    xor a
    ld b, a

jr_000_0995:
    ld [hl+], a
    dec b
    jr nz, jr_000_0995

    ld hl, $c100
    ld bc, $1e00

jr_000_099f:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_099f

    ld a, $ff
    ld [$c00b], a
    ret


Call_000_09ac:
    ld hl, $09ba
    ld c, $80
    ld b, $0c

jr_000_09b3:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_09b3

    ret


    di
    ld a, $c2
    ldh [rDMA], a
    ld a, $28

jr_000_09c1:
    dec a
    jr nz, jr_000_09c1

    ei
    ret


Call_000_09c6:
    ld a, [$c313]
    ld [$c312], a
    ld a, b
    ld [$c313], a
    ld [$2000], a
    ret


    ld a, [$c312]
    ld [$2000], a
    ld [$c313], a
    ret


Call_000_09de:
Jump_000_09de:
    push af
    push hl
    ld hl, $c313
    ld a, [hl]
    ld [hl], b
    ld hl, $2000
    ld [hl], b
    ld b, a
    pop hl
    pop af
    push bc
    call Call_000_0a00
    push af
    push hl
    ld hl, sp+$05
    ld a, [hl]
    ld [$c313], a
    ld [$2000], a
    pop hl
    pop af
    add sp, $02
    ret


Call_000_0a00:
    jp hl


Call_000_0a01:
    push hl
    ldh a, [rDIV]
    add $11
    ld l, a
    adc $0a
    sub l
    ld h, a
    ld a, [hl]
    ld [$c396], a
    pop hl
    ret


    add $7e
    add c
    ld l, e
    ld c, e
    ei
    ld [c], a
    ld d, h
    or $bd
    rst $18
    ld a, h
    inc e
    pop hl
    add a
    ld bc, $31bf
    sbc $56
    ld [hl], d
    rrca
    ld b, a
    ld h, a
    ld h, [hl]
    ld e, c
    xor d
    adc b
    inc a
    ld [$7b13], a
    jp nc, $a185

    ret c

    ld d, l
    cpl
    scf
    xor [hl]
    ld h, l
    ld e, e
    jp c, $7902

    sbc b
    call z, $1ae3
    db $76
    adc [hl]
    ld e, a
    reti


    sbc c
    adc a
    rra
    ccf
    ld [hl], $ee
    ld b, e
    ld a, b
    ld c, l
    dec c
    ld a, [$a6be]
    db $e4
    add [hl]
    call c, $6d29
    ld c, [hl]
    rst $38
    ld [hl], b
    jr nz, @-$4d

    ld e, b
    dec b
    sub b
    push bc
    add hl, bc
    ld d, e
    call $483b
    ld d, d
    db $d3
    sbc l
    ld b, $9f
    or l
    jp nz, $b249

    ld e, $ac
    ld [hl-], a
    sbc h
    ld b, [hl]
    sub l
    ld [hl], c
    ld d, a
    add hl, sp
    dec e
    ld d, $74
    push af
    rla
    ld e, h
    ld b, c
    cp e
    rst $00
    dec de
    inc sp
    dec a
    sub c
    ret nz

    and l
    xor e
    adc l
    ld e, [hl]
    ld a, $e6
    ld l, b
    ld a, [hl-]
    jp $1193


    xor b
    ld h, h
    db $db
    jp z, $60e0

    di
    nop
    and d
    dec h
    and b
    ld hl, $62d5
    ld c, a
    ld l, $94
    or b
    xor c
    sbc [hl]
    ld e, d
    dec bc
    add b
    or [hl]
    rst $08
    inc c
    ld a, [hl+]
    db $eb
    or a
    inc h
    inc hl
    sub d
    and a
    rst $10
    adc h
    ld h, e
    ld b, h
    ld sp, hl
    cp d
    ld [hl], e
    ld e, l
    add hl, de
    push hl
    ld d, c
    ld [hl], l
    sbc d
    ld l, c
    rst $28
    ld l, a
    ld b, d
    rst $30
    ld b, l
    jr c, @+$12

    db $fd
    rlca
    daa
    ld a, l
    call nc, $f161
    inc b
    dec d
    sbc e
    add e
    and h
    adc e

Call_000_0ad4:
    ld [de], a
    ld d, b
    sub $ad
    ld c, d
    db $dd
    jp hl


    inc bc
    ld h, $2c
    inc d
    sub [hl]
    ret z

    pop de
    ld l, h
    or e
    dec [hl]
    ret


    xor a
    ld c, h
    ld a, a
    adc $c1
    db $ed
    adc d
    dec l
    jr z, @+$32

    rst $20
    ld [$b477], sp
    ld hl, sp+$22
    ld a, d
    ld l, d
    inc [hl]

jr_000_0af9:
    cp $bc
    adc c
    db $f4
    ld l, [hl]
    ld a, [bc]
    dec hl
    db $fc
    add h
    call nz, $b9cb
    jr jr_000_0af9

    ret nc

    and e
    ldh a, [$82]
    cp b
    add sp, $40
    ld c, $ec
    sub a
    ld a, [$c39a]
    or a
    ret nz

    ldh a, [rBGP]
    cpl
    ldh [rBGP], a
    ret


Call_000_0b1c:
    ld [$c397], a
    ld [$c398], a
    ld a, $01
    jr jr_000_0b27

Call_000_0b26:
    xor a

jr_000_0b27:
    ld [$c399], a
    ld a, $03
    ld [$c39a], a
    ld a, $09
    ld [$c39b], a
    ld a, $03
    ld [$c39c], a
    ret


Call_000_0b3a:
    ld a, [$c39a]
    or a
    ret z

    ld a, [$c39d]
    cp $02
    jr z, jr_000_0b49

    or a
    jr nz, jr_000_0b8b

jr_000_0b49:
    ld hl, $c39c
    dec [hl]
    jr nz, jr_000_0b8b

    ld [hl], $03
    ld a, [$c399]
    cp $01
    jr z, jr_000_0b6c

Call_000_0b58:
    ldh a, [rNR50]
    ld b, a
    and $77
    sub $11
    cp $ef
    jr z, jr_000_0b8b

    ld c, a
    ld a, b
    and $88
    or c
    ldh [rNR50], a
    jr jr_000_0b8b

jr_000_0b6c:
    ldh a, [rNR50]
    ld b, a
    and $77
    add $11
    cp $88
    jr nz, jr_000_0b84

    ld a, [$c39d]
    cp $02
    jr nz, jr_000_0b8b

    dec a
    ld [$c39d], a
    jr jr_000_0b8b

jr_000_0b84:
    ld c, a
    ld a, b
    and $88
    or c
    ldh [rNR50], a

jr_000_0b8b:
    ld hl, $c39b
    dec [hl]
    ret nz

    ld [hl], $09
    call Call_000_0bf1
    ld bc, $0400
    ld de, $0301
    ldh a, [rOBP0]
    ld l, a
    ld a, [$c398]
    ld h, a
    ld a, [$c399]
    cp $01
    jr z, jr_000_0bcb

jr_000_0ba9:
    ld a, l
    and d
    jr z, jr_000_0bb0

    sub e
    or c
    ld c, a

jr_000_0bb0:
    sla d
    sla d
    sla e
    sla e
    dec b
    jr nz, jr_000_0ba9

    ld a, c
    ldh [rOBP0], a
    ldh [rOBP1], a
    or a
    ret nz

    ld a, [$c39a]
    res 1, a
    ld [$c39a], a
    ret


jr_000_0bcb:
    ld a, l
    and d
    ld c, a
    ld a, h
    and d
    cp c
    jr z, jr_000_0bd6

    ld a, l
    add e
    ld l, a

jr_000_0bd6:
    sla d
    sla d
    sla e
    sla e
    dec b
    jr nz, jr_000_0bcb

    ld a, l
    ldh [rOBP0], a
    ldh [rOBP1], a
    cp h
    ret nz

    ld a, [$c39a]
    res 1, a
    ld [$c39a], a
    ret


Call_000_0bf1:
    ld bc, $0400
    ld de, $0301
    ldh a, [rBGP]
    ld l, a
    ld a, [$c397]
    ld h, a
    ld a, [$c399]
    cp $01
    jr z, jr_000_0c25

jr_000_0c05:
    ld a, l
    and d
    jr z, jr_000_0c0c

    sub e
    or c
    ld c, a

jr_000_0c0c:
    sla d
    sla d
    sla e
    sla e
    dec b
    jr nz, jr_000_0c05

    ld a, c
    ldh [rBGP], a
    or a
    ret nz

    ld a, [$c39a]
    res 0, a
    ld [$c39a], a
    ret


jr_000_0c25:
    ld a, l
    and d
    ld c, a
    ld a, h
    and d
    cp c
    jr z, jr_000_0c30

    ld a, l
    add e
    ld l, a

Jump_000_0c30:
jr_000_0c30:
    sla d
    sla d
    sla e
    sla e
    dec b
    jr nz, jr_000_0c25

    ld a, l
    ldh [rBGP], a
    cp h
    ret nz

    ld a, [$c39a]
    res 0, a
    ld [$c39a], a
    ret


Call_000_0c49:
Jump_000_0c49:
    di

jr_000_0c4a:
    ldh a, [rLY]
    cp $91
    jr nc, jr_000_0c4a

jr_000_0c50:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_0c50

    xor a
    ldh [rLCDC], a
    ret


Call_000_0c5a:
Jump_000_0c5a:
    ld a, [$c3ae]
    or a
    jr z, jr_000_0c88

    ld a, [$c00f]
    cp $02
    jr nz, jr_000_0c88

    ld a, [$cc5c]
    cp $0c
    jp z, Jump_000_0d23

    cp $0d
    jp z, Jump_000_0d23

    cp $10
    jr z, jr_000_0c9f

    ld a, [$cc62]
    or a
    jr z, jr_000_0c88

    ld a, [$c3ad]
    and $01
    jr z, jr_000_0c9f

    jp Jump_000_0d56


jr_000_0c88:
    ld a, [$c3a3]
    ld b, a
    ld a, [$c3a1]
    cp b
    jp z, Jump_000_0d23

    ld a, [$c3a2]
    or a
    ret nz

    ld a, [$c3ae]
    or a
    jp z, Jump_000_0d23

jr_000_0c9f:
    ld a, [$c019]
    or a
    jp nz, Jump_000_0d23

    xor a
    ld [$c310], a
    call Call_000_0d56
    ld a, [$c00f]
    cp $01
    jr z, jr_000_0d0a

    cp $02
    jr nz, jr_000_0d03

    ld a, $3c

jr_000_0cba:
    dec a
    jr nz, jr_000_0cba

    xor a
    ld [$c7d9], a
    ld a, [$c708]
    or a
    jr nz, jr_000_0d03

    ld [$c714], a
    ld [$c717], a
    ld a, [$c3b0]
    and $c0
    cp $c0
    jr nz, jr_000_0d03

    ld a, [$c3b0]
    and $3f
    ld b, a
    and $07
    ld [$c715], a
    ld a, b
    and $38
    srl a
    srl a
    srl a
    ld [$c716], a
    ld b, a
    ld a, [$c715]
    cp b
    jr nz, jr_000_0cfa

    ld [$c714], a
    ld [$c717], a

jr_000_0cfa:
    xor a
    ld [$c310], a
    inc a
    ld [$c7d9], a
    ret


jr_000_0d03:
    ld a, [$c3b0]
    ld [$c310], a
    ret


jr_000_0d0a:
    ld a, [$c3b0]
    ld [$c311], a
    ld b, a
    and $a0
    rrca
    ld c, a
    ld a, b
    and $50
    add a
    or c
    ld c, a
    ld a, b
    and $0f
    or c
    ld [$c310], a
    ret


Call_000_0d23:
Jump_000_0d23:
    call Call_000_0dce
    ld [$c310], a
    ld a, [$c009]
    or a
    jr nz, jr_000_0d3d

    ld a, [$c310]
    cp $ff
    jr nz, jr_000_0d3d

    call Call_000_0d56
    rst $18
    jp Jump_000_0070


jr_000_0d3d:
    ld a, [$c310]
    or a
    jr nz, jr_000_0d48

    ld [$c00b], a
    jr jr_000_0d56

jr_000_0d48:
    ld hl, $c310
    ld a, [$c00b]
    xor [hl]
    and [hl]
    ld b, [hl]
    ld [hl], a
    ld a, b
    ld [$c00b], a

Call_000_0d56:
Jump_000_0d56:
jr_000_0d56:
    ld a, [$c3ae]
    or a
    ret z

    di
    ld a, [$c3ad]
    res 7, a
    ldh [rSC], a
    ld a, [$c00f]
    cp $02
    jr nz, jr_000_0d86

    ld a, [$c7da]
    or a
    jr z, jr_000_0d86

    dec a
    ld [$c7da], a
    ld [$c310], a
    ld a, [$c715]
    ld b, a
    ld a, [$c716]
    add a
    add a
    add a
    or b
    or $c0
    jr jr_000_0d89

jr_000_0d86:
    ld a, [$c310]

jr_000_0d89:
    ldh [rSB], a
    ld a, [$c3ad]
    ldh [rSC], a
    ei
    ret


    ld c, $08
    jr jr_000_0db0

    ld c, $04
    jr jr_000_0db0

    ld c, $02
    jr jr_000_0db0

    ld c, $01
    jr jr_000_0db0

    ld c, $20
    jr jr_000_0db0

    ld c, $10
    jr jr_000_0db0

    ld c, $40
    jr jr_000_0db0

    ld c, $80

jr_000_0db0:
    ld a, b
    and c
    jr nz, jr_000_0dbc

    ld a, c
    cpl
    ld hl, $c00b
    and [hl]
    ld [hl], a
    ret


jr_000_0dbc:
    ld a, [$c00b]
    and c
    and b
    jr z, jr_000_0dc7

    ld a, c
    cpl
    and b
    ld b, a

jr_000_0dc7:
    ld a, c
    ld hl, $c00b
    or [hl]
    ld [hl], a
    ret


Call_000_0dce:
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
    ld h, a
    ld a, $30
    ldh [rP1], a
    ld a, h
    ret


Call_000_0df7:
    ld a, [$c3ae]
    or a
    jr z, jr_000_0e1b

    ld a, [$c3b4]
    or a
    jr nz, jr_000_0e1b

    ld a, [$c3ae]
    push af
    xor a
    ld [$c3ae], a
    call Call_000_0d23
    pop af
    ld [$c3ae], a
    xor a
    ld [$c310], a
    call Call_000_0d56
    jr jr_000_0e1e

jr_000_0e1b:
    call Call_000_0d23

jr_000_0e1e:
    ld a, [$c310]
    ld b, a
    ld a, [$c3b0]
    or b
    ld b, a
    ret


    ld c, l
    ld b, h
    ld hl, $c39e
    ld a, [hl]
    add c
    daa
    ld [hl+], a
    ld a, [hl]
    adc b
    daa
    ld [hl+], a
    ld a, [hl]
    adc $00
    daa
    ld [hl], a
    cp $10
    ret c

    ld a, $09
    ld [hl-], a
    ld a, $99
    ld [hl-], a
    ld [hl], a
    ret


Call_000_0e45:
    ld hl, $9800
    or a
    jr z, jr_000_0e4f

    ld hl, $9c00
    xor a

jr_000_0e4f:
    ld bc, $0400

jr_000_0e52:
    ld [hl+], a
    dec c
    jr nz, jr_000_0e52

    dec b
    jr nz, jr_000_0e52

    ret


Call_000_0e5a:
    ld hl, $c200
    ld b, $28
    ld a, $a0

jr_000_0e61:
    ld [hl+], a
    inc l
    inc l
    inc l
    dec b
    jr nz, jr_000_0e61

    ret


    ret


    xor a
    ldh [rNR10], a
    ldh [rNR13], a
    dec a
    ldh [rNR50], a
    ld a, $a0
    ldh [rNR11], a
    ld a, $f1
    ldh [rNR12], a
    ld a, $87
    ldh [rNR14], a
    ld a, $11
    ldh [rNR51], a
    ld a, $81
    ldh [rNR52], a
    ret


    ei
    push af
    push bc
    push de
    push hl
    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_000_0e98

    ld a, $01
    ld [$c3a4], a

jr_000_0e98:
    ldh a, [rSB]
    ld c, a
    cp $ff
    jr nz, jr_000_0eaf

    ld a, [$c3af]
    inc a
    ld [$c3af], a
    cp $f0
    jp z, Jump_000_0070

    ld c, $00
    jr jr_000_0eb3

jr_000_0eaf:
    xor a
    ld [$c3af], a

jr_000_0eb3:
    ld a, c
    ld [$c3b0], a
    cp $ff
    jp z, Jump_000_0070

    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rla
    jr nc, jr_000_0ed0

jr_000_0ec4:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_0ec4

Jump_000_0eca:
jr_000_0eca:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0eca

jr_000_0ed0:
    pop af
    reti


Call_000_0ed2:
    add a
    add $e7
    ld l, a
    ld a, $0e
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c001], a
    ld a, [hl]
    ld [$c002], a
    xor a
    ldh [rIF], a
    ret


    push af
    ld c, $82
    rrca
    ld de, $9a10
    db $10
    jp nc, $df05

    rlca
    or l
    ld b, d
    push af
    push bc
    push de
    push hl
    di
    ld a, [$c3ae]
    or a
    jr z, jr_000_0f15

Jump_000_0f00:
    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_000_0f15

    ld a, [$c3af]
    inc a
    ld [$c3af], a
    cp $f0
    jp z, Jump_000_0070

    jr jr_000_0f1a

jr_000_0f15:
    ld a, $01
    ld [$c3a4], a

jr_000_0f1a:
    ld a, [$c3a7]
    ldh [rSCX], a
    ld a, [$c3aa]
    ldh [rSCY], a
    call Call_000_0b3a
    ld hl, $c3a5
    inc [hl]
    ld hl, $c395
    inc [hl]
    ld b, $06
    ld hl, $4a72
    call Call_000_09de
    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rla
    jr nc, jr_000_0f4b

jr_000_0f3f:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_0f3f

jr_000_0f45:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0f45

jr_000_0f4b:
    pop af
    reti


Call_000_0f4d:
    add a
    add $63
    ld l, a
    ld a, $0f
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c004], a
    ld a, [hl]
    ld [$c005], a
    xor a
    ldh [rIF], a
    ret


    reti


    ld h, d
    rrca
    sbc b
    dec b
    and l
    rlca

Call_000_0f69:
    add a
    add $7e
    ld l, a
    ld a, $0f
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c007], a
    ld a, [hl]
    ld [$c008], a
    xor a
    ldh [rIF], a
    ret


    add a
    ld c, $96
    inc e
    di
    push af
    push bc
    push de
    push hl
    ld a, [$c3ae]
    or a
    jr z, jr_000_0fa2

    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_000_0fa2

    ld a, [$c3af]
    inc a
    ld [$c3af], a
    cp $f0
    jp z, Jump_000_0070

    jr jr_000_0fa7

jr_000_0fa2:
    ld a, $01
    ld [$c3a4], a

jr_000_0fa7:
    ld a, [$c3a7]
    ldh [rSCX], a
    ld a, [$c3aa]
    ldh [rSCY], a
    call Call_000_0b3a
    call Call_000_0fdd
    ld hl, $c3a5
    inc [hl]
    ld hl, $c395
    inc [hl]
    ld b, $06
    ld hl, $4a72
    call Call_000_09de
    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rla
    jr nc, jr_000_0fdb

jr_000_0fcf:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_0fcf

jr_000_0fd5:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0fd5

jr_000_0fdb:
    pop af
    reti


Call_000_0fdd:
    ld a, [$c300]
    or a
    call z, $ff80
    xor a
    ld [$c300], a
    ld a, [$c689]
    or a
    jr nz, jr_000_0ff4

    ld a, $07
    ld [$9a12], a
    ret


jr_000_0ff4:
    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a
    ld a, [$c3a5]
    and $07
    ret nz

    ld a, [$c68a]
    add $29
    ld [$9a12], a
    sub $29
    inc a
    and $07
    ld [$c68a], a
    ret


    push af
    push bc
    push de
    push hl
    di
    ld a, [$c3ae]
    or a
    jr z, jr_000_1031

    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_000_1031

    ld a, [$c3af]
    inc a
    ld [$c3af], a
    cp $f0
    jp z, Jump_000_0070

    jr jr_000_1036

jr_000_1031:
    ld a, $01
    ld [$c3a4], a

jr_000_1036:
    ld a, [$c3a7]
    ldh [rSCX], a
    ld a, [$c3aa]
    ldh [rSCY], a
    call Call_000_0b3a
    call Call_000_106c
    ld hl, $c3a5
    inc [hl]
    ld hl, $c395
    inc [hl]
    ld b, $06
    ld hl, $4a72
    call Call_000_09de
    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rla
    jr nc, jr_000_106a

jr_000_105e:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_105e

jr_000_1064:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1064

jr_000_106a:
    pop af
    reti


Call_000_106c:
    ld a, [$c300]
    or a
    call z, $ff80
    xor a
    ld [$c300], a
    ld a, [$c5e1]
    or a
    jr nz, jr_000_1083

    ld a, $07
    ld [$9a12], a
    ret


jr_000_1083:
    ld a, [$c3a5]
    and $07
    ret nz

    ld a, [$c5e2]
    add $33
    ld [$9a12], a
    sub $33
    inc a
    and $07
    ld [$c5e2], a
    ret


    push af
    push bc
    push de
    push hl
    di
    ld a, [$c3ae]
    or a
    jr z, jr_000_10ba

    ld a, [$c3ad]
    bit 0, a
    jr nz, jr_000_10ba

    ld a, [$c3af]
    inc a
    ld [$c3af], a
    cp $f0
    jp z, Jump_000_0070

    jr jr_000_10bf

jr_000_10ba:
    ld a, $01
    ld [$c3a4], a

jr_000_10bf:
    ld a, [$c3a7]
    ldh [rSCX], a
    ld a, [$c3aa]
    ldh [rSCY], a
    call Call_000_0b3a
    call Call_000_10f5
    ld hl, $c3a5
    inc [hl]
    ld hl, $c395
    inc [hl]
    ld b, $06
    ld hl, $4a72
    call Call_000_09de
    pop hl
    pop de
    pop bc
    ldh a, [rLCDC]
    rla
    jr nc, jr_000_10f3

jr_000_10e7:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_10e7

jr_000_10ed:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_10ed

jr_000_10f3:
    pop af
    reti


Call_000_10f5:
    ld a, [$c300]
    or a
    call z, $ff80
    xor a
    ld [$c300], a
    ld a, [$c71d]
    or a
    jr nz, jr_000_110d

    ld a, $07
    ld [$c9ee], a
    jr jr_000_1133

jr_000_110d:
    ld a, [$c3a5]
    and $07
    jr nz, jr_000_1124

    ld a, [$c71e]
    add $56
    ld [$c9ee], a
    sub $56
    inc a
    and $07
    ld [$c71e], a

jr_000_1124:
    ld a, [$c7db]
    cp $01
    jr nz, jr_000_1133

    rst $08
    ld a, [$c9ee]
    ld [$9a12], a
    ret


jr_000_1133:
    ld a, [$c7db]
    or a
    ret z

    add a
    add a
    add $8c
    ld l, a
    adc $11
    sub l
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    di
    ld b, $02
    ld c, $41
    ld a, $14

jr_000_114f:
    push af

jr_000_1150:
    ld a, [c]
    and b
    jr z, jr_000_1150

jr_000_1154:
    ld a, [c]
    and b
    jr nz, jr_000_1154

    ld a, [hl+]
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_000_114f

    ld bc, $000c
    add hl, bc
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    ld b, $02
    ld c, $41
    ld a, $14

jr_000_116f:
    push af

jr_000_1170:
    ld a, [c]
    and b
    jr z, jr_000_1170

jr_000_1174:
    ld a, [c]
    and b
    jr nz, jr_000_1174

    ld a, [hl+]
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_000_116f

    ei
    ld a, [$c7db]
    inc a
    ld [$c7db], a
    cp $0a
    ret nz

    ld a, $01
    ld [$c7db], a
    ret


    nop
    sbc b
    call c, $40c7
    sbc b
    inc e
    ret z

    add b
    sbc b
    ld e, h
    ret z

    ret nz

    sbc b
    sbc h
    ret z

    nop
    sbc c
    call c, $40c8
    sbc c
    inc e
    ret


    add b
    sbc c
    ld e, h
    ret


    ret nz

    sbc c
    sbc h
    ret


    nop
    sbc d
    call c, $afc9
    ld [$c309], a
    ld [$c30e], a
    ld [$c30f], a
    ld a, [hl+]
    ld [$c305], a
    ld e, a
    ld a, [hl+]
    ld [$c306], a
    ld d, a
    ld a, [hl+]
    ld [$c307], a
    ld a, [hl+]
    ld [$c308], a
    ld c, l
    ld b, h

jr_000_11d2:
    call Call_000_126f
    jr c, jr_000_11fa

    ld a, [$c30a]
    ld l, a
    ld a, [$c309]
    xor $07
    ld h, a
    inc h
    xor a
    ld [$c309], a

jr_000_11e6:
    call Call_000_126f
    rla
    dec h
    jr nz, jr_000_11e6

    or l
    ld [de], a
    inc de
    ld hl, $c30e
    inc [hl]
    jr nz, jr_000_120d

    inc hl
    inc [hl]
    jr jr_000_120d

jr_000_11fa:
    call Call_000_123b
    ld a, $01

jr_000_11ff:
    call Call_000_126f
    jr c, jr_000_120a

    call Call_000_126f
    rla
    jr jr_000_11ff

jr_000_120a:
    call Call_000_121f

jr_000_120d:
    ld hl, $c30f
    ld a, [$c308]
    cp [hl]
    jr nz, jr_000_11d2

    dec hl
    ld a, [$c307]
    cp [hl]
    ret z

    jr nc, jr_000_11d2

    ret


Call_000_121f:
    push bc
    add $02
    ld b, a
    ld hl, $c30e
    add [hl]
    ld [hl+], a
    jr nc, jr_000_122b

    inc [hl]

jr_000_122b:
    ld a, [$c30b]
    ld l, a
    ld a, [$c30c]
    ld h, a

jr_000_1233:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1233

    pop bc
    ret


Call_000_123b:
    push de
    ld hl, $128f
    ld a, [$c30f]
    ld e, $08
    or a
    jr nz, jr_000_124b

    ld e, a
    ld a, [$c30e]

jr_000_124b:
    add l
    ld l, a
    jr nc, jr_000_1250

    inc h

jr_000_1250:
    ld a, [hl]
    add e
    ld e, a
    xor a
    ld d, a

jr_000_1255:
    call Call_000_126f
    rla
    rl d
    dec e
    jr nz, jr_000_1255

    ld e, a
    ld a, [$c305]
    add e
    ld [$c30b], a
    ld a, [$c306]
    adc d
    ld [$c30c], a
    pop de
    ret


Call_000_126f:
    ld [$c30d], a
    ld a, [$c309]
    sub $01
    jr nc, jr_000_1280

    ld a, [bc]
    inc bc
    ld [$c30a], a
    ld a, $07

jr_000_1280:
    ld [$c309], a
    ld a, [$c30a]
    sla a
    ld [$c30a], a
    ld a, [$c30d]
    ret


    nop
    ld bc, $0202
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
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
    rlca
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2a08], sp
    ld c, a

jr_000_1391:
    ld a, [hl+]
    cp c
    jr z, jr_000_1399

    ld [de], a
    inc de
    jr jr_000_1391

jr_000_1399:
    ld a, [hl+]
    or a
    ret z

    ld b, a
    ld a, [hl+]

jr_000_139e:
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_139e

    jr jr_000_1391

Call_000_13a5:
    ld a, [hl+]
    ld c, a

jr_000_13a7:
    ld a, [hl+]
    cp c
    jr z, jr_000_13af

    ld [de], a
    inc de
    jr jr_000_13a7

jr_000_13af:
    ld a, [hl+]
    or a
    ret z

    ld b, a
    ld a, [hl+]
    bit 7, b
    jr nz, jr_000_13bf

jr_000_13b8:
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_13b8

    jr jr_000_13a7

jr_000_13bf:
    res 7, b

jr_000_13c1:
    ld [de], a
    inc a
    inc de
    dec b
    jr nz, jr_000_13c1

    jr jr_000_13a7

Call_000_13c9:
Jump_000_13c9:
    ldh [$8f], a
    ld a, d
    and $f0
    ldh [$90], a
    ld a, b
    add $08
    ldh [$8c], a
    ldh [$8d], a
    cp $e8
    jr nc, jr_000_13e2

    cp $a8
    jr c, jr_000_13e2

jr_000_13df:
    ld a, $01
    ret


jr_000_13e2:
    ld a, c
    add $10
    ldh [$8e], a
    cp $d0
    jr nc, jr_000_13ef

    cp $a0
    jr nc, jr_000_13df

jr_000_13ef:
    ld a, [$c301]
    cp $a0
    jp z, Jump_000_147d

    ldh a, [$8f]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$c303]
    add l
    ld l, a
    ld a, [$c304]
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld b, $02
    ld c, $02
    ldh a, [$90]
    and $40
    jr z, jr_000_141f

    ld a, c
    add a
    add a
    add a
    sub $08
    ld hl, $ff8e
    add [hl]
    ld [hl], a

jr_000_141f:
    ldh a, [$90]
    and $20
    jr z, jr_000_1431

    ld a, b
    add a
    add a
    add a
    sub $08
    ld hl, $ff8c
    add [hl]
    ld [hl+], a
    ld [hl], a

jr_000_1431:
    ld h, $c1
    ld a, [$c301]
    ld l, a

jr_000_1437:
    push bc
    ld c, $08

jr_000_143a:
    ld a, [de]
    cp c
    jr z, jr_000_1451

    ldh a, [$8e]
    ld [hl+], a
    ldh a, [$8c]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ldh a, [$90]
    ld [hl+], a
    ld a, l
    cp $a0
    jr nz, jr_000_1451

    pop bc
    jr jr_000_1479

jr_000_1451:
    inc de
    ldh a, [$90]
    and $20
    ldh a, [$8c]
    jr nz, jr_000_145c

    add $10

jr_000_145c:
    sub $08
    ldh [$8c], a
    dec b
    jr nz, jr_000_143a

    ldh a, [$8d]
    ldh [$8c], a
    ldh a, [$90]
    and $40
    ldh a, [$8e]
    jr nz, jr_000_1471

    add $10

jr_000_1471:
    sub $08
    ldh [$8e], a
    pop bc
    dec c
    jr nz, jr_000_1437

jr_000_1479:
    ld a, l
    ld [$c301], a

Jump_000_147d:
    xor a
    ret


Call_000_147f:
Jump_000_147f:
    ld a, $01
    ld [$c300], a
    ld a, [$c301]
    cp $a0
    jr z, jr_000_1498

    ld b, $04
    ld c, $00
    ld h, $c1

jr_000_1491:
    ld l, a
    ld [hl], c
    add b
    cp $a0
    jr c, jr_000_1491

jr_000_1498:
    xor a
    ld [$c301], a
    ld bc, $28a0
    ld de, $c100
    ld h, $c2
    ld a, [$c302]

jr_000_14a7:
    ld l, a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, l
    add $08
    cp c
    jr c, jr_000_14bb

    sub c

jr_000_14bb:
    dec b
    jr nz, jr_000_14a7

    add $1c
    cp c
    jr c, jr_000_14c4

    sub c

jr_000_14c4:
    ld [$c302], a
    ld a, [$c300]
    or a
    call z, $ff80
    xor a
    ld [$c300], a
    ret


Call_000_14d3:
    xor a
    ld hl, $c500
    ld b, $10

jr_000_14d9:
    ld [hl+], a
    dec b
    jr nz, jr_000_14d9

    ld b, $4e
    ld de, $c615

jr_000_14e2:
    ld a, [de]
    cp $ff
    jr z, jr_000_14ee

    and $87
    jr z, jr_000_14ee

    rlca
    ld l, a
    inc [hl]

jr_000_14ee:
    inc de
    dec b
    jr nz, jr_000_14e2

    ret


Call_000_14f3:
    ld hl, $c502
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld d, $05

jr_000_14fc:
    ld a, [hl+]
    add b
    ld b, a
    ld a, [hl+]
    add c
    ld c, a
    dec d
    jr nz, jr_000_14fc

    ldh [$e9], a
    ld a, b
    ldh [$ea], a
    ret


Call_000_150b:
    xor a
    ld [$c876], a
    ldh [$f3], a
    call Call_000_1b6f
    ld a, $e0
    ldh [rOBP0], a
    ld a, $08
    ld [$c875], a
    ld a, $04
    ld [$c873], a
    ld [$c874], a
    ld a, $23
    ld [$c872], a

Call_000_152a:
    ld a, [$c871]
    and a
    jr nz, jr_000_1532

    ld a, $0c

jr_000_1532:
    ld c, a
    ld b, $06
    ld hl, $0012

jr_000_1538:
    push bc
    push hl
    ld a, c
    call $4820
    pop hl
    ld de, $0040
    add hl, de
    pop bc
    inc c
    dec b
    jr nz, jr_000_1538

    ld hl, $0192
    ld a, $20
    call $4820
    ld hl, $01d2
    ld a, $21
    call $4820
    ld hl, $1567
    ld de, $c280
    ld b, $0c

jr_000_1560:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_1560

    ret


    sub h
    and c
    rst $08
    nop
    sub h
    sbc d
    reti


    nop
    sub h
    sub e
    ret nc

    nop

Jump_000_1573:
    call Call_000_1863
    jp nz, Jump_000_16d0

    call Call_000_1a8b
    ld bc, $fff7
    ld de, $1624
    call Call_000_298b
    call Call_000_15d1
    ld bc, $fff7
    ld de, $15d8
    call Call_000_298b
    call $4ff1
    jp nz, Jump_000_1633

    call Call_000_15d1
    ld c, $cb
    ld hl, $9812
    ld b, $12
    ld de, $001f

jr_000_15a4:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_15a4

jr_000_15aa:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_15aa

    ld [hl], c
    inc l
    ld [hl], c
    add hl, de
    dec b
    jr nz, jr_000_15aa

    call $4b23
    ld a, [$c876]
    and a
    jp z, $4858

    call Call_000_1853
    ld a, $ff
    ldh [$c8], a
    ld [$c877], a
    call Call_000_27a4
    jp $414a


Call_000_15d1:
    ldh a, [$bf]
    xor $80
    ldh [$bf], a
    ret


    call $4ff1
    ret z

    call Call_000_15d1

jr_000_15df:
    ld de, $15e4
    jr jr_000_162c

    ld e, $e2
    nop
    inc c
    ld [bc], a
    ld b, e
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, h
    jr nz, jr_000_1644

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    rra
    inc h
    ld bc, $4843
    ld b, l
    ld b, e
    ld c, e
    ld c, l
    ld b, c
    ld d, h
    ld b, l
    ld b, h
    nop
    ld e, $e2
    nop
    inc c
    ld [bc], a
    ld b, e
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, h
    jr nz, jr_000_1663

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    rra
    inc hl
    ld bc, $4e49
    jr nz, jr_000_166e

    ld d, h
    ld b, c
    ld c, h
    ld b, l
    ld c, l
    ld b, c
    ld d, h
    ld b, l
    nop
    call $4ff1
    jr nz, jr_000_15df

    ld de, $1603

jr_000_162c:
    call Call_000_1905
    pop af
    jp Jump_000_16d0


Jump_000_1633:
    call Call_000_15d1
    ld de, $163b
    jr jr_000_162c

    ld e, $e2
    nop
    inc c
    ld [bc], a
    ld b, e
    ld b, c
    ld c, [hl]
    ld c, [hl]

jr_000_1644:
    ld c, a
    ld d, h
    jr nz, jr_000_169b

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    rra
    inc h
    ld bc, $4957
    ld d, h
    ld c, b
    jr nz, jr_000_1698

    ld c, b
    ld b, l
    ld b, e
    ld c, e
    nop

Call_000_165a:
    ld a, $23
    ld [$c7f7], a
    ld a, $04
    ld c, $00

jr_000_1663:
    call $445b
    jp Jump_000_1b6f


    inc d
    ld c, h
    ld bc, $1670

jr_000_166e:
    sub e
    ld d, $1e
    pop hl
    nop
    ld c, $03
    jr nz, @+$22

    jr nz, jr_000_16bc

    ld c, h
    ld b, l
    ld b, c
    ld d, d
    jr nz, @+$44

    ld c, a
    ld b, c
    ld d, d
    ld b, h
    rra
    ld b, h
    ld bc, $4f4e
    ld d, d
    ld c, l
    ld b, c
    ld c, h
    jr nz, @+$55

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    nop
    xor e
    ld d, $97
    ld d, $af

jr_000_1698:
    ld [$c876], a

jr_000_169b:
    ldh [$bf], a
    ldh [$c8], a
    inc a
    ldh [$c3], a
    call $4e09
    call Call_000_27a4
    jp $4dc7


    ld a, $80
    ld [$c876], a
    jp $4e06


Call_000_16b3:
    ld d, a
    and $7f
    cp $07
    ld a, d
    jp nc, $4b4f

jr_000_16bc:
    dec a
    bit 7, a
    jp nz, $4b4f

    add $18
    jp $4b4f


    call Call_000_150b
    call Call_000_16d0
    jp $414a


Call_000_16d0:
Jump_000_16d0:
jr_000_16d0:
    ld a, [$c872]
    cp $22
    jr z, jr_000_16dd

    and $07
    cp $07
    jr c, jr_000_16e2

jr_000_16dd:
    ld a, $23
    ld [$c872], a

jr_000_16e2:
    ld a, [$c875]
    ld c, $10
    swap a
    add c
    ld c, a
    ld b, $8c
    ld a, [$c872]
    call Call_000_16b3
    call $43fc
    bit 2, a
    jr z, jr_000_16ff

    call Call_000_165a
    jr jr_000_16d0

jr_000_16ff:
    ld b, a
    and $28
    jr nz, jr_000_176e

    ld a, b
    and $03
    jr z, jr_000_1750

    ld a, [$c875]
    cp $06
    jr nc, jr_000_1723

    inc a
    ld hl, $c871
    xor [hl]
    ld hl, $c872
    cp [hl]
    jr z, jr_000_1727

    ld [$c872], a
    xor a
    ldh [$f3], a
    jr jr_000_16d0

jr_000_1723:
    cp $07
    jr nz, jr_000_1736

jr_000_1727:
    ld a, $23
    ld [$c872], a
    ldh a, [$f3]
    and a
    jr z, jr_000_16d0

    ld [$c876], a
    jr jr_000_16d0

jr_000_1736:
    cp $08
    jp z, Jump_000_1573

    ld a, [$c871]
    xor $80
    ld [$c871], a
    ld a, [$c872]
    xor $80
    ld [$c872], a
    call Call_000_152a
    jr jr_000_16d0

jr_000_1750:
    ld hl, $c875
    ld a, [hl]
    bit 7, b
    jr z, jr_000_1761

    cp $08
    jp z, Jump_000_16d0

    inc [hl]
    jp Jump_000_16d0


jr_000_1761:
    bit 6, b
    jp z, Jump_000_16d0

    and a
    jp z, Jump_000_16d0

    dec [hl]
    jp Jump_000_16d0


jr_000_176e:
    ld a, [$c872]
    cp $23
    jr nz, jr_000_177a

    ld a, $22
    ld [$c872], a

jr_000_177a:
    ld a, [$c873]
    ld b, a
    ld a, [$c874]
    ld c, a

jr_000_1782:
    ld a, [$c872]
    ld e, a
    jp Jump_000_1825


Jump_000_1789:
    ld e, a
    call $43fc
    ld hl, $c3ba
    ld [hl], $87
    bit 3, a
    jp nz, Jump_000_16d0

    bit 2, a
    jr z, jr_000_17a1

    call Call_000_165a
    jp Jump_000_1825


jr_000_17a1:
    bit 1, a
    jr nz, jr_000_17cd

    bit 0, a
    jr z, jr_000_1807

    ld a, e
    ld a, [$c872]
    and $7f
    cp $07
    jr nc, jr_000_17e7

    call $4af9
    ld a, [$c872]
    ld [hl], a
    ld [$c876], a
    ldh a, [$f3]
    and a
    jr z, jr_000_1802

    ld l, a
    xor a

Call_000_17c4:
    ldh [$f3], a
    ld a, $22
    ld [$c872], a
    jr jr_000_1802

jr_000_17cd:
    ld a, e
    and $7f
    cp $06
    jr nc, jr_000_1825

    ldh a, [$f3]
    and a
    jr z, jr_000_1825

    ld l, a
    ld h, $c6
    ld [hl], d
    push bc
    call Call_000_1b6f
    xor a
    ldh [$f3], a
    pop bc
    jr jr_000_1782

jr_000_17e7:
    call $4af9
    ld a, [hl]
    and $87
    ld d, a
    and a
    jr z, jr_000_1807

    ld [$c872], a
    ld [hl], $00
    ld a, l
    ldh [$f3], a
    ld a, d
    bit 7, a
    jr nz, jr_000_1802

    and $7f
    add $18

jr_000_1802:
    call Call_000_1b6f
    jr jr_000_1825

jr_000_1807:
    bit 6, a
    jr z, jr_000_1810

    set 3, c
    dec c
    res 3, c

jr_000_1810:
    bit 7, a
    jr z, jr_000_1817

    inc c
    res 3, c

jr_000_1817:
    bit 5, a
    jr z, jr_000_1820

    ld a, b
    and a
    jr z, jr_000_1825

    dec b

jr_000_1820:
    bit 4, a
    jr z, jr_000_1825

    inc b

Jump_000_1825:
jr_000_1825:
    ld a, b
    cp $08
    jp nc, Jump_000_16d0

    push bc
    ld a, b
    ld [$c873], a
    swap a
    add $12
    ld b, a
    ld a, c
    ld [$c874], a
    and $07
    swap a
    add $1a
    ld c, a
    ld a, e
    and $7f
    cp $07
    jr nc, jr_000_1849

    inc b
    inc b

jr_000_1849:
    ld a, [$c872]
    call Call_000_16b3
    pop bc
    jp Jump_000_1789


Call_000_1853:
    ld hl, $c629
    ld b, $26

jr_000_1858:
    ld a, [hl]
    and a
    jr z, jr_000_185e

    set 3, [hl]

jr_000_185e:
    inc l
    dec b
    jr nz, jr_000_1858

    ret


Call_000_1863:
    call $5cb0
    ldh a, [$da]
    ld d, a
    ldh a, [$db]
    ld e, a
    ld a, d
    inc a
    sub e
    jr nc, jr_000_1873

    add $0a

jr_000_1873:
    cp $03
    jr c, jr_000_1879

    sub $0a

jr_000_1879:
    ld de, $1977
    cp $03
    jp c, Jump_000_1905

    call Call_000_14d3
    ld de, $1919
    ld a, [$c50c]
    cp $01
    jr z, jr_000_1896

    jp c, Jump_000_1905

    ld de, $193f
    jr jr_000_1905

jr_000_1896:
    ld de, $192c
    ld a, [$c50d]
    cp $01
    jr z, jr_000_18a8

    jr c, jr_000_1905

    ld de, $195b
    jp Jump_000_1905


jr_000_18a8:
    ld hl, $c502
    ld de, $19ee
    ld a, [hl+]
    cp $09
    jr nc, jr_000_1905

    ld de, $19d0
    ld a, [hl+]
    cp $09
    jr nc, jr_000_1905

    call Call_000_14f3
    ld de, $19b1
    cp $11
    jr nc, jr_000_1905

    ld de, $1992
    ld a, c
    cp $11
    jr nc, jr_000_1905

    ldh a, [$ea]
    cp $02
    jr nc, jr_000_18df

    ldh a, [$e9]
    cp $02
    jr nc, jr_000_18df

    ld de, $1a50
    jp Jump_000_1905


jr_000_18df:
    ld de, $1a0c
    ld hl, $c615
    ld b, $08

jr_000_18e7:
    ld a, [hl+]
    and $07
    cp $01
    jr z, jr_000_1905

    dec b
    jr nz, jr_000_18e7

    ld de, $1a2e
    ld hl, $c65b
    ld b, $08

jr_000_18f9:
    ld a, [hl+]
    and $07
    cp $01
    jr z, jr_000_1905

    dec b
    jr nz, jr_000_18f9

    xor a
    ret


Call_000_1905:
Jump_000_1905:
jr_000_1905:
    call Call_000_1c19
    ld a, $84
    ld [$c3ba], a
    call $43fc
    call Call_000_1b6f
    xor a
    ld [$c3ba], a
    dec a
    ret


    ld e, $c1
    ld bc, $010e
    ld c, [hl]
    ld c, a
    jr nz, jr_000_1979

    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_000_1973

    ld c, c
    ld c, [hl]
    ld b, a
    nop
    ld e, $21
    nop
    ld c, $01
    ld c, [hl]
    ld c, a
    jr nz, jr_000_1977

    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_000_1986

    ld c, c
    ld c, [hl]
    ld b, a
    nop
    ld e, $a2
    ld bc, $020c
    ld d, h
    ld c, a
    ld c, a
    jr nz, jr_000_1996

    ld b, c
    ld c, [hl]
    ld e, c
    rra
    db $e3
    ld bc, $4857
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_000_19a1

    ld c, c
    ld c, [hl]
    ld b, a
    ld d, e
    nop
    ld e, $22
    nop
    inc c
    ld [bc], a
    ld d, h
    ld c, a
    ld c, a
    jr nz, @+$4f

    ld b, c
    ld c, [hl]
    ld e, c
    rra
    ld h, e
    nop
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_000_19bd

    ld c, c

jr_000_1973:
    ld c, [hl]
    ld b, a
    ld d, e
    nop

jr_000_1977:
    ld e, $e3

jr_000_1979:
    nop
    add hl, bc
    ld [bc], a
    ld c, e
    ld c, c
    ld c, [hl]
    ld b, a
    ld d, e
    jr nz, jr_000_19c4

    ld d, d
    ld b, l
    rra

jr_000_1986:
    inc h
    ld bc, $4f54
    ld c, a
    jr nz, jr_000_19d0

    ld c, h
    ld c, a
    ld d, e
    ld b, l
    nop
    ld e, $42
    nop
    inc c

jr_000_1996:
    ld [bc], a
    jr nz, jr_000_19b9

    ld d, h
    ld c, a
    ld c, a
    jr nz, jr_000_19eb

    ld b, c
    ld c, [hl]
    ld e, c

jr_000_19a1:
    rra
    add e
    nop
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_000_19fb

    ld c, c
    ld b, l
    ld b, e
    ld b, l
    ld d, e
    nop
    ld e, $82
    ld bc, $020c
    jr nz, jr_000_19d8

    ld d, h

jr_000_19b9:
    ld c, a
    ld c, a
    jr nz, jr_000_1a0a

jr_000_19bd:
    ld b, c
    ld c, [hl]
    ld e, c
    rra
    jp $5701


jr_000_19c4:
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_000_1a1a

    ld c, c
    ld b, l
    ld b, e
    ld b, l
    ld d, e
    nop

jr_000_19d0:
    ld e, $42
    nop
    inc c
    ld [bc], a
    jr nz, jr_000_19f7

    ld d, h

jr_000_19d8:
    ld c, a
    ld c, a
    jr nz, jr_000_1a29

    ld b, c
    ld c, [hl]
    ld e, c
    rra
    add e
    nop
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_000_1a39

    ld b, c
    ld d, a

jr_000_19eb:
    ld c, [hl]
    ld d, e
    nop
    ld e, $82
    ld bc, $020c
    jr nz, jr_000_1a15

    ld d, h
    ld c, a

jr_000_19f7:
    ld c, a
    jr nz, @+$4f

    ld b, c

jr_000_19fb:
    ld c, [hl]
    ld e, c
    rra
    jp $5701


    ld c, b
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_000_1a57

    ld b, c
    ld d, a
    ld c, [hl]

jr_000_1a0a:
    ld d, e
    nop
    ld e, $61
    ld bc, $020e
    ld b, e
    ld b, c
    ld c, [hl]
    ld c, [hl]

jr_000_1a15:
    ld c, a
    ld d, h
    jr nz, jr_000_1a61

    ld b, c

jr_000_1a1a:
    ld d, [hl]
    ld b, l
    rra
    and d
    ld bc, $4150
    ld d, a
    ld c, [hl]
    ld d, e
    jr nz, jr_000_1a75

    ld c, [hl]
    jr nz, jr_000_1a7b

jr_000_1a29:
    ld c, a
    ld d, a
    jr nz, jr_000_1a5e

    nop
    ld e, $61
    nop
    ld c, $02
    ld b, e
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, h

jr_000_1a39:
    jr nz, jr_000_1a83

    ld b, c
    ld d, [hl]
    ld b, l
    rra
    and d
    nop
    ld d, b
    ld b, c
    ld d, a
    ld c, [hl]
    ld d, e
    jr nz, jr_000_1a97

    ld c, [hl]
    jr nz, jr_000_1a9d

    ld c, a
    ld d, a
    jr nz, jr_000_1a87

    nop
    ld e, $e2
    nop
    inc c
    ld [bc], a
    ld c, c
    ld c, [hl]

jr_000_1a57:
    ld d, e
    ld d, l
    ld b, [hl]
    ld b, [hl]
    ld c, c
    ld b, e
    ld c, c

jr_000_1a5e:
    ld b, l
    ld c, [hl]
    ld d, h

jr_000_1a61:
    rra
    dec h
    ld bc, $414d
    ld d, h
    ld b, l
    ld d, d
    ld c, c
    ld b, c
    ld c, h
    nop
    ld e, $01
    ld bc, $010e
    nop
    ld d, a
    ld c, b

jr_000_1a75:
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_000_1ac7

    ld c, a

jr_000_1a7b:
    ld d, [hl]
    ld b, l
    jr nz, jr_000_1a7f

jr_000_1a7f:
    ld b, d
    ld c, h
    ld b, c
    ld b, e

jr_000_1a83:
    ld c, e
    jr nz, @+$4f

    ld c, a

jr_000_1a87:
    ld d, [hl]
    ld b, l
    jr nz, jr_000_1a8b

Call_000_1a8b:
jr_000_1a8b:
    call $4e09
    call Call_000_27a4
    ld de, $1a6d
    call Call_000_1c23

jr_000_1a97:
    ldh a, [$bf]
    ld de, $1a7f
    and a

jr_000_1a9d:
    jr nz, jr_000_1aa2

    ld de, $1a73

jr_000_1aa2:
    ld hl, $9922
    call Call_000_1c23
    ldh a, [$c3]
    call Call_000_1b61

jr_000_1aad:
    call $4321
    ld a, [$c7c2]
    bit 3, a
    jr z, jr_000_1abb

    call $4858
    ret


jr_000_1abb:
    bit 6, a
    jr z, jr_000_1ad4

    ld a, $1e
    ldh [$f4], a
    ldh a, [$bf]
    xor $80

jr_000_1ac7:
    ldh [$bf], a
    jr nz, jr_000_1a97

    ldh a, [$c3]
    inc a
    jr z, jr_000_1a97

    ldh [$c3], a
    jr jr_000_1a97

jr_000_1ad4:
    bit 7, a
    jr z, jr_000_1aed

    ld a, $1e
    ldh [$f4], a
    ldh a, [$bf]
    xor $80
    ldh [$bf], a
    jr z, jr_000_1a97

    ldh a, [$c3]
    dec a
    jr z, jr_000_1a97

jr_000_1ae9:
    ldh [$c3], a
    jr jr_000_1a97

jr_000_1aed:
    ld a, [$c7c1]
    and $c0
    jr z, jr_000_1b0b

    ld hl, $fff4
    dec [hl]
    jr nz, jr_000_1aad

    ld [hl], $05
    add a
    ldh a, [$c3]
    jr c, jr_000_1b06

    inc a
    jr nz, jr_000_1ae9

    jr jr_000_1a97

jr_000_1b06:
    dec a
    jr nz, jr_000_1ae9

    jr jr_000_1a97

jr_000_1b0b:
    ld a, $1e
    ldh [$f4], a
    jr jr_000_1a97

Call_000_1b11:
    ld e, a
    xor a
    ld d, a
    ld hl, $1b33
    ld b, $07

jr_000_1b19:
    rr e
    jr nc, jr_000_1b22

    add [hl]
    daa
    jr nc, jr_000_1b22

    inc d

jr_000_1b22:
    inc hl
    dec b
    jr nz, jr_000_1b19

    rr e
    ld e, a
    ret nc

    add $28
    daa
    ld e, a
    ld a, d
    adc $01
    ld d, a
    ret


    ld bc, $0402
    ld [$3216], sp
    ld h, h

Call_000_1b3a:
    ld hl, $c7cd
    ld a, $20
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl-], a
    ld a, e
    and $0f
    add $30
    ld [hl-], a
    ld a, e
    and $f0
    jr nz, jr_000_1b55

    ld a, d
    and a
    ret z

    ld a, e
    and $f0

jr_000_1b55:
    swap a
    add $30
    ld [hl-], a
    ld a, d
    and a
    ret z

    add $30
    ld [hl-], a
    ret


Call_000_1b61:
    push hl
    call Call_000_1b11
    call Call_000_1b3a
    pop hl
    ld de, $c7cd
    jp Jump_000_1c23


Call_000_1b6f:
Jump_000_1b6f:
    push af
    push bc
    push de
    push hl
    call $4858
    ld de, $1b8f
    ldh a, [$fc]
    and a
    jr nz, jr_000_1b80

    ldh a, [$be]

jr_000_1b80:
    bit 7, a
    jr nz, jr_000_1b87

    ld de, $1ba0

jr_000_1b87:
    call Call_000_1c23
    pop hl
    pop de
    pop bc
    pop af
    ret


    rra
    ld bc, $4200
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    rra
    ld hl, $5702
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    nop
    rra
    ld hl, $4202
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    rra
    ld bc, $5700
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    nop

Call_000_1bb1:
    push hl
    ld hl, $c7cd
    ld a, $e6
    ld [hl+], a
    ld a, b
    and a
    jr z, jr_000_1bc3

    ld a, $ea
    ld d, b

jr_000_1bbf:
    ld [hl+], a
    dec d
    jr nz, jr_000_1bbf

jr_000_1bc3:
    ld a, $e7
    ld [hl+], a
    ld [hl], $00
    pop hl
    call Call_000_1c01
    ld a, c
    and a
    jr z, jr_000_1bec

jr_000_1bd0:
    push hl
    ld hl, $c7cd
    ld a, $eb
    ld [hl+], a
    ld a, b
    and a
    jr z, jr_000_1be2

    ld a, $cb
    ld d, b

jr_000_1bde:
    ld [hl+], a
    dec d
    jr nz, jr_000_1bde

jr_000_1be2:
    ld a, $ec
    ld [hl+], a
    pop hl
    call Call_000_1c01
    dec c
    jr nz, jr_000_1bd0

jr_000_1bec:
    push hl
    ld hl, $c7cd
    ld a, $e8
    ld [hl+], a
    ld a, b
    and a
    jr z, jr_000_1bfd

    ld a, $ed

jr_000_1bf9:
    ld [hl+], a
    dec b
    jr nz, jr_000_1bf9

jr_000_1bfd:
    ld a, $e9
    ld [hl+], a
    pop hl

Call_000_1c01:
    push hl
    ld de, $c7cd

jr_000_1c05:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1c05

    ld a, [de]
    and a
    jr z, jr_000_1c13

    ld [hl+], a
    inc de
    jr jr_000_1c05

jr_000_1c13:
    ld de, $0020
    pop hl
    add hl, de
    ret


Call_000_1c19:
    push hl
    push bc
    push af
    call Call_000_1c23
    pop af
    pop bc
    pop hl
    ret


Call_000_1c23:
Jump_000_1c23:
jr_000_1c23:
    ld a, [de]
    and a
    ret z

    inc de
    cp $21
    jr nc, jr_000_1c35

    cp $1f
    jr z, jr_000_1c4a

    cp $1e
    jr z, jr_000_1c5a

    ld a, $40

jr_000_1c35:
    cp $3a
    jr nc, jr_000_1c3b

    add $33

jr_000_1c3b:
    di
    ld b, a

jr_000_1c3d:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1c3d

    ld a, b
    add $8b
    ld [hl+], a
    ei
    jr jr_000_1c23

jr_000_1c4a:
    call Call_000_1c4f
    jr jr_000_1c23

Call_000_1c4f:
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld hl, $9800
    add hl, bc
    ret


jr_000_1c5a:
    call Call_000_1c4f
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    inc de
    push de
    push hl
    call Call_000_1bb1
    pop hl
    ld bc, $0021
    add hl, bc
    pop de
    jr jr_000_1c23

    xor a

Call_000_1c71:
    ld b, a

jr_000_1c72:
    di
    xor a
    ldh [rSC], a
    ld a, b
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ei
    ret


Call_000_1c7f:
    ld b, a

jr_000_1c80:
    ld a, $01
    ldh [rSC], a
    ld a, b
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ret


Call_000_1c8c:
    ld b, a
    ld a, [$c7c9]
    bit 7, a
    jr z, jr_000_1c72

    jr jr_000_1c80

    push af
    push hl
    ld a, [$c7c9]
    and a
    jr z, jr_000_1cd5

    ldh a, [rSB]
    ld [$c7f0], a
    ld a, [$c7c2]
    ld [$c7f2], a
    call $4279
    ld a, [$c7c2]
    ldh [rSB], a
    ld a, [$c7c9]
    dec a
    jr nz, jr_000_1cbb

    ld a, $80
    ldh [rSC], a

jr_000_1cbb:
    ld a, $ff
    ld [$c7cc], a

jr_000_1cc0:
    pop hl
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_000_1cd3

jr_000_1cc7:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_1cc7

jr_000_1ccd:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1ccd

jr_000_1cd3:
    pop af
    reti


jr_000_1cd5:
    ldh a, [rSB]
    cp $e1
    jr nz, jr_000_1ce4

    ld a, $01
    ld [$c7c9], a
    ld a, $e0
    ldh [rSB], a

jr_000_1ce4:
    ld a, $80
    ldh [rSC], a
    jr jr_000_1cc0

Call_000_1cea:
jr_000_1cea:
    ld a, [$c7cc]
    and a
    jr z, jr_000_1cea

    inc a
    ld [$c7cc], a
    ld a, [$c7f0]
    ret


Call_000_1cf8:
    ld a, [$c7c9]
    and a
    jr nz, jr_000_1d24

jr_000_1cfe:
    xor a
    ld [$c7cc], a
    dec a
    ld [$c7c9], a
    call $4321
    ld a, $e1
    call Call_000_1c7f
    call $4321
    xor a
    call Call_000_1c7f
    call $4321
    xor a
    ld [$c7cc], a
    ld a, [$c7f0]
    cp $e0
    ret z

    jr jr_000_1cfe

jr_000_1d24:
    xor a
    call Call_000_1c71
    xor a
    ld [$c7c9], a
    dec a
    ret


    call Call_000_1e06
    ld hl, $ffb2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$c3]
    cp $01
    jr nz, jr_000_1d55

    ldh a, [$be]
    and a
    jr nz, jr_000_1d47

    ldh a, [$bf]
    and a
    jr nz, jr_000_1d55

jr_000_1d47:
    ld hl, $1e67
    ld a, l
    ldh [$b2], a
    ld a, h
    ldh [$b3], a
    ldh a, [$be]
    and a
    jr z, jr_000_1d80

jr_000_1d55:
    ld a, [$c7bc]
    cp $01
    jr z, jr_000_1d80

    ld a, [hl]
    ld b, $01

jr_000_1d5f:
    srl a
    jr nc, jr_000_1d64

    inc b

jr_000_1d64:
    and a
    jr nz, jr_000_1d5f

    ldh a, [$e3]
    inc hl

jr_000_1d6a:
    cp [hl]
    jr z, jr_000_1d7a

    dec b
    jr z, jr_000_1d75

    call Call_000_1dfb
    jr jr_000_1d6a

jr_000_1d75:
    ld a, $80
    ldh [$c8], a
    ret


jr_000_1d7a:
    call Call_000_1de0
    jr nc, jr_000_1d80

    ret


jr_000_1d80:
    xor a
    ld [$c7bc], a
    ld a, [hl]
    or $80
    ld c, a
    inc hl
    ld e, l
    ld d, h
    ldh a, [$ef]
    rrca
    ldh [$ef], a
    ld b, a

jr_000_1d91:
    srl b
    jr c, jr_000_1da8

    ld a, c
    and a
    jr z, jr_000_1da2

    srl c
    jr nc, jr_000_1d91

    call Call_000_1dfb
    jr jr_000_1d91

jr_000_1da2:
    ld a, l
    ld l, e
    ld e, a
    ld a, h
    ld h, d
    ld d, a

jr_000_1da8:
    ld c, [hl]
    ld b, $00
    call Call_000_1de0
    ld a, c
    and a
    jr z, jr_000_1dbd

    ldh [$e1], a
    push bc
    ld b, c
    call Call_000_1e4a
    pop bc
    ldh a, [$e1]
    ld c, a

jr_000_1dbd:
    ld hl, $fff9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, c
    add a
    ld c, a
    add hl, bc
    add hl, bc
    push af
    ld a, l
    ldh [$aa], a
    ld a, h
    ldh [$ab], a
    xor a
    ld [$c6a2], a
    ld a, $80
    ld [$c6a3], a
    xor a
    ld [$d9ca], a
    pop af
    pop hl
    ret


Call_000_1de0:
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_000_1df7

    ld e, a
    inc hl
    ld d, [hl]
    push de
    push hl
    pop de
    pop hl
    push af
    ld a, l
    ldh [$b2], a
    ld a, h
    ldh [$b3], a
    pop af
    and a
    ret


jr_000_1df7:
    ldh [$c8], a
    scf
    ret


Call_000_1dfb:
    push af
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_000_1e03

    inc hl

jr_000_1e03:
    inc hl
    pop af
    ret


Call_000_1e06:
    ld hl, $fff7
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld d, l
    ld e, $05
    call $5cfa
    ld a, d
    and a
    jr z, jr_000_1e2a

    ldh [$e1], a
    ld b, a
    call Call_000_1e2d
    ldh a, [$e1]

jr_000_1e2a:
    ldh [$e3], a
    ret


Call_000_1e2d:
    ld hl, $fff7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0004
    add hl, de

jr_000_1e37:
    bit 6, [hl]
    call nz, Call_000_1e44
    ld de, $0005
    add hl, de
    dec b
    jr nz, jr_000_1e37

    ret


Call_000_1e44:
    ldh a, [$e1]
    dec a
    ldh [$e1], a
    ret


Call_000_1e4a:
    ld hl, $fff9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0004
    add hl, de

jr_000_1e54:
    bit 6, [hl]
    call nz, Call_000_1e61
    ld de, $0005
    add hl, de
    dec b
    jr nz, jr_000_1e54

    ret


Call_000_1e61:
    ldh a, [$e1]
    inc a
    ldh [$e1], a
    ret


    rrca
    dec c
    ld [hl], a
    ld e, $0b
    ld d, c
    rra
    add hl, bc
    sbc $1f
    ld [bc], a
    ld c, [hl]
    jr nz, jr_000_1e84

    add a
    jr nz, jr_000_1eb7

    add hl, bc
    adc l
    ld e, $05
    pop de
    ld e, $08
    inc b
    rra
    inc b
    dec e
    rra

jr_000_1e84:
    ld b, $42
    rra
    ld [de], a
    ld c, e
    rra
    rlca
    ld c, [hl]
    rra
    ld [$940d], sp
    ld e, $18
    jp z, $781e

    rrca
    and c
    ld e, $1a
    cp l
    ld e, $06
    rst $38
    add hl, bc
    rst $38
    rlca
    rst $38
    jr jr_000_1eaa

    xor e
    ld e, $06
    or l
    ld e, $01
    cp d

jr_000_1eaa:
    ld e, $38
    dec b
    and d
    jr nz, jr_000_1ebb

    rst $38
    jr @+$01

    dec de
    rst $38
    ld [bc], a
    add hl, de

jr_000_1eb7:
    rst $38
    inc e
    rst $38
    nop

jr_000_1ebb:
    inc e
    rst $38
    ld b, $11
    push bc
    ld e, $01
    rst $38
    rla
    rst $38
    ld bc, $ff01
    nop
    rst $38
    nop
    nop
    adc $1e
    nop
    ld c, $ff
    ld [$d80d], sp
    ld e, $01
    ld bc, $191f
    dec b
    push hl
    ld e, $10
    db $ec
    ld e, $07
    di
    ld e, $14
    ld a, [$001e]
    ld de, $1ee9
    nop
    nop
    rst $38
    nop
    ld de, $1ef0
    nop
    nop
    rst $38
    nop
    ld de, $1ef7
    nop
    nop
    rst $38
    nop
    dec de
    cp $1e
    nop
    ld [bc], a
    rst $38
    nop
    db $10
    rst $38
    nop
    ld d, $08

jr_000_1f07:
    rra
    nop
    ld [$1f0c], sp
    ld [bc], a
    ld bc, $1f13
    ld [bc], a
    jr jr_000_1f32

    ld [bc], a
    dec e
    rst $38
    rra
    rst $38
    ld [bc], a
    rra
    rst $38
    rlca
    rst $38
    ld [$2416], sp
    rra
    dec c
    dec sp
    rra
    nop
    ld b, $28
    rra
    ld a, [bc]
    ld bc, $1f32
    inc h
    dec [hl]
    rra
    dec h
    jr c, jr_000_1f51

jr_000_1f32:
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    db $10
    rst $38
    nop
    ld b, $3f
    rra
    nop
    ld bc, $00ff
    ld d, $46
    rra
    ld [bc], a
    add hl, de
    rst $38
    dec bc
    rst $38
    nop
    dec e
    rst $38
    nop
    dec e
    rst $38

jr_000_1f51:
    add hl, bc
    ld [de], a
    ld e, e
    rra
    rlca
    adc [hl]

jr_000_1f57:
    rra
    dec bc
    add $1f
    nop
    ld [de], a
    ld e, a
    rra
    ld bc, $660d
    rra
    rrca
    ld a, c
    rra
    ld [bc], a
    ld bc, $1f6d
    ld c, $74
    rra
    ld bc, $3b19
    ld hl, $b20d
    ld hl, $0808
    rst $38
    add hl, de
    rst $38
    jr jr_000_1f7c

    add e

jr_000_1f7c:
    rra
    jr jr_000_1f07

    rra
    ld c, $8b
    rra
    ld [bc], a
    inc d
    rst $38
    dec c
    rst $38
    nop
    dec c
    rst $38
    nop
    inc d
    rst $38
    inc c
    ld [de], a
    sbc b
    rra
    dec bc
    dec bc
    ld [hl+], a
    inc de
    ld [hl], h
    ld [hl+], a
    ld a, [bc]
    rlca
    and d
    rra
    dec b
    or d
    rra
    nop
    cp a
    rra
    ld [$a901], sp
    rra
    jr jr_000_1f57

    rra
    ld [bc], a
    rra
    or d
    ld hl, $ff07
    nop
    rra
    rst $38
    ld [$b90e], sp
    rra
    inc e
    cp h
    rra
    nop
    dec de
    rst $38
    nop
    nop
    rst $38
    nop
    ld c, $c3
    rra
    nop
    inc e
    rst $38
    ld b, $12
    ret nc

    rra
    inc d
    rst $10
    rra
    rla
    cp c
    ld [hl+], a
    ld bc, $de12
    ld [hl+], a
    add hl, bc
    and $22
    nop
    nop
    db $db
    rra
    nop
    ld bc, $1bff
    dec b
    xor $1f
    add hl, bc
    dec b
    jr nz, @+$0a

    ld l, $20
    inc b
    ld b, d
    jr nz, jr_000_1ffe

    ld c, c
    jr nz, @+$03

    ld bc, $1ff5
    dec b
    sub l
    jr nz, jr_000_1ff8

    rrca
    db $fc

jr_000_1ff8:
    rra
    inc de
    sub d
    jr nz, jr_000_2005

    db $10

jr_000_1ffe:
    ld [bc], a

Jump_000_1fff:
    jr nz, jr_000_2005

    rst $38
    nop
    rrca
    rst $38

jr_000_2005:
    nop
    ld bc, $2009
    inc bc
    db $10
    inc de
    jr nz, jr_000_2029

    inc e
    jr nz, jr_000_2018

    dec hl
    jr nz, jr_000_2015

    db $10

jr_000_2015:
    add hl, de
    jr nz, jr_000_201c

jr_000_2018:
    rst $38
    nop
    ld c, $ff

jr_000_201c:
    ld bc, $2310
    jr nz, @+$06

    jr z, jr_000_2043

    ld bc, $ff0e
    ld a, [bc]
    rst $38
    nop

jr_000_2029:
    inc de
    rst $38
    nop
    db $10
    rst $38
    ld bc, $3505
    jr nz, jr_000_203f

    rlca
    ld [hl+], a
    nop
    dec de
    add hl, sp
    jr nz, jr_000_203c

    ld c, $3f

jr_000_203c:
    jr nz, @+$0f

    rst $38

jr_000_203f:
    nop
    dec c
    rst $38
    nop

jr_000_2043:
    dec b
    ld b, [hl]
    jr nz, jr_000_2047

jr_000_2047:
    inc de
    rst $38
    ld bc, $ff05
    ld bc, $0aff
    rlca
    ld e, b
    jr nz, @+$07

    ld a, b
    jr nz, jr_000_2068

    add e
    jr nz, jr_000_205b

    dec c
    ld e, a

jr_000_205b:
    jr nz, jr_000_2065

    ld [hl], l
    jr nz, jr_000_2062

    ld a, [de]
    ld [hl], c

jr_000_2062:
    jr nz, @+$08

    ld h, [hl]

jr_000_2065:
    jr nz, jr_000_2067

jr_000_2067:
    ld [bc], a

jr_000_2068:
    ld l, d
    jr nz, jr_000_206c

    db $10

jr_000_206c:
    and h
    inc h
    inc e
    ld a, [c]
    inc h
    nop
    ld [bc], a
    sbc c
    inc hl
    nop
    nop
    rst $38
    nop
    dec c
    ld a, h
    jr nz, jr_000_207d

jr_000_207d:
    db $10
    add b
    jr nz, jr_000_2081

jr_000_2081:
    ld [bc], a
    rst $38
    nop
    dec c
    add hl, bc
    dec h
    nop
    rlca
    adc e
    jr nz, jr_000_208c

jr_000_208c:
    inc bc
    adc a
    jr nz, jr_000_2090

jr_000_2090:
    ld a, [de]
    rst $38
    nop
    db $10
    rst $38
    nop
    inc de
    sbc c
    jr nz, jr_000_209c

    dec bc
    sbc a

jr_000_209c:
    jr nz, jr_000_20ac

    rst $38

jr_000_209f:
    nop
    nop
    rst $38
    nop
    dec de
    and [hl]
    jr nz, jr_000_20a7

jr_000_20a7:
    dec e
    xor d
    jr nz, jr_000_20ab

jr_000_20ab:
    nop

jr_000_20ac:
    xor [hl]
    jr nz, jr_000_20b3

    jr @-$49

    jr nz, jr_000_20c0

jr_000_20b3:
    ret z

    jr nz, jr_000_20b6

jr_000_20b6:
    inc b
    cp c
    jr nz, jr_000_20ba

jr_000_20ba:
    dec c
    cp l
    jr nz, jr_000_20be

jr_000_20be:
    jr jr_000_2081

jr_000_20c0:
    jr nz, @+$04

    nop
    call nc, $0d20
    ld [de], a
    ld hl, $1700
    call z, RST_20
    jr jr_000_209f

    jr nz, jr_000_20d1

jr_000_20d1:
    inc b
    pop bc
    jr nz, jr_000_20d5

jr_000_20d5:
    ld a, [bc]
    ret c

    jr nz, jr_000_20d9

jr_000_20d9:
    inc c
    call c, RST_20
    ld c, $e0
    jr nz, jr_000_20e1

jr_000_20e1:
    inc bc
    db $e4
    jr nz, jr_000_20e5

jr_000_20e5:
    inc d
    add sp, $20
    nop
    dec c
    db $ec
    jr nz, jr_000_20ed

jr_000_20ed:
    db $10
    ldh a, [rNR41]
    nop
    dec de
    db $f4
    jr nz, jr_000_20f5

jr_000_20f5:
    ld bc, $20f8
    ld [bc], a
    ld e, $ff
    jr nz, @+$25

    ld a, [bc]
    ld hl, $1300
    inc bc
    ld hl, $2600
    rlca
    ld hl, $0c00
    rst $38
    nop
    inc de
    ld c, $21
    nop
    ld e, $07
    ld hl, $0a00
    ld d, $21
    inc b
    nop
    call c, $0420
    dec e
    ld hl, $1500
    ld hl, $0021
    ld c, $25
    ld hl, $0f00
    add hl, hl
    ld hl, $1d00
    dec l
    ld hl, $0100
    ld sp, $0121
    inc hl
    rst $38
    nop
    scf
    ld hl, $1400
    ld hl, sp+$20
    ld [bc], a
    ld de, $2142
    inc c
    ld [hl], e
    ld hl, $0002
    ld c, c
    ld hl, $8713
    ld hl, $1001
    ld d, b
    ld hl, $600e
    ld hl, $1300
    ld d, h
    ld hl, $0b00
    ld e, b
    ld hl, $1200
    ld e, h
    ld hl, $0000
    xor l
    ld hl, $1302
    ld h, a
    ld hl, $6b11
    ld hl, $0e00
    ld e, b
    ld hl, $0e00
    ld l, a
    ld hl, $0f00
    ld e, h
    ld hl, $1300
    ld [hl], a
    ld hl, $1000
    ld a, e
    ld hl, $1000
    ld a, a
    ld hl, $0b00
    add e
    ld hl, $0000
    ld e, h
    ld hl, $0e02
    adc [hl]
    ld hl, $a510
    ld hl, $0001
    sub l
    ld hl, $9d10
    ld hl, $0e00
    sbc c
    ld hl, $0f00
    ld e, h
    ld hl, $0e00
    and c
    ld hl, $0000
    ld e, h
    ld hl, $0000
    xor c
    ld hl, $0b00
    sbc c
    ld hl, $1502
    rst $38
    inc b
    rst $38
    inc bc
    inc b
    cp h
    ld hl, $dd0c
    ld hl, $f01f
    ld hl, $1900
    ret nz

    ld hl, $1000
    call nz, Call_000_0021
    nop
    ret z

    ld hl, $1200
    call z, $0121
    dec d
    db $d3
    ld hl, $d612
    ld hl, $0100
    rst $38
    nop
    daa
    jp c, Jump_000_0021

    dec bc
    rst $38
    nop
    inc c
    pop hl
    ld hl, $2100
    push hl
    ld hl, $0500
    jp hl


    ld hl, $1100
    db $ed
    ld hl, $1700
    rst $38
    nop
    nop
    db $f4
    ld hl, $0400
    ld hl, sp+$21
    nop
    add hl, bc
    db $fc
    ld hl, $0200
    nop
    ld [hl+], a
    nop
    inc e
    inc b
    ld [hl+], a
    nop
    rla
    rst $38
    nop
    ld [$1fa2], sp
    nop
    add hl, de
    rrca
    ld [hl+], a
    nop
    ld [de], a
    inc de
    ld [hl+], a
    nop
    ld a, [bc]
    rla
    ld [hl+], a
    nop
    ld [bc], a
    dec de
    ld [hl+], a
    ld bc, $2213
    ld [hl+], a
    ld [de], a
    add hl, sp
    ld [hl+], a
    nop
    dec c
    ld h, $22
    nop
    db $10
    ld a, [hl+]
    ld [hl+], a
    nop
    rlca
    ld l, $22
    nop
    ld hl, $2232
    nop
    nop
    ld [hl], $22
    nop
    nop
    rst $38
    nop
    dec c
    dec a
    ld [hl+], a
    inc bc
    rrca
    ld b, a
    ld [hl+], a
    inc d
    ld d, [hl]
    ld [hl+], a
    dec c
    ld h, l
    ld [hl+], a
    nop
    rlca
    ld c, e
    ld [hl+], a
    nop
    ld d, $4f
    ld [hl+], a
    nop
    nop
    ld d, e
    ld [hl+], a
    nop
    nop
    rst $38
    nop
    rlca
    ld e, d
    ld [hl+], a
    nop
    add hl, de
    ld e, [hl]
    ld [hl+], a
    nop
    nop
    ld h, d
    ld [hl+], a
    nop
    ld e, $ff
    nop
    rlca
    ld l, c
    ld [hl+], a
    nop
    add hl, de
    ld l, l
    ld [hl+], a
    nop
    nop
    ld [hl], c
    ld [hl+], a
    nop
    nop
    rst $38
    nop
    add hl, de
    ld a, b
    ld [hl+], a
    nop
    dec c
    ld a, h
    ld [hl+], a
    nop
    ld a, [bc]
    add b
    ld [hl+], a
    nop
    inc de
    add h
    ld [hl+], a
    ld bc, $8b13
    ld [hl+], a
    ld [de], a
    and d
    ld [hl+], a
    nop
    ld d, $8f
    ld [hl+], a
    nop
    ld a, [de]
    sub e
    ld [hl+], a
    nop
    rrca
    sub a
    ld [hl+], a
    nop
    ld d, $9b
    ld [hl+], a
    nop
    nop
    sbc a
    ld [hl+], a
    nop
    ld h, $ff
    nop
    ld d, $a6
    ld [hl+], a
    nop
    rrca
    xor d
    ld [hl+], a
    nop
    db $10
    xor [hl]
    ld [hl+], a
    nop
    ld d, $b2
    ld [hl+], a
    nop
    nop
    or [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    nop
    add hl, bc
    cp l
    ld [hl+], a
    nop
    dec bc
    pop bc
    ld [hl+], a
    nop
    dec de

jr_000_22c3:
    push bc
    ld [hl+], a
    nop
    inc c
    ret


    ld [hl+], a
    nop
    jr @-$31

    ld [hl+], a
    nop
    nop
    pop de
    ld [hl+], a
    nop
    nop
    push de
    ld [hl+], a
    nop
    ld [de], a
    reti


    ld [hl+], a
    ld bc, $ff0e
    dec c
    rst $38
    nop
    jr jr_000_22c3

    ld [hl+], a
    nop
    ld c, $f1
    ld [hl+], a
    ld bc, $ed1b
    ld [hl+], a
    ld c, $7e
    inc hl
    nop
    dec de
    pop af
    ld [hl+], a
    nop
    ld c, $f5
    ld [hl+], a
    ld bc, $fc18
    ld [hl+], a
    dec de
    add hl, sp
    inc hl
    nop
    ld bc, $2300
    nop
    nop
    inc b
    inc hl
    inc bc
    inc de
    ld c, $23
    rlca
    inc hl
    inc hl
    daa
    ld l, $23
    ld bc, $150e
    inc hl
    dec c
    inc e
    inc hl
    nop
    ld c, $19
    inc hl
    nop
    inc c
    rst $38
    nop
    ld c, $20
    inc hl
    nop
    dec c
    rst $38

jr_000_2323:
    nop
    jr @+$29

    inc hl
    nop
    add hl, hl
    dec hl
    inc hl
    nop
    inc b
    rst $38
    nop
    ld [bc], a
    ld [hl-], a
    inc hl
    nop
    dec d
    ld [hl], $23
    nop
    dec c
    rst $38
    ld bc, $4003
    inc hl
    ld [bc], a
    ld [hl], e
    inc hl
    ld bc, $471e
    inc hl
    ld [$2364], sp
    ld bc, $4e07
    inc hl
    ld [$2359], sp
    nop
    nop
    ld d, d
    inc hl
    nop
    nop
    ld d, [hl]
    inc hl
    nop
    dec b
    rst $38
    nop
    nop
    ld e, l
    inc hl
    nop
    nop
    ld h, c
    inc hl
    nop
    dec b
    rst $38
    nop
    ld b, $68
    inc hl
    nop
    nop
    ld l, h
    inc hl
    nop
    ld bc, $2370
    nop
    inc d
    rst $38
    nop
    nop
    ld [hl], a
    inc hl
    nop
    dec b
    ld a, e
    inc hl
    nop
    dec d
    rst $38
    nop
    add hl, bc
    add d
    inc hl
    nop
    inc de
    add [hl]
    inc hl
    nop
    rlca
    adc d
    inc hl
    nop
    dec c
    adc [hl]
    inc hl
    nop
    jr nz, jr_000_2323

    inc hl
    nop
    nop
    sub [hl]
    inc hl
    nop
    ld e, $ff
    rlca
    ld a, [bc]
    and [hl]
    inc hl
    rla
    daa
    inc h
    ld c, $5e
    inc h
    inc c
    adc a
    inc h
    inc bc
    nop
    or b
    inc hl
    inc c
    db $eb
    inc hl
    ld [$2414], sp
    ld bc, $b715
    inc hl
    ld d, $e4
    inc hl
    ld bc, $be07
    inc hl
    dec bc
    pop de
    inc hl
    nop
    inc d
    jp nz, $0023

Jump_000_23c3:
    ld [bc], a
    add $23
    nop
    inc d
    jp z, $0023

    db $10
    adc $23
    nop
    ld hl, $00ff
    inc de
    push de
    inc hl
    nop
    ld [bc], a
    reti


    inc hl
    nop
    jr nz, @-$21

    inc hl
    nop
    ld b, $e1
    inc hl
    nop
    nop
    rst $38
    nop
    rlca
    add sp, $23
    nop
    jr @+$01

    ld bc, $f20d
    inc hl
    ld d, $05
    inc h
    nop
    db $10
    or $23
    nop
    dec e
    ld a, [$0023]
    inc b

Call_000_23fc:
    cp $23
    nop
    nop
    ld [bc], a
    inc h
    nop
    nop
    rst $38
    nop
    nop
    add hl, bc
    inc h
    nop
    jr jr_000_2419

    inc h
    nop
    ld [bc], a
    ld de, $0024
    ld [de], a
    rst $38
    nop
    dec d
    jr jr_000_243c

    nop

jr_000_2419:
    inc bc
    inc e
    inc h
    nop
    inc d
    jr nz, jr_000_2444

    nop
    nop
    inc h
    inc h
    nop
    ld hl, $01ff
    ld [$242e], sp
    nop
    add hl, sp
    inc h
    nop
    dec d
    ld [hl-], a
    inc h
    nop
    inc bc
    ld [hl], $24
    nop
    ld hl, $01ff
    dec d
    ld b, b

jr_000_243c:
    inc h
    add hl, de
    ld c, a
    inc h
    nop
    dec bc
    ld b, h
    inc h

jr_000_2444:
    nop
    rra
    ld c, b
    inc h
    nop
    ld [bc], a
    ld c, h
    inc h
    nop
    ld a, [de]
    rst $38
    nop
    dec bc
    ld d, e
    inc h
    nop
    rla
    ld d, a
    inc h
    nop
    ld [bc], a
    ld e, e
    inc h
    nop
    jr nz, @+$01

    nop
    nop
    ld h, d
    inc h
    nop
    inc e
    ld h, [hl]
    inc h
    nop
    dec bc
    ld l, d
    inc h
    nop
    nop
    ld l, [hl]
    inc h
    nop
    ld [bc], a
    ld [hl], d
    inc h
    ld bc, $7915
    inc h
    ld e, $88
    inc h
    inc bc
    add hl, bc
    add d
    inc h
    rrca
    rst $38
    ld [$2485], sp
    nop
    ld bc, $00ff
    ld de, $00ff

jr_000_2489:
    rrca
    adc h
    inc h
    nop
    ld c, $ff
    nop
    nop
    sub e
    inc h
    nop
    ld a, [de]
    sub a
    inc h
    ld bc, $9e07
    inc h
    ld a, [bc]
    and c
    inc h
    nop
    nop
    rst $38
    nop
    ld bc, $01ff
    nop
    xor e
    inc h
    dec c
    ret z

    inc h
    ld bc, $b10b
    inc h
    inc c
    rst $38
    nop
    dec bc
    or l
    inc h
    inc bc
    ld [hl+], a
    cp l
    inc h
    rrca
    rst $38
    ld hl, $00ff
    ld [bc], a
    pop bc
    inc h
    nop
    jr nz, jr_000_2489

    inc h
    nop
    rrca
    rst $38
    ld bc, $cf00
    inc h
    dec bc
    and $24
    nop
    dec e
    db $d3
    inc h
    nop
    add hl, bc
    rst $10
    inc h
    nop
    nop
    db $db
    inc h
    nop
    jr nz, @-$1f

    inc h
    nop
    inc de
    db $e3
    inc h
    nop
    daa
    rst $38
    nop
    nop
    ld [$0024], a
    nop
    xor $24
    nop
    inc e
    db $db
    inc h
    nop
    dec bc
    or $24
    nop
    ld bc, $24fa
    nop
    dec c
    cp $24
    nop
    ld [de], a
    ld [bc], a
    dec h
    nop
    nop
    ld b, $25
    nop
    rrca
    rst $38
    inc bc
    ld [hl], c
    jr nz, jr_000_251c

    ld [de], a
    dec h
    ld a, [bc]
    ld a, [hl+]
    dec h
    nop
    ld [bc], a
    ld d, $25
    nop
    inc d
    ld a, [de]
    dec h
    nop
    nop

jr_000_251c:
    ld e, $25
    nop
    nop
    ld [hl+], a
    dec h
    nop
    dec bc
    ld h, $25
    nop
    dec c
    ld l, [hl]
    inc h
    nop
    ld [bc], a
    ld l, $25
    nop
    inc de
    ld [hl-], a
    dec h
    nop
    nop
    ld [hl], $25
    nop
    inc de
    ld a, [hl-]
    dec h
    nop
    dec bc
    ld a, $25
    nop
    ld de, $21ff
    and [hl]
    rst $38
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_25c2
    jr z, jr_000_2570

    ldh a, [$f5]
    ld d, a
    ldh a, [$f6]
    cp d
    ld de, $259e
    jr z, jr_000_2565

    ld de, $2590
    cp $1a
    jr z, jr_000_2565

    cp $60
    jr z, jr_000_2565

    ld de, $2590

jr_000_2565:
    call Call_000_1c23
    ld b, $78
    call $43da
    call $4858

jr_000_2570:
    ldh a, [$cb]
    and a
    ret z

    ld a, $88
    ld [$c3ba], a
    ld de, $2585
    call Call_000_1c23
    ld b, $78
    call $43da
    ret


    ld e, $c5
    nop
    ld b, $01
    ld b, e
    ld c, b
    ld b, l
    ld b, e
    ld c, e
    nop
    ld e, $c4
    nop
    ld [$4301], sp
    ld b, c
    ld d, e
    ld d, h
    ld c, h
    ld c, c
    ld c, [hl]
    ld b, a
    nop
    ld e, $03
    ld bc, $030a
    ld d, b
    ld b, c
    ld d, a
    ld c, [hl]
    jr nz, jr_000_25fd

    ld b, c
    ld c, e
    ld b, l
    ld d, e
    rra
    ld b, l
    ld bc, $4150
    ld d, a
    ld c, [hl]
    rra
    ld h, h
    ld bc, $4e45
    jr nz, jr_000_260b

    ld b, c
    ld d, e
    ld d, e
    ld b, c
    ld c, [hl]
    ld d, h
    nop

Call_000_25c2:
Jump_000_25c2:
    xor a
    ldh [$f6], a
    ldh [$f5], a
    inc hl
    inc hl
    ld a, [hl+]

Jump_000_25ca:
    ldh [$f4], a
    ld a, [hl+]
    ldh [$f3], a
    ld a, [hl+]
    ld c, a
    bit 6, a
    ret z

    inc hl
    inc hl
    ld a, [hl+]
    ldh [$f6], a
    ld a, [hl+]
    ldh [$f5], a

Call_000_25dc:
    ld a, $01
    and a
    ret


Call_000_25e0:
    call $4abc
    call Call_000_2618
    ld a, $01
    ldh [$e8], a

jr_000_25ea:
    ld b, $19
    call $43da
    ret nz

    call Call_000_2649
    call $4858

jr_000_25f6:
    ldh a, [$e8]
    dec a
    ldh [$e8], a
    jr nz, jr_000_2602

jr_000_25fd:
    ld a, $86
    ld [$c3ba], a

jr_000_2602:
    ld b, $0f
    call $43da
    push af
    call Call_000_265a

jr_000_260b:
    call $4858
    pop af
    jr z, jr_000_25ea

    ret


    ld a, $01
    ldh [$e8], a
    jr jr_000_25f6

Call_000_2618:
    xor a
    ldh [$f5], a
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ldh [$f3], a
    ld b, $c6
    ld c, a
    ld a, [bc]
    ldh [$f4], a
    ld a, [hl+]
    ld d, a
    and $8f
    ldh [$96], a
    bit 6, d
    ret z

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ldh [$f5], a
    ld b, $c6
    ld c, a
    ld a, [bc]
    ldh [$f6], a
    ld a, [hl+]
    ld d, a
    and $8f
    ldh [$98], a
    ret


Call_000_2649:
    ld h, $c6
    ldh a, [$f3]
    ld l, a
    ldh a, [$96]
    ld [hl], a
    ldh a, [$f5]
    and a
    ret z

    ld l, a
    ldh a, [$98]
    ld [hl], a
    ret


Call_000_265a:
    ld h, $c6
    ldh a, [$f3]
    ld l, a
    ldh a, [$f4]
    ld [hl], a
    ldh a, [$f5]
    and a
    ret z

    ld l, a
    ldh a, [$f6]
    ld [hl], a
    ret


jr_000_266b:
    ld b, $19
    call $43da
    ret nz

    call $5851
    call $4858

jr_000_2677:
    ldh a, [$e8]
    dec a
    ldh [$e8], a
    jr nz, jr_000_2683

    ld a, $86
    ld [$c3ba], a

jr_000_2683:
    ld b, $0f
    call $43da
    push af
    call $57eb
    call $4858
    pop af
    jr z, jr_000_266b

    ret


Call_000_2693:
    ld a, $01
    ldh [$e8], a
    jr jr_000_2677

    call $4b1b
    call Call_000_26a2
    jp $4b13


Call_000_26a2:
    ld a, [$c6f6]
    and a
    jr z, jr_000_271f

    ldh a, [$c4]
    cp $02
    jr c, jr_000_271f

    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld b, $c6
    ld a, [$c6f7]
    ld c, a
    ld a, [bc]
    ld [$c6f8], a
    ld a, $f4
    ldh [$a6], a
    ld a, $c6
    ldh [$a7], a
    call Call_000_2693
    call $5851
    pop de
    ld hl, $ffa6
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $ffb2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ldh a, [$c8]
    push af
    ld a, $01
    ld [$c7bc], a
    call $5be3
    ldh a, [$aa]
    ldh [$a6], a
    ldh a, [$ab]
    ldh [$a7], a
    call Call_000_2693
    call $5851
    pop af
    ldh [$c8], a
    pop de
    ld hl, $ffb2
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    ld hl, $ffa6
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $ffaa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c6f6], a
    ld a, [hl+]
    ld [$c6f7], a
    ret


    pop hl

jr_000_271f:
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ldh a, [$be]
    inc a
    ldh [$fc], a
    call $4858
    ld de, $4add
    call $4aa0
    call $425a
    call $5e04
    call $425a
    call $4a81
    ldh a, [$aa]
    ldh [$a6], a
    ldh a, [$ab]
    ldh [$a7], a
    call Call_000_2693
    call $5851
    pop de
    ld hl, $ffa6
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ldh [$fc], a
    ld [$c6f6], a
    ret


Call_000_275c:
    xor a

jr_000_275d:
    ldh a, [$c6]
    cp $01
    jr z, jr_000_2768

    call Call_000_276b
    jr jr_000_275d

jr_000_2768:
    pop hl
    pop hl
    ret


Call_000_276b:
    ld hl, $ffbf
    ld a, $80
    xor [hl]
    ld [hl], a
    bit 7, a
    jr z, jr_000_277a

    ld hl, $ffc3
    dec [hl]

jr_000_277a:
    ld hl, $ffa8
    ld a, [hl]
    sub $02
    ld [hl+], a
    jr nc, jr_000_2784

    dec [hl]

jr_000_2784:
    ld hl, $ffc6
    dec [hl]
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
    jp $5851


Call_000_27a4:
    xor a
    ld [$d900], a
    ld [$d901], a
    ld [$c6f6], a
    ret


Call_000_27af:
    ld l, a
    ld h, $00
    add hl, hl
    ld e, l
    ld d, h
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $d902
    add hl, de
    ld e, l
    ld d, h
    ret


    ld e, $81
    nop
    ld c, $03
    rra
    and d
    nop
    ld b, c
    jr nz, @+$22

    jr nz, jr_000_2820

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$44

    ld b, c
    ld b, e
    ld c, e
    rra
    jp nz, $4200

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$57

    ld c, [hl]
    ld b, h
    ld c, a
    rra
    ld [c], a
    nop
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_000_283f

    ld c, a
    jr nz, @+$47

    ld c, [hl]
    ld b, h
    nop
    ld a, [$d901]
    and a
    jp z, $4858

    call $484c
    ld de, $27bf
    call Call_000_1c23
    call $43fc
    push af
    call $484c
    pop af
    jr jr_000_280e

jr_000_280b:
    call $43fc

jr_000_280e:
    bit 3, a
    jr z, jr_000_2827

    call $426f
    ld a, [$d900]
    ld b, a
    ld a, [$d901]
    cp b
    jp z, $414a

jr_000_2820:
    xor a
    ld [$c6f6], a
    jp $414a


jr_000_2827:
    bit 0, a
    jr z, jr_000_2830

    call Call_000_2839
    jr jr_000_280b

jr_000_2830:
    bit 1, a
    jr z, jr_000_280b

    call Call_000_28b3
    jr jr_000_280b

Call_000_2839:
    call $4858
    ld a, [$d900]

jr_000_283f:
    and a
    ret z

    dec a
    call Call_000_27af
    call Call_000_2855
    ret z

    ld a, [$c011]
    dec a
    ret nz

    ld a, [$d900]
    dec a
    call Call_000_27af

Call_000_2855:
    ld hl, $ffbf
    ld a, $80
    xor [hl]
    ld [hl], a
    bit 7, a
    jr z, jr_000_2864

    ld hl, $ffc3
    dec [hl]

jr_000_2864:
    call Call_000_2875
    call $5851
    call $484c
    ld hl, $d900
    dec [hl]
    call Call_000_28e4
    ret


Call_000_2875:
    ld a, e
    ldh [$a6], a
    ld a, d
    ldh [$a7], a
    ret


Jump_000_287c:
    ld a, [$d900]
    cp $14
    jr nz, jr_000_2893

    ld de, $d902
    ld hl, $d90c
    ld bc, $00be
    call $4384
    ld hl, $d900
    dec [hl]

jr_000_2893:
    ld a, [$d900]
    call Call_000_27af
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $000a
    call $4384
    ld hl, $d900
    ld a, [hl]
    cp $14
    jr z, jr_000_28ae

    inc a

jr_000_28ae:
    ld [hl], a
    ld [$d901], a
    ret


Call_000_28b3:
    ld a, [$d901]
    ld c, a
    ld a, [$d900]
    cp c
    ret z

    ld hl, $ffbf
    ld a, $80
    xor [hl]
    ld [hl], a
    bit 7, a
    jr nz, jr_000_28cb

    ld hl, $ffc3
    inc [hl]

jr_000_28cb:
    ld a, [$d900]
    call Call_000_27af
    call Call_000_2875
    call $57eb
    call Call_000_28e4
    ld hl, $d900
    ld a, [hl]
    inc a
    ld [hl], a
    call $484c
    ret


Call_000_28e4:
    ld a, [$d900]
    cp $06
    jp c, $4e09

    call Call_000_27af
    ld l, e
    ld h, d
    inc hl
    inc hl
    inc hl
    ld de, $c69d
    ld a, $05

jr_000_28f9:
    push af
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl]
    ld [de], a
    dec de
    ld bc, $ffed
    add hl, bc
    pop af
    dec a
    jr nz, jr_000_28f9

    ret


Call_000_2909:
    call Call_000_2925
    call Call_000_29e1
    ld bc, $fff9
    ld de, $2963
    jr jr_000_298b

Call_000_2917:
    call Call_000_2925
    call Call_000_29e1
    ld bc, $fff7
    ld de, $2963
    jr jr_000_298b

Call_000_2925:
    call Call_000_14d3
    call Call_000_14f3
    ld a, b
    cp $02
    ret nc

    ld a, c
    cp $02
    ret nc

    pop de
    ld de, $2939
    jr jr_000_2978

    ld e, $c2
    nop
    inc c
    inc bc
    jr nz, jr_000_2993

    ld d, h
    ld b, c
    ld c, h
    ld b, l
    ld c, l
    ld b, c
    ld d, h
    ld b, l
    rra
    inc bc
    ld bc, $4e49
    ld d, e
    ld d, l
    ld b, [hl]
    ld b, [hl]
    ld c, c
    ld b, e
    ld c, c
    ld b, l
    ld c, [hl]
    ld d, h
    rra
    dec h
    ld bc, $414d
    ld d, h
    ld b, l
    ld d, d
    ld c, c
    ld b, c
    ld c, h
    nop
    ld a, $83
    ld [$c3ba], a
    call $4ff1
    push af
    call nz, $4d71
    pop af
    ld de, $5e7a
    jr nz, jr_000_2978

    ld de, $5e8a

Jump_000_2978:
jr_000_2978:
    call Call_000_1c23
    ld b, $c8
    call $4346
    call $4858
    ld b, $28
    call $4346
    jp $4d4e


Call_000_298b:
jr_000_298b:
    push de
    ld hl, $ffa6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl

jr_000_2993:
    push bc
    ld hl, $ffa4
    ld de, $c6b6
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop hl
    push hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ffb0
    ld a, e
    ld [hl+], a
    ld [hl], d
    call $5f00
    call $4fae
    xor a
    ldh [$cc], a
    ldh [$cd], a
    pop hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_29b8:
    ld a, l
    ldh [$a6], a
    ld a, h
    ldh [$a7], a
    push hl
    call $57eb
    call $4ff1
    push af
    call $5851
    pop af
    pop hl
    jr z, jr_000_29d6

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr nz, jr_000_29b8

    pop af
    pop af
    ret


jr_000_29d6:
    pop af
    pop hl
    ld a, l
    ldh [$a6], a
    ld a, h
    ldh [$a7], a
    pop af
    xor a
    ret


Call_000_29e1:
    ld a, [$d900]
    sub $0a
    ret c

    call Call_000_27af
    ld l, e
    ld h, d
    inc hl
    inc hl
    push hl
    call Call_000_2a25
    pop hl
    ret nz

    ld de, $000a
    add hl, de
    call Call_000_2a25
    ret nz

    pop de
    ld de, $2a03
    jp Jump_000_2978


    ld e, $01
    ld bc, $020e
    jr nz, jr_000_2a2a

    ld d, e
    ld d, h
    ld b, c
    ld c, h
    ld b, l
    ld c, l
    ld b, c
    ld d, h
    ld b, l
    rra
    ld b, d
    ld bc, $4552
    ld d, b
    ld b, l
    ld b, c
    ld d, h
    ld b, l
    ld b, h
    jr nz, @+$4f

    ld c, a
    ld d, [hl]
    ld b, l
    ld d, e
    nop

Call_000_2a25:
    ld de, $0027
    ld b, [hl]
    inc hl

jr_000_2a2a:
    ld c, [hl]
    add hl, de
    ld a, [hl+]
    cp b
    ret nz

    ld a, [hl]
    cp c
    ret nz

    add hl, de
    ld a, [hl+]
    cp b
    ret nz

    ld a, [hl]
    cp c
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
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    sub $81
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    sub b
    ld [hl], b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    rlca
    rlca
    rlca
    inc b
    dec b
    ld b, $06
    dec b
    rrca
    nop
    ld d, [hl]
    ld bc, $00af
    sub $81
    rst $38
    ret nz

    sbc $01
    rst $38
    nop
    cp $01
    ld [$a8f8], sp
    ld e, b
    adc b
    ld a, b
    or b
    ld d, b
    cp $3e
    and d
    ld e, [hl]
    ld b, d
    cp [hl]
    xor d
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld a, a
    ld a, a
    add b
    rst $38
    xor [hl]
    pop de
    rst $28
    add b
    ld e, d
    ld b, l
    ccf
    ccf
    rst $38
    rst $38
    ld d, l
    xor d
    ldh [$e0], a
    db $10
    ldh a, [$90]
    ld [hl], b
    db $10
    ldh a, [$a0]
    ld h, b
    ret nz

    ret nz

    ldh a, [$f0]
    inc c
    db $fc
    dec b

Jump_000_2aca:
    ld b, $07
    rlca
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    rst $38
    nop
    xor d
    ld d, l
    db $dd
    and d
    xor d
    ld d, l
    ld de, $2aee
    push de
    nop
    rst $38
    add b
    rst $38
    ld b, d
    cp [hl]
    xor [hl]
    ld e, [hl]
    ld d, b
    or b
    xor b
    ld e, b
    inc b
    db $fc
    and h
    ld e, h
    ld [$10f8], sp
    ldh a, [rTIMA]
    inc b
    ld [$0a08], sp
    dec c
    rlca
    rlca
    rlca
    rlca
    rra
    rra
    jr nz, jr_000_2b46

    ld a, b
    ld a, a
    ld e, d
    dec b
    cp a
    nop
    xor $11
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$11f7], sp
    xor $a2
    ld e, [hl]
    pop bc
    ccf
    xor c
    ld d, a
    cp $fe
    cp $fe
    rst $38
    rst $38
    adc d
    ld [hl], l
    ld [de], a
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_2b46:
    nop
    ret nz

    ret nz

    rlca
    rlca
    ld [$0a08], sp
    dec c
    rlca
    rlca
    rlca
    rlca
    rra
    rra
    jr nz, jr_000_2b96

    ld e, a
    ld a, a
    rst $38
    rst $38
    cp a
    nop
    xor $11
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$11f7], sp
    xor $fe
    cp $c1
    ccf
    xor c
    ld d, a
    cp $fe
    cp $fe
    rst $38
    rst $38
    adc d
    ld [hl], l
    db $10
    rst $28
    ld bc, $0301
    inc bc
    ld b, $06
    inc c
    inc c
    jr jr_000_2b9b

    ld a, [de]
    jr @+$39

    jr nc, jr_000_2bc6

    ld sp, $ffff

jr_000_2b8b:
    add a
    add a
    nop
    nop
    ld [bc], a
    nop
    ld e, $60
    rlca
    ld hl, sp+$03

jr_000_2b96:
    db $fc
    ld sp, $aafe
    ld d, l

jr_000_2b9b:
    db $fd
    add d
    ld [$7fd5], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [rPCM34], a
    ldh [$6f], a
    ldh [$af], a
    ld d, a
    db $dd
    dec l
    cp b
    ld e, b
    pop af
    jr nc, @-$1e

    ld h, b
    pop de
    ret nz

    rst $38
    ret nz

    xor $60
    jr nc, jr_000_2b8b

    sub b
    ldh a, [$c9]
    ld sp, hl
    ret


    ld sp, hl
    jp hl


    reti


    ret


    ld sp, hl

jr_000_2bc5:
    ld [hl], c

jr_000_2bc6:
    ld [hl], c
    ld h, c
    ld h, c
    ld a, a
    ld a, a
    rst $38
    rst $38
    add b
    add b
    ret nz

    add b
    ldh [$80], a
    db $ec
    sub e
    call c, $bca3
    jp $f8f8


    cp $fe
    rlca
    rlca
    ld bc, $0001
    nop
    jr jr_000_2bc5

    inc b
    ld hl, sp+$02
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, c
    ld h, c
    ld h, c
    ld h, c
    or e
    inc sp
    rrca
    rrca
    ld e, $1c
    jr c, jr_000_2c2f

    ld h, b
    ld h, b
    jp nz, $80c1

    add a
    add b
    adc a
    db $10
    rrca
    di
    di
    ccf
    ccf
    inc c
    inc c
    dec b
    inc b
    ld hl, $0ac0
    pop af
    ld b, $f9
    jp nz, $80fd

    add b
    ret nz

    ret nz

    pop hl
    ld h, c
    ld h, e
    db $e3
    ld h, [hl]
    and $6c
    xor $6c
    db $ec
    ld a, b
    ld hl, sp-$01
    rst $38
    ldh [$e0], a
    add b
    ret nz

jr_000_2c2f:
    nop
    nop
    ld [de], a
    inc c
    jr nz, @+$21

    ld b, b
    ccf
    inc c
    ld a, a
    ld [$fdd5], a
    db $e3
    dec sp
    scf
    rra
    dec de
    rrca
    rrca
    rrca
    rrca
    rlca
    add a
    rlca
    rst $00
    cp $fd
    cp $ff
    inc bc
    inc bc
    rlca
    inc bc
    adc a
    ld bc, $01ff
    rst $28
    db $10
    cpl
    db $10
    scf
    rst $10
    rra
    rst $38
    sbc b
    ld a, b
    inc e
    ld hl, sp-$44
    ret c

    sbc e
    db $fc
    db $db
    db $fc
    ld sp, hl
    cp $f0
    ldh a, [$f8]
    ld hl, sp+$0c
    inc c
    inc c
    inc e
    inc c
    inc e
    inc c
    ld a, h
    inc c
    ld a, h
    inc c
    inc a
    ld a, $31
    ccf
    jr nc, @+$39

    jr c, jr_000_2cb0

    inc a
    ld [hl-], a
    inc a
    jr nc, jr_000_2cc3

    ld sp, $303e
    ccf
    ld a, l
    ld a, [$7cff]
    rst $38
    ld a, h
    ld a, a
    ld a, [hl]
    ld e, $1f
    ld c, $0f
    rlca
    rlca
    add e
    inc bc
    ld a, a
    ldh [$7f], a
    ldh [$7e], a
    pop hl
    ld a, a
    pop hl
    ld a, e
    push hl
    ld a, a
    pop hl
    db $eb
    push de
    rst $30
    adc c
    db $db
    call nz, $cce2
    ret nz

    sbc $a1

jr_000_2cb0:
    sbc [hl]
    ldh [$9f], a
    call z, $ffb3
    add b
    rst $38
    adc b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]

jr_000_2cc3:
    ldh a, [$30]
    ld hl, sp+$18
    ld a, b
    sbc b
    ldh a, [$e3]
    ld h, b
    ld h, e
    ld [hl], b
    ld h, e
    ld a, e
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld sp, hl
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld a, b
    ld a, [c]
    ld [hl], c
    di
    inc sp
    or $36
    or $36
    db $fc
    inc a
    db $fc
    inc a
    inc a
    db $fc
    dec a
    db $fc
    add hl, sp
    ld hl, sp+$01
    rra
    inc hl
    rra
    ld b, [hl]
    ld a, $46
    ld a, $cc
    inc a
    adc h
    ld a, h
    adc h
    ld a, h
    adc h
    ld a, h
    ld [c], a
    db $fd
    jr nc, jr_000_2d4c

    jr jr_000_2d2e

    jr jr_000_2d30

    jr jr_000_2d32

    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$71
    ldh a, [$73]
    ldh a, [$78]
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    pop af
    ld a, h
    db $e3
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    scf

jr_000_2d2e:
    di
    ccf

jr_000_2d30:
    ei
    ccf

jr_000_2d32:
    ei
    scf
    push af
    scf
    push af
    ld h, a
    push hl
    inc bc
    jp $e303


    inc de
    db $e3
    ld de, $11e1
    push hl
    adc e
    pop af
    adc a
    pop af
    adc a
    pop af
    rst $20
    ret c

    rst $20

jr_000_2d4c:
    ret c

jr_000_2d4d:
    db $e3
    call c, $dce3
    pop hl
    sbc $e1
    sbc $e0
    rst $18
    ldh [$df], a
    xor $6f
    and $67
    or $37
    or $37
    cp $1f
    cp $1f
    rst $38
    ld c, $ff

jr_000_2d68:
    ld c, $38
    jr c, @+$32

    jr nc, jr_000_2d9e

    jr nc, jr_000_2da0

    jr nc, jr_000_2de2

    jr nc, @-$0e

    jr nc, @+$72

    jr nc, jr_000_2d68

    jr nc, jr_000_2d92

    rra
    jr @+$21

    inc c
    rrca
    inc c
    rrca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0c01
    inc c
    ld b, c
    add c
    jr nz, jr_000_2d4d

    db $10
    ldh [$0c], a
    ldh a, [rTMA]

jr_000_2d92:
    ld hl, sp+$03
    db $fc
    adc c
    or $f7
    ret z

    xor e
    rst $10
    jp $63ff


jr_000_2d9e:
    rst $38
    ld a, a

jr_000_2da0:
    ld a, a
    scf
    db $76
    ld a, $3f
    cp $37
    cp $37
    rst $28

jr_000_2daa:
    ld [$0caf], sp
    sbc $1c
    add b
    nop
    add b
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$18
    ret c

    jr c, jr_000_2daa

    inc e
    ld e, h
    inc l
    inc l
    ld e, h
    call z, $863c
    ld a, [hl]
    add [hl]
    ld a, [hl]
    ld a, l
    ld h, b
    ld a, [hl]
    ld h, b
    ld a, h
    ld h, b
    ld a, [hl]
    ld h, b
    ld a, h
    ld h, e
    ld a, h
    ld h, e
    ld a, h
    ld l, e
    ld a, h
    ld [hl], e
    ld [hl], b
    ld [hl], c
    ld [bc], a
    ld bc, $0304
    db $10
    rrca
    nop

jr_000_2de2:
    cp $01
    db $fd
    ld bc, $01f9
    ld sp, hl
    ld a, e
    cp b
    dec sp
    cp b
    ld a, a
    ld hl, sp+$7f
    ld a, b
    rst $18
    ret c

    sbc a
    sbc b
    sbc e
    sbc h
    adc l
    adc [hl]
    adc h
    ld a, h

jr_000_2dfb:
    cp b
    ld e, b
    ld hl, sp+$18
    cp b
    jr jr_000_2dfb

    add hl, de
    ld sp, hl

jr_000_2e04:
    add hl, de
    xor l
    dec c
    db $fd
    dec c
    rlca
    rlca
    inc bc
    inc bc
    ld a, a
    ld a, a
    rst $38
    rst $38
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    add [hl]
    ld sp, hl
    db $fc
    db $e3
    ld hl, sp-$19
    db $fd
    ld [c], a
    rst $38
    ldh [$1f], a
    nop
    ld e, a
    jr nz, jr_000_2e04

    jr nz, jr_000_2e47

    ldh [$63], a
    db $e3
    ld h, e
    db $e3
    db $e3
    ld h, e
    rst $38
    ld a, a
    db $eb
    ld [hl], l
    rst $38
    ld a, a
    push hl
    ld h, l
    and a
    ld h, l
    adc a
    pop af
    rst $08
    or c
    cp a
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $28
    add c

jr_000_2e47:
    rst $38
    add c
    add sp, -$21
    add sp, -$21
    db $fc
    rst $08
    db $ec
    rst $18
    cp $cf
    sbc $ef
    rst $18
    rst $28
    rst $18
    rst $28
    ld a, a
    add [hl]
    ld a, a

jr_000_2e5c:
    add [hl]
    ccf

jr_000_2e5e:
    jp nz, $c23f

    dec e

jr_000_2e62:
    ldh [rNR33], a

jr_000_2e64:
    ldh [rIF], a

jr_000_2e66:
    ldh a, [$0e]
    ldh a, [$f0]
    jr nc, jr_000_2e5c

    jr nc, jr_000_2e5e

    jr nc, @-$0e

    jr nc, jr_000_2e62

    jr nc, jr_000_2e64

    jr nc, jr_000_2e66

    jr nc, jr_000_2ee8

    or b
    ld e, $1e
    dec sp
    inc sp
    dec sp
    inc sp
    ccf
    ld sp, $313b
    dec a
    jr nc, jr_000_2ec2

    jr nc, jr_000_2ec4

    jr nc, jr_000_2ef3

    db $76
    ld [hl], a
    ld a, b
    ld e, a
    ld e, b
    rst $38
    ld hl, sp-$27
    sbc b
    ei
    ld hl, sp-$07
    ld hl, sp+$32
    ld sp, $1ffc
    db $fc
    rra
    db $fc
    rra
    db $dd
    ld a, $d9
    ld a, $3b
    db $fc
    dec sp
    db $fc
    scf
    ldh a, [rP1]
    rst $38
    ld a, $ff
    cp [hl]
    ld a, a
    ld a, a
    cp a
    db $eb
    ld [hl], a
    rst $38
    ld a, a
    di
    ld [hl], e
    sbc [hl]
    ld e, $46
    cp [hl]
    ld b, [hl]
    cp [hl]
    inc hl
    rst $18
    ld h, e
    sbc a
    db $e3

jr_000_2ec2:
    rra
    di

jr_000_2ec4:
    rrca
    di
    dec c
    ld [hl], h
    ld [$6a75], sp
    ld h, d
    ld a, l
    ld h, e
    ld a, h
    ld h, e
    ld a, h
    ld h, e
    ld a, h
    ld h, e
    ld a, h
    di
    db $ec
    sbc c
    add h
    ld b, h
    ld hl, sp-$1c
    ld a, b
    rst $28
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    cp $79
    cp $79
    inc sp

jr_000_2ee8:
    db $10
    call $ccce
    rst $08
    ld l, h
    ld l, a
    ld l, h
    ld l, a
    or [hl]
    scf

jr_000_2ef3:
    cp [hl]
    ld a, a
    ld e, $ff
    rlca
    rst $20
    db $fd
    dec c
    db $ed
    dec c
    call z, $060c
    add [hl]
    ld b, $86
    inc bc
    db $e3
    ld bc, $00e1
    ldh a, [$8c]
    di
    sbc b
    rst $20
    rst $20
    ldh [$6f], a
    ld h, b
    ld a, l
    ld h, b
    add sp, -$20
    ret nz

    ret nz

    nop
    ld [bc], a
    ld de, $10fe
    cp $f0
    ld a, [hl]
    ldh a, [$7e]
    ldh a, [$7f]
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, a
    ccf
    cp a
    ld sp, $3135
    ccf
    ccf
    rra
    dec de
    rra
    rra
    ld c, $0e
    ld b, $84
    pop de
    adc a
    pop hl
    adc a
    add c
    adc a
    add e
    adc a
    add e
    rrca
    inc de
    rrca
    inc bc
    rra
    daa
    rra
    rst $18
    rst $28
    db $dd
    rst $28
    adc $ed
    rst $18
    rst $28
    sbc $ed
    rst $08
    rst $28
    adc $ee
    inc hl
    inc bc
    add [hl]
    ld hl, sp-$79
    ld hl, sp-$35
    db $f4
    rst $30
    ret z

jr_000_2f61:
    db $fd
    ld h, d

jr_000_2f63:
    rst $38
    ldh [$3e], a
    ld sp, $303f

jr_000_2f69:
    or b
    ld [hl], b
    jr nc, @-$0e

    or b
    ld [hl], b
    jr nc, jr_000_2f61

    jr nc, jr_000_2f63

    jr nc, @-$0e

    jr nc, @-$0e

    jr nc, jr_000_2f69

    ccf
    jr nc, @+$3f

    ld [hl-], a
    inc [hl]
    dec sp
    jr c, jr_000_2fb8

    ld sp, $1f3f
    rra
    ld c, $0e
    nop
    nop
    nop
    ld bc, $0380
    ldh [rIF], a
    nop
    rst $38
    ld bc, $87ff
    rst $38
    cp $fe
    ld a, b
    ld a, b
    inc sp
    ldh [$7f], a
    ldh [$78], a
    rst $20
    ldh a, [$ef]
    ldh a, [$ef]
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    add b
    rra
    ld a, $df
    ld a, $1f
    cp $1f
    cp $1f
    cp $f3
    di
    pop af
    pop af
    db $10

jr_000_2fb8:
    ldh a, [$30]
    ld [$01fe], sp
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ret z

    add b
    rst $38
    add b
    ldh [$9f], a
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop

jr_000_2fd8:
    nop
    ld e, b

jr_000_2fda:
    jr nc, @-$5f

    ld [hl], b
    inc e
    di
    jr jr_000_2fd8

    jr jr_000_2fda

    rst $38
    rst $38
    rst $28
    rst $28
    nop
    nop
    rlca
    ld l, a
    rst $30
    rrca
    ld b, $fe
    ld b, $fe
    ld b, $fe
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    ld hl, sp-$80
    db $fc
    ret nz

    rst $38
    ld h, b
    ld a, a
    jr nc, jr_000_3042

    inc e
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    rlca
    nop
    rrca
    ld bc, $017f
    rst $38
    rlca
    rst $38
    ld e, $fe
    ld hl, sp-$08
    ldh [$e0], a
    call z, $cccf
    rst $08
    add [hl]
    add a
    add e
    add e
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    ld de, $00e0
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld a, a
    ld a, a
    rra
    rra
    ld b, a
    ccf
    rrca
    ld a, a
    rrca
    rst $38

Call_000_303f:
    rra
    ei
    ld a, e

jr_000_3042:
    rst $30
    rst $38
    pop hl
    or $81
    rst $38
    add b
    ld [hl], a
    inc bc
    rst $38
    inc bc
    jp $833f


    ld a, a
    inc bc
    rst $38
    cp $fe
    db $fc
    db $fc
    db $10
    ldh a, [$1f]
    jr jr_000_307b

    jr @+$11

    inc c
    rrca
    inc c
    rlca
    ld b, $06
    rlca
    inc bc
    inc bc
    ld bc, $3001
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]

jr_000_3072:
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop

jr_000_307b:
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
    sub $81
    xor a
    add b
    sub $81
    adc a
    add b
    sub $81
    cpl
    nop
    ld d, $01
    rrca
    nop
    or b
    ld d, b
    db $10
    ldh a, [$90]
    ld [hl], b
    db $10
    ldh a, [$90]
    ld [hl], b
    ld c, b
    cp b
    xor b
    ld e, b
    ld [$01f8], sp
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    ld b, $05
    rrca
    ld [$0057], sp
    xor e
    nop
    ld d, l
    nop
    rst $38

Call_000_30c0:
    nop
    db $dd
    nop
    rst $38
    nop
    xor d
    ld d, l
    ld [hl], a
    adc b
    xor b
    ld e, b
    ret z

    jr c, jr_000_3072

    ld e, h
    call nz, $a43c
    ld e, h
    ld a, [c]
    ld c, $aa
    ld d, [hl]
    pop af
    rrca
    ccf
    ccf
    inc h
    inc h
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
    ld c, $0e
    cp e
    cp e
    sub c
    sub c
    ld de, $1f11
    rra
    ld de, $1111
    ld de, $1111
    dec sp
    dec sp
    cp a
    cp a
    ld de, $1411
    inc d
    inc e
    inc e
    inc d
    inc d
    db $10
    db $10
    ld de, $bf11
    cp a
    ld a, [bc]
    dec c
    inc c
    dec bc
    ld a, [de]
    dec d
    jr nz, jr_000_3150

    ld b, b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld a, a
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    nop
    rst $38
    ld [bc], a
    db $fd

jr_000_3123:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_000_3129:
    xor e
    ld d, l
    ld d, l
    xor e
    xor d
    ld d, l
    nop
    rst $38
    ld [bc], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_000_3123

    ldh a, [$f0]
    ldh a, [$f0]
    jr nz, jr_000_3129

    ld [hl+], a
    dec a
    dec d
    ld a, [de]
    ld a, [de]
    dec d
    rra

jr_000_3150:
    db $10
    dec e
    db $10
    dec sp
    jr nz, jr_000_31ab

    ld h, b
    and b
    ret nz

    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    nop
    rst $18
    nop
    cp a
    nop
    ld d, [hl]
    ld bc, $00ef
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ldh a, [rIF]
    xor d
    ld d, l
    ret nz

    ccf
    xor d
    ld d, l
    ldh a, [rIF]
    ld b, e
    jp $8181


    add c
    add c
    add c
    add c
    add c
    add c
    ld b, c
    pop bc
    ld hl, $13e1
    di
    rst $20
    rst $20
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    db $e3
    db $e3
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add a
    add a
    rst $00
    rst $00
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    jp nz, $42c2

    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [hl], a
    db $ec
    db $ec

jr_000_31ab:
    ld h, $26
    add [hl]
    add [hl]
    add l
    add l
    add l
    add l
    inc b
    inc b
    inc h
    inc h
    xor $ee
    scf
    scf
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    and d
    and d
    and d
    and d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [hl], a
    ld a, [hl]
    ld a, [hl]
    ld [hl+], a
    ld [hl+], a
    jr z, jr_000_31f7

    jr c, jr_000_3209

    jr z, jr_000_31fb

    jr nz, jr_000_31f5

    ld [hl+], a
    ld [hl+], a

jr_000_31d7:
    ld a, [hl]
    ld a, [hl]
    ld hl, sp-$08
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld a, b
    ld a, b
    ld c, b
    ld c, b
    ld b, h
    ld b, h
    adc $ce
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

jr_000_31f5:
    jr nz, jr_000_31d7

jr_000_31f7:
    db $10
    ldh a, [rP1]
    nop

jr_000_31fb:
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000

jr_000_3209:
    add l
    ret nz

jr_000_320b:
    ldh [$80], a
    ld d, l
    add b
    ld l, [hl]
    add b
    cp l
    ld b, b
    ld a, a
    add b
    ld a, [hl+]
    push de
    sub c
    xor $5f
    nop
    ccf
    nop
    ld d, a
    nop
    rst $28
    nop
    db $dd
    nop
    rst $38
    nop
    xor d
    ld d, l
    ld [hl], a
    adc b
    xor d
    ld d, l
    db $f4
    dec bc
    ld [$f515], a
    ld a, [bc]
    xor d
    ld d, l
    db $f4
    dec bc
    xor d
    ld d, l
    ld [hl], b
    adc a
    jr nc, jr_000_320b

    db $10
    ldh a, [$88]
    ld a, b
    ld [$a8f8], sp
    ld e, b
    ld [$88f8], sp
    ld a, b
    db $10
    ldh a, [$62]
    ld e, l
    ret nz

    rst $38
    rst $38
    rst $38
    add c
    cp $bd
    ret nz

    add b
    ret nz

    adc d
    push af
    rst $38
    rst $38
    xor d
    ld d, l

jr_000_325b:
    nop
    rst $38
    rst $38
    rst $38
    rla
    add sp, $5f
    nop
    cp a
    nop
    xor $11
    rst $38
    rst $38
    xor d
    ld d, l
    nop
    rst $38

jr_000_326d:
    rst $38
    rst $38
    ld [hl], b
    adc a
    xor d
    ld d, l
    db $f4
    dec bc
    xor d
    ld d, l
    rst $38
    rst $38
    jr nz, jr_000_325b

    jr nc, jr_000_326d

    ldh a, [$f0]
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$90]
    ld [hl], b
    ldh a, [$f0]
    inc bc
    inc bc
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc bc
    inc bc
    ld e, l
    ld e, l
    ret z

    ret z

    ld c, b
    ld c, b
    rrca
    rrca
    ld [$4808], sp
    ld c, b
    ret z

    ret z

    dec e
    dec e
    rst $18
    rst $18
    adc b
    adc b
    adc d
    adc d
    adc [hl]
    adc [hl]
    adc d
    adc d
    adc b
    adc b
    adc b
    adc b
    rst $18
    rst $18
    sbc [hl]
    sbc [hl]
    and d
    and d
    jr nz, jr_000_32df

    ld e, $1e
    ld bc, $2101
    ld hl, $b1b1
    sbc [hl]
    sbc [hl]
    inc a
    inc a
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    inc a
    inc a
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, d
    ld h, d
    ld h, d
    inc a
    inc a
    rrca
    rrca
    inc b
    inc b
    inc b
    inc b

jr_000_32df:
    inc b
    inc b
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    ld c, $0e
    sbc a
    sbc a
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    adc a
    adc a
    add hl, bc
    add hl, bc
    ld [$1d08], sp
    dec e
    rrca
    rrca
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    db $10
    db $10
    db $10
    db $10
    sub b
    sub b
    rst $08
    rst $08
    dec c
    dec c
    sub e
    sub e
    and c
    and c
    and b
    and b
    and e
    and e
    and c
    and c
    sub c
    sub c
    ld c, $0e
    ld a, h
    ld a, h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cp h
    cp h
    inc h
    inc h
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [hl], a
    jr nz, jr_000_334b

    jr nc, jr_000_335d

    jr z, jr_000_3357

    inc h
    inc h
    ld a, $3e

Call_000_3333:
Jump_000_3333:
    ld hl, $2021
    jr nz, jr_000_33ab

    ld [hl], e
    jr jr_000_3353

    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$8808], sp
    adc b
    call c, $60dc
    ld h, b

jr_000_334b:
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_000_3353:
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_000_3357:
    ldh [$e0], a
    nop
    nop
    nop
    nop

jr_000_335d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $ff00
    rst $38
    ld bc, $7f81
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
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
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld e, $1e
    ld b, $06
    ld b, $06
    nop
    nop

jr_000_33ab:
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    adc b
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $00
    rst $00
    call z, Call_000_00cc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    ret c

    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2221
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp Jump_000_23c3


    inc hl
    nop
    nop
    nop
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
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, jr_000_3463

    db $10
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $8c8c
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc b
    adc b

jr_000_3463:
    ldh a, [$f0]
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    rst $00
    rst $00
    call z, $cccc
    call z, $cccc
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    call z, $cccc
    call z, $c6c6
    add $c6
    jp $43c3


    ld b, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld b, a
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    inc sp
    inc sp
    di
    di
    inc bc
    inc bc
    inc bc
    inc bc
    inc sp
    inc sp
    db $e3
    db $e3
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
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
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, $26
    ld b, e
    ld b, e
    inc bc
    inc bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    add [hl]
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
    add b
    add b
    ld b, b
    ld b, b
    ld c, $0e
    inc c
    inc c
    jr jr_000_3527

    jr nc, jr_000_3541

    ccf
    ccf
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld b, $06
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc bc
    inc bc
    nop
    nop

jr_000_3527:
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

jr_000_3541:
    add $c6
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    scf
    add hl, sp
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_000_35af

    call z, Call_000_00cc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_000_35bf

    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, d
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_35af:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_000_35cf

    sbc b
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_35bf:
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    ld h, $26
    ld bc, $0101
    ld bc, $0101

jr_000_35cf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add e
    add e
    add e
    add e
    add e
    add e
    add $c6
    jr c, jr_000_361d

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rra
    rra
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    dec e
    dec e
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    nop
    nop
    nop
    nop
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    nop
    nop
    nop
    nop
    add $c6
    cp $fe

jr_000_361d:
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, d
    ld h, d
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    jr nc, jr_000_366b

    jr nc, @+$32

    jr nc, jr_000_366f

    jr nc, jr_000_3671

    add hl, de
    add hl, de
    rrca
    rrca
    nop
    nop
    nop
    nop
    call z, $cccc
    call z, $c6c6
    add $c6
    add e
    add e
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    ld b, [hl]
    ld b, e
    ld b, e
    add b
    add b
    add b
    add b

jr_000_3661:
    inc b
    inc b

jr_000_3663:
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_366b:
    nop
    ld bc, $0201

jr_000_366f:
    ld [bc], a
    dec b

jr_000_3671:
    ld [bc], a
    dec b
    nop
    rlca
    nop
    inc bc
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_000_3661

    jr nz, jr_000_3663

    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0300
    ld b, $01
    rlca
    rlca
    dec c
    ld [bc], a
    rrca
    rrca
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ldh [$c0], a
    ldh a, [$e0]
    ld [hl], b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    db $10
    dec [hl]
    jr nz, @+$2c

    jr nz, jr_000_36cd

    stop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ret c

    jr z, jr_000_3730

    inc d
    db $f4
    inc c
    ld l, b
    jr jr_000_36ca

jr_000_36ca:
    nop
    nop
    nop

jr_000_36cd:
    nop
    nop
    rrca
    rrca
    dec d
    rra
    ld a, [hl+]
    ccf
    scf
    ccf
    ld a, [de]
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    cp h
    db $fc
    db $fc
    db $fc
    xor b
    ld hl, sp+$7b
    ld a, b
    ld d, l
    ld b, b
    ld l, e
    ld b, b
    ld d, l
    ld b, b
    ld a, a
    ld h, b
    ld d, $11
    ccf
    jr nz, jr_000_3722

    dec [hl]
    cp $1e
    ld l, d
    ld d, $f2
    ld c, $aa
    ld d, [hl]
    sub $2e
    xor b
    ld e, b
    call nz, $a43c
    ld e, h
    ld a, l
    ld a, a
    ld l, d
    ld a, a
    ld d, a
    ld a, a
    ld l, d
    ld a, a
    ld a, l
    ld a, a
    dec de
    rra
    scf
    ccf
    ld a, [hl+]
    ccf
    cp $fe
    cp d
    cp $fe
    cp $ae
    cp $fe

jr_000_3722:
    cp $b8
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_3730:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc d
    dec de
    ld a, a
    ld a, a
    rst $38
    add b
    xor d
    push de
    ld a, a
    ld a, a
    rst $38
    rst $38
    add b
    nop
    ld d, l
    nop
    ld [$fef8], sp
    cp $f1
    rrca
    xor c
    ld d, a
    cp $fe
    rst $38
    rst $38
    ld [$5500], sp
    nop
    nop
    nop
    nop
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
    rra
    rra
    ld a, a
    ld a, a
    rst $10

jr_000_376e:
    rst $38
    xor d
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    dec b
    rst $38
    xor d
    rst $38
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    xor a
    rst $38
    cp $fe
    rst $38
    rst $38
    ld d, a
    rst $38
    xor d
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
    add b
    add b
    ret nz

    ret nz

    ld b, $04
    dec b
    inc b
    ld b, $04
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    jr nz, jr_000_37ab

jr_000_37ab:
    ld d, c
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    call nc, $0280
    nop
    dec d
    nop
    nop
    nop
    ld d, l
    nop
    ld [bc], a
    nop
    dec d
    nop
    nop
    nop
    ld d, l
    ld bc, $2020
    ld h, b
    jr nz, jr_000_376e

    jr nz, jr_000_3830

    jr nz, jr_000_3812

    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    ld de, $aaff
    rst $38
    dec b
    rst $38
    xor d
    rst $38
    ld de, $aaff
    rst $38
    ld bc, $aaff
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [$a0], a
    ldh [$c0], a

jr_000_3812:
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    and b
    add b
    push de
    add b
    ld b, b
    ld b, b
    ld d, l
    ld b, b
    ld [hl+], a
    jr nz, jr_000_3859

    jr nz, jr_000_3850

    jr nz, @+$37

    jr nz, jr_000_382d

    ld bc, $0155

jr_000_382d:
    ld a, [bc]
    ld [bc], a
    ld d, [hl]

jr_000_3830:
    ld [bc], a
    inc h
    inc b
    ld d, h
    inc b
    xor h
    inc b
    ld d, h
    inc b
    sub c
    rst $38
    xor d
    rst $38
    ld b, l
    ld a, a
    ld l, d
    ld a, a
    ld hl, $2a3f
    ccf
    ld hl, $2a3f
    ccf
    ld e, l
    rst $38
    xor e
    rst $38
    ld d, [hl]
    cp $aa

jr_000_3850:
    cp $5c
    db $fc
    xor h
    db $fc
    ld d, h
    db $fc
    xor h
    db $fc

jr_000_3859:
    dec sp
    jr nz, @+$37

    jr nz, jr_000_389c

    jr nz, @+$17

    db $10
    rra
    db $10
    dec d
    db $10
    rra
    db $10
    dec e
    db $10
    cp h
    inc b
    ld d, h
    inc b
    db $fc
    inc b
    ld e, b
    ld [$08f8], sp
    ld a, b
    ld [$08f8], sp
    ld hl, sp+$08
    ld sp, $2a3f
    ccf
    dec h
    ccf
    ld a, [de]
    rra
    ld de, $1a1f
    rra
    dec d
    rra
    ld a, [de]
    rra
    ld e, h
    db $fc
    xor h
    db $fc
    ld d, h
    db $fc
    xor b
    ld hl, sp+$58
    ld hl, sp-$58

jr_000_3894:
    ld hl, sp+$58
    ld hl, sp-$58
    ld hl, sp+$1f
    db $10
    rra

jr_000_389c:
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    ld e, $11
    rra
    db $10
    ld a, [de]
    dec d
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $18
    ld hl, sp+$08
    xor b
    ld e, b
    ld de, $1a1f
    rra
    dec d
    rra
    ld a, [de]
    rra
    ld de, $1a1f
    rra
    dec d
    rra
    ld a, [de]
    rra
    ld e, b
    ld hl, sp-$58
    ld hl, sp+$58
    ld hl, sp-$58
    ld hl, sp-$28
    ld hl, sp-$58
    ld hl, sp+$78
    ld hl, sp-$58
    ld hl, sp+$1d
    ld [de], a
    ld a, [de]
    dec d
    rla
    jr jr_000_38fa

    dec d
    dec d
    ld a, [de]
    ld a, [de]
    dec d
    ld sp, $2a2e
    dec [hl]
    ret c

    jr z, jr_000_3894

    ld e, b
    ld a, b
    adc b
    xor b
    ld e, b
    ret c

    jr z, jr_000_389c

    ld e, b
    ld d, h
    xor h
    xor h
    ld d, h
    dec d

jr_000_38fa:
    rra
    ld a, [de]
    rra
    dec d
    rra
    ld a, [de]
    rra
    dec d
    rra
    ld a, [de]
    rra
    scf
    ccf
    ld a, [hl+]
    ccf
    ret c

    ld hl, sp-$58
    ld hl, sp+$78
    ld hl, sp-$58
    ld hl, sp-$08
    ld hl, sp-$58
    ld hl, sp-$04
    db $fc
    xor h
    db $fc
    nop
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
    ld bc, $0707
    inc h
    dec sp
    ld l, d
    ld d, l
    ld b, b
    ld a, a
    xor d
    push de
    add b
    rst $38
    adc b
    ld [hl], a
    nop
    rst $38
    rst $38
    rst $38
    ld b, h
    cp h
    xor d
    ld d, [hl]
    ld [bc], a
    cp $ab
    ld d, l
    ld bc, $88ff
    ld [hl], a
    nop
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
    add b
    add b
    add b
    add b
    ldh [$e0], a
    dec a
    ccf
    ld l, d
    ld a, a
    ld d, a
    ld a, a
    xor d
    rst $38
    db $dd
    rst $38
    xor e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp d
    cp $fe
    cp $af
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    rst $38
    rst $38
    ld d, l
    nop
    dec bc
    nop
    push de
    add b
    add e
    add b
    dec d
    nop
    ld a, [bc]
    nop
    ld d, l
    nop
    rst $38
    rst $38
    ld l, d
    dec d
    rst $38
    nop
    ld a, e
    dec b
    db $fd
    inc bc
    ld l, d
    dec d
    rst $38
    nop
    ld a, d
    dec b
    ldh [$e0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    rlca
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0301

Jump_000_39c6:
    inc bc
    ld b, $07
    rst $38
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    ld a, a
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld b, $04
    dec b
    inc b
    rrca
    ld [$080d], sp
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec hl
    nop

jr_000_3a0b:
    ld d, l
    nop
    rst $38
    nop
    ld d, a
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $00ff
    xor d
    ld d, l
    db $fc
    inc bc
    ld l, d
    dec d
    db $fd
    ld [bc], a
    xor d
    ld d, l
    call c, $aa23
    ld d, l
    ret nc

    cpl
    xor d
    ld d, l
    jr nz, jr_000_3a0b

    and b
    ld h, b
    db $10
    ldh a, [$90]
    ld [hl], b
    db $10
    ldh a, [$a0]
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    dec b
    rlca
    ld b, $07
    dec c
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld b, $07
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld e, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    db $dd
    rst $38
    xor d
    rst $38
    ld [hl], a
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    xor [hl]
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ldh [$e0], a
    and b
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    rlca
    rlca
    rrca
    inc c
    rrca
    inc c
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
    rst $38
    rst $38
    ld [hl], a
    nop
    rst $38
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
    rst $38
    rst $38
    ld [$f415], a
    dec bc

jr_000_3a9f:
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
    ldh [$e0], a
    or b
    ld [hl], b
    jr nc, jr_000_3a9f

    ldh [$e0], a
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
    ld c, $0f
    inc c
    rrca
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
    rst $38
    rst $38
    xor d
    rst $38
    dec d
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
    rst $38
    rst $38
    xor e
    rst $38
    ld a, a
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
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3af9:
    ld a, l
    add e
    ld l, a
    ld a, h
    adc d
    ld h, a
    ret


Call_000_3b00:
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ret


Call_000_3b07:
    ld c, l
    ld b, h
    ld hl, $0000
    ld a, $0f

jr_000_3b0e:
    sla e
    rl d
    jr nc, jr_000_3b15

    add hl, bc

jr_000_3b15:
    add hl, hl
    dec a
    jr nz, jr_000_3b0e

    or d
    ret z

    add hl, bc
    ret


Call_000_3b1d:
    ld a, h
    and $80
    ld b, a
    xor d
    and $80
    srl a
    or b
    ld [$c3b9], a
    ld a, d
    rla
    jr nc, jr_000_3b34

    xor a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_000_3b34:
    ld a, h
    rla
    jr nc, jr_000_3b3e

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_000_3b3e:
    call Call_000_3b5c
    ret c

    ld a, [$c3b9]
    bit 6, a
    jr z, jr_000_3b4f

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_000_3b4f:
    ld a, [$c3b9]
    bit 7, a
    ret z

    xor a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a
    ret


Call_000_3b5c:
    ld a, e
    or d
    jr nz, jr_000_3b6e

    ld hl, $0000
    ld d, h
    ld e, l
    scf

jr_000_3b66:
    ldh a, [rBGP]
    cpl
    ldh [rBGP], a
    jr jr_000_3b66

    ret


jr_000_3b6e:
    ld c, l
    ld a, h
    ld hl, $0000
    ld b, $10
    or a

jr_000_3b76:
    rl c
    rla
    rl l
    rl h
    ld [$c3b6], a
    ld a, l
    ld [$c3b7], a
    ld a, h
    ld [$c3b8], a
    ld a, l
    sbc e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ccf
    jr c, jr_000_3b99

    ld a, [$c3b7]
    ld l, a
    ld a, [$c3b8]
    ld h, a

jr_000_3b99:
    ld a, [$c3b6]
    dec b
    jr nz, jr_000_3b76

    ld e, l
    ld d, h
    rl c
    ld l, c
    rla
    ld h, a
    or l
    ret nz

    inc hl
    ret


Jump_000_3baa:
    ld hl, $0000
    ret nc

    dec hl
    ret


    ld a, h
    or l
    jp z, Jump_000_3baa

    scf
    jp Jump_000_3baa


    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    or l
    pop hl
    jp nz, Jump_000_3baa

    scf
    jp Jump_000_3baa


    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    or l
    pop hl
    jp z, Jump_000_3baa

    scf
    jp Jump_000_3baa


Call_000_3bd7:
    ld a, h
    xor d
    rla
    jr nc, jr_000_3be1

    ld a, h
    rla
    jp Jump_000_3baa


jr_000_3be1:
    ld a, l
    sub e
    ld a, h
    sbc d
    jp Jump_000_3baa


    ld a, h
    xor d
    rla
    jr nc, jr_000_3bf2

    ld a, h
    rla
    jp Jump_000_3baa


jr_000_3bf2:
    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    jr c, jr_000_3c01

    or l
    jr z, jr_000_3c01

    pop hl
    jp Jump_000_3baa


jr_000_3c01:
    pop hl
    scf
    jp Jump_000_3baa


Call_000_3c06:
    ld a, h
    xor d
    rla
    jr nc, jr_000_3c10

    ld a, d
    rla
    jp Jump_000_3baa


jr_000_3c10:
    ld a, e
    sub l
    ld a, d
    sbc h
    jp Jump_000_3baa


    ld a, h
    xor d
    rla
    jr nc, jr_000_3c21

    ld a, d
    rla
    jp Jump_000_3baa


jr_000_3c21:
    push de
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    jr c, jr_000_3c30

    or e
    jr z, jr_000_3c30

    pop de
    jp Jump_000_3baa


jr_000_3c30:
    pop de
    scf
    jp Jump_000_3baa


    ld a, h
    rla
    ret nc

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ret


    ld a, h
    or l
    jr z, jr_000_3c4f

    rl h
    jr c, jr_000_3c4b

    ld hl, $0001
    ret


jr_000_3c4b:
    ld hl, $ffff
    ret


jr_000_3c4f:
    ld hl, $0000
    ret


    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    ret


    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ret


jr_000_3c61:
    call Call_000_0d23
    ld a, [$c310]
    cp $08
    jr nz, jr_000_3c61

    ret


    push af
    push bc
    push de
    push hl
    push hl
    push bc
    pop hl
    pop bc
    call Call_000_3c7c
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_3c7c:
    ld de, $0000
    ld a, b
    rla
    jr nc, jr_000_3c8c

    ld e, $ff
    xor a
    sub c
    ld c, a
    ld a, $00
    sbc b
    ld b, a

jr_000_3c8c:
    ld a, c
    sub $10
    ld c, a
    ld a, b
    sbc $27
    ld b, a
    jr c, jr_000_3c99

    inc d
    jr jr_000_3c8c

jr_000_3c99:
    push de
    ld d, $00
    ld a, c
    add $10
    ld c, a
    ld a, b
    adc $27
    ld b, a

jr_000_3ca4:
    ld a, c
    sub $e8
    ld c, a
    ld a, b
    sbc $03
    ld b, a
    jr c, jr_000_3cb1

    inc d
    jr jr_000_3ca4

jr_000_3cb1:
    push de
    ld d, $00
    ld a, c
    add $e8
    ld c, a
    ld a, b
    adc $03
    ld b, a

jr_000_3cbc:
    ld a, c
    sub $64
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    jr c, jr_000_3cc9

    inc d
    jr jr_000_3cbc

jr_000_3cc9:
    push de
    ld d, $00
    ld a, c
    add $64
    ld c, a
    ld a, b
    adc $00
    ld b, a

jr_000_3cd4:
    ld a, c
    sub $0a
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    jr c, jr_000_3ce1

    inc d
    jr jr_000_3cd4

jr_000_3ce1:
    push de
    ld a, c
    add $0a
    push af
    ld b, $05

jr_000_3ce8:
    pop af
    add $5f
    ld [hl-], a
    dec b
    jr nz, jr_000_3ce8

    ld a, $92
    inc e
    jr z, jr_000_3cf6

    ld a, $07

jr_000_3cf6:
    ld [hl], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
