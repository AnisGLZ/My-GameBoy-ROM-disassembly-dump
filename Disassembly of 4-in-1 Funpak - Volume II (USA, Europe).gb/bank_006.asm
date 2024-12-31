; Disassembly of "4-in-1 Funpak - Volume II (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    add b
    ld b, $82
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0307
    rra
    rra
    ld a, a
    ld a, a
    inc bc
    ld bc, $1f1f
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fc
    ldh a, [$f0]
    ldh a, [$03]
    ld bc, $3f3f
    rst $38

Call_006_401f:
jr_006_401f:
    rst $38
    rst $38
    rst $38
    cp $f8
    ret nz

    add b
    ldh [$c0], a
    ret nz

    ret nz

    add b
    add b
    inc e
    jr jr_006_4047

    jr jr_006_4069

    jr c, jr_006_406b

    jr nc, @+$72

    jr nc, jr_006_40a7

    ld h, b
    inc c
    nop
    inc e
    inc c
    inc e
    jr jr_006_401f

    ld b, b
    ret nz

    ret nz

    inc c
    inc c
    ld [c], a
    ldh [$b6], a

jr_006_4047:
    or [hl]
    xor d
    xor d
    ld bc, $0707
    rra
    rrca
    ld a, $3c
    inc bc
    ld bc, $070f
    ccf
    rra
    cp $7c
    ld hl, sp-$10
    ldh [$fd], a
    ld hl, sp-$1f
    ret nz

    add c
    ld bc, $0103
    inc bc
    inc bc
    rlca
    inc bc
    rlca

jr_006_4069:
    rlca
    rrca

jr_006_406b:
    rrca
    ldh a, [$e0]
    ldh [$e0], a
    rrca
    rrca
    rlca
    ld a, a
    ccf
    rst $38
    ei
    jp $e083


    ld h, b
    ldh [$e0], a
    rst $28
    rst $00
    ldh [$e0], a
    ld h, b
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    jr nc, jr_006_40a9

    ld [hl], b
    ld h, b
    rst $20
    ld h, d
    rra
    ld bc, $0602
    ld b, $0e
    ld b, $8e
    inc c
    sbc l
    adc l
    ccf
    rra
    ld a, e
    ld [hl], c
    db $e3
    pop bc
    rst $08
    add a

jr_006_40a0:
    inc bc
    rlca
    ld b, $8e
    ld b, $8e
    adc h

jr_006_40a7:
    sbc h
    adc h

jr_006_40a9:
    sbc c
    sbc b
    cp e
    ld sp, $189c
    cp b
    ld [hl], b
    ld h, b
    ld h, b
    rst $20
    jp $dfff


    db $fc
    inc bc
    ld c, $0e
    inc e
    jr @+$32

    jr nc, jr_006_40a0

Call_006_40c0:
    ld h, b
    ret nz

    add b
    ld hl, sp+$70
    rrca
    rrca
    rra
    ld c, $1e
    ld e, $3e
    inc e
    inc a
    inc a
    ld a, h
    inc a
    ld a, b
    ld a, b
    ld hl, sp+$78
    ld a, [hl]
    inc a
    ld [hl], b
    jr nz, jr_006_40dc

    rst $18
    ld c, [hl]

jr_006_40dc:
    cp $de
    ld b, $0e
    ld c, $1e
    inc c
    inc e
    inc e
    inc e
    jr jr_006_4121

    jr jr_006_40ed

    inc bc
    rrca
    rlca

jr_006_40ed:
    ld e, $0e
    inc a
    inc e
    jr c, @+$3a

    ld [hl], c
    ld [hl], b
    db $e3
    ld h, c
    rst $20
    jp $f0f0


    pop af
    ld [hl], b
    ld [hl], c
    ld hl, $6363

jr_006_4101:
    rst $20
    ld b, e
    rst $00
    rst $00
    adc [hl]
    adc [hl]
    ld e, $1c
    rst $18
    call z, $f8fc
    pop af
    pop hl
    jp $87c3


    add e
    rlca
    rlca
    ld c, $7f
    add hl, sp
    pop af
    pop hl
    db $e3
    pop bc
    jp $8783


    inc e
    inc e

jr_006_4121:
    ld a, c
    jr c, jr_006_4101

    sbc b
    ld hl, sp-$68
    ld hl, sp-$50
    pop af
    jr nc, jr_006_419d

    ld h, c
    db $e3
    ld h, e
    rst $20
    rst $20
    rst $38
    rst $08
    sbc a
    rra
    ld a, a
    scf
    rst $20
    ld h, [hl]
    rst $00
    add $cf
    add a
    adc a
    rrca
    sbc a
    rra
    cp a
    ld a, $3f
    inc sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $30
    ld [c], a
    and $e6
    xor $c6
    cp $fc
    db $fc
    ld a, h
    ld bc, $f803
    rra
    rrca
    ccf
    dec de
    ld a, a
    inc sp
    rst $30
    ld h, a
    db $fc
    ret c

    ret c

    sbc b
    sbc b
    sbc b
    cp c
    db $10
    ld sp, $3931
    add hl, sp
    ld a, e
    ld sp, $7373
    ld [hl], a
    ld h, e
    rst $20
    db $e3
    rst $20
    rst $00
    rst $00
    rst $00
    rst $08
    rst $00
    adc $c6
    call c, $b88c
    sbc b
    di
    pop af
    rst $20
    db $e3
    adc $c6
    sbc h
    sbc h
    jr c, @+$1a

    ld a, b
    ld hl, sp-$28
    cp b
    sbc b
    jr nc, jr_006_41f0

    ld h, b
    db $e3
    ld h, c
    ld c, $0c
    rra
    rrca
    rra
    rra
    rra
    ld e, $3c
    ld hl, sp+$71

jr_006_419d:
    pop hl
    pop bc
    jp $0381


    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    rst $18
    rst $38
    di
    di
    cp $fc
    db $ec
    ccf
    rra
    ld a, h
    jr nc, jr_006_41e3

    ld a, a
    scf
    ld [hl], a
    ld [hl], a
    add b
    nop
    ldh [$e0], a
    rra
    ld e, $1e
    add c
    add b
    add e
    add c

jr_006_41c2:
    add a
    inc bc
    rst $28
    add $ce
    adc [hl]
    sbc h
    ld [hl], c
    inc sp
    ld sp, $2373
    ld h, a
    ld h, a
    rst $28
    ld h, a
    rst $38
    rst $28
    rst $28
    rst $20
    rst $08
    adc [hl]
    sbc a
    sbc [hl]
    rst $38
    cp a
    xor $e4
    ld [hl], b
    jr nc, jr_006_41c2

    ldh [$c1], a

jr_006_41e3:
    db $e3
    ld e, $0e
    rst $38
    ld a, h
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    rst $30
    ld h, a
    rst $28

jr_006_41f0:
    rst $28
    db $ec
    add sp, -$20
    ld bc, $1f00
    rrca
    rrca
    rlca
    db $fc
    db $fc
    ldh a, [rP1]
    nop
    ld [hl], a
    ld h, b
    ldh [$c0], a
    rst $00
    add e
    ccf
    rra
    rst $38
    ld bc, $0300
    inc bc
    rra
    ld c, $fc
    ld a, b
    ldh a, [$3e]
    ld a, $7e
    inc a

jr_006_4215:
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, h
    add hl, sp
    jr jr_006_4215

    ld [hl], c
    pop hl
    pop hl
    pop hl
    pop bc
    rst $00
    add $0f
    ld a, a
    ld a, $0f
    ld a, a
    ccf
    db $fc
    ld hl, sp+$07
    rlca
    cp $f8
    db $fd
    ld sp, hl
    pop hl
    pop bc
    ld b, b
    rrca
    rlca
    ld a, [hl]
    inc a
    ccf
    ld e, $1f

jr_006_423b:
    rrca
    cp $7c
    pop af
    ret nz

    db $fc
    rra
    ld e, $1f
    rrca
    ld a, [hl]
    inc a
    rrca
    ld a, h
    jr c, jr_006_423b

    ldh [$3f], a
    ld a, $fc
    rlca
    inc bc
    ld e, $0c
    jr c, jr_006_4285

    ldh [$c0], a
    ld a, $1e

jr_006_4259:
    ld a, $3e
    ld a, $1e
    ld e, $0c
    inc c
    inc b
    inc b
    rrca
    ldh a, [$e0]
    jr nc, @+$05

    jr c, jr_006_4259

    ld c, $0c
    jr @+$20

    ld c, $78
    ld [bc], a
    ld b, $04
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    rlca
    rst $00
    ld hl, sp+$03
    ld bc, $7f1f
    ld a, $f8
    ldh a, [$fe]
    db $fc
    add hl, sp

jr_006_4285:
    add b
    ret nz

    ld c, [hl]
    ld b, c
    ld [hl], e
    ld b, $4e
    ld h, d
    ld b, b
    ret c

    ld [de], a
    ld [hl], d
    db $dd
    ld a, [bc]
    ret nz

    sbc [hl]
    and b
    add e
    jr @+$1e

    ld a, b
    ld h, e
    adc b
    add hl, bc
    ld sp, $6021
    ld c, l
    add hl, hl
    add h
    dec [hl]
    inc bc
    ld d, d
    ld [hl], l
    ld d, h
    ld [hl], e
    ld c, e
    and d
    ld c, c
    ld c, h
    ld [hl], h
    ld l, l
    sub a
    ld [hl], l
    db $e3
    add d
    db $db
    jp Jump_000_192f


    ld h, h
    call c, Call_006_6a02
    xor b
    ret c

    and c
    inc bc
    jp nz, Jump_000_3bb1

    ld bc, $20d0
    inc c
    ld [$7240], a
    ld b, b
    ldh a, [$0e]
    rst $10
    dec [hl]
    jr nz, @-$36

    db $eb
    and b
    ldh a, [rOBP1]
    ld [$ab6e], sp
    ld h, [hl]
    db $10
    ld l, h
    and [hl]
    ld d, b
    scf
    ld d, [hl]
    rlca
    add e
    ld h, h
    ld b, e
    ld h, d
    rst $00
    inc b

jr_006_42e5:
    push bc
    or [hl]
    ld b, a
    ld sp, $3086
    rst $30
    inc [hl]
    inc e
    db $d3
    dec e
    ld h, b
    ld [hl], a
    ld h, $03
    sub e
    ld l, $91
    add h
    dec e
    cp b
    sub e
    dec e
    db $e4
    db $76
    db $ec
    cp b
    sub d
    inc de
    ld hl, $79d8
    db $e4
    call $9ed1
    ld d, c
    ld b, $77
    ld l, a
    add hl, de
    or l
    adc $4e
    ld d, [hl]
    inc de
    ld de, $200f
    ld [de], a
    ld c, $84
    add sp, $5e
    add [hl]
    inc hl
    ld l, l
    dec h
    di
    jr nz, jr_006_4343

    db $dd
    sbc a
    ld d, $2e
    daa
    add h
    ld a, [c]
    jp nz, $de03

    db $e3
    cp l
    ret c

    ld a, h
    inc c
    dec de
    sbc [hl]
    call c, $087f
    ld sp, $43e2
    jp hl


    and b
    call nz, Call_000_2360
    pop hl
    xor l
    ld d, $4f
    ld a, [hl+]

jr_006_4343:
    inc hl
    sbc b
    nop
    add e
    ld b, b
    ld [$a2e7], sp
    dec e
    or $c0
    rst $28
    ld e, e
    ld c, [hl]
    ld b, c
    and l
    dec d
    ld [hl], c
    ld b, d
    or b
    add hl, de
    ld [de], a
    jr nc, jr_006_42e5

    ld [hl], b
    xor b
    add e
    ld c, [hl]
    daa
    dec b
    adc b
    dec [hl]
    xor $bc
    ld e, d
    adc [hl]
    dec hl
    ld h, $2c
    daa
    ld e, $43
    rrca
    ld [de], a
    ret z

    jp nz, Jump_006_6e14

    ld hl, sp-$1d
    dec hl
    rlca
    ld [$dd84], sp
    ld [$1b5c], sp
    dec b
    add e
    inc b
    adc c
    inc e
    ld a, e
    ld a, c
    ld [hl], e
    ld h, $d0
    adc l
    and h
    ld d, $f2
    ld e, [hl]
    dec bc
    add d
    ld h, d
    ret nz

    adc h
    ldh a, [rNR10]
    ld h, d
    pop hl
    rst $20
    ld [hl], $2e
    inc de
    inc bc
    ld a, [bc]
    ld h, b
    xor d
    ld e, $5d
    inc de
    ret z

    ld l, [hl]
    adc d
    rlca
    ld c, l
    adc h
    ld b, $02
    ld b, b
    ld [hl], c
    xor b
    jp hl


    ld h, c
    pop de
    ld b, h
    db $eb
    jr nc, jr_006_43cf

    ld [hl], h
    ld [$925e], sp
    cp l
    ld c, [hl]
    ld [bc], a
    and $9c
    db $76
    ld c, b
    ld l, $07
    db $f4

Jump_006_43c0:
    ld c, h
    dec bc
    dec d
    dec a
    ld e, d
    adc h
    ret nc

    push af
    sub b
    jp Jump_006_75f2


    ld sp, $ec09

jr_006_43cf:
    ld e, e
    dec a
    ld e, l
    db $ed
    ld e, d
    ld [hl], b
    ld e, c
    ld c, l
    push af
    ld b, b
    db $ed
    ld d, $ef
    adc b
    sub [hl]
    rst $30
    di
    ld c, h
    ld c, $f4
    ld l, [hl]
    rst $08
    adc h
    ld [hl], c
    ldh [$ee], a
    jr z, jr_006_444c

    ld [bc], a
    rst $20
    nop
    ld a, b
    ld hl, sp-$7d
    jp nz, Jump_006_6b02

    xor b
    inc a
    xor h
    inc b
    ld a, c
    adc c
    ld [$0240], sp
    ld [hl], e
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $01
    rlca
    nop
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
    jr jr_006_441d

    add hl, de

jr_006_441d:
    ld a, [de]
    nop
    dec de
    ld bc, $1d1c
    ld e, $1f
    jr nz, jr_006_4448

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_006_4458

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_006_4468

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_4478

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_006_4448:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_006_444c:
    ld b, a
    ld c, b
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

jr_006_4458:
    ld d, e
    ld d, h
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_006_4468:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    add hl, sp
    add b
    ret nz

    ld c, h
    ld [bc], a
    sbc b
    ld [bc], a
    and [hl]

jr_006_4478:
    ld l, h
    ld bc, $e861
    and c
    push hl
    dec d
    sub l
    db $ed
    ld de, $3980
    jr nz, jr_006_449f

    ld c, l
    db $e4
    ld bc, $c429
    push de
    sub c
    ld [c], a
    ld b, b
    ld [de], a
    cp h
    pop de
    ld c, b
    ld a, e
    db $ec
    sbc d
    dec l
    ld [bc], a
    ld sp, $a832
    ldh a, [$a0]
    add h
    nop

jr_006_449f:
    rrca
    ld a, d
    dec b
    nop
    nop
    nop
    rst $38
    nop
    db $dd
    ld [hl+], a
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    ld [hl], a
    rst $38
    nop
    rst $18
    ld hl, $03ff
    ld a, a
    add a
    rst $38
    rrca
    rst $38
    rra
    ld a, a
    ccf
    rst $38
    ld a, a
    and d
    rst $38
    add b
    rst $30
    adc b
    rst $38
    add b
    cp $01
    db $e3

jr_006_44c9:
    or $39
    jr nz, jr_006_44c9

    inc bc
    rst $08
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $30
    ld [$55dd], sp
    nop
    ei
    xor d
    ld bc, $0357
    rst $38
    rlca
    ld e, a
    rrca
    cp a
    rst $38
    rst $38
    db $dd
    push de
    add b
    ei
    xor d
    add b
    rst $38
    rrca
    ld e, a
    ccf
    cp a
    ccf
    rrca
    ret nz

    push hl
    ldh a, [$fa]
    ldh a, [$e5]
    ldh a, [$ea]
    ret nz

    sbc $01
    cp $01
    ld d, h
    ld bc, $aafa
    ld bc, $0015
    nop
    ld [hl+], a
    adc b
    nop
    dec d
    nop
    xor e
    ld bc, $0307
    xor [hl]

jr_006_4513:
    rlca
    ld e, $0c
    ld a, $18
    ld a, b
    jr nc, jr_006_4513

    ld h, b
    ld a, a
    sub l
    add b
    add b
    and d
    adc b
    add b
    ccf
    ld a, a
    cp a
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    ld a, a
    di
    rst $30
    ei
    rst $30
    di
    rst $30
    di
    ei
    rst $30
    dec d
    nop
    xor l
    inc bc
    cpl
    rra
    or a
    ld a, a
    db $db
    rst $20
    rst $20

jr_006_4540:
    add e
    add c
    inc bc
    adc c
    inc bc
    dec d
    nop
    ld [$fef0], a
    db $fc
    cp $fe
    rst $38
    cp $14
    nop
    ld bc, $8822
    ld bc, $0001
    inc bc
    rrca
    ld b, $1e
    inc c
    inc a
    jr jr_006_4599

    inc a
    ccf
    ccf
    ldh [$c0], a
    ret nz

    add b
    add b
    ld bc, $0180
    inc bc
    ld bc, $2003
    rra
    dec bc
    rlca
    cpl
    rra
    ld a, [de]
    inc a
    inc a
    jr c, jr_006_4540

    call c, $dcdc
    inc e
    inc e
    inc e
    inc e
    inc b
    ld c, $0e
    ld c, $0e
    cpl
    rra
    ccf
    ld a, a
    or $79
    ld h, b
    ldh a, [rLYC]
    add e
    jp $f7e7


    rst $20
    ld h, a
    rst $30
    cp $fc
    rst $38
    rst $38
    dec bc

jr_006_4599:
    rlca
    adc a
    rra
    cp l
    sbc [hl]
    sbc b
    cp h
    ret nc

    pop hl
    pop af
    ld sp, hl
    cp l
    ld a, c
    add hl, de
    dec a
    add b
    jp $c7c7


    adc $ce
    call c, Call_000_03dc
    inc bc
    ld b, $02
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    rla
    rrca
    rra
    ccf
    ld a, e
    inc a
    jr nc, jr_006_463b

    and d
    pop bc
    pop hl
    di
    ld a, e
    di
    inc sp
    ld a, e
    ld a, h
    cp $fe
    cp $7c
    cp $38
    ld a, $7f
    ld a, a
    ld a, a
    ld a, $7f
    inc e
    inc e
    jr c, @+$3a

    jr c, @+$3a

    ccf
    ccf
    ccf
    ccf
    ld e, h
    sbc h
    ld e, h
    sbc h
    ld e, $1c
    inc c
    ld e, $1e
    rrca
    rlca
    rrca
    ld c, $1e
    ld c, $0c
    ld e, $de
    inc a
    ld hl, sp-$04
    ldh a, [$e0]
    ldh [$e0], a
    rst $30
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld bc, $0b03
    rlca
    ld a, a
    ccf
    ld a, [hl]
    ld a, $bc
    cp b
    cp b
    cp b
    dec a
    dec e
    dec e
    dec e
    dec e
    sbc l
    dec e
    sbc l
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    sbc $de
    rst $08
    rst $08
    rst $00
    rst $00
    jp Jump_000_00c3


    nop
    inc bc
    add e
    add e
    ret nz

    jp Jump_000_060f


    inc bc
    ld bc, $0e01
    sbc [hl]
    ld c, $9e
    sbc h
    sbc h
    sbc h
    sbc h
    ld hl, sp-$08
    ld a, b
    ld [hl], b

jr_006_463b:
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld [hl], b
    jr nc, jr_006_46ba

    ld a, e
    inc a
    dec sp
    dec sp
    dec sp
    dec sp
    ld a, e
    dec sp
    inc sp
    ld a, e
    ld a, e
    di
    db $e3
    di
    add b
    db $fd
    cp $08
    dec b
    inc bc
    ld e, a
    ccf
    db $10
    cpl
    rra
    dec b
    adc b

jr_006_465d:
    ld [hl], b
    db $fc
    cp $fc
    add sp, $40
    ldh [rNR43], a
    ld [hl], a
    dec e
    add b
    pop bc
    ret nz

    and d
    ld a, h
    ld a, $00
    nop
    rst $38
    inc b
    ld d, h
    inc b
    nop
    ld [bc], a
    ld bc, $00f8
    rlca
    db $fd
    cp $fc
    db $fd
    rst $38
    rst $18
    ccf
    ccf
    rra
    ld e, a
    ccf
    sbc a
    pop bc
    add c
    add d
    jp $c7c4


    call nz, $00c7
    db $10
    jr nc, jr_006_46b1

    ld h, b
    ld b, b
    ret nz

    add b
    ld b, b
    add b
    sub l
    ld c, $9e
    rra
    adc a
    dec d
    ld c, $1e
    rra
    rrca
    rra
    ld [bc], a
    ld [bc], a
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ld d, b
    jr nc, @+$4a

    jr c, @+$4a

    jr c, jr_006_46b8

    nop

jr_006_46b1:
    ld [$0010], sp

jr_006_46b4:
    db $10
    db $10
    jr nz, jr_006_46b8

jr_006_46b8:
    ld b, b
    add b

jr_006_46ba:
    ret nz

    inc a
    ld a, h
    ld a, b
    ld a, h
    ld a, [bc]
    rlca
    rlca
    rrca
    rrca
    rrca
    ld a, [bc]
    rlca
    ld h, b
    ret nz

    jr nz, jr_006_473b

    jr z, jr_006_46e5

    inc h
    inc e
    sub h
    inc c
    sub h
    adc h
    jr jr_006_465d

    adc b
    jr @+$08

    nop
    inc c
    nop
    jr nc, @+$0e

    ld c, $1e
    inc e
    jr nc, jr_006_4742

    nop
    ld b, $0c

jr_006_46e5:
    cp $ff
    db $eb
    and $c3
    jp $e1e1


    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$95]
    ld c, $80
    ldh [rLCDC], a
    ld [hl], b
    jr nz, jr_006_472a

    db $10
    jr jr_006_4705

    inc c
    inc b
    dec d
    inc bc
    ld e, b
    jr nc, jr_006_46b4

    ld h, b

jr_006_4705:
    add $61
    cp e
    rst $00
    rrca
    db $fc
    cp b
    ldh a, [$e0]
    ret nz

    add b
    nop
    rra
    ld c, $f0
    ccf
    adc $f1
    ld h, c
    ld bc, $c100
    add c
    ld b, e
    pop bc
    ld h, e
    jp Jump_006_63a2


    ld h, d
    inc hl
    inc sp
    ld de, $1011
    ret nz

    add b

jr_006_472a:
    jp z, Jump_000_0787

    adc a
    rrca
    adc a
    ld a, [bc]
    add a
    ld b, b
    add b
    jr nz, @-$3e

    ret nc

    add b
    ld d, b
    ldh [$f1], a

jr_006_473b:
    ldh a, [$30]
    db $10
    jr nc, @+$12

    jr nz, jr_006_4762

jr_006_4742:
    ld h, b
    jr nz, jr_006_4785

    jr nz, jr_006_4767

    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    nop
    ld b, c
    nop
    ld bc, $3e81
    inc e
    inc [hl]
    inc a
    ld a, h
    inc l
    ld l, h
    ld l, h
    call z, $cc6c
    call z, $ccc8
    ld hl, sp-$03
    rst $38

jr_006_4762:
    rst $10
    db $dd
    db $e3
    db $e3
    pop bc

jr_006_4767:
    pop hl
    jp $f1ee


    pop de
    ldh [$f2], a
    pop hl
    db $ec
    di
    db $fc
    rlca
    ret nz

    nop
    or e
    ret nz

    call z, Call_006_6173
    ccf
    ld a, $1e
    dec a
    ld e, $f2
    inc a
    ld h, h
    ld hl, sp-$5a
    cp c

jr_006_4785:
    dec hl
    inc sp
    add hl, de
    inc de

