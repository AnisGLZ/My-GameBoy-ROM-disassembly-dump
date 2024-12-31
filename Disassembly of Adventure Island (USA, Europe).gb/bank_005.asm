; Disassembly of "Adventure Island (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    inc h
    ld b, b
    jp hl


    ld b, e
    bit 0, a
    ld [de], a
    ld c, e
    ld h, l
    ld c, [hl]
    ld de, $b051
    ld d, h
    ld [hl], l
    ld d, [hl]
    ld a, h
    ld e, c
    push af
    ld e, h
    or l
    ld h, b
    and b
    ld h, h
    and c
    ld l, b
    dec [hl]
    ld l, h
    ld l, a
    ld l, a
    ld bc, $5573
    db $76
    ld d, l
    db $76
    dec b
    dec b
    stop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld bc, $03fc
    ld hl, sp+$03
    ld hl, sp+$07
    ldh a, [rTMA]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rra
    add b
    rrca
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld hl, sp-$05
    ld c, $e0
    ld c, $e0
    ld e, $c0
    ld e, $c0
    dec a
    add c
    dec a
    add c
    ld a, l
    ld bc, $017d
    ld hl, sp-$05
    ld hl, sp-$05
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    dec b
    inc b
    cp $00
    cp $00
    cp $00
    cp $00
    cp $01
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $fbfc
    inc bc
    ei
    inc bc
    ei
    inc bc
    di
    inc bc
    db $e3
    inc bc
    db $eb
    inc bc
    db $eb
    inc bc
    db $eb
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    ld de, $fbff
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [rTAC]
    sub b
    rlca
    nop
    cp $00
    cp $01
    db $fc
    ld bc, $03fc
    ld hl, sp+$03
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [$fe]
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    rrca
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    ccf
    ccf
    dec b
    ld b, $7f
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    db $fc
    dec b
    inc c
    rst $38
    nop
    rst $38
    rst $38
    nop
    rlca
    ld hl, sp-$08
    dec b
    rlca
    rst $38
    nop
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    add a
    ld hl, sp-$07
    cp $fe
    rst $38
    nop
    cp $01
    db $fc
    ld bc, $03fc
    ld hl, sp+$03
    ld sp, hl
    rlca
    pop af
    rlca
    pop af
    rlca
    di
    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $18
    ldh [$ef], a
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$06
    db $fc
    db $fc
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ret c

    rst $00
    rst $38
    nop
    rst $38
    ldh [$c1], a
    sbc $0f
    db $e3
    rrca
    db $e3
    rra
    rst $00
    rra
    rst $00
    ccf
    add a
    ccf
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
    ret nz

    rst $18
    ldh [$ef], a
    ldh [$ef], a
    ldh a, [$f7]
    ldh a, [$f7]
    ld hl, sp-$05
    ld hl, sp-$05
    db $fc
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$01
    ldh [rTAC], a
    add b
    rra
    ld bc, $00fc
    ld [hl], d
    nop
    adc h
    nop
    db $fd
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    nop
    cp $00
    pop hl
    ld bc, $1f9e
    ld h, b
    rlca
    jr jr_005_4194

jr_005_4194:
    rst $20
    nop
    ld hl, sp+$00
    rst $38
    nop
    jr c, jr_005_419c

jr_005_419c:
    rst $00
    add e
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rra
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $00
    rra
    and b
    nop
    cp a
    nop
    ret nz

    nop
    rst $38
    nop
    ret nz

    nop
    ccf
    ccf
    ret nz

    rst $38
    nop
    ccf
    ret nz

    ld bc, $003e
    pop bc
    nop
    rst $38
    nop
    jr c, jr_005_41ce

jr_005_41ce:
    rst $00
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    db $fc
    nop
    di
    inc bc
    inc c
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $e3
    inc bc
    inc e
    rra
    ldh [rIE], a
    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    db $fc
    nop
    di
    inc bc
    db $ec
    rrca
    ret nc

    rra
    and b
    rra
    and b
    ccf
    ld b, b
    nop
    rra
    nop
    rst $20
    ldh [rNR24], a
    ld hl, sp+$06
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    db $fc
    nop
    ei
    inc bc
    db $f4
    rlca
    jr z, jr_005_422b

    ret nz

    ret nz

    add hl, sp
    ld sp, hl
    ld b, $00
    rst $38

jr_005_422b:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    ld bc, $01fa
    ld a, [$fc00]
    nop
    di
    inc bc
    call z, $300f
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $f4
    inc bc
    db $f4
    ld bc, $01f6
    ld a, [$fb00]
    nop
    ei
    nop
    db $fd
    nop
    cp $03
    inc [hl]
    jp $f104


    ld b, $f9
    ld [bc], a
    ld hl, sp+$03
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    ccf
    nop
    ld c, $c0
    ret nz

    ld sp, $06f9
    cp $00
    db $fc
    ld bc, $02f9
    ld sp, hl
    ld [bc], a
    inc e
    nop
    jr nz, @-$3b

    jp Jump_000_0f0c


    jr nc, jr_005_42c1

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    ld bc, $02f9
    ld sp, hl
    ld [bc], a
    db $fc
    nop
    ldh a, [$03]
    jp Jump_000_0f0c


    jr nc, jr_005_42e1

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc de
    inc b
    inc bc
    db $e4
    pop hl
    ld d, $f9
    ld [bc], a
    ld hl, sp+$03
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    db $fc
    ld bc, $02f9
    ld sp, hl
    ld [bc], a
    di
    inc b

jr_005_42c1:
    di
    inc b
    di
    inc b
    rst $20
    ld [$08e7], sp
    dec b
    inc c
    nop
    ld [$3c34], sp
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $e0
    ld de, $21c0
    add c
    ld h, d
    nop
    pop bc
    rst $38

jr_005_42e1:
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    rlca
    adc b
    inc bc
    add h
    add e
    ld b, h
    nop
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f0
    add hl, bc
    ldh a, [$08]
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    adc h
    ld [hl], d
    nop
    adc h
    nop
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld sp, $004e
    ld sp, $0000
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rrca
    sub b
    rrca
    db $10
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    inc bc

jr_005_4336:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld [$c000], sp
    ret nz

    jr nc, jr_005_4336

    ld [$04f8], sp
    ld hl, sp+$06
    dec b
    rlca
    nop
    inc bc
    inc bc
    inc b
    rlca
    jr jr_005_4373

    jr nz, jr_005_4375

    jr nz, jr_005_4377

    jr nz, jr_005_4379

    jr nz, jr_005_439b

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ldh a, [$08]
    ldh [rNR10], a
    ldh [rNR23], a

jr_005_4373:
    ld hl, sp+$07

jr_005_4375:
    rst $38
    nop

jr_005_4377:
    ccf
    ld b, b

jr_005_4379:
    ccf
    ld b, b
    rra
    jr nz, jr_005_438d

    db $10
    rlca
    ld [$1807], sp
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_005_438d:
    rst $38
    nop
    db $fc
    inc bc
    ld [hl], b
    adc h
    nop
    ld [hl], e
    nop
    adc a
    rst $38
    nop
    cp a
    ld b, b

jr_005_439b:
    sbc a
    jr nz, jr_005_43bd

    and b
    rlca
    ld e, b
    nop
    rst $20
    nop
    ld hl, sp+$00
    rst $38
    nop
    rra
    nop
    rst $20
    ldh [rNR24], a
    ld hl, sp+$06
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld b, $e0
    ldh [rNR24], a

jr_005_43bd:
    ld sp, hl
    ld [bc], a
    di
    inc b
    rst $20
    ld [$10cf], sp
    rst $38
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    and b
    rrca
    ret nc

    rrca
    ret nc

    inc bc
    call z, $b201
    inc de
    xor h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIF], a
    db $10
    rra
    and b
    rra
    ld h, b
    ccf
    ld b, b
    dec b
    nop
    ld a, [bc]
    db $fc
    db $fc
    ei
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp+$00
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    ccf
    add b
    ccf
    add b
    ccf
    ret nz

    rra
    rrca
    ldh [rIF], a
    ldh [$1f], a
    ret nz

    rra
    ret nz

    rra
    ret nz

    ccf
    add b
    ccf
    add b
    ld a, a
    nop
    ld a, l
    ld bc, $037b
    ld a, e
    inc bc
    ld [hl], a
    rlca
    ld [hl], a
    rlca
    ld [hl], a
    rlca
    ld l, a
    rrca
    ld l, a
    rrca
    db $fd
    db $fc
    db $fc
    db $fc
    ld a, [bc]
    ld [$0afd], sp
    inc b
    rst $38
    ld h, b
    ld h, a
    ld hl, sp-$05
    ld hl, sp-$05
    db $fc
    db $fd
    db $fd
    db $fc
    cp $fe
    cp $f2
    rst $38
    ret z

    ld bc, $03fc
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rIF]
    ldh [rIF], a
    ldh [$eb], a
    inc bc
    db $db
    inc bc
    db $db
    inc bc
    db $dd
    ld bc, $01dd
    cp l
    ld bc, $01bd
    ld a, l
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld h, e
    ld a, [bc]
    dec bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    inc a
    inc bc
    add b
    cp a
    add b
    cp a
    ret nz

    rst $18
    ret nz

    rst $18
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    and b
    rra
    and b
    rlca
    ret c

    nop
    rst $20
    nop
    ld hl, sp+$00
    rst $38
    ret nz

    rst $18
    ldh [$ef], a
    ldh [$ef], a
    ldh a, [$f7]
    ldh a, [$f7]
    ld hl, sp-$05
    ld hl, sp-$05
    db $fc
    db $fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $03fb
    ei
    inc bc
    ei
    inc bc
    rrca
    ldh [$1f], a
    ret nz

    rra
    ret nz

    ccf
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ei
    inc bc
    ei
    inc bc
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $28
    rrca
    ld a, [bc]
    inc b
    rst $38
    nop
    rst $38
    ldh [$0a], a
    add hl, bc
    rst $38

Call_005_44d5:
    rrca
    db $e3
    rrca
    jp $871f


    ccf
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rrca
    adc a
    add a
    di
    di
    ld a, [bc]
    ld a, [bc]
    rst $38
    rrca
    inc hl
    rst $00
    pop bc
    pop af
    ldh a, [$fc]
    db $fc
    ld a, [bc]
    ld [$f0ff], sp
    rst $30
    ldh a, [$f7]
    ld hl, sp-$05
    ld hl, sp-$05
    db $fc
    db $fd
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e3], a
    jr c, jr_005_4561

    nop
    cp c
    add b
    ld b, a
    ret nz

    scf
    ldh a, [$0b]

jr_005_4523:
    ld hl, sp+$05
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    nop
    ld a, a
    nop
    cp a
    add b
    ld c, h
    ret nz

    inc sp
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $00
    nop
    dec sp
    jr c, @-$39

    ldh a, [$0b]
    ldh [rNR22], a
    add b
    ld l, a
    nop
    sbc a
    rra
    jr nz, @+$09

    ret c

    ld bc, $00e6
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    jr nz, jr_005_4523

    ld [$32c1], sp
    ldh [rNR33], a

jr_005_4561:
    nop
    ld [c], a
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rrca
    ld [hl], b
    inc bc
    sbc h
    nop
    rst $20
    nop
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    ld [bc], a
    ld hl, sp+$05
    ld hl, sp+$05
    db $fc
    ld [bc], a
    ld hl, sp+$07
    ldh [rNR10], a
    add e
    ld c, h
    nop
    add e
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    ld b, $e0
    add hl, de
    add b
    ld h, a
    nop
    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, jr_005_45ac

