; Disassembly of "Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    rrca
    ld h, b
    nop
    nop
    ld a, [bc]
    inc de
    call nc, $f0d3
    rst $20
    inc b
    ld bc, $ff0f
    nop
    rlca
    dec bc

jr_006_4017:
    ld bc, $bf1c
    inc a
    sub h
    and a
    ld h, $7b
    ld h, d
    ld a, a
    ld a, [hl]
    ld b, e
    ld b, d
    ld a, e
    ld b, d
    add hl, sp
    nop
    ld a, a
    ld a, h
    ld d, e
    ld d, d
    ld l, e
    ld b, d
    ld a, l
    ld a, h
    inc sp
    dec c
    dec b
    inc bc
    rla
    rra
    jr jr_006_4017

    ld c, $1e
    or e
    ld [hl-], a
    ld e, l
    ld d, b
    ld l, a
    ld b, b
    ld a, a
    ld h, b
    cp a
    ld a, $c3
    ld [bc], a
    rra
    ld d, a
    ld d, [hl]
    ld h, a
    ld b, [hl]
    ld a, e
    ld bc, $441d
    dec sp
    db $38, $87
    add c
    rrca
    ld a, [hl]
    ld l, e
    ld l, d
    ld [hl], l
    ld h, b
    or c
    dec de
    rla
    and a
    jr nz, @-$4b

    ld c, c
    rrca
    rst $38
    adc l
    rrca
    ld d, e
    dec de
    add $0f
    and e

jr_006_4069:
    rrca
    jr c, jr_006_409c

    adc a

jr_006_406d:
    ccf
    rst $38
    inc c
    ld a, $e3
    ld h, d
    ld e, l
    dec a
    ld e, b
    dec c
    ld l, a
    ld l, [hl]
    cp l
    inc a
    ccf
    add e
    dec b
    ld h, l
    ld h, h
    or a
    inc h
    add a
    ld [hl], e
    inc h
    or a
    inc c
    ld bc, $009b
    add hl, bc
    db $db
    db $d3
    ld h, c
    add hl, sp
    ld bc, $1fbf
    add e
    ld h, e
    db $dd
    inc e
    rst $28
    inc c
    jr jr_006_409b

    ld l, a

jr_006_409b:
    ld c, h

jr_006_409c:
    ld bc, $787b
    add $4f
    rst $30
    or $2f
    inc bc
    xor a
    inc l
    cp e
    jr c, jr_006_4069

    jr c, jr_006_40b8

    dec b
    or a
    ld h, $99
    ld l, a
    ld a, b
    ld a, [de]
    xor a
    jr z, jr_006_406d

    ld e, c
    inc c

jr_006_40b8:
    ld bc, $2b22
    add e
    ld b, $00
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    add e
    nop

Call_006_40c4:
    ld e, e
    ld e, d
    ld l, e
    ld c, d
    ld [hl], e
    ld b, d
    cp e
    ld [hl+], a
    ld [hl], b
    sbc c
    rrca
    or a
    ld [hl], $0e
    or l
    inc [hl]
    xor l
    inc l
    ld b, e
    dec l
    ld h, c
    add d
    ld a, a
    rst $20
    inc h
    rst $10
    add h
    xor a
    ld [hl], l
    ld h, h
    jr nc, @+$61

    ccf
    ld d, a
    ld d, h
    ld h, a
    ld b, c

jr_006_40e9:
    ld b, h
    ld e, e
    ld b, a
    add h
    sub e
    ld b, b
    ccf
    nop
    ld a, [bc]
    ld [hl], l
    ld [hl], a
    ld [hl], h
    dec b
    inc de
    ld l, h
    ld a, e
    ld a, d
    add l
    ld sp, $fbdf
    ld [hl], a
    ld b, [hl]
    add c
    ei
    ld l, e
    ld l, b
    ld c, a
    ld c, h
    ld sp, $1f98
    inc e
    db $fd
    or l
    jr nc, jr_006_40e9

    dec h
    sub c
    ld b, e
    inc de
    cp a
    dec de
    ld l, e
    ld e, a
    ld e, [hl]
    ld l, l
    jr c, jr_006_411b

    sbc l

jr_006_411b:
    xor a
    rst $10
    jr nc, jr_006_412f

    rst $08
    ld l, a
    db $76
    ld h, a
    ld h, [hl]
    jp $7759


    ld h, h
    ld d, a
    sbc c
    ccf
    ld c, c
    rst $00
    add $7f

jr_006_412f:
    ld e, e
    dec a
    inc sp
    ld h, [hl]
    or l
    ld a, c
    inc [hl]
    ld a, [bc]
    add hl, sp
    rrc b

jr_006_413a:
    rst $30
    inc b
    rrca
    ld a, e
    ld c, d
    ld a, e
    ld e, d
    ld sp, $0927
    dec a
    nop
    add hl, bc
    dec de
    ld [hl-], a
    di
    and c
    ld d, e
    sbc d
    rrca
    ld bc, $bf00

jr_006_4151:
    ld e, l
    ld e, b
    adc a
    ld [$39ef], sp
    ld [$5fe7], sp
    add b
    daa
    rrca

jr_006_415d:
    ld c, $dd
    inc e
    db $d3
    db $10
    ld [hl-], a
    and a
    ld h, $6f
    add e
    sbc h
    sbc a
    add hl, sp
    nop
    ld c, d
    ld d, a
    ld d, d
    ld l, l
    ld h, h
    cp e
    jr c, jr_006_413a

    add d
    rrca
    jr c, jr_006_4151

    cpl
    jr jr_006_41f9

    dec e
    ld l, a
    ld l, [hl]
    jr nc, jr_006_41ca

    ld c, d
    sbc e
    dec hl
    ld a, [bc]
    push de
    ld c, $10
    ccf
    ld a, $03
    ld h, b
    ccf
    scf
    call $ff0c
    inc e
    adc l
    rrca
    add hl, de
    xor a
    rst $18
    db $db
    rst $18
    ld l, h
    sbc c
    ld bc, $8d17
    jr z, jr_006_41aa

    db $eb
    ld e, a
    ld b, c
    adc l
    ret


    add h
    xor c
    ld b, $7b
    ld b, d
    jr nc, @-$2f

jr_006_41aa:
    ld c, l
    or a
    jr nc, jr_006_415d

    ld h, a
    jr nz, @-$09

    ld c, e
    inc [hl]
    cpl
    dec de
    rlca
    ccf
    ld c, a
    ld c, [hl]
    xor l

jr_006_41ba:
    ld h, b
    ld a, a
    rst $10
    inc d
    and a
    inc h
    db $76
    ld d, e
    rra
    add e
    ld a, l
    ld d, a
    add d

jr_006_41c7:
    ld sp, hl
    ld b, e
    ld b, d

jr_006_41ca:
    ld e, e
    ld b, c

jr_006_41cc:
    cpl
    inc a
    ld h, e
    ld h, d
    add a
    add hl, bc
    or a
    ld [hl], $cd
    inc b
    ld hl, $20ab
    sbc a
    ld b, b
    ld b, c
    db $10
    rst $38
    jr nc, jr_006_41cc

    adc l
    nop
    ld hl, sp+$09
    ld e, c
    add sp, $15
    ld a, c
    ccf
    ld [bc], a
    dec c
    jr nz, jr_006_41ba

    rrca
    ld a, c
    inc sp
    ccf
    xor l
    add e
    adc e
    rst $30
    nop
    rst $28
    adc [hl]
    inc bc

jr_006_41f9:
    cp a
    nop
    ld e, c
    ld a, e
    ld e, d
    ld e, e
    ld d, d

Jump_006_4200:
    ld e, e
    ld e, d
    ld c, e
    add hl, sp
    ld b, d
    dec a
    rst $28
    jp hl


    inc bc
    dec [hl]
    inc l
    add hl, bc
    rrca
    sbc d
    ccf
    ld h, e
    ld c, l
    ld a, h
    rlca
    call z, Call_006_5902
    ld c, b
    db $dd
    daa
    adc l

jr_006_421a:
    jp hl


    ld h, c
    ld bc, $ff24
    or a
    rst $28
    inc de
    add c
    inc bc
    ld a, c
    cp a
    jr nc, jr_006_41c7

    db $10
    rst $18
    ld [hl], $0d
    dec bc
    ld e, h
    ld c, a
    inc sp
    ld c, b
    ld a, a
    ld a, b
    cp e
    ld [hl-], a
    ld l, a
    ld l, [hl]
    ld d, l
    ld b, h
    dec sp

jr_006_423a:
    ld a, [hl-]
    adc l
    ld de, $6270
    ei
    di
    ld d, a
    ld d, [hl]
    jr nz, jr_006_421a

    ld a, a
    ld c, [hl]
    ld h, b
    ld a, l
    dec bc
    ld a, h
    ld h, a
    ld h, h
    ld a, e
    adc b
    rst $08
    and d
    ld bc, $b41f
    ld a, a
    ld h, [hl]
    ld h, c
    ld h, e
    and l
    ld h, a
    ld h, d
    dec [hl]

jr_006_425c:
    cp l
    ld b, c
    add hl, bc
    rst $18
    ld e, b
    db $10
    sbc e
    ld e, a
    nop
    ld e, h
    ld a, e
    ld a, b
    or a
    jr nc, jr_006_423a

    nop
    rst $30
    db $ec
    rst $10
    ld [hl], a
    sbc e
    ld bc, $4740
    ld bc, $5e5f
    add e
    ld c, e
    ld [hl], a
    adc l
    ld bc, $6175
    db $d3
    rrca
    ld [$8813], sp
    ld sp, $0107
    dec de
    ld a, [de]

jr_006_4288:
    reti


    jr @-$17

    ld [bc], a
    cp l
    rst $18
    ld h, h
    cp a
    rst $38
    adc e
    dec sp
    db $76
    inc hl
    dec h
    ld a, [hl+]
    or a
    ld [hl], a
    ld [hl+], a
    ld d, c
    jr jr_006_425c

    sub e
    rra
    jr nc, @+$01

    ld h, a
    ld a, b
    rst $18
    ld c, a
    rla
    ld l, a
    dec sp
    ld l, $38
    or a
    ld [hl-], a
    ld a, e
    ld a, d
    ld l, l
    ld l, h
    db $eb
    add sp, -$31
    call z, $ccef
    rst $18
    call c, Call_006_7477
    dec sp
    ld [hl-], a
    adc c
    nop
    sbc a
    and a
    inc h
    ld e, e
    ld b, d
    ld l, a
    ld c, [hl]
    ld d, e
    inc a
    ld d, d
    ld e, e
    inc bc
    ld bc, $604f
    ld c, [hl]
    xor a
    dec [hl]
    inc h
    sbc e
    jr @-$56

    cpl
    ld l, l
    inc a
    ld bc, $a05b
    ld h, c
    db $e3
    ld b, a
    xor c
    add hl, bc
    or h
    inc c
    ld [hl], e
    inc de
    ld [de], a
    jp hl


    rra
    db $10
    adc b
    ld d, c
    ld e, $7f
    ld a, b
    rra
    ld bc, $f797
    ld b, $9f
    ld a, [de]
    dec de
    ld a, h
    rst $38
    ld sp, $6b01
    ld c, d
    nop
    db $d3
    cpl
    ld c, $ef
    ld c, $0a
    db $db
    ld a, [de]

Call_006_4303:
    sbc l
    jr jr_006_4288

    dec [hl]
    ld a, [hl]
    ld bc, $df80
    daa

jr_006_430c:
    ld h, $b7
    ld h, $ad
    dec d
    inc l
    adc a
    inc c
    inc hl

jr_006_4315:
    ret


    inc e
    rst $28
    ld c, [hl]
    ld [hl], c
    adc l
    dec hl
    ld h, [hl]
    add hl, hl
    ld l, a
    adc c
    set 3, d
    inc de
    ld bc, $4f22
    db $10
    pop de
    adc c
    ld bc, $5455
    ld b, a
    ld b, h
    scf
    inc b
    rst $30
    rst $00
    ld bc, $4ef3
    rst $28
    ld bc, $7315
    ld [hl], d
    ld l, l
    cp d
    ld l, l
    ld [hl], $d9
    dec a
    ld e, a
    ld [c], a
    dec a
    ld h, e
    sub c
    and e
    db $10
    ld l, a
    ld d, c
    db $10
    or e
    jr nc, jr_006_430c

    ld l, l
    ld b, h
    ld h, b
    ld b, l
    push bc
    ld e, [hl]
    ld l, a
    ld c, e
    inc bc
    rra
    add h
    ld de, $a143
    ld [hl], a
    or e
    cp l
    dec l
    and e
    rst $30
    inc bc
    dec l
    rst $30
    inc [hl]
    or a
    inc [hl]
    ld h, a
    or d
    ccf
    ld d, e
    and [hl]
    rst $18
    ld a, [de]
    ei
    cp l
    ld bc, $7d2d
    ld a, h
    cp e
    jr c, @+$1c

    db $eb
    ld l, d
    bit 1, d
    ccf
    ld a, h
    ld e, a
    ld bc, $4613
    add h
    inc de
    sbc b
    xor l
    ld b, e
    and e
    jr nz, jr_006_4315

    rst $38
    rst $38
    add hl, sp
    nop
    cp $01
    ld hl, $fc05
    ld bc, $01b5
    ld d, c
    jp $c01f


    rlca
    ldh [$03], a
    ld a, b
    inc bc
    ret c

    rlca
    ret nz

    ccf
    add b
    jr @+$03

    ld hl, sp+$03
    ld bc, $06c0
    nop
    add b
    ld a, $81
    inc a
    ret nz

    ld c, $f0
    ld b, $63
    ld sp, hl
    adc a
    nop
    ld a, a
    db $e4
    dec b
    dec b
    db $fc
    nop
    call z, $e01f
    ld a, [hl+]
    ld e, $34
    ret nz

    dec de
    inc [hl]
    inc de
    ccf
    rst $38
    ld b, d
    ld hl, $1205
    ccf
    ld a, e
    ld e, l
    ld [bc], a
    ld bc, $5d60
    ld bc, $6003
    ld bc, $c07c
    ld c, a
    inc bc
    ld [hl], b
    rrca
    ld h, b
    sbc a

jr_006_43e0:
    ld sp, hl
    rlca
    ld d, e
    ld d, b
    db $fc
    dec b
    rst $20
    nop
    ld sp, $18c3
    ld bc, $0cc1
    ld [hl], b
    nop
    ld a, $00
    or $90
    inc bc
    nop
    ld l, a

Jump_006_43f7:
    nop
    ld a, h
    add e
    jr c, @-$7b

    ld de, $83e7
    dec de
    add hl, bc
    ret nz

    ccf
    and $09
    adc c
    ld b, e
    cpl
    add e
    jr nc, jr_006_447a

    daa
    dec hl
    ld b, $6c
    add hl, de
    dec hl
    ccf
    db $fc
    or $05
    ld de, $d83f
    ld d, e
    ld d, a
    pop bc
    inc e
    or e
    ld c, a
    inc bc
    sbc l
    ei
    inc bc
    rst $28
    rrca
    pop hl
    jr nz, jr_006_43e0

    nop
    ld bc, $07f6
    ld b, $ff
    ldh [rIE], a
    ret nz

jr_006_4430:
    sub d
    inc bc
    ld bc, $18e0
    dec [hl]
    db $fd
    ld bc, $de25
    ld e, $b8
    rst $20
    cp b
    jr c, jr_006_4472

    jr nc, jr_006_4430

    ld c, $be
    ld a, $7e
    db $76
    cp $e2
    cp $e0
    ld a, [hl]
    ld h, b
    ld bc, $623f
    ld b, e
    ld a, a
    ld l, [hl]
    pop hl
    ld a, a
    ld a, a
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, c
    ld a, b
    ld h, b
    ld a, h
    ld [hl], b
    inc a
    jr nc, jr_006_4467

    dec l
    cp $f5
    inc c
    add b
    db $fd

jr_006_4467:
    pop bc
    ld sp, hl
    ld bc, $cbe1
    ld bc, $94df
    inc e
    ld a, a
    ld a, [hl]

jr_006_4472:
    rst $38
    cp $cf
    adc $c7
    add $ad
    adc h

jr_006_447a:
    rst $18
    sbc h
    ei
    ld hl, sp+$67
    ld h, b
    ld l, a
    ld h, b
    cpl
    xor e
    ld d, a
    call Call_006_577b
    cp b
    ld b, c
    ld bc, $0030
    ld a, $38
    ld a, $3c
    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    ld l, [hl]
    rlca
    sbc d
    nop
    dec bc
    ld a, [hl]
    ld a, b
    ld a, [hl]
    ld a, h
    call z, Call_000_00cc
    jr c, jr_006_44a3

jr_006_44a3:
    ld h, [hl]
    inc hl
    ld a, e
    ld h, [hl]
    ld [hl], e
    ld e, l
    ld a, b
    ld e, d
    ld [de], a
    ld h, b
    adc [hl]
    add b
    dec de
    rst $30
    rst $00
    ret nz

    ld c, e
    inc bc
    ld c, a
    ld a, c
    ld a, b
    inc bc
    nop
    rrca
    db $f4
    inc bc
    ld sp, $4b36
    push bc
    add hl, hl
    ccf
    rra
    rra
    ld bc, $9d62
    cp c
    ldh [$df], a
    inc de
    pop bc
    nop
    dec e
    rst $18
    rra
    rst $08

jr_006_44d2:
    rrca
    ldh [rP1], a
    ldh a, [$a6]
    sra c
    inc c
    cp $fe
    ld hl, sp-$08
    adc e
    rst $30
    jr jr_006_44d2

    ld a, a
    ld [hl], b
    rrca
    ei
    db $e3
    ld h, b
    rst $08
    ld a, [de]
    rrca
    ld h, b
    nop
    ldh [$95], a
    ld c, d
    ccf
    ccf
    rst $38
    ld h, b
    nop
    ld c, e
    inc a
    inc a
    dec a
    inc a
    inc l
    sbc a
    inc e
    ld c, c
    ld c, a
    ccf
    ld h, d
    rst $30
    add hl, hl
    rst $20
    rlca
    ld b, c
    ld bc, $0eee
    rst $08
    ret


    ld bc, $276a
    xor e
    ld c, l
    ld [hl], b
    dec de
    rst $00
    ccf
    jr c, jr_006_451b

    db $db
    ld b, $01
    ld b, c
    rst $18

jr_006_451b:
    ld b, $01
    ld b, $8f
    sbc a
    ld a, l
    ld [hl], c
    rlca
    rst $08
    set 7, h
    inc b
    ld b, [hl]
    dec c
    ld [hl], l
    or e
    dec bc
    ld h, b
    cp a
    sub c
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp-$09
    inc bc
    rra
    ld b, [hl]
    rst $38
    ld bc, $cf2c
    ld c, $01
    nop
    rst $18
    ld e, $9f
    ld e, $9d
    inc e
    cp a
    jr c, jr_006_45bb

jr_006_4547:
    sbc a
    ld b, c
    rst $18
    rrca
    rst $28
    ld b, a
    xor c
    rst $38
    add sp, $01
    rra
    ld de, $f74d
    add a
    or [hl]
    daa
    db $e3
    ld c, e
    rlca
    ld sp, hl
    ld sp, hl
    ldh [$e0], a
    db $ec
    dec sp
    rst $10
    nop
    ld bc, $fef0
    ldh a, [$fd]
    pop af
    ld sp, hl
    pop af
    inc e
    ld a, e
    ld a, e
    dec sp
    nop
    ld [hl], $f7
    rlca
    dec e
    ld h, a
    ld bc, $f8f8
    di
    ldh a, [$f7]
    ldh a, [rIE]
    adc $01
    nop
    ld c, l
    sbc $ff
    cp $7f
    ld a, [hl]
    ccf
    ld a, $73
    rra
    ld e, l
    ld b, b
    dec c
    dec a
    ld a, $3e
    ld [hl], a
    inc e
    ld c, c
    ei
    db $e3
    inc bc
    ld [$fe93], sp
    cp $c4
    ld [hl], a
    sbc a
    rra
    or [hl]
    scf
    dec hl
    jr nz, jr_006_45e2

    ccf
    dec c
    sbc a
    jr jr_006_4547

    rst $08
    adc a
    ld bc, $8ccc
    ld l, h
    di
    ld [hl], e
    add l
    add a
    dec c
    rst $28
    rst $08
    xor $ee
    daa
    or b
    dec hl
    nop

jr_006_45bb:
    rst $20
    ldh [$ee], a
    nop
    ldh [$fd], a
    pop hl
    ei
    db $e3
    ei
    di
    rst $30
    pop hl
    nop
    ld a, e
    ld [hl], e
    jr jr_006_463c

    pop af
    pop af
    ret nz

    adc e
    call z, $dcc0
    ret nz

    db $fc
    dec d
    ldh [$fc], a
    ldh [$09], a
    ld [hl], e
    ldh [$60], a
    ld [hl], e
    cp a
    add b
    rst $38

jr_006_45e2:
    add b
    ret nc

    ld [hl], c
    xor l
    adc $00
    ccf
    ld b, $75
    inc a
    inc a
    ccf

jr_006_45ee:
    inc a
    ld a, a
    sub b
    ld h, [hl]
    adc a
    adc a
    inc bc
    ld bc, $e101
    ld bc, $01f9
    jr jr_006_4658

    rst $20
    rst $00
    ld bc, $e3f3
    ld [hl], e
    di
    ld d, c
    ld l, c
    jp $c4b8


    or l
    dec de
    cp e
    ld hl, sp+$70
    ld b, b
    daa
    db $d3
    add hl, sp
    add hl, sp
    ld [hl], $3d
    dec a
    dec sp
    ccf
    call c, Call_000_389b
    ld c, b

jr_006_461c:
    ldh a, [rNR31]
    rst $38
    dec de
    db $fc
    ld a, a
    ld a, h
    ld d, d
    inc e
    and a
    sbc [hl]
    inc e
    ld d, [hl]
    ldh [rP1], a
    ld a, h

jr_006_462c:
    ld a, h
    ld a, [hl]
    ld l, l
    ld a, [hl]
    and c
    ld hl, $05b1
    and e
    ei
    ld hl, sp-$3f
    dec sp
    ld hl, sp+$7b
    ld a, e

jr_006_463c:
    ld [$4275], sp
    call $4305
    ld [hl], l
    rst $28
    rst $28
    ld h, $d1
    rst $08
    ld bc, $4f0d
    ld c, $cf
    rrca
    ld bc, $3980
    ld a, [de]
    jr jr_006_45ee

    jr jr_006_461c

    nop
    ld c, d

jr_006_4658:
    adc $a0
    ld b, c

Call_006_465b:
    ldh [$7d], a
    ld [hl], c
    ld a, h
    ld [hl], b
    ld c, $7e
    ld a, b
    ld a, a
    ld a, b
    xor a
    adc c
    inc sp
    nop
    ld sp, $91fc
    ld l, e
    ld e, l
    sub l
    ld b, c
    adc l
    ld l, e
    rst $08
    adc a
    xor l
    cp [hl]
    pop de
    ld bc, $a110
    add b
    xor e
    inc h
    cp $00
    ld bc, $fc76
    sbc a
    jp nz, $f7cd

    rlca
    ld a, a
    ld c, $3b
    ld a, b
    jr z, jr_006_462c

    ld hl, sp-$53
    rst $38
    sub h
    ret


    sub a
    ld bc, $c1d9
    db $e3
    add hl, bc
    cp c
    jr nc, jr_006_46b4

    nop
    di
    di
    nop
    ld b, [hl]
    nop
    ld a, e
    inc bc
    add a
    rlca
    ldh [rP1], a
    pop af
    ret nz

    add d
    dec d
    cp $0d
    inc c
    nop
    and e
    rlca
    rlca
    stop

jr_006_46b4:
    ld hl, sp-$68
    ld h, l
    rst $30
    add a
    dec c
    ldh a, [$e0]
    ld hl, sp-$08
    ei
    add e
    add hl, hl
    add d
    nop
    cp l
    ld sp, $2d0e
    cp a
    cp a
    ccf
    db $db
    ld c, a
    ld de, $0f68
    dec h
    nop
    ld b, e
    rst $18
    rra
    adc $8e
    ret nz

    ret nz

    inc hl
    add hl, de
    nop
    ld e, a
    ld e, $3d
    db $fd
    call z, $a3f9
    ld c, [hl]
    inc bc
    ld c, $cd
    inc c
    jp z, $c508

    and e
    dec l
    ld h, d
    ld bc, $5f26
    rra
    inc [hl]
    ld a, a
    ld b, b
    ld a, c
    rst $20
    ldh [$8f], a
    jp hl


    add e
    ld bc, $e1e9
    reti


    pop bc
    inc a
    nop
    ld a, [hl]
    ldh a, [rSB]
    add l
    rst $30
    nop
    ldh a, [$cd]
    pop bc
    sbc c
    add c
    add hl, sp
    ld bc, $567b
    inc bc
    jp hl


    ld hl, $fb07
    rlca
    db $db
    rst $28
    and b
    ld [$80fe], sp
    ld [hl], l
    add b
    sub l
    ld e, a
    ld sp, $9f1f
    ret


    ld a, a
    ld bc, $891a
    daa
    ld d, d
    adc l
    pop af
    ld sp, hl
    ld bc, $c96f

Call_006_4730:
    adc a
    ld bc, $cfce
    dec bc
    ld [bc], a
    or $f6
    ld h, b
    ld h, b
    dec bc
    nop
    push de
    push hl
    inc c
    ld hl, sp-$10
    ld a, c
    ld [hl], b
    add hl, de
    rra
    di
    ld bc, $186f
    ld [$fb07], a
    add e
    jr c, jr_006_474f

