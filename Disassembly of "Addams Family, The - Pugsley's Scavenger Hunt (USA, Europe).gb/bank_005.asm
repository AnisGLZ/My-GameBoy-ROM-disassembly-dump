; Disassembly of "Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    stop
    nop
    nop
    ld a, [bc]
    add a
    ld hl, $276f
    jp $0102


    ld e, $ff
    rla
    nop
    nop
    nop
    nop
    ccf
    ld a, a
    ld b, b
    ccf
    ld e, a
    ccf
    jr nc, jr_005_4071

    cpl
    ld bc, $2f53
    ld d, d
    ld l, [hl]
    dec l

jr_005_4028:
    rrca

Jump_005_4029:
    ld [hl], b
    inc de
    rla
    jr @+$01

    ld [bc], a
    inc hl
    db $fc
    ld l, h
    di
    db $d3
    cp h
    nop
    rrca
    ldh a, [rIE]
    rlca
    ld hl, sp+$78
    rlca
    add a
    add a
    ld a, b
    ld a, a
    add b
    jr c, jr_005_4072

    rrca
    rrca
    nop
    rst $38
    ldh [$1f], a
    ld e, $e1
    pop hl
    ld e, $fe
    ld c, c
    ld bc, $200f
    cpl
    call nz, Call_000_363f
    jr jr_005_4028

    srl l
    rrca
    cp $fe
    rlca
    ld [bc], a
    cp $fa
    cp $0a
    nop
    ld bc, $feca
    ld c, d
    cp [hl]
    ld d, c
    ld l, $81
    ld d, l
    ld d, e
    ld l, $75

jr_005_4071:
    ld d, h

jr_005_4072:
    cpl
    ld h, l
    rra
    ld l, c
    rra
    ld l, d
    rra
    ld l, a
    ret c

    or a
    ld l, b
    cp $a0
    ld a, l
    ret nz

    cp d
    ld b, c
    ld [hl], d
    add l
    ld h, [hl]
    adc l
    sub $0d
    ldh a, [rP1]
    adc c
    rlca
    ld d, c
    cpl
    ld sp, $b0ef
    ld bc, $000f
    ld [bc], a
    sub c
    ld h, b
    add [hl]
    ld a, b
    adc h
    ld a, e
    jp nz, $f601

    dec de
    db $e3
    db $ed
    ld d, $7b
    dec b
    cp [hl]
    inc bc
    dec e
    jp nz, $c06f

    ld h, a
    ret nc

    ld l, e
    ret nc

    adc d
    ld a, [hl]
    add b
    ld d, l

jr_005_40b3:
    ld l, d
    cp [hl]
    sbc d
    ld a, [hl]
    ld e, d
    cp [hl]
    pop bc
    ld e, e
    xor d
    ld e, [hl]
    and [hl]
    ld e, [hl]
    add h
    ld d, c
    ld c, d
    ccf
    ld d, [hl]
    ret nz

    ld bc, $3f55
    ld d, e
    dec a
    add $38
    dec e
    and [hl]
    ld bc, $3886
    dec a
    ld b, [hl]
    ld bc, $1ec6
    cp l
    add [hl]
    db $fd
    ld [bc], a
    ld e, c
    sub e
    ld bc, $02d2
    ld e, c
    ld bc, $6301
    ret c

    ld h, l
    ret c

    ld h, c
    call c, Call_000_0193
    ld h, d
    jr @+$03

    sub $2e
    ld bc, $2ed2
    inc l
    ld [$0116], a
    inc e
    ld d, d
    dec a
    ld d, e
    ld bc, $0582
    ld d, h
    sbc b

Call_005_40ff:
    ld h, e
    jp hl


    ret


    db $ed
    add $03
    cp e
    call nz, Call_005_505b
    ld b, [hl]
    ld h, e
    ld h, d
    call c, Call_000_06f7
    ld bc, $02a4
    add hl, sp
    ld bc, $561e
    ccf
    ld d, [hl]
    dec b
    sbc a
    ld a, d
    ld b, [hl]
    inc bc
    ld bc, $9f18
    add c
    adc l
    ld a, d
    jr nz, jr_005_40b3

    ld a, b
    ld bc, $e68f
    ld bc, $b80b
    ld h, e
    adc d
    inc b
    ld d, [hl]
    jr nc, @-$44

    ld a, b
    sub d
    ld a, b
    jp z, Jump_005_7630

    nop
    dec bc
    or d
    ld c, h
    or a
    ld h, b
    add l
    ld b, $00
    rst $38
    add b
    ld a, a
    sub c
    ld bc, $789e
    ld bc, $0103
    inc hl
    db $fd
    inc bc
    ld a, e
    ret nc

    inc b
    ld bc, $8db7
    sbc a
    dec b
    ld bc, $0100
    and b
    xor a
    ld e, $ff
    and h
    inc c
    db $d3
    ld d, [hl]
    inc a
    cpl
    ld [hl], c
    rlca
    ld bc, $784a
    cp [hl]
    ld b, $01
    ld d, d
    cpl
    pop af
    ld b, $01

jr_005_4170:
    cp h
    jp nz, Jump_000_06e9

    ld bc, $60a4
    ld c, l
    ld a, e
    rst $38
    ld a, [bc]
    ld l, e
    nop
    ld b, c
    ld c, e
    cp a
    ld c, b
    cp a
    ld c, a
    cp a
    ld b, b
    and $01
    jp nz, Jump_000_13d9

    ld h, c
    ld [hl], b
    ld b, l
    ld bc, $367f
    ld bc, $5100
    nop
    jp nc, Jump_000_12af

    rst $28
    ld a, [c]
    rst $28
    ld [bc], a
    rst $38
    add $01
    cp $01
    rra
    nop
    cp h
    ld b, d
    inc a
    ld [bc], a
    inc e
    ld [bc], a
    inc c
    ld [bc], a
    ld [hl], d
    db $fc
    ld bc, $bf42
    ld b, b
    ccf
    inc bc
    add hl, hl
    ld [hl], a
    nop
    ld [hl], e
    inc e
    dec [hl]
    ld bc, $5571
    ld d, b
    ld a, a
    ld c, e
    ld c, a
    or b
    add $55
    ld c, e
    cp h
    ld e, l
    call nz, $fe0f
    rst $38
    inc c
    dec sp
    ld a, [c]
    rrca
    ld b, l
    jp nc, $9fe4

    ld h, d
    ld [bc], a
    db $fc
    ld [bc], a
    ld b, a
    ld bc, $003c
    sbc a
    db $e3
    inc e
    jp $853e


    ld a, a
    jr nc, jr_005_4170

    ld a, a
    ld [hl], $7f
    cp [hl]
    inc a
    inc e
    rst $18
    add b
    ld a, a
    or e
    ld [de], a
    jp $c0bf


    add hl, sp
    ld bc, $ab80
    pop bc
    di
    add b
    pop af
    nop
    nop
    ld bc, $00f9
    inc bc
    db $fc
    rst $10
    ld c, h
    ld [$3e5f], sp
    adc h
    cp [hl]
    call $d9dd
    call $ebeb
    rst $30
    rst $30
    sub b
    cpl
    adc a
    ld a, a
    sbc a
    ld a, a
    ld [$3edf], sp
    cp [hl]
    ld b, c
    ld b, $d3
    ld a, h
    add e
    rst $08
    ld a, $06
    jp nz, $8036

    ret nz

    and b
    ld l, l
    ld b, c
    ld c, l
    sub h
    rrca
    ld bc, $9301

Call_005_422d:
    ld b, e
    nop
    ld c, l
    rra
    ld a, a
    ld e, [hl]
    ccf
    sbc [hl]
    cp [hl]
    cp h
    ld e, c
    sbc [hl]
    ld b, e
    add hl, sp
    ld l, a
    ld [de], a
    jr nz, jr_005_428f

    ccf
    ld c, [hl]
    ld bc, $2f44
    ld b, $0a
    or $96
    ld bc, $1710
    ld e, a
    ccf
    rst $20
    sub $00
    ld c, $17
    ld a, [$02f6]
    ld b, d
    rst $00
    rst $38
    ld bc, $6f3f
    rra
    ld [hl], b
    rrca
    daa
    ld bc, $04cc
    ld l, a
    inc l
    ld bc, $b617
    ld c, a
    or b
    rla
    ld a, [c]
    ld c, $d0
    ld h, e
    ccf
    ld e, h
    ld c, h
    ld [hl], d
    nop
    sub e
    jr nz, @+$29

    ld c, c
    ld c, [hl]
    sub d
    sbc l
    dec h
    cp [hl]
    ld c, [hl]
    ld [hl], a
    sub a
    ld h, a
    xor a
    rst $28
    ld c, c
    ldh a, [$e5]
    sbc d
    sbc d
    dec a
    dec a
    cp d
    ld a, [hl-]

jr_005_428b:
    ld d, b
    ld d, b
    ld e, b
    rst $18

jr_005_428f:
    scf
    cpl
    rst $30
    ld hl, sp+$0e
    rrca
    xor a
    xor a
    xor [hl]
    xor [hl]
    xor [hl]
    inc bc
    reti


    ld b, $06
    inc e
    cp $e1
    ld sp, hl
    ld [hl-], a
    add b
    ret


    jr nz, jr_005_428b

    sub b
    ld [hl], d
    ld c, b
    add hl, sp
    inc h
    ld a, l
    ld a, [c]
    xor $e8
    add $e5
    xor e
    ld l, e
    ret nz

    ld b, b
    db $dd
    ld e, l
    ld a, [hl]
    rst $38
    cp d
    cp e
    sub c
    sub e
    xor c
    xor e
    inc bc
    add [hl]
    ld [hl], c
    rst $20
    ld h, c
    pop hl
    ld b, e
    rst $20
    db $e3
    db $eb
    ld sp, hl
    ei
    ld sp, hl
    db $fd
    db $fc
    db $fd
    ld a, h
    cp $78
    ret nz

    adc [hl]
    rst $38
    ld a, [$efff]
    rst $30
    dec c
    add a
    adc a
    adc a
    rst $08
    ld c, b
    ld [hl], c
    ld a, $7f
    push de
    sub $b3
    or d
    ld c, e
    ld c, d
    ld a, $bf
    ld a, a
    rst $38
    sbc l
    db $dd
    add c
    pop bc
    pop bc
    inc bc
    cp c
    cp e
    add c
    add e
    or b
    inc bc
    inc hl
    ld a, h
    db $fd
    ld b, c
    inc bc
    pop bc
    ld d, d
    sub $2d
    db $ed
    ld a, [hl]
    dec h
    push de
    db $fd
    ld d, e
    adc c
    ld e, a
    rst $38
    ld b, $23
    sbc [hl]
    rst $38
    ld a, [hl]
    ld a, a
    rst $18
    inc e
    rra
    rra
    ld l, a
    nop
    ld [hl], $9a
    sbc a
    dec h
    ld c, l
    add [hl]
    inc sp
    inc bc
    jr nc, @+$5f

    db $dd
    ld [hl], c
    dec de
    ld a, [de]
    ld h, e
    jr jr_005_438a

    sub l
    sub [hl]
    ld a, a
    sub [hl]
    db $76
    cp b
    ldh [$4e], a
    cp a
    ld h, h
    sbc h
    ld [hl-], a
    ld c, [hl]
    sbc c
    daa
    ld c, h
    sub e
    inc hl
    ld c, h
    daa
    ccf
    sbc b
    sbc a
    cp c
    cp e
    cp e
    ld a, [hl-]
    ld a, [hl-]
    dec [hl]
    sbc c
    sbc c
    ret


    rst $00
    rrca
    rst $38
    rst $20
    rst $38
    inc de
    di
    inc d
    dec d
    db $76
    ld [hl], h
    cp d
    cp d
    db $db
    db $db
    ld e, $1f

Call_005_4359:
    ld l, $cd
    db $76
    dec a
    ld h, h
    xor [hl]
    xor b
    db $dd
    ret nc

    cp c
    and d
    ld [hl], d
    call nz, $88e4
    ret


    ld [hl-], a
    ld [hl-], a
    call z, $8b01

jr_005_436e:
    inc de
    xor d
    nop
    sub [hl]
    ld b, h
    cp d
    nop
    cp $ee
    ld de, $9108
    sbc b
    ld h, [hl]
    ld bc, $a1fd
    ld b, l
    ld b, h
    jr c, jr_005_43a3

    sbc b
    add b
    ret nz

    ld [bc], a
    ld de, $0008

jr_005_438a:
    ret z

    dec e
    xor [hl]
    dec b
    ld a, [de]
    inc a
    inc a
    add $12

jr_005_4393:
    ld de, $0609
    daa
    jr jr_005_43f8

    jr nz, jr_005_4393

    ld hl, sp-$3b
    jp Jump_000_1c2b


    sbc a
    ld h, b
    dec hl

jr_005_43a3:
    ei
    jr z, jr_005_436e

    ldh a, [rSC]
    nop
    ldh [$e0], a
    rla
    rlca
    rrca
    rst $30
    ld a, b
    rst $38
    add b
    call z, Call_005_7305
    adc $00
    cp $80
    cp h
    cp d
    ld a, a
    cp a
    ret nz

    ld sp, hl
    ld b, $8f
    sub b
    rra
    db $fc
    db $fc

Jump_005_43c5:
    ld [bc], a
    db $e3
    pop hl
    rla
    ld c, $0f
    ldh a, [rNR24]
    rrca
    ld b, e
    rra
    bit 0, e
    inc c
    daa
    ld a, [$fb01]
    daa
    ld bc, $cbc7
    inc sp
    push af
    add hl, bc
    db $fd
    ld bc, $b129
    jp nz, $fd11

    nop
    db $fd
    adc [hl]
    add hl, bc
    rst $38
    ld b, $03
    ld hl, sp+$00
    ld a, l
    add c
    ld bc, $3b2e
    jp $b719


    ld b, a
    adc a

jr_005_43f8:
    ld l, a
    ld c, a
    cpl
    ld b, a
    scf
    daa
    rla
    add sp, $00
    ld bc, $c768
    ld bc, $2028
    ld bc, $1f00
    db $10
    ccf
    jr nz, jr_005_442d

    ld bc, $1812
    rlca
    rlca
    inc bc
    rrca
    ld a, a
    ld l, b
    rla
    ld [hl], d
    dec c
    jp nz, $0303

    adc l
    ld l, b
    sub a
    ret z

    inc bc
    add e
    rra
    sub $ff
    ld e, $42
    ld c, l
    or d
    ld c, $03
    ld d, l

jr_005_442d:
    db $fd
    ld [hl], c
    jr jr_005_4490

    or d
    nop
    jp hl


    ld c, $03
    ld d, h
    jr c, jr_005_43f8

    nop
    inc a
    ld l, l
    ld [bc], a
    ld c, $03
    ld a, [bc]
    ldh [rNR34], a
    xor a
    rst $38
    ld b, d
    ld e, $bf
    sub b
    ld l, a
    ld c, $03
    ld [hl+], a
    db $fd
    ld [bc], a
    and e
    inc d
    ld a, c
    rst $38
    or h
    add $0f
    inc bc
    add [hl]
    ld a, c
    rra
    inc bc
    call nc, Call_000_0afe
    db $f4
    ld h, $d8
    pop de
    ld c, $03
    ld d, e
    rrca
    ld d, b
    cpl
    ld c, $c5
    add b
    add b
    cp a
    ld b, $01
    ret nz

    ret nz

    ret c

    add $01
    ld b, l
    ld bc, $3567
    ld d, b
    rl d
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    ld c, [hl]
    rst $38
    or b
    ld a, e
    db $10
    inc sp
    rst $00
    scf
    ld bc, $b0fe
    ld c, d
    db $fd
    ld bc, $c001
    ld [bc], a
    db $fd
    inc bc

jr_005_4490:
    inc bc
    inc de
    dec bc
    ld hl, $1b03
    inc sp
    db $e3
    inc b
    ld bc, $1a22
    dec a
    ld bc, $0362
    ld bc, $330f
    inc b
    add hl, de
    ld bc, $1b23
    ld bc, $e063
    inc bc
    ld bc, $0a74
    ld [hl], d
    inc c
    inc bc
    inc [hl]
    ld [$1c62], sp
    ld c, h
    ld a, $18
    ld bc, $3e40
    rlca
    inc a
    nop
    ld [hl], $6c
    ld e, $01
    ld de, $0380
    ld a, [hl]
    nop
    jr @-$1e

    adc e
    ld b, b
    add b
    ldh [rNR33], a
    nop
    ld [$80f0], sp
    cp d
    nop
    db $10
    ld [$1008], sp
    jr nz, @-$1e

    ld bc, $1060
    ld [hl], b
    ld b, $00
    ld h, b
    nop
    ld h, c
    ld bc, $1c01
    ld b, e
    inc bc
    ld hl, sp+$00
    ld d, c
    ldh a, [rP1]
    ldh [$36], a
    nop
    rst $00
    or e
    nop
    ld h, a
    rst $10
    inc sp
    ld a, a
    inc d
    nop
    ccf
    nop
    ld d, c
    rra
    nop
    rrca
    ld [hl], $00
    cp l
    ld c, $1d
    ld bc, $047a
    adc [hl]
    ld de, $3d08
    pop af
    ldh a, [$f2]
    inc bc
    inc bc
    push af
    ldh a, [$f5]
    ld hl, sp-$06
    pop hl
    ld [bc], a
    ld a, a
    db $fc
    call z, Call_000_1d00
    ld sp, hl
    ld h, c
    ld hl, sp+$1b
    call nz, $02c1
    sbc c
    ld l, $03
    db $f4
    ld bc, $1959
    add b
    push de
    pop bc
    ld bc, $7fa1
    and e
    ld a, a
    sub e
    ld a, a
    add [hl]
    adc $01
    xor b
    xor a
    cp $c1
    cp $73
    add c
    inc bc
    jr c, jr_005_4543

    ld h, c

jr_005_4543:
    ld bc, $0e8c
    ld a, a
    adc a
    ld a, a
    sbc b
    daa
    ld bc, $d0bc
    ld h, c
    ld sp, $f1fe
    cp $70
    add hl, de
    ld bc, $fe3d
    ld [hl], e
    ld bc, $e301
    inc b
    rst $38
    ld [hl], b
    ld c, b
    sbc h
    nop
    ldh a, [rP1]
    ld hl, sp-$19
    ldh a, [$cf]
    ldh [$9f], a
    ret nz

    ccf
    rst $00

jr_005_456d:
    inc l
    nop
    rra
    ld d, c
    rla
    adc e
    ld c, [hl]
    db $fc
    ld [bc], a
    sub a
    ld hl, sp+$05
    pop af
    dec bc
    db $e3
    rla
    rst $00
    cpl
    rst $08
    rst $18
    rra
    rst $18
    ld a, a
    rra
    ld a, a
    ld h, $7f
    rrca
    ld a, a
    add hl, bc
    ld b, $07
    db $10
    ld a, a
    jr nc, jr_005_45b4

    db $d3
    ld hl, $0138
    sbc a
    ld bc, $c7df
    rlca
    rra
    rst $18
    adc a
    ld b, $01
    db $db
    inc h
    inc c
    inc c
    ld bc, $24da
    ret c

    ld bc, $0c20
    ret nc

    jr nz, jr_005_456d

    jr nz, jr_005_4625

    ldh a, [$e7]
    ld a, b
    db $fc
    inc bc

jr_005_45b4:
    ld c, $00
    rrca
    dec a
    nop
    ld bc, $0f03
    jr nz, jr_005_45ed

    ld e, e
    inc h
    dec de
    ret nz

    ld bc, $0b04
    inc b
    inc bc
    inc b
    inc e
    ret nz

jr_005_45ca:
    nop
    ret nz

    cpl
    ld a, c
    add b
    ld bc, $0333
    ret


    ld bc, $a15e
    ld b, [hl]
    nop
    sbc a

jr_005_45d9:
    or l
    ld e, h
    nop
    jr nc, @+$51

    add b
    cpl
    ret nz

    add e
    ld [hl], b
    ret z

    jr nc, jr_005_45ca

    jr jr_005_45d9

    inc c
    ld bc, $0cf2
    db $f4

jr_005_45ed:
    ld c, $0b
    ld hl, sp+$07
    rst $08
    ld h, e
    ld d, a
    add hl, de

jr_005_45f5:
    rra
    add b
    rla
    sub $60
    rra
    ld [$0748], sp
    ld l, [hl]
    ld bc, $3003
    jr z, jr_005_4614

    inc h
    jr @+$33

    inc c
    add b
    ld c, c
    inc b
    ei
    jr jr_005_45f5

    or d
    rra
    ld bc, $480f
    add a

jr_005_4614:
    ld l, $c1
    ld h, l
    ccf
    add [hl]
    rra
    ret z

    rlca
    jr nz, @+$62

    db $10
    ld bc, $908f
    rrca
    jr jr_005_4685

jr_005_4625:
    rlca
    rra
    inc l
    jp $7380


    ld bc, $33c8
    db $e4
    dec de
    ldh a, [rIF]
    rra
    inc bc
    ld l, a
    nop
    ld l, a
    ld [$3085], sp
    ld c, b
    jr nc, jr_005_469d

    ld c, a
    ld bc, $0c32
    ld [hl], h
    dec bc
    ld [de], a
    ld a, b
    rlca
    ld c, a
    ld h, [hl]
    ld c, a
    db $dd
    rrca
    ld bc, $7f85
    sbc [hl]
    ccf
    inc b
    rra
    ld a, c
    inc e
    rlca
    xor a
    inc c
    rst $08
    rrca
    inc b
    ld b, e

Call_005_465b:
Jump_005_465b:
    xor a
    rra
    jp $6f02


    jp z, Jump_000_0e31

    or a
    ldh a, [$e0]
    ld [bc], a
    xor a
    db $fc
    cp $e0
    pop af
    inc l
    rlca
    rrca
    dec c
    xor $8f
    ld e, h
    xor b
    push de
    db $d3
    ld [bc], a
    nop
    dec e
    add b
    pop bc
    ld l, $1e
    cp $fe
    ld b, [hl]
    ld c, [hl]
    add [hl]
    ld l, $3d
    ld e, b

jr_005_4685:
    rst $38
    ldh a, [$f8]
    jp $8f87


    rrca
    ld c, l
    ld c, a
    ld hl, sp-$04
    pop af
    ei
    jp Jump_000_0ce6


    ld e, $7d
    cp $df
    inc sp
    rst $38
    ei
    ld [hl-], a

jr_005_469d:
    rst $38
    rrca
    pop bc
    rra
    pop hl
    inc de
    ccf
    scf
    ld a, a
    inc a
    ld a, a
    add b
    jr nc, @-$78

    add [hl]
    or d

jr_005_46ad:
    or [hl]
    dec b
    dec l
    ld a, e
    jp $8fff


    rst $38
    ld [bc], a
    ld bc, $d8d8
    ld c, b
    ret c

    nop
    inc h
    ld a, a
    adc e
    dec bc
    rrca
    adc a
    rlca
    ld h, $43
    ld bc, $4203
    add c
    jp hl


    pop af
    db $f4
    rst $38
    ret nc

    ld hl, sp-$18
    db $fc
    db $fc
    ld b, b
    ld b, e
    ld a, d
    rst $38
    cp l
    db $eb
    call z, Call_005_7be1
    rst $38
    ld [hl], b
    rst $18
    dec b
    ld [hl], a
    rst $38
    cp b
    call nz, Call_005_7f6f
    daa
    ld a, a
    dec b
    dec b
    dec h
    dec b
    jp $cb0b


    dec bc
    ld d, a
    sub a
    dec de
    reti


    ld l, e
    or e
    ld e, [hl]
    add [hl]
    rst $08
    rst $28
    rst $30
    rst $30
    add a
    rst $08
    db $e3
    di
    db $fd
    db $fd
    pop af
    pop af
    add hl, sp
    nop
    sub d
    or b
    or c
    sub l
    sub a
    rst $00
    rst $00
    rst $28
    ret nz

    cpl
    db $e3
    rst $30
    set 5, e
    db $db
    inc c
    set 1, b
    ret c

    reti


    inc b
    adc e
    nop
    add b
    and b
    cp c
    cp [hl]
    cp a
    cp a
    sbc a
    cp a
    jr nc, jr_005_46ad

    rst $18
    ld l, a
    ld bc, $2412
    ld l, h
    ld l, h
    nop
    jp hl


    pop bc
    xor [hl]
    add d
    ccf
    ld [hl], a
    ccf
    ld a, [de]
    ccf
    dec de
    inc h
    inc l
    sbc a
    sbc e
    pop hl
    ld bc, $9f1d
    ld d, a
    rst $08
    jr c, @+$01

    cp a
    dec b
    adc $21
    rst $38
    rst $28
    ld a, e
    adc [hl]
    add hl, de
    ccf
    ld a, $0b
    cp a
    ld [hl], e
    rst $38
    ld sp, hl
    add a
    rst $38
    cp h
    rst $38
    sub c
    cp $9c
    rst $38
    and $ff
    pop af
    rst $38
    db $fc
    rlca
    adc l
    sbc c
    rst $38
    ld c, h
    ld d, d
    ld e, e
    ei
    ldh [$2b], a
    sbc l
    rst $38
    sbc $ee
    cp b
    ld b, a
    ei
    or c
    cp a
    xor c
    ld c, c
    sub c
    or e
    rst $30
    call z, Call_000_2711
    ld l, a
    cp b
    pop af
    rst $38
    scf
    rst $38
    add hl, bc
    rst $38
    add d
    rst $38
    ld c, b
    rst $30
    inc b
    ei
    ld a, [hl-]
    push bc
    rst $30
    ld [$1b7e], sp
    db $eb
    add $61
    rlca
    db $dd
    ld b, $bf
    cp b
    ld b, a
    db $fc
    inc bc
    add hl, bc
    ld [hl], d
    rra
    ld l, c

