; Disassembly of "Addams Family, The (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, @+$03

    ld a, $7f
    ld e, b
    inc e
    inc de
    ld b, a
    and l
    ld a, c
    db $fd
    inc h
    ld a, a
    ld b, b
    ld b, h
    ld c, a
    rst $28
    ldh a, [$03]
    db $fd
    db $fc
    inc bc
    ld bc, $d52a
    ld d, c
    ld [hl], l
    ld a, e
    ld hl, sp+$03
    rra
    ld a, a
    ld b, l
    ld e, a
    rst $20
    db $e4
    inc e
    ld l, b
    ld d, l
    inc h
    ld d, a
    sbc a
    sub b
    ld [hl-], a
    or e
    db $f4
    ld d, h
    ld a, $fe
    db $18, $bc
    inc bc
    ld l, a
    and c
    ld a, e
    ld hl, sp+$27
    ld hl, $4590
    ld h, b
    ld c, b
    add h
    ld b, h
    ld [$2244], sp
    sbc [hl]
    ld c, a
    add b
    inc d
    rlca
    ld a, [$e001]
    ld [hl], b
    ld b, d
    sbc a
    ld [c], a
    ld hl, $5ac0
    pop af
    ld d, [hl]
    db $fc
    ld [hl], l
    add a
    db $dd
    ld [hl], e
    cp b
    or e
    cp $77
    inc hl
    xor e
    ld d, l
    ldh [$75], a
    ld a, b
    xor b
    dec c
    ld a, [$7d06]
    inc bc
    ld e, $8f
    sub a
    ld c, e
    call z, Call_005_6724
    ld [de], a
    or e
    add hl, bc
    add hl, bc
    add h
    cp b
    ret nz

    ld b, b
    ld h, b
    cpl

Jump_005_407f:
    or b
    db $10
    rrca
    di
    db $fc
    ld a, [de]
    ld b, $1f
    rlca
    add a
    ret nz

    ld hl, $0010
    ld b, d
    rst $28
    ld [bc], a
    xor [hl]
    push de
    rst $00
    db $e3
    db $fc
    dec b
    ld l, e
    dec b
    add [hl]
    ld a, h
    inc a
    ld sp, $cb58
    or $3a
    rst $38
    sub b
    rst $00
    rst $18
    add b
    add hl, sp
    ld c, h
    xor [hl]
    ld e, e
    inc l
    rlca
    inc bc
    add b
    ret nz

    ld a, c
    ld c, h
    inc [hl]
    inc c
    ld a, [hl]
    rst $38
    ld e, a
    cp a
    reti


    db $ec
    or $0b
    dec b
    add c
    xor b
    call nc, $35bc
    ld a, b
    call z, Call_000_2c5e
    ld h, b
    jr c, jr_005_40c7

jr_005_40c7:
    ld [bc], a
    ld [hl], $5b
    daa
    inc bc
    add e
    ld d, b
    add b
    ld b, b
    ld h, a
    or [hl]
    sbc e
    dec a
    xor $f3
    ld a, [hl]
    db $10
    rlca
    add h
    rlca
    ld [c], a
    nop
    ld hl, sp-$80
    cp $40
    rra
    sub b
    dec de
    ld [$fe02], a
    ld [$d02d], a
    xor h
    db $f4
    and b
    ld [c], a
    ld b, $31
    add hl, bc
    db $76
    rlca
    ld e, a
    add a
    ei
    ld c, l
    pop af
    ld a, [$fffc]

Call_005_40fb:
    rst $18
    xor d
    ldh [$bc], a
    ld [hl], l
    db $dd
    sub e
    ret nz

    db $10
    db $fc
    ld [bc], a
    ld a, $00
    adc a
    ldh [rNR13], a
    ldh a, [rDIV]
    ei
    ld [bc], a
    cp [hl]
    add b
    ld a, $2f
    dec h
    ld [hl], l
    ret c

    rst $38
    ld a, h
    add c
    inc c
    ld h, h
    ld h, $eb

jr_005_411d:
    add b
    db $fd
    ld a, $20
    inc bc
    db $ec
    db $fc
    ld b, l
    jp $f0d3


    cp [hl]
    rra
    res 0, c
    db $fc
    and c
    rra
    jp z, $fc41

    cp h
    rra
    ldh [$88], a
    ld hl, $19df
    rrca
    pop af
    ld [$26ff], sp
    ld h, c
    adc b
    ld l, b
    ld b, e
    ccf
    add $75
    ld [hl], l
    rst $18
    ld a, b
    ld e, l
    rst $20
    ld l, l
    db $db
    ld bc, $48cc
    ld [hl], c
    add a
    ld a, l
    sub d
    inc [hl]
    ld d, h

jr_005_4155:
    ld c, c
    ccf
    ret nz

    sub e
    db $fc
    inc e
    ccf
    jp $fde3


    and b
    inc c
    rst $08
    pop af
    ret nz

    rst $38
    add c
    ld bc, $f0d3
    db $fd
    ccf
    rlca
    db $d3
    ld a, [c]
    ld b, $27
    ld c, a
    ret z

    ld [$8f06], a
    inc hl
    call nz, Call_000_035e
    add b
    jr nz, jr_005_4183

    ld hl, sp+$23
    jr nc, jr_005_411d

    inc sp
    ld l, l

Jump_005_4182:
    pop de

jr_005_4183:
    nop
    inc h
    di
    dec c
    ret nc

    rrca
    nop
    ld bc, $0098
    db $10
    and l
    adc c
    ld l, d
    ld e, c
    sub l
    push hl
    ld e, c
    ld d, h
    inc h
    nop
    nop
    add $d0
    jr jr_005_419d

jr_005_419d:
    inc bc
    nop
    nop
    ld a, [hl]
    ld b, c
    ld d, e
    ret nc

    inc b
    nop
    ld [$00c2], sp
    inc e
    nop
    inc hl
    ret z

    nop
    ld a, h
    nop
    ld h, c
    ld b, b
    db $f4
    ld e, c
    ld [hl], h
    sub h
    dec e
    ld [hl], $15
    ld b, [hl]
    ld e, l
    and a
    reti


    and $7f
    ld [hl], h
    push de
    sub e
    ret nz

    nop
    ccf
    xor b
    add hl, bc
    ld b, c
    ld b, d
    ld l, [hl]
    adc [hl]

jr_005_41cb:
    jr nz, jr_005_4155

    ldh [rP1], a
    rrca
    add b
    jr nz, jr_005_41cb

    and c
    ld e, $ea
    ld [de], a
    sub e
    and c
    ld l, b
    inc d
    dec c
    jp nz, $c15b

    dec b
    ret nz

    ld b, b
    ld [$0304], sp

Call_005_41e5:
    ld b, b
    and b
    inc d
    inc e
    push af
    ld d, l
    add b
    sbc d
    add sp, $50
    ld a, [bc]
    add h
    add c
    rrca
    add e
    ld a, [c]
    xor d
    ld a, $0f
    ld a, [$58b5]
    ld l, [hl]
    call z, Call_000_0d04
    rst $20
    inc bc
    nop
    ld b, b
    jr nz, jr_005_4209

    ld bc, $2080
    db $10

jr_005_4209:
    ld [bc], a
    ld [bc], a
    ret nz

    ld d, b
    jr z, jr_005_4210

    ld h, c

jr_005_4210:
    ld c, d
    nop
    ld bc, $3fda
    rst $10
    xor e
    ld a, [de]
    push bc
    ld a, [hl]
    ld [hl+], a
    sub l
    ld h, c
    ld e, e
    ld d, [hl]
    db $d3
    call nc, $41fd
    nop
    inc l
    push hl
    db $10
    ld [hl+], a
    xor h
    rrca
    di
    nop
    rst $38
    inc a
    ld c, a
    di
    db $dd
    db $e4
    ld h, b
    ld d, c
    ld l, b
    ld [hl], b
    db $e3
    ccf
    adc $7b
    add [hl]
    jp c, $83b2

    jp $c70c


    ccf
    pop bc
    add b
    ld h, d
    ld [c], a
    adc d
    ld b, a
    jp nz, $830c

    ccf
    jp $f2c0


    add sp, $04
    ld c, $f6
    add hl, bc
    ld c, e
    inc bc
    ld h, $24
    inc d
    ld [$d1b6], sp
    ld [hl], e
    ld hl, sp-$44

jr_005_425f:
    cpl
    ld l, $ab
    xor b
    ld [$e26c], sp
    add a
    sub l
    push hl
    ld d, l
    sub l
    and b
    add b
    jr nz, jr_005_42dd

    push de
    jp nc, $a38c

    ld h, a
    sub l
    db $76
    push hl
    cp c

jr_005_4278:
    daa
    pop af
    ld d, d
    ld a, h
    sbc c
    add $31
    sub l
    ld l, l
    sbc a
    ld [hl], a
    adc e
    ld a, [c]
    jp Jump_000_2c1f


    dec bc
    ld a, [c]
    rst $38
    add hl, de
    add $71
    ld h, d
    ld a, a
    inc de
    ld e, l
    ld a, [de]
    inc e
    ld a, e
    jr nz, jr_005_425f

    sbc b
    ld b, h
    ld de, $4088
    call nc, $e2bb
    ld sp, hl
    call $b431
    ld [$279e], sp
    or d
    jr nz, jr_005_4278

    dec sp
    rst $08
    inc sp
    ld c, h
    ei
    inc [hl]
    set 1, a
    db $fc
    di
    inc a
    ld h, c
    ld bc, $7be0
    ld b, c
    call $61a5
    sbc e
    ld c, e
    db $d3
    inc [hl]
    call $f824
    xor d
    adc a
    jp Jump_005_5333


    inc sp
    dec [hl]
    dec c
    scf
    ld c, e
    rra
    add a
    db $eb
    bit 0, c
    ccf
    dec [hl]
    dec l
    ld d, e
    ld e, a
    jp nc, Jump_000_3d2a

    add l
    add d
    ld h, l

jr_005_42dd:
    ld [$0512], sp
    and [hl]
    jr c, jr_005_4331

    inc de
    call nz, Call_000_3ef1
    ld c, a
    sub e
    db $f4
    db $fd
    or a
    rla
    ld [hl], l
    ld e, a
    ld l, a

Jump_005_42f0:
    db $db
    db $76
    cp l
    and l
    and [hl]
    reti


    sbc c
    ld c, l
    dec h
    sub h
    ld h, [hl]
    ret nz

    ld h, b
    ld a, [de]
    ld sp, hl
    cp d
    add e
    nop
    ret nz

    ld h, b
    jr jr_005_4320

    or d

jr_005_4307:
    ld h, b
    sbc b
    cp [hl]
    ld [hl], h
    or c
    adc h
    ld h, e
    jr jr_005_4356

    ld e, $13
    add h
    ld l, d
    ld c, h
    ld c, $13
    add d
    cp d
    xor a
    sbc l
    ei
    adc a
    and $06
    inc b

jr_005_4320:
    add hl, bc
    sub h
    ld [c], a
    db $f4
    or [hl]
    db $ec
    nop
    ld l, [hl]
    ld e, d
    adc [hl]
    ld c, a
    add d
    ldh [$c6], a
    ld b, $e1
    rst $08

jr_005_4331:
    rst $20
    rst $30
    ret nz

    dec c
    sbc c
    ld b, c
    sub h
    or l
    ld e, a
    and a
    ld b, b
    add b
    ldh [$38], a
    inc e
    rlca
    inc bc
    add b
    db $e3
    add d
    adc $c3
    ld [hl], b
    call c, $ef36
    inc bc
    ld h, [hl]
    nop
    rst $18
    ldh a, [$0d]
    db $fd
    ei
    ld a, [hl]
    ld b, c
    or e

jr_005_4356:
    ld b, $7b
    and c
    jr nc, jr_005_4376

    ld h, c
    ret nz

    ld [hl], b
    db $ed
    sbc b
    ld [bc], a
    ld [hl], b
    sbc h
    cpl
    adc e
    xor $f4
    ld [hl], $ed
    dec sp
    ld h, $65
    sbc e
    inc a
    rst $08
    inc sp
    db $ec
    ei
    ld [hl], $fd
    db $d3
    ld l, a

Call_005_4376:
jr_005_4376:
    cp d
    adc $fa
    ld c, [hl]
    sub e
    cp d
    xor $b8
    ld [hl+], a
    jr jr_005_4307

    ld sp, $9fbe
    xor e
    db $eb
    ld sp, hl
    ret nc

    ld l, $db
    push de
    inc bc
    cp l
    db $76
    ld [hl], d
    ld l, e
    ld l, [hl]
    db $fc
    add l
    ld e, l
    ld c, e
    db $f4
    rst $38
    sub b
    ret c

    ld a, $0f
    cp e
    ld b, h
    dec bc
    db $dd
    or $fd
    sub e
    inc c
    jp $cc30


    inc sp
    inc c
    jp $cc30


    ld [hl], $6f
    sbc a
    ld h, b
    sbc c
    sbc [hl]
    res 6, h
    db $ed
    cp h
    or [hl]
    db $db
    or b
    set 0, h
    ld hl, $6308
    daa
    inc d
    cp h
    dec h
    dec b
    ccf
    pop bc
    nop
    ld b, d
    push af
    pop hl
    ret nz

    ld a, b
    ldh [$03], a
    ld b, c
    ld e, [hl]
    ld h, $05
    nop
    ld a, a
    add b
    rra
    ldh [rNR41], a
    db $10
    ld [bc], a

jr_005_43d8:
    ld c, $00
    add d
    jp nz, Jump_005_60a1

    jr nz, jr_005_43fc

    ld a, [hl-]
    inc e
    db $fc
    rlca
    add e
    jp $02ee


    ld sp, hl
    ld a, l
    nop
    rst $38
    ccf
    and b
    jr nz, jr_005_43d8

    inc b
    inc bc
    nop
    ld a, [hl]
    ldh a, [$78]
    ld a, $00
    rst $28
    rst $00
    ldh [rTIMA], a

jr_005_43fc:
    rst $38
    ld [bc], a
    add e
    adc b
    inc b
    db $10
    ld [hl], b
    ld [$4304], sp
    jr nc, @-$66

    call z, Call_000_1321
    ld c, c
    xor c
    ld [bc], a
    ld l, [hl]
    ld b, b
    ld sp, $8cce
    ld h, [hl]
    ld [hl], h
    pop bc
    db $fc
    rst $38
    ld [bc], a
    sub h
    ld b, b
    ldh [$4e], a
    rlca
    inc bc
    and c
    ret nc

    db $ec
    add hl, bc
    ret


    ld e, a
    add b
    add hl, sp
    inc l
    sbc l
    db $fd
    daa
    sub h
    ld d, h
    xor d
    ld [hl], l
    ld c, d
    xor l
    ld c, $83
    ld e, b
    nop
    inc bc
    ld bc, $8489
    call nz, $c084
    ld h, b
    sbc d
    jp nz, $1225

    ld d, a
    push bc
    sbc d
    rst $08
    ld l, b
    or e
    ccf
    ld e, a
    rst $00
    db $d3
    ldh a, [$f4]
    ld a, l
    ld l, a
    cp b
    call c, Call_005_722e
    ld e, e
    inc hl
    ld a, [c]
    db $d3
    ld l, c
    or [hl]
    jp c, $b7ed

    dec hl
    add sp, -$07
    ld l, $7f
    ret nz

    ld h, b
    or b
    jr c, @+$4e

    dec de
    ccf
    rrca
    adc b
    call nz, $99e2
    rst $30
    adc h
    ld l, l
    sbc [hl]
    db $fd
    sub b
    cp d
    ld e, l
    pop af
    rst $10
    sbc e
    ld [hl], l
    rst $08
    inc hl
    ld l, a
    rst $00
    ld e, l
    ld l, d
    sbc c
    dec de
    db $d3
    ld a, [$6bd7]
    add e
    and d
    ld de, $7110
    db $10
    adc e
    ld b, l
    and h
    ld [$0380], sp
    ld a, d
    adc l
    ld l, $9c
    add b
    ld [$0074], sp
    ld e, $00
    daa
    stop
    ld a, $80
    ld c, a
    db $ed
    rst $30

jr_005_44a3:
    ld a, e
    adc b
    ret c

    inc bc
    ld c, h
    nop
    ld h, b
    ld [bc], a
    inc [hl]
    sbc e
    push af
    rla
    inc b
    db $10
    ld [$4ad7], sp
    ld c, $f5
    ld h, $ed
    ld c, e
    sbc c
    jr z, jr_005_44a3

    ld l, e
    ld h, b
    ld a, [c]
    sbc b
    rra
    ld d, d
    add l
    ret nc

    ld a, a
    di
    cp c
    ld a, h

Jump_005_44c8:
    rst $10
    ei
    db $dd
    ld a, [$7e77]
    rst $30
    jp c, Jump_000_2ffe

    rlca
    sub a
    ret z

    ld [$2205], sp
    ld de, $915e
    ld b, b
    xor e
    db $d3
    db $eb
    or $fb
    db $fd
    ld e, [hl]
    ret nz

    ld d, b
    ld hl, $e9f5
    ei
    ld a, [$0f5f]
    xor [hl]
    sbc b
    adc b
    inc hl
    nop
    ld b, b
    ld [hl-], a
    jr z, @-$6f

    ld bc, $f000
    and h
    ccf
    nop
    nop
    ld a, [c]
    inc a
    cp a
    inc c
    rrca
    di
    jr @+$01

    rlca
    rrca
    pop de
    ldh a, [$fd]
    ld a, $0f
    sub e
    ret nz

    pop af
    ld [bc], a
    pop bc
    ld a, [c]
    ld e, h
    cp a
    dec b
    jp $bcf0


    ld a, a
    dec bc
    add a
    ld [c], a
    or b
    db $fc
    ld a, [bc]
    rlca
    add b
    and h
    ld a, c
    jr c, jr_005_4532

    inc de
    db $10
    push bc
    ld [hl+], a
    ld [$5090], sp
    dec d
    dec bc
    ld [bc], a
    pop de
    ld [hl], b
    ld e, l
    cpl

jr_005_4532:
    dec bc
    pop de
    ldh [$79], a
    nop
    inc d
    ld d, e
    ldh [rNR23], a
    ccf
    and b
    di
    call nz, Call_000_3fff
    rrca
    di
    ld sp, hl
    ld d, d
    ld a, a
    sbc d
    ld [hl], d
    nop
    adc b
    ld [hl-], a
    inc b
    inc bc
    add b
    ld [hl+], a
    inc a
    adc a
    db $e3
    ld sp, hl
    ld h, l
    ld a, $0f
    inc de
    call nz, Call_000_38e2
    adc h
    ld d, e
    inc d
    adc e
    ld [hl+], a
    ret


    ld [hl], d
    ld e, h
    and b
    inc a
    dec b
    ld bc, $90e0

jr_005_4568:
    ld l, $04
    and c
    ld a, b
    ret z

    scf
    ld h, $49
    sub b
    jp z, $8237

    and c
    add sp, -$53
    ccf
    ld b, d
    or c
    xor $1f
    adc c
    ld c, d
    inc bc
    cp $1f
    add a
    rst $08
    ld b, e
    call nc, Call_000_3bec
    ld c, l
    jp Jump_000_3576


    nop
    nop
    inc d
    ld c, $43
    ccf
    rrca
    ret c

    ld a, h
    xor a
    sbc h
    rst $00
    ld sp, hl
    ret nc

    ld a, a
    and c
    ld hl, $86f8
    add c
    add l
    ld h, c
    ld a, b
    and [hl]
    dec hl
    adc e
    ld h, d
    ld hl, sp-$3c
    xor a
    dec hl
    call Call_005_7cf3
    cp a
    cpl
    jp nc, Jump_005_7584

    ld d, a
    ld c, d
    ld h, $69
    sub h
    call c, Call_000_009a
    add b
    ld [hl], b
    ld [$0e3f], sp
    add e
    ld a, [c]
    ld l, b
    ld d, l
    ld h, h
    jp hl


    ld b, d
    ld d, d
    sub l
    ld h, $42
    jr nz, jr_005_4568

    xor b
    add b
    and b
    ld a, b
    ld c, b
    rla
    ld a, [hl+]
    ld a, [$68d2]
    dec bc
    rlca
    jp nz, $f8a0

    adc c
    and $a0
    or h
    ld a, l
    ld a, [hl+]
    rst $08
    cp c
    ret nz

    ld a, b
    adc h
    db $e3
    ld d, c
    ldh a, [$7d]
    and b
    ld l, h
    sub e
    or $81
    sbc a
    ld b, d
    ld bc, $99fe
    nop
    rlca
    ldh a, [rP1]
    ld b, b
    or h
    ld c, b
    ld [bc], a
    db $fd
    xor [hl]
    ld d, l
    db $dd
    ld h, a
    ld d, d
    jp c, $a569

    ld l, c
    ld h, d
    ld e, d
    and l
    add hl, hl

jr_005_460a:
    ld l, d
    ld h, d
    sbc d
    jr nz, jr_005_4638

    jp hl


    sbc h
    sbc $b9
    adc l
    jp z, $a4ca

    ld a, $0f
    ret nz

    nop
    db $fc
    nop
    add b
    ld l, e
    cp h
    nop
    ld a, $2d
    add b
    ld bc, $4aa3
    sub d
    ret nz

    ld [bc], a
    sbc e
    nop
    ld [de], a
    or h
    jr nz, jr_005_4637

    ld bc, $f0c1
    ld [hl], b
    inc a
    inc c
    rlca

jr_005_4637:
    nop

jr_005_4638:
    add h
    ld h, c
    jr jr_005_460a

    ld sp, $c30c
    ld b, a
    dec de
    db $eb
    ld a, [$71f7]
    ld a, [de]
    ld h, c

jr_005_4647:
    adc b
    ld [c], a
    pop bc
    jp $c711


    inc bc
    ret nz

    ld b, b
    nop
    ld e, $f1
    ld [$7402], sp
    jr nz, @-$3e

    jr nc, @+$11

    ld bc, $78c0
    ld b, $2a
    jr nc, jr_005_4691

    adc h
    inc hl
    adc b
    ld b, d
    add hl, de
    rlca
    inc b
    ld bc, $1d04
    dec b
    ld e, b
    sub b
    ld e, h
    and b
    ld [$3203], sp
    ld e, h
    adc a
    ld hl, $4a70
    inc bc
    add b
    dec e
    ld [hl], l
    ld d, b
    adc h
    ret nz

    nop
    bit 2, b
    ld [hl], c
    ld [$bc42], sp
    ld c, b
    and d
    dec sp
    inc e
    add b
    nop
    ld [de], a
    inc h
    adc c
    ld l, e
    xor c

jr_005_4691:
    sub d
    call c, $a6ff
    ld b, l
    rst $10
    dec a
    db $dd
    ret z

    ld b, $83
    and c
    ld b, l
    inc [hl]
    adc a
    inc h
    add h
    ld a, b
    ld a, $14
    ld d, e
    ld [$4fe2], sp
    ret


    db $76
    jp hl


    cp a
    ld l, c
    pop af
    ld b, $bb
    jr nz, @+$72

    rst $28
    ld l, e
    db $e3
    ld h, h
    ld l, d
    daa
    ldh [$88], a
    jr nz, jr_005_46be

    add b

jr_005_46be:
    ld [hl+], a
    jr c, jr_005_4647

    rlca
    add b
    ldh [$f8], a
    ld e, $03
    ret nz

    inc bc
    ld hl, sp-$72
    cpl
    add a
    db $ed
    rst $30
    ld a, a
    rst $18
    cp b
    dec e
    call c, $dffe
    ld b, e
    pop hl
    ei
    add [hl]
    rrca
    cp b
    dec c
    db $f4
    cp a
    ld e, $0b
    pop af
    call z, Call_000_1dbf
    set 6, c
    ret nc

    cp a
    inc e
    ld c, e
    pop hl
    add sp, -$42
    inc e
    adc e
    pop de
    adc h
    ldh a, [rP1]
    dec bc
    pop hl
    ret nz

    cp a
    ldh [$78], a
    xor [hl]
    dec b
    xor b
    ld b, [hl]
    adc $20
    adc b
    and b
    db $10
    dec bc
    add c
    and b
    cp b
    inc e
    add hl, sp
    ld h, e
    ld hl, sp+$3e
    ccf
    adc c
    pop hl
    ld hl, sp+$5e
    ccf
    cp e
    ld b, b
    ld a, e
    add a
    rra
    add c
    pop hl
    ld a, b
    ld c, $2f
    rlca
    add d
    ld hl, sp+$7c
    rst $28
    ei
    cp $83
    jp $ba1f


    ld c, $8b
    rst $00
    ldh [rWX], a
    pop de
    inc l
    cp [hl]
    ld d, $4f
    ldh a, [$50]
    sbc $0d
    adc a
    ldh [$58], a
    xor [hl]
    ld d, $8b
    ld [hl], c
    jr nc, @-$43

    add hl, de
    set 4, c
    call nz, $f0bf
    ld a, [hl-]
    rra
    ld a, e
    ld a, l
    dec sp
    adc d
    ld h, e
    cp b
    ld h, $2d
    add l
    cpl
    sub a
    push hl
    ccf
    add e
    ld h, e
    cp b
    db $76
    scf
    adc [hl]
    rst $28
    inc de
    rst $28
    pop af
    ld a, a
    ld e, $80
    ld a, [hl]
    daa
    cp h
    adc [hl]
    adc c
    ld bc, $0000
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    ld b, $07
    dec b
    dec b
    rlca
    rlca
    dec b
    dec b
    ld [$0009], sp
    nop
    ld a, [bc]
    dec bc
    nop
    nop
    inc c
    dec c
    ld c, $0f
    ld c, $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_005_47a5

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_005_47b9

    rra
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc h
    inc h
    inc h
    inc h
    dec h
    dec h
    dec h