jr_006_4789:
    ld d, $19
    inc c
    and b
    ret nz

    ret nz

    and b
    ld [bc], a
    ld bc, $1803
    ld [$a408], sp
    call nz, $e2c6
    db $e3
    ld [c], a
    and c
    jp $0103


    ld a, h
    jr nc, jr_006_47b1

    inc c
    inc bc
    inc bc
    rra
    nop
    ld [hl], b
    nop
    add b
    nop
    ldh a, [$c0]
    inc [hl]
    jr c, @+$1f

jr_006_47b1:
    ld c, $07
    inc bc
    ld bc, $e100
    pop af
    ld d, e
    pop hl
    ld b, $02
    add hl, bc
    ld b, $14
    inc c
    call nz, $083c
    call c, $0183
    add e
    inc bc
    add a
    rrca
    rst $30
    jr c, jr_006_4789

    jr @+$0e

    sbc h
    ld [$3fb9], sp
    reti


    rst $20
    rst $38
    rst $38

Jump_006_47d7:
jr_006_47d7:
    ei
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$05
    cp a
    ld a, a
    ld a, a
    ccf
    db $fc
    nop
    nop
    ld b, h
    ld de, $0055
    inc c
    ld [$044c], sp
    ld b, $04
    rla
    ld [bc], a
    inc bc
    ld [bc], a
    ld d, a
    ld d, h
    jr c, jr_006_486f

    ld a, h
    inc a
    db $10
    push bc
    add e
    add b
    ld bc, $5401
    add hl, sp
    ld a, b
    ld a, l
    inc a
    ld a, l
    ld d, [hl]
    add hl, sp
    inc e
    ld a, h
    inc c
    add b
    ret nz

    ret nz

    ld [hl], e
    pop af
    ld [hl], a
    di
    or $b7
    or [hl]
    ld [hl], $64
    ld [hl], $70
    ld h, b
    ld h, b
    jr nc, jr_006_487c

    jr nc, jr_006_489d

    rst $38
    db $fd
    ld a, [hl]
    ld a, [$be7c]
    ld a, h
    db $fd
    ld a, $1f
    ld hl, sp+$77
    nop
    rst $28
    add a
    di
    ld b, a
    db $dd
    ld h, e
    ld l, a
    jr nc, jr_006_47d7

    inc a
    ret nc

    ccf
    xor a
    rra
    rst $38
    pop bc
    ret nz

    ld l, a
    add e
    rst $28
    inc e
    cp d
    ld [hl], b
    rst $38
    ret nz

    ld hl, sp+$34
    ret c

    call nz, Call_000_04a8
    ld a, b
    inc b
    xor b
    inc b
    ld hl, sp+$04
    ld h, h
    ld h, a
    ld [hl], $30
    jr nc, jr_006_4886

    jr nc, jr_006_4878

    ld [hl], b
    ld h, $71
    ldh a, [$60]
    rlca
    ld bc, $08f4
    dec a
    ld [bc], a
    ldh a, [$f7]
    ld b, $80
    rlca
    rrca
    rra
    ret nz

    ld hl, sp-$08
    rst $38
    ccf

jr_006_486f:
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    xor a

jr_006_4878:
    ld d, b
    ld d, l
    ldh a, [rIE]

jr_006_487c:
    nop
    xor e
    ld d, h
    db $fc
    xor $c0
    xor a
    ld d, b
    xor $fd

jr_006_4886:
    ld [bc], a
    ldh [rP1], a
    add sp, $10
    ld [hl], b
    add sp, $04
    ei
    inc b
    jr c, jr_006_4906

    ld h, b
    nop
    ld sp, $1f03
    rra
    rra
    rra
    rrca
    rrca
    ld [hl], a

jr_006_489d:
    rst $20
    ei
    ei
    ld hl, sp-$10
    rst $30
    ldh [$cf], a
    rst $18
    ret nz

    xor d
    ld d, l
    db $dd
    ld [hl+], a
    xor d
    ld d, l
    ld d, l
    xor d
    ld [hl+], a
    db $dd

jr_006_48b1:
    ld d, l
    xor d
    adc b
    ld [hl], a
    ld [hl], l
    adc e
    xor a
    ld d, a
    rst $18
    daa
    xor a
    ld e, a
    ld e, a
    xor a
    ccf
    rst $18
    ld e, a
    cp a
    cp a
    ld a, a
    rst $38
    ld hl, sp+$77
    adc a
    adc a
    rlca
    rst $00
    rrca
    ld h, a
    sbc a
    ld [hl], a
    and d
    ld [$fdf5], a
    ld a, [$23dc]
    xor l
    ld d, d
    ld d, d
    xor h
    jr z, jr_006_48b1

    call nc, $e4a8
    ld hl, sp+$7c
    add b
    ldh [rTAC], a
    rrca
    ldh [$3f], a
    ld a, $fc
    db $fc
    pop hl
    ld [hl], e
    rrca
    rrca
    ret nz

    ldh a, [rNR10]

jr_006_48f2:
    db $10
    ldh [$e0], a
    jp Jump_000_1ee3


    inc a
    rst $20
    rst $00
    stop
    ld hl, sp-$18
    ld [$0804], sp
    and b
    call nz, $e4f4

jr_006_4906:
    db $e4
    db $f4
    scf
    inc bc
    rla
    rlca
    rla
    rlca
    rla
    rlca
    rra
    rlca
    rra
    rlca
    rrca
    inc bc
    dec bc
    ld bc, $fdfd
    ld sp, hl
    ld sp, hl
    cp a
    cp a
    sbc a
    sbc a
    ldh [$f0], a
    ret nz

    ld d, l
    ld b, h
    cp e
    ld b, c
    rst $38
    ld bc, $13ff
    rst $38
    ld hl, sp-$08
    add a
    add c
    add c
    ret nz

    add b
    pop bc
    ret nz

    add a
    rst $00
    ret z

    ret z

    ret nz

    call z, $c4e1
    nop
    ld a, b
    inc a
    jr jr_006_48f2

    rlca
    rst $30
    rst $28
    ld h, a
    ld h, a
    ld h, b
    jr nc, jr_006_4962

    jr nc, jr_006_495b

    ccf
    ccf
    adc a
    rst $00
    add b
    add b
    jr c, jr_006_496c

    rst $00
    jp nz, $8f9f

    db $fc
    rlca
    rlca

jr_006_495b:
    cp $e9
    ldh [$a7], a
    rst $00
    adc $5c

jr_006_4962:
    jp $cfe7


    rst $00
    add a
    rst $08
    add a
    adc a
    rlca
    adc a

jr_006_496c:
    add a
    add a
    jp $0307


    ld b, e
    rst $30
    rst $28
    ldh a, [$f4]
    ldh a, [$f4]
    ld hl, sp-$0e
    ld hl, sp-$0e
    ld a, [$f2f2]
    ld a, [c]
    pop af
    ld a, [c]
    ld [c], a
    pop af
    ld [$040c], sp
    ld b, $e1
    ld h, c
    rlca
    adc a
    add a
    rst $38
    ld d, a
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38

jr_006_4994:
    xor a
    cp l
    cp e
    rst $00
    rst $00
    add e
    res 0, a
    or e
    rst $08
    cp $fe
    db $fd
    ld a, [$0c1c]
    inc c
    rrca
    rrca
    rlca
    rlca
    ld b, a
    and $e6
    ld h, a
    db $e3
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    jp $829e


    call $0205
    ld c, h
    rst $00
    dec c
    ld b, b
    rst $08
    ld c, e
    adc d
    cp a
    or e
    cp a
    add c
    add e
    add a
    ld bc, $0143
    ld b, c
    pop bc
    and c
    ld h, b
    inc bc
    pop hl
    and d
    db $fd
    jp nc, Jump_000_22ff

    rst $38
    inc h
    sbc a
    ld h, h
    rst $38
    ld b, h
    ei
    db $e4
    cp a
    ld b, b
    rst $28
    sub c
    rst $38
    sub c
    db $10
    db $d3
    and a
    adc e
    rst $18
    add hl, bc
    ld a, [hl+]
    add b
    ld d, l
    add b
    inc bc
    pop bc
    ld b, b
    ld b, c
    jr nz, jr_006_4994

    or b
    db $10
    ld e, b
    ld [$04ac], sp
    ld a, b
    inc e
    ret nz

    ld e, b
    ccf
    ld a, a
    rra
    ccf
    rra
    inc bc
    rlca
    pop hl
    pop hl
    pop bc
    pop hl
    pop bc
    pop bc
    add c
    pop bc
    add c
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ldh a, [$f8]
    db $fc
    ld hl, sp+$39
    add b

Jump_006_4a1c:
    ldh [$81], a
    rst $18
    ld a, c
    add b
    inc [hl]
    dec h
    db $f4
    ld sp, hl
    ret z

    inc h
    ld [$41e3], a
    inc bc
    reti


    cp d
    rla
    ld h, l
    dec sp
    add c
    jp nz, Jump_000_3023

    sub [hl]
    ei
    inc a
    dec e
    jp $f99b


    ld bc, $8695
    ret z

    inc l
    rst $20
    or e
    reti


    db $dd
    cp c
    ld [hl], b
    ld bc, $9127
    ld [hl], b
    inc bc
    nop
    ld a, h
    ld [hl], a
    adc $47
    dec de
    ld a, [hl]
    inc h
    ld a, [hl]
    ldh a, [rNR52]
    xor d
    dec c
    ccf
    ld [hl], c
    ld e, [hl]
    inc sp
    ld l, e
    db $db
    sub b
    sub c
    ret


    db $e3
    ld a, b
    ld [de], a
    di
    ld a, b
    and $04
    cp l
    ld e, $3a
    ld bc, $04a9
    sub c
    ld a, [hl-]
    ret nc

    ld e, e
    or [hl]
    ldh a, [rNR50]
    ld a, b
    ld a, b
    ld a, b
    inc e
    xor [hl]
    add hl, bc
    dec de
    xor c
    sbc h
    ld h, h
    ld a, l
    and c
    and a
    adc $57
    ldh a, [$3e]
    nop
    ld e, l
    db $e3
    sbc h
    rlca
    ret nc

    rrca
    or b
    ld [hl], h
    add b
    db $fc
    ld bc, $08fa
    ccf
    add c
    db $fc
    inc de
    ld l, d
    or $2f
    add b
    inc bc
    add d
    ld [$15c0], sp
    ld a, b
    ld d, c
    dec c
    or b
    inc de
    adc h
    ld [hl-], a
    rst $00
    ld [hl], b
    ld b, h
    ld [c], a
    ld [hl], l
    add b
    push hl
    inc b
    add b
    and $04
    add e
    sbc [hl]
    ld l, [hl]
    ld [hl], b
    ld c, b
    ld c, $80
    ld c, b
    ld c, $90
    ld c, c
    scf
    ei
    sub h
    ld d, [hl]
    ld c, [hl]
    or b
    ld c, b
    ld c, $c0
    ld c, b
    ld c, $23
    ld d, $3a
    cp l
    ld a, c
    ldh [$2e], a
    ld a, a
    ld e, b
    rrca
    nop
    ld c, b
    rrca
    db $10
    ld c, b
    ld c, $d0
    ld e, a
    ld [hl], $e4
    or c
    dec h
    push hl
    push af
    add b
    dec a
    add b
    or $83
    sbc e
    add hl, bc
    ld c, $79
    add hl, de
    rra
    sub c
    ld sp, hl
    db $10
    ld sp, hl
    xor b

jr_006_4af1:
    ld a, $87
    add sp, $43
    ld [$3da0], a
    ld b, c
    jr nz, jr_006_4af1

    ld b, c
    jr nz, jr_006_4b3d

    ld b, h
    db $fd
    add d
    ld bc, $f5ee
    add b
    ret c

    ld c, e
    xor [hl]
    reti


    call z, $bf7e
    ld h, c
    scf
    pop bc
    rlca
    ld [$d865], sp
    call nc, $c6f0
    rlca
    ld c, b
    ld b, d
    adc $88
    sub b
    or [hl]

jr_006_4b1d:
    cp [hl]
    rst $28
    ld hl, $9036
    ld l, l
    ret nz

    db $e3
    add c
    rst $00
    ld b, e
    ld l, e
    rlca
    inc d
    add h
    add a
    ld l, c
    db $eb
    add hl, de
    ld a, h
    dec l
    ld hl, sp-$74
    rst $28
    sub d
    ld [hl], l
    ld e, $bc
    or h
    ld [$92e5], sp

jr_006_4b3d:
    ld de, $24cc
    add hl, sp
    jr nz, jr_006_4b4a

    ld d, $06
    rst $20
    ld [de], a
    ld de, $24cf

jr_006_4b4a:
    ld l, [hl]
    add c
    ld hl, $e0a8
    ld [hl], $24
    sbc l
    ld [hl+], a
    ld b, d
    add sp, $0a
    inc a
    ld c, [hl]
    nop
    ld [$1792], a
    ld d, h
    ld d, c
    cp b

Call_006_4b5f:
    cp $2c
    ld h, l
    rst $10
    adc l
    or a
    ld h, l
    jr nc, @-$28

    dec a
    add l
    ld b, $ea
    rst $30
    ld d, l
    dec b
    db $ed
    ld d, e
    db $db
    ld bc, $702e
    adc e
    rlca
    ld b, b
    sub c
    ret nc

    sub d
    dec a
    sbc $42
    ld [hl], d
    and [hl]
    add $5d
    inc hl
    or e
    add hl, bc
    ld bc, $f789
    ld h, a
    add hl, bc
    ld a, [bc]
    add sp, $44
    jr jr_006_4b9d

    dec b
    ld a, c
    ld d, h
    ld e, $f5
    jr nc, jr_006_4b1d

    sub b
    ret


    ld a, e
    sbc h
    add a
    and a
    ld [bc], a

jr_006_4b9d:
    ld b, l
    db $ed
    pop de
    add sp, $2b
    ret nc

    ld [hl], a
    and [hl]
    push bc
    add a
    pop bc
    cp [hl]
    sbc b
    ld d, e
    call c, $9300
    rst $28
    ld [hl], b
    dec de
    ld a, [hl+]
    ld h, d
    ld hl, sp+$4b
    db $e4
    ld h, b
    adc $8e
    pop hl
    call c, $e4ee
    dec h
    db $f4
    ld l, h
    add [hl]
    cp a
    rst $10
    jp z, $9a89

    add b
    rst $08
    db $ed
    ld [$1592], a
    pop af
    add a
    sbc d
    add d
    ld d, l
    and $0d
    rst $20
    ccf
    pop hl
    db $fd
    call Call_006_5ffe
    reti


    ld b, c
    sub c
    db $f4
    ld e, c
    or e
    jp nc, Jump_000_3cf4

    adc c
    sub l
    ld c, h
    pop hl
    inc a
    ret


    ret nz

    and b
    ld l, [hl]
    ld b, h
    inc h
    rlca
    dec b
    add c
    cp d
    ld l, [hl]
    add e
    ld h, a
    ld [$7c66], sp
    add h
    ld l, h
    jp nz, $eabb

    inc h
    daa
    dec bc

jr_006_4c00:
    call nz, $b5ae
    db $e3
    dec sp
    and d
    jp c, $ee88

    ldh [rNR21], a
    rst $28
    ld sp, $f1af
    dec sp
    xor [hl]
    ret nz

    cp c
    sbc e
    dec b
    and b
    ld h, c
    jr nz, jr_006_4c00

    jp Jump_000_00c4


    ld e, h
    ld a, [hl+]
    inc l

jr_006_4c1f:
    cp e
    ld a, e
    inc l
    cp c
    ld e, a
    xor [hl]
    ld b, e
    ld l, c
    ld [hl], b
    xor d
    adc [hl]
    ld b, h
    jr z, jr_006_4c1f

    ld c, [hl]
    or c
    add l
    ld [bc], a
    sub b
    inc a
    rlca
    ld a, [c]
    sbc h
    db $10
    ld h, d
    ld l, l
    jp z, $c2fb

    ld l, l
    xor h
    add b
    sub e
    ret


    db $ed
    call z, $cc1d
    add hl, sp
    ld hl, $07c6
    ld sp, $3b44
    ld c, c
    call c, $c661
    sub [hl]
    ld c, b
    ret z

    ld h, a
    ld h, e
    dec de
    ld a, [hl-]
    ld c, b
    ld a, [c]
    ld b, b
    inc a
    ld b, h
    ld c, c
    adc b
    sub b
    ld b, d
    ld l, h
    jr c, jr_006_4c88

    or c
    ld c, [hl]
    jp nz, $9d80

    ld b, $1b
    sbc h
    add hl, de

jr_006_4c6c:
    ld d, h
    ld e, b
    ld b, l
    dec b
    adc d
    adc c
    pop de
    cp c
    nop
    ld l, d
    rra
    add hl, bc
    pop de
    pop hl
    dec bc
    db $d3
    add hl, sp
    inc e

jr_006_4c7e:
    xor $f4
    ldh [$74], a
    db $e4
    db $10
    push af
    ld bc, $db73

jr_006_4c88:
    daa
    ld [hl], $c9
    ld b, $bd
    ret nz

    ld c, [hl]
    and d
    jr nz, jr_006_4c6c

    rst $10
    adc e
    or b
    ld d, c
    ld h, h
    inc d
    db $eb
    ret nz

    and l
    ret


    ld l, $5c
    ld h, d
    ld c, [hl]
    and [hl]

jr_006_4ca1:
    jr nz, jr_006_4c7e

    and l
    ld c, d
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl-], a
    jr nc, jr_006_4ca1

    jr jr_006_4ce3

    rlca
    rst $00
    ld h, e
    add hl, bc
    dec e
    sub e
    dec e
    sub e
    inc h
    or $66
    dec a
    sub h
    cpl
    ld l, b
    ld [hl+], a
    or $7c
    add h
    dec e
    or b
    ld bc, $4e1d
    dec e
    cp b
    dec h
    call nc, $c1e0
    xor c
    ld [$af91], sp
    ld l, d
    dec de
    ei
    xor $37
    dec de
    ld sp, hl
    ld [hl], a
    ld l, a
    rrca
    ld a, b
    ld d, $f3
    or d
    ld [hl], b
    sub h
    ld [hl], d
    xor a
    and l
    ld d, h

jr_006_4ce3:
    sbc l
    ld h, [hl]
    ld hl, $6b60
    nop
    dec e
    dec bc
    add h
    rrca
    ld a, [hl]
    inc h
    ld a, $09
    rrca
    add h
    ld [hl-], a
    cp d
    or $ab
    ld [c], a
    ld d, b
    dec e
    ld h, l
    ld hl, $5c3c
    ld a, b
    xor [hl]
    sub d
    ld a, b
    and $10
    sbc [hl]
    dec sp
    ld de, $43be
    adc h
    sbc h
    cp e
    ld h, d
    ret z

    dec de
    sub c
    adc c
    rlca
    dec hl
    adc e
    and $b4
    inc a
    ld b, h
    ld d, $e8
    ei
    and h
    ld e, b
    ret nc

    ld e, l
    ld l, $47
    ld [hl], b
    ld h, h
    sbc b
    sbc [hl]
    ldh a, [rSCY]
    inc l
    ld [hl], d
    xor $78
    inc l
    rla
    add e
    cp e
    cp h
    or b
    ld [$bf21], a
    ld l, a
    sbc h
    ld h, $34
    ld d, b
    dec a
    ld [hl], e
    inc sp
    ld [c], a
    jr @+$49

    xor b
    ld d, b
    dec a

jr_006_4d42:
    db $e3
    ld b, b
    ldh [$ae], a
    sub b
    ld h, l
    inc de
    add sp, $22
    ld c, [hl]
    and $83
    jr nz, jr_006_4d42

    add d
    add h
    inc bc
    cp b
    db $ed
    xor [hl]
    db $dd
    xor $2d
    sub $2c
    ld [hl], b
    and l
    and b
    ld b, l
    jp hl


    rla
    xor c
    ld b, h
    ld a, d
    ld l, b
    ld [hl], e
    call $87e9

Call_006_4d69:
    xor b
    inc c
    rlca
    cp [hl]
    or a
    and b
    ld l, h
    ld b, $22
    ld b, e
    db $ec
    dec hl
    dec a
    ld d, $5c
    ld [$a8ed], sp
    or b
    cpl
    inc bc
    ld [hl], b
    rrca
    push bc
    add h
    add a
    and c
    ld h, c
    ld hl, $a183
    dec e
    sub d
    ld [de], a
    sbc l
    jr jr_006_4d92

    ld bc, $50ed
    ld b, e

jr_006_4d92:
    sbc e
    db $ec
    ld l, $f8
    and e
    sub $88
    sbc e
    or $10
    ld a, [$7d87]
    xor e
    sub $42
    ld b, [hl]
    push de
    ld a, l
    ld [c], a
    db $f4
    ld b, h
    ld [hl], e
    call nz, $c231
    inc de
    db $10
    ld b, b
    ld [bc], a
    dec e
    ld bc, $0101
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0a
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    db $10
    ld de, $120a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_006_4de4

    ld a, [bc]
    add hl, de
    ld a, [de]
    dec de
    ld a, [bc]
    inc e
    dec e
    ld e, $0a
    rra

jr_006_4de4:
    ld a, [bc]
    jr nz, @+$0c

    ld a, [bc]
    ld hl, $2322
    ld a, [bc]
    inc h
    dec h
    ld h, $27
    jr z, jr_006_4e1b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_006_4e2b

    ld [hl-], a
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_4e3c

    ld a, [hl-]
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
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    ld c, [hl]
    ld c, a
    ld d, b

jr_006_4e1b:
    ld d, c
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld e, c
    nop
    ld e, d
    nop
    ld e, e

jr_006_4e2b:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld a, [bc]
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    ld l, b
    ld l, c

jr_006_4e3c:
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
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    nop
    sbc a
    and b
    and c
    and d
    and e
    and e
    and e
    and h
    and l
    and [hl]
    and a
    xor b

jr_006_4e80:
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
    or e

jr_006_4e8b:
    or h
    or l
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
    jp nz, $c4c3

    push bc
    add $c7
    ret z

jr_006_4ea0:
    ret


    jp z, $cb00

    call z, $cecd
    rst $08
    ret nc

    ld a, [bc]
    ld a, [bc]
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_00db

    call c, $dedd
    rst $18
    ldh [$0a], a
    ld a, [bc]
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    add hl, sp
    jr jr_006_4e80

    ld l, d
    sbc [hl]
    sbc l
    ld [bc], a
    inc de
    adc d
    ld a, b
    ld c, l
    ld b, c
    jr nz, jr_006_4ee9

    ld bc, $13b4
    cp e
    inc hl
    call nc, $f647
    ld b, e
    or h
    ld a, [bc]
    ret nz

    sbc h
    sbc d

jr_006_4ee9:
    db $10

jr_006_4eea:
    daa
    ld l, b
    inc l
    dec bc
    jp hl


    adc e
    ld l, $fc
    ld hl, $2ad2
    ld b, d
    dec de
    ret nc

    ld e, c
    ld e, [hl]
    jr nz, jr_006_4ea0

    ld hl, $04d5
    sub b
    adc $00
    jr nc, jr_006_4e8b

    sub e
    ld d, $17
    db $dd
    or b
    ld a, e
    ld b, c
    inc h
    ei
    or b
    cp a
    ld d, b
    ld c, b
    rla
    ld l, h
    push bc
    add c
    ld a, b
    ld c, h
    ld e, b
    nop
    dec c
    db $fd
    inc b
    nop
    nop
    nop
    xor d
    rst $38
    ld d, l
    rst $38
    adc b
    ld [hl+], a
    nop
    rst $38
    ld de, $0040
    rst $38
    ld b, h
    cp e
    xor $aa
    ld [hl+], a
    db $dd
    ld d, l
    xor d
    xor b
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld [hl], a
    adc b
    xor d
    ld d, l
    rst $18
    jr nz, jr_006_4eea

    rst $38
    nop
    cp a
    ld e, a