Call_005_479f:
    jr @+$75

    ld b, l
    xor $ff
    ld h, c
    ld [hl+], a
    rla
    cpl
    ret nc

    pop de
    and h
    push bc
    pop af
    or [hl]
    add a
    rlca
    ld hl, $9369
    sub a
    rst $20
    ld h, l
    daa
    cp h
    nop
    rrca
    ld c, a
    rst $18
    ld [hl+], a
    ld h, $69
    jp hl


    adc $65
    ld h, a
    ld h, $91
    call c, Call_000_1c1f
    rla
    sub a
    adc $6f
    call nz, Call_000_3d43
    rst $38
    add b
    cp a
    ld b, e
    ld h, a
    db $10
    add hl, de
    ld [$fa0f], a
    ld l, [hl]
    rst $38
    rst $30
    inc bc
    add sp, $7d
    rrca
    rra
    ldh [$1f], a
    pop hl
    ld a, [hl-]
    cp $08
    ld c, b
    cp a
    ld a, h
    rst $38
    cp [hl]
    and b
    xor c
    cp d
    ld a, l
    ld l, l
    push bc
    ei
    inc b
    nop
    inc e
    rst $00
    ld a, l
    ld de, $da07
    db $fd
    xor l
    ld a, [c]
    rst $38
    ld b, h
    xor l
    inc hl
    sub l
    inc b
    rst $18
    sub a
    cp $5b
    rst $20
    ld e, l
    rla
    cp c
    rst $00
    dec bc
    rst $28
    ld [bc], a
    rra
    xor l
    ld a, [hl]
    ld d, $ef
    dec b
    cpl
    xor c
    rst $38
    jp $ff55


    or [hl]
    rst $38
    ld e, $ff
    xor a
    ld a, a
    ld [hl], c
    cp a
    rst $00
    ccf
    or l
    pop af
    jp $0d5f


    rra
    inc bc
    rrca
    ld c, $1f
    db $f4
    dec de
    db $dd
    inc hl
    rst $38
    xor a
    xor a
    rra
    xor h
    db $76
    db $dd
    ld h, a
    ld [hl], b
    or [hl]
    ld hl, $5fa5
    adc $0f
    reti


    ret c

    inc de
    inc de
    sbc h
    rst $38
    add hl, de
    cp a
    cp $7b
    jr @-$01

    ld [hl], c
    cp b
    rst $38
    rst $08
    db $fc
    db $e4
    db $e4
    ret nc

    ldh a, [$e8]
    add sp, -$41
    ldh a, [rIE]
    sub b
    ld a, a
    ret nz

    adc $1f
    ei
    jr nc, jr_005_4894

    cp e
    add c
    rst $28
    scf
    call z, $939d
    inc bc
    add b
    ld e, a
    ld hl, sp-$04
    ld [c], a
    pop af
    dec bc
    adc e
    rst $00
    dec l
    ld e, $00
    rlca
    or [hl]
    ld a, c
    ret c

    rst $20
    ld h, c
    sbc a
    inc l
    add [hl]
    ld a, a
    rlca
    ld [hl], a
    dec de
    ld bc, $b07d
    rst $08
    ret nz

    ccf
    ld h, l
    rlca
    cp [hl]
    ld a, $1f
    cp b
    rst $08
    ccf

jr_005_4894:
    ld b, a
    adc a
    pop de
    db $e3
    or h
    ld a, b
    ld l, l
    sbc [hl]
    dec de
    rst $20
    add [hl]
    ld sp, hl
    ld h, c
    cp $ff
    ld e, b
    ld hl, $d817
    xor $02
    add l
    dec c
    di
    inc bc
    db $fc
    sra a
    inc l
    daa
    rla
    pop bc
    ld l, a
    ld a, [c]
    ld sp, hl
    push af
    di
    or b
    ld bc, $fa05
    ld sp, hl
    ld sp, hl
    add sp, -$67
    or b
    ld l, a
    sbc e
    db $fc
    inc bc
    db $ec
    di
    inc sp
    call z, $2fd2
    jr c, jr_005_493d

    ld l, l
    ld l, a
    rst $18
    ld e, d
    ccf
    call z, $37b3
    or [hl]
    pop hl
    scf
    ei
    db $fc
    ld h, l
    rrca
    add b
    ld c, a
    reti


    ccf
    scf
    rst $08
    call z, Call_000_3318
    ld c, e
    cp h
    ld [hl], a
    ld c, a
    sbc a
    ld [hl], $af
    rst $08
    ld bc, $2e05
    ld e, a
    sbc a
    ld d, $9f
    ccf
    ccf
    ld a, a
    rst $08
    ldh [$df], a
    ret nz

    sbc [hl]
    pop bc
    cp h
    add e
    ld l, l
    ld bc, $0f0b
    add e
    inc de
    sbc h
    jp $87b8


    ld h, b
    ld bc, $9f0d
    ret nz

    di
    rlca
    ld [bc], a
    dec bc
    di
    ld hl, $75fb
    ld sp, hl
    nop
    ld bc, $f925
    dec b
    ld sp, hl
    ld bc, $fb6c
    rrca
    inc de
    add hl, hl
    ld b, b
    di
    dec c
    dec c
    pop af
    ld de, $03f9
    nop
    ld [hl], a
    ld a, [c]
    nop
    or c
    ld [bc], a
    ld bc, $c000
    ret nz

    dec e
    dec d
    ld [hl], d
    rst $28
    ld bc, $001f

jr_005_493d:
    inc bc
    ld l, d
    ld e, [hl]
    rst $38
    sub $ca
    cp l
    db $db
    ld l, e
    ld e, $0d
    cp $03
    nop
    adc e
    ld [hl], c
    ld a, [c]
    db $f4
    rlca
    rst $30
    and c
    ld bc, $c100
    rlca
    rlca
    db $f4
    di
    db $e3
    ld b, $01
    cpl
    rst $28
    ret nz

    ld b, $01
    ldh a, [$f0]
    di
    ldh a, [$f6]
    ld a, b
    pop af
    ld [bc], a
    rra
    rrca
    rrca
    rrca
    rst $08
    rrca
    ld c, a
    xor a
    inc bc
    jr nc, jr_005_4993

    nop
    xor a
    jr nz, @-$03

    ld [hl], h
    ld b, b
    ld sp, hl
    ld bc, $f825
    ld a, [hl-]
    inc b
    ld hl, sp-$60
    or l
    ret nz

    sbc $01
    cp h
    inc bc
    add e
    ld bc, $9e3c
    ld bc, $9f04
    sub a
    sbc e
    dec e
    nop

jr_005_4993:
    nop
    ld a, c
    db $e3
    db $eb
    db $dd
    ret


    adc h
    db $dd

jr_005_499b:
    xor h
    ld c, $9e
    rrca
    ld a, $9f
    add sp, $7d
    rst $00
    ld a, $bc
    ld c, b
    ld b, e
    ld h, $cb
    ld c, b
    ld a, $1f
    db $eb
    jr jr_005_499b

    reti


    call $8c1f
    cp [hl]
    nop
    ld e, a
    ld a, $80
    ld a, a
    inc a
    rst $18
    ld a, a
    cp [hl]
    ld [hl], l
    rst $38
    and b
    and c
    add l
    ld a, a
    jp $e33e


    ld e, c
    inc e
    dec de
    ld [hl], b
    cp h
    sbc [hl]
    ld e, $be
    ld e, [hl]
    ccf
    rra
    ld a, a
    rst $08
    ld a, $7c
    add e
    add b

jr_005_49d8:
    ld e, e
    cp [hl]
    ld b, c
    rst $18
    pop hl
    ld c, e
    adc a
    ld a, a
    jp z, Jump_005_6541

    db $fd
    ld d, c
    rst $00
    ld [hl], $5b
    ld h, c
    ld h, l
    reti


    dec l
    ld l, l
    db $e3
    dec sp
    ld h, b
    xor a
    nop
    pop bc
    jr c, jr_005_49d8

    add b
    ld e, e
    sbc [hl]
    ld [$2fa2], a
    sbc a
    ld b, b
    ret nc

    rst $38
    rlca
    adc a
    inc bc
    ld [hl], a
    ld h, e
    add hl, hl
    ei
    di
    ld bc, $8f70
    rst $18
    rst $08
    rst $18
    rst $20
    rst $28
    di
    rst $30
    ld sp, hl
    ei
    db $fc
    db $fd
    adc c
    jp hl


    cp b
    ld a, h
    db $e3
    rst $30
    rst $20
    rst $30
    rst $08
    rst $28
    sbc a
    rst $18
    ccf
    cp a

jr_005_4a23:
    ld a, a
    ld a, a
    ld [bc], a
    add b
    ld l, e
    inc e
    cp [hl]
    ld [$4359], sp
    ld h, a
    ld h, a
    ld h, $6f
    ld l, a
    inc de
    ld l, $38
    ld a, l
    dec de
    db $10
    sbc d
    jp nz, $a4e6

    or $46
    cp $42
    ld l, a
    nop
    ld h, a
    dec de
    ld e, b
    rra
    add hl, hl
    add h
    dec de
    or $00
    and $1b
    ld a, h
    rra
    ld [bc], a
    add b
    db $ed
    ld hl, sp-$07
    ldh a, [$f7]
    db $e4
    or $e4
    ld [hl-], a
    db $ed
    pop hl
    ld bc, $2ef3
    ld [hl], a
    sbc a
    ld h, b
    sbc a
    ld e, a
    rlca
    ld l, a
    scf
    or a
    inc bc
    and a
    or a
    add a
    or a
    sub a
    or a
    db $fd
    ld [$4d8f], sp
    or a
    rla
    ld b, a
    rlca
    rst $08
    ld a, [$9f07]
    inc l
    adc [hl]
    ccf
    rst $08
    inc bc
    call nc, Call_000_3e5f
    ld [hl], d
    adc a
    ld d, e
    ld b, b
    cpl
    dec de
    ld e, a
    jr nz, jr_005_4a23

    jr @+$31

    ld de, $beca
    add c
    dec de
    ld a, [$2e0e]
    inc a
    cpl
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    stop
    nop
    nop
    ld a, [bc]
    and d
    daa
    ld b, h
    db $fc
    adc d
    ld [bc], a
    ld bc, $ff1e
    rla
    nop
    nop
    nop
    nop
    ccf
    ld a, a
    ld b, b
    ccf
    ld e, a
    ccf
    jr nc, jr_005_4b0a

    cpl
    ld bc, $2f53
    ld d, d
    ld l, [hl]
    dec l

jr_005_4ac1:
    rrca
    ld [hl], b
    inc de
    rla
    jr @+$01

    ld [bc], a
    inc hl
    db $fc
    ld l, h
    di
    db $d3
    cp h
    nop
    rrca
    ldh a, [rIE]
    rlca
    ld hl, sp+$78
    rlca
    add a
    add a
    ld a, b
    ld a, a
    add b
    jr c, jr_005_4b0b

    rrca
    rrca
    nop
    rst $38
    ldh [$1f], a
    ld e, $e1
    pop hl
    ld e, $fe
    ld c, c
    ld bc, $200f
    cpl
    call nz, Call_000_363f
    jr jr_005_4ac1

    srl l
    rrca
    cp $fe
    rlca
    ld [bc], a
    cp $fa
    cp $0a
    nop
    ld bc, $feca
    ld c, d
    cp [hl]
    ld d, c
    ld l, $81
    ld d, l
    ld d, e
    ld l, $75

jr_005_4b0a:
    ld d, h

jr_005_4b0b:
    cpl
    ld h, l
    rra
    ld l, c
    rra
    ld l, d
    rra
    ld l, a
    ret c

    or a
    ld l, b
    cp $a0
    ld a, l
    ret nz

    cp d
    ld b, c
    ld [hl], d
    add l
    ld h, [hl]
    adc l
    sub $0d
    ldh a, [rP1]
    adc c
    rlca
    ld d, c
    cpl
    ld sp, $b0ef
    ld bc, $000f
    ld [bc], a
    sub c
    ld h, b
    add [hl]
    ld a, b
    adc h
    ld a, e
    jp nz, $f601

    dec de
    db $e3
    db $ed
    ld d, $7b
    dec b
    cp [hl]
    inc bc
    dec e
    jp nz, $c06f

    ld h, a
    ret nc

    ld l, e
    ret nc

    adc d
    ld a, [hl]
    add b
    ld d, l

jr_005_4b4c:
    ld l, d
    cp [hl]
    sbc d
    ld a, [hl]
    ld e, d
    cp [hl]
    pop bc
    ld e, e
    xor d
    ld e, [hl]
    and [hl]
    ld e, [hl]
    add h
    ld d, c
    ld c, d
    ccf
    ld d, [hl]
    ret nz

    ld bc, $3f55
    ld d, e
    dec a
    add $38
    dec e
    and [hl]
    ld bc, $3886
    dec a
    ld b, [hl]
    ld bc, $1ec6
    cp l
    add [hl]
    db $fd
    ld [bc], a
    ld e, c
    sub e
    ld bc, $02d2
    ld e, c
    ld bc, $6301
    ret c

    ld h, l
    ret c

    ld h, c
    call c, Call_000_0193
    ld h, d
    jr @+$03

    sub $2e
    ld bc, $2ed2
    inc l
    ld [$0116], a
    inc e
    ld d, d
    dec a
    ld d, e
    ld bc, $0582
    ld d, h
    sbc b
    ld h, e
    jp hl


    ret


    db $ed
    add $03
    cp e
    call nz, Call_005_505b
    ld b, [hl]
    ld h, e
    ld h, d
    call c, Call_000_06f7
    ld bc, $02a4
    add hl, sp
    ld bc, $561e
    ccf
    ld d, [hl]
    dec b
    sbc a
    ld a, d
    ld b, [hl]
    inc bc
    ld bc, $9f18
    add c
    adc l
    ld a, d
    jr nz, jr_005_4b4c

    ld a, b
    ld bc, $e68f
    ld bc, $b80b
    ld h, e
    adc d
    inc b
    ld d, [hl]
    jr nc, @-$44

    ld a, b
    sub d
    ld a, b
    jp z, Jump_005_7630

    nop
    dec bc
    or d
    ld c, h
    or a
    ld h, b
    adc a
    dec b
    nop
    ld a, [$06f9]
    ld e, $01
    ccf
    cp a
    ld b, $01
    inc c
    cp $fe
    db $fc
    db $fd
    nop
    ei
    jr nc, @-$05

    ld sp, hl
    ld [bc], a
    ei
    push af
    di
    inc sp
    pop af
    rst $30
    xor e
    ld a, a
    sbc e
    nop
    jr jr_005_4c5a

    add hl, de
    nop
    rst $18
    sbc a
    sbc a
    rst $18
    or [hl]
    xor a
    ld b, d
    nop
    dec b
    sub d
    inc c
    ld d, e
    nop
    db $10
    adc a
    rlca
    ld [hl], c
    rlca
    ld e, $01
    ld c, d
    cp [hl]
    ld b, $01
    inc a
    ld d, d
    cpl
    ld b, $01
    cp h
    ld a, d
    jp nz, $0106

    ld [hl], c
    db $10
    inc hl
    ld c, l
    rst $38
    ret c

    ld a, [bc]
    ld l, e
    ld b, c
    ld c, e
    cp a
    rlca
    ld c, b
    cp a
    ld c, a
    cp a
    ld b, b
    dec c
    ld bc, $807f
    inc de
    sub h
    ld h, c
    ld [hl], b
    ld bc, $7f53
    ld bc, $0060
    ld d, c
    jp nc, Jump_000_12af

    rst $28
    inc c
    ld a, [c]
    rst $28
    ld [bc], a
    rst $38
    ld bc, $60fe
    ld bc, $bc1f
    ld b, d
    inc a
    ld [bc], a
    rlca
    inc e
    ld [bc], a
    inc c
    ld [bc], a
    db $fc
    inc d
    ld bc, $a9fe

jr_005_4c5a:
    jr nz, @+$42

    ccf
    add hl, hl
    ld [hl], a
    ld sp, $7300
    dec [hl]
    ld bc, $c571
    ld d, l
    ld a, a
    inc c
    ld c, e
    ld c, a
    or b
    ld d, l
    ld c, e
    ld l, h
    cp h
    ld e, l
    rrca
    cp $40
    rst $38
    dec sp
    ld a, [c]
    rrca
    adc $45
    jp nc, $9f70

jr_005_4c7d:
    jr nc, jr_005_4c7d

    db $fc
    ld c, b
    ld [bc], a
    ld bc, $e53c
    sbc a
    jp nz, Jump_005_7cf0

    dec [hl]
    ld a, c
    or e
    cp e
    cp e
    sub e
    rst $00
    rst $10
    rst $28
    rst $28
    inc hl

jr_005_4c94:
    rst $38
    add d
    or e
    jp $c0bf


    ld b, a
    ld bc, $3880
    rrca
    di
    add b
    jr nz, jr_005_4c94

    nop
    ld bc, $1cf9
    nop
    inc bc
    db $fc
    ld c, h
    ld h, c
    nop
    ld d, $80
    ret nz

    and b
    ld [hl], $21
    dec l
    jp z, $010f

    ld c, c
    ld bc, $c923
    ld a, a
    ld c, b
    ccf
    jr nz, jr_005_4d10

    ccf
    sub d
    ld bc, $ff70
    ld b, $24
    ld a, [bc]
    or $01
    or b
    rla
    ld e, a
    ccf
    add [hl]
    or a
    nop
    or b
    rla
    ld a, [$71f6]
    ld [bc], a
    sub a
    nop
    jr nc, jr_005_4d1a

    ld l, a
    rra
    ld [hl], b
    ld c, c
    rrca
    ld bc, $04f3
    ccf
    dec bc
    ld bc, $172d
    xor h
    rra
    rla
    inc [hl]
    ld a, [c]
    ld c, $63
    nop
    ccf
    pop af
    rst $30
    jp hl


    rst $20
    pop hl
    rst $28
    add [hl]
    ld bc, $0007
    push af
    di
    ld a, [$dff9]
    rst $18
    rst $28
    rst $08
    ld l, [hl]
    rst $08
    jp c, JoypadTransitionInterrupt

    dec b
    sbc a
    rst $18
    ccf
    cp a
    db $e3
    ld [hl-], a
    ld a, a

jr_005_4d10:
    sub $05
    ld bc, $eadf
    inc b
    cp [hl]
    and h
    dec b
    cp e

jr_005_4d1a:
    rrca
    ld a, a
    sbc $04
    nop
    rlca
    dec a
    ld h, l
    ld a, a
    jr nz, jr_005_4da4

    jp Jump_000_3f80


    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $1f01
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    push de
    inc de
    dec c
    rra
    rst $38
    ccf
    rst $38
    ld e, $eb
    ld b, $3d
    ld sp, $e13f
    add b
    cp a
    adc e
    ld bc, $9fa0
    add h
    ret nz

    rst $18
    ret nc

    rst $08
    add sp, -$19
    db $f4
    di
    ld sp, hl
    ld hl, sp-$06
    ld hl, sp-$5e
    cp a
    call z, Call_000_2187
    sub b
    dec b
    rrca
    ld [hl+], a
    and c
    inc a
    cp h
    sub a
    add a
    inc c
    db $fc
    cp $f1
    ld hl, sp-$7e
    pop bc
    ld a, [hl-]
    add hl, sp
    di
    ei
    rst $20
    rst $30
    ret


    rra
    ld d, $9f
    ccf
    ccf
    adc b
    rst $18
    ld l, [hl]
    nop
    dec e
    add b
    db $e4
    db $fd
    ld sp, hl
    db $fd
    ei
    ld a, b
    ei
    ld bc, $fc2f
    ld a, [c]
    dec b
    pop af
    ret z

    rst $00
    jr nz, jr_005_4db2

    add h
    rlca
    add b
    ld a, a
    sbc b
    ld d, a
    rrca
    di
    ldh a, [$03]
    rst $08
    ret nz

    ccf
    nop
    cp a
    ld b, b
    ld b, d

jr_005_4da4:
    or e
    or l
    rst $00
    rla
    ld bc, $b31c
    rra
    xor a
    or d
    rlca
    ret z

    nop
    inc bc

jr_005_4db2:
    rst $10
    rla
    ld hl, sp+$77
    ld hl, sp-$09
    rst $18
    rrca
    ld bc, $7c0a
    ld b, c
    adc l
    db $fd
    ld h, b
    db $fc
    rst $00
    ld hl, sp-$05
    ldh a, [$fb]
    ret nz

    rst $10
    ldh a, [$f7]
    nop
    add c
    ld b, d
    dec sp
    inc a
    ld c, $28
    dec c

jr_005_4dd3:
    inc bc
    ld h, l
    ld a, h
    ld b, h
    sbc a
    ldh [$7f], a
    or [hl]
    rra
    cp a
    sbc a
    rst $18
    adc h
    sbc c
    rrca
    jr jr_005_4dd3

    rst $30
    ldh a, [rNR44]
    pop af
    or $db
    inc bc
    dec hl
    sbc l
    dec l
    adc h
    xor a
    adc a
    ld a, a
    dec hl
    ld [$1818], sp
    ld [$0599], sp
    adc [hl]
    ld a, a
    dec [hl]
    xor d
    ld e, a
    ld bc, $ba64
    ld l, a
    ld l, l
    cp l
    ld bc, $31b7
    dec [hl]
    ld c, d
    call $18fc
    pop af
    dec b
    ld [c], a
    pop hl
    inc bc
    sbc l
    add b
    ld [hl], b
    ld c, $2b
    rst $18
    ld h, b
    ld bc, $0829
    ld a, [hl]
    nop
    inc a
    ld sp, $c300
    cp c
    ld h, b
    ld e, $88
    ld [hl+], a
    ccf
    cp a
    sbc h
    pop hl
    dec b
    add a
    inc b
    rst $00
    ld bc, $20b9
    ld a, [hl]
    jr nc, @+$71

    dec bc
    sbc a
    ld e, a
    rst $08
    ld bc, $672f
    rla
    or e
    adc e
    reti


    push bc
    add b
    ld l, [hl]
    add sp, -$19
    call nz, $b2db
    adc l
    jr nc, @+$4a

    scf
    ld bc, $8bb6
    ld c, c
    ld c, c
    rlca
    or c
    dec c
    ld c, a
    ld bc, $02b5
    ld a, a
    db $db
    ld [hl], c
    rlca
    ld [hl], b
    rlca
    sub l
    ld h, d
    add hl, bc
    ldh a, [$34]

jr_005_4e62:
    ld hl, sp+$35
    ld sp, hl
    ld [hl], e
    ei
    ld c, e
    di
    ld h, e
    inc e
    rrca
    or b
    rra
    ret nz

    add d
    pop hl
    ld c, h
    ldh a, [rLYC]
    ld hl, sp+$13
    ldh [$4c], a
    and e
    add b
    ld bc, $7f86
    dec bc
    inc [hl]
    ld h, e
    sbc a
    pop bc
    sbc [hl]
    ld a, $24
    jr jr_005_4e62

    nop
    nop
    ldh [$29], a
    rst $00
    ld hl, $80cf
    ld e, a
    call nz, Call_000_321f
    rrca
    or d

jr_005_4e95:
    adc a
    jp nc, $d1cf

    rst $08
    nop
    pop af
    jr c, jr_005_4e95

    add b
    ld bc, $9840
    ld bc, $fe70
    cp b
    ld h, d
    ld a, b
    db $fd
    ld hl, $c4fb
    add e
    add hl, sp
    ld b, $b9
    ld b, $0a
    push bc
    jr nc, jr_005_4ec4

    rrca
    pop hl
    rst $30
    rst $20
    ld a, e
    ei
    add hl, hl
    db $fd
    ld c, d
    db $fc
    ret z

    cp $36
    ret c

    pop af

jr_005_4ec4:
    ld [$8f6d], sp
    nop
    call c, Call_000_063e
    ld b, $01
    db $ec
    ld [c], a
    or $f1
    or e
    db $76
    di
    rra
    ret nc

    inc bc
    dec b
    rst $10
    ccf
    dec e
    ld d, a
    daa
    sbc e
    inc hl
    jr jr_005_4f19

    ret nz

    rst $18
    inc bc
    rst $00
    ld [de], a
    rst $00
    ret nc

    ld c, e
    ei
    ld hl, sp-$4a
    ldh [rDIV], a
    ccf
    add hl, de
    call nz, $824a
    inc a
    scf
    scf
    ld [bc], a

jr_005_4ef7:
    rrca
    ld hl, sp-$35
    jr nz, jr_005_4ef7

    adc [hl]
    inc b
    inc bc
    ret z

    jr nc, @-$05

    cp $e0
    rst $38
    nop
    cp $1e
    ldh [$c7], a
    rst $30
    sub a
    rst $20
    ld bc, $6fb8
    rrca
    rst $28
    rra
    rra
    rrca
    ld l, a
    ld h, a
    rst $30
    daa

jr_005_4f19:
    rst $30
    ldh [rP1], a
    add hl, bc
    inc b
    ld e, $3f
    adc a
    ld l, a
    ld b, $0f
    add $d1
    ldh [$ef], a
    ld bc, $02e0
    ldh [$d0], a
    rst $08
    rst $00
    ld bc, $81be
    inc c
    rst $18
    ldh a, [$30]
    sub b

jr_005_4f37:
    daa
    reti


    ld bc, $e009
    ld [hl], d