jr_005_47a5:
    dec h
    ld h, $27
    jr z, jr_005_47d3

    ld a, [hl+]
    dec hl
    add hl, hl
    inc l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    nop
    nop

jr_005_47b9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, $17
    cpl
    jr nc, jr_005_47fd

    ld [hl-], a
    dec de
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    inc sp

jr_005_47d3:
    inc sp
    dec [hl]
    ld [hl], $37
    jr c, jr_005_4812

    ld a, [hl-]
    dec sp
    dec sp
    inc a
    dec a
    dec sp
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
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    ld d, e
    nop
    ld d, h
    ld d, l
    ld d, [hl]

jr_005_47fd:
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
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    ld h, h
    ld h, l
    nop
    nop
    ld h, [hl]
    ld h, [hl]

jr_005_4812:
    ld h, a
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld l, a
    db $10
    ld [hl], b
    nop
    nop
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d

jr_005_4834:
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec b
    dec b
    dec b
    dec b
    add c

Jump_005_483f:
    add c
    add c
    add c
    dec b
    dec b
    add d
    add d
    inc sp
    inc sp
    add e
    add e
    add c
    add h
    add c
    add h
    dec b
    add l
    dec b
    add l
    dec b
    add l
    add d
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l

jr_005_485d:
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

Jump_005_486a:
    sbc e
    sbc h
    sbc d
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    dec b
    and [hl]
    dec b
    dec b
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
    or e
    or l
    or [hl]
    or a

jr_005_488c:
    cp b
    or a
    rlca
    ld b, b
    and b
    ld [hl], b
    ld c, b
    inc l
    ld a, [de]
    rrca
    ld [$c284], sp
    and c
    ld [hl], b

jr_005_489b:
    ret z

    ld h, b
    inc b
    ld e, a
    db $10
    adc b
    call nz, Call_005_71a2
    ld c, b
    xor h
    ld e, d
    cpl
    jr jr_005_4834

    nop
    ld b, b
    ld hl, $e0d0
    ld l, h
    ld h, d
    ld [hl-], a
    ld c, $47
    ld b, e
    pop bc
    jp hl


    db $10
    ld [hl], b
    dec a
    inc hl
    sub h
    ld c, c
    db $e4
    and c
    ldh [$dc], a
    ld l, h
    dec [hl]
    jr nc, jr_005_485d

    call z, Call_005_73a6
    ld c, c
    xor h
    jp c, Jump_000_386f

    sbc c
    adc [hl]
    inc hl

Jump_005_48d0:
    ld h, b
    nop
    nop
    cp h
    ld h, d
    inc sp
    sbc [hl]
    ret nc

    xor b
    ld [hl], h
    ld c, d
    jr nz, jr_005_489b

    ld [hl], $35
    and h
    jp nc, Jump_005_74a9

    jp z, Jump_000_3a6d

    sbc a
    ld d, b
    xor b
    db $d3
    ld b, $d3
    ret


    push af
    ld [bc], a
    ld a, d

Jump_005_48f0:
    rra
    db $10
    ld [$5444], sp
    ld e, d
    jr nz, jr_005_488c

    ld c, l
    ld b, a
    nop
    jp nc, Jump_005_44c8

    ld a, [hl-]
    sub l
    ld b, d
    ret


    ld c, h
    or h
    ld d, d
    xor l
    ld d, [hl]
    ld l, d
    sbc l
    ld d, [hl]
    ld a, a
    ld b, c
    xor [hl]
    call c, $0280
    ld [hl], c
    ld b, l
    add h
    ld l, d
    inc a
    ld e, $8d
    ld c, b
    add h
    ld e, e
    push bc
    ld [$7997], a
    and [hl]
    ldh [$6f], a
    ld [hl], a
    call c, $f21d
    db $fd
    add h
    and h
    ldh [$ea], a
    jr jr_005_4966

    and b
    ld b, $7b
    ccf
    jr jr_005_4989

    ld b, h
    ld h, d
    ld c, d
    jr z, jr_005_494b

    dec c
    sub b
    and h
    rrca
    add a
    db $f4
    cp h
    db $dd
    inc sp
    dec a
    sbc a
    adc $67
    ld [hl], h
    ld d, h
    xor l
    ld b, $97
    ld c, c
    ld c, a

jr_005_494b:
    ret nc

    dec c
    add a
    ld [hl+], a
    db $fc
    add h
    add d

jr_005_4952:
    add l
    ld e, a
    sbc [hl]
    adc e
    xor e
    and b
    ld [hl], b
    ld b, [hl]
    ld h, [hl]
    call nz, Call_000_2040
    jp nc, $23f7

    ld d, d
    ld sp, $931e
    cp h

jr_005_4966:
    and l
    dec c
    ld b, $bc
    ld a, [de]
    ld d, a
    rla
    add c
    cp d
    db $dd
    ld a, [c]
    ld l, d

jr_005_4972:
    inc e
    ld d, c
    push de
    ld a, [bc]
    ld a, [hl]
    ld [hl-], a
    and c
    ld e, l
    ld l, [hl]
    ld h, b
    nop
    ld c, b
    dec hl
    ld l, [hl]
    scf
    db $ec
    or $bb
    ld h, h
    add d
    ld c, a
    ld l, a
    or h

jr_005_4989:
    ld [bc], a
    ld bc, $3b81
    cp $4f
    cpl
    sbc e
    rst $08
    db $db
    dec e
    adc d
    add l
    ld [hl+], a
    and c
    ld l, h
    add e
    sub $29
    or $0a
    ld b, l
    sbc a
    ld hl, $b358
    ldh [$0b], a
    ld b, $7c
    push bc
    and b
    db $10
    ld l, a
    ld sp, hl
    rst $38
    add b
    jr nz, jr_005_49c8

    inc b
    rrca
    add c
    jr nz, @+$2a

    ld a, [de]
    rlca
    add d
    jr nz, jr_005_4952

    ld a, [hl+]
    dec bc
    add b
    db $10
    stop
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_005_49c8

jr_005_49c7:
    nop

jr_005_49c8:
    rst $38
    add e
    sub b
    jr jr_005_49d0

    rst $30
    ld hl, sp+$7e

jr_005_49d0:
    dec e
    db $10
    add a
    add b
    rra
    ret nz

    jr nz, @+$1a

    nop
    ld [bc], a
    ld hl, sp+$7c
    add $63
    ld [hl], c
    and a
    call z, Call_000_3f3e
    ld de, $c390
    db $e3
    sub d
    ld c, b
    db $ec
    ld [hl], d
    ld b, c
    jr z, jr_005_4972

    jp z, Jump_000_12a1

    ld e, b
    ldh [rNR42], a
    ld a, [c]
    inc b
    ld a, [hl]
    add b
    ld e, a
    ldh a, [$90]
    inc b
    pop de
    cp $c0
    ld h, b
    cpl
    adc a
    rst $00
    call nc, Call_005_6d1a
    jr c, jr_005_49c7

    ld d, d
    call $e066
    jr nc, jr_005_4a26

    ld [hl], h
    inc a
    xor $78
    cp l
    pop bc
    rst $28
    add a
    ld b, e
    ld hl, sp-$4c
    rst $20
    ld d, d
    call nc, $eb5e
    ld h, a
    ld sp, hl
    dec h
    ld a, h
    and [hl]
    ld c, [hl]
    dec h
    inc de

jr_005_4a26:
    ret


    ld h, c
    add sp, -$4c
    ld a, [hl]
    ld a, [hl+]
    ld c, a
    and l
    ld e, a
    db $e3
    ld d, a
    ei
    inc [hl]
    ld a, [hl]
    ld [hl-], a
    ld e, $89
    ld b, a
    ld [bc], a
    adc c
    xor h
    ld a, [bc]
    ld l, c
    ld l, a
    sbc e
    ld c, l
    xor $07
    di
    db $fd
    ret z

    nop
    rrca
    ld a, b
    ld bc, $0fdf
    rst $00
    ei
    ld a, [$80e1]
    sub l
    ld c, l
    xor [hl]
    scf
    dec bc
    sub l
    cp e
    dec c
    ld l, a
    ld [bc], a
    inc bc
    inc b
    jp nz, $bbe6

    ld a, [hl]
    ld l, l
    dec bc
    inc h
    ld [hl-], a
    ld c, $af
    ld e, c
    or [hl]
    add hl, hl
    ld a, [bc]
    adc l
    ld [hl], e
    cp e
    ldh a, [rBCPS]
    ld [bc], a
    sub e
    ld c, b
    rst $38
    ld a, [hl+]
    add h
    cp d
    ld [bc], a
    ld a, [$1c3d]
    inc h
    and b
    ret nc

    ccf
    ccf
    xor [hl]
    db $eb
    ld b, a
    and [hl]
    or a
    ld e, e
    add hl, bc
    rst $08
    ld l, b
    ld l, $e2
    pop de
    ld a, [hl]
    rst $10
    ld l, e
    and a
    call nc, $eeea
    ld a, [de]
    ld c, l
    db $eb
    and e
    ld h, e
    sbc a
    ret nc

    db $dd
    db $ed
    db $f4
    inc a
    inc c
    rst $18
    dec c
    add $9a
    ld e, a
    rst $28
    or a
    or a
    add e
    db $fd
    ret nz

    rst $38
    rra
    or b
    ld hl, $7617
    dec hl
    add sp, $7a
    ld a, [hl-]
    ld e, $b0
    sbc a
    and b
    ld l, $d7
    ld e, e
    cp h
    ld a, [$b0ef]
    cp d
    sbc $2f
    inc hl
    add sp, $02
    cp $be
    cp [hl]
    rra
    rst $30
    sbc [hl]
    add e
    ld bc, $7ffe
    ld b, b
    ld e, l
    ret nz

    ld l, a
    ret nz

    dec sp
    push hl
    ld hl, sp+$03

jr_005_4ad7:
    rrca
    cp c
    rst $00
    db $ec
    ld hl, sp+$74
    ld sp, $42e8
    ld e, a
    ld h, b
    jr nc, jr_005_4ad7

    ccf
    ret nz

    ld [hl], a
    ldh a, [$7f]
    daa
    ret nc

    jp Jump_005_7fdc


    dec a
    rst $08
    ld hl, sp+$35
    ld [hl], $68
    ld hl, $aa14
    dec c
    add l
    ld [de], a
    xor b
    ld c, c
    or e
    ld h, c
    ld d, e
    ld [hl], c
    nop
    ld b, b
    ld [hl], c
    inc e
    ld e, b
    ld [hl], l
    ld [bc], a
    nop
    ld d, e
    jr c, @+$66

    adc b
    dec a
    call z, $dc83
    add sp, $52
    rst $08
    ld bc, $ffe0
    rra
    rrca
    pop af
    ld sp, hl
    dec hl
    ld l, b
    inc bc
    ld hl, sp+$20
    ldh a, [$03]
    ret


    pop af
    sbc h
    adc a
    inc e
    ret z

    ld h, c
    push hl
    push bc
    ld [hl], c
    rst $10
    ld [hl], $84
    rst $38
    ld [hl+], a
    ld c, a
    ld l, b
    sbc d
    jr z, jr_005_4b93

    ld h, d
    cp b
    or [hl]
    cpl
    ld e, h
    add a
    db $f4
    ld [hl-], a
    ld [$097b], sp
    adc b
    call c, $2173
    db $e3
    or a
    ld [hl+], a
    ld a, $95
    inc e
    and e
    db $fd
    ld a, l
    ld a, l
    ldh [rSCX], a
    sbc h
    rst $38
    ld a, a
    ld h, b
    sub h
    ld [hl], $31
    sub e
    inc hl
    ld e, c
    ld a, $51
    ld h, b
    sbc b
    ld d, a
    inc c
    rst $38
    ld b, d
    ld h, $57
    call nc, $8001
    ldh [$58], a
    ld e, $5e
    ld a, d
    rla
    or e
    cp $6c
    inc a
    rst $18
    and a
    or d
    ld [$1243], sp
    and b
    db $fc
    ld h, b
    jr nz, jr_005_4b9f

    ld b, d
    ld a, h
    ld h, b
    inc hl
    dec h
    add hl, bc
    ld c, c
    ldh a, [$74]
    ld b, [hl]
    ld [bc], a
    ld a, l
    db $ec
    adc l
    xor b
    add hl, de
    sub b
    nop
    ld h, d
    add h
    ld d, c
    ld [hl], $0f

jr_005_4b93:
    ld b, d
    ld c, b
    ld b, $a1
    xor d
    ld h, l
    add b

jr_005_4b9a:
    ret nz

    ret nc

    inc a
    dec a
    ld c, a

jr_005_4b9f:
    sub $71
    or d
    ld c, d
    xor b
    jp c, Jump_005_733e

    ccf
    ret nz

    ld [hl+], a
    inc c
    ld d, l
    dec [hl]
    add a
    or e
    db $f4
    rla
    ld a, $d8
    and b
    pop bc
    db $fc
    inc a
    inc bc
    ld [hl], e
    jr c, jr_005_4b9a

    rrca
    add a
    push af
    cp $b3
    dec bc
    jp $5c70


    cpl
    scf
    adc $fa
    ldh [$3f], a
    scf
    db $eb
    pop bc
    ld a, h
    cp a
    xor a
    rst $10
    db $eb
    ld [$3ffe], sp
    ld c, a
    call nz, $f168
    inc a
    ld c, $13
    add b
    pop bc
    jr nc, jr_005_4bf8

    and b
    ld d, h
    db $fd
    add hl, de
    ret


    pop af
    ld h, h
    rst $20
    dec e
    adc a
    sub c
    call z, Call_000_18f2
    ld c, $04
    dec l
    adc d
    and l
    jp hl


    sub h
    ret c

    add b
    ld h, a

jr_005_4bf8:
    ld c, l
    ld [hl+], a
    db $fc
    ld a, a
    inc d
    inc bc
    db $f4
    dec e
    rlca
    nop
    ld c, b
    db $10
    ld [$0182], sp
    ld c, b
    ld d, b
    inc l
    adc e
    dec b
    ret


    ld [hl], b
    cp b
    xor [hl]
    dec de
    dec b
    jp nz, $add4

    dec e
    add $f3
    and b
    rst $20
    ld [hl], $0d
    ld b, d
    xor b
    and [hl]
    inc de
    ld b, h
    or d
    db $10
    add e
    rla
    jp Jump_000_14fc


    sbc $2f
    add l
    jp nz, Jump_005_58f0

    ld l, $05
    ld [bc], a
    ret nz

    ld b, b
    jr z, jr_005_4c3a

    ld a, [c]
    add b
    add c
    jr nz, jr_005_4c3a

jr_005_4c3a:
    inc d
    ld e, h
    nop
    nop
    ret nz

    jr nz, jr_005_4c55

    inc b
    ld [bc], a
    ret nz

    and b
    ld e, h
    ld d, $42
    ld b, h
    nop
    db $fc
    ld b, b
    ld [$120c], sp
    add h
    ld b, d
    jr z, @-$7a

    ld d, d
    sub h

jr_005_4c55:
    ld c, e
    ld a, [hl+]
    push bc
    ld [hl], d
    call c, $2b4e
    sub e
    ld h, d
    db $ec
    cp d
    dec e
    ld b, a
    ld b, e
    and h
    add sp, $34
    ld c, l
    ld [bc], a
    add h
    and b
    db $10
    ld b, h

Call_005_4c6c:
    inc c
    ld d, b
    ld e, l
    scf
    ld b, e
    and d
    add sp, $74
    dec a
    ld b, $83
    and c
    xor b
    ld [$040a], sp
    dec l
    pop af
    ld bc, $2d00
    inc [hl]
    dec b
    nop
    ret nz

    ld c, l
    ld b, h
    ld [bc], a
    inc bc
    nop
    and b
    ld d, h
    inc de
    ld a, [hl]
    add hl, de
    res 4, [hl]
    db $eb
    cp e
    ld l, [hl]
    ei
    call nz, Call_000_2b2f
    pop de
    ld [hl-], a
    db $f4
    cp e
    rra
    ld b, a
    or e
    ldh a, [$fb]
    dec a
    rrca
    inc hl
    or b
    ld [$4d37], a
    or d
    ldh a, [$bb]
    ld a, h
    adc b
    ld bc, $9c00
    rra
    scf
    ld c, l
    db $db
    ld [hl], l
    sbc $29
    db $10
    ld [bc], a
    db $e3
    jr z, @+$08

    ld a, [c]
    cp a
    ld a, [hl]
    dec de
    jp z, $b0c1

    xor l
    dec de
    ret nc

    sbc h
    ld e, d
    push bc
    ld bc, $c34f
    rst $10
    adc d
    ccf
    inc bc
    ld d, b
    ldh a, [$b5]
    cpl
    ld sp, $0460
    add b
    ld c, $4f
    adc [hl]
    ld d, a
    sub a
    push hl
    cp c
    sbc [hl]
    inc de
    sbc e
    dec de
    ld sp, hl
    adc $78
    ld l, a
    db $e4
    ld a, [hl-]
    ld [de], a
    di
    and d
    jp hl


    dec bc
    adc $10
    xor h
    ldh [$37], a
    ld a, [c]
    add b
    ld h, b
    cp b
    ret z

    ld b, $cf
    sub b
    dec c
    ld a, b
    adc $2c
    dec b
    inc bc
    inc l
    ld e, b
    nop
    nop
    add d
    ld c, [hl]
    stop
    dec e
    daa
    rlca
    db $d3
    ldh a, [$6d]
    rst $28
    db $fc
    rra
    nop
    ld hl, sp+$01
    ret nz

    ld [hl], d
    nop
    ld a, c
    ld a, $3b
    xor $fb
    ret nz

    di
    inc a
    cpl
    rlca
    cp [hl]
    ccf
    ld b, c
    jp nz, Jump_000_1cf4

    dec sp
    ld b, l
    jp nz, Jump_005_6cdc

    di
    ld a, h
    pop de
    db $fc
    db $fc
    dec de
    adc a
    jp Jump_000_3ce8


    dec e
    ld bc, $f8a5
    ld a, l
    ccf
    adc [hl]
    ldh [$74], a
    ld d, $23
    ld b, a
    jp Jump_005_73cc


    inc a
    ld a, e
    pop hl
    ldh a, [$fc]
    inc c
    adc a
    rrca
    inc hl
    rst $28
    ccf
    sub a
    di
    db $fc
    ei
    ccf
    ld c, $f3
    call z, Call_000_13bf
    db $fc
    and e
    di
    srl a
    ld c, $d1
    ldh a, [$ed]
    rra
    ld c, $d1
    ldh a, [$ed]
    rra
    inc b
    ldh a, [$fc]
    daa
    daa
    rst $00
    inc sp
    cp h
    ld [hl], e
    dec sp
    push bc
    sub e
    call c, Call_000_3e4c
    call nz, $ecc3
    ld c, h
    ld a, $c7
    jp nc, Jump_005_6df0

jr_005_4d82:
    cpl
    ld b, $de
    sbc b
    ld a, h
    dec hl
    ld b, a
    jp nz, Jump_005_7cb4

    dec hl
    ld b, a
    jp nz, Jump_000_00b5

    ld a, $2f
    ld c, a
    add e
    rst $10
    pop hl
    or $0d
    ld [$bf36], sp
    ld hl, $a550
    ld l, c
    ld a, [c]
    dec e
    db $10
    add a
    call nz, $30a2
    and e
    xor e
    or d
    inc d
    ld a, l
    db $76
    ld b, [hl]
    ld h, e
    ld [hl], c
    and a
    ld h, e
    jr c, jr_005_4dfe

    ld l, [hl]
    ld c, b
    sbc l
    ld d, l
    ld l, a
    and c
    ld a, [hl-]
    db $fc
    jp nz, Jump_000_2ca9

    cpl
    ld a, [bc]
    ld c, a
    and b
    ld a, [hl+]
    push hl
    jr z, jr_005_4d82

    ld b, b
    dec [hl]
    reti


    ld c, d
    rst $10
    ld bc, $80f1
    ld b, d
    ld d, d
    ld h, $88
    ld a, [bc]
    ldh a, [$81]
    push hl
    ret z

    ld [hl], a
    ld [hl], h
    inc e
    ld e, l
    rst $20
    or a
    ld hl, $ece5
    ld a, l
    ld [hl], c
    sbc c
    sbc e
    ld [hl+], a
    and $cb
    inc [hl]
    ld b, b
    ld [hl], l
    nop
    dec [hl]
    ld e, d
    ld c, $d4
    inc bc
    or l
    ld b, b
    rst $10
    ld h, b
    ld a, [hl+]
    db $d3
    rlca
    ld [hl], $43
    or h
    ld sp, hl
    jr jr_005_4e7c

jr_005_4dfe:
    ccf
    ld c, a
    sub [hl]
    dec sp
    add hl, hl
    ld a, [c]
    cp [hl]
    ld b, [hl]
    ld a, [hl]
    jp c, Jump_000_246d

    scf
    pop af
    ld c, l
    db $dd
    ld l, l
    or a
    db $db
    pop hl
    sub b
    cp b
    ld b, h
    ld e, $ef
    ld [$3bb9], sp
    xor a
    ld d, [hl]
    ei
    ld l, l
    ld sp, hl
    db $fd
    add hl, de
    adc h
    ld b, l
    xor $b0
    ld a, e
    ld a, [bc]
    or b
    ei
    ld de, $c4c4
    rst $08
    sub a
    adc h
    ld l, l
    jp c, Jump_005_5dea

    ld e, b
    inc de
    ld d, h
    add l
    push de
    and [hl]
    ld d, h
    sbc d
    and b
    inc sp
    and h
    dec c
    ld l, l
    add e
    sub e
    add hl, sp
    ld a, [c]
    inc h
    inc a
    cp l
    rrca
    ld l, a
    ld l, l
    inc d
    cp $ba
    db $eb
    inc c
    dec h
    jp nc, $c707

    add hl, de
    db $fd
    pop af
    adc [hl]
    rst $00
    rlca
    ld e, h
    rrca
    ret nc

    ld h, [hl]
    rst $00
    ld e, $5d
    ld a, [hl]
    ld l, [hl]
    ld c, e
    rst $28
    db $ed
    and $f3
    ld [hl], e
    ld h, h
    add e
    db $db
    ld b, b
    ld l, a
    ldh [$5b], a
    db $db
    adc l
    ret z

    ld a, e
    ld [de], a
    ld sp, hl
    ld c, a
    ld l, l
    call z, Call_005_7f1f
    ld b, $6e

jr_005_4e7c:
    ld l, [hl]
    ld a, c
    call $ffcb
    cpl
    xor h
    or $bf
    ld [c], a
    cp e
    ld [hl], b
    inc l
    ld h, l
    sub $e9
    inc e
    ret nz

    cp a
    ld hl, $3fd0
    inc h
    ld c, d
    rlca
    inc bc
    ld a, a
    add b
    ld [hl], $f8
    rst $28
    ld d, l
    ld [c], a

jr_005_4e9d:
    jp hl


    ld h, c
    or $63
    or $2d
    jp $d7ef


    rst $28
    db $d3
    db $dd
    ld a, [hl]
    xor a
    rst $30
    dec de
    add e
    ld sp, hl
    db $fd
    ld e, e
    ld e, a
    sub a
    push hl
    rlca
    ld a, [hl]
    ld c, l
    ldh a, [$81]
    db $fd
    ld e, a
    rla
    cp b
    add hl, hl
    ld [$0001], a
    ret nz

    ret nc

    inc a
    dec a
    ld c, a
    ret nc

    ld bc, $20ea
    dec b
    inc hl
    ld c, b
    ld a, a
    ccf

jr_005_4ecf:
    ret nz

    inc sp
    ld a, [c]
    dec c
    add hl, bc
    add d
    db $e3
    ld e, h
    rst $18
    nop
    ld c, a
    pop hl
    jr jr_005_4e9d

    ld [de], a
    adc h
    ld de, $e8e4
    rrca
    ld c, l
    ret nz

    jr nc, jr_005_4eea

    inc l
    adc b
    inc sp

jr_005_4eea:
    jr jr_005_4ef3

    rlca
    add c
    pop af
    ld a, [$3f18]
    db $e3

jr_005_4ef3:
    ld e, b
    ld h, d
    dec c
    ld de, $d344
    call c, $01ff
    rst $08
    add b
    ld h, h
    add a
    jr jr_005_4ecf

    pop af
    inc a
    cp a
    sub b
    ldh [$d8], a
    ld a, $11
    jr c, jr_005_4f0d

    ld a, [c]

jr_005_4f0d:
    ldh [$a0], a
    inc sp
    adc h
    and e
    call c, Call_000_3cf5
    adc a
    ld [de], a
    ld a, h
    ld a, a
    sub h
    push hl
    add hl, sp
    ld c, $57
    cpl
    jp nz, Jump_005_7c73

    and a
    scf
    rst $08
    or e
    add sp, -$07
    ld a, $25
    jp hl


    ld b, [hl]
    ld d, c
    dec a
    adc a
    ld d, e
    sub b
    db $e3
    sbc c
    db $e3
    adc b
    jp hl


    ld [$0585], a
    inc bc
    ld b, b
    ld a, [hl]
    ccf
    adc h
    nop
    db $fc
    ld [hl], h
    inc de
    ld bc, $48e0
    rst $00
    ld sp, $130f
    call nz, Call_000_3ffc
    inc hl
    ld e, c
    ld hl, sp-$01
    add e
    ld c, b
    ld d, d
    inc [hl]
    rst $20
    dec sp
    ret z

    ld bc, $60fc
    nop
    dec c
    ld [hl+], a
    ld [$11cf], sp
    adc $41
    adc h
    ld e, h
    rrca
    dec bc
    pop bc
    ld a, [c]
    ld [hl], b
    ccf
    adc a
    add sp, $60
    sbc $0f
    jp Jump_000_3c41


    add hl, bc
    dec b
    adc a
    ld hl, sp+$60
    ld a, a
    rra
    jp $f481


    inc [hl]
    rrca
    ld e, e
    ld h, d
    pop af
    ld h, e
    ld b, c
    ret z

    ld [hl-], a
    db $10
    push hl
    jr c, jr_005_4f97

    db $d3
    ret nc

    call Call_000_093d
    db $d3
    or d
    add hl, hl
    xor l
    dec c
    ret


    ld a, [de]
    db $10
    ccf