jr_005_45ac:
    rst $08
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    cp $01
    ldh a, [$0e]
    ldh [rNR11], a
    nop
    rra
    nop
    rst $20
    ldh [rNR24], a
    ld hl, sp+$06
    adc h
    ld [hl], d
    inc b
    adc c
    nop
    ld [hl], e
    nop
    rst $38
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$05
    ldh a, [$0b]
    ldh a, [$0b]
    ret nz

    inc sp
    add b
    ld c, l
    ret z

    dec [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b

jr_005_4605:
    sbc a
    ld h, b
    rst $38
    nop
    rrca
    ldh a, [$c7]
    jr c, jr_005_4605

    ld [$04fb], sp
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

    ccf
    db $ec
    inc de
    or $09
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    inc c
    add b
    ld a, a
    dec sp
    call nz, $e01f
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    ld h, b
    xor $11
    sbc h
    ld h, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ei
    inc b
    pop hl
    ld e, $80
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    nop

jr_005_46ae:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    inc bc
    db $fc
    ld bc, $01fc
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    jr c, jr_005_46ce

jr_005_46ce:
    rst $00
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop

Call_005_46d5:
    rst $38
    nop
    rst $38
    nop
    nop
    jr c, jr_005_46dc

jr_005_46dc:
    rst $00
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr c, jr_005_46eb

jr_005_46eb:
    nop
    rst $00
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [hl], b
    inc bc
    inc bc
    adc h
    adc a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr c, jr_005_4743

    nop
    rst $00
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    pop af
    ld c, $c0
    ccf
    add b
    ccf
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    nop
    rst $00
    jr c, jr_005_46ae

    ld a, [hl]
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    adc a
    ld [hl], b
    inc bc
    db $fc
    ld bc, $01fc
    cp $00

jr_005_4743:
    cp $00
    cp $00
    cp $02
    rst $38
    nop
    add $00
    add b
    add hl, sp
    add hl, de
    ld h, d
    ld [hl], e
    add h
    rst $20
    ld [$10cf], sp
    rst $38
    nop
    adc a
    nop
    rlca
    ld [hl], b
    ld [hl], c
    adc b
    ld hl, sp+$06
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    add $00
    cp c
    add hl, de
    ld h, d
    ld [hl], e
    add h
    rst $20
    ld [$10cf], sp
    rst $38
    nop
    nop
    adc a
    nop
    ld [hl], a
    ld [hl], b
    adc c
    ld hl, sp+$06
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    db $fc
    ld [hl], b
    ld [hl], e
    inc bc
    adc h
    adc a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    and b
    ld a, $b8
    ld c, $ce
    nop
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fd
    add c
    ld a, [hl]
    ld h, b
    inc e
    sbc l
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    dec b
    ld a, h
    dec e
    ld [hl], b
    ld [hl], e
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    nop
    inc b
    inc b
    stop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    nop
    nop
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    nop
    nop
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    nop
    nop
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    nop
    nop
    nop

Call_005_4800:
    jr c, jr_005_483a

    ld a, h
    ld c, h
    cp $54
    cp $74
    cp $78
    db $fc
    ld b, b
    ld hl, sp+$20
    ld [hl], b
    inc b
    dec b
    nop
    inc a
    jr c, jr_005_4893

    ld h, $7f
    ld e, [hl]
    rst $38
    ld d, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    inc b
    ld b, $7f
    rrca
    rrca
    inc b
    inc b
    ld a, a
    ret nz

    ret nz

    inc b
    ld b, $fe
    ldh [$e0], a
    inc b
    ld b, $fe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_005_483a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    ld de, $20ff
    ld [hl], c
    ld sp, $337b
    ld a, a
    dec de
    ccf
    dec e
    ccf
    inc c
    ld e, $06
    ld c, $02
    ld c, $1e
    ld a, a
    ld b, $9f
    adc h
    rst $38
    db $ec
    cp $e8
    db $fc
    ld [$787c], sp
    db $fc
    ret nz

    ld hl, sp+$00
    nop
    rlca
    rlca
    ccf
    ccf
    ld bc, $0401
    inc b
    ld a, a
    ld bc, $7f01
    ld a, a
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
    ldh [$e0], a
    inc b
    ld b, $fe
    inc b
    ld [$1800], sp
    jr jr_005_48cb

    ld a, h
    add d
    cp $00
    rst $38
    inc b
    ld a, [bc]
    nop
    ld e, $1e
    ld h, c
    ld a, a

jr_005_4893:
    add b
    rst $38
    nop
    nop
    pop bc
    pop bc
    sbc h
    sbc h
    ld a, $3e
    ld a, a
    ld a, a
    inc a
    inc a
    sbc c
    sbc c
    jp $e3c3


    db $e3
    ret


    ret


    sbc h
    sbc h
    ld a, $3e
    ld a, a
    ld a, a
    ld a, $3e
    sbc h
    sbc h
    pop bc
    pop bc
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_005_48c2

    dec de
    nop
    rst $38
    nop

jr_005_48c2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_005_48cb:
    nop
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    add b
    add b
    rst $08
    rst $08
    ldh [$e0], a
    inc b
    ld b, $f0
    or b
    or b
    or h
    or h
    ld d, a
    ld d, a
    db $e3
    db $e3
    ld h, e
    ld h, e
    ld h, $26
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $04
    ld a, [bc]
    nop
    inc b
    inc b
    rrca
    inc b
    inc c
    nop
    cp $fe
    rst $38
    rst $38
    inc bc
    inc bc
    inc b
    ld [$0100], sp
    ld bc, $0303
    add e
    add e
    jp nz, $04c3

    ld b, $00
    ldh a, [$f0]
    db $fc
    db $fc
    adc [hl]
    cp $06
    cp $03
    rst $38
    inc b
    ld [$0700], sp
    rlca
    rra
    rra
    ld a, $3e
    ld a, b
    ld a, a
    inc b
    ld [$0400], sp
    inc b
    cp $00
    nop
    nop
    ldh a, [rP1]
    nop
    ld bc, $0c01
    inc c
    ld e, $1e
    ccf
    ccf
    ld a, $3e
    inc e
    inc e
    ld b, c
    ld b, c
    nop
    nop
    ret nz

    ret nz

    sub b
    sub b
    jr c, jr_005_4986

    ld a, b
    ld a, b
    inc a
    inc a
    sbc h
    sbc h
    ret nz

    ret nz

    nop
    nop
    pop af
    pop af
    rlca
    rlca
    rst $08
    rst $08
    rra
    rra
    rst $18
    rst $18
    inc b
    inc b
    ld a, $00
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    rlca
    nop
    rlca
    and $e7
    ld [hl], d
    di
    ld a, [hl-]
    ei
    jr c, @-$05

    inc e
    db $fc
    inc e
    ld a, h
    ld c, $fe
    ld c, $fe
    ld [bc], a

jr_005_4986:
    cp $00
    cp $00
    db $fc
    ld bc, $01fd
    ld sp, hl
    inc bc
    di
    rlca
    rst $20
    rrca
    ld l, a
    ld [hl], b
    ld a, a
    ldh [$f8], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ldh [$80], a
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ldh a, [rP1]
    nop
    nop
    ret nz

    nop
    ret nz

    inc b
    ld [$6300], sp
    ld h, e
    ld c, c
    ld c, c
    inc e
    inc e
    ld a, $3e
    ccf
    ccf
    ld e, $1e
    ld c, h
    ld c, h
    ld h, c
    ld h, c
    ld [c], a
    ld [c], a
    ret z

    ret z

    sbc h
    sbc h
    inc a
    inc a
    ld a, h
    ld a, h
    inc a
    inc a
    sbc b
    sbc b
    jp nz, Jump_000_3ec2

    ld a, $04
    inc b
    ld [hl], $b1
    or c
    rst $08
    rst $08
    rst $38
    rst $38
    cp c
    cp c
    db $10
    stop
    nop
    nop
    ld bc, $0804
    nop
    inc bc
    inc bc
    ccf
    ccf
    rlca
    rra
    rlca
    rst $38
    inc bc
    rrca
    inc bc
    ld a, a
    ld bc, $c00f
    db $e3
    ret nz

    ld sp, hl
    nop
    db $fc
    ld c, $4f
    inc e
    ld e, a
    jr jr_005_4a1f

    add b
    cp a
    add b
    cp [hl]
    add b
    cp b
    inc bc
    inc hl
    inc bc
    adc a
    nop
    db $fc
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ld h, b
    ld h, b
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    inc b
    ld c, $00
    add b
    add b

jr_005_4a1f:
    nop
    nop
    ldh a, [$f0]
    db $fc
    db $fc
    inc b
    inc b
    db $fd
    ld sp, hl
    ld sp, hl
    inc b
    inc b
    reti


    call nz, Call_000_3dc4
    dec a
    inc b
    inc b
    db $fd
    inc b
    inc b
    db $fc
    ld hl, sp-$08
    sbc b
    sbc b
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld e, $1f
    inc e
    rra
    inc e
    rra
    ld a, [hl]
    ld a, a
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    ei
    nop
    ei
    nop
    db $db
    nop
    ret c

    nop
    db $fc
    ld bc, $03ed
    ld l, e
    ld [bc], a
    ld l, e
    ld b, $67
    ld c, $0f
    inc c
    rrca
    inc e
    rra
    ld bc, $003f
    cp l
    nop
    db $dd
    nop
    pop bc
    nop
    pop hl
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$19
    rst $38
    ld bc, $00ff
    cp a
    nop
    cp a
    nop
    or a
    nop
    ld [hl], $00
    ld b, $00
    ld b, $c0
    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    ld a, [hl]
    cp $3f
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $04df
    ld a, [bc]
    nop
    inc b
    inc b
    add b
    ret nz

    ret nz

    jr jr_005_4abd

    ld a, [hl]
    ld a, [hl]
    inc b
    ld [$7fff], sp
    ld a, a

jr_005_4aac:
    ld l, a
    ld l, a
    jr c, jr_005_4aee

    jr c, jr_005_4af0

    jr nc, jr_005_4aea

    jr nc, jr_005_4aec

    inc b
    ld b, $30
    nop
    nop
    nop
    ret c

jr_005_4abd:
    nop
    ret nz

    nop
    ret nz

    inc b
    ld a, [bc]
    nop
    inc e
    rra
    inc a
    ccf
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, h
    inc b
    inc b
    ld [hl], b
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld c, $00
    ld c, $04
    inc de
    nop
    rst $18
    nop
    db $db
    nop
    ld a, [de]
    nop

jr_005_4aea:
    ld a, [de]
    nop

jr_005_4aec:
    ld [bc], a
    inc b

jr_005_4aee:
    ld b, $00

jr_005_4af0:
    ldh [$e0], a
    ld h, b
    ldh [$30], a
    ldh a, [$30]
    or b
    jr nc, @-$4e

    jr nc, jr_005_4aac

    db $10
    jr nc, jr_005_4aff

jr_005_4aff:
    nop
    ld l, l
    ld l, l
    adc l
    adc l
    pop af
    pop af
    db $fd
    db $fd
    cp $fe
    ld a, a
    ld a, a
    ld a, $3e
    inc c
    inc c
    inc b
    nop
    dec b
    adc e
    adc e
    db $eb
    db $eb
    inc c
    inc c
    dec b
    inc b
    sbc $06
    ld b, $02
    ld [bc], a
    nop
    nop
    ld sp, hl
    ld sp, hl
    ld a, l
    ld a, l
    ld l, l
    ld l, l
    dec b
    inc b
    ld l, h
    dec b
    inc b
    inc c
    nop
    nop
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_005_4b3e

    add hl, bc
    nop
    cp $00
    ld a, [hl]

jr_005_4b3e:
    nop
    inc a
    nop
    jr jr_005_4b48

    ld [$1000], sp
    rrca
    ld h, b

jr_005_4b48:
    rra
    ld b, b
    ccf
    ld b, c
    ld a, $67
    jr jr_005_4b8c

    nop
    jr jr_005_4b53

jr_005_4b53:
    nop
    inc bc
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    add d
    ld a, h
    and $18
    inc a
    nop
    jr jr_005_4b63

jr_005_4b63:
    nop
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    dec b
    ld [$051f], sp
    inc b
    nop
    dec b
    inc b
    add b
    dec b
    inc b
    ret nz

    dec b
    inc b
    ldh [$7d], a
    ld a, l
    inc l
    ld l, h
    ld l, l
    ld l, l
    jr nz, jr_005_4b89

    dec b
    ld h, b
    dec b
    inc b
    nop

jr_005_4b89:
    add e
    add e
    inc sp

jr_005_4b8c:
    inc sp
    dec b
    inc b
    ld [hl], a
    rst $10
    rst $10
    add $c6
    rst $00
    rst $00
    nop
    nop
    ldh a, [rIE]
    rst $08
    ldh a, [$3f]
    rst $00
    rst $38
    rra
    db $e3
    rst $38
    sbc h
    db $e3
    rst $38
    ld [$ffff], sp
    ld hl, sp-$08
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    rst $18
    rst $18
    dec b
    ld b, $9f
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    nop
    rrca

jr_005_4bc9:
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rra
    rra
    dec b
    ld c, $3f
    dec b
    ld b, $f0
    dec b
    ld a, [bc]
    ld hl, sp-$01
    rst $38
    rst $38
    jp $b9c7


    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    add c
    dec b
    inc b
    rst $38
    dec b
    add hl, bc
    nop
    add b
    add b
    ld h, b
    ld b, b
    and b
    jr nz, jr_005_4bc9

    nop
    nop
    nop
    rrca
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    jp $b9c7


    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    add c
    dec b
    inc b
    rst $38
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    ld e, $7e
    ld de, $0f71
    rrca
    ccf
    ld a, a
    ccf
    ld a, a
    dec b
    inc b
    db $fc
    db $e4
    db $e4
    ld a, [de]
    ld a, [de]
    ld a, [$05fa]
    inc b
    or $ee
    xor $3f
    ccf
    dec b
    ld c, $7f
    dec b
    inc b
    ld hl, sp+$05
    dec c
    ldh a, [rIE]
    rst $08
    ldh a, [$3f]
    rst $00
    rst $38
    rra
    db $e3
    rst $38
    sbc h
    db $e3
    rst $38
    ld [$ffff], sp
    nop
    ld a, [hl]
    ld bc, $433c
    nop
    ld a, a
    nop
    ld a, $00
    inc a
    dec b
    ld b, $00
    ld a, [hl]
    add c
    inc a
    jp $ff00


    nop
    ld a, [hl]
    nop
    inc a
    dec b
    dec b
    nop
    ccf
    rst $38
    rst $20
    rra
    ld hl, sp-$39
    rst $38
    ldh a, [$9f]
    rst $38
    ld [hl], a
    adc a
    db $fc
    inc hl
    rst $38
    ld hl, sp+$3f
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    rra
    ccf
    rrca
    ccf
    inc bc
    rra
    nop
    rlca
    nop
    nop
    xor $ee
    dec b
    inc b
    sbc $05
    inc b
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, b
    ld a, [hl]
    nop
    nop
    dec b
    ld b, $7f
    dec b
    inc b
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    dec b
    inc b
    ldh a, [rTIMA]
    inc b
    ldh [rTIMA], a
    ld b, $c0
    add b
    add b
    nop
    nop
    ld bc, $0301
    rrca
    nop
    nop
    rlca
    rra
    nop
    nop
    rrca
    rra
    rrca
    ccf
    rrca
    rrca
    cp $fe
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rlca
    rlca
    dec b
    inc b
    rst $38
    ld hl, sp-$08
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    dec b
    ld b, $ff
    ldh [$e0], a
    dec b
    inc b
    nop
    add b
    ldh [rP1], a
    nop
    ldh [$f8], a
    ldh a, [$f8]
    ldh a, [$fc]
    nop
    nop
    dec b
    inc b
    ccf
    daa
    daa
    ld e, b
    ld e, b
    ld e, a
    ld e, a
    dec b
    inc b
    ld l, a
    ld [hl], a
    ld [hl], a
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld a, b
    ld a, [hl]
    adc b
    adc [hl]
    ldh a, [$f0]
    db $fc
    cp $fc
    cp $05
    ld [$0e00], sp
    nop
    dec a
    ld c, $5c
    ccf
    cp a
    ld a, a
    dec b
    ld a, [bc]
    nop
    inc e
    nop
    xor d
    inc e
    ld e, l
    cp [hl]
    rrca
    ccf
    nop
    nop
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    nop
    nop
    rrca
    ccf
    rrca
    ccf
    rst $38
    rst $38
    ld bc, $0501
    ld b, $ff
    rlca
    rlca
    dec b
    ld a, [bc]
    rst $38
    nop
    nop
    dec b
    ld b, $ff
    ldh [$e0], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    nop
    nop
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    nop
    nop
    ld [hl], a
    ld [hl], a
    dec b
    inc b
    ld a, e
    dec b
    inc b
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld c, $7e
    nop
    nop
    db $fc
    cp $fc
    cp $f8
    cp $f8
    db $fc
    ldh a, [$fc]
    ret nz

    ld hl, sp+$00
    ldh [rP1], a
    nop
    ld a, a
    ld a, a
    rrca
    rrca
    adc a
    adc a
    add a
    add a
    dec b
    inc b
    jp $e3e3


    pop hl
    pop hl
    dec b
    stop
    rrca
    ccf
    nop
    nop
    rra
    ld a, a
    rra
    ccf
    nop
    nop
    ld bc, $0501
    inc b
    nop
    rst $38
    rst $38
    ld bc, $0501
    inc b
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ccf
    ccf
    rlca
    rlca
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    nop
    nop
    dec b
    ld b, $ff
    ldh [$e0], a
    ldh [$f8], a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    ldh [$f8], a
    ldh [$f0], a
    add b
    add b
    dec b
    dec b
    nop
    ld [hl], b
    nop
    ld [hl], a
    ld [hl], b
    dec b
    add hl, bc
    ld [hl], a
    db $ed
    rst $38
    cp $b7
    rst $10
    ld a, e
    ld [hl], l
    cp [hl]
    cp a
    ld a, [hl]
    rst $38
    ld e, l
    rst $38
    add c
    rst $38

jr_005_4dd2:
    inc a
    nop
    ret nz

    nop
    ldh a, [rIF]
    ldh a, [$09]
    ldh a, [$99]
    ld h, b
    ldh a, [rP1]
    ld h, b
    ld b, $00
    rrca
    nop
    inc bc
    ld b, $09
    rrca
    ldh a, [$09]
    ldh a, [$99]
    ld h, b
    ldh a, [rP1]
    ld h, b
    ld b, $00
    rrca
    dec b
    inc b
    nop
    ld bc, $4601
    ld b, a
    jp hl


    rst $28
    db $db
    rst $18
    or a
    cp a
    xor l
    cp l
    nop
    nop
    jr c, jr_005_4e3e

    add h
    db $fc
    ld a, l
    db $fd
    dec b
    inc b
    or $b4
    or h
    or c
    or c
    nop
    nop
    jr jr_005_4e2d

    db $76
    ld a, [hl]
    ret


    rst $38
    cp $ff
    ccf
    ccf
    sbc e
    sbc e
    db $e3
    db $e3
    dec b
    ld [$8300], sp
    add e
    ld h, a
    rst $20
    xor a
    rst $28
    db $d3
    di
    dec b

jr_005_4e2d:
    inc c
    ld [hl], a
    rlca
    rlca
    nop
    nop
    ccf
    rst $38
    rst $20
    rra
    ld hl, sp-$39
    rst $38
    ldh a, [$9f]
    rst $38
    ld [hl], a

jr_005_4e3e:
    adc a
    db $fc
    inc hl
    rst $38
    ld hl, sp+$00
    rst $38
    add c
    ld a, [hl]
    jp $c33c


    inc a
    ld h, [hl]
    jr jr_005_4e8a

    nop
    jr jr_005_4dd2

    nop
    jp $ff00


    ld b, $f9
    adc a
    ld [hl], b
    adc c
    ld [hl], b
    sbc b
    ld h, b
    ldh a, [rP1]
    ld h, b
    ld b, $00
    rrca
    dec b
    nop
    inc b
    inc b
    stop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    dec bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    nop
    rst $38
    db $fc
    rst $38

jr_005_4e8a:
    ldh [rIE], a
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    and b
    inc b
    add hl, bc
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    nop
    ld hl, sp+$00
    db $e3
    nop
    rst $08
    nop
    sbc a
    nop
    cp a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rra
    nop
    rst $00
    nop
    di
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fc
    nop
    cp $00
    inc b
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    stop
    rst $38
    rst $38

Jump_005_4ee3:
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    sbc a
    inc b
    dec b
    rst $38
    db $fc
    rst $38
    rst $20
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    nop
    inc b
    rlca
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rrca
    inc b
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    pop hl
    nop
    adc a
    nop
    ccf
    nop
    ld hl, sp+$00
    db $e3
    nop
    rst $08
    nop
    sbc a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add sp, $17
    ret nc

    cpl
    ldh [$1f], a
    jp $973f


    ld l, a
    and a
    ld e, a
    swap [hl]
    db $d3
    inc l
    ccf
    ret nz

    rra
    ldh [$87], a
    ld hl, sp-$3d
    db $fc
    rst $00
    ld hl, sp-$75
    db $f4
    ld de, $33ee
    call z, $2004
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    rra
    nop
    rst $00
    nop
    di
    nop
    ld sp, hl
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    add a
    nop
    pop af
    nop
    db $fc
    nop
    rst $38
    add hl, sp
    db $ec
    inc de
    ld hl, sp+$07
    pop af
    ld c, $ff
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld l, a
    sub c
    ld a, a
    add b
    ld e, a
    and b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ld [de], a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    nop
    rst $38
    ret nz

    ccf

jr_005_4fbf:
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    di
    nop
    rst $08
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $08
    nop
    di
    nop
    db $fc
    nop
    rlca
    ld a, b
    ld bc, $007e
    ld a, a
    ld h, b
    ld a, a
    ld [hl], e
    inc b
    inc b
    ld a, a
    ld a, $7f
    inc a
    ret nz

    ld a, $00
    cp $9c
    inc b
    ld b, $fe
    db $fc
    jp nz, Jump_000_02fc

    db $fc
    inc b
    ld sp, $fe00
    nop
    cp $01
    db $fc
    ld bc, $03f8
    ldh a, [rTAC]
    ldh [rIF], a
    add b
    ccf
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    jr c, jr_005_4fbf

    ld [hl], b
    rst $38
    ld h, d
    cp c
    ld b, [hl]
    pop af
    ld c, $e3
    inc e
    rst $38
    nop
    rst $38
    inc e
    rst $00
    jr c, @+$01

    ld [hl], c
    sbc h
    ld h, e
    rst $38
    ld b, a
    rst $38
    ld c, $ff
    nop
    ld a, a
    add hl, sp
    ld l, h
    inc de
    ld a, b
    rlca
    ld [hl], c
    ld c, $7f
    nop
    ld a, a
    ld bc, $007f
    ld a, a
    nop
    ld l, [hl]
    sub b
    ld a, [hl]
    add b
    ld e, [hl]
    and b
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    cp $00
    cp $00
    cp $04
    ld [hl+], a
    nop
    rst $38
    nop
    ld hl, sp+$03
    ldh [rIF], a
    ret nz

    rra
    add b
    ccf
    add b
    ccf
    nop
    ld a, a
    nop
    nop
    rst $38
    nop
    rra
    ret nz

    rlca
    ldh a, [$03]
    ld hl, sp+$01
    db $fc
    ld bc, $00fc
    cp $00
    rst $00
    jr c, @+$01

    ld [hl], d
    rst $38
    ld h, [hl]
    or c
    ld c, [hl]
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], d
    add hl, de
    and $ff
    adc $61
    sbc [hl]
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $04
    ld b, c
    nop
    rst $38
    rst $38
    ld hl, sp-$08
    rst $00
    ret nz

    ld [hl], e
    inc c
    ld a, a
    jr @+$81

    jr nc, jr_005_5155

    inc bc
    ld a, a
    ld b, $ff

Call_005_50dd:
    rst $38
    rra
    rra
    db $e3

jr_005_50e1:
    inc bc
    adc [hl]
    ld [hl], b
    cp $e4
    cp $cc
    add $38
    cp $60
    inc b
    ld h, b
    nop
    ld a, a
    ld bc, $003f
    ld e, a
    ld b, b
    ld h, a
    ld h, b
    ld a, [hl]
    inc a
    ld a, a
    add hl, sp
    ld a, h
    db $10
    ld [hl], b
    rrca
    cp $00
    db $ec
    inc c
    sbc $1e
    sbc $1c
    ld a, [hl]
    ld a, h
    ld a, [c]
    ld [hl], b
    ld h, d
    ld l, h
    ld [de], a
    db $ec
    inc b
    nop
    dec b
    cp $01
    ldh a, [rIF]
    ret nz

    ccf
    ld bc, $87ff
    rst $38
    rst $18
    dec b
    inc b
    rst $38
    cp $1f
    ldh [rIF], a
    ldh a, [$c0]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    and b
    nop

jr_005_5133:
    stop
    nop
    nop
    ld [$0900], sp
    nop
    ld a, [bc]
    ld bc, $010a
    inc b
    inc bc
    ld hl, $4300
    nop
    add [hl]
    ld [$1884], sp
    ld b, h
    jr jr_005_5198

    db $10
    ld l, h
    db $10
    jr z, jr_005_50e1

    ld bc, $00ff
    rst $38