jr_005_4f3d:
    rst $30
    jr nz, jr_005_4f37

    or b
    adc a
    ld [hl], e
    rrca
    ld a, h
    inc bc
    ld h, b
    rra
    and e
    sbc a
    rst $08
    rst $18
    and c
    add e
    and h
    sbc b
    ld h, b
    rst $20
    dec d
    nop
    inc bc
    ei
    add b
    db $e3
    adc b
    sbc e
    ld [$bd16], sp
    ld [$af3d], sp
    xor $99
    ld [bc], a
    rst $18
    cp $86
    nop
    rst $28
    ld [bc], a
    rst $18
    ld [bc], a
    ld c, $19
    ld a, a
    rst $38
    ld a, [hl]
    ld b, b
    ld bc, $dd13
    dec a
    ld [hl], b
    reti


    ld bc, $3bfb
    nop
    di
    dec sp
    rst $30
    scf
    and b
    sbc a
    adc [hl]
    cp a
    ld [hl], c
    add e
    ld bc, $c381
    ld bc, $9fa1
    nop
    ld bc, $3c80
    ld b, b
    sbc e
    add b
    rst $20
    ret nz

    ld b, c
    rst $30
    ld bc, $cce0
    ld bc, $a011
    jr z, jr_005_4f3d

    and c
    ld bc, $71c0
    rst $18
    ld bc, $8cd0
    dec d
    call nc, $01e3
    adc h
    and c
    ld bc, $e30c
    ld [hl], c
    inc h
    nop
    ccf
    cp $1f
    ld a, [hl]
    dec c
    cp [hl]
    dec b
    sbc $c2
    push hl
    ldh [$f8], a
    pop af
    db $fd
    ret nz

    ld bc, $77a7
    rst $08
    ld l, a
    sbc a
    ld b, h
    ld e, a
    ld c, b
    inc hl
    ld [hl], l
    ld [hl], l
    ld a, [bc]
    ld sp, hl
    dec [hl]
    ld sp, hl
    ld [hl], l
    nop
    ld bc, $fb23
    inc bc
    ei
    dec bc
    inc bc
    db $ec
    ld a, [bc]
    db $e3
    db $d3
    rst $08
    ret nc

    dec de
    ld bc, $c3dc
    di
    ld b, $4f
    dec de
    ret nz

    call nz, $01e3
    ld [hl], c
    ld b, h
    ld bc, $70a7
    ret nz

    jp Jump_000_2000


    inc b
    rlca
    rst $30
    di
    ei
    inc sp
    ei
    inc de
    ldh [rSB], a
    dec hl
    di
    rst $30
    ld sp, $0307
    ld e, $df
    pop bc
    ld b, a
    ld bc, $67d1
    ei
    ret nc

    ld h, b
    dec hl
    ld l, b

jr_005_5011:
    add a
    ld l, c
    add a
    pop bc
    inc bc
    adc b
    rst $20
    add b
    rst $28
    sbc h
    ld bc, $01c0
    cp b
    ldh [$9f], a
    nop
    rra
    nop
    ld c, a
    add b
    cpl
    ret nz

    add e
    ld [hl], b
    ret z

    jr nc, jr_005_5011

    jr @-$0d

    inc c
    ld bc, $0cf2
    db $f4
    dec bc
    rlca
    ld hl, sp+$07
    rst $08
    nop
    rrca
    dec bc
    add hl, de

jr_005_503d:
    rra
    add b
    adc h
    add b
    ld a, a
    ld h, b
    rra
    ld c, b
    rlca
    ld l, [hl]
    ld bc, $3003
    jr z, jr_005_505c

    inc h
    jr jr_005_5080

    inc c
    ld h, b
    inc l
    inc b
    ei
    jr jr_005_503d

    or d
    rra
    ld bc, $480f

Call_005_505b:
    add a

jr_005_505c:
    ld l, $c1
    ld h, l
    ccf
    add [hl]
    rra
    ret z

    rlca
    jr nz, @+$62

    db $10
    ld bc, $908f
    rrca
    jr @+$62

    rlca
    rra
    inc l
    jp $7380


    ld bc, $33c8
    db $e4
    dec de
    ldh a, [rIF]
    rra
    ld bc, $006f
    ld l, a
    nop

jr_005_5080:
    adc b
    ld c, a
    ld c, b
    jr nc, jr_005_50e5

    ld c, a
    ld bc, $0c32
    ld [hl], h
    dec bc
    ld [de], a
    ld a, b
    rlca
    ld c, a
    ld [hl], $4f
    nop
    ld hl, $8501
    ld a, a
    sbc [hl]
    ccf
    inc b
    rra
    ld [hl], l
    inc e
    db $fc
    inc c
    inc b
    xor a
    inc c
    rst $20
    rrca
    and c
    inc b
    xor a
    rra
    ldh [rSC], a
    ld l, a
    jp z, Jump_000_0e31

    ld bc, $017e
    inc bc
    reti


    inc bc
    ccf
    ld a, a
    rrca
    adc a
    ldh [$f0], a
    ld [$0502], a
    nop
    ld e, $15
    xor e
    rlc d
    dec e
    nop
    ld bc, $7483
    ld a, b
    ld a, a
    ld a, a
    ld h, d
    ld h, c
    ld a, [$dd01]
    ld d, a
    ld [hl], b

jr_005_50d1:
    rra
    jp nz, $f1e1

    ldh a, [$b2]
    ld a, [c]
    ccf
    ccf
    sbc a
    rst $18
    rst $00
    ld h, a
    jr nc, jr_005_5158

    cp [hl]
    ld a, a
    ei
    rst $38
    db $fc

jr_005_50e5:
    rst $38
    rst $18
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ret z

    db $fc
    db $ec
    cp $3c
    ccf
    inc c
    ld h, c
    ld h, c
    jr nz, jr_005_5144

    ld l, l
    dec hl
    sbc $b8
    ld [hl], b
    rst $38
    pop af
    rst $38
    ld b, b
    add b

Jump_005_5101:
    dec de
    dec de
    ld [de], a
    dec de
    jr nz, jr_005_5127

    cp $0b
    ldh a, [$e0]
    ld e, h
    ld h, h
    jr nc, jr_005_50d1

    add b
    ret nz

    ld b, d
    add c
    sub a
    adc a
    cpl
    rst $38
    dec bc
    rra
    rla
    ld b, d
    ld a, a
    adc a
    ld a, a
    dec b
    ld e, [hl]
    rst $38
    cp l
    rst $38
    ld a, [$fbaa]
    rst $38

jr_005_5127:
    adc e
    sub a
    ld b, $ee
    rst $38
    ld e, $f6
    cp $e4
    cp $a0
    and b
    and h
    and b
    jp $d3d0


    ret nc

    ld [$98e9], a
    sbc e
    xor e
    add hl, bc
    ccf
    ld e, h
    ld e, l
    jr nc, @-$0b

jr_005_5144:
    rst $30
    rst $28
    rst $28
    pop af
    di
    rst $00
    rst $08
    cp a
    cp a
    adc a
    adc a
    add hl, sp
    jp hl


    db $ed
    db $ed
    ld c, $e9
    db $eb
    db $e3
    rst $30

jr_005_5158:
    and e
    rla
    rla
    dec d
    rst $10
    rst $10
    ld [$d3db], sp
    inc de
    dec de
    sbc c
    db $db
    pop de
    pop de
    ld bc, $9d05
    ld a, l
    cp e
    ld c, a
    pop hl
    add c
    ld c, b
    ret


    ret


    inc h
    ld [hl], $87
    nop
    add b
    nop
    add e
    ld [hl], l
    db $fc
    ld a, c
    add b
    ld d, l
    db $fc
    ld e, b
    db $fc
    ret c

    db $fc
    db $fc
    rst $00
    ld b, [hl]
    ld sp, hl
    reti


    ld a, [bc]
    ld bc, $f9b8
    inc e
    db $eb
    rst $38
    db $fd
    dec b
    db $10
    ld [hl], e
    rst $38
    rst $30
    ld a, e
    rst $00
    add hl, de
    db $fc
    ld a, h
    rla
    cp a
    adc $0e
    rst $38
    sbc a
    rst $38
    dec a
    rst $38
    add hl, bc
    rst $38
    add hl, sp
    rst $38
    ld h, a
    rst $38
    adc a
    xor $09
    adc l
    dec e
    sbc c
    rst $38
    ld [hl-], a
    sbc h
    cp e

jr_005_51b3:
    rst $18
    dec hl
    rlca
    cp c
    rst $38
    ld a, e
    rst $38
    rst $20
    inc d
    add hl, bc
    cp l
    scf
    sub h
    ld h, a
    adc c
    or e
    rst $28
    dec [hl]
    ld de, $c727
    or $ff
    db $ec
    rst $38
    sub b
    rst $38
    ld b, c
    rst $38
    ld [de], a
    rst $28
    jr nz, jr_005_51b3

    ld e, h
    and e
    rst $28
    db $10
    xor d
    ret nz

    rst $38
    ld [hl], c
    rst $10
    ld h, c
    ldh [$80], a
    db $dd
    db $fd
    dec e
    ld [c], a
    ccf
    ret nz

    ld a, a
    db $eb
    xor d
    sbc l
    adc $5c
    dec l
    sbc l
    ld d, e
    inc bc
    ld [hl+], a
    rst $38
    db $e4
    db $e4
    adc e
    adc e
    ld c, c
    push bc
    pop af
    add hl, sp
    ld b, a
    inc bc
    ld a, a
    sub [hl]
    sub [hl]
    ret


    jp hl


    rst $20
    or d
    daa
    dec a
    add b
    rrca
    ei
    ei
    ld h, h
    ld h, h
    sub [hl]
    ld h, a
    sub a
    dec d
    and $1c
    sub c
    dec sp
    rrca
    ld bc, $c6c6
    ld bc, $1701
    sub a
    adc $c4
    xor l
    ld a, a
    ret c

    ld hl, $e700
    rst $20
    ld bc, $9888
    ld d, a
    ld e, a
    db $76
    rst $38
    rst $28
    di
    inc bc
    ld sp, hl
    add e

jr_005_5230:
    ret z

    add a
    add a
    ld e, h
    ld a, a
    jp hl


    ld [$840f], sp
    ld [hl], l
    ld [bc], a
    pop af
    sub a
    cp $5b
    rst $20
    ld a, $2c
    cp c
    db $e3
    dec bc
    rst $28
    add e

jr_005_5247:
    ld c, e
    xor l
    ld a, [hl]
    ld d, $32
    ld b, $04
    rrca
    sub l
    pop hl
    rst $38
    xor d
    rst $38
    ld l, l
    rst $38
    ld a, b
    rst $38
    push af
    cp $8e
    db $fd
    db $e3
    push de
    sbc d
    ld l, $df
    ld a, [$b019]
    ld hl, sp-$40
    ldh a, [rSVBK]
    ld hl, sp+$2f
    ret c

    cp e
    call nz, Call_005_40ff
    jr nc, jr_005_5230

    rst $00
    dec a
    cp e
    ld h, a
    ld b, a
    ld l, l
    inc c
    ld hl, $faa5
    rrca
    sbc e
    db $e3
    di
    cp a
    or b
    dec h
    db $fd
    ld a, a
    sbc $cb
    jr jr_005_5247

    adc [hl]
    dec e
    rst $38
    di
    ccf
    daa
    daa
    dec bc
    rrca
    rla
    rla
    db $fd
    rrca
    rst $38
    add hl, bc
    cp $03
    rra
    ld h, [hl]
    inc de
    cp [hl]
    di
    ld bc, $6b3b
    di
    dec e
    and d
    rst $20
    rst $10
    ld e, a
    cp c
    ld [$0f29], sp
    add sp, $01
    dec e
    dec a
    xor [hl]
    adc h
    ld b, c
    ldh a, [$c8]
    rst $20
    ld bc, $a088
    inc bc
    and b
    rst $00
    nop
    ld de, $0887
    ld h, b
    call c, Call_000_0237
    ld l, a
    ld [$9fcf], sp
    rst $18
    rra
    dec bc
    ld bc, $ed1f
    ld [c], a
    add [hl]
    pop hl
    rst $28
    add sp, -$20
    and $e1
    reti


    rst $00
    or e
    adc a

jr_005_52d9:
    ld h, b
    rra
    ld bc, $6400
    adc e
    add b
    rst $28
    nop
    ld l, h
    dec bc
    add b
    inc d
    and h
    jp Jump_000_01ac


    dec sp
    xor a
    ld c, a
    db $eb
    ld e, l
    rra
    adc [hl]
    rlca
    rst $20
    db $e3
    ei
    add hl, sp
    db $fd
    inc e
    cp $0c
    cp $f8
    db $fc
    ld a, [c]
    ld sp, hl
    push af
    di
    ld bc, $f277
    ret c

    sbc e
    ld sp, hl
    rst $08
    cp $fc
    ld b, a
    db $fc
    db $e3
    and l
    cp a
    add e
    jr jr_005_52d9

    ld c, c
    add b
    ld c, $00
    rra
    ccf
    ld c, a
    sbc a
    xor a
    rst $08
    ret c

    ld bc, $5f05
    sbc a
    rst $28
    add b
    call nz, $ef7f
    ldh [$df], a
    ret nz

    sbc $c1
    inc l
    cp h
    add e
    ld bc, $0bdb
    rrca
    ld b, $13
    call c, $b8c3
    add a
    ld bc, $0dd8
    dec bc
    rst $30
    rlca
    add hl, bc
    dec bc
    di
    inc hl
    ei
    ld d, h
    and c
    dec h
    ld sp, hl
    ld a, [hl-]
    dec b
    ld sp, hl
    cp l
    and e
    ld d, d
    ld [hl], a
    dec hl
    di
    ld bc, $0d0d
    pop af
    ei
    inc bc
    inc d
    ld a, l
    rst $08
    ld b, $03
    adc $c0
    ret nz

    ldh [$91], a
    nop
    ld a, b
    or c
    ld a, l
    nop
    inc bc
    adc e
    ld a, [hl]
    rst $38
    ld e, c
    db $dd
    ld a, [hl+]
    inc l
    and $0d
    ld a, [$3a05]
    sbc l
    pop bc
    ld d, d
    di
    inc bc
    rlca
    sub b
    ld h, b
    rst $30
    nop
    ld [c], a
    rlca
    rlca
    jp c, $c359

    ld bc, $ef2f
    db $dd
    ld b, $01
    pop de
    sbc e
    ldh a, [$f6]
    pop af
    ldh [rSC], a
    rra
    rrca
    rrca
    rst $08
    rrca
    inc a
    ld c, a
    xor a
    inc bc
    rra

jr_005_5399:
    nop
    pop bc
    xor a
    jr nz, jr_005_5399

    ld [hl], h
    ld sp, hl
    nop
    ld bc, $f825
    inc b
    ld hl, sp-$16
    pop hl
    add l
    rst $28
    ld bc, $03bc
    rlca
    ld bc, $3d3c
    ld bc, $9f04
    ld l, $76
    dec a
    nop
    ld a, c
    cp b
    ld h, b
    db $e3
    db $eb
    db $dd
    ret


    call $acdd
    sbc [hl]
    adc a
    cp [hl]
    sbc a
    ld a, a
    ld bc, $3ec7
    cp h
    ld b, e
    sub b
    ld h, $cb
    ld a, $90
    rra
    db $eb
    db $eb
    dec [hl]
    reti


    call $ca1f
    adc h
    cp [hl]
    ld e, a
    ld a, $80
    ld a, a
    inc a
    rst $18
    ld a, a
    cp [hl]
    rst $38
    ld a, a
    adc [hl]
    ld a, a
    add l
    ld a, a
    jp $e33e


    inc e
    rr e
    add h
    cp h
    sbc [hl]
    sbc [hl]
    cp [hl]
    ld e, [hl]
    ccf
    rra
    ld a, a
    rst $08
    ld a, $7c
    add e
    ld bc, $be5b
    ld b, c
    rst $18
    ld a, $9f
    push de
    daa
    nop
    pop af
    cp $f9
    cp $fb
    ld a, h
    ld a, l

jr_005_540d:
    add d
    add b
    inc de
    ld a, $c1
    di
    nop
    ld a, h
    ld hl, sp-$02
    ld a, d
    db $fc
    ld a, c
    ld a, l
    dec a
    db $eb
    ld b, a
    inc bc
    sbc e
    or e
    rst $10
    ld e, d
    inc bc
    rst $00
    ld bc, $c338
    ld a, h
    and c
    cp $71
    cp $d5
    ret nz

    nop
    ld a, l
    inc a
    ei
    ld bc, $fafe
    ld a, h
    ld sp, $7d59
    dec de
    ld [bc], a
    ld a, e

jr_005_543d:
    db $d3
    ld a, h
    ld e, b
    dec a
    dec a
    jp nz, $e31c

    ld a, h
    ld sp, hl
    ld c, e
    cp $08
    dec a
    adc a
    jr jr_005_544e

jr_005_544e:
    ld [hl], c
    rst $20
    rst $20
    jp $8bdb


    cp e
    dec de
    ld a, e
    inc sp
    ld a, e
    jr nz, jr_005_540d

    add h
    xor l
    adc h
    xor l
    ld hl, sp+$02
    add hl, de
    cp b
    db $e3
    inc bc
    ld b, e
    inc h
    cp l
    add h
    or [hl]
    adc c
    xor l
    and c
    xor l
    and [hl]
    or a
    ld [$19b8], sp
    ld a, l
    ld [hl], a
    ld bc, $5c83
    dec d
    ld a, $90
    or [hl]
    jr nc, @-$48

    jr nz, jr_005_543d

    inc bc
    inc sp
    add a
    or a
    add a
    rst $08
    ld b, $00
    ld c, c
    ld hl, sp-$08
    add e
    rst $00
    inc e
    cp [hl]
    or l
    call z, $3d5d
    ld a, l
    call nc, $ebfc
    ld b, e
    daa
    ld h, $77
    ld [hl], e
    ld a, e
    and c
    ld b, $80
    ld h, b
    dec h
    db $76
    ld a, [hl]
    ld [hl], $76
    cp [hl]
    push de
    ld a, b
    ld bc, $3904
    jp Jump_005_76e3


    add c
    dec sp
    inc e
    sbc [hl]
    cp a
    sbc a
    ld bc, $0f80
    add a
    adc a
    inc bc
    ld [hl+], a
    ld [hl], a
    ld h, e
    ld a, c
    ld d, [hl]
    ld bc, $8f70
    rst $18
    rst $08
    rst $18
    rst $20
    rst $28
    di
    rst $30
    ld sp, hl
    ei
    db $fc
    db $fd
    adc b
    db $e3
    ld [hl+], a
    db $e3
    rst $30
    ret z

    ld l, a

jr_005_54d5:
    or l
    add hl, sp

jr_005_54d7:
    ld a, a
    or $02
    nop
    inc d
    rst $38
    inc a
    cp [hl]
    db $10
    ld e, c
    ld b, e
    ld h, a
    inc de
    ld h, a
    ld l, a
    ld l, a
    rla
    inc de
    inc a
    ld a, l
    inc c
    ld [$c29a], sp
    and $a4
    or $46
    cp $42
    ld l, a
    nop
    ld h, a
    dec de
    inc a
    ld e, b
    cp [hl]
    add hl, hl
    add h
    dec de
    or $00
    and $1b
    ld a, l
    rra
    ld [bc], a
    add b
    rst $00
    ld hl, sp-$07
    ldh a, [$f7]
    db $e4
    inc c
    or $e5
    db $ed
    pop hl
    ld bc, $8ef3
    sbc b
    dec [hl]
    sbc a
    sbc a
    ld e, a
    rlca
    ld l, a
    jr jr_005_54d5

    or a
    and a
    pop hl
    or a
    sub a
    ld a, h
    or a
    ld [$2fd9], sp
    rla
    ld b, a
    rlca
    rst $08
    ld a, [$9f07]
    inc l
    adc [hl]
    ccf
    rst $08
    inc bc
    call nc, Call_000_3e5f
    ld [hl], d
    adc a
    ld d, e
    ld b, b
    cpl
    dec de
    ld e, a
    jr nz, jr_005_54d7

    jr jr_005_55a1

    ld de, $beca
    add c
    dec de
    ld a, [$2e0e]
    inc a
    ld e, a
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    stop
    nop
    nop
    ld [$f550], sp
    db $dd
    ld c, h
    ld h, e
    inc bc
    ld bc, $ff1e
    rla
    nop
    nop
    nop
    nop
    ccf
    ld a, a
    ld b, b
    ccf
    ld e, a
    ccf
    jr nc, jr_005_55be

    cpl
    ld bc, $2f53
    ld d, d
    ld l, [hl]
    dec l

jr_005_5575:
    rrca
    ld [hl], b
    inc de
    rla
    jr @+$01

    ld [bc], a
    inc hl
    db $fc
    ld l, h
    di
    db $d3
    cp h
    nop
    rrca
    ldh a, [rIE]
    rlca
    ld hl, sp+$78
    rlca
    add a
    add a
    ld a, b
    ld a, a
    add b
    jr c, jr_005_55bf

    rrca
    rrca
    nop
    rst $38
    ldh [$1f], a
    ld e, $e1
    pop hl
    ld e, $fe
    ld c, c
    ld bc, $200f
    cpl

jr_005_55a1:
    call nz, Call_000_363f
    jr jr_005_5575

    srl l
    rrca
    cp $fe
    rlca
    ld [bc], a
    cp $fa
    cp $0a
    nop
    ld bc, $feca
    ld c, d
    cp [hl]
    ld d, c
    ld l, $81
    ld d, l
    ld d, e
    ld l, $75

jr_005_55be:
    ld d, h

jr_005_55bf:
    cpl
    ld h, l
    rra
    ld l, c
    rra
    ld l, d
    rra
    ld l, a
    ret c

    or a
    ld l, b
    cp $a0
    ld a, l
    ret nz

    cp d
    ld b, c
    ld [hl], d
    add l
    ld h, [hl]
    adc l
    sub $0d
    ldh a, [rP1]
    adc c
    rlca
    ld d, c
    cpl
    ld sp, $b0ef
    ld bc, $000f
    ld [bc], a
    sub c
    ld h, b
    add [hl]
    ld a, b
    adc h
    ld a, e
    jp nz, $f601

    dec de
    db $e3
    db $ed
    ld d, $7b
    dec b
    cp [hl]
    inc bc
    dec e
    jp nz, $c06f

    ld h, a
    ret nc

    ld l, e
    ret nc

    adc d
    ld a, [hl]
    add b
    ld d, l

jr_005_5600:
    ld l, d
    cp [hl]
    sbc d
    ld a, [hl]
    ld e, d
    cp [hl]
    pop bc
    ld e, e
    xor d
    ld e, [hl]
    and [hl]
    ld e, [hl]
    add h
    ld d, c
    ld c, d
    ccf
    ld d, [hl]
    ret nz

    ld bc, $3f55
    ld d, e
    dec a
    add $38
    dec e
    and [hl]
    ld bc, $3886
    dec a
    ld b, [hl]
    ld bc, $1ec6
    cp l
    add [hl]
    db $fd
    ld [bc], a
    ld e, c
    sub e
    ld bc, $02d2
    ld e, c
    ld bc, $6301
    ret c

    ld h, l
    ret c

    ld h, c
    call c, Call_000_0193
    ld h, d
    jr @+$03

    sub $2e
    ld bc, $2ed2

Jump_005_563f:
    inc l
    ld [$0116], a
    inc e
    ld d, d
    dec a
    ld d, e
    ld bc, $0582
    ld d, h
    sbc b
    ld h, e
    jp hl


    ret


    db $ed
    add $03
    cp e
    call nz, Call_005_505b
    ld b, [hl]
    ld h, e
    ld h, d
    call c, Call_000_06f7
    ld bc, $02a4
    add hl, sp
    ld bc, $561e
    ccf
    ld d, [hl]
    dec b
    sbc a
    ld a, d
    ld b, [hl]
    inc bc
    ld bc, $9f18
    add c
    adc l
    ld a, d
    jr nz, jr_005_5600

    ld a, b
    ld bc, $e68f
    ld bc, $b80b
    ld h, e

jr_005_567a:
    adc d
    inc b
    ld d, [hl]
    jr nc, @-$44

    ld a, b
    sub d
    ld a, b
    jp z, Jump_005_7630

    nop
    dec bc
    or d
    ld c, h
    or a
    ld h, b
    and l
    rlca
    nop
    sub b
    ld l, a
    nop
    dec b
    and h
    inc c
    call nc, $0115
    rst $08
    nop
    ld [hl], c
    rlca
    ld e, $01
    ld c, d
    cp [hl]
    ld b, $01
    inc a
    ld d, d
    cpl
    ld b, $01
    cp h
    ld a, d
    jp nz, $0106

    ld l, c
    ld h, b
    ld e, $4d
    rst $38
    ld a, [bc]
    ld l, e
    ret nz

    ld b, c
    ld c, e
    cp a
    ld c, b
    cp a
    ld c, a
    jr c, jr_005_567a

    ld b, b
    ld bc, $6c7f
    add b
    inc de
    ld h, c
    ld [hl], b
    and d
    ld bc, $9b7f
    ld bc, $0000
    ld d, c
    jp nc, Jump_000_12af

    rst $28
    ld a, [c]
    rst $28
    ld [bc], a
    ld h, e
    rst $38
    ld bc, $01fe
    nop
    rra
    cp h
    ld b, d
    inc a
    ld [bc], a
    inc e
    ld [bc], a
    inc c
    jr c, @+$04

    db $fc
    ld bc, $a1fe
    xor c
    ld b, b
    ccf
    ld bc, $7729
    nop
    ld [hl], e
    adc [hl]
    dec [hl]
    ld bc, $2871
    ld d, l
    ld a, a
    ld c, e
    ld c, a
    ld h, e
    or b
    ld d, l
    ld c, e
    cp h
    ld h, d
    ld e, l
    rrca
    cp $ff
    ld b, $3b
    ld a, [c]
    rrca
    ld b, l
    ld [hl], e
    jp nc, $829f

jr_005_570a:
    jr nc, jr_005_570a

    db $fc
    ld [bc], a
    ld b, h
    ld bc, $823c
    and e
    jp $c0bf


    ld b, a
    ld bc, $3880
    sbc e
    db $e3
    add b
    jr nz, @-$0d

    nop
    ld bc, $1cf9
    nop
    inc bc
    db $fc
    inc a
    ld h, c
    nop
    ld d, $80
    ret nz

    and b
    ld [hl], $21
    dec l
    jp z, $010f

    ld c, b
    ld bc, $7123
    ldh [$ca], a
    add b
    ld a, a
    sbc a
    nop
    ld a, a
    and c
    ld a, a
    and e
    ld a, a
    sub e
    ld a, a
    add [hl]
    rst $20
    ld bc, $1f03
    cp $c1
    cp $81
    sbc c
    inc bc
    ld bc, $c061
    ld bc, $7f8c
    adc a
    ld a, a
    ld [hl], c
    sbc b
    ld bc, $b9bc
    call c, $8101
    dec e
    ld sp, $f1fe
    cp $19
    add $01
    dec a
    call z, $01e6
    rrca
    ret nz

    ld [de], a
    dec d
    ld a, a
    rra
    rst $38
    ld b, l
    inc b
    rra
    and l
    ld e, a
    ld e, d
    dec b
    ld sp, $8103
    ld d, l
    rst $38
    inc c
    inc bc
    ld bc, $42aa
    ld d, l
    inc bc
    jp Jump_005_5f0f


    rst $38
    ld b, d
    dec e
    inc bc
    sla a
    inc l
    inc bc
    daa
    or d
    inc bc
    rst $08
    daa
    ld [$2f71], sp
    dec e
    nop
    dec bc
    inc bc
    inc l
    daa
    rrca
    or b
    daa
    and a
    ld e, a
    cp c
    ld b, h
    ld d, c
    rlca
    xor c