jr_005_4f97:
    nop
    inc hl
    db $f4
    rlca
    jr nz, @+$07

    add e
    ld b, b
    ld a, b
    inc a
    ld bc, $b043
    rla
    inc bc
    jp z, Jump_005_7cf2

    rst $28
    scf
    push bc
    ld a, [c]
    cp $ca
    rra
    set 6, d
    cp $cd
    rra

jr_005_4fb5:
    and $a3
    call c, Call_000_107f
    inc bc
    di
    add b
    nop
    inc b
    ld [$7800], sp
    ld c, $36
    dec c
    ld [hl], e
    jr nc, @-$3a

    sub e
    ld c, [hl]
    ld [hl], e
    adc h
    and $39
    ld c, a
    inc hl
    jp nz, Jump_000_3ce6

    rst $08
    add hl, hl
    add b
    cp [hl]
    rra
    set 1, b
    ld h, b
    nop
    jr nz, @+$42

    inc de
    nop
    ld b, b
    and h
    xor a
    ld d, c
    ld a, [c]
    sub d
    daa
    rlca
    set 4, [hl]
    ei
    rra
    ld [$f0c1], sp
    add a
    cp e
    rst $00
    sub e
    db $e3
    ld [bc], a
    ld a, d
    add b
    jr nc, jr_005_5001

    add c
    jr nz, jr_005_502c

    inc l
    dec hl

jr_005_4ffe:
    inc bc
    ld a, $03

Jump_005_5001:
jr_005_5001:
    sbc h
    scf
    rrca
    jp $9381


    ldh [rIF], a
    ccf
    sbc [hl]
    and b
    inc b
    nop
    jr nc, jr_005_505c

    add hl, bc
    add e
    ld [bc], a
    jp $dcb1


    ld b, e
    rra
    rst $00
    add b
    ld d, e
    pop af
    call nz, Call_000_0085
    inc bc
    add b
    ld h, b
    ccf
    cpl
    ld a, e
    db $eb
    dec hl
    cp a
    ld [hl-], a
    call c, $7cb0

jr_005_502c:
    jr nz, jr_005_4fb5

    ld [c], a
    ld b, $ef
    add h
    di
    ld e, c
    or e
    ld [hl], $cd
    and e
    ld e, b
    ld c, [hl]
    ld a, a
    adc $e7
    db $ec
    rst $30
    add hl, sp
    rst $08
    and a
    ld hl, sp-$2a
    cp c
    ccf
    ld b, b
    ld b, e
    db $ec
    ld hl, sp+$3d
    db $f4
    add b
    ld b, b
    rst $28
    jr c, @+$0f

    di
    db $fc
    add b
    adc $a3
    ld e, d
    ld d, h
    db $fd
    ccf
    inc [hl]
    ld [hl], e

jr_005_505c:
    call c, Call_000_3bf0
    rst $08
    di

Jump_005_5061:
    nop
    ret nz

    cpl

Call_005_5064:
    add sp, $6c
    db $e3
    scf
    adc $a3
    db $dd
    jr jr_005_5075

    dec a
    or $40
    inc a
    ldh a, [$d2]
    or $9d

jr_005_5075:
    ld h, h
    nop
    rst $10
    sbc $ad
    ld a, h
    jr nz, jr_005_4ffe

    adc l
    pop af
    db $fc
    add b
    db $10
    dec [hl]
    db $dd
    call z, $d77f
    di
    cp l
    or e
    ld h, b
    call $1da2
    ld hl, sp-$02
    rst $18
    ld hl, sp+$1c
    ld d, a
    ld a, e
    db $db

jr_005_5096:
    or e
    xor l
    ld [$ae13], a
    and c
    xor d
    db $eb
    adc c
    pop de
    inc [hl]
    ld l, l
    dec de
    add a
    sbc e
    jr c, @+$5e

    jp c, $e586

    scf
    ld a, [hl]
    ld d, a
    sub l
    db $dd
    ld h, a
    dec l
    rst $10
    sbc c
    rrca
    rst $30
    ld e, l
    jp $9270


    ld [hl], a
    dec c
    xor b
    ldh a, [$03]
    or $4e
    sbc b
    rst $30
    db $e3
    adc a
    cp [hl]
    ld [bc], a
    cp d
    rst $18
    di
    sbc [hl]
    ld [hl], h
    cp a
    call c, $f301
    cp a
    or d
    reti


    nop
    ld [hl], e
    db $ec
    rst $38
    nop
    ld b, b
    inc sp
    or $21
    sbc $79
    dec e
    ld [$b336], a
    ld b, e
    di
    ld a, a
    or d
    inc bc
    db $e3
    or b
    rrca
    cp l
    rst $18
    ld a, b
    inc bc
    ei
    ret z

    sbc e
    add hl, sp
    ld e, [hl]
    ld c, e
    ld a, h
    rst $28
    cp h
    call z, Call_000_00e4
    push bc
    ld h, c
    and e
    ldh [rIE], a
    inc a
    rrca
    ldh a, [$7c]
    ldh [$30], a
    inc [hl]
    db $fc
    add sp, $3d
    jr nc, jr_005_5096

    ld d, e
    db $eb
    ld [c], a
    ld hl, sp+$3e
    cpl
    sub e
    pop hl
    ld hl, sp-$31
    xor a
    sub a
    jp hl


    ld a, [$7dfe]
    ld b, a
    ld b, d
    db $fc
    dec [hl]
    xor [hl]
    cp a
    and d
    dec sp
    db $f4
    cp l
    sub e
    ld b, [hl]
    ld [$bffb], a
    cpl
    ret nc

    db $e4
    ld hl, $1b3a
    sbc [hl]
    scf
    rst $38
    ld h, e
    rst $18
    inc hl
    ld [c], a
    or h
    ld d, e
    rst $28
    and a
    jp nc, Jump_000_0df7

    rst $08
    ret


    xor [hl]
    or [hl]
    inc sp
    rst $18
    ld c, e
    rrca
    rst $28
    dec a
    db $db
    call z, $857a
    ret nc

    db $f4
    ld e, d
    ld c, $8d
    ld b, d
    ret nc

    ld c, b
    ld a, [hl+]
    dec b
    ld [bc], a
    ret nz

    ld b, b
    jr z, @+$06

    ld [bc], a
    add b
    ld b, b
    jr z, jr_005_5190

    ld a, h
    ld e, l
    nop
    nop
    add b
    nop
    ld h, b
    jr nz, jr_005_51a0

    jr @+$20

    ld c, $0f
    add a
    add a
    db $e3
    ld [c], a
    nop
    add d
    inc e
    pop bc
    ld d, b
    sub b
    call nz, Call_005_7164
    add hl, sp
    inc a
    ld e, [hl]
    ld e, a
    db $10
    rra
    ret nz

    rlca
    di
    di
    db $fd
    db $fc
    db $fd
    ld a, [hl]
    ld a, $df
    ld c, a
    ld d, a
    and e
    and l
    ret nc

    rst $38
    nop

jr_005_5190:
    ld c, d
    ld c, e
    db $ed
    pop af
    ld a, [c]
    ld hl, sp-$06
    db $fd
    dec a
    ld a, $8e
    adc a
    ld b, e
    ld b, e
    and b
    and b

jr_005_51a0:
    ret nc

    db $10
    jr z, jr_005_51ac

    add h
    inc h
    ld [hl+], a
    ld [$030a], sp
    ld [bc], a
    ld d, b

jr_005_51ac:
    ld b, b
    ld b, b
    ld b, b
    dec d
    ld [bc], a
    add h
    ld b, b
    ld h, b
    nop
    db $10
    inc d
    cp d
    ld l, l
    ld sp, $7f00
    ld b, b
    ld c, d
    ld l, b
    or h
    ld a, [bc]
    dec a
    ld [de], a
    xor [hl]
    db $fc
    ld bc, $6056
    jr nz, jr_005_51ca

jr_005_51ca:
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $0f12
    db $10
    inc de
    inc d
    rrca
    db $10
    dec d
    dec d
    ld d, $16
    dec d
    dec d
    ld d, $17
    dec d
    jr @+$18

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    ld e, $1e
    ld e, $1f
    jr nz, jr_005_5214

    db $10
    ld e, $21
    ld e, $1e
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    daa
    dec e
    jr z, jr_005_523a

jr_005_5214:
    inc h
    jr z, jr_005_5240

    ld a, [hl+]
    dec hl
    dec e
    inc l
    dec d
    inc h
    dec l
    ld l, $2f
    rrca
    db $10
    jr nc, jr_005_5255

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_5265

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld l, $40
    ld b, c
    ld b, d
    ld b, e
    cpl
    ld b, c
    ld b, d

jr_005_523a:
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld b, h
    ld b, l

jr_005_5240:
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
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_005_5255:
    ld e, e
    ld d, d
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
    ld l, c

jr_005_5265:
    ld l, d
    ld l, e
    ld l, h
    ld l, d
    ld l, d
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld l, $71
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    cpl
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld l, h
    ld l, $7e
    rrca
    ld a, a
    add b
    cpl
    add c
    db $10
    ld l, $82
    rrca
    add e
    add h
    cpl
    add l
    db $10
    add [hl]
    cpl
    add a
    db $10
    ld l, $88
    rrca
    adc c
    ld h, $26
    ld h, $26
    adc d
    adc d
    adc d
    adc d
    inc hl
    inc hl
    adc e
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
    adc d
    adc d
    sub h
    sub l
    adc d
    adc d
    sub l
    sbc b
    sub l
    sbc b
    sub a
    sbc c
    sub c
    sbc d
    sub e
    sbc e
    sbc h
    adc h
    sbc l
    sbc [hl]
    adc d
    adc d
    adc d
    sbc a
    adc d
    adc d
    and b
    adc d
    sub l
    sub l
    sub a
    sub a
    sub c
    sub c
    sub e
    sub e
    and c
    and c
    and d
    and d
    adc d
    adc d
    sub l
    sub l
    ld e, $1e
    ld e, $1e
    inc hl
    inc hl
    adc e
    and e
    inc hl
    and h
    adc e
    and l
    adc h
    adc h
    and [hl]
    and [hl]
    and a
    adc d
    xor b
    xor c
    adc d
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
    ld a, [de]
    ld b, b
    and b
    ld [hl], b
    ld c, b
    inc l
    jr jr_005_5374

    ld b, e
    add h
    adc [hl]
    and b
    ret nc

    ret z

    ld l, h
    ld a, [hl-]
    ld a, [de]
    jr c, jr_005_532d

    ld b, h
    add a
    ld [hl], b
    ld hl, sp-$54
    ld e, d
    ld [$1b3e], sp
    sub b
    ld h, e
    ld h, e
    pop bc
    db $fc
    ld e, [hl]
    ccf
    ld c, $24
    sub b
    and h
    ld [hl], d
    ld [hl-], a
    ld b, h
    add d
    ld c, a
    dec b
    nop
    add c
    and l
    ld [hl], d

Call_005_532b:
    or b
    inc c

jr_005_532d:
    and d
    ld e, [hl]
    inc [hl]
    ld bc, $8205

Jump_005_5333:
    pop hl
    ld e, c
    sbc b
    ld a, [bc]
    ld e, a
    ld [$9084], sp
    pop hl
    ld [hl], c
    ld d, b
    ld [$3260], sp
    dec d
    sbc a
    res 4, l
    ld de, $9118
    ld [bc], a
    add hl, hl
    dec d
    ld bc, $8912
    ld h, c
    ld e, d
    ld e, h
    sbc $4f
    add hl, de
    adc l

Call_005_5355:
    rst $00
    inc hl
    ret nc

    ldh a, [$08]
    inc e
    db $10
    dec d
    xor e
    ret nc

    db $e3
    db $e4
    ld [hl], c
    or h
    sub d
    ld c, b
    dec a
    inc hl
    ret c

    xor h
    db $76
    ld b, d
    jr c, jr_005_5377

    ld e, c
    dec hl
    ld bc, $6d59
    db $76
    ld d, c

jr_005_5374:
    sbc h
    xor d
    ret nc

jr_005_5377:
    ld b, $00
    adc h
    xor $77
    ld c, e
    xor l
    cp d
    ld h, a
    dec [hl]
    dec bc
    call c, $c1ae
    db $10
    sub l
    jp c, Jump_000_02ea

    ld a, [bc]
    sbc $70
    ld b, b
    jr nz, jr_005_53de

    dec de
    rrca
    adc b
    dec b
    add b
    and a
    db $f4
    db $10
    adc $17
    ld c, $0a
    add hl, bc
    add e
    ld b, c
    pop hl
    ld c, h
    ld c, l
    jp nc, $8d55

    ld a, [bc]
    call c, $b946
    call z, Call_005_78ee
    adc h
    ld bc, $d3a5
    ld c, c
    ld h, b
    inc e
    jp hl


    inc d
    jr jr_005_53c4

    ld [hl+], a
    ld de, $e101
    inc c
    jp hl


    ld a, [de]
    jp hl


    add c
    pop de
    pop hl
    inc sp
    db $db

jr_005_53c4:
    ld b, c
    xor c
    jr jr_005_53cd

    ld d, a
    xor h
    add d
    nop
    ld e, c

jr_005_53cd:
    call $a73e
    ld d, l
    xor e
    sub $ed
    or d
    ld hl, sp+$2d
    ret z

    ld d, a
    ld c, e
    or l
    rst $10
    ld e, e
    push hl

jr_005_53de:
    sbc d
    ld e, l
    rst $30
    inc bc
    add c
    xor h
    pop hl
    call c, $f7ec
    dec c
    rst $20
    daa
    add hl, sp
    or a
    pop bc
    db $76
    or a
    sbc d
    adc [hl]
    ld a, a
    ccf
    ld e, c
    xor a
    cp c
    add b
    ld [hl], b
    ld d, a
    adc [hl]
    dec a
    jp $01ce


    cp h
    ld c, h
    push hl
    ld b, b
    rst $28
    dec a
    and e
    db $db
    ld a, e
    ret c

    db $e3
    ld [bc], a
    cp e
    rra
    ld l, $0f
    jp hl


    adc h
    sbc a
    db $fd
    ld h, [hl]
    sbc [hl]
    ld c, a
    rst $20

jr_005_5417:
    ld l, l
    ld [c], a
    ld bc, $259b
    add $01
    ld a, h
    reti


    sub h
    xor l
    and d
    ld d, d
    jp nc, $16c8

    dec b
    ld h, b
    sbc a
    rla
    dec d
    ld e, b
    ld a, l
    jr jr_005_5456

    adc d
    ld [de], a
    ld d, e
    inc e
    db $76
    push hl
    ld e, d
    add l
    dec e
    xor b
    ld c, l
    rst $38
    ld e, e

jr_005_543d:
    sbc [hl]
    adc b
    dec a
    jp c, $9d71

    ld b, h
    or c
    or c
    ld [hl], c
    sbc e
    and a
    ld l, d
    dec c
    ld [hl], h
    ld [c], a
    db $76
    ld de, $5aee
    ld e, $30
    and h
    ld a, [hl+]
    ld a, [bc]

jr_005_5456:
    sbc $68
    or c
    push de
    ld a, b
    sbc a
    ret c

    ld [hl], $2a
    adc [hl]
    nop
    jr nz, jr_005_5417

    inc l
    rlca
    add c
    ldh a, [$b9]
    or c
    adc [hl]
    inc hl
    add a
    add $04
    ld d, b
    nop
    ld h, l
    sbc l
    rst $30
    ld h, b
    rst $10
    db $10
    cp h
    jr nz, jr_005_5481

    ld b, d
    jr nz, jr_005_543d

    db $e3
    sub d
    rra
    ld h, [hl]
    ld [de], a

jr_005_5481:
    dec [hl]
    ld l, h
    sbc h
    db $76
    ld a, [bc]
    dec bc
    ld d, b
    rra
    ld b, b
    ret z

    inc hl
    add hl, bc
    ld [bc], a
    ld d, b
    push bc
    call nc, $e04f
    and b
    ld h, l
    ld [hl], b
    add e
    and d
    ld h, a
    jp nc, $8601

    jp c, $c425

    ld a, [de]
    add hl, bc
    add d
    ld [hl], b
    and b
    dec de
    sub h
    ld h, $98
    ld d, [hl]
    inc e
    ld [hl], d
    call c, Call_005_7ec8
    ld [hl], a
    nop
    add c
    ret nz

    db $10
    inc b
    ld bc, $c841
    sub d
    db $10
    sbc c
    sbc l
    xor c
    sub [hl]
    daa
    adc b
    and d
    ret nz

    inc b
    dec e
    sbc [hl]
    ret nz

    ld d, b
    db $76
    ld [hl], l
    adc h
    db $e4
    ld h, b
    call z, $a403
    add hl, hl
    ld a, [de]
    ld c, d
    sub e
    and l
    add hl, hl
    ld e, d
    ld e, d
    sub l
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_005_54e2

    ret nc

jr_005_54e2:
    sbc b
    ld c, [hl]
    sbc b
    call nc, $c465
    ld h, c
    db $ed
    inc e
    ld a, e
    ld [hl], e
    and [hl]
    call c, $f769
    ld a, [bc]
    ld a, l
    ld h, b
    ret nz

    rlca
    add c
    dec e
    ld bc, $f380
    add l
    nop
    rst $18
    ld h, l
    ld [hl], $9d
    ld c, $84
    ld d, e
    ld l, c
    ld d, d
    ld d, a
    ld c, h
    sbc l
    push hl
    ld d, d
    and l
    ld sp, $5c6d
    ld e, e
    ld [hl], a
    ld h, $dc
    ret


    or a
    inc bc
    add l
    and h
    jp nc, $3468

    ld d, d
    adc l
    ld d, h
    sub e
    ld c, d
    ld a, l
    ld a, $70
    jr c, jr_005_5526

    and b

jr_005_5526:
    scf
    add b
    nop
    ld l, $19
    ld a, h
    ld bc, $cfc0
    pop af
    ld e, c
    xor h
    ld d, [hl]
    dec hl
    ld b, e
    ld hl, $0be9
    sub [hl]
    inc sp
    inc d
    ld [hl], h
    dec b
    ld a, l
    dec h
    ld e, l
    ld c, c
    rla
    ld [hl], l
    ld l, l
    ld h, $ed
    xor c
    add hl, hl
    sub h
    or $35
    ld e, d
    xor [hl]
    add $26
    ld d, e
    jp c, Jump_005_486a

    rla
    ld a, [c]
    ld l, l
    add sp, -$67
    ld a, e
    sub $d5
    xor c
    xor e
    and e
    dec c
    ld a, [$76d3]
    cp l
    ld b, c
    xor d
    push af
    add d
    ld bc, $0000
    ld a, a
    cp a
    ldh [$c0], a
    inc bc
    ld a, [$5831]
    ld [hl], e
    add c
    ld [$0c1c], sp
    ld h, c
    ld a, [c]
    pop hl
    adc [hl]
    rla
    inc c
    ld b, b
    sbc a
    ldh [$85], a

jr_005_5581:
    ld d, e
    ret c

    add b
    ld b, b
    ld bc, $c380
    add c
    or $1b
    ldh a, [$7a]
    jp Jump_000_0c68


    rra
    pop hl
    ld [de], a
    xor c
    cp d
    inc b
    ld bc, $bf7f
    add b
    inc h
    ld d, [hl]
    inc [hl]
    ld de, $81fe
    ld d, d
    sbc c

jr_005_55a2:
    and b
    ld b, e
    add c
    pop bc
    add hl, de
    ld a, [hl]
    ld sp, hl
    inc hl
    dec b
    add e
    jr nc, jr_005_55d5

    add sp, $0c
    and [hl]
    db $dd
    ld d, $0c
    sub d
    adc [hl]
    jp Jump_005_4182


    ld b, b
    ld h, b
    cp a
    ret nz

    add l
    db $e3
    inc de
    jp hl


    jr c, jr_005_5581

    ccf
    ld a, $90
    pop bc
    ld h, b
    ret z

    inc sp
    add sp, $06
    ld a, [hl]
    ld a, h
    cp [hl]
    sbc a
    ld e, b
    rla
    cp b
    jr nc, jr_005_562f

jr_005_55d5:
    inc sp
    add d
    dec bc
    push bc
    dec b
    ld [c], a
    ld [de], a
    db $ed
    db $10
    ld a, l
    add hl, bc
    cp h
    inc d
    inc c
    ld [de], a
    ld [de], a
    inc b
    ld b, d
    xor d
    nop
    ld a, [hl-]
    add l
    ld c, a
    call nc, Call_005_7c6b
    adc [hl]
    ld l, [hl]
    ld b, c
    adc l
    ld b, h
    ld l, b
    inc [hl]
    inc hl
    inc c
    ld c, b
    ld [de], a
    ret nz

    inc bc
    jr nc, @+$46

    dec [hl]
    add b

Jump_005_5600:
    ld hl, $a8ac
    ld a, $09
    ld [bc], a
    db $e4
    adc d
    ld a, c
    ld b, b
    ldh a, [rNR42]
    sbc b
    ld [hl-], a
    jp nc, Jump_005_5001

    or [hl]
    jr z, jr_005_55a2

    jp nc, $9a24

    nop
    adc a
    ld [de], a
    inc b
    add sp, $0a
    dec b
    ld d, c
    ld d, l
    sbc $60
    ld e, b
    ld [hl+], a
    sbc h
    ld h, a
    ld a, [hl+]
    dec b
    add e
    or h
    ld [hl], l
    dec a
    rst $08
    add c
    db $f4

jr_005_562f:
    cp $3d
    reti


    ld h, $08
    rst $38
    ld c, $42
    sub e
    cp h
    sub [hl]
    dec l
    add l
    sub c
    ld a, h
    cp h
    cpl
    ld b, a
    add sp, -$1c
    rst $38
    rra
    adc e
    pop af
    ldh a, [$d4]
    ld c, $c7
    ld a, [c]
    inc c
    rra
    dec sp
    call $14f9
    rst $28
    ccf
    ld b, a
    add sp, -$10
    rst $28
    inc c
    rlca
    add d
    inc e
    ld sp, $c933
    di
    sbc h
    rst $08
    dec a
    adc $f3
    db $dd
    call z, $9d73
    rlca
    ld c, b
    inc bc
    ld hl, $0305
    ld b, b
    xor d
    ld a, [hl+]
    add h
    ld de, $d705
    db $76
    ld e, l
    or a
    ld [hl], h
    inc c
    inc bc
    ld b, c
    ld [hl-], a
    add b
    and b
    inc d
    push bc
    jr nc, jr_005_568c

    ld [bc], a
    dec b
    ld b, c
    ld e, c
    add d
    ld e, $3a
    adc a

jr_005_568c:
    and d
    ld d, b
    db $f4
    ld c, c
    ld hl, $fce2
    cp a
    ld a, [de]
    add a
    ld a, [c]
    call nz, $16bf
    dec b
    ld a, [c]
    cp h
    xor a
    sbc h
    ld b, d
    and b
    xor d
    ld e, $3d
    ret nz

    push af
    push af
    jp z, $8060

    ld [bc], a
    nop
    ldh a, [rSC]
    add b
    and e
    ld [hl], h
    rst $18

jr_005_56b2:
    ld h, c
    sbc b
    add [hl]
    add hl, hl
    adc h
    ld h, e
    adc h
    ld [hl], b
    inc e
    ld [$0514], sp
    ld [bc], a
    ret z

    cp [hl]
    scf
    ld c, l
    pop de
    ret c

    cp $36
    ld c, l
    ld a, [c]
    cp b
    xor [hl]
    add a
    xor c
    ld d, $60
    cp $3f
    add d
    or e
    db $fc
    add [hl]
    ccf
    add a
    pop de
    or $60
    inc d
    ld b, l
    db $10
    and d
    dec e
    dec d
    ld c, a
    ldh [$c4], a
    dec [hl]
    inc sp
    sub b
    jr nz, @+$12

    rlca
    jr jr_005_56b2

    ret nz

    ld [hl], h
    db $e3
    jr c, jr_005_56f1

    ld a, [bc]

jr_005_56f1:
    ld b, h
    rst $28
    inc a
    rla
    or b
    inc b
    ld bc, $4088
    nop
    inc b
    rrca
    and a

jr_005_56fe:
    ld c, e
    or e
    db $ec
    ld a, a
    rra
    call $fc43
    ld h, c
    rra
    set 4, d
    ld a, [$221e]
    adc b
    and b
    ld d, b
    inc d
    sbc b
    inc b
    pop de
    db $f4
    cp e
    ld l, $c6
    pop hl
    db $fc
    sbc e
    ld a, $c7
    ld d, c

Call_005_571e:
    sub $60
    and a
    ld h, [hl]
    pop af
    ld a, h
    ret nz

    rra
    adc c
    pop af
    ld a, h
    ld e, a
    ld h, b
    ld h, h
    jp nz, $c8c0

    ld bc, $5340
    jr z, jr_005_56fe

    dec a
    ld [$f8c2], sp
    ld [hl], d
    ld a, $8f
    jp nz, $c2f8

    jr nc, @+$04

    db $10
    jr z, jr_005_574e

    add a
    adc b
    ld [hl+], a
    ld [$3ffd], sp
    ld b, l
    ld h, e
    ld hl, sp-$73
    ccf