jr_005_5155:
    ldh [rIE], a
    ld sp, hl
    dec b
    dec b
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    add a
    rst $38
    ccf
    dec b
    add hl, bc
    rst $38
    db $e3
    rst $38
    add b
    rst $38
    jp $e0ff


    rst $38
    ldh a, [rIE]
    ld hl, sp+$05
    rlca
    rst $38
    db $e3
    rst $38
    inc c
    rst $38
    rra
    rst $38
    ld a, a
    dec b
    rlca
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ld a, [c]
    pop af
    call nz, Call_000_0ccb
    inc sp
    jr @-$17

    dec a
    jp nz, $807f

    rst $38
    ld bc, $02ff
    ccf
    xor a
    ccf
    sbc $42
    and b
    add h

jr_005_5198:
    ld a, e
    adc h
    ld [hl], e
    jr @-$17

    rst $38
    rst $08
    rst $38
    sbc c
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld [bc], a
    ld b, $00
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    jr c, jr_005_5133

    jr jr_005_51b5

jr_005_51b5:
    jr jr_005_51b7

jr_005_51b7:
    ld [$0800], sp
    nop
    db $10
    jr nz, jr_005_51ce

    jr nz, jr_005_51d0

    ld h, b
    jp $e0ff


    rst $38
    ldh a, [rIE]
    ld hl, sp+$05
    rlca
    rst $38
    db $e3
    rst $38
    inc c

jr_005_51ce:
    rst $38
    rra

jr_005_51d0:
    rst $38
    ld a, a
    dec b
    rlca
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    ld sp, hl
    dec b

jr_005_51e1:
    dec b
    rst $38

jr_005_51e3:
    ccf
    rst $38

jr_005_51e5:
    rrca
    rst $38
    add a
    rst $38
    ccf
    dec b
    add hl, bc
    rst $38
    db $e3
    rst $38
    add b
    rst $38
    rst $38
    nop
    inc a
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    dec b
    dec b
    nop
    jr nc, jr_005_51e1

    jr nz, jr_005_51e3

    jr nz, jr_005_51e5

    ld h, b
    add b
    ld h, b
    add b
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    ret z

    scf
    rst $38
    ld l, [hl]
    rst $38
    call c, Call_005_708f
    rst $38
    ldh [rIE], a
    ret nz

    nop
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    ld c, $ff
    dec e
    adc b
    ld [hl], a
    rst $38
    ld h, $ff
    inc c
    nop
    nop
    rst $38
    nop
    ret z

    scf
    rst $38
    ld l, [hl]
    rst $38
    call c, Call_005_708f
    rst $38
    ld h, b
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    ld c, $ff
    dec e
    adc b
    ld [hl], a
    rst $38
    ld h, $ff
    inc c
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$e7]
    rlca
    rst $18
    rra
    rst $18
    rra
    ld a, a
    ld a, [hl]
    ld a, [c]
    pop af
    call nz, Call_000_18cb
    rst $20
    dec a
    jp nz, Jump_000_001f

    rst $28
    ldh [$ef], a
    ldh [$7c], a
    ld a, h
    ccf
    xor a

jr_005_52c9:
    ccf
    sbc $84
    ld a, e
    adc h
    ld [hl], e
    rst $20
    rlca
    rst $18
    rra
    rst $18
    rra
    ld a, a
    ld a, a
    ld hl, sp-$08
    ret nz

    rst $00
    nop
    rst $38
    ld bc, $1ffe
    nop
    rst $28
    ldh [$ef], a
    ldh [$fc], a
    db $fc
    ld a, a
    ld l, a
    cpl
    adc [hl]
    add h
    ld a, e
    adc h
    ld [hl], e
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $08
    ccf
    rst $20
    rra
    db $e3
    rra
    pop af
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a

jr_005_5328:
    add b

jr_005_5329:
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    inc bc
    ld hl, sp+$07
    pop af
    ld c, $ff
    jr c, jr_005_52c9

    nop
    rst $38

jr_005_533c:
    nop
    rst $38
    nop
    jr jr_005_5328

    rst $38
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    rst $38

jr_005_5348:
    rst $38
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    rst $38
    di
    jr jr_005_533c

    ld sp, $ffce
    jr c, jr_005_5329

    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_005_5348

    rst $38
    sbc [hl]
    db $e3
    inc e
    rst $00
    jr c, @+$01

    pop hl
    inc a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    dec b
    jr nz, jr_005_53b2

jr_005_53b2:
    db $fc
    inc bc
    ret nz

    ccf
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, a
    add b
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $28
    ccf
    rst $18

Jump_005_53d2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f9
    ld b, $f1
    ld c, $f0
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    nop
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f0
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp-$08
    ret nz

jr_005_5435:
    rst $00
    nop
    ccf
    nop
    rst $38
    ld bc, $13fe
    db $ec
    cp a
    reti


    rst $38
    or e
    ld a, a
    ld l, a
    cpl
    adc [hl]
    ld b, d
    or b
    add h
    ld a, e
    adc h
    ld [hl], e
    jr jr_005_5435

    rst $38
    rst $08
    rst $38
    sbc [hl]
    dec b
    ld [$fcff], sp
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    jr nz, jr_005_5470

jr_005_5470:
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    inc de
    jr nz, jr_005_547d

    dec b

jr_005_547d:
    inc b
    nop
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rrca
    add b
    inc bc
    dec b
    inc b
    nop
    ld h, b
    rra
    ld b, b
    ccf
    ld a, a
    ld e, $63
    inc e
    ld [hl], a
    ld [$007f], sp
    cp a
    add b
    sbc a
    add b
    ld [hl+], a
    call c, $bc42
    cp $78
    ld c, $f0
    ld e, $e0
    cp $8c
    add [hl]
    nop
    db $fc
    nop
    dec b
    nop
    dec bc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    dec bc
    dec bc
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    pop af
    dec bc
    dec c
    rst $38
    sbc h
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    inc e
    dec bc
    inc b
    rst $38
    rst $20
    add b
    add b
    jr jr_005_54dd

jr_005_54dd:
    ld a, a
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    adc $ff
    ccf
    rst $38
    rst $38
    rst $20
    add b
    add b
    jr jr_005_54ed

jr_005_54ed:
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_005_54f3:
    rst $38
    nop
    ld a, a
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add b
    db $fc
    ld bc, $03f8
    ld hl, sp+$03
    ldh a, [rTAC]
    add b
    daa
    nop
    ld a, b
    nop
    ld a, l
    nop
    ld a, h
    nop
    sbc e
    nop
    rst $20
    nop
    rst $30
    nop
    ld a, [$ff00]
    nop
    db $fd
    ld [bc], a
    ld a, [$fa02]
    inc bc
    ei
    ld b, $f6
    inc b
    push af
    dec b
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld e, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    jr nc, jr_005_54f3

    db $10
    ld d, a
    inc bc
    ei
    inc bc
    ei
    dec b
    push af
    ld b, $f6
    ld b, $f6
    ld b, $f6
    ld a, [bc]
    ld [$ea0a], a
    dec l
    ld l, l
    dec l
    ld l, l
    ld a, [hl+]
    ld l, e
    ld a, [hl+]
    ld l, e
    dec l
    db $ed
    ld e, l
    db $dd
    ld e, d
    db $db
    ld c, d
    sla e
    xor e
    dec [hl]
    or l
    ld [hl], l
    ld [hl], l
    ld sp, $1135
    sub l
    ld [hl+], a
    and [hl]
    add hl, hl
    xor a
    ld d, b
    ld e, c
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    ld b, b
    ld e, a
    ld h, b
    ld l, a
    add hl, bc
    db $eb
    ld [$08ea], sp
    ld [$da1a], a
    ld de, $11d5
    push de
    dec [hl]
    or l
    ld h, e
    ld l, e
    ld d, b
    ld d, a
    adc b
    xor e
    xor b
    xor e
    call nz, Call_005_44d5
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, e
    ld l, e
    and e
    xor e
    nop
    rlca
    nop
    ld sp, hl
    nop
    cp $00
    ld [hl], l
    nop
    adc d
    nop
    db $eb
    nop
    rra
    nop
    rst $28
    rra
    nop
    rlca
    ld b, b
    inc bc
    ldh a, [rSB]
    db $fc
    nop
    ld a, h
    nop
    or e
    nop
    rst $08
    nop
    cp a
    cp $01
    ld sp, hl
    ld b, $f7
    ld [$10ef], sp
    rrca
    db $10
    rlca
    ldh [rSB], a
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, [hl]
    ld bc, $fe00
    nop
    cp $00
    cp $01
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $03fd

jr_005_55ed:
    ei
    db $e3

jr_005_55ef:
    db $eb
    ld b, c

jr_005_55f1:
    ld e, l
    adc b
    cp [hl]
    sub h
    or [hl]
    sub d
    or e
    sub d
    or e
    sub l
    or l
    dec l
    ld l, l
    jr jr_005_565b

    xor h
    xor l
    adc h
    xor l
    call nc, Call_005_46d5
    ld d, [hl]
    ld b, [hl]
    ld d, [hl]
    ld a, [bc]
    sbc d
    ld [hl+], a
    xor d
    inc c
    db $ed
    jr jr_005_55ed

    jr jr_005_55ef

    ld de, $33d7
    or a
    inc h
    xor h
    ld h, e
    ld l, e
    ld h, c
    ld l, c
    ld d, h
    rst $10
    or h
    or [hl]
    cp b
    cp d
    ld a, d
    ld a, e
    ld a, d
    ld a, e
    or l
    or l
    adc $ce
    jp c, $44da

    ld d, l
    add $d6
    jp nz, Jump_005_53d2

    ld e, e
    ld h, e
    ld l, e
    ld hl, $2aa9
    xor d
    scf
    or a
    and b
    xor a
    jr nz, jr_005_55f1

    ld d, b
    rst $10
    db $10
    ld d, a
    xor b
    xor e
    adc b
    xor e
    call c, Call_005_6cdd
    ld l, l
    ld b, l
    ld d, l
    adc [hl]
    xor [hl]
    xor d
    xor d
    ld a, [de]
    ld e, d
    ld d, [hl]
    ld d, [hl]
    dec [hl]
    or l
    add b

jr_005_565b:
    add b
    nop
    nop
    xor d
    xor d
    ret nc

    call nc, $d5d5
    or e
    or e
    and [hl]
    and [hl]
    adc l
    adc l
    dec bc
    rst $38
    nop
    dec bc
    rst $38
    nop
    dec bc
    ld [hl], $00
    dec bc
    nop
    ld bc, $1001
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc a
    jr nz, jr_005_570c

    ld e, b
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    ld [hl], a
    ld b, l
    ld a, $22
    nop
    nop
    ld a, [hl]
    ld b, b
    rst $38
    sbc h
    rst $38
    ld hl, sp+$3f
    ld hl, $427e
    db $fc
    adc h
    rst $38
    add b
    nop
    nop
    ld e, $10
    ld a, $20
    ld a, [hl]
    ld c, b
    cp $98
    rst $38
    add b
    rst $38
    ld sp, hl
    ld c, $08
    nop
    nop
    ld a, $20
    ld a, [hl]
    ld c, [hl]
    ldh a, [$90]
    cp $80
    rst $38
    sbc h
    rst $20
    add h
    rst $38
    pop bc
    nop
    nop
    ld a, h
    ld b, b
    cp $9c
    or $84
    cp $c2
    rst $38
    cp b
    rst $08
    adc h
    rst $38
    pop bc
    jr c, jr_005_56db

jr_005_56db:
    ld a, h
    nop
    cp $00
    cp $00
    cp $00
    ld a, h
    nop
    jr c, jr_005_56e7

jr_005_56e7:
    nop
    nop
    ld bc, $ff10
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc e
    db $10
    inc a
    jr nz, jr_005_573f

    jr nc, @+$1e

    db $10
    inc e
    db $10
    inc e
    db $10
    ld a, a
    ld b, b

jr_005_570c:
    nop
    nop
    ld a, a
    ld b, b
    ld a, [hl]
    ld a, b
    inc e
    db $10
    ld a, $20
    ccf
    inc a
    rst $20
    add h
    cp $c0
    nop
    nop
    cp $80
    cp $9e
    cp $80
    rst $38
    db $fc
    rlca
    inc b
    rst $20
    add h
    ld a, a
    ld b, c
    nop
    nop
    rst $38
    add b
    rst $38
    sbc h
    xor $e8
    inc e
    db $10
    jr c, jr_005_5758

    jr c, jr_005_575a

    jr c, jr_005_575c

    nop
    nop
    ld a, [hl]

jr_005_573f:
    ld b, b
    rst $38
    sbc h
    rst $20
    add h
    rst $38
    ret nz

    ld a, a
    ld a, h
    ld c, $08
    ld a, h
    ld b, b
    jr c, jr_005_574e

jr_005_574e:
    ld b, h
    nop
    cp d
    nop
    cp [hl]
    nop
    cp d
    nop
    ld b, h
    nop

jr_005_5758:
    jr c, jr_005_575b

jr_005_575a:
    dec b

jr_005_575b:
    nop

jr_005_575c:
    inc a
    jr nz, @+$80

    ld c, b
    rst $38
    sbc h
    rst $20
    add h
    rst $38
    add b
    rst $38
    sbc h
    rst $20
    add h
    nop
    nop
    ld a, $20
    ld a, a
    ld c, h
    rst $30
    sub a
    ldh [$80], a
    ldh [$80], a
    di
    ret nz

    ld a, a
    ld h, c
    nop
    nop
    rst $38
    add b
    rst $38
    sbc a
    ldh [$80], a
    cp $80
    cp $9e
    ldh [$80], a
    rst $38
    add b
    nop
    nop
    ccf
    jr nz, jr_005_580e

    ld c, a
    ldh a, [$90]
    rst $38
    sub b
    rst $38
    sbc h
    rst $30
    call nz, Call_005_607f
    nop
    nop
    ld a, a
    ld b, b
    ld a, a
    ld [hl], e
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    ld a, a
    ld b, b
    nop
    nop
    rst $20
    add h
    xor $88
    db $fc
    sub b
    ld hl, sp-$80
    db $fc
    add b
    cp $90
    rst $28
    adc b
    nop
    nop
    rst $20
    add h
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub h
    rst $28
    adc h
    rst $20
    add h
    nop
    nop
    ld a, [hl]
    ld b, b
    rst $38
    sbc h
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    rst $38
    pop bc
    nop
    nop
    cp $80
    rst $38
    sbc h
    rst $20
    add h
    rst $38
    add c
    rst $38
    sbc h
    rst $20
    add h
    rst $38
    add c
    nop
    nop
    db $fc
    add b
    cp $98
    rst $28
    adc h
    rst $20
    add h
    rst $20
    add h
    rst $28
    adc c
    cp $82
    nop
    nop
    rst $38
    add b
    rst $38
    sbc a
    ldh [$80], a
    cp $80
    cp $9e
    ldh [$80], a
    ldh [$80], a
    nop
    nop
    rst $20
    add h

jr_005_580e:
    rst $20
    add h
    rst $20
    add h
    rst $38
    add b
    rst $38
    sbc h
    rst $20
    add h
    rst $20
    add h
    nop
    nop
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rst $20
    add h
    rst $30
    add h
    rst $38
    pop bc
    nop
    nop
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld a, a
    ld b, b
    nop
    nop
    rst $20
    add h
    rst $30
    add h

Call_005_5840:
    rst $38
    add h
    rst $38
    add b
    rst $38
    sub b
    rst $38
    sbc b
    rst $28
    adc h
    nop
    nop
    cp $80
    rst $38
    sbc h
    rst $20
    add h
    rst $20
    add h
    rst $38
    add c
    cp $9e
    ldh [$80], a
    nop
    nop
    ld a, [hl]
    ld b, b
    rst $38
    sbc h
    rst $20
    add h
    rst $20
    add h
    rst $38
    sub b
    rst $38
    adc l
    rst $38
    jp nz, RST_00

    ld a, h
    ld b, b
    cp $98
    xor $8e
    cp $c0
    ld a, a
    ld a, h
    rst $20
    add h
    cp $c0
    nop
    nop
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    rst $38
    pop bc
    nop
    nop
    rst $20
    add h
    rst $20
    add h
    rst $38
    sub h
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $20
    add h
    nop
    nop
    ld [hl], a
    ld b, h
    ld [hl], a
    ld b, h
    ld [hl], a
    ld b, h
    ld a, $20
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    ld bc, $0006
    rrca
    nop
    rra
    nop
    inc e
    nop
    jr jr_005_58b5

jr_005_58b5:
    jr jr_005_58b8

    rlca

jr_005_58b8:
    nop
    rst $38
    nop
    rst $38
    ld bc, $000d
    ldh a, [rP1]
    ld hl, sp+$00
    jr c, jr_005_58c5

jr_005_58c5:
    jr jr_005_58c7

jr_005_58c7:
    jr jr_005_58c9

jr_005_58c9:
    nop
    nop
    cp $80
    rst $38
    sbc h
    rst $20
    add h
    rst $28
    adc b
    rst $38
    add e
    cp $90
    rst $28
    adc b
    nop
    nop
    ld a, a
    ld b, b
    ld a, a
    ld [hl], e
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    stop
    nop
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    rst $38
    adc b
    cp $c0
    ld a, h
    ld h, b
    jr c, jr_005_5929

    nop
    nop
    rst $20
    add h
    rst $38
    adc b
    ld a, [hl]
    ld b, b
    inc a
    jr nz, jr_005_5982

    ld b, b
    rst $38
    adc b
    rst $20
    add h
    nop
    nop
    rst $38
    add b
    rst $38
    ld hl, sp+$1e
    db $10
    inc a
    jr nz, jr_005_598c

    ld b, b
    ldh a, [$80]
    rst $38
    add b
    jr jr_005_591b

jr_005_591b:
    jr jr_005_591d

jr_005_591d:
    inc e
    nop
    rra
    nop
    rrca
    ld bc, $0007
    jr jr_005_5927

jr_005_5927:
    jr jr_005_5929

jr_005_5929:
    jr jr_005_592b

jr_005_592b:
    jr jr_005_592d

jr_005_592d:
    jr jr_005_592f

jr_005_592f:
    jr jr_005_5931

jr_005_5931:
    jr jr_005_5933

jr_005_5933:
    jr jr_005_5935

jr_005_5935:
    jr jr_005_5937

jr_005_5937:
    jr jr_005_5939

jr_005_5939:
    jr c, jr_005_593b