jr_006_474f:
    and $4f
    di
    ld [c], a
    xor c
    cp $73
    daa
    inc l
    dec de
    rra
    ld c, d
    rra
    ld h, h
    xor c
    ld e, l
    ld [de], a
    ldh a, [$f0]
    rst $28
    xor [hl]
    dec c
    ld bc, $ff37
    ldh [$78], a
    adc a
    ld bc, $ef5d
    inc c
    add hl, bc
    inc hl
    rrca
    ld hl, sp-$1d
    dec hl
    adc a
    inc c
    rst $08
    sbc b
    ld bc, $e70d
    inc b
    xor d
    add e
    ld h, e
    ld bc, $03f8
    ldh a, [rSC]
    ld l, l
    ld bc, $01a4
    ld c, $53
    inc c
    ld [c], a
    dec de
    nop
    sbc b
    ld bc, $1307
    ldh a, [rIF]
    or e
    call c, $ddc9
    adc d
    di
    ld d, a
    ld l, h
    push de
    ld [bc], a
    sbc e
    ld d, e
    dec [hl]
    di
    inc bc
    jp nc, $0106

    ret nc

    dec bc
    ld bc, $fe33
    ret nz

    ld bc, $aefd
    rra
    sbc e
    rst $28
    add h
    sbc a
    ccf
    jr c, @+$79

    ld [hl], b
    ld c, [hl]
    adc c
    ei
    ld d, a
    rst $20
    sbc $35
    rst $38
    ld [bc], a
    bit 7, l
    nop
    ld [bc], a
    ld [hl], c
    ld bc, $f379
    jp $05ee


    db $fd
    adc [hl]
    rst $20
    ld l, l
    sub e
    sbc c
    sbc l
    ld [hl], e
    nop
    sbc $1e
    cp [hl]
    ld a, $38
    jr c, jr_006_4856

    ld a, c
    inc c
    ld d, b
    rlca
    add sp, $07
    jr @+$09

    ldh [rIF], a
    ldh [$1f], a
    nop
    rra
    ld e, $fd
    jp hl


    sbc l
    rlca
    ld a, l
    ld a, h
    ld a, e
    ld a, b

jr_006_47f4:
    ld [hl], a
    ld d, h
    sbc e
    scf
    scf
    inc [hl]
    jr nc, @+$32

    dec b
    ld h, d
    add l
    ei
    inc bc
    db $db
    dec h
    and e
    rst $10
    xor h
    pop hl
    nop
    rst $30
    rst $30
    db $e3
    db $e3
    reti


    pop bc
    add hl, sp
    ld bc, $794e
    cp c
    ld l, a
    dec e
    cp $d0
    dec bc
    di
    add hl, hl
    ldh a, [$cf]
    cp a
    jr jr_006_47f4

    db $e3
    inc bc
    ld [hl], a
    ld sp, hl
    ld h, e
    ld hl, $6116
    rst $30
    rst $20
    ret nz

    ld d, c
    or $f0
    db $fc
    ldh a, [$7d]
    ld de, $e779
    rst $20
    jr c, @+$7d

    ld bc, $6676
    inc e
    push hl
    db $e4
    jp $90d1


    dec de
    ld l, h
    ld h, b
    inc bc
    inc e
    nop
    inc a
    nop
    ld a, l
    ld a, l
    ld h, e
    dec c
    pop hl
    db $fc
    ldh a, [$ca]
    inc b
    ld bc, $70fe
    ld bc, $f809

jr_006_4856:
    db $fd
    ld h, c
    ld sp, hl
    nop
    db $fd
    db $fd
    ld a, e
    adc [hl]
    sbc h
    ld a, b
    db $fc
    sbc h
    ld l, l
    ld bc, $0ebe
    cp b
    sbc [hl]
    sbc b
    sbc [hl]
    add sp, $21
    rst $20
    ldh [$6f], a
    or l
    ld a, [hl+]
    sbc a
    ld [hl], b
    cp h
    ld d, e
    ld d, $01
    jr c, jr_006_4887

    ld bc, $0707
    add a
    adc $ed
    ld sp, hl
    sub d
    dec hl
    ld a, h
    ld b, b
    pop hl
    ld a, [hl]
    ld h, b

jr_006_4887:
    ld a, $20
    ld a, [c]
    add d
    or $86
    rst $28
    adc $dd
    call c, $15d2
    db $fc
    adc c
    ld h, a
    ld [hl], e
    ld a, c
    nop
    dec d
    ld d, c
    ld a, h
    ld a, b
    inc a
    add e
    ld bc, $fd00
    pop bc
    ei
    jp $c7f7


    cpl
    rrca
    ld [hl+], a
    ld c, a
    rrca

jr_006_48ac:
    ld h, d
    xor l
    nop
    rrca
    ldh [$e0], a
    ret nz

    ret nz

    db $fc
    ret nz

    inc hl
    cp [hl]
    add b
    cp d
    and l
    rlca
    dec e
    sub c
    sbc $6f
    db $10
    ld bc, $7076
    sbc c
    jp c, Jump_000_00b3

    daa
    cp c
    ld bc, $7700
    ld [hl], a
    ld [hl], d
    ld [hl], d
    ld a, e
    ld [hl], d
    add l
    sub c
    ld e, $1c
    sbc [hl]
    ld c, $01
    sbc l
    dec e
    xor d
    push de
    rra
    and a
    reti


    sub c
    ld h, a
    add d
    dec b
    ei
    ei
    add b
    add b
    ld c, [hl]
    sub l
    add sp, -$41
    jr c, jr_006_48ac

    cp h
    adc c
    ld e, e
    ld b, [hl]
    ld a, $63
    ld b, e
    ld [hl], b
    ld c, a
    and h
    inc sp
    ld sp, hl
    pop af
    inc b
    pop af
    add hl, sp
    jr c, jr_006_4933

    jr nc, jr_006_4921

    rst $00
    rst $28
    dec b
    rst $18
    adc a
    ld [bc], a
    cp l
    sub c
    jr nz, @+$4f

    ld bc, $9c7f
    db $db
    db $d3
    ld [hl], h
    ld l, c
    adc h
    call $f8fb
    rlca
    inc hl
    pop bc
    adc l
    ld [hl], c
    add c
    dec e
    ld a, $3e
    add b

jr_006_4921:
    nop
    jp $3504


    db $fc
    ld c, l
    ld e, c
    jp nz, $bcbc

    ld a, $3c
    add hl, de
    add hl, de
    add e
    inc bc
    ret z

    nop

jr_006_4933:
    ld a, c
    ld [hl], b
    ld bc, $7d6d
    ld a, c
    db $fd
    ld sp, hl
    dec hl
    cp d
    adc c
    cp h
    or d
    ret


    xor b
    rra
    rra
    rra
    ld [$0809], sp
    ldh [rP1], a
    inc c
    and e
    ld l, c
    ld b, $87
    rst $38
    ld hl, sp+$0f
    nop
    and c
    inc b
    inc a
    inc a
    pop hl
    ldh [$87], a
    cp $4d
    rst $30
    ld bc, $cb07
    jp Jump_000_031b


    ld [hl], a
    rlca
    add b
    rlca
    rst $28
    rrca
    rst $18
    rra
    ld hl, sp-$08
    ld c, d
    ret nz

    ld e, l
    inc hl
    ld hl, sp+$51
    ld [hl], a
    db $fc
    pop bc
    ret nz

    or $03
    add b
    add e
    nop
    db $ed
    jp hl


    ld c, a
    ld c, a
    ld l, a
    ld c, a
    dec h
    ld l, c
    ld c, c
    ret c

    sub a
    sub b
    pop bc
    rst $00
    rlca
    pop hl
    ld bc, $f872
    ld b, c
    xor d
    push hl
    db $fc
    rlca
    pop af
    ldh a, [$c7]
    ret nz

    rra
    ld a, a
    inc hl
    rrca
    add e
    call Call_000_03cc
    inc bc
    and h
    inc hl
    rlca
    rlca
    ld d, h
    ldh a, [$fc]
    rst $20
    ld [bc], a

jr_006_49aa:
    inc bc
    push bc
    sbc $1e
    db $ed
    inc c
    db $e3
    ld a, l
    scf
    ld bc, $a10f
    ld a, a
    ld a, [bc]
    db $e3
    ld e, c
    xor d
    db $eb
    ei
    ld b, $03
    db $f4
    inc b
    db $eb
    ld [$9101], sp
    rrca
    nop
    push de
    rla
    ld a, l
    nop
    dec b
    nop
    rst $10
    rst $18
    ret nz

    cpl
    jr nz, jr_006_49aa

    ld l, b
    db $10
    ld bc, $237b
    ld [$3e01], sp
    add hl, sp
    ei
    ld bc, $f588
    ld h, a
    inc hl
    add hl, hl
    rst $18
    db $d3
    ld bc, $ba35
    or c
    sub b
    xor l
    rra
    ret nz

    inc de
    add b
    ld [hl], b
    ld hl, $3301
    ret nz

    rlca
    ld e, $0f
    nop
    inc bc
    ldh a, [rHDMA3]
    or [hl]
    ld [hl], b
    db $e4
    nop
    jp nz, Jump_006_4200

    nop
    ld h, [hl]
    ld bc, $e03c
    ld c, $f0
    ret nz

    or c
    ld bc, $04f0
    ldh a, [rTIMA]
    adc $01
    ld hl, sp-$3a
    adc c
    inc bc
    jr c, jr_006_4a26

    pop bc
    jr nc, jr_006_4a22

    db $10
    rlca
    ld d, b
    adc l
    ld bc, $400f

jr_006_4a22:
    pop hl
    ldh [rP1], a
    nop

jr_006_4a26:
    ld [de], a
    nop
    ld c, $00
    nop
    nop
    ld [$0000], sp
    nop
    ld h, e
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [hl], b
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    ld [hl], a
    nop
    nop
    ld a, b
    nop
    ld a, c
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or e
    or h
    nop
    nop
    or l
    or [hl]
    or a
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    cp d

jr_006_4ad7:
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    nop
    nop
    nop
    nop
    nop
    nop
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    nop
    nop
    nop
    nop
    nop
    and $e7
    add sp, $00
    nop
    nop
    jp hl


    nop
    nop
    ld [$00eb], a
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    inc bc
    or b
    nop
    nop
    ld [bc], a
    cp h
    ld l, h
    ld l, [hl]
    ld b, b
    ld d, l
    ld [bc], a
    ld bc, $001e
    stop
    ld bc, $2020
    ld d, b
    sub d
    add hl, bc
    ld [$2007], sp
    inc c
    ld a, [bc]
    inc b
    ld hl, $1e03
    add b
    ld a, a
    inc c
    pop af
    adc c
    ret nz

    inc bc
    jr nz, jr_006_4ad7

    nop
    ld b, b
    add b
    jr nz, jr_006_4bb4

    ret nz

    dec c
    ld h, b
    ld c, $00
    jr c, jr_006_4b63

jr_006_4b63:
    inc e
    inc a
    ld bc, $0706
    ld b, [hl]
    ld b, $63
    ld bc, $0301
    nop
    jr z, @+$03

    ld bc, $0c01
    cp c
    pop af
    nop
    db $10
    ldh [$08], a
    ldh a, [rTIMA]
    ld hl, sp+$02
    db $fc
    add l
    ld a, b
    sub d
    ld h, c
    adc c

jr_006_4b84:
    ld b, $62
    inc e
    ld l, $00
    ld l, [hl]
    nop
    xor $00
    call c, $b801
    jp nz, $8072

    add b
    ret nz

    scf
    inc b
    inc b
    rlca
    rlca
    inc c
    ld bc, $0201
    ld [bc], a
    add hl, bc
    add c
    ld h, b
    add b
    ld bc, $c0c0
    ld [hl], c
    ld [hl], c
    inc e
    rra
    rra
    rst $38
    nop
    nop
    ld a, a
    nop
    inc a
    jp $fe01


jr_006_4bb4:
    ld c, b
    jr nc, jr_006_4be8

    add a
    add a
    dec bc
    cp $fe
    ld [hl], b
    ldh [$e0], a
    nop
    ld hl, sp+$00
    ret nz

    dec de
    dec de
    di
    di
    push hl
    push hl
    add $3b
    ld h, c
    ld h, c
    rrca
    nop
    ld e, $1c
    ld a, a
    ccf
    ld b, a
    rlca
    jr nc, jr_006_4bd7

jr_006_4bd7:
    add hl, sp
    ldh a, [$e0]
    dec de
    jr nc, jr_006_4b84

    ret nz

    add b
    ldh [rBCPD], a
    ret nz

    ld e, e
    ld l, $0d
    ld a, [hl-]
    inc bc
    inc bc

jr_006_4be8:
    inc d
    ld [$1c22], sp
    ld bc, $523e
    ld hl, $4728

jr_006_4bf2:
    db $10
    ld c, a
    ld b, d
    inc e
    ld b, l
    rst $20
    sbc [hl]
    sbc [hl]
    ld sp, hl
    ld hl, sp+$24
    inc hl
    sub b
    rrca
    ld hl, $419e
    ld a, $83
    ld a, h
    sub h
    adc b
    ld b, d
    inc a
    jr jr_006_4bf2

    ld a, [bc]
    db $f4
    rra
    ldh [$81], a
    ld h, a
    ld a, b
    add a
    ret nz

    ccf
    ldh a, [$c0]
    nop
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld [hl], b
    inc a

jr_006_4c1f:
    nop
    inc e
    inc e
    jr nz, jr_006_4c42

    ld e, $4f
    jr nz, jr_006_4c88

    ld b, b
    jp $7c82


    ld b, h
    add hl, sp
    rrca
    jr nz, jr_006_4c4c

    db $10
    dec bc
    ld [bc], a
    jr nc, jr_006_4c1f

    inc bc
    inc l
    cp [hl]
    ld a, h
    inc c
    sub b
    dec bc
    ret nz

    nop
    nop
    pop hl
    ld h, c

jr_006_4c42:
    ld [hl], a
    ld [hl-], a
    ld a, [hl-]
    jr jr_006_4c1f

    adc b
    db $ec
    ld bc, $0406

jr_006_4c4c:
    ld e, $18
    ld a, b
    ld h, b
    ldh [$c0], a
    jp c, $1825

    ld [$2931], sp
    ld h, b
    db $10
    add e

jr_006_4c5b:
    ld b, $00
    inc c
    inc c
    inc bc
    add hl, de
    jr jr_006_4c73

    ld de, $817e
    ld e, h
    ld h, a
    jr nc, jr_006_4ce5

    add h
    dec de
    db $e4
    ld [$0cf7], sp
    di
    jr @-$1e

jr_006_4c73:
    ld sp, $dbcd
    ld [hl], h
    adc b
    jr c, jr_006_4c7b

    ret nz

jr_006_4c7b:
    ret z

    jr nc, @-$0e

    nop
    ld b, c
    add b
    add l
    sub l
    ret z

    rst $00
    inc c
    nop
    ld d, c

jr_006_4c88:
    add hl, de
    nop
    ld b, h
    jr c, @+$04

    db $fc
    jr nc, jr_006_4c90

jr_006_4c90:
    cp $01
    rrca
    nop

jr_006_4c94:
    rlca
    jr nc, jr_006_4c97

jr_006_4c97:
    ld [bc], a
    sbc $f8
    inc bc
    di
    ld bc, $cc0f
    inc a
    jr nc, jr_006_4d12

    ld b, d
    ld a, [de]
    ret c

    ld e, e
    dec sp
    ld sp, $f313
    pop bc
    pop bc
    ld e, h
    add l
    jr nz, jr_006_4c94

    ld b, b
    ld a, [hl]
    ld h, $fe
    ld [hl], $fc
    cp b
    ldh a, [$d0]
    ldh [rLCDC], a
    rrca
    ld a, [de]
    ld e, h
    add hl, de
    or b
    add hl, bc
    ld a, [bc]
    ld [$140b], sp
    inc de
    ld bc, $0206
    inc b
    dec c
    ld bc, $0109
    db $e4
    jr jr_006_4c5b

    ld [hl], c
    ld [hl-], a
    ret nz

    ld e, e
    db $10
    rla
    ld a, b
    ld h, d
    ld a, b
    rst $10
    ld a, $3e
    db $e3
    db $10
    rrca
    and b
    rra
    ld b, b
    ccf
    nop

jr_006_4ce5:
    rst $38
    nop
    ccf
    ret nz

    rst $18
    and c
    xor [hl]
    inc b
    ld [$7fb8], sp
    dec bc
    rst $38
    ret nz

    dec b
    inc b
    ld hl, sp+$23
    jp $0d0f


    rrca
    ld c, $0e
    nop
    ld bc, $1d81
    cp [hl]
    nop
    jr c, @+$08

    ld b, [hl]
    or e
    ei
    rst $38
    dec bc
    adc $03
    rst $28
    ld bc, $dbc5
    dec c
    inc bc

jr_006_4d12:
    add b
    dec c
    ld [bc], a
    nop
    dec c
    ld [bc], a
    jp c, $071f

    ld c, l
    add d
    inc b
    dec e
    rra
    inc de
    ld hl, $0b00
    ld [hl], b
    ld b, [hl]
    jr nz, jr_006_4d2b

    jr jr_006_4d2a

jr_006_4d2a:
    db $76

jr_006_4d2b:
    inc c
    ld h, d
    dec e
    db $10
    ccf
    nop

jr_006_4d31:
    rra
    call z, Call_006_5f00
    ld e, d
    rst $20
    jr @+$09

    ld a, [c]
    ld c, b
    rst $00
    nop
    and b
    dec e
    jr nz, jr_006_4d31

    or b
    adc c
    xor e
    ret nz

    ret nz

    pop hl
    ld sp, hl
    dec b
    dec b
    inc bc
    sbc [hl]
    nop
    ld bc, $4502
    rla
    add a
    add a
    add [hl]
    ld e, $82
    ld b, c
    nop
    ldh [rNR41], a
    pop af
    ld d, b
    ld a, e
    jr z, jr_006_4dd6

    db $10
    ld a, $00
    ld e, $01
    cp a
    dec bc
    adc [hl]
    ld a, l

jr_006_4d68:
    nop
    ld a, [c]
    adc a
    nop
    call z, Call_000_3100
    nop
    jp nz, $ae00

    nop
    ld c, l
    nop
    sbc d
    nop
    inc h
    nop
    jr jr_006_4dbe

    add c
    add b
    sbc [hl]
    ld [hl], l
    ld b, $00
    cp b
    ld b, c
    ld a, [hl]
    ld h, h
    cp a
    adc b
    ld a, [hl]
    ld [hl], $79
    ld c, c
    ld [de], a
    ld [de], a
    inc b
    inc b
    rrca
    and b
    reti


    sbc e
    add b
    ldh [$03], a
    inc h
    dec a
    nop
    ld [de], a
    nop
    ld a, c
    inc c
    inc bc
    cpl
    inc b
    rst $08
    ld c, c
    inc b
    ld c, e
    nop
    inc bc
    cpl
    ld b, a
    add b
    db $10
    db $10
    ld a, a
    sbc e
    nop
    cp h
    or [hl]
    cpl
    add d
    nop
    ld de, $6f6f
    db $f4
    db $f4
    ret c

    db $db
    adc l
    dec e
    adc h

jr_006_4dbe:
    sub $c6
    cp e
    cpl
    ld d, $39
    ld bc, $c63e
    cpl
    ld e, $1e
    inc bc
    nop
    inc de
    inc bc
    ld a, c
    ld bc, $e11d
    inc e
    ldh [$80], a
    rst $18

jr_006_4dd6:
    ld l, c
    ld h, c
    or b
    inc bc
    jr nc, jr_006_4e2c

    db $10
    ld e, b
    jr jr_006_4d68

    sbc e
    nop
    ld [hl], a
    sbc a
    ld a, c
    dec b
    rra
    xor a
    ld [$5d09], sp
    inc c
    cp a
    adc d
    ld [bc], a
    ld d, h
    rst $28
    db $fc
    adc d
    inc bc
    ld a, b
    ld l, a
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    rrca
    ldh [rP1], a
    nop
    ld [$faa0], sp
    inc b
    ld a, [hl]
    ld e, $02
    ld bc, $fa0f
    rst $38
    ld b, $3c
    ld bc, $075f
    ld bc, $0000
    nop
    ccf
    ld a, a
    ld b, b
    ccf
    ld e, a
    ccf
    ld d, b
    ld h, b
    cpl
    ld bc, $2f53
    ld d, d
    dec l
    rst $00
    rrca
    rst $38
    rst $38
    nop
    ld [bc], a
    rst $38
    jr @+$01

jr_006_4e2c:
    inc hl
    db $fc
    ld l, h
    db $10
    di
    db $d3
    cp h
    rrca
    nop
    ldh a, [rIE]
    rlca
    ld hl, sp+$78
    add a
    add a
    ld a, b
    add hl, sp
    ld a, a
    add b
    ld l, $c0
    rrca
    rrca
    rst $38
    ldh [$1f], a
    ld [bc], a
    ld e, $e1
    pop hl
    ld e, $fe
    ld bc, $0f49
    nop
    cpl
    call nz, Call_000_363f
    rst $08
    srl l
    ret nz

    rrca
    cp $fe
    ld [bc], a
    cp $fa

jr_006_4e5f:
    jr c, jr_006_4e5f

    ld a, [bc]
    ld bc, $04ca
    cp $4a
    cp [hl]
    ld d, c
    ld l, $0b
    ld d, l
    ld d, e
    ld l, $ad
    ld d, h
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
    ld sp, $80ef
    ld bc, $000f
    sub c
    ld h, b
    add [hl]
    ld d, $78
    adc h
    ld a, e
    rla
    ld bc, $1bf6
    inc e
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
    ld d, l
    ld l, d
    ld b, $be
    sbc d
    ld a, [hl]
    ld e, d
    cp [hl]
    ld e, e
    inc c
    xor d
    ld e, [hl]
    and [hl]
    ld e, [hl]
    ld d, c
    ld c, d
    ld h, $3f
    ld d, [hl]
    ld bc, $5501
    ccf
    ld d, e
    dec a
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
    call c, $6201
    sbc b

jr_006_4ee9:
    ld bc, $2ed6
    pop bc
    ld bc, $2ed2
    ld [$6016], a
    ld bc, $3d52
    ld d, e
    db $e4
    ld bc, $0514
    ld d, h
    ld h, e
    add $e9
    ret


    db $ed
    inc bc
    ld [hl-], a
    cp e
    call nz, Call_006_465b
    add a
    ld h, e
    ld h, d
    call c, Call_000_06bd
    ld bc, $3902
    jr nz, jr_006_4f13

    ld d, [hl]

jr_006_4f13:
    ccf
    ld d, [hl]
    di
    dec b
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
    jr nc, jr_006_4ee9

    ld a, b
    sub d
    ld a, b
    jp z, Jump_006_7630

    nop
    ld de, $b20b
    ld c, h
    add e
    ld h, b
    ld a, a
    add b
    ld b, b
    rst $38
    ld [bc], a
    ld bc, $fc43
    ld b, h
    rst $38
    ld c, b
    ld a, d
    ld [hl], b
    ld c, b
    inc bc
    add hl, sp
    ld bc, HeaderROMSize
    adc b
    rla
    ld b, e
    rst $38
    rrca
    ld hl, $ff7f
    nop
    ld bc, $0126
    rst $38
    inc bc
    add b
    cpl
    cp $01
    ld [bc], a
    ld h, b
    db $fd
    ld bc, $3dc2
    ld [hl+], a
    db $dd
    ld hl, $ed12
    ld bc, $0788
    jp nz, Jump_000_29fd

    ld de, $1ffe
    ld c, c
    add hl, hl
    and h
    ld c, l
    ld [bc], a
    ldh a, [rTIMA]
    add hl, bc
    nop
    rrca
    rst $28
    nop
    ldh [rIF], a
    rlca
    ldh a, [$f8]
    inc bc
    nop
    ei
    ret nz

    ld bc, $f803
    ld bc, $00fd
    ldh [rSB], a
    ld bc, $fefc
    db $76
    cp $e8
    ld [c], a
    inc bc
    add b
    jr @+$76

    and b
    ld a, a
    ld b, b
    db $10
    cp a
    ret nz

    ccf
    rlca
    db $f4
    dec b
    ld b, e
    sbc [hl]
    ld a, a
    rlca
    nop
    ld [hl], $f0
    rst $30
    ld c, l
    ld d, c
    inc c
    rra
    ret nz

    nop
    rst $18
    ld bc, $06c0
    rra
    and b
    sbc a
    nop
    cp a
    ld bc, $8019
    ccf
    ld a, a
    add hl, sp
    ld a, a
    inc b
    inc bc
    ld bc, $9433
    or b
    cp $10
    sbc l
    inc bc
    db $fc
    rlca
    and l
    rst $28
    sbc [hl]
    sub c
    inc bc
    ld c, [hl]
    or h
    ld e, c
    rst $08
    rrca
    ld l, b
    rst $08
    jr nc, jr_006_4fe6

    nop
    ld e, l
    db $76
    add c
    ld d, [hl]
    db $10
    pop hl

jr_006_4fe6:
    ld c, h
    db $e3
    ld bc, $6c00
    jp $e040


    ld b, b
    rst $28
    ld c, a
    ldh [rNR32], a
    ldh [$ef], a
    rst $28
    inc bc
    inc bc
    add sp, -$19
    ldh [$f7], a
    ld e, h
    jp $011b


    ld e, [hl]
    pop bc
    ld bc, $7f01
    jr c, @-$77

    ld [hl], c

jr_006_5008:
    rrca
    ld h, b
    rra
    sbc h
    ld de, $0160
    nop
    jr nz, jr_006_5008

    nop
    pop af
    ld a, b