jr_006_4f44:
    and b
    ld [$5715], a
    xor d
    ld a, [$ff05]
    ld d, h
    push af
    ld a, [bc]
    xor d
    db $eb
    ei
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    push de
    ld a, [hl+]
    cp a
    ld b, b
    ld a, a

Jump_006_4f5c:
    add b
    xor [hl]
    nop
    db $fd
    nop
    xor d
    nop
    ld [hl], a
    ld d, l
    nop
    ld d, h
    ld bc, $01ab
    ld [hl], a
    ld [bc], a
    xor a
    jr jr_006_4fcc

    ld [hl+], a
    rra
    db $e3
    ld h, h
    sbc e
    cp a
    dec b
    rst $38
    adc b
    adc e
    ld [hl], h
    ld a, a
    ret nz

    ld a, a
    add b
    ld a, [hl]
    add e
    cp a
    ld b, b
    rst $38
    add b
    db $fd
    ld b, $5f
    xor d
    ret nz

    ccf
    cp $01
    rla
    add sp, -$04
    inc bc
    db $fd
    nop
    xor a
    ld d, l
    ld [bc], a
    rrca
    rst $38
    db $f4
    dec bc
    rst $38
    nop
    ld [hl], a
    xor b
    pop bc
    ld a, $fe
    add b
    ld a, a
    add b
    xor b
    ld a, [$fd07]
    ld [bc], a
    xor d
    inc b
    ld d, l
    ld [$80ee], sp
    xor a
    xor e
    inc b
    ld [hl], l
    ld a, [bc]
    xor [hl]
    ld de, $007f
    rst $18
    jr nz, @+$03

    cp $07
    ld hl, sp+$7f
    add b
    ld c, a
    or b
    rst $10
    jr z, jr_006_4f44

    nop
    nop
    dec d
    ld b, h
    ld bc, $0215
    inc bc

jr_006_4fcc:
    inc c
    ld c, a
    db $10
    xor c
    ld b, $53
    dec c
    adc a
    ld sp, $413e
    ld a, e
    sbc [hl]
    ld sp, hl
    ccf
    swap [hl]
    rst $38
    inc c
    and b
    adc a
    ld a, [hl]
    ccf
    rst $38
    ld e, a
    rst $38
    cp a
    ld a, a
    cp h
    ld a, a
    rst $28
    inc sp
    add c
    ld a, a
    ld hl, sp-$01
    rst $20
    rst $38
    call z, $e07f
    rst $18
    and b
    ld a, a
    add b
    rrca
    ldh a, [$f0]
    rrca
    ldh [$5f], a
    cp a
    or [hl]
    ld l, a
    rst $18
    daa
    ld a, [$f500]
    nop
    ld a, [hl+]
    pop bc
    pop bc
    ccf
    cp $01
    push af
    add b
    ld a, a
    cp $ff
    ld b, c
    xor e
    ldh a, [$80]
    push af
    ldh [rP1], a
    ld hl, sp+$50
    rlca
    xor d
    nop
    push de
    ret nz

    ret nz

    ccf
    ld e, a
    nop
    add c
    ld [bc], a
    ld bc, $e116
    ldh [rNR34], a
    ld a, b
    inc b
    xor d
    db $10
    dec d
    ldh [$80], a
    ld b, b
    ld d, l
    add b
    nop
    add b
    add d
    ld bc, $0255
    dec b
    ld [bc], a
    dec de
    inc b
    ld de, $740f
    dec bc
    cp a
    ld b, b
    rlca
    ld hl, sp-$40
    rra
    ld d, l
    nop
    ld a, [$e758]
    jr jr_006_508d

    ret nz

    inc b
    ld hl, sp+$1d
    db $e3
    ldh [$1f], a
    xor e
    nop
    scf
    nop
    ld a, [bc]
    nop
    ld d, h
    rst $00
    ld hl, sp+$7f
    rst $38
    cp a
    ldh a, [rIE]
    rst $38
    ld [bc], a
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rrca
    rst $38
    ldh a, [rIF]
    rra
    ldh [$e0], a
    rra
    ccf
    ret nz

    ld bc, $0303
    inc b
    rlca
    jr jr_006_509d

    jr nz, jr_006_509f

    ld h, b
    ld bc, $03fd
    rst $30
    rrca
    rst $28
    rra
    rst $38
    ccf
    ld a, a
    rst $38
    rst $18

jr_006_508d:
    jr nc, @-$3f

    ld h, b
    or $ff
    set 7, a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    db $dd
    ld l, $b5
    ld a, d

jr_006_509d:
    ld e, e
    db $fc

jr_006_509f:
    ld a, [c]
    rst $38
    db $e4
    rst $38
    db $fc
    rst $38
    rst $38
    rst $00
    jr c, jr_006_5128

    add b
    add a
    ld a, c
    cp [hl]
    pop hl
    ccf
    rst $38

jr_006_50b0:
    ld d, d
    xor $ff
    rrc a
    ld h, a
    adc a
    xor a
    ld d, a
    rst $28
    rla
    rst $18
    daa
    cp e
    rst $00
    ld de, $0cee
    di
    ld a, a
    ret nz

    rst $38
    add b
    rst $18
    jr nz, jr_006_50f1

    ld sp, hl
    ld e, [hl]
    and d
    cp l
    call nz, Call_000_08fa
    ld [hl], l
    sub b
    jp nz, $c100

    ld b, b
    add b
    add b
    ld [bc], a
    ld bc, $0204
    ld a, [bc]
    inc b
    cp b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ret nz

    ld bc, $1862
    ld d, l
    jr nz, @-$4f

    ld b, a
    ld e, [hl]
    rlca
    dec bc
    sbc [hl]

jr_006_50f1:
    ld [hl], $76
    inc bc
    ld b, $32
    jr nc, jr_006_50b0

    rlca
    ld [$40c0], sp
    ld a, $aa
    ld bc, $0055
    ld a, [hl+]
    ld [bc], a
    ret nz

    add b
    ccf
    ld d, l
    nop
    ld d, a
    dec b
    nop
    ld [bc], a
    nop
    dec b
    ld hl, sp-$58
    rlca
    dec b
    nop
    xor a
    xor e
    ld a, [hl-]
    ret nz

    ld b, b
    ccf
    ld bc, $100f
    ld bc, $0706
    ld [$300f], sp
    ccf
    ld b, b
    ld bc, $06ff
    rst $38

jr_006_5128:
    ld bc, $07fb
    rst $38
    rrca
    rst $18
    ccf
    db $fd
    ld a, [hl]
    rst $38
    cp $f0
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    add e
    rra
    rst $38
    ld a, a
    cp $ee
    rst $38
    sbc h
    rst $38
    ld a, b
    rst $38
    pop hl
    cp $c3
    db $fc
    add a
    ld sp, hl
    rrca
    rst $30
    rrca
    rst $38
    ld e, $e1
    ld de, $3fee
    pop bc
    rst $38
    rlca
    rst $38
    inc a
    rst $38
    ld hl, sp-$02
    ldh a, [$fd]
    ldh [$3a], a
    ldh [$f4], a

jr_006_5161:
    ld b, b
    add sp, -$80
    ret nc

    nop
    xor b
    nop
    ld d, c
    nop
    and e
    nop
    ld b, [hl]
    nop
    db $10
    ld [$0018], sp
    jr nc, @+$06

    ld bc, $1008
    ld [$1020], sp
    nop
    jr nz, @+$42

    jr nz, @-$7e

    ld b, b
    nop
    add b
    ld hl, sp-$08
    ld a, b
    ld hl, sp-$10
    ld h, b
    dec c
    db $10
    ld a, [bc]
    ld h, b
    ld [hl], l
    ld a, [hl]
    inc bc
    cp l
    ld c, $7f
    db $10
    rst $38
    ld h, b
    rst $28
    jr @+$01

    jr nc, jr_006_5161

    ld a, b
    add [hl]
    ld sp, hl
    nop
    rst $38
    sbc c
    ld a, [hl]
    sbc $39
    or [hl]
    ld a, c
    rst $38
    nop
    db $fc
    inc bc
    ei
    rlca
    rst $30
    rrca
    inc e
    rst $38
    sbc $3f
    cp $1f
    ld a, b
    adc a
    db $fc
    ldh a, [rIE]
    ld [c], a
    rst $08
    ld sp, hl
    ccf
    cp $fa
    ret nz

    db $f4
    add b
    ld [$d400], a
    ld d, b
    ld bc, $02a1
    ld b, [hl]
    nop
    ld [$0000], sp
    ld [$0804], sp
    inc b
    db $10
    db $10
    dec b
    inc bc
    rlca
    rrca
    rla
    rra
    inc bc
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    daa
    rra
    ccf
    add b
    ret nz

    ld hl, sp-$20
    ldh a, [$f8]
    ret z

    cp $fd
    cp $f6
    rst $38
    ei
    add b
    ret nz

jr_006_51f1:
    ldh [$c0], a
    dec d
    nop
    cpl
    ld bc, $065f
    ccf
    ld [$307f], sp
    add b
    rst $38
    add b
    db $fc
    inc bc
    ld sp, hl
    rlca
    pop af
    rrca
    pop hl
    rra
    ld a, c
    ld [hl], c
    cp $f7
    and $f9
    rst $38
    ldh a, [$f3]
    db $ec
    rst $08
    ldh a, [$78]

jr_006_5215:
    add a
    ld a, [hl]
    add c
    sbc a
    ld [c], a
    dec e
    rrca
    rlca
    rst $38
    adc [hl]
    ld [hl], c
    pop af
    ld c, $bb
    ld b, l
    cp [hl]
    ld b, a
    ld c, c
    cp [hl]
    ld h, b
    ld e, $ff
    di
    db $fc
    sbc a
    ldh [$df], a
    ldh [$e7], a
    rlca
    rst $38
    di
    ld c, $f6
    inc c
    db $ed
    jr jr_006_5215

    jr nc, jr_006_51f1

    ld h, b
    ld a, [$f5c0]
    and b
    add c
    inc c
    nop
    ld bc, $0402
    ld [bc], a
    nop
    inc b
    inc e
    ccf
    cpl
    ccf
    dec e
    ccf
    dec hl
    ccf
    inc e
    ccf
    rrca
    ccf
    inc de
    rrca
    inc bc
    ld bc, $f4ff
    ei
    or $8f
    rst $10
    db $fc
    ld a, h
    rst $38
    ld a, [$fdff]
    rst $38
    di
    rst $38
    xor e
    rst $10
    add hl, sp
    and $10
    rst $28
    add b
    rst $38
    jp $803f


    rst $38
    ld [$fffe], a
    ld c, a
    cp a
    cp $df
    rrca
    rst $38
    ld [hl], c
    rst $28
    ldh a, [$e0]
    ld hl, sp-$10
    and h
    ld hl, sp-$10
    db $fc
    ldh a, [$fc]
    cp h
    db $fc
    cp b
    db $fc
    ld [hl], b
    db $fc
    ld a, a
    ld hl, sp+$7f
    rlca
    rlca
    ld b, b
    nop
    add e
    ld a, a
    add e
    rst $38
    ei
    ld a, a
    ld a, a

jr_006_529f:
    rlca
    rrca
    pop bc
    cp $fb
    call nz, $c2fd
    add a
    ld hl, sp-$02
    ld sp, hl
    rst $30
    rrca
    rrca
    rst $38
    inc bc
    sub a
    ld a, [hl]
    rrca
    db $fc
    sbc [hl]
    ld [hl], c
    rra
    ldh [$9f], a
    ldh [$7b], a
    db $fc
    rst $30
    rrca
    add a
    rst $38
    rst $18
    rst $28
    ld a, a
    rst $30
    rrca
    cp a
    ret nz

    rst $28
    ldh a, [$ef]
    pop af
    xor $f2
    db $ec
    or $f8
    db $ec
    ld hl, sp-$28
    rst $28
    xor a
    ld e, h
    rst $18
    ld c, b
    call nz, $9c2c
    inc a
    inc a
    ld a, h
    ld a, h
    ld a, b
    jr c, jr_006_52e3

    add c

jr_006_52e3:
    add d
    inc b
    nop
    inc b
    ld [$1008], sp
    db $10
    jr nz, @+$22

    ld b, b
    ld [$03fd], sp
    ld bc, $0707
    rlca
    rlca
    rra
    ld a, a
    ccf
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    nop
    rst $38
    rst $38
    pop af
    rst $38
    or $f9
    db $f4
    ld hl, sp-$04
    ldh a, [$f0]
    ld hl, sp-$04
    ld hl, sp-$10
    ld a, h
    ld a, [hl]
    rst $38
    or e
    nop
    ldh [$f8], a
    ret z

    ldh a, [$e0]
    ld a, [hl+]
    ret nz

    push bc
    jr jr_006_5325

    jr z, jr_006_529f

    dec b
    ld [hl], b
    db $10
    rrca
    jr nc, jr_006_5333

jr_006_5325:
    nop
    ld bc, $fd7a
    reti


    ld bc, $b7b5
    jr z, @+$25

    rst $00
    jp $868e


jr_006_5333:
    ld [$009c], sp
    xor b
    ldh [$e0], a
    nop
    nop
    add d
    add h
    add b
    add b
    ld [$0820], sp

Jump_006_5342:
    nop
    inc e
    jr nz, jr_006_534e

    inc b
    add b
    ld [bc], a
    nop
    rrca
    rra
    ccf
    ld a, a

jr_006_534e:
    ld a, b
    ld hl, sp-$40
    ldh [$f8], a
    ld hl, sp+$38
    inc a
    ld hl, sp-$02
    rst $38
    adc a
    rst $18
    add c
    add e
    ld hl, sp-$08
    ld hl, sp+$01
    inc bc
    db $fd
    db $fd
    db $fd
    db $fd
    ld bc, $8381
    add e
    add b
    add b
    rrca
    db $e3
    rst $20
    db $e3
    rst $20
    di
    db $fc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld hl, sp-$08
    db $fc
    ld a, a
    rra
    ccf
    jr jr_006_5397

    ret nz

    ldh a, [rIF]
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ld a, a
    add a
    adc a
    rlca
    add a
    rlca
    add a
    add c
    jp $e3e1


    pop hl
    db $e3
    pop af
    di

jr_006_5397:
    pop af
    di
    ei
    pop af
    ei
    db $fc
    db $fc
    db $fc
    rlca
    rrca
    rlca
    rrca
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    rrca
    rrca
    rrca
    rra
    dec de
    dec de
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    db $fc
    pop af
    pop af
    db $fc
    cp $fe
    ld bc, $0701
    rrca
    ret nz

    pop hl
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ld hl, sp+$1f
    ccf
    ld c, $1e
    inc a
    ld a, h
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    add a
    add a
    adc a
    adc a
    pop hl
    di
    pop hl
    db $e3
    pop bc
    db $e3
    add c
    add e
    pop af
    pop af
    inc sp
    inc sp
    ld sp, $6133
    ld h, c
    ld h, b
    ld h, b
    ld h, b
    ldh [$80], a
    ccf
    ld a, a
    sbc a
    adc a
    sbc a
    adc a
    rst $18
    di
    rst $30
    rst $38
    di
    rst $30
    pop af
    di
    db $fc
    cp $fc
    ldh [$e0], a
    jp Jump_000_3fe3


    ccf
    nop
    rst $38
    rst $38
    nop
    ld sp, hl
    ei
    ld sp, hl
    ei
    di
    rst $08
    rst $18
    rst $08
    ldh a, [$fe]
    cp $30
    ld a, h
    add hl, sp
    add b
    ldh [$87], a
    adc l
    sub $f2
    ld b, [hl]
    db $fd
    rst $00
    rlca
    dec b
    cp c
    ld a, c
    db $10
    ld c, $7b
    sub h
    ld l, c
    sbc $8b
    xor l
    add sp, -$7d
    dec a
    pop af
    ld h, b
    ld sp, hl
    ld c, $9e
    or c
    jp Jump_006_6b24


Jump_006_5439:
    ret z

    ld b, c
    call Call_000_1b23
    ld [$6376], a
    rlca
    add b
    inc h
    ld e, $a2
    ld l, a
    add c
    rst $20
    ld bc, $f01e
    dec de
    ld hl, sp+$23
    ld a, $2e
    pop af
    ld b, $5e
    ld b, a
    ld [hl], d
    ld [hl], d
    db $e4
    ld [$3047], sp
    jr nz, jr_006_54aa

    ld d, h
    ld b, b
    inc e
    ld e, b
    inc hl
    adc d
    inc h
    ld b, $aa
    ld e, b
    ld e, [hl]
    inc c
    db $10
    ld l, b
    add c
    add h
    and $21
    ld [hl], d
    add h
    cp l
    inc e
    daa
    ld [de], a
    ld [bc], a
    ld a, $90
    ld h, h
    ldh [$3b], a
    pop de
    cp l
    sub b
    adc a
    ret c

    ld b, [hl]
    ldh a, [rSB]
    ld a, [de]
    jr nc, jr_006_5497

    ret nz

    ret


    or a
    add l
    call nz, $c433
    rst $30
    rrca
    add c
    ld a, [bc]
    pop hl
    inc l
    xor [hl]
    cp b
    ld [hl-], a
    cp h

jr_006_5497:
    ret


    jr nz, jr_006_550b

    xor h
    inc bc
    jp nc, Jump_000_2730

    dec d
    ld bc, $7028
    pop hl
    dec bc
    jp Jump_000_1c6c


    ret nz

    ld e, l

jr_006_54aa:
    add e
    sbc d
    jp $ff0e


    inc e
    add sp, -$08

Call_006_54b2:
    inc e
    add [hl]
    rst $20
    ld bc, $0218
    adc l
    rst $20
    ld c, h
    cp [hl]
    jr nc, jr_006_5504

    call Call_000_1c42
    pop de
    dec hl
    db $ec
    ld a, [c]
    ld a, $f3
    ld [$7a1e], sp
    ld c, b
    pop af
    sbc a
    sbc c
    and c
    rst $20
    rst $30
    db $dd
    db $10
    ld h, $dd
    rlca
    db $e4
    inc h
    ld c, $fe
    ld b, a
    add c
    ld c, $a6
    ld l, l
    sbc a
    ld c, $a4
    ld c, $0e
    pop bc
    xor [hl]
    cp e
    dec c
    ld [hl], a
    inc bc
    pop hl
    ld [hl-], a
    ret nc

    ld e, h
    ld hl, $63b8
    ld b, $f3
    ld b, b
    or h
    ld [hl], a
    add hl, bc
    sbc c
    and $53
    ld l, d
    db $76
    db $76
    dec h
    db $db
    ld l, [hl]
    sub $f9
    rla
    dec sp

jr_006_5504:
    ld a, e
    ld a, c
    ld a, [hl+]
    ld a, [c]
    ld l, c
    cp c
    ld a, [hl-]

jr_006_550b:
    sbc h
    and e

jr_006_550d:
    sub c
    dec e
    pop hl
    add b
    db $ec
    push hl
    ld h, c
    dec e
    sub a
    xor c
    pop de
    push de
    call Call_000_0dbf
    adc [hl]
    dec c
    inc e
    ld a, [de]
    ld c, $2b
    inc h
    dec a
    cpl
    jp c, $c681

    and d
    db $10
    add hl, sp
    jr c, @-$62

    sub h
    ld d, e
    or d
    add hl, bc
    ld l, c
    sbc d
    db $76
    db $d3
    db $76
    db $76
    db $e4
    ld c, l
    ret c

    ld [hl], d
    db $ec
    ld sp, hl
    call z, Call_006_5ec2
    ld l, e
    ret nz

    ld [hl], h
    ld e, $e8
    ld l, a
    ld a, [hl-]
    ld b, a
    ld [hl], a
    ld bc, $740f
    dec bc
    sbc l
    jr nz, jr_006_550d

    db $dd
    ld h, h
    ldh a, [$29]
    ld b, $d7
    cp e
    ld h, a
    rrca
    ld h, h
    push bc
    sub c
    db $ed
    or a
    ld c, c
    inc b
    sub h
    jp nc, $f984

    ld [hl], e
    dec l
    ldh a, [rNR30]
    add [hl]
    add e
    or h
    ld d, d
    dec a
    ld d, c
    ret c

    ld h, c
    dec e
    ld d, h
    sub h
    pop af
    ld e, e
    daa
    ld d, h
    adc c
    push af
    inc c
    xor a
    ld [hl], b
    db $db
    cp d
    or a
    ld c, h
    db $e3
    sbc h
    ld b, a
    ld [hl], l
    inc bc
    cp a
    ld l, b
    ld c, c
    db $dd
    ld sp, $f57d
    nop
    ld hl, sp-$12
    ld b, l
    db $ec
    db $10
    jp z, $e0be

    ld e, b
    ld e, a
    xor e
    adc h
    adc a
    add c
    ldh [$5d], a
    xor [hl]
    db $fc
    call nz, Call_000_0f80
    ld l, c
    ret z

    xor $cd
    rst $18
    push af
    sbc $d3
    sbc $27
    or [hl]
    jr jr_006_55b4

    ret c

    db $76
    pop de
    dec a
    ld h, c

jr_006_55b4:
    db $db
    ld l, b
    jr @+$79

    ld d, h
    inc bc
    ld [hl], l
    or [hl]
    ld c, l
    ld c, [hl]
    sub a
    add d
    and l
    add e
    ld h, b
    di
    add h
    ld bc, $8327
    and [hl]
    rst $08
    ld h, b
    pop hl

jr_006_55cc:
    sub [hl]

jr_006_55cd:
    ld de, $b6e1
    db $db
    ld d, l
    dec [hl]
    ldh [$db], a
    cp d
    rst $10
    inc a
    ld h, e
    add e
    call nz, $8367
    and l
    ld l, [hl]
    daa
    halt
    inc bc
    adc c
    inc sp
    ld e, a
    ld [hl], b
    jr jr_006_55cc

jr_006_55e9:
    and e
    adc l
    or c
    inc h
    db $e3
    ret nz

    add hl, bc
    jr c, jr_006_55cd

    rla
    ld h, b
    cp [hl]
    ld b, h
    ld b, c
    add a
    sub c
    inc b
    inc hl
    sub e
    ld bc, $8f27
    ldh a, [$79]
    ld a, [hl-]
    inc hl
    adc [hl]
    or c
    jr nz, jr_006_55e9

    db $fc
    add hl, sp
    ld h, [hl]
    dec c
    push hl
    adc [hl]
    ld d, h
    inc b
    push hl
    pop af
    jr jr_006_564c

    ccf
    ld [de], a
    ld [hl], $4b
    db $e3
    cp c
    dec bc
    add l
    ld bc, $e660
    ld bc, $970b
    pop af
    db $76
    inc sp
    cp c
    ldh [rNR12], a
    inc c
    db $f4
    rst $00
    adc e
    dec [hl]
    sbc l
    add hl, hl
    ld b, $cd
    ld [hl], d
    ld c, $42
    inc hl
    and c
    inc bc
    and c
    ld [hl], $5e
    ld a, a
    ld c, $8d
    ret


    ld a, d
    ld b, d
    ld a, [hl-]
    ld b, h
    ld [$954e], sp
    and a
    sub h
    jp $03a6


    and [hl]
    inc b
    push hl

jr_006_564c:
    ld [hl], b
    jp hl


    ret nz

    jp hl


    pop bc
    daa
    xor b
    ld c, $a0
    inc bc
    xor b
    add d
    ld c, $a4
    ld c, $a4
    ld [de], a
    ld a, d
    and b
    ld [$3a80], a
    xor b
    inc hl
    ld a, [hl]
    ld [hl-], a
    ld a, d
    jr nc, jr_006_5689

    ld a, d
    xor e
    ld a, d
    ld l, h
    ld l, $6f
    ld c, $b4
    ld c, $b4
    inc de
    sbc h
    jp Jump_000_03ae


    xor [hl]
    inc b
    adc [hl]
    xor b
    sub b
    cp d
    add hl, hl
    add sp, $4c
    inc [hl]
    xor h
    inc hl
    and e
    ld [hl], l
    db $ec
    ld c, b
    ld a, c