jr_005_593b:
    ld hl, sp+$00
    ldh a, [rSB]
    add hl, bc
    nop
    ld a, [hl]
    ld b, b
    rst $38
    sbc h
    rst $20
    add h
    xor $e8
    inc e
    db $10
    inc c
    inc c
    inc e
    stop
    nop
    inc a
    jr nz, jr_005_5990

    jr nz, jr_005_5992

    jr c, @+$1e

    db $10
    inc a
    inc h
    jr c, jr_005_5995

    ld bc, $0064
    jr c, jr_005_5982

    jr c, jr_005_5984

    jr c, jr_005_5986

    jr c, jr_005_5988

    nop
    nop
    jr c, jr_005_598c

    jr c, jr_005_598e

    ld bc, $0006
    jr c, jr_005_5993

    jr c, jr_005_5995

    jr c, jr_005_59af

    ld bc, $0064
    ld bc, $0900
    add hl, bc
    jr nz, jr_005_5980

jr_005_5980:
    rst $28
    ld a, [hl]

jr_005_5982:
    inc a
    ei

jr_005_5984:
    xor c
    rst $10

jr_005_5986:
    rst $00
    rst $38

jr_005_5988:
    cp d
    cp a
    rst $38
    rst $18

jr_005_598c:
    ld l, a
    rst $28

jr_005_598e:
    ei
    rst $38

jr_005_5990:
    rst $38
    rst $38

jr_005_5992:
    db $ed

jr_005_5993:
    rst $28
    rst $38

jr_005_5995:
    rst $28
    cp a
    cp a
    push af
    or a
    rst $38
    rst $30
    rst $28
    rst $38
    rst $38
    rst $38
    ld b, a
    ccf
    ld c, $3e
    ld e, $3f
    scf
    dec d
    ccf
    rla
    rrca
    ccf
    ld c, l
    dec a
    dec b

jr_005_59af:
    ld a, a
    ldh [$fe], a
    ld [hl], d
    ld a, h
    ld a, b
    db $fc
    db $ec
    add sp, -$04
    add sp, -$10
    db $fc
    or d
    cp h
    and b
    cp $00
    nop
    nop
    ld h, b
    ld h, b
    db $fc
    db $fc
    rst $38
    rst $18
    rst $38
    rst $18
    db $dd
    rst $28
    ld a, a
    db $fd
    rst $38
    stop
    stop
    stop
    db $10
    ld [$1830], sp
    jr nc, jr_005_59f4

    jr nc, jr_005_59f6

    jr nc, jr_005_59fc

    add hl, bc
    ld [hl+], a
    nop
    dec c
    nop
    ccf
    dec c
    ld c, a
    ccf
    ld d, a
    scf
    ld [hl], a
    ccf
    cp [hl]
    ld a, d
    cp [hl]
    ld a, a
    nop
    nop
    add e

jr_005_59f4:
    nop
    ld l, l

jr_005_59f6:
    add e
    ld l, a
    ld a, a
    ld a, l
    db $fd
    db $dd

jr_005_59fc:
    rst $08
    db $db
    ei
    ei
    rst $38
    nop
    nop
    or b
    nop
    db $fc
    or b
    ld a, [c]
    db $fc
    add sp, -$12
    db $fd
    xor $7d
    ld a, [hl]
    ld a, l
    cp $7d
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, [$7702]
    rlca
    and e
    adc e
    pop bc
    db $dd
    db $fc
    nop
    db $fd
    ld bc, $01f9
    pop af
    dec b
    pop hl
    dec c
    ld b, c
    dec e
    add e
    cp e
    add a
    or a
    jr nz, jr_005_5a4f

    ld h, b
    inc a
    ldh [$bd], a
    ld [$eabf], a
    cp a
    ld a, [$d8bf]
    reti


    cp l
    cp a
    add hl, bc
    jr nz, jr_005_5a44

jr_005_5a44:
    cp [hl]
    ld a, a
    cp [hl]
    ld a, [hl]
    scf
    ld a, a
    ld d, a
    dec [hl]
    ld c, a
    ccf
    dec [hl]

jr_005_5a4f:
    rrca
    ld c, $01
    nop
    nop
    ei
    rst $38
    db $db
    ei
    db $dd
    rst $10
    ld a, l
    db $fd
    ld a, a
    ld l, a
    rst $28
    ld bc, $0083
    nop
    nop
    ld a, h
    or $7d
    ld a, [hl]
    db $ec
    cp $ea
    db $ec
    ld a, [c]
    db $fc
    xor h
    ldh a, [rSVBK]
    add b
    nop
    nop
    pop bc
    db $dd
    ret nz

    sbc $e0
    rst $28
    ldh [$ee], a
    ld h, b
    ld l, h
    jr nz, jr_005_5aa8

    add hl, bc
    inc b
    nop
    rlca
    ld b, a
    add e
    adc e
    ret nz

    call c, $dec0
    ret nz

    call c, Call_005_5840
    add hl, bc
    inc b
    nop
    ld [$0e17], sp
    ld sp, $e51a
    di
    inc c
    db $10
    rst $28
    jr jr_005_5ac2

    ld [$0834], sp
    inc d
    cp [hl]
    ld a, a
    cp [hl]
    ld a, [hl]
    scf
    ld a, a

jr_005_5aa8:
    ld d, a
    dec [hl]
    ld c, a
    ccf
    dec [hl]
    rrca
    ld c, $01
    nop
    nop
    ei
    rst $38
    db $db
    ei
    db $dd
    rst $10
    ld a, l
    db $fd
    ld a, a
    ld l, a
    rst $28
    ld bc, $0083
    nop
    nop

jr_005_5ac2:
    ld a, h
    or $7d
    ld a, [hl]
    db $ec
    cp $ea
    db $ec
    ld a, [c]
    db $fc
    xor h
    ldh a, [rSVBK]
    add b
    add hl, bc
    ld [de], a
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $fffe
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    add hl, bc
    jr nz, jr_005_5af6

jr_005_5af6:
    inc bc
    inc bc
    ld [hl], a
    rlca
    rst $30
    rlca
    rst $20
    rlca
    rst $00
    rla
    add a
    scf
    rlca
    ld [hl], a
    rlca
    ld h, a
    cp a
    add b
    cp a
    add b
    rst $18
    ret nz

    rst $28
    ldh [$f7], a
    ldh a, [$fb]
    ld hl, sp-$03
    db $fc
    cp $fe
    db $eb
    ld [$00f3], sp
    ei

jr_005_5b1b:
    nop
    ld sp, hl

jr_005_5b1d:
    nop
    ld hl, sp+$02
    ldh a, [rTMA]
    pop hl
    dec c
    pop bc
    dec e
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, [$7702]
    rlca
    and e
    adc e
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    jr jr_005_5b1b

    jr jr_005_5b1d

    inc c

jr_005_5b5b:
    ldh [$0d], a
    ld bc, $e1ed
    ld d, $10
    db $76

jr_005_5b63:
    ld [hl], b
    nop

jr_005_5b65:
    nop
    inc c
    pop hl
    inc c
    pop hl

jr_005_5b6a:
    ld b, $00
    or $f0
    add [hl]
    add b
    ei
    ld hl, sp-$05
    ld hl, sp+$00
    nop
    rlca
    ld b, a
    inc bc
    inc bc
    add hl, de
    ld bc, $003c
    ld a, [hl]
    nop
    cp [hl]
    add b
    call c, $e0c1
    db $e3
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fd
    ld hl, sp-$05
    ld [hl], b
    ld [hl], a
    jr nc, jr_005_5bc9

    db $10
    rst $10
    nop
    rst $20
    ld bc, $013d

jr_005_5b99:
    db $fd
    ld bc, $00fd
    cp $00
    db $fc
    ld bc, $03f8

jr_005_5ba3:
    ldh a, [rTAC]

jr_005_5ba5:
    ldh [$c1], a

jr_005_5ba7:
    db $dd
    ret nz

    sbc $c0
    rst $18
    ret nz

    sbc $40
    ld e, h
    ld bc, $8319
    inc de
    rst $00
    rlca
    nop
    nop
    nop
    rrca
    nop
    ccf
    nop
    ccf
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    rra
    ld h, b
    rrca
    nop
    rlca
    ld h, b

jr_005_5bc9:
    rrca
    ld h, b
    rrca
    ld h, b
    rrca
    jr nc, @-$77

    jr nc, @-$77

    jr nc, jr_005_5b5b

    jr jr_005_5b99

    nop
    inc bc
    jr nc, @-$77

    jr nc, jr_005_5b63

    jr nc, jr_005_5b65

    jr jr_005_5ba3

    jr jr_005_5ba5

    jr jr_005_5ba7

    inc c
    pop hl
    nop
    nop
    jr nc, jr_005_5b6a

    inc e
    ret nz

    inc c
    ldh [$0e], a
    ldh [$0e], a
    ldh [rTMA], a
    ldh a, [rTMA]
    ldh a, [$f0]
    rst $30

jr_005_5bf8:
    ldh a, [$f7]
    ldh [$ef], a
    ret nz

    rst $18
    nop
    ccf
    nop
    ccf
    nop
    ld e, $00
    nop
    nop
    rst $20
    nop
    db $e3
    nop

jr_005_5c0b:
    ldh [rP1], a

jr_005_5c0d:
    pop bc
    nop
    add a
    nop
    rrca
    nop
    rra
    nop
    ld a, $07
    ret nz

    rla
    sub b
    dec sp
    jr c, jr_005_5c58

    cp b
    dec a
    cp h
    inc e
    sbc h
    ld c, [hl]
    ld c, $ee
    ld c, $e7
    rlca
    db $e3
    inc bc
    pop bc
    add hl, de
    add b
    inc a
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [$60]
    rrca
    ld h, b
    rrca
    ld [hl], b
    rlca
    ld [hl], b
    rlca
    jr nc, @+$06

    dec sp

Call_005_5c41:
    inc bc
    dec c
    ld bc, $0000
    jr jr_005_5c0b

    jr jr_005_5c0d

    inc c
    ldh [$0d], a
    ld bc, $e1ed
    ld d, $10
    db $76

jr_005_5c53:
    ld [hl], b
    nop
    nop
    inc c
    pop hl

jr_005_5c58:
    inc c
    pop hl
    ld b, $00
    or $f0
    add [hl]
    add b
    ei
    ld hl, sp-$05
    ld hl, sp+$00
    nop
    ld b, $f0
    ld [bc], a
    ld hl, sp+$02
    ld hl, sp+$02
    jr jr_005_5c53

    db $e4
    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b

jr_005_5c74:
    nop
    nop
    jr c, jr_005_5bf8

    inc e
    ret nz

    ld c, $e0
    nop
    ldh a, [$0e]
    adc $3e
    ld a, $fc
    db $fc
    ldh [$e0], a
    ld bc, $017c
    nop
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    nop
    nop
    cpl
    jr nz, jr_005_5c74

    ret nz

    or $06
    ld a, [c]
    ld [bc], a
    ldh [rP1], a
    ld c, h
    inc c
    sbc h
    sbc h
    ld a, $3e
    cp [hl]
    ld a, $dd
    inc e
    nop
    pop hl
    nop
    rst $00
    nop
    rrca
    nop
    rrca
    nop
    rlca
    ld h, b
    inc bc
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [$f7]
    ldh a, [$f7]
    ldh [$ef], a
    ret nz

    rst $18
    nop
    ccf
    nop
    ccf
    nop
    ld e, $00
    nop
    nop
    rst $20
    nop
    db $e3
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    add hl, bc
    ld b, $00
    rlca
    ret nz

    rla
    sub b
    dec sp
    jr c, jr_005_5cf5

    jr jr_005_5cf9

    inc e
    inc c
    inc c
    ld b, $06
    nop
    nop
    rst $20
    rlca
    db $e3
    inc bc
    pop bc
    add hl, de
    add b
    jr nc, jr_005_5cec

jr_005_5cec:
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    nop
    add hl, bc
    nop

jr_005_5cf5:
    add hl, bc
    add hl, bc
    ld [de], a
    nop

jr_005_5cf9:
    ld a, [hl]
    ld [bc], a
    ld b, d
    ld a, $42
    ld a, $42
    ld a, $42
    ld a, $42
    ld a, $7e
    ld a, [hl]
    rra
    rra
    jr nz, jr_005_5d4a

    ld b, b
    ld h, b
    sbc a
    rst $18
    sbc a
    ret c

    sbc a
    jp nc, $c79f

    sbc a
    rst $00
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    call nz, Call_005_6eff
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $38
    jp $99ff


    rst $38
    cp l
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $99ff


    rst $38
    cp l
    rst $38
    rst $38
    nop

jr_005_5d4a:
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    inc [hl]
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    ld hl, sp-$08
    inc b
    db $fc
    ld [bc], a
    ld b, $f8
    ld a, [$1efc]
    db $fc
    adc $fc
    xor $fc
    xor $00
    nop
    ld a, a
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    ld bc, $ff01
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    sbc a
    rst $00
    sbc a
    rst $00
    sbc a
    rst $00
    sbc a
    rst $00
    sbc a
    rst $00
    sbc a
    rst $00
    sbc a
    jp nc, $d89f

    rst $38
    xor $ff
    ldh [rIE], a
    ldh [rIE], a
    xor $ff
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    call nz, $bdff
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    sbc c
    rst $38
    jp Jump_005_67ff


    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    sbc c
    rst $38
    jp $e7ff


    rst $38
    dec a
    rst $38
    sbc h
    rst $38
    call $e5ff
    rst $38
    push hl
    rst $38
    db $e4
    rst $38
    ld h, h
    rst $38
    adc [hl]
    db $fc
    cp [hl]
    db $fc
    ld a, $f4
    cp [hl]
    db $fc
    cp $fc
    cp $fc
    xor $fc
    ld c, $fc
    ld e, $c4
    call z, $dc4c
    ld c, b
    ret c

    ld c, b
    ret c

    ld e, h
    db $fc
    ld d, a
    rst $38
    ld a, [c]
    rst $30
    ld [hl+], a
    and $22
    and $e3
    rst $20
    ld b, c
    jp $c341


    jp $82c7


    add [hl]
    add a
    adc a
    add h
    adc a
    sbc a
    rst $18
    sub l
    rst $18
    sub e
    rst $18
    sub a
    rst $18
    sub a
    rst $18
    sub a
    rst $18
    sub [hl]
    rst $18
    sub c
    rst $18
    ei
    add hl, bc
    dec b
    rst $38
    reti


    rst $38
    di
    rst $38
    ld h, a
    rst $38
    rst $00
    rst $38
    adc a
    add hl, bc
    ld b, $ff
    ei
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    push hl
    rst $38
    db $ed
    rst $38
    db $ed
    add hl, bc
    dec b
    rst $38
    adc h
    rst $38
    sbc $ff
    adc $ff
    adc $ff
    sub $ff
    sub $09
    inc b
    rst $38
    cp $7f
    db $fd
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fc
    cp $f4
    cp $e4
    cp $c4
    cp $84
    cp $04
    cp $94
    cp $34

jr_005_5e5e:
    cp $21
    ld h, e
    ld hl, $2763
    ld h, a
    inc a
    ld a, a
    ldh [$fd], a
    and b
    pop hl
    jr nc, jr_005_5e5e

    db $10
    ld sp, $3110
    jr @+$3a

    ld [$3c18], sp
    inc a
    ld h, h
    ld a, h
    ld b, [hl]
    ld l, a
    jp Jump_005_61c7


    db $e3
    sub e
    rst $18
    sub [hl]
    rst $18
    sub h
    rst $18
    sub b
    rst $18
    sub c
    rst $18
    sub b
    rst $18
    sub c
    rst $18
    sub e
    rst $18
    ld e, $ff
    dec a
    rst $38
    ld a, c
    rst $38
    di
    rst $38
    ld h, a
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    call $c5ff
    rst $38
    pop bc
    rst $38
    sbc c
    rst $38
    sbc l
    rst $38
    ld [$0509], sp
    rst $38
    jp c, $daff

    rst $38
    call c, $dcff
    rst $38
    sbc $ff
    adc h
    add hl, bc
    inc b
    rst $38
    ld a, [$f4ff]
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    ld a, a
    add hl, bc
    inc b
    rst $38
    ld [hl], h
    cp $f4
    cp $f4
    cp $f4
    cp $f4
    cp $e4
    cp $c4
    cp $84
    cp $00
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    ld a, $00
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    add hl, bc
    dec bc
    ld a, a
    ld hl, sp+$7f
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    ei
    rst $38
    ld a, $ff
    sbc h
    rst $38
    reti


    rst $38
    reti


    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    ld a, $ff
    call c, $d9ff
    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    adc c
    rst $38
    jp hl


    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    add hl, bc
    dec b
    rst $38
    rst $08
    rst $38
    rst $28
    sub h
    cp $b4
    cp $74
    cp $f4
    cp $e4
    cp $c4
    cp $b4
    cp $64
    cp $3f
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    add hl, bc
    ld de, $ff7f
    ei
    ld a, a
    ld sp, hl
    ccf
    ld hl, sp-$61
    db $fc
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld sp, hl
    rst $38
    ret c

    rst $38
    inc e
    rst $38
    ld a, $09
    inc b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ret


    rst $38
    ret z

    rst $38
    inc c
    rst $38
    ld l, $09
    inc b
    rst $38
    nop
    rst $38
    nop
    nop
    cp $cf
    db $fd
    rst $08
    rst $38
    rrca
    rst $38
    cpl
    cp $ff
    db $fc
    rst $38
    nop
    rst $38
    nop
    nop
    db $e4
    cp $cc
    cp $94
    cp $2c
    cp $5c
    cp $fa
    cp $04
    db $fc
    nop
    nop
    ccf
    nop
    ccf
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    add b
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    add hl, bc
    dec b
    ld a, a
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    add hl, bc
    ld b, $7f
    sub d
    rst $18
    sub b
    rst $18
    sub b
    rst $18
    sub c
    rst $18
    sub e
    rst $18
    sub e
    rst $18
    sub c
    rst $18
    sub b
    rst $18
    nop
    nop
    ld a, a
    nop
    ld b, b
    ccf
    ld e, a
    ccf
    ld d, b
    ccf
    ld d, l
    ccf
    ld d, l
    ccf
    ld d, b
    ccf
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl-], a
    rst $38
    push af
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl-], a
    rst $38
    push af
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $ff01
    db $fd
    rst $38
    dec b
    rst $38
    push bc
    rst $38
    dec [hl]
    rst $38
    dec b
    rst $38
    nop
    nop
    rra
    nop
    nop
    nop
    ld a, $01
    nop
    nop
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    nop
    nop
    add b
    ld a, a
    nop
    nop
    ld bc, $00ff
    nop
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    add hl, bc
    ld b, $ff
    sub h
    rst $18
    sub [hl]
    rst $18
    sub a
    rst $18
    sub e
    rst $18
    sbc b
    rst $18
    ld e, a
    ld a, a
    jr nz, jr_005_60b6

    rra
    rra
    ld e, a
    ccf
    ld b, b
    ccf
    ld a, a
    ld a, a