jr_006_5015:
    db $fd
    db $fd
    db $fc
    daa
    inc a
    cp $98
    cpl
    db $fc
    db $e3
    ret nz

    inc sp
    dec de
    nop
    rst $08
    nop
    sbc l
    inc bc
    ld de, $00f9
    rst $00
    nop
    ccf
    ld l, b
    adc l
    ld a, [hl+]
    ld b, $7f
    ld bc, $077e
    ld hl, sp+$09
    adc c
    add hl, bc
    sbc c
    adc a
    rlca
    pop bc
    dec h
    cp a
    inc bc
    ld a, h
    inc bc
    dec d
    ccf
    ret nz

    ld bc, $3f0f
    rst $18
    ld [hl], b
    adc a
    ldh a, [rIF]
    db $ec
    ld [bc], a
    ld bc, $80b6
    ld a, c
    ld a, a
    inc b
    ld bc, $faff
    inc bc
    and e
    dec de
    ld bc, $1892
    xor a
    ld b, $f1
    ld bc, $e30c
    sub b
    ld bc, $c3dc
    rlca
    inc e
    jp $c11e


    ld e, $87
    ld [$f79f], sp
    inc bc
    di
    jr jr_006_5015

    db $fd
    sbc a
    ld c, [hl]
    pop hl
    ld [$f156], sp
    ld d, h
    di
    dec de
    ld bc, $f750
    ld bc, $db7c
    inc bc
    add e
    db $db
    cp $f8
    db $fd
    ld hl, sp-$05
    ld b, $11
    ld b, b
    rst $18
    ld bc, $01be
    add [hl]
    sub c
    ld a, [hl]
    ret nz

    ld a, $0f
    rst $30
    ld [$18f7], sp
    ld b, b
    rst $20
    ld bc, $c738
    ret nz

    ld bc, $8778
    ld a, a
    cp a
    ldh [$7b], a
    rra
    inc b
    ld bc, $6600
    ld b, h
    and e
    ld de, $03cf
    rst $18
    inc hl
    ld h, e
    sbc a
    ld bc, $8f30
    rla
    ld bc, $1f1f
    inc e
    daa
    rst $00
    set 6, e
    di
    ei
    push af
    ld sp, hl
    pop af
    db $fd
    pop hl
    db $fd
    dec b
    ld sp, hl
    ret c

    rst $00
    adc e
    rlca
    call c, $8da3
    add $1b
    jr @-$37

    ld l, $00
    inc bc
    ei
    dec de
    db $e3
    rst $20
    rlca
    inc sp

jr_006_50e4:
    ei
    jr jr_006_50e4

    ld sp, hl
    add hl, de
    adc [hl]
    ld bc, $0383
    ld h, e
    cp a
    add b
    rst $18
    ret nz

    rst $28
    inc bc
    and h
    ldh a, [$fb]
    ld hl, sp-$07
    db $fc
    ld h, b
    add c
    add l
    add d
    ld a, l
    pop bc
    ld a, $da
    ld bc, $0057
    ei
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, h
    ld a, [de]
    inc bc
    inc a
    add e
    ld bc, $7136
    ld bc, $bbda
    ld bc, $ff48
    adc h
    cpl
    ld bc, $6f20
    rst $18
    ld bc, $8108
    dec e
    rra
    rst $28
    db $10
    jp nz, Jump_000_0801

    rst $30
    jp $fe01


    db $fd
    ld a, c
    rst $00

jr_006_512f:
    dec b
    ld bc, $81f7
    add c
    add c
    ld a, l
    ret nz

    ld a, $c0
    ld c, h
    ld h, e
    ld c, $fc
    rlca
    ei
    inc c
    di
    ld c, $f1
    rst $28
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ret nz

    rrca
    ld a, d
    ld a, a
    ld a, [hl-]
    cp a
    ld a, [de]
    jr jr_006_512f

    ld a, [bc]
    rst $28
    ld bc, $f702
    jr nc, @+$04

    ei
    ld bc, $7d80
    add b
    ldh [$37], a
    ccf
    add b
    ld c, a
    ld bc, $57c0

jr_006_5164:
    ldh a, [$59]
    ld hl, sp+$5e
    cp $28
    cpl
    call nz, $fc32
    inc bc
    ld d, l
    rst $00
    ld a, a
    pop de
    add h
    ld [hl], b
    rst $08
    ret nz

    di
    ldh a, [$3f]
    rst $18
    jr jr_006_5164

    ld b, $f9

jr_006_517f:
    add c
    ld a, [hl]
    add h
    ld e, l
    ld [$f919], sp
    ld hl, sp+$7a
    push de
    ld [bc], a
    ld bc, $290c
    rra
    ld b, e
    ldh [$08], a
    ld d, e
    ldh a, [$5d]
    db $fc
    ld e, e
    ld b, e
    dec de
    rst $08
    ret nz

    ccf
    bit 4, c
    or a
    adc e
    inc bc
    db $fd
    pop bc
    ld h, a
    sbc c
    dec h
    dec a
    jr nc, jr_006_51b6

    db $ed
    add [hl]
    dec e
    call $0433
    ei
    xor a
    rrca
    pop hl
    inc b
    ld e, $f0
    or c

jr_006_51b6:
    rst $08
    ld h, d
    add b
    ld a, [hl]
    ldh [rSC], a
    ld sp, $feff
    inc bc

jr_006_51c0:
    db $fc
    rst $30
    inc b
    ld bc, $06a1

jr_006_51c6:
    set 1, c
    add hl, bc
    push bc
    ld hl, $312f
    jr c, jr_006_51c6

    ld b, $7f
    rra
    cp a
    rra
    rst $18
    ld bc, $0f00
    rst $28
    rra
    nop
    db $e3
    ldh [$f8], a
    db $fc
    db $f4

jr_006_51e0:
    inc b
    xor a
    inc c
    or c
    rrca
    add b
    xor a
    ld e, h
    ld e, c
    db $fc
    rst $28
    ld h, $b2
    dec d
    jr c, jr_006_517f

    add b
    rst $28
    rst $00
    sub e
    db $ed
    ld b, [hl]
    ld c, e
    dec b
    sub b
    db $dd
    ld b, a
    ldh [$fd], a
    ld [bc], a
    rra
    jr nz, jr_006_51c0

    ld h, b
    sbc a
    jr jr_006_5272

    rst $20
    ld l, [hl]
    rlca
    ld de, $f1cf
    ld [bc], a
    cp e
    adc a
    di
    jr nc, jr_006_51e0

    ld b, $1d
    ld c, l
    ld hl, sp-$08
    sbc d
    ld bc, $17fc
    ld [de], a
    sbc l
    rra
    ld c, a
    rst $38
    db $fc
    ld b, $bc
    cp a
    ld [bc], a
    ld c, a
    inc b
    dec e
    ei
    add e
    ld a, h
    ld e, a
    inc sp
    dec b
    sbc [hl]
    dec c
    ld a, c
    rrca
    rlca
    cpl
    nop
    rst $08
    ld c, l
    ld bc, $4b70
    ld bc, $7f7a
    dec b
    ld a, [de]
    sbc a
    ld [bc], a
    rst $20
    nop
    ld hl, $7b8b
    ld l, c
    rst $30
    inc bc
    rra
    ccf
    rrca
    rst $08
    inc bc
    di
    ld h, e
    dec l
    ld c, a
    ld bc, $defe
    inc b
    ld bc, $8b05
    sbc e
    ccf
    or e
    ld b, a
    di

jr_006_525d:
    and l
    rst $18
    ld a, $0f
    push af
    inc bc
    rst $38
    dec bc
    ld l, l
    ld b, e
    ld b, e
    jp nc, $f8d0

    ld h, c
    ret nz

    ld c, l
    ldh [rNR22], a
    add sp, -$30

jr_006_5272:
    sbc h
    jr nz, jr_006_528a

    rst $10
    jr z, jr_006_5278

jr_006_5278:
    ld a, [hl]
    ld [hl+], a
    ld c, h
    rst $30
    ccf
    ccf
    ld a, [$e707]
    ld a, a
    ld de, $d60f
    dec b
    ld a, a
    ld d, l
    xor [hl]
    db $f4

jr_006_528a:
    ld [bc], a
    ld sp, $5faf
    or [hl]
    ld a, a
    adc c
    ld l, l
    or c
    ld b, e
    rlca
    add sp, $05
    ccf
    ld h, e
    ld bc, $5043
    ldh a, [$d0]
    ld [bc], a
    ccf
    ld [de], a
    pop de
    sbc c
    add a
    ld l, a
    ld hl, sp+$07
    nop
    rst $18
    ld bc, $1d4d
    dec c
    ld a, b
    add a
    cp h
    ccf
    ld bc, $c187
    ld b, h
    ret nz

    ld b, d
    sbc c
    inc hl
    ret z

    inc de
    ld [hl], a
    ld b, l
    rst $18
    ld a, a
    rst $38
    ld [bc], a
    inc b
    dec a
    add e
    ld a, h
    xor e
    rst $08
    ld hl, sp+$02
    ld h, d
    ld a, a
    add a
    sbc [hl]
    rst $00
    ld a, l
    nop
    ld [bc], a
    pop af
    add sp, $0d
    ld c, $f1
    ld [$dd9f], sp
    ld c, a
    jr z, jr_006_525d

    ldh [$7d], a
    ld a, l
    ld bc, $df58
    nop
    dec l
    ld a, a
    add e
    adc l
    db $d3
    scf
    ld b, l
    ld [c], a
    ld bc, $38a9
    rst $00
    ld [de], a
    ld c, c
    cp [hl]
    sbc a
    dec sp
    add h
    dec [hl]
    ld a, $55
    inc b
    rst $20
    xor a
    rrca
    ldh a, [$1f]
    inc de
    adc a
    ld b, $53
    ldh a, [rP1]
    ldh a, [$f4]
    inc b
    ld c, l
    xor $be
    ldh a, [$fd]
    inc b
    cpl
    ld sp, $f100
    nop
    ld c, a
    sub c
    ld [bc], a
    cp h
    rst $18
    or h
    pop hl
    ld e, h
    rst $18
    or $01
    add hl, bc
    ld b, $f1
    db $ec
    inc bc
    ld e, h
    cpl
    ld c, a
    rst $28
    ld [$f194], a
    rst $28
    ldh [rSB], a
    adc e
    and a
    rst $18
    inc e
    ld [hl], h
    ccf
    rst $18
    xor $3f
    rst $20
    sbc l
    db $dd
    ccf
    nop
    ld [hl], a
    ccf
    db $fc
    ld e, h
    ccf
    db $fc
    ei
    ld a, [$f304]
    dec l
    and c
    ld a, h
    or a
    ld bc, $0b54
    ld a, h
    rlc a
    ld c, a
    ccf
    xor $7f
    ccf
    cp e
    db $e3
    call z, Call_000_2995
    ccf
    xor e
    inc b
    dec e
    ld c, a
    ld [bc], a
    ld hl, sp-$61
    nop
    db $e3
    ld d, c
    and l
    ld [$e80f], sp
    ld l, a
    ld c, [hl]
    pop hl
    ld [c], a
    ld c, h
    db $ed
    ld bc, $99f5
    adc a
    ld bc, $e76b
    rst $08
    ld de, $0262
    ld bc, $f522
    ld [bc], a
    pop af
    ld b, b
    adc a
    ld hl, sp-$08
    db $e4
    db $e3
    inc bc
    pop de
    rst $08
    jp $a3df


    sbc a
    jr jr_006_538d

    or b

jr_006_538d:
    adc a
    ld bc, $1c03
    ld e, h
    ld [hl+], a
    ld a, [hl-]
    push bc

jr_006_5395:
    ret z

    di
    ldh a, [$fb]
    db $f4
    ld sp, hl
    ldh a, [$fd]
    ldh [$fd], a
    inc b
    and $7f
    sbc $c1
    sub $0d
    rst $00
    ret nz

    cp b
    add a
    dec de
    sbc l
    dec bc
    rst $18
    ld [hl], b
    ld a, a
    jr jr_006_5395

    ldh [rTAC], a
    ld b, $30
    ei
    db $fc
    ld sp, hl
    jr jr_006_53fa

    ld c, $01
    add b
    ld h, e
    ldh a, [$bc]
    dec l
    xor [hl]
    rst $18
    inc e
    ld h, e
    db $e3
    ld bc, $e11e
    xor $08
    cpl
    ld [hl], d
    inc b
    add a
    ld l, d
    adc a
    ld a, [hl+]

jr_006_53d3:
    rst $08
    daa
    ld bc, $0975
    rst $30
    xor a
    add hl, bc

Call_006_53db:
    ld a, [hl+]
    db $fc
    ld b, e
    ld b, $1e
    rst $38
    rra
    rst $18
    ld [bc], a
    rrca
    ld [bc], a
    ld e, [hl]
    cp $5c
    db $fd
    ld e, b
    ei
    ld e, l
    ld h, l
    dec l
    ld b, b
    rst $18
    ret nc

    ld d, l
    ldh [$ef], a
    ret nz

    rst $18
    ld [hl], d
    add c
    rlca

jr_006_53fa:
    db $dd
    ld e, a
    cp $08
    add a
    ld c, a
    ccf
    rst $18
    jr nc, jr_006_53d3

    cp $04
    ld bc, $0b51
    rra
    rst $08
    add $01
    inc b
    ei
    ld bc, $f855
    set 2, l
    db $10
    rst $28
    ld bc, $4101
    cp [hl]
    add e
    ld a, h
    add e
    ld c, b
    ld c, e
    jr nc, jr_006_546e

    ld e, $f2
    ld bc, $03fb
    nop
    rst $30
    rlca
    rst $28
    rrca
    rst $18
    rra
    sbc a
    ccf
    ret c

    sub c
    add l
    ld a, $c0
    ld sp, $c13c
    ld bc, $837a
    dec c
    ld bc, $bfcb
    ld bc, $b804
    db $eb
    ld bc, $f7f0
    db $f4
    ld b, $ab
    cp e
    db $fd
    ld h, h
    sbc e
    ld a, a
    sub c
    ld de, $80af
    sbc a
    ld hl, sp-$4d
    ld l, [hl]
    rrca
    dec c
    ei
    or a
    ccf
    rst $18
    ld [$05af], sp
    ld a, a
    adc [hl]
    ld bc, $dfa9
    inc bc
    db $fc
    or [hl]

jr_006_5466:
    xor e
    and a
    bit 1, l
    rst $38
    cp l
    inc c
    dec c

jr_006_546e:
    xor l
    jr nz, jr_006_5478

    rst $18
    ret nz

    cp a
    add e
    ld a, h
    add b
    ld [bc], a

jr_006_5478:
    ld c, l
    cp $00
    db $fc
    ei
    jr jr_006_5466

    inc d
    ld h, b
    sbc a
    add c
    ld h, c
    add h
    ld de, $058e
    rst $38
    and e
    ld [hl], $04
    ret


    di
    inc bc
    rst $08
    rrca
    nop
    add hl, bc
    ld hl, sp+$01
    ld a, [c]
    rlca
    jp z, Jump_000_0c0f

    cp d
    ccf
    ld a, d
    ld a, a
    cp c
    db $fc
    ld bc, $f200
    inc bc
    ld [$9a0f], a
    rra
    rrca
    dec bc
    rlca
    ld [hl], b
    ld bc, $f0d3
    di
    rst $00
    ret


    ld e, b
    ld sp, hl
    ld a, $c7
    ld bc, $538b
    inc c
    dec e
    ld hl, sp-$04
    dec de
    ret nz

    ret z

    dec d
    ccf
    ld b, $1f
    ld b, b
    rst $20
    nop
    rra
    sub e
    add [hl]
    ld l, c
    ld e, l
    push de
    and a
    cp [hl]
    add l
    ld [bc], a
    adc d
    adc a
    and e
    xor c
    rst $18
    ld [bc], a
    rrca
    ld b, $7e
    ld e, a
    and [hl]
    ld d, e
    add [hl]
    rst $08
    ld b, $f9
    or l
    call nz, $c1cb
    ld a, $9e
    rrca
    ld [bc], a
    dec e
    inc a
    inc c
    di
    ld [bc], a
    rra
    ldh [$a0], a
    ld h, e
    jr nc, @-$2f

    ret nz

    ld a, d
    ccf
    inc b
    ld h, e
    db $10
    ld [hl], e
    ld bc, $d5c6
    pop af
    ld bc, $09dd
    rra
    ccf
    db $fc
    db $e3
    inc l
    db $fd
    rra
    sub e
    sub l
    ret nc

    ld [bc], a
    ld hl, $3dfd
    ld [c], a
    rlca
    ld [bc], a
    rst $28
    jr nz, jr_006_552f

    ldh a, [rSB]
    jp z, $0f14

    ld a, [hl-]
    ccf
    rst $10
    dec de
    nop
    rst $00
    rlca
    ld b, l
    ld hl, sp+$04
    adc a
    or l
    and $5f
    pop af
    or b
    nop
    adc a
    nop
    ld l, l

jr_006_552f:
    ld a, a
    ld h, l
    ld e, e
    ld b, [hl]
    dec bc
    rrca
    ld b, h
    sub $67
    or e
    sbc [hl]
    db $d3
    ld [bc], a
    dec bc
    xor a
    ccf
    call nc, Call_006_7f01
    ldh a, [rIF]
    sbc l
    ei
    add b
    adc [hl]
    cp a
    cp l
    ld c, c
    rrca
    daa
    rrca
    pop af
    rlca
    xor e
    adc a
    nop
    db $10
    push hl
    cp $c1
    db $e3
    sub e
    cp a
    ld b, d
    nop
    add hl, hl
    ld d, h
    cp $eb
    inc b
    ccf
    call nz, Call_000_1c1f
    db $e3
    ld l, c
    ld de, $0f57
    adc $04
    ccf

Jump_006_556d:
    ld a, a
    cp l
    dec bc
    add h
    ld bc, $3ec1
    jr nc, jr_006_55a5

    ld h, a
    ld [hl], b
    adc a
    add b
    and a
    xor l
    ld [de], a
    db $eb
    pop hl
    sbc $47
    ld [bc], a
    cpl
    or e
    ld d, c
    add hl, sp
    dec d
    ld e, $1b
    ld h, [hl]
    rrca
    ld [hl], c
    add [hl]
    daa
    dec b
    add l
    inc bc
    add e
    dec hl
    ldh a, [rP1]
    ld a, [bc]
    xor $01
    add hl, hl
    db $fc
    ld de, $8300
    inc bc
    ld [hl-], a
    rrca
    ld l, b
    cpl
    add c
    ld e, c
    ld e, a

jr_006_55a5:
    ld c, a
    rrca
    inc d
    inc b
    jp nc, Jump_006_7e03

    add hl, sp
    ld [bc], a
    ld l, a
    ld a, a
    ldh [rTMA], a
    ld a, l
    sbc a
    dec b
    dec l
    or e
    nop
    ld [hl], a
    inc bc
    xor [hl]
    rst $28
    add sp, $74
    rla
    adc b
    sbc h
    inc b
    db $eb
    inc d
    ld a, a
    dec sp
    inc b
    ld e, a
    rst $18
    db $fc
    rlca
    ld l, e
    ld e, a
    nop
    call c, $0108
    ld a, a
    ld a, [hl]
    ld d, l
    ld bc, $0328
    xor d
    ld d, l
    ld h, [hl]
    sbc [hl]
    ld [c], a
    ld e, $c3
    dec b
    inc bc
    rra
    ld h, d
    rra
    ret nc

    inc b
    inc bc
    xor [hl]
    or $02
    cpl
    nop
    ret nz

    inc de
    and d
    rst $18
    ld b, [hl]
    rst $38
    ld [bc], a
    ld a, [hl-]
    rst $38
    ld b, $80
    ld hl, sp-$10
    rrca
    and b
    ld e, a

Jump_006_55fb:
    pop bc
    inc sp
    db $e3
    rra
    ld h, l
    sbc a
    adc [hl]
    sub e
    ld h, b
    sbc a
    db $eb
    xor e
    add b
    ld [hl], a
    ld c, a
    ld c, d
    cp l
    rst $38
    ld d, [hl]
    ld a, [bc]
    rra
    ld [c], a
    rra
    and $33
    ccf
    ccf
    ccf
    cp a
    ld h, c
    dec e
    ld bc, $1ce3
    ld h, l
    adc $5f
    or b
    ld [hl], c
    add a
    jr c, jr_006_5625

jr_006_5625:
    ld a, b
    ld c, a
    ccf
    ld b, b
    ccf
    xor a
    sub b
    xor b
    ld l, a
    sbc b
    ld bc, $fc02
    ld b, e
    and d
    ld c, d
    ld [de], a
    inc de
    db $10
    ld bc, $3848
    ld bc, $f805
    db $fc
    add e
    add e
    ld a, h
    ld l, c
    ret nz

    nop
    rra
    rra
    ccf
    pop bc
    pop bc
    ld a, [hl]
    cp $7a
    inc bc
    ld bc, $5c0f
    ld a, e
    ld d, e
    ld [bc], a
    ccf
    inc bc
    ld c, l
    ld b, c
    pop hl
    ld e, $1e
    ld [c], a
    cp h
    db $d3
    ld e, $f5
    dec c
    dec d
    dec b
    ld bc, $161c
    ld c, $12
    ld bc, $5387
    and b
    ld [bc], a
    ld h, e
    ld bc, $66af
    sbc a
    adc e
    ld b, a
    sub d
    ld e, $00
    add d
    add a
    ld b, $4b
    rst $38
    inc b
    add c
    rst $18
    add b
    ld a, a
    ld a, h
    inc bc
    add e
    add b
    inc d
    ret z

    and a
    rrca
    ld bc, $fe04
    ld a, $c0
    pop bc
    ld bc, $074f
    and l
    ld [bc], a
    cpl
    or b
    ld a, a
    ld h, a
    push af
    db $ed
    ld b, $63
    cp $e7
    inc e
    ld [bc], a
    ld b, d
    add a
    ccf
    ld e, $73
    inc b
    add l
    ldh a, [rP1]
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld [$0040], sp
    nop
    dec b
    db $10
    db $e4
    ld e, l
    cp e
    ld bc, HeaderLogo
    rrca
    ldh a, [rIE]
    ld b, $3d
    ld bc, $070f
    ld bc, $03e0
    dec de
    cp $f1
    db $fc
    ld a, [c]
    ld h, d
    ld sp, hl
    ld de, $fc08
    db $e3
    ld [bc], a
    pop hl
    ld d, a
    adc a
    jr jr_006_5716

    and e
    ld a, h
    inc c
    di
    inc de
    db $ec
    add b
    ret nz

    cpl
    rra
    adc e
    dec de
    rlca
    ld hl, sp-$7a
    ld a, b
    add a
    add a
    ld a, b
    ld a, a
    add b
    rst $38
    nop
    ld bc, $f403
    ld hl, sp+$23
    nop
    ldh [$1f], a
    ld e, $e1
    pop hl
    ld e, $fe
    ld bc, $0fd8
    dec de
    db $10
    ccf
    cp b
    ld a, c
    ld b, b
    add a
    ld [$18f1], a
    db $fc
    push bc
    ld a, $32
    rst $08
    ret


    scf
    inc bc
    ld e, e
    ld a, a
    ld a, b
    adc a
    ccf
    ld c, a

jr_006_5716:
    sbc a
    db $e4
    di
    add sp, -$19
    ret nz

    rst $28
    jp nc, $94cf

    rst $08
    and l
    sbc a
    xor c
    sbc a
    ld a, [hl+]
    sbc a
    cpl
    ret nc

    rra
    ldh [$3e], a
    ret nz

    dec a
    ret nz

    ld a, d
    add c
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
    push bc
    ld bc, $daf4
    dec bc
    ld a, [$7d05]
    ld [bc], a
    cp [hl]
    ld bc, $c01f
    ld l, a
    ret nz

    ld h, a
    ret nc

    ld l, e
    ret nc

    and a
    rst $08
    ld d, a
    rst $20
    inc hl
    rst $30
    sbc e
    ld [hl], e
    ld d, c
    cp e
    ld c, l
    cp c
    xor c
    ld e, l
    and h
    ld e, l
    ld l, d
    rra
    ld c, d
    ccf
    ld d, [hl]
    ld h, b
    ld bc, $3f55
    ld d, e
    dec a
    inc e
    add $1d

Call_006_577b:
    and [hl]
    ld bc, $861c
    dec a
    ld b, [hl]
    ld bc, $c60f
    cp l
    add [hl]
    db $fd
    ld [bc], a
    ld c, c
    ld e, c
    ld bc, $02e9
    ld e, c
    nop
    ld bc, $d863
    ld h, l
    ret c

    ld h, c
    call c, $01c9
    ld h, d
    add b
    ld bc, $2cd6
    call nc, $d22e
    ld l, $2c
    ld [$0116], a
    inc e
    ld d, d
    dec a
    ld d, e
    ld bc, $0582
    ld d, h
    add c
    ld h, e
    rst $38
    rst $38
    ret


    db $ed
    adc h
    inc bc
    cp e
    call nz, Call_006_465b
    and c
    ld h, e
    ld h, d
    call c, $06ef
    ld bc, $4802
    add hl, sp
    ld bc, $3c56
    ccf
    ld d, [hl]
    dec b
    sbc a
    ld b, [hl]
    db $f4
    inc bc
    ld bc, $9f30
    add c
    adc l
    ld a, d
    adc [hl]
    ld b, c
    ld a, b
    ld bc, $cd8f
    ld bc, $700b
    adc d
    inc b
    ld d, [hl]
    jr nc, @-$44

    ld a, b
    sub d
    ld a, b
    jp z, Jump_006_7630

    nop
    pop bc
    dec bc
    or d
    ld c, h
    nop
    nop
    add a
    ld l, l
    ld d, l
    rst $38
    nop
    jr nz, jr_006_57f6

    inc b

jr_006_57f6:
    xor d
    ld l, e
    ld d, l
    rrca
    add [hl]
    cp $fe
    ld d, [hl]
    cp $02
    cp $06
    cp $e2
    ld e, $e6
    ld e, $03
    ld sp, $aa55
    ld d, $01
    cp $e3
    ld [bc], a
    inc bc
    ld h, [hl]
    sbc [hl]
    ld a, e
    inc de
    inc b
    inc bc
    jp nc, $1b04

    nop
    rra
    db $e3