jr_006_5689:
    adc b
    inc b
    adc [hl]
    call z, Call_000_36fb
    add sp, $18
    add c
    db $ed
    ld a, [de]
    ld c, $c9
    ld [$73eb], sp
    xor e
    adc b
    dec sp
    ld a, [de]
    add hl, bc
    ld a, e
    ld d, a
    jp hl


    db $10
    ld c, b
    ld a, [hl-]
    ld e, h
    ld a, [hl-]
    ld e, b
    jr nz, jr_006_56e3

    ld a, [c]
    ld b, d
    ld b, e
    ld h, d
    add $ea
    scf
    or b
    dec l
    add hl, hl
    ld [de], a
    ld a, [hl-]
    call nc, Call_000_1e06
    and $db
    cp e
    and d
    rlca
    ld a, a
    adc b
    and $b6
    dec sp
    dec bc
    sbc [hl]
    add hl, bc
    ld b, l
    push hl
    dec sp
    sbc d
    pop af
    ld [hl], a
    ld d, e
    ld [c], a
    call z, $e758
    cp c
    ld c, $57
    ld e, $60
    ld d, b
    ld hl, $10f1
    ld c, [hl]
    and e
    rrca
    ld bc, $ea05
    ld [hl], a
    add $41
    dec sp

jr_006_56e3:
    db $d3
    cp b
    cp b
    rla
    ld l, l
    and h
    ld a, e
    ld l, b
    inc a
    sub h
    ld [de], a
    ld a, c
    cpl
    rla
    sbc h
    push bc
    ld l, $bc
    ld a, h
    call nz, $0e12
    ld a, h
    nop
    ld a, h
    rst $20
    ld e, b
    ld b, b
    ld [bc], a
    ld a, [$0100]
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec b
    dec c
    ld c, $0f
    db $10
    ld de, $1212
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_006_5747

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_006_5757

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_006_576a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_006_5747:
    jr nc, jr_006_577a

    ld [hl-], a
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_578c

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_006_5757:
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
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_006_576a:
    ld d, c
    nop
    inc sp
    ld d, d
    nop
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_006_577a:
    ld e, l
    nop
    ld e, [hl]
    ld e, a
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

jr_006_578c:
    nop
    ld l, [hl]
    ld l, a
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    nop
    inc sp
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    nop
    nop
    adc c
    adc d
    adc e
    adc h
    adc l
    nop
    nop
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
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    sbc b
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
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
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    xor [hl]
    cp l
    cp [hl]
    or c
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    call nz, $8039
    pop de
    daa
    and a
    ld b, b
    sbc [hl]
    ld c, $00
    db $e4
    ld c, l
    ld b, c
    daa
    add c
    ret nz

    ld c, $22
    ld l, l
    inc b
    sbc a
    rlca
    add b
    inc a
    adc c
    call nc, Call_006_7812
    add hl, bc
    ld c, l
    ret nc

    ld c, b
    ld b, e
    sub h
    ld [de], a
    db $10
    db $ed
    inc b
    add h
    dec a
    ld d, c
    ld h, b
    ld e, l
    ld [$0924], a
    or l
    db $10
    add c
    add hl, sp
    sub d
    db $10
    cp l
    db $76
    ld c, $a4
    add h
    daa
    ld a, e
    ld l, [hl]
    db $e4
    add a
    sbc c
    ld h, h
    ld a, [c]
    nop
    ld a, $dd
    add c
    dec a
    and b
    or b
    cpl
    db $d3
    ld d, $4d
    and $20
    ld [hl], $c9
    jr jr_006_585e

    add l
    dec b
    add b
    sub b
    dec bc
    sbc [hl]
    inc b
    nop
    nop
    nop
    ld d, l
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    cp d
    xor d
    rst $38

jr_006_585e:
    ld de, $0044
    rst $38
    ld [hl+], a
    add b
    nop
    rst $38
    adc b
    ld [hl], a
    db $dd
    ld d, l
    ld b, h
    cp e
    xor d
    ld d, l
    ld d, c
    xor [hl]
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    xor a
    ld d, h
    xor $bb
    rst $38
    dec d
    ld [$4415], a
    cp e
    cp d
    ld b, l
    ld d, c
    xor [hl]
    rst $28
    ld b, h
    rst $38
    ld d, b
    ld d, l
    xor d
    xor $11
    ld d, l
    xor d
    cp e
    rst $38
    nop
    db $dd
    ld [hl+], a
    ld [$45ba], a
    ld e, l
    push de
    ld d, c
    ld [hl], a
    ld a, a
    ld de, $aa77
    cp a
    ld [hl], a
    db $dd
    ld [hl+], a
    cp a
    ld d, l
    ld [hl], a
    xor b
    rst $38
    ld de, $2add
    adc b
    ld [hl], a
    rst $38
    ld a, [hl+]
    ld a, [$5755]
    db $dd
    and d
    adc b
    ld [hl], a
    ld d, c
    ld [hl], l
    xor d
    rst $38
    ld d, h
    db $dd
    ld e, a

Jump_006_58bb:
    ld d, l
    ld [hl], a
    xor d
    rst $38
    dec d
    db $dd
    and d
    cp $45
    rst $30
    xor d
    sbc [hl]
    cp a
    ld d, h
    ld [hl], a
    adc d
    rst $38
    db $10
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl], a
    ld a, a
    ld d, l
    dec d
    rst $18
    xor d
    cp e
    ld b, a
    rst $30
    adc d
    ld b, b
    db $dd
    and d
    rst $38
    nop
    ld [hl], a
    adc b
    nop
    rst $18
    ld bc, $01ff
    ld a, [hl+]
    rst $38
    ld a, a
    rst $38
    xor $ff
    rst $38
    rst $30
    cp b
    rst $38
    cp $7f
    cp e
    rst $30
    nop
    ld a, a
    db $ec
    rst $38
    db $fc
    ld e, l
    db $fd
    nop
    rst $38
    sbc b
    and d
    db $dd
    ld [hl+], a
    db $dd
    push de
    xor d
    db $fd
    ld a, a
    db $fd
    ld [bc], a
    ld [hl], l
    inc bc
    rst $38
    ld [bc], a
    rst $18
    inc bc
    rst $38
    inc bc
    ld a, [c]
    db $dd
    rst $18
    and d
    rst $18
    db $e3
    rst $38
    rst $38
    xor $f6
    rrca
    rst $20
    sbc d
    xor [hl]
    db $dd
    rst $38
    xor d
    and $1f
    rst $38
    adc d
    db $fd
    rst $38
    db $fd
    xor $1b
    rst $38
    ret nz

    rst $30
    adc b
    add b
    rst $30
    db $dd
    cp e
    xor $aa
    xor e
    nop
    ld d, a
    inc bc
    rst $38
    rlca
    ld e, a
    rrca
    xor a
    rra
    ld a, h
    inc bc
    rst $38
    ccf
    rst $38
    rst $30
    ld hl, sp-$07
    rst $38
    rst $38
    rra
    rst $38
    ld hl, sp+$07
    rlca
    rst $38
    ldh a, [$1f]
    cp a
    ldh [$fe], a
    db $fc
    rst $38
    db $fd
    cp $fb
    db $fc
    ei
    db $fd
    ccf
    rst $18
    ld a, a
    cp a
    ld a, a
    cp a
    ld hl, sp-$01
    reti


    rlca
    rst $38
    ld hl, sp-$39
    rst $38
    ret


    cp $bf
    ld hl, sp-$06
    db $fd
    sbc a
    rst $38
    inc d
    ei
    rst $38
    rst $38
    pop bc
    ccf
    rst $38
    ldh a, [$7f]
    rst $38
    cp $7f
    rst $38
    db $fc
    db $fd
    cp $bf
    ei
    rst $38
    add e
    ld a, a
    rst $38
    di
    ei
    ld a, [hl]
    ld a, [c]
    ld a, $f7
    ld a, $f6
    cp $11
    ld b, h
    nop
    nop
    ld [hl+], a
    nop
    inc de
    ld bc, $03af
    ld c, a
    rlca
    cp a
    rlca
    ccf
    rrca
    cp a
    rra
    ld a, a
    ccf
    sub a
    or $f9
    rst $28
    ldh a, [rIE]
    ei
    rst $38
    di
    rst $38
    rst $30
    push hl
    pop hl
    ld [$c0e0], a
    ret nz

    xor d
    add b
    add b
    add b
    ld [hl+], a
    nop
    xor e
    inc bc
    rst $00
    rlca
    rlca
    rst $38
    rst $38
    add e
    xor a
    rrca
    rst $38
    rst $38
    ld b, $1f
    pop af
    and a
    ld sp, hl
    ccf
    rst $38
    rrca
    ccf
    ccf
    db $fd
    ld hl, sp-$02
    ldh a, [$f7]
    cp $f6
    ld a, h
    db $e4
    ld a, h
    ld l, [hl]
    db $fc
    db $ec
    db $fc
    ld a, $fc
    db $fc
    db $fc
    ld a, [$00f8]
    nop
    adc b
    ld bc, $8b00
    nop
    rlca
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld a, a
    rra
    ld a, l
    sbc c
    rst $20
    cp a
    jp $cff7


    rst $38
    rst $38
    call z, $fff3
    pop bc
    cpl
    rst $38
    rst $38
    or a
    rst $08
    rst $38
    rlca
    ld h, [hl]
    sbc a
    cp $ee
    cp $5e
    cp $9c
    db $fc
    cp b
    ld hl, sp+$78
    ld hl, sp+$70
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$7f], a
    ld a, a
    ld hl, sp-$08
    ld hl, sp-$80
    inc bc
    inc c
    inc bc
    rra
    nop
    ccf
    rrca
    rst $38
    ccf
    rst $30
    ld a, b
    rst $38
    ldh [$ec], a
    di
    rst $38
    add c
    ld a, a
    cp $01
    db $db
    rst $20
    ld a, e
    cp $e1
    sbc $e1
    pop af
    ld sp, hl
    rst $30
    rst $38
    rst $20
    sbc $38
    ld hl, sp-$40
    ret nz

    ccf
    rra
    ld a, c
    rst $28
    ld [hl], b
    and $fc
    cp a
    ld a, a
    ei
    inc a
    ld a, a
    ldh a, [$e7]
    ld hl, sp-$08
    rst $38
    rst $18
    ccf
    ldh a, [rIF]
    ld a, a
    rst $38
    dec sp
    rst $38
    or e
    ld a, a
    rst $30
    rst $38
    rst $28
    rst $38
    ld a, b
    ld hl, sp-$10
    ld [hl], b
    ld bc, $0200

jr_006_5a71:
    ld bc, $0106
    rrca
    ld a, l
    ld e, $ff
    jr c, jr_006_5a71

    ld a, b
    rst $30
    ld hl, sp+$7e
    rst $38
    db $db
    rst $38
    rst $38
    ld a, [hl]
    db $dd
    ld a, $3b
    db $fc
    ld a, e
    rst $18
    ccf
    rst $38
    ccf
    cp [hl]
    ld a, a
    sbc $3f
    db $fc
    rra
    add hl, sp
    rst $38
    adc $fe
    sbc [hl]
    cp $bc
    ret nz

    ret nz

    rlca
    rlca
    inc bc
    rra

jr_006_5a9f:
    rrca
    ld a, a
    ccf
    nop
    nop
    ld [hl], b
    jr c, jr_006_5a9f

    db $fc
    db $fc
    cp $8e
    rst $30
    rrca
    cpl
    rst $18
    add b
    ret nz

    ret nz

    ldh [$03], a
    rlca
    rlca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    ccf
    inc a
    ld a, a
    ld a, l
    cp $7d
    cp $01
    nop
    dec c
    inc bc
    dec e
    dec b
    ccf
    rrca
    ld [hl], $17
    ld a, a
    inc a
    ld d, c
    inc d
    di
    ld a, h
    ld d, l
    ld d, l
    sub e
    rst $38
    call nz, $fedd
    rst $38
    ld [hl], a
    rlca
    rst $28
    rra
    ld d, h
    dec b
    sbc a
    ld a, h
    dec d
    ld d, h
    ld a, a
    rst $38
    ret


    db $dd
    sbc e
    rst $38
    ld [hl], d
    ld [hl], a
    ld a, a
    rst $38
    ld d, c
    dec b
    rst $20
    rra
    ld d, l
    dec b
    ei
    rst $38
    pop de
    db $dd
    daa
    rst $38
    ld h, a
    ld [hl], a
    sbc $fe
    inc d
    ld d, h
    inc a

Jump_006_5b02:
    db $fc
    ld d, b
    ld d, b
    rrca
    rrca
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld [$000f], sp
    rlca
    nop
    inc bc
    rst $10
    rst $28
    cp e
    rst $00
    ei
    rst $00
    rst $30
    rst $28
    ei
    db $fc
    rst $38
    ld hl, sp+$7f
    db $fc
    ccf
    rst $30
    ld sp, hl
    ei
    ld a, a
    cp [hl]
    ld a, a
    db $fd
    cp $fe
    rst $38
    ldh a, [$f0]
    ld a, b
    ld hl, sp+$7c
    db $fc
    cp $77
    adc a
    rst $30
    rrca
    xor $1f
    nop
    inc bc
    inc bc
    rlca
    rlca
    rra
    ccf
    ccf
    ld a, a
    ld b, $00
    dec b
    ld bc, $030b
    dec d
    dec b
    ld a, [hl+]
    ld a, [bc]
    ld b, h
    inc b
    xor b
    ld a, [hl+]
    ld de, $ee10
    xor $55
    ld d, l
    ld b, h
    ld b, h
    xor d
    ld a, [bc]
    nop
    ld de, $ecee
    xor d
    ld de, $ce11
    ld l, $54
    ld d, l
    cp c
    cp e
    ld d, c
    ld d, l
    and d
    and d
    xor d
    ld bc, $6011
    ldh [$50], a
    ld d, b
    and b
    and b
    ld b, b
    ld b, b
    ld bc, $071f
    ld a, a
    inc bc
    ccf
    ld bc, $001f
    ld c, $01
    rst $00
    rst $38
    ld l, [hl]
    add [hl]
    di
    adc a
    set 7, e
    cp $ff
    xor b
    xor d
    rst $18
    rst $38
    xor d
    xor b
    rst $38
    rst $38
    ld [$efee], a
    rst $38
    cp d
    cp e
    ld a, a
    db $fc
    and b
    xor d
    rst $38
    ld hl, sp+$2a
    xor b
    ld h, b
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    inc d
    cp [hl]
    call c, $883f
    ld a, [hl+]
    cp $3f
    xor d
    ld bc, $0505
    nop
    inc b
    ld a, l
    db $fd
    ld a, a
    rst $38
    rst $30
    rst $30
    ld d, l
    ld d, l
    ld c, $ee
    db $dd
    db $dd
    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
    xor $ee
    ld [bc], a
    ld [$0022], sp
    nop
    and d
    xor b
    adc b
    nop
    ld a, [hl+]
    ld a, [hl+]
    adc d
    adc b
    jr nz, @-$74

    jr z, @+$22

    jr nz, jr_006_5bdc

jr_006_5bdc:
    nop
    ld h, [hl]
    db $e4
    ld [hl+], a
    xor b
    add hl, de
    ld e, b
    ld a, [hl+]
    jr z, jr_006_5be6

jr_006_5be6:
    ld h, [hl]
    ld b, $aa
    ld a, [bc]
    sbc c
    add hl, de
    xor d
    ld h, [hl]
    xor d
    xor d
    add hl, de
    sbc c
    adc d
    ld a, [hl+]
    ld h, b
    add b
    and b
    add b
    sbc b
    jr nz, jr_006_5c1b

    nop
    inc b
    dec d
    dec d
    inc bc
    dec de
    ld bc, $aa2a
    inc b
    ld b, h
    ld [bc], a
    ld a, [hl+]
    ld bc, $f011
    ld hl, sp-$04
    cp $7f
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    add c
    ld bc, $8383
    jp Jump_006_5fc7


jr_006_5c1b:
    ccf
    ld a, l
    db $fd
    ld hl, sp-$03
    ret nc

    ldh [$fc], a
    rst $38
    ccf
    ccf
    ccf
    rst $28
    rst $00
    rst $28
    rst $28
    rst $28
    rst $28
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    cp $fe
    cp $03
    add a
    ld [bc], a
    rst $38
    rst $28
    rst $00
    rst $00
    rst $00
    ld bc, $8101
    ld bc, $c1c1
    pop hl
    pop hl
    ld sp, hl
    pop af
    pop af
    ld sp, hl
    ccf
    ld a, a
    cpl
    rra
    ld [bc], a
    ld hl, sp-$21
    rst $08
    rst $00
    rst $08
    pop bc
    db $e3
    ldh [$c0], a
    ret nz

    ccf
    rst $00
    rst $28
    rst $08
    rst $00
    add a
    rst $00
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    or a
    scf
    scf
    or a
    or a
    or e
    or e
    or e
    or e
    or e
    or c
    or e
    or e
    ld sp, $3131
    rst $38
    ei
    ei
    ei
    di
    ei
    di
    di
    di
    di
    db $e3
    di
    db $e3
    db $e3
    db $e3
    db $e3
    rst $28
    db $e3
    rst $20
    ldh [$e1], a
    rst $00
    db $e3

jr_006_5c90:
    rst $20
    add a
    jp $83c7


    add e
    jp $c783


    add e
    add a
    jp $c7c3


    db $fd
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    db $fd
    ld sp, hl
    pop af
    ld sp, hl
    ret nz

    ldh [$fc], a
    add b
    ld bc, $0b03
    rlca
    inc bc
    ldh a, [$7f]
    ldh [$c0], a
    ldh [$7f], a
    ld a, [hl]
    ld a, a
    cp $fc
    and b
    add a
    ld hl, sp-$08
    ld sp, hl
    db $fc
    db $fc
    db $fd
    ld a, a
    cp $fe
    ld hl, sp-$04
    jr nc, jr_006_5cfa

    jr nc, jr_006_5cfb

    jr nc, jr_006_5c90

    jp $c3c3


    ld b, e
    ld b, b
    rst $38
    ld a, a
    ccf
    rra
    rrca
    rrca
    rlca
    rrca
    inc bc
    rst $00
    rst $00
    rst $08
    rst $20
    rst $20
    pop af
    pop af
    pop bc
    pop hl
    pop bc
    pop bc
    add c
    rra
    rra
    db $10
    ld h, b
    ld [hl], b
    ld a, [$39fc]
    add b
    ldh [$97], a
    sbc l
    call c, $db8d
    add [hl]
    push hl
    inc hl
    xor [hl]

jr_006_5cfa:
    rst $28

jr_006_5cfb:
    add e
    or d
    add sp, -$49
    call nz, $0127
    ld l, $4c
    ld [hl], e
    add d
    ld [$98dd], a
    rst $28
    inc b
    rrca
    inc [hl]
    dec e
    and c
    or a
    ldh [$37], a
    add e
    adc h
    inc de
    ld c, b
    dec l
    db $f4
    ld e, $a1
    add b
    rst $20
    ld h, e
    add $27
    ld l, l
    sbc a
    dec e
    ld a, d
    ret nz

    or c
    xor a
    ld l, b
    ld h, e
    db $e3
    ld hl, sp-$75
    db $eb
    ld [$0a37], sp
    ld b, d
    ldh a, [$82]
    ld e, h
    dec a
    inc e
    db $10
    adc [hl]
    dec d
    ld h, $e7
    cp c
    ld e, [hl]
    ld [$e790], a
    or d
    ld l, l
    ld l, c
    dec [hl]
    rst $38
    ld b, d
    cp c
    or h
    cp e
    ld bc, $ec6e
    ld c, c
    adc h
    call z, Call_006_6373
    rst $18
    ld a, [bc]
    ld a, b
    dec [hl]
    add e
    ret z

    inc c
    rrca
    sub b
    ld c, b
    push af
    ld b, h
    ld a, e
    inc b
    add e
    ld [$f5fb], sp
    di
    inc b
    ld a, h
    db $eb
    jp hl


    ld bc, $fa26
    inc a
    jr nc, jr_006_5d7d

    and [hl]
    inc d
    ret nz

    cp h
    ld d, c
    ld c, $18
    rst $00
    ld a, [de]
    ret c

    ld h, l
    sub [hl]
    inc a
    ld a, a
    ld [hl], d
    dec e

jr_006_5d7d:
    ret z

    rst $30
    rra
    and e
    add hl, hl
    or l
    db $10
    ld [hl], b
    call nz, $b99b
    adc $6f
    ccf
    inc b
    inc a
    db $fc
    daa
    ld [hl], $5d
    ld l, $db
    ld [hl], c
    add hl, hl
    db $d3
    ld a, h
    db $db
    db $d3
    db $ed
    pop de
    ld [c], a
    jp z, $9dbd

    nop
    ld [hl], d
    ld l, l
    ldh [$37], a
    add d
    sub b
    daa
    ld e, h
    or b
    ld [hl], e
    sub b
    db $76
    ld d, b
    ld [hl], l
    inc sp
    daa
    dec [hl]
    ld [hl-], a
    ld e, $5c
    ld de, $09e1
    ld a, c
    ld b, b
    rst $00
    xor l
    inc b
    ld sp, hl
    ld l, b
    rst $00
    or [hl]
    inc b
    ld sp, hl
    sbc a
    ld a, [hl-]
    scf
    cp a
    ld c, c
    rst $08
    add e
    dec a
    ld a, [hl]
    ld b, a
    dec sp
    rst $18
    ld [hl-], a
    ret nz

    cp b
    ld b, $2c
    inc bc
    push af
    or d
    ld a, $73
    inc bc
    and $f0
    ld h, $f0
    sub b
    sbc l
    rst $18
    ldh a, [$50]
    ld c, e
    nop
    ld a, [bc]
    ld l, a
    ld a, $de
    xor h
    and [hl]
    rst $20
    dec h
    jp c, $9a14

    add a
    ld l, l
    ld hl, sp-$32
    rst $38
    xor $01
    pop bc
    or h
    cp [hl]
    add hl, de
    dec hl
    call nz, $e94d
    adc h
    pop af
    ld b, [hl]
    db $76
    jp $bf69


    ld [hl], d
    db $e4
    and [hl]
    and a
    ld c, c
    ld c, [hl]
    ld b, $1c
    add b
    ld bc, $21e2
    or l
    ld a, [hl]
    ld [hl], d
    and h
    sbc e
    jp c, $e594

    call $d8cb
    ld [hl], l
    rst $10
    ld b, $c7
    ret


    ld e, $3e
    di
    ld b, e
    add c
    ld [hl], c
    call Call_000_39f1
    ld sp, $d073
    inc h
    call c, Call_000_0331
    add $c8
    jr c, @+$50

    inc h
    inc e
    add a
    ld d, d
    nop
    and $fa
    db $10
    ld [bc], a
    ld [hl], e
    ld h, b
    db $ed
    nop
    sub d
    xor [hl]
    add sp, -$4a
    ld c, b
    ld b, b
    dec a
    ld h, a
    add h
    db $ec
    add c
    db $76
    ld e, [hl]
    dec c
    jp $ca06


    add b
    db $e4
    ld b, d
    sub b
    add [hl]
    ld hl, $0df2
    ld bc, $20e8
    ld h, h
    dec a
    inc sp
    ld hl, $25df
    cp h
    ret nz

    add l
    cp c
    ld e, b
    rra
    ld b, $c2
    xor [hl]
    jp c, Jump_000_158e

    ld bc, $10df
    rst $20
    ld e, e
    ld e, $0c
    add c
    ret nz

    sub [hl]
    inc b
    ld hl, $6c3e
    sub c
    pop af
    ld [hl], d
    ld a, [$b68d]
    or d
    dec e
    xor h
    ld a, l
    add [hl]
    ldh [$91], a
    push af
    rst $18
    ld b, [hl]
    ld b, a
    reti


    ld b, a
    db $eb
    add h
    ld a, l
    cp b
    cpl
    xor h
    ld e, a
    ld a, l
    cp [hl]
    rra
    ld a, l
    rst $10
    add [hl]
    inc h
    add a
    call nc, $a8be
    ld b, b
    ld a, [hl]
    sbc a
    pop af
    add a
    db $eb
    and l
    ei
    ld e, e
    ei