jr_005_574e:
    ld b, c
    and e
    add sp, -$0b
    dec a
    ld c, d
    add d
    and b
    ld d, h
    dec d
    ld h, $06
    ld h, e
    ld d, $87
    and [hl]
    ld bc, $5f5c
    ld a, [bc]
    ld b, d
    ldh a, [$5c]
    rla
    sbc b
    rlca
    ld a, [c]
    nop
    add h
    ld e, $cc
    ld a, [c]
    db $fc
    ld [hl], b
    inc de
    jp z, $c3f3

    db $10
    ld c, $8f
    xor d
    ld c, l
    add e
    ld de, $b20b
    db $fc
    or $17
    adc e
    ld [c], a
    adc h
    rra
    rla
    inc b
    ld [hl-], a
    xor h
    xor b
    add a
    add e
    di
    ld [bc], a
    ld hl, $c53f
    pop bc
    pop af
    sbc d
    ld a, $0f
    adc c
    cp h
    rst $38
    rra
    ret c

    dec a
    stop
    ld [bc], a
    inc c
    inc sp
    inc c
    ld [bc], a
    inc bc
    res 0, d
    db $fd
    sbc [hl]
    jr c, jr_005_57aa

    pop af

jr_005_57aa:
    db $fc
    nop
    sbc h
    push bc
    ld e, c
    sub $77
    sbc [hl]
    ld b, l
    ld d, c
    db $fc
    add c
    ld a, [hl-]
    add c
    ld sp, hl
    cp $81
    and b
    add sp, $5a
    inc e
    ld d, l
    ccf
    jp nz, $8002

    ld e, a
    scf
    db $f4
    db $e3
    ld [$09c6], sp
    ld c, $43
    ld a, h
    ccf
    dec sp
    dec c
    ld [hl], $0c
    jp z, Jump_005_580d

    ld a, [hl+]
    ld b, h
    db $10
    inc b
    add hl, bc
    ld [hl], b
    ld e, h
    cp h
    rrca
    call nz, Call_005_7032
    cp a
    jr z, jr_005_580f

    ld a, [de]
    adc [hl]
    and l
    xor c
    ld [$2a90], a
    xor e
    nop
    xor d
    ld [$b2c2], a
    xor l
    dec hl
    ld l, d

jr_005_57f5:
    ldh [rIE], a
    db $10
    inc b
    ld h, d
    db $e4
    cp l
    ccf
    reti


    and h
    db $10
    add c
    ld [bc], a
    ld b, l
    bit 3, b
    ld [bc], a
    db $10
    adc e
    jp nc, $fff0

    jr nc, @+$0f

Jump_005_580d:
    ldh a, [$78]

jr_005_580f:
    rra
    dec h
    ret


    adc c
    jr c, @-$6f

    ccf
    jp z, $d8a1

    jp c, $8f29

    and e
    jr jr_005_5854

    ld a, $cf
    jp $5fec


    rla
    jr z, jr_005_5857

    inc d
    rlca
    ld bc, $f6c3
    dec a
    sub c
    cpl
    adc e
    pop af
    add sp, -$05
    ld hl, $f906
    jr c, jr_005_58af

    ld e, $0f
    ld b, b
    ld h, b
    ld [bc], a
    ccf
    rrca
    db $e3
    ldh a, [$3a]
    ld a, [bc]
    ld c, $e2
    ld d, b
    or a
    adc l
    adc e
    ret c

    and $49
    adc a
    ld c, $e0
    ret nz

    ld a, c

Jump_005_5851:
    ld hl, $1383

jr_005_5854:
    jr c, jr_005_57f5

    add hl, sp

jr_005_5857:
    adc h
    di
    ret c

    rst $28
    dec a
    add d
    ldh a, [$60]
    ld b, b
    rrca
    rst $00
    ldh a, [$fc]
    ld e, h
    dec b
    rlca
    ld [hl], b
    and h
    db $ed
    ld h, $8f
    xor a
    ld l, b
    ld a, [hl]
    sub e
    inc [hl]
    ld b, e
    sub h
    and $05
    ld b, c
    and d
    call c, Call_000_3bae
    pop bc
    ld a, [c]
    ld hl, sp+$7f
    cpl
    db $e4
    and c
    ld hl, sp+$77
    inc bc
    add hl, bc
    pop hl
    add h
    adc h
    inc e
    rst $08
    sub c
    sbc h
    di
    dec de
    rst $08
    ld [hl], c
    cp [hl]
    dec sp
    rra
    adc a
    ret nc

    ld hl, sp+$2b
    scf
    rrca
    db $e3
    inc b
    ld hl, sp+$3d
    rst $08
    or e
    call c, Call_000_3dfb
    ret nc

    ld l, $00
    jr @+$04

    ld bc, $99a0
    nop
    ld a, l
    and c
    rla
    ld h, h

jr_005_58af:
    ld h, l
    cp c
    add hl, sp
    ld e, h
    ld e, a
    nop
    nop
    db $10
    adc b
    ld h, b
    sub d
    ld d, c
    ld a, [hl]
    jr z, jr_005_5935

    add h
    ld a, [de]
    db $e3
    add l
    ld e, c
    or b
    adc h
    push bc
    ld b, c
    rra
    push de
    push hl
    or l
    add hl, de
    ld a, l
    ld b, d
    ld e, a
    ld d, h
    sub l
    db $db
    dec hl
    ld a, c
    ld [hl+], a
    ld h, h
    xor $83
    ld l, b
    and d
    dec de
    ld c, [hl]
    add a
    ld b, d
    add hl, hl
    or h
    ldh [rSVBK], a
    or h
    sbc d
    ld c, l
    ld b, $8a
    ld d, c
    xor d
    dec b
    inc bc
    sub d

jr_005_58ec:
    adc l
    and e
    ld a, [c]
    add c

Jump_005_58f0:
    db $fd
    nop
    ei
    ld [bc], a
    dec e
    ld d, c
    adc $b4
    pop de
    inc e
    ld c, l
    ld a, [bc]
    inc b
    ld [bc], a
    ld [bc], a
    and c
    push de
    ld b, d
    call nc, $807a
    ld d, a
    sub h
    jr jr_005_58ec

    add h
    add hl, sp
    ldh [$ec], a
    scf
    inc de
    add hl, de
    push bc
    ld h, d
    or h
    ld [hl-], a
    ld e, $bc
    and [hl]
    ld d, e
    ret c

    ld d, l
    ld l, d
    or h
    add hl, hl
    add sp, $2a
    ld [$ba4a], a
    sub d
    ld l, [hl]
    call nc, $f51b
    ld [hl], $f5
    ld c, h
    cp l
    sbc e
    cpl
    ld h, l
    ld sp, $5c6d
    ld e, e
    ld [hl], a
    ld h, $dc

jr_005_5935:
    rst $10
    or h
    call c, Call_000_386a
    adc a
    dec a
    and l
    sbc d
    ld c, c
    sub [hl]
    sub d
    ld c, l
    adc b
    rst $20
    ld h, h
    dec hl
    ret c

    ld a, [bc]
    or $82
    ld a, l
    add c
    adc a
    ld b, a
    ld e, $dc
    jp hl


    or a
    ld a, [de]
    ld a, l
    jp nz, $919f

    ld c, c
    di
    ld h, a
    ld a, h
    ld a, e
    ld a, l
    add b
    rst $28
    ld e, b
    inc sp
    jp nc, $750e

    ld b, e
    call $d1a8
    ld h, c
    ld c, l
    call nc, Call_005_75c8
    or c
    sbc l
    sbc h
    daa
    ld [hl], e
    inc b
    sbc $c0
    scf
    or b
    dec [hl]
    db $fc
    dec b
    call c, Call_005_532b
    ld e, e
    or [hl]
    dec de
    push af
    and [hl]
    db $ed
    or l
    ld [hl], b
    sbc l
    ld c, b
    ld d, a
    db $d3
    ld hl, sp+$0e
    di
    dec b
    cp [hl]
    pop bc
    ld l, [hl]
    ld h, b
    cp e
    cp b
    rrca
    or b
    rst $10
    ld e, c
    dec l
    ld c, c
    rla
    ld [hl], l
    xor d
    ret c

    add c
    ld a, a
    ld h, $de
    adc c
    sub a
    cp l
    pop de
    inc h
    jp nc, Jump_005_78f0

    inc e
    ld c, $05

Jump_005_59ac:
    ld d, e
    xor d
    ld e, a
    dec hl
    db $f4
    ld [hl], $19
    ld d, d
    ret


    ld [hl], h
    jp nz, Jump_000_3465

    sbc e
    dec [hl]
    ld l, h
    ld [hl+], a
    ld h, l
    ccf
    sub $c1
    or $13
    sub $ab
    ld d, [hl]
    ld de, $ad59
    ld e, h
    ld d, a
    sbc a
    add l
    adc h
    xor e
    ld e, l
    add [hl]
    ld [c], a
    ld l, h
    ld e, [hl]
    ld a, [de]
    pop bc
    ld h, b
    xor h
    sub $3a
    jp z, Jump_005_7c23

    ld l, a
    ld h, $d8
    ld d, $48
    and a
    ld b, a
    ld d, c
    db $f4
    add l
    inc hl
    ld c, c
    ld c, e
    ld [hl], h
    sbc l
    cp e
    dec hl
    adc c
    add e
    db $10
    ld a, [$9635]
    sub e
    and h
    sub l
    ld a, [hl-]
    ret


    ld h, e
    and l
    push bc
    ld [hl], l
    ld c, $e2
    ld e, h
    jp hl


    ld e, e
    ld d, $e5
    ret


    ld [hl], d
    ld e, l
    nop
    ld h, b
    jr jr_005_5a1b

    inc b
    dec b
    and c
    jr z, jr_005_5a2a

    add hl, bc
    sub b
    inc h
    ld de, $4206
    inc b
    ld b, c
    db $10
    sub l
    dec h

jr_005_5a1b:
    ret nc

    db $e4
    ld b, c
    ld [de], a
    ld b, l
    ld de, $6064
    ld b, l
    ld de, $b4d3
    push af
    ccf
    ld d, b

jr_005_5a2a:
    ld d, h
    dec [hl]
    dec d
    ld b, a
    dec [hl]
    dec c
    ld b, l

jr_005_5a31:
    jr z, jr_005_5a8a

    rla
    call nc, Call_005_41e5
    ld d, d
    ld d, l
    dec d
    ld h, c
    ld d, h
    ld d, l
    ld a, [hl+]
    adc d
    xor c
    ld l, [hl]
    ld e, l
    dec d
    ld c, l
    ld d, d
    jr z, jr_005_5a31

    add hl, sp
    ld c, a
    ld d, e
    ret z

    cp $97
    push hl
    jp hl


    ld [hl], b
    xor d
    dec d
    dec b
    ld [hl], d
    adc h
    xor a
    inc de
    push bc
    ld a, [c]
    ld a, h
    rst $38
    ccf
    rrca
    ld sp, hl
    ret c

    rst $38
    ld b, $0f
    pop af
    db $ec
    rst $38
    ld [de], a
    rst $08
    pop af
    xor h
    rst $38
    ld [bc], a
    daa
    ld h, c
    cp $77
    ccf
    call nz, $fc33
    ld e, e
    and c
    add sp, -$66
    jr @+$01

    nop
    dec b
    ld d, b
    nop
    xor d
    and e
    ld l, b
    ld a, [c]
    nop
    push de
    jr jr_005_5a93

    and b
    ld b, b
    push af
    inc bc
    rrca

jr_005_5a8a:
    ld [$9046], a
    and e
    adc d
    and b
    inc c
    ld d, a
    inc bc

jr_005_5a93:
    ld a, [bc]
    ldh a, [rLCDC]
    ld e, a
    jr jr_005_5aa8

    ldh a, [$0e]
    adc h
    ccf
    adc $70
    ld h, b
    add h
    ld e, $cb
    ld b, c
    inc l
    sub h
    ld a, [de]
    rst $08

jr_005_5aa8:
    ld [hl], b
    jr nz, jr_005_5aab

jr_005_5aab:
    ccf
    ret z

    ld a, [bc]
    and b
    cp h
    db $10
    jp z, $6e41

    cp d
    xor [hl]
    xor e
    adc d
    pop de
    ld a, [bc]
    or b
    nop
    nop
    ld b, b
    ldh a, [$38]
    adc a
    ld [c], a
    db $f4
    cp a
    dec d
    add l
    ld [hl], l
    sub d
    pop bc
    or e
    inc l
    ld [bc], a
    adc b
    cp [hl]
    rla
    ld c, a
    ld sp, hl
    and [hl]
    db $d3
    sbc d
    and $92
    ret c

    rst $30
    ld a, [hl-]
    adc $a1
    ld e, b
    ld d, c

jr_005_5add:
    ld a, [hl+]
    ld c, d
    ld [hl], c
    ld d, b
    ld c, a
    ld a, [hl+]
    ret


    pop bc
    sbc h
    ld e, b
    inc sp
    rlc l
    reti


    ld a, b
    ld e, [hl]
    sub a
    push bc
    pop af
    ld a, [de]
    dec hl
    add l
    and d
    nop
    ld [hl], b
    ld a, b
    sbc [hl]
    inc de
    ld c, c
    db $e4
    ld a, c
    adc b
    ld [hl+], a
    ld c, b
    ld b, b
    db $10
    xor a
    sub d
    add b
    ld h, b
    inc de

jr_005_5b06:
    adc h
    db $e3
    ld d, h
    xor $0a
    adc l
    db $d3
    ld l, b
    dec a
    dec c
    ld c, a
    or c
    ld e, b
    reti


    jr nz, jr_005_5add

    call nz, $d928
    ld [hl], $45
    ld b, e
    ld [hl], b
    xor d
    dec l
    add l
    ld d, c

jr_005_5b21:
    or h
    xor d
    ld [hl], $ca
    db $d3
    ld a, b
    inc de
    dec sp
    rra
    ld b, a
    ret c

    and a
    ld a, [hl]
    ld [bc], a
    ld h, b
    sbc h
    inc h
    add hl, de
    ld l, h
    ld de, $73cc
    dec bc
    inc bc
    di
    ld c, b
    db $ed
    add hl, bc
    ld c, l
    or e
    inc l
    scf
    dec l
    ld b, a
    or e
    db $10
    dec sp
    nop
    add b
    ld sp, $6184
    inc l
    rlca
    ld bc, $be38
    inc l
    ld c, h
    pop af
    jr c, jr_005_5b06

    inc de
    rlc d
    inc a
    ld [hl], b
    or e
    ld l, h
    inc bc
    nop
    ret nz

    jr c, jr_005_5b67

    ld bc, $b0c0
    ld l, $34
    dec e

jr_005_5b67:
    jr z, jr_005_5ba5

    inc [hl]
    dec b
    add c
    and b
    xor h

Jump_005_5b6e:
    ld l, $0c
    pop de
    inc [hl]
    ld [hl], e
    inc l
    set 0, b
    ld [hl], b
    rst $38
    dec sp
    pop bc
    di
    ret nz

    rrca
    dec c
    rlca
    ld h, c
    xor b
    db $eb
    dec [hl]
    ld c, l
    ld e, c
    ld [hl], h
    push de
    dec d
    ld b, [hl]
    and d
    jr z, jr_005_5b21

    add hl, sp
    ld b, b
    and e
    ret z

    ld e, c
    ccf
    ld b, l
    inc de
    call nc, Call_000_1d11
    ld b, c
    sub c
    rst $30
    ld [hl], d
    rra
    ld c, a
    pop de
    ld b, b
    db $f4
    inc e
    rrca
    ld b, c
    inc bc
    ld a, e

jr_005_5ba5:
    rst $18
    db $10
    xor l
    db $ec
    ld d, b
    inc d
    dec b
    ld hl, $804b
    inc e
    ld c, a
    ld d, b
    ld h, b
    ld a, h
    rlca
    rlca
    ret nz

    ld a, b
    ld a, [hl]
    dec d

jr_005_5bba:
    adc a
    pop hl
    sbc b
    xor $e3
    ld hl, sp-$02
    ld [bc], a
    inc [hl]
    ld b, d
    cp b
    nop
    inc b
    ld bc, $b942
    ld [hl], c
    inc b
    ld b, c
    push hl
    ret z

    ld e, $78
    add c
    push hl
    ld a, [$0710]
    sbc e
    and $c1
    jr nz, jr_005_5bba

    and [hl]
    rrca
    inc bc
    ldh [$b0], a
    ld a, $1a
    add a
    cp $b7
    xor l
    ld e, $87
    cp $5f
    ld a, e
    and $7a
    ld l, $85
    ld a, [bc]
    db $eb
    ld b, [hl]
    xor $b8
    ld a, a
    dec de
    rlca
    pop hl
    ld hl, sp+$7f
    add hl, de
    ld b, $f1
    sbc b
    ld l, [hl]
    add hl, bc

jr_005_5c00:
    add d
    ldh a, [$28]
    ld a, [bc]
    sub [hl]
    sub $43
    ld d, h
    push af
    ld a, [bc]
    adc [hl]
    and c
    ld b, h
    pop de
    sub a
    ld a, c
    or d
    and b
    xor b
    sub h
    ld b, [hl]
    and e
    add sp, -$6b
    ccf
    ld c, h
    or e
    db $fc
    ld h, d
    rra
    res 0, d
    db $fc
    ld d, a
    dec d
    jp nz, $a8a0

    ld d, l
    dec d
    jp z, $fcd2

    ld d, e
    rra
    jp z, $f863

    adc l
    ccf
    ld b, e
    and e
    add sp, -$23
    scf
    push hl
    pop de
    db $f4
    ld a, l
    dec [hl]
    rst $08
    pop af
    sbc b
    ld a, a
    inc l
    ld c, e
    pop af
    ld [hl], b
    ld e, a
    ld e, c
    ld h, $91
    ld a, h
    ld e, a
    dec a
    ld c, a
    ld a, [c]
    call z, Call_000_11ff
    adc a
    ldh [$74], a
    db $fd
    jr c, @-$70

    ld l, $00
    add d
    jr nz, jr_005_5c00

    or e
    xor h
    db $eb
    dec h
    ld c, a
    di
    ld [$fcfe], sp
    push hl
    ret nc

    ld d, h
    dec d
    sub a
    ld b, l
    add e
    ldh [$b5], a
    ccf
    call nz, $fca1
    or b
    cpl
    pop bc
    ldh a, [$7f]
    ld [c], a
    rst $38
    push hl
    ret nc

    ld d, h
    dec a
    ld a, [de]
    adc a
    or d
    ld [hl], h
    rst $38
    xor c
    ld c, l
    di
    ld a, h
    ld [$833a], a
    ld b, e
    db $d3
    ld h, e
    di
    ld c, $a3
    ld e, h
    rst $18
    ld a, [hl+]
    ld c, d
    ld sp, hl
    or h
    xor d
    ld a, [hl+]
    rst $38
    jr nc, @+$0a

    ld [bc], a
    push hl
    ret z

    ld [hl+], a
    dec bc
    ret


    ld a, [hl+]
    call Call_005_5064
    rst $38
    jr nz, @-$2f

    di
    ld e, b
    cp $2b
    ld c, a
    db $d3
    ld l, b
    ld a, [$4f0b]
    db $d3
    call z, $16ff
    dec b
    ld a, [c]
    cp h
    xor a
    ld c, [hl]
    ld c, a
    jp hl


    and c
    nop
    ld a, [hl+]
    xor d
    sub l
    ld c, h
    ld d, $09
    xor c
    call nc, Call_005_7af5
    or d
    sbc a
    and $13
    ld sp, hl
    ld d, h
    xor d
    cp e
    ld e, l
    sbc e
    sbc a
    pop hl
    and a
    db $db
    reti


    xor $ac
    ld d, a
    sub [hl]
    dec bc
    adc $17
    jp hl


    ld [hl], h
    ld a, [$7fe6]
    inc l
    ld e, a
    push hl
    rst $30
    ld hl, sp-$53
    cp $1c
    ccf
    ld hl, $e557
    ld [de], a
    ld hl, sp+$29
    push af
    rrca
    add c
    call z, Call_005_5355
    add hl, sp
    adc d
    xor [hl]
    ld l, e
    ld [bc], a
    sbc d
    ld c, [hl]
    ld h, c
    and $b7
    ld a, [$fc19]
    db $fd
    ld a, [hl]
    sbc e
    sbc l
    ret


    or a
    ei
    dec e
    cp $7e
    ccf
    xor [hl]
    ld d, a
    db $ed
    ld d, [hl]
    xor d
    cp c
    ld e, h
    ld e, e
    cpl
    xor d
    ld d, l
    push hl
    ld b, [hl]
    cp c
    xor c
    sub $55
    ld l, d
    adc d
    sbc l
    ld b, [hl]
    daa
    ldh a, [$15]
    db $eb
    ld [hl-], a
    sbc l
    ret c

    sub e
    rst $28
    ld a, [c]
    ld hl, $40fd
    xor [hl]
    sbc h
    ld e, b
    ld h, b
    ld l, l
    sub $e8
    db $dd
    cp $8d
    ld a, [hl]
    cp [hl]
    rst $18
    ld h, l
    ld h, d
    cp h
    ld h, h
    ldh [$fe], a
    ld d, a
    cpl
    sbc [hl]
    ld l, a
    ld a, [c]
    jp Jump_005_5efc


    rst $38
    ld a, [bc]
    cp a
    ret


    rst $08
    ld a, [c]
    ld de, $a07c
    ld d, a
    nop
    cp a
    ld b, e
    rlca
    ret nz

    pop hl
    ldh a, [$3c]
    ld a, [hl]
    dec hl
    ccf
    adc h
    adc $ec
    and [hl]
    ld d, c

Call_005_5d66:
    ld b, b
    and b
    xor h
    xor a
    rst $10
    db $e4
    and e
    ld a, [$7e85]
    ld e, a
    ld l, a

jr_005_5d72:
    xor [hl]
    sbc a
    ld h, d
    rst $00
    ld a, [$74e9]
    ld l, a
    ccf
    and a
    ld e, a
    rst $28
    sub a
    ld a, [$7cc9]
    ld h, l
    ld a, $a2
    rst $18
    db $e3
    add a
    ld hl, sp+$04

jr_005_5d8a:
    cp $40
    jr nz, jr_005_5d8e

jr_005_5d8e:
    nop
    nop
    dec e
    xor $fb
    ld a, e
    cp e
    inc l
    ccf
    ld a, [bc]
    rrca
    ld b, b
    add c
    db $d3
    add hl, de
    adc h
    ld a, $70
    sbc $87
    rlca
    and d
    ld c, c
    ld l, a
    rst $08
    ld e, [hl]
    cpl
    sub l
    adc e
    rst $20
    ld d, e
    rst $38
    xor l
    sub $7d
    ccf
    ld sp, hl
    cp b
    call z, Call_005_4376
    dec h
    sub [hl]
    jp z, $babb

    add $e3
    ld sp, hl
    xor b
    cp $ec
    ld a, a
    ccf
    sbc a
    xor $47
    ld a, e
    sbc c
    call c, Call_000_1726
    jp c, Jump_005_5fe7

    add hl, sp
    jp nz, $56ad

    ld d, h
    add c
    ld a, [hl]
    ld a, [bc]
    xor [hl]
    and a
    ld e, d
    ret c

    rst $30
    ld a, l
    rst $10
    ld d, d
    db $f4
    cp a
    jr c, jr_005_5d72

    ldh [rLCDC], a
    ldh a, [$6e]
    ldh [$90], a
    nop

Jump_005_5dea:
    ld e, l
    ccf
    jp z, $fa22

    ld a, [bc]
    add h
    jr nz, jr_005_5d8a

    call $4c4d
    adc l
    ld d, d
    add sp, -$06
    inc de
    ld b, a
    rst $10
    push de
    ld h, d
    dec hl
    adc d
    pop af
    ld h, h
    ld e, a
    inc b
    pop bc
    ldh a, [rNR10]
    rlca
    add h
    ld h, c
    inc de
    sub b
    db $fc
    add c
    ld [c], a
    ld e, b
    ld b, c
    ld h, c
    ld a, [hl-]
    adc [hl]
    and l
    ld [hl], $2d
    dec c
    ld d, [hl]
    inc bc
    xor b
    ld d, l
    dec e
    ld b, c
    and b
    add sp, $2d
    rrca
    ld b, c
    ld h, b
    ld a, b
    add hl, bc
    inc bc
    ret nz

    jr nz, jr_005_5e39

    ld de, $cd7c
    ld [hl], e
    ld e, h
    ld a, h
    ccf
    ret z

    inc hl
    ld a, [$580a]
    ld d, h
    db $f4

jr_005_5e39:
    dec a
    ld c, a
    ld d, h
    ld d, l
    ld sp, $5f58
    add [hl]
    pop hl
    inc sp
    ld d, h
    or c
    ld l, $46
    add c
    ldh [$d0], a
    inc a
    ld [bc], a
    inc bc
    add b
    add b
    jr nz, jr_005_5e72

    inc d
    inc e
    or l
    dec a
    ld b, l
    pop hl
    ld hl, sp+$23
    rrca
    ld [c], a
    jr c, jr_005_5ea2

    dec a
    ld c, a
    call nc, $0d15
    ld b, l
    ld d, c
    call nc, $e092
    cp [hl]
    ld d, e
    ld h, c
    reti


    dec [hl]
    ld d, h
    ld d, l
    sub l
    add l
    ld l, b
    db $eb

jr_005_5e72:
    jr @+$11

    ret nz

    jr nz, @-$02