jr_006_581d:
    rra
    ld h, l
    sbc a
    ldh [$1f], a
    ld h, b
    ld h, e
    sbc a
    ld c, l
    ld a, a
    add b
    ld h, d
    ld c, a
    inc de
    add b
    rst $38
    pop hl
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    adc h
    ld a, a
    add $3f
    rrca
    ld c, a
    inc b
    ld e, h
    ld bc, $6372
    rra
    or c
    adc a
    ret c

    rst $00
    db $ec
    db $e3
    or $f1
    di
    ld hl, sp-$0f
    db $fc
    ldh a, [$fe]
    rrca
    ld sp, $8fe1
    jr jr_006_581d

    inc c
    db $e3
    ld b, $f1
    dec bc
    ld hl, sp+$0d
    db $fc
    ld c, $cf
    ld d, c
    ld a, [bc]
    ld bc, $153f
    ld [$d52a], a
    rla
    add sp, $1b
    jp hl


    ld d, e
    inc bc
    cp c
    rst $00
    inc bc
    pop bc
    nop
    nop
    add $06
    adc a
    rrca
    ld hl, sp+$06
    adc a
    add a
    daa

jr_006_587d:
    and b
    inc b
    ld c, a
    rrca
    inc bc
    ld c, $ff
    rlca
    rst $38
    inc c
    inc sp
    rrca
    ld sp, $fc7d
    sbc h
    push bc
    rrca
    ld a, b
    ld b, $01
    rrca
    add $f8
    nop
    adc h
    pop af
    jr jr_006_587d

    jr nc, @-$37

    ld h, b
    adc a
    jp $b06e


    ccf
    ld [hl], b
    dec bc
    ld sp, $8df8
    pop af
    add [hl]
    dec de
    db $e3
    scf
    rst $00
    ld l, a
    adc a
    rst $08
    rra
    adc a
    ccf
    rrca
    ld a, a
    ld e, a
    ld b, $3f
    ld a, a
    ld d, l
    ccf
    ld h, b
    rst $28
    ld bc, $631f
    inc e
    ld h, l
    ld e, $62
    rra
    ld sp, hl
    ld [$674f], sp
    jp Jump_006_6613


    rra
    sbc $02
    inc bc
    ld [$c0ff], sp
    inc de
    and d
    rst $18
    ld b, [hl]
    rst $38
    ld [bc], a
    ldh [$71], a
    cp $03
    ldh a, [rTAC]
    rrca
    and b
    ld e, a
    ld d, b
    xor a
    or b

Jump_006_58e5:
    ld b, $1f
    cpl
    ld [bc], a
    db $fd
    dec b
    ld a, e
    ld a, [$0306]
    rst $08
    dec b
    rst $28
    rst $38
    ld [$4f7b], sp
    ld b, $6f
    push af
    ld [$961d], sp
    daa
    reti


    xor a
    ld bc, $863f

Call_006_5902:
Jump_006_5902:
    rra
    cp a
    ld h, b
    sbc a
    ld bc, $e36e
    cp a
    ret c

    rst $08
    rrca
    cp $ff
    ld d, b
    ld d, [hl]
    adc a
    ld [c], a
    rra
    ld [hl], d
    and $3f
    ld d, e

jr_006_5918:
    cp c
    ld [hl], b
    ldh a, [$fd]
    pop af
    ei
    di
    rst $30
    and $ee
    call Call_000_00dd
    add b
    ret nz

    rst $28
    ld a, a
    rst $38
    ret nz

    ret nz

    cp a
    ld [hl], e
    cp a
    ld b, $80
    nop
    sbc e
    cp e
    scf
    ld [hl], a
    ld l, a
    inc bc
    ld l, a
    ld l, b
    ld l, h
    ld l, b
    ld l, b
    ld l, c
    sbc d
    nop
    dec b
    jr jr_006_5956

    nop
    ld hl, $b861
    ld h, b
    ld hl, $3321
    inc sp
    di
    di
    inc sp
    ld [hl], e
    nop
    ld bc, $fefc
    ld d, c
    inc bc

jr_006_5956:
    inc bc
    db $fd
    db $fd
    rst $20
    ld b, $25
    nop
    jr nz, jr_006_5918

    rrca
    cp a
    adc a
    rst $18
    rst $08
    inc b
    rst $28
    ld h, a
    ld [hl], a
    or e
    cp e
    add b
    cpl
    inc b
    adc h
    inc b
    inc b
    inc h
    and b
    nop
    reti


    db $dd
    db $ec
    nop
    xor $f6
    or $16
    ld [hl], $16
    ld d, $96
    and [hl]
    nop
    ld e, c
    ret nc

    ld e, l
    ld d, a
    add [hl]
    rlca
    ld l, c
    jp c, Jump_006_556d

    ld h, h
    nop
    ld [hl], e
    sbc e
    add hl, sp
    sub c
    ld l, l
    sub l
    sbc c
    sbc l
    cp c
    and c
    and l
    ret z

    xor e
    ld l, l
    nop
    sbc c
    sbc l
    or [hl]
    and c
    sbc [hl]
    xor c
    jp nc, Jump_006_6dad

    ld d, l
    ld e, l
    ld h, c
    ld h, $2f
    ld d, a
    jp c, $5f5b

    ld c, l
    nop
    ld l, c
    and c
    ld l, l
    inc de
    or [hl]
    sbc c
    sbc l
    and c
    db $db
    sbc [hl]
    xor c
    ld l, l
    xor l
    sub c
    sub l
    or [hl]
    sbc c
    sbc l
    and c
    rst $20
    and l
    rlca
    xor e
    add b
    ret nz

    ccf
    inc a
    jp hl


    ld bc, $7e00
    adc l
    rst $18
    ld b, a
    nop
    ldh a, [rSCX]
    ld b, [hl]
    nop
    adc [hl]
    jp z, Jump_000_387c

    ld bc, $0178
    ld [hl], c
    sub e
    ld bc, $4eb0
    ld a, a
    rst $30
    rst $30
    inc bc
    rst $20
    rst $20
    rst $00
    rst $00
    add b
    add b
    ld e, $2b
    add c
    add b
    ld bc, $742f
    rrca
    ld h, b
    ld d, [hl]
    dec bc
    ldh a, [rSB]
    inc bc
    db $fc
    db $ed
    add hl, bc
    and $01
    nop
    ld a, [hl]
    ld [hl], h
    ld e, h
    rst $38
    inc sp
    ld hl, sp-$01
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    ld [hl], a
    rrca
    db $e3
    rlca
    jp Jump_000_3e85


    adc [hl]
    ld bc, $241e
    ld bc, $018e
    or d
    ld d, a
    sbc h
    ld h, e
    ld l, e
    add hl, bc
    rst $00
    call nz, $e0e7
    inc bc
    cpl
    rst $38
    adc a
    rst $38
    rra
    adc a
    ld [c], a
    ld a, [hl]
    ld [bc], a
    ld l, [hl]
    sbc h
    ld l, e
    jp z, $0f93

    adc d
    ldh [$d0], a
    ld [$1e7b], sp
    db $e3
    ld b, e
    db $e3
    ld bc, $4200
    rst $38
    ld [c], a
    ld l, d
    ld d, a
    ld [hl], d
    ld h, e
    ld l, e
    daa
    ld [hl+], a
    adc e
    sbc c
    rrca
    scf
    cpl
    sub c
    and d
    ld [bc], a
    sbc h
    cp b
    dec bc
    ld d, c
    ld e, e
    ld e, e
    inc bc
    ld c, d
    ld c, d
    ld d, d
    ld d, d
    ld e, d
    ld e, d
    ld h, e
    rlca
    dec bc
    ld a, h
    ld a, h
    ld a, [bc]
    ld hl, $3d3d
    db $dd
    dec de
    nop
    inc a
    inc a
    dec bc
    ld h, $15
    ld a, [hl]
    nop
    add b
    ld a, a
    ccf
    cp a
    add b
    jr z, @-$3e

    jp c, $e600

    ld c, c
    and $f4
    inc bc
    ld d, c
    call nz, Call_006_40c4
    dec hl
    inc bc
    ld b, l
    ld b, l
    add $0b
    ld [hl], $36
    ld d, c
    inc bc
    ld b, [hl]
    ld b, [hl]
    xor $ee
    ld l, [hl]
    ld l, [hl]
    ld l, b
    inc bc
    nop
    inc bc
    ld h, e
    jp nc, $34d2

    inc [hl]
    sub $96
    nop
    ld a, [hl]
    cpl
    inc bc
    dec de
    ld [bc], a
    cp $fc
    db $fd
    ld bc, $f003
    jr nz, jr_006_5b18

    add b
    ld l, c
    dec c
    nop
    ld l, l
    nop
    ld c, e
    db $dd
    call nz, Call_000_0fdf
    ld b, b
    ld c, e
    ld bc, $006e
    dec de
    and [hl]
    nop
    ld l, d
    dec hl
    sbc b
    dec l
    add c
    ld c, d
    ld c, e
    pop bc
    dec d
    ld [hl], b
    ld [hl], d
    ld [hl], d
    ld a, d
    dec de
    di
    ld b, $2d
    adc d
    sbc d
    xor d
    xor d
    dec d
    ld [$de4e], sp
    ld c, $4e
    jp z, Jump_000_0fd3

    xor a
    ld bc, $3701
    ccf
    ld h, b
    dec [hl]
    ld h, a
    dec h
    add h
    dec b
    ld l, d
    dec hl
    rrca
    jr nc, jr_006_5b51

    ld bc, $46fc
    ld h, h
    ld sp, $5416
    dec b
    ld h, [hl]
    ld l, h
    adc h
    inc de
    ld h, h
    inc h
    inc bc
    ld l, c
    ld a, [hl-]
    add hl, hl
    ld a, a
    ld [hl+], a
    inc l
    cp b
    dec sp
    inc de
    and [hl]
    and h
    adc $03
    ld d, [hl]
    ld [hl], c
    dec de
    cp $00
    nop
    dec l
    ld a, a
    rst $38
    cp a
    ld a, a
    rrca
    rst $18
    ccf

jr_006_5b18:
    ldh [$1f], a
    ld [HeaderDestinationCode], sp
    ld l, l
    ld c, b
    sbc [hl]
    rst $18
    nop
    add hl, bc
    ld bc, $1fb2
    ld b, a
    rrc [hl]
    add b
    add hl, bc
    ld bc, $0ef6
    ld a, [$fc06]
    ld [bc], a
    adc $1f
    add b
    sub $b8
    ld d, e
    ld bc, $2c00
    ld a, d
    ld [bc], a
    ld bc, $0254
    ei
    or b
    ld b, $00
    dec a
    sub a
    ld [bc], a
    inc bc
    ld bc, $63d0
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, b
    nop

jr_006_5b51:
    ld [hl], b
    nop
    ld h, b
    nop
    ld c, b
    ld b, b
    rra
    ld bc, $0318
    nop
    rlca
    cp c
    nop
    rra
    add hl, sp
    nop
    ccf
    dec c
    add d
    add hl, bc
    ld c, $01
    dec c
    inc bc
    ld b, b
    ld bc, $636d
    db $eb
    rst $20
    inc bc
    pop af
    ld bc, $f1e9
    di
    ei
    ld h, a
    ld bc, $e702
    ld b, c
    and [hl]
    rst $08
    rst $28
    add l
    ld de, $c7db
    rst $10
    add $cf
    sub $cf
    xor d
    sbc h
    and c
    sbc c
    ld b, a
    daa
    rra
    rra
    rst $28
    rst $08
    sbc a
    rst $18
    ccf
    ld [hl], e
    db $db
    dec c
    nop
    ld de, $15b6
    add hl, de
    dec e
    db $db
    ld hl, $6b25
    add hl, hl
    dec l
    inc hl
    rla
    ld l, l
    db $ed
    add hl, hl
    dec l
    adc h
    ld de, $e3ef
    ld bc, $a0ed
    ld bc, $e1ee
    rst $00
    ld l, [hl]
    ret nz

    ld d, c
    add [hl]
    db $fc
    rst $30
    ld e, l
    add e
    ld h, e
    db $eb
    dec a
    dec b
    inc bc
    rlca
    cp h
    ld l, c
    dec c
    rst $30
    ld bc, $8000
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld [$0070], sp
    nop
    inc b
    ldh a, [rNR43]
    rla
    add l
    jr nz, jr_006_5be2

    ld bc, $ff1e
    inc de
    nop
    dec bc

jr_006_5be2:
    db $fc
    db $fc
    ldh a, [$f3]
    nop
    dec bc
    ldh a, [$f0]
    nop
    rrca
    rrca
    rst $38
    ld a, b
    ld a, a
    ld bc, $031b
    inc bc
    ld l, a
    nop
    ld e, $05
    ld [bc], a
    dec l
    ccf
    ccf
    rrca
    rst $08
    add e
    ld h, l
    cpl
    cp $c7
    cp $fc
    db $fd
    ld sp, hl
    ei
    di
    rst $30
    rst $20
    rst $28
    jp $8fcf


    cp a
    ccf
    ld a, a
    ld a, a
    rst $08
    ld de, $f063
    rlca
    ld l, l
    ld b, l
    nop
    inc l
    ld [hl], b
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $28
    rst $20
    rst $30
    di
    ei
    ld sp, hl
    db $fd

jr_006_5c29:
    or $04
    add hl, de
    ld d, l
    call z, $cf00
    add hl, de
    rst $18
    ld l, [hl]
    sbc a
    rra
    ld [hl], e
    ld d, e
    ld bc, $8f8d
    db $fc
    ld l, c
    or a
    inc d
    add hl, de
    and c
    rlca
    ld b, c
    ld b, e
    sbc c
    ld bc, $291f
    rst $18
    dec c
    inc sp
    adc e
    db $e3
    ld [bc], a
    ld bc, $ff7f
    reti


    inc b
    ld bc, $9f41
    jp nz, $8f23

    rst $28
    jp nz, $0f01

    rst $28
    db $10
    inc hl
    inc sp
    add l
    nop
    jr z, @-$29

    ld bc, $e61f
    ld bc, $13fd
    rlca
    ld a, a
    rlca
    ld b, e
    ret z

    ld [hl], c
    jr c, jr_006_5c29

    ld hl, sp+$01
    rrca
    and $33
    ld h, a
    sub d
    ld bc, $7300
    add e
    cp a
    add c
    cp a
    ret nz

    ld h, b
    rst $18
    ld bc, $efe0
    ldh a, [$f7]
    inc d
    ld hl, sp-$05
    db $fc
    cp a
    add [hl]
    ld h, a
    dec a
    inc e
    inc bc
    rst $38
    nop
    ld bc, $06f3
    nop
    rrca
    rst $30
    ld [$8771], sp
    inc bc
    add hl, bc
    ldh a, [rIE]
    ret nz

    dec [hl]
    cpl
    dec b
    jp $ffe0


    add b
    cp $00
    cp $01
    db $fd
    inc bc
    ei
    rlca
    rst $30
    ld b, e
    ld l, e
    db $db
    rst $30
    ld b, $13
    cp b
    ld b, $41
    ld h, e
    ld a, a
    ld h, c
    add b
    add c
    rst $08
    ldh a, [$f3]
    inc l
    ld e, b
    nop
    di
    inc b
    ld bc, $b70f
    push bc
    sbc l
    inc b
    rrca
    db $fc
    xor h
    push bc
    add hl, bc
    inc c
    di
    rrca
    rst $08
    ccf
    and [hl]
    rst $38
    add a
    push bc
    db $ec
    ld [$63ae], sp
    ld hl, sp+$46
    ld sp, hl
    rrc h
    rst $08
    rst $18
    adc a
    cp a
    dec c
    ret nz

    rra
    ret nz

    rra
    ccf
    ld b, $81
    rst $30
    add a
    rst $00
    pop af
    ld sp, hl
    db $fc
    ld [$8808], a
    adc $c7
    cp a
    rst $00
    xor c
    rra
    ld a, a
    nop
    ld bc, $0c3f
    rra
    ld b, b
    ld c, h
    nop
    add hl, de
    inc c
    nop
    ld e, $17
    pop af
    ld [hl], b
    rst $38
    pop bc
    di
    ld bc, $01c3
    rlca
    add e
    adc a
    ld b, $1f
    ld c, $a0
    ld c, c
    rst $00
    rst $38
    add e
    inc bc
    rst $38
    inc bc
    rst $08
    ld [bc], a
    add a
    nop
    dec l
    ld bc, $b08f

jr_006_5d2c:
    adc a
    adc a
    jr jr_006_5d2c

jr_006_5d30:
    ld a, $3d
    rst $38
    ld a, a
    rlca
    ld d, c
    and l
    ld c, a
    or c
    sbc c
    db $db
    ld hl, sp-$06
    add c
    ld bc, $f4f0
    ldh [$ed], a
    inc c
    inc l
    sbc e
    ccf
    add $db
    nop
    sub b
    ld b, e
    dec e
    nop
    rst $20
    inc e
    add e
    sub e
    ldh a, [$fe]
    ret nz

    ld hl, sp+$37
    ld h, c
    rrca
    ld d, $0b
    dec bc
    ld [$9f9f], sp
    db $10
    ccf
    jr nc, jr_006_5de2

    ld h, c
    ei
    pop bc
    rst $30
    add e
    rst $28
    rlca
    rst $18
    rrca
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    ei
    ei
    db $fd
    db $fd
    and d
    inc b
    or b
    dec e
    inc hl
    db $fd
    jr jr_006_5d30

    ld bc, $d9c0
    inc de
    add b
    or b
    ld e, $c8
    nop
    ld hl, sp-$40
    ccf
    pop af
    nop
    ld hl, sp+$00
    ld a, $03
    nop
    rst $18
    add b
    rst $28
    add b
    rst $30
    nop
    ld e, l
    add c
    di
    nop
    db $fc
    nop
    inc bc
    rlca
    sbc h
    inc c
    dec sp
    rrca
    rst $38
    pop hl
    ld a, e
    ld a, a
    db $fc

jr_006_5da9:
    ld [bc], a
    or c
    pop hl
    jr jr_006_5da9

    jp $07e7


    cp a
    rst $38
    inc bc
    rst $08
    rst $38
    ret nz

    rst $28
    ret nz

    or $12
    add hl, sp
    jp Jump_000_00ef


    add hl, de
    add a
    rst $38
    ld bc, $008f
    ld a, a
    ld a, [hl]
    and [hl]
    dec bc
    db $dd
    ld [hl], h
    rst $18
    ld b, b
    db $db
    nop
    ld h, a
    rst $30
    ld [$f7a7], sp
    rst $20
    rst $30
    ld b, d
    ld [hl], e
    ld bc, $2b21
    db $fc
    push hl
    ld bc, $f893
    ld b, [hl]
    pop de

jr_006_5de2:
    ld sp, $cdcc
    pop bc
    cp c
    ei
    ret nz

    ld [hl], l
    ld bc, $01e3
    di
    inc bc
    call z, $e701
    pop hl
    db $fc
    add h
    xor e
    ld h, $ff
    ld bc, $000d
    adc a
    inc bc
    ld a, a
    adc a
    or c
    ld bc, $0105
    rst $38
    rrca
    ld bc, $ca02
    ld sp, $8bfe
    sbc a
    ld de, $e000
    add e
    push hl
    cp $01
    add c
    rst $20
    add h
    ld [hl], e
    rst $00
    rst $30
    ld b, h
    or e
    or b
    rst $20
    nop
    ccf
    ret nz

    ld l, c
    ret nz

    ld c, l
    ld c, h
    dec de
    ld h, b
    ld e, c
    rlca
    rra
    rlca
    ld a, a
    ldh [$29], a
    ld sp, hl
    nop
    ld a, [c]
    ld [hl], e
    nop
    ld c, l
    ld [hl], e
    inc bc
    ld h, e
    add l
    ld l, a
    ld a, h
    rst $38
    or c
    adc e
    ld bc, $913f
    ret


    nop
    add b
    ld l, l
    add b
    nop
    ret nz

    add b
    ldh a, [$e0]
    jp hl


    cp a
    dec sp
    ldh [$f8], a
    ld c, $23
    jp Jump_000_0700


    ld l, [hl]
    inc de
    rla
    xor [hl]
    rla
    nop
    ld [$e707], sp
    rlca
    rst $30
    ld b, h
    ld bc, $1bd4
    ld c, d
    adc l
    ld d, b
    dec c
    ld sp, hl
    db $dd
    ld [hl], e
    ccf
    xor e
    db $e3
    ld bc, $917f
    ld a, e
    cp [hl]
    scf
    inc bc
    inc [hl]
    sub c
    ld d, [hl]
    sub c
    rlca
    inc bc
    rst $28
    di
    rrca
    adc a
    ld a, h
    and c
    ld [$8f46], sp
    xor c
    ld [hl+], a
    ld hl, sp-$05
    cp b
    ld e, e
    ld bc, $f7f1
    call z, $1f55
    xor a
    rst $20
    ld bc, $f8c0
    ret nz

    db $e3
    add c
    rst $00
    ld bc, $01c3
    nop
    rst $00
    and h
    ld d, e
    rrca
    rlca
    xor d
    add c
    add hl, sp
    ret


    db $fd
    add c
    db $fd
    nop
    adc $90
    dec hl
    ldh a, [rP1]
    inc b
    rst $30
    db $e3
    rst $28
    rst $00
    rst $18
    ld d, h
    dec sp
    nop
    sub e
    ld bc, $3000
    nop
    ld a, h
    nop
    rst $18
    jp Jump_000_0fab


    nop
    add hl, bc
    nop
    adc [hl]
    nop
    ld h, $00
    ld h, [hl]
    nop
    inc c
    or $80
    or $c0
    ld bc, $c2e6
    ld bc, $dfc6
    jp nz, $bbd3

    ld d, d
    ccf
    inc bc
    ret nz

    pop bc
    rra
    nop
    cp [hl]
    nop
    ldh [$08], a
    nop
    ldh a, [$30]
    rst $38
    xor b
    ld [hl], e
    add c
    push bc
    ld bc, $8d01
    inc bc
    dec bc
    rlca
    rla
    rrca
    ld l, a
    ld [bc], a
    pop hl
    jp Jump_006_55fb


    sub l
    ld a, [$ca02]
    ld h, l
    or d
    sub l

Call_006_5f00:
    ld b, b
    ld bc, $e300
    ei
    ld [hl-], a
    pop af
    db $fd
    adc e
    cp c
    add d
    ld bc, $fe98
    call c, $2590
    cp l
    ld de, $cfc7
    rrca
    daa
    ld l, [hl]
    rst $38
    call c, Call_000_131c
    call z, $5101
    ret nz

    ld bc, $f5c1
    inc bc
    rst $28
    sub l
    ld h, h
    ld h, c
    rlca
    daa
    ldh a, [rIE]
    adc c
    rla
    rst $38
    add c
    sub $07
    ld d, l
    ld l, a
    db $ed
    rra
    rst $30
    ld [de], a
    ld e, d
    ld a, [hl-]
    rst $38
    ei
    ld [hl], e
    ld e, c
    add hl, sp
    db $e3
    and c
    adc a
    sbc $c4
    ld bc, $13fc
    ld c, a
    cp $df
    ld e, c
    ld bc, $ffbe
    ld [$7dff], sp
    ld [$a15f], sp
    ld [$5e6d], sp
    ld b, c
    rst $08
    adc b
    ld bc, $fbf3
    add hl, sp
    ld bc, $01e3
    ld h, e
    dec h
    ccf
    pop de
    add hl, bc
    add hl, hl
    ld c, $7f
    ldh [$03], a
    rst $38
    jp $c7fb


    rst $30
    add a
    ld [c], a
    ld bc, $730f
    adc a
    adc l
    sbc c
    rst $28
    adc a
    pop bc
    rst $10
    push bc
    sub h
    rst $20
    adc a
    ld c, e
    ei
    ld l, b
    or c
    ld a, h
    ld bc, $9d06
    ld l, a
    add b
    ldh a, [$2c]
    ld l, a
    ld [bc], a
    inc bc
    ld h, b
    ld [hl], h
    ld sp, hl
    ld [bc], a
    rst $38
    rst $00
    inc bc
    ccf
    dec a
    rst $38
    ld e, b
    ld e, a
    db $fd
    rst $38
    ld a, [$b808]
    ld l, l
    ccf
    cp c
    add b
    db $eb
    cp b
    ld sp, $9df9
    pop hl
    ld c, $fd
    pop bc
    db $fd
    ld bc, $0162
    db $eb
    ld [$53de], sp
    ld e, e
    ld [de], a
    ld e, l
    ldh a, [rDIV]
    pop af
    ret nz

    rst $08
    add b
    cp a
    sbc l
    sbc c
    sub d
    ld c, c
    db $fd
    cp b
    ld a, e
    ret nz

    ei
    add e
    jp $cf99


    rra
    rst $38
    db $f4
    ld a, [bc]
    ld b, [hl]
    rra
    cp l
    add b
    inc bc
    ld [hl], a
    db $ed
    ld [hl], b
    ld b, [hl]
    sub l
    dec [hl]
    ld b, l
    ret nz

    or $8d
    ld e, c
    adc l
    ld a, [hl-]
    rst $08
    rrca
    cp b
    reti


    dec [hl]
    inc e
    cp [hl]
    dec e
    inc a
    ld a, [hl]
    ld a, h
    ld l, $21
    ld hl, sp+$3b
    ld bc, $01f0
    dec de
    nop
    ld a, e
    nop
    ld [hl], a
    add b
    xor a
    add b
    ld l, c
    ret nz

    db $dd
    pop bc
    rst $18
    pop bc
    db $db
    rst $18
    ld bc, $1402
    add hl, bc
    ld d, c
    dec hl
    ld hl, sp-$02
    ld [hl], l
    db $d3
    rst $00
    push de
    ldh a, [$c0]
    pop hl
    ld d, h
    rst $28
    rrca
    nop
    and c
    or a
    nop
    ret nz

    sbc l
    add hl, bc
    inc bc
    ld e, [hl]
    rst $00
    rlca
    push bc
    ei