Jump_005_57a8:
    ld d, a
    ld d, b
    dec b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    add b
    pop de
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$0e]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ld a, [bc]
    ld h, b
    nop
    call z, $9303
    add hl, bc
    ld [$004b], sp
    dec bc
    cp a
    ld bc, $4204
    rst $18
    ld bc, $1540
    ld a, [bc]
    ld bc, $030c
    inc e
    dec d
    ld a, [bc]
    ld d, e
    daa
    or [hl]
    ld sp, hl
    or b
    dec h
    add hl, bc
    nop
    inc bc
    inc de
    ldh [$ad], a
    ld e, b
    xor d
    ld e, h
    ret nz

    ld b, $01
    ld l, d
    call c, $fc5a
    sbc [hl]
    ld b, $7c
    xor h
    ld e, [hl]
    xor b
    ld e, [hl]
    ld a, [hl+]
    rst $08
    add hl, sp
    inc de
    dec b
    rrca
    ld e, a
    db $10
    ldh [$ac], a
    inc bc
    ld e, $2f
    dec bc
    nop
    ld b, $01
    ld a, e
    rst $38
    rlca
    ld bc, $08c3
    ld e, c
    ld a, [bc]
    nop
    ld [$019e], sp
    ld [bc], a
    nop
    ld e, h
    cp $39
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    rrca
    adc h
    ld hl, $5ca8
    ld e, a
    and h
    nop
    ld e, b
    or h
    ld c, b
    sub h
    ld c, b
    call nc, $5408
    ldh a, [rIF]
    ld bc, $0856
    ld d, d
    ld bc, $5a0c

Call_005_5846:
    inc c
    ld c, d
    inc e
    ld a, [hl+]
    inc e
    ld bc, $0143
    nop
    inc bc
    ret


    ld bc, $7f1e
    ld a, a
    rlca
    ld a, a
    add d
    dec e
    ld b, $e1
    ld bc, $070b
    inc d
    rrca
    add hl, hl
    ld e, $32
    inc e
    ld d, h
    jr c, jr_005_5867

jr_005_5867:
    pop de
    rra
    ld bc, $7ffa
    add b
    add b
    ld b, b
    ld a, a
    ld h, h
    jr c, jr_005_58db

    jr nc, jr_005_5867

    inc b
    ld bc, $7bff
    ld b, c
    add hl, hl
    ld c, b
    ld a, a
    ld [bc], a
    call nz, $fe3f

jr_005_5881:
    dec b
    cpl
    cp $01
    ld bc, $2f0b
    ccf
    nop
    add [hl]
    adc a
    nop
    ld h, a
    add b
    db $d3
    ldh [$29], a
    ldh a, [$95]
    ld a, b
    ld c, h
    jr c, @+$81

jr_005_5898:
    ld [hl], b
    db $fc
    inc de
    inc c
    ldh a, [$c6]

jr_005_589e:
    cp a
    jr jr_005_5881

    pop bc
    nop
    sbc b
    ldh [$60], a
    add b
    ld h, $1c
    ld d, $0c
    rst $30
    inc b
    ld bc, $0482
    ld e, e
    ld l, c
    jr nc, jr_005_5918

    add hl, sp
    inc e
    ld d, e
    ld a, h
    db $ed
    jp z, Jump_005_7929

    ld e, h
    ld d, h
    daa
    add hl, sp
    inc sp
    inc e
    jr z, jr_005_58e3

    ld d, $0f
    dec c
    inc bc
    rlca
    nop
    ld bc, $bc96
    add b
    sbc [hl]
    sbc c
    ld b, b
    rrca
    ld d, e
    sbc d
    ldh [$0c], a
    jr nc, jr_005_5898

    call Call_000_03f0

jr_005_58db:
    and $6f
    ld hl, sp+$65
    ld b, $68
    ld e, l
    ld l, l

jr_005_58e3:
    dec a
    inc de
    ld bc, $2f03
    or b
    sub c
    sub l
    dec d
    ld hl, sp+$69
    ld c, $f0
    or e
    ret nz

    rst $20
    jr c, jr_005_589e

    ccf
    ld de, $3a3e
    ld bc, $3141
    ld a, [hl-]
    inc bc
    ld a, [hl]
    ld bc, $030e
    ld [hl+], a
    ret c

    add b
    ld d, c
    ld d, a
    add b
    cp b
    ld bc, $0003
    ld a, [$ce02]
    rlca
    cp h
    ld bc, $e2e9
    rrca
    ld bc, $f111

jr_005_5918:
    jr nz, @-$1d

    nop
    ld a, h
    add b
    add [hl]
    db $fc
    ld [bc], a
    cp $fe
    add d
    cp $7c
    add d
    dec de
    inc bc
    ld b, c
    push de
    ld b, $01
    ld a, $46
    inc bc
    ld bc, $46a9
    or $03
    ld bc, $f431
    ld b, $01
    add e
    dec [hl]
    ld d, l
    nop
    ld a, [hl]
    or h
    ld c, a
    inc h
    sbc l
    dec [hl]
    ld b, d
    push de
    sub l
    or h
    xor l
    or d
    or l
    ld d, l
    ld l, b
    dec bc
    ld b, c
    adc l
    ld bc, $0a55
    sub l
    inc e
    rrca
    ld a, [hl]
    add b
    ld b, e
    ld c, $80
    call nc, Call_005_7e02
    daa
    cpl
    db $fc
    nop
    ld b, c
    inc bc
    db $fc
    ld hl, sp-$01
    rrca
    dec b
    ldh a, [$c0]
    nop
    ld a, a
    add b
    xor a
    dec hl
    inc h
    ret


    rst $28
    dec sp
    ld e, c
    ld l, e
    ld a, a
    rst $30
    inc b
    ld h, b
    ld a, l
    rst $38
    ld [bc], a
    ldh [$57], a
    ld b, b
    cp $8d
    rst $18
    jr c, @+$47

    ld b, c
    rrca
    ld de, $c20f
    dec b
    rlca
    rlca
    sbc a
    ld [bc], a
    ld bc, $0f12
    ld c, $34
    rst $38
    di
    nop
    jr jr_005_59ac

    ldh a, [$f7]
    inc bc
    ldh [$e7], a
    ld a, [de]
    nop
    rst $20
    ldh [rTIMA], a
    add a
    ld h, $07
    ld [$a24f], sp
    dec b
    dec [hl]
    rrca
    db $10

jr_005_59ac:
    rrca
    xor a
    ld d, c
    ld h, h
    inc bc
    inc sp
    inc hl
    inc bc
    rla
    jr c, @+$05

    ldh a, [$35]
    ldh a, [$03]
    dec bc
    ldh a, [rIF]
    rra
    nop
    rra
    ret


    inc b
    sub e
    rst $38
    ld b, a
    and h
    add c
    ld bc, $f393
    ld hl, sp+$03
    ld hl, sp+$01
    db $eb
    inc bc
    sub e
    xor [hl]
    pop bc
    pop bc
    or c
    pop af
    ld l, [hl]
    ld e, a
    ld e, e
    ld h, a
    scf
    cpl
    dec l
    ld a, $3b
    inc a
    rst $18
    ld hl, sp-$7d
    add e
    adc l
    adc a
    db $76
    ld a, [$e6da]
    db $ec
    db $f4
    or h
    ld a, h
    call c, $fb3c
    rra
    ld de, $15db
    add hl, de
    ld l, l
    dec e
    ld hl, $b625
    add hl, hl
    dec l
    ld de, $15db
    add hl, de
    ld l, l
    dec e
    ld hl, $b025
    add hl, hl
    dec l
    ld l, e
    inc e
    ld h, a
    ld bc, $701f
    rrca
    ld a, b
    nop
    inc h
    inc bc
    sbc c
    sbc e
    jr nz, jr_005_5a91

    ccf
    rst $10
    ccf
    and c
    ld a, c
    sbc a
    nop
    ld [hl], b
    ldh [$c0], a
    scf
    ldh [rP1], a
    ldh a, [rLCDC]
    ccf
    inc bc
    ld a, a
    inc bc
    ld a, l
    ret c

    dec b
    add hl, de
    jr nc, jr_005_5a50

    nop
    inc e
    rrca
    inc b
    inc bc
    ld a, [bc]
    ldh a, [rSC]
    ld hl, sp-$3a
    ld bc, $f008
    add hl, de
    inc b
    db $10
    ldh [rNR41], a
    ret nz

    add b
    db $eb
    dec hl
    add e
    ld c, $c9
    ld b, $21
    rra
    adc h
    dec h
    ld a, a

jr_005_5a50:
    dec d
    db $10
    add sp, -$73
    ret nz

    rrca
    jr nz, jr_005_5a5f

    rst $00
    add b
    ld h, a
    ld h, b
    ret nz

    ld b, h
    add b

jr_005_5a5f:
    ld a, a
    ld b, $ff
    dec e
    ld b, $fb
    add b
    nop
    push de
    ld h, b
    ccf
    jr c, jr_005_5a8b

    add hl, bc
    add hl, sp
    ld b, $10
    ld d, e
    rlca
    dec sp
    nop
    dec e

jr_005_5a75:
    dec a
    ld b, b
    or [hl]
    adc a
    ld [hl], l
    dec [hl]
    ret nz

    ld bc, $205c
    ld h, d
    ld bc, $7048
    rlca

jr_005_5a84:
    dec bc
    rra
    ld bc, $fe43
    ld c, a
    ld h, b

jr_005_5a8b:
    ld c, b
    dec de
    ld [hl], a
    rst $20
    jr jr_005_5a84

jr_005_5a91:
    ret c

    db $eb
    sub e
    ld bc, $383f
    ld bc, $993e
    rra
    nop
    jr jr_005_5aad

    ld c, $07
    ld [bc], a
    ld bc, $f804
    ld [hl], $80
    db $fc
    ld bc, $7305
    nop
    add e
    ld h, d

jr_005_5aad:
    ld b, l
    dec h
    ld [$0607], sp
    cpl
    db $fc
    nop
    add hl, de
    nop
    add sp, -$19
    db $10
    rst $08
    ret nz

    rra
    inc sp
    ldh [$cc], a
    or l
    inc de
    add e
    jr nz, jr_005_5a75

    ccf
    ld sp, hl
    ld [bc], a

jr_005_5ac8:
    adc $1e
    ei
    sub $37
    ld e, d
    rra
    ld l, h
    push af
    rra
    inc sp
    sbc a
    jr nz, @+$0f

    cp a
    ld [hl], b
    xor l
    rra
    ret z

    rst $00
    add e
    rra
    ld hl, sp-$46
    and l
    ld a, [$0ddc]
    rra
    ld c, $70
    ldh [rNR23], a
    ldh a, [$af]
    ld a, d
    ld b, b
    add l
    ld [hl], b
    rrca
    ld h, b
    inc b
    rra
    ld h, e
    inc e
    ld h, h
    dec de
    rra
    ld bc, $0100

jr_005_5afb:
    ld a, e
    dec e
    ld d, a
    ld b, b
    ld h, b
    jp z, $90ef

    ldh [$50], a
    ldh [rNR42], a
    ret nc

    ld h, b
    ld bc, $2526
    ld bc, $6c4d
    ld bc, $08f5
    ldh a, [$cf]
    ld hl, $0590
    db $76
    ld bc, $0eea
    nop
    ld c, a

jr_005_5b1d:
    ccf
    db $10
    adc $59
    ld [bc], a
    ld [$01a6], a
    ld d, b
    pop hl
    rst $38

Call_005_5b28:
    inc de
    ld bc, $04fe
    jp nc, $6063

    rrca
    push hl
    ld [de], a
    ld bc, $001d
    ld [hl], e
    ld e, $01
    ld [hl], h
    nop
    inc e
    jr z, jr_005_5b1d

    jr nc, jr_005_5b40

    add c

jr_005_5b40:
    jp hl


    or [hl]
    ld h, c
    ld [bc], a
    jr nc, jr_005_5ac8

    nop
    jr jr_005_5b4a

    push hl

jr_005_5b4a:
    db $fd
    ld [bc], a
    jr nz, jr_005_5afb

    ld d, d
    rrca
    inc b
    ld b, d
    nop
    ld bc, $27a5
    xor d
    rlca
    rrca
    ld [$f755], sp
    ld [$e5c2], sp
    rst $18
    jr nz, @-$7e

    rrca
    cp $10
    nop
    ret nc

    nop
    ld [hl], b
    db $10
    push hl
    db $fc
    ld [bc], a
    dec l
    ld d, h
    xor d
    inc e
    db $e4
    ld a, c
    db $76
    ld bc, $725d
    inc bc
    adc $91
    ld bc, $a7b6
    add c
    add l
    adc b
    adc [hl]
    add h
    ld bc, $7b36
    add c
    add l
    inc c
    inc [hl]
    ld h, e
    inc sp
    ld h, a
    inc bc
    scf
    inc b
    ld h, b
    or a
    ld h, b
    scf
    ldh [rTMA], a
    ld bc, $fb06
    ei
    ld l, a
    dec sp
    ei
    db $fd
    ld l, b
    ld h, l
    inc bc
    ld e, d
    dec b
    inc l
    xor c
    ld bc, $6001
    cp a
    cp a
    rst $38
    ld b, b
    cp a
    rst $18
    db $db
    ld h, l
    ld b, b
    inc bc
    dec b
    ld b, $fa
    ld h, h
    ld a, [$fadb]
    ld d, c
    dec bc
    ld l, d
    inc sp
    ld de, $812c
    inc bc
    nop
    cp l
    jr nz, @-$61

    inc a
    nop
    add sp, $02
    ld h, a
    sbc h
    call nc, $b19d

jr_005_5bcd:
    ld e, h
    rlca
    rlc e
    db $e4
    ld b, b
    ld bc, $03c4
    add h
    inc bc
    adc h
    ld l, a
    rlca
    db $10
    ldh [rNR50], a
    db $e3
    ld bc, $2208
    pop hl
    ld hl, $00e0
    ld hl, $0083
    inc bc
    ret nz

    inc hl
    ldh [rNR13], a
    ld a, [bc]
    ldh a, [$0b]
    ld hl, sp+$05
    sbc h
    ld a, [c]
    inc d
    jp Jump_000_2000


    jp $c724


    jr z, jr_005_5bcd

    db $10
    sbc a
    ld l, a
    jr nz, @+$3d

    ld b, $1e
    ld bc, $e020
    ld b, $01
    nop
    add d
    ld a, [hl]
    ld b, c
    ccf
    jr nz, jr_005_5c30

    db $10
    rrca
    ld [hl], $08
    rlca
    dec de

Jump_005_5c17:
    db $dd
    nop
    add hl, sp
    nop
    ccf
    ld b, b
    ld a, [hl]
    nop
    cp h
    add b
    inc sp
    ld e, b
    ret nz

    add hl, de
    db $10
    ld [$f8ff], sp
    inc b
    db $fc
    ld a, [bc]
    add d
    ld d, l
    nop
    ld a, [bc]

jr_005_5c30:
    xor e
    ld b, a
    xor a
    adc c
    add hl, bc
    ld l, $b3

jr_005_5c37:
    add hl, bc
    nop
    ld e, e
    adc a
    dec d
    dec d
    ld bc, $0729
    ld b, d
    rla
    ld d, l
    sub c
    db $ec
    ld l, c
    rst $10
    ld h, $00
    xor d
    add hl, de
    inc e
    db $dd
    nop
    xor e
    dec [hl]
    db $f4
    ld [bc], a
    dec h
    sub d
    inc bc
    jr c, jr_005_5c82

    rst $18
    add hl, hl
    dec d
    sbc c
    ld e, e
    rst $38
    call z, Call_000_0d29
    ld d, a
    db $e3
    dec hl
    xor [hl]
    adc $05
    dec l
    xor a
    inc a
    inc de
    ld l, $03
    ld de, $ec0a
    xor c
    inc h
    di
    inc bc
    ld sp, $ce15
    ld bc, $0011
    ret nc

    di
    xor e
    add e
    ld sp, $992f
    rlca
    add c

jr_005_5c82:
    dec b
    db $eb
    inc bc
    daa
    inc sp
    rla
    ld b, a
    ld a, [hl+]
    adc a
    dec bc
    ld [hl+], a
    ld bc, $3748
    daa
    ld a, [hl+]
    ld [c], a
    add hl, hl
    ld de, $6592
    ccf
    ld b, a
    ld bc, $f601
    ld a, l
    ld b, d
    add a
    and l
    db $10
    ld c, a
    call $03c2
    ld b, l
    nop
    jr z, jr_005_5c37

    inc bc
    ld bc, $4787
    ld [bc], a
    and b
    ld bc, $007b
    adc b
    jp hl


    ld c, e
    adc $0b
    ld b, b
    jr z, jr_005_5ccf

    db $10
    rrca
    add b
    nop
    ld a, a
    ld l, d
    dec d
    ldh [$1f], a
    ld a, [de]
    dec b
    ld e, d
    ld l, b
    dec b
    dec a
    ld a, [hl-]
    inc bc
    nop
    add a
    rlc b

jr_005_5ccf:
    pop de
    inc bc
    rst $08
    ld h, e
    rrca
    and b
    xor b
    di
    add l
    inc bc
    sub [hl]
    daa
    ld e, c
    inc bc
    daa
    ld h, l
    inc bc
    sbc [hl]
    daa
    ld [$512f], sp
    ld d, l
    ei
    nop
    db $eb
    ld bc, $2c27
    rrca
    daa
    ld bc, $0758
    ld b, $01
    ld d, [hl]
    ld bc, $f605
    ld a, [bc]
    ei
    ld c, [hl]
    rst $30
    nop
    pop de
    ret c

    nop
    ld l, b
    ld de, $e1e1
    sbc $01
    ret nz

    or e
    adc h
    and c
    sbc [hl]
    and b
    sbc a
    and b
    ld bc, $0f0f
    ld bc, $f70f
    rlca
    sbc e
    ld h, e
    dec bc
    di
    inc bc
    ld bc, $cfd0
    nop
    ld bc, $e7e8
    db $f4
    di
    ld a, [$fdf9]
    ld [$c531], a
    dec de
    rla
    rst $20
    add c
    ld bc, $cf2f
    ld e, a
    sbc a
    cp a
    dec sp
    ld h, h
    ld c, l
    nop
    nop
    cp [hl]
    cp [hl]
    ld e, c
    jr jr_005_5d60

    ld b, e
    ld [$2467], sp
    db $10
    ld l, a
    rrca
    jr @+$7f

    ld a, l
    sbc d
    rrca
    jp nz, Jump_000_0152

    and h
    cp b
    ld b, [hl]
    dec l
    ld b, d
    ld h, a
    nop
    or l
    dec de
    rra
    add c
    add hl, hl
    ld [hl], d
    add h
    and $00
    or a
    dec de
    rra
    adc e
    ld [bc], a

jr_005_5d60:
    dec sp
    db $fc
    db $fc
    add [hl]
    ei
    ld hl, sp-$09
    ldh a, [$ea]
    db $e4
    jp hl


    push hl
    db $ed
    pop hl
    di
    di
    rrca
    ld [hl], $3f
    ccf
    ld e, l
    ld h, c
    nop
    ld [hl], a
    rlca
    add a
    or a
    sub a
    and a
    or a
    add a
    rst $38
    ld [$8f49], sp
    and a
    sub a
    inc h
    rla
    rlca
    ccf
    rst $08
    rst $08
    dec b
    call nc, Call_000_2c9f
    ld [hl], e
    rrca
    cp $03
    and e
    ld e, a
    ld a, $92
    rst $08
    ld d, e
    cpl
    inc b
    dec de
    ld e, a
    jr nz, jr_005_5e12

    ld d, a
    inc e
    sub b
    sbc a
    jp z, $1bbe

    dec e
    ld a, [$020e]
    adc $37
    rrca
    ldh a, [rP1]
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    stop
    nop
    nop
    ld a, [bc]
    ld e, h

Call_005_5dbb:
    dec e
    inc de
    sbc [hl]
    ld a, [hl]
    inc b
    ld bc, $001e
    ld [$3900], sp
    rst $38
    rst $38
    inc bc
    inc c
    ld bc, $0702
    db $10
    ei
    ld [bc], a
    db $fd
    rlca
    cp b
    ld [hl], b
    ld b, $f9
    scf
    rst $08
    ld e, b
    cp a
    and e
    ld a, h
    ld l, h
    di
    db $d3
    cp h
    rrca
    rrca
    ldh a, [rP1]
    rst $38
    rlca
    ld hl, sp+$78
    add a
    add a

jr_005_5dea:
    ld a, b
    ld a, a
    ld b, d
    add b
    dec hl
    pop hl
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$1f], a
    ld e, $e1
    pop hl
    ld e, $fe
    ld bc, $0f87
    ld a, [hl+]
    push de
    nop
    ld l, $03
    jr jr_005_5dea

    ld a, [$fd1a]
    push bc
    ld a, $36
    rst $08
    srl l
    xor l
    ld d, d
    rrca
    cp a

jr_005_5e12:
    ld b, b
    inc c
    ld d, a
    xor b
    xor a
    ld d, b
    rlca
    db $eb
    ld l, e
    call nc, $bd07
    dec b
    ld a, [$03ff]
    ld a, [bc]
    push af
    dec bc
    or $14
    rst $28
    push af
    rrca
    add hl, hl
    rst $18
    ld a, [hl+]
    rst $18
    ld l, a
    ret c

    or a
    ld l, b
    cp $a0
    ld a, l
    ret nz

    cp d
    ld b, c
    ld [hl], d
    add l
    ld h, [hl]
    adc l
    sub $0d
    ldh a, [rP1]
    adc c
    rlca
    ld d, c
    cpl
    ld sp, $80ef
    ld bc, $000f
    sub c
    ld h, b
    add [hl]
    ld d, $78
    adc h
    ld a, e
    ld e, l
    ld bc, $f670
    dec de
    db $ed
    ld d, $7b
    dec b
    cp [hl]
    inc bc
    dec e
    jp nz, $c06f

    ld h, a
    ret nc

    ld l, e
    ret nc

    xor d
    ld d, l
    ret nz

    ldh [rOCPD], a
    or h
    sub l
    ld a, d
    ld d, e
    cp h
    ld c, b
    cp b
    xor e
    ld e, h
    and a
    ld e, h
    ld d, c
    jp z, Jump_005_563f

    ld b, b
    cp a
    ld bc, $3fd6
    ld bc, $bf55
    ld d, e
    cp l
    add $1d
    and [hl]
    pop bc
    ld bc, $3d86
    ld b, [hl]
    ret nz

    ld bc, $bdc6
    add [hl]
    db $fd
    db $f4
    ld [bc], a
    ld e, c
    sbc [hl]
    ld bc, $5902
    sub b
    ld bc, $d863
    inc c
    ld h, l
    ret c

    ld h, c
    call c, Call_005_6201
    sbc b
    ld bc, $2cd7
    inc bc
    call nc, $d32e
    ld l, $eb
    ld d, $10
    ld bc, $16ea
    dec b
    dec c
    ld d, d
    cp l
    db $d3
    dec a
    ld d, l
    or d
    dec b
    inc bc
    call nc, Call_005_6781
    rst $38
    rst $38
    ret


    db $ed
    adc h
    inc bc
    cp e
    call nz, Call_005_465b
    and c
    ld h, e
    ld h, d
    call c, Call_000_06eb
    ld bc, $372c
    rlca
    add a
    sub a
    and h
    inc b
    sbc a
    dec [hl]
    ld a, e
    ld b, [hl]
    ld bc, $049f
    add c
    adc l
    ld a, d
    adc [hl]
    ld a, b
    inc e
    ld bc, $018f
    rst $10
    dec bc
    inc c
    adc d
    inc b
    ld d, [hl]
    jr nc, @-$44

    ld a, b
    sub d
    ld a, b
    jp z, Jump_005_7630

    nop
    dec bc
    or d
    ld a, [hl]
    ld c, h
    ld [bc], a
    xor b
    ld [bc], a
    sub d
    nop
    ld d, l
    ld [bc], a
    xor e
    ld d, [hl]
    ret nz

    dec c
    ld b, b
    nop
    sub h
    nop
    dec c
    and d
    inc b
    ld e, l
    and [hl]
    sbc c
    ld [hl], c

Jump_005_5f0f:
    xor l
    rst $38
    ld d, [hl]
    rst $28
    ld b, b
    rst $38

jr_005_5f15:
    ld [hl+], a
    rst $38
    adc b
    rst $38
    dec h
    db $db
    sbc d
    ld h, l
    xor c
    ld e, [hl]
    db $ec
    adc c
    cp $5c
    sub b
    jr nc, jr_005_5f15

    ld a, [hl+]
    push af
    push de
    ld l, $6a
    or l
    sub l
    ld l, d
    ld d, l
    xor b
    xor e
    scf
    ld [hl+], a
    sbc d
    nop
    inc e
    jr z, jr_005_5f48

    ld [de], a
    dec [hl]
    nop
    ld b, h
    nop
    ld a, d
    add h
    dec l
    ret nz

    sub h
    ld [$2a1c], sp
    ld b, b
    sub b
    dec bc

jr_005_5f48:
    ld bc, $40a1
    ld c, b
    nop
    stop
    ld de, $4d4c
    nop
    ld [$07a4], sp
    jr nc, jr_005_5f5d

    inc de
    inc b
    nop
    add b
    and e