jr_006_5ead:
    jp nz, $ca4f

    rst $18
    xor e
    ld h, e
    ei
    rst $00
    call nc, $eedf
    jr nc, jr_006_5ead

    db $eb
    ld bc, $b40b
    sbc e
    ld bc, $b2bf

Call_006_5ec2:
    ld h, l
    ld b, d
    inc a
    inc c
    ldh a, [rNR41]
    db $10
    sbc e
    adc b
    add c
    daa
    ld b, $81
    ld h, $84
    nop
    ld b, [hl]
    ldh [$71], a
    or c
    ld l, a
    ld a, [bc]
    ld bc, $333c
    ld [hl], b
    ret nc

    ld [hl], b
    ret nz

    ld [de], a
    ld l, h
    cp b
    inc b
    inc e
    ld b, e
    ld de, $00c4
    ld c, a
    ld [de], a
    call c, Call_000_1c4c
    ld c, b
    ld b, $af
    cp e
    add b
    ldh a, [$bb]
    jp $ecf8


    add a
    or d
    ld de, $771a
    adc l
    xor h
    ld a, [hl]
    or d
    ld a, e
    inc h
    pop af
    jr nz, jr_006_5f36

    jp $f0b4


    ld a, [hl]
    ret z

    ld [hl], b
    inc h
    add hl, sp
    ld d, b
    daa
    inc de
    rst $28
    ld e, $a1
    ld c, $d8
    ld l, $aa
    sbc d
    rr h
    dec [hl]
    xor l
    ret z

    inc e
    cp d
    cp a
    xor l
    xor e
    push hl
    cp h
    rst $08
    inc bc
    add hl, bc
    jp z, Jump_006_5b02

    dec h
    sbc e
    dec h
    ld l, h
    sub h
    ld a, [c]
    dec sp
    add $df
    rrca
    rlca
    inc l

jr_006_5f36:
    sub d
    ld l, [hl]
    dec b
    ld [hl], c
    ld d, e
    inc e
    cp d
    ld a, [c]
    pop hl
    ld h, l
    ld l, h
    ld b, a
    jr nc, @+$7b

    ld e, e
    sub b
    dec bc
    call nz, Call_000_1c30
    jp c, Jump_000_1207

    ret nz

    ld [hl], e
    adc b
    dec de
    ld a, [hl+]
    add e
    ld bc, $bea2
    ld d, d
    ld b, b
    db $ec
    sbc e
    call z, Call_006_7320
    push hl
    jp z, Jump_000_1cec

    ld e, $4a
    db $f4
    daa
    ret nc

    xor c
    inc a
    rst $20
    adc c
    pop de
    rlca
    rra
    pop af
    sbc l
    db $dd
    xor e
    db $f4
    inc a
    xor c
    pop af
    sbc c
    or d
    dec [hl]
    cp a
    and a
    inc h
    dec h
    xor e
    cpl
    inc a
    ldh [$5a], a
    cp d
    ld bc, $343d
    ld a, [c]
    sbc b
    ld l, d
    cp b
    inc e
    jr nc, jr_006_5f98

    sbc d
    sbc a
    xor l
    jp nc, $b649

    ld [$f032], sp
    ld e, [hl]
    or b
    ld [hl], d

jr_006_5f98:
    db $e3
    ret


    ld a, d
    jp Jump_000_17d6


    ld d, a
    add hl, bc
    call $9d6c
    ld h, h
    adc a
    ld de, $7108
    jr z, @+$09

    ld e, l
    add hl, bc
    and [hl]
    and c
    ret c

    ld bc, $c2d7
    ld b, a
    ld c, b
    add [hl]
    sbc l
    ret nz

    ld c, e
    call nc, $c3aa
    jp Jump_006_65df


    add hl, bc
    cpl
    ld h, h
    db $eb
    db $d3
    sub b
    db $76
    ld l, h
    inc b

Jump_006_5fc7:
    ld l, h
    or h
    and h
    or $41
    db $d3
    ret nz

    ld a, [de]
    sub d
    ld de, $c2db
    ld b, b
    ld b, b
    ld [bc], a
    rst $18
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d

Call_006_5ffe:
    ld d, $17
    inc c
    jr jr_006_601b

    jr jr_006_601d

    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_006_6030

    ld [hl+], a
    inc hl
    jr jr_006_6037

    inc h
    inc h
    inc h
    dec h
    ld h, $27
    jr z, jr_006_6044

jr_006_601b:
    ld a, [hl+]
    dec hl

jr_006_601d:
    inc l
    dec l
    ld l, $2f
    inc h
    inc h
    jr nc, jr_006_6055

    jr nc, jr_006_6057

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_6069

jr_006_6030:
    ld a, [hl-]
    dec sp
    jr nc, jr_006_6064

    inc a
    inc a
    inc a

jr_006_6037:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_006_6044:
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
    ld d, a
    ld e, b
    ld e, c

jr_006_6055:
    ld e, d
    ld e, e

jr_006_6057:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_006_6064:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_006_6069:
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
    ld a, b
    ld a, c
    ld l, h
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
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
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
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
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    add hl, sp
    add b
    pop de
    daa
    and a
    ld b, b
    sbc [hl]
    ld c, $00
    db $e4
    ld c, l
    ld b, c
    daa
    add c
    ret nz

    ld c, $22
    ld l, l
    inc b
    sbc a
    inc b
    rrca
    adc l
    ld [$3c09], a
    inc b
    and [hl]
    add sp, $24
    db $f4
    ld [de], a
    sbc h
    and b
    sub e
    ldh [rWY], a
    db $76
    add d
    ld c, a
    pop bc
    add hl, hl
    ld [$3c09], a
    ld [bc], a
    ld c, $00
    db $10
    ld l, a
    ld b, c
    jr c, @-$23

    rrca
    inc d
    ld d, a
    sbc c
    inc l
    inc a
    add sp, $0b
    sbc d
    and e
    rrca
    ld h, b
    add e
    or h
    ld b, a
    ld d, l
    ld b, d
    ld c, [hl]
    rst $38
    rlca
    ld l, [hl]
    adc [hl]
    ld [$9e2c], a
    ld [hl], h
    add c
    ld a, [c]
    add d
    jp $c2ee


    inc bc
    jp c, Jump_000_020b

    db $fd
    ld b, c
    ld h, b
    ld e, l
    db $f4
    ld d, $04
    ret c

    ld [hl], e
    add [hl]
    ld d, $a0
    dec c
    db $10
    dec b
    nop
    nop
    nop
    xor d
    rst $38
    nop
    rst $38
    ld [hl+], a
    add b
    nop
    rst $38
    adc b
    ld [hl], a
    db $dd
    ld d, l
    ld b, h

jr_006_612d:
    cp e
    xor d
    ld d, l
    ld d, c
    xor [hl]
    xor d
    ld d, l
    ld d, l
    xor d
    xor $11
    ld d, l
    xor d
    cp e
    ld b, h
    ld d, l
    db $dd
    ld [hl], a
    adc b
    nop
    nop
    nop
    ld a, a
    ld [$00ff], sp
    rst $18

jr_006_6148:
    ld e, a
    jr nz, jr_006_6148

    ld [bc], a
    push af
    ld d, a
    ld d, l
    db $ed
    ld a, [hl-]
    rst $38
    ld c, h
    ld c, l
    cp $ef
    jr nc, @+$5f

    cp d
    ld [hl], a
    db $fd
    ld d, l
    ld d, l
    add b
    cp e
    xor $aa
    nop
    ld de, $0044
    ld bc, $0255
    xor a
    inc b
    dec de
    inc e
    cp a
    inc l
    ld l, a
    ld c, [hl]
    add b
    cp $01

Call_006_6173:
    rst $38
    nop
    ld b, $ff
    nop
    rst $30
    ld [$40ff], sp
    ld a, a
    ei
    nop
    push af
    push de
    jr nz, jr_006_612d

    ld b, b
    sub c
    ld b, b
    add b
    cp e
    inc b
    ld e, l
    ld a, [bc]
    ld a, [bc]
    cp d
    dec d
    ld sp, $aa2e
    dec d
    ld b, h
    dec sp
    cp e
    rst $38
    add hl, sp
    ld a, a
    adc d
    adc $7d
    ccf
    cp $be
    ld e, l
    ld c, h
    cp e
    xor e
    ld d, l
    ld de, $abee
    ld d, l
    ld b, [hl]
    cp d
    cp e
    nop

jr_006_61ab:
    push de
    add b
    add b
    xor d
    ld [hl+], a
    ld [$0188], sp
    ld bc, $038a
    ld [bc], a
    inc bc
    rst $20
    ld a, d
    ccf
    inc [hl]
    rst $38
    ld e, b
    xor a
    call z, $fa67
    ld a, a
    cp h
    rst $28
    inc c
    db $db
    ld l, [hl]
    ei
    inc b
    db $10
    rst $30

jr_006_61cc:
    jr c, jr_006_61cc

    ld bc, $01fe
    cp $00
    db $fc
    ld [bc], a
    ld a, [$f804]
    inc b
    ld hl, sp+$00
    ldh a, [$08]
    inc hl
    ld bc, $55ea
    ret nz

    add b
    cp [hl]
    ld c, l
    jr @+$01

    cp d
    ld c, l

jr_006_61e9:
    ld [$54aa], sp
    ld [bc], a
    cp $aa
    ld d, h
    inc b
    db $fc
    ld h, $dc
    inc b
    db $fc
    adc h
    ld [hl], b
    inc c
    ld hl, sp+$02
    ld bc, $008a
    nop
    ld [bc], a
    inc bc
    nop
    cp $03
    inc bc
    xor e
    nop
    db $fc
    add b
    nop
    dec b
    ld b, $0b
    inc c
    dec bc
    inc c
    rla
    jr jr_006_6242

    jr nc, @+$31

    jr nc, @+$61

    ld h, b
    cp a
    ret nz

    rst $20
    ld a, h
    rst $38
    jr @+$01

    jr jr_006_625d

    nop
    ldh [rNR10], a
    ldh [rNR10], a
    ret nz

    jr nz, jr_006_61e9

    jr nz, jr_006_61ab

    ld b, b
    add b
    ld b, b
    add b
    inc b
    rlca
    inc b
    rlca
    inc c
    rrca
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_006_627e

    ld bc, $03ff

jr_006_6242:
    add b
    ld [$18f0], sp
    ldh a, [rNR23]
    db $10
    ldh [$30], a
    ldh [$30], a
    ldh [rNR41], a
    ret nz

    ld [bc], a
    nop
    nop
    ld bc, $0306
    inc bc
    ld [bc], a
    add d
    inc bc
    ld bc, $4101

jr_006_625d:
    ld hl, $1e02
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ld h, b
    ldh [$f0], a
    rra
    adc b
    ld hl, sp-$80
    ret nz

    ld bc, $0f00
    nop
    ld a, h
    rra
    nop

jr_006_6275:
    ld hl, sp+$01
    ld bc, $0502
    ld b, $0d
    ld c, $bf

jr_006_627e:
    ret nz

    inc bc
    cp $01
    rst $30
    jr jr_006_6275

    ld c, a
    ldh a, [$fc]
    ld [bc], a
    db $fc
    ld [bc], a
    inc b
    ldh a, [$08]
    ldh a, [rSB]
    ld bc, $3f20
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rst $38

jr_006_629c:
    inc c
    rst $38
    ld e, $60
    ret nz

    ld h, b
    ret nz

    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    pop bc
    add b
    adc b
    nop
    or b
    inc bc
    nop
    inc a
    nop
    ldh [rTAC], a
    nop
    jr c, jr_006_62b7

jr_006_62b7:
    ldh a, [rP1]
    ld b, $00
    jr @+$81

    nop
    ldh [$80], a
    nop
    ld h, b
    nop
    inc b
    nop
    nop
    rrca
    rlca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    inc bc
    ldh [$e0], a
    ld hl, sp-$04
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    scf
    jr c, @+$31

    jr nc, @+$01

    ldh [$bf], a
    ld [hl], b
    ld a, a
    jr c, jr_006_629c

    ld a, b
    ld e, a
    add sp, -$41
    ret nc

    ld b, $ff
    ld c, $38
    rst $38
    ret nz

    ld h, b
    ret nz

    nop
    add b
    inc bc
    ld b, $04
    rlca
    jr jr_006_6321

    jr c, @+$01

    ld l, h
    rst $18
    sbc $8f
    xor d
    rst $18
    sub $fb
    db $10
    jr nc, @+$01

    ld a, b

Jump_006_6310:
    ld bc, $03fe
    cp $03
    cp $fc
    ld b, $fc
    ld b, $fc
    add b
    jr nz, jr_006_635e

    nop
    ld b, b
    nop

jr_006_6321:
    ld b, e
    ld bc, $2021
    ld de, $0800
    ld [$1e00], sp
    ld e, $3b
    dec sp
    or c
    or b
    ret nc

    ret c

    ret z

    db $ec
    call nz, $6276
    inc sp
    ld h, b
    ld [hl], b
    ld h, e
    jr c, @+$1e

    jr nc, jr_006_639f

    ld h, b
    inc bc
    inc bc
    ld c, $0e
    ret nz

    ret nz

    ld [hl], b
    ld [hl], b
    add e
    rlca
    ld [hl], a
    inc bc
    dec de
    inc bc
    dec b
    ld bc, $7e7e
    ret nz

    nop
    jr nc, jr_006_635c

    rlca
    dec b
    ld b, $0a
    rrca
    dec de

jr_006_635c:
    rra
    rla

jr_006_635e:
    add hl, de
    cpl
    ld a, $6e
    ld [hl], e
    ld e, a
    ld h, e
    rst $38
    ldh [$7f], a
    jr nc, @+$01

    ldh a, [$7f]
    ccf
    inc bc
    ld hl, sp-$04
    ld hl, sp+$0c
    db $10

Call_006_6373:
    rra
    jr nc, jr_006_63b5

    ld a, a
    ld l, h
    ld e, h
    rst $38
    inc b
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp-$08
    ldh a, [rNR23]
    ld [bc], a
    inc sp
    dec de
    add hl, de
    dec c
    rrca
    inc b
    inc c
    add b
    or b

jr_006_638d:
    ld b, b
    ld [hl], b
    ld bc, $0607
    jr jr_006_63ac

    ld h, b
    ld [hl], b
    ret nz

    ret nz

    or b
    jr c, jr_006_63cb

    jr nc, jr_006_638d

    ldh a, [$03]

jr_006_639f:
    add e
    inc bc
    dec a

Jump_006_63a2:
    dec sp
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [$4c38], sp
    adc h
    db $e3

jr_006_63ac:
    rst $30
    ld hl, sp-$05
    cp $fc
    rst $38
    cp $80
    add b

jr_006_63b5:
    ld b, b
    ld b, b
    jr nc, jr_006_63d9

    jr @+$1a

    inc b
    add h
    dec b
    ld b, $09
    ld c, $13
    inc e
    cp a
    pop bc
    ldh a, [$e0]
    cp a
    ldh [rIE], a

jr_006_63ca:
    and b

jr_006_63cb:
    cp a

jr_006_63cc:
    and b
    jr nc, jr_006_63cf

jr_006_63cf:
    add b
    inc c
    rrca
    sub $fb
    ld a, h
    jr z, @+$01

    jr z, @+$01

jr_006_63d9:
    jr c, jr_006_63ca

    jr z, jr_006_63cc

    inc a
    rst $28
    ld hl, $67c0
    ret nz

    ld a, h
    ldh [rSB], a
    inc bc
    inc bc
    inc b
    dec b
    inc a
    inc e
    ld d, h
    ld d, h
    ld sp, hl
    ld sp, hl
    rrca
    rrca
    inc a
    ld a, $74
    ld h, h
    inc de
    inc bc
    ld e, l
    dec e
    rst $38
    ld a, a
    ld d, l
    ld d, l
    rst $38
    rst $38
    ld a, c
    ld a, h
    ld a, h
    ld a, h
    ld [hl], h
    ld [hl], h
    ld hl, sp-$02
    db $dd
    reti


    rst $30
    add $44
    ld b, h
    adc b
    reti


    rst $38
    ld a, a
    ccf
    rst $38
    rla
    ld [hl], a
    rlca
    rrca
    add c
    ld bc, $8c40
    xor h
    ld [hl], a

Call_006_641e:
    ld [hl], a
    rst $38
    rst $38
    db $dd
    db $dd
    rrca
    rra
    add d
    add d
    add c
    pop bc
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$e0]
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    jr nc, jr_006_644d

    jr jr_006_6460

    jr c, @+$4d

    ld [hl], b

jr_006_643c:
    ld e, a
    ld h, b
    jp z, Jump_000_3fe0

    ret nz

    ld a, [hl+]
    add b
    ld [hl], a
    rst $38
    ld sp, hl
    rlca
    and d
    ld a, [bc]
    or $0f
    xor b

jr_006_644d:
    ld [bc], a
    ldh [$9f], a
    ldh [$bb], a
    xor d
    add b
    ld a, a
    cp $03
    cp d
    inc bc
    db $fc
    ld b, $a8
    ld [bc], a
    ld hl, sp+$0c
    xor b

jr_006_6460:
    ld [$1070], sp
    ld [$180e], sp
    rra
    db $10
    dec de
    ld a, [hl+]
    ld h, b
    ld a, a
    jr nz, jr_006_6498

    ld b, b
    ld bc, $2c76
    cp $38
    rst $38
    ld bc, $33ba
    db $fc
    cp [hl]
    and b
    ld hl, sp-$80
    ld b, b
    inc e
    ldh [rSB], a
    ld bc, $0d1d
    ld de, $6010
    ld h, b
    ld b, $06
    inc c
    ld c, $36
    ld [hl], $fc
    db $fc
    sub c
    sub c
    add c
    pop hl
    dec d
    ld b, l
    rra
    rra

jr_006_6498:
    ld b, c
    ld bc, $2b2b
    ld d, l
    ld d, l
    ld l, [hl]
    xor $aa
    ld de, $aa10
    xor d
    ld d, l
    ld d, h
    cp e
    cp d
    ld d, l
    ld d, b
    xor $e0
    ld d, l
    ld b, b
    xor d
    add b
    jr z, jr_006_64f4

    ld b, h
    adc d
    ld [bc], a
    ld d, h
    ld d, c
    stop
    jr z, jr_006_643c

    ld d, c
    ld b, c
    ld a, [hl+]
    nop
    ld b, l
    nop
    xor [hl]
    ld [bc], a
    stop
    and b
    ld b, b
    ld b, b
    add b
    add b
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    ld [$010a], sp
    inc b
    ld [bc], a
    nop
    dec b
    db $10
    ld [$4500], sp
    ld d, b
    xor d
    xor d
    ld [hl+], a
    adc b
    nop
    ld d, l
    ld bc, $08a2
    sbc l
    ld e, h
    xor d
    jr z, jr_006_652e

    db $10
    add b
    ld d, l
    ld b, b
    and b
    ld [$10c0], sp
    and b
    jr nz, jr_006_6534

jr_006_64f4:
    ld b, b
    nop
    jr nz, jr_006_64f8

jr_006_64f8:
    inc b
    dec b
    add b
    xor d
    add b
    db $dd
    xor d
    ld bc, $56df
    ld d, a
    nop
    adc c
    dec b
    ld d, l
    inc d
    inc d
    jr nz, jr_006_652b

    ld bc, $0210
    ld a, [bc]
    ld bc, $8001
    add d
    ld de, $0e11
    ld [hl+], a
    inc b
    ld bc, $82a0
    nop
    ld de, $80a0
    dec b
    dec b
    and b
    add b
    ld a, [hl+]
    ld de, $2a00
    jr z, @+$46

    ld b, b
    xor d

jr_006_652b:
    ld [$0444], sp

jr_006_652e:
    xor d
    dec d
    ld d, l
    rlca
    ccf
    rra

jr_006_6534:
    ld a, a
    ld a, a
    nop
    nop
    ld d, h
    db $10
    ldh [$f3], a
    db $e3
    di
    di
    inc b
    dec b
    ld hl, sp-$10
    db $fc
    db $fc
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    cp $0f
    rrca
    adc a
    adc a
    adc a
    rst $08
    ld b, b
    ld b, b
    jr nz, @+$22

    nop
    nop
    jr z, jr_006_6585

    ld b, b
    ld b, b
    xor d
    and d
    add b
    add b
    ldh [$e0], a
    ldh [$f0], a
    ld b, b
    rlca
    inc bc
    rra
    rrca
    cp $fc
    db $fc
    cp $fc
    rra
    rra
    rra
    sbc a
    sbc a
    sbc a
    ld bc, $ff01
    ldh a, [$f0]
    ldh a, [$f3]
    di
    di
    db $e3
    ld bc, $0103
    inc bc

jr_006_6585:
    pop af
    pop af
    di
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, $7f
    ld a, $7e
    cp $f8
    rra
    ld a, $3e
    ld a, $3f
    ld a, $3e
    rst $38
    rst $38
    cpl
    rra
    rra
    rrca
    rra
    cp $7f
    cp $ff
    ccf
    ld a, a
    adc a
    rst $08
    add b
    ret nz

    adc a
    rst $08
    rrca
    rst $38
    rst $38
    dec bc
    rlca
    add a
    add e
    add e
    add a
    adc a
    add a
    cp a
    sbc a
    cp a
    rst $38
    adc a
    sbc a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    pop hl
    ldh [$e1], a
    pop bc
    add e
    pop bc
    add e
    jp $c3e3


    ld a, a
    ccf
    cp $7f
    ld hl, sp-$02
    db $fc
    ld a, h
    ld hl, sp-$08
    ld hl, sp-$61
    sbc a
    cp $fe
    cp $fc
    db $fc
    ld a, [hl]

Jump_006_65df:
    ld a, a
    ccf
    ccf
    rra
    ld bc, $4103
    add e
    pop af
    di
    pop af
    di
    rst $30
    di
    rst $30
    pop af
    ld hl, sp-$20
    cp $3e
    rra
    rlca
    rlca
    rst $08
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $08
    rst $08
    adc a
    add a
    add a
    add e
    add a
    add c
    add e
    add c
    add e
    add c
    add e
    db $e3
    ei
    di
    ei
    cp $7c
    ld a, h
    ld a, [hl]
    inc bc
    rst $28
    adc a
    cp $1f
    rrca
    inc bc
    cp $7e
    ccf
    rra
    inc e
    ld c, $00
    inc c
    db $fd
    nop
    nop
    pop hl
    jp $8143


    ldh [$e0], a
    ld a, b
    cp a
    add hl, sp
    add b
    ldh [$83], a
    add c
    ld [hl], l
    cp h
    pop bc
    xor l
    ld l, c
    ld e, l
    inc b
    inc bc
    sub h
    ldh [rNR21], a
    ld h, d
    inc sp
    and [hl]
    adc [hl]
    db $d3
    jp c, $c9be

    daa
    ld a, [hl]
    inc sp
    dec hl
    pop af
    ld a, $61
    db $eb
    scf
    cp b
    pop hl
    jr c, @+$3d

    ld h, e
    call nc, $e192
    xor $6f
    ld c, h
    ld hl, $003a
    jp nc, $010d

    dec l
    cp [hl]

jr_006_665f:
    rst $18
    rst $28
    ld c, $75
    db $db
    pop de
    sbc a
    ld e, [hl]
    dec a
    ld b, $17
    ld h, b
    add a
    db $f4
    add b
    reti


    ld a, h
    ld [$01d0], sp
    dec sp
    ld c, [hl]
    ld c, l