jr_006_6023:
    ld bc, $03f7
    ld a, l
    ld l, c
    ccf
    jp hl


    add hl, bc
    adc a
    ld h, a
    ld c, a
    pop hl
    add hl, de
    db $dd
    jp $fbb3


    inc l
    ld c, a
    rra
    rlca
    rst $18
    pop hl
    db $eb
    pop af
    di
    db $fc
    inc b
    ld b, d
    rst $00
    rst $30
    ld h, a
    rst $08
    dec d
    rra
    adc d
    ld [bc], a
    rrca
    add b
    sbc a
    ld [$e78d], a
    ld d, e
    ld a, l
    jp c, $b0df

    ldh [$fd], a
    rst $38
    ld a, l
    jr nc, @+$01

    ld a, c
    ld bc, $70fb
    ld sp, hl
    sub c
    rrca
    rst $28
    rlc c
    and $cf
    rst $38
    adc [hl]
    rst $18
    add [hl]
    rst $08
    jr nc, @+$7b

    jr nc, jr_006_60e4

    ld [hl+], a
    db $76
    inc h
    or a
    jr nz, jr_006_6023

    dec b
    xor a
    ld c, $af
    ld b, a
    ld e, a
    add h
    xor [hl]
    inc b
    xor [hl]
    inc h
    or l
    jr nc, jr_006_60f7

    ld h, b
    push af
    db $10
    ei
    cp e
    ei
    or [hl]
    cp e
    inc b
    ld d, [hl]
    add hl, bc
    and h
    add $3d
    rst $18
    db $76
    cp $bf
    ld [hl], $7e
    ld [$b393], sp
    ld c, a
    sub h
    or [hl]
    ld h, a
    inc d
    ld h, [hl]
    xor l
    add b
    ld l, $ea
    ld a, [$2e1a]
    ld l, e
    and l
    jr z, jr_006_60f4

    and l
    add hl, hl
    ld c, l
    db $f4
    ld a, [hl-]
    ld h, [hl]
    or l
    cp l
    rst $20
    ld d, a
    ld e, a
    db $f4
    ld d, [hl]
    and l
    inc d
    ld [hl], e
    add h
    ld b, $6e
    sub d
    daa
    ld h, e
    cp [hl]
    db $eb
    ld a, [hl]

jr_006_60c3:
    ld a, a
    db $fd
    ld l, h
    ld a, [hl]
    sub b
    ld c, c
    dec a
    add d
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    rlca
    ldh a, [rP1]
    nop
    ld b, $4e
    ld d, $90
    sbc c
    ld e, $02

Call_006_60de:
    ld bc, $ff1e
    rrca
    nop
    nop

jr_006_60e4:
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$07
    pop af
    di
    add b
    add hl, bc
    ld hl, sp-$08
    db $e3
    ld bc, $0fe1

jr_006_60f4:
    rlca
    ld c, a
    adc a

jr_006_60f7:
    di
    pop hl
    nop
    add hl, de
    rlca
    rlca
    pop af
    ld h, c
    ret c

    ld a, [de]
    ld e, $fe
    rst $38
    ld [c], a
    ld bc, $c03f
    cpl
    ld a, a
    ld a, a
    ld [hl], c
    ld [hl], c
    rrca
    dec [hl]
    ld sp, $34b0
    inc b
    ld h, e
    ld b, e
    ld b, c
    pop af
    ldh a, [$c1]
    ld [bc], a
    dec c
    add b
    add b
    ccf
    rra
    cp h
    ld c, e
    ld [bc], a
    rrca
    ld bc, $016d
    ld b, l
    dec [hl]
    ldh [rDIV], a
    cpl
    ccf
    ccf
    adc a
    rrca
    ldh a, [rSC]
    ld a, a
    adc [hl]
    adc [hl]
    xor h
    jr jr_006_60c3

    dec c
    inc l
    add hl, bc
    ldh [$e0], a
    ld sp, $868f
    add hl, sp
    ld a, a
    ccf
    cp b
    ld a, [hl+]
    ld bc, $80fc
    ld l, c
    rra
    rra
    rst $00
    ld bc, $f087
    ldh [$f2], a
    pop af
    rst $08
    add a
    db $ed
    ld [bc], a
    dec sp
    dec d
    add l
    dec a
    rra
    sbc a
    adc a
    jp $e3cf


    and $c6
    call z, $c0dc
    reti


    ret nz

    push bc
    call nz, Call_006_70fd
    ld a, [hl]
    dec l
    inc a
    jr jr_006_616f

jr_006_616f:
    ld b, e
    inc bc
    xor $0e
    sbc [hl]
    ld e, $3e
    ld a, $73
    ld a, [hl]
    nop
    rla
    ld d, l
    dec e
    ld c, $3d
    add hl, sp
    inc a
    ld [hl], e
    ld a, b
    or $60
    pop hl
    pop bc
    rst $20
    jp Jump_006_43f7


    ld [hl], a
    ld [hl+], a
    and [hl]

jr_006_618e:
    inc h
    xor b
    ld [hl+], a

jr_006_6191:
    dec hl
    ld [hl+], a
    and e
    dec hl
    xor l
    xor c
    ld bc, $a072
    and l
    dec d
    inc d
    rst $20
    db $e3
    ld b, b

jr_006_61a0:
    ld b, b
    rra
    rrca
    cp a
    rra
    nop
    add b
    ld a, a
    nop
    ld b, h
    jr c, @+$3b

    ld a, b
    call nz, $0041
    nop
    jr nc, jr_006_6212

    ccf
    rst $08
    rrca
    scf
    ld d, $07
    sbc e
    inc bc
    ld bc, $7c0f
    ld a, h
    di
    ldh a, [$ec]
    ldh [$8b], a
    ld h, a
    rst $20
    rst $00
    sbc [hl]
    ld [bc], a
    ld [bc], a
    ld hl, sp-$10
    db $fd
    ld hl, sp+$00
    ld bc, $00fe
    ld [hl+], a
    inc e
    sbc h
    ld e, $65
    inc h
    dec d
    ld b, h
    call nc, $c544
    call nc, $95b5
    ld bc, $052e
    and l
    jr jr_006_618e

    jr z, jr_006_61a0

    ld [hl], b
    sbc h
    inc a
    adc $1e
    ld l, a
    ld b, $87
    add e
    ld l, a
    rst $28
    jp nz, $ee30

    ld b, h
    adc a
    jp nz, $77c0

    ld a, [de]
    ld [hl], b
    ld a, c
    ld a, b
    ccf
    jr jr_006_6191

    or l
    rst $00
    ld h, a
    inc c
    ld h, e
    inc sp
    dec sp
    inc bc
    ld d, a
    and e
    ld [hl-], a
    inc hl
    cp a
    ret nz

    ccf
    inc c

jr_006_6212:
    ld e, l
    rst $30
    nop
    di
    adc $00
    ei
    jr c, jr_006_621b

jr_006_621b:
    ld sp, hl
    ld [bc], a
    sub $2e
    inc d

jr_006_6220:
    add $18
    call nz, $c4ce
    ret z

    call z, $c8e5
    ldh [$e1], a
    di
    pop hl
    rst $20
    rla
    ld a, b
    ld a, e
    dec e
    ld hl, sp-$01
    db $fc
    add e
    ld a, l
    db $fc
    jp nc, $f5e0

    or b
    add l
    jp z, $8302

    jr @+$05

    ld [hl], e
    ld [hl], e
    jr z, jr_006_6220

    jp z, Jump_006_76ba

    set 1, e
    ld [hl], b
    ld [hl], b
    rlca
    inc bc
    ld d, e
    ld b, b
    pop bc
    ret nz

    adc $ce
    rst $18
    rst $18
    ld e, e
    ld d, e
    db $d3
    db $d3
    ld c, $0e
    ldh [$c0], a
    rst $18
    ld e, $de
    rra
    rst $38
    ccf
    dec a
    ld c, $3f
    ld c, e
    rlca
    xor a
    rst $10
    ld b, l
    inc e
    ld l, e
    jr z, jr_006_62d4

    inc hl
    ld [hl], e
    inc hl
    inc de
    inc sp
    and a
    inc de
    rlca
    add a
    rst $08
    add a
    rst $20
    rst $08
    ld l, a
    rst $28
    call $cf00
    nop
    or e
    ld sp, $9f00
    add c
    ld [bc], a
    ld sp, hl
    ld sp, hl
    db $fc
    db $fd
    add hl, de
    add hl, sp
    cp $4c
    nop
    adc a

jr_006_6294:
    di
    dec de
    rst $20
    rst $28
    rst $20
    ld [bc], a
    ld e, h
    inc bc
    ld [hl], e
    ld h, l
    db $e3
    ldh [$60], a
    ld l, c
    ld h, b

jr_006_62a3:
    dec e
    ld b, b
    ld a, [c]
    pop hl
    rst $28
    rst $00
    rst $10
    jp $d1db


    pop af
    cp $00
    pop bc
    ld a, $bf
    ld e, $8f
    rlca
    db $eb
    rst $00
    jr nc, jr_006_62a3

    db $e3
    dec d
    ld a, l
    ldh a, [$5e]
    jr jr_006_62f9

    daa
    jr nz, jr_006_6311

    pop af
    ldh [$b8], a
    ld l, h
    rst $10
    db $e3
    sub a
    rst $00
    ld c, a
    add a
    cp [hl]
    rrca
    ld a, d
    inc e
    db $e4
    inc b

jr_006_62d4:
    rrca
    add hl, bc
    rst $30
    ld sp, $ebe3
    cpl
    adc e
    cp a
    add b
    ld a, e
    ld a, $7e
    ld a, h
    db $fd
    ld a, b
    rst $08
    ld [hl], $e7
    rst $30
    ld c, a
    pop hl
    ld e, h
    rst $20
    jr nz, jr_006_6294

    rst $00
    rlca
    ld b, $96
    ld b, $b8
    ld [bc], a
    sbc a
    sbc a
    ccf
    cp a

jr_006_62f9:
    ld sp, hl
    ld a, a
    and a
    nop
    ld h, d
    xor a
    nop
    ld a, $ed
    inc d
    ld a, a
    jr jr_006_6385

    inc h
    ld a, a
    ld [hl], $7f
    add hl, bc
    ld a, a
    dec l
    ld a, a
    ld [de], a
    rst $08
    rra

jr_006_6311:
    rst $18
    rrca
    ld l, a
    rlca
    or l
    inc bc
    rst $18
    rlca
    push hl
    inc bc
    ld hl, sp-$80
    rst $38
    ld b, b
    adc [hl]
    nop
    rst $08
    add b
    rst $28
    ret z

    add sp, -$2f
    ld d, a
    adc h
    ld b, e
    ld hl, sp+$70
    rst $08
    ld [hl], c
    inc bc
    nop
    di
    ld bc, $13f7
    rla
    and e
    scf
    rla
    and e
    rra
    ld c, $6e
    cp $fc
    di
    ld hl, sp-$05
    ldh a, [$f6]
    ldh [$ad], a
    ret nz

    ei
    ldh [$a7], a
    ret nz

    rra
    ld bc, $02ff
    inc a
    jr nz, jr_006_63cd

jr_006_6351:
    jr z, jr_006_6351

jr_006_6353:
    jr jr_006_6353

    inc h
    cp $6c
    cp $90

jr_006_635a:
    cp $b4
    cp $48
    ld hl, sp-$08
    bit 3, b
    ld a, [$fb8f]
    ld hl, sp-$3f
    pop bc
    db $dd
    ret c

    sbc $d2
    rst $08
    rst $00
    ccf
    dec bc
    sbc a
    inc c
    rst $08
    ld [bc], a
    ld b, e
    dec bc
    ldh [$2e], a
    ld bc, $70f1
    nop
    ld c, d
    inc b
    rst $38
    ld l, h
    rst $38
    sub d
    rst $38
    db $db
    rst $38

jr_006_6385:
    inc h
    rst $38
    or [hl]
    rst $38
    ret


    rst $38
    dec l
    rst $38
    ld [hl-], a
    xor a
    rra
    rst $08
    rlca
    push af
    ld a, c
    cp b
    ld b, b
    ret nz

    rst $38
    jr nc, jr_006_635a

    add b
    rst $18
    ld e, a
    push af
    ld hl, sp-$0d
    ldh [$af], a
    ld e, c
    inc bc
    rst $38
    jr jr_006_63b3

    inc bc
    ld bc, $ff49
    ld [hl], $28
    rst $38
    ld c, c
    cpl
    ld l, l

jr_006_63b1:
    cp b
    db $76

jr_006_63b3:
    rst $38
    sub e
    rst $38
    or h
    rst $38
    ld c, h
    db $fc
    ret nc

    ld sp, hl
    jr nc, jr_006_63b1

    ld b, b
    db $eb
    ld h, b
    rlca
    ld bc, $008f
    ld d, d
    jr nz, jr_006_6403

    rra
    rra
    nop
    ld e, b
    ld e, a

jr_006_63cd:
    rst $18
    rra
    add e
    add e
    cp e
    dec de
    dec c
    ld a, e
    ld c, e
    di
    db $e3
    and l
    ld [hl], c
    rrca
    ld b, $76
    ld h, b
    ld a, b
    ld c, b
    dec a
    inc e
    cp h
    sbc l
    sbc l
    adc b
    ret nz

    ret nz

    xor a
    ld e, $dd
    jp $bc1b


jr_006_63ee:
    cp l
    nop
    rst $08
    rst $28
    ld [$f7f7], a
    ld a, b
    nop
    nop
    inc c
    cp a
    nop
    rra
    add b
    ld l, c
    db $d3
    db $ec
    db $dd
    sbc $03

jr_006_6403:
    inc a
    cpl
    sbc $10
    db $10
    rst $10
    sbc e
    ld bc, $0000
    ld b, c
    ret nz

    nop
    rst $38
    nop
    ld a, a
    nop
    ld [$0839], sp
    db $eb
    ld bc, $00b3
    pop bc
    inc bc
    adc h
    rrca
    cp $2e
    nop
    inc c
    db $fd
    nop
    ld hl, sp+$01
    adc c
    set 5, h
    db $dd
    ld a, e
    ld bc, $f43c
    ld a, e
    push af
    ld a, b
    cp $fc
    db $d3
    inc a
    or d
    ld c, l
    ld d, c
    rst $30
    push hl
    ld d, a
    rst $28
    rst $28
    ld e, $f7
    rst $20
    ldh a, [$60]
    ld l, [hl]
    ld b, $1e
    ld [de], a
    cp h
    jr c, jr_006_6487

    cp c
    cp c
    ld de, $0303
    di
    inc b
    add c
    nop
    nop
    ld e, a
    ccf
    rla
    rrca
    dec bc
    jp nz, $f8c1

    ld hl, sp+$0b
    rla
    rst $10
    rst $28
    ld c, b
    ld c, [hl]
    cpl
    rra
    adc c
    jr jr_006_63ee

    ldh [$e0], a
    adc l
    rst $18
    add b
    pop de
    adc [hl]
    inc b
    add hl, de
    sbc a
    rra
    ld l, h
    and l
    ld l, l
    ei
    ld l, b
    ld bc, $826e
    sbc c
    ld sp, hl
    ld hl, sp+$20
    dec h
    db $eb
    rst $30
    or l
    ld l, [hl]
    ld l, $1a
    db $f4

jr_006_6487:
    ld hl, sp-$6f
    ld h, c
    rlca
    rlca
    ld a, [$e8fc]
    ldh a, [rSCX]
    add e
    push af
    db $d3
    reti


    di
    ld b, $e1
    xor [hl]
    nop
    ld [hl-], a
    pop af
    pop af
    push af
    pop af
    ldh a, [$f4]
    and $e4
    add sp, -$1e
    db $eb
    ld [c], a
    db $e3
    db $eb
    db $ed
    jp hl


    xor a
    dec h
    call $7502
    xor e
    dec h
    ld l, c
    ld [hl], l
    or l
    ld l, l
    dec h
    ld [hl-], a
    ld [hl], l
    xor a
    dec h
    ret z

    ld [bc], a
    ld [hl], l
    adc a
    adc a
    xor a
    ret nz

    ld c, $2f
    ld h, a
    daa
    rla
    ld b, a
    inc bc
    rst $10
    ld b, a
    rst $00
    rst $10
    or a
    sub a
    inc bc
    ld d, c
    ldh [$e5], a
    push af
    db $f4
    or $8d
    ld h, c
    xor $63
    ld [hl], c
    db $ec
    push hl
    add sp, $7c
    nop

jr_006_64e0:
    ld b, c
    jr c, @+$75

    ld a, b
    rst $38
    ld a, b
    ld a, a
    ldh a, [$fe]
    ldh [$fe], a
    push bc
    inc bc
    ld hl, sp+$0f
    db $e3
    rrca
    add a
    rlca
    jp $8203


    ld [bc], a
    ld h, e
    ld h, e
    db $e3
    db $e3
    di
    di
    jp c, $f0ca

    ldh a, [$e1]
    ldh [$c3], a
    ret nz

    ld b, c
    ld b, b
    add $c6
    rst $00
    rst $00
    rst $08
    rst $08
    ld e, e
    ld d, e
    ld a, $00
    add d
    inc e
    adc $1e
    rst $38
    ld e, $fe
    rrca
    ld a, a
    rlca
    ld a, a
    jr nc, jr_006_6521

    rra
    ld d, c
    rlca

jr_006_6521:
    and a
    xor a
    jr c, jr_006_6554

    ld l, a
    ld h, c
    ld [hl], a
    jp Jump_000_3763


    and a
    rla
    rst $28
    ld [$d225], sp
    sub l
    pop af
    jp hl


    xor a
    ld b, h
    rst $30
    add h
    dec h
    adc a
    add a
    dec h
    inc bc
    and h
    sub l
    cp $fd
    ret c

    ld a, [de]
    or a
    ld a, [$25f1]
    rst $20
    di
    jr nz, jr_006_64e0

    adc a
    rlca
    dec bc
    rlca
    xor c
    inc b
    ld b, e
    ld a, [c]
    pop hl

jr_006_6554:
    db $fd
    ldh a, [$a4]
    sub l
    pop af
    ldh [rP1], a
    ret nc

    ldh [$95], a
    jp nz, $874f

    cp a
    rrca
    sub h
    adc h
    sub l
    ld a, a
    cp a
    rst $38
    inc b
    rra
    ld c, $5f
    adc a
    rst $20
    rst $08
    sub a
    sub l
    adc a
    ld c, d
    adc a
    rst $28
    inc h
    dec h
    pop af
    pop hl
    dec a
    and h
    ret nz

    ld b, $6f
    ld hl, sp+$04
    ld c, l
    db $fc
    db $fc
    dec bc
    pop bc
    pop bc
    ld [de], a
    inc c
    jr nc, jr_006_6598

    rst $00
    rlca
    ld bc, $44fb
    ld hl, sp-$46
    cp c
    ld sp, hl
    ld sp, hl
    xor l
    ld l, l
    ld e, a

jr_006_6598:
    rla
    sbc c
    ld b, $e0
    and b
    ret nz

    or b
    ld h, b
    ldh [$b8], a
    db $f4
    push af
    ldh [$f4], a
    ldh [$d6], a
    ldh [$d7], a
    db $e4
    cpl
    add $af
    ld c, c
    di
    ld h, a
    cpl
    rst $20
    ld h, b
    sbc d
    xor e
    ld h, [hl]
    ld d, [hl]
    ld h, $82
    ld bc, $a636
    ld [de], a
    cp $f8
    db $fc
    rst $38
    sbc l
    dec h
    and b
    jr nz, @-$45

    ld b, $00
    ld c, $00
    rrca
    ld l, h
    nop
    pop af
    jr c, jr_006_65d6

    ld a, [hl-]
    inc bc
    dec b
    ld b, b
    cp c

jr_006_65d6:
    ld h, b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ld c, $cf
    and $f4
    rst $20
    sbc h
    ld a, [de]
    adc e
    ld h, [hl]
    ld e, h
    ld l, d
    ld a, [$4164]
    ld l, h
    ld h, l
    ld c, b
    dec c
    ld b, $0f
    add a
    xor a
    rlca
    cpl
    rlca
    ld l, e
    rlca
    db $eb
    daa
    db $f4
    ld h, e
    push af
    sub d
    ccf
    ccf
    sbc a
    ld hl, sp-$73
    call $fcfa
    adc [hl]
    sub [hl]
    ld a, [de]
    dec b
    inc bc
    nop
    adc a
    rrca
    rrca
    ldh [$80], a
    rst $18
    rra
    cp a

Jump_006_6613:
    ld a, l
    ccf
    inc b
    jp $83dd


    add e
    ld c, b
    jr nc, @-$04

    inc b
    ld e, a
    ld sp, hl
    inc de
    ld sp, hl
    di
    pop af
    ld [$065d], a
    pop hl
    ld a, d

jr_006_6629:
    inc a
    pop de
    ldh [rDMA], a
    add b
    sbc h
    nop
    ld e, a
    ld a, $ff
    ld a, [hl]
    ret nz

    ld e, $1f
    rla
    rrca
    add d
    ld de, $3801
    inc a
    xor [hl]
    pop af
    ccf
    ld h, b
    ld h, b
    adc a
    rrca
    ld b, e
    add e
    sbc e
    db $e3
    set 6, e
    ld d, e
    inc hl
    rlca
    add a
    ld c, $0e
    rlca
    nop
    cp a
    dec c
    ccf
    ld [de], a
    ccf
    dec de
    ld a, l
    ccf
    ld bc, $2f4b
    jp z, $8c92

    jp $d61a


    dec bc
    ldh [$8f], a
    ldh [$cf], a
    ld [$f104], a
    add [hl]
    db $f4
    ld b, e
    rlca
    nop
    ld l, $01
    db $10
    add e
    nop
    ld bc, $c080
    nop
    dec l
    ld c, e
    ld a, a
    ccf
    ldh [rP1], a
    ld bc, $c100
    nop
    add b
    ld bc, $0003
    or h
    jp nc, $84c2

    ld d, e
    ld c, c
    jp Jump_006_58e5


    ld l, e
    ret nc

    rlca
    pop af
    rlca
    di
    ld d, a
    jr nz, jr_006_6629

    ld h, c
    cpl
    jp nz, $b0fa

    db $fc
    ld c, b
    db $fc
    ret c

    db $fc
    push af
    ld bc, $3c2f
    ld [hl], b
    ld [hl], b
    ld b, $6f
    ld a, $5c
    ld a, $68
    ld b, $06
    pop af
    ldh a, [$c2]
    pop bc
    reti


    rst $00
    db $d3
    rst $08
    jp z, $e0c4

    pop hl
    ld a, [$af7c]
    ld hl, sp+$03
    add sp, -$10
    ld b, c
    add b
    inc e
    inc a
    ld a, [$9d01]
    ld h, b
    nop
    ld e, [hl]
    inc a
    adc e
    rlca
    ld h, d
    ld bc, $0039
    cp $04
    add b
    sbc a
    sbc a
    sbc a
    rst $08
    adc a
    rst $30
    ldh a, [$f0]
    ld a, b
    ldh a, [rDIV]
    ld c, a
    add hl, de
    ld de, $3302
    inc bc
    and a
    add a
    adc a
    adc a
    pop bc
    rrca
    ld a, [$fd61]
    sbc a
    ld [hl], a
    ret c

    ld [bc], a
    ld d, b
    ld a, a
    cp b
    db $10
    ld b, a
    add e
    dec d
    sbc a
    ld a, a
    daa
    ld sp, $50fd
    ld a, a
    dec e
    ld [$c1e2], sp
    dec d
    ld sp, hl
    cp $e4
    ld sp, $51fd
    ld a, a
    ld e, a
    add [hl]
    cp a
    sbc a
    rst $30
    dec de
    ld [bc], a
    ld d, b
    ld a, a
    sbc b
    adc b
    call z, Call_000_0bc0
    push hl
    pop hl
    pop af
    pop af
    inc bc
    ld c, a
    rst $28
    rrca
    rrca
    rrca
    sbc $04
    ld l, a
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec b
    ldh [rP1], a
    nop
    inc bc
    ret nz

    rst $30
    ld b, e
    or c
    rrca
    inc b
    ld bc, $ff1e
    dec d
    nop
    ld hl, $fefe
    dec b
    ld [hl], c
    db $fc
    db $fc
    ldh a, [$f3]
    ldh [$ef], a
    add b
    sbc a
    nop
    ld a, a
    nop
    rst $38
    ldh [$e0], a
    nop
    rra
    sbc $05
    ld [bc], a
    ld bc, $070f
    rlca
    nop
    ld hl, sp+$04
    ld b, b
    rrca
    nop
    ccf
    ccf
    nop
    rrca
    rst $08
    rlca
    rst $30
    ld bc, $00f9
    cp $78
    nop
    rlca
    ld c, a
    ld a, a
    ld a, a
    inc bc
    db $fc
    db $fd
    ld hl, sp-$05
    ldh a, [$f7]
    ld h, b
    ld bc, $c04f
    rst $18
    add b
    cp a
    sbc $01
    inc b
    dec sp
    add b
    ld bc, $bf3f
    rra
    dec de
    rst $18
    rrca
    rst $28
    ld bc, $3f06
    inc bc
    ei
    ld bc, $01fd
    sub e
    add l
    ld l, c

jr_006_679c:
    nop
    scf
    jr c, jr_006_67a1

    add e

jr_006_67a1:
    ld a, a
    sub c
    add hl, hl
    ld bc, $0505
    cp $80
    scf
    ldh a, [rIE]
    inc e
    rst $38
    ld b, $1e
    rra
    inc bc
    rst $28
    ld b, $4d
    ld a, c
    add b
    rlca
    ld e, l

jr_006_67b9:
    ld bc, $01e0
    add hl, bc
    rrca
    rst $38
    jr c, @+$01

    ld c, $60
    ld hl, sp-$40
    rst $30
    inc a
    ld b, c
    cp $03
    dec hl
    ld a, a
    sub e
    and l
    ld l, c
    nop
    add a