jr_005_5f5d:
    ld h, l
    ld [bc], a
    ld [$770f], sp
    ld [hl], a
    nop
    ld b, c
    ld bc, $050b
    ldh [rTIMA], a
    rrca
    and b
    ld b, b
    ld b, b
    and b
    jp z, Jump_000_0503

    nop
    rla
    inc bc
    nop
    rlca
    nop
    sub a
    nop
    ld d, a
    add sp, $46
    pop bc
    inc de
    add b
    ld h, b
    nop
    ldh [rP1], a
    ld bc, $e014
    ld b, [hl]
    and b
    add sp, $31
    sbc h
    ld e, c
    ld e, e
    ccf
    jp hl


    ld [bc], a
    rrca
    inc c
    ccf
    ccf
    nop
    ld bc, $693e
    ld bc, $3d01
    rlca
    ld a, [bc]
    dec b
    ld [hl], c
    ld a, h
    cp $be
    ld a, a
    rst $18
    ccf
    rst $28
    rra
    rst $30
    rrca
    ei
    rlca
    db $fd
    inc bc
    ld a, [$a005]
    sub [hl]
    add b
    add b
    ret nz

    nop
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    push bc
    ld h, c
    ccf
    ret nz

    jp nz, $e01f

    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fc
    db $fc
    ld b, d
    cpl
    rst $08

jr_005_5fd2:
    ccf
    ld b, e
    cpl
    cp $01
    reti


    ld [$212f], sp
    inc b
    push bc
    ld bc, $1e00
    rlca
    nop
    dec b
    add hl, bc
    ld d, e
    inc d
    rlca
    dec bc
    sbc c
    cp $00
    db $fd
    adc [hl]
    nop
    ld a, [$f500]
    nop
    ld [$d500], a
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    xor e
    db $ed
    add hl, de
    inc l
    ld de, $44c9
    ld [hl], $59
    push af
    ld bc, $0083
    ld c, c
    or [hl]
    cp [hl]
    ld b, c
    rst $10
    inc b
    rrca
    dec c
    ld h, $ff
    ld b, c
    cp a
    add c
    ld a, a
    ret nz

    ccf
    pop bc
    ccf
    add b
    ld a, a
    inc bc
    rrca
    ld sp, $3906
    pop de
    nop
    and l
    or [hl]
    xor c
    xor l
    or c
    reti


    or l
    cp c
    ld a, a
    ret z

    ld d, h
    ld b, d
    ld [bc], a
    ld e, e
    ld b, d
    rlca
    ld bc, $4b00
    or d
    inc a
    rlca
    ld [bc], a
    rra
    sub b
    inc bc
    nop
    jr nz, jr_005_5fd2

    add b
    jr nz, jr_005_6046

    or e

jr_005_6046:
    ld l, e
    nop
    reti


    inc bc
    inc bc
    sub a
    ld b, b
    rst $08
    dec e
    ld [bc], a
    ld c, b
    inc bc
    rla
    ld b, $ed
    pop bc
    ret c

    ret


    ld [$4d08], sp
    nop
    rla
    adc [hl]
    ld bc, $2020
    call z, $20d7
    ld [bc], a
    nop
    ld d, c
    jr jr_005_6080

    nop
    jp $0421


    ld [bc], a
    ld c, c
    dec hl
    dec d
    ld b, d
    dec b
    nop
    ld h, b
    rra
    ld l, e
    inc bc
    ld e, a
    rrca
    ld [$0705], sp
    ld d, a
    xor b
    db $fd

jr_005_6080:
    ld [bc], a
    add [hl]
    rrca
    ld b, b
    cp a
    inc b
    ld bc, $59a6
    ei
    inc b
    ld a, [bc]
    push af
    ld d, l
    jp nc, Jump_000_05ff

    ld h, b
    ld a, [$5407]
    nop
    xor d
    ld d, l
    db $db
    rlca
    inc bc
    inc b
    ld e, $af
    ld d, b
    ld d, l
    xor d
    inc c
    rlca
    cp d
    ld b, l
    ld sp, $49ae
    ld d, c
    ld a, $15
    rla
    add c
    rlca
    rst $18
    jr nz, jr_005_60d2

    rlca
    cp a
    ld b, b

Jump_005_60b4:
    daa
    rlca
    adc [hl]
    ld b, $67
    ld bc, $0bfe
    rlca
    ld bc, $f907
    add [hl]
    rla
    db $ed
    cpl
    db $dd
    rst $18
    dec a
    or c
    ld a, c
    ld h, b
    ldh a, [rSC]
    db $fd
    rrca
    inc bc
    dec b
    ei
    rlca

jr_005_60d2:
    ei
    dec bc
    rst $30
    nop
    inc b
    rrca
    rst $30
    ld c, $f7
    ret nz

    ldh [$c0], a
    inc e
    ret nz

    add b
    ret nz

    jp nc, $807d

    ld bc, $bf70
    db $10
    rst $38
    ret c

    rst $38
    nop
    call c, $dfff
    cp $c7
    rst $08
    add e
    rlca
    ldh a, [rTMA]
    ld c, a
    add b
    rst $38
    add c
    dec b
    inc bc
    add c
    ld bc, $0180
    ld l, b
    ld b, c
    ld l, [hl]
    inc sp
    ld a, [hl-]
    jr jr_005_6137

    ldh [rIE], a
    ld bc, $ff60
    nop
    ld a, a
    ld [hl], b
    ld [hl], b
    ld a, a
    jr nc, jr_005_6193

    ld d, $ef
    call nz, $1e54
    xor $2e
    ld bc, $fc10
    ld c, $2c
    sbc $3e
    call c, $de3d
    db $fc
    inc e
    inc a
    call c, $9001
    rlca
    ld e, a
    and b
    ei
    ld b, $94
    ld l, $2b
    call nc, Call_005_5846
    nop

jr_005_6137:
    ld d, c
    or b
    inc b
    ld a, a
    ld a, a
    jr c, @+$3a

    ccf
    ld l, $01
    db $10
    rra
    jr c, jr_005_615d

    ccf
    inc a
    rra
    db $fc
    rra
    rra
    inc e
    inc e
    rra
    ld bc, $0793
    rst $00
    ld b, $4f
    jr nz, @-$22

    adc e
    ld b, $1f
    ld [bc], a
    dec e
    add h
    ld a, a

jr_005_615d:
    cp a
    rra
    ccf

Jump_005_6160:
    db $eb
    ccf
    rst $18
    ccf
    ld [$153f], a
    ccf
    sub b
    or [hl]
    nop
    inc b
    cp a
    rst $38
    db $eb
    rst $38
    ld d, l
    and l
    ld a, [hl+]
    cp $20
    ld bc, $febf
    ld d, l
    ld [hl], h
    cp $00
    sbc e
    ld bc, $f778
    ld a, a
    ldh a, [$7c]
    di
    sbc $05
    ld a, [bc]
    rlca
    pop bc
    jp nc, $a27d

    db $ec
    inc de
    ldh [$08], a
    rla
    inc a
    ld a, e

jr_005_6193:
    ccf
    ld a, b
    dec [hl]
    ld a, $79
    dec b
    add e
    rlca
    ld e, $3d
    rra
    dec [hl]
    and h
    inc a
    dec b
    add a
    rlca
    rrca
    ld e, $a3
    ld b, $01
    ld [de], a
    scf
    add b
    ld a, a
    ret nc

    ccf
    rlca
    dec a
    rlca
    rrca
    ld b, $01
    or e
    inc de
    rla
    ret nz

    and d
    db $db
    call nz, $ff07
    push hl
    call Call_005_70aa
    nop
    ld d, l
    add d
    xor d
    ld d, l
    ld de, $b8ee
    rlca
    jr c, jr_005_61d4

    cp b
    and h
    ld bc, $0781
    jr c, @-$01

jr_005_61d4:
    add hl, sp
    db $fc
    and c
    inc bc
    ld bc, $0720
    call c, $1c03
    ld h, b
    inc bc
    inc bc
    jp $b100


    rrca
    ld [hl], $63
    rra
    ld bc, $2e37
    ld [hl], d
    ld sp, hl
    ld a, [de]
    ld [hl], b
    ld hl, sp+$70
    ei
    adc d
    ld [hl], c
    ld sp, hl
    db $fc
    db $fc
    cp $f8
    cp $0f
    ld c, b
    rra
    ld c, c
    ld bc, $9c07

Call_005_6201:
    dec de
    ld [hl], e
    rra
    add h
    ld bc, $079e
    ld [$d0df], sp
    add b
    ld bc, $83d0
    ld c, l
    ret


    ld d, e
    jp $3fed


    ld b, $b8
    ld c, e
    ld c, a
    db $fd
    sub $57
    ld a, c
    rrca
    ld [$001f], sp
    inc hl
    ld [bc], a
    rst $38
    ret c

    inc b
    rrca
    cp a
    ld bc, $f4fe
    ld [bc], a
    rrca
    and c
    rst $00
    rst $20
    ret nz

    di
    rst $00
    rrca
    rst $20
    rrca
    or d
    rlca
    ld l, a
    jr nc, @+$05

    rlca
    nop
    ld hl, sp-$01
    ei
    db $fc
    ld bc, $fcbc
    db $fd
    cp $fe
    db $fd
    add c
    inc bc
    ei
    db $e4
    rra
    ldh [rIE], a
    jp nc, $bfe7

    ld b, $00
    ld a, a
    add b
    cp a
    ld b, b
    inc bc
    ld a, $26
    reti


    ld [bc], a
    or b
    dec e
    ld bc, $9b78
    ld b, $0e
    rst $38
    ld e, a
    ld b, l
    rst $38
    ld l, h
    ld c, [hl]
    inc bc
    di
    ld a, [bc]
    ld bc, $b1bc
    or a
    cp [hl]
    ld a, c
    xor h
    dec b
    rlca
    db $76
    sbc $b7
    dec [hl]
    rst $18
    inc a
    dec b
    adc [hl]
    rlca
    rst $28
    jp z, $efb3

    ld c, c
    ld bc, $f907
    ld [$f7bf], sp
    push bc
    or a
    rst $30
    inc h
    ld bc, $fd07
    ld [$f8bf], sp
    inc b
    ei
    adc a
    ld e, $70
    ld c, a
    inc bc
    rst $08
    ld e, $71
    xor a
    inc bc
    rst $28
    jp $6f03


    sbc [hl]
    sbc l
    ld c, a
    ld [hl], d
    ld bc, $d02a
    push hl
    inc d
    add sp, $0a
    db $f4
    dec b
    ld a, [$1f20]
    ld [$0107], sp
    inc bc
    inc b
    inc bc
    ld bc, $0507

jr_005_62bd:
    inc bc
    ld [bc], a
    ld bc, $a455
    adc d
    pop de
    add e
    nop
    add e
    ret nz

    inc bc
    ld a, e
    add b
    dec sp
    ret nz

    ret nz

    rrca
    ret nz

    ret nz

    ld [$d5c0], a
    rst $10
    inc bc
    ld l, $d5
    push de
    jp z, Jump_000_1fe0

    jr nz, jr_005_62bd

    ld e, d
    pop hl
    cp c
    db $e3
    ld e, a
    db $e3
    db $eb
    ldh a, [$fa]
    pop af
    ldh a, [$fb]
    ei
    nop
    sub e
    ld [hl], l
    rst $18
    ld [$f5df], a
    rst $18
    rst $38
    add hl, de
    rra
    ccf
    rst $18
    inc b
    rst $18
    ld d, c
    add hl, sp
    ld d, d
    rst $08
    ret nz

    ld h, l
    and b
    add hl, sp
    ret nz

    rst $00
    rst $28
    db $10
    daa
    ret c

jr_005_6308:
    cpl
    ret c

    or a
    call c, $dc2b
    db $fd
    ld e, $3f
    sbc $be
    rst $18
    ld d, [hl]
    inc hl
    add [hl]
    inc b
    nop
    xor b
    rla
    ld d, b
    cpl
    ld bc, $04cb
    ld hl, sp+$10
    ldh [rLCDC], a
    jp Jump_005_4029


    ldh [$93], a
    inc bc
    cp l
    ld [hl-], a
    rst $00
    ld h, e
    inc e
    ld b, c
    ld a, a
    cp [hl]
    ld a, $41
    add b
    ld [hl], $c1
    inc d
    rst $30
    db $eb
    db $e3
    inc d
    ld [$04c5], sp
    rrca
    db $e3
    db $e3
    xor a
    ld b, c
    add b
    dec l
    jr nc, jr_005_6308

    db $10
    ldh a, [$e8]
    ldh [$d2], a
    rra
    adc a
    xor l
    ld [$0f7d], sp
    dec b
    inc a
    ld c, $10
    inc l
    pop bc
    nop
    ld c, a
    ldh a, [$08]
    rra
    ld d, l
    add b
    and b
    ld a, [$7b09]
    ld b, d
    ld bc, $0307
    ld bc, $060e
    jr c, jr_005_63a5

    jp c, $e10f

    inc de
    ld h, h
    ld hl, $5ecf
    sbc [hl]
    add c
    nop
    db $76
    ld bc, $7794
    ld c, $7f
    dec c
    ld [de], a
    ld bc, $0102
    ld [bc], a
    rst $10
    sub d
    nop
    dec c
    dec b
    add hl, de
    ld [$2330], sp
    sbc h
    add c
    scf
    ccf
    ld a, $9f
    add b
    ld bc, $025f
    inc b
    ld bc, $0804
    inc b
    ld l, e
    dec b
    ld [bc], a
    sbc h
    add hl, bc
    nop
    add hl, bc
    inc de
    dec bc

jr_005_63a5:
    ld [$0b10], sp
    db $10
    ld hl, $1617
    ld h, $11
    jr nz, @+$48

    ld hl, $4724
    adc e
    ld b, e
    ld d, h
    adc b
    ld bc, $0abb
    add sp, $01
    ld bc, $9f6c
    rst $08
    ld e, a
    or [hl]
    ret nz

    ld e, a
    scf
    xor e
    inc hl
    sub h
    ld [$0241], sp
    ld a, e
    ld [bc], a
    ld b, $01
    nop
    ld c, d
    ld l, b
    ld [bc], a
    ld [bc], a
    ld d, c
    rst $38
    ld e, a
    ld b, c
    jr nz, jr_005_6439

    inc bc
    sbc h
    ld bc, $9f1e
    sbc [hl]
    ld a, $02
    cpl
    or [hl]
    rrca
    ld sp, $e010
    rst $38
    ldh [$e0], a
    add b
    dec bc
    inc hl
    ld c, h
    ld hl, $264f
    ld c, [hl]
    inc c
    ld hl, $2640
    ld b, c
    ld l, a
    dec hl
    ld e, h
    ld b, e
    ld [hl], b
    sub h
    ld c, b
    inc bc
    call c, $9f41
    ld c, [hl]
    sbc [hl]
    ld b, c
    add b
    ld b, [hl]
    sub c
    ld b, h
    sub a
    ld c, e
    add e
    ld a, a
    ld a, a
    ld a, a
    nop
    call z, $0001
    adc a
    ld d, $2e
    ld hl, $1c10
    daa
    inc de
    inc hl
    inc d
    jr nz, jr_005_6433

    inc h
    ld de, $1227
    ld h, $01
    sbc a
    jr nc, jr_005_642d

    ld h, a
    cpl
    inc h
    ld c, b

jr_005_642d:
    ld h, b
    inc bc
    dec e
    ld b, c
    ld a, h
    cp [hl]

jr_005_6433:
    ld a, $40
    db $f4
    ld bc, $5f7f

jr_005_6439:
    dec d
    cp d
    ld [hl], c

jr_005_643c:
    ld b, b
    xor $80
    ld c, h
    or b
    and b
    sbc b
    db $10
    inc c
    ld l, b
    ld b, $0e
    ld b, h
    ld [hl], e
    cp d
    add hl, sp
    ret z

    adc a
    ret nz

    ld a, a
    rra
    ld bc, $d240
    ret nz

    add b
    ld [hl], b
    ld h, b
    inc e
    sbc h
    pop hl
    inc l

jr_005_645c:
    ld b, b
    jr nz, jr_005_643c

    sub $72
    jr nz, jr_005_6465

    pop hl
    sub b

jr_005_6465:
    nop
    ret nc

    ret z

    ret nc

    db $10
    ld [$0850], sp
    ld b, h
    ld l, b
    xor b
    add b
    ld d, [hl]
    add h
    ld [hl-], a
    call nz, $f214
    jp hl


    jr jr_005_645c

    ld [de], a
    add hl, bc
    ld e, a
    ld b, b
    ld a, l
    jr nc, @-$41

    inc a
    ccf
    dec [hl]
    ret nz

    dec d
    dec b
    db $f4
    jp hl


    ldh [$15], a
    ld [$c7af], sp
    ld h, b
    ld bc, $1c62

jr_005_6492:
    ld b, b
    ld d, c
    ld a, [hl]
    ld a, a
    ret nz

    ld [hl+], a
    ld a, a
    ld b, b
    ld [$405b], sp
    ld [hl], c
    ld bc, $405a
    add b
    ld [bc], a
    ld h, h
    ld [de], a
    ld b, h
    ld [hl], d
    or h
    ld [hl-], a
    inc c
    ld b, h
    add d
    inc [hl]
    jp nz, $e44f

    ld bc, $11e2
    ld a, [bc]
    ld h, b
    dec de
    ld b, d
    ld a, c
    add b
    adc a
    ld b, d
    add c
    ld [hl-], a
    pop bc
    ld [de], a
    pop af
    ld sp, $e1ea
    ld e, a
    cp $fe
    rst $18
    ldh a, [rOCPD]
    nop
    ld l, a
    add [hl]
    jr z, jr_005_6492

    ld [$e8e4], sp
    db $e4
    ld [$6804], sp
    inc b
    ld c, b
    ld h, h
    ld a, a
    ld [hl], b
    ld b, b
    ld a, a
    db $10
    or $c7
    cpl
    inc d
    ld [bc], a
    ld a, h
    inc e
    ld h, b
    ld [$7007], sp
    ld b, b
    xor b
    add b
    jr nz, jr_005_6569

    dec sp
    ccf
    db $10
    adc d
    ld [hl], e
    inc e
    and h
    db $10
    inc l
    ld [bc], a
    nop
    ld bc, $0055
    ld a, [hl+]
    ld a, [hl-]
    inc e
    inc hl
    dec bc
    rst $38
    cp $73
    rlca
    ld bc, $1e9a
    inc b
    dec b
    ld [hl], l
    add b
    xor c
    ld h, l
    ldh a, [rDIV]
    inc bc
    nop
    inc b
    ld [$0601], sp
    db $10
    ld c, $02
    dec d
    ld bc, $8904
    ld [$fc00], sp
    jr nc, @+$41

    ld e, l
    ld [$0010], sp
    sbc b
    ld bc, $1ece
    ld [bc], a
    ld c, $1e
    adc [hl]
    ld e, $ce
    ld e, $c1
    rlca
    sbc h
    inc a
    inc e
    jp nz, $9c01

    inc a
    jp $ab07


    ld d, h
    inc b
    ld [hl-], a
    xor [hl]
    ld d, b

Jump_005_6541:
    ld d, a
    xor b
    inc c
    rlca
    cp d
    ld b, h
    rlca
    jr c, jr_005_65c3

    ld a, b
    ld b, $01
    xor [hl]
    sub $84
    add a
    xor h
    ld d, b
    ld d, [hl]
    xor b
    inc c
    rlca
    cp h
    ld b, b
    rlca
    ld [hl], b
    ld a, b
    ldh a, [rTMA]
    ld bc, $1fce
    ld h, c
    rrca
    ld d, a
    rra
    adc $1f
    ld h, b
    rlca

jr_005_6569:
    sbc h
    ccf
    rra
    jp nz, Jump_000_3f57

    sbc h
    ccf
    pop bc
    rlca
    jr c, jr_005_65f4

    ccf
    sub b
    ld b, l
    ld a, a
    ld bc, $0790
    ld [hl], b
    rst $38
    ld h, h
    ld a, a
    dec [hl]
    rst $38
    inc h
    ld bc, $6607
    sbc l
    dec h
    dec a
    add a
    ld [hl], c
    sbc l
    ld bc, $cd1d
    add hl, bc
    adc a
    ld d, l
    cpl
    ld e, h
    ld d, b
    and d
    inc d
    ld l, b
    ld a, [bc]
    ld [hl], h
    dec b
    ld a, d
    jr nz, jr_005_65bd

    ret z

    rlca
    pop de
    inc hl
    inc b
    inc bc
    pop af
    rlca
    push af
    inc bc
    ld d, d
    xor c
    add h
    ld a, [$a4fe]
    rst $08
    ld d, $50
    rlca
    ld l, $80
    ld a, [hl]
    nop
    cp $48
    rst $08
    db $e3
    ld b, b
    rst $08
    nop

jr_005_65bd:
    xor a
    ret nz

    ld b, b
    rst $28
    and b
    rst $08

jr_005_65c3:
    ld b, b
    sbc a
    ld [$1b7a], a
    db $eb
    inc [hl]
    and b
    sub [hl]
    ld d, a
    inc bc
    inc b
    xor b
    ld b, h
    ld b, l
    xor b
    and l
    ld c, b
    ld bc, $9008
    ld c, e
    ld c, b
    sub b
    adc e
    ld d, b
    ld h, $11
    sub b
    ld [bc], a
    nop
    and b
    ld b, a
    jr nz, @+$25

    ld b, h
    ld [$5c43], sp
    ret nz

    inc hl
    rst $28
    rst $08
    jr nz, jr_005_6600

    daa
    ld [hl-], a
    and b
    rla

jr_005_65f4:
    ld bc, $e5c7
    db $10
    ld [$10d3], sp
    dec bc
    ld d, b
    dec bc
    dec h
    ld c, b

jr_005_6600:
    adc b
    dec h
    ret z

    dec b
    ld a, [c]
    inc b
    db $e4
    ld [de], a
    ld [$1ae2], sp
    ld d, d
    adc l
    ld bc, $0262

jr_005_6610:
    ld b, e
    ld b, $08
    pop hl
    dec c
    db $10
    jr jr_005_663b

    jr nc, jr_005_6661

    ld h, b
    adc a
    rst $18
    nop
    add b
    ccf
    pop de
    jp Jump_000_386a


    rla
    ld e, $03
    cp b
    db $f4
    ld [bc], a
    rlca
    inc b
    ld c, $08
    dec e
    db $10
    add hl, sp
    inc hl
    ld [hl], h
    ld b, b
    db $eb
    add h
    pop de
    rrca
    sbc [hl]
    and a
    cpl

jr_005_663b:
    or [hl]
    jr nz, jr_005_666d

    rst $20
    adc a
    ret nc

    rrca
    add b
    ld a, c
    nop
    ld [bc], a
    rrca
    ld h, e
    ld [hl], c
    inc e
    ld bc, $9ebf
    ld e, [hl]
    pop bc
    jr nz, jr_005_66b7

    ld de, $0b30
    reti


    dec b
    db $ec
    ld [bc], a
    or $dd
    dec a
    ld h, d
    rra
    cp $bb
    jr nz, @+$0d

jr_005_6661:
    ld c, [hl]
    add h
    rst $00
    pop hl
    inc de
    ldh [rSB], a
    nop
    ret nz

    nop
    ld [hl], $c0

jr_005_666d:
    dec d
    or $97
    cpl
    jr z, jr_005_65f4

jr_005_6673:
    cp a
    sbc $5e
    pop hl
    jr nz, jr_005_66ef

    ld de, $0b38
    dec e
    add l
    ld c, $02
    ld h, a
    ld bc, $6053
    or c
    jr c, jr_005_6610

    sbc a
    ld a, [hl-]
    rra
    ld b, a
    ld c, a
    cp a
    add b
    ld b, b
    cp h
    ld [bc], a
    ld c, a
    ld [bc], a
    xor a
    inc c
    nop
    db $10
    dec de
    jr nz, @+$39

    ld b, b
    ld l, d
    add l
    ret nz

    db $ec
    ld b, $57
    ld b, [hl]
    jr z, jr_005_6673

    ret nz

    inc bc
    ld e, a
    and b
    ld e, b
    ei
    ld [$fb31], sp
    nop
    ld bc, $8500
    sbc h
    dec [hl]
    cp a
    jr jr_005_66bd

    nop

jr_005_66b7:
    and e
    ld e, b
    di
    ld [$04ad], sp

jr_005_66bd:
    rrca
    ld d, a
    rst $28
    inc [hl]
    ld d, l
    rst $08
    ret nz

    rst $10
    ld a, l
    rlca
    ld h, b
    inc e
    ld b, b
    ld [hl], b
    add b
    call nc, $d007
    ld bc, $00fe
    inc bc
    db $fc
    ld b, $f9
    db $fd
    inc bc
    dec de
    rst $20
    ret nz

    ld bc, $df2f
    rst $18
    ccf
    cp a
    dec sp
    ld a, a
    ld a, b
    sub h
    push bc
    ldh [rHDMA2], a
    ld c, c
    add b
    ld a, [hl-]
    db $fc
    rst $38
    add b
    ld e, l

jr_005_66ef:
    rst $38
    rlca
    rst $38
    add e
    ld de, $8107
    inc bc
    ld c, h
    daa
    xor c
    rst $08
    nop
    add l
    ld a, [$f5ca]
    db $f4
    ldh [$fa], a
    push af
    ld sp, $fa75
    ld sp, $07fb
    add hl, bc
    scf
    dec c
    rlca
    dec e
    db $e3
    ld sp, $0088
    sbc a
    ldh [rWY], a
    dec b
    ret c

    ld d, h
    sub d
    adc a
    cpl
    ret nc

    ld [hl], d
    adc h
    ld bc, $43df
    inc b
    ld c, $1f
    ldh a, [$a4]
    ld h, a
    ld c, $f1
    push bc
    ld a, a
    inc bc
    db $fc
    ld d, e
    rst $10
    ld e, e
    jr nc, jr_005_6741

    inc d
    ld a, a
    rst $38
    cp a
    or h
    and c
    ldh [$1f], a
    rst $28
    pop hl
    dec h
    xor a
    rst $38
    inc bc

jr_005_6741:
    add a
    rra
    ld b, e
    db $dd
    add d
    ld c, b
    rst $20
    nop
    ldh a, [rIF]
    db $dd
    rrca
    ld c, e
    sbc a
    add b
    db $ec
    inc b
    ld [hl], a
    adc d
    or b
    rst $28
    jr nz, jr_005_67c2

    sub b
    add b
    adc b
    ld [bc], a
    add b
    add h
    add b
    add d
    add b
    add c
    rra
    rrca
    inc b
    ld a, e
    inc de
    ld a, [hl]
    xor e
    rst $10
    adc c
    add l
    rrca
    jp nz, Jump_000_000b

    ld [bc], a
    ld de, $2102
    ld [bc], a
    ld b, c
    ld [bc], a
    add c
    ld [bc], a
    ld bc, $a94f
    ld [bc], a
    ld [hl], l
    nop
    rst $00
    ld a, [hl-]