jr_006_6676:
    cp c
    ld c, $e4
    add h
    push de
    ld [hl-], a
    jr jr_006_6676

    rst $00
    ld b, h
    add a
    inc d
    or [hl]
    jp nz, Jump_000_3458

    db $ec
    scf
    ld h, l
    cp e
    ld [$44f6], sp
    cp e
    ld l, b
    or d
    rlca
    inc c
    sbc [hl]
    db $10
    sub b
    rlca
    add b
    ld c, b
    pop af
    ld b, c
    jr c, @-$48

    call nz, Call_000_22ae
    dec h
    ld a, [$00eb]
    ld l, h
    nop
    ld [de], a
    ld [hl], b
    nop
    ld c, [hl]
    cp h
    or c
    jp nz, $eb04

    cp b
    call c, $f006
    pop bc
    xor a
    nop

jr_006_66b5:
    inc e
    inc [hl]
    jp nz, $c4bc

    ld [hl], e
    inc hl
    ld h, e
    add d
    ld [hl-], a
    inc a
    ld e, e
    nop
    di
    sbc b
    sub e
    adc $42
    ret c

    db $dd
    rrca
    ld h, b
    ret z

    ld h, b
    jr nz, jr_006_665f

    dec sp
    sub e
    nop
    or $db
    rrca
    ld b, [hl]
    db $76
    ret nc

    ld c, a
    add e
    xor a
    adc e
    inc b
    xor $6c
    inc e
    xor b
    ld b, [hl]
    add e
    ld h, $7c
    ld b, e
    and b
    sub e
    and b
    add a
    sbc b
    dec de
    ld h, b
    ld b, c
    or a
    ld d, b
    ld l, e
    ld h, c
    db $e3
    jr nz, jr_006_66b5

    ld l, b
    add hl, bc
    and b
    jp hl


    ld b, $4f
    pop bc
    adc $0a
    ld [hl], l
    ld e, h
    xor a
    or d
    adc h
    ld a, $28
    jr nc, jr_006_677e

    ldh [$7e], a
    ld b, c
    ld h, b
    ld [bc], a
    sbc [hl]
    add $04
    rra
    jp nz, $fbb3

    and d
    jp Jump_006_58bb


    ld e, [hl]
    rlca
    ld [hl], b
    ld l, b
    sub a
    add h
    ret nc

    ld l, l
    sbc c
    inc h
    dec c
    call $e6ce
    ld e, b
    call $a03e
    ld [de], a
    dec [hl]
    ld de, $e13a
    adc l
    ld c, b
    add $a5
    adc b
    call c, $42c0
    ld l, c
    or h
    cp c
    rlca
    inc a
    sub a
    call c, Call_000_26e1
    push de
    ld h, b
    ld e, [hl]
    dec b
    jp z, Jump_000_0cf0

    dec [hl]
    db $e4
    ld c, c
    cp [hl]
    add h
    or a
    adc d
    ld [hl], $c4

jr_006_674f:
    pop de
    rst $20
    and b
    sub b
    ld [hl], h
    nop
    ld c, c
    ld c, $07
    dec e
    jr jr_006_6793

    ld d, [hl]
    db $f4
    jp z, $721e

    jp nz, Jump_006_4a1c

    jr nz, jr_006_674f

    and e
    cp c
    ld b, b
    jr c, jr_006_67c7

    ret


    db $d3
    ld l, d
    rla
    ld a, [hl+]
    ld c, b
    ld [hl], $bd
    rst $08
    inc h
    ld h, b
    db $db
    add b
    ld e, e
    ld [hl], a
    ld l, h
    db $d3
    ld e, h
    adc e
    ld l, [hl]

jr_006_677e:
    pop de
    cp l
    ld h, c
    ld d, d
    ld c, l
    ld h, b
    inc de
    add $0e
    ld e, a
    ld e, d
    jp nc, $a635

    ld [hl], e

jr_006_678d:
    adc b
    add h
    db $e3
    ld l, a
    db $76
    ld l, l

jr_006_6793:
    ld a, l
    adc [hl]
    push af
    add c
    ld l, [hl]
    rrca
    ld e, $0a
    jr nz, jr_006_67ab

    inc c
    ret nz

    cp h
    inc l
    ld [bc], a
    inc de
    add c
    add c
    or [hl]
    dec b
    jr c, jr_006_678d

    ld b, b
    ld l, h

jr_006_67ab:
    ret nz

    ld c, $4e
    or a
    ld de, $f425
    ld b, [hl]
    pop de
    rst $30
    ld [hl+], a
    add a
    ld [hl], d
    db $db
    adc h
    adc $e9
    and e
    call z, Call_000_1c47
    nop
    adc h
    scf
    xor c
    inc a
    add l
    add h

jr_006_67c7:
    db $f4
    sbc b
    cp l
    ld [hl], h
    sub $51
    daa
    ld a, h
    inc bc
    sbc h
    rst $00
    inc a
    sub b
    dec l
    ld l, c
    adc h
    adc b
    ld [hl], d
    adc $7c
    ld a, b
    ld b, b
    ld a, h
    ld a, b
    sub h
    and $88
    ld c, a
    scf
    cp $1c
    ld bc, $42e6
    ld d, a
    ld [hl+], a
    db $76
    scf
    ldh [$3f], a
    ld e, l
    rlca
    db $ec
    ld h, a
    ld a, [hl+]
    rst $38
    xor [hl]
    ld hl, $c90e
    ld c, c
    ld a, [$fee4]
    scf
    db $fd
    adc c
    dec e
    xor d
    daa
    ld l, a
    sbc e
    ld [hl], b
    jr nc, jr_006_6820

    nop
    ret nz

    sbc $01
    push bc
    ld l, d
    ld c, h
    cp $6d
    cp $25
    ld a, b
    inc hl
    ld h, b
    db $dd
    ld l, e
    add c
    push af
    add b
    ld [hl], b
    sub l
    or b
    pop hl
    cp b

jr_006_6820:
    and l
    sub b
    ld [c], a
    and c
    sub h
    ld [c], a
    inc b
    call z, Call_000_0d6c
    ld [hl], h
    reti


    scf
    set 4, d
    sbc b
    add hl, bc
    ret z

    ld a, $e3
    and d
    ld e, $33
    nop
    ret nc

    inc c
    ld a, c

Call_006_683b:
    ld a, [bc]
    ld [hl], h
    cp h
    ld [c], a
    ccf
    db $76
    jp $628d


    ld b, e
    sub c
    ld [hl+], a
    ld d, e
    adc l
    and d
    pop hl
    ld [$2407], a
    ld c, e
    dec l
    ld c, $44
    ld [bc], a
    ld [hl], d
    ld c, b
    pop hl
    add sp, $38
    ld a, h
    ld c, $06
    inc d
    cp c
    ld [hl], c
    ld b, [hl]
    push hl
    call Call_006_641e
    sub [hl]
    inc bc
    ld [hl], c
    pop af
    sub e
    sbc c
    ld h, c
    ld [hl], $3c
    ld [$11e7], sp
    jr nz, @-$18

    ld a, h
    add hl, bc
    add hl, sp
    ldh [rSC], a
    ld a, c
    ld a, [$b4e5]
    rst $20
    ret nc

    dec l
    adc [hl]
    pop bc
    add sp, $48
    sub h
    call nc, Call_000_20b9
    add sp, -$70
    dec h
    push hl
    sub l
    ld h, b
    rst $20
    cp c
    jp hl


    inc c
    ld h, c
    ret z

    ret nc

    jp hl


    dec c
    ld a, c
    xor h
    jp hl


    inc a
    ld e, $8a
    add e
    and a
    nop
    inc h
    rst $08
    sbc b
    scf
    sbc d
    ld a, [hl-]
    sub [hl]
    inc hl
    ld h, d
    db $db
    ld d, a
    xor c
    ld [$5c9f], a
    sbc b
    scf
    inc hl
    daa
    xor e
    ld [hl], d
    jp hl


    ldh a, [$7a]
    xor b
    add hl, bc
    ret c

    ldh [$80], a
    jp hl


    ld l, d
    add hl, sp
    cp $79
    ld [$ba0e], a
    ld c, $b8
    ld c, c
    db $eb
    db $d3
    xor a
    ld a, b
    ld e, $93
    ld h, h
    ld a, d
    inc e
    ret nc

    ld d, e
    and c
    xor b
    ld de, $72e9
    ld [$eb99], a
    ld b, $39
    rrca
    scf
    ld b, c
    db $ed
    ld e, d
    ret nc

    sub a
    ld e, c
    sbc [hl]
    or a
    dec sp
    ld b, [hl]
    adc [hl]
    xor c
    dec l
    ld a, [bc]
    cp c
    push af
    rlca
    or a
    xor b
    ld [$a82b], a
    or a
    cp b
    ld a, [hl]
    ld [c], a
    cp d
    ld a, [hl]
    ld [bc], a
    ld a, e
    sbc d
    ld [$dc70], a
    ld [hl], l
    ld a, d
    call nz, Call_006_683b
    ld h, a
    ld h, d
    ret z

    ld a, [hl-]
    cp b
    ld c, b
    ld c, [hl]
    di
    xor $f4
    dec sp
    call z, $abba
    ld l, $8f
    ld l, $f7
    ld e, [hl]
    db $ec
    res 5, [hl]
    ld h, b
    dec sp
    db $f4
    ld c, $bd
    ld d, $ed
    add sp, $3b
    inc bc
    adc l
    inc b
    xor [hl]
    rst $00
    ld a, [$3bc0]
    inc d
    add a
    jp nz, Jump_006_5342

    pop bc
    and b
    cp c
    cp h
    daa
    call nz, $ab43
    inc bc
    jp $efa0


    adc c
    rst $28
    sub c
    xor $d7
    add $0e
    push de
    add a
    add $a8
    ld a, [hl-]
    call nc, Call_000_31f0
    ret nc

    ld d, [hl]
    db $ec
    ld h, l
    db $ec
    db $76
    inc a
    ld d, b
    ld c, $e1
    rst $10
    ret


    ld hl, $5fba
    rlca
    ret z

    jp nz, $d372

    rla
    cp l
    sbc [hl]
    xor h
    adc $e9
    ret nz

    pop af
    ld [hl], a
    call z, Call_000_2341
    cp e
    or d
    ld c, [hl]
    ld a, c
    sub e
    or l
    ld l, $40
    ld d, a
    sbc a
    pop bc
    ld a, [c]
    adc h
    dec de
    jp z, Jump_006_6310

    or c
    add e
    sbc h
    nop
    rrca
    ld c, c
    add b
    add e
    cp d
    ld d, b
    ld a, c
    db $db
    db $ed
    ld [hl+], a
    dec [hl]
    ld a, [c]
    ld e, a
    dec de
    ld l, l
    ld b, b
    dec b
    ld a, [c]
    call z, Call_006_4b5f
    adc e
    sbc d
    rst $38
    ld e, l
    add b
    ld a, [c]
    ld [hl], b
    or $10
    ld c, b
    ld b, b
    ld [bc], a
    db $fc
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    dec c
    dec c
    ld d, $17
    rla
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rla
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    rla
    rla
    dec h
    ld h, $27
    jr z, jr_006_6a0d

    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l
    ld l, $2f
    jr nc, jr_006_6a1e

    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_6a2f

    ld a, [hl-]
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

Call_006_6a02:
    daa
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_006_6a0d:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_006_6a1e:
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

jr_006_6a2f:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld e, b
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc d
    adc h
    adc l
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
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    and a
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
    or e
    or h
    or l
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
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    db $d3
    add hl, sp
    add b
    pop de
    daa
    and a
    ld b, b
    sbc [hl]
    ld c, $00
    db $e4
    ld c, l
    ld b, c
    daa
    add c
    ret nz

    ld c, $22
    ld l, l
    inc b
    sbc a
    rlca
    add b
    inc a
    adc c
    call nc, Call_006_7812
    add hl, bc
    ld a, b
    nop
    or a
    ld b, c
    inc h
    ld a, d
    ld b, $39
    ld b, c
    ld hl, $d00e
    ld c, a
    ld [hl], b
    sub h
    push af
    inc d
    add c
    scf
    xor d
    db $10
    daa
    inc d
    ld b, d
    inc b
    and $a2
    ret nz

    cp l
    ld d, h
    ld c, b
    inc de
    sbc d
    ld hl, $6f00
    dec [hl]
    jr nz, jr_006_6b2e

    ld h, d
    adc h
    inc bc
    db $f4
    sub c
    add b
    db $76
    pop bc
    ld c, b
    inc bc
    add l
    db $10
    add b
    nop
    rrca
    cp d
    dec b
    nop
    nop
    nop
    rst $38
    rst $38
    xor $ff
    rst $38
    rst $38
    cp e
    xor d
    rst $38
    db $dd
    ld [hl], l
    ld d, l
    rst $38
    adc b
    ld [bc], a

Jump_006_6b02:
    rst $38
    ld d, h
    rst $38
    nop
    rst $38
    ld de, $ff00
    inc b
    ei
    dec bc
    rst $30
    ld e, l
    cp [hl]
    ld h, d
    db $fd
    ld b, l
    ld a, [$f58a]
    db $10
    ld d, l
    xor d
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    ld b, a

Jump_006_6b24:
    cp a
    ld [c], a
    rra
    di
    ld c, $fa
    rlca
    ld sp, hl
    and b
    xor d

jr_006_6b2e:
    ld b, b
    ld d, h
    add b
    xor b
    ld de, $e8ff
    rst $30
    ld e, a
    ccf
    ld [bc], a
    nop
    ld bc, $ffe0
    ld hl, sp+$7f
    ld h, [hl]
    rra
    or e
    rrca
    nop
    ld [hl+], a
    db $dd
    ld d, l
    xor d
    adc b
    ld [hl], a
    ld d, l
    xor d
    ld bc, $54fe
    xor e
    nop
    rst $38
    ld d, h
    xor e
    ld [hl+], a
    db $dd
    ld d, h
    xor e
    adc b
    ld [hl], a
    ld d, h
    xor e
    sub a
    xor $af
    rst $18
    rst $18
    xor a
    cp a
    rst $08
    rst $38
    add [hl]
    rst $38
    ld b, $fe
    ld b, $fe
    ld d, b
    nop
    xor b
    inc e
    ld e, h
    ld a, $be
    ld a, $3e
    ld a, $3e
    ld a, $1c
    ld a, $08
    inc e
    ld bc, $0101
    ld bc, $0001
    ld bc, $0759
    dec l
    inc bc
    rla
    ld bc, $e15b
    push hl
    pop af
    ld a, [c]
    pop af
    pop af
    ldh a, [$e1]
    ldh a, [$aa]
    ld d, l
    ld [hl], a
    adc b
    xor d
    ld d, l
    db $dd
    ld [hl+], a
    xor d
    ld d, l
    rst $38
    nop
    xor d
    ld d, l
    db $76
    adc c
    inc hl
    xor e
    ld d, l
    rst $38
    ld bc, $7f80
    add b
    ld a, a
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld hl, sp+$70
    db $fc
    ld b, $fe
    inc b
    cp $04
    db $fc
    db $fc
    inc b
    db $10
    jr c, jr_006_6bf5

    ld a, h
    ld a, h
    ld a, h
    ld a, h
    jr c, jr_006_6c3f

    ld b, e
    ldh [rSB], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ei
    inc b
    xor $ba
    db $10
    xor d
    nop
    ei
    dec b
    ld bc, $abef
    ld bc, $c03f
    ld a, a
    add b
    ccf
    ret nz

    ld e, a
    and b
    cpl
    ret nc

    ld d, a
    xor b
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    db $fc
    inc b
    db $f4
    inc c
    db $f4
    inc c
    db $fc
    adc h
    db $fc
    call z, $ccfc
    db $fc

jr_006_6bf5:
    call z, $ccfe
    db $10
    jr c, jr_006_6bfe

    inc bc
    inc bc
    inc bc

jr_006_6bfe:
    rlca
    ld [bc], a
    dec bc
    ld [bc], a
    inc de
    ld [bc], a
    and a
    jp nz, $e2cb

    rst $30
    ld [c], a
    db $ed

jr_006_6c0b:
    and $f6
    db $e4
    ld a, a
    ld [hl+], a
    ld a, [hl+]
    nop
    ld [hl], a
    nop
    dec hl
    ld bc, $0257
    ld c, $04
    ld e, l
    ld [$587a], sp
    db $fd
    jr nz, jr_006_6c0b

    ld b, b
    rst $30
    add b
    xor d
    nop
    ld d, l
    nop
    adc d
    ld [hl+], a
    nop
    db $dd
    ld [hl], a
    daa
    ld bc, $00dd
    cp $54
    ld [hl], a
    nop
    xor a
    ld bc, $065e
    ld hl, sp+$18
    ldh [$61], a
    add c
    add c

jr_006_6c3f:
    db $dd
    rst $38
    adc b
    ld a, [$03f8]
    inc bc
    ld b, b
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$55
    ld bc, $80d5
    ld c, e
    ld [hl], c
    ld bc, $0006
    cp d
    db $10
    ld [hl], a
    push de
    add b
    adc d
    nop
    push de
    nop
    ld [hl], d
    xor d
    ld a, [$5750]
    ld [bc], a
    xor d
    push af
    and b
    adc a
    dec b
    ld d, l
    nop
    rst $38
    ld [hl], l
    adc e
    db $f4
    pop hl
    ld a, [hl]
    ld a, a
    ld c, $a6
    inc c
    ld e, l
    inc c
    jp c, Jump_006_4f5c

    ld a, [de]
    ld a, [de]
    jr jr_006_6c81

    ld e, [hl]
    rra
    adc e

jr_006_6c81:
    ld bc, $a8fd
    ld [hl+], a
    nop
    db $fd
    call z, $88fe

jr_006_6c8a:
    db $eb
    inc e
    db $dd
    ld a, $3a
    rst $38
    db $fd
    rst $38
    ld h, a
    rra
    ld [hl+], a
    nop
    jr c, jr_006_6d14

    sub b
    ld a, b
    ld b, b
    nop
    and b
    nop
    ret nc

    nop
    ld l, d
    add b
    rst $38
    rst $38
    ld [hl+], a
    nop
    ld bc, $0003
    ld bc, $0002
    dec b
    nop
    ld a, [bc]
    nop
    sub l
    ld [hl+], a
    nop
    call $9ee4
    call nz, $0cb7
    ld h, [hl]
    inc e
    call $9a38
    ld a, b
    push af
    ldh [$f7], a
    add b
    ld l, d
    ret nz

    sub l
    ret nz

    ld l, d
    ret nz

    or l
    ld h, b
    ld b, d
    ld h, b
    db $fc
    nop
    ld [$e600], a
    db $10
    sbc d
    jr nc, jr_006_6d42

    jr c, jr_006_6c8a

    jr c, jr_006_6d26

    jr jr_006_6d1a

    inc e
    ld d, a
    ld [bc], a
    nop
    nop
    nop
    ld b, h
    ld de, $07aa
    ld bc, $065f
    ld a, [de]
    inc e
    inc h
    jr @+$34

    inc a
    cp $a6
    ld a, h
    jr @-$0e

    ld h, b
    add $8f
    rrca
    rra
    rra
    rra
    rrca
    rra
    ld b, $0f
    add b
    add b
    add b
    nop
    add b
    nop
    nop
    ldh a, [$f8]
    ld b, b
    ldh a, [$0c]
    ld e, $07
    rlca
    inc bc
    rlca
    inc bc
    nop
    add b
    ret nz

jr_006_6d14:
    ret nz

    ldh [$e3], a
    ldh [$c7], a
    db $e3

jr_006_6d1a:
    sbc h
    rst $00
    scf
    jr @-$36

    jr nc, jr_006_6d36

    nop
    ldh a, [$d0]
    rst $38
    db $eb

jr_006_6d26:
    ld h, b
    ldh a, [$a1]
    ld [hl], b
    ldh [rIE], a
    cp e
    call nz, $7d44
    jr jr_006_6d62

    jr c, jr_006_6db1

    jr nc, jr_006_6da6

jr_006_6d36:
    jr nc, jr_006_6d6c

    ld [hl], b
    ld [hl], b
    ld h, b
    rst $38
    cp $e8
    ldh a, [rP1]
    nop
    pop af

jr_006_6d42:
    ldh [$3f], a
    rra
    ld de, $e0f0
    ld a, a
    ld a, [hl+]
    dec [hl]
    ld h, b
    rst $38
    push af
    xor l
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], h
    jr nc, jr_006_6d85

    jr nc, jr_006_6d78

    jr nc, jr_006_6d91

    cp $54
    ld e, b
    inc c
    ld c, $0e
    ld a, [$04ae]

jr_006_6d62:
    ld b, $40
    ld b, $04
    ld b, $10
    ld a, d
    ld a, h
    cpl
    rra

jr_006_6d6c:
    ccf

jr_006_6d6d:
    ld [$17ff], a
    jr c, jr_006_6da1

    jr nc, @+$41

    jr nz, @+$41

    daa
    cpl

jr_006_6d78:
    ccf
    ccf
    cpl
    ld b, b
    add b
    db $f4
    ld hl, sp-$72
    ld a, a
    db $fd
    add b
    rst $38
    ret nz

jr_006_6d85:
    rst $38
    ret nz

    nop
    add sp, -$10
    dec e
    cp $e3
    rra
    db $fc
    ld e, $3f

jr_006_6d91:
    ccf
    ccf
    ld e, $3f
    jp nc, Jump_000_3be1

    rst $38
    sbc a
    ld a, a
    ld bc, $0600
    ld bc, $061b

jr_006_6da1:
    ld a, $18
    db $fc
    jr nc, @-$0e

jr_006_6da6:
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    jr nc, jr_006_6d6d

    rst $00
    rrca
    adc a
    nop

jr_006_6db1:
    ld h, b
    jr nc, jr_006_6db4

jr_006_6db4:
    jr nc, jr_006_6dd6

    sub b
    or b
    sub b
    or b
    sub b
    ccf
    sbc a
    dec d
    inc de
    db $10
    db $10
    add sp, -$10
    rst $38
    rst $38
    cp $ff
    ld e, a
    ccf
    inc bc
    add e
    inc bc
    rst $38
    rst $38
    ldh a, [$e0]
    ret nz

    ldh [$e0], a
    ret nz

    ret nz

    ret nz

jr_006_6dd6:
    ret nz

    ret nz

    add b
    ldh [$80], a
    rst $38
    ld a, a
    rlca

jr_006_6dde:
    ret nz

    ld a, b
    jr c, jr_006_6dde

    ld hl, sp+$3f
    ccf
    inc e
    jr c, jr_006_6e20

    inc e
    inc e
    inc e

jr_006_6deb:
    rst $38
    rst $38
    db $f4
    ld hl, sp+$7e
    cp $7d
    ld a, [hl]
    cpl
    ccf
    rra
    cpl
    cpl
    scf
    ld e, a
    jr nz, jr_006_6deb

    ldh a, [$2f]
    jr nc, jr_006_6e2f

    jr nc, jr_006_6e31

    inc sp
    rst $38
    inc bc
    adc $3f
    db $ec
    rra
    push af
    adc $f5
    xor $fd
    and $fd
    and $fd
    and $fc

Jump_006_6e14:
    add [hl]
    db $10
    db $10
    db $10
    rlca
    rrca
    rlca
    ld b, $0f
    rrca
    ld c, $0e

jr_006_6e20:
    ld c, $1e
    ld c, $ff
    rst $38
    ld b, b
    ld b, b
    dec b
    db $f4
    ld hl, sp+$0e
    inc e
    inc e
    cp $fe

jr_006_6e2f:
    ld c, $07

jr_006_6e31:
    ld b, b
    add b
    cp $2f
    scf
    cpl
    scf
    cpl
    scf
    rrca
    scf
    cpl
    inc sp

jr_006_6e3e:
    daa
    jr c, jr_006_6e3e

    ld b, $fc
    ld b, $fc
    ld b, $c6
    db $fc
    add $fc
    and $0d
    ld e, $0f
    rra
    stop
    stop
    and b
    ret nz

    rst $38
    rst $38
    rla
    ld a, $1c
    rst $38
    db $fc
    rst $38
    rst $38
    dec sp
    inc a
    inc a
    jr c, jr_006_6edb

    jr c, jr_006_6e9d

    ld a, b
    ld a, [bc]
    cp a
    rla
    ld a, [hl+]
    ld a, [hl+]
    ld de, $aa11
    ld a, [bc]
    ret nz

    inc b
    inc b
    jr nz, jr_006_6e74