Call_006_67d1:
    dec [hl]
    ld bc, $90ad
    ld bc, $d7b5
    ld bc, $0108
    rst $20
    jr jr_006_67b9

    jr c, jr_006_679c

    ld a, l
    ld a, c
    ld a, h
    ld a, b
    ld a, e
    ld a, h
    ld [$fcab], sp
    rst $38
    ld a, b
    ld e, h
    scf
    jr nz, @+$21

    pop hl
    ld h, a
    ld h, e
    rst $28
    rst $00
    rst $18
    ld [$3f3c], sp
    rst $38
    ld e, $0f
    ld hl, sp+$00
    add a
    and $c6
    rst $30
    db $e3
    ei
    db $10
    inc a
    ld [hl], b
    add b
    cpl
    inc e
    dec a
    ld [bc], a
    ld a, [hl]
    ld e, [hl]
    ld a, $1e
    sbc $3e
    ld a, [de]
    ei
    ld sp, $01c8
    ld l, [hl]
    push hl
    ld bc, $5303
    di
    ldh a, [$f5]
    ldh a, [$f6]
    ld c, $07
    pop af
    rst $30
    di
    ld a, b
    ld bc, $ab01
    ccf
    nop
    ld bc, $c0cf
    pop af
    ldh a, [$fc]
    nop
    ldh [$e0], a
    dec b
    pop bc
    ld e, $00
    pop af
    nop
    inc c
    rst $20
    inc bc
    rst $08
    rlca
    dec a
    sbc a
    nop
    rrca
    cp a
    rlca
    rrca
    inc bc
    rlca
    nop
    adc a
    jp $c00f


    di
    ldh [rSB], a
    sbc l
    ld sp, hl
    ldh a, [$fd]
    ldh [$f0], a
    ret nz

    sbc [hl]
    dec l
    rlca
    dec b
    cpl
    ld a, e
    ld a, b
    ld bc, $0309
    ld c, c
    di
    inc bc
    adc a
    rrca
    ccf
    add b
    ld [hl], e
    rst $08
    rrca

jr_006_686b:
    xor a
    rrca
    ld l, a
    jp $8f07


    rst $28
    rst $08
    sbc b
    ld bc, $f171
    di
    pop hl
    db $dd
    ld sp, hl
    db $fc
    ret z

    nop
    add $ed
    ldh [$f8], a
    ld [hl], l
    ld e, h
    add b
    jr nc, jr_006_686b

    nop
    adc $40
    xor $20
    rst $30
    ld [hl-], a
    ld a, e
    add hl, de
    ld a, a
    nop
    nop
    rra
    ld bc, $b887
    ld h, b
    nop
    pop bc
    jr nz, jr_006_68fc

    db $10
    jr nc, @+$1a

    sbc h
    ld c, $cf
    nop
    jp $c091


    ldh a, [rSVBK]
    cp $0e
    nop
    ld a, $00
    inc bc
    jr c, jr_006_68cb

    nop
    rrca
    rlca
    jr jr_006_68b8

    rrca
    ld c, $27

jr_006_68b8:
    ld a, h
    nop
    ld d, e
    ret nz

    rrca
    dec bc
    nop
    ld hl, sp-$80
    pop hl
    add [hl]
    nop
    add e
    inc b
    ld b, $08
    inc c
    jr jr_006_6904

jr_006_68cb:
    ld [hl], b
    di
    rlca
    rra
    ld [hl], l
    cp b
    ld h, e
    ld bc, $0027
    ld [hl], e
    ld [bc], a
    ld [hl], a
    inc b
    rst $28
    ld c, h
    sbc $98
    cp $71
    adc a
    rst $08
    add a
    db $fd
    sbc a
    ccf
    dec e
    nop
    ld a, a
    add b
    ld l, l
    adc [hl]
    cp a
    add a
    sbc a
    jp Jump_000_08cf


    pop hl
    rst $20
    ldh a, [$f3]
    ld h, c
    add e
    add c
    add e
    rst $20
    ld b, b
    xor [hl]

jr_006_68fc:
    call $f818
    ldh a, [$fe]
    ld hl, sp-$01
    ld a, h

jr_006_6904:
    rst $38
    rra
    rst $38
    rlca
    ccf
    add b
    ld l, h
    ld hl, sp+$3f
    jp Jump_000_1f07


    nop
    add b
    inc bc
    rst $20
    rlca
    rst $38
    rst $18
    rst $38
    ld bc, $6c1c
    rra
    db $fc
    and l
    jr nc, jr_006_6920

jr_006_6920:
    ld bc, $e00f
    rst $38
    ei
    ld b, $ff
    pop bc
    rst $20
    ld [bc], a
    rst $08
    dec e
    ld sp, $7f0f
    dec hl
    ld a, $ff
    add b
    inc sp
    ldh [$fc], a
    ld [hl], c
    db $fd
    pop hl
    ld sp, hl
    dec c
    jp $87f3


    rst $20
    push hl
    inc c
    ld h, e
    ld h, c
    add b
    inc b
    adc a
    ret nz

    jp $f0f0


    and d
    rst $00
    ld b, a
    nop
    ccf
    inc sp
    ld d, a
    cpl
    nop
    ld a, [bc]
    ld e, c
    adc a
    ldh [$e0], a
    adc [hl]
    db $dd
    ld h, b
    scf
    jr nz, jr_006_695e

jr_006_695e:
    db $fc
    ld bc, $6cf1
    rlca
    ld h, b
    ld e, a
    pop af
    ld [bc], a
    inc bc
    jp $0f0f


    ld a, a
    ld a, a
    rst $08
    dec l
    ld [bc], a
    adc a
    ld l, a
    inc b
    nop
    ld bc, $ff78
    adc h
    rst $38
    ld b, $9f
    inc bc
    ld e, $6f
    ld bc, $06e7
    rla
    ld a, c
    ret nz

    rlca
    daa
    inc bc
    jr nc, jr_006_6990

    ld e, $ff
    ld sp, $ff01
    ld h, b
    ld sp, hl

jr_006_6990:
    ret nz

    or $80
    rst $20
    pop af
    ld [bc], a
    ld l, a
    jr nc, jr_006_699a

    db $e3

jr_006_699a:
    inc e
    db $dd
    ld a, h
    ld a, [hl-]
    ld [$4f6f], sp
    or l
    ld b, $83
    ld c, a
    cp $01
    ldh [rSB], a
    ld c, a
    nop
    rst $00
    rra
    jr c, @-$43

    ld e, h
    inc bc
    ld de, $164f
    inc sp
    ret nc

    pop bc
    push hl
    ld b, $f0
    ld hl, sp-$20
    ld a, [c]
    ret nz

    ld h, l
    nop
    rst $08
    ld [bc], a
    rst $28
    daa
    rst $30
    dec de
    ld a, a
    dec c
    ld b, [hl]
    ccf
    cp a
    cp b
    ld a, [hl]
    ld hl, $1877
    dec a
    ld c, $8f
    inc bc
    rst $00
    add b
    di
    ret nz

    ld hl, sp+$02
    cp a
    inc hl
    add b
    jp $597e


    ld [bc], a
    cp a
    inc hl
    ld bc, $46c3
    ld e, c
    cp a
    cp b
    ld h, c
    add h
    xor $18
    cp h
    ld [hl], b
    pop af
    ret nz

    db $e3
    ld bc, $03cf
    rra
    inc de
    rlca
    ld c, a
    inc bc
    add b
    ld c, a
    di
    ld b, b
    rst $30
    db $e4
    rst $28
    ret c

    ld de, $b0fe
    db $fc
    ld d, $33
    pop de
    pop bc
    sub [hl]
    dec h
    add [hl]

jr_006_6a0d:
    ret


    cp l
    ld hl, sp+$61
    ld h, e
    ldh a, [$fc]
    ld hl, sp-$27
    ld d, c
    ld a, a
    inc l
    cp e
    sbc a
    dec sp
    ret nz

    rst $00
    ld l, l
    cp c
    nop
    cpl
    ei
    ld bc, $b67b
    cp c
    nop
    db $d3
    dec l
    ld h, c
    rrca
    add hl, hl
    rrca
    ccf
    rra
    push bc
    dec d
    cp $60
    cp e
    ld bc, $03f9
    db $e3
    ld e, e
    ld h, c
    dec h
    cp l
    rra
    adc c
    add e
    ldh a, [$f1]
    inc l
    rst $10
    nop
    ld b, [hl]
    rra
    sub c
    ld d, $1f
    ret nz

    ret nz

    ld [hl+], a
    rrca
    ld hl, sp-$5e
    inc bc
    ld hl, sp+$03
    inc bc
    jp nz, $0f0f

    adc a
    ld c, e
    sub a
    dec h
    nop
    ld h, $5f
    ldh [$ee], a
    cp l
    ld d, d
    rst $20
    ld bc, $ff50
    rlca
    add hl, bc
    ld [hl], a
    daa
    rst $30
    rst $20
    inc bc
    ld bc, $e3ef
    rst $20
    pop af
    sub [hl]
    inc hl
    db $db
    ld b, c
    cp a
    and h
    ld bc, $00f3
    nop
    rst $00
    ret nz

jr_006_6a7e:
    rst $20
    ld h, c
    rst $30
    jr nc, jr_006_6a7e

    jr jr_006_6a0d

    rst $38
    cp b
    ld b, [hl]
    rlca
    nop
    dec e
    inc bc
    adc a
    nop
    jp $e080


    ret nz

    ld hl, sp+$70
    cpl
    ld c, $e0
    ld b, b
    ldh a, [rP1]
    ld a, [hl+]
    ld a, a
    rra
    ld h, e
    dec de
    ld c, $3f
    ld [bc], a
    rrca
    nop
    ld de, $f87f
    cp $b8
    dec sp
    inc bc
    ldh [$0c], a
    nop
    cp b
    ret nz

    pop af
    rla
    ld bc, $070e
    inc bc
    rra
    ld c, $74
    rst $18
    add b
    ld bc, $00cf
    db $e3
    inc bc
    rst $20
    add [hl]
    rst $28
    inc c
    inc c
    rst $18

jr_006_6ac6:
    jr jr_006_6ac6

    ld [hl], c
    rst $00
    add hl, sp
    rst $20
    adc a
    add e
    ld l, h
    ld b, c
    ld c, $3b
    ccf
    add e
    ld b, d
    dec h
    push hl
    ld b, a
    xor a
    ld a, $91
    ld [bc], a
    push hl
    rlca
    dec bc
    sbc a
    ccf
    ld e, [hl]
    add hl, sp
    ld d, l
    inc de
    dec l
    nop
    db $fc
    ld a, c
    sbc c
    ld c, c
    db $d3
    nop
    ld a, h
    ld sp, hl
    ld [bc], a
    dec b
    ldh [rNR10], a
    cp a
    ld [hl], b
    dec sp
    db $fc
    pop bc
    ld b, [hl]
    ld b, l
    dec b
    sub e
    daa
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld c, $80
    nop
    nop
    add hl, bc
    sub c
    inc hl
    ld d, $93
    jr nz, jr_006_6b14

    ld bc, $000f
    rst $38

jr_006_6b14:
    rlca
    nop
    ld bc, $3f00
    ld a, a
    ld b, b
    ccf
    ld e, a
    ccf
    jr nc, @+$52

    cpl
    ld bc, $2f53
    ld d, d

jr_006_6b25:
    ld h, a
    dec l
    rrca
    rst $38
    jr nc, jr_006_6b40

    nop
    jr @+$01

    inc hl
    inc b
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
    add a
    ld c, $87
    ld a, b

jr_006_6b40:
    ld a, a
    add b
    ld [hl], b
    ld l, $0f
    rrca
    rst $38
    nop
    ldh [$1f], a
    ld e, $e1
    pop hl
    ld e, $fe
    ld bc, $0f92
    ld b, b
    cpl
    call nz, Call_000_363f
    rst $08
    jr nc, jr_006_6b25

    dec a
    rrca
    cp $fe
    ld [bc], a
    ld c, $fe
    ld a, [$0afe]
    ld bc, $ca01
    cp $4a
    cp [hl]
    ld d, c
    ld l, $02
    ld d, l
    ld d, e
    ld l, $eb
    ld d, h
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
    ld bc, $1bf6
    rst $00
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
    ld bc, $6a55
    cp [hl]
    sbc d
    ld a, [hl]
    ld e, d
    cp [hl]
    add e
    ld e, e
    xor d
    ld e, [hl]
    and [hl]
    ld e, [hl]
    add hl, bc
    ld d, c
    ld c, d
    ccf
    ld d, [hl]
    add b
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

jr_006_6beb:
    ld bc, $d630
    ld l, $01
    jp nc, $ea2e

    ld e, b
    ld d, $01
    ld d, d
    add hl, sp
    dec a
    ld d, e
    ld bc, $0505
    ld d, h
    ld sp, $e963
    ret


    db $ed
    adc h
    inc bc
    cp e
    call nz, Call_006_465b
    and c
    ld h, e
    ld h, d
    call c, $06ef
    ld bc, $4802
    add hl, sp
    ld bc, $3c56
    ccf
    ld d, [hl]
    dec b
    sbc a
    ld b, [hl]
    db $f4
    inc bc
    ld bc, $9f30
    add c
    adc l
    ld a, d
    adc [hl]
    ld b, c
    ld a, b
    ld bc, $cd8f
    ld bc, $700b
    adc d
    inc b
    ld d, [hl]
    jr nc, jr_006_6beb

    ld a, b
    sub d
    ld a, b
    jp z, Jump_006_7630

    nop
    rst $00
    dec bc
    or d
    ld c, h
    ld l, a
    ld h, b
    rlca
    jr nc, jr_006_6c41

jr_006_6c41:
    ld a, a
    ld bc, $7f1f

jr_006_6c45:
    ld hl, $7f03
    inc hl
    ld a, a
    inc de
    ld a, a
    ld b, $76
    ld bc, $c36f
    ld bc, $fec0
    add b
    sbc c
    inc bc
    ld bc, $8060
    ld bc, $0c7f
    ld a, a
    rrca
    ld a, a
    jr jr_006_6c45

    ld bc, $9c3c
    daa
    dec l
    inc bc
    cp $30
    cp $f0
    cp $18
    adc [hl]
    ld bc, $483c
    daa
    ld b, b
    and b
    cp d
    ld [hl], c
    and b
    ldh [$f8], a
    ldh [$d8], a
    ld hl, sp+$7c
    ld hl, sp+$74
    cp $fe
    ld a, a
    add hl, bc
    rst $38
    or e
    ld c, [hl]
    ld l, a
    sbc a
    dec sp
    rst $18
    or e
    ld e, a
    ld c, l
    or e
    dec a
    and e
    adc b
    scf
    rra
    dec b
    ld [hl], h
    inc b
    rlca
    rra
    rlca
    dec de
    rra
    ld a, $1f
    cpl
    ld a, a
    ld a, a
    cp $91
    cp $cd
    ld [hl], d
    or $f9
    call c, $cdf9
    ld hl, sp-$4d
    call z, $c5bc
    db $10
    db $ec
    ld hl, sp+$03
    add hl, sp
    jp $f44e


    ld [bc], a
    ld l, e
    adc e
    dec b
    db $fc
    and l
    ld [bc], a
    ld a, [$d305]
    inc c
    xor d
    ld a, $af

jr_006_6cc6:
    ld a, h
    ccf
    dec a
    ld a, a
    add h
    ld a, [hl+]
    inc c
    adc a
    adc [hl]
    rst $20
    ld l, e
    rst $38
    sbc a
    ld a, a
    sbc [hl]
    rst $38
    sub $ff
    jp hl


    or $00
    add hl, hl
    ei
    inc b
    call nc, $ae04
    ld l, $a0
    rra
    nop
    ld a, [$1e01]
    and l
    ld e, $5f
    ld [bc], a
    rra
    cp a
    db $dd
    ld h, l
    ld a, a
    dec b
    ld a, a
    ld e, d
    ld a, l
    ld a, [hl-]
    ld a, a
    scf
    ld a, d
    scf
    ld a, b
    ld d, l
    ld a, $6e
    dec e
    push de
    ld a, [$f8df]
    xor h
    reti


    inc [hl]
    ret


    dec de
    db $e4
    push af
    ld c, h
    sbc b
    ld b, l
    call z, $2e20
    ld d, l
    ld l, e
    inc d
    ld de, $5464

jr_006_6d16:
    ld h, b
    ld hl, $1044
    ld h, b
    ld c, b
    db $10
    inc e
    ld b, b
    dec [hl]
    jr nz, jr_006_6d62

    jr nz, jr_006_6cc6

    ld [$8221], sp
    add d
    nop
    db $10
    add b
    jr jr_006_6d2d

jr_006_6d2d:
    ld b, b
    db $10
    xor e
    ld e, a
    ei
    rra
    dec [hl]
    sbc e
    inc l
    sub e
    or l
    ret c

    daa
    xor a
    ld [hl-], a
    add hl, de
    and d
    inc sp
    inc b
    and [hl]
    cp $a0
    cp $5a
    cp [hl]
    ld e, h
    cp $ec
    ld e, [hl]
    db $ec
    ld e, $aa
    ld a, h
    db $76
    cp b
    xor h
    inc b
    ld [bc], a
    inc b
    ld b, l
    db $10
    add h
    ld b, c
    ld b, c
    nop
    ld [$2f01], sp
    rst $08
    ld [bc], a
    ld [$aa74], sp

jr_006_6d62:
    sub $28
    adc b
    ld h, $2a
    ld b, $84
    ld [hl+], a
    ld [$1206], sp
    ld [$0238], sp
    nop
    ld e, a
    add b
    and l
    ld a, b
    ld a, [$8906]
    ld sp, hl
    cp $79
    rst $38
    sub l
    jr z, jr_006_6d16

    ld l, a
    xor a
    rst $18
    nop
    jr nz, jr_006_6db0

    jr nz, jr_006_6dfc

    ld [hl], h

jr_006_6d88:
    push af
    ld a, $fc
    dec a
    cp h
    cp $03
    rst $28
    ld [hl], b
    ld a, a
    add b
    cpl
    ld d, b
    add $21
    call nc, $f130
    ld [hl], c
    rst $20
    ld d, [hl]
    or $02
    cpl
    pop de
    nop
    ccf
    ld b, b
    ld e, a
    and b
    swap b
    ld d, l
    ld a, h
    sub d
    cpl
    adc h

Jump_006_6dad:
    nop
    inc b
    nop

jr_006_6db0:
    ld l, $21
    ld l, $2f
    rst $28
    adc a
    ld h, b
    ld bc, $0405
    rlca
    rst $28
    ld b, b
    nop
    add b
    and b
    xor b
    dec b
    ld l, a
    nop
    jr nz, jr_006_6d88

    nop
    ld [hl], h
    ld [hl], h
    db $f4
    dec c
    ccf
    ld [$c50b], sp
    rrca
    ld [bc], a
    jr nz, jr_006_6de8

    dec b
    jr nz, jr_006_6dd8

    ld [de], a
    add d

jr_006_6dd8:
    db $10
    ld [de], a
    add b
    add b
    sbc b
    dec c
    add hl, de
    inc h
    nop
    db $fc
    jr jr_006_6df3

    inc b
    inc bc
    ld c, b
    ld b, c

jr_006_6de8:
    ld [HeaderROMSize], sp
    ld bc, $2f99
    ld l, c
    inc b
    rst $00
    cpl
    db $10

jr_006_6df3:
    jr nz, jr_006_6dfa

    dec bc
    nop
    or b
    dec b
    ld e, a

jr_006_6dfa:
    nop
    nop

jr_006_6dfc:
    xor a
    and b
    rst $20
    ld hl, sp-$1d
    ret c

    ei
    ld a, h

jr_006_6e04:
    ld b, [hl]
    ld sp, hl
    rst $38
    ldh a, [rTIMA]
    rst $18
    ccf
    nop
    sbc a
    cp b
    cp $a0
    xor a
    jr nz, jr_006_6e82

    ld h, b
    db $eb
    or b
    di
    or b
    push af
    cp h
    db $fd
    inc h
    cp $46
    cp [hl]
    inc b
    rst $28
    cp b
    call nz, $fc01
    nop
    ld sp, hl
    nop
    ld a, [$f500]
    inc b
    rst $20
    rra
    rst $00
    dec de
    rst $18
    ld a, $9f
    dec [hl]
    rra
    dec b
    dec c
    set 6, [hl]
    ld b, $d7
    dec c
    rst $08
    dec c
    xor a
    dec a
    cp a
    inc h
    ld a, a
    ld h, d
    ld a, l
    ld a, $6f
    dec [hl]
    ld a, [hl]
    ld e, c
    ld a, a
    ld a, e
    add b
    ld bc, $7f67
    ld e, e
    ld l, a
    add hl, hl
    ld a, [hl]
    ld e, a
    ld [$bcdf], sp
    cp $eb
    ld e, h
    push hl
    ld a, [hl-]
    or [hl]
    ld a, b
    ld [hl], l
    xor d
    ld e, d
    and a
    ret


    ld h, $a4
    ld [bc], a
    ld a, [bc]
    inc h
    or h
    ld e, e
    db $fc
    inc de
    dec hl
    sub [hl]
    dec e
    and d
    db $eb
    jr nc, jr_006_6e04

    inc h
    ld a, $84
    ld hl, $3c04
    ld a, [hl]
    ld a, [hl]
    cp $34
    cp $a2
    cp $a8

jr_006_6e82:
    cp $9c
    cp $5c
    cp [hl]
    ld l, [hl]
    call c, $cf08
    ldh [$5f], a
    cp $59
    rst $38
    ld [hl], b
    ei
    ld bc, $ff67
    ld b, $5b
    rst $28
    xor c
    ld e, a
    dec a
    cpl
    ld h, b
    rst $38
    ld de, $ffa2
    xor c
    cp $03
    sbc l
    rst $38
    ld e, l
    cp a
    ld l, [hl]
    db $dd
    ret nz

    ld bc, $bbad
    inc b
    and b
    dec e
    ld b, h
    ld h, $65
    ld e, a
    dec c
    nop
    rst $28
    db $10
    rst $00
    nop
    db $d3
    inc d
    dec [hl]
    or h
    ld a, h
    ld a, [hl]
    ld [bc], a
    add c
    ld b, a
    ld b, b
    nop
    ret z

    ld b, c
    ld c, l
    db $eb
    ld h, a
    dec c
    ld h, b
    ld h, c
    add b
    and c
    and h
    and [hl]
    ld a, c
    push af
    ld [$848f], sp
    ld [hl], b
    ld bc, $1005
    ld b, b
    ld bc, $4088
    ld c, d
    nop
    db $10
    ld [$e008], sp
    daa
    add c
    ld a, [bc]
    add hl, de
    ld b, $02
    ld [hl-], a
    nop
    ld [hl+], a
    db $10
    ld c, $1d
    sub b
    nop
    ld [bc], a
    sbc a
    sub a
    ld [hl+], a
    ld bc, $a9b2
    nop
    ld [$058a], sp
    inc h
    ret


    pop bc
    nop
    cp [hl]
    dec b
    ld bc, $4f00
    ld [hl], h

jr_006_6f08:
    ld [hl], l
    db $f4
    ld a, $fd
    cp l
    inc c
    cp $a6
    rst $38
    and c
    rst $08
    cp a
    nop
    ld e, l
    cp $ed
    ld e, a
    db $ed
    rra
    xor d
    ld a, l
    inc a
    ld [hl], a
    cp b
    ld [$750f], sp
    add sp, -$61
    dec b
    adc c
    ld h, $2a
    rlca
    add l
    ld b, b
    sbc a
    add hl, sp
    ld [bc], a
    ld hl, $07fd
    rst $38
    ld [$5903], a
    ld l, $00
    cp [hl]
    dec e
    inc bc
    ld sp, $0b02
    inc b
    push bc
    inc b
    ld [bc], a
    ld b, h
    ld b, h
    db $10
    dec b
    dec bc
    db $e3
    ret c

    adc [hl]
    ld a, a
    ei
    ld e, [hl]
    db $ec
    rra
    dec l
    cp $6d
    cp a
    di
    dec a
    sub $29
    dec d
    ld a, [hl+]
    add hl, de
    ld [hl+], a
    rrca
    add hl, bc

jr_006_6f5d:
    ld a, [hl+]
    ld bc, $0100
    jr nc, jr_006_6f08

    xor a
    inc hl
    ld h, $03
    ld b, $63
    inc c
    dec [hl]
    ld c, $ba
    rrca
    inc c
    sub d
    add c
    ld [de], a
    ld bc, $9f91
    ld l, $ae
    cpl
    ld [hl], d
    ld a, h
    cp a
    cp l
    ld a, a
    ld h, l
    rst $38
    add l
    ld a, a
    ld e, d
    db $fd
    cp d
    ld a, a
    or a
    ld a, [$f8b7]
    ld d, l
    cp [hl]
    xor $1d
    di
    ld [$ae0f], sp
    and b
    ld a, a
    sub c
    ld h, h
    dec d
    ld d, h
    ldh [$a1], a
    inc bc
    ld a, a
    sbc h
    ld b, b
    add h
    ldh [rTAC], a
    ld l, a
    dec de
    cp $b9
    rst $20
    rst $18
    ld a, d
    scf
    ld hl, sp-$4c
    ld a, a
    or [hl]
    db $fd
    rst $08
    cp h
    ld l, e
    sub h
    xor b
    ld d, h
    ld a, l
    ret nz

    adc h
    ld b, b
    ret nc

    jr nz, jr_006_6f5d

    jr nz, jr_006_6ffc

    ld [hl+], a
    ret nc

    and b
    ld b, e
    and e
    push af
    ld b, $03
    ld h, h
    ret nz

    ld h, b
    jr nc, jr_006_6fde

    jr nc, jr_006_703b

    ld e, l
    ld [hl-], a
    ld c, c
    add c
    ld c, b
    ld h, b
    sbc b
    dec b
    sub b
    ld d, h
    add b
    nop
    ld hl, sp+$02
    sbc a
    ldh a, [rTIMA]
    nop
    ret nc