Call_005_6781:
    ld b, c
    nop
    ld hl, $f470
    add hl, bc
    ld a, [hl-]
    nop
    dec b
    pop af
    sub a
    call nz, $5b96
    ld a, [hl+]
    ld d, $55
    cp $a7
    ld [c], a
    ld [bc], a
    ld bc, $06bd
    ld bc, $3902
    add e
    ld e, c
    db $10
    rst $28
    ld l, c
    sub [hl]
    ret c

    inc b
    ld a, c
    jp Jump_005_57a8


    db $fc
    inc b
    ld l, b
    jr nz, jr_005_67cb

    rst $18
    ld h, l
    sbc d
    ld [bc], a
    add hl, sp
    pop bc
    rrca
    db $e4
    dec de
    jp nc, $f72d

    ld b, $bd
    ei
    ld bc, $d470
    ld h, a
    ld b, c
    ld c, e

jr_005_67c2:
    ld h, a
    rrca
    ld [hl], a
    ld l, a
    ld l, a
    ld a, a
    ld bc, $cfe4

jr_005_67cb:
    add d
    jp nc, $e600

    xor h
    or $46
    cp $52
    ld l, a
    ld [$676f], sp
    dec de
    ld [bc], a
    ld b, $55
    adc h
    or $10
    and $1b
    db $fd
    inc b
    rst $08
    jp nc, $f943

jr_005_67e7:
    nop
    dec b
    ld [c], a
    ld a, [bc]
    push de
    cp a
    nop
    ld l, l
    ld a, a
    ld [hl], h
    dec h
    ld [hl], c
    rst $10
    ld b, d
    sbc a
    ld [hl], c
    ld h, b
    add a
    cp b
    ld b, e
    db $fd
    nop
    sub h
    ld [$da24], a
    dec d
    cp a
    sub h
    ccf
    ld a, [bc]
    rst $18
    jp nz, Jump_000_0201

    rst $28
    ldh a, [$b0]
    ccf
    jr z, @-$29

    add hl, hl
    jr jr_005_67e7

    ld d, b
    xor e
    ld bc, $b740
    ld d, e
    rrca
    rrca
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld c, $30
    nop
    nop
    ld a, [bc]
    ld [hl], h
    inc l
    ld h, d
    ld [$046b], a
    ld bc, $ff1e
    rlca
    nop
    cp b
    ld [$0000], a
    ccf
    ld a, a
    ld a, a
    nop
    jr nz, jr_005_685c

    rra
    nop
    jr @+$3a

    ld c, l
    inc a
    ld b, l
    inc a
    rrca
    ld h, b
    inc d
    inc bc
    inc bc
    inc e
    rrca
    or e
    inc d
    inc e
    ld b, h
    dec sp
    rrca
    ld bc, $e01f
    rst $38
    rrca
    ldh a, [$f0]
    rrca
    adc b
    inc bc

jr_005_685c:
    ld a, a
    add b
    inc b
    rrca
    ei
    db $fc
    rlca
    rst $38
    ld sp, $030d
    cp $01
    ld h, b
    cpl
    rst $18
    ldh [$30], a
    ld b, $f8
    call Call_000_323c
    adc $0a
    cp b
    db $e3
    db $fc
    cp $fe
    nop
    inc b
    ld hl, sp-$08
    nop
    inc c
    inc e
    and [hl]
    ld e, $a2
    ld e, $2a
    jr jr_005_68db

    ld b, [hl]
    dec a
    ld e, l
    ld b, a
    ld sp, $3748
    ld c, c
    scf
    ld d, c
    cpl
    ld d, d
    cpl
    adc c
    db $76
    rlca
    ld hl, sp+$0e
    ldh a, [rNR33]
    ldh [$ba], a
    pop bc
    ld [hl], d
    add l
    ld h, [hl]
    adc l
    sub $0d
    ldh a, [rP1]
    adc c
    rlca
    rla
    ld sp, $60ef
    ld bc, $000f
    sub c
    dec b
    ld h, b
    add [hl]
    ld a, b
    adc h
    ld a, e
    add l
    ld bc, $7789
    sub $e4
    dec de
    ld a, d
    dec b
    cp l
    ld [bc], a
    ld e, $c1
    ld l, a
    ret nz

    ld h, a
    ret nc

    ld l, e
    ret nc

    ld d, h
    inc c
    and d
    sbc [hl]
    ld h, d
    sbc $22
    cp $92
    ld a, [hl]
    ld d, d
    cp [hl]
    ld a, [hl+]
    sbc $aa
    ld e, [hl]
    ld l, d

jr_005_68db:
    rra
    inc b
    ld bc, $3f56
    nop
    ld bc, $3f55
    ld d, e
    dec a
    add $1d
    ld [hl], b
    and [hl]
    ld bc, $3d86
    ld [hl], b
    ld b, [hl]
    ld bc, $bdc6
    dec a
    add [hl]
    db $fd
    ld [bc], a
    ld e, c
    daa
    ld bc, $02a4
    ld e, c
    ld bc, $6303
    ret c

    ld h, l
    ret c

    ld h, c
    call c, $0126
    ld h, d

jr_005_6907:
    ld bc, $960c
    ld l, [hl]
    sub $2e
    ld bc, $12ca
    ld [hl], $ea
    ld d, $0e
    ld bc, $3d52
    ld d, e
    ld b, c
    ld bc, $5405
    ld c, h
    ld h, e
    db $ec
    ret


    ld h, e
    db $ed
    inc bc
    cp e
    call nz, Call_005_5b28
    ld b, [hl]
    ld h, e
    ld h, d
    ld a, d
    call c, $0106
    swap a
    inc h
    ld bc, $f399
    ld [bc], a
    sbc a
    ld b, [hl]
    ret nc

    inc bc
    ld bc, $c19f
    add c
    adc l
    ld a, d
    adc [hl]
    ld a, b
    rlca
    ld bc, $358f
    ld bc, $c30b
    adc d
    inc b
    ld d, [hl]
    jr nc, jr_005_6907

    ld a, b
    sub d
    ld a, b
    jp z, Jump_005_7630

    nop
    rrca
    dec bc
    or d
    ld c, h
    nop
    add hl, bc
    nop
    nop
    ld a, [hl+]
    ld bc, $051a
    dec d
    ld [bc], a
    inc h
    ldh [$09], a
    daa
    rlca
    dec h
    ld l, e
    dec b
    dec b
    adc [hl]
    sub d
    ld l, h
    ld d, h
    cp d
    inc [hl]
    cp $c6
    nop
    ld [bc], a
    nop
    ld [hl], d
    ld [hl], b
    ld d, b
    ld d, d
    dec b
    dec b
    inc de
    nop
    rlca
    daa
    jr nz, jr_005_6982

jr_005_6982:
    jr jr_005_698b

    ld [de], a
    dec b
    db $76
    ld a, [hl+]
    sbc l
    add $11

jr_005_698b:
    ld d, d
    ld d, b
    inc bc
    add $1b
    inc b
    cp $25
    jp nc, Jump_000_3829

    ccf
    ld a, [hl-]
    ccf
    inc b
    ld h, b
    nop
    inc hl
    ld l, $0e
    ld a, [hl+]
    ld a, [bc]
    or c
    ccf
    add [hl]
    add b
    ld [$d802], sp
    jp c, $9290

    ld a, [bc]
    jp Jump_000_2a12


    ld c, $2e
    ld [de], a
    dec de
    db $10
    rrca
    dec de
    ccf
    jp c, Jump_000_13d8

    ld h, a
    ld bc, $143f
    add a
    ld bc, $0a3f
    ld bc, $0c12
    ccf
    dec b
    ld [bc], a
    rlca
    dec de
    ld d, $04
    dec d
    nop
    nop
    ccf
    xor d
    ld a, h
    db $fc
    ld a, [hl]
    ld e, b
    cp $ba
    jr c, jr_005_6a57

    ld c, $15
    rla
    dec de
    nop
    dec c
    ld [bc], a
    ld hl, $2539
    ld a, [bc]
    ccf
    ld h, $15
    dec e
    ld c, h
    inc [hl]
    ccf
    add b
    inc bc
    add b
    ret nc

    ret nc

    ldh a, [$f0]
    pop af
    adc d
    nop
    ei
    ld h, b
    nop
    ld de, $1515
    rla
    rla
    ld d, b
    dec sp
    nop
    scf
    scf
    dec b
    ccf
    ccf
    cp a
    cp a
    sbc a
    ld [hl], $00
    rlca
    nop
    cp b
    ld e, d
    ld a, a
    ld a, a
    rst $38
    rst $38
    adc b
    adc b
    call z, $ddcc
    db $dd
    rst $18
    rst $18
    ld bc, $01af
    ld bc, $2b2b
    cpl
    rst $00
    nop
    ccf
    ld b, h
    or [hl]
    ld hl, $2700
    inc h
    add hl, hl
    sbc b
    nop
    ld e, a
    ld [$85ea], a
    ld d, a
    add c
    rrca
    push bc
    push bc
    rst $28
    rst $28
    pop af
    ld [$70f3], sp
    cp $fe
    db $ec
    db $ed
    ret nz

    jp nc, $eae8

    push af
    push af
    jp c, $92da

    ld de, $3f01
    db $fd
    db $fd
    ld a, [$aefa]
    ld de, $a21b
    and d
    sbc b
    cp c

jr_005_6a57:
    call nz, $f2cd
    or $fa
    ei
    ld sp, hl
    ei
    ld de, $2906
    push hl
    push hl
    ld c, c
    ld e, l
    ld [hl], c
    nop
    ld c, e
    ld l, e
    ld d, e
    ld e, e
    ld h, a
    ld [hl], a
    rst $08
    rst $28
    sbc $97
    ld [bc], a
    ld b, l
    pop bc
    ld d, a
    rst $10
    rst $10
    sub l
    sub l
    sbc h
    ld hl, $25fc
    jp $f46f


    db $f4
    ei
    sbc b
    cpl
    dec bc
    jr nz, jr_005_6afa

    cp b
    ld l, h
    ret nz

    db $e4
    ld b, h
    ld h, l
    ld d, h
    ld d, [hl]
    ld c, c
    call $fb73
    add a
    rst $00
    sbc c
    ld de, $18f2
    di
    ret z

    ret


    ld d, e
    ld [$2149], sp
    or h
    or l
    ld d, e
    inc c
    xor l
    call Call_005_5dbb
    cp e
    db $fd
    ld sp, $a3b5
    xor e
    dec hl
    xor e
    dec bc
    sbc e
    ret nc

    push de
    add b
    and c
    add e
    xor a
    dec h
    ld h, a
    ld c, b
    ld l, l
    db $10
    cp d
    ld [hl-], a
    db $76
    daa
    rst $38
    rla
    rst $10
    inc de
    ld d, e
    ld de, $2555
    ld [hl], l
    and h
    xor h
    add l
    xor l
    ld c, c
    db $eb
    inc de
    ld a, a
    inc b
    or a
    adc a
    ld e, a
    ld hl, sp-$06
    inc b
    ld l, e
    rrca
    add c
    sub [hl]
    rst $00
    rst $10
    call nc, $80d4
    and l
    jp nz, $cbca

    res 0, c
    xor c
    add b
    and d
    ld [hl+], a
    ld l, [hl]
    db $e4
    rst $38
    ld l, e
    ld l, e
    ld e, c
    nop
    ld b, h
    ld h, h
    sub h
    sbc l
    ret


    rst $08

jr_005_6afa:
    inc b
    ccf
    inc de
    inc l
    cp [hl]
    ld l, $18
    add hl, hl
    db $fc
    db $fc
    add hl, sp
    ret nz

    ret z

    inc de
    ld a, [bc]
    ccf
    xor h
    ld e, h
    db $ed
    add hl, sp
    cpl
    xor a
    and a
    or a
    ld de, $50d5
    ld a, h
    call nz, $f8ff
    ld sp, hl
    ld bc, $000e
    inc bc
    dec b
    ldh a, [$f4]
    ldh a, [$f6]
    rra
    dec bc
    nop
    sbc a
    rra
    ld e, a
    add [hl]
    rrca
    rrca
    rlca
    rlca
    add a
    add a
    ld e, a
    rst $18
    rrca
    cpl
    pop af
    di
    or e
    nop
    ldh a, [$f5]
    and $ef
    jp $e9d3


    db $eb
    ret nz

    rlca
    ld a, [c]
    rst $30
    rrca
    adc a
    sbc a
    ret nz

    cp [hl]
    rst $18
    cpl
    rst $28
    adc a
    xor a
    ldh [rTMA], a
    rst $18
    ld c, a
    rst $28
    ld hl, $fbfb
    rra
    xor h
    rla
    rlca
    inc d
    rrca
    xor a
    sbc a
    rla
    ld bc, $e707
    add e
    set 2, e
    db $d3
    cpl
    ld sp, $ea1f
    rst $28
    add e
    dec bc
    adc c
    xor e
    ret nc

    rst $10
    ld [de], a
    rra
    adc a
    rst $28
    ld bc, $8737
    rst $20
    jp $d7cb


    rst $10
    ld h, $1f
    ld a, e
    ret nz

    ld a, c
    db $f4
    or $e8
    db $ec
    db $e3
    db $10
    db $eb
    rst $20
    rst $20
    rra
    ret nz

    ld [hl], a
    cpl
    ld l, a
    scf
    scf
    sub a
    ld l, h
    or a
    db $dd
    pop hl
    inc bc
    ld e, l
    ld bc, $6bf1
    sub c
    add a
    ld [hl], b
    daa
    ld a, [c]
    db $db
    pop hl
    ld h, e
    pop af
    sub a
    ldh [rPCM34], a
    jp nz, $80e0

    call c, $c1c3
    adc $ee
    daa
    and l
    inc bc
    jp z, $d383

    jp Jump_000_23e4


    ld b, e
    or e
    sub e
    ld h, c
    daa
    ret nz

    ld c, a
    ld [bc], a
    db $d3
    inc bc
    add hl, hl
    rlca
    nop
    xor [hl]
    ld bc, $af19
    add c
    call $ca82
    call nz, Call_000_00ed
    and [hl]
    add b
    ret nc

    ret nz

    nop
    ldh [$d0], a
    sbc a
    ld h, h
    ld e, h
    sbc e
    ld [hl-], a
    adc c
    ld [hl], a
    inc [hl]
    rst $38
    rst $08
    rst $38
    ld [hl], a
    rst $38
    sbc l
    rst $38
    ld h, [hl]
    rst $18
    rrca
    ld l, h
    rst $20
    sub e
    sbc c
    ld l, [hl]
    add $ff
    db $ed
    rst $38
    jp c, Jump_000_13ff

    rst $38
    ld b, h
    rst $38
    ld e, l
    or d
    sbc e
    ld h, h
    ld h, $d8
    ld e, c
    ld [hl+], a
    add $00
    inc sp
    ld d, d
    ld e, l
    scf
    ld bc, $99d9
    ld h, [hl]
    ld c, d
    sub h
    dec [hl]
    ld [$0f94], sp
    jr nc, jr_005_6c22

    nop
    ld [hl], h

jr_005_6c15:
    ld a, [bc]
    sbc e
    nop
    add [hl]
    ld l, h
    inc [hl]
    db $fd
    jp z, $733f

    ld l, $3f
    xor e

jr_005_6c22:
    inc e
    ld d, h
    ld d, $80
    sub c
    ld h, h
    add $eb
    push hl
    ei
    jp z, $1bff

    ccf
    cp b
    ld b, d
    add sp, -$61
    or a
    ld b, b
    ld l, b
    inc b
    add b
    ld [$0448], sp
    inc b
    inc bc
    cpl
    pop hl
    jp c, Jump_000_31ed

    ld a, $14
    dec de
    ld a, [de]
    inc e
    inc sp
    jr jr_005_6c97

    and b
    nop
    rrca
    ld a, [hl]
    rst $38
    ldh a, [$61]
    dec bc
    jr nz, jr_005_6c15

    ld d, c
    jr nz, jr_005_6c8a

    ld e, a
    nop
    inc l
    rst $20
    inc de
    ld d, e
    dec l
    ld b, $7f
    ld l, a
    ccf
    scf
    ld a, a
    ld d, c
    ccf
    inc b
    ld a, a
    ld e, c
    ld [hl], $33
    inc c
    ld h, h
    ld [de], a
    add hl, sp
    nop
    ld b, [hl]
    nop
    add hl, de
    ld [hl-], a
    rra
    inc [hl]
    rst $20
    ret z

    jp z, Jump_005_60b4

    cp $f6
    db $fc
    db $ec
    cp $8a
    db $fc

jr_005_6c83:
    jr nz, jr_005_6c83

    sbc d
    ld l, h
    call z, Call_000_2630

jr_005_6c8a:
    ld c, b
    sbc h
    nop
    ld h, d
    nop
    sbc b
    jr nc, @+$21

    rlca
    ld a, a
    ld [bc], a
    ld e, b
    ld c, a

jr_005_6c97:
    ld bc, $5500
    ld c, a
    cp $7f
    ld [bc], a
    add sp, -$33
    rst $38
    cp e
    ld a, a
    ld hl, sp-$34
    ld bc, $0001
    ld bc, $ec00
    ld b, $c1
    inc bc
    ret nz

    jp $e3e0


    ldh [$e7], a
    inc e
    ld bc, $e7e1
    ld b, b

jr_005_6cb9:
    ld h, c
    ld a, a
    dec h
    rra
    rst $38
    ld a, a
    rst $30
    ld bc, $e1ff
    inc sp
    rst $38
    db $fc
    db $fd
    inc bc
    rrca
    ld h, b
    inc bc
    nop
    jp $e303


    rlca
    jr jr_005_6cb9

    add a
    rst $30
    ld bc, $f7c7
    ld c, h
    pop af
    ld bc, $40f9
    ei
    ld bc, $fbf8
    ld sp, hl
    ld [$244b], sp
    rst $08
    rst $28
    ld bc, $df14
    rst $18
    sbc a
    ld bc, $d8b8
    db $fc
    db $fd
    db $f4
    push af
    ldh a, [$f1]
    ldh [$e1], a
    ldh [$e0], a
    call nz, $90c4
    sub h
    adc d
    sbc [hl]
    daa
    ld a, h
    nop
    cp $3e
    rst $38
    ld [$41be], sp
    ld c, c
    db $fd
    add sp, -$3b
    ld [hl], b
    ld sp, hl
    ld bc, $fb70
    nop
    jr nc, jr_005_6d8e

    inc b
    rst $10
    inc h
    xor [hl]
    cp a
    cp a
    ld [hl], b
    ccf
    ld bc, $b737
    nop
    ld h, a
    ld h, a
    daa
    daa
    inc de
    ld d, e
    add h
    call nc, $8c8e
    adc a
    rla
    ld a, a
    dec d
    and e
    rla
    inc e
    add e
    cp a
    adc a
    ld bc, $0fdd
    inc a
    ld h, c
    ld bc, $0007
    ld hl, sp-$3f
    db $fd
    pop af
    ld [hl+], a
    scf
    inc e
    dec a
    rst $08
    ld bc, $ef70
    nop
    rst $20
    rst $28
    ld [hl+], a
    ldh [$ef], a
    ld e, h
    db $eb
    di
    ld bc, $f770
    nop
    rst $20
    rst $30
    ld [hl+], a
    rlca
    rst $30
    cp c
    ld e, a
    nop
    db $f4
    ld b, $00
    push af
    ld bc, $8ddc
    rst $18
    nop
    db $10
    db $10
    ld a, b

jr_005_6d68:
    ld e, b
    db $fc
    jr c, jr_005_6d68

    ld a, b

jr_005_6d6d:
    jr nz, jr_005_6d6d

    cp h
    ld c, c
    db $fd
    add hl, sp
    db $fc
    db $fc
    inc bc
    ld h, b
    dec b
    db $fd
    cp b
    cp $34
    ld a, b
    db $fc
    sbc e
    dec a
    ld bc, $1f03
    dec [hl]
    dec de
    add hl, sp
    rlca
    rla
    sbc h
    ld hl, $1bfc
    ld [hl], e
    ld a, b

jr_005_6d8e:
    inc hl
    ret nz

    inc b
    rra
    call c, $04dd
    inc h
    nop
    ld e, c
    cp c
    rra
    ld a, b
    cp b
    cp d
    jr c, jr_005_6e1b

    inc b
    push de
    ld b, l
    rst $38
    ld [hl], $36
    adc l
    adc l
    adc e
    adc e
    ld h, e
    ld h, e
    db $e3
    ei
    db $db
    rst $38

jr_005_6daf:
    or l
    rst $38
    db $76
    rst $30
    ld e, [hl]
    ld e, [hl]
    sbc l
    sbc l

jr_005_6db7:
    sbc e
    sbc e
    ld b, c
    ld b, c
    push bc
    db $dd
    set 5, a
    adc l
    rst $18
    ld e, [hl]
    rst $38
    ld l, [hl]
    rst $38
    adc l
    rst $38
    pop bc
    add hl, bc
    add $ce
    and [hl]
    xor a
    adc h
    rra
    sbc l
    rst $18
    dec c
    ld e, [hl]
    pop hl
    dec b
    sbc e
    cp a
    ld [hl], d
    rlca
    rst $18
    jp $91db


    or l
    add hl, sp
    ld a, l
    ld a, [hl-]
    cp e
    ld l, h
    db $ed
    or c
    di
    pop de
    db $fd
    add $de
    rst $00
    rst $38
    call z, $ad1f
    dec l
    rst $28
    ld l, $7a
    rst $38

jr_005_6df4:
    jr jr_005_6daf

    ei
    reti


    db $fd
    add d
    db $db
    and e
    cp e
    db $d3
    rst $30
    or c
    ei
    dec c
    db $76
    rst $38
    jr nc, jr_005_6db7

    rst $38
    add hl, bc
    ld h, e
    ld [hl], e
    ld h, l
    add hl, sp
    push af
    db $db
    add hl, de
    and h
    dec c
    rra
    jr nc, jr_005_6df4

    ei
    ccf
    adc c
    xor l
    sbc h
    ld e, $be

jr_005_6e1b:
    ld e, h
    db $dd
    ld [bc], a
    rrca
    inc bc
    add c
    xor l
    xor h
    cp [hl]
    ld a, [hl-]
    ld a, [hl]
    ret nz

    ld [bc], a
    cpl
    ld e, e
    rst $38
    sub l
    rst $18
    sub c
    db $76
    db $db
    rrca
    ld l, $04
    inc b
    inc a
    ld e, $16
    ccf
    ld c, $3f
    ld e, $7f
    cpl
    ld a, a
    ccf
    ld a, a
    ld bc, $0301
    inc bc
    inc de
    nop
    ld h, b
    scf
    nop
    or a
    daa
    and a
    cpl
    ld h, [hl]
    xor a
    ld de, $191e
    db $eb
    db $ec
    ld e, h
    dec de
    rra
    rra
    add b
    rlca
    xor a
    rrca
    adc a
    ld h, a
    rrca
    nop
    adc a
    ld d, l
    dec d
    sbc a
    add hl, de
    xor c
    ld l, $c3
    rra
    rra
    ld a, a
    sub e
    ld bc, $3f70
    inc de
    ccf
    ccf
    ld a, e
    cp a
    inc bc
    ld bc, $07d4
    ccf
    inc de
    ld a, b
    ccf
    ld a, [bc]
    rra
    ld l, $6e
    rlca
    ld c, $5f
    ld bc, $1135
    or l
    inc bc
    rra
    add b
    rst $08
    ld bc, $4049
    xor $80
    add b
    ret nz

    ret nz

    ld [c], a
    ld [c], a
    jp nz, $a0c2

    and c
    db $e4
    push hl
    call z, $cecc
    adc $01
    add c
    inc bc
    ld b, e
    ld h, b
    ld bc, $077f
    sub a
    adc a
    rst $08
    ld [hl], l
    ld e, a
    ld [hl], b
    scf
    inc de
    ret z

    ret z

    ldh [rOCPD], a
    db $e4
    inc hl
    adc [hl]
    ret nc

    call nc, $f2f2
    ld a, [$fefa]
    cp $67
    ld [hl], a
    inc sp
    ld a, e
    ld b, e
    db $eb
    daa
    ld h, a
    add hl, de
    dec c
    cpl
    rst $28
    rra
    ld e, a
    ld hl, $e915
    adc l
    and b
    rst $00
    dec b
    db $fd
    ld b, b
    ld l, c
    ei
    ld l, a
    ld l, a
    jp Jump_005_6f19


    rst $28
    xor a
    and b
    and c
    rst $00
    rst $10
    jr nc, @+$49

    rst $10
    ld b, e
    ld a, [$f2fb]
    ld h, a
    or $1b
    ld hl, sp+$5c
    xor e
    ld sp, hl
    ld sp, hl
    ld [$f5f0], sp
    ld hl, sp-$08
    cp h
    adc a
    ld d, a
    or c
    dec de
    rra
    ld c, a
    ld l, a
    ld a, $6c
    add hl, bc
    ld de, $f455
    cp b
    ld [hl], e
    or $f0
    db $f4
    ldh [$e9], a
    ldh [$e0], a
    ret nz

    jp nc, $c5c1

    ld e, a
    ld d, e
    ld h, b
    add hl, de
    ld b, c
    and a
    rst $30
    rla