jr_005_5e77:
    ld [hl], a
    sbc c
    ld d, $4d
    ld [c], a
    ld h, l
    ld d, $45
    sbc b
    ld h, b
    ld a, d
    ld e, $a7
    or c
    xor $7c
    ld [bc], a
    rst $30
    db $fd
    db $fd
    ld a, [hl]
    ld c, d
    and a
    db $ed
    rst $30
    ld c, h
    ld [c], a
    xor b
    ld a, [hl+]
    inc hl
    adc b
    ld l, c
    jr z, jr_005_5ebf

    rlca
    adc c
    pop hl
    sbc b
    ld e, l
    ld e, c
    ld b, b
    pop hl
    ld b, a

jr_005_5ea2:
    ret nc

    xor d
    add a
    pop hl
    push de
    xor d
    sbc a
    adc c
    ld e, e
    ret nc

    inc e
    ld b, $03
    add b
    ret nc

    db $76
    ld [hl], $84
    rlca
    ret


    ld [de], a
    ld b, d
    ld a, h
    pop bc
    ld d, b
    call nc, $1a2a
    and e

jr_005_5ebf:
    jr jr_005_5e77

    cpl
    adc h
    db $d3
    sbc b
    sub h
    inc bc
    nop
    pop bc
    ldh a, [$78]
    ld a, $0d
    ld b, a
    ld d, h
    inc e
    ld d, b
    ld d, $55
    dec [hl]
    ld b, [hl]
    ld c, d
    dec d
    ld l, h
    adc d
    ld [hl], h
    push de
    sub h
    ld l, c
    rst $30
    add hl, bc
    call nz, $8171
    add c
    db $f4
    add hl, de
    rra
    rst $00
    ld h, e
    ld hl, sp+$4d
    ccf
    ld b, l
    and e
    jp hl


jr_005_5eee:
    rst $08
    ld [hl], e
    ret z

    inc bc
    ld a, [$35af]
    rst $18
    ld d, e
    sub $b4
    xor l
    and d
    db $e3

Jump_005_5efc:
    ld d, [hl]
    dec l
    ld c, h
    push bc
    sub e
    db $f4
    ld d, c
    dec a
    ld b, c
    ld de, $d2d6
    or l
    dec l
    ld l, e
    ld h, d
    jp c, Jump_005_5b6e

    sub b
    ld [bc], a
    xor [hl]
    ccf
    db $eb
    ld a, [bc]
    ld a, l
    cp l
    jr nz, @+$71

    jp nc, $be05

    ld b, c
    ld c, [hl]
    ld de, $7184
    sub l
    ld bc, $df20
    ld b, $0f
    inc bc
    ldh [$b0], a
    ccf
    jr @-$37

    ld sp, hl
    adc d
    pop bc
    ld b, c
    ld [c], a
    res 3, d
    jr nc, jr_005_5eee

    db $e3
    inc sp
    sub $da
    inc bc
    ld b, a
    ret nc

    ld e, b
    ld a, [hl]
    or l
    dec b
    ld h, e
    db $fd
    pop hl
    ld h, l
    inc h
    add hl, de
    inc c
    rst $38
    jr nz, @+$11

    rst $30
    cp l
    pop af
    sub h
    and c
    ld e, b
    ld e, [hl]
    ret c

    inc e
    jp nc, $fe81

    ld a, l
    ld a, b
    jr z, jr_005_5f5e

    cp d
    daa
    adc d

jr_005_5f5e:
    ld b, b
    ld bc, $5040
    ld [hl], b
    dec de
    ret nz

    inc b
    ld b, c
    db $10
    ld h, e
    ld h, c
    or a
    ld a, [de]
    adc [hl]
    db $e3
    ret nc

    dec c
    cp a
    ld l, [hl]
    ld a, [c]
    add hl, hl
    db $10
    add d
    rst $00
    add $e7
    add $96
    ld l, [hl]
    ret nz

    or b
    jr nc, jr_005_5fdc

    jr jr_005_5fab

    ld h, b
    cp $5a
    jr nz, @+$03

    ldh a, [rSCY]
    sub [hl]
    ld a, $88
    ld l, b
    sub b
    ld hl, sp+$12
    inc [hl]
    ret nz

    nop
    ret nc

    inc c
    inc bc
    ret nz

    ld de, $bdbd
    or e
    and [hl]
    or $a8
    db $d3
    add c
    ret nz

    ld bc, $79e7
    ld e, [hl]
    ld [hl], c
    or b
    ld a, [hl]
    ld d, d
    ld [hl], l
    add hl, sp

jr_005_5fab:
    ld l, a
    ld d, [hl]
    nop
    add b
    jr nz, jr_005_6005

    dec d
    adc e
    rrca
    and d
    ld d, b
    db $f4
    ld a, [hl-]
    adc $cd
    ld b, c
    sbc e
    ld a, c
    rl d
    db $fc
    ld e, b
    rla
    jp z, $bff2

    ld [hl], d
    push de
    ld b, c
    ld b, $bd
    ld l, l
    or l
    adc l
    sub e
    ld a, l
    ld c, a
    ld a, $c8
    ld a, l
    ld l, h
    ld c, b
    ld a, d
    sub d
    ld [hl], h
    db $fc
    ld a, l
    add [hl]
    adc d

jr_005_5fdc:
    and c
    ld b, h
    ld d, c
    ld [hl], $03
    add b
    db $f4
    dec b
    ld b, b
    ld b, b
    nop

Jump_005_5fe7:
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    dec bc
    inc c
    nop
    nop
    dec c
    ld c, $00
    nop
    rrca
    stop
    nop
    ld de, $1312

jr_005_6005:
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_005_6044

    ld a, [hl+]
    rra
    jr nz, jr_005_604a

    inc l
    dec l
    ld l, $2f
    jr nc, jr_005_6056

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $15
    scf
    rla
    jr c, jr_005_6068

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
    ld b, l
    ld c, l

jr_005_6044:
    ld b, a
    ld c, [hl]
    ld c, a
    ld c, d
    ld d, b
    ld c, h

jr_005_604a:
    ld d, c
    ld c, l
    ld d, d
    ld c, [hl]
    ld c, a
    ld c, d
    ld d, b
    ld c, h
    ld b, l
    ld c, l
    ld b, a
    ld c, [hl]

jr_005_6056:
    ld c, a
    ld d, e
    ld d, b
    ld d, h
    ld d, l
    ld d, [hl]
    ccf
    ld b, b
    ld d, a
    ld e, b
    ld b, e
    ld b, h
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_005_6068:
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
    ld [$6b6a], sp
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

Jump_005_6080:
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    dec de
    inc e
    ld a, d
    ld a, e
    rra
    jr nz, jr_005_6107

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
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]