jr_006_6fde:
    ld b, b
    ld hl, $5044
    db $fc
    ld l, a
    ld b, $80
    cpl
    ld b, b
    ld b, b
    and b
    ret nz

    jr nc, @+$56

    ld a, h
    ld e, d
    db $f4
    ld b, b
    ld l, a
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    inc c
    ld a, [hl+]
    ld d, h
    ld a, $9f
    ld l, a

jr_006_6ffc:
    add h
    ld a, [bc]
    rlca
    ld e, a
    ld a, a
    dec b
    dec e
    nop
    dec bc
    ld [bc], a
    add h
    dec sp
    db $10
    ld b, h
    ld [$ed60], sp
    ld b, b
    add b
    and c
    ld b, d
    ld a, [hl-]
    call z, Call_006_4730
    dec e
    ld [$1022], sp
    nop
    cp a
    ld bc, $0102
    add l
    ld b, d
    inc sp
    ld b, c
    inc c
    dec h
    db $10
    add $89
    adc b
    ld d, $6b
    add b
    xor l
    add [hl]
    add d
    ld d, b
    ld b, b
    jr nc, jr_006_7052

    ld d, b
    xor b
    ld d, b
    ld d, b
    adc b
    ld c, d
    add h
    cpl
    add hl, bc

jr_006_703b:
    ld h, b
    add b
    add b
    ld b, b
    ld hl, $3fa7
    add h
    ld bc, $4088
    ld h, b
    db $f4
    ld d, a
    jr nc, @+$41

    ld bc, $0211
    ld b, $9c
    ld h, [hl]
    rlca

jr_006_7052:
    ld de, $4511
    rla
    ld bc, $0108
    inc c
    ld b, c
    ld a, [bc]
    ld [bc], a
    inc c
    inc b
    ld a, [bc]
    dec d
    ld a, [bc]
    ld a, [bc]

jr_006_7063:
    ld de, $2152
    ld e, a
    ld b, $e0
    ld h, e
    ld a, b
    jr nc, jr_006_70e5

    db $e3
    ld c, a
    ld d, h
    add e
    ld c, a
    ret nz

    add b
    ret nz

    sbc b
    add e
    ld bc, $40a0
    ld e, h
    ld e, d
    inc a
    jr nz, jr_006_7063

    ld b, b
    ret nz

    adc b
    ret nc

    adc b
    add sp, -$70
    pop af
    ld b, b
    inc b
    ld bc, $045f
    add hl, hl
    add b
    add h
    ld e, a
    dec l
    inc e

jr_006_7092:
    cp b
    ld c, h
    sub [hl]
    db $10
    sbc e
    ld e, [hl]
    sub h
    sbc d
    inc de
    add c
    ld a, e
    ld bc, $cc03
    ld bc, $2a5d
    ld h, [hl]
    ld de, $1e65
    ld bc, $0c17
    sbc a
    ld a, [bc]
    dec c
    rla
    add hl, bc
    dec bc
    ld de, $1103
    daa
    ld [bc], a
    ld e, d
    inc b
    dec b

jr_006_70b8:
    ld [bc], a
    dec e
    sbc h
    ld h, b
    ld h, b
    ld h, e
    db $db

jr_006_70bf:
    ld l, l
    pop bc
    add hl, sp
    ld [hl], l
    jr nz, jr_006_7092

    or [hl]
    pop de
    push de
    ld a, $72
    adc b
    ld h, e
    ld c, h
    ld c, h
    ld h, c
    adc b
    add a
    ld l, [hl]
    ld b, h
    ld h, c
    or [hl]
    ld a, l
    pop bc
    ld b, e
    ld de, $b4ce
    pop de
    db $eb
    add e

jr_006_70de:
    ld c, h
    or l
    ld e, a
    ld a, [bc]
    db $e3
    ld e, a
    inc b

jr_006_70e5:
    sbc e
    call Call_006_67d1
    push de
    reti


    ld de, $1d25
    ld c, $ed
    ld b, b
    jr c, jr_006_70b8

    pop hl
    ld e, a
    ld d, h
    pop hl
    ld e, a
    ld hl, sp+$50
    sbc l
    db $dd
    ld h, b

Call_006_70fd:
    and c
    ld e, b

jr_006_70ff:
    ld c, l
    ld h, [hl]
    ld c, a
    inc de
    ld l, $e4
    sbc b
    jr jr_006_70de

    adc b
    ld d, c
    adc [hl]
    xor e
    ld b, a
    ld e, l
    inc hl
    ld a, e
    ld b, $24
    jr jr_006_7125

    inc d
    nop
    ret nz

    inc b
    push bc
    jr c, jr_006_70bf

    ret nz

    jp z, Jump_000_0404

    db $fd
    ld a, [bc]
    ld a, [$8171]
    ret nc

jr_006_7125:
    db $10
    ld [$0609], sp
    ldh a, [rSC]
    ld bc, $a602
    di
    add c
    ld [$0221], sp
    ld [de], a
    inc c
    adc h
    db $ed
    xor c

jr_006_7138:
    inc hl
    nop
    inc c
    dec h
    inc bc
    ld d, e
    jr nz, jr_006_70ff

    ld d, c
    ld e, a
    ld c, b
    adc [hl]
    dec l

jr_006_7145:
    add sp, $00
    db $10
    ret nc

    ldh [$e0], a
    add b
    rst $18
    ld h, b
    ld h, $3b
    rra
    ld b, $43
    cp b

jr_006_7154:
    xor l
    jp nz, $af02

    inc bc
    ld bc, $7987
    rrca
    rra
    db $db
    rrca
    jr c, jr_006_7173

    jr z, jr_006_71d3

    and e
    ld d, c
    inc e
    ccf
    ld d, b
    or l
    ccf
    inc de
    jp $1927


    ld l, e
    ld de, $718a

jr_006_7173:
    push de
    ld [c], a
    cp d
    call nz, Call_006_60de
    ld l, l
    adc a
    ld bc, $b695
    sbc c
    sbc l
    and c
    db $db
    and l
    xor c
    ld l, l
    xor l
    sub c
    sub l
    or [hl]

jr_006_7189:
    sbc c
    sbc l
    and c
    ld [hl], e
    jr jr_006_7138

    ld h, h
    nop
    pop de
    ld hl, sp-$0e
    xor a
    pop hl
    or l
    xor a
    jp nz, $f864

    ei
    ld b, $07
    ld bc, $070b
    rla
    ld [$1008], sp
    scf
    ld b, c
    db $10
    cpl
    adc d

jr_006_71aa:
    cpl
    dec d
    call nz, Call_000_0830
    ld [hl], e
    ld l, c
    ld c, b
    jr nc, @-$5c

    jr z, jr_006_7145

    cp l
    ld b, b
    inc bc
    xor c
    add hl, de
    sub b
    ld h, b
    daa
    dec l
    ld e, l
    ld a, [hl]
    adc [hl]
    or [hl]
    add l
    adc c
    adc l
    adc $91
    jr jr_006_723f

    sbc c
    ld e, e
    dec l
    jr jr_006_7154

    ld l, l
    adc c
    adc l
    sub c

jr_006_71d3:
    or h
    sub l
    sbc c
    dec e
    or c
    rra
    ld c, $2f
    ld a, [hl+]
    add a
    cpl
    add a
    jr nc, jr_006_71aa

    call $30cc
    and c
    dec hl
    ld b, d
    ld b, b
    jr c, jr_006_7189

    ld b, h
    ld hl, sp+$20
    ld [bc], a
    nop
    inc sp
    inc c
    add l
    ld b, d
    ld [bc], a
    or a
    sbc a
    ld d, h
    add e
    ld [$7d04], sp
    nop
    add hl, bc
    ccf
    rst $08
    rlca
    ld c, b
    db $dd
    ld a, a
    ld a, a
    ld b, b
    pop af
    dec d
    ld bc, $ffff
    rst $28
    rla
    ld b, c
    add hl, de
    ld a, c
    jr nz, jr_006_7217

    nop
    cp $cf
    pop af
    inc d
    ld c, d

jr_006_7217:
    ld bc, $c08f
    inc bc
    ld [hl], d
    ld bc, $e1c1
    inc b
    ld hl, sp+$10
    ldh [rNR41], a
    ret nz

    ld b, d
    add b
    add h
    ld bc, $0184
    ld d, a
    ld sp, $1f00
    nop
    rlca
    nop
    ld a, e
    nop
    db $fd
    nop
    sbc l
    ld [$07b2], sp
    add c
    jp hl


    ld e, $00
    ccf

jr_006_723f:
    jr nc, jr_006_7270

    nop
    ret nz

    nop
    nop
    ldh a, [rP1]
    ld a, b
    add b
    inc a
    ld b, b
    ld e, $a0
    rst $00
    ld bc, $0308
    adc a
    ld b, $01
    rrca
    ret nc

    ld b, $1c
    ld bc, $fc00
    ld b, a
    ld [hl], a
    db $fd
    ld d, h
    cp c
    db $fc
    ld c, l
    ld c, [hl]
    cp $ca
    xor a
    cp b
    sbc c
    ld bc, $07ff
    ld b, e
    rst $38
    rrca
    rlca
    rlca

jr_006_7270:
    rst $30
    rrca
    ccf
    rra
    ld h, l
    ld a, [bc]
    rst $38
    ld h, $18
    rra
    ld h, $ff
    nop
    sbc $f7
    rlca
    xor $9d
    ld [$fffd], sp
    nop
    xor l
    ldh [rP1], a
    ld hl, sp+$00
    cp $f4
    ld bc, $800f
    nop
    ld a, [hl]
    nop
    sbc [hl]
    nop
    and $f3
    inc b
    db $ed
    rst $38
    jp nc, $4f0e

    rst $08
    ld h, c

jr_006_729f:
    nop
    inc bc
    ld a, b
    ld e, $04
    nop
    ld bc, $f37e
    ld b, $01
    nop
    jp hl


    ld bc, $767c
    ld hl, sp+$05
    ld d, c
    ldh [$2f], a
    ldh a, [$3a]
    db $db
    inc hl
    and e
    ld [hl], b
    rrca
    nop
    ld bc, $05d5
    rrca
    cp $dc
    adc $54
    rrca
    ret z

    ld c, c
    ret nz

    sbc a
    db $ec
    inc bc
    ld [hl+], a
    dec e
    inc bc
    ld a, h
    db $ec
    inc b
    ld [hl], b
    pop hl
    inc c
    ld [bc], a
    call c, $be19
    ld bc, $0123
    sbc h
    ld e, $c0
    jr c, jr_006_729f

    daa
    cp b
    dec [hl]
    inc a
    ld a, [hl-]
    ld bc, $1f80
    ccf
    ld a, b
    ld a, a
    ld b, a
    ld c, b
    ld a, b
    ld bc, $0767
    ld e, b
    ld h, l
    jr c, @+$08

    ld [hl], l
    ld d, h
    cp a
    rra
    sbc a
    ldh [rHDMA1], a
    call $8d00
    inc b
    ld b, b
    ld c, c
    jp nc, $fad3

    sbc l
    rst $08
    nop
    rlca
    ld bc, $01ff
    pop hl
    inc de
    ld a, $e3
    ld d, a
    ld [$6f0f], sp
    ld e, $e0
    ld b, $16
    ld bc, $7f40
    ret c

    ld l, l
    ld bc, $41fa
    jr nc, jr_006_732f

    db $eb
    ld de, $a05e
    cp $ec
    dec sp
    cp [hl]
    ld c, $00
    ld a, [bc]
    add b
    add e

jr_006_732f:
    db $fd
    adc a
    and b
    pop bc
    ld l, l
    ld d, d
    rlca
    ld a, a
    ld b, c
    ld a, a
    ld d, h
    ld l, d
    ld h, b
    rst $38
    ldh [$fe], a
    inc a
    ld [c], a
    inc bc
    inc e
    ld [c], a
    sbc [hl]
    ld h, b
    sbc h
    ld h, d
    jr jr_006_734b

    sbc [hl]

jr_006_734b:
    ldh [$7a], a
    ccf
    cp a
    ld d, b
    jr nz, jr_006_7353

    cpl

jr_006_7353:
    or h
    jr jr_006_73b5

    ld h, c
    ld c, d
    rra
    ld bc, $06c0
    db $fd
    jr c, @-$39

    inc a
    pop bc
    inc bc
    db $10
    ld a, h
    add c
    call c, Call_000_001f

jr_006_7368:
    ldh a, [rIF]
    rst $28
    ld e, $df
    inc a
    cp [hl]
    ld a, b
    db $10
    ld a, h
    inc b
    ld a, b
    ld bc, $04ec
    rst $30
    ld bc, $4b20
    ld b, b

jr_006_737c:
    dec c
    ld b, d
    ld [$500a], sp
    adc a
    ld d, $5c
    ld a, b
    scf
    ld bc, $0d7e
    ld a, b
    inc d
    ld a, c
    dec b
    ld a, c
    inc d
    ld l, c
    inc b
    ld [hl], e
    xor a
    rla
    inc de
    inc b
    rrca
    add d
    ld [$08d2], sp
    adc d
    db $10
    ld a, [hl+]
    inc d
    add $74
    cp d
    push de
    ld [bc], a
    ret nz

    jr jr_006_7368

    pop bc
    ld a, $be
    ld d, b
    ld c, b
    ld d, l
    dec bc
    ld [$080c], sp
    ld [hl], $3e
    pop bc
    dec de

jr_006_73b5:
    xor d
    ld bc, $5500
    xor b
    xor d
    ld b, b
    ld d, l
    add b
    call nz, Call_000_0007
    jp nz, $0203

    xor d
    dec b
    pop hl
    ld d, l
    ld a, [bc]
    xor d
    dec d
    ld d, l
    ld a, [hl+]
    xor d
    inc d
    ld d, l
    jr z, jr_006_737c

    ld d, b
    ret z

    rrca
    add hl, bc
    dec bc
    ld d, l
    ld d, l
    xor d
    sbc h
    inc bc
    xor b
    inc de
    ld d, b
    and b
    inc sp
    ld b, c
    ld d, l
    ld [hl], d
    add d
    dec hl
    db $e3
    cp a
    add b
    ld h, a
    ld d, b
    and e
    adc b
    inc hl
    ld d, h
    inc bc
    xor b
    inc bc
    ld d, h
    ld [bc], a
    xor b
    ld [bc], a
    ld d, l
    ld l, l
    xor l
    ret c

    ld l, h
    ld b, h
    dec sp
    ld bc, $7380
    ld b, h
    cp e
    adc b
    ld [hl], e
    ld d, h
    add [hl]
    rra
    ld b, e
    ld d, h
    add c
    cpl
    add hl, sp
    ld d, h
    add e
    cpl
    inc l
    ei
    cp $2e
    ld bc, $18ee
    nop
    rst $08
    ld de, $20ce
    add a
    ld d, c
    ld a, [$3502]
    ld b, l
    ld a, [hl-]
    ld d, a
    ld b, l
    cp d
    db $e4
    inc bc
    nop
    ld e, a
    add [hl]
    ld a, [hl+]

jr_006_742b:
    add l
    ld d, c
    adc d
    ld a, [hl+]
    di
    ld [bc], a
    ld a, a

jr_006_7432:
    inc bc
    nop
    inc sp
    ld d, h
    dec bc
    xor b
    scf
    ld d, h
    dec hl
    adc b
    pop bc
    inc bc
    ld l, a
    adc b
    ld [hl], a
    db $10
    add b
    ld h, e
    rla
    ld d, l
    ld l, $a8
    ld [hl], a
    ld d, c
    rlca
    xor [hl]
    adc b
    ld a, a
    ld d, b
    rst $28
    ld [hl], d
    rst $08
    rst $28
    pop hl
    inc de
    rst $30
    adc b
    pop af
    ld [bc], a
    adc [hl]
    jr nz, jr_006_742b

    db $10
    ld b, l
    sub b
    ld bc, $902a
    ld b, l
    sbc b
    ld [hl+], a
    cp b
    ld b, l
    ld h, [hl]
    rst $08
    ld h, e
    ld b, $14
    ld b, l
    jr c, @-$54

    ld [hl], b
    ld h, a
    dec e
    ld [bc], a
    rst $38
    dec b
    dec bc
    jp hl


Call_006_7477:
    ld bc, $185a
    cp b
    ld h, c
    adc d
    inc de
    cp b
    add d
    ld a, b
    adc h
    inc bc
    ld [bc], a
    db $fd
    inc de
    ld [bc], a
    adc c
    ld e, $17
    inc b
    ei
    ld a, [hl+]
    ld a, [bc]
    sub c
    and l
    ld c, d
    ld c, d
    nop
    inc de
    ld [$200c], sp
    add c
    nop
    jr z, jr_006_7432

    ld a, [c]
    ld b, d
    db $d3
    ld bc, $e01f
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec bc
    or b
    nop
    nop
    rlca
    inc c
    xor h
    ld c, a
    db $fd
    di
    inc b
    ld bc, $ff1e
    rlca
    nop
    rlca
    add b
    ld a, a
    ld a, a
    ccf
    ld b, b
    add c
    inc bc
    ld bc, $ff00
    cp $ff
    ld [bc], a
    rst $28
    inc bc
    ld bc, $1b04
    dec de
    ld a, a
    nop
    nop
    jp $1b04


    cp $01
    ld bc, $1071
    ld b, e
    nop
    rst $20
    rrca
    ld bc, $36ff
    cpl
    nop
    ld [hl], $c0
    scf
    jr nz, jr_006_7504

    rra
    nop
    jr jr_006_74ed

    jr c, jr_006_7538

    inc a
    ld b, l

jr_006_74ed:
    inc a
    sbc h
    jr nc, jr_006_74f5

jr_006_74f1:
    ld bc, $1c03
    rrca

jr_006_74f5:
    or e
    inc e
    ld b, h
    dec sp
    ld b, b
    rrca
    rra
    ldh [rIE], a
    rrca
    jr jr_006_74f1

    ldh a, [rIF]
    inc bc

jr_006_7504:
    ld a, a
    add b
    add b
    rrca
    ei
    db $fc
    rlca
    ld b, e
    rst $38
    dec c
    ld d, $03
    cp $01
    nop
    cpl
    rst $18
    ldh [$30], a
    ld hl, sp-$33
    inc a
    ld [hl-], a
    ld l, e
    adc $0a
    adc [hl]
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
    jr jr_006_7583

    dec [hl]
    ld b, [hl]
    dec a
    ld b, a
    db $d3
    ld c, b
    scf
    ld c, c

jr_006_7538:
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
    ld d, $17
    ld sp, $00ef
    ld bc, $000f
    sub c
    ld h, b
    add [hl]
    ld a, b
    adc h
    ld e, b
    ld a, e
    ld bc, $5d89
    ld [hl], a
    ld h, b
    db $e4
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

jr_006_7583:
    ld l, d
    rra
    ld bc, $4056
    ccf
    ld bc, $3f55
    rlca
    ld d, e
    dec a
    add $1d
    and [hl]
    rlca
    ld bc, $3d86
    ld b, [hl]
    inc bc
    ld bc, $bdc6
    add [hl]
    db $fd
    jp nc, Jump_006_5902

    ld a, d
    ld bc, $5902
    ld b, b
    ld bc, $d863
    ld h, l
    ret c

    ld [hl-], a

jr_006_75ab:
    ld h, c
    call c, $6201
    ld h, b
    ld bc, $6e96
    sub $2e
    pop bc
    ld bc, $36ca
    ld [$2016], a
    ld bc, $3d52
    ld d, e
    db $e4
    ld bc, $0514
    ld d, h
    ld h, e
    add $ec
    ret


    db $ed
    inc bc
    ld [hl-], a
    cp e
    call nz, Call_006_465b
    add a
    ld h, e
    ld h, d
    call c, $06ac
    ld bc, $b237
    ld bc, $2547
    ld b, [hl]
    or b
    ld bc, $718f
    adc l
    ld a, d
    adc [hl]
    ld b, c
    ld a, b
    ld bc, $cd8f
    ld bc, $700b
    adc d
    inc b
    ld d, [hl]
    jr nc, jr_006_75ab

    ld a, b
    sub d
    ld a, b
    jp z, Jump_006_7630

    nop
    call nz, $b20b
    ld c, h
    sbc [hl]
    ret


    ld [bc], a
    rst $08
    xor h
    and d
    nop
    rlca
    inc bc
    nop
    rrca
    nop
    ccf
    xor h
    add hl, bc
    ld bc, $8d00
    ld a, a
    ld hl, sp+$12
    rst $18
    ret nz

    nop
    inc bc
    jr nc, @-$3e

    adc $f0
    ldh a, [$fe]
    pop bc
    ld a, [bc]
    nop
    ld [bc], a
    cp $fc
    ld [bc], a
    ld e, e
    cp a
    ret c

    inc de
    dec a
    dec b
    add b
    ld a, a
    nop
    sbc a
    ld a, a
    and c
    ld a, a
    and e

Jump_006_7630:
    ld a, a
    sub e
    ld a, a
    ld [hl], e
    add [hl]
    ld bc, $0f03
    ld bc, $c1fe
    cp $81
    sbc c
    inc bc
    ld bc, $c061
    ld bc, $7f8c
    adc a
    ld a, a
    ld [hl], b
    sbc b
    ld bc, $7fbc
    ld [hl], e
    add b
    ld bc, $1d03
    ld sp, $f1fe
    cp $19
    add e
    ld bc, $fe3d
    ld bc, $0190
    ld b, e
    ld l, $40
    ccf
    inc e
    ld a, [hl]
    ld e, $68
    dec e
    ld [hl], c
    dec bc
    ld [hl], e
    rlca
    ld h, a
    rrca
    ld h, c
    rrca
    db $10
    ld e, h
    ld a, [hl]
    db $76
    inc a
    cp [hl]
    adc h
    sbc $c4
    xor $e4
    or $f0
    ld a, [$fac0]
    ld h, c
    ld bc, $1d61
    ld bc, $081f
    ld [hl], b
    inc c
    ld a, a
    nop
    add c
    cp a
    ret nz

    jp nz, $81c4

    dec de
    sbc $0c
    sbc $14
    ld c, $94
    sbc e
    cp $81
    add sp, -$29
    nop
    rra
    ld l, b
    rra
    ld [hl], b
    rrca
    ld a, b
    rlca
    ld h, b
    ld l, [hl]
    rra
    ld bc, $1060
    or l
    cp $2c
    sbc $34
    ld b, $ce
    inc a
    add $04
    cp $01
    add d
    inc de
    ld h, b
    sub d
    rra

Jump_006_76ba:
    ld b, c
    ccf
    inc de
    inc b
    ld c, e
    rra
    inc h
    ccf
    nop
    adc l
    cpl
    ld d, e
    ccf
    ld a, [$3301]
    ld a, d
    dec [hl]
    daa
    inc sp
    add [hl]
    ld bc, $02fd
    ld bc, $3389
    or c
    rra
    db $fc
    jp Jump_000_0c01


    ldh a, [$7c]
    ld bc, $c208
    ld e, a
    inc de
    push bc
    ld bc, $9ff0
    ld c, b
    inc bc
    or c
    ld sp, $f215
    db $fc
    xor $04
    inc hl
    rrca
    inc sp
    ccf
    ccf
    nop
    ld c, $40
    ld bc, $0800
    ldh a, [$37]
    db $f4
    ld hl, sp+$03
    and b
    ld c, $01
    ld e, a
    ldh a, [$e3]
    ld bc, $8ee0
    ld bc, $48c0
    ld bc, $ffb8
    rrca
    cp $02
    db $fc
    inc b
    ld bc, $333a
    nop
    ld b, e
    cp e
    ld b, c
    ccf
    ld a, [hl]
    ld bc, $0ade
    ld bc, $c901
    jp hl


    sub b
    ld a, e
    ld a, [hl]
    dec bc
    ld bc, $47b4
    ld l, a
    ld c, h
    inc de
    ld b, h
    nop
    inc bc
    rra
    ld [hl-], a
    ld c, $0e
    cp $3e
    jp z, Jump_000_1303

    nop
    rst $18

jr_006_773b:
    dec hl
    ld [bc], a
    ld e, c
    ld h, e
    ld l, a
    ld e, e
    inc bc
    rst $10
    inc hl
    inc c
    add b
    cp a
    ret nz

    rst $18
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$05
    db $fc
    ld bc, $012e
    cp b
    ld b, d
    ld a, l
    add d
    cp l
    jp nz, $e2dd

    db $ed
    ld a, [c]
    push af
    ld a, [$fef9]
    rrca
    dec [hl]
    ld h, a
    adc a
    ld bc, $0601
    call nc, $ad3e
    ret nz

    ld h, b
    db $fd
    nop
    ei
    nop
    rst $30
    ld a, [bc]
    nop
    rst $28
    nop
    rst $18
    nop
    rrca
    ld a, $00
    dec a
    nop
    dec sp
    nop
    scf
    ld a, [bc]
    nop
    cpl
    nop
    rra
    ld h, b
    rrca
    or a
    cp [hl]
    ld a, [hl]
    sbc $3e
    ld bc, $1eee
    or $0e
    ld a, [$0406]
    sub [hl]
    add a
    nop
    cp [hl]
    daa
    push hl
    inc bc
    ldh a, [$f3]
    ret nz

    rst $08
    add c
    cp a
    rlca
    add hl, bc
    ld hl, sp-$08
    ret nz

    rst $00
    jr c, jr_006_773b

    ld d, b
    ld a, b
    jp nz, $ff15

    ret nz

    ret nz

    inc bc
    dec bc
    inc bc
    rst $38
    rra
    ret


    ld [bc], a
    ld h, h
    rst $38
    inc h
    inc [hl]
    rrca
    inc c
    rrca
    rrca
    ld bc, $74f1
    ldh a, [$eb]
    cp c
    ld d, l
    rra
    dec h
    daa
    add hl, de
    ld e, l
    ld [hl], d
    cp a
    ld [hl], a
    rra
    rst $18
    adc a
    rst $28
    rst $00
    rst $30
    db $e3
    ei
    dec bc
    ld [hl], a
    ld d, $6f
    nop
    ld l, h
    ld de, $0963
    ld [hl], e
    inc c
    ld [hl], c
    ld b, $78
    inc bc
    ld a, h
    add d
    rst $00
    jr jr_006_781d

    ld a, d