Jump_005_6f19:
    or a
    ld [bc], a
    rla
    rla
    inc bc
    dec de
    pop af
    push af
    inc b
    ld bc, $ebe3
    dec c
    nop
    set 3, e
    ld bc, $0b71
    dec hl
    xor e
    xor e
    sbc l
    sbc l
    ret z

    jp z, $aa80

    ret


    reti


    db $d3
    db $db
    sbc c
    cp l
    add $19
    pop hl
    db $ed
    rra
    push bc
    ld h, e
    push af
    push af
    jp $eee4


    ld [c], a
    rst $20
    jp nz, $c3d2

    db $db
    add a
    or a
    adc a
    xor a
    ld bc, $c301
    db $d3
    pop de
    push de
    ld d, e
    ld e, e
    or b
    dec e
    ld d, e
    pop hl
    jp hl


    ret z

    ld bc, $e5da
    push hl
    call nz, $e9d6
    db $ed
    ld h, $41
    rlca
    ld [hl], e
    push af
    cpl
    ld b, e
    ld [hl], e
    rrca
    ld h, a
    dec l
    inc bc
    push hl
    ld hl, $000f
    add b
    inc de
    ld [c], a
    ld [$eae8], a
    jp hl


    jp hl


    ld [hl], $d7
    rst $10
    cp c
    scf
    dec l
    rst $30
    rst $30
    pop de
    rst $18
    ret nz

    ret z

    jp nz, $0081

    jp z, $e2e2

    add $d6
    or e
    ld bc, $011b
    add c
    nop
    dec b
    dec b
    rlca
    rlca
    and b
    sbc e
    nop
    rra
    ld b, d
    rra
    dec hl
    jr @+$4b

    adc e
    and a
    or a
    db $db
    dec e
    nop
    xor [hl]
    rst $08
    rra
    sub a
    db $e4
    inc hl
    ccf
    jp z, $ed19

    ld l, l
    ld h, a
    rra
    add hl, hl
    inc bc
    ld hl, $d9d1
    ld l, h
    ld h, e
    ld de, $13c3
    ld c, c
    ld e, e
    cpl
    ld [hl+], a
    rra
    res 0, [hl]
    rra
    sub e
    or e
    or e
    inc c
    pop bc
    reti


    ldh [$ea], a
    pop de
    and e
    inc bc
    xor e
    rlca
    ld d, a
    add a
    sub a
    rst $00
    ccf
    nop
    rst $10
    ld c, $a1
    adc a
    rst $18
    rst $18
    xor a
    xor a
    ret c

    add hl, hl
    ld e, a
    sbc e
    cp e
    ld h, c
    db $db
    call z, $b0cd
    or e
    ld a, [bc]
    ld c, e
    and l
    and l
    jp nz, $81d7

    adc e
    ld hl, $6475
    rst $28
    or l
    or l
    adc e
    res 1, e
    cp e
    and c
    push af
    sub l
    db $fd
    or b
    cp h
    ld a, b
    ld sp, hl
    call z, $ccfe
    call z, Call_000_1f91
    ld c, a
    and h
    xor [hl]
    ld [hl], e
    ret


    rst $18
    adc d
    sbc e
    dec d
    ld a, a
    ld h, b
    rst $30
    ccf
    ccf
    sbc a
    rst $18
    rlca

jr_005_7022:
    daa
    inc bc
    dec bc
    inc de
    db $db
    dec h
    or l
    and b
    ld a, [$ffc8]
    or b
    ld c, a
    add [hl]
    and [hl]
    inc b
    and d
    xor d
    jr nz, jr_005_70b2

    jr c, jr_005_7022

    and [hl]
    ld [hl], a
    nop
    ld [hl], a
    inc hl
    xor e
    add c
    ret


    ld c, b
    ld a, [$49aa]
    cp $8f
    add b
    db $e3
    add d
    jp nc, $9581

    ld de, $707f
    inc [hl]
    add hl, hl
    adc a
    xor a
    inc bc
    push de
    push de
    nop
    ld d, d
    xor c
    xor l
    ld e, h
    ld hl, $93b0
    rst $18
    xor b
    rst $38
    ld [de], a
    dec b
    add hl, de
    ld b, $24
    dec bc
    dec hl
    dec b
    dec bc
    inc b
    dec d
    ld [bc], a
    ld [hl], $09
    dec hl
    nop
    rrca
    inc d
    inc bc
    add hl, hl
    ld h, e
    ld [bc], a
    rrca
    ld b, $09
    ld h, b
    rla
    ld de, $010b
    ld d, h
    ld a, [$b203]
    db $fc
    xor d
    ld a, h
    ld l, b
    cp $17
    rlca
    ld a, [$18fc]

jr_005_708d:
    or b
    cp $74
    cp $3c
    ld a, [$fcba]
    ld [de], a
    db $fc
    ld h, h
    ld a, [$fc36]
    sbc d
    db $fc
    ld c, c
    dec d
    ccf
    ld [hl], b
    add hl, hl
    rra
    rra
    ld e, $12
    inc hl
    ld hl, $0101

Call_005_70aa:
    ld hl, $2003
    ret nz

    ld bc, $1423
    dec d

jr_005_70b2:
    add hl, bc
    ld [bc], a
    xor $c2
    ld e, l
    ccf
    db $e3
    ld l, h
    add $06
    call nz, $8442
    call nz, $c602
    nop

jr_005_70c3:
    ld l, h
    add d
    jr c, jr_005_708d

    ld d, h
    ld [$2f98], a
    dec de
    cp [hl]
    dec c
    dec l
    nop
    nop
    ld [$1000], sp
    ld [$0830], sp
    jr z, jr_005_70c3

    ld a, d
    adc a
    sub e
    sbc e
    dec bc
    ld a, [hl+]
    ret c

    ld bc, $007f
    inc h
    ret c

    dec a
    xor d
    ld [hl], h
    ld [bc], a
    ld l, a
    ld hl, $0b8f
    dec b
    or [hl]
    ld hl, $2125
    sub $1d
    ld l, l
    ld a, a
    ld hl, $b525
    add hl, hl
    rrca
    jp $f854


    or d
    db $fd
    xor l
    ld a, [hl]
    ld l, e
    rst $38
    ld d, l
    rst $38
    rst $20
    rst $38
    ld e, h
    call $6e76
    di
    ld [hl-], a
    db $ed
    or l
    add sp, $0a
    pop af
    ld l, h
    ldh a, [rNR42]
    ldh a, [$90]
    ld hl, sp+$60
    ld hl, sp+$1d
    ccf
    rla
    ld e, c
    add [hl]
    inc h
    add hl, hl
    adc e
    xor e
    push bc
    set 0, h
    dec [hl]
    ld [c], a
    sub $a9
    xor e
    ld h, b
    ld [hl-], a
    push bc
    ld d, h
    and e
    xor c
    ld b, d
    xor e
    dec b
    ld b, [hl]
    or [hl]
    rst $18
    inc bc
    xor d
    ld [bc], a
    adc h
    inc bc
    ld [hl-], a
    push hl
    call $5dfa
    rst $28
    ret nz

    push de
    ld a, [hl+]
    db $fd
    reti


    ld a, [hl]
    ld d, [hl]
    ccf
    cp a
    xor l
    ld a, [bc]
    and b
    rst $28
    inc b

jr_005_7151:
    inc c
    inc bc
    ld a, [bc]
    ld bc, $02fe
    add c
    rst $28
    db $10
    ldh [$c8], a
    ld a, b
    or h
    ld a, [hl]
    db $fd
    jr jr_005_7151

    nop
    ld c, $87
    rlca
    ld [bc], a
    inc c
    add a
    sbc d
    ld h, h
    or d
    cpl
    jr z, @+$01

    adc $01
    ld hl, sp-$18
    add hl, de
    pop af
    di
    ldh a, [$0e]
    rst $30
    ldh [$e5], a

jr_005_717b:
    ld a, a
    sbc c
    pop de
    ld c, e
    ld d, c
    ld c, a
    xor [hl]
    and c
    ld h, a
    cp c
    ld [hl], l
    rst $30
    ld [c], a
    db $e3
    pop bc
    set 0, c
    push de
    add d
    sub a
    add b
    add a
    inc bc
    rrca
    ld bc, $000b
    dec b
    rst $30
    rst $30
    ld [hl], e
    ret nz

    or c
    ld sp, hl
    db $fd
    push af
    db $fd
    ld a, h
    cp $45
    ld a, [hl]
    db $db
    rst $10
    dec b
    dec d
    ld l, l
    add hl, de
    dec e
    ld hl, $25b6
    add hl, hl
    dec l
    ld [hl], e
    db $fc
    dec d
    ld a, [hl-]
    add hl, de
    push af
    ld sp, hl
    jp hl


    dec h
    ld [hl], e
    rst $10
    push de
    db $db
    ld d, c
    ld d, l
    ld b, d
    ld e, c
    ld e, a
    dec e
    ld h, a
    inc l
    rst $28
    rst $30
    ld d, l
    ld c, a
    xor [hl]
    rst $00
    ld l, l
    ld l, l
    add hl, sp
    ld c, [hl]
    rst $30
    rla
    nop
    ld hl, sp-$07
    db $e3
    rst $20
    adc a
    sbc a
    ld a, [hl-]
    ld a, a
    inc e
    ld hl, sp-$08
    ld [c], a
    rlca
    ld c, h
    scf
    rla
    cp c
    ld bc, $04ff
    ld a, a
    add b
    sbc [hl]
    ldh [$e3], a
    or h
    dec d
    ld hl, $1180
    ld h, [hl]
    rst $38
    sub h
    sbc $00
    ld [hl], a
    dec a
    pop bc
    ld l, [hl]
    jr nc, jr_005_717b

    add b
    ldh [$e0], a
    add b
    rla
    rra
    rra
    ld b, a
    rst $20
    pop af
    ld sp, hl
    ld c, h
    db $ec
    dec e
    sbc l
    ld e, d
    rst $38
    pop bc
    rrca
    rra
    sbc a
    rst $00
    jp Jump_005_5c17


    cp $07
    cpl
    add hl, hl
    ld a, e
    nop
    cp h
    ld a, h
    ld a, [hl]
    inc c
    ld bc, $0118
    rlca
    rlca
    dec l

jr_005_7224:
    jr nz, jr_005_7224

    inc c
    ld bc, $0779
    rst $00
    rlca
    ld a, a
    ld a, l
    ld a, a
    ld b, $98
    ld d, c
    ld a, a
    di
    rst $30
    rst $10
    cp a
    ld [$8580], sp
    ld sp, hl
    ld sp, hl
    ldh [$e6], a
    adc h
    sbc [hl]
    ld a, [hl-]
    ld a, [hl]
    db $fc
    cp $1d
    rst $18
    ld a, [$a3fe]
    sub d
    add hl, bc
    sub h
    rla
    inc b
    rlca
    ld [$faff], sp
    cp $49
    add hl, de
    dec b
    ld [$751f], sp
    dec a
    ld b, b
    adc c
    or $e2
    xor $cc
    sbc $9e
    dec hl
    cp [hl]
    ld a, $60
    ld c, a
    rrca
    ld a, [c]
    rst $30
    pop hl
    rst $20
    dec c
    jp $81cf


    adc e
    ld c, a
    ld [bc], a
    rra
    sbc a
    sbc a
    add hl, hl
    adc a
    ld h, c
    inc bc
    ld b, a
    dec e
    nop
    inc d
    ld d, $3b
    pop af
    ld e, a
    and b
    db $fd
    rst $20
    rst $30
    ld a, e
    ei
    ld a, c
    xor $ec
    sbc l
    dec de
    add hl, de
    ld bc, $1116
    ld [bc], a
    ld d, $59
    ld e, a
    cp a
    add e
    rla
    ld h, a
    rst $20
    ld [hl], c
    ld sp, hl
    or a
    ld e, a
    db $db
    scf
    xor a
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec b
    cp e
    jr c, jr_005_72fd

    ld a, [hl]
    ret nc

    inc b
    ld bc, $ff1e
    rlca
    nop
    cp b
    ld [$0000], a
    ccf
    ld a, a
    ld a, a
    nop
    jr nz, jr_005_72e2

    rra
    nop
    jr @+$3a

    ld c, l
    inc a
    ld b, l
    inc a
    rrca
    ld h, b
    inc d
    inc bc
    inc bc
    inc e
    rrca
    or e
    inc d
    inc e
    ld b, h
    dec sp
    rrca
    ld bc, $e01f
    rst $38
    rrca
    ldh a, [$f0]
    rrca
    adc b
    inc bc

jr_005_72e2:
    ld a, a
    add b
    inc b
    rrca
    ei
    db $fc
    rlca
    rst $38
    ld sp, $030d
    cp $01
    ld h, b
    cpl
    rst $18
    ldh [$30], a
    ld b, $f8
    call Call_000_323c
    adc $0a
    cp b
    db $e3

jr_005_72fd:
    db $fc
    cp $fe
    nop
    inc b
    ld hl, sp-$08

Jump_005_7304:
    nop

Call_005_7305:
    inc c
    inc e
    and [hl]
    ld e, $a2
    ld e, $2a
    jr jr_005_7361

    ld b, [hl]
    dec a
    ld e, l
    ld b, a
    ld sp, $3748
    ld c, c
    scf
    ld d, c
    cpl
    ld d, d
    cpl
    adc c
    db $76
    rlca
    ld hl, sp+$0e
    ldh a, [rNR33]
    ldh [$ba], a
    pop bc
    ld [hl], d
    add l
    ld h, [hl]
    adc l
    sub $0d
    ldh a, [rP1]
    adc c
    rlca
    rla
    ld sp, $60ef
    ld bc, $000f
    sub c
    dec b
    ld h, b
    add [hl]
    ld a, b
    adc h
    ld a, e
    add l
    ld bc, $7789
    sub $e4
    dec de
    ld a, d
    dec b
    cp l
    ld [bc], a
    ld e, $c1
    ld l, a
    ret nz

    ld h, a
    ret nc

    ld l, e
    ret nc

    ld d, h
    inc c
    and d
    sbc [hl]
    ld h, d
    sbc $22
    cp $92
    ld a, [hl]
    ld d, d
    cp [hl]
    ld a, [hl+]
    sbc $aa
    ld e, [hl]
    ld l, d

jr_005_7361:
    rra
    inc b
    ld bc, $3f56
    nop
    ld bc, $3f55
    ld d, e
    dec a
    add $1d
    ld [hl], b
    and [hl]
    ld bc, $3d86
    ld [hl], b
    ld b, [hl]
    ld bc, $bdc6
    dec a
    add [hl]
    db $fd
    ld [bc], a
    ld e, c
    daa
    ld bc, $02a4
    ld e, c
    ld bc, $6303
    ret c

    ld h, l
    ret c

    ld h, c
    call c, $0126
    ld h, d

jr_005_738d:
    ld bc, $960c
    ld l, [hl]
    sub $2e
    ld bc, $12ca
    ld [hl], $ea
    ld d, $0e
    ld bc, $3d52
    ld d, e
    ld b, c
    ld bc, $5405
    ld c, h
    ld h, e
    db $ec
    ret


    ld h, e
    db $ed
    inc bc
    cp e
    call nz, Call_005_5b28
    ld b, [hl]
    ld h, e
    ld h, d
    ld a, d
    call c, $0106
    swap a
    inc h
    ld bc, $f399
    ld [bc], a
    sbc a
    ld b, [hl]
    ret nc

    inc bc
    ld bc, $c19f
    add c
    adc l
    ld a, d
    adc [hl]
    ld a, b
    rlca
    ld bc, $358f
    ld bc, $c30b
    adc d
    inc b
    ld d, [hl]
    jr nc, jr_005_738d

    ld a, b
    sub d
    ld a, b
    jp z, Jump_005_7630

    nop
    inc c
    dec bc
    or d
    ld c, h
    nop
    nop
    ld a, a
    ld h, b
    ccf
    ld bc, $2060
    ld e, a
    daa
    dec de
    ld e, a
    cpl
    ld d, l
    ld bc, $0f86
    cp $fc
    ld bc, $0601
    inc c
    or $7c
    or $fc
    ld d, [hl]
    cp b
    ld bc, $5713
    ld [hl], $2e
    ld d, c
    dec e
    ld bc, $3f37
    ld b, b
    add hl, hl
    ld l, [hl]
    ld a, l
    dec de
    inc de
    db $ec
    ld d, $1d
    dec de
    ld bc, $0efc
    add hl, hl
    sbc [hl]
    dec l
    ld bc, $663f
    ld l, $21
    ld c, d
    ld bc, $02f3
    ccf
    call c, Call_000_050e
    sub [hl]
    db $fc
    sbc $0f
    inc de
    ld c, [hl]
    dec a
    ld b, d
    inc bc
    inc bc
    ccf
    sub [hl]
    cp h
    sub $bc
    ld b, [hl]
    rst $00
    ld [bc], a
    ccf
    pop af
    rst $30
    adc a
    ld b, $01
    ld l, a
    rst $28
    ld b, $56
    ld bc, $f8ff
    inc b
    ld c, a
    ld a, b
    ld d, $0c
    ld bc, $3e14
    inc h

jr_005_744a:
    ld d, $7e
    ld bc, $c000
    ret nz

    cp a
    cp a
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    add sp, $74
    ld a, [de]
    ld a, a
    add b
    cp a
    dec c
    ld c, d
    ccf
    adc b
    ld b, h
    ld [hl], b
    ld bc, $f000
    rst $38
    ld h, h
    ld hl, sp+$07
    ld hl, sp+$35
    inc bc
    ld a, [bc]
    inc h
    cp a
    rla
    and a
    dec de
    ld b, c
    xor l
    ccf
    rst $08
    ld [hl], b
    rst $08
    di
    di
    inc a
    db $fc
    rst $08
    rst $38
    inc sp
    rst $38
    inc c
    rst $38
    inc bc
    push af
    ld bc, $9877
    rla
    jr nz, jr_005_744a

    rst $08
    dec bc
    ldh a, [$f3]
    db $fc
    db $fc
    inc l
    rla
    daa
    or b
    rla
    adc $fe
    db $10
    ld [hl], $fe
    ld d, $01
    ld a, e
    ld a, [hl]
    ld c, $01
    ld h, $61
    ld h, b
    add hl, sp
    ld d, b
    ld h, b
    inc bc
    sbc a
    ld h, b
    add h
    inc bc
    ld [de], a
    ld bc, $1360
    add b
    nop
    inc b
    jr z, jr_005_74d3

    inc b
    inc bc
    ei
    ld b, d
    inc b
    inc bc
    add hl, bc
    ld bc, $ad04
    rra
    and h
    db $10
    db $d3
    xor c
    ld c, e
    or d
    jp c, Jump_000_0086

    rra
    ldh [$e1], a
    add c
    db $e3
    rlca
    ld hl, sp+$0d
    inc bc
    or b
    rlca

jr_005_74d3:
    inc bc
    ld hl, sp+$3d
    ld bc, $3e01
    inc h
    pop af
    rst $08
    add hl, sp
    nop
    inc bc
    ld b, d
    add hl, sp
    nop
    db $e3
    cp $fe
    ld hl, sp-$07
    di
    rst $30
    xor $ef
    ret z

    call c, $bb9b
    or a
    or a
    scf
    ld [hl], a
    inc bc
    inc h
    add b
    rst $38
    add $02
    ld [hl], l
    cpl
    ld l, a
    ld bc, $2e51
    ld bc, $402f
    ld bc, $8f8f
    rla
    ld d, a
    ld bc, $6747
    ld h, a
    ld [hl], a
    rrca
    adc a
    rra
    add hl, sp
    rst $28
    ld c, a
    rst $38
    jr z, @+$51

    cp $0f
    ld a, a
    ld l, $7f
    sbc a
    ld [hl], h
    sbc a
    rst $28
    rst $28
    scf
    rst $30
    dec de
    dec sp
    dec c
    db $dd
    add l
    db $ed
    add $ee
    pop af
    pop af
    ld [c], a
    ld [$ecc8], a
    call z, $c1ee
    pop af
    db $e3
    rra
    ld e, $c2
    or $e2
    dec b
    ld bc, $5fb0
    ld d, $77
    inc bc
    sub a
    or a
    adc e
    cp e
    call nz, $c1dc
    ld [$e35f], sp
    rst $28
    ldh a, [$f7]
    add b
    ret c

    ldh a, [$f0]
    ldh [$e1], a
    jp $c5cf


    ld bc, $c7c1
    add b
    ld l, a
    ld c, c
    db $fd
    sub h
    cp $c4

jr_005_7560:
    jr z, jr_005_7560

    ld a, [$e374]
    nop
    db $e3
    push bc
    push de
    sub c
    reti


    sbc c
    db $dd
    add e

jr_005_756e:
    dec a
    db $e3
    rst $00
    ld bc, $6d8f
    xor a
    db $ec
    ld b, $7f
    ld l, $e6
    ld c, b
    or $01
    db $ec
    jr jr_005_756e

    call Call_000_31ed
    inc sp
    dec sp
    or d
    cpl
    rst $20
    add c
    add a
    ld c, $3f
    rrca
    ccf
    rlca
    rra
    rst $00
    rst $30
    rrca
    rst $28
    rra
    rra
    rrca
    rrca
    daa
    rst $30
    ld d, e
    ei
    inc de
    ei
    db $eb
    ei
    rst $00
    reti


    ld b, h
    add a
    dec b
    ld bc, $0100
    rst $10
    and e
    inc b
    ld bc, $4320
    ret nz

    nop
    pop de
    sub b
    ld bc, $0100
    sbc [hl]
    ld e, b
    ld c, h
    scf
    ld bc, $3d00
    db $76
    rst $38
    inc b
    ld bc, $0f8f
    ld b, b
    or $04
    ld l, d
    ld bc, $091e
    dec l
    or [hl]
    or [hl]
    rst $38
    ld [hl], $01
    ld e, $0c
    ld h, c
    inc bc
    nop
    ld b, e
    ld b, e
    ei
    daa
    ld bc, $6e49
    ld a, $41
    pop de
    db $db
    ld hl, $4101
    ld a, $37
    ld [$f145], sp
    ld [hl+], a
    ld [$8e42], sp
    ld a, $c1
    ld a, a
    add b
    ld h, c
    ld bc, $3ec1
    rst $38
    ld l, l
    db $ec
    ldh a, [rSB]
    inc h
    ld a, [hl]
    add hl, bc
    inc a
    jp nz, $807e

    add d
    ld bc, $3cc2
    cp $00
    add h
    ld bc, $02fe
    add a
    ld [$7f00], sp
    adc a
    rlca
    ld bc, $0ef4
    ld b, $7c
    ld bc, $9808
    ld c, a
    dec a
    ld [bc], a
    ld bc, $3f42
    add h
    dec b
    add [hl]
    ld bc, $fe5c
    ld bc, $fe1e
    cp $5c
    ld bc, $f601
    ld [bc], a
    add hl, de
    dec h
    add a
    daa

Jump_005_7630:
    sub h
    ld [bc], a
    add hl, de
    cp $27
    rst $30
    ld [bc], a
    rra
    cp h
    ld [bc], a
    ccf

jr_005_763b:
    inc b
    ld bc, $7802
    ld bc, $0106
    and d
    ld e, h
    db $f4
    ld b, $01
    add d
    dec d
    dec c
    ld [bc], a
    dec e
    ld l, c
    ccf
    nop
    dec d
    ld d, d
    db $fc
    ld e, d
    db $fc
    ld e, [hl]
    db $fc
    add d
    ccf
    jr c, jr_005_763b

    nop
    inc h
    inc bc
    rla
    rrca
    cpl
    rra
    rra
    ccf
    ld b, b
    ccf
    ld e, a
    inc b
    inc bc
    jr nz, jr_005_76de

    adc e
    rrca
    nop
    ld d, [hl]
    rlca
    ld h, [hl]
    ld a, $0a
    ld bc, $4506
    ccf
    add b
    ld b, b
    inc b
    jp Jump_000_201e


    add $e8
    ld a, [c]
    db $f4
    ld hl, sp-$08
    db $fc
    ld [bc], a
    db $fc
    ld a, [$039e]
    ld b, $1f
    call nz, $fa69
    inc b
    ld [hl], h
    ld a, e
    ld a, [c]
    nop
    inc c
    ld [c], a
    inc b
    nop
    ld c, $2b
    xor h
    ld e, d
    ld e, [hl]
    dec b
    ld l, a
    sbc c
    reti


    adc c
    ld b, a
    ld l, a
    or $0a
    rst $38
    ld d, b
    ld c, a
    inc b
    rst $00
    ld hl, $99d1
    add b
    dec bc
    ld hl, $6121
    ld [hl+], a
    ld l, d
    inc l
    ld l, b
    ld [hl-], a
    inc l
    ld l, [hl]
    rlca
    inc hl
    and l
    ld c, a
    rst $38
    ld d, b
    sub l
    cp $9c
    ldh [$3d], a
    nop
    add d
    add [hl]
    ld [de], a
    ld d, [hl]
    ld bc, $4662
    ld [hl+], a
    db $76
    ld [bc], a
    add [hl]
    ld [bc], a
    ld d, e
    rra
    db $ec
    ld [bc], a
    add hl, sp
    ld hl, $29fc
    cp $f8
    ld h, $70
    ldh a, [rIE]

jr_005_76de:
    ret nz

    ldh [rNR23], a
    add a
    ld h, b

Jump_005_76e3:
    rra
    ret nz

    ccf
    ret nz

    ccf
    sub [hl]
    sbc l
    sbc l
    ld c, c
    push de
    rst $38
    nop
    call nc, Call_000_0029
    ld bc, $c9c3
    inc a
    rst $38
    ld b, $eb
    ld bc, $aecf
    ld h, $76
    rra
    ld a, a
    adc a
    ccf
    ld b, c
    sbc a
    ld b, b
    add c
    ld sp, hl
    db $fc
    pop af
    db $fc
    pop hl
    ldh a, [$cd]
    ldh [$9d], a
    ret z

    sbc l
    ret c

    dec [hl]
    sub b
    dec [hl]
    and b
    add b
    add hl, sp
    sbc [hl]
    ld a, l
    and e
    ld a, [hl]
    dec bc
    ld b, c