Call_005_607f:
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add hl, bc
    inc b
    nop
    ld [bc], a
    cp $02
    cp $00
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add hl, bc
    inc b
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    nop
    db $fd
    rst $38
    ld bc, $ffff
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add hl, bc
    nop
    ld [de], a

jr_005_60b6:
    ld [de], a
    ld de, $ff00
    nop
    push af
    nop
    ld [$ee04], a
    inc b
    push af
    inc b
    push af
    nop
    ld [$ee04], a
    nop
    rst $38
    nop
    ld e, a
    nop
    xor a
    ld b, b
    rst $28
    ld b, b
    ld e, a
    ld b, b
    ld d, l
    nop
    xor d
    ld b, h
    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    xor a
    ld b, b
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    xor $00
    push de
    nop
    cp e
    nop
    cp e
    nop
    ld a, e
    ld c, $7f
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, d
    dec e
    sbc l
    ld de, $2095
    and h
    ld sp, $00b5
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $18
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    cp a
    nop
    sbc e
    and b
    and l
    ldh a, [$fe]
    ld h, b
    ld h, c
    nop
    sbc a
    nop
    ld h, b
    sbc [hl]
    sbc a
    nop
    ei
    nop
    push af
    nop
    push af
    ld [$08e6], sp
    and $08
    and $08
    rst $20
    nop
    rst $08
    inc b
    or l
    inc b
    ld d, l
    nop
    ld c, d
    add h
    ld l, [hl]
    add h
    ld h, l
    add h
    ld h, h
    nop
    ld l, d
    nop
    ld l, a
    ld b, h
    ld d, l
    ld b, h
    ld d, l
    nop
    xor d
    ld b, h
    xor $44
    ld d, l
    ld b, b
    ld c, d
    inc b
    xor [hl]
    inc b
    push af
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    nop
    xor a
    ld b, b
    rst $28
    ld b, b
    ld e, a
    nop
    xor a
    ld b, b
    rst $28
    ld b, b
    ld c, e
    inc a
    cp a
    ld [de], a
    inc b
    ld a, a
    ccf
    ld a, a
    rra
    cp a
    rlca
    rst $18
    nop
    rst $20
    nop
    ld hl, sp-$4f
    pop af
    ret nz

    adc $80
    sbc e
    add h
    or l
    adc [hl]
    xor [hl]
    add b
    or l
    ret nz

    jp z, $f171

    add b
    jp z, Jump_005_6a40

    jr z, jr_005_61b5

    ccf
    cp a
    ld h, $a6
    add hl, de
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    sbc c
    cp $fe
    ld a, h
    ld a, l
    cp b
    cp l
    ldh [$fb], a
    ldh [$f7], a
    ld b, b
    ld l, a
    add b
    xor a
    add b
    rst $18
    db $10
    rst $08
    db $10
    rst $08
    ld de, $7b8f
    ld a, a
    ld a, e
    ld a, e
    dec [hl]
    ld [hl], l
    rra
    ld a, a

jr_005_61b5:
    add hl, bc
    cp c
    nop
    ld [hl], c
    ld c, $7e
    sbc a
    rst $38
    rst $38
    rst $38
    sbc $de
    xor l
    xor l
    rst $38
    rst $38
    adc $ce

Jump_005_61c7:
    inc b
    dec d
    db $e4
    push hl
    ret nz

    jp c, $dfc0

    ret nz

    pop de
    ld l, [hl]
    ld l, [hl]
    rst $38
    rst $38
    ld [hl], e
    ld [hl], e
    ld b, h
    ld d, l
    ld b, [hl]
    ld d, [hl]
    nop
    xor c
    nop
    rst $38
    nop
    ld de, $eeec
    db $fc
    cp $fc
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ld a, a
    rrca
    cp a
    ld b, $c6
    inc bc
    ei
    inc bc
    ei
    dec b
    push af
    ld a, [bc]
    jp z, Jump_000_3f3f

    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
    xor d
    xor d
    ld [de], a
    inc b
    rst $38
    rst $28
    rst $28
    sub $d6
    rst $38
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub $00
    and $07
    rst $28
    inc bc
    rst $28
    ld bc, $00f7
    ei
    nop
    db $fc
    nop
    rst $38
    add h
    or l
    add h
    or l
    ld [de], a
    ld b, $ff
    ld [hl], e
    rst $38
    nop
    di
    nop
    inc c
    ld hl, $21ad
    xor l
    ld [de], a
    ld b, $ff
    inc sp
    rst $38
    nop
    inc sp
    nop
    call z, $bdb8
    ld d, b
    ld e, e
    ldh [$f7], a
    ret nz

    rst $28
    ret nz

    rst $28
    add b
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    cp $01
    db $fd
    inc bc
    ei
    ld bc, $00fb
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    rst $38
    rst $38
    ld a, a
    rst $38
    inc e
    ld a, a
    nop
    sbc h
    nop
    db $e3
    rst $38
    rst $38
    or $f7
    ld l, b
    ld l, d
    ld hl, sp-$03
    ld hl, sp-$03
    ld h, b
    ei
    nop
    ld h, a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [$f004]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    rst $20
    rra

jr_005_62ad:
    sbc a
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc a
    inc bc
    jp $ffc7


    rst $38
    rst $38
    di
    di
    nop
    rst $38
    nop
    jp Jump_000_3c30


    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    add b
    rst $20
    ld hl, sp-$07
    cp $fe
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    and $1f
    call z, $ff00
    nop
    ccf
    ret nz

    ld e, $e1
    call z, $20f3
    ei
    ld de, $09fd
    cp $0c
    nop
    cp a
    ld b, b
    rra
    ldh [rIF], a
    ldh a, [rBGP]
    ld hl, sp-$6d
    db $fc
    add hl, bc
    cp $04
    rst $38
    add [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_005_62ad

    ld [hl], b
    daa
    ccf
    ld a, a
    rrca
    ld a, a
    inc b
    adc h
    inc bc
    di
    rrca
    rst $08
    ccf
    cp a
    inc sp
    ld a, a
    ld bc, $c033
    call z, Call_000_3f38
    ld a, [c]
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    inc sp
    inc sp
    sbc c
    sbc c
    rst $38
    rst $38
    ld a, b
    ld a, b
    ld b, $87
    rrca
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    inc sp
    inc sp
    sbc c
    sbc c
    cp $fe
    ldh a, [$f9]
    jr nz, jr_005_637d

    nop
    rst $08
    ret nz

    pop af
    cp $fe
    sbc h
    cp $00
    sbc l
    ccf
    sub b
    ccf
    nop
    ld e, a
    nop
    ld l, a
    nop
    cpl
    add b
    ld b, $c0
    nop
    ld sp, hl
    ld bc, $ffde
    ld h, $ff
    inc de
    rst $38
    add hl, bc
    rst $38
    inc b
    sbc [hl]
    nop
    dec c
    ld h, b
    and a

jr_005_637d:
    ld d, b
    ld c, e
    or b
    ld a, a
    ld c, e
    cp a
    dec h
    rst $18
    sub d
    ld h, a
    nop
    xor d
    nop
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    cp b
    inc de
    db $fc
    sbc c
    db $fc
    dec c
    ld a, h
    ld bc, $0cbe
    sbc $10
    cp $08
    cp $04
    nop
    adc l
    nop
    cp $01
    ld sp, hl
    rlca
    rst $30
    rrca
    rst $28
    nop
    rst $28
    nop
    ldh a, [rP1]
    rst $38
    ld [de], a
    inc b
    cp e
    rst $38
    rst $38
    ei
    ei
    di
    di

jr_005_63b9:
    ld sp, hl
    ld sp, hl
    dec sp
    ei
    dec bc
    dec sp
    cp e
    cp e
    cp d
    cp d
    rst $38
    rst $38
    cp e
    cp e
    inc sp
    inc sp
    sbc c
    sbc c
    cp e
    cp e
    cp d
    cp e
    nop
    ld h, e
    nop
    rst $38
    nop
    rra
    ldh [$ef], a
    ldh a, [$f7]
    ret nz

    rst $30
    nop
    rst $28
    nop
    rra
    ld [hl+], a
    add l
    ld a, c
    ld [bc], a
    ld a, [hl-]
    ld bc, $005c
    ld e, a
    nop
    ccf
    add b
    ld a, a
    ld bc, $013f
    sbc h
    ld h, b
    jr c, jr_005_63b9

    ld [hl], b
    add e
    call z, Call_000_3e05
    ld b, $ff
    call z, $8cff
    rst $38
    sbc b
    rst $38
    nop
    ld sp, hl
    nop
    ld h, b
    ld b, $02
    sbc l
    inc b
    ei
    add hl, bc
    ld d, $e3
    call z, $c8e6
    cp $0c
    db $fc
    jr @-$02

    jr nc, jr_005_6494

    ld h, b
    cp h
    ld bc, $00da
    sub [hl]
    ld b, b
    inc b
    ld h, c
    nop
    rst $38
    nop
    cp $01
    db $fd
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    adc e
    ld a, a
    ld a, a
    ld [de], a
    inc b
    rst $38
    inc c
    rst $38
    nop
    inc c
    nop
    di
    nop
    rst $38
    cp d
    cp d
    db $fc
    cp $f8
    db $fd
    ldh a, [$fd]
    ldh [$fb], a
    nop
    rst $20
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    di
    ld [$5fcf], sp
    inc bc

jr_005_6460:
    ld e, a
    inc bc

jr_005_6462:
    ccf
    add [hl]

jr_005_6464:
    ld a, b
    nop
    ld [bc], a
    nop
    ld e, l
    nop
    inc c
    add b
    nop
    db $e3
    rst $38
    add hl, de
    rst $38
    ld sp, $33ff
    adc b
    nop
    ld [hl+], a
    nop
    db $dd
    nop
    call z, RST_00
    ld [hl+], a
    pop af
    add b
    rst $38
    add h
    rst $38
    inc c
    adc b
    ld [$0022], sp
    db $dd
    nop
    call z, RST_00
    inc sp
    add b
    inc sp
    ret nz

    ld e, a
    ldh [$c1], a

jr_005_6494:
    xor $80
    ld bc, $de01
    nop
    call z, RST_00
    ld sp, $0012
    ld [de], a
    nop
    rst $38
    nop
    cp e
    ld b, h
    ld de, $1100
    ld b, h
    ld de, $26ee
    xor $66
    xor $66
    nop
    rst $38
    nop
    ei
    inc b
    pop af
    nop
    pop af
    inc b
    pop af
    ld c, $e6
    ld c, $e6
    ld c, $c6
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_005_64c9:
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    jr nz, jr_005_6460

    jr nz, jr_005_6462

    jr nz, jr_005_6464

    ld h, b
    cpl
    ld [hl], b
    scf
    ldh a, [rPCM34]
    sub b
    rla
    sub b
    inc de
    db $e4
    ld l, l
    nop
    rst $38
    nop
    rst $30
    nop
    db $eb
    ld [$1cdb], sp
    cp l
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ret nz

    ld e, a
    add b
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], e
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    nop
    nop
    nop
    db $fc
    nop
    rst $08
    jr nc, jr_005_64c9

    add hl, bc
    ld a, e
    add hl, bc
    ld a, e
    nop
    rst $38
    ld [hl], b
    rst $38
    adc a
    adc a
    nop
    ld [hl], b
    nop
    ldh a, [rTMA]
    ldh a, [rTMA]
    ld a, [c]
    ld b, $f2
    rlca

jr_005_652a:
    jp $b307


    rrca
    ld h, e
    ld c, a
    ld h, a
    xor $66
    rst $28
    ld h, a
    rst $38
    ld [hl], a
    cp c
    ld sp, $5256
    ld d, [hl]
    ld d, d
    ld l, a
    ld h, a
    xor a
    and a
    xor [hl]
    add [hl]
    ld l, $06
    ld [hl], $16
    ld [hl], $16
    or [hl]
    ld d, $74
    inc [hl]
    ld a, d

jr_005_654e:
    ld a, [hl-]
    ld a, d

jr_005_6550:
    ld a, [hl-]
    ld [bc], a
    ld e, [hl]
    add d

jr_005_6554:
    ld a, $86
    cp [hl]
    call z, Call_005_50dd
    ld d, e
    ld b, b
    ld c, a
    jr nz, jr_005_654e

jr_005_655f:
    jr nz, jr_005_6550

    nop
    rst $28
    db $10
    rst $10
    nop
    reti


    nop
    cp [hl]
    ld [bc], a
    ld a, [hl]
    ld b, h
    ld a, l
    jr c, jr_005_652a

    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    xor a
    nop
    ld [hl], a
    nop

jr_005_6582:
    ld a, a
    nop
    cp a
    nop
    ld c, a
    db $10
    ld [hl], a
    jr nc, jr_005_6582

    ret nz

    rst $08
    nop
    ccf
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    cp h
    add c
    cp h
    pop bc
    call c, Call_005_5c41
    ld h, e
    ld l, c
    and e
    xor c
    or a
    or e
    ld c, a
    ld h, a
    ld b, [hl]
    ld [hl], b
    jr nc, jr_005_655f

    add hl, bc
    call z, $f401
    inc b
    rst $30
    ld b, $f7
    inc bc
    ei
    add hl, hl
    ld hl, $10d6
    sub $52
    rst $28
    rst $20
    rst $20
    rst $20
    ld [$1de2], sp
    call z, $cc1d
    ld c, d
    ld a, [bc]
    or l
    add h
    or l
    sub h
    ld a, e
    add hl, sp
    ld [hl], d
    jr nc, jr_005_6554

    ld [hl+], a
    call c, $dccd
    call $df40
    add b
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    rra
    ret nc

    rrca
    xor $00
    ldh a, [rP1]
    db $fd
    nop
    rst $38
    nop
    ld e, a
    nop
    xor a
    ld b, b
    rst $28
    ld b, b
    ld e, a
    ld b, b
    ld e, [hl]
    nop
    xor [hl]
    ld b, c
    db $ed
    nop
    call z, $b232
    ld [hl], $b6
    db $76
    db $76
    ld h, e
    ld l, e
    db $e3
    db $eb
    pop bc
    db $dd
    ld b, c
    ld d, l
    rst $10
    db $d3
    db $db
    reti


    ld l, d
    ld l, b
    ld l, l
    ld l, l
    dec [hl]
    or l
    dec sp
    cp e
    rra
    ld e, [hl]
    ld e, $50
    ld bc, $00fd
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or e
    sub e
    or e
    sub e
    add b
    rst $38
    add b
    rst $38
    ld c, h
    ld a, a
    inc hl
    and e
    nop
    call c, $ff00
    ld [de], a
    inc b
    ld [hl-], a
    nop
    rst $38
    ld bc, $61ff
    rst $38
    adc d
    adc [hl]
    inc b
    ld [hl], l
    nop
    ei
    nop
    jp $813c


    ld a, [hl]
    nop
    ld a, [hl]
    ld e, d
    inc h
    and l
    nop
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    call z, $bb01
    ld hl, $38bb
    cp a
    ld c, $cf
    inc bc
    di
    nop
    db $fc
    ld b, c
    ld e, l
    ld [bc], a
    xor d
    ld b, d
    ld [$5545], a
    ld b, l
    ld b, l
    ld c, d
    ld e, d
    ld a, [bc]
    ld [$5606], a
    ld b, b
    ld d, [hl]
    ret nz

    jp nc, $ad8c

jr_005_6686:
    inc e
    ld e, l

jr_005_6688:
    ld d, $56

jr_005_668a:
    ld [hl], $b6
    dec hl
    xor e
    dec l

jr_005_668f:
    xor l
    jr nc, jr_005_6693

    nop

jr_005_6693:
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    db $10
    ld [hl], a
    db $10
    rst $30
    jr nz, jr_005_668f

    nop
    rst $38
    nop
    di
    inc c
    db $ec
    dec c
    db $ed
    dec c
    db $ed
    jr jr_005_6686

    jr jr_005_6688

    jr jr_005_668a

    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    and b
    xor a
    and b
    xor a
    and b
    xor e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    ld a, e
    ld a, e
    ld a, [hl-]
    cp d
    add hl, hl
    xor c
    dec l
    xor l
    dec d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b
    cp a
    add b
    cp a
    ret nz

    rst $18
    ret nz

    rst $18
    inc b
    push af
    nop
    ld [$ee04], a
    inc b
    push af
    inc b

jr_005_66e9:
    call nz, $9504
    nop
    rst $38
    nop
    adc h
    inc b
    sub h
    nop
    db $e3
    nop
    db $fd
    nop
    ld a, d
    nop
    ld l, a
    nop
    rst $10
    ret nz

    rst $38
    ld [hl], e
    ld a, a
    ld h, [hl]
    ld h, [hl]
    nop
    jr jr_005_6705

jr_005_6705:
    rst $30
    nop
    db $eb
    nop
    cp [hl]
    nop
    ld e, l
    nop
    rst $38
    adc [hl]
    rst $38
    ret nz

    rst $18
    nop
    ccf

jr_005_6714:
    nop
    cp $00
    db $fd
    ld bc, $00fd
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    push de
    ld a, [hl-]
    cp d
    ld a, $be
    jr nc, jr_005_66e9

    jr nc, jr_005_66e9

    jr nc, @-$49

    ld [hl], b
    ld [hl], l
    ld h, b
    ld l, h
    ld h, d
    ld l, d
    jp nz, $87da

    or a
    ld d, $56
    ld a, [de]
    ld e, d
    adc e
    xor e
    adc l
    xor l
    adc [hl]
    xor [hl]
    ld b, e
    ld d, e
    adc h
    adc h
    rst $38
    rst $38
    ldh [$ef], a
    ldh [$ef], a
    ldh a, [$f7]
    ldh a, [$f7]
    ldh [$e7], a
    db $10
    rla
    ld a, b
    ld a, e
    ld hl, sp-$05
    ld b, b
    ld [hl], e
    ld h, b
    ld a, a
    db $10
    sbc h
    dec bc
    db $eb
    rlca
    rst $30
    ld [bc], a
    ei
    ld bc, $00fd
    cp $1c
    sbc h
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    ld [hl], c
    nop
    adc [hl]
    nop
    rst $38
    nop
    rst $28
    nop
    rst $10
    db $10
    or a
    jr c, jr_005_6809

    nop
    add e
    jr c, jr_005_6714

    nop
    add $00
    cp $00
    cp $02
    xor $00
    ld d, l
    inc b
    db $fd
    ld [$5dbb], sp
    ld e, l
    ld l, l
    ld l, l
    dec hl
    xor e
    dec de
    db $db
    dec sp
    cp e
    ld e, l
    ld e, l
    ld l, [hl]
    ld l, [hl]
    cpl
    xor a
    adc l
    xor l
    adc l
    xor l
    dec de
    ld e, e
    dec d
    ld d, l
    dec d
    ld d, l
    ld c, $4e
    ld sp, $ff31
    rst $38
    ld a, l
    ld a, l
    cp $fe
    sbc c
    sbc c
    ld [hl+], a
    ld [hl+], a
    cp e
    cp e
    sbc c
    sbc c
    nop
    ld h, [hl]
    nop
    rst $38
    ld a, h
    ld a, l
    db $fc
    db $fd
    sbc [hl]
    sbc [hl]
    jr nz, jr_005_67f8

    cp [hl]
    cp [hl]
    sbc b
    sbc c
    nop
    ld h, e
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    nop
    scf
    ld [$8823], sp
    and d
    adc b
    and d
    call c, $fdcc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_005_67f8:
    add b
    ccf
    add b
    ccf
    add b
    cpl
    ret nc