jr_006_77eb:
    db $fd
    jr c, @+$81

    jr nc, jr_006_77eb

    db $e4
    di
    ld [$f007], sp
    rrca
    ld sp, hl
    ld [$b835], sp
    db $f4
    ld [bc], a
    db $fc
    ld [$13f1], sp
    rst $20
    inc h
    rst $08
    ld d, b
    adc a
    ld b, b
    sbc a
    and d
    dec e
    ld b, $39
    rla
    ld [hl], c
    sbc a
    ret nz

    ld e, $ef
    jr nz, @-$07

    db $10
    ei
    ld a, [bc]
    ld sp, hl
    ret z

    db $fd
    db $e4
    db $fd
    ld h, e
    ei

jr_006_781d:
    ld [hl], c
    db $fd
    ld sp, $010a

jr_006_7822:
    jr c, jr_006_7822

    jr jr_006_7844

    ld bc, $7f00
    inc bc
    ld bc, $3f37
    db $10
    adc l
    ld l, d
    sub a
    add a
    ld a, h
    ld hl, sp+$17
    ld bc, $09f0
    ld hl, $02c0
    add hl, sp
    ld b, e
    jr c, jr_006_7844

    ld a, b
    ld [bc], a
    ld a, h
    add b
    ld a, a

jr_006_7844:
    nop
    ld e, a
    ld h, l
    db $fc
    inc b
    cp $e2
    ld e, $05
    ld b, d
    ld a, $02
    rst $38
    ld bc, $0108
    db $10
    cp $06
    ld bc, $7c82
    ld bc, $017d
    inc bc
    ld b, l
    add hl, sp
    inc bc
    cp e
    add c
    add b
    dec b
    pop af
    ldh a, [$f0]
    db $fc
    db $fc
    or e
    rla
    ld bc, $01e7
    inc b
    inc e
    rla
    ld hl, sp-$08
    push af
    ld l, [hl]
    ld bc, $cc01
    ld a, b
    inc bc
    ld bc, $c004
    inc bc
    rlca
    ldh [$e7], a
    xor e
    sub e
    inc bc
    add a
    add a
    adc a
    rst $08
    ld e, a
    rst $18
    ld l, $01
    ld c, a
    ld [de], a
    rst $28
    cpl
    rst $28
    daa
    rst $20
    add sp, -$19
    ret nz

    rst $08
    nop
    rra
    ccf
    add hl, bc
    adc a
    ld h, b
    ld b, $66
    call nz, $83d9
    db $dd
    pop hl
    inc c
    ld c, h
    ret nz

    dec b
    rrca
    jp $9918


    daa
    rst $30
    ld [$f313], sp
    ld [$8ef8], sp
    dec hl
    ld [bc], a
    ld bc, $0276
    ld h, $00
    ld h, [hl]
    sbc h
    dec [hl]
    dec b
    ld c, b
    rra
    ld b, e
    ld c, h
    ld [hl], $80
    call z, $0103
    ld [de], a
    and c
    pop hl
    ld e, $24
    inc sp
    sbc c
    ld bc, $4212
    jp $cc3c


    cpl
    ld b, $01
    ld [hl+], a
    jr c, @+$28

    ld [bc], a
    ld bc, $e6da
    ld b, c
    ei
    add [hl]
    or e
    ld c, l
    nop
    db $fc
    db $fd
    ld hl, sp-$05
    ldh a, [$f7]
    ldh [$ef], a
    jr nc, @-$3e

    rst $18
    res 0, b
    adc a
    nop
    ld a, h
    ld a, a
    dec b
    ld a, [hl]
    inc h
    dec b
    ld l, a
    ld l, [hl]
    inc bc
    push bc
    ld a, $eb
    ld bc, $4002
    add e
    rst $38
    rra

jr_006_7907:
    rra
    add e
    db $e3
    ldh a, [$39]
    db $fc
    ld e, $13
    sbc a
    inc bc
    ccf
    ld bc, $47f3
    ccf
    ccf
    ld b, $e5
    ld h, e
    di
    cp c
    db $fd
    ld d, c
    ld hl, $bf80
    ld bc, $736d
    ld l, h
    xor a
    db $10
    ld bc, $40cf
    sbc a
    ld [hl+], a
    sbc l
    ld b, $b9
    rst $08
    inc de
    inc bc
    res 5, a
    push hl
    add [hl]
    db $fc
    ld b, c
    db $e3
    jr jr_006_7907

    ld e, [hl]
    cp a
    inc e
    cp $0c
    rst $18
    daa
    inc hl
    rla
    ldh [rIF], a
    ldh a, [rNR24]
    call z, $64fe
    cp $04
    ld [hl], $8c
    add $94
    adc $34
    adc [hl]
    ld h, h
    ld e, $c0
    ld a, $01
    ld b, l
    ld b, c
    ld a, $a2
    sbc h
    add b
    pop bc
    nop
    pop bc
    ret nz

    add d
    ld sp, hl
    rlca
    xor a
    ld h, h
    ei
    rlca
    xor a
    adc [hl]
    inc de
    ld a, a
    add c
    inc de
    ccf
    jr nz, jr_006_7992

    ret nc

    ret nc

    rrca
    rrca
    inc b
    add e

jr_006_7979:
    nop
    cp $03
    ld h, b
    ld bc, $f08b
    ret nz

    pop bc
    ldh [rNR31], a
    pop hl
    ld a, [c]
    pop af
    db $fd
    dec e
    ld bc, $f3f4
    sub b
    ld bc, $55e7
    db $10
    add b

jr_006_7992:
    ret nz

    ld b, b
    ld bc, $e001
    jr nz, jr_006_7979

    daa
    rst $20
    add b
    ld a, a
    ld l, l
    rst $08
    or [hl]
    ld sp, hl
    jp hl


    rst $10
    jr nc, jr_006_79e6

    add c
    rlca
    rrca
    rrca
    ccf
    ldh a, [rSB]
    add sp, $0a
    nop
    ld a, [bc]
    jp hl


    and c
    ld bc, $0042
    ld d, b
    nop
    inc d
    nop
    inc b
    jp nz, $db01

    inc h
    push hl
    ld a, e
    add h
    ld a, d
    add l
    xor $11
    rst $28
    db $10
    cp a
    ld b, b
    cp l
    ld b, d
    ld e, l
    and d
    ld [hl], l
    adc d
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    add e
    add hl, bc
    xor a
    ld d, b
    db $eb
    inc d
    ld h, c
    add hl, de
    ld bc, $fe24
    add h
    ret z

    ld bc, $4380
    ld b, b
    cp $42

jr_006_79e6:
    cp $30
    and d
    cp $3d
    ld a, [hl+]
    nop
    ld [hl+], a
    ld c, $00
    ld de, $1500
    add a
    jr z, jr_006_7a40

    nop
    ld c, c
    ld e, a
    and b
    ld l, [hl]
    sub c
    xor d
    ld d, l
    ld sp, $45ba
    dec a
    rst $30
    ld [$398c], sp
    or a
    ld c, b
    inc bc

jr_006_7a09:
    push de
    jr jr_006_7a36

    db $dd
    ld [hl+], a
    ld c, a
    ld l, d
    sub l
    inc c
    cp $01
    or l
    ld c, d
    ld c, c

jr_006_7a17:
    and b
    inc bc
    cp $90
    cp $54
    cp $44
    adc h
    dec a
    ld [$fe3b], sp
    ld [hl], e
    ld c, b
    ccf
    inc bc
    db $e3
    cp d
    call $8932
    ld [hl-], a
    and [hl]
    call c, $3f4c
    sub e
    jr jr_006_7a3b

    rst $38

jr_006_7a36:
    jr z, jr_006_7a17

    jr nc, jr_006_7a09

    rrca

jr_006_7a3b:
    sub e
    ccf
    jp nc, Jump_000_0f02

jr_006_7a40:
    ld [hl], h
    ccf
    sbc h
    ld l, a
    rst $38
    add hl, de
    ld bc, $0fd0
    ccf
    pop hl
    rst $10
    rst $38
    ldh [$db], a
    dec h
    ld bc, $8123
    rst $38
    ld b, $ff
    ld h, c
    rst $38
    inc d
    nop
    pop de
    jr nc, @+$01

    rlca
    rst $38
    ld h, b
    rst $38
    add b
    ld c, $ff
    add hl, sp
    rst $38
    ret nz

    add b
    ld a, b
    rrca
    ldh a, [$f8]
    rlca
    inc c
    ccf
    ret nz

    di
    inc c
    add hl, bc
    rst $20
    ld bc, $7c18
    add e
    db $e3
    inc e
    inc e
    db $e3
    adc h
    sbc c
    dec a
    jp nz, $9f0b

    ld l, h
    ld h, b
    ld c, l
    add hl, bc

jr_006_7a86:
    rst $08
    dec e
    jr nc, jr_006_7a86

    inc bc
    ld b, a
    xor [hl]
    nop

jr_006_7a8e:
    dec de
    ld a, [hl]
    add c
    ld sp, hl
    ld b, $9e
    ld h, c
    ld [hl], $8f
    ld [hl], b
    dec d
    inc de
    ret c

    ld sp, $7f1d
    add b
    ld [$39c6], sp
    ccf
    ret nz

    cp e
    ld d, c
    rlca
    xor [hl]
    ld c, e
    inc c
    db $ec
    ld b, c
    jr jr_006_7a8e

    inc bc
    inc e
    nop
    db $e3
    ld c, $00
    ld [$c200], sp
    jr c, jr_006_7ac4

    ld h, b
    xor l
    nop
    ld a, [$9c07]
    ld c, a
    nop
    ccf
    rlca
    dec d

jr_006_7ac4:
    ldh a, [$c0]
    ret nz

    ld hl, sp+$46
    cp d
    add [hl]
    ldh a, [$cf]
    rla
    ld [$f797], sp
    ld bc, $a31c
    rra
    ret


    ldh [$5e], a
    ld hl, sp+$10
    ld hl, sp+$13
    ld [hl], b
    ld hl, sp-$10
    ld e, c
    ld bc, $e317
    stop
    ldh a, [$f8]
    pop de
    ld b, $01
    cp d
    reti


    and d
    jp hl


    rra
    jr nz, jr_006_7b10

    ld e, l
    reti


    sub a
    ld a, d
    adc e
    push hl
    pop af
    cp $06
    rrca
    ld bc, $1f60
    ld b, $1e
    ld bc, $fe06
    ld b, $01
    ret nz

    dec l
    db $10
    rrca
    ld hl, $3c1f
    dec de
    inc bc
    ld b, e
    ccf

jr_006_7b10:
    ld bc, $0549
    ld bc, $ecd2
    nop
    sub $05
    db $ec
    db $10
    xor e
    ei
    rst $38
    inc b
    push af
    sub a
    rst $18
    dec bc
    rst $38
    inc bc
    reti


    cpl
    ld e, l
    pop af
    ld a, $31
    ld bc, $3ec0
    or b
    ld bc, $8005
    ld a, [hl]
    db $fc
    and b
    dec a
    rst $30
    rst $30
    db $e3
    ld b, b
    db $eb
    ld bc, $ddc1
    add h
    ld bc, $0d20
    nop
    ret


    ld b, b
    db $dd
    nop
    sbc h
    cp [hl]
    ld d, d
    add b
    ld bc, $15a7
    ld [hl], c
    ld sp, $be01
    jp nz, Jump_000_3e00

    ld a, a
    sub d
    nop
    ld h, e
    ld [hl], e
    jr jr_006_7b9b

    ld e, a
    add c
    ld bc, $1f6f
    ld d, a
    cpl
    add hl, bc
    rlca
    ld [hl], h
    add c
    sbc $fe
    ld [$deee], sp
    sub $ee
    add hl, bc
    add hl, bc
    ld e, a
    ccf
    ld e, a
    add a
    rra
    ld d, b
    cpl
    ld a, a
    or $01
    sbc a
    inc b
    rra
    ld [de], a
    xor $ab
    jp z, $0e16

    xor l
    rla
    ld [$d20f], sp
    push bc
    ei
    ld b, e
    cp $b0
    dec e
    jp nc, $ca0c

    ld c, $04
    jp nz, $fa04

    ld c, e
    ld bc, $59f2
    ld b, c

jr_006_7b9b:
    rra
    nop
    ld a, [$1548]
    dec hl
    rra
    add $4b
    rst $18
    ld a, $5f
    ld [$8803], sp
    add hl, de
    jp z, Jump_000_0c5f

    sbc b
    dec hl
    ld c, c
    ld bc, $e900
    ld [bc], a
    rra
    ld e, $15
    inc c
    ld bc, $f719
    ld [$8000], sp
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    inc b
    ret nc

    nop
    nop
    inc bc
    cp b
    ret nz

    ld h, b
    ld [$04ad], a
    ld bc, $ff1e
    add hl, bc
    nop
    ld l, $fe
    cp $36
    ld hl, sp-$07
    di
    rst $30
    rst $28
    rst $28
    rst $18
    rst $18
    sbc a
    cp a
    cp l
    cp a
    ldh [$e0], a
    rlca
    rra
    nop
    add hl, de
    ld a, a
    rst $38
    ld e, a
    rst $38
    inc bc
    inc bc
    ldh a, [$79]
    db $fc
    ld [bc], a
    dec hl
    db $fd
    jp nz, $3f03

    ccf
    pop hl
    adc a
    rst $08
    rst $20
    rst $30
    ei
    ei
    db $fd
    db $fd
    ld a, h
    cp $5e
    cp $64
    ld b, e
    inc c
    nop
    db $fc
    db $fd
    ld bc, $5c38
    ld a, h
    dec [hl]
    jr nc, @+$7d

    ld [hl], c
    db $76
    ld [hl], b
    db $f4
    ldh a, [$f4]
    ld a, [c]
    db $f4
    ldh [$f2], a
    ld bc, $55c7
    rst $38
    dec b
    rra
    nop
    ldh [rLCDC], a
    cp a
    inc d
    dec bc
    nop
    ld [bc], a
    ld b, b
    nop
    ld [hl], b
    ld [hl], c
    ld e, l
    rrca
    ld [hl-], a
    ld d, b
    db $fc
    nop
    inc bc
    ld bc, $14fe
    add sp, $00
    and b
    ld bc, $0780
    rst $00
    ld c, $9f
    ld b, $6f
    ld b, a

jr_006_7c48:
    or a
    rlca
    sub a
    rlca
    rla
    daa
    rla
    inc bc
    daa
    ld bc, $847f
    nop
    ccf
    cp a
    add hl, de
    nop
    sbc a
    sub c
    rst $18
    or e
    ld d, c
    nop
    ld sp, hl
    ld [hl], e
    ld l, h
    nop
    ld h, c
    and e
    ld bc, $f7f1
    and $85
    and b
    db $e4
    ret z

    and $d3
    add b
    rst $08
    ld b, b
    rst $18
    ld b, b
    rst $08
    ld b, c
    jp nc, $9ea0

    ld hl, $0068
    add e
    nop
    ld [hl], e
    nop
    rlca
    jr nz, jr_006_7c48

    nop
    adc b
    ld b, b
    ccf
    nop
    db $fc
    ld b, d
    adc e
    nop
    ld l, l
    nop
    rst $20
    nop
    ldh a, [rSC]
    pop de
    nop
    ld h, c
    ld [$0065], sp
    sbc a
    inc sp
    sub a
    ret nz

    sub e
    dec c
    add hl, bc
    inc sp
    nop
    ld a, c

jr_006_7ca2:
    ld bc, $01fd
    ld sp, hl
    ld b, c
    dec h
    ld [bc], a
    cp h
    ld d, c
    sbc b
    nop
    rst $08
    db $ec
    rst $28
    ld l, a
    jr jr_006_7ca2

    ld h, a
    rst $30
    ld bc, $f7c7
    rlca
    push af
    rst $30
    rst $20
    rst $28
    xor $2e
    ld bc, $e638
    rst $28
    di
    di
    db $ec
    db $ec
    sbc $df
    add b
    cp [hl]
    add b
    cp a
    sub b
    xor a
    add b
    xor [hl]
    ld bc, $d7c0
    inc c
    ld b, b
    db $e3
    nop
    jr jr_006_7d23

    nop
    ld b, $63
    nop
    ld b, a
    nop
    ret nc

    ld e, c
    inc bc
    db $10
    db $ed
    nop
    rst $28
    nop
    rst $18
    ld [hl], b
    ld l, c
    rrca
    pop af
    nop
    ld h, d
    dec b
    ld e, c
    inc b
    db $db
    pop hl
    nop
    ei
    nop
    db $fd
    nop
    cp [hl]
    nop
    ld a, [hl]
    inc b
    ld a, d
    nop
    cp d
    add [hl]
    ld bc, $f501
    ld bc, $312f
    adc h
    rst $10
    and l
    ei
    cp e
    ret nz

    ld bc, $fbb3
    rst $20
    rst $20
    rrca
    dec de
    sbc e
    dec a
    ld a, l
    inc b
    db $dd
    rra
    sub a
    ld e, $fc
    dec e
    xor a
    sbc a
    ld l, a
    rrca
    ld l, [hl]

jr_006_7d23:
    ld c, $e4
    inc b
    ldh [rSB], a
    ld l, b
    ld bc, $02e9
    add sp, $03
    adc $da
    ld d, c
    db $e3
    ld a, a
    inc bc
    add a
    ld b, e
    inc sp
    ld bc, $0043
    db $ed
    ld [$20f0], sp
    rlc b
    inc bc
    ld hl, sp+$58
    ld [hl], c
    cp $ff
    nop
    db $fc
    cp $fc
    db $fc
    ld [bc], a
    jp hl


    nop
    ld h, b
    db $76
    rrca
    sub c
    db $ec
    inc de
    ld a, a
    inc bc
    rra
    ccf
    sbc a
    sbc a
    inc bc
    add e
    ld h, d
    add hl, bc
    add hl, de
    ldh [$f0], a
    rst $20
    pop hl
    and $c0
    pop hl
    add b
    db $db
    adc b
    add a
    ld a, [$fbfc]
    ld hl, sp+$3b
    jr c, jr_006_7d84

    sub b
    inc bc
    ld b, b
    dec bc
    ld b, b
    ld c, e
    and b
    dec bc
    ldh [$0c], a
    add hl, hl
    nop
    cp a
    ld l, h
    ccf
    ld bc, $df00
    ld h, a

jr_006_7d84:
    rra
    ld bc, $0cfd
    rra
    ld a, [$03f8]
    rst $30
    ld l, e
    ldh a, [rSB]
    sub a
    db $ec
    ldh [$da], a
    ret nz

    ret c

    inc bc
    db $10
    rlca
    ret nc

    rlca
    add b
    rlca
    jr z, jr_006_7daa

    xor b
    dec bc
    ld a, h
    inc c
    di
    inc bc
    jr @-$45

    call c, Call_006_53db

jr_006_7daa:
    xor b
    ld e, h
    ld a, [hl+]
    cp b
    ret nc

    db $10
    ldh [$83], a
    ld b, b
    dec sp
    nop
    ld a, b
    db $fd
    ld sp, $3079
    ld a, b
    daa
    ld [hl], b
    rrca
    ld b, b
    rra
    nop
    rst $38
    ld bc, $008f
    rst $18
    add $cf
    add [hl]
    adc a
    ld [hl], d
    rlca
    ld hl, sp+$33
    add c
    db $fc
    dec c
    add b
    nop
    rrca
    nop
    xor [hl]
    nop
    dec e
    nop
    rra
    ld h, l
    inc c
    ld a, [bc]
    ld a, [hl+]
    dec b
    inc b
    cp e
    ld bc, $60b8
    xor $00
    dec c
    ldh [rDIV], a
    ldh a, [rTIMA]
    ldh a, [rP1]
    ldh a, [$0a]
    add sp, $01
    sbc a
    jr jr_006_7e5b

    ld h, b
    reti


    ld [hl], c
    rst $18
    xor a
    ld [hl], c
    rrca
    rst $28
    rrca
    ld [hl], a
    rlca
    rst $30
    rlca
    dec de
    inc bc

Jump_006_7e03:
    xor l
    ld bc, $c0d6
    or [hl]
    add b
    or a
    ldh [rSB], a
    cp e
    add b
    rst $18
    ld b, $c0
    rst $20
    ldh [$f8], a
    ld hl, sp+$2a
    ld l, [hl]
    ld hl, sp+$63
    jr c, jr_006_7e1c

    cp h

jr_006_7e1c:
    ld bc, $08fe
    nop
    ld a, $00
    ld a, e
    ld e, $0d
    inc bc
    ld a, c
    ld bc, $c101
    rra
    dec b
    rrca
    ld d, l
    rst $38
    ldh [rSC], a
    ld bc, $0007
    ld d, b
    ld hl, sp-$10
    inc b
    rrca
    rst $28
    nop
    rrca
    rst $00
    ld bc, $4fe0
    sub b
    ld bc, $0701
    rrca
    db $e3
    ld bc, $8e1e
    ld bc, $033f
    ld c, a
    or l
    ld bc, $00b6
    db $76
    sbc b
    ld bc, $fd99
    ld bc, $ddc0
    rrca
    rrca

jr_006_7e5b:
    add a
    add b
    add sp, $3c
    ldh [$ef], a
    inc bc
    ld bc, $1879
    ld bc, $0178
    add c
    ld hl, sp+$02
    inc h
    ld a, [$0103]
    ldh [rHDMA3], a
    ld a, a
    dec b
    ld e, a
    ld bc, $1500
    nop
    ret nz

    xor b
    cp $aa
    ret z

    ld bc, $6300
    ld d, b
    db $fd
    nop
    ld d, h
    nop
    ld bc, $388a
    cp a
    xor d
    ld bc, $1c4f
    ret nz

    rrca
    ld b, b
    ld e, a
    ld a, [bc]
    jr nz, jr_006_7ec3

    ldh [$af], a
    inc bc
    ld bc, $0070
    dec bc
    inc bc
    ei
    sub $03
    ld bc, $5746
    rst $00
    add l
    nop
    add c
    ld d, a
    ld [bc], a
    inc bc
    ld [$03ef], a
    ld bc, $feaa
    rst $08
    rlca
    ld bc, $06bf
    ld h, $01
    xor a
    ld d, a
    ld [$e0a0], sp
    xor e
    ei
    ld e, c
    ld bc, $a457
    nop
    ld c, a

jr_006_7ec3:
    sub e
    ld b, l
    jp nc, $0102

jr_006_7ec8:
    ld a, e
    dec h
    ld [bc], a
    ld bc, $06e5
    ret


    cp $52
    adc a
    ldh [rSB], a
    ldh a, [$c0]
    call $be98
    jr jr_006_7f5a

    db $db
    cp [hl]
    inc c
    sub $e0
    jp z, $8bdf

    db $fc
    inc bc
    db $fc
    ld l, a
    rst $20
    scf
    ld l, a
    ccf
    jr nc, jr_006_7efe

    nop
    add c
    adc d
    ld e, $aa
    inc c
    and $02
    ld c, $f0
    inc hl
    rst $20
    jr c, @-$7e

    rst $18
    rrca
    cp a

jr_006_7efe:
    cp b
    ld h, b
    xor b

Call_006_7f01:
    cp h
    xor d
    or e
    and b
    cp b
    add a
    add a
    ld bc, $0073
    ld a, l
    rrca
    add c
    add e
    xor c
    ld a, l
    ret nz

    adc e
    rra
    rra
    ei
    di
    or $39
    ei
    cp $3f
    nop
    ld c, a
    inc bc
    rlca
    add c
    reti


    add hl, de
    inc c
    cp [hl]
    inc c
    dec a
    ld a, a
    inc h
    rrca
    ld [$7f1d], a
    adc b
    ld h, h
    ld sp, hl
    inc b
    adc a
    rra
    ld b, b
    jp nc, $01a1

    jr nz, jr_006_7ec8

    inc b
    pop bc
    nop
    jr nc, jr_006_7f46

    ld d, $f0
    ld a, [bc]
    rst $20
    sub [hl]
    adc a
    db $10
    rrca

jr_006_7f46:
    rlca
    ld b, $08
    rlca
    jr z, @-$0b

    adc $03
    adc a
    inc bc
    nop
    and l
    ld b, d
    cp h
    add b
    cp a
    add b
    cp l
    sub b
    ld [hl], h

jr_006_7f5a:
    xor l
    and l
    ld l, a
    xor a
    jr nz, jr_006_7fcf

    rrca
    rst $18
    inc d
    cp b
    jr nz, jr_006_7f72

    add b
    inc b
    call z, Call_006_4303
    ret c

    adc c
    ld l, a
    nop
    ld hl, sp-$03
    inc d

jr_006_7f72:
    ld c, $02
    nop
    db $10
    add hl, de
    ld h, l
    ldh [rSCX], a
    dec c
    ld c, b
    ld l, a
    cp $00
    sbc $3a
    inc b
    jp c, $b512

    ld a, d
    sbc a
    ld l, a
    nop
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    push hl

jr_006_7fab:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_006_7fab

    ld a, [de]
    inc de
    ld b, $00
    ld hl, $7fc3

jr_006_7fb8:
    cp [hl]
    jr nz, jr_006_7fbf

    ld a, b
    pop hl
    ld [hl+], a
    ret


jr_006_7fbf:
    inc b
    inc hl
    jr jr_006_7fb8

    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    add d
    add e
    add h

jr_006_7fcf:
    add [hl]
    add a
    adc b
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    sub b
    sub d
    sub e
    sub h
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    xor c
    xor b
    xor h
    ld de, $9800
    ld hl, $4a2d
    ld b, $0e
    ld c, $12
    jp Jump_000_24e7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