Jump_005_60a1:
    ld [hl], e
    adc a
    sub b
    sub c
    ld [hl], a
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
    sub [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a

jr_005_60bd:
    xor b
    ld h, c
    ld h, d
    ld h, e

Jump_005_60c1:
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    ld h, e
    ld l, h
    or c
    or d
    or e
    or h
    or l

jr_005_60d0:
    or [hl]
    ld h, e
    or a
    cp b
    or [hl]
    ld h, e
    cp c
    cp d
    or d
    or e
    cp e
    sub [hl]
    cp h
    cp l
    cp [hl]
    sbc e
    cp a
    ret nz

    sbc [hl]
    sub [hl]
    pop bc
    jp nz, RST_00

    jp Jump_000_00c4


    nop
    push bc
    add $74
    ld [hl], l
    rst $00
    ret z

    ld a, b
    ld a, c
    ret


    jp z, Jump_005_7b7a

    set 1, h
    inc d
    ld a, [bc]
    ld h, b
    ld b, d
    and b
    cp b
    ld h, d
    dec b
    inc bc
    inc d
    jp nz, Jump_005_5061

jr_005_6107:
    ld c, b

jr_005_6108:
    ld l, b
    and h
    ld d, h
    daa
    inc de
    adc d
    and c
    ret nc

    jr z, jr_005_6186

    ld c, [hl]
    rra
    dec d
    add a
    pop bc
    and d
    pop af
    sbc b
    xor h
    db $76
    ld [de], a
    jr z, jr_005_6131

    adc c
    and e
    ld sp, $4431
    sub d
    ld c, l
    add hl, bc
    sub d
    jp Jump_000_3225


    adc c
    jr c, jr_005_60d0

    cpl
    jr nz, jr_005_60bd

jr_005_6131:
    ld b, d
    jr nz, jr_005_6177

jr_005_6134:
    add hl, bc
    sub h
    xor [hl]
    ld e, l
    scf
    sbc e
    ld c, h
    ld h, c
    or d

jr_005_613d:
    ret c

    call nc, Call_005_571e
    dec bc
    sub [hl]
    ld b, [hl]
    ld hl, $18f1
    cp h
    ld [hl], d
    add l
    ld b, [hl]
    sub d
    ld b, $c3
    inc d
    ld a, b
    db $ec
    ld a, [hl]
    dec hl
    ld [hl+], a
    sub a
    ld c, [hl]
    daa
    sub e
    sbc c
    ld d, h
    cp d
    daa
    jr nc, jr_005_6108

    ld b, d
    ld h, [hl]
    or d

jr_005_6161:
    xor c
    call c, Call_005_71ea
    ld e, [hl]
    sub d
    ret


    jr nz, jr_005_613d

    ld a, [hl-]
    dec b
    ld [hl+], a
    ld [$2243], sp
    ld d, d
    ld h, l
    jr nc, jr_005_6134

    ld l, b
    inc a
    inc e

jr_005_6177:
    rrca
    or a
    call c, $e141
    ld a, [bc]
    ld e, h
    ld a, $bd
    dec a
    adc [hl]
    call nc, $9265
    adc c

jr_005_6186:
    sub h
    ld [hl+], a
    ld h, $07
    inc bc
    adc d
    ld [hl], b
    jr c, @+$42

    inc a
    rst $30
    rlca
    add l
    call nz, $f081
    jr jr_005_61c2

    db $dd
    adc d
    ld [hl], e
    ld a, [hl]
    add l
    ld h, d
    xor h
    or a
    ld sp, hl
    inc [hl]

Jump_005_61a2:
    or $0a
    jr jr_005_6161

    reti


    ld h, l
    db $76
    or c
    ld d, b
    inc b
    dec b
    ld l, e
    add d
    ld b, d
    and c

jr_005_61b1:
    ld [hl], b
    add c
    xor h
    db $10
    ld [hl], $1a
    adc $c7
    or h
    db $d3
    cp e
    call c, $c1f2
    inc e
    and a
    ld [c], a

jr_005_61c2:
    ld h, e
    rst $10
    adc e
    ld h, [hl]
    inc b
    ld d, d
    jr nc, @-$23

    ldh [rLYC], a
    ld e, b
    ld de, $2b46
    ld a, e
    ld sp, $6fde
    ld [c], a
    sub e
    db $ec
    push de
    sbc e
    ld b, h
    ld a, [hl+]
    sub h
    pop bc
    and b
    ld [hl], d
    ld b, b
    add sp, $7a
    call $14c9
    inc c
    inc [hl]

jr_005_61e7:
    db $f4
    ret z

    or h
    ld a, e
    and a
    xor l
    sub c
    jp nz, Jump_005_59ac

    ld e, e
    xor $86
    ld [hl], a

Call_005_61f5:
    or h
    db $e4
    ld d, e
    xor $f5
    cp e
    ld h, l
    ld [hl], $d9
    ld h, c
    and c
    rst $00
    add sp, -$07
    adc [hl]
    dec [hl]
    rlca
    ld b, l
    add hl, bc
    inc b
    add d
    add d
    and c
    ld l, c
    add h
    ld c, $0a
    ld a, [de]
    pop de
    and $fb
    ld [bc], a
    xor l
    ld b, b
    inc l
    inc c
    ld d, b
    db $db
    rla
    ld c, l
    pop hl
    ld d, h
    ld e, e
    ld b, $59
    db $db
    ld [hl], c
    jr nz, jr_005_623a

    dec l
    ld b, [hl]
    ld a, d
    sbc h
    inc d
    xor h
    jr nc, jr_005_61b1

    ld e, $77
    pop bc
    sub l
    ld e, l
    pop hl
    inc h
    inc a
    dec hl
    dec c
    ld b, d
    ret nc

jr_005_623a:
    or h
    dec hl
    ld b, c
    add d
    or b
    or d
    dec de
    add [hl]
    add d
    cp b
    ld l, d
    dec de
    dec bc
    add d
    ld hl, sp-$7c
    dec l
    add [hl]
    ld d, b
    ld l, b
    sub d
    ld h, $88
    add c
    ld [hl], b
    ld l, d
    inc hl
    adc b
    and d
    adc b
    ld l, b
    jr nc, jr_005_61e7

    ld d, h
    cp b
    sbc [hl]
    ld sp, $8288
    or b
    xor [hl]
    inc [hl]
    adc [hl]
    ld h, e
    sub h

jr_005_6267:
    adc d
    ld a, [hl-]
    adc b
    ld hl, $c6b8
    ld b, d
    sub b
    db $e3
    adc c
    ld b, $47
    sub c
    ld h, d
    jr c, @-$7c

    add hl, sp
    sub c
    ld [c], a
    nop
    jp nz, $934d

    inc h
    ret z

    jp nz, $9453

    push hl
    jr jr_005_62ee

    ld sp, $030c
    db $10
    ret z

    inc sp
    ld b, c
    and l
    and b
    ld hl, sp+$3f
    sub [hl]
    add e
    jr nc, jr_005_6267

    ld h, c
    ld c, b
    and l
    and b
    db $f4
    inc [hl]
    inc c
    inc bc
    inc h
    ld a, [de]
    ld e, e
    ld c, b
    and l
    or b
    add $2e
    sbc b
    and $e9
    ret z

    jr nc, @+$0e

    push hl
    xor b
    cp d
    ld h, c
    sbc [hl]
    inc bc
    add hl, hl
    sbc [hl]
    ld e, b
    sbc b
    push hl
    ldh a, [$c6]
    ld h, a
    sbc e
    ld h, a
    ld e, c
    jp z, $a075

    and [hl]
    ld [$7216], a
    sbc [hl]
    rst $20
    cp c
    ld a, [$9e86]
    ld b, e
    ret nc

    add $7e
    and c
    ld h, a
    ld d, b
    jp nz, $a360

    jr z, jr_005_630e

    ld l, b
    ld [hl-], a
    and [hl]
    jr z, jr_005_6323

    and $91
    sbc [hl]
    ld b, b
    nop
    ret nz

    nop
    ld bc, $3080
    ld h, h
    jr jr_005_62e7

jr_005_62e7:
    nop
    inc b
    adc d
    and l
    xor d
    ld a, [hl+]
    ld e, d

jr_005_62ee:
    sbc [hl]
    sbc [hl]
    and a
    add b
    ld l, d
    adc [hl]
    xor d
    add hl, bc
    xor d
    adc b
    cp d
    xor c
    xor l
    add hl, hl
    ld a, [$b382]
    xor l
    ld a, [hl+]
    ld e, d
    jp c, $a9b6

    jp hl


    ld a, [$b9ae]
    or b
    inc l
    ld a, [de]
    xor $b0

jr_005_630e:
    or b
    ld l, e
    xor d
    sbc d
    or c
    xor [hl]
    ld b, e
    dec bc
    ld [hl+], a
    push bc
    or e
    inc l
    jp c, $b6a2

    nop
    rra
    ld c, e
    ld [de], a
    cp c
    xor d

jr_005_6323:
    jp hl


    ld a, [$067d]
    or h
    ret nz

    ld a, [bc]
    ld [c], a
    ret nz

    and a
    ld [$e01a], a
    ld b, b
    db $10

jr_005_6332:
    ld l, d
    sbc e
    ld c, $c7
    xor e
    dec hl
    ei
    ld a, [hl-]
    ldh [$b2], a
    ld l, h
    ld l, e
    sub d
    push bc
    xor a
    xor h
    cp e
    adc d
    xor $b3
    xor h
    ld e, e
    and b
    nop
    inc b
    pop bc
    ld c, e
    adc d
    or d
    rlca
    nop
    ld b, b
    ld d, $e6
    nop
    ld l, $0b
    ld d, [hl]
    xor h
    or h

jr_005_635a:
    xor [hl]
    cp e
    ld l, b
    ld a, [de]
    or b
    ld l, $0b
    ld b, d
    cp b
    ld h, a
    rst $28
    ld a, d
    or d
    db $e4
    cp e
    ld l, [hl]
    ld a, e
    add a
    add hl, bc
    xor l
    ld l, [hl]
    xor e
    di
    ld de, $e9c4
    db $eb
    jp nz, $b0f1

    ld sp, $620b
    rst $08
    xor b
    ld a, [hl+]
    ld a, [hl+]
    sub d
    db $eb
    cp d
    add hl, de
    ei
    db $fc
    jr nc, jr_005_6332

    or c
    ld a, [$a19e]
    ld b, $70
    ld c, d
    push hl
    sbc a
    or a
    ld l, d
    inc l
    xor e
    dec de
    cp d
    xor e
    jp z, Jump_000_0dc7

    pop bc
    ld l, [hl]
    db $10
    inc bc
    add hl, bc
    call z, $cc31
    cpl
    dec d
    rst $00
    ld sp, $2b5b
    jr jr_005_635a

    ld l, [hl]
    adc h
    ld l, a
    add hl, sp
    pop bc
    ld a, [c]
    ld l, e
    inc hl
    jr c, jr_005_63ba

    ld [bc], a
    ld d, c
    ld a, [bc]
    pop hl
    or l
    xor l

jr_005_63ba:
    xor e
    and $fb
    or d
    db $ed
    cp e
    or $e1
    ld b, c
    or b
    ld a, h
    cp a
    rra
    call z, Call_005_4c6c
    db $d3
    dec hl
    nop
    xor d
    ld e, e
    ld h, e
    add hl, sp
    sub $70
    dec hl
    ld [hl], e
    ld h, d
    or e
    pop af
    ld a, l
    inc bc
    scf
    rst $10
    ld [hl], h
    dec a
    ld h, e
    dec bc
    or [hl]
    add c
    adc e
    db $eb
    ld c, d
    push de
    ld a, [hl+]
    ld b, a
    ret nc

    dec h
    jp nz, Jump_005_6c6d

    sub [hl]
    xor d
    jp nc, $edf5

    ld a, $a5
    jp nc, Jump_005_6d35

    ld a, e
    ld l, e
    cp b
    db $eb
    db $db
    sub c
    adc $a9
    ld [hl], h
    inc l
    ld a, a
    ld e, a
    jp c, $1cf6

    ld a, [c]
    add $cf
    or [hl]
    ld l, l
    inc bc
    adc b
    rst $18
    ld [$d880], a
    ld a, [hl-]
    dec c
    add e
    add b
    add h
    ld [hl+], a
    ld [$40c2], sp
    call c, Call_005_673b
    ld sp, hl
    ld a, [hl]
    ld h, l
    ld b, $0e
    ld [c], a

jr_005_6423:
    xor $4c
    add hl, sp
    inc c
    add hl, sp
    xor $6b
    sbc h
    nop
    add e
    sbc [hl]
    sbc b
    jr c, jr_005_643f

    ld b, e
    ld h, h
    dec de
    xor [hl]
    ld b, $03
    ld c, $b3
    xor [hl]
    ld b, $83
    ld [hl], b
    db $e3
    xor a

jr_005_643f:
    db $ed
    cp d
    ld a, $e8
    dec sp
    rrca
    add hl, sp
    jr nc, jr_005_6423

    cp h
    db $ec
    inc bc
    ld h, b
    rst $18
    sbc l
    and $02
    ld c, [hl]
    call c, $ec18
    dec sp
    sbc [hl]
    db $e4
    ld a, [hl-]
    db $eb
    ld a, h
    adc $ff
    cp l
    dec c
    db $fc
    xor a
    dec hl
    sub h
    ldh a, [$3c]
    and b
    db $e3
    sub e
    rrca
    ld a, [hl-]
    rst $18
    ld e, a
    pop de
    db $f4
    ld a, l
    ld a, a
    ld l, a
    rst $18
    ldh a, [$bb]
    sub h
    dec de
    rst $00
    db $ed
    sub b
    ld l, a
    ld [hl], h
    ld [$3efa], sp
    sbc a
    xor e
    db $eb
    ei
    ld a, $df
    cp e
    rst $28
    db $fc
    nop
    add b
    ld b, h
    rra
    ld [$4f3f], sp
    ret nc

    ld [de], a
    ld a, [$3f3f]
    rst $10
    ei
    cp $3f
    rra
    and a
    ld a, [$fffd]
    xor a
    rst $18
    rst $28
    cp $bf
    ld l, a
    call nc, Call_000_0412
    ld a, a
    cp a
    db $db
    db $fd
    ld a, [$0090]
    adc b
    ld a, h
    ld b, c
    inc bc
    add d
    adc b
    ld [bc], a
    ld b, b
    adc b
    ld c, h
    ld a, [hl+]
    rla
    inc c
    add l
    rlca
    pop hl
    pop af
    ld [$4a8c], sp
    daa
    inc d
    adc d
    push bc
    and d
    pop af
    adc b
    call z, Call_000_376a
    inc e
    adc [hl]
    rst $00
    and d
    or b
    stop
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_005_64d8

    rst $38

jr_005_64d8:
    rlca
    nop
    jr nc, jr_005_651c

    dec c
    ld hl, sp+$60
    ld bc, $0e81
    add [hl]
    cp a
    rst $18
    dec c
    or $3a
    db $fd
    ld a, $fc
    ld e, a
    cp h
    rst $10
    xor $f3
    db $fc
    ld [hl], l
    cp $78
    ld [hl], h
    add d
    rst $18
    xor [hl]
    ld d, a
    db $e3
    db $e4
    ld a, h
    db $fd
    ld h, a
    ccf
    ld e, [hl]
    rst $28
    jp hl


    ld h, e
    db $dd
    ld a, h
    rst $38
    ccf
    cp a
    rst $08
    inc sp
    rla
    ld sp, hl
    ld [$786a], a
    adc [hl]
    rst $00
    ld h, l
    push bc
    jp hl


    ld [hl], b
    ld a, [$be5c]
    sub [hl]
    ccf
    sbc $ce

jr_005_651c:
    di
    ld a, l
    ld d, $8a
    db $ec
    and e
    ld d, d
    xor b
    xor [hl]
    inc bc
    inc b
    cp c
    db $fd
    ld b, e
    dec bc
    add a
    xor b
    ld [hl], l
    ld b, a
    or b
    ld a, h
    dec l
    ld [$b098], sp
    dec bc
    db $ed
    ld a, [$7de1]
    add b
    ld b, b
    sbc d
    jp nz, $ef5f

    ldh [rNR31], a
    ld sp, hl

jr_005_6543:
    rst $30
    ld h, a
    or d
    add b
    xor h
    sub b
    add d
    add hl, sp
    ld bc, $e77e
    rra
    and a
    rst $08
    adc e
    di
    sbc h
    ld [hl], d
    dec a
    ld e, $34
    jr c, jr_005_655a

jr_005_655a:
    rrca
    rst $00
    inc hl
    pop af
    ldh a, [$3e]
    ld a, [hl]
    inc sp
    sbc a
    sub h
    ld sp, hl
    ld a, l
    inc e
    db $d3
    ld b, a
    dec [hl]
    ld d, c
    call Call_005_7314
    ld a, b
    inc e
    nop
    rra
    inc bc
    adc a
    jp $c1e7


    ld sp, hl
    call z, $3a7f
    cp h
    adc b
    inc e
    ld bc, $a147
    add c
    ret nz

    ld d, b
    ld a, b
    ld a, [bc]
    dec e
    sbc c
    cp l
    add hl, de
    ld c, c
    db $e4
    ld b, h
    inc hl
    xor c
    inc e
    ldh [$a5], a
    ld a, b
    ld de, $244e
    ld [hl], e
    and d
    add hl, de
    ldh [rLCDC], a
    ld a, [hl-]
    ld sp, $289e
    ld [hl], h
    inc b
    ld e, $19
    or d
    add e
    ret z

    ld a, h
    ld [c], a
    ld a, [hl-]
    jr c, jr_005_65b2

    adc [hl]
    and d
    or e
    or a
    ld l, d
    add h
    ld b, e

jr_005_65b2:
    add e
    add c
    db $e4
    ld h, e
    add hl, sp
    db $10
    adc $0a
    rlca
    xor a
    db $10
    and $c0
    jr jr_005_6543

    ld de, $0412
    dec sp
    or $22
    rlca
    ld a, [hl-]
    ld bc, $00e6
    dec a
    add b
    rrca
    add sp, $17
    ld hl, sp+$05
    cp $80
    ld a, a
    adc c
    rra
    ld [c], a
    rla
    ld a, [$fd09]
    ld a, h
    ld bc, $c016
    inc h
    ret nc

    db $10
    dec de
    db $ec
    ld [hl], d
    inc bc
    dec d
    ld bc, $3485
    ld a, d
    ld c, b
    ld b, a
    nop
    adc a
    ldh [$80], a
    cp $7b
    call nz, $f441
    ld c, d
    ld e, $c4
    ld bc, $658c
    add hl, de
    rlc e
    call c, Call_000_0001
    ret nz

    ld [$1146], sp
    nop
    ld b, b
    ld [$1756], sp
    add l
    adc h
    inc bc
    jr @-$1a

    dec sp
    and c
    pop bc
    sub b
    and $87
    add $03
    sbc b
    ld a, [c]
    dec a
    and d
    ld c, b
    ld e, d
    ld d, $00
    add b
    jr c, @-$58

    ld [de], a
    adc e
    nop
    jr c, jr_005_666b

    ld [$c62a], sp
    ld a, [c]
    xor h
    ld l, h
    ld a, [hl+]
    inc hl
    jr z, @-$26

    xor e
    dec de
    adc d
    and c
    or b
    add hl, sp
    add hl, sp
    ld bc, $c8d3
    ld h, [hl]
    jr c, jr_005_6686

    inc sp
    ret nz

    dec hl
    dec sp
    ld [bc], a
    db $d3
    adc h
    ccf
    ld [hl-], a
    adc a
    ld [hl], b
    ret nz

    ld d, l
    inc c
    adc l
    ld [hl], b
    ret nz

    cp d
    ld e, $45
    ld d, e
    ldh a, [$ef]
    ld c, $02
    add b
    ld d, b
    sub e
    ld [de], a
    dec b
    ld d, d
    adc b
    jp $0f30


    db $e3
    db $f4
    cp $00
    ld b, b
    di
    ret nz

jr_005_666b:
    or e
    jr nc, jr_005_6672

    and d
    inc h
    db $fc
    rra

jr_005_6672:
    ld b, [hl]
    ldh a, [$c0]
    add hl, sp
    ld hl, $e00e
    nop
    ld a, [hl-]
    ld a, $87
    jp nc, Jump_000_3d40

    dec [hl]
    dec bc
    and c
    ldh [$d6], a
    inc c

jr_005_6686:
    ld c, h
    ldh a, [$e0]
    ld sp, $c620
    nop
    inc c
    ret nz

    nop
    ret z

    nop
    ld b, $82
    jr jr_005_669e

    ld de, $21e0
    scf
    add e
    sub d
    dec e
    ld d, e

jr_005_669e:
    ld c, h
    add b
    inc bc
    add b
    rra
    ld h, $c0
    ld [hl], e
    sub h
    ld h, e
    ld a, $cf
    add e
    ld d, b
    jr nc, jr_005_672a

    ld a, [bc]
    and e
    or b
    ld [$020b], a
    and e
    or d
    sbc d
    xor b
    add hl, hl
    pop af
    or d
    db $10
    adc e
    ld h, c
    ld h, l
    ld h, h
    ld a, a
    scf
    call nz, $0c13
    ld e, l
    dec hl
    ld b, [hl]
    sub d
    sub h
    ld l, c
    dec hl
    add $72
    cp b
    ld h, a
    dec hl
    add $22
    cp h
    ld l, d
    dec hl
    ld b, [hl]
    and d
    cp h
    ld l, b
    ld [hl], $c5
    jp c, $bff6

    xor a
    xor h
    dec de
    ld [bc], a
    inc sp
    or c
    ld b, $cb
    ld d, $c7
    dec de
    dec bc
    rst $30
    and l
    jp hl


    ld e, b
    db $ec
    push de
    ld h, [hl]
    adc $b4
    db $10
    add e
    db $ec

jr_005_66f7:
    rlca
    ccf
    ld b, b
    scf
    sbc d
    ld h, b
    or e
    db $ec
    pop af
    xor b
    inc l
    ld [de], a
    add d
    jp nz, $8ca8

    or a
    adc $b2
    jr nc, jr_005_66f7

    dec hl
    ld b, [hl]
    or d
    or h
    db $eb
    dec bc
    ld c, d
    or c
    or [hl]
    ld [$2ebb], a
    cp e
    cp d
    db $ed
    ld b, c
    sub b
    daa
    ret nz

    cp $3f
    rlca
    ldh [rNR10], a

Call_005_6724:
    ld c, $1d
    nop
    nop
    dec e
    or l

jr_005_672a:
    ld l, l
    ld l, d
    ld e, b
    cp d
    rst $38
    cp [hl]
    ld b, $e1
    db $d3
    ld [bc], a
    pop bc
    jr nc, jr_005_6773

    dec de
    ld [bc], a
    add h
    xor d

Call_005_673b:
    ld b, b
    inc c
    dec b
    ld bc, $c0f0
    dec b
    adc a
    call nz, $0c2c
    ld c, d
    pop bc
    jr nc, jr_005_678e

    inc d
    rst $00
    dec b
    add $30
    ld [hl], c
    ret nc

    ld l, a
    dec e
    ld b, b
    jr nc, @+$21

    ld e, $c7
    add b
    sub b
    inc a
    inc bc
    ret z

    ret nz

    ldh a, [rNR32]
    rrca
    ld bc, $e180
    cp b
    ld [hl], l
    jp z, $dcf2

    or b
    ld [hl], l
    rst $00
    nop
    ld h, b
    inc d
    rst $38
    ccf
    ld c, a
    inc sp

jr_005_6773:
    db $fc
    ld b, $37
    add h
    ld [hl], e
    ld a, h
    xor d
    cpl
    add h
    pop bc
    db $f4
    ld a, [de]
    rra
    ret


    jp Jump_000_3ef0


    ccf
    rst $18
    daa
    ret nc

    ld a, [$b43f]
    add a
    ret c

    inc b

jr_005_678e:
    inc bc
    ld [hl-], a
    ld b, e
    ld [$10d9], a
    or h

jr_005_6795:
    ld d, h
    jr nz, jr_005_6795

    ld e, d
    ret nc

    ld [hl], b
    adc d
    reti


    inc b

Call_005_679e:
    rrca
    db $fd
    ld h, h
    nop
    dec sp
    push af
    or e
    db $fc
    sub h
    ld d, [hl]
    ld e, l
    ld a, l
    ld d, a
    ld d, h
    ld d, [hl]
    ld [hl], l
    ld [hl], h
    inc e
    add h
    ld b, d
    rlca
    cp l
    ld a, c
    rlca
    ld a, c
    sbc $57
    sub l
    ld h, e
    ld bc, $952d
    adc a
    ld d, l
    ld d, [hl]
    ld b, b
    add e
    rst $38
    halt
    rrca
    ld a, l
    ld [c], a
    reti


    ld e, d
    push af
    ldh [$08], a
    ld a, a
    rst $18
    jp nz, $f451

    dec b
    rra
    ld d, b
    ld a, l
    rst $00
    ld [hl], c
    nop
    rrca
    cp [hl]
    jr nz, @+$01

    ld [c], a
    sub $bd
    adc a
    ld [hl], h
    db $dd
    dec l
    inc d
    dec e
    ld h, c
    or h
    ld b, b
    ld b, e
    call c, Call_000_3c12
    pop bc
    rlca
    add b
    ld sp, hl
    jr nz, @+$11

    ret nc

    inc b
    db $fd
    db $10
    rra
    dec c
    sub c
    rlca
    db $e4
    ld d, l
    sbc e
    inc sp
    ld [hl], d
    ld [$e52c], a
    add a
    sub h
    ld [$d77a], a
    and h
    jr nz, jr_005_683b

    pop bc
    inc bc
    ld a, [hl]
    bit 0, d
    rlca
    ld a, [c]

jr_005_6813:
    dec de
    ld [hl], a
    rst $20
    rrca
    db $10
    jr nz, jr_005_6813

    nop
    dec sp
    call $8c63
    ccf
    push de
    add b
    call c, $d1ff
    inc l
    rst $20
    ld e, h
    and b
    ccf
    bit 1, a
    inc h
    rst $38
    db $d3
    jp nz, $9c73

    dec sp
    ld a, $c7
    inc bc
    ret nz

    ld a, h
    ccf
    ld b, d
    inc de

jr_005_683b:
    add l
    and c
    add hl, bc
    ld c, $40
    ret z

    or $05
    add hl, bc
    ld [hl], b
    and b
    xor a
    ld [hl], d
    ld e, l
    ld d, $d4
    ld b, $01
    ret


    ld b, d
    ld e, h
    ld a, [de]
    rlca
    sub $3d
    ld h, h
    ld [de], a
    sub $ad
    sbc l
    sbc b
    rst $38
    ld [hl], l
    ret nc

    ld [hl], b
    and e
    ld [hl], a
    or [hl]
    db $76
    ld [$179e], sp
    adc d
    ld h, d
    cp b
    ld c, [hl]
    ld [de], a
    adc b
    adc e
    inc hl
    ret c

    ld c, b
    inc sp
    rrca
    inc bc
    ldh a, [rSVBK]
    ccf
    inc c
    add e
    jr nc, jr_005_68e9

    ccf
    rrca
    inc bc
    di
    ld b, [hl]
    ld a, l
    ld e, a
    ld [hl], a
    call c, $d306
    ld [hl-], a
    ld b, b
    ld [$0007], sp
    ld b, e
    ret nc

    db $10
    dec a
    ld hl, $f309
    ld [$18cf], sp
    ld c, $52
    add b
    pop af
    ld d, $07
    sub c
    jr z, jr_005_691a

    ld e, b
    db $ed
    ld h, a
    cp l
    nop
    nop
    cp a
    ret nz

jr_005_68a4:
    xor a
    ldh a, [$8b]
    db $fc
    nop
    ld a, a
    ld bc, $801f
    ld h, a
    db $f4
    inc bc
    db $ec
    nop
    jp hl


    adc b
    ld b, h
    ld bc, $800c
    inc bc
    jr nz, jr_005_68d7

    ld c, a
    ld b, b
    jr nc, jr_005_68d3

    ld c, $41
    inc hl
    sub b
    ld h, b
    ld [hl], b
    inc c
    ld e, $01
    and a
    ret nc

    ld l, c
    ld a, [hl]
    dec b
    jr z, @+$81

    and b
    sbc a
    ret nz

    db $e3

jr_005_68d3:
    ld a, c
    jr jr_005_68a4

    add c

jr_005_68d7:
    ld b, b
    add b
    ld [bc], a
    inc b
    inc bc
    ld hl, sp-$48
    ld a, [hl]
    inc hl
    add hl, de
    adc d
    ld b, a
    cpl
    sub a
    ret


    ld h, c
    ldh a, [$e1]

jr_005_68e9:
    ld [hl], b
    sub h
    ld c, d
    add hl, hl
    ld h, $93
    dec b
    jp nz, $3347

    cp d
    sbc a
    ld l, h
    ld h, a
    dec sp
    add hl, hl
    sub $a7
    ld [hl], e
    or b
    ld e, b
    ld l, $87
    ld c, d
    pop de
    ld [$7d1a], a
    add d
    ld c, e
    ld h, b
    ld b, a
    or b
    ld hl, $32f4
    ld a, c
    ld a, [hl-]
    sbc l
    ld h, b
    rlca
    ld a, b
    ld d, c
    cp $21
    ld a, h
    sub h
    sbc e
    ret


jr_005_691a:
    inc b
    ld hl, sp-$80
    ld a, [hl]
    jr nz, jr_005_699f

    ret nz

    add c
    ld d, b
    rst $30
    cp d
    ld hl, $00de
    rlca
    and l

jr_005_692a:
    inc de
    db $e4
    ld b, $fa
    ld bc, $003e
    rra
    sub b
    sbc a
    rst $08
    rst $00
    ldh [rDIV], a
    ld [bc], a
    dec b
    inc bc
    add e
    ld bc, $81e2
    ei
    add c
    ld a, [$7cc0]
    ld [hl-], a
    rra
    add sp, $09
    ld d, l
    pop hl
    jp c, Jump_005_5600

    ld [$8005], sp
    nop
    ld h, b
    db $10
    jr jr_005_6975

    ld [hl], b

jr_005_6956:
    ld [$655c], sp
    rla
    sbc b
    ld sp, hl
    db $fd
    and c
    ld a, [bc]
    dec a
    inc [hl]
    inc hl
    rla
    adc d
    ld de, $080e
    rlca
    add c
    add b
    ldh [$a0], a
    ld a, b
    ld d, b
    ld l, $34
    dec de
    db $eb
    pop bc
    ld c, b
    pop af

jr_005_6975:
    dec de
    adc h
    ld [hl], b
    ld hl, sp+$38
    inc a
    rrca
    adc a
    pop de
    dec bc
    add h
    and b
    ldh a, [$8f]
    inc c
    sbc [hl]
    ret nz

    ld b, h
    jr c, jr_005_692a

    ld e, [hl]
    inc b
    jp c, $fa03

    dec sp
    inc [hl]
    and d
    ld e, h
    inc [hl]
    rra
    nop
    ld h, l
    rra
    and $03
    db $fd
    cp h
    ret nz

    ld l, a
    ld [hl+], a
    sub c

jr_005_699f:
    ld c, b
    inc b
    ld b, b
    nop
    inc de
    or h
    ld [bc], a
    add e
    ld a, [$20bd]
    rlca
    add sp, $08
    rst $38
    ld [$7cf3], sp
    cp h
    ldh [rVBK], a
    xor b
    inc bc
    rst $28
    ld hl, sp-$08
    sub [hl]
    ld b, b
    rra
    or d
    call nz, Call_000_00cc
    ld [bc], a
    jr nz, jr_005_69ca

jr_005_69c3:
    sbc b
    jr z, jr_005_6a00

    ld bc, $c103
    and c

jr_005_69ca:
    inc d
    rrca
    jr nz, jr_005_6956

    ld [c], a
    jr jr_005_69df

    nop
    xor b
    ld [$1d72], a
    ld d, $bc
    ld c, $03
    jp nc, $10f1

    ld h, a
    ld l, l

jr_005_69df:
    ld c, b
    ld b, d
    sbc l
    adc e
    jr jr_005_69f3

    ld h, d
    ret nz

    ldh a, [rNR12]
    inc c
    add e
    pop bc
    pop bc
    ld h, h
    adc h
    add c
    ret nz

    ld hl, sp-$78

jr_005_69f3:
    pop hl
    pop de
    jr nz, jr_005_69c3

    inc a
    rrca
    pop bc
    ret nz

    db $fc
    ld [hl-], a
    inc c
    ret z

    cp [hl]

jr_005_6a00:
    dec l
    jr nc, @+$0e

    ret nz

    jr nz, @+$4a

    nop
    inc b
    ld [$00e4], sp
    ld [$c823], sp
    ld hl, sp+$10
    ld a, a
    pop bc
    ldh a, [rNR10]
    rla
    sub b
    ret nz

    nop
    adc [hl]
    ld b, [hl]
    sub c
    add b
    ld de, $4a0e
    add b
    add b
    ld [hl], a
    and $4f
    ld a, [hl]
    ld c, b
    jr nc, @+$06

    inc bc
    nop
    nop
    ld [hl], $25
    adc c
    nop
    ld h, h
    jp hl


    ld l, b
    cp $3f
    adc h
    or e
    inc a
    sbc d
    daa
    adc h
    inc de
    ld a, $62
    ld [hl+], a
    adc c
    di
    ld h, h
    rst $18
    sbc c
    ret nz

    sub b
    dec l
    add a
    ld [hl+], a
    ld [$7090], sp
    dec e
    sbc e
    call z, Call_000_2ca3
    sbc h
    daa
    rst $20
    ld b, d
    ret z

    cp a
    sbc l
    pop bc
    db $10
    ld a, h
    or e
    cpl
    pop bc
    ld b, b
    ld a, d
    ld a, h
    ld bc, $e081
    or b
    inc a
    ld [hl-], a
    inc c
    cp d
    ld d, $74
    ld l, l
    ret z

    ld [bc], a

jr_005_6a6d:
    ld c, $55
    sub l
    ld b, h
    ld hl, $000c
    ld a, [hl-]
    nop
    ld [bc], a
    ld [hl+], a
    sub d
    nop
    ld [$560a], sp
    sub a
    and l
    xor c
    ld l, b
    ld b, $01
    adc [hl]
    add b

jr_005_6a85:
    adc d
    ld a, d
    ld [bc], a
    ld a, [hl]
    ld l, c
    sbc d
    ld d, h
    add b
    xor c
    add hl, hl
    ld l, c
    ld a, $53
    sub l
    ld h, l
    scf
    ld b, [hl]
    ld e, c
    nop
    nop
    ld [hl], b
    inc c
    rlca
    db $10
    call nz, Call_000_0073
    ret z

    xor h
    rlc d
    ldh [$d0], a
    ld [hl], $08
    ld [bc], a
    jr c, jr_005_6a6d

    inc sp
    ret z

    ld [hl+], a
    dec a
    or l
    ld a, [bc]
    ld b, [hl]
    ld a, [c]
    ld c, h
    rst $38

jr_005_6ab5:
    jr z, jr_005_6a85

    ldh a, [rHDMA4]
    rst $18
    add hl, de
    adc a
    ld [c], a
    inc [hl]
    cp a
    inc sp
    adc a
    ldh [$7d], a
    dec c
    ld hl, $10c0
    inc a
    xor c
    dec hl
    jp nz, $bc00

    jr nz, jr_005_6afa

    ret nz

    sub e
    cp h
    ld [bc], a
    dec de
    ret nz

    inc bc
    or d
    xor c
    nop
    ld [$6ab9], a
    xor a
    xor h
    ld l, h
    jr jr_005_6ab5

    or b
    cpl
    dec c
    inc bc
    ld [hl], b
    add b
    inc hl
    inc hl
    ld e, e
    or b
    ld [$2e03], sp
    rrc [hl]
    push bc
    or c
    db $ec
    sbc e
    ld l, $cd
    or e
    jp $fc13


jr_005_6afa:
    ld a, [bc]
    inc bc
    xor l
    ld b, b
    sub h
    daa
    dec c
    ld c, e
    ld [hl], b
    ld d, b
    rst $30
    ld b, $87
    or l
    ret nc

    and h
    ld b, c
    push hl
    add hl, bc
    inc a
    ld b, $01
    add [hl]
    sub c
    cp h
    sub b
    ld a, d
    sub [hl]
    ld [hl], b
    ld b, b
    rst $38
    ld e, c
    ret z

    inc d
    xor b
    rst $38
    inc e
    rst $08
    ldh a, [$60]
    jr jr_005_6b32

    inc bc
    add b
    ld b, h
    ld de, $8079
    ld b, a
    sub h
    and b
    ld b, l
    add hl, hl
    ld bc, $6380

jr_005_6b32:
    inc a
    adc a
    ld sp, $7b68
    ld a, [hl-]
    ld c, a
    sub c
    inc [hl]
    ld a, l
    ld de, $d347

jr_005_6b3f:
    jr jr_005_6b3f

    ld c, d
    ldh a, [$a7]
    ld [c], a
    and h
    nop
    ld c, $02
    add b
    ldh a, [rNR41]
    rrca
    add d
    ld b, b
    cp $10
    rrca
    pop af
    ld d, b
    rst $38
    db $10
    rst $08
    ldh a, [$b0]
    rst $38
    jp nz, $8c09

    dec h
    rst $30
    adc $29
    ld h, e
    add b
    nop
    inc a
    dec [hl]
    dec c
    ld c, e
    ld [hl], $93
    db $dd
    dec e
    ld d, c
    ld sp, hl
    adc $b5
    db $10
    inc a
    ld [bc], a
    rlca
    sub $f0
    ld de, $3f0d
    jp nz, $204d

    rst $38
    jp nc, Jump_000_0382

    call nz, Call_000_3c22
    ret z

    inc bc
    rst $18
    ld c, d
    inc b
    xor a
    or e
    db $fc
    add hl, bc
    ccf
    db $ec
    jr c, jr_005_6c04

    or b
    dec a
    ld [hl+], a
    cp b
    or [hl]
    cpl
    adc h
    ld h, e
    inc sp
    pop hl
    add sp, $7a
    sbc l
    xor l
    ld sp, hl
    rlca
    scf
    rst $10
    ld de, $7211
    rst $18
    ld c, a
    ld a, [c]
    db $10
    rst $38
    ld bc, $ae1e
    dec h
    jp c, Jump_000_0f02

    cp $37
    ld a, a
    rst $18
    sbc $ce
    inc hl
    add l
    db $e4
    ld e, $be
    ld d, b
    rst $38
    call nz, Call_000_35f1
    sub a
    inc de
    ld de, $4d78
    rst $38
    add a
    ld [c], a
    rst $08
    cp [hl]
    cpl
    add l
    db $e3
    ld a, b
    di
    rst $18
    adc a
    ld a, d
    cp c
    call nc, $4008
    ccf
    cp d
    ld e, $8d
    jp hl


    db $e4
    sbc l
    and l
    push bc
    ld [hl], c
    nop
    jr c, jr_005_6bf7

    rst $38
    add e
    ld b, b
    or a
    or $57
    sub l
    db $76
    add d
    adc [hl]
    add hl, sp
    rlca
    dec a
    ei
    ld c, [hl]
    ld e, c
    jp c, Jump_005_7ad0

jr_005_6bf7:
    cp l
    push af
    rrca
    push hl
    add $07
    xor b
    ld b, b
    dec sp
    call nz, $9553

jr_005_6c03:
    db $e4

jr_005_6c04:
    ld a, c
    adc e
    ld [hl-], a
    jr nc, @-$0b

    inc hl
    dec bc
    pop af
    inc sp
    sub $61
    ld b, a
    inc sp
    inc hl
    jp c, $90f6

    ret nc

    call z, $0ecc
    call z, $fcc3
    call z, $cb7d
    or d
    inc hl
    and $f9
    cp l
    jp $d923


    or $fe
    rst $18
    xor e
    add sp, -$5c
    ret nz

    rrca
    jp $22f3


    inc bc
    or e
    inc e
    dec a
    jr nc, jr_005_6c03

    inc sp
    inc [hl]
    ld a, [c]
    inc sp
    ld h, l
    ld c, a
    db $d3
    ldh a, [rIE]
    cp [hl]
    ld a, a
    sbc a
    rst $20
    ld sp, hl
    ret z

    adc a
    or e
    ld [$befa], a
    rst $08
    sub a
    rst $20
    ld sp, hl
    cp $7f
    sbc a
    pop af
    ld a, [$ef7e]
    or a
    db $ec
    or $bb
    ld a, a
    rst $38
    pop af
    db $fc
    dec sp
    ld a, a
    ei
    rst $20
    ld sp, hl
    cp $7f
    sbc h
    adc b
    rst $38
    cp [hl]
    ld a, a
    sbc a
    rst $20

Jump_005_6c6d:
    ld sp, hl
    ret z

    adc a
    ei
    rst $20
    ld [hl+], a
    dec sp
    ld [hl], h
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec b
    ld b, $07
    ld [$0d09], sp
    dec bc
    inc c
    dec b
    ld b, $07
    ld [$0e09], sp
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_005_6cbb

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $17
    rra
    jr nz, jr_005_6ccc

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $26
    ld h, $27
    jr z, jr_005_6cdb

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc hl

jr_005_6cbb:
    inc h
    ld l, $24
    ld h, $26
    ld h, $26
    ld h, $29
    ld h, $29
    cpl
    jr nc, jr_005_6cfa

    ld [hl-], a
    ld [de], a
    inc de

jr_005_6ccc:
    inc sp
    dec d
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_6d0d

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_005_6cdb:
    ld b, c

Jump_005_6cdc:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld [hl], $37
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, $17
    ld c, d
    ld c, e
    ld [de], a
    inc de
    ld c, h
    dec d
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_005_6cfa:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_005_6d03:
    ld e, [hl]
    ld e, a
    ld h, b
    ld c, $0f
    ld h, c
    ld h, d
    ld d, $17
    ld c, d

jr_005_6d0d:
    ld h, e
    ld d, $17
    jr jr_005_6d76

    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

Call_005_6d1a:
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    ld c, $0f
    ld h, c
    ld h, d
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    jr nc, jr_005_6daa

    ld [hl-], a
    ld l, e
    ld l, h
    ld a, d

Jump_005_6d35:
    ld a, e
    ld a, h
    nop
    ld a, l

jr_005_6d39:
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    nop
    dec hl
    nop
    dec l
    ld d, $17
    ld c, d
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
    nop
    ld c, $00
    ld h, c
    nop
    ld c, $00
    ld h, c
    rrca
    nop
    ld h, d
    nop
    ld e, [hl]
    ld b, h
    ld h, b
    ld b, [hl]
    ld b, l
    sub b
    ld b, a
    ld e, a
    sub c
    sub d
    sub e
    sub h
    sub l
    jr z, jr_005_6d03

    add hl, hl
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    add hl, hl
    sbc h
    add hl, hl

jr_005_6d76:
    ld a, [de]
    adc l
    ld b, $83
    ld h, c
    and h

jr_005_6d7c:
    ld a, [bc]
    add hl, bc
    ld b, $81
    pop bc
    ld h, b
    ldh a, [$b8]
    inc e
    ld a, [hl+]
    inc de
    ld [$c288], sp
    jr nz, jr_005_6d7c

    add sp, $6c
    ld a, [hl-]
    daa
    rrca
    add [hl]
    ld b, h
    ld [hl+], a
    ld d, c
    ld l, b
    db $ec
    ld b, d
    dec bc
    add hl, de
    sub b
    add $21
    ld de, $f4e8
    ld l, d

jr_005_6da1:
    ld c, a
    ld [hl+], a
    sub e
    ld c, b
    and l
    jr nc, jr_005_6da1

    ld e, h
    and [hl]

jr_005_6daa:
    rla
    ld [bc], a
    sbc b
    ld b, h
    and $30
    ld sp, $d6a8
    ld h, l
    jr c, jr_005_6d39

    ld c, l
    ld h, $d3
    sbc c
    or h
    adc $67
    ld a, [hl+]
    sub c
    ret nc

    ld h, a
    db $d3
    reti


    call c, $8bc6
    ld de, $4ea2
    and d
    ld [hl-], a
    ld e, d
    ld e, l
    ld [hl+], a
    ld [hl], e
    ld c, [hl]
    xor b
    jp nc, Jump_005_74aa

    ld l, c
    db $fd
    ld a, $a5
    ld d, l
    dec de
    dec b
    ld b, d
    pop bc
    ld [hl], b
    ldh [$64], a
    ld [hl], $18
    inc c
    sub $c2
    or $1b
    dec h
    adc d
    cp c
    ld h, c
    dec e
    ld c, $c3
    sub [hl]
    dec sp

Jump_005_6df0:
    ld [$d57a], sp
    ld l, l
    inc c
    add [hl]
    add e
    db $76
    bit 0, b
    ld h, [hl]
    call $b86d

jr_005_6dfe:
    call c, $b6ee
    ld l, e
    push bc
    and b
    dec hl
    ld [hl], c
    or l
    ld e, a
    inc l
    or [hl]
    dec de
    call $f7da
    ld [hl], c
    or e
    ld e, d
    xor h
    sbc b
    dec de
    ld e, [hl]
    ld h, $d2
    dec sp
    or d
    rlca
    ld b, e
    pop bc
    ld d, b
    ld b, b
    inc h
    ld a, $20
    db $10
    db $e4
    di
    ld [bc], a
    inc e
    and $6f
    ld [hl-], a
    jr c, @+$1e

    adc c
    inc sp
    ld sp, hl
    xor l
    ld c, $90
    ld b, h
    inc hl
    pop de
    add a
    or e
    sbc c
    db $ed
    ld e, b
    add e
    ld c, a
    xor c
    jp nc, Jump_005_736b

    ld bc, $26dd
    add a
    ld d, l
    xor h
    call z, $f6e7
    dec de
    adc h
    adc $73
    ld b, e
    or h
    rst $10
    ld [$fb76], sp
    dec l
    nop
    rst $20
    jr nc, jr_005_6e8a

    inc de
    ld [bc], a
    add c
    ld h, b
    pop bc
    jr c, jr_005_6dfe

    ld d, d
    dec e
    inc de
    ld [hl], e
    add l
    dec a
    ld a, $4f
    ld c, a
    ld b, d

jr_005_6e68:
    dec hl
    add sp, -$0b
    ld b, [hl]
    db $e3
    sbc [hl]
    or a
    inc a
    ld d, h
    nop
    db $ec
    db $f4
    cp c
    db $fd
    ld e, a
    rra
    ld a, b
    ld d, e
    ldh [$f1], a
    ld [hl], h
    db $fc
    cp h
    pop hl
    sbc a
    sbc a
    cp c
    ld [$73f2], a
    ei
    sbc $7f
    ld c, a

jr_005_6e8a:
    ld l, e
    db $e4
    add hl, hl
    ret nc

    ei
    ld a, h
    ld a, a
    sub c
    rst $08
    push bc
    call nc, $df73
    and b
    and c
    ret


    inc bc
    ld b, b
    ldh [$3c], a
    db $10
    ld a, [bc]
    nop
    nop
    sbc b
    ld h, $0c
    add b
    jr nz, jr_005_6ea8

jr_005_6ea8:
    ld [hl-], a
    add d
    ld b, b
    ld l, b
    ld [hl-], a
    add hl, bc
    ld c, $00
    ld b, b
    xor h
    dec h
    add hl, bc
    add b
    ld h, b
    and b
    ld b, $0c
    jp Jump_000_1170


    ret


    inc c
    add b
    ld h, b
    ld [bc], a
    ld c, $0a
    pop hl
    jr z, @+$42

    inc b

jr_005_6ec7:
    add h
    ld hl, $4cc8
    inc sp
    ld bc, $00a1
    ld bc, $82e9
    ld [c], a
    add sp, -$47
    ret


    add [hl]
    sbc [hl]
    add sp, $4c
    nop
    add a
    add d
    cp b
    add $1b
    adc h
    ldh [$c0], a
    ld a, [bc]
    jr nz, jr_005_6e68

    ld h, d
    ld c, b
    xor $2d
    add l
    ld [hl+], a
    adc b
    ld c, $37
    add l
    ld h, e
    xor b
    ld h, [hl]
    add hl, bc
    adc d
    ld h, c
    ld e, b
    ld b, b
    inc l
    dec bc
    ld b, c
    db $10
    ld c, b
    inc de
    dec b
    ld [bc], a
    ldh a, [$c2]
    ld d, b
    dec bc
    add b
    jr nc, jr_005_6ec7

    ld l, $95
    add b
    ld [hl], b
    or [hl]
    ld e, h
    inc c
    inc bc
    add b
    inc d
    ld a, [hl+]
    sub h
    nop
    ld [hl], b
    cp h
    rlca
    dec bc
    inc bc
    ld [hl], b
    ld d, $58
    ld bc, $00c3
    inc c
    ld sp, $a50a
    jp hl


    ld [hl], b
    dec b
    sub a
    ld h, $89
    ld a, h
    cpl
    dec bc
    nop
    ld a, c
    add b
    ld a, [hl+]
    sbc h
    dec h
    adc c
    ld e, d
    ld h, b
    sub h
    nop
    ld e, c
    ld [c], a
    ld a, [hl]
    inc c
    ld h, $a9
    sub d
    ld [hl], a
    sbc l
    dec h
    ld l, c
    ld h, d
    ld l, e
    sbc l
    and $e9
    or $77
    sbc [hl]
    and l
    ld l, c
    adc d
    ld e, h
    and c
    ld h, $2a
    ld e, $66
    sub [hl]
    and $7a
    ld c, h
    cpl
    nop
    ld l, c
    jp c, $9f7a

    xor b
    ld a, [hl+]
    ld a, [de]
    adc d
    and e
    xor c
    ld a, [hl+]
    ld e, d
    sbc d
    and a
    xor d
    ld a, [hl+]
    sbc d
    xor d
    xor b
    ld b, b
    ld b, b
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_005_6f76

    rst $38

jr_005_6f76:
    ld [$c284], sp
    and c
    ld [hl], b
    ret z

    ld e, e
    ld a, [$fe10]
    ld a, [hl]
    jp $ebdf


    ld hl, sp+$42
    db $fc
    cp [hl]
    cp a
    adc e
    xor e
    set 4, l
    rst $30
    ld a, c
    ld e, l
    rst $18
    ld de, $3f7d
    ld e, a
    xor a
    or a
    xor e
    db $ed
    or $f7
    ld [hl], l
    cp l
    sbc $ee
    or $bb
    cp l
    ld e, [hl]
    or a
    ld d, l
    xor l
    jp c, $b6ed

    xor e
    ld l, l
    sub $ed
    ld [hl], l
    dec sp
    ld e, [hl]
    xor a
    ld l, c
    db $e3
    cp $05
    ccf
    nop
    scf
    ld a, [bc]
    add a
    db $f4
    inc bc
    ld d, l
    jp c, $73fb

    adc e
    add $14
    ld a, [de]
    ld [$1438], sp
    cp a
    ld d, b
    ld a, $c0
    db $eb
    ld [hl], c
    ld a, e
    or b
    cp b
    ld [hl], $1d
    xor a
    ld d, a
    ld [hl], d
    ld h, a
    ld [hl], e
    push de
    cp [hl]
    db $e4
    ld [hl], l
    add [hl]
    sbc $ce
    rst $30
    ei
    pop bc
    ld hl, sp-$64
    scf
    sub a
    push hl
    adc a
    rst $10
    dec sp
    db $fc
    ld [hl+], a
    rst $38
    ld b, e
    dec sp
    ld c, e
    rst $08
    or $0a
    pop de
    ld e, b
    call nc, Call_005_5d66
    rst $28
    cpl
    ld b, a
    ld h, c
    ld d, b
    sbc b
    inc [hl]
    ld d, $25
    ld de, $4081
    add $17
    rrca
    add [hl]
    call nz, Call_000_2fe2
    and c
    ld b, b
    ld h, [hl]
    scf
    ld e, $0c
    dec b
    dec b
    add e
    ld b, c
    ld h, b
    ld d, b
    dec de
    ld de, $c988
    add l
    ld b, e
    ld h, d
    pop hl
    adc b
    or h
    ld h, b
    ld [de], a
    ld b, $68
    ld [hl], h
    ld a, d
    dec l
    ld l, $93
    ld a, [de]
    ld a, [de]
    res 0, e
    dec [hl]
    add hl, sp
    dec c
    ld h, [hl]
    sbc e

Call_005_7032:
    ld e, a
    and c
    dec c
    dec b
    add hl, de
    call z, Call_000_03a1
    add e
    ld e, l
    adc l
    ret


    ld h, l
    ld [hl-], a
    pop bc
    ret nc

    sbc b
    or h
    ld h, [hl]
    and b
    ld h, b
    ld [hl], b
    ld a, b
    ld a, h
    ld l, $2f
    ld de, $6040
    db $e4
    ld [hl], d
    cp c
    inc a
    adc $5f
    rra
    adc l
    push bc
    db $e4
    sub b
    db $10
    inc e
    xor $62
    add h
    jp nz, Jump_005_5851

    or h
    ld d, [hl]
    dec h
    ld hl, $949a
    call $f0df
    ld hl, sp+$3c
    ld a, [hl]
    ld l, $7f
    inc b
    add c
    jp z, $a0e9

    ld c, b
    ld a, $2f
    ld [de], a
    db $ec
    ld hl, sp-$36
    ld e, $3c
    sub c
    add d
    rst $00
    ld [bc], a
    xor c
    ld c, h
    jp z, Jump_005_7d63

    ret


    ld b, h
    ld h, e
    ld d, c
    sbc b
    ld e, d
    dec d
    sbc a
    ld [hl], c
    ld [hl], h
    ld d, e
    dec bc
    inc bc
    ld [$0716], sp
    add c
    and b
    sub c
    ld a, b
    ld h, d
    dec d
    add $b0
    db $f4
    dec sp

Jump_005_70a1:
    ld b, $81
    ret nc

    inc h
    ld a, [bc]
    ld bc, $4040
    inc c
    ld [bc], a
    nop
    ld b, b
    inc d
    db $10
    ld d, h
    ld a, [de]
    dec c
    ld b, e
    and b
    inc [hl]
    ld [hl-], a
    inc bc
    jp $e000


    nop
    inc b
    rlca
    ld c, h
    add b
    jr nc, jr_005_70cd

    inc bc
    ld b, b
    jr nc, jr_005_70d9

    ld [hl+], a
    ret z

    cp d
    dec l
    ld a, [bc]
    dec b
    add c
    and h

jr_005_70cd:
    ld e, c
    dec b
    ld b, d
    pop de
    ld a, b
    ld h, c
    inc d
    add $02
    add sp, -$37
    dec d

jr_005_70d9:
    add [hl]
    ld d, d

jr_005_70db:
    cp h
    sbc $2d
    ld c, l
    ld b, c
    inc e
    and [hl]
    rra
    ld c, e
    ret nz

    call nc, $152d
    ld b, h
    db $d3
    call nc, Call_000_12ed
    add l
    ld [hl], d

jr_005_70ef:
    ld l, b
    sub a
    ld sp, $a24c
    ld [$8a85], sp
    ld b, a
    ld [c], a
    ld hl, sp+$51
    inc h
    ld e, h
    sub d
    nop
    ld b, b
    jr nc, @+$24

    ld l, b
    adc h
    ldh [$97], a
    add b
    ld [bc], a
    ld [bc], a
    ld h, d
    jr nz, jr_005_7132

    ld d, c
    inc b
    pop bc
    sbc c
    call nz, Call_000_0c23
    and d
    jr jr_005_70db

    ld d, b
    ret c

    ld l, l
    rlca
    adc d
    and e
    ld [hl], h
    or [hl]
    ld [hl-], a
    ld b, a
    ld h, d
    inc h
    ld e, l
    jr nz, @+$10

    or b
    xor b
    cp a
    rrca
    and [hl]
    rst $00
    ld a, h
    xor e
    dec de
    dec c
    or b
    db $f4
    ld d, [hl]

jr_005_7132:
    ld c, $06
    ret nc

    ld b, h
    jr z, jr_005_713c

    inc bc
    add b
    nop
    xor c

jr_005_713c:
    ld a, [bc]
    dec bc
    db $10
    ret nz

    ld h, c
    jr jr_005_7147

    ld de, $e100
    sbc b

jr_005_7147:
    ld [hl+], a
    ld a, b
    and h
    ld [bc], a
    jr nz, @-$36

    ld d, d
    ld a, [de]
    sbc d
    and a
    ld [$2861], sp
    call $ea12
    inc bc
    inc [hl]
    ldh [$08], a
    dec b
    inc bc
    ld b, b
    ld [$8f3a], a
    ld d, e
    push de
    add hl, de

Call_005_7164:
    ld sp, $420c
    jr jr_005_70ef

    scf
    ld c, l
    jp c, Jump_005_7584

    ld a, $c7
    ld h, e
    ld [$25b6], a
    ld b, a
    sub e
    sub b
    jr @+$28

    ld [hl+], a

jr_005_717a:
    add e
    nop
    ld a, $0f
    add l
    ld de, $a044
    ld [hl], b
    ld c, h
    add hl, bc
    sub [hl]
    add hl, hl
    jr c, @+$2b

    ld d, e
    call z, Call_000_3c3c
    set 2, e
    adc h
    ld a, l
    jr nc, @-$37

    jp $a07c


    rra
    jp nz, $fcc3

    ld a, [hl]
    ld sp, $72c4
    ld e, $db
    or a
    inc c

Call_005_71a2:
    di
    inc a
    rst $38
    rra
    rst $08
    pop hl
    db $fc
    db $fc
    jr nz, jr_005_717a

    ld h, b
    and $d9
    inc sp
    call nz, $fcf3
    ccf
    ccf
    ret


    add e
    add sp, -$39
    ld b, e
    ld c, $31
    ldh a, [$f1]
    rra
    adc l
    pop de
    ld a, b
    reti


    rla
    xor a
    ld b, c
    db $fc
    add c
    ld a, $d2
    inc sp
    ld hl, sp-$1b
    ld a, $ce
    inc sp
    db $f4
    jp Jump_005_483f


    inc a
    inc d
    db $fc
    ld b, c
    ret nc

    ld [hl], b
    ld [$0cfd], sp
    jp $88d3


jr_005_71e0:
    db $fc
    ld sp, $a20f
    jr jr_005_71e0

    ld hl, $8c07
    ld d, h

Call_005_71ea:
    ret z

    dec c
    rrca
    ret nz

    db $10
    rlca
    ld a, $01
    di
    add h

Jump_005_71f4:
    rst $38
    inc bc
    ld c, a
    pop af
    db $f4
    rst $28
    dec sp
    ld c, [hl]
    ldh a, [$b4]
    ld a, a
    daa
    ld b, e
    di
    ld [hl], b
    adc b
    inc e
    inc c
    jp Jump_005_48d0


    dec e
    inc b
    ld h, c
    db $eb
    ld de, $8f30
    jp nc, $f03c

    dec a
    ld b, b
    db $e4
    inc h
    ld h, $3b
    call $d493
    or [hl]
    jr nc, @-$3a

    ld hl, $aeb4
    dec l
    call $ee93
    ldh a, [$27]
    set 6, c
    sub b
    sub a
    ld h, $c9

Call_005_722e:
    ld a, [c]
    ld l, h
    rst $18
    ld [hl], $07
    di
    call c, Call_000_03f5
    ld c, l
    add e
    and b
    db $ec
    scf
    rrca
    inc bc
    ld b, b
    xor l
    scf
    ld c, a
    and d
    sbc h
    ld [hl], a
    ld l, $0a
    pop af
    cp h
    pop bc
    jr nc, jr_005_72b2

    ld d, e
    ldh [$e8], a
    ld a, [hl-]
    dec c
    add e
    db $f4
    db $dd
    dec sp
    pop bc
    db $f4
    ld a, l
    ld a, [hl+]
    dec a
    rst $08
    add h
    inc [hl]
    rst $38
    ld b, e
    rst $30
    inc de
    and b
    rst $30
    inc [hl]

Call_005_7264:
    jp nc, Jump_005_7df3

    db $10
    ccf
    pop de
    inc h
    adc c
    inc h
    ld c, c
    or a
    inc bc
    cp h
    ld e, [hl]
    cpl
    adc e
    add c
    ldh [rPCM12], a
    dec a
    or [hl]
    add e
    ld b, b
    ret nc

    reti


    inc c
    inc hl
    ld [$2289], sp
    ld d, b
    and c
    call c, Call_000_228f
    rst $00
    ld a, d
    db $d3
    ld a, a
    ccf
    add l
    pop hl
    ld a, a
    ld [hl], e
    ld b, d
    add a
    db $f4
    ld d, b
    ld a, a
    inc bc
    ret nz

    ldh a, [$7c]
    rra
    dec bc
    jp nz, Jump_005_71f4

    add hl, de
    rra
    ld sp, hl
    db $e4
    dec h
    jr jr_005_72d4

    call $b4fe
    xor a
    scf
    call $b4f4
    rst $28
    ld c, d
    adc [hl]
    ld [hl], e
    db $ed

jr_005_72b2:
    ld l, $ec
    ld a, [hl-]
    xor $b4
    rst $38
    sbc $fb
    ld l, $f8
    adc a
    inc hl
    ret


    ld [hl], d
    ld e, h
    xor a
    dec hl
    pop de
    sbc l
    call Call_000_3a2e
    ld c, a
    ld [hl], e
    ret c

    ld sp, hl
    ld b, h
    sub c
    ld a, $71
    ld [$8f0a], sp
    ld a, [c]

jr_005_72d4:
    ld d, h
    ld a, a
    db $10
    adc e
    ld a, [c]
    ldh [$c7], a
    call c, $fd7c
    ldh a, [$fd]
    ccf
    call z, $ec53
    and e
    ccf
    ld c, l
    inc sp
    rst $30
    ldh [$f8], a
    adc [hl]
    inc hl
    db $f4
    add c
    ccf
    add h
    inc sp
    ldh a, [$fa]
    ccf
    rst $08
    ld d, e
    db $fc
    jp nc, $cc3f

    add e
    db $fc
    jr nz, jr_005_733e

    ret z

    ld d, e
    jp hl


    rlca
    ld c, a
    di
    ld [hl], b
    ld e, b
    jp hl


    inc bc
    adc a
    db $10
    ld [hl], h
    ld [c], a
    dec bc
    ld c, l
    ld hl, $85e8
    inc bc
    ld c, a

Call_005_7314:
    inc sp
    call c, Call_000_360f
    ld [hl], e
    call z, Call_005_40fb
    ret nc

    sub b
    dec b
    ld [hl], d
    db $dd
    or d
    ei
    ld h, e
    cp e
    dec de
    adc e
    or e
    ld [hl+], a
    ld e, l
    ld [hl], $9f
    ld c, l
    or a
    db $db
    rlca
    rst $30
    cp e
    call nc, $d81a
    ld [hl], h
    ld a, $1d
    rrca
    rst $30
    ei
    cp h
    ld a, $d7

Jump_005_733e:
jr_005_733e:
    ld [hl], a
    cp d
    sbc [hl]
    rst $28
    ld [hl], a
    jp nz, Jump_005_76fd

    rla
    dec c
    add a
    jp nz, $10e0

    ld a, [bc]
    dec c
    ld b, $f5
    ld a, e
    dec sp
    add e
    and l
    rst $30
    ld a, [hl+]
    push de
    db $76
    rrca
    dec b
    adc l
    rst $00
    ld h, c
    or b
    cp d
    cp l
    ld h, b
    cp $77
    cp [hl]
    jp $966f


    res 4, l
    or d
    db $fd

Jump_005_736b:
    inc de
    ccf
    rst $18
    dec l
    rst $30
    dec de
    or l
    ld [hl], $b6
    ld a, [hl-]
    or b
    ret z

    ld c, d
    di
    ld l, e
    db $dd
    ld [hl], $ff
    ld [hl-], a
    ld b, [hl]
    ld e, a
    ldh [rP1], a
    dec b
    ld h, b
    nop
    call c, Call_000_1f22
    ret nc

    dec c
    ld d, a
    ld l, e
    db $ed
    adc $2f
    jr @+$41

    add b
    nop
    rla
    ldh a, [rDIV]
    nop
    rrca
    ld bc, $d42f
    cpl
    or b
    ld a, [hl-]
    call c, $ef5e
    cpl
    adc l
    add a
    ld l, e
    push de

Call_005_73a6:
    db $db
    push de
    or $fe
    ld [hl], d
    cp a
    ret c

    adc [hl]
    or b
    db $db
    ld e, c
    sbc $ef
    ld a, b
    ccf
    db $d3
    and $f2
    ei
    db $fd
    sbc a
    adc e
    adc l
    pop hl
    rst $10
    rst $20
    di
    ei
    db $fc
    ld b, $03
    sub h
    add d
    pop bc
    ld h, l
    ld [hl], d
    cp e
    pop hl

Jump_005_73cc:
    ldh a, [$50]
    ld l, b
    ld h, $1f
    ld c, $57
    xor d
    add c
    ld b, b
    ld b, b
    jr nz, jr_005_7441

    jp c, $0d0d

    add hl, de
    ld b, b
    and [hl]
    ld h, e
    scf
    sbc e
    rst $08

jr_005_73e3:
    rst $28
    scf
    ei
    ld a, [c]
    xor a
    or h
    jp c, $dfe1

    ld sp, hl
    dec l
    or [hl]
    ret c

    cp $00
    ld b, b
    ld d, a
    db $eb
    add h
    rlca
    db $fd
    add d
    call nz, $c2e7
    sub $eb
    ld h, b
    db $eb
    ld [hl], d
    ld [bc], a
    db $e3
    ld [hl], e
    db $76
    rla
    ld e, $cf
    or a
    db $eb
    db $ed
    xor $f9
    ld [hl], a
    cp l
    dec de
    xor $47
    ld e, e
    ld l, l
    db $ec
    rst $28
    ld a, a
    cp h
    rra
    adc c
    jp $3df9


    cp $e7
    ld a, [hl]
    cp c
    rst $18
    pop hl
    rla
    ld a, [$da19]
    ld e, [hl]
    ld a, a
    or b
    ld [hl], d
    ld l, a
    rst $20
    ret z

    db $fc
    ld a, h
    sbc h
    ld c, a
    cp a
    sbc a
    rst $38
    ld [hl], a
    ret nz

    ld a, l
    cp $c0
    ld [hl], a
    cp l
    rst $18
    pop hl
    inc a
    rst $30
    cpl

jr_005_7441:
    call nz, $dc31
    sbc b
    inc e
    ld c, e
    pop hl
    db $e4
    cp [hl]
    ld a, $41
    db $e3
    ldh a, [$3f]
    dec sp
    ld b, $f2
    jr c, jr_005_73e3

    daa
    adc c
    ldh a, [$e0]
    ccf
    ld a, $11
    and e
    ret nz

    ld a, b
    ld hl, $13c3
    ld a, b
    scf
    ld [hl], $03
    or e
    inc e
    ld e, a
    cpl
    rst $00
    ld [hl-], a
    call z, Call_000_2863
    adc $31
    adc h
    rst $20
    add hl, bc
    adc $13
    ld hl, sp-$3e
    ccf
    ld c, b
    ld d, e
    db $ec
    adc d
    dec a
    adc c
    ld b, c
    or b
    db $fc
    inc bc
    add hl, bc
    db $d3
    or l
    dec e
    ld d, [hl]
    ld hl, $6073
    rst $18
    inc b
    ld b, c
    ldh [$c8], a
    dec a
    inc c
    jp $ccd3


    db $fd
    jr c, @-$6f

    db $d3
    inc l
    rst $30
    ld sp, $b1c7

jr_005_749d:
    db $fc
    add e
    ld bc, $80cf
    jr jr_005_749d

    inc bc
    rst $08
    jr nc, jr_005_74d4

    rst $30

Jump_005_74a9:
    inc bc

Jump_005_74aa:
    adc a
    ld h, e
    inc c
    db $fc
    jr nz, jr_005_7506

    ld [hl], h
    ld h, h
    nop
    ld a, l
    call z, $1d73
    dec hl
    ld h, l
    dec d
    ld [hl], c
    nop
    rst $18
    rrca
    add a
    ld h, e
    call c, $9ae7
    adc [hl]
    ld a, c
    add d
    ld h, b
    ld a, $4e
    sbc c
    cp h
    rst $38
    inc bc
    pop bc
    or e
    sbc h
    add a
    ld a, $0c
    inc bc

jr_005_74d4:
    db $fc
    ldh [$3f], a
    ld [c], a
    jp $df7c


    ld l, [hl]
    ld b, a
    or $40
    rst $18
    rrca
    call c, Call_000_3c23
    di
    add hl, sp
    rst $08
    or e
    inc b
    cp $20
    rst $08
    jp nz, $f91c

    dec c
    call z, $e483
    ld b, $1c
    dec e
    db $e3
    db $fc
    ld sp, $a50f
    ld [hl], b
    inc a
    rst $30
    and [hl]
    ld h, l
    ld d, b
    inc e
    ei
    ld bc, $b04f

jr_005_7506:
    db $fc
    pop bc
    inc a
    add c
    sub $51
    sub h
    ld bc, $70c0
    ld a, $a9
    inc bc
    jp $0dfa


    ld hl, sp+$3f
    rst $08
    inc sp
    ldh a, [$f1]
    ccf
    adc a
    ret nz

    inc e
    cp $3d
    jp $c4f0


    inc sp
    rrca
    dec bc
    ld [de], a
    ld a, [$1fb2]
    rrca
    di
    ld b, b
    ld a, a
    jr nc, jr_005_7575

    pop hl
    inc b
    cp [hl]
    ld d, a
    rst $08
    ldh a, [$f8]
    cp $1f
    and $a3
    jr jr_005_757e

    ld de, $f1c3
    jr @+$40

    add hl, bc
    add l
    ldh [$4c], a
    cpl
    ld [bc], a
    ld b, c
    ld [hl], b
    ld h, h
    rla
    inc bc
    ret nz

    inc bc
    sbc h
    rra
    add hl, hl
    call $8cf2
    rst $18
    jr z, jr_005_75a7

    di
    add b
    sbc a
    scf
    jp nz, $1c02

    ld a, [hl]
    xor l
    ld b, b
    jr nc, jr_005_756f

    ld l, b
    ld d, [hl]
    ld l, [hl]
    ei
    jp nz, $01ef

    ret c

    or b

jr_005_756f:
    db $fc
    xor a
    scf
    add $71
    ld a, h

jr_005_7575:
    inc hl
    rlca
    inc bc
    ldh [$84], a
    ld b, $01
    ld b, b
    db $10

jr_005_757e:
    ld [$259f], sp
    ldh a, [$27]
    ld a, b

Jump_005_7584:
    ret c

    add hl, sp
    adc $10
    ld a, h
    inc bc
    ccf
    rst $28

jr_005_758c:
    ld [hl-], a
    dec e
    cp c
    ccf
    ret nz

    inc hl
    db $ec
    ld a, h
    dec de
    adc [hl]
    ld sp, hl
    xor h
    rst $20
    jr c, jr_005_758c

    ld [hl], e
    adc h
    add e
    or b
    add e
    di
    add h
    sbc a
    dec sp
    ld bc, $7c32

jr_005_75a7:
    ld h, b
    inc bc
    and a
    inc hl
    db $fc
    adc h
    rra
    rrca
    or l
    pop af
    add hl, de
    ccf
    adc a
    db $d3
    ld hl, sp-$05
    ld l, h
    ret nz

    inc de
    call z, Call_000_39cf
    call Call_005_61f5
    ei
    ld b, $cf
    or d
    jr nz, jr_005_763e

    inc de
    dec bc

Call_005_75c8:
    jp $bc30


    inc sp
    set 6, c
    inc e
    cp a
    jp $3544


    cp h
    rst $18
    inc d
    ld b, [hl]
    ldh a, [$a4]
    ld [hl], $0f
    jp $e402


    or a
    ld a, [hl-]
    rst $08
    ld [hl], e
    inc c
    ccf
    jr nz, jr_005_7641

    ret


    ld [hl], l
    sub d
    push bc
    call z, $0413
    ret nz

    jr nc, @+$0f

    inc sp
    cp h
    db $e3
    scf
    adc a
    db $e3
    inc b
    ldh [rTAC], a
    add $02
    ld a, h
    ldh a, [$33]
    call $bc03
    ld [hl], b
    dec de
    rst $18
    rst $30
    db $fc
    ld a, [c]
    dec sp
    rst $08
    db $d3
    ld [$06ee], sp
    ld c, b
    pop hl
    db $f4
    sbc [hl]
    rra
    ld c, c
    pop af
    pop hl
    db $fc
    rra
    ret


    di
    ldh a, [$7c]
    ld c, $4f
    sub [hl]
    ld c, c
    sub d
    rlca
    pop hl
    ld [hl], b
    inc c
    adc h
    ld e, $ce
    ret nz

    ld l, h
    call c, $cf38
    and e
    db $f4
    adc $33
    ld c, h
    ld h, e
    inc d
    rst $00
    ld sp, $738e
    sub b
    ccf
    ccf
    inc bc
    ld [hl], e
    ret c

    ld [hl], c

jr_005_763e:
    inc a
    ld b, a
    sub e

jr_005_7641:
    db $e4
    inc e
    ccf
    rra
    cp d
    ld l, b
    ld e, $38
    ld [hl], e
    db $db
    inc a
    inc hl
    rla
    add $11
    ld a, h
    ld hl, $ba07
    and b
    ld c, h
    inc l
    rrca
    jp nz, Jump_005_7c0b

    rst $00
    cpl
    call z, $fc32
    pop bc
    db $ed
    ld b, e
    push af
    ld l, c
    ld e, d
    db $10
    dec bc
    ldh a, [rLY]
    ld c, $0c
    jp nz, Jump_005_48f0

    ld l, $18
    add l
    xor $9b
    ld b, h
    inc a
    ld b, b
    ld a, [c]
    cp h
    ld [hl], b
    ret c

    adc a
    add d
    inc e
    rst $38
    inc l
    rrca
    ld a, [c]
    ld hl, sp-$09
    dec l
    rst $08
    ld [hl], d
    ret nc

    cp $2e
    ld c, a
    ret nz

    rst $28
    ld e, d
    sub $8e
    inc bc
    add b
    ldh a, [$f7]
    sbc l
    or $cd
    cp b
    ccf
    or $a3
    pop bc
    add l
    dec sp
    or $83
    add b
    rst $18
    jr z, jr_005_76b1

    di
    ldh a, [$83]
    inc de
    res 0, b
    ld hl, sp-$01
    ld [bc], a
    add sp, -$5f
    ldh a, [$82]

jr_005_76b1:
    rra
    ld d, [hl]
    and e
    db $fc
    ld a, h
    rra
    rst $08
    jp hl


    xor b
    rst $08
    rrca
    ret z

    pop af
    db $fc
    ccf
    jr c, @+$09

    di
    cp h
    db $fc
    inc hl
    inc c
    ret nz

    ldh a, [$8d]
    rra
    ld c, b
    pop af
    db $fd
    nop
    ld a, e
    dec a
    ld c, a
    rst $08
    db $d3
    db $d3
    db $f4
    ld a, h
    ld sp, hl
    ld c, $3e
    pop bc
    xor a
    jr nc, jr_005_7729

    db $dd
    sub $17
    rra
    cp a
    inc c
    adc $56
    ld [hl], e
    ld sp, $dabc
    ld c, [hl]
    dec h
    ld e, $0e
    ld b, $83
    add b
    ldh [$90], a
    ld l, l
    cp c
    rst $18
    rst $28
    ld b, a
    or c
    pop hl
    ld hl, sp+$38
    ld a, d

Jump_005_76fd:
    ld l, $1f
    adc b
    ld b, a
    ld [bc], a
    add c
    add b
    nop
    ld h, b
    stop
    ld [$0400], sp
    jp c, Jump_000_386f

    sbc e
    scf
    ld c, d
    ld c, l
    add d
    cp e
    ldh [$ee], a
    xor b
    dec sp
    cp h
    ld b, c
    db $eb
    sub e
    ld a, [hl-]
    db $e4
    xor $bc
    add hl, sp
    xor [hl]
    ld [$87e3], sp
    cp e
    pop af
    and $9c

jr_005_7729:
    ld c, l
    xor a
    ld d, $6b
    add l
    dec sp
    pop bc
    sbc $f8

jr_005_7732:
    ld b, e
    xor a
    rst $08
    add hl, bc
    jp $71db


    db $76
    call nz, $2eb0
    rst $18
    inc c
    ld [hl], a
    cp e
    pop hl
    cp $ff
    ld l, a
    adc h
    inc bc
    rst $28
    pop af
    set 4, [hl]
    call c, Call_005_7e3d
    db $db
    ld de, $f3e7
    ld a, [$c301]
    ld a, b
    cp h
    cp h
    sbc $6f
    rst $30
    pop af
    db $fd
    db $fc
    ccf
    ld h, b
    sbc c
    db $d3
    adc h
    pop af
    db $e3
    dec a
    ld a, d
    rst $00
    ld e, a
    jr nc, jr_005_7732

    rst $08
    or b
    dec hl
    ld hl, sp+$68
    rst $38

jr_005_7771:
    ccf
    jr c, @-$22

    ld c, h
    ld [hl], c
    ld a, [c]
    inc a
    db $fc
    cp e
    dec a
    ld h, $cf
    ld e, c
    ld [hl], a
    ld a, [c]
    dec b
    cp [hl]
    cp a
    ld e, a
    sbc a
    ld a, [c]
    ld l, a
    scf
    sub e
    db $fd
    ld hl, sp-$01
    inc c
    sub a
    call c, $8d76
    ld l, e
    db $fd
    add [hl]
    ld b, d
    ld a, c
    sbc h
    sub [hl]
    ld h, a
    daa
    ld hl, sp-$04
    cp d
    ld a, $1f
    add b
    ld c, $e1
    or a
    add sp, -$13
    add $62
    ld [hl], d
    cp c
    sbc l
    ld b, [hl]
    jp Jump_005_61a2


    or b
    jr nz, jr_005_7809

    jr z, jr_005_77b9

jr_005_77b3:
    ld [bc], a
    ld [bc], a
    add c
    add c
    db $e4
    push af

jr_005_77b9:
    ld [hl], e
    cp c
    jr jr_005_7809

    ld b, [hl]
    inc hl
    jr nz, jr_005_7771

    ret nc

    ld d, h
    inc e
    ld e, $08
    add hl, bc
    add h
    cp [hl]
    ld h, c
    add hl, sp
    ldh a, [$80]
    jr jr_005_77b3

    ld h, l
    add hl, sp
    sbc h
    xor [hl]
    ld [hl], $17
    ld b, $43
    ld h, b
    ld b, b
    ld l, b
    inc d
    jr jr_005_77e1

    dec b
    ld bc, $0cb6

jr_005_77e1:
    ld a, [c]
    ld [hl], e
    inc [hl]
    sbc l
    and a
    ld e, l
    rra
    rra
    add b
    rlca
    ld [hl], e
    ld h, b
    cp a
    scf
    nop
    ld d, b
    inc c

jr_005_77f2:
    inc bc
    ld a, b
    sbc [hl]
    ld de, $af3c
    add hl, sp
    jp nz, $0c71

    inc hl
    ld [$30c1], sp
    ld l, b
    dec bc
    dec b
    ld b, b
    ldh [$3c], a
    ld bc, $0a81

jr_005_7809:
    rlca
    ld a, [hl]
    ld d, $34
    ld de, $80e3
    ld d, b
    inc d
    ld [bc], a
    and b
    xor b
    sub l
    dec h
    ld e, [hl]
    db $10
    ld b, $14
    nop
    pop bc
    ld h, b
    ld e, b
    xor a
    dec hl
    push bc
    ld d, c
    ld d, l
    ld l, b
    adc c
    add b
    jr nz, @+$0a

    dec b
    add b
    add b
    jr c, @-$70

    inc bc
    adc b
    adc $83
    and d
    add hl, de

jr_005_7834:
    add l
    add h
    ld bc, $3902
    adc [hl]
    jp z, $ea08

    ld d, $30
    inc c
    ld [$60f0], sp
    jr jr_005_784a

    ld de, $ab44
    ld a, [hl+]
    push bc

jr_005_784a:
    pop af
    ld a, h
    jr nz, jr_005_7856

    inc bc
    rlca
    ld [hl-], a
    ld c, l
    inc c
    ld a, [bc]
    add d
    and b

jr_005_7856:
    ld d, h
    dec d
    ld a, [bc]
    and d
    xor b
    ccf
    rrca
    jp $e8a0


    inc e
    rlca
    nop
    and b
    ld a, [hl+]
    jr nc, jr_005_77f2

    and d
    inc [hl]
    ldh [$28], a
    ld a, [bc]
    inc h
    jp hl


    ld [de], a
    ld a, [hl-]
    jr c, jr_005_7880

    ld [$80e8], sp
    ld [hl], a
    ld c, h
    ld [$01d0], sp
    ld [bc], a
    ret nz

    or c
    ld e, l
    ld a, $3e

jr_005_7880:
    ld hl, $e0c0
    jr c, jr_005_788a

    ld b, c
    ld e, b
    ld a, [c]
    jr @+$36

jr_005_788a:
    ld hl, $7068
    ld l, b
    ld a, [de]
    rlca
    ld b, c
    ret nc

    cpl
    dec bc
    push hl
    ld c, c
    sub b
    ldh a, [rBGP]
    ld hl, $42b1
    ld l, c
    add a
    rrca
    and e
    add sp, $1d
    rlca
    ld h, [hl]
    jr jr_005_7834

    sub e
    add c
    ld h, d
    jr nz, jr_005_78b1

    sub d
    sbc a
    ld c, $a3
    xor b
    push af

jr_005_78b1:
    dec a
    ld e, d
    rla
    ld d, h
    add [hl]
    ld hl, $d38d
    db $76
    ld [hl], c
    sbc h
    rst $08
    jp Jump_005_42f0


    db $10
    adc b
    ld [de], a
    ld b, $41
    sbc e
    inc h
    add hl, de
    cp [hl]
    and h
    dec d
    rst $08
    sub e
    db $e4
    ld d, e
    inc d
    jp $fae0


    sub b
    sbc [hl]
    jp z, $a205

    ld b, c
    dec b
    pop bc
    add d
    db $fc
    ret nz

    ccf
    ret nz

    nop
    db $ec
    ld a, [hl-]
    ld d, $c5
    add b
    call z, Call_000_3d34
    push de
    ld [hl], e
    and b
    ld h, a
    ld a, [de]

Call_005_78ee:
    ld c, $f3

Jump_005_78f0:
    add b
    ld l, a
    jr jr_005_7920

    dec de
    ld c, b
    nop
    or h
    db $ed
    ld d, a
    adc d
    ld l, c
    sbc l
    call nz, $3cf3
    db $e3
    inc b
    rst $08
    sub $38
    ld [bc], a
    ccf
    ret nz

    inc de
    ld hl, sp+$01
    or l
    xor l
    inc sp
    ld hl, sp-$02
    sub c
    and h
    ld c, c
    ld [de], a
    ld d, $08
    ld l, $c2
    add b
    jr nz, jr_005_7946

    jp z, Jump_000_3a0b

    pop af
    or e

jr_005_7920:
    xor h
    db $eb
    ld b, b
    cpl
    cp h
    cpl
    inc hl
    add d
    ld hl, sp-$41
    ld [bc], a
    dec bc
    or $fd
    cp e
    rlc b
    jp $9401


    ld b, d
    add d
    ret nc

    inc [hl]
    ld a, [hl+]
    add d
    and d
    db $fc
    ccf
    ld a, [hl+]
    ld [bc], a
    adc h
    ld a, [bc]
    rst $28
    call nz, $dc2e
    ld c, d

jr_005_7946:
    rst $28
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld [de], a
    ld d, $17
    jr jr_005_7984

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_005_7994

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_005_79a4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_005_79b4

    ld [hl-], a

jr_005_7984:
    inc sp
    inc [hl]
    ld bc, $3635
    scf
    jr c, jr_005_79c5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_005_7994:
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_005_7998:
    inc sp
    inc [hl]
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

jr_005_79a4:
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

jr_005_79af:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_005_79b4:
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

jr_005_79c5:
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
    jr z, jr_005_7998

    and d
    and e
    and h
    and l
    sbc a
    and [hl]
    and a
    xor b
    and h
    xor c
    and h
    and h
    xor d
    and h
    xor e
    ld a, [bc]
    ld b, b
    and b
    ld b, d
    ld d, c
    jr c, jr_005_79af

    inc c
    ld h, $81
    jp nz, Jump_005_70a1

    ret z

    ld l, h
    ld a, [hl-]
    rra
    db $10
    adc b
    call nz, Call_005_71a2
    ld c, b
    xor h
    ld e, d
    cpl
    inc d
    add d
    pop bc
    push bc
    ld de, $e0b0
    ld h, b
    ld [hl-], a
    ld a, [de]
    ld de, $850a
    ld [hl-], a
    add hl, sp
    jr z, jr_005_7aa1

    ld a, [hl-]
    ld e, $90
    ret


    ld h, h
    sub d
    ret


    ld e, h
    cp b
    ld [$0305], sp
    ld bc, $b3e5
    ld b, c
    ld d, h
    jp nz, Jump_000_2964

    adc a
    ld c, b
    inc h
    ld d, e
    ld e, c
    jr c, @+$7a

    ld a, $22
    sbc d
    ret nc

    and l
    call nc, $2d3a
    ld [de], a
    adc a
    ld b, [hl]
    and d
    call $f4c0
    cp d
    dec d
    ld l, $9b
    ld c, b
    dec d
    ld c, [hl]
    and l
    ld d, d
    ld b, c
    ld e, b
    or d
    ld c, d
    daa
    ld c, $06
    pop bc
    or b
    ld l, d
    db $ec
    ld l, h
    ld d, h
    jr nz, jr_005_7a83

    adc b
    xor e
    sub $48
    db $dd
    sub h
    db $10
    add hl, bc
    dec b
    ld [bc], a
    db $ec
    or l
    db $eb
    ld b, l
    xor d
    dec c

jr_005_7a83:
    ld e, d
    xor [hl]
    ld e, c
    xor h
    sub $11
    dec d
    adc $d9
    ld [hl], a
    cp h
    sbc $2f
    ld [hl], a
    xor e
    db $ed
    xor $dc
    dec bc
    ret nz

    ld e, e
    jr nc, @+$1a

    dec hl
    push af
    add $bc
    dec l
    rla
    ld b, [hl]

jr_005_7aa1:
    jp nz, Jump_005_60c1

    ld h, b
    sub e
    jr jr_005_7abf

    ld bc, $82e4
    cp b
    pop bc
    ld e, $3f
    add hl, de
    sbc b
    call z, Call_005_7264
    ld e, c
    call z, Call_005_679e
    scf
    sub h
    dec bc
    ld l, b
    inc sp
    add hl, sp
    adc h

jr_005_7abf:
    db $76
    ld b, e
    add hl, sp
    and c
    bit 5, c
    inc [hl]
    sbc c
    dec e
    ld c, $af
    ld e, a
    or b
    ret c

    add sp, -$4d
    cp c

Jump_005_7ad0:
    db $dd
    ld c, $6f
    ld l, e
    or d
    pop de
    ld l, e
    or a
    dec sp
    sbc l
    ld [hl], $9c
    rlca
    and c
    nop
    ldh a, [$b8]
    ld a, h
    ld c, [hl]
    cpl
    dec de
    adc a
    ret z

    db $e4
    ld a, [c]
    cp c
    ld a, h
    adc $6f
    dec sp
    sbc a
    ret nc

    add sp, -$0c
    cp d
    ld a, l
    ld c, [hl]

Call_005_7af5:
    xor a
    ld e, e
    xor a
    ret c

    db $ec
    or $ba
    ld h, b
    ldh a, [$87]
    dec sp
    cp e
    rst $00
    ldh a, [$72]
    ei
    cp [hl]
    ld l, $df
    ld c, e
    pop bc
    db $e4
    rst $28
    ld a, b
    db $fd
    ld e, [hl]
    db $10
    add a
    sub a
    set 5, e
    pop hl
    ld a, d
    ld a, h
    cp $ef
    ld h, a
    res 1, b
    ld de, $7009
    add b
    ld e, a
    rst $08
    rst $28
    ld sp, hl
    db $dd
    ld a, [hl]
    ld e, h
    ld a, b
    dec b
    jp Jump_005_407f


    jr jr_005_7b43

    ld sp, hl
    add b
    rst $18
    rst $00
    db $ed
    jp $df7b


    ld h, a
    ld de, $84fe
    ld hl, $4118
    jp nz, Jump_005_6080

    add a
    jp hl


    ei

jr_005_7b43:
    add h
    ld h, c
    ld c, b
    ld e, [hl]
    ld [bc], a
    inc b
    and b
    jr nc, jr_005_7b52

    inc bc
    ld [hl], a
    ld h, c
    jr nz, jr_005_7b5b

    ld a, [de]

jr_005_7b52:
    add [hl]
    and c
    add sp, -$77
    cp $70
    pop hl
    ld h, a
    inc d

jr_005_7b5b:
    ld de, $a203
    ret nc

    jr c, @+$15

    inc b
    ld [c], a
    add sp, -$36

jr_005_7b65:
    inc sp
    adc l
    inc hl
    ld e, b
    jp c, $8e37

    inc hl
    sbc b
    ld [$8f3b], a
    inc hl
    ret c

    ld a, [$903f]
    inc hl
    ld [hl], h
    inc b
    nop

Jump_005_7b7a:
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
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec h
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    nop
    nop
    jr nz, jr_005_7ba2

jr_005_7ba2:
    ld d, b
    jr nz, @+$4a

    jr nc, jr_005_7bcf

    db $10
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_7bb6

jr_005_7bb6:
    ld [$0000], sp
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_7bc2

jr_005_7bc2:
    ld d, b
    jr nz, jr_005_7b65

    ld b, b
    and b
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_005_7bcf:
    nop
    ld [$0000], sp
    nop
    jr nz, jr_005_7bd6

jr_005_7bd6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    and b
    ld b, b
    and b
    ld b, b
    and d
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_005_7c0b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    sub b
    nop
    nop
    nop
    ld b, b
    nop
    ld a, a
    add b
    rst $38
    sbc [hl]
    pop hl
    ld e, [hl]
    rst $18
    ld h, b
    rst $08

Jump_005_7c23:
    ld [hl], b
    rst $08
    ld [hl], b
    cp $01
    rst $38
    nop
    rst $08
    ld [hl], b
    adc $71
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    db $ec
    ld [hl], e
    rst $38
    or e
    ld a, a
    ld b, b
    ld a, [hl]
    add b
    ld a, a
    or c
    adc a
    db $76
    di
    ld e, $fb
    ld c, $fb
    ld b, $bf
    ld c, b
    rst $30
    jr @-$03

    ld c, $3f
    jp nz, Jump_000_00ff

    cp $09
    di
    ld e, $e7
    ld e, $df
    adc l
    adc $02
    nop
    nop
    rrca
    nop
    rst $38
    ld c, $f1
    ld c, $f7
    ld c, b
    reti


    ld h, [hl]
    adc $71
    ld sp, hl
    ld b, $f8

Call_005_7c6b:
    rlca
    rst $08
    ld [hl], b
    jp z, $ff75

    ld b, b
    ld l, e

Jump_005_7c73:
    sub h
    ld c, a
    or b
    db $ec
    ld [hl], e
    rst $30
    and c
    nop
    nop
    ld [hl], d
    nop
    ld [hl], a
    ld hl, $669f
    di
    ld c, $7e
    adc b
    rst $20
    ld a, [de]
    or a
    ld c, b
    cp e
    ld e, h
    ccf
    jp nz, $08f6

    inc l
    ret nc

    rst $30
    ld [$7e97], sp
    rrca
    db $fd
    cp $02
    nop
    nop
    nop
    nop
    ld b, $00
    rrca
    ld b, $09
    ld b, $56
    ld [$48f4], sp
    ret c

    ld h, b
    ret z

    ld [hl], b
    ld [hl], b
    nop
    ld bc, $4200
    ld bc, $40e1

Jump_005_7cb4:
    ld [hl], b
    add b
    ld c, e
    or b

jr_005_7cb8:
    db $fc
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_7cc0

jr_005_7cc0:
    ld h, c
    jr nz, @-$6b

    ld h, c
    ld [hl], a
    ld [bc], a
    dec bc
    ld b, $46
    ld bc, $42bf
    ld e, d
    inc e
    ld e, $02
    add d
    nop
    ld c, b
    add b
    sub h
    ld [$1835], sp
    sbc e
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld c, [hl]
    inc b
    rst $28
    ld b, [hl]
    ld c, d
    add h
    ld c, h
    add b
    db $f4
    ld c, b
    ld c, b
    add b
    ld b, c
    add b

Jump_005_7cf2:
    ld [c], a

Call_005_7cf3:
    ld b, c
    ld a, [c]
    ld b, c
    ld l, c
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_7d02

jr_005_7d02:
    ld [hl], c
    jr nz, jr_005_7cb8

    ld h, c
    sub a
    ld h, d
    ld l, e
    ld b, $06
    nop
    ld e, d
    inc b
    cp [hl]
    ld d, b
    ld a, a
    sub d
    sub a
    ld l, d
    ld e, b
    and b
    or l
    jr jr_005_7d34

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
    ld b, d
    nop
    rst $20
    ld b, d
    ld c, d
    inc b
    ld b, h
    nop
    add sp, $40
    ld d, c
    nop

jr_005_7d34:
    ld [bc], a
    ld bc, $0041
    ldh [rLCDC], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6300
    ld bc, $62b7
    ld h, d
    nop
    inc h
    nop
    ld a, [bc]
    inc b
    inc b
    nop
    add d
    nop
    rlca
    ld [bc], a
    ld a, [bc]
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

Jump_005_7d63:
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
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2200
    nop
    nop
    nop
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
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld a, [$ff06]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, a
    ld d, h
    xor l
    xor e
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l

Jump_005_7df3:
    ld d, l
    xor d
    xor d
    push de
    dec d
    xor d
    jp z, Jump_000_01fe

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor e
    xor b
    ld e, l
    ld d, e
    cp a
    xor a
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    ld [$b52a], a
    push bc
    ld a, [hl-]
    ld [hl-], a
    db $fd
    inc bc
    rst $38

Call_005_7e3d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, a
    ld d, h
    xor l
    and e
    ld d, a
    ld c, a
    or e
    sub e
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    push de
    dec d
    cp d
    jp z, Jump_000_352d

    ld a, $3a
    rst $30
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor e
    xor b
    ld e, l
    ld d, e
    or a
    xor a
    ld h, a
    ld d, a
    or c
    sub c
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    ld [$b52a], a
    push bc
    ld a, [hl+]
    ld [hl-], a
    dec [hl]
    add hl, sp
    cp $fa
    ldh a, [$08]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7ec8:
    rst $38
    rst $38
    rst $28
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, h
    xor e
    xor c
    ld [hl], a
    ld b, l
    ld sp, hl
    xor d
    ld a, h
    dec b
    xor d
    xor d
    ld [hl], h
    inc d
    or l
    xor l
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    db $dd
    ld d, c
    cp [hl]
    xor h
    ld a, l
    ld d, c
    xor d
    xor d
    ld e, l
    ld d, c
    ld e, d
    ld l, d
    rst $28
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l

Call_005_7f1f:
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    push de
    ld d, l
    cp d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    cp d
    xor d
    db $ec
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    xor c
    ld [hl], a
    ld b, l
    ld sp, hl
    xor d
    ld a, h
    dec b
    xor d
    xor d
    ld [hl], h
    inc d
    or l
    xor l
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    db $dd
    ld d, c
    cp [hl]
    xor h
    ld a, l
    ld d, c
    xor d
    xor d
    ld e, l
    ld d, c
    ld e, d
    ld l, d
    rst $28
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    push de
    ld d, l
    cp d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    cp d
    xor d
    db $ec
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_005_7fdc:
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