Jump_005_67ff:
    rst $00
    nop
    ldh [rP1], a
    cp $00
    db $fd
    nop
    ei
    nop

jr_005_6809:
    or $00
    push af
    nop
    rst $28
    nop
    db $db
    ld [$105b], sp
    rst $30
    db $10
    rst $30
    jr nz, @+$71

    ld b, b
    rst $18
    add b
    cp a
    nop
    ld a, a
    nop
    rst $38
    dec e
    db $dd
    ld a, $be
    ld a, c
    ld a, c
    ld b, $86
    dec l
    xor l
    add hl, bc
    ret


    nop
    and $00
    rst $38
    ld a, l
    ld a, l
    cp $fe
    sbc c
    sbc c
    ld [hl+], a
    ld [hl+], a
    cp e
    cp e
    sbc c
    sbc c
    nop
    ld h, [hl]

jr_005_683e:
    nop
    rst $38
    db $fd
    db $fc
    db $fd
    db $fc
    ld [hl], e
    ld [hl], d
    ld [de], a
    inc b
    xor l
    sbc $de
    rst $38
    rra
    rra
    nop
    ret nc

    rst $00
    ret nc

    rst $00
    cp b
    sbc e
    cp b
    sbc e
    cp b
    sbc e
    ld a, b
    dec sp
    ld h, h
    dec h
    ld h, h
    dec h
    nop
    or l
    nop
    ccf
    nop
    xor $00
    push de
    nop
    rst $38
    pop bc
    rst $38
    ld a, $3e
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, jr_005_683e

    ld b, h
    cp e
    add d
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh a, [$0d]
    ldh [$0e], a
    ldh [rTIMA], a
    ldh a, [rTMA]
    ldh a, [rTMA]
    ldh a, [rP1]
    ld sp, hl
    nop
    ccf
    ret nz

    rra
    jr nz, @+$11

    ret nz

    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    nop
    dec b
    dec b
    stop
    ld a, a
    ld a, h
    add e
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    cp $03
    cp $1f
    rra
    and b
    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [$80]
    db $fc
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $81ff
    rst $38
    rlca
    rlca
    jr jr_005_6908

    and b
    ccf
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    add b
    ld [hl], b
    ret nz

    inc a
    ldh [$3c], a
    ldh [$78], a
    ret nz

    ld a, b
    ret nz

    ld a, b
    ret nz

    ld a, b
    ret nz

    dec b
    inc b
    nop

jr_005_6908:
    dec b
    ld [$0201], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    ld b, $05
    inc b
    ld [$fe03], sp
    inc bc
    cp $07
    db $fc
    rlca
    call c, Call_000_0407
    rlca
    inc b
    ld c, $08
    ld c, $08
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, @+$41

    db $10
    rra
    ld [$f80f], sp
    add b
    ld a, h
    ret nz

    ccf
    pop hl
    rra
    pop af
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld [bc], a
    cp $02
    cp $fd
    db $fd
    add c
    ld bc, $01c1
    pop hl
    ld bc, $ff80
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $08
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rTIMA], a
    ld de, $0800
    ld [$0805], sp
    db $10
    dec b
    ld b, $20
    ld c, $08
    inc e
    db $10
    dec e
    ld de, $121e
    inc e
    inc d
    jr c, jr_005_69bc

    jr c, jr_005_69be

    jr c, jr_005_69c0

    inc b
    rlca
    ld [bc], a
    ld [bc], a
    db $fd
    pop af
    ld c, $08
    rlca
    inc b
    rlca
    inc b
    ld c, $08
    rlca
    rlca
    nop
    ld c, $00
    inc b
    nop
    nop
    add b
    add b
    dec b
    ld b, $40
    add b
    add b
    ld a, [c]
    add e
    ld [hl], d
    ld b, e
    ld a, [hl-]
    ld [hl+], a
    ld a, [hl-]

jr_005_69bc:
    ld [hl+], a
    inc e

jr_005_69be:
    inc d
    inc e

jr_005_69c0:
    inc d
    inc e
    inc d
    inc e
    inc d
    inc bc
    add [hl]
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    dec b
    inc b
    nop
    dec b
    ld b, $01
    dec b
    inc b
    ld [bc], a
    ld [c], a
    add d
    jr nz, jr_005_6a12

    ld b, b
    ld b, b
    ld b, b
    ld a, a
    ld b, b
    ld b, b
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    add b
    ld a, a
    ld a, a
    jr c, jr_005_6a2a

    ld [hl], b
    ld d, b
    ld [hl], b
    rst $18
    ld [hl], b
    ld d, b
    ld [hl], b
    rst $18
    ldh [$bf], a
    rst $38
    sub b
    rst $08
    rrca
    dec b
    dec b

jr_005_6a12:
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    dec b
    dec b
    nop

jr_005_6a21:
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    inc bc

jr_005_6a2a:
    rst $38
    db $fc
    jr c, jr_005_6a56

    jr c, jr_005_6a58

    jr c, jr_005_6a21

    ld a, b
    ld c, b
    ld [hl], b
    rst $18
    ldh a, [$9f]
    rst $18
    db $10
    adc a
    rrca
    dec b
    dec b
    nop
    rst $38

Jump_005_6a40:
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    dec b
    dec b
    nop
    rst $38
    nop
    nop
    nop

jr_005_6a51:
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_005_6a56:
    rst $38
    rst $38

jr_005_6a58:
    ld [hl], h
    ld b, h
    inc a
    inc h
    inc a
    rst $20

jr_005_6a5e:
    jr c, jr_005_6a88

    jr c, jr_005_6a51

    ld [hl], b
    rst $18
    rst $38
    sub b
    rst $28
    rrca
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    ldh a, [$c0]
    jr c, jr_005_6a5e

    inc e
    ldh a, [$0e]
    ld hl, sp+$0e
    ld hl, sp+$07
    db $fc
    rlca
    db $fc

jr_005_6a88:
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    inc b
    inc bc
    ld [$0807], sp
    rlca
    db $10
    rrca
    ld [de], a
    dec c
    nop
    nop
    rst $38
    nop
    ld b, b
    cp a
    ld b, b
    cp a
    ld c, [hl]
    or c
    ld c, c
    or b
    ld c, c
    or b
    ld c, c
    or b
    nop
    nop
    inc a
    nop
    and h
    jr jr_005_6b13

    sbc b
    ld [hl-], a
    call z, $cc32
    ld [hl-], a
    call z, $cc33
    nop
    nop
    ld a, a
    nop
    ld c, h
    inc sp
    ld c, h
    inc sp
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, e
    sub h
    ld h, e
    nop
    nop
    rst $38
    nop
    ld bc, $01fe
    cp $ff
    nop
    add c
    nop
    ld sp, hl
    nop
    add hl, bc
    ldh a, [rP1]
    nop
    db $e3
    nop
    ld [hl+], a
    pop bc
    ld [hl+], a
    pop bc
    ld [de], a
    pop hl
    ld a, [bc]
    pop af
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    ldh [rIE], a
    sub b
    rra
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    db $10
    rra
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    ld c, $f8
    ld c, $f8
    ld c, $f8
    inc e
    ldh a, [rNR32]
    ldh a, [rNR52]
    add hl, de
    ld h, $19
    ld c, [hl]
    ld sp, $3f40
    add b
    ld a, a
    sbc [hl]

jr_005_6b13:
    ld h, c
    db $e3
    nop
    nop
    nop
    ld c, c
    or b
    ld c, c
    or b
    ld c, c
    or b
    ld c, [hl]
    or c
    ld b, b
    cp a
    ld b, b
    cp a
    rst $38

jr_005_6b25:
    nop
    nop
    nop
    add hl, hl
    add $29

jr_005_6b2b:
    add $29
    add $28
    rst $00
    ld b, h
    add e
    add h
    inc bc
    rlca
    nop
    nop
    nop
    inc h

jr_005_6b39:
    jp $c324


    inc h
    jp $c324


    ld b, h
    add e
    ld b, h
    add e
    rst $00
    nop
    nop
    nop
    add hl, bc
    ldh a, [$f9]
    nop
    add c
    nop
    rst $38
    nop
    ld bc, $01fe
    cp $ff
    nop
    nop
    nop
    jr nz, jr_005_6b39

    jr nc, jr_005_6b2b

    jr z, jr_005_6b25

    inc h
    jp $c122


    ld [hl+], a
    pop bc
    db $e3
    nop
    nop
    nop
    jr nz, jr_005_6ba9

    jr nz, jr_005_6bab

    jr nz, jr_005_6bad

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld b, a
    add b
    add c
    nop
    nop
    inc e
    ldh a, [$38]
    ldh [$38], a
    ldh [$38], a
    ldh [rSVBK], a
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ldh [$80], a
    nop
    nop
    rrca
    nop
    ld [hl], h
    rrca
    add d
    ld a, a
    pop hl
    rra
    dec e
    inc bc
    inc bc
    dec b
    dec b
    nop
    add b
    nop
    ld h, b
    add b
    jr c, @-$1e

    inc d
    ld hl, sp+$12
    db $fc
    push de
    ld a, $34
    rrca
    dec b
    ld c, $00

jr_005_6ba9:
    add c
    dec b

jr_005_6bab:
    dec c
    nop

jr_005_6bad:
    ld a, b
    nop
    rst $20
    ld a, b
    dec b
    inc d
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0103
    dec b
    inc b
    nop
    ld bc, $01ff
    ld bc, $fe03
    rrca
    db $fc
    db $fc
    ld [hl], b
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ret nz

    nop
    ret nz

    nop
    add b
    dec b
    add hl, bc
    nop
    ld bc, $0e00
    ld bc, $0f39
    ld d, d
    ccf
    sub d
    ld a, a
    xor a
    ld [hl], b
    ldh a, [rP1]
    add hl, bc
    rlca
    push hl
    inc bc
    sbc [hl]
    push hl
    dec h
    cp $49
    rst $38
    ld a, [c]
    rrca
    ld c, $01
    ld bc, $4200
    add c

jr_005_6bfb:
    ld b, h
    add e
    xor b
    rst $00
    ld l, h
    rst $00
    sub d
    ld l, a
    ld [hl], c
    xor [hl]
    jp nc, $feac

    inc l
    ld [de], a
    rst $38
    sub c
    rst $38
    adc c
    rst $38
    ld a, b
    rst $00
    rst $00
    dec b
    rlca
    nop
    ret nz

    nop
    ld h, b
    ret nz

    jr nc, jr_005_6bfb

    sbc b
    ldh a, [$98]
    ldh a, [$f8]
    dec b
    dec b
    nop
    inc bc
    nop
    inc bc
    ld bc, $0307
    rlca
    inc bc
    rlca
    ld bc, $0207
    rrca
    rlca
    rrca
    rlca
    dec b
    nop
    dec bc
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    rst $38
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [rNR34]
    ldh a, [rP1]
    nop
    add b
    nop
    add b
    nop
    add b
    dec bc
    add hl, bc
    nop
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    rst $38
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1e
    ldh a, [rNR34]
    ldh a, [$81]
    ld bc, $0382
    add d
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    rst $38
    cp $01
    rst $38
    ld bc, $03ff
    cp $03
    cp $03
    cp $07
    db $fd
    rlca
    db $fd
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rra
    jr nz, jr_005_6cf3

    jr nz, jr_005_6cf5

    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    ld e, $f0
    rrca
    ld hl, sp+$0f
    ld hl, sp+$07
    db $f4
    rlca
    db $e4
    rlca
    call nz, $c203
    inc bc
    jp nz, Jump_000_060b

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop

Call_005_6cdd:
    db $10
    rra
    jr nz, jr_005_6d20

    jr nz, jr_005_6d22

    jr nz, jr_005_6d24

    jr nz, jr_005_6d26

    ld b, b
    ld a, a
    ld b, b
    ld a, h
    ld b, b
    ld a, b
    ld e, $f0
    rrca
    ld hl, sp+$07
    db $fc

jr_005_6cf3:
    inc bc
    ld a, [c]

jr_005_6cf5:
    ld bc, $00e1
    ldh [rP1], a
    ld h, b
    nop
    ld [hl], b
    ld [$100f], sp
    rra
    sub b
    rra
    ret nc

    rra
    ldh [$3f], a
    ldh [$a3], a
    ld b, b
    ld b, b
    nop
    nop
    rlca
    db $fd
    ld c, $ea
    ld c, $8a
    ld c, $8a
    inc e
    sub h
    inc e
    call nc, $941c
    jr c, jr_005_6d85

    nop
    ccf
    inc bc

jr_005_6d20:
    rra
    rlca

jr_005_6d22:
    inc e
    rlca

jr_005_6d24:
    inc e
    rlca

jr_005_6d26:
    inc [hl]
    ld c, $68
    ld c, $08
    ld c, $08
    add b
    sbc a
    add b
    adc a
    nop
    rrca
    ld bc, $0107
    ld bc, $0203
    inc bc
    inc bc
    nop
    nop
    ld bc, $01e1
    pop hl
    add c
    pop af
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    pop af
    add c
    pop af
    add c
    pop af
    add c
    ld a, c
    ld b, c
    ld a, d
    ld b, d
    add b
    ldh a, [$80]
    ldh [$80], a
    ret nz

    nop
    add b
    dec bc
    ld b, $01
    inc bc
    ld [bc], a
    nop
    db $10
    ld b, b
    ld b, b
    ldh [$a0], a
    ldh a, [$90]
    ld hl, sp+$08
    db $e4
    inc b
    ld [c], a
    ld [bc], a
    pop bc
    ld bc, $100b
    nop
    jr c, @+$2a

    jr c, jr_005_6da9

    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b

jr_005_6d85:
    ld [hl], b
    ld d, b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    jr c, jr_005_6db5

    jr c, @+$22

    jr c, jr_005_6db9

    ld [hl], b
    ld b, b
    ld [hl], c
    ld b, c
    dec bc
    dec b
    nop
    rst $38
    nop
    nop
    rrca
    rst $38
    rra
    ldh a, [$fe]
    db $10

jr_005_6da9:
    db $fc
    ldh [$0b], a
    dec b
    nop
    rst $38
    nop
    nop
    ldh a, [rIE]
    db $10
    rra

jr_005_6db5:
    rrca
    ld [$0f0f], sp

jr_005_6db9:
    ld a, d
    ld b, d
    ld a, $22
    inc a
    rst $20
    inc e
    inc d
    inc e
    rst $30
    inc e
    rst $30
    ei
    ld a, [bc]
    ld sp, hl
    ld sp, hl
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    db $fc
    rlca
    inc b
    rlca
    db $fc
    rrca
    ld hl, sp-$01
    ld [$f0fe], sp
    pop bc
    ld bc, $02c2
    add d
    inc bc
    add d
    ld [bc], a
    add d
    inc bc
    inc b
    rlca
    rlca
    inc b
    inc bc
    inc bc
    dec bc
    dec b
    ld bc, $03ff
    ld [bc], a
    inc bc
    cp $03
    cp $ff
    dec b
    rst $38
    db $fd
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, a
    add b
    add b
    add b
    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    ld b, b
    cp a
    ld b, b
    cp a
    ld a, c
    add [hl]
    ld c, c
    add [hl]
    ld c, c
    add [hl]
    ld c, c
    add [hl]
    nop
    nop
    db $fc
    nop
    inc h
    ret c

    inc h
    ret c

    db $e4
    jr jr_005_6e56

    jr jr_005_6e58

    jr jr_005_6e5a

    jr jr_005_6e38

jr_005_6e38:
    nop
    ld a, a
    nop
    ld c, b
    scf
    ld c, b
    scf
    ld c, c
    ld [hl], $49
    ld [hl], $49
    ld [hl], $49
    ld [hl], $00
    nop
    di
    nop
    ld a, [bc]
    pop af
    ld b, $f9
    ld [c], a
    dec e
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a

jr_005_6e56:
    dec c
    nop

jr_005_6e58:
    nop
    rst $38

jr_005_6e5a:
    nop
    ld bc, $01fe
    cp $7f
    add b
    ld b, b
    add b
    ld a, [hl]
    add b
    ld [bc], a
    db $fc
    dec bc
    jr nc, jr_005_6e6a

jr_005_6e6a:
    ld c, c
    add [hl]
    ld c, c
    add [hl]
    ld c, c
    add [hl]
    ld c, c
    add [hl]
    ld c, c
    add [hl]
    ld c, c
    add [hl]
    rst $08
    nop
    nop
    nop
    inc h

jr_005_6e7b:
    jr jr_005_6ea1

    jr jr_005_6ea3

    jr jr_005_6ea4

    inc e
    jr nz, jr_005_6ea3

    db $10
    rrca
    rrca
    nop
    nop
    nop
    ld c, c
    ld [hl], $48
    scf
    ld c, b
    scf
    adc c
    db $76
    add hl, bc
    or $19
    and $ef
    nop
    nop
    nop
    ld [c], a
    dec e
    ld b, $f9
    ld a, [de]
    pop hl
    adc d

jr_005_6ea1:
    ld [hl], c
    ld b, [hl]

jr_005_6ea3:
    add hl, sp

jr_005_6ea4:
    ld [hl+], a
    dec e
    rra
    nop
    nop
    nop
    ld [bc], a
    db $fc
    ld a, [hl]
    add b
    ld b, b
    add b
    ld a, a
    add b
    ld bc, $01fe
    cp $ff
    dec bc
    inc sp
    nop
    ld a, h
    nop
    cp $5c
    rst $38
    ld [c], a
    rst $38
    cp $ff
    ld a, b
    rst $38
    add [hl]
    cp $fc
    cp $fc
    rrca
    rlca
    rra
    rrca
    rra
    rlca
    rra
    ld [$0f1f], sp
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ld hl, sp-$10
    ldh a, [$e0]
    ldh a, [$80]
    ldh a, [$60]
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    inc bc
    nop
    dec c
    ld [bc], a
    ld de, $210e
    ld e, $42
    inc a
    ld b, h
    jr c, jr_005_6e7b

    ld a, b
    add d
    ld a, h
    dec bc
    ld b, b
    nop
    cp $f0