jr_005_771e:
    cp a
    adc a
    ld a, [hl]
    ld hl, HeaderCartridgeType
    cp e
    dec d
    nop
    ld c, $fc
    nop
    ld a, [$f803]
    inc b
    ld hl, sp+$24
    inc bc
    db $fc
    inc de
    ld e, h
    ld [$0d38], sp
    jr nz, jr_005_77b2

    inc b
    ld sp, hl
    inc c
    ld bc, $01e0
    ld hl, $a7cf
    ld bc, $b815
    ld h, b
    and b
    dec a
    sub b
    dec c
    ret c

    dec d
    ret z

    adc l
    ldh [$81], a
    ldh a, [$c1]
    ld e, c
    db $fc
    sbc a
    ld h, e
    sbc a
    ld bc, $cf61
    jr nc, @-$17

    jr @-$04

    dec b
    jr nz, jr_005_77b8

    ld a, h
    ei
    db $fc
    ld bc, $8487
    ld a, e
    ld a, h
    add e
    ldh a, [rIF]
    rst $20
    inc b
    ld e, c
    nop
    or c
    ld bc, $4157
    daa
    rst $08
    adc h
    ld c, c
    ld h, b
    add c
    ld d, a
    jr z, jr_005_771e

    ld d, a
    ldh a, [$fe]
    sbc l
    ld bc, $54f8
    call $f6fc
    ld de, $60e1
    ldh [$ba], a
    nop
    rra
    add b
    nop
    ld [hl], d
    ldh [$8f], a
    ld [hl], c
    add l
    dec a
    sbc l
    ld c, h
    db $ed
    sub a
    rlca
    db $eb
    db $f4
    jp c, $c832

    ld bc, $070d
    nop
    cpl
    ld bc, $1fc1
    sbc a
    ccf
    ld [$833f], a
    ld bc, $8f05
    ld b, a
    ccf

jr_005_77b2:
    ld a, b
    rlca
    add e
    ld bc, $007f

jr_005_77b8:
    nop
    and $02
    dec de
    sbc [hl]
    ld c, c
    inc b
    dec e
    add [hl]
    rra
    ld [de], a
    ld a, b
    ld bc, $0103
    cp $01
    rrca
    ld a, a
    rst $38
    add b
    ld a, a
    ld [bc], a
    dec sp
    ld bc, $a7ff
    ld h, h
    add b
    rst $38
    and b
    ld [bc], a
    ld bc, $0160
    ld a, b
    cp $02
    ld bc, $fffe
    adc e
    cp h
    ld d, c
    ld e, $01
    ld bc, $7ae2
    ld e, $04
    dec c
    ld [$ff0f], sp
    cp l
    ld e, [hl]
    jp nz, $ef9f

    or c
    db $fd
    and e
    rst $38
    sub e
    ld a, [$ff87]
    add [hl]
    rst $38
    ld bc, $c170
    rst $38
    add c
    cp a
    add l
    inc bc
    pop bc
    ld e, a
    pop hl
    jp nz, $61ff

    push af
    adc [hl]
    rst $38
    adc a
    db $eb
    sbc h
    rst $38
    sbc b
    rst $38
    cp h
    ld b, b
    ld h, b
    xor a
    ld [hl], c
    rst $38
    pop af
    ld [bc], a
    rst $10
    add hl, sp
    rst $38
    add hl, de
    rst $38
    dec a
    add b
    sub b
    rst $38
    ccf
    nop
    add hl, sp
    ld b, $f0
    ld [bc], a
    ld bc, $3f06
    cp a
    rst $08
    pop af
    cp a
    ld [bc], a
    ld l, h
    ld bc, $1f9d
    inc a
    ld a, b
    inc bc
    ld [bc], a
    ld bc, $1f23
    rst $00
    rst $18
    ld a, c
    rlca
    add b
    ld [bc], a
    ld bc, $017e
    ld a, [hl]
    cp $9e
    ld a, [hl]
    or $02
    ld bc, $0f8f
    ldh [rNR32], a
    sbc h
    ld a, h
    ld [bc], a
    ld a, [hl-]
    ld bc, $977c
    ld l, h
    ld c, $80
    inc bc
    ld bc, $0ef0
    call nz, $3c3c
    db $fc
    pop af
    ld [bc], a
    ld bc, $fcfc
    ld sp, hl
    rlca
    push bc
    rst $38
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld bc, $009e
    nop
    nop
    and d
    ld e, d
    db $fd
    ld d, c
    ld [hl], h
    ld [bc], a
    ld bc, $0001
    dec e
    nop
    ld c, $00
    add [hl]
    nop
    dec e
    ld b, [hl]
    ld b, d
    nop
    add hl, de
    ld b, [hl]
    ld b, a
    ld c, b
    inc bc
    ld b, d
    jp hl


    ld bc, $a004
    ld [$4519], sp
    ld a, b
    ld h, $10
    nop
    ld b, b
    ld b, a
    jr c, jr_005_78e9

    ld b, e
    ccf
    nop
    ld d, d
    ld c, d
    ld [bc], a
    ld l, e
    nop
    add hl, de
    inc c
    ld b, c
    dec sp
    ld b, l
    rst $28
    ld bc, $0814
    inc sp
    nop
    ld b, b
    ld d, [hl]
    ld b, e
    call z, Call_000_1c11
    ld b, c
    ld a, d
    ld b, h
    ldh a, [$03]
    ld c, $05
    ld b, $07
    di
    inc bc
    dec c
    ccf
    ld a, b
    sub h
    inc b
    add hl, sp
    ld [$7b09], sp
    ld a, [bc]
    ld b, $56
    jp Jump_005_7304


    dec bc
    inc c
    dec c
    rst $08
    inc b
    ld d, [hl]
    ld b, [hl]
    ld bc, $7331
    ld c, h
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    sub h
    nop
    inc a
    add hl, bc
    sub c

jr_005_78e9:
    add hl, sp
    ld b, a
    cp h
    adc $01
    add hl, hl
    add hl, sp
    ld [hl], b
    ld c, b
    ld a, [$3c47]
    push af
    ld bc, $8a0f
    ld a, [de]
    ld c, h
    inc a
    dec de
    ld b, a
    ld bc, $4c1d
    ld a, [c]
    rlca
    cp b
    add hl, sp
    ld a, c
    dec a
    ld b, d
    xor $03
    dec sp
    add hl, hl
    ld h, [hl]
    dec sp
    inc bc
    ld [$dc37], sp
    ld h, a
    dec e
    and h
    ld [de], a
    dec d
    dec d
    ld b, [hl]
    and c
    ld h, c
    ld [de], a
    ld a, [$7c01]
    ld c, b
    ccf
    ld a, b
    inc bc
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop

Jump_005_7929:
    nop
    nop
    add sp, $00
    nop
    nop
    ld l, l
    cp h
    ld a, [bc]
    ld d, $72
    inc b
    ld bc, $0001
    stop
    ld c, $00
    add b
    nop
    db $10
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, [hl]
    ld b, d
    call c, Call_000_0201
    and $08
    ld [bc], a
    inc a
    ld b, d
    ld h, $02
    nop
    ld b, c
    db $e3
    dec d
    ld b, a
    sub [hl]
    inc hl
    add hl, sp
    nop
    ccf
    ld e, $e4
    inc b
    rrca
    ld b, c
    ld b, $33
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    nop
    ld d, c
    inc a
    rrca
    ld b, b
    ld [hl], $4a
    ld b, $49
    ld b, l
    cpl
    ld c, $56
    ld h, h
    inc sp
    ld b, $43
    sub b
    rra
    ld a, [de]
    and d
    ld l, e
    ld b, h
    ld c, c
    ccf
    add hl, sp
    cpl
    inc de
    ld [hl+], a
    cpl
    ld b, c
    ld [de], a
    dec de
    ld a, c
    ld a, d
    ld bc, $466f
    add sp, $04
    ld l, a
    inc l
    rra
    ld c, c
    dec c
    ld b, e
    ld c, e
    ld e, a
    ld b, d
    ld bc, $1c7e
    add e
    ld [bc], a
    call nz, Call_005_422d
    ld b, d
    jp nc, Jump_005_43c5

    ld [hl], a
    ld e, a
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld b, $f2
    nop
    nop
    ld [bc], a
    add h
    add $a8
    ret nz

    ld c, c
    inc b
    ld bc, $0001
    dec sp
    nop
    ld e, $00
    add e
    nop
    dec sp
    ld b, d
    ld b, [hl]
    ld b, d
    add [hl]
    ld [bc], a
    ld b, a
    ld c, b
    inc bc
    ld l, b
    ld b, [hl]
    inc b
    ld l, d
    ld b, $07
    add hl, hl
    ld a, [bc]
    ld b, d
    inc b
    inc h
    db $10
    ld hl, $270d
    add hl, bc
    dec c
    xor b
    inc d
    ld b, $45
    ld [hl], b
    ld h, $00
    rrca
    nop
    add a
    dec b
    add hl, bc
    nop
    dec hl
    rrca
    and h
    ld [$a30d], sp
    dec b
    rrca
    add a
    ld bc, $0f26
    cp b
    ld b, $16
    ld c, $50
    jr c, jr_005_7a3d

    ld b, e
    ld a, e
    nop
    ld b, d
    jr jr_005_7a01

    dec bc
    nop
    ld a, [hl+]
    db $10

jr_005_7a01:
    add hl, bc
    ld c, d
    inc bc
    ld d, c
    ld a, [hl+]
    rlca
    jr jr_005_7a0e

    ld e, $18
    sub b
    inc d
    inc h

jr_005_7a0e:
    and b
    ld c, $50
    ld b, d
    ld b, l
    push af
    ld c, $3a
    add hl, bc
    nop
    add hl, hl
    nop
    ld e, $1c
    jr jr_005_7a21

    ld hl, $03f7

jr_005_7a21:
    ld a, [hl-]
    sbc [hl]
    ld b, $75
    add hl, hl
    dec b
    ld a, [hl-]
    ld a, c
    ld a, [hl+]
    ld c, $3a
    add hl, hl
    ld b, $0e
    add hl, sp
    pop af
    ld [hl], b
    ld b, h
    dec bc
    inc e
    cpl
    ret z

    nop
    dec e
    jr z, jr_005_7a4f

    ld c, c
    ld [hl], l

jr_005_7a3d:
    ld c, e
    di
    inc bc
    inc hl
    ld c, h
    ld e, $23
    ld a, [hl-]
    inc a
    inc b
    ld a, [hl-]
    ld d, b
    ld c, c
    ld d, c
    ld c, [hl]
    nop
    ld c, $40

jr_005_7a4f:
    ld b, d
    ld d, c
    ld h, $19
    ld c, $1e
    rra
    nop
    jr nz, jr_005_7a59

jr_005_7a59:
    rla
    db $10
    jr z, jr_005_7a6f

    inc de
    pop hl
    nop
    inc d
    dec d
    db $ec
    inc bc
    ld [hl], l
    inc hl
    ld b, h
    di
    inc b
    ld a, [hl-]
    db $10
    jr nc, jr_005_7a8b

    jr z, @+$04

jr_005_7a6f:
    ld [de], a
    ld de, $263f
    ld b, [hl]
    ld d, c
    ld [hl], h
    ld [c], a
    db $76
    ld c, c
    ld l, [hl]
    or b
    jr z, jr_005_7af1

    rla
    dec h
    ld c, h
    ld [hl], e
    ld a, [hl+]
    jr z, jr_005_7a91

    inc hl
    ld b, d
    ld b, l
    ld [de], a
    ld c, e
    xor $09

jr_005_7a8b:
    db $eb
    ld [hl], b
    ld [hl], l
    ld a, [bc]
    jr nc, jr_005_7ac2

jr_005_7a91:
    add d
    nop

jr_005_7a93:
    ld [hl-], a
    inc d
    ld l, a
    ld [hl], l
    sbc c
    jr z, jr_005_7ae3

    inc b
    inc hl
    ld c, e
    jr jr_005_7b14

    ld c, a
    ld c, e
    jr jr_005_7aee

    or $07
    db $eb
    ld d, $20
    ld b, a
    inc a
    ld a, [hl-]
    inc sp
    scf
    inc [hl]
    dec [hl]
    ld a, [hl-]
    ld [c], a
    ld [bc], a
    ld h, $17
    jr jr_005_7b04

    sbc d
    ld h, c
    sbc c
    ld [hl], l
    ld b, c
    ld b, d
    ld b, e
    adc a
    ld c, a
    ld [de], a
    ld [de], a
    ld [bc], a

jr_005_7ac2:
    db $10
    add $00
    ld c, l
    db $eb
    ld [hl], $41
    ld b, a
    ld d, d
    inc e
    jp nz, $363a

    scf
    jr c, jr_005_7b1b

    ld a, [hl-]
    ld h, e
    sbc h
    jr jr_005_7aef

    or l
    ld e, $9c
    db $eb
    or b
    ld b, e
    jr jr_005_7af0

    ld h, $00
    ld d, $3c

jr_005_7ae3:
    ld b, $2c
    ld a, [de]
    add hl, de
    ld a, [de]
    dec de
    db $eb
    adc l
    ld h, c
    dec [hl]
    or b

jr_005_7aee:
    db $10

jr_005_7aef:
    and d

jr_005_7af0:
    ld c, [hl]

jr_005_7af1:
    xor c
    ld d, e
    jr jr_005_7a93

    dec d
    dec c
    add hl, hl
    ld c, e
    sub e
    ld h, $43
    ld h, a
    ld a, [hl-]
    ld c, a
    rla
    add sp, $04
    dec a
    adc a

jr_005_7b04:
    ld [de], a
    ld bc, $b04f
    ld a, c
    and h
    ld b, $06
    ld b, c
    add hl, bc
    db $eb
    dec h
    ld a, [hl-]
    adc b
    ld h, a
    ld c, e

jr_005_7b14:
    add hl, hl
    add e
    ld d, [hl]
    ld b, c
    ld b, [hl]
    inc de
    ld a, [hl-]

jr_005_7b1b:
    add hl, de
    dec de
    ld h, a
    or b
    add h
    jr nc, jr_005_7b4e

    ld b, d
    ld b, $59
    add hl, de
    dec c
    adc $b0
    ld [hl], d
    and b
    nop

Jump_005_7b2c:
    sub b
    inc b
    dec b
    ld d, c
    dec l
    rst $00
    ld b, a
    ld de, $e74d
    ld bc, $30b0
    dec a
    ld b, d
    add hl, bc
    ld b, $cf
    ld [hl], l
    inc b
    adc a
    ld h, c
    ld b, $44
    or b
    ld d, h
    ld de, $133c
    ld e, $0c
    ld b, $3f
    push af

jr_005_7b4e:
    add hl, bc
    ld a, [hl-]
    ld b, a
    jp c, Jump_005_6160

    ld b, a
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    ld [c], a
    nop
    dec sp
    inc de
    ld b, $49
    add hl, bc
    inc b
    ld h, d
    ld de, $0f48
    ld a, [hl-]
    ld c, d
    ld bc, $369f
    ld [bc], a
    push de
    ld h, c
    dec [hl]
    rst $18
    ld [hl-], a
    pop de
    sbc c
    call z, $fa4c
    and $fe
    add hl, bc
    ld c, $47
    ld b, a
    and $b1
    add hl, bc
    or b
    adc h
    ld c, b
    ld b, h
    di
    inc b
    db $db
    rst $28
    rrca
    nop
    inc c
    ld e, $b0
    ld b, b
    ld b, a
    add hl, bc
    ld d, d
    di
    dec bc
    nop
    ld c, d
    rst $00
    inc b
    inc c
    ld hl, $3a22
    ld [hl], l
    inc [hl]
    jr nc, @-$4e

    and a
    xor a
    jp nc, RST_20

    sbc d
    jr z, @-$6b

    and b
    ld b, b
    ld b, d
    sbc $1c
    ld [hl], l
    ld [bc], a
    nop
    adc l
    ld [$ed59], a
    add hl, de
    reti


    xor $46
    add sp, $21
    ld [hl], l
    adc b
    push de
    jp nc, $c3ea

    db $ed
    nop
    ld h, $50
    call nz, $b024
    inc e
    dec e
    and d
    inc a
    ld d, d
    add hl, hl
    ld d, b
    ld [c], a
    or b
    dec a
    ld [hl], l
    scf
    sbc l
    ld a, l
    ld e, c
    inc c
    add hl, bc
    add hl, hl
    ld c, b
    dec h
    ld e, $20
    ld [de], a
    inc a
    xor d
    ld d, c
    ld d, b
    ret c

    ld a, c
    inc hl

Call_005_7be1:
    inc h
    add e
    nop

jr_005_7be4:
    dec h
    ret nc

    rrca
    add hl, bc
    nop
    ld a, h
    add hl, sp
    inc b
    ld [hl], c
    ld [hl-], a
    dec b
    ld c, b
    db $e4
    ld bc, $278d
    sbc $03
    dec bc
    add hl, bc
    and d
    ld [hl], d
    add hl, sp
    ld [hl+], a
    dec l
    and d
    ld b, c
    and e
    ld l, $a1
    inc [hl]
    ld c, c
    add sp, $1b
    ld a, [hl-]
    ld a, [hl+]
    or l
    add hl, sp
    daa
    ld [hl], b
    jp c, $8744

    ld l, a
    ld b, d
    and h
    inc bc
    add e
    rlca
    ld a, c
    dec sp
    ld [bc], a
    rrca
    dec sp
    ld l, b
    call z, Call_000_03e2
    ld c, b
    pop de
    sbc a
    ld l, [hl]
    call Call_005_479f
    jr z, jr_005_7be4

    sbc d
    adc h
    ld a, l
    adc e
    ld hl, sp+$01
    jp nc, Jump_005_465b

    or e
    pop de
    ld [$42c0], a
    rst $08
    or b
    nop

jr_005_7c38:
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    add sp, $00
    nop
    nop
    ld [hl], l
    adc a
    inc bc
    ld [hl-], a
    ld sp, hl
    inc b
    ld bc, $0001
    stop
    ld c, $00
    add e
    nop
    db $10
    ld c, b
    ld b, [hl]
    ld b, a
    ld hl, $4202
    inc b
    ld c, h
    rlca
    ld bc, $6543
    ld h, $00
    rrca
    sbc b
    ld [bc], a
    nop
    ld c, b
    ld b, h
    ld [c], a
    dec h
    jr jr_005_7c38

    ld [bc], a
    nop
    ld b, d
    ld a, c
    ld b, e
    ld b, $0f
    ld b, [hl]
    ldh [rTIMA], a
    rra
    add hl, sp
    dec sp
    ld b, d
    ld b, l
    ret


    dec b
    ld c, c
    add d
    rrca
    ld c, e
    nop
    ld b, c
    ld b, a
    ld bc, $101f
    ld [de], a
    inc de
    inc de
    ld b, c
    ld [bc], a
    ld de, $4240
    db $ed
    ld b, $3f
    rra
    rrca
    ld e, a
    inc bc
    ld hl, $462f
    ccf
    rst $28
    dec b
    cpl
    dec b
    add hl, de
    ld e, a
    ccf

jr_005_7ca1:
    ld c, b
    ccf
    ld c, c
    db $ec
    ld bc, $2f0f
    ld b, b
    ldh [$b9], a
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    ld [c], a
    ld bc, $9b3a
    inc bc
    ld e, $6e
    ld d, b
    ld [hl-], a
    ld b, c
    add $c9
    ld b, d
    rst $00
    inc c
    ld b, [hl]
    add b
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [hl], b
    nop
    nop
    nop
    push de
    sbc d
    db $db
    adc h
    inc bc
    inc b
    ld bc, $0001
    inc l
    nop
    ld c, $00
    add c
    nop
    inc l
    ld b, a
    ld c, b
    ld b, d
    ld b, [hl]
    jp z, Jump_005_5101

    ld b, $07
    ld b, [hl]
    ld c, [hl]
    ld a, [bc]
    db $10
    rlca
    ld b, d
    ld b, [hl]
    inc b
    ret nc

    inc bc
    rrca
    add [hl]

Jump_005_7cf0:
    add hl, bc
    dec b
    add $03
    ld b, h
    ld h, $00
    ld [hl], e
    dec a
    inc bc
    adc $18
    nop
    ccf
    add hl, sp
    scf
    ld b, l
    ld e, [hl]
    ld [hl+], a
    nop
    ld c, d
    rst $08
    ld [bc], a
    inc bc
    ld a, b
    db $10
    ld [bc], a
    nop
    ld b, c
    ld b, a
    call z, Call_005_4359
    ld b, $05
    dec a
    ld b, $07
    inc b
    dec d
    rst $20
    ld c, $00
    ccf
    jr c, jr_005_7ca1

    ld d, a
    ld [$093c], sp
    ld a, [bc]
    ld a, [de]
    dec hl
    ld b, b
    db $e3
    or c
    ld b, h
    rrca
    ld b, $0b
    inc c
    dec c
    ld a, [de]
    jr nz, jr_005_7d5c

    ld b, c
    rst $20
    dec sp
    ld h, e
    ld a, [hl-]
    ld bc, $3c3a
    sub $1b
    add e
    rst $08
    cpl
    ld b, a
    add hl, de
    dec d
    inc l
    ld b, b
    ld b, a
    sub b
    ld d, l
    ld b, d
    ld e, [hl]
    ret


    inc l
    ld c, h
    sub h
    dec d
    ld c, c
    dec b
    ld a, c
    ld c, e
    rlca
    ld a, [bc]
    ld b, b
    dec l
    ld a, h
    daa
    inc b
    adc d
    ld bc, $2359

jr_005_7d5c:
    inc h
    inc a
    nop
    dec h
    ld b, $0a
    ld h, $42
    ld h, $28
    or d
    and h
    ld b, d
    adc d
    add [hl]
    ld c, h
    jr nz, @+$04

    daa
    ld sp, $f427
    dec b
    ld a, [bc]
    dec d
    nop
    ld b, d
    and h
    rlc l
    jp nc, Jump_005_7b2c

    ld [hl], d
    inc b
    jr nz, @-$25

    ld [bc], a
    ld a, [bc]
    adc b
    ld b, d
    jr z, jr_005_7d8e

    sub e
    ld bc, $12b2
    ld a, [hl-]
    or c
    dec d

jr_005_7d8e:
    ld a, [hl-]
    dec sp
    ld h, l
    ld [bc], a
    ld h, $03
    dec bc
    xor b
    dec de
    ld a, h
    ld b, d
    ld bc, $254a
    dec a
    ld b, e
    ld bc, $2405
    ld b, $21
    db $fc
    ld a, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    db $fc
    db $fd
    cp $ff
    db $fc
    db $fd
    cp $ff
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_005_7ddb

    ld [hl+], a
    ld bc, $0702
    ld [$0403], sp
    add hl, bc
    ld a, [bc]
    dec b
    ld b, $0b
    inc c
    dec c
    ld c, $13
    inc d
    rrca
    db $10
    rrca
    db $10
    ld de, $1512
    ld d, $17
    jr jr_005_7de9

    inc d
    rrca
    add hl, de
    rrca
    db $10

jr_005_7ddb:
    ld a, [de]
    ld d, $15
    ld d, $23
    inc h
    inc hl
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_005_7e12

jr_005_7de9:
    nop
    nop
    ld a, [hl+]
    dec hl
    nop
    nop
    add hl, hl
    add hl, hl
    nop
    daa
    add hl, hl
    add hl, hl
    nop
    nop
    inc l
    dec l
    ld l, $2f
    nop
    nop
    inc l
    dec l
    ld l, $2f
    nop

Call_005_7e02:
    nop
    ld l, $30
    nop
    ld sp, $3100
    nop
    ld sp, $3432
    inc sp
    dec [hl]
    ld [hl], $36
    scf

jr_005_7e12:
    scf
    jr c, jr_005_7e4f

    add hl, sp
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld e, b
    ld d, a
    ld e, c
    ld e, b
    ld e, b
    ld e, c
    ld e, c
    ld e, b
    ld e, d
    ld e, c
    ld e, e
    dec h
    dec h
    nop
    nop
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld h, a
    ld l, b
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_005_7e4f:
    ld h, e
    ld h, h
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld [hl], $6a
    ld l, e
    ld [hl], $6c
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, a
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, e
    ld a, h
    ld a, b
    ld a, b
    ld a, l
    sbc a
    ld a, c
    ld a, d
    ld a, [hl]
    ld a, a
    add b
    add c
    add l
    add [hl]
    add d
    sbc a
    add a
    add a
    add e
    add h
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc e
    adc e
    adc [hl]
    adc l
    adc e
    adc e
    adc a
    sub b
    adc e
    sub c
    adc [hl]
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    adc [hl]
    adc h
    adc l
    adc h
    sbc b
    sbc c
    sub b
    sbc d
    adc [hl]
    adc h
    adc l
    adc l
    adc [hl]
    adc [hl]
    adc l
    adc l
    sbc e
    adc [hl]
    sub d
    adc l
    sbc h
    adc [hl]
    sbc l
    adc l
    sbc e
    adc a
    sbc [hl]
    adc l
    adc [hl]
    adc a
    sub b
    adc l
    adc a
    adc [hl]
    adc l
    sub b
    adc [hl]
    adc [hl]
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, h
    ld h, e
    ld h, h
    nop
    ld sp, $3100
    nop
    ld sp, $3100
    sbc d
    adc [hl]
    adc h
    adc l
    adc l
    sbc e
    adc [hl]
    sub d
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
    nop
    ld bc, $0101
    ld bc, $c5c4
    nop
    nop
    nop
    ld bc, $0101
    pop de
    call nc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0201
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
    stop
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
    jr z, jr_005_7f5c

    inc h
    ld hl, $2428
    jr z, jr_005_7f40

jr_005_7f40:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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

jr_005_7f5c:
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld [$1000], sp
    nop
    nop
    nop
    ld [$0201], sp
    nop
    nop

Call_005_7f6f:
    inc bc
    nop
    inc b
    dec b
    ld b, $07
    nop
    ld [$0009], sp
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
    jr jr_005_7fa2

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_005_7fb2

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_005_7fd2

    ld [hl-], a

jr_005_7fa2:
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_7fe3

    nop
    ld a, [hl-]
    nop
    nop
    nop
    inc bc
    nop
    nop

jr_005_7fb2:
    ld c, b
    dec sp
    inc a
    nop
    ld [$0009], sp
    ld c, c
    ld c, d
    dec a
    ld a, $0e
    rrca
    db $10
    ld de, $4c4b
    ccf
    ld b, b
    ld d, $17
    jr jr_005_7fe2

    ld c, l
    ld c, [hl]
    ld b, c
    ld b, d
    ld e, $1f
    jr nz, jr_005_7ff2

    ld c, a

jr_005_7fd2:
    ld d, b
    ld b, e
    ld b, h
    ld h, $27
    jr z, @+$2b

    ld d, c
    ld d, d
    ld b, l
    ld b, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld d, e

jr_005_7fe2:
    ld d, h

jr_005_7fe3:
    nop
    ld b, a
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_005_7ff2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