jr_006_6e74:
    nop
    call c, $5555
    ld a, [bc]
    cp $fb
    cp a
    ld a, a
    ld d, b

jr_006_6e7e:
    ld d, b
    adc b
    jr z, jr_006_6ec6

    inc d
    and d
    ld a, [bc]
    ld d, b
    inc b
    ld a, [bc]
    and d
    ld b, h
    ld b, b
    rst $20
    jp $8080


    ret nz

    ld e, l
    ld a, $5f
    ccf
    ld l, a
    jr nc, jr_006_6e7e

    ld hl, sp-$11
    pop af
    rlca
    dec sp
    inc de

jr_006_6e9d:
    rra
    rla
    dec de
    inc de
    dec e
    add hl, bc
    ld c, $c0
    ldh [$c0], a
    ld bc, $03ff
    and $fd
    add $fd
    add $fd
    and $3c
    ld a, $7e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, [hl]
    inc a
    ld a, h
    ld [bc], a
    ld b, $04
    inc c
    rra
    rra
    dec hl
    scf
    add b
    add c

jr_006_6ec6:
    ld bc, $7870
    ld a, b
    ld [hl], b
    ldh a, [rSVBK]
    ld [hl], b
    ldh a, [$e0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [rP1], a
    nop
    adc b
    adc b

jr_006_6edb:
    ccf
    ccf
    ld [$fa02], sp
    pop bc
    cp $fe
    inc c
    rrca
    ld bc, $0307
    rrca
    rlca
    ld e, $0f

jr_006_6eec:
    inc l
    ld e, $5c
    inc a
    ccf
    ret nz

    rlca
    ld hl, sp-$10
    rst $38
    adc [hl]
    rst $08
    ld bc, $0381
    dec e
    db $e3
    jp Jump_000_38fc


    ccf
    rrca
    rrca
    ld bc, $f901
    and $fb
    and $fa
    rst $20
    db $db
    and $fa
    rlca
    ld [hl], a
    adc a
    adc e

jr_006_6f12:
    rst $38
    rst $10
    rst $38
    ld b, b
    jr c, jr_006_6f18

jr_006_6f18:
    ld bc, $0305
    ld d, $0e
    jr z, jr_006_6f3b

    ret nc

    jr c, jr_006_6f12

    ldh [$80], a
    ret nz

    ld b, b
    ldh [$c0], a
    add b
    jr nz, jr_006_6eec

    ld [bc], a
    ret nz

    nop
    ret nz

    ret nz

    ldh [rP1], a
    ccf
    dec bc
    rlca
    rla
    rrca
    rrca
    ld e, $3c
    ld a, b

jr_006_6f3b:
    push bc
    add e
    ret nc

    ldh [rTIMA], a
    dec b
    jr z, jr_006_6f71

    ld b, l
    ld d, b
    ld [bc], a
    or $fd
    ldh [$27], a
    rst $08
    ld d, l
    dec b
    ld a, a
    ccf
    cp $54
    ld e, a
    cp $af
    ld d, l
    ld e, l
    cp a
    xor d
    rst $38
    ld e, l
    cp a
    ld bc, $c054
    nop
    ld b, b
    ldh [$a0], a
    ldh a, [$df]
    ccf
    cp a
    xor a
    and $f8
    and $f8
    inc bc
    ld sp, hl
    ldh a, [$f9]
    ei
    ld sp, hl

jr_006_6f71:
    ei
    di
    ld sp, hl
    pop af
    ld sp, hl
    pop af
    ld sp, hl
    pop af
    db $fc
    ld hl, sp-$04
    cp $fc
    cp $fc
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld e, a
    ccf
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add c
    nop
    add c
    add e
    jp $cfc7


    rst $00
    rst $00
    rst $08
    adc a
    adc a
    adc a
    rrca
    rrca
    adc a
    adc a
    add a
    adc a
    rst $00
    rst $00
    rst $00
    ldh a, [$f0]
    ldh [$7e], a
    rst $38
    cp $1f
    ld a, a
    ld a, $1c
    ld e, [hl]
    inc a
    inc a
    ld a, b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld [$100b], sp
    dec d
    inc h
    ld a, [hl+]
    ld b, l
    ld d, l
    ld a, [de]
    ld a, [hl+]
    ld b, l
    push de
    ld c, $6e
    add l
    push de
    dec de
    and b
    dec d
    ld b, b
    ld c, [hl]
    cp d
    add b
    ld d, l
    nop
    xor $ab
    dec de
    ld d, l
    dec b
    xor $0e
    ld d, l
    dec b
    cp d
    xor $00
    ld d, l
    dec b
    sbc e
    xor b
    ld bc, $c654
    xor b
    dec d
    ld d, c
    sub d
    jr c, jr_006_703e

    ld de, $48a2
    ld d, l
    db $10
    inc de
    ld [bc], a
    ld bc, $e041
    ldh [$50], a
    ld d, b
    cp b
    cp b
    ld d, b
    ld d, b
    add sp, -$18
    ld b, b
    ld d, b
    and $f8
    ret nz

    ld b, b
    ld b, b
    db $10
    jr nc, @-$05

    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    db $fd
    db $fc
    db $fc
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ccf
    rst $38
    ld e, a
    cp a
    rra
    ccf
    rra
    ccf

jr_006_7018:
    rra
    ccf
    rst $20
    ld sp, hl
    ld a, [hl]
    cp $fe
    cp $73
    ccf
    rst $38
    ldh a, [$f8]
    ldh a, [$f8]
    ld e, [hl]
    nop
    ld a, [hl+]
    ld bc, $8e54
    xor d
    add b
    dec d
    ld b, h
    ld a, [hl+]
    adc d
    db $fc
    db $fc
    xor [hl]
    xor d
    xor d
    ld a, [bc]
    ld d, l
    dec d
    xor [hl]
    ld c, $55

jr_006_703e:
    dec d
    ld b, l
    nop
    and d
    adc b
    ld d, h
    db $10
    and b
    adc b
    ld d, b
    db $10
    and b
    ld [$0040], sp
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ccf
    rrca
    rra
    ld a, a
    cp a
    ldh a, [$e0]
    pop hl
    ldh a, [$c7]
    rlca
    rst $20
    rst $00
    or $f9
    ld hl, sp+$2b
    rlca
    ld b, h
    nop
    ld a, [bc]
    ld a, [$4bd0]
    rlca
    sub d
    xor d
    nop
    jp hl


    xor a
    ld [hl+], a
    add sp, -$10
    ei
    ld e, a
    ccf
    jr nz, jr_006_7018

    ret nz

    push af
    cp a
    ld a, a
    ld [bc], a
    ld b, b
    add b
    inc bc
    inc bc
    add a
    ldh a, [$3f]
    rst $38
    add a
    rst $00
    add a
    add e
    rst $00
    rst $30
    rst $20
    rst $20
    rst $20
    rst $00
    rst $20
    rst $08
    rst $00
    ldh a, [$e0]
    rst $38
    ld a, [hl]
    adc b
    ldh a, [$c0]
    ldh [$60], a
    ccf
    jp $c0c3


    pop bc
    cp l
    ld a, [hl]
    rst $00
    rst $08
    rrca
    adc a
    rrca
    rrca
    add hl, sp
    add b
    ldh [$97], a
    sbc l
    call c, $db8d
    add [hl]
    ld a, c
    push hl
    pop af
    cp l
    ld c, c
    ret c

    inc b
    daa
    nop
    or e
    ld [hl], b
    dec e
    ld [bc], a
    ld b, e
    ret nz

    ld e, l
    ld d, d
    ld c, [hl]
    ei
    inc bc
    add [hl]
    and $09
    inc bc
    xor e
    db $f4
    inc b
    xor c
    pop hl
    db $10
    db $eb
    cp c
    xor d
    ld a, [$3fa1]
    ld bc, $17f2
    db $d3
    nop
    ld h, b
    ld [hl], l
    add b
    ld e, [hl]
    ld d, b
    ld b, c
    ret


    ld hl, $06e7
    adc $83
    and c
    sbc l
    dec d
    db $db

jr_006_70ea:
    ret nc

    push af
    ld b, e
    xor h
    ld b, b
    db $76
    inc sp
    or d
    rst $00
    dec b
    inc h
    xor $f0
    sbc [hl]
    inc c
    ldh a, [$6c]
    ld l, l
    add h
    cp h
    cp h
    ld a, c
    inc b
    jr nz, jr_006_70ea

    rst $10
    or d
    cpl
    ld l, a
    daa
    ret nz

    jr nz, @+$3f

    db $10
    jp Jump_000_08f6


    inc bc
    add c
    add a
    ld [hl], h
    ld [bc], a
    inc [hl]
    db $10
    ld h, a
    add d
    ld h, c
    ld b, e
    adc l
    rst $20
    add hl, hl
    dec l
    xor l
    db $e3
    add b
    add c
    ld a, c
    ld d, $43
    sbc b
    ld [bc], a
    rlca
    adc a
    rst $20
    sub b
    ld h, l
    rst $20
    ei
    adc b
    ldh [$e3], a
    and h
    jp hl


    inc hl
    sbc h
    xor [hl]
    sbc d
    ld b, d
    ld c, $ac
    ld [de], a
    ld c, $bc
    jr nz, @+$0f

    call c, Call_006_54b2
    sub b
    ld e, h
    ld h, d
    add b
    ld a, [hl-]
    ld hl, sp+$24
    dec sp
    nop
    ld c, $aa
    ld [$d217], sp
    rst $20
    reti


    ld l, h
    dec c
    cpl
    ld h, d
    inc h
    ld c, h
    adc e
    ld a, b
    inc c
    add l
    ret nz

    ld h, b
    inc hl
    add c
    ld a, b
    ld a, [hl-]
    rrca

jr_006_7163:
    db $10
    ld a, [$03b8]
    reti


    ld [$cf5f], sp
    ld a, a
    add b
    adc a
    ld l, d
    rrca
    ldh [rWX], a
    jp nz, $b0ff

    ld c, e
    ld h, e
    ld a, e
    db $fc
    jr nz, jr_006_7189

    nop
    ld bc, $0827
    inc b
    cp b
    inc de
    jp Jump_000_2004


    db $db
    db $10
    daa
    dec d

jr_006_7189:
    add b
    sub l
    sbc $fc
    ld [hl], c
    sub b
    ld c, c
    dec e
    or b
    pop bc
    add b
    ld b, c
    ld h, c
    ld c, l
    ld [hl], c
    sub b
    xor $55
    add b
    and $3c
    sbc e
    xor [hl]
    inc h
    ld e, l
    call nz, Call_000_17f4
    ld [hl], c
    and h
    inc bc
    jp z, Jump_000_2060

    ret nz

    ld [de], a
    db $10
    ld l, [hl]
    jp $ed20


    call nc, Call_006_4d69
    pop hl
    ld b, e
    add b
    dec h
    dec l
    db $dd
    cp l
    ld l, b
    ld c, e
    ld a, a
    dec a
    ld [hl], h
    ld [de], a
    ld b, e
    or e
    jr c, @+$01

    ld h, e
    ld [hl], d
    add hl, hl
    jp c, $8380

    xor h
    ld c, b
    ld b, a
    jr z, jr_006_7163

    nop
    and $61
    adc h
    ldh [$7b], a
    jp z, $d719

    ld e, b
    inc de
    ld [hl], e
    ld l, a
    ld l, [hl]
    pop bc
    sbc a
    db $10
    ld a, b
    add b
    inc a
    ld a, [hl-]
    ld e, e
    or e
    ld h, h
    ld [hl], a
    dec [hl]
    sub $61
    ld a, [hl-]
    ld a, h
    ld a, c
    jr jr_006_71fd

    or b
    scf
    ld e, h
    push bc
    adc [hl]
    sub [hl]
    add hl, hl
    push hl
    inc b
    ld c, c
    pop af

jr_006_71fd:
    db $ec
    ld h, c
    sub d
    pop af
    push bc
    rst $20
    ret nz

    add hl, sp
    ld b, h
    add h
    or $dd
    add h
    xor $d1
    dec e
    ldh [$7b], a
    jp nz, $ba87

    db $d3
    cp [hl]
    xor h
    sbc a
    nop
    ld h, h
    ld a, [hl]
    jr z, @+$7b

    ld hl, sp+$42
    ld e, $86
    xor $a1
    dec h
    ld a, $38
    ld a, $a7
    ret c

    cp [hl]
    db $d3
    ld [hl], h
    ld b, $17
    ret z

    ld h, e
    db $eb
    sbc h
    sbc l
    sub a
    and $7d
    ld [hl], d
    daa
    sbc d
    inc l
    ld sp, hl
    call $8a9d
    ld [c], a
    jr z, jr_006_725f

    ld c, a
    cp l
    ld a, b
    rst $08
    or $07
    adc h
    or h
    dec de
    inc e
    ret nc

    dec c
    call z, $fc13
    xor b
    inc a
    ret z

    inc h
    ld bc, $66ef
    call nz, $ffbd
    ld l, e
    cp $59
    ld [hl], b
    sbc d
    ld h, e
    sbc e

jr_006_725f:
    ld hl, sp-$6d
    or b
    ld h, h
    xor $08
    db $10
    ld l, e
    jr @-$3c

    ld [c], a
    ld b, $90
    add hl, de
    jp z, $a606

    ret


    or e
    and d
    ld d, $ec
    db $fc
    add hl, hl
    ld bc, $11aa
    ld [$cff0], sp
    cp d
    ldh a, [rSVBK]
    ret z

    rla
    ld [$b7bb], sp
    inc e
    ld b, [hl]
    inc b
    pop af
    dec sp
    ld l, a
    inc b
    ld l, d
    sub $b9
    reti


    ld h, d
    ld [de], a
    ld [c], a
    jr jr_006_72f0

    and d
    jp c, $eaa9

    xor c
    jp $c6d8


    or [hl]
    jp nz, $f746

    ld [hl], b
    adc a
    dec d
    ld b, e
    ret nz

    add hl, de
    ld a, [bc]
    sbc e
    add hl, bc
    dec bc
    ld l, d
    jp nz, $e68c

    jr nz, jr_006_7323

    adc [hl]
    inc b
    dec de
    ld [$ad83], sp
    ld [hl-], a
    inc e
    cp l
    rst $00
    add hl, de
    call c, $f267
    ldh a, [$ba]
    ld [hl], b

Call_006_72c2:
    call c, $1072
    inc e
    ld a, c
    ldh a, [$9b]
    dec de
    ld [$5e1c], sp
    ld [hl], e
    rra
    inc e
    jp nc, $6712

    ld a, b
    pop bc
    add c
    inc l
    ld hl, $30cb
    ld b, d
    ld [hl], d
    ld [$1c24], a

jr_006_72df:
    rl [hl]
    or $e6
    or $23
    add hl, bc
    ret nc

    cp h
    xor a
    ld b, l
    jr nc, jr_006_72df

    ld l, h
    ld [hl], h
    ld l, e
    rrca

jr_006_72f0:
    add hl, bc
    add a
    ld b, [hl]
    add e
    jp nc, Jump_000_2333

    jp nc, Jump_006_47d7

    ld [$f440], a
    db $ed
    db $d3
    pop bc
    inc e
    inc a
    ldh a, [$ee]
    or a
    ld [hl], $ac
    ldh a, [$4e]
    push af
    jr nc, jr_006_7368

    ret


    db $f4
    db $76
    push af
    ld c, b
    db $dd
    add hl, de
    and a
    ld c, h
    db $eb
    or d
    rla
    add hl, de
    inc a
    ld h, e
    push af
    adc d

jr_006_731d:
    ld [hl], l
    sub e
    rrca

Call_006_7320:
    ld c, $36
    add e

jr_006_7323:
    ld [hl-], a
    rrca
    ld e, [hl]
    jr nc, jr_006_731d

    di
    inc bc
    and e
    inc e
    ld a, [bc]
    ld [hl], d
    ld a, l
    ld c, $e3
    ld hl, $b1bd
    sub b
    ld h, c
    xor d
    add hl, sp
    call $d071
    reti


    daa
    ld d, a
    ld b, c
    pop de
    ld c, b
    or $c0
    ld sp, $42d5
    ld c, a
    ld l, [hl]
    rst $20
    ld d, l
    db $e3
    add hl, bc
    jp nc, Jump_006_77d0

    jr nz, jr_006_736e

    call z, $c01d
    inc b
    ld [hl], l
    sbc b
    ld [hl], l
    sub [hl]
    ld [hl], h
    ldh a, [$9d]
    inc b
    daa
    ld d, c
    inc e
    pop de
    rlca
    ld d, a
    inc hl
    ld [hl], c
    and a
    dec e
    jp hl


jr_006_7368:
    rst $30
    and [hl]
    rla
    ld l, [hl]
    add h
    ld h, h

jr_006_736e:
    inc d
    dec e
    and h
    ld l, d
    sbc e
    ld h, b
    rst $20
    pop de
    ld b, $4d
    or b

jr_006_7379:
    ld [hl], a
    ld d, b
    dec de
    ld e, a
    inc bc
    rst $08
    adc b
    ld [hl], $fa
    jr nc, jr_006_7379

    db $eb
    ld bc, $319a
    ld a, b
    ld h, e
    pop hl
    add c
    ld l, c
    rrca
    ld bc, $07e2
    add a
    ld [hl], d
    ld e, $2b
    db $10
    sbc e
    call c, $a29a
    sbc l
    cp [hl]
    dec e
    ld d, d
    add hl, bc
    call c, Call_000_1d61
    db $e3
    ld bc, $48d6
    ld [hl], l
    sub h
    db $10
    ld [hl], h
    ld c, $be
    ld d, e
    ld b, c
    db $e4
    ld b, d
    ld b, a
    ld d, b
    pop bc
    sbc $b0
    dec e
    jp hl


    ld [hl], l
    dec sp
    rst $18
    ld h, c
    and $81
    and $a1
    rst $18
    ld b, c
    rst $18
    pop hl
    rst $20
    ld bc, $21e7
    rst $18
    call $92be
    ld [hl], c
    ld l, $79
    ldh a, [$79]
    ld l, b
    ld b, e
    call nz, $e099
    ld a, h
    ld a, d
    nop
    ld c, a
    db $10
    ld h, e
    dec a
    ld [c], a
    ld [hl], $d7
    ld [hl], a
    and e
    sbc [hl]
    inc l
    inc de
    jp hl


    inc l
    pop af
    ld c, [hl]
    or e
    jp hl


    cp h
    ld a, [c]
    ldh [$b1], a
    rst $08
    pop hl
    reti


    add c
    sbc l
    sub c
    ret nc

    jr nc, jr_006_740a

    push hl
    ld a, d
    or $b8
    rlca
    ld a, [hl]
    db $fd
    db $fc
    ld a, c
    pop de
    db $76
    ldh [$8f], a
    xor a
    inc hl
    dec e
    push bc
    rlca
    ld [hl], c

jr_006_740a:
    ret nz

    ld e, [hl]
    db $db
    ld b, e
    add e
    and c
    db $eb
    xor b
    inc sp
    xor $87
    cp d
    ld bc, $5107
    inc hl
    rst $28
    nop
    rst $00
    ld d, d
    db $eb
    rst $28
    and e
    add hl, de
    inc b
    adc a
    xor h
    add a
    ret nz

    rst $08
    sbc l
    ld l, a
    jp nz, $c35e

    cp a
    inc c
    ld e, h
    ld d, c
    inc e
    ld b, e
    adc c
    res 1, d
    sbc a
    jr jr_006_745c

    sbc l
    or b
    inc e
    ld d, l
    daa
    cp c
    add a
    ld l, $e0
    pop bc
    ret


    sbc b
    inc a
    ret


    ld d, $e4
    and b
    pop bc
    rr a
    jp z, $c7e2

    jp nc, Jump_006_43c0

    cp c
    cp d
    db $fc
    call c, Call_000_0075
    ld a, l
    ld l, h
    rlca

jr_006_745c:
    or e
    pop bc
    or $30
    ld d, $c6
    add a
    sub $a0
    db $f4
    ld d, c
    pop de
    cpl
    call c, Call_006_40c0
    ld b, b
    ld [bc], a
    rla
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1212
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $00
    rla
    jr jr_006_74b0

    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_006_74c5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_006_74d5

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_006_74b0:
    ld l, $2f
    jr nc, jr_006_74e5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_006_74f5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_006_74c5:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
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

jr_006_74d5:
    ld d, e
    ld d, h
    ld d, l
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_006_74e5:
    ld h, c
    nop
    ld h, d
    nop
    nop
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

jr_006_74f5:
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
    adc b
    adc c
    nop
    nop
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
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
    or e
    or h
    or l
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
    jp nz, $c4c3

    push bc
    add $b6
    rst $00
    ret z

    cp c
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    nop
    ld [c], a
    db $e3
    db $e3
    db $e4
    nop
    nop
    push hl
    and $e7
    and $e8
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    add hl, sp
    add b
    pop de
    daa
    and a
    ld b, b
    sbc [hl]
    ld c, $00
    db $e4
    ld c, l
    ld b, c
    daa
    add c
    pop bc
    ld h, h
    db $e4
    ld l, l
    inc b
    sbc a
    rlca
    adc b
    sub a
    rst $08
    call nc, Call_006_7812
    ld c, $08
    sub a
    add a
    db $dd
    inc b
    add a
    and d
    add c
    jp hl


    ld sp, hl
    ld b, c
    ld hl, $d00e
    ld c, b
    ld b, e
    call nc, $1012
    sbc $82
    ld b, d
    inc e
    ld d, b
    ld c, b
    rla
    sbc d
    dec bc
    ld [$3175], sp
    ld h, c
    dec sp
    ret c

    ld b, a
    ld [hl], h
    ld d, $10
    ld a, [c]
    add d
    ld b, d
    ld e, $d0
    ld c, b
    ld a, [hl]
    db $ec
    cpl
    sub e
    ld d, $05
    rst $18
    ld sp, $5e60
    inc d
    ld d, $40
    nop
    nop
    nop
    nop
    nop
    ei
    inc bc
    ld b, b
    nop
    sbc [hl]
    inc b
    nop
    nop
    xor [hl]
    dec c
    ld b, b
    nop
    jr jr_006_75fc

    nop
    nop
    cp $16
    ld b, b

Jump_006_75f2:
    nop
    ld c, [hl]
    jr jr_006_75f6

jr_006_75f6:
    nop
    call nc, Call_006_401f
    nop
    add hl, de

jr_006_75fc:
    ld hl, $0000
    sbc [hl]
    add hl, hl
    ld b, b
    nop
    db $ec
    ld a, [hl+]
    nop
    nop
    ld l, h
    inc [hl]
    ld b, b
    ld [bc], a
    ld d, [hl]
    nop
    nop
    nop
    nop

Jump_006_7610:
    inc h
    dec h
    inc sp
    add hl, hl
    daa
    ld l, $25
    inc h
    inc c
    ld [hl], $25
    inc l
    cpl
    jr nc, jr_006_7644

    inc h
    ld e, [hl]
    nop
    inc hl
    cpl
    jr nc, jr_006_765f

    ld [hl-], a
    add hl, hl
    daa
    jr z, jr_006_765f

    nop
    ld h, b
    ld de, $1919
    inc de
    ld [hl+], a
    dec h
    ld hl, $002d
    inc sp
    cpl
    ld h, $34
    scf
    ld hl, $2532
    nop
    jr nc, @+$11

    inc l
    jr nc, jr_006_7676

jr_006_7644:
    cpl
    inc h
    dec [hl]
    inc hl
    ld [hl+], a
    add hl, sp
    add hl, hl
    ld l, $34
    dec h
    ld [hl-], a
    jr nc, jr_006_767d

    ld hl, $2934
    cpl
    ld l, $33
    inc l
    add hl, hl
    inc hl
    dec h
    ld l, $33
    ld l, $2e

jr_006_765f:
    inc h
    cpl
    add hl, sp
    add b
    ret nz

    ld c, h
    ld [bc], a
    sbc b
    ld [bc], a
    and h
    rrca
    ld a, [hl]
    ld e, [hl]
    sub d
    db $10
    ld c, $a2
    adc h
    inc bc
    sub a
    jr nz, jr_006_7687

    ld l, [hl]

jr_006_7676:
    ld sp, $08e7
    ld b, b
    ld l, [hl]
    pop hl
    dec e

jr_006_767d:
    ret z

    db $10
    ldh [rSB], a
    ld d, h
    rst $20
    ret nz

    xor e
    ld h, $ea

jr_006_7687:
    dec bc
    add d
    sub e
    push hl
    ld bc, $4012
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    add hl, sp
    add b
    ret nz

    ld c, h
    ld [bc], a
    sbc b
    ld [bc], a
    and [hl]
    nop
    ld d, l
    inc [hl]
    dec d
    ld d, c
    ret c

    ld a, [bc]
    and e
    rst $08
    push de
    ld b, a
    adc [hl]
    and b
    ld b, b
    ld [bc], a
    ld a, c
    nop
    nop
    nop
    nop
    adc l
    ld h, e
    adc l
    ld h, h
    adc l
    ld h, l
    adc l
    ld h, [hl]
    adc [hl]
    adc a
    nop
    nop
    ld l, d
    ld l, e
    ld l, d
    ld l, e
    ld l, h
    ld l, e
    ld l, l
    ld l, e
    sub b
    sub c
    ld l, [hl]
    sub d
    ld [hl], b
    sub d
    ld [hl], c
    sub d
    ld [hl], d
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    nop
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    ld l, d
    ld l, e
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    nop
    nop
    adc [hl]
    adc a
    xor c
    xor d
    xor c
    xor e
    xor c
    xor h
    xor c
    xor l
    xor c
    xor [hl]
    sub b
    sub c
    sub b
    sub c
    sub e
    sub h
    sub e
    sub h
    xor a
    or b
    or c
    or d
    or e
    nop
    or h
    or l
    or [hl]
    or a
    ld l, d
    cp b
    cp c
    cp d
    cp e
    cp h
    xor a
    cp l
    cp [hl]
    cp a
    or e
    ret nz

    pop bc
    jp nz, $b46a

    ret nz

    jp $b8c2


    call nz, $c6c5
    cp h
    cp b
    call nz, $c6c7
    add hl, sp
    add b
    pop de
    ld hl, $0230
    ld c, b
    ld l, a
    ld [$6f42], sp
    add h
    jr nz, jr_006_776d

    jp nz, $9b10

    ldh [$a4], a
    sbc h
    ldh [$a4], a
    and a
    add b
    add hl, bc
    rlca
    add sp, $7f
    ld b, $e0
    inc b
    add e
    adc d
    inc e
    ld h, b
    ldh [rP1], a

jr_006_7749:
    sub b
    db $eb
    and h
    add hl, bc
    add hl, sp
    jp z, Jump_000_3d0c

    ld h, l
    ld b, $1f
    jr z, jr_006_7749

    pop hl
    jr jr_006_7767

    or b
    inc hl
    inc bc
    sbc $11
    ld a, $f2
    ld c, $f4
    ld [$8090], sp
    inc c
    xor d

jr_006_7767:
    inc bc
    nop
    nop
    nop
    ld a, a
    ld a, a

jr_006_776d:
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
    jr jr_006_77a2

    inc c
    inc c
    ld c, $0c
    ld c, $0c
    ld e, $18
    inc c
    nop
    ld [$1e08], sp
    ld e, $2f
    jr z, jr_006_77b7

    inc e
    ld c, $0a
    dec a
    inc a
    ld e, $08

jr_006_77a2:
    inc b
    ld [$0c08], sp
    ld [$3e3e], sp
    rra
    jr @+$1a

    inc e
    jr jr_006_77cb

    db $10
    inc c
    ld e, $3c
    jr nc, jr_006_77ed

    jr nc, @+$1a

jr_006_77b7:
    nop
    ld a, h
    ld a, h
    cp $c6
    rst $28
    adc $ff
    sbc $ff
    or $ff
    and $7f
    ld a, h
    ld a, $3c
    jr c, @+$1a

    inc a

jr_006_77cb:
    inc a
    ld e, $00
    ld hl, sp-$08

Jump_006_77d0:
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

jr_006_77ed:
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

jr_006_780c:
    ld l, h
    ld [hl], e
    ld [hl], a
    ld a, b
    dec sp
    inc a

Call_006_7812:
    dec e
    ld e, $0b
    inc c
    rlca
    ld [$c0c0], sp
    jr nc, jr_006_780c

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
    jr c, jr_006_7888

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

jr_006_7888:
    ld a, [hl]
    ld a, [hl]
    ccf
    jr nc, jr_006_78bd

    jr nc, jr_006_78a7

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

jr_006_78a0:
    jr nc, jr_006_78a0

    ld hl, sp-$04
    ldh a, [$ec]
    ld h, [hl]

jr_006_78a7:
    nop
    ld [hl], b
    ld [hl], b
    add $c6
    ld h, e
    call c, $eedc
    ldh [$60], a
    add $0c
    inc c
    jr nc, jr_006_78ef

    ld a, $38
    ld a, [hl]
    db $76
    rst $38
    db $76

jr_006_78bd:
    db $76
    dec sp
    jr c, jr_006_78f9

    ld e, h
    ld b, h
    cp d
    cp d
    rst $38
    and d
    ei
    cp d
    ld e, l
    ld b, h
    ld a, [hl-]
    jr c, jr_006_78ea

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
    add b
    add b
    sbc h
    sbc h
    and d
    and d
    cp [hl]
    cp [hl]
    and d
    and d
    and d
    and d
    add b
    add b
    db $fc
    db $fc
    ld [bc], a

jr_006_78ea:
    ld [bc], a
    ld d, e
    ld d, d
    xor e
    xor d

jr_006_78ef:
    adc e
    adc d
    ld d, e
    ld d, d
    inc hl
    ld [hl+], a
    inc bc
    ld [bc], a
    inc hl
    ld [hl+], a

jr_006_78f9:
    ld d, e
    ld d, d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld a, [$fa73]
    ld [hl], e
    inc hl
    ld [hl], d
    ei
    ld a, [$fafb]
    inc hl
    ld [hl+], a
    cp [hl]
    cp h
    add d
    add d
    cp [hl]
    sbc h
    and b
    and b
    cp [hl]
    cp [hl]
    add b
    cp [hl]
    add [hl]
    add h
    sbc [hl]
    sbc [hl]
    cp h
    adc h
    adc h
    sub h
    sub h
    and h
    and h
    cp [hl]
    cp [hl]
    add h
    add h
    add b
    add b
    add b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    sbc h
    sbc h
    adc b
    adc b
    adc b
    adc b
    sub h
    sub h
    and d
    and d
    xor d
    xor d
    sub h
    sub h
    ccf
    nop
    adc e
    adc d
    adc e
    adc d
    ei
    ld a, [$8a8b]
    ld [hl], e
    ld [hl], d
    inc bc
    ld [bc], a
    rst $38
    db $fc
    cp $00
    sub h
    sub h
    adc b
    adc b
    sbc h
    adc b
    sbc h
    cp [hl]
    sbc h
    cp [hl]
    sbc h
    sbc h
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    adc b
    sbc h
    sbc h
    ei
    ld a, [$0a0b]
    ei
    ld [hl], d
    add e
    add d
    ei
    ld a, d
    ei
    ld a, d
    add e
    add d
    di
    ld a, [c]
    jp $fb42


    ld a, [$4b43]
    ld c, d
    ld d, e
    ld d, d
    ld h, e
    ld h, d
    cp h
    add d
    add d
    add [hl]
    add h
    adc h
    adc b
    sbc b
    sub b
    ei
    ld [hl], d
    ld a, d
    inc sp
    ld [de], a
    ld h, e
    ld [hl+], a
    jp Jump_006_7f42


    xor a
    and [hl]
    xor c
    xor c
    xor c
    xor a
    and [hl]
    sbc [hl]
    sbc [hl]
    add h
    add h
    add h
    add h
    and h
    and h
    cp h
    sbc b
    xor d
    and d
    and [hl]
    and [hl]
    sbc [hl]
    sbc h
    add d
    add d
    ld a, [c]
    ld a, a
    nop
    adc c
    adc b
    sub l
    sub l
    and e
    and e
    xor e
    xor e
    sub l
    db $eb
    jp z, Jump_000_2a2b

    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    db $eb
    jp z, $9595

    adc c
    sbc l
    adc b
    sbc l
    cp a
    sbc l
    cp a
    sbc l
    sbc l
    cp a
    cp [hl]
    cp a
    cp a
    adc c
    sbc l
    sbc l
    sbc l
    sbc l
    ld a, e
    ld [hl-], a
    ld c, e
    ld c, d
    ld b, e
    ld b, d
    ld b, e
    ld b, d
    di
    ld a, [c]
    di
    ld [hl], d
    set 1, d
    xor e
    and h
    and h
    xor b
    xor b
    or b
    or b
    xor b
    xor b
    and h
    and h
    rst $38
    add b
    ld [$d595], a
    xor d
    ld [bc], a
    xor a
    ld d, d
    ld d, a
    xor d
    ld c, e
    ld c, d
    dec hl
    ld a, [hl+]
    dec de
    ld a, [de]
    dec hl
    ld a, [hl+]
    ld c, e
    ld c, d
    ccf
    nop
    rst $38
    add e
    adc a
    add a
    add d
    db $e3
    jp nz, $b0a0

    sub b
    cp b
    dec bc
    ld a, [de]
    inc de
    ld a, [hl-]
    nop
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

jr_006_7a24:
    ret nz

    ld b, b
    ldh [$60], a
    ret nc

    ld [hl], b
    ldh a, [$50]
    sbc d
    adc h
    sub b
    sbc b
    adc b
    or b
    and b
    or b
    and b
    or b
    adc b
    or b
    sub b
    sbc b
    sbc d
    adc h
    or e
    ld h, d
    inc de
    ld [hl-], a
    inc hl
    ld a, [de]
    dec bc
    ld a, [de]
    dec bc
    ld a, [de]
    inc hl
    ld a, [de]
    inc de
    ld [hl-], a
    or e
    ld h, d
    adc b
    sbc h
    add h
    adc [hl]
    add d
    add a
    add c
    add e
    add d
    add a
    add h
    adc [hl]
    adc b
    sbc h
    sub b
    cp b
    inc hl
    ld [hl], d
    ld b, e
    ld [c], a
    add e
    jp nz, $8203

    add e
    jp nz, $e243

    inc hl
    ld [hl], d
    inc de
    ld a, [hl-]
    ld a, [de]
    dec d
    rra
    db $10
    rra
    db $10
    rla
    jr jr_006_7a84

    ld [$0304], sp
    inc b
    ldh a, [$50]
    or b
    ld d, b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_006_7a24

jr_006_7a84:
    ld h, b
    ret nz

    ld b, b
    add b
    ld b, b
    adc a
    add a
    add b
    add e
    db $e3
    and b
    or b
    dec bc
    ld a, [de]
    rlca
    rlca
    rrca
    inc c
    ld d, $14
    inc h
    ld h, $46
    ld b, h
    db $fc
    cp $ea
    sub h
    ld b, $02
    ld a, [$0af2]
    ld a, [bc]
    ld a, [$8272]
    add d
    ld a, [$06fa]
    ld a, [$121a]
    ld a, d
    ld a, d
    ld a, [c]
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ld d, d
    sub d
    sub d
    ld a, [$12fa]
    ld [de], a
    ld a, [c]
    adc d
    adc d
    ld a, [$0672]
    ld bc, $0101
    ld bc, $ff01
    ld b, b
    ld h, l
    ld b, l
    db $ec
    add sp, $02
    cp [hl]
    cp [hl]
    ld [hl], l
    ld h, l
    ld a, l
    ld d, l
    ld l, l
    ld c, l
    ld [hl], h
    ld h, h
    ld d, h
    ld d, h
    ld [hl], h
    ld h, h
    rst $20
    dec b
    dec b
    ld [$ea4a], a
    xor d
    xor $e4
    cp [hl]
    adc h
    ld [$888c], sp
    db $ec
    jp z, $8c8a

    call z, RST_00
    ld b, [hl]
    ld b, [hl]
    nop
    ld b, b
    and h
    and h
    ld [$00ea], a
    ld [bc], a
    ld bc, $6474
    ld c, d
    db $ec
    db $ec
    ld [$1808], sp
    jr jr_006_7b0f

    ld [$183c], sp
    inc h
    inc h
    ld [$1010], sp

jr_006_7b0f:
    inc a
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
    add [hl]
    di
    cpl
    ld h, a
    rst $10
    dec de
    sub b
    ld [de], a
    ld a, b
    add c
    db $db
    ld h, b
    ld a, [bc]
    ld a, c
    dec l
    di
    ld a, [c]
    ld b, l
    push af
    jp nz, $a63b

    ld [hl], $66
    sla b
    scf
    sbc h
    rrca
    rra
    ld e, e
    sbc c
    jp z, $99f3

    add hl, sp
    add b
    ld [hl], e
    and b
    sbc [hl]
    ld d, e
    inc bc
    db $d3
    db $ed
    db $eb
    dec a
    adc [hl]
    ld c, [hl]
    ret nc

    dec e
    and c
    inc a
    nop
    rst $00
    ld e, c
    pop af
    add [hl]
    add sp, $4d
    call nc, Call_000_0690
    db $e3
    jr jr_006_7b83

    ldh [$84], a
    dec de
    ld a, b
    ld c, [hl]
    add c
    rrca
    and h

jr_006_7b74:
    dec bc
    ld a, a
    cp d
    dec c
    ld h, $ce
    add $c8
    inc b
    ldh a, [$ad]
    and l
    db $fc
    jr z, jr_006_7b74

jr_006_7b83:
    ld [$ef6a], sp
    nop
    ld l, e
    db $dd
    add $64
    ld l, b
    ld l, a
    db $10
    dec b
    ret z

    ld h, a
    dec d
    cp d
    and b
    ld e, d
    jp z, $9e72

    sub [hl]
    inc e
    and b
    ld h, $be
    inc e
    ld h, b
    sub c
    or d
    adc h
    ld [hl], d
    jr c, jr_006_7c15

    set 0, e
    add a
    ld b, $67
    db $dd
    jp nc, Jump_000_0867

    jp $6b92


    ret


    add h
    xor [hl]
    db $e3
    ld [hl], c
    and d
    ld [hl], d
    ret nc

    ld [hl], l
    add h
    daa
    ld e, [hl]
    ret


    pop bc
    rla
    ld l, l
    rlca
    add hl, bc
    rlca
    inc hl
    ld b, $ce
    inc e
    ld b, b
    cp h
    jp nc, $e03d

    inc b
    dec a
    cp $07
    ld e, e
    or a
    scf
    adc a
    ld c, [hl]
    ld [hl], l
    ld c, b
    or $67
    ld c, c
    xor [hl]
    ld a, [hl]
    dec e
    nop
    dec e
    db $ec
    inc a
    ld a, [$f0bd]
    ld a, $9b
    call c, $d71d
    dec e
    xor c
    dec e
    cp d
    inc de
    and h
    pop de
    db $dd
    ld l, a
    or b
    rlca
    or l
    ld e, $94
    ld a, [de]
    sub b
    ld l, e
    and d
    ld a, l
    inc b
    rlca
    reti


    sub b
    ld l, l
    ld [hl], c
    ld c, $48
    dec b
    push af
    ldh a, [$fe]
    sbc c
    rra
    ld a, e
    dec de
    ldh [$59], a
    or d
    xor a
    ld a, [$781f]
    ld h, [hl]

jr_006_7c15:
    and c
    push bc
    jp c, Jump_006_5439

    daa
    ld l, e
    ld l, [hl]
    or b
    dec c
    jr nz, jr_006_7c47

    rst $08
    ld c, $08
    ld a, [de]
    ld [hl], b
    ld c, l
    ld e, $1b
    jp z, Jump_000_3038

    ld l, l
    ld h, c
    jr c, jr_006_7c90

    ld l, h
    ld b, b
    call nc, Call_000_0e37
    call c, $11b0
    pop bc
    ld c, l
    db $db
    or a
    dec bc
    db $d3
    ld [hl-], a
    ld h, e
    inc e
    jr nz, jr_006_7c56

    ld d, c
    add [hl]
    pop af
    add hl, sp

jr_006_7c47:
    rra
    or h
    ld h, b
    inc sp
    ld hl, sp+$63
    add hl, hl
    ret z

    cp e
    inc e
    add b
    dec l
    ld e, c

jr_006_7c54:
    xor h
    dec de

jr_006_7c56:
    ld b, h
    inc bc
    sub e
    add a
    inc e
    ld [$a2d6], sp
    ld e, h
    rrca
    ld e, $43
    ld bc, $04c5
    rst $10
    jp nz, $8073

    ld c, l
    add e
    inc e
    ld [hl], b
    inc bc
    adc a
    ld bc, $02d1
    inc c
    cp l
    dec de
    inc c
    jr c, jr_006_7cd8

    sbc e
    ld [hl], $38
    ld e, b

jr_006_7c7c:
    ld e, h
    ld l, e
    jp c, Jump_000_1a07

    ld e, h
    adc [hl]
    dec e
    jr nc, jr_006_7cbc

    ret nz

    sbc h
    ld c, h
    ld c, l
    ret z

    ld bc, $e4cc
    db $db
    and b

jr_006_7c90:
    di
    ld [hl], h
    ld l, l
    pop bc
    xor a
    ld e, a
    add e
    xor h
    add e
    rst $00
    or a
    or d
    rlca
    ld d, c
    scf
    ld c, d
    db $eb
    jr nc, jr_006_7c54

    ld [$003c], a
    ld [hl], a
    sbc e
    jp z, $e540

    ld [de], a
    ld e, h
    adc a
    scf
    adc [hl]
    rst $30
    ld c, b
    cp b
    db $dd
    db $76
    ld h, $1d
    inc a
    rst $08
    jr z, jr_006_7c7c

    rst $08

jr_006_7cbc:
    ret nc

    ld c, d
    or $86
    rla
    ld bc, $a9ac
    db $e3
    ld [bc], a
    rrca
    inc e
    ld hl, $952f
    ld a, h
    and b
    ld a, c
    ld [hl], b
    add b
    pop af
    ld bc, $860b
    rst $18
    add hl, sp
    ld b, e
    rst $20

jr_006_7cd8:
    ld l, e
    rst $08
    pop bc
    inc hl
    jp hl


    rst $28
    ld c, a
    rlca
    xor c
    ld [bc], a
    rrca
    ld e, b
    ld e, $b0
    ld c, a
    ld d, c
    ld hl, $c01e
    ld b, d
    ld b, e
    pop de
    call nz, $ee09
    nop
    add e
    db $dd
    ld b, c
    ld bc, $84f0
    sub a
    ld [c], a
    rst $18
    ld a, [de]
    ld [$7d4f], sp
    inc b
    daa
    adc $82

jr_006_7d03:
    ld a, [$9f3c]
    ld c, d
    rrca
    ld b, b
    rlca
    sbc [hl]
    adc a
    ld b, l
    ld bc, $86e7
    pop af
    scf
    or e
    cp $c0
    db $10
    rra
    ld l, [hl]
    ld c, a
    cp l
    rra
    ld a, d
    rrca
    and b
    rra
    jr nc, jr_006_7d9f

    sub d
    ld sp, $2bef
    and $47
    ld [$4f82], a
    pop de
    ld e, $fa
    inc de

jr_006_7d2e:
    call c, Call_006_7ec9
    cp h
    ccf
    jp nz, $e47e

    ld a, a
    jr nz, @-$40

    adc c
    ld a, $fa
    jr nc, jr_006_7d2e

    dec c
    dec de
    rst $38
    inc b
    daa
    ld bc, $b1c1
    ld hl, $b501
    sub d
    dec de
    db $e3
    ld l, [hl]
    ld l, d
    ld e, e
    di
    ld bc, $02b8
    db $10
    cp e
    ld [hl], h
    adc h
    daa
    add hl, bc
    ld b, c
    jp $4e00


    push hl
    inc hl
    ld bc, $42c4
    ld b, b
    pop af
    ld [hl-], a
    jr nc, jr_006_7d03

    dec a
    inc b
    dec sp
    ld a, b
    db $ed
    ldh a, [$9c]
    db $10
    db $10
    sbc h
    ld d, l
    ld [de], a
    ld [hl], c
    ret z

    ld [hl], c
    ret nc

    ld h, h
    pop bc
    rrca
    ld e, $87
    rra
    rlca
    inc e
    add d
    ld [hl], d
    db $10
    ld [hl], c
    add sp, $27
    inc hl
    inc b
    daa
    add hl, de
    ld b, c
    ret z

    jr nz, jr_006_7da5

    ld [hl], $11
    ret z

    and b
    rla
    add hl, de
    ld l, e
    or [hl]
    xor d
    adc $cc
    rlca
    ld b, $8b
    inc a
    xor b
    add hl, bc
    rlca

jr_006_7d9f:
    inc l
    ld [bc], a
    ld b, c
    jp z, $bc80

jr_006_7da5:
    call $c072
    cpl
    dec [hl]
    ld [hl-], a
    inc a
    call c, $89c2
    adc l
    db $e4
    dec hl
    call z, Call_006_72c2
    ld a, b
    ld e, l
    ld [bc], a
    di
    ld d, b
    sbc h
    and [hl]
    ld de, $b0cc
    dec e
    ld e, $11
    call Call_000_1d30
    ld h, $1c
    jp z, $d209

    pop hl
    call $9d20
    ld [hl], $12
    sbc h
    ld [hl], a
    ld [de], a
    dec sp
    daa
    push af
    ld b, l
    rrca
    ld d, h
    rst $10
    ld d, l
    pop bc
    add hl, bc
    push de
    ld [hl], d
    ld [hl], l
    ld d, h
    ld [hl], l
    ld [hl], h
    rlca
    ld d, l
    inc c
    sbc h
    rst $10
    add sp, $1c
    inc de
    rst $10
    call nz, $ec60
    ld sp, $138f
    dec e
    add b
    daa
    ld h, d
    ld bc, $881d
    dec h
    rst $10
    di
    dec e
    ld a, b
    daa
    ld c, [hl]
    adc c
    rst $10
    jp nz, $8076

    sub d
    db $76
    inc e
    ld b, b
    ld [hl], e
    rst $28
    db $76
    inc a
    ld c, e
    add l
    call z, $8e1d
    ld b, e
    rst $10
    jp nz, Jump_006_7610

    ld l, l
    jr jr_006_7e29

    rst $30
    inc d
    ld de, $82d8
    ld de, $b4d7
    rst $30
    ld d, b
    sbc l

jr_006_7e25:
    sbc h
    ld h, $7d
    ret z

jr_006_7e29:
    db $76
    inc c
    sub c
    db $dd
    ld [de], a
    scf
    ld h, h
    ld [$6b47], sp
    add a
    ld [hl], d
    rlca
    ld a, c
    ret


    db $db
    ld h, c
    db $dd
    nop
    ld c, c
    db $db
    pop hl
    db $dd
    add c
    ldh [rLCDC], a
    inc b
    jr c, jr_006_7e25

    cp l
    jp z, $9f09

    ld bc, $10df
    sbc l
    ld a, d
    dec a
    jp c, Jump_000_3a83

    ld a, a
    ld a, $34
    inc h
    ld b, d
    nop
    ld e, e
    ld bc, $0000
    nop
    nop
    ld b, d
    nop
    ld e, e
    ld bc, $0000
    add h
    nop
    ld b, d
    nop
    ld e, e
    ld bc, $0000
    and b
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

Call_006_7ec9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_006_7f42:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $06