Call_005_6eff:
    cp $0c
    db $fc

jr_005_6f02:
    ld hl, sp-$04
    ld hl, sp-$04
    ldh [$fc], a
    jr jr_005_6f02

    ldh a, [$f8]
    ldh a, [$3f]
    rra
    ld a, a
    ld l, $7f
    ld sp, $3f7f
    ld a, a
    ccf
    rst $38
    ld c, a
    rst $38
    ld [hl], b
    ld a, a
    nop
    ldh [$c0], a
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    add b
    nop
    nop
    nop
    add c
    ld a, [hl]
    ld b, b
    ccf
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    rrca
    ld c, $01
    ld bc, $0000

jr_005_6f3c:
    nop
    add b
    nop
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    ccf
    nop
    ld a, $00
    pop bc
    ld a, $08
    rst $30
    jr jr_005_6f3c

    ld [hl], b
    adc a
    ldh [$1f], a
    add a
    ld a, b
    ld hl, sp+$00
    nop
    nop
    db $fc
    nop
    ld [bc], a
    db $fc
    ld bc, $02fe
    db $fc
    inc e
    ldh [$e0], a
    dec bc
    inc de
    nop
    dec bc
    nop
    ld bc, $1001
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc e
    nop
    ld h, $00
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld [hl-], a
    nop
    inc e
    nop
    nop
    nop
    ld a, $00
    ld h, e
    nop
    rlca
    nop
    ld e, $00
    inc a
    nop
    ld [hl], b
    nop
    ld a, a
    nop
    nop
    nop
    ld c, $00
    ld e, $00
    ld [hl], $00
    ld h, [hl]
    nop
    ld a, a
    nop
    ld b, $00
    ld b, $00
    nop
    nop
    ld e, $00
    jr nc, jr_005_6fb9

jr_005_6fb9:
    ld h, b
    nop
    ld a, [hl]
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    inc a
    nop
    ld h, d
    nop
    ld [hl], d
    nop
    inc a
    nop
    ld b, a
    nop
    ld b, e
    nop
    ld a, $00
    nop
    ret nz

    ld b, b
    or b
    ld [hl], b
    adc h
    ld a, h
    add e
    ld a, h
    add e
    ld [hl], b
    adc h
    ld b, b
    or b
    nop
    ret nz

    ld bc, $ff10
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc c
    nop
    inc e
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    ld b, $00
    inc c
    nop
    ld e, $00
    inc bc
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    ld a, [hl]
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    inc bc
    nop
    inc bc
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    ld a, a
    nop
    ld h, e
    nop
    ld b, $00
    inc c
    nop
    jr jr_005_7032

jr_005_7032:
    jr jr_005_7034

jr_005_7034:
    jr jr_005_7036

jr_005_7036:
    nop
    nop
    ld a, $00
    ld h, e
    nop
    ld h, e
    nop
    ccf
    nop
    inc bc
    nop
    ld b, $00
    inc a
    nop
    inc a
    nop
    ld b, d
    nop
    cp l
    nop
    and c
    nop
    and c
    nop
    cp l
    nop
    ld b, d
    nop
    inc a
    nop
    nop
    nop
    inc e
    nop
    ld [hl], $00
    ld h, e
    nop
    ld h, e
    nop
    ld a, a
    nop
    ld h, e
    nop
    ld h, e
    nop
    nop
    nop
    ld e, $00
    inc sp
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    inc sp
    nop
    ld e, $00
    nop
    nop
    ld a, a
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, a
    nop
    nop
    nop
    rra
    nop
    jr nc, jr_005_708c

jr_005_708c:
    ld h, b
    nop
    ld l, a

Call_005_708f:
    nop
    ld h, e
    nop
    inc sp
    nop
    rra
    nop
    nop
    nop
    ccf
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ccf
    nop
    nop
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, h
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld l, [hl]
    nop
    ld h, a
    nop
    nop
    nop
    ld h, e
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld l, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    nop
    nop
    ld a, $00
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    ld a, [hl]
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, [hl]
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    nop
    nop
    ld a, a
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, a
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld h, e
    nop
    ld [hl], e
    nop
    ld a, $00
    nop
    nop
    jr nc, jr_005_712a

jr_005_712a:
    jr nc, jr_005_712c

jr_005_712c:
    jr nc, jr_005_712e

jr_005_712e:
    jr nc, jr_005_7130

jr_005_7130:
    jr nc, jr_005_7132

jr_005_7132:
    jr nc, jr_005_7134

jr_005_7134:
    ccf
    nop
    nop
    nop
    ld h, e
    nop
    ld [hl], e
    nop
    ld a, e
    nop
    ld a, a
    nop
    ld l, a
    nop
    ld h, a
    nop
    ld h, e
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, [hl]
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    ld a, $00
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    dec a
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, b
    nop
    ld a, $00
    inc bc
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld l, e
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    ld h, e
    nop
    nop
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    ld e, $00
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld [hl], a
    rst $38
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    cp $ff
    rst $10
    rst $10
    rst $28
    add e
    ld l, a
    dec hl
    ld [bc], a
    ld [bc], a
    jr c, @+$3b

    ld [bc], a
    add e
    nop
    nop
    ld a, [hl]
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld a, h
    nop
    ld l, [hl]
    nop
    ld h, a
    nop
    nop
    nop
    ccf
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    nop
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld [hl], a
    nop
    ld a, $00
    inc e
    nop
    ld [$0000], sp
    nop
    ld h, e
    nop
    ld [hl], a
    nop
    ld a, $00
    inc e
    nop
    ld a, $00
    ld [hl], a
    nop
    ld h, e
    nop
    nop
    nop
    ld a, a
    nop
    rlca
    nop
    ld c, $00
    inc e
    nop
    jr c, jr_005_7222

jr_005_7222:
    ld [hl], b
    nop
    ld a, a
    nop
    inc a
    db $e3
    ld a, [hl]
    reti


    rst $20
    sbc h
    rst $20
    sbc h
    rst $20
    sbc h
    ld [hl], a
    call $e33e
    inc e
    rst $38
    inc e
    di
    inc a
    db $e3
    inc a
    di
    inc e
    di
    inc e
    di
    inc e
    di
    ld a, a
    ret nz

    ld a, a
    rst $38
    ld a, [hl]
    pop bc
    rst $38
    sbc h
    rst $38
    ld hl, sp+$3f
    pop hl
    ld a, [hl]
    jp $8ffc


    rst $38
    add b
    rst $38
    rst $38
    nop
    nop
    ld a, $00
    ld h, e
    nop
    ld h, e
    nop
    ld b, $00
    inc c
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    inc b
    nop
    inc c
    nop
    jr jr_005_7273

    dec b

jr_005_7273:
    nop
    ld a, a
    ret nz

    ld a, [hl]
    ld sp, hl
    inc e
    di
    ld a, $e1
    ccf
    db $fc
    rst $20
    sbc h
    cp $c1
    ld a, [hl]
    rst $38
    ld e, $f1
    ld a, $e1
    ld a, [hl]
    ret


    cp $99
    rst $38
    add b
    rst $38
    ld sp, hl
    ld c, $f9
    ld c, $ff
    cp $81
    cp $9f
    cp $81
    rst $38
    db $fc
    rlca
    db $fc
    rst $20
    sbc h
    ld a, a
    pop bc
    ld a, [hl]
    rst $38
    ld a, $e1
    ld a, [hl]

jr_005_72a7:
    rst $08
    ldh a, [$9f]
    cp $81
    rst $38
    sbc h
    rst $20
    sbc h
    rst $38
    pop bc
    ld a, [hl]
    rst $38
    rst $38
    add b
    rst $38
    sbc h
    xor $f9
    inc e
    di
    jr c, @-$17

    jr c, jr_005_72a7

    jr c, @-$17

    jr c, @+$01

    ld a, h
    jp $9dfe


    or $8d
    cp $c3
    rst $38
    cp b
    rst $08
    cp h
    rst $38
    pop bc
    ld a, [hl]
    rst $38
    nop
    nop
    jr jr_005_72d8

jr_005_72d8:
    jr jr_005_72da

jr_005_72da:
    jr jr_005_72dc

jr_005_72dc:
    jr jr_005_72de

jr_005_72de:
    nop
    nop
    jr jr_005_72e2

jr_005_72e2:
    jr jr_005_72e5

    rlca

jr_005_72e5:
    nop
    jr jr_005_72e8

jr_005_72e8:
    jr jr_005_72eb

    rlca

jr_005_72eb:
    nop
    ld a, [hl]
    pop bc
    rst $38
    sbc h
    rst $20
    sbc h
    rst $38
    ret nz

    ld a, a
    db $fc
    rrca
    ld sp, hl
    ld a, [hl]
    jp $ff7c


    ld bc, $0050
    ld bc, $0600
    call nz, $8cff
    rst $38
    jp nc, $21f3

    ld hl, $0606
    ld bc, $1406
    nop
    rlca
    nop
    rra
    ld [bc], a
    ccf

jr_005_7315:
    nop
    ccf
    nop
    ld a, a
    inc bc
    ld a, l
    rlca
    ld a, h
    rla
    ld l, l
    ld [hl], $e9
    or [hl]
    ld a, b
    ld c, a
    ld hl, sp-$09
    ld a, [hl]
    ld a, c
    rrca
    ld c, $10
    rra
    jr nz, jr_005_736d

    ld b, $10
    nop
    ret nz

    ret nz

    jr nz, jr_005_7315

    ld b, b
    ret nz

    add b
    add b
    ld b, $04
    nop
    add b
    add b
    ret nz

    ld b, b
    ld b, $08
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $1f00
    rra
    jr nz, jr_005_7390

    jr nz, jr_005_7392

    jr @+$21

    rlca
    rlca
    ld b, $04
    ld bc, $0080
    ldh [$80], a
    ldh a, [rP1]
    ld hl, sp+$00
    jr @-$0e

    ld a, h
    ld hl, sp+$3c
    ret c

    ld a, b
    or b
    ld a, [hl]
    cp [hl]
    add hl, hl

jr_005_736d:
    rst $18
    xor $3e
    ret nc

    ldh [$f0], a
    jr nc, @-$2e

    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$9f]
    di
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    rst $38
    cp a
    ld a, b
    rst $30
    inc e

jr_005_7390:
    rst $38
    rst $38

jr_005_7392:
    cp a
    ld h, d
    rst $38
    pop af
    xor a
    ld hl, sp+$4f
    ld hl, sp-$61
    di
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    call nz, Call_000_1cff
    rst $30
    cp $bf
    ld a, b
    rst $10
    inc a
    rst $38
    rst $38
    rst $18
    inc sp
    ld a, a
    or c
    rst $18
    ret c

    ld a, [bc]
    rrca
    cp $82
    call c, $e4fc
    ld a, h
    ret z

    ld hl, sp-$10
    or b
    ldh a, [$50]
    ld hl, sp+$48
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    ld b, h
    db $f4
    adc h
    ret z

    jr c, jr_005_73e3

    ldh a, [$e0]
    ldh [rTMA], a
    inc b
    add b
    ld a, a
    ld [hl], c
    ld a, a
    ld hl, $557f
    rst $38
    add b
    rst $38
    cp h

jr_005_73e3:
    ld b, e
    ld b, e
    rlca
    rlca
    ld e, a
    ld a, b
    ccf
    daa
    ld e, l
    db $76
    dec sp
    inc a
    xor a
    rst $38
    cp $8b
    ld a, a
    ld b, a
    inc a
    inc h
    jr jr_005_7411

    sbc a
    di
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    call nz, Call_000_1cff
    rst $30
    cp $bf
    ld a, b
    rst $10
    inc a
    rst $38
    rst $38

jr_005_7411:
    rst $18
    inc sp
    ld a, a
    or c
    rst $18
    ret c

    ld a, [bc]
    rrca
    ld b, $10
    nop
    cp $81
    cp $9f
    cp $81
    rst $38
    db $fc
    rlca
    db $fc
    rst $20
    sbc h
    ld a, a
    pop bc
    ld a, [hl]
    rst $38
    ld b, $10
    nop
    inc e
    di
    inc a
    db $e3
    inc a
    di
    inc e
    di
    inc e
    di
    inc e
    di
    ld a, a
    ret nz

    ld a, a
    rst $38
    ld b, $10
    nop
    inc a
    db $e3
    ld a, [hl]
    reti


    rst $20
    sbc h
    rst $20
    sbc h
    rst $20
    sbc h
    ld [hl], a
    call $e33e
    inc e
    rst $38
    ld b, $10
    nop
    ld a, [hl]
    pop bc
    rst $38
    sbc h
    rst $38
    ld hl, sp+$3f
    pop hl
    ld a, [hl]
    jp $8ffc


    rst $38
    add b
    rst $38
    rst $38
    ld b, $10
    nop
    cp $80
    cp $9e
    cp $80
    rst $38
    db $fc
    rlca
    inc b
    rst $20
    add h
    ld a, a
    ld b, c
    ld a, [hl]
    ld a, [hl]
    ld b, $10
    nop
    inc e
    db $10
    inc a
    jr nz, jr_005_74bc

    jr nc, jr_005_749e

    db $10
    inc e
    db $10
    inc e
    db $10
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    nop
    ld hl, sp+$01
    pop af
    dec b
    push hl
    dec b
    push hl
    ld bc, $15c5
    push de
    dec d
    push de
    dec d
    push de
    dec b
    push de
    dec d

jr_005_749e:
    push de
    dec d
    push de
    dec d
    push de
    ld de, $15d5
    push de
    dec d
    push de
    dec d
    push de
    nop
    ccf
    nop
    rra
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld b, a
    db $10
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld b, b

jr_005_74bc:
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld d, b
    ld d, a
    ld b, b
    ld d, [hl]
    ld d, b
    ld d, [hl]
    ld d, b
    ld d, h
    ld d, b
    ld d, h
    ld d, b
    ld d, h
    ld d, c
    ld d, c
    ld d, a
    ld d, a
    ld d, l
    ld b, $05
    ld d, a
    db $10
    ld d, b
    ld d, b
    ld d, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ld b, b
    ld c, a
    ld h, b
    ld h, a
    ld [hl], b
    ld [hl], a
    ldh a, [$f7]
    ret nc

    rst $30
    ldh a, [$f7]
    ld [hl], b
    rst $30
    ldh [$ef], a
    add b
    adc a
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    dec bc
    inc b
    rlca
    ld [$700f], sp
    ld a, a
    rst $38
    sbc a
    ld a, a
    ld b, b
    ccf
    ccf
    dec d
    rra
    rra

jr_005_751e:
    rra
    ld c, $0e

jr_005_7521:
    ld b, $08
    nop
    jr c, jr_005_751e

    db $fc
    db $e4
    call c, $8874
    ld hl, sp-$78
    ld hl, sp-$72
    cp $ff
    ld a, c
    cp $02
    call c, $f8fc
    xor b
    ret c

    ld hl, sp+$70
    ld [hl], b
    ld b, $08
    nop
    jr nz, jr_005_7521

    ld b, b
    ret nz

    ld b, $04
    add b
    ld b, $12
    nop
    add b
    add b
    ret nz

    ld b, b
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    jr nc, jr_005_758a

    ld a, b
    ld a, e
    ld a, b
    ld a, c
    ld l, h
    ld a, l
    ld a, h
    ld a, l
    ld a, h
    ld a, h
    scf
    ccf
    dec a
    ccf
    rra
    rra
    rrca
    adc a
    inc bc
    add e
    nop
    ret nz

    nop
    ldh a, [$0d]
    dec c
    push hl
    push hl
    push af
    push af
    push de
    ld b, $05
    push af
    dec b
    dec b
    dec c
    dec c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_005_758a:
    rst $38
    nop
    rst $38
    ld b, $10
    nop
    inc a
    jr nz, @+$80

    ld e, b
    rst $20
    add h
    rst $20
    add h
    rst $20
    add h
    ld [hl], a
    ld b, l
    ld a, $22
    inc e
    inc e
    nop
    ld a, h
    add e
    nop
    ld l, l
    add e
    ld l, a
    ld a, a
    ld a, l
    db $fd
    db $dd
    rst $18
    db $db
    ei
    ei
    rst $38
    ld hl, sp-$04
    jp hl


    pop af
    jp Jump_005_4ee3


    adc [hl]
    dec e
    inc e
    ld [hl], l
    ld [hl], a
    rst $38
    rst $30
    ld a, a
    ld a, a
    ld a, $e1
    ld a, [hl]
    rst $08
    ldh a, [$9f]
    cp $81
    rst $38
    sbc h
    rst $20
    sbc h
    rst $38
    pop bc
    ld a, [hl]
    rst $38
    ld a, h

jr_005_75d1:
    rst $38
    cp $ff
    rst $10

jr_005_75d5:
    rst $10
    rst $28
    add e
    ld l, a
    dec hl
    ld [bc], a
    ld [bc], a
    jr c, @+$3b

    ld [bc], a
    add e
    rst $38
    add b
    rst $38
    sbc h
    xor $f9
    inc e
    di
    jr c, jr_005_75d1

    jr c, @-$17

    jr c, jr_005_75d5

    jr c, @+$01

    ld a, h
    jp $9dfe


    or $8d
    cp $c3
    rst $38
    cp b
    rst $08
    cp h
    rst $38
    pop bc
    ld a, [hl]
    rst $38
    ld a, a
    ret nz

    ld a, [hl]
    ld sp, hl
    inc e
    di
    ld a, $e1
    ccf
    db $fc
    rst $20
    sbc h
    cp $c1
    ld a, [hl]
    rst $38
    ld e, $f1
    ld a, $e1
    ld a, [hl]
    ret


    cp $99
    rst $38
    add b
    rst $38
    ld sp, hl
    ld c, $f9
    ld c, $ff
    ld [hl], a
    rst $38
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    rst $38
    ld a, [hl]
    pop bc
    rst $38
    sbc h
    rst $20
    sbc h
    rst $38
    ret nz

    ld a, a
    db $fc
    rrca
    ld sp, hl
    ld a, [hl]
    jp $ff7c


    ld b, $10
    nop
    ld [hl], b
    rst $38
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $38
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld d, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    ld [bc], a
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $02
    rlca
    nop
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    add hl, de
    db $10
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $fffe
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    add hl, de
    db $10
    add hl, de
    db $10
    add hl, de
    db $10
    jr jr_005_76d3

    jr jr_005_76d5

    jr jr_005_76d7

    add hl, de
    db $10
    add hl, de
    db $10
    adc $00
    call z, Call_005_4800
    nop
    add hl, bc
    nop

jr_005_76d3:
    add hl, bc
    nop

jr_005_76d5:
    adc b
    nop

jr_005_76d7:
    ret


    nop
    ret


    nop
    jr c, jr_005_76dd

jr_005_76dd:
    add hl, de
    nop
    adc c
    nop
    ret


    nop
    ret z

    nop
    add hl, bc
    nop
    ret


    nop
    ret


    nop
    jr jr_005_76ed

jr_005_76ed:
    adc c
    nop
    ret


    nop
    adc c
    nop
    jr c, jr_005_76f5

jr_005_76f5:
    add hl, de
    nop
    adc c
    nop
    ret


    nop
    rra
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    ld [de], a
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $1f01
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    rra
    ld [bc], a
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    ld b, $03
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    jr jr_005_779e

    ld b, d
    ld a, $e7
    rra
    db $d3
    ccf
    rst $00
    ccf
    pop hl
    rra
    db $d3
    cpl
    and a
    ld e, a
    ld [bc], a
    ld [hl+], a
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, b
    nop
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_005_779e:
    nop
    rrca
    ld [bc], a
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rlca
    nop
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    swap a
    sub c
    ld l, a
    swap a
    rst $00
    ccf
    sub e
    ld a, a
    add l
    ld a, a
    and l
    ld e, a
    db $d3
    cpl
    ld [bc], a
    jr nz, jr_005_77d8

jr_005_77d8:
    ld hl, sp+$00
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp+$00
    inc e
    nop
    ld e, $00
    cp $00
    db $fc
    nop
    ld [$0900], sp
    nop
    call z, $8e00
    nop
    ld e, $00
    ld a, $00
    ld a, $00
    ld e, $00
    adc [hl]
    nop
    call z, Call_000_2000
    nop
    ld h, b
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    add hl, sp
    nop
    ld a, b
    ld [$0878], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    db $d3
    ccf
    jp hl


    rla
    db $e3
    ccf
    rst $20
    rra
    and e
    ld e, a
    rst $10
    cpl
    adc c
    ld a, a
    db $d3
    cpl
    ld [bc], a
    dec b
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    inc bc
    inc c
    rra
    ld [$0313], sp
    ld [bc], a
    dec b
    nop

jr_005_7849:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$c0]
    jr nc, jr_005_7849

    nop

jr_005_7852:
    ld a, h
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    rra
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a

jr_005_788c:
    ld b, $00
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$08
    ld [bc], a
    ld b, $00
    db $eb

jr_005_789c:
    rra
    add c
    ld a, a
    rst $00
    ld a, $f3
    inc c
    rst $08
    jr c, jr_005_789c

    add hl, de
    rst $00
    jr c, jr_005_788c

    add hl, de
    nop
    ld h, e
    add b
    ld [hl], c
    ret nz

    jr c, jr_005_7852

    ld a, h
    ld d, b
    cp h
    xor b
    ld a, b
    db $10
    ldh a, [$60]
    ldh [$b8], a
    cp b
    ld a, h
    db $fc
    ld e, $fe
    ld c, $7e
    inc bc
    rra
    nop
    ld b, $02
    inc b
    nop
    ld a, [hl-]
    ld a, d
    xor h
    ld a, h
    cp d
    ld a, d
    sbc h
    ld a, h
    cp d
    ld a, d
    cp h
    ld a, h
    xor d
    ld a, d
    sbc h
    ld a, h
    cp d
    ld a, d
    xor h
    ld a, h
    adc d
    ld a, d
    cp h
    ld a, h
    xor d
    ld a, d
    sbc h
    ld a, h
    cp d
    ld a, d
    adc h
    ld a, h
    cp d
    ld a, d
    cp h
    ld a, h
    sbc d
    ld a, d
    cp h
    ld a, h
    sbc d
    ld a, d
    xor h
    ld a, h
    sbc d
    ld a, d
    xor h
    ld a, h
    jr c, jr_005_7934

    ld e, h
    ld a, h
    ld a, $7e
    ld a, $7e
    ccf
    cp a
    ld e, $9e
    ld l, $2e
    ld [hl], h
    ld [hl], h
    ld [bc], a
    stop
    sbc c
    ld l, h
    add $3e
    di
    rra
    pop bc
    ccf
    and a
    ld e, a
    db $d3
    cpl
    db $d3
    cpl
    rst $00
    ccf
    ld [bc], a
    jr nz, jr_005_7920

jr_005_7920:
    sbc d
    ld a, d
    sbc h
    ld a, h
    sbc d
    ld a, d
    sbc h
    ld a, h
    sbc d
    ld a, d
    cp h
    ld a, h
    sbc d
    ld a, d
    cp h
    ld a, h
    sbc d
    ld a, d
    xor h
    ld a, h

jr_005_7934:
    xor d
    ld a, d
    cp h
    ld a, h
    sbc d
    ld a, d
    cp h
    ld a, h
    xor d
    ld a, d
    sbc h
    ld a, h
    ld [bc], a
    stop
    ld hl, sp-$08
    ld [bc], a
    inc b
    db $fc
    ld a, h
    ld a, h
    jr c, jr_005_7984

    db $10
    db $10
    ld [bc], a
    inc d
    nop
    push af
    rrca
    db $e3
    rra
    xor e
    ld e, a
    pop bc
    ccf
    rst $20
    rra
    jp hl


    rla
    pop de
    cpl
    rst $30
    rrca
    ld bc, $0700
    nop
    rrca
    nop
    inc e
    inc bc
    ld [hl-], a
    dec c
    dec h
    ld a, [de]
    ld a, [hl+]
    dec d
    inc d
    ld [$00e0], sp
    ld hl, sp+$00
    add b
    ld a, l
    ld d, b
    xor e
    xor c
    ld d, e
    ld d, b
    and c
    add c
    ld b, c
    nop
    nop
    ld [bc], a
    nop
    nop

jr_005_7984:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld a, d
    or a
    ld a, d
    call c, Call_000_327a
    ld a, d
    ld b, l
    ld a, d
    ld h, c
    ld a, d
    ld e, a
    ld a, e
    xor a
    ld a, e
    cpl
    ld a, h
    ld h, a
    ld a, h
    ld e, c
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, l
    and e
    ld a, h
    or c
    ld a, h
    nop
    nop
    ld d, e
    ld a, l
    ld b, $7e
    xor e
    ld a, d
    nop
    nop
    ld b, $7e
    nop
    nop
    xor h
    ld a, [hl]
    scf
    ld a, [hl]
    call nz, $e77e
    inc c
    inc b
    rst $20
    inc e
    inc b
    and $20
    ld [bc], a
    jp Jump_000_0222


    and $24
    inc b
    db $e3
    inc a
    ld [bc], a
    nop
    jp z, Jump_000_021e

    jp z, $0420

    jp z, Jump_000_0424

    jp z, Jump_000_0228

    jp z, Jump_000_0430

    jp z, Jump_000_0434

    adc $38
    ld [bc], a
    jp Jump_000_0438


    ret


    ld a, $02
    nop
    and $18
    inc b
    and $28
    inc b
    and $2c
    inc b
    and $36
    ld [bc], a
    and $38
    inc b
    and $3c
    inc b
    nop
    sbc h
    ld c, b
    dec b
    pop bc
    pop de
    and b
    ret nc

    pop de
    sbc h
    and b
    inc d
    add b
    sub a
    add b
    sub d
    sub [hl]
    sub [hl]
    sub d
    add b
    or e
    jp nz, $c1b1

    and a
    or [hl]
    add b
    pop bc
    and a
    or d
    pop de
    add b
    sbc h
    ret nz

    inc d
    or l
    and h
    and c
    and d
    or [hl]
    pop bc
    and d
    or c
    add b
    or b
    call nz, $b680
    and h
    or [hl]
    pop de
    and d
    or [hl]
    or c
    and a
    nop
    sbc h
    ld l, b
    ld [$a7a1], sp
    or [hl]
    pop de
    and h
    or [hl]
    jp nz, Jump_000_00a2

    dec b
    rlca
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld h, a
    ld l, b
    nop
    nop
    nop
    ld [hl], a
    ld a, b
    nop
    nop
    nop
    ld l, c
    ld l, d
    nop
    nop
    ld l, e
    ld a, c
    ld a, d
    nop
    nop
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    sbc b
    ld h, $0e
    or e
    jp nz, $c1b1

    and a
    or [hl]
    pop hl
    pop bc
    add b
    add b
    add b
    add b
    pop de
    and [hl]
    sbc b
    ld b, l
    inc c
    ld h, [hl]
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
    sbc b
    ld h, [hl]
    dec bc
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
    sbc b
    add d
    ld [de], a
    rlca
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld b, b
    ld b, c
    sbc b
    and d
    ld [de], a
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_005_7b45

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld d, b
    ld d, c
    sbc b
    jp nz, Jump_000_2012

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_005_7b6a

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_005_7b45:
    ld l, $2f
    ld h, b
    ld h, c
    sbc b
    ld [c], a
    ld [de], a
    jr nc, jr_005_7b7f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_7b8f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [hl], b
    ld [hl], c
    nop
    sbc b
    inc c
    ld b, $24
    ld b, c
    dec [hl]
    jr nz, @+$38

    ld sp, $4e98

jr_005_7b6a:
    ld b, $41
    ld [hl+], a
    dec [hl]
    ld [hl+], a
    ld hl, $9851
    ld l, a
    inc b
    inc h
    ld d, c
    ld [hl+], a
    ld h, $98
    xor [hl]
    dec b
    jr nz, jr_005_7b7d

jr_005_7b7d:
    ld b, h
    ld [hl+], a

jr_005_7b7f:
    ld b, c
    sbc b
    xor $04
    jr nc, jr_005_7b85

jr_005_7b85:
    ld [hl], $27
    sbc c
    dec hl
    ld bc, $99ef
    ld l, $04
    scf

jr_005_7b8f:
    ld b, d
    ld b, c
    inc sp
    sbc c
    ld c, [hl]
    dec b
    ld b, c
    ld d, c
    jr nz, jr_005_7be9

    ld d, c
    sbc d
    ld bc, $5311
    nop
    nop
    nop
    ld d, e
    nop
    nop
    nop
    ld d, e
    nop
    nop
    nop
    ld d, e
    nop
    nop
    nop
    ld d, e
    nop
    nop
    nop
    ld [hl-], a
    ld [hl+], a
    ld d, b
    ld [hl], $00
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_005_7bf1

    ld sp, $0000
    nop
    nop
    nop
    dec [hl]
    jr nz, jr_005_7be9

    ld [hl+], a
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_005_7c01

    ld sp, $0000
    nop
    nop
    ld sp, $4122
    ld [hl+], a
    ld d, b
    ld d, c
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_005_7c12

    ld sp, $0000
    nop
    nop
    nop
    inc h
    ld hl, $0022
    inc h
    ld b, c
    dec [hl]

jr_005_7be9:
    jr nz, jr_005_7c21

    ld sp, $0000
    nop
    nop
    nop

jr_005_7bf1:
    ld hl, $5220
    ld [hl+], a
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_005_7c31

    ld sp, $0000
    nop
    nop
    nop

jr_005_7c01:
    ld hl, $2735
    ld b, d
    ld sp, $2400
    ld b, c
    dec [hl]
    jr nz, @+$38

    ld sp, $0000
    nop
    ld d, d
    daa

jr_005_7c12:
    dec [hl]
    ld hl, $3620
    daa
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_005_7c53

    ld sp, $3100
    inc h

jr_005_7c21:
    ld [hl], $27
    ld b, c
    jr nz, jr_005_7c68

    ld d, b
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_005_7c63

    ld sp, $1400
    ld [bc], a

jr_005_7c31:
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f

jr_005_7c53:
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld b, $02
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld e, $1f

jr_005_7c63:
    ld e, $1f
    ld e, $1f
    sbc b

jr_005_7c68:
    ld hl, $430a
    ld [hl+], a
    dec [hl]
    ld hl, $2627
    ld [hl+], a
    nop
    ld d, c
    daa
    sbc b
    ld h, c
    ld c, $26
    ld b, h
    nop
    ld b, c
    ld [hl+], a
    ld hl, $2250
    ld d, c
    nop
    ld d, b
    daa
    daa
    ld h, $98
    and c
    dec c
    inc h
    ld h, c
    dec [hl]
    dec [hl]
    nop
    inc hl
    inc h
    ld d, d
    ld [hl+], a
    nop
    ld b, h
    daa
    ld b, d
    sbc b
    pop hl
    ld a, [bc]
    ld d, c
    inc sp
    inc h
    ld b, c
    nop
    inc h
    ld d, c
    ld [hl+], a
    ld h, $70
    nop
    ld b, $02
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    inc d
    ld [$3938], sp
    ld a, [hl-]
    dec sp
    inc a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec l
    dec c
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [$7f7e], sp
    ld l, b
    ld [$0808], sp
    ld [$3d08], sp
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld [$0808], sp
    ld a, b
    ld [$0808], sp
    ld [$4d08], sp
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    ld [$0808], sp
    ld [$0808], sp
    ld [$6908], sp
    ld l, e
    ld [$0808], sp
    ld [$4e7d], sp
    ld c, a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$7908], sp
    ld a, e
    ld [$0808], sp
    ld [$5e5d], sp
    ld e, a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$6a08], sp
    ld [$0808], sp
    ld [$6d08], sp
    ld [$0808], sp
    ld [$0e08], sp
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    sbc b
    ld b, c
    add hl, bc
    ld b, e
    daa
    ld b, d
    dec [hl]
    ld sp, $4400
    daa
    ld b, d
    sbc b
    add c
    inc c
    dec [hl]
    inc h
    dec h
    ld [hl+], a
    nop
    ld d, c
    daa
    nop
    ld b, c
    dec h
    inc h
    scf
    sbc b
    pop bc
    inc c
    ld d, c
    inc sp
    inc h
    ld b, c
    nop
    inc h
    ld b, c
    dec [hl]
    jr nz, jr_005_7db1

    ld sp, $0060
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc

jr_005_7db1:
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
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
    ldh a, [$8c]
    xor c
    and c
    ldh [$8d], a
    ld a, c
    ldh [$8c], a
    ld a, $30
    ldh [rP1], a
    ret


    ld a, [$c425]
    and a
    ret nz

    ldh a, [$bf]
    and a
    ret z

    ldh a, [$c0]
    and $0f
    ret z

    ld a, [$c0da]
    ld c, a
    ld b, $00
    ld hl, $ffc1
    ld a, [$c0dc]
    bit 1, a
    jr z, jr_005_7e5d

    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl-], a
    jr jr_005_7e63

jr_005_7e5d:
    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl-], a

jr_005_7e63:
    jr z, jr_005_7e69

    cp $ff
    jr nz, jr_005_7e9c

jr_005_7e69:
    ld a, [hl]
    and $f0
    cp $c0
    jr z, jr_005_7e9c

    ld a, [$c0d8]
    ld c, a
    ld b, $00
    ld hl, $ffc3
    ld a, [$c0dc]
    bit 0, a
    jr z, jr_005_7e88

    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl-], a
    jr jr_005_7e8e

jr_005_7e88:
    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl-], a

jr_005_7e8e:
    jr z, jr_005_7e94

    cp $ff
    jr nz, jr_005_7e9c

jr_005_7e94:
    ld a, [hl]
    and $e0
    cp $c0
    jr z, jr_005_7e9c

    ret


jr_005_7e9c:
    ld hl, $ffc0
    ld de, $ffd0
    ld b, $10
    xor a

jr_005_7ea5:
    ld [hl+], a
    ld [de], a
    inc de
    dec b
    jr nz, jr_005_7ea5

    ret


    ld c, $80
    ld b, $0a
    ld hl, $7eba

jr_005_7eb3:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_005_7eb3

    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_005_7ec0:
    dec a
    jr nz, jr_005_7ec0

    ret


    jr nz, jr_005_7ece

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e

jr_005_7ece:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld a, b
    ld a, c
    ld l, $60
    ld h, c
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $14
    ld bc, $2e2e
    ld l, $78
    ld a, c
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld a, b
    ld a, c
    ld l, $7a
    ld a, e
    ld h, d
    ld h, e
    ld h, h
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld [bc], a
    inc bc
    inc b
    ld l, $2e
    ld l, $7a
    ld a, e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld a, d
    ld a, e
    ld l, $65
    ld h, [hl]
    ld h, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld l, $2e
    ld l, $2e
    inc l
    dec l
    ld l, $2e
    dec b
    ld b, $07
    rlca
    ld de, $2e2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $73
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [$2e2e], sp
    ld l, $2e
    cpl
    jr c, jr_005_7f7e

    ld l, $15
    ld d, $17
    db $10
    ld [de], a
    inc de
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $45
    ld b, [hl]
    ld b, a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    jr jr_005_7f78

    ld l, $2e
    ld a, [hl-]
    rlca
    dec sp
    inc a
    dec a
    jr nc, jr_005_7f99

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $50
    ld d, c
    ld d, d
    ld a, [de]
    dec de

jr_005_7f78:
    inc e
    dec e
    ld e, $1f
    jr z, @+$2b

jr_005_7f7e:
    ld a, [hl+]
    dec hl
    ld l, $3e
    ccf
    rlca
    ld c, b
    ld c, c
    adc [hl]
    adc a
    xor b
    xor c
    xor d
    xor e
    ld l, $2e
    jr nz, @+$23

    ld [hl+], a
    ld l, $2e
    ld d, e
    rlca
    ld d, h
    ld c, d
    ld c, e
    ld c, h

jr_005_7f99:
    ld c, l
    ld c, [hl]
    ld c, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld l, b
    ld l, c
    ld [hl], $37
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc hl
    inc h
    dec h
    ld h, $27
    ld l, $55
    ld d, [hl]
    ld d, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    ld [hl], e
    nop
    ld [hl], l
    nop
    ld b, $00
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld c, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or $00
    dec c
    add b
    inc [hl]
    ld b, b
    xor $c0
    rst $10
    ld b, b
    ld l, a
    ld b, b
    ccf
    db $fc
    sbc a
    call nz, $44f8
    ld a, a
    db $fc
    rst $38
    ld c, h
    cp $78
    rst $38
