; Disassembly of "Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    inc bc
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc
    ld b, $07
    inc c
    dec c
    ld c, $0f
    inc d
    dec d
    db $10
    ld de, $1110
    ld [de], a
    inc de
    ld d, $17
    jr jr_001_4047

    inc d
    dec d
    db $10
    ld a, [de]
    db $10
    ld de, $171b
    ld d, $17
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_405f

    ld [hl+], a
    inc hl
    inc h
    ld h, $00
    dec h
    jr nz, jr_001_4067

    ld [hl+], a

jr_001_4047:
    daa
    inc e
    inc e
    inc hl
    inc hl
    jr z, @+$2a

    add hl, hl
    ld a, [hl+]
    jr z, jr_001_407d

    add hl, hl
    dec h
    inc l
    jr z, @+$30

    ld a, [hl+]
    dec l

Call_001_4059:
    cpl
    ld l, $01
    jr nc, @+$33

    ld [hl-], a

jr_001_405f:
    inc sp
    inc [hl]
    jr c, jr_001_4098

    dec l
    inc e
    inc e
    inc sp

jr_001_4067:
    ld [hl], $28
    scf
    add hl, hl
    ld a, [hl+]
    jr c, jr_001_40a6

    jr c, jr_001_40a8

    jr nz, @+$21

    jr nz, jr_001_4093

    add hl, sp
    jr c, jr_001_40b0

    jr c, jr_001_40b1

    jr c, jr_001_40b5

    ld a, [hl-]
    inc [hl]

jr_001_407d:
    jr c, jr_001_40b4

    jr c, jr_001_40a1

    ld hl, $2338
    jr c, jr_001_40be

    dec sp
    inc a
    jr c, jr_001_40c2

    dec a
    jr c, jr_001_40a9

    dec e
    ld e, $1f
    jr nc, jr_001_40c3

    ld [hl-], a

jr_001_4093:
    inc sp
    ld a, $3f
    ld b, b
    ld b, c

jr_001_4098:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_001_40a1:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_001_40a6:
    ld d, b
    ld d, c

jr_001_40a8:
    ld d, d

jr_001_40a9:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_001_40b0:
    ld e, d

jr_001_40b1:
    ld e, e
    ld e, h
    ld e, l

jr_001_40b4:
    ld e, [hl]

jr_001_40b5:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_001_40be:
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_001_40c2:
    ld l, h

jr_001_40c3:
    ld l, l
    jr nc, jr_001_40f7

    ld [hl-], a
    inc sp
    inc e
    dec e
    ld e, $1f
    ld l, [hl]
    ld [hl], b
    ld l, a
    ld [hl], c
    ld [hl], b
    ld [hl], d
    ld [hl], c
    ld [hl], e
    ld l, [hl]
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld [hl], l
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, c
    ld [hl], l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add d
    add d
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add e
    add e
    ld a, [hl]
    ld a, a
    add b

jr_001_40f7:
    add c
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add e
    add e
    add e
    add e
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], h
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
    nop
    nop
    nop
    nop

jr_001_411a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_001_413e:
    nop
    nop
    ld d, d
    ld c, [hl]
    ld b, e

jr_001_4143:
    ld [bc], a
    nop
    nop
    ld [bc], a
    jr c, jr_001_4149

jr_001_4149:
    nop
    nop
    sbc h
    rst $18
    ld c, l
    ld [hl], l
    ld a, $04
    ld bc, $0001
    jr z, jr_001_4156

jr_001_4156:
    ld c, $00

jr_001_4158:
    add [hl]
    nop
    jr z, jr_001_418f

    inc [hl]
    ld bc, $3621
    scf
    dec b
    jp hl


    db $10
    ld bc, $1d38
    ld [bc], a
    dec [hl]
    rst $08
    add hl, bc
    dec [hl]
    ld [de], a
    ld c, l
    ld h, $1d
    adc c
    ld [bc], a
    scf
    add hl, sp
    inc d
    ld sp, $0037
    or e
    rlca
    call c, $0d01
    dec e
    add a
    rlca
    inc d
    cpl
    ld [hl], $31
    add h
    rlca
    inc h
    add hl, bc
    rlca
    ld a, e
    ld [hl], $05
    dec c
    sbc h
    rra

jr_001_418f:
    ld a, a
    ld c, l
    jr c, jr_001_411a

    ld c, c
    ld de, $079e
    ld [hl], $05
    dec c
    sub d
    ld c, a
    ld c, a
    sbc l
    ld a, [de]
    ld c, l
    ld c, a
    adc c
    db $e4
    dec b
    ld b, c
    jr c, jr_001_4143

    jp hl


    sbc l
    rst $30
    ld [bc], a
    ld c, a
    cp h
    ld b, $39
    ld bc, $3441
    ld a, c
    dec [hl]
    inc bc
    ld d, a
    inc sp
    scf
    sbc c
    cp b
    ld bc, $0739
    jr c, jr_001_4158

    ld h, e
    add hl, sp
    rst $20
    inc b
    and a
    inc [hl]
    sbc [hl]
    inc b
    scf
    ld [hl], $0b

jr_001_41ca:
    and e
    rst $30
    inc bc
    ld c, a
    cp h
    dec b
    db $e3
    inc b
    di
    jr c, jr_001_41ca

    inc bc
    rst $28
    ld e, $eb
    ld b, c
    inc bc
    ld h, $71
    ld b, d
    ld c, a
    ld b, c
    rst $28
    ld bc, $0609
    ld a, c
    ld c, a
    ld a, [de]
    ld bc, $ef35
    rra
    ld h, $00
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld [bc], a
    jr c, jr_001_41f7

jr_001_41f7:
    nop
    nop
    sbc c
    ld b, h
    xor c
    ld l, h
    ld h, $02
    ld bc, $0001
    jr z, jr_001_4204

jr_001_4204:
    ld c, $00
    add [hl]
    nop
    jr z, jr_001_423d

    inc [hl]
    ld bc, $3621
    scf
    dec b
    rst $28
    ld [$0601], sp
    ld [hl], c
    dec d
    ld [bc], a
    dec [hl]
    sbc [hl]
    ld de, $0a35
    ld h, $f6
    rlca
    dec d
    ld [bc], a
    inc sp
    scf
    add hl, sp
    ld de, $9c37
    dec sp
    inc b
    db $f4
    inc bc
    nop
    dec a
    ld c, a
    inc b
    dec c
    ret z

    scf
    ld l, c
    nop
    dec sp
    inc l
    rlca

jr_001_4237:
    nop
    rst $30
    ld b, $0f
    add hl, sp
    ld e, c

jr_001_423d:
    scf
    ld c, c
    add hl, bc
    cp l
    rlca
    ld bc, $e919
    ld bc, $bda5
    dec c
    ld de, $674f
    and l
    xor b
    add hl, bc
    ld c, a
    add hl, bc
    jr c, @-$4c

    dec b
    ld c, c
    xor a
    cp l
    dec d
    inc b
    ld c, a
    inc h
    dec sp
    sbc [hl]
    ld d, a
    ld [bc], a
    dec c
    rst $30
    ld bc, $b907
    ld [bc], a
    ld c, a
    rst $30
    ld h, h
    and a
    sub h
    rst $28
    rlca
    or e
    dec d
    sbc $07
    sbc a
    ld [$f707], sp
    add hl, bc
    rst $28
    dec d
    scf
    jr c, jr_001_4237

    inc sp
    ld [bc], a
    rlca
    ld h, l
    nop
    ld [hl-], a
    xor l
    ld c, a
    ld b, c
    ld h, a
    ld c, $42
    ld e, $43
    ld b, c
    inc bc
    rlca
    ld a, d
    ld [hl], $02
    rla
    or a
    adc a
    sbc [hl]
    ld e, $01
    dec [hl]
    rra
    ld h, $f0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    jr z, @+$26

    nop
    ld b, a
    rlca
    ld hl, sp+$1f
    jr nz, @+$32

    ld c, a
    ld l, a
    sbc a
    ld d, a
    cp a
    ld d, c
    cp a
    jr @+$01

    ld a, b
    rst $38
    ld e, b
    rst $38
    inc e
    rst $38
    rra
    ld a, a
    add hl, de
    ld a, a
    inc c
    ccf
    inc bc

jr_001_42f9:
    ccf
    db $10
    ld l, a
    nop
    ldh [$e0], a
    jr jr_001_42f9

    inc b
    ldh a, [$0e]
    inc c
    cp $fa
    rst $38
    ld [c], a
    rst $38
    add $ff
    add $ff
    add h
    rst $38
    db $ec
    rst $38
    call z, $f8fe
    cp $10
    db $fc
    ldh [$f8], a
    ld [$4cf4], sp
    or e
    inc hl
    call c, $ff00
    ld c, h
    or e
    inc hl
    call c, $ff00
    inc [hl]
    ei
    dec de
    ld a, h
    jr @+$81

    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld e, $0c
    ld e, $00
    ld a, [hl]
    nop
    cp $10
    xor $e2
    dec e
    ld [bc], a
    db $fd
    inc d
    db $eb
    ldh [$1f], a
    ld [bc], a
    rst $38
    ld d, $ef
    db $e4
    ld e, $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    inc hl
    inc bc
    ld a, h
    rrca
    db $10
    inc e
    inc hl
    dec sp
    ld b, a
    dec [hl]
    ld c, a
    inc l
    ld e, a
    inc h
    ld e, a
    inc e
    ld a, a
    ld d, $7f
    rlca
    ccf
    inc c
    ccf
    ld c, $1f
    inc bc
    rrca
    nop
    ccf
    jr nz, jr_001_43db

    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    ld a, b
    add h
    add h
    cp $f8
    cp $f2
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld b, [hl]
    rst $38
    ld [hl], h
    cp $e4
    cp $08
    db $fc
    ld [$f0fc], sp
    ld hl, sp+$08
    or $4c
    or e
    inc hl
    call c, $ff00
    ld c, h
    or e
    inc hl
    call c, $ff00
    inc [hl]
    ei
    dec de
    ld a, h
    jr @+$81

    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld e, $0c
    ld e, $00
    ld a, [hl]
    nop
    cp $10
    rst $28
    db $e4
    dec de
    ld bc, $15ff
    db $eb
    ld [c], a
    dec e
    nop
    rst $38
    db $10
    rst $28
    ldh [rNR34], a
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [rP1]
    db $fc
    nop

jr_001_43db:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    or b
    ld d, b
    cp b
    ld l, b
    sbc h
    ld [hl], b
    adc h
    cp h
    jp nz, $e2dc

    db $ec
    ld a, [c]
    add b
    db $ec
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    rlca
    ld hl, sp+$1f
    jr nz, jr_001_4433

    ld c, a
    ld l, a
    sbc a
    ld d, a
    cp a
    ld d, c
    cp a
    jr @+$01

    ld a, b
    rst $38
    ld e, b
    rst $38
    inc e
    rst $38
    rra
    ld a, a
    add hl, de
    ld a, a
    inc c
    ccf
    inc bc

jr_001_4419:
    ccf
    db $10
    ld l, a
    nop
    ldh [$e0], a
    jr jr_001_4419

    inc b
    ldh a, [$0e]
    inc c
    cp $fa
    rst $38
    ld [c], a
    rst $38
    add $ff
    add $ff
    add h
    rst $38
    db $ec
    rst $38
    adc h

jr_001_4433:
    cp $c8
    cp $70
    sbc h
    ld a, b
    adc h
    inc a
    jp nz, $b34c

    inc hl
    call c, $ff00
    ld c, h
    or e
    inc hl
    call c, $ff00
    inc [hl]
    ei
    dec de
    ld a, h
    jr @+$81

    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld e, $0c
    ld e, $00
    ld a, [hl]
    nop
    cp $1e
    db $e3
    xor $13
    ld [bc], a
    rst $38
    ld d, $e9
    ldh [$1f], a
    ld [$10f7], sp
    rst $28
    ldh [rNR34], a
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    ld b, a
    rlca
    ld hl, sp+$1f
    jr nz, @+$32

    ld c, a
    ld l, a
    sbc a
    ld d, a
    cp a
    ld d, c
    cp a
    jr @+$01

    ld a, b
    rst $38
    ld e, b
    rst $38
    inc e
    rst $38
    inc sp
    ld a, a
    jr nc, jr_001_4515

    jr jr_001_44d7

    rlca

jr_001_4499:
    ld a, a
    db $10
    ld l, a
    nop
    ldh [$e0], a
    jr jr_001_4499

    inc b
    ldh a, [$0e]
    inc c
    cp $fa
    rst $38
    ld [c], a
    rst $38
    add $ff
    add $ff
    add h
    rst $38
    db $ec
    rst $38
    call z, $f8fe
    cp $10
    db $fc
    ldh [$f8], a
    ld [$4cf4], sp
    or e
    inc hl
    call c, $ff00
    ld c, h
    or e
    inc hl
    call c, $ff00
    inc [hl]
    ei
    dec de
    ld a, h
    jr @+$81

    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld e, $0c

jr_001_44d7:
    ld e, $00
    ld a, [hl]
    nop
    cp $10
    xor $e2
    dec e
    ld [bc], a
    db $fd
    inc d
    db $eb
    ldh [$1f], a
    ld [bc], a
    rst $38
    ld d, $ef
    db $e4
    ld e, $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    ld b, a
    rlca
    ld hl, sp+$1f
    jr nz, @+$32

    ld c, a
    ld l, a
    sbc a
    ld d, a
    cp a
    ld d, c
    cp a
    jr @+$01

    ld a, b
    rst $38
    ld e, b
    rst $38
    inc e
    rst $38
    rra
    ld a, a
    add hl, de

jr_001_4515:
    ld a, a
    inc c
    ccf
    inc bc

jr_001_4519:
    ccf
    db $10
    ld l, a
    nop
    ldh [$e0], a
    jr jr_001_4519

    inc b
    ldh a, [$0e]
    inc c
    cp $fa
    rst $38
    ld [c], a
    rst $38
    add $ff
    add $ff
    add h
    rst $38
    xor $ff
    jp nz, $c2ff

    rst $38
    inc b
    cp $f8
    db $fc
    nop
    cp $4c
    or e
    inc hl
    call c, $ff00
    ld c, h
    or e
    inc hl
    call c, $ff00
    inc [hl]
    ei
    dec de
    ld a, h
    jr @+$81

    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld e, $0c
    ld e, $00
    ld a, [hl]
    nop
    cp $10
    xor $e2
    dec e
    ld [bc], a
    db $fd
    inc d
    db $eb
    ldh [$1f], a
    ld [bc], a
    rst $38
    ld d, $ef
    db $e4
    ld e, $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    inc hl
    inc bc
    ld a, h
    rrca
    db $10
    ld e, $21
    dec a
    ld b, e
    ld a, [hl-]
    ld b, a
    ld [hl], $4f
    ld [hl-], a
    ld c, a
    ld c, $7f
    ld a, [bc]
    ld a, a
    inc bc
    ccf
    rrca
    ccf
    rrca
    rra
    inc bc
    rra
    db $10
    cpl
    nop
    nop
    nop
    ld hl, sp-$08
    ld b, $fe
    ld bc, $c23c
    add b
    db $fc
    db $fc
    cp $78
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl+], a
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [c]
    rst $38
    inc a
    cp $88
    db $fc
    ldh a, [$f8]
    inc c
    ld [hl], e
    inc hl
    call c, $ff00
    ld c, h
    or e
    ld b, e
    cp h
    nop
    rst $38
    inc h
    ei
    inc sp
    ld a, h
    jr nc, @+$81

    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld e, $0c
    ld e, $00
    ld a, [hl]
    nop
    cp $10
    xor $e2
    dec e
    ld [bc], a
    db $fd
    inc d
    db $eb
    ldh [$1f], a
    ld [bc], a
    rst $38
    ld d, $ef
    db $e4
    ld e, $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    rrca
    rrca
    db $10
    inc de
    inc l
    scf
    ld c, b
    dec hl
    ld d, h
    ld a, a
    add b
    ld e, a
    and b
    scf
    ret z

    cpl
    ret nc

    dec e
    ld h, d
    dec hl
    ld [hl], h
    inc de
    inc a
    inc c
    ccf
    rlca
    rra
    db $10
    cpl
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$34c8], sp
    db $ec
    ld [de], a
    call nc, $fe2a
    ld bc, $05fa
    db $ec
    inc de
    db $f4
    dec bc
    cp b
    ld b, [hl]
    call nc, $c82e
    inc a
    jr nc, @-$02

    ldh [$f8], a
    ld [$0cf4], sp
    ld [hl], e
    inc hl
    call c, $ff00
    ld c, h
    or e
    ld b, e

Call_001_4645:
    cp h
    nop
    rst $38
    inc h
    ei
    inc sp
    ld a, h
    jr nc, @+$81

    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld e, $0c
    ld e, $00
    ld a, [hl]
    nop
    cp $10
    xor $e2
    dec e
    ld [bc], a
    db $fd
    inc d
    db $eb
    ldh [$1f], a
    ld [bc], a
    rst $38
    ld d, $ef
    db $e4
    ld e, $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    rra
    rra
    ld h, b
    ld a, a
    add b
    inc a
    ld b, e
    ld bc, $3f3f
    ld a, a
    ld e, $ff
    inc c
    rst $38
    inc c
    rst $38
    ld b, h
    rst $38
    ld e, h
    rst $38
    ld c, a
    rst $38
    inc a
    ld a, a
    ld de, $0f3f
    rra
    nop
    nop
    nop
    call nz, Call_000_3ec0
    ldh a, [$08]
    ld a, b
    add h
    cp h
    jp nz, $e25c

    ld l, h
    ld a, [c]
    ld c, h
    ld a, [c]
    ld [hl], b
    cp $50
    cp $c0
    db $fc
    ldh a, [$fc]
    ldh a, [$f8]
    ret nz

    ld hl, sp+$08
    db $f4
    inc c
    ld [hl], e
    inc hl
    call c, $ff00
    ld c, h
    or e
    ld b, e
    cp h
    nop
    rst $38
    inc h
    ei
    inc sp
    ld a, h
    jr nc, jr_001_474d

    nop
    ld a, a
    nop
    ccf
    nop
    rra

Jump_001_46d4:
    nop
    ld e, $0c
    ld e, $00
    ld a, [hl]
    nop
    cp $10
    xor $e2
    dec e
    ld [bc], a
    db $fd
    inc d
    db $eb
    ldh [$1f], a
    ld [bc], a
    rst $38
    ld d, $ef
    db $e4
    ld e, $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    inc hl
    inc bc
    ld a, h
    rrca
    db $10
    ld e, $21
    dec a
    ld b, e
    ld a, [hl-]
    ld b, a
    ld [hl], $4f
    ld [hl-], a
    ld c, a
    ld c, $7f
    ld a, [bc]
    ld a, a
    inc bc
    ccf
    rrca
    ccf
    rrca
    rra
    inc bc
    rra
    db $10
    cpl
    nop
    nop
    nop
    ld hl, sp-$08
    ld b, $fe
    ld bc, $c23c
    add b
    db $fc
    db $fc
    cp $78
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl+], a
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [c]
    rst $38
    inc a
    cp $88
    db $fc
    ldh a, [$f8]
    inc d
    dec hl
    ld [bc], a
    dec a
    jr jr_001_4769

    ld [$0237], sp
    ld a, l

jr_001_4746:
    ld sp, $70fe
    rst $38
    ld h, h
    ei
    inc bc

jr_001_474d:
    ld a, h
    nop
    ccf
    nop
    rra

jr_001_4752:
    nop
    rrca
    nop
    rlca
    inc b
    ld c, $00
    rra
    nop
    rra
    nop
    db $fc
    jr jr_001_4746

    ldh [rNR34], a
    inc b
    ei
    jr jr_001_474d

    ld [c], a
    dec e
    inc b

jr_001_4769:
    ei
    jr jr_001_4752

    ldh [rNR34], a
    nop
    db $fc
    nop
    ei
    nop
    rst $38
    ld [$00ff], sp
    ld e, $00
    adc h
    nop
    ret nz

    nop
    inc de
    inc bc
    inc a
    rrca
    db $10
    inc e
    inc hl
    dec sp
    ld b, a
    dec [hl]
    ld c, a
    inc l
    ld e, a
    inc h
    ld e, a
    inc e
    ld a, a
    ld d, $7f
    rlca
    ccf
    rrca
    ccf
    ld c, $1f
    inc bc
    rra
    nop
    ccf
    nop
    ccf
    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    ld a, b
    add h
    add h
    cp $f8
    cp $f2
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld b, [hl]
    rst $38
    ld [hl], h
    cp $e4
    cp $78
    db $fc
    ld [$f0fc], sp
    ld hl, sp+$00
    db $fc
    db $10
    cpl
    ld b, $79
    jr nz, jr_001_4821

    ld h, $59
    db $10
    ld l, a
    jr nz, @+$61

    ld h, $5f
    rla
    cpl
    ld b, $3f
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    ld bc, $0007
    rlca
    nop
    rlca
    ld [$f0f4], sp
    ld c, $04
    ld a, [$f608]
    ldh a, [$0e]
    inc b
    ld a, [$f608]
    ld [hl], b
    adc h
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rLCDC], a
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    nop
    nop
    rla
    rlca
    jr c, @+$21

    jr nz, jr_001_4835

    ld c, a
    ld l, a
    sbc a
    ld d, a
    cp a
    ld d, c
    cp a
    jr @+$01

    ld a, b
    rst $38
    ld e, b
    rst $38
    inc e
    ld a, a
    rra
    ccf
    add hl, de
    ccf
    inc c
    rra
    inc bc

jr_001_481b:
    ccf

Jump_001_481c:
    nop
    nop
    nop
    ldh [$e0], a

jr_001_4821:
    jr jr_001_481b

    inc b

jr_001_4824:
    ldh [rNR32], a
    jr jr_001_4824

    db $f4
    cp $e4
    cp $c4
    cp $c4
    cp $8c
    cp $dc
    cp $98

jr_001_4835:
    db $fc
    ld hl, sp-$04
    db $10
    ld hl, sp-$20
    ld hl, sp+$00
    ld a, a
    jr c, jr_001_4887

    dec b
    ld a, [$be41]
    jr c, @-$37

    rlca
    ld hl, sp+$40
    cp a
    jr c, jr_001_4893

    rlca
    ld a, b
    nop
    ccf
    nop
    rra
    nop
    ccf
    jr nz, jr_001_48d1

    nop
    pop af
    nop
    ld a, b
    nop
    ld a, $00
    db $fc
    ld [$98f4], sp
    ld h, h
    inc b
    ld a, [$926c]
    ld b, b
    cp [hl]

jr_001_4868:
    jr jr_001_4868

    inc e
    cp $ec
    ld e, $00
    db $fc
    nop
    ld hl, sp+$00
    or $00
    xor $40
    db $fc
    nop

Call_001_4879:
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4887:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4893:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld b, $0f
    db $10
    ld e, $21
    dec e
    ld h, e
    dec sp
    ld b, a
    inc [hl]
    ld c, a
    ld [hl-], a
    ld c, a
    ld d, $6f
    ld [bc], a
    rst $38
    ld h, b
    sbc a
    ld a, c
    add a
    dec a

jr_001_48d1:
    jp $ff00


    ld bc, $047e
    ccf
    nop
    rra
    nop
    rra
    cp $01
    inc a
    jp nz, $fe80

    db $fc
    cp $f8
    rst $38
    ld [hl], d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    jr nz, @+$01

    adc d
    db $fd
    jp c, Jump_000_00fd

    rst $38
    ldh [rNR34], a
    ld [$00fc], sp
    cp $00
    rra
    nop
    inc hl
    inc bc
    ld a, h
    rrca
    db $10
    inc e
    inc hl
    dec sp
    ld b, a
    dec [hl]
    ld c, a
    inc l
    ld e, a
    inc h
    ld e, a
    inc e
    ld a, a
    ld d, $7f
    rlca
    ccf
    inc c
    ccf
    ld c, $1f
    inc bc
    rrca
    nop
    ccf
    jr nz, jr_001_497b

    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    ld a, b
    add h
    add h
    cp $f8
    cp $f2
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld b, [hl]
    rst $38
    ld [hl], h
    cp $e4
    cp $08
    db $fc
    ld [$f0fc], sp
    ld hl, sp+$08
    or $0c
    di
    ld h, e
    sbc h
    nop
    rst $38
    ld [hl], b
    cp a
    ld a, $ff
    ld e, $ff
    inc c
    ld a, a
    inc bc
    inc a
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    nop
    sbc $00
    inc e
    nop
    nop
    inc d
    ld [$1fe0], a
    ld [bc], a
    rst $38
    ld d, $ef
    xor $1f
    inc e
    rst $38

jr_001_4968:
    jr jr_001_4968

    ldh [rNR32], a
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_497b:
    nop
    nop
    inc de
    inc bc
    inc a
    rrca
    db $10
    inc e
    inc hl
    dec sp
    ld b, a
    dec [hl]
    ld c, a
    inc l
    ld e, a
    inc h
    ld e, a
    inc e
    ld a, a
    ld d, $7f
    rlca
    ccf
    rrca
    ccf
    ld c, $1f
    inc bc
    rra
    nop
    ccf
    nop
    ccf
    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    ld a, b
    add h
    add h
    cp $f8
    cp $f2
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld b, [hl]
    rst $38
    ld [hl], h
    cp $e4
    cp $78
    db $fc
    ld [$f0fc], sp
    ld hl, sp+$00
    db $fc
    inc d
    ld l, e
    inc hl
    call c, $ff10
    inc [hl]
    ei
    ld [hl], e
    db $fc
    ld l, b
    rst $30
    ld b, b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $00
    nop
    rlca
    nop
    rrca
    nop
    ld e, $00
    inc e
    inc d
    ld [$1ee0], a
    inc b
    ld a, [$ee14]
    db $e4
    ld e, $04
    cp $90
    ld l, h
    ld h, b
    sbc h
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc bc
    ld a, h
    rrca
    db $10
    ld e, $21
    dec a
    ld b, e
    ld a, [hl-]
    ld b, a
    ld [hl], $4f
    ld [hl-], a
    ld c, a
    ld c, $7f
    ld a, [bc]
    ld a, a
    inc bc
    ccf
    rrca
    ccf
    rrca
    rra
    inc bc
    rra
    db $10
    cpl
    inc d
    dec hl
    nop
    ld a, [$05fa]
    cp $01
    inc a
    jp nz, $fc80

    db $fc
    cp $78
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl+], a
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [c]
    rst $38
    inc a
    cp $88
    db $fc
    ldh a, [$f8]
    nop
    db $fc
    ld [bc], a
    dec a
    jr jr_001_4bc7

    ld [$0237], sp
    ld a, l

jr_001_4ba4:
    ld sp, $70fe
    rst $38
    ld h, h
    ei
    inc bc

jr_001_4bab:
    ld a, h
    nop
    ccf
    nop
    rra

jr_001_4bb0:
    nop
    ccf
    db $10
    ld a, h
    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_001_4bbb

jr_001_4bbb:
    nop
    jr jr_001_4ba4

    ldh [rNR34], a
    inc b
    ei
    jr jr_001_4bab

    ld [c], a
    dec e
    inc b

jr_001_4bc7:
    ei
    jr jr_001_4bb0

    ldh [rNR34], a
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld a, e
    ld [$003f], sp
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    rst $38
    ld [hl], a
    ld hl, sp+$6f
    ldh a, [$5f]
    ldh [rVBK], a
    ldh a, [$3f]
    ret nz

    cpl
    ret nc

    rra
    ldh [$3a], a
    push bc
    rla
    add sp, $0d
    ld a, [c]
    inc hl
    ld e, h
    db $10
    ld l, a
    db $10
    cpl
    nop
    ld c, $0e
    rra
    ld c, $ff
    xor $1f
    or $0f
    ld a, [$e007]
    rra
    db $f4
    dec bc
    ld hl, sp+$07
    db $ec
    inc de
    ldh a, [rIF]
    ld a, b
    add a
    or d
    ld c, l
    call nz, Call_000_003a
    cp $08
    db $f4
    inc c
    inc sp
    inc hl
    ld e, h
    db $10
    rst $28
    ld c, h
    or e
    inc hl
    call c, $ef10
    inc c
    di
    inc bc
    ld a, h
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_001_4c31:
    ccf
    nop
    inc a
    inc b
    ld e, $00
    rrca
    nop
    ccf
    nop
    ld a, h
    db $10
    db $ec
    db $e4
    ld a, [de]
    inc b
    ld a, [$e718]
    ldh [$1f], a
    inc b
    ei
    jr jr_001_4c31

    ldh [$1f], a
    nop
    cp $00
    sbc $08
    inc a
    nop
    ld a, $00
    rrca
    nop
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

Call_001_4c68:
    nop
    nop
    nop
    nop
    ld hl, sp+$07
    ld h, b
    ld e, $08
    stop
    inc a
    inc a
    ld h, [hl]
    inc a
    ld b, d
    ld a, [hl]
    jp $817e


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    ld c, b
    ld a, b
    add [hl]
    ld a, d
    add l
    scf
    ld c, b
    rlca
    jr c, jr_001_4c9b

    dec b
    nop

jr_001_4c9b:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_4cd1

    ld d, h
    ld [hl], h
    adc d
    ld a, [hl]
    add c
    inc h
    jp c, Jump_000_2400

    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc c
    add hl, bc
    ld d, $1c
    inc hl
    dec c
    scf
    jr nz, jr_001_4d27

    ld [hl], h
    adc [hl]
    ld [hl], h
    adc [hl]
    jr nz, jr_001_4d2d

    dec c

jr_001_4cd1:
    scf
    inc e
    inc hl
    add hl, bc
    ld d, $03
    inc c
    ld bc, $0002
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
    ld de, $3b11
    ld de, $002a
    ld de, $2800
    jr z, jr_001_4d6e

    ld h, b
    ret c

    jr nz, jr_001_4d67

    ld de, $183b
    dec l
    nop
    jr jr_001_4cfd

jr_001_4cfd:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_001_4d03:
    nop
    nop
    nop
    nop
    nop
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
    db $10
    add hl, sp
    ld bc, $283b
    ld a, l
    jr nc, jr_001_4d72

    nop
    jr nc, jr_001_4d1d

jr_001_4d1d:
    nop
    nop
    ld bc, $0201
    ld bc, $090a
    ld d, $04

jr_001_4d27:
    dec bc
    ld [bc], a
    dec e
    inc e
    ld [hl+], a
    inc e

jr_001_4d2d:
    ld [hl+], a
    ld [bc], a
    dec e
    inc b
    dec bc
    add hl, bc
    ld d, $01
    ld a, [bc]
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    inc b
    dec bc
    ld bc, $0b0f
    ld d, $0b
    ld d, $01
    rrca
    inc b
    dec bc
    ld bc, $0006
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
    nop
    nop
    nop
    nop
    nop

jr_001_4d67:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_001_4d6e:
    cpl
    ld a, [$fa2f]

jr_001_4d72:
    cpl
    ld a, [$ff00]
    nop
    rlca
    inc bc
    rlca
    nop
    rlca
    nop
    rst $38
    cpl
    ld a, [$fa2f]
    cpl
    ld a, [$ff00]
    nop
    rlca
    inc bc
    rlca
    nop
    rlca
    inc bc
    ld b, $00
    rlca
    inc bc
    ld b, $00
    rlca
    inc bc
    ld b, $00
    rlca
    inc bc
    ld b, $00
    rlca
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld a, b
    jr nz, @-$0e

    ld h, b
    ldh a, [rSVBK]
    ld hl, sp+$38
    ld a, h
    db $10
    ld a, $06
    add hl, de
    dec b
    ld a, [bc]
    ld bc, $0106
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    rrca
    rrca
    ld d, b
    db $10
    rst $28
    cpl
    ld e, a
    ld d, c
    cp a
    ld d, b
    cp a
    db $10
    rst $38
    ld [hl], e
    rst $38
    ld e, h
    rst $38
    jr @+$01

    sub b
    ld a, a
    db $10
    rst $38
    jr @+$01

    inc l
    rst $18
    ld b, e

jr_001_4dd9:
    cp a
    db $10
    ld l, a
    nop
    and $e0
    jr jr_001_4dd9

    inc b
    nop
    cp $e4
    cp $c2
    rst $38
    jp nz, $e2ff

    rst $38
    ld d, $ff
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$12ff], sp
    db $fd
    ld [c], a
    db $fd
    ld [$0cf6], sp
    ld [hl], e
    inc hl
    ld e, h
    db $10
    ld l, a
    inc c
    di
    inc bc
    db $fc
    ld [$04f7], sp
    ei
    inc bc
    ld a, h
    nop
    ld a, a
    nop
    ccf
    nop
    inc e
    nop
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
    ld a, a
    ccf
    ld a, a
    inc a
    ld a, a
    jr c, jr_001_4ea5

    add hl, sp
    ld a, a
    jr c, jr_001_4ea9

    jr nc, jr_001_4eab

    inc de
    ccf
    inc de
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0000
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld b, a
    ld hl, sp-$2d
    sbc h
    ld b, [hl]
    ld [bc], a
    ld bc, $0001
    stop
    rrca
    nop
    add e
    nop
    db $10
    ccf
    ld a, $3f
    sbc $06
    nop
    inc h
    rrca
    ld e, $3b
    ld a, [hl-]

Jump_001_4e62:
    ld b, b
    ld [bc], a
    rrca
    jp nz, $3a0c

    inc a
    ld b, b
    ret


    rrca
    inc de
    inc c
    ld b, b
    ld h, $0f
    dec sp
    inc c
    sbc e
    rrca
    call nc, Call_000_0d02
    rrca
    ld a, d
    ld a, [hl-]
    ld [bc], a
    dec c
    ld e, $0f
    dec b
    ld c, $e3
    rrca
    ld b, b
    rst $08
    rlca
    rrca
    dec a
    dec b
    ld l, a
    nop
    rrca
    ld b, $7b
    nop
    rlca
    xor l
    sbc $09
    nop
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
    ld a, h
    adc a
    ld d, $5f
    dec bc

jr_001_4ea5:
    inc b
    ld bc, $0001

jr_001_4ea9:
    stop

jr_001_4eab:
    ld c, $00
    adc a
    nop
    db $10
    dec de
    rlca
    ld e, $00
    ld hl, $051e
    nop
    add hl, sp
    ld [hl+], a
    inc e
    inc h
    and $03
    nop
    dec e
    rrca
    ld [hl], b
    jr nc, jr_001_4eca

    dec h
    ld h, $a2
    dec c
    jr nc, jr_001_4ee2

jr_001_4eca:
    rrca
    nop
    cpl
    nop
    dec a
    daa
    jr z, jr_001_4ed4

    rra
    ld [c], a

jr_001_4ed4:
    ld bc, $2900
    ld a, [hl+]
    ld [$120f], sp
    jr nz, jr_001_4edd

jr_001_4edd:
    inc hl
    inc h
    dec hl
    ld b, c
    inc l

jr_001_4ee2:
    rrca
    inc de
    jp nz, Jump_000_1400

    rrca
    rlca
    ld a, e
    dec l
    ld l, $94
    ld bc, $104f
    db $10
    or $01
    ccf
    ld e, [hl]
    db $10
    db $10
    ld de, $3724
    ld [hl], b
    add hl, de
    rrca
    dec b
    ld b, $70
    rlca
    ld e, [hl]
    inc h
    jr @+$73

    dec d
    jr c, jr_001_4f22

    pop bc
    rrca
    ld [$0a09], sp
    add l
    ld hl, $1817
    ld d, $82
    ld a, a
    dec bc
    inc c
    dec c
    ld l, b
    ld c, $29
    ccf
    jr nz, jr_001_4f8c

    rst $20
    ld bc, $1f00
    add b

jr_001_4f22:
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    inc bc
    ret nc

    nop
    nop
    nop
    rst $30
    ld a, [bc]
    ld e, b
    inc e
    ld a, $02
    ld bc, $0001
    inc l
    nop
    ld d, $00
    adc a
    nop
    inc l
    dec de
    ld a, e
    ld e, $00
    ld hl, $211e
    nop
    add hl, sp
    ld [hl+], a
    inc e
    or h
    and $1f
    nop
    dec e
    dec hl
    ld a, b
    jr nc, @+$05

    ld c, $25
    ld h, $99
    ld [$e52f], sp
    ld [$3028], sp
    inc a
    dec hl
    inc b
    nop
    daa
    ld a, e
    jr z, jr_001_4f69

    ld c, $d6
    ld bc, $783a

jr_001_4f69:
    ld d, a
    dec bc
    nop
    dec b
    ld b, $58
    rlca
    ld a, [hl-]
    add hl, hl
    ld a, e
    ld a, [hl+]
    ld bc, $cf63
    ld [bc], a
    dec hl
    cpl
    inc bc
    dec bc
    ld l, l
    ld [$0a09], sp
    rrca
    dec c
    dec hl
    inc l
    rla
    dec bc
    ld d, a
    dec bc
    inc c
    dec c
    rrca
    ld a, [bc]

jr_001_4f8c:
    dec l
    ld l, $06
    ld a, e
    dec hl
    inc bc
    sub [hl]
    sbc b
    ld [hl], d
    nop
    inc h
    ld [de], a
    ret


    nop
    inc hl
    dec a
    ld h, c
    add hl, bc
    xor a
    add sp, $03
    pop de
    nop
    ld [hl], d
    inc h
    jr jr_001_4fbc

    inc de
    inc d
    rrca
    inc hl
    di
    rlca
    ld l, e
    cpl
    call c, $8306
    jp nc, Jump_001_72e6

    ld a, [hl+]
    adc b
    jr z, jr_001_500b

    db $10
    inc l
    ld c, c

jr_001_4fbc:
    db $e4
    cp l
    ld [hl], a
    ld [bc], a
    dec hl

jr_001_4fc1:
    ld h, d
    jp nc, $9b17

    ld a, [hl+]
    ld e, $2c
    inc l
    ld c, $e4
    sbc e
    ld [hl], a
    ccf
    dec hl
    ld a, [hl+]
    ld [bc], a
    ld b, d
    inc bc
    jp nc, Jump_000_2a48

    ld b, e
    ld e, $2c
    ret nc

    inc bc
    db $e4
    dec hl
    db $fd
    ld [bc], a
    inc de
    ld c, [hl]
    jp nc, Jump_000_2a5b

    ld d, $3d
    db $10
    ld de, $e449
    and $bf
    dec hl
    ld bc, $1379
    rlca
    jp nc, $e830

    add hl, bc
    ld de, $af49
    ret nz

    adc $d2
    ld a, c
    jp $d204


    inc h
    ld c, a
    ld h, e
    ld [bc], a
    ld b, e
    ld de, $dc2b
    ld bc, $a4d2
    ld a, d

jr_001_500b:
    jr nc, @+$04

    jp nc, $b967

    nop
    and c
    ld bc, $2b11
    jp hl


    inc bc
    jp nc, Jump_000_1abd

    ld [bc], a
    ld de, $9b1a
    jp Jump_000_1d11


    jr nz, jr_001_4fc1

    cp [hl]
    rra
    nop
    ld a, h
    rra
    inc h
    ld hl, sp+$43
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld bc, $0078
    nop
    nop
    add d
    or b
    and c
    or e
    ld [hl], b
    ld [bc], a
    ld bc, $0001
    rla
    nop
    stop
    add a
    nop
    rla
    ld hl, $8e1e
    inc c
    nop
    ld [hl+], a
    inc e
    ld a, c
    dec de
    ld a, [bc]
    nop
    dec e
    rst $00
    ld d, $30
    add hl, bc
    rlca
    dec h
    ld h, $1e
    rrca
    jr nc, jr_001_5060

    ld d, $81

jr_001_5060:
    nop
    daa
    jr z, @-$19

    inc bc
    dec hl
    cpl
    rlca
    ld d, $05
    ld b, $07
    xor c
    inc bc
    inc de
    scf
    ld bc, $0816
    add hl, bc
    ld a, [bc]
    ld b, c
    ld [hl+], a
    nop
    add hl, hl
    ld a, [hl+]
    ld h, h
    scf
    inc b
    ld d, $0b
    inc c
    dec c
    add a
    jr z, jr_001_50af

    inc l
    adc d
    ld bc, $2072
    ld [de], a
    jr nz, jr_001_508c

jr_001_508c:
    ld [hl-], a
    inc c
    dec l
    ld [de], a
    ld l, $00
    ld sp, $0e12
    rra
    dec de
    ld h, $00
    inc e
    add e
    ld c, l
    dec e
    rrca
    rst $20
    ld bc, $0016
    sbc [hl]
    ld [de], a
    ld d, $2f
    add hl, bc
    ld d, $49
    ld h, $a7
    db $e4
    ld [$2816], sp

jr_001_50af:
    sbc [hl]
    and a
    ld a, [bc]
    ld b, h
    and a
    and a
    and [hl]
    rlca
    ld d, $a7
    rst $30
    ld bc, $bc99
    rrca
    nop
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    inc bc
    ld a, d
    nop
    nop
    nop
    push hl
    ld a, h
    ld d, e
    ld h, h
    sub a
    inc b
    ld bc, $0001
    ccf
    nop
    ld c, $00
    adc a
    nop
    ccf
    dec de
    ld [hl], $1e
    nop
    ld hl, $341e
    nop
    add hl, sp
    ld [hl+], a
    inc e
    add d
    db $e4
    ld [hl-], a
    nop
    dec e
    ld [$253e], sp
    ld h, $2c
    ld a, [bc]
    cpl
    inc de
    ld a, c
    jr nc, @+$0c

    ld h, $30
    db $e3

jr_001_50f9:
    rlca
    add hl, de
    add hl, hl
    ld a, [hl+]
    ret c

    ld bc, $133e
    daa
    jr z, jr_001_50f9

    ld [$9e2e], sp
    ld e, $01
    ld e, e
    pop af
    rlca
    nop
    dec hl
    inc l
    inc hl
    ld c, l
    dec e
    db $d3
    rlca
    cp h
    ld d, d
    inc l
    ld e, $4f
    ld l, e
    ld b, $4c
    ld e, e
    rra
    dec l
    ld a, b
    ld l, $01
    ld a, l
    dec b
    ld b, $7a
    rlca
    ld [bc], a
    ld l, a
    ld l, e
    inc l
    inc h
    ld e, $d1
    sub c
    dec de
    cpl
    add sp, $07
    ld c, h
    ld [hl], b
    scf
    ld a, $08
    add hl, bc
    ld c, h
    ld a, [bc]

jr_001_513b:
    ld l, a
    jr nc, jr_001_513b

    rrca
    jr nz, @+$29

    xor d
    and c
    ld [$3700], sp
    pop bc
    ld a, $0b
    inc c
    dec c
    rst $20
    inc b
    ld l, a
    nop
    rst $28
    dec b
    ld b, [hl]
    ld b, $7a
    adc e
    dec b
    inc e
    add hl, de
    scf
    ld a, $12
    rst $00
    nop
    inc hl
    sub [hl]
    ld bc, $241a
    ld d, c
    dec c
    db $e4
    inc h
    rst $28
    ld c, $1b
    ld bc, $0d33
    add hl, de
    ld a, $13
    add hl, bc
    nop
    inc d
    rrca
    inc hl
    pop hl
    add hl, hl
    inc h
    jr jr_001_518e

    inc [hl]
    dec c
    inc a
    db $e4
    ld [bc], a
    dec c
    nop
    db $f4
    dec b
    dec de
    jr nz, jr_001_51af

jr_001_5185:
    dec c
    inc de
    ld [hl], e
    ld a, [de]
    cp h
    add d
    adc e
    db $10
    rrca

jr_001_518e:
    ld c, $83
    ld hl, $1817
    ld d, $9e
    dec de
    dec b
    dec c
    sub c
    dec de
    jr nc, jr_001_5185

    dec b
    dec c
    adc e
    dec de

jr_001_51a0:
    jr nc, jr_001_51a2

jr_001_51a2:
    ld l, c
    cp b
    inc h
    dec d
    ld hl, $12f3
    dec c
    cpl
    call nz, $1b09
    dec e

jr_001_51af:
    jr nz, jr_001_51ed

    ei
    ld sp, $1f00
    ldh a, [rP1]
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
    ld h, l
    rst $10
    ld h, l
    ld c, [hl]
    nop
    inc b
    ld bc, $0001
    stop
    ld c, $00
    adc a
    nop
    db $10
    dec de
    rlca
    ld e, $00
    ld hl, $051e
    nop
    add hl, sp
    ld [hl+], a
    inc e
    inc h
    ld b, l
    nop
    jr nc, jr_001_5200

    dec b
    dec e
    ld bc, $a30f
    nop
    add hl, hl
    ret nz

    inc bc
    rrca
    dec b

jr_001_51ed:
    ld b, $07
    nop
    dec hl
    ld [c], a
    rrca
    cpl
    ld h, b
    rrca
    ld [$0a09], sp
    nop
    ld a, b
    dec l

jr_001_51fc:
    inc bc
    rra
    dec bc
    inc c

jr_001_5200:
    ld b, c
    dec c
    ccf
    ld [de], a
    and $04
    nop
    add hl, de
    rrca
    ld a, c
    inc de
    inc b
    nop
    ld a, [de]
    adc a
    rrca
    dec h
    ld h, $01
    ld d, b
    ld l, h
    ld l, a
    daa
    jr z, jr_001_51a0

jr_001_5219:
    ld e, b
    and h
    ld [bc], a
    rrca
    ld e, b
    or d
    sub e
    inc d
    rrca
    ld e, b
    sbc b
    ld [hl], l
    dec e
    jr nz, jr_001_5219

    dec b
    ld e, a
    ld [de], a
    rra
    ldh [rP1], a
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld [bc], a
    and e
    nop
    nop
    nop
    jp nc, Jump_001_4e62

    jr nz, jr_001_52aa

    inc b
    ld bc, $0001
    dec e
    nop
    rla
    nop
    add a
    nop
    dec e
    ld hl, $8e1e
    ld [de], a
    nop
    ld [hl+], a
    inc e
    ld a, c
    ld hl, $0010
    dec e
    ld [c], a
    ld de, $251c
    ld h, $45
    inc e
    jr nc, jr_001_51fc

    dec c
    inc b
    nop
    inc a
    daa
    jr z, jr_001_5266

    add hl, sp

jr_001_5266:
    cpl
    and l
    dec c
    sbc [hl]
    ld a, [bc]
    ld c, $56
    inc a
    add hl, hl
    ld a, [hl+]
    inc de
    ld [hl], e
    dec hl
    ld a, c
    inc l
    ld b, $1c
    ld [de], a
    ld [hl-], a
    nop
    inc hl
    rlca
    ld c, $2d
    ld l, $13
    inc b
    inc h
    ld [hl-], a
    ld de, $1c19
    inc de
    ld b, c
    nop
    inc d
    rrca
    inc hl
    jr nc, jr_001_52bd

    inc h
    jr @+$17

    sub c
    ld [de], a
    ld a, [de]
    db $e4
    ld [bc], a
    ld d, [hl]
    db $10
    reti


    dec e
    dec de
    ld d, $ec
    dec bc
    ld [hl], e
    dec e
    ld c, $f7
    ld b, $1b
    sub e
    ld bc, $2373
    ld d, d
    dec e

jr_001_52aa:
    dec de
    ret


    ld [hl], h
    and h
    ld [hl], e
    ld [hl], c
    inc h
    db $10
    ld de, $b21b
    ld [hl], h
    ld b, e
    ld d, [hl]
    dec h
    ld h, $cf
    inc bc
    ld d, e

jr_001_52bd:
    rla
    ld bc, $5849
    inc e
    db $db
    inc e
    rst $08
    ld bc, $1753
    inc b
    ld a, c
    sub b
    ld bc, $1171
    rst $28
    dec b
    ld l, a
    ld bc, $733d
    inc d
    ld [bc], a
    ld d, e
    jp hl


    ld bc, $9e6f
    ld [hl], e
    cpl
    inc b
    and a
    push af
    inc bc
    ret z

    rlca
    ld [hl], e
    dec b
    ld b, $07
    sbc a
    ld [bc], a
    and a
    ld d, $07
    add h
    ld a, b
    ld [$0a09], sp
    call nc, $0486
    ld a, c
    ld sp, $7302
    rra
    add a
    inc e
    dec bc
    inc c
    dec c
    adc a
    inc b
    dec de
    rra
    dec de
    ld [bc], a
    dec a
    nop
    jr nz, jr_001_530b

    sbc l
    ld c, a
    dec l

jr_001_530b:
    inc bc
    ld a, e
    dec de
    ld d, $00
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld bc, $00f8
    nop
    nop
    and d
    sbc l
    call z, Call_001_75c9
    ld [bc], a
    ld bc, $0001
    stop
    rra
    nop
    add a
    nop
    db $10
    ld hl, $8e1e
    dec b
    nop
    ld [hl+], a
    inc e
    ld a, c
    inc d
    inc bc
    nop
    dec e
    db $e4
    dec b
    rrca
    cpl
    inc de
    rrca
    cpl
    ld d, $0c
    dec h
    ld h, $10
    rra
    add hl, hl
    ld a, [hl+]
    rrca
    inc l
    daa
    jr z, jr_001_535c

    rrca
    dec hl
    inc l
    nop
    jr nc, jr_001_5355

    ld h, e
    ccf

jr_001_5355:
    ld a, [bc]
    dec l
    ld l, $c7
    dec bc
    ld c, a
    inc h

jr_001_535c:
    ld [de], a
    ld e, $00
    add hl, de
    ld bc, $0c0f
    rla
    jr jr_001_537b

    inc de
    nop
    ld a, [de]
    or e
    rrca
    ld h, $0e
    ld d, $6f
    add c
    ld h, $12
    inc hl
    call nz, Call_000_300e
    sbc h
    ccf
    dec h
    rrca
    inc de

jr_001_537b:
    inc d
    rrca
    ld c, $06
    inc l
    ld c, a
    db $10
    db $10
    and a
    rrca
    rrca
    add hl, hl
    db $10
    ld de, $4d19
    ld e, a
    cp a

jr_001_538d:
    jp hl


    ld bc, $bc5f
    cp a
    add hl, bc
    ld e, a
    jr nc, jr_001_538d

    add hl, bc
    ld e, a
    dec a
    sub a
    dec de
    ld e, a
    ld e, e
    ld [hl+], a
    db $db
    ld b, $bf
    ld h, d
    jp nz, Jump_001_5f2b

    dec b
    ld b, $07
    scf
    ld l, $85
    ld bc, $085f
    add hl, bc
    ld a, [bc]
    sub h
    ld e, a
    cpl
    ld d, $0b
    inc c
    dec c
    db $76
    ld c, $2f
    ld d, e
    jr nz, @+$71

    rst $00
    ld bc, $1f00
    dec de
    cp h
    rlca
    nop
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
    ld l, l
    db $d3
    ld l, b
    ld a, [hl]
    ld c, e

jr_001_53d6:
    inc b
    ld bc, $0001
    stop
    ld c, $00
    adc a
    nop
    db $10
    dec de
    rlca
    ld e, $00
    ld hl, $051e
    nop
    add hl, sp
    ld [hl+], a
    inc e
    inc h
    and $03
    nop
    dec e
    rrca
    ld a, d
    cpl
    rlca
    rrca
    ld h, [hl]
    nop
    jr nc, jr_001_53fc

    dec a
    dec h

jr_001_53fc:
    ld h, $03
    rrca
    jp Jump_000_2700


    jr z, jr_001_53d6

    ld b, $0f
    ld [hl], d
    cpl
    dec h
    ld b, h
    nop
    cpl
    sbc h
    rrca
    dec h
    rst $00
    nop
    add hl, hl
    ld a, [hl+]
    or c
    inc b
    ld c, a
    add hl, de
    dec hl
    inc l
    daa
    ld d, e
    db $10
    rrca
    jr nc, jr_001_5428

    inc bc
    dec l
    ld l, $00
    dec b
    ld b, $07
    pop bc
    inc b

jr_001_5428:
    ld l, a
    nop
    ld [$0a09], sp
    jr nz, jr_001_543e

    ld sp, $3212
    add b
    rrca
    dec bc
    inc c
    dec c
    ldh [rIF], a
    jr nz, jr_001_544d

    ld [de], a
    add hl, sp
    rra

jr_001_543e:
    dec de
    inc b
    inc sp
    nop
    rra
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, b

jr_001_544d:
    nop
    nop
    nop
    xor c
    ld e, e
    cp a
    ld a, [bc]
    rst $20
    ld [bc], a
    ld bc, $001e
    inc c
    nop
    nop
    ld bc, $0300
    nop
    rlca
    ld bc, $050e
    ld e, $1a
    dec c
    ld [hl-], a
    add hl, bc
    dec de
    nop
    rrca
    nop
    ld a, a
    ld b, $f9
    ld [hl], $c9
    or [hl]
    ld c, c
    ld c, c
    ld bc, $09e0
    rra
    ldh a, [rP1]
    cp $c0
    ld a, e
    ccf
    ld [bc], a
    ld bc, $0dc0
    ld e, a
    add b
    nop
    ret nz

    nop
    ldh [$e0], a
    add hl, hl
    ld hl, sp+$00
    db $fc
    call nz, $2d61
    ld d, d
    inc c
    ld bc, $926d
    ld bc, $e0ed
    ld bc, $fefd
    push af
    ld l, b
    sbc $03
    add hl, hl
    add hl, bc
    ld l, l
    ld bc, $6767
    cp l
    db $10
    ld bc, $6b04
    db $ed
    inc c
    ld bc, $a861
    adc a
    ld bc, $f1ff
    ld c, $01
    ld l, l
    sub d
    rst $28
    ld [bc], a
    ld bc, $010c
    ld a, a
    or h
    ld c, e
    or e
    ld c, h
    and a
    ld e, b
    nop
    ld bc, $5ca3
    or b
    ld c, a
    ldh a, [$0a]
    ld a, a
    ld b, b
    cp a
    add b
    inc e
    ld a, a
    ret nz

    cp a
    ld bc, $3f63
    rlca
    ld b, b
    cp a
    rst $08
    dec bc
    ld a, a
    rst $38
    rla
    ld a, [hl]
    ld bc, $7f11
    db $ec
    ld l, c
    rra
    ccf
    nop
    ccf
    inc c
    ld a, c
    ld a, a
    dec d
    ccf
    ldh a, [$ef]
    rlca
    db $eb
    rla
    call c, Call_001_617f
    ld d, e
    ld a, a
    ld bc, $10df
    sbc a
    rla
    cp h
    ccf
    nop
    ld d, d
    ld c, [hl]
    ld b, e

Jump_001_5503:
    ld [bc], a
    nop
    nop
    ld bc, $0080
    nop
    ld bc, $aa16
    add b
    ld h, $29
    ld [bc], a
    ld bc, $0012
    ld l, $00
    ld b, e
    dec de
    ld b, e
    xor h
    ld l, a
    db $d3
    ld a, a
    rst $20
    ld a, a
    rst $28
    ld a, a
    jp nz, $906f

    dec bc
    ld c, l
    rrca
    rla
    ld h, d
    nop
    jp nz, $c2e1

    dec [hl]
    or $cb
    cp $a5
    cp $47
    cp $85
    or $09
    or a
    dec bc
    rrca
    sub a
    ld bc, $0319
    rrca
    inc bc
    inc b
    rlca
    ld [$150e], sp
    inc c
    ld d, $0c
    ld [de], a
    nop
    inc c
    rlca
    ld b, b
    dec [hl]
    nop
    ret nz

    ret nz

    ld e, h
    and b
    inc a
    ldh [$d0], a
    ld [hl], b
    adc b
    jr nc, @+$7a

    jr nc, @+$6a

    jr nc, jr_001_55a7

    jr nc, jr_001_55b9

    inc b
    rlca
    nop
    ld d, b
    jr nc, @+$23

    ld bc, $5c01
    rlca
    ld [hl], e
    rlca
    ld a, [de]
    rra
    dec [hl]
    ccf
    ld b, b
    ld a, a
    rst $38
    ld a, a
    and l
    ccf
    ld d, l
    ccf
    ld d, h
    rra
    ld a, [hl+]
    ld bc, $260f
    ld c, l
    rrca
    ld b, c
    rla
    add b
    add b
    ldh [$0c], a
    ldh [$98], a

jr_001_5589:
    ld hl, sp+$44
    db $fc
    ld [bc], a
    ldh [$df], a
    jp c, $d425

    ld a, [hl+]
    ld bc, $60a8
    ld d, h
    ld bc, $48b0
    nop
    ldh a, [$a2]
    dec e
    jr jr_001_5589

    jr @+$26

    jr c, jr_001_55f0

    ld a, b
    sbc h
    ld a, b

jr_001_55a7:
    or h
    jr nc, @+$6f

    dec l
    ld d, [hl]
    dec l
    ld e, [hl]
    dec l
    ld e, e
    dec l
    ld [hl], e
    scf
    ld l, [hl]
    jr c, jr_001_5605

    ld a, h
    sbc d
    ld a, h

jr_001_55b9:
    or d
    nop
    ld a, h
    push hl
    dec b
    adc c
    cp h
    jp Jump_001_66bc


    or [hl]
    call $d9b6
    or [hl]
    ld a, c
    cp h
    ld h, d
    jr nc, @-$32

    ld c, l
    add e
    ld a, l
    nop
    nop
    ld e, $1e
    ld hl, $063f
    ld c, h
    ccf
    ld e, [hl]
    ccf
    ld e, a
    ld bc, $1f30
    cpl
    ld bc, $170f
    rlca
    ld b, $0b
    inc bc
    dec b
    ld bc, $9902
    sbc b
    rra
    ldh a, [$f0]
    inc b

jr_001_55f0:
    ld [$64f8], sp
    ld hl, sp-$0c
    dec c
    ld bc, $e8f0
    ld bc, $cfb1
    db $d3
    add b
    ld b, b
    cp l
    sub a
    rlca

Call_001_5602:
    jp hl


    add b
    push bc

jr_001_5605:
    dec sp
    ld a, $5d
    ld [hl], a
    xor [hl]
    ld a, e
    inc sp
    rst $30
    ld a, a
    add hl, de
    ld a, a
    push bc
    rlca
    dec de
    ld a, h
    ld a, h
    jp Jump_001_7cbe


    cp $fe
    db $fd
    cp $fb
    ld a, [hl]
    rst $30
    cp [hl]
    ld [hl], a
    cp $2c
    ld d, a
    cp $18
    ldh a, [rP1]
    nop
    ld bc, $0100
    ld [bc], a
    inc bc
    ld [$0409], sp
    dec b
    ld a, [bc]
    dec bc
    ld b, $07
    inc c
    dec c
    ld c, $0f
    inc d
    dec d
    db $10
    ld de, $1110
    ld [de], a
    inc de
    ld d, $17
    jr @+$1b

    inc d
    dec d
    db $10
    ld a, [de]
    db $10
    ld de, $171b
    ld d, $17
    inc e
    dec e
    ld e, $1f
    dec e
    jr nz, @+$21

    ld hl, $2222
    inc hl
    inc hl
    inc e
    inc h
    ld e, $25
    ld h, $27
    jr z, jr_001_568c

    daa
    daa
    jr z, jr_001_5690

    add hl, hl
    jr nz, jr_001_5695

    ld hl, $2b27
    jr z, jr_001_569e

    inc l
    inc l
    dec l
    ld l, $2f
    jr nc, jr_001_56a8

    ld [hl-], a
    dec e
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_56b9

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    jr nc, jr_001_56c6

    inc a

jr_001_568c:
    sbc d
    ld b, e
    sbc h
    ld b, l

jr_001_5690:
    nop
    dec a
    ld a, $3f
    ld b, b

jr_001_5695:
    add hl, sp
    ld b, c
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_001_569e:
    add hl, sp
    add hl, sp
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    ld c, b

jr_001_56a8:
    ld c, c
    add hl, sp
    ld c, e
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld c, h
    ld c, l
    add hl, sp
    ld c, [hl]
    ld c, a
    ld bc, $0150
    nop

jr_001_56b9:
    ld d, c
    nop
    ld bc, $5352
    nop
    ld d, l
    ld d, [hl]
    add hl, sp
    ld d, a
    ld e, b
    add hl, sp
    add hl, sp

jr_001_56c6:
    add hl, sp
    add hl, sp
    ld e, c
    ld e, d
    add hl, sp
    ld e, e
    ld e, h
    ld bc, $5e5d
    ld e, a
    ld h, b
    nop
    ld bc, $6261
    nop
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    add hl, sp
    add hl, sp
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    add hl, sp
    add hl, sp
    ld l, l
    ld l, [hl]
    ld e, e
    ld [hl], b
    nop
    ld bc, $7271
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
    ld l, d
    add [hl]
    add a
    add hl, sp
    adc b
    inc l
    inc l
    adc c
    adc d
    inc l
    inc l
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    sub c
    sub d
    add hl, sp
    sub e
    sub h
    dec e
    sub l
    sub [hl]
    adc l
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_001_572c:
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    sbc [hl]
    add hl, sp
    sbc a
    and b
    ld bc, $a2a1
    nop
    and e
    nop
    and h
    and l
    and [hl]
    and a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    xor b
    add hl, sp
    xor c
    xor d
    xor e
    xor h
    ld bc, $ae00
    xor l
    xor a
    or b
    or d
    or c
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    ld bc, $01b9
    nop
    ld bc, $0100
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    jr c, jr_001_572c

    or c
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ld bc, $cac9
    nop
    ld bc, $2c2c
    set 1, h
    inc l
    inc l
    call $cfce
    ret nc

    pop de
    add hl, sp
    jp nc, $c0d3

    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    and $e6
    push hl
    push hl
    push hl
    rst $20
    push hl
    rst $20
    add sp, -$1b
    add sp, -$1b
    push hl
    push hl
    jp hl


    jp hl


    ld [$e5e5], a
    push hl
    push hl
    db $eb
    push hl
    push hl
    push hl
    push hl
    db $ec
    push hl
    push hl
    push hl
    push hl
    db $ed
    push hl
    push hl
    push hl
    push hl
    xor $ef
    ldh a, [$28]
    pop af
    ld a, [c]
    jr z, jr_001_57f4

    di
    db $f4
    jr z, @-$09

jr_001_57d0:
    or $28
    rst $30
    ld hl, sp+$28
    jr z, jr_001_57d0

    ld a, [$fd28]
    ei
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_57f4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_58de:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    inc b
    rlc b
    nop
    ld bc, $2040
    add b
    jr nz, jr_001_58de

    inc b
    ld bc, $0001
    dec [hl]
    nop
    rla
    nop
    adc a
    nop
    dec [hl]
    ld h, [hl]
    inc l
    ld e, $00
    ld h, l
    ld h, c
    ld a, [hl+]
    nop
    add hl, sp
    ld h, h
    ld e, a
    ld l, [hl]
    rst $20
    jr z, jr_001_5972

jr_001_5972:
    ld h, b
    add a
    ld h, [hl]
    inc [hl]
    ld h, a
    ld l, b
    ld l, c
    cp l
    dec b
    inc d
    ld [bc], a
    rrca
    ld [$190e], a
    dec bc
    inc [hl]
    ld l, d
    ld l, e
    ld l, h
    rlca
    dec d
    ld bc, $0302
    xor c
    inc b
    rrca
    add hl, bc
    ld c, a
    inc de
    inc bc
    ld a, b
    rrca
    add hl, bc
    sbc [hl]
    inc b
    dec b
    ld a, e
    ld b, $09
    adc l
    ret c

    add hl, bc
    inc de
    inc [hl]
    ld a, [bc]
    dec bc
    ldh a, [rDIV]
    ld bc, $0807
    add hl, bc
    rst $30
    ld b, $10
    dec a
    ld bc, $1309
    sub h
    inc [hl]
    ld [de], a
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
    sub e
    dec c
    ret nz

    add hl, bc
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [de], a
    ld [hl], $37
    jr c, @+$4a

    dec c
    sbc [hl]
    ld c, a
    inc bc
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ldh a, [$15]
    ld [hl-], a
    ld a, [hl+]
    dec hl
    inc l
    rrca
    dec l
    ld l, $2f
    jr nc, jr_001_59e2

    ret nz

jr_001_59e2:
    dec a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld a, [hl]
    ld c, [hl]
    add hl, de
    ld l, c
    ld [bc], a
    inc h
    dec h
    ld h, $27
    jr z, jr_001_5a1c

    ld h, b
    inc [hl]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, e
    ld c, b
    ld [bc], a
    dec de
    rst $30
    inc bc
    inc l
    add c
    ld [$1f0d], sp
    jr nz, jr_001_5a27

    ld [hl+], a
    inc hl
    jr nz, jr_001_5a3e

    ccf
    ld b, b
    ld b, c
    rrca
    ld b, d
    ld b, e
    nop
    add hl, de
    ld c, $de
    inc l
    inc bc
    dec c
    ret nz

    ld hl, $1b1a
    inc e

jr_001_5a1c:
    dec e
    ld e, $80
    inc [hl]
    dec bc
    ld a, [bc]
    add hl, sp
    inc bc
    ld a, [hl-]
    ld a, [hl-]
    dec sp

jr_001_5a27:
    inc a
    dec a
    ld a, $f1
    inc bc
    ld b, b
    dec c
    inc c
    ld h, e
    nop
    db $10
    ldh a, [$03]
    ld a, [hl-]
    inc de
    inc d
    dec d
    dec c
    ld d, $17
    rla
    jr jr_001_5a47

jr_001_5a3e:
    ld l, l
    dec a
    ld hl, sp+$07
    ld b, c
    ld c, $0f
    sub c
    nop

jr_001_5a47:
    ld de, $09fb
    add hl, sp
    rst $30
    ld [bc], a
    dec a
    rst $28
    jr jr_001_5a92

    inc bc
    rst $18
    add hl, sp
    dec b
    rra
    or b
    inc b
    cp [hl]
    ld b, c
    dec bc
    ccf
    ld a, e
    ld bc, $397b
    inc b
    inc [hl]
    db $f4
    ld bc, $6f41
    dec l
    ld [bc], a
    adc b
    ld [hl], c
    ld c, a
    add hl, bc
    ld c, a
    ccf
    ld a, e
    add hl, sp
    inc b
    inc [hl]
    rst $30
    ld bc, $ef41
    ld bc, $062d
    ld a, [hl]
    ld [$3901], sp
    sub d
    inc [hl]
    ld e, e
    ld a, [de]
    rst $30
    ld bc, $ef41
    ld bc, $062d
    ld a, [hl]
    ld [$3901], sp
    add b
    ld bc, $6360
    ld e, [hl]
    di

jr_001_5a92:
    ld a, [hl+]
    nop
    ld h, d
    db $eb
    dec l
    adc l
    ldh [rP1], a
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ret nz

    pop bc
    nop
    nop
    nop
    nop
    nop
    jp nz, $0001

    nop
    jp RST_00


    nop
    nop
    nop
    jp RST_00


    nop
    nop
    nop
    call nz, $00c5
    nop
    nop
    ld bc, $0101
    call nz, $00c5
    ld bc, $0001
    nop
    call nz, $00c5
    nop
    nop
    ld bc, $00c3
    nop
    nop
    nop
    nop
    jp nz, RST_00

    nop
    nop
    jp nz, RST_00

    nop
    nop
    nop
    ret nz

    pop bc
    nop
    nop
    ld bc, $0001
    ret nz

    pop bc
    ld bc, $0101
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
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    db $10
    ld b, [hl]
    nop
    nop
    ld [bc], a
    xor l
    add hl, bc
    nop
    db $d3
    adc l
    inc b
    ld bc, $0001
    ld h, e
    nop
    ld a, [hl+]
    nop
    adc a
    nop
    ld h, e
    sub h
    ld e, e
    ld [hl], e
    nop
    ld h, a
    sbc $56
    nop
    rst $30
    ld h, d
    rst $30
    rst $30
    ld h, d
    adc h
    ld [hl], e
    ld h, d
    ld h, b
    ld h, c
    nop
    ld h, e
    pop af
    ld d, [hl]
    ld h, d
    ld e, c
    ld c, a
    sbc [hl]
    nop
    ld e, a
    ld d, [hl]
    ld h, d
    inc sp
    ld e, b
    ld c, h
    nop
    ld e, [hl]
    adc $56
    ld h, d
    ld d, a
    inc a
    ld h, d
    ld e, l
    ld d, [hl]
    ld h, d
    ld d, h
    db $e3
    ld h, d
    ld e, h
    rst $00
    ld d, l
    ld h, d
    ld d, d
    ld d, e
    rrca
    ld h, d
    ld e, d
    ld e, e
    ld d, h
    db $10
    ld h, d
    ld b, a
    ld c, b
    nop
    ld a, [hl]
    ld c, d

jr_001_5b63:
    ld d, l
    jr z, @+$05

    ld l, $1e
    ld e, $21
    dec sp
    nop
    rst $00
    cp c
    ld h, d
    inc hl
    inc h
    add d
    ld d, b
    ld h, d
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, a
    add h
    ld h, d
    dec h
    ld h, $d6
    ld h, d
    ld a, b
    ld de, $c542
    inc [hl]
    inc [hl]
    and b
    ld b, $2f
    daa
    jr z, jr_001_5bc7

    ld hl, $0564
    ld de, $4ae3
    ld h, d
    add hl, hl
    ld a, [hl+]
    pop de
    ld c, e
    ld h, d
    ld e, l
    ld sp, hl
    nop
    and b
    ld d, b
    dec b
    ld h, d
    db $76
    cpl
    xor $3d
    ld h, h
    ld h, c
    inc bc
    ld de, $23f7
    ld d, $f4
    ld [de], a
    ld h, d
    ld d, [hl]
    ld sp, hl
    ld b, $00
    ld c, [hl]
    ld d, b
    nop
    ld d, e
    ld d, c
    ld h, d
    sbc h
    ld [$260a], sp
    ld a, h
    ld a, d
    jr jr_001_5c37

    ld e, a
    add hl, sp
    ld h, d
    ld a, [hl+]
    ld sp, hl
    ld c, h
    ld [hl-], a
    add d
    add b
    inc bc

jr_001_5bc7:
    ld c, l
    jr nc, jr_001_5bf2

    ld e, $23
    inc h
    ld d, b
    ld h, l
    ld d, $71
    ld a, e
    ld hl, $7776
    add hl, de
    rst $30
    ld [hl+], a
    ld d, $f4
    ld [de], a
    ld h, d
    ld d, h
    ld sp, hl
    add e
    ld a, h
    jr z, jr_001_5b63

    ld [hl], a
    ld h, e
    jr nc, jr_001_5bfa

    ld e, $25
    ld h, $62
    add hl, bc
    ld [hl], c
    ld [hl], d
    adc d
    adc e
    sbc [hl]
    ld h, e
    ld e, l

jr_001_5bf2:
    add hl, sp
    ld h, d
    adc d
    add d
    ld sp, hl
    nop
    add h
    add l

jr_001_5bfa:
    add [hl]
    ld c, h
    jr jr_001_5c61

    ld h, d
    daa
    jr z, jr_001_5c22

    ld l, h
    ld c, l
    ld h, c
    ld e, $12
    adc h
    adc l
    ld [hl], l
    inc a
    ld h, e
    ld e, h
    jr c, jr_001_5c71

    ld d, d
    jr nc, jr_001_5c65

    ld c, e
    nop
    ld d, [hl]
    add a
    adc b
    ld hl, $4b89
    rlca
    add [hl]
    ld h, d
    add hl, hl
    dec hl
    ld l, h
    ld b, $25

jr_001_5c22:
    ld [hl], e
    ld [hl], h
    adc [hl]
    add [hl]
    ld a, b
    ld a, c
    ld a, l

jr_001_5c29:
    inc d
    jr nz, jr_001_5c29

    ld d, $11
    ld h, d
    ld d, l
    ld sp, hl
    ld a, [bc]
    ld c, c
    dec a
    inc a
    ld a, $3b

jr_001_5c37:
    rlca
    ld b, [hl]
    ld a, [hl+]
    xor $68
    cp $0b
    inc bc
    nop
    ld a, [hl]
    ld c, d
    jr c, jr_001_5c6c

    ld l, e
    ld sp, $0455
    nop
    rra
    jr nz, jr_001_5c8f

    dec a
    ld h, d
    ld [bc], a
    db $10
    inc bc
    nop
    ld hl, $f467
    ld sp, $a428
    rrca
    ld h, c
    ld h, d
    ldh [$62], a
    inc hl
    inc h
    ld e, $a7

jr_001_5c61:
    inc b
    ld a, [hl-]
    ld h, d
    or h

jr_001_5c65:
    and e
    ld h, d
    or e
    ld [de], a
    ret


    dec [hl]
    ld h, d

jr_001_5c6c:
    ld d, l
    ld c, e
    inc c
    ld d, c
    add d

jr_001_5c71:
    ld h, d
    dec h
    ld h, $1e
    sbc c
    inc b
    ld h, d
    ld b, d
    push de
    and e
    and l
    ld h, d
    sbc [hl]
    ld [de], a
    dec [hl]
    ld h, d
    ld d, h
    ld d, h
    inc hl
    sub c
    ld c, l
    ld a, [bc]
    jr z, jr_001_5cb0

    jr z, @+$20

    ld [hl], e
    inc b
    ld h, d
    xor d

jr_001_5c8f:
    and e
    dec sp
    dec a
    ld e, $1e
    ld [bc], a
    ld [de], a
    rst $00
    ld h, d
    ld h, [hl]
    xor d
    jr nc, jr_001_5cfe

    dec h
    ld c, c
    ld bc, $1e44
    add hl, hl
    ld a, [hl+]
    ld e, $4c
    inc b
    ld h, d
    dec l
    ld [$a3f1], a
    ld h, d
    ld l, a
    add hl, sp
    ret c

    rst $08

jr_001_5cb0:
    nop
    ld [hl], b
    inc d
    inc a
    ld h, d
    sub [hl]
    ld d, $62
    ld b, a
    sbc h
    ld b, h
    ld l, $7e
    ld b, h
    ld [bc], a
    xor $47
    dec l
    ld [hl], e
    sub d
    ld [bc], a
    ld l, l
    pop hl
    ld bc, $6e4d
    adc a
    inc c
    ld h, l
    ld h, c
    dec bc
    xor e
    xor h
    sub [hl]
    ret nc

    ld a, [bc]
    add hl, bc
    ld h, d
    ld e, $18
    add hl, de
    ld a, [de]
    inc bc
    inc h
    ld c, h
    dec l
    ld d, l
    ld b, h
    ld hl, sp+$03
    inc a
    inc bc
    ld [hl+], a
    scf
    jr c, jr_001_5d20

    add hl, sp
    ld a, [hl-]
    sub e
    rlca
    inc e
    inc d
    ld hl, $d16a
    sub e
    db $ed
    and $1a
    jr nz, jr_001_5cfa

    ld h, d
    ld d, $17

jr_001_5cfa:
    dec de
    ei
    ld b, $e0

jr_001_5cfe:
    pop de
    ld [hl-], a
    ld c, a
    ld h, d
    ld bc, $3e82
    rra
    ld [hl], $90
    inc bc
    inc d
    and a
    dec e
    dec a
    ld h, d
    inc bc
    pop de
    di
    rla
    jr nz, jr_001_5d15

    ld h, d

jr_001_5d15:
    dec d
    nop
    inc e
    rst $20
    inc bc
    ld de, $462f
    cpl
    ld [bc], a
    xor c

jr_001_5d20:
    ld a, [bc]
    ld hl, sp+$01
    ld a, $02
    rra
    dec [hl]
    dec b
    ld b, $07
    dec [hl]
    and [hl]
    rra
    add a
    dec e
    ld hl, $0b69
    inc de
    adc [hl]
    adc a
    ld e, $01
    nop
    dec de
    ld h, d
    rst $30
    inc b
    nop
    ld [hl], a
    ldh [$a2], a
    ld [hl-], a
    sbc a
    ld h, d
    ld bc, $3e18
    ld h, d
    ld [$4909], sp
    ld a, [bc]
    ld h, d
    ld c, b
    dec e
    dec bc
    ld h, d
    ld hl, $9190
    inc a
    ld bc, $621a
    inc de
    ld a, l
    inc d
    dec b
    dec e
    add hl, bc
    dec de
    ld b, d
    ld [bc], a
    and e
    and a
    ldh [rSC], a
    ld d, c
    ld hl, $0422
    inc sp
    dec bc
    inc c
    dec c
    inc sp
    ld b, d
    cp h
    ld e, $91
    dec e
    ld a, $23
    ld c, $62
    ld a, d
    sub l
    ld b, $04
    ld b, e
    ld h, d
    sub a
    ld de, $0032
    ld [de], a
    nop
    ld c, $c0
    nop
    inc l
    dec e
    ld e, $1d
    ld [hl], b
    dec e
    ld c, l
    inc l
    ld e, $83
    ld [$801d], sp
    ld h, h
    dec e
    sbc d
    ld b, c
    ccf
    ld [hl-], a
    ret nz

    nop
    ld b, b
    ld b, c
    sbc c
    jr nz, jr_001_5dcc

    and b
    inc e
    dec e
    ld hl, $c23b
    dec b
    ld hl, $9392
    rst $08
    ld bc, $7901
    dec sp
    dec b
    nop
    sbc b
    sub b
    ld e, l
    sub a
    ld b, $3c
    sub h
    rrca
    ld d, d
    nop
    db $10
    ld e, c
    db $10
    rlca
    db $ed
    ld d, c
    nop
    push bc
    daa
    rlca
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5dcc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_001_5e08

    inc d
    rrca
    add hl, de
    rrca
    db $10
    ld a, [de]
    ld d, $15
    ld d, $00
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_5e28

    ld [hl+], a

jr_001_5e08:
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_001_5e36

    ld h, $29
    dec hl
    ld a, [hl+]
    dec l
    inc l
    nop
    ld l, $2f
    add hl, hl
    jr nc, jr_001_5e47

    ld sp, $3229
    ld a, [hl+]
    ld sp, $0033
    nop
    nop
    inc [hl]
    dec [hl]

jr_001_5e28:
    ld a, [hl+]
    jr c, jr_001_5e5f

    dec [hl]
    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl], $3a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_001_5e36:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, d
    ld b, e
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, a

jr_001_5e47:
    ld c, b
    ld b, a
    ld c, b
    ld b, d
    ld b, l
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, d
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld d, e
    ld d, d
    ld d, e
    ld d, h

jr_001_5e5f:
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, d
    ld d, e
    ld d, a
    ld d, e
    ld d, h
    ld d, [hl]
    ld d, h
    ld e, b
    ld e, c
    ld e, d
    ld b, d
    ld b, d
    ld e, d
    ld e, e
    ld b, d
    ld b, d
    ld e, d
    ld e, e
    ld b, d
    ld b, l
    ld e, h
    ld b, d
    ld e, l
    ld b, d
    ld e, [hl]
    ld b, d
    ld e, [hl]
    ld b, d
    ld e, a
    ld b, d
    ld e, a
    ld b, d
    ld h, b
    ld b, d
    ld h, b
    ld b, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, e
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    db $db
    db $db
    db $db
    db $db
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld l, d
    ld l, e
    ld l, d
    ld l, e
    ld l, h
    ld b, d
    ld l, l
    ld l, [hl]
    ld b, d
    ld b, d
    ld [hl], b
    ld [hl], b
    ld b, d
    ld b, l
    ld [hl], c
    ld [hl], d
    ld b, [hl]
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld b, [hl]
    ld [hl], e
    ld b, [hl]
    ld [hl], e
    ld d, e
    ld d, h
    ld e, d
    ld e, d
    ld e, h
    ld d, a
    adc d
    ld e, c
    ld e, b
    pop bc
    ld e, e
    add a
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld h, l
    db $76
    ld [hl], a
    ld h, l
    db $76
    ld a, b
    ld a, c
    ld a, d
    ld a, d
    ld a, e
    ld b, d
    ld a, e
    ld b, d
    ld a, h
    ld b, d
    ld a, h
    ld b, d
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld a, a
    add b
    add c
    ld h, d
    add d
    ld h, d
    nop
    add e
    nop
    add h
    add l
    add [hl]
    add a
    adc b
    add l
    adc c
    add a
    adc d
    adc e
    nop
    adc h
    nop
    adc l
    adc l
    adc [hl]
    adc [hl]
    adc l
    adc l
    adc l
    adc l
    adc a
    nop
    adc l
    adc a
    sub b
    sub c
    adc l
    adc a
    sub d
    sub d
    adc l
    adc l
    sub e
    sub e
    nop
    nop
    sub e
    sub h
    nop
    nop
    nop
    sub a
    sub l
    sub [hl]
    sbc b
    adc l
    adc l
    adc l
    sbc c
    adc l
    sbc d
    adc l
    sbc e
    sbc h
    sbc l
    sbc [hl]
    adc a
    nop
    adc [hl]
    and b
    sbc e
    sbc a
    sbc l
    sbc [hl]
    nop
    and c
    nop
    and d
    nop

Jump_001_5f2b:
    and e
    nop
    and h
    adc l
    and l
    adc [hl]
    adc [hl]
    and [hl]
    nop
    and a
    xor b
    adc l
    xor c
    adc l
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    nop
    or b
    nop
    or c
    nop
    or d
    nop
    nop
    or e
    nop
    or h
    or l
    or l
    or [hl]
    or [hl]
    or l
    or a
    or [hl]
    cp b
    cp c
    nop
    cp d
    nop
    ld b, [hl]
    cp e
    ld b, [hl]
    cp e
    ld b, [hl]
    cp h
    ld b, [hl]
    cp h
    cp l
    cp [hl]
    cp l
    cp [hl]
    cp a
    ret nz

    cp a
    ret nz

    ld b, [hl]
    pop bc
    ld b, [hl]
    pop bc
    ld b, [hl]
    jp nz, $c246

    cp l
    jp $c3bd


    cp a
    call nz, $c4bf
    ld b, [hl]
    push bc
    ld b, [hl]
    push bc
    ld b, [hl]
    add $46
    rst $00
    ret z

    ld b, d
    ret


    ld b, d
    ld b, l
    jp z, $cb45

    call z, $cd42
    ld b, d
    nop
    adc $ce
    rst $08
    rst $08
    ld b, d
    ld b, d
    ld b, d
    nop
    ret nc

    ret nc

    pop de
    jp nc, $8d92

    adc l
    ld b, d
    ld b, l
    ld b, d
    ld b, d
    ld b, [hl]
    call nc, Call_001_4645
    db $d3
    adc l
    call nc, $92d3
    push de
    adc l
    adc l
    sub $8d
    rst $10
    sub $d8
    sub d
    call nc, $cfd3
    ld b, l
    ld b, d
    ld b, d
    nop
    reti


    reti


    jp c, $db00

    nop
    nop
    db $db
    db $db
    call c, $dbdc
    nop
    nop
    nop
    adc l
    adc l
    reti


    db $d3
    jp c, Jump_001_46d4

    ld c, b
    adc l
    adc l
    db $dd
    sbc $dd
    sbc $00
    nop
    ld e, h
    ld c, c
    ld e, h
    ld c, e
    ld c, d
    ld c, l
    ld c, h
    ld c, a
    ld c, [hl]
    cp e
    ld d, b
    cp e
    ld e, h
    ld d, c
    ld e, h
    ld d, d
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, l
    cp e
    ld d, [hl]
    cp e
    rst $18
    ldh [$e3], a
    db $e4
    pop hl
    ld [c], a
    push hl
    and $e7
    add sp, $42
    ld b, d
    jp hl


    ld [$4242], a
    db $eb
    db $ec
    rst $28
    ldh a, [$ed]
    xor $f1
    ld a, [c]
    rst $28
    rst $30
    rst $28
    rst $30
    nop
    ld a, [c]
    nop
    ld a, [c]
    rst $28
    rst $30
    di
    db $f4
    nop
    ld a, [c]
    push af
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    nop
    nop
    dec de
    inc e
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0501
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $00c2
    jp nz, RST_00

    nop
    jp $c300


    jp $c200


    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld hl, $2822
    inc h
    jr z, @+$26

    nop
    ld h, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld bc, $051f
    rrca
    rlca
    rra
    ld c, $31
    dec e
    ld [hl+], a
    add hl, de
    ld h, $00
    rra
    nop

jr_001_60f8:
    rlca
    inc bc

jr_001_60fa:
    inc b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    ld h, b
    sbc h
    ld d, b
    xor h
    ldh a, [rIF]
    db $ed
    rra
    inc e
    rst $38
    add b
    ld a, a
    ld [$29ff], sp
    sbc $69
    cp [hl]
    jp hl


    ld a, [hl]
    jp hl


    cp $e9
    cp $e1
    cp $00
    nop
    nop
    nop
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

    nop
    ldh a, [rP1]
    ldh a, [$c0]
    jr nc, jr_001_60f8

    jr nc, jr_001_60fa

    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    or b
    ld bc, $0106
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    rst $38
    ccf
    rst $08
    rra
    rst $20
    rrca
    inc sp
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld a, [c]
    rst $38
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    inc a
    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    adc $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_001_617f:
    nop
    nop
    ret nz

    or b
    add b
    ld h, b
    add b
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    rst $38
    ldh [$9f], a
    ret nz

    ccf
    add b
    ld a, h
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    inc bc
    rlca
    ld bc, $0107
    rlca
    nop
    ld bc, $0301
    nop
    inc bc
    ld bc, $77fe
    jp hl


    ld h, a
    ei
    ld h, a
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$10
    db $fc
    add sp, -$02
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld a, [$14ff]
    cp $48
    db $fc
    ld [hl], b
    call z, Call_000_17e8
    push de
    dec sp
    push de
    dec sp
    nop
    nop
    nop
    nop
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
    ld b, $0b
    ld b, $0b
    ld b, $0b
    ld b, $0f
    ld b, $0f
    inc b
    dec bc
    nop
    rst $08
    jp z, $caf5

    push af
    ld h, e
    or h
    ld h, b
    or e
    ld h, b
    or b
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_001_6221:
jr_001_6221:
    and l
    ld a, e
    dec c
    di
    dec sp
    ld b, a
    rlca
    ccf
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rlca
    inc bc
    inc b
    ld [bc], a
    dec b
    ld bc, $0002
    ld bc, $0f00
    nop
    rrca
    dec c
    rra
    nop
    rra
    db $ec
    di
    ld h, [hl]
    ld sp, hl
    or b
    rst $38
    ret z

    cp $d0
    db $fc
    ldh [$f8], a
    ldh [$f8], a
    ld hl, sp-$04
    ld a, b
    db $fc
    nop
    ld hl, sp+$60
    sub b
    jr nc, jr_001_6221

    ld h, b
    or b
    ld h, b
    ldh a, [$c0]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0107
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fc
    rst $38
    xor d
    rst $38
    sub l
    rst $38
    ld d, l
    rst $38
    ld a, [hl-]
    ld a, a
    ld b, h
    ei
    ld d, $f9
    sbc $31
    ld a, [c]
    adc l
    ld [$ca9d], a
    cp l
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
    ld b, b
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    cp b
    ld [hl], b
    cp b
    jr nc, @+$7a

    db $10
    ld a, $0a
    dec [hl]
    inc d
    dec hl
    ld c, $f1
    inc h
    ei
    inc h
    ei
    inc b
    rrca
    rrca
    inc e
    dec de
    inc l
    jr nc, jr_001_6324

    ld h, b
    cp b
    jr nz, jr_001_633d

    nop
    jr nz, jr_001_62d0

jr_001_62d0:
    nop
    nop
    ld bc, $0301
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    ld a, l
    ld b, $b9
    inc e
    and e
    ld bc, $071f
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rlca
    inc c
    or e

jr_001_62f3:
    sbc b
    rst $20

jr_001_62f5:
    ret nc

    db $fd
    ld a, b
    db $f4
    jr nc, jr_001_62f3

    jr nc, jr_001_62f5

    db $10
    ld a, b
    nop
    jr c, jr_001_635a

    cp $20

Jump_001_6304:
    db $fc
    add b

Jump_001_6306:
    ld hl, sp-$40
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    cp $fc
    cp $30
    rst $38
    ld b, $39
    ld b, $09
    ld b, $19
    ld b, $7d
    ld a, h
    rst $38
    nop
    nop
    nop

jr_001_6324:
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
    inc b
    rlca
    ld [$1f00], sp
    rrca
    db $10
    rrca
    db $10
    ld [$0317], sp
    inc e

jr_001_633d:
    dec b
    ld a, [hl-]
    ld a, [de]
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_6348:
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    jr jr_001_6348

    inc b
    db $fc
    ld [bc], a
    nop
    rst $38
    cp $01
    cp $01
    rst $38

jr_001_635a:
    nop
    ld a, a
    add b
    rst $38
    nop
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
    ld hl, sp-$08
    inc b
    db $fc
    ld [bc], a
    add $39
    add d
    ld b, l
    add d
    ld b, l
    ld d, $2f
    ld l, $5f
    dec a
    ld e, [hl]
    inc hl
    ld e, h
    ccf
    ret nz

    rlca
    ld hl, sp+$79
    add [hl]
    ccf
    ld b, b
    rra
    jr nz, jr_001_63b3

jr_001_6394:
    jr nz, jr_001_63b5

    jr nz, jr_001_6398

jr_001_6398:
    rra
    nop
    inc bc
    ld bc, $0103
    inc bc
    nop
    ld bc, $00ff
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

jr_001_63b3:
    rst $38
    nop

jr_001_63b5:
    rst $38
    nop
    nop
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    nop

Call_001_63c0:
    ld hl, sp-$7e
    ld b, l
    add d
    ld b, l
    jp nz, $e425

    ld a, [de]
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ldh [rNR23], a
    ret nz

    jr nz, jr_001_6394

    jr nz, @-$7e

    ld h, b
    ld b, b
    ldh [$80], a
    ldh [$80], a
    ret nz

    nop
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
    ld bc, $0100
    ld bc, $0302
    inc b
    nop
    rrca
    rlca
    ld [$0807], sp
    inc b
    dec bc
    inc bc
    inc c
    ld c, $11
    dec c
    inc de
    nop
    nop
    nop
    nop

Jump_001_6405:
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    ld [bc], a
    nop
    rst $38
    cp $01
    cp $01
    ccf
    ret nz

    rst $18
    jr nz, @+$01

    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc b
    db $fc
    ld [bc], a
    add $39
    add d
    ld b, l
    add d
    ld b, l
    dec de
    daa
    rla
    cpl
    ld a, $4f
    ld sp, $3f4e
    ret nz

    inc bc
    db $fc
    ld a, l
    add d
    ld a, $41
    rra
    jr nz, jr_001_6463

jr_001_6454:
    db $10
    rlca
    ld [$0e01], sp
    inc b
    rrca
    rlca
    rrca
    nop
    rlca
    nop
    nop
    ld a, a
    add b

jr_001_6463:
    ld a, a
    add b
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
    nop
    ldh [$1f], a
    rrca
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    nop
    rra
    add $29
    add $29
    adc $31
    cp $01
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ldh a, [$0c]
    ldh [rNR10], a
    ret nz

    jr nz, jr_001_6454

    jr nz, @-$7e

    ld b, b
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
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
    ld bc, $0100
    ld bc, $0302
    inc b
    nop
    rrca
    rlca

Jump_001_64b6:
    ld [$0807], sp
    inc b
    dec bc
    inc bc
    inc c
    ld c, $11
    dec c
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
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    ld [bc], a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $18
    jr nz, @+$01

    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld hl, sp+$78
    add h
    ld a, h
    add d
    ld c, [hl]
    or c
    add $29
    add $29
    dec de
    daa
    rla
    cpl
    ld e, $2f
    ld sp, $3f4e
    ld b, b
    inc bc
    db $fc
    dec a
    jp nz, Jump_001_413e

    ccf
    ld b, b
    rrca
    jr nc, jr_001_6519

    inc c
    nop
    inc bc

jr_001_6519:
    nop
    ld bc, $0301
    ld bc, $0003
    ld bc, $807f
    ld a, a
    add b
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
    ld hl, sp+$07
    rst $30
    rrca
    rst $28
    rra
    rst $28
    rra
    rlca
    rst $38
    ld hl, sp-$01
    ld hl, sp-$04
    nop
    ld hl, sp-$3e
    dec h
    jp nz, $c625

    add hl, hl
    xor $11
    cp $01
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$04
    jr nc, @-$36

    ret nz

    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$c0]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    ld [$1f00], sp
    rrca
    db $10
    rrca
    db $10
    ld [$0717], sp
    jr jr_001_658b

    ld [hl-], a
    ld a, [de]
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_6588:
    nop
    nop
    ret nz

jr_001_658b:
    ret nz

    jr nz, @-$1e

    jr jr_001_6588

    inc b
    db $fc
    ld [bc], a
    nop
    rst $38
    cp $01
    cp $01
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
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
    ld hl, sp-$08
    inc b
    db $fc
    ld [bc], a
    add $39
    add d
    ld b, l
    add d
    ld b, l
    ld d, $2f
    ld l, $5f
    inc a
    ld e, a
    ld hl, $3f5e
    ret nz

    rlca
    ld hl, sp+$79
    add [hl]
    ccf
    ld b, b
    rra
    jr nz, jr_001_65f2

jr_001_65d4:
    ld hl, $231d
    ld bc, $001f
    inc bc
    nop
    ld bc, $0000
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
    nop
    rst $38
    nop
    rst $38
    nop
    rlca

jr_001_65f2:
    ld hl, sp-$07
    cp $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl]
    rst $38
    nop
    ld a, [hl]
    add d
    ld b, l
    jp nz, $c225

    dec h
    db $e4
    ld a, [de]
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ldh [rNR23], a
    ret nz

    jr nz, jr_001_65d4

    jr nz, @-$7e

    ld b, b
    nop
    add b
    nop
    add b
    nop
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
    nop
    rrca
    rrca
    rra
    db $10
    ccf
    db $10
    jr c, jr_001_6644

    jr c, jr_001_6656

    ld [hl], b
    jr nz, jr_001_66a9

    jr nz, @+$72

jr_001_663b:
    jr nz, jr_001_66ad

    ld b, b
    ldh [rLCDC], a
    ldh [rP1], a
    nop
    nop

jr_001_6644:
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_001_6656:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$08
    db $fc
    ld [$081c], sp
    inc e
    inc b
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $02
    rlca
    ld [bc], a
    daa
    ld b, b
    ldh [rLCDC], a
    pop hl
    ld h, b
    ldh a, [$50]
    ld hl, sp+$48
    cp $26
    ld a, a
    ld hl, $1077
    ccf
    rrca
    rra
    nop
    ccf
    inc e
    ccf
    rlca
    rra
    ld bc, $0007
    inc bc
    nop
    ld bc, $0000
    nop
    add c
    add b
    pop hl
    jr nz, @-$0b

    nop
    inc hl

jr_001_66a9:
    ld bc, $0e0f
    rst $38

jr_001_66ad:
    ldh a, [$fe]
    nop
    rst $38
    rst $38
    ld bc, $01fe
    adc l
    ld [hl], d
    rst $00
    jr z, jr_001_663b

    add $80

Jump_001_66bc:
    jp $c100


    nop
    nop
    ld b, $6f
    ld a, [bc]
    rst $18
    ld [de], a
    rst $38
    ld h, d
    rst $30
    add d
    rst $20
    inc b
    xor $04
    ld c, [hl]
    ld [$f0fc], sp
    ld hl, sp+$00
    ldh a, [$80]
    ld [hl], b
    ldh [rSVBK], a
    and b
    ld [hl], b
    jr nz, @-$0e

    ldh [$f0], a
    nop
    ldh a, [rP1]
    nop
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
    rra
    db $10
    ccf
    db $10
    jr c, jr_001_6704

    jr c, jr_001_6716

    ld [hl], b
    jr nz, @+$72

    jr nz, @+$72

    jr nz, jr_001_676d

    ld b, b
    ldh [rLCDC], a
    db $e4
    nop
    nop
    nop

jr_001_6704:
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_001_6716:
    nop
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
    nop
    nop
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
    ld hl, sp+$08
    db $fc
    ld [$081c], sp
    inc e
    inc b
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $02
    ld b, $02
    ld b, $60
    rst $30
    ld d, b
    ei
    ld c, b
    rst $38
    ld b, [hl]
    rst $28
    ld b, c
    rst $20
    jr nz, jr_001_67c4

    jr nz, jr_001_67c1

    db $10
    ccf
    rrca
    rra
    nop
    rrca
    nop
    ld bc, $0201
    ld bc, $0302
    rra
    ld e, $3f
    nop
    rra
    add b
    ldh [rNR41], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [$80]
    ldh a, [rSVBK]
    rst $38

jr_001_676d:
    rrca
    ld a, a
    nop
    rst $38
    rst $38
    ld bc, $817e
    xor $11
    xor $11
    call z, Call_000_0cf2
    cp $fc
    cp $00
    cp $02
    ld b, $02
    ld b, $06
    ld c, $0a
    ld e, $12
    ld a, [hl]
    ld h, h
    cp $84
    xor $08
    db $fc
    ldh a, [$f8]
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0206
    dec b
    ld [bc], a
    dec b
    nop
    rlca
    ld bc, $0207
    rlca
    ld b, $0f
    dec b
    rrca
    dec b
    rrca
    ld b, $0f
    ld [bc], a
    rrca
    nop
    rrca

jr_001_67c1:
    nop
    ld h, b
    ld h, b

jr_001_67c4:
    sbc l
    db $dd
    ld [hl+], a
    ei
    inc b
    cp a
    ld b, b
    ld e, [hl]
    and c
    ld c, h
    or d
    ld d, $f9
    rst $30
    ld hl, sp-$05
    db $fc
    db $eb
    db $fc
    adc e

jr_001_67d8:
    db $fc
    dec de
    db $fc
    inc sp
    db $fc
    ld [hl], l
    ld a, [$f2ed]
    nop
    nop
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$3e

    jr nz, jr_001_67d8

    db $10
    ldh [rNR10], a
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    dec c
    inc de
    inc e
    inc hl
    ld a, $41
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    inc bc
    inc a
    nop
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
    sbc l
    ld [c], a
    ld a, [hl]
    add c
    ld a, a
    add b
    ccf
    ld b, b
    rra
    jr nz, jr_001_683b

    db $10
    rlca
    ld [$0403], sp
    inc bc
    inc b
    ld b, $89
    nop
    ld e, $00
    nop
    nop
    nop

jr_001_683b:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$04
    db $ec
    ld [de], a
    ld [hl], h
    adc d
    ld e, d
    and l
    ld l, d
    sub l
    ld l, d
    sub l
    ld l, [hl]
    sub c
    ld l, h
    sub d
    ld l, h
    sub d
    ld b, b
    xor h
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
    ld bc, $0e01
    dec bc
    inc d
    ld d, $29
    ld d, $29
    ccf
    ld b, b
    ld a, $41
    dec e
    ld [hl+], a
    dec e
    ld [hl+], a
    inc c
    inc de
    inc c
    inc de
    dec c
    inc de
    inc bc
    rrca
    ld b, $0f
    dec b
    rrca
    rlca

jr_001_6880:
    rrca
    nop
    add c
    add c
    ld b, d
    add b
    ld b, c
    add b
    ld b, c
    add b
    ld a, c
    cp b
    ld b, [hl]
    sbc $21
    ld l, $d1
    ld l, $d1
    dec c
    ld a, [c]
    ld bc, $bdfe
    cp $7d
    cp $ed
    cp $cb
    db $fc
    sbc e
    db $fc
    nop
    add b
    add b
    ld [hl], b
    ld d, b
    xor b
    xor b
    ld d, h
    xor b
    ld d, h
    ld d, h
    xor d
    call nc, $dc2a
    ld [hl+], a
    ld hl, sp+$04
    ld hl, sp+$04
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh [rNR10], a
    ret nz

    jr nz, jr_001_6880

    jr nz, jr_001_68c9

    rrca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    nop
    inc bc

jr_001_68c9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_68d0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    ld hl, sp+$2f
    ldh a, [$2f]
    ldh a, [$df]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ccf
    ld b, b
    rra
    jr nz, jr_001_6901

    stop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_6901:
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ret nz

    jr nz, jr_001_68d0

    jr nc, jr_001_6942

    ret z

    ld hl, sp+$04
    ld a, h
    add d
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    db $fc
    db $fd
    cp $ff
    dec de
    nop
    nop
    dec de
    nop
    dec de
    dec de
    nop
    ld bc, $0702
    ld [$0403], sp
    add hl, bc
    ld a, [bc]
    dec b
    ld b, $0b
    inc c
    dec c

jr_001_6942:
    ld c, $13
    inc d
    rrca
    db $10
    rrca
    db $10
    ld de, $1512
    ld d, $17
    jr jr_001_6963

    inc d
    rrca
    add hl, de
    rrca
    db $10
    ld a, [de]
    ld d, $15
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_697e

jr_001_6963:
    ld hl, $1b20
    ld [hl+], a
    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    daa
    jr z, jr_001_69a1

    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_001_697e:
    ld l, $2f
    jr nc, jr_001_69b3

    ld [hl-], a
    dec l
    ld l, $2d
    ld l, $2f
    jr nc, jr_001_69bb

    ld [hl-], a
    dec l
    ld l, $33
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    add hl, hl
    ld a, [hl+]
    jr c, jr_001_69d0

    dec l
    ld l, $2f
    jr nc, jr_001_69d6

    dec sp
    inc a
    dec a
    ld a, $3f

jr_001_69a1:
    cpl
    jr nc, jr_001_69de

    dec sp
    inc a
    dec a
    ld a, $3f
    ld [hl], $37
    add hl, hl
    ld a, [hl+]
    jr c, jr_001_69e8

    dec l
    ld l, $40
    ld b, c

jr_001_69b3:
    ld hl, $4342
    ld b, h
    ld b, l
    inc hl
    ld b, [hl]
    ld c, l

jr_001_69bb:
    ld b, a
    ld c, b
    ld c, h
    ld c, d
    ld c, c
    ld c, e
    jp nz, $c4c3

    push bc
    nop
    nop
    add $c6
    rst $00
    ret z

    ret


    jp z, $cccb

    rst $00

jr_001_69d0:
    ret z

    call $c7ce
    ret z

    rst $08

jr_001_69d6:
    ret nc

    pop de
    jp nc, $a19f

    and b
    and d
    and e

jr_001_69de:
    and e
    and h
    and h
    and l
    and [hl]
    dec de
    and a
    nop
    nop
    sbc [hl]

jr_001_69e8:
    sbc [hl]
    sbc l
    sbc l
    sbc l
    sbc l
    sbc a
    and c
    and b
    and d
    and c
    and c
    and d
    and d
    and e
    and e
    and h
    and h
    and c
    and e
    and d
    and h
    and e
    and l
    and h
    dec de
    and l
    and l
    dec de
    dec de
    and l
    and [hl]
    dec de
    and a
    or e
    xor b
    sbc l
    cp e
    xor c
    xor d
    xor l
    sbc l
    xor e
    xor h
    sbc l
    xor [hl]
    dec de
    or e
    dec de
    sbc l
    sbc l
    cp e
    sbc l
    cp e
    dec de
    sbc l
    dec de
    sbc l
    xor l
    sbc l
    xor l
    sbc l
    sbc l
    xor [hl]
    sbc l
    xor [hl]
    sbc l
    xor a
    xor a
    or d
    or b
    or c
    or d
    or d
    or e
    or e
    or d
    or d
    or h
    or h
    cp d
    cp d
    or l
    or [hl]
    cp d
    cp d
    or a
    sbc l
    cp d
    or a
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, [hl]
    ld c, a
    dec de
    dec de
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld d, d
    ld c, b
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    dec de
    dec de
    dec de
    dec de
    ld sp, $2d57
    ld e, b
    inc sp
    nop
    inc [hl]
    dec [hl]
    cpl
    ld e, d
    ld a, [hl-]
    ld e, e
    dec l
    ld e, c
    cpl
    ld e, d
    ld a, [hl-]
    ld e, e
    dec de
    ld e, h
    ld b, b
    ld b, c
    ld hl, $5d42
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    inc h
    dec h
    ld h, $61
    jr z, jr_001_6ade

    ld a, [hl+]
    ld h, e
    ld a, [hl+]
    ld h, h
    inc l
    ld h, h
    dec a
    ld h, l
    ccf
    ld a, $3f
    ld e, h
    dec de
    ld b, e
    ld b, h
    ld b, l
    inc hl
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    jr c, jr_001_6acc

    dec l
    ld e, b
    ld l, d
    dec de
    ld l, e
    ld l, h
    jr nz, jr_001_6ab6

    ld hl, $1b20
    ld l, a
    ld l, l
    ld l, [hl]
    ld [hl], $37
    ld h, d
    ld a, [hl+]
    dec de
    ld [hl+], a
    ld [hl+], a
    inc hl
    dec de
    dec de
    ld [hl], b
    dec de
    dec de
    dec de
    dec de
    ld [hl], c
    ld [hl], d
    dec de
    ld [hl], e
    ld [hl], h
    dec de

jr_001_6ab6:
    db $76
    ld [hl], l
    ld [hl], a
    ld a, b
    ld a, d
    ld a, c
    ld a, e
    add d
    ld a, l
    ld a, h
    ld a, [hl]
    ld a, a
    add c
    add b
    dec de
    add d
    add e
    dec de
    add h
    ld c, h
    ld c, l
    ld d, d

jr_001_6acc:
    ld c, b
    ld [hl], d
    dec de
    ld [hl], e
    ld [hl], h
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    dec de
    db $76
    ld [hl], l
    ld [hl], a
    ld a, a
    add c
    add b
    dec de
    add d

jr_001_6ade:
    add e
    dec de
    add h
    dec de
    dec de
    ld [hl], b
    dec de
    dec de
    dec de
    dec de
    ld [hl], c
    ld a, b
    ld a, d
    ld a, c
    ld a, e
    dec de
    dec de
    dec de
    dec de
    add d
    ld a, l
    ld a, h
    ld a, [hl]
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
    ld [hl], h
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld [hl], l
    sbc d
    sbc e
    dec de
    dec de
    dec de
    dec de
    sbc h
    dec de
    dec de
    or d
    cp c
    cp e
    and h
    cp h
    cp l
    ret nz

    dec de
    cp [hl]
    cp a
    dec de
    pop bc
    cp c
    cp d
    and h
    dec de
    and b
    and h
    and b
    and h
    and h
    dec de
    and h
    dec de
    or e
    cp b
    cp c
    cp c
    cp b
    cp b
    cp c
    cp c
    cp b
    cp b
    cp c
    cp c
    cp b
    or h
    cp c
    cp c
    dec de
    dec de
    db $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dbd7

    call c, $dedd
    ret c

    push de
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e6
    rst $20
    rst $20
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, [hl]
    ld c, a
    dec de
    dec de
    ld d, b
    ld d, c
    dec de
    dec de
    ld d, b
    ld d, c
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    add d
    ld a, l
    ld a, h
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    add c
    add b
    dec de
    push de
    sub $d7
    ret c

    push de
    sub $d7
    ret c

    push de
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    reti


    jp c, $dbd7

    call c, $dedd
    ret c

    add d
    add e
    dec de
    add h
    nop
    nop
    nop
    nop
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
    db $10
    ld [bc], a
    db $d3
    jp nc, $d1d0

    ld [bc], a
    pop bc
    nop
    nop
    call nz, $d402
    push de
    pop bc
    call nz, RST_00
    ld [bc], a
    ld [bc], a
    pop de
    call nc, $d2d3
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
    nop
    ld bc, $0101
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
    ret nc

    pop de
    call nc, Call_000_00d5
    nop
    ld [bc], a
    nop
    ld bc, $0000
    call nz, $00c5
    nop
    nop
    jp $c000


    pop bc
    nop
    nop
    nop
    jp nz, $c400

    push bc
    jp $c1c0


    jp nz, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_001_6c55

    jr z, jr_001_6c57

    ld [hl+], a
    ld hl, $2824
    inc h
    jr z, jr_001_6c62

    inc h
    inc h
    jr z, jr_001_6c62

jr_001_6c3e:
    jr z, jr_001_6c64

    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    call c, RST_00
    inc b
    ld [hl], d
    dec e
    ld a, $75
    sbc c
    ld [bc], a
    ld bc, $0001
    dec sp

jr_001_6c55:
    nop
    inc a

jr_001_6c57:
    nop
    add a
    nop
    dec sp
    ld [hl], c
    db $76
    adc b
    ld b, $00
    ld [hl], b
    ld [hl], e

jr_001_6c62:
    ld a, e
    nop

jr_001_6c64:
    ld [$d915], sp
    dec bc
    nop
    jr z, jr_001_6cdf

    rst $08
    ccf
    inc b
    add hl, hl
    nop
    ld [hl], d
    ld a, [hl-]
    ldh [$08], a
    dec d
    nop
    ld h, d
    ld c, l
    ld h, e
    db $f4
    dec b
    rlca
    rlca
    jr z, jr_001_6cf6

    nop
    ld c, $87
    inc e
    ld a, [hl-]
    ld h, [hl]
    ld c, l
    ld h, a
    and b
    dec b
    rlca
    jr z, jr_001_6c8c

jr_001_6c8c:
    ldh a, [rNR33]
    ld [hl], l
    ld c, b
    ld l, b
    ld c, d
    ld hl, $4869
    nop
    rrca
    rlca
    dec h
    ld e, $3a
    inc de
    ld c, e
    inc b
    nop
    ld c, l
    ld a, [de]
    jr z, jr_001_6cf2

    ld c, e
    ld bc, $5c6f
    nop
    dec c
    ld e, $3a
    ld hl, $044c
    nop
    ld c, h
    jr nz, jr_001_6cec

    ld l, d
    add d
    ld b, a
    jr jr_001_6c3e

    inc c
    ld d, l
    ld d, [hl]
    inc a
    ld a, [bc]
    inc bc
    ld a, [hl-]
    ldh [$82], a
    inc b
    pop hl
    ld a, [bc]
    inc b
    ld l, e
    ld e, b
    inc d
    nop
    ld l, l
    sbc c
    ld a, [hl-]
    ld l, l
    inc b
    ld b, a
    ld e, $07
    dec bc
    ld e, d
    ld d, a
    ld e, b
    inc a
    ld a, [bc]
    dec c
    ld [hl], l
    ld [hl], l
    db $fc
    dec b
    sub [hl]
    ld [hl], a
    sbc b
    ld a, [hl-]

jr_001_6cdf:
    ld [hl], h
    ld c, l
    db $e3
    nop
    ld h, l
    ld h, d
    xor b
    ld [hl], d
    ld e, e
    ld e, c
    ld [de], a
    ld a, [bc]
    rra

jr_001_6cec:
    ld a, [hl-]
    ld l, a
    dec de
    ld [$039f], sp

jr_001_6cf2:
    nop
    ld a, [bc]
    and b
    inc d

jr_001_6cf6:
    ld a, [hl-]
    ld e, a
    ld l, l
    ld h, b
    xor b
    ld [hl], d
    dec bc
    jr c, jr_001_6d0e

    ld a, [hl-]
    ld [hl], e
    add hl, de
    ld e, $30
    ld a, [hl-]
    ld h, c
    ld [hl], $59
    ld c, h
    ld e, c
    ld a, c
    ld c, l
    dec b
    ld a, [hl-]

jr_001_6d0e:
    ld h, l
    push hl
    ld e, $3a
    ld e, e
    sbc [hl]
    ld [hl], $03
    ld a, [hl-]
    ld a, b
    ld [hl], h
    inc e
    ld a, [hl-]
    ld c, d
    ld c, d
    inc a
    ld h, h
    ld c, l
    add hl, de
    ld a, [hl-]
    ld c, b
    rst $30
    dec c
    ld a, [hl-]
    ld h, e
    sub b
    ld e, h
    ld e, l
    ld [hl], e
    ccf
    nop
    jp nz, $3a09

    ld c, b
    ld d, l
    ld c, a
    add b
    dec h
    ld [de], a
    ld d, [hl]
    ld c, e
    ld c, [hl]
    ld c, a
    ld a, [c]
    inc b
    ld c, b
    ld c, b
    and c
    nop
    ld [hl], h
    ret c

    sub b
    ld d, b
    ld d, c
    xor b
    dec h
    sbc $41
    ld b, $3a
    ld a, [bc]
    dec d
    ld c, e
    ld d, a
    rla
    inc e
    ld a, [hl+]
    inc d
    ld e, b
    ld [hl+], a
    ld e, c
    inc h
    jr c, jr_001_6db3

    cp $22
    nop
    or d
    sbc h
    ld d, d
    and e
    dec h
    inc a
    ld e, $5e
    dec b
    ld a, [hl-]
    rra
    dec h
    ld c, h
    ld e, c
    and d
    dec l
    dec bc
    ld de, $2052
    ld a, [bc]
    ld a, [hl-]
    ld d, $58
    ld c, l
    dec l
    ld a, [hl-]
    ld sp, $5200
    ld d, h
    xor $05
    ld a, [hl-]
    rst $08
    inc bc
    ld h, a
    ld [bc], a
    add l
    rst $10
    ld l, l
    adc e
    ld a, [hl-]
    ld h, h
    ld l, a
    inc d
    inc b
    ld e, $3a
    ld c, l
    ld h, l
    inc bc
    ld a, [hl-]
    jp hl


    dec h
    pop af
    dec b
    ld a, [hl-]
    ld [hl], h
    ld c, b
    di
    ld bc, $e17f
    inc c
    ld a, [hl-]
    ld l, c
    ld e, a
    ld h, b
    ld h, d
    ld a, [hl-]
    ld d, [hl]
    or e
    dec a
    ld l, c
    rlc d
    ld a, [hl-]
    ld l, a
    ld l, d
    ld a, [hl+]
    ld [de], a
    ld a, [hl-]
    ld c, d
    ld c, d
    add hl, sp
    ld a, [hl-]

jr_001_6db3:
    ld h, b
    inc h
    ld c, [hl]
    ld a, [hl-]
    add h
    inc e
    ld [hl], d
    xor d
    ld e, h
    ld [hl], a
    ld d, [hl]
    ld e, b
    dec a
    ld a, $5c
    ld c, a
    ld [bc], a
    ld l, l
    adc b
    and b
    ld a, [hl+]
    ld a, [hl-]
    ld h, b
    or [hl]
    ld h, $43
    ld e, b
    inc h
    ld l, [hl]
    dec a
    ld [hl], d
    add h
    inc e
    ld [hl], d
    or d
    sub a
    ld h, d
    ld e, e
    dec a
    dec a
    jr jr_001_6e30

    ld bc, $6d3a
    ld a, [hl+]
    dec b
    ld a, [hl-]
    ld e, b
    ld l, [hl]
    ld h, $29
    ld l, a
    ld h, h
    inc h
    ret nc

    add $59
    ld e, b
    ld c, l
    ld a, [hl-]
    ld h, [hl]
    or [hl]
    add hl, sp
    ld a, d
    rla
    inc bc
    ld a, [hl-]
    ld d, c
    sbc [hl]
    dec b
    ld a, [de]
    ld h, h
    jr c, jr_001_6e26

    ld l, a
    ld l, b
    sub d
    ld h, d
    and c
    adc a
    ld [hl], l
    add hl, hl
    ld d, e
    ld a, [hl]
    ld h, [hl]
    ld bc, $f239
    inc b
    ld a, [hl-]
    ld l, a
    db $10
    xor $1a
    ld d, d
    ld h, [hl]
    ld a, [hl-]
    ld e, e
    adc $cf
    ld bc, $6300
    dec b
    pop de
    ld b, [hl]
    add a
    ld h, e
    ld [de], a
    ld d, [hl]
    ld l, [hl]
    adc $01
    push hl

jr_001_6e26:
    dec hl
    ld a, d
    ld a, [de]
    inc bc
    ld a, [hl-]
    ld e, c
    adc $4d
    rst $28
    ld [bc], a

jr_001_6e30:
    ld a, [hl+]
    ld [$3a1f], sp
    inc d
    ld e, b
    inc bc
    ld e, [hl]
    ld hl, $ee60
    ld a, [de]
    sub b
    ld c, d
    ld h, [hl]
    sub c
    sbc [hl]
    ld h, c
    ld h, $69
    ld c, d
    daa
    pop de
    inc de
    ld d, e
    ld hl, sp-$71
    ld c, b
    rst $08
    dec b
    ld a, [hl-]
    ld hl, $be05
    call nc, $3ece
    ld h, [hl]
    ld h, b
    inc bc
    ld [de], a
    adc b
    ld h, b
    sub c
    nop
    ld e, a
    ld h, b
    ld l, d
    ld a, [hl-]
    rst $28
    di
    jp nc, Jump_001_5503

    ld a, [hl-]
    ld d, l
    sbc b
    ld [hl], c
    sub b
    ld bc, $ce62
    ld a, h
    ld h, [hl]
    inc b
    dec h
    adc b
    ld e, b
    ld [hl+], a
    nop
    ld d, a
    ld e, b
    ld l, e
    ld [hl], l
    di
    push de
    ld c, $35
    ld a, [bc]
    rlca
    dec h
    ld e, d
    ld l, [hl]
    jp z, $8402

    ld h, [hl]
    rlca
    adc $66
    ld h, h
    jp nz, Jump_001_4d03

    ld h, h
    ld d, d
    nop
    ld e, c
    ld a, [hl]
    ld c, l
    ld bc, $434a
    ld d, d
    inc a
    inc hl
    cp [hl]
    sub c
    dec a
    db $eb
    ld [hl], e
    ld [$283a], sp
    ld c, [hl]
    sub c
    ld a, [hl-]
    ld h, [hl]
    di
    rlca
    rst $20
    ld [hl-], a
    inc a
    ld c, e
    adc a
    adc c
    ld [hl], e
    inc c
    ld [hl], l
    ld a, [hl-]
    ld [hl], e
    call Call_001_6f2b
    adc d
    and $68
    call c, Call_001_6221
    ld a, l
    ld [hl], d
    inc b
    ld [$4f6e], a
    adc c
    ld e, c
    ld [hl], e
    inc bc
    dec b
    ld a, [hl-]
    adc [hl]
    ld h, [hl]
    sub h
    ld c, b
    ld a, [hl-]
    ld a, [hl-]
    ld [hl+], a
    or b
    db $fc
    ld [hl], l
    ld e, l
    ld a, [bc]
    inc hl
    sub d
    ld c, l
    ld [hl+], a
    ld a, $62
    ld l, [hl]
    dec b
    cp $aa
    inc b
    nop
    sub h
    sub $fa
    ld b, c
    ld a, [hl+]
    ld l, b
    ld h, [hl]
    xor d
    call Call_000_3372
    ld e, l
    jr nz, jr_001_6ef6

    ld hl, $04de
    ld h, d
    add hl, bc
    nop
    ld d, h
    ld [hl], c

jr_001_6ef6:
    daa
    ld h, d
    rra
    ld d, h
    rrca
    ld l, b
    ld l, c
    inc e
    sbc [hl]
    call c, Call_000_0574
    push hl
    push af
    rrca
    ld [hl], e
    and h
    db $e3
    ld d, d
    ld d, h
    sub h
    ld a, c
    cp c
    add hl, de
    ld a, [hl-]
    ld [hl], c
    db $fd
    inc bc
    ld a, [hl+]
    or [hl]
    ld c, l
    sub h
    ld a, c
    cp c
    add hl, de
    ld a, [hl-]
    ld [hl], h
    rst $38
    dec b
    sbc [hl]
    ld a, [$f601]
    adc b
    ld e, e
    ld a, [c]
    rla
    ld a, [hl-]
    ld [hl], c
    ld l, a
    ld l, a
    rlca
    ld b, c

Call_001_6f2b:
    ld a, [hl-]
    ld a, b
    ld c, e
    rst $20
    ld bc, $753a
    pop de
    inc c
    adc h
    rst $30
    rlca
    ret z

    ld a, l
    ld h, [hl]
    inc b
    sbc $01
    ld c, h
    ld bc, $9c3a
    sbc a
    ld l, e
    ld h, d
    ld h, e
    inc b
    rst $38
    db $db
    ld de, $3a44
    ld a, d
    rst $28
    ld bc, $d23a
    ld l, e
    ld h, a
    pop af
    inc de
    ld a, [hl-]
    ld l, b
    sub b
    dec e
    inc hl
    adc b
    sbc h
    adc b
    ld h, l
    ldh a, [rNR44]
    ld a, [hl-]
    ld c, b
    ld d, l
    ld h, b
    sbc h
    rst $00
    ld d, a
    db $ed
    jp nz, $ef07

    ld [hl], h
    sub e
    and e
    rla
    ld a, [hl-]
    db $f4
    cp c
    ld sp, $00a3
    ld e, c
    db $e3
    inc bc
    rst $28
    adc c
    ld [hl], l
    ld l, c
    sbc [hl]
    sub e
    ld l, c
    dec bc
    ld a, [hl-]
    adc [hl]
    di
    ld h, h
    scf
    rst $38
    inc b
    ld c, d
    db $e3
    ld bc, $7c3a
    ld a, c
    ret


    ld [$7b00], sp
    and d
    ld a, [hl-]
    jp hl


    pop af
    dec d
    dec a
    and b
    ld [$f100], sp
    ld d, $7f
    rst $10
    ld l, $eb
    cp h
    ld [bc], a
    rra
    inc bc
    ld [hl], $4a
    db $f4
    ld [hl+], a
    ld a, [hl-]
    ld e, l
    jp $e168


    ld [bc], a
    ld l, $22
    ld c, e
    inc hl
    jp hl


    ld hl, $443a
    ld [hl], h
    ld c, l
    rl c
    ld l, $21
    ld a, $64
    inc e
    ld a, [hl-]
    add sp, -$7a
    adc b
    scf
    sub l
    ld d, b
    ld l, $5c
    ld l, $07
    ld l, e
    ld [hl], e
    ld l, l
    ld c, d
    ld c, d
    sub d
    inc e
    ld a, [hl-]
    ld [hl], h
    db $ec
    ld a, c
    cp [hl]
    cp b
    ld d, b
    sbc l
    ld h, a
    jp z, $fcff

    ld bc, $3a7d
    ld c, $af
    add hl, sp
    ld [hl], a
    inc b
    add h
    or l
    ld h, l
    push de
    ld a, [hl-]
    ld a, c
    ld l, $57
    sub $ef
    ld [bc], a
    ld h, h
    or $02
    xor h
    ld [hl], $63
    dec b
    ld a, [hl]
    ld h, [hl]
    ld [bc], a
    ld e, c
    ld a, l
    ld h, a
    ld [bc], a
    db $f4
    ld b, b
    jp nz, $d6ab

    db $f4
    dec bc
    ld c, d
    jp hl


    ld hl, $0552
    scf
    ld a, [hl-]
    ld e, $28
    ld e, h
    inc bc
    ld a, [hl-]
    daa
    ld c, l
    ld l, c
    ld e, a
    sub $0f
    ld [hl+], a
    ld a, [hl-]
    ld c, b
    ld d, $58
    ld h, [hl]
    cp $b0
    and l
    db $f4
    ld [bc], a
    ld a, [hl-]
    cp [hl]
    add a
    ld c, l
    or $0d
    ld a, [hl-]
    inc [hl]
    ld d, l
    ld c, b
    ld [de], a
    ldh [$ec], a
    call nc, Call_000_288f
    ld h, l
    ld [bc], a
    ld c, [hl]
    ld a, [hl-]
    rst $08
    ld c, [hl]
    inc c
    daa
    ld a, [hl-]
    inc de
    jr z, jr_001_7059

    ld c, h
    db $ed
    call nc, Call_001_4059
    dec e
    ld a, d
    ld a, [c]
    ld [bc], a
    ld a, [hl-]
    ld e, b
    pop de
    cp $f5
    ld [bc], a
    or l

jr_001_704d:
    ei
    inc b
    ld l, d
    ld [hl], d
    ld [c], a
    ld d, [hl]
    ld l, l
    ld c, a
    ld h, [hl]
    ld c, e
    ld [hl], d
    dec d

jr_001_7059:
    ld a, [hl-]
    ld c, d
    ld h, h
    rla
    ldh [$5d], a
    ld [hl], l
    db $76
    pop af
    inc b
    inc [hl]
    adc [hl]
    ld c, b
    rra
    ld hl, $01fb
    ld c, a
    ld [hl], d
    ld [hl], h
    ld d, c
    ld bc, $eab0
    ld c, l
    ld l, c
    ld b, h
    ld l, c
    cp d
    pop hl
    ld l, [hl]
    add l
    rst $00
    ld c, e
    xor b
    or e
    ld d, l
    ld c, l
    inc [hl]
    rst $28
    nop
    sbc l
    cpl
    ret nz

    ld c, e
    ld bc, $02e8
    ld [hl], h
    ld d, d
    ld d, d
    ld d, l
    sub b
    ld d, c
    dec d
    ld e, l
    ld e, b
    ld d, b
    ld b, l
    call nz, $c709
    ld c, h
    ld d, c
    or e
    rst $08
    nop
    ld [bc], a
    ld [c], a
    ld c, b
    db $d3
    jp z, $01f0

    ld c, l
    ld l, a
    ld c, d
    ld e, h
    and h
    rla
    ld d, a
    ld d, c
    and a
    xor a
    ei
    ld [bc], a
    adc h
    jr z, jr_001_704d

    cp $02
    ccf
    ld c, b
    ld a, [bc]
    xor c
    ld [hl], $50
    rrca
    ld c, h
    ld e, c
    ld d, d
    add hl, bc
    ld d, h
    inc e
    ld a, b
    sbc e
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    dec c
    or h
    nop
    nop
    inc b
    ld e, $42
    adc c
    dec l
    jr nc, jr_001_70d9

    ld bc, $0001
    ld h, h

jr_001_70d9:
    nop
    inc hl
    nop
    adc a
    nop
    ld h, h
    ld [hl], e
    ld d, [hl]
    ld [hl-], a
    nop
    ld [hl], h
    ld h, d
    ld [hl], d
    add a
    ld [$7671], sp
    sub [hl]
    inc de
    nop
    ld [hl], b
    ld h, $2e
    ld [hl], c
    ld c, $f1
    rlca
    dec l
    ld [hl], b
    ld [hl], c
    rst $20
    dec b
    daa
    ld [hl], c
    xor h
    ld b, $3a
    ld h, e
    add hl, sp
    ld [hl], c
    ld [hl], a
    ret nc

    push hl
    ld de, $7500
    adc d
    ld a, $74
    rrca
    ld c, $66
    ld c, l
    ld h, a
    ld b, $1e
    rra
    ld [hl], d
    ld [hl], h
    ld bc, $8327
    ld d, [hl]
    ld [hl], h
    ret


    ld b, $3a
    ld [hl], a
    sbc [hl]
    ld h, e
    ld [hl], h
    inc d
    ld h, d
    and l
    ld b, [hl]
    ld e, $9f
    ld [hl], a
    ld c, $63
    dec a
    ld [hl], l
    ld [hl], a
    inc c
    ld [hl], c
    ldh [rTIMA], a
    dec a
    db $76
    db $76
    db $76
    ld [hl], a
    di
    jr jr_001_719b

    ld [hl], l
    sbc $03
    inc h
    add hl, bc
    ld h, e
    push af
    ld c, $d5
    adc l
    nop
    ld c, b
    nop
    cp l
    ld h, e
    rlca
    ld de, $01ef
    add hl, bc

jr_001_714c:
    db $10
    ld a, e
    ld b, h
    rla
    ld h, e

jr_001_7151:
    pop bc
    dec b
    push de
    ld c, b
    ld d, l
    ld d, [hl]
    ld c, e
    adc [hl]
    nop
    ld l, [hl]
    ld [hl], e
    inc l
    ld l, b
    ld c, b
    ld e, d
    ld h, b
    dec d
    db $10
    ld c, [hl]
    ld c, a
    adc [hl]

jr_001_7166:
    ld c, b
    ld b, c
    adc a
    dec de
    jr jr_001_714c

    ld c, $43
    ld a, b
    ld a, e
    ld [hl], e
    ld a, h
    ld a, b
    ld a, d
    add hl, bc
    dec d
    ld c, b
    ld c, b
    rst $30
    dec bc
    ld c, $06
    ld b, h
    ld d, a
    ld e, b
    ld c, h
    nop
    jr c, jr_001_71f6

    ld [hl], e
    ld l, b
    ld c, e
    add h
    ld e, d
    jr jr_001_719f

    rra
    db $10
    ld d, b
    ld d, c
    add a
    ld c, $1f
    dec de
    ld e, $12
    and a
    sbc d
    sub e
    ld c, $95
    jr nz, @+$14

jr_001_719b:
    sub [hl]
    sbc e
    jr jr_001_7151

jr_001_719f:
    dec c
    ld l, h
    ld c, $07
    inc de
    ld [c], a
    ld b, h
    ld e, c
    ld d, c
    ld l, e
    call nz, Call_001_4c68
    ld [hl], $5a
    ld h, l
    ld a, l
    ld [hl-], a
    ld h, h
    ld c, l
    nop
    ld d, d
    inc c
    ld c, $59
    rlca
    ld h, l
    inc a
    ld c, b
    ld c, b
    dec d
    ld h, e
    ld d, l
    ld a, e
    ld c, a
    ld [bc], a
    inc d
    sbc [hl]
    sbc e
    inc b
    sub d
    sub b
    ld c, $21
    ld e, c
    ld sp, hl
    ld [$402b], sp
    ld d, d
    ret nz

    ld e, h
    ld e, l
    jr z, jr_001_7166

    ld c, d
    nop
    sub c
    db $10
    ld c, d
    ld e, a
    ld h, b
    call c, Call_001_4879
    ld [$4868], sp
    ld h, c
    ld h, e
    ld e, d
    ld d, a
    xor $03
    ld d, l
    ld e, $9b
    ld h, l
    nop
    ld [$7c0e], sp
    ld [hl], l
    add hl, bc
    ld a, [c]
    ld h, b
    ld h, l

jr_001_71f6:
    reti


    jr z, jr_001_7244

    dec a
    dec l
    inc hl
    ld c, $1a
    adc $04
    ld h, d
    inc de
    call c, Call_001_63c0
    db $ec
    xor a
    ld e, e
    ld a, $59
    ld h, l
    inc b
    ld a, $07
    dec b
    inc a
    ld [$0e04], sp
    ld h, d
    rst $08
    dec bc
    ld [hl], d
    rlca
    ld c, e
    call Call_000_3946
    dec l
    or c
    ld c, $20
    ld [c], a
    inc b
    ld h, e
    ld hl, $a74c
    ld c, a
    sbc [hl]
    add c
    dec b
    ld d, l
    di
    inc de
    ld h, e
    ld h, [hl]
    sbc $09
    ld h, e
    dec bc
    nop
    ld a, [hl]
    ld h, l
    inc b
    cpl
    sub l
    ld d, c
    db $dd
    ld [hl], h
    cp h
    xor a
    inc bc
    ld d, l
    ld c, b
    ld a, e
    ld l, b
    dec b

jr_001_7244:
    ld h, e
    sbc $05
    ld c, $1d
    ld h, e
    ld a, [hl]
    ld l, c
    inc b
    cpl
    sub c
    ld l, $74
    rst $08
    ld h, c
    inc bc
    dec sp
    ld b, [hl]
    dec d
    ld a, e
    rst $00
    inc bc
    ld h, e
    inc a
    ld c, $5e
    dec bc
    ld h, e
    ld [hl], c
    ld a, [hl]
    db $76
    dec bc
    sbc [hl]
    db $f4
    ld bc, $f100
    cpl
    adc [hl]
    ld c, b
    db $d3
    scf
    inc [hl]
    ld h, e
    ld b, c
    add hl, de
    sub c
    ld l, c
    ldh a, [rSC]
    ld b, [hl]
    ld d, b
    rra
    ld d, c
    ld e, [hl]
    ld l, c
    inc bc
    inc c
    ld d, l
    ld d, h
    ld [hl], e
    ld l, c
    pop af
    ld [$7463], sp
    nop
    rst $28
    ld b, $a7
    ld b, $2a
    ld [hl], e
    ld [hl], c
    xor d
    ld b, a
    dec d
    add a
    add hl, bc
    ld [hl], d
    cp l
    ld bc, $03da
    db $dd
    ret nc

    ld b, [hl]
    ld d, d
    rst $08

jr_001_729d:
    ld d, [hl]
    ld c, a
    inc bc
    adc h
    ld d, l
    ld [hl], e
    dec e
    rst $30
    jr jr_001_730a

    and a
    dec b
    rrca
    ld [hl], l
    sub h
    rra
    ld b, e
    add hl, bc
    ld [hl], d
    push hl
    inc b
    ld d, e
    jr nz, jr_001_729d

    ld [bc], a
    ld b, [hl]
    inc a
    ld d, [hl]
    jr jr_001_72be

    ld c, $52
    ld a, [hl]

jr_001_72be:
    ld e, $01
    sbc e
    rst $18
    pop af
    rlca
    ld a, a
    inc de
    inc b
    cp h
    ld h, b
    rst $08
    rrca
    ld [hl], h
    ld bc, $9d2d
    ld c, l
    and [hl]
    cp [hl]
    rst $20
    ld a, e
    ld [hl], a
    inc b
    ld h, e
    call nc, Call_001_5602
    ld c, $5a
    ld h, l
    ld a, [hl+]
    db $eb
    cp a
    xor a
    db $10
    ld e, a
    add hl, hl
    rlca
    ld b, d

Jump_001_72e6:
    ld h, e
    add hl, sp
    rra
    sub d
    dec bc
    reti


    dec bc
    ld a, $63
    ld bc, $8568
    ld c, $69
    or h
    ld d, l
    db $eb
    ld a, [hl]
    xor a
    inc bc
    db $fd
    ld [de], a
    cpl
    sbc e
    ld [hl], b
    ld [de], a

Jump_001_7300:
    ld b, h
    ld h, e
    cp l
    ld sp, hl
    ld l, [hl]
    rlca
    rst $20
    db $eb
    inc b
    ld h, e

jr_001_730a:
    ld b, d
    ld c, d
    sub a
    xor e
    dec h
    inc l
    xor h
    ld l, e
    sub [hl]
    ld e, e
    db $fd
    dec b
    cp [hl]
    rst $28
    inc bc
    ld d, h
    rlca
    ld de, $680e
    ld h, c
    ccf
    ld sp, hl
    dec c
    reti


    pop de
    adc a
    ld h, e
    ld l, c

jr_001_7327:
    ld c, b
    ld [bc], a
    reti


    ld e, $2b
    jr nz, jr_001_7327

    inc bc
    rst $18
    ld [hl], e
    ei
    dec b
    cp [hl]
    jp z, Jump_001_6304

    ld c, b
    db $ec
    ld e, [hl]
    add b
    ld c, $48
    ld d, l
    ld h, b
    ld e, e
    ld e, c
    ld a, [$3d02]
    dec b
    ld [bc], a
    nop
    pop de
    pop de
    ld a, [de]
    sub $55
    ldh [$7e], a
    ld a, [de]
    ld bc, $cf1e
    dec hl
    ld l, l
    inc b
    ld d, c
    ld h, e
    nop
    ld l, l
    ld l, l
    ld l, $e9
    ld [bc], a
    ld h, e
    ld [$39ae], a
    ld c, $13
    sbc b
    db $f4
    inc b
    ld a, l
    ld l, c
    inc bc
    ld a, [hl]
    cp a
    inc b
    xor e
    ldh [rNR41], a
    ld l, a
    ld l, [hl]

jr_001_7371:
    ld bc, $2579
    inc b
    ld h, e
    ld l, a
    reti


    ld l, $8d
    ld [$5100], sp
    ld h, e
    ld [$3d8d], sp
    xor [hl]
    ld b, e
    ld c, $21
    ld c, h

jr_001_7386:
    rst $28
    inc bc
    and a
    scf
    rra
    and [hl]
    ld [bc], a
    inc h
    nop
    push hl
    xor c
    sbc [hl]
    ld b, d
    ld bc, $7c25
    ld [hl], d
    ld b, $90
    call z, $8720
    nop
    add l
    ld h, e
    dec bc
    ld [$6b87], sp
    dec a
    ld d, d
    inc bc
    dec bc
    db $eb
    ld bc, $0f10
    nop
    ld l, e
    ld [hl], e
    ld a, [bc]
    dec a
    add hl, de
    ld [hl], d
    add hl, bc
    dec bc
    ld sp, hl
    ld [bc], a
    ld l, $88
    rlca
    nop
    ld [hl], d
    ld c, d
    ld [hl], e
    adc b
    ld l, c
    add hl, bc
    ld c, h
    dec bc
    rra
    ld c, $75
    inc b
    ld c, h
    dec a
    sbc $1f
    inc b
    inc h
    or d
    ld h, e
    adc d
    inc de
    ld [hl], l
    xor e
    rra
    ld [hl], a
    reti


    dec bc
    rra
    jr nz, jr_001_7371

    ret nz

    inc de
    sbc c
    ld [hl], l
    ld [hl], b
    ld [hl], h
    ld d, b
    sbc l
    dec e
    sbc c
    ld [hl], l
    sub l
    jr z, jr_001_7386

    ld [hl], a
    inc b
    ld c, $89
    adc d
    sbc h
    ld [hl], l
    xor c
    xor h
    db $db
    ld c, $0b

jr_001_73f3:
    ret


    ld [bc], a
    ld h, d
    sbc c
    sbc h
    ld b, e
    ld l, l
    ld a, [hl+]
    ld c, l
    ld l, e
    ld b, d
    dec h
    dec l
    dec a
    ld [hl], $01
    rra

jr_001_7404:
    rst $20
    dec b
    ld h, e
    adc b
    inc h
    dec e
    jr z, jr_001_73f3

    add hl, hl
    cp l
    ld [bc], a
    dec hl
    ld bc, $ef38
    inc b
    ld h, b
    inc bc
    daa
    ld b, e
    ld [hl], h
    rlca
    dec l
    sbc e
    adc b
    sbc [hl]
    ld bc, $882d
    dec c
    ld h, e
    ld a, e
    sbc e
    inc b
    dec e
    sbc $06
    dec hl
    dec bc
    inc c
    and e
    nop
    sbc d
    jp Jump_001_6306


    ld a, h
    ld a, d
    sbc b
    sub $0e
    rra
    ld a, e
    nop
    add hl, bc
    jr nz, jr_001_7404

    ld bc, $8b00
    adc h
    sbc l
    rrca
    rrca
    sbc c
    ld c, a
    ld [$01c3], sp
    ld b, h
    ld [hl], d
    rst $30
    ld bc, $ac0b
    ld [bc], a
    and $1f
    or $03
    ret z

    inc a
    rst $30
    ld bc, $b13e
    inc bc
    ld d, a
    add hl, hl
    ld a, d
    sbc e
    ld [c], a
    inc b
    ld h, [hl]
    sbc d
    ld a, b
    ld c, h
    adc l
    inc de
    sbc d
    or l
    db $dd
    ld [hl+], a
    ld [hl], a
    dec d
    ld b, d
    ld h, e
    ld c, e
    sbc b
    rst $08
    dec b
    dec a
    sbc c
    add hl, bc
    ld sp, hl
    ld bc, $797c
    adc $00
    ld b, e
    ld a, $69
    adc e
    ld b, a
    sbc e
    scf
    ld l, $49
    rrca
    add hl, de
    ld a, d
    sbc e
    inc bc
    ld d, [hl]
    sbc h
    ld d, [hl]
    jp c, $1507

    ld b, d
    and [hl]
    ld [hl], h
    adc d
    reti


    cp a
    sbc b
    rst $20
    ld bc, $9b85
    rst $28
    inc c
    ld a, [hl+]
    ld bc, $cc10
    sbc d
    ld a, b
    ld l, e
    add hl, bc
    ld a, e
    ld a, h
    ld a, d
    adc h
    inc h
    ld l, h
    ld c, c
    sub [hl]
    ld c, c
    add a
    sbc a
    db $10
    jr c, jr_001_752f

    ret c

    di
    ld [bc], a
    ld b, b
    ld [hl], h
    jp nc, $e201

    ld h, h
    inc hl
    inc sp
    ld a, e
    sbc a
    ld hl, $bc09
    ld a, [hl+]
    ld bc, $7bcc
    rst $30
    inc bc
    sub $ab
    ld bc, $420d
    ld c, c
    sbc a
    adc a
    jr c, jr_001_754f

    inc b
    ld h, l

jr_001_74d5:
    add hl, de
    ld a, [de]
    adc h
    jr c, jr_001_74d5

    ld bc, $f79b

jr_001_74dd:
    ld bc, $bd94
    ld b, $21
    rra
    nop
    inc hl
    inc [hl]
    ld a, h
    db $d3
    inc c
    jr c, @+$3f

    adc l
    ld a, c
    ld b, $94
    rst $28
    inc b
    nop
    nop
    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld c, $ea
    nop
    nop
    ld [bc], a
    db $fd
    ld l, e
    cp l
    ld b, e
    ld b, d
    inc b
    ld bc, $0001
    cp $00
    rrca
    nop
    adc a
    nop
    cp $73
    dec b
    inc sp
    nop
    ld [hl], h
    ld de, $de72
    ld b, $11
    cp a
    nop
    rst $30
    dec e
    ret c

    adc c
    ld a, [de]
    inc h
    ld [hl], c
    db $76
    sbc [hl]
    nop
    ld [hl], b
    inc h
    ld e, $f7
    ld bc, $9e16
    dec bc
    jr c, jr_001_75a0

jr_001_752f:
    inc b
    dec d
    ld a, c
    ld [hl], c
    dec c
    inc hl
    ld [hl], c
    rst $20
    ld [bc], a
    ld de, $bd71
    db $10
    ld b, b
    inc c
    ld e, [hl]
    rst $28
    ld [bc], a
    inc l
    ld h, $3d
    db $fd
    ld [hl], c
    ld a, [bc]
    ld c, l
    inc hl
    ld [de], a
    ld [hl], a
    and d

jr_001_754c:
    jr nc, jr_001_74dd

    nop

jr_001_754f:
    ld [hl], d
    dec b
    dec a
    rla
    ld [hl], b
    ld [bc], a
    ld b, b
    ld [hl+], a
    nop
    ld [hl], l
    rst $00
    dec a
    ld [hl], c
    cp l
    dec b
    dec [hl]
    inc bc
    jr c, jr_001_75c5

    ld h, d
    ld [hl], a
    rst $08
    ld bc, $7115
    ld bc, $283c
    ld [hl], d
    ld b, $83
    ld [hl], a
    add h
    ld de, $0e04
    ld [hl], b
    ld [hl], c
    ld [hl], a
    ld [de], a
    ld e, d
    ld [hl], b
    rrca
    rst $10
    ld [hl], c
    db $76
    db $76
    ld [$5c72], sp
    jr z, jr_001_754c

    adc a
    ld e, $4d
    ld [hl], l
    ld bc, $4d23
    ld [hl], l
    and h
    ld sp, hl
    ld [de], a
    cp a
    ld [hl], h
    ld h, a
    ld h, [hl]
    sub [hl]
    ld [bc], a
    ld d, c
    ld [hl], l
    ld a, d
    ld c, e
    ld b, $64
    ret


    xor [hl]
    xor l
    ld a, [hl+]
    cp l
    inc sp

jr_001_75a0:
    rlca
    inc h
    add a
    dec a
    ld [hl], b
    ld [hl], h
    nop
    xor c
    ld [$7912], sp
    rst $20
    ld [$752a], sp
    sbc [hl]
    dec b
    ld [hl], h
    ld [hl], d
    add hl, bc
    ld c, e
    ld d, [hl]
    ld [hl], d
    ld e, b
    ld h, $72
    ld [hl], h
    inc l
    ld e, c
    ld [hl], a
    ld de, $09e9
    nop
    rrca
    ld [hl+], a
    ld [hl], l

jr_001_75c5:
    db $76
    add hl, bc
    ld h, d
    adc d

Call_001_75c9:
    nop
    ld h, [hl]
    ld c, l
    rrca
    nop
    ld h, a
    add hl, bc
    sbc $bf
    dec b
    db $fd
    or $0a
    ld d, h
    jp $737b


    inc c
    call nz, $03cf
    reti


    ld [hl], d
    inc b
    sbc $b9
    ld a, [bc]
    adc h
    di
    ld a, [bc]
    ld d, c
    ld [hl], a
    sbc $0d
    ld d, $03
    ld e, h
    db $fc
    add hl, bc
    ld l, h
    ld [hl], h
    ldh a, [rTAC]
    ld [hl], $72
    ld [hl], c
    ld [hl], a
    ld a, [c]
    ld hl, $4859
    sbc [hl]
    nop
    dec de
    db $fd
    ld a, e
    ld [hl], l
    dec c
    jp Jump_000_0df7


    ld h, a
    cp a
    inc bc
    reti


    dec c
    ld a, e
    ld l, e
    dec de
    and $de
    ld hl, $0a00
    sub [hl]
    db $fd
    rrca
    ld d, a
    ld [c], a
    dec c
    nop
    ld h, $4b
    ld a, [bc]
    nop
    ld l, [hl]
    ld e, $e3
    ld a, h
    ld a, d
    inc de
    db $fd
    rst $30
    rra
    ld a, e
    and e
    inc l
    reti


    ld a, [hl]
    ld a, a
    ld a, $0b
    or $26
    db $fd
    ld [hl], l
    ld hl, $4c21
    nop
    rst $20
    rlca
    db $e4
    ld [hl], d
    db $dd
    ld [$7472], sp
    xor $55
    cp [hl]
    rst $08
    add c

jr_001_7644:
    daa
    ld d, $3c
    ld e, h
    ld c, b
    ld c, l
    db $fd
    ld h, $9e
    push af
    di
    dec bc
    db $fd
    ld [hl], h
    pop hl
    inc b
    dec b
    ld [hl], h
    db $eb
    inc [hl]
    cp [hl]
    inc e
    nop
    adc [hl]
    push bc
    ld a, e
    adc a
    inc c
    rst $00
    or e
    add c
    jr nz, jr_001_7644

    ld a, [bc]
    ld a, [c]
    inc b
    rrca
    sbc l
    daa
    ld de, $1d7c
    ld [de], a
    ld a, [hl]
    ld a, c
    rlca
    inc [hl]
    ld a, [c]
    ld [$4832], sp
    inc sp
    ld sp, hl
    ld [hl], e
    sub $1e
    db $fd
    rst $08
    add b
    ld c, $0d
    ld b, e
    add [hl]
    cp [hl]
    rst $08
    dec c
    sub c
    ld c, b
    inc b
    push de
    cp b
    cpl
    ld h, h
    daa
    add hl, bc
    jp $8f11


    ld c, b
    ld l, e
    ccf
    ld h, b
    ld l, l
    add hl, bc
    ccf
    ld c, a
    daa
    inc bc
    ld a, [hl]
    dec de
    ld [$931c], sp
    dec e
    pop de
    ld [bc], a
    ld e, c
    cp a
    ld d, a
    add hl, bc
    ld a, [hl]
    ld e, b
    rlca
    sub d
    ccf
    ld h, $27
    ld b, $1f
    dec b
    ld h, $4b
    ld b, $be
    ld sp, hl
    ld [bc], a
    ld a, h
    ld hl, sp+$09
    db $fd
    ld l, a
    ld [hl], c
    ld l, d
    nop
    daa
    rst $28
    inc b
    or c
    dec b
    ld [hl], c
    and h
    cp [hl]
    ld l, a
    rst $28
    inc bc
    ld l, e
    ld [bc], a
    ld a, d
    adc h
    dec b
    ldh a, [$a7]
    ld h, h
    ld a, [c]
    rlca
    dec h
    ld h, $75
    ld [hl], l
    ld a, h
    ld [hl], h
    rlca
    dec a
    jr @+$23

    ld [bc], a
    ldh a, [$c1]
    ld e, h
    ld [hl], e
    ld l, l
    adc [hl]
    dec l
    ld b, a
    inc [hl]
    ld hl, $1d9f
    ld [bc], a
    and l
    ld hl, $bc57

jr_001_76f1:
    daa
    rst $28
    ld b, $53
    dec b
    adc [hl]
    ld d, c
    rst $08
    add sp, $20
    ld b, $c3
    dec b
    ld hl, $4c4c
    db $eb
    ld [$37dd], sp
    cp $5e
    xor c
    ld l, c
    db $fd
    ld [hl], a
    inc c
    ld b, c
    nop
    cp b
    ld e, $f1
    ld a, [bc]
    adc d
    rst $00
    add [hl]
    adc [hl]
    inc hl
    ld l, b
    ld a, e
    inc hl
    inc bc
    ld l, e
    jp nc, $8c02

    ld c, a
    ldh a, [$2b]
    dec c
    ld l, e
    ld a, [hl]
    ld b, a
    ld b, $91
    ld c, [hl]
    ld hl, $75af
    ld l, a
    rlca
    inc l
    cp a

jr_001_7730:
    ld l, e
    ldh a, [$92]
    ld e, h
    ld c, a
    ld e, $01
    ld a, [hl+]
    ld hl, $1e6b
    dec hl
    ld hl, $5901
    sub l
    ld e, a
    cp h
    jr nz, jr_001_774d

    sbc [hl]
    ld d, e
    ld l, l
    inc bc
    ld de, $6825
    ld l, l
    adc c

jr_001_774d:
    ld b, b
    ld hl, $1f20
    rlca
    ld l, e
    dec bc
    ld c, a
    call nc, $01df
    or $d0
    rlca
    db $fd
    nop
    ld a, b
    ld h, l
    inc bc
    ld l, e
    jr nz, jr_001_76f1

    sbc c
    ret nc

    ld l, a
    db $fd
    ld [bc], a
    ld [hl-], a
    db $f4
    ld bc, $d6af
    adc h
    ld e, c
    ld h, d
    cp d
    dec h
    dec h
    or a
    dec c
    jp hl


    inc bc
    ld de, $1626
    ld [hl-], a
    sub c
    nop
    ld [hl], d
    rst $20
    ld [bc], a
    ldh a, [$6e]
    and [hl]
    ld bc, $771e
    adc h
    db $10
    ld [hl], h
    and a
    ld e, h
    cp [hl]
    ld b, $59
    ld [bc], a
    dec l
    jr nz, jr_001_7730

    ld d, e
    ld [hl], h
    inc bc
    ld de, $2cb0
    ld l, [hl]
    ld l, a
    rst $30
    inc b
    inc sp
    and h
    add hl, bc
    cp $30
    ret z

    ld [$3d79], sp
    nop
    ld a, e
    inc bc
    ld a, [de]
    rst $28
    inc b
    ld l, e
    ld [bc], a
    ld a, a
    ld b, d
    ld [bc], a
    ld a, l
    ld [hl-], a
    ld b, $af
    ld b, e
    ld c, $6e
    ld [hl], e
    sbc $03
    cp d
    ld [$f347], sp
    ld a, [bc]
    add e
    ld l, a
    rst $08
    inc b
    rla
    ld c, h
    rlca
    ld a, c
    ld [hl], $03
    ld hl, $676e
    ld e, h
    sbc [hl]
    dec b
    ld [hl+], a
    ld l, a
    add hl, bc
    ld d, l
    push af
    ld b, $11
    sbc [hl]
    dec hl
    dec bc
    ld d, [hl]
    ld a, [c]
    ld bc, $6900
    ld c, a
    ld l, $0c
    ld a, e
    ld a, [de]
    inc b
    ld l, e
    sbc $0c
    ld b, d
    rlca

jr_001_77e9:
    xor a
    push af
    ld de, $9e62
    daa
    ld a, [bc]
    jr nz, jr_001_77e9

    db $10
    rla
    cp l
    rlca
    ld hl, $5c0f
    rst $28
    ld a, [bc]
    dec a
    ld a, [de]
    ld a, e
    ld c, a
    ld c, $43
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    ld c, $ea
    nop
    nop
    inc bc
    call z, $a142
    adc e
    db $eb
    inc b
    ld bc, $0001
    cp $00
    rrca
    nop
    adc a
    nop
    cp $73
    dec c
    stop

jr_001_7822:
    ld [hl], c
    halt
    ld a, c
    ld [hl], b
    dec c
    rla
    ld [hl], b
    daa
    inc e
    sub h
    ld a, [bc]
    nop
    ld [hl], b
    jr nz, jr_001_788b

    ld [hl], b
    dec a
    rst $28
    ld b, $18
    ld a, [bc]
    ld a, c
    dec d
    dec b
    ld h, c
    ld [hl], c
    rst $20
    dec b
    ld de, $bd71
    ld a, [bc]
    inc h
    db $10
    ld [hl], h
    ld [hl-], a
    ld [hl+], a
    ld [hl], c
    ld h, a
    jr z, jr_001_78bd

    xor c
    rrca
    ld h, b
    cp b
    ld h, e
    dec e

jr_001_7852:
    ld [hl], b
    call c, $f414
    nop
    db $76
    ld [hl], a
    jr jr_001_7822

    nop
    ld [hl], d
    ld [hl], c
    cp h
    inc bc
    ld e, d
    ld bc, $7517
    sub e
    inc e
    adc $0a
    nop
    ld [hl], l
    jr c, jr_001_78c2

    ld h, a
    dec b
    db $76
    ld a, e
    ld [hl], a
    add hl, bc
    jr jr_001_7852

    ld [bc], a
    ld d, e
    rlca
    add hl, de
    or c
    reti


    ld [hl], a
    rst $28
    dec b
    dec hl
    ld b, $21
    ld a, [hl+]
    ld [hl], d
    ld [hl+], a
    jp hl


    db $10
    ld [hl], h
    xor b
    dec [hl]
    ld e, $66
    ld [hl], c

jr_001_788b:
    ld [hl], e
    ld a, a
    nop
    add sp, $09
    dec sp
    jr z, jr_001_7893

jr_001_7893:
    ld [hl], h
    ld e, d
    ld [hl], a
    rst $30
    ld b, $14
    sbc [hl]
    rlca
    nop
    ld [hl], h
    inc c
    ld d, e
    rst $08
    inc l
    ld [hl], h
    dec d
    ld a, c
    ld a, c
    inc bc
    nop
    ld h, [hl]
    rst $28
    add hl, bc
    ld a, l
    jr jr_001_78d0

    nop
    ld [hl], l
    inc a
    adc c
    ld [hl], h
    add hl, de
    inc hl
    db $76
    ld a, c
    ld [hl], a
    rra
    ld c, h
    ld [hl], a
    ei
    dec c
    ld e, [hl]

jr_001_78bd:
    rst $08
    rlca
    reti


    ld [hl], l
    ld a, [bc]

jr_001_78c2:
    rst $08
    cp $71
    ld de, $633c
    ld [hl], l
    rla
    ld a, d
    ld c, b
    ld a, c
    ld c, b

jr_001_78ce:
    ld [bc], a
    ld d, [hl]

jr_001_78d0:
    ld [hl], a
    rst $28
    daa
    db $fd
    cpl
    ld l, b
    inc [hl]
    ld [hl], d
    ld a, c
    nop
    inc e
    add hl, hl
    ld [hl], d
    ei
    dec c
    rst $10
    di
    add hl, bc
    cp $74
    call z, $b72a
    adc [hl]
    add b
    adc a
    inc bc
    ld c, b
    ld d, l
    ld d, [hl]
    ld c, e
    ld c, e
    jr jr_001_78ce

    inc h
    ld [hl-], a
    inc sp
    rst $30
    ld a, [hl+]
    ld l, d
    and c
    dec b
    ld sp, hl
    ld [hl], d
    ld bc, $4e00
    ld c, a
    ld c, b
    rst $20
    ld e, $fd
    ld [hl], c
    rst $28
    add hl, bc
    ld h, b
    inc de
    dec a
    db $fd
    adc [hl]
    dec e
    and c
    jr nc, jr_001_7893

    ld d, a
    ld e, b
    ld c, h
    inc a
    ld c, h
    ld e, $20
    cp c
    dec d
    di
    ld bc, $48b6
    db $f4
    cpl
    ld [bc], a
    ld hl, $7275
    inc bc
    nop
    ld d, b
    ld d, c
    sbc a
    ld c, c
    rrca
    cp h
    ld [hl+], a
    dec b
    and $74
    ld hl, sp+$09
    add hl, sp
    rst $30
    rlca
    db $fd
    push de
    inc bc
    ld d, [hl]
    dec h
    ld b, a
    and c
    ld a, [de]
    rst $28
    dec c
    or a
    ld [bc], a
    ret


    rla
    ld e, d
    adc h
    add e
    ld e, c
    ld c, l
    nop
    ld h, l
    db $fd
    rrca
    push hl
    ld sp, hl
    add hl, bc
    ld b, h
    rra
    rst $28
    ld bc, $08b6
    adc a
    jr nc, jr_001_7975

    jp z, $480d

    ld b, d
    ld [hl], l
    ld [hl], d
    adc [hl]
    nop
    ld d, d
    dec a
    ld c, c
    ld d, e
    ld b, $ed
    inc hl
    nop
    inc de
    pop de
    ld bc, $57be
    inc [hl]
    ld [hl], b
    sbc c

jr_001_796f:
    rlca
    db $fd
    ld h, $7c
    ld l, [hl]
    rst $30

jr_001_7975:
    ld b, $e9
    or e
    db $fc
    and c
    ld d, [hl]
    ld hl, $a147
    jr nz, jr_001_796f

    ld c, $ea
    ld bc, $b63d
    rra
    ld bc, $9f83
    nop
    ld h, a
    db $10
    rlca
    jr jr_001_79da

    daa
    sbc [hl]
    ld b, $16
    ld h, h
    ld bc, $f8b6
    ld [$3e30], sp
    ld h, $27
    rrca
    ld a, [hl]
    rst $18
    ld b, $1e
    ld a, [hl-]
    ld e, e
    ld bc, $6a75
    ld c, d
    nop
    inc h
    ld c, c
    ld e, $18
    sub h
    ld e, b

jr_001_79ae:
    inc b
    ld l, $21
    rst $30
    dec b
    cp [hl]
    rst $10
    ld [$9fb8], sp
    ldh [$0c], a
    ld de, $22f3
    ld d, c
    ld d, a
    ld e, b
    ld l, e
    add a
    dec d
    ld l, a
    ld d, e
    push bc
    ld b, $b3
    and d
    ld l, [hl]
    jp Jump_001_64b6


    ld c, l
    sub $13
    db $fd
    adc a
    jr jr_001_79db

    jp $4843


    ld l, b
    ld c, d
    rst $18

jr_001_79da:
    ld [bc], a

jr_001_79db:
    inc [hl]
    ld b, $07
    jr nc, jr_001_7a01

    jr nz, jr_001_79ae

    rrca
    jr z, jr_001_7a34

    dec h
    rst $00
    ld [bc], a
    ld a, [hl-]
    sbc h
    ld bc, $11fc
    ld a, [de]
    ld a, e
    db $10
    ld bc, $1246
    jr jr_001_7a45

    rla
    ld c, d
    cpl
    cp c
    dec bc
    jp nz, $f16d

    inc c
    ld c, h
    dec sp
    cp [hl]

jr_001_7a01:
    ld a, [hl+]
    ld [hl], l
    inc b
    adc a
    ld b, [hl]
    ld bc, $19c8
    ld e, d
    sbc l
    ld d, c
    ld e, a
    add hl, sp
    inc de
    ld a, l
    ld d, c
    dec b
    ld a, a
    ld d, h
    inc bc
    ld c, b
    ld [$66b6], a
    pop af
    ld [bc], a
    rst $00
    sub b
    ld l, c
    ldh a, [rTMA]
    db $e3
    ld d, l
    inc de
    ld d, [hl]
    ld e, e
    ld e, c
    rst $08
    ld e, c
    ld l, l
    inc b
    adc $bd
    inc de
    rra
    or c
    ld e, h
    ld e, l
    ld c, $9e
    ld [hl-], a

jr_001_7a34:
    ld l, e
    inc c
    xor [hl]
    ld c, [hl]
    rra
    ld e, a
    dec h
    jr @+$09

    inc e
    ld a, [hl-]
    nop
    adc b
    and b
    ld a, e
    jr nz, jr_001_7a46

jr_001_7a45:
    adc l

jr_001_7a46:
    adc c
    jr jr_001_7a67

    jr c, jr_001_7a7a

    ld l, $18
    adc c
    db $ed
    ld a, h
    ld l, a
    dec bc
    cp [hl]
    cp e
    inc de
    dec b
    ld h, c
    pop de
    and $f7
    inc b
    dec c
    sbc [hl]
    ld e, d
    sbc c
    db $fd
    ld d, d
    sbc a
    ld c, b
    daa
    ld a, [bc]
    ld e, $b3

jr_001_7a67:
    ld bc, $f1b6
    ld bc, $5ffd
    ld h, b
    ldh a, [rTAC]
    db $e3
    dec h
    ld a, $57
    ld e, b
    ld bc, $571e
    ld l, a
    inc b

jr_001_7a7a:
    ld l, a
    ld d, c
    ld hl, $5ecc
    ld [$fd08], a
    cp e
    ld h, h
    ld [hl], d
    ret


jr_001_7a86:
    inc c
    xor [hl]
    ld l, b
    jp z, Jump_000_1e25

    ld [hl], l
    ld b, a
    ld d, $68
    ld c, d
    sub c
    adc b
    inc a
    add a
    and b
    ld l, l
    sub d
    ld bc, $6646
    jp z, Jump_001_6405

    add hl, hl
    ld l, $1e
    reti


    di
    ld a, [bc]
    cp e
    ld c, a
    ld a, a
    ld [bc], a
    ld b, h
    dec d
    ld a, h
    ld bc, $9f09
    sub l
    ld c, d
    ld c, d
    ld bc, $0f73
    ld d, d
    jr nz, jr_001_7a86

    ld [bc], a
    sbc a
    ld l, b
    ld bc, $7714
    ld c, l
    ld l, c
    xor [hl]
    ld c, h
    ld l, b
    dec c
    ld h, c
    sbc h
    ld a, b
    db $e4
    ld [bc], a
    ld l, e
    ld hl, $fb59
    inc bc
    ld a, [$044d]
    add hl, de
    and h
    ld d, d
    ld d, d
    ld d, h
    ld d, $5c

jr_001_7ad7:
    ld e, l
    ld c, d
    ccf
    or [hl]
    ld c, b
    ld bc, $bea8
    ld l, [hl]
    ld a, a
    xor [hl]
    inc bc
    db $e4
    rrca
    add hl, de
    sbc h
    ld a, $29
    ld h, l
    inc bc
    or e
    ld [hl], l
    ld b, c
    ld [de], a
    and h
    ld [hl], h
    ld h, c
    ld b, [hl]
    adc [hl]
    ld l, b
    sbc [hl]
    or l
    ld l, c
    ld bc, $4e93
    ld l, c
    rst $28
    jp nc, Jump_000_086d

    db $fd
    ld e, [hl]
    rra
    ld a, a
    ld l, l
    rlca
    ld [hl-], a
    ld a, [bc]
    cp d
    bit 1, b
    sub c
    pop hl
    cp [hl]
    ret z

    ld [bc], a
    rst $28
    rrca
    ld [hl], h
    ld bc, $d1fc
    add d
    ld [hl], a
    sub b
    ld c, d
    ld c, d
    ld c, c
    ld [hl+], a
    and c
    dec c
    inc c
    ld l, b
    db $e4
    ld c, l
    ld l, l
    ld b, [hl]
    sbc a
    cpl
    ld l, e
    rlca
    ld sp, hl
    ld c, e
    add l
    add hl, de
    adc a
    ld d, l
    ld [hl], d
    and d
    ld d, e
    adc c
    inc a
    sbc [hl]
    daa
    ld e, b
    xor l
    inc a
    ld [de], a
    jr z, jr_001_7ad7

    jp hl


    daa
    add hl, de
    rlca
    add hl, hl
    ld l, c
    ld e, d
    sub $02
    ld [hl], l
    ld l, a
    ld [de], a
    ld bc, $fd1f
    ld l, c
    ld c, b
    inc b
    cp d
    add hl, de
    cp $0b
    ld bc, $f5c2
    ld bc, $bb4e
    xor h
    ld l, $d9
    db $fd
    db $ed
    dec bc
    nop
    ld h, $38
    nop
    add e
    ld h, l
    ld [hl], e
    db $e3
    dec b
    or a
    rst $38
    dec b
    ld e, [hl]
    jp hl


    inc bc
    ld c, $3e
    dec c
    ld [bc], a
    ld e, $e4
    ld [hl], h
    ld bc, $7943
    ld l, [hl]
    rlca
    db $fd
    ld l, a
    rst $20
    ld [$5218], sp
    and e
    ld bc, $ff3c
    ld sp, $1206
    jr z, jr_001_7c02

    ld e, c
    ld bc, $a319
    add hl, hl
    rst $30
    ld [bc], a
    ld h, d
    push bc
    ld bc, $423c
    and b
    ld [hl], h
    ld c, a
    db $eb
    inc b
    sbc $19
    dec b
    jp nz, $05f3

    or [hl]
    ld c, e
    db $f4
    ld b, $13
    sub [hl]
    nop
    ld c, h
    jr c, jr_001_7ba9

jr_001_7ba9:
    ld e, c
    rst $30
    ld b, $b8
    sbc [hl]
    ld b, $13
    ld d, d
    dec b
    ld c, $7b
    ld d, d
    rlca
    cpl
    rst $18
    ld bc, $0943
    rst $00
    ld a, $bd
    dec bc
    jr jr_001_7bcd

    ld l, h
    rst $28
    ld [bc], a
    rst $18
    inc b
    ld d, [hl]
    add hl, de
    dec bc
    db $f4
    ld b, $1e
    inc e

jr_001_7bcd:
    rst $08
    ld l, b
    ld [$6949], sp
    db $eb
    ei
    inc b
    add hl, de
    rst $08
    inc c
    ld d, l
    ld d, d
    ld b, $7b
    ld a, a
    inc b
    xor $c0
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
    ld d, h
    ld h, c
    add a
    sbc a
    xor h
    inc b
    ld bc, $0001
    stop
    ld c, $00
    add a
    nop
    db $10
    ld [hl], c
    db $76
    adc [hl]
    dec b
    nop
    ld [hl], b

jr_001_7c02:
    ld [hl], h
    ld a, c
    inc d
    inc bc
    nop
    ld [hl], d
    and $09
    rrca
    ld c, b
    nop
    ldh a, [rDIV]
    rrca
    ld l, a
    ld c, e
    ld c, e
    ld a, b
    daa
    inc b
    rrca
    ld [hl], e
    ld c, h
    dec a
    ld c, h
    jr nz, jr_001_7c20

    ld [hl+], a
    or a
    rrca

jr_001_7c20:
    nop
    and c
    inc b
    ld [hl+], a
    rrca
    ld [$2204], a
    ld a, d
    rrca
    inc bc
    ld [hl+], a
    ld l, a
    rrca
    ld bc, $2226
    ld [hl], l
    rrca
    rst $30
    ld bc, $a622
    ld bc, $220f
    push af
    ld [bc], a
    rrca
    ld e, $22
    ld c, e
    inc b
    rrca
    db $e3
    ld [hl+], a
    ld c, h
    ret nz

    nop
    ld d, d
    ld c, [hl]
    ld b, e
    ld [bc], a
    nop
    nop
    add hl, bc
    adc h
    nop
    nop
    ld bc, $0723
    xor c
    ld [hl], e
    inc de
    inc b
    ld bc, $0001
    xor [hl]
    nop
    ld c, $00
    adc [hl]
    nop
    xor [hl]
    rrca
    ld a, c
    inc b
    and c
    nop
    rrca
    rst $28
    rst $30
    xor l
    rst $30
    ld a, e
    xor l
    rst $30
    xor l
    jp z, Jump_000_003c

    ld sp, $0078
    sbc a
    xor l
    ld sp, $032e
    ld [hl], $2f
    cpl
    scf
    jr nc, @+$33

    jp $ad9e


    inc sp
    inc [hl]
    dec [hl]
    add a
    nop
    jr c, jr_001_7cc4

    add a
    rla
    xor l
    dec b
    ld b, $07
    add b
    ld a, h
    xor l
    ld a, [hl-]
    dec sp
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    inc a
    inc a
    dec a
    rla
    xor l
    ld [$093c], sp
    ld a, [bc]
    ld a, h
    xor l
    ld a, $01
    ld b, b
    add c
    ld c, l
    ld c, l
    add d
    ld b, c
    ccf
    rst $20
    ld [de], a
    ld hl, $012b
    xor l
    ld c, c
    dec bc
    inc c
    dec c
    ld c, b
    ldh [$0e], a
    ld e, $8e
    inc l

Jump_001_7cbe:
    ld c, b
    dec l
    rrca
    ld c, b
    ld c, b
    dec hl

jr_001_7cc4:
    adc a
    rlca
    ld hl, $8e1e
    dec d
    cp c
    nop
    inc e
    xor $08
    add hl, de
    ld a, c
    ld sp, $1202
    adc [hl]
    rrca
    ld hl, $490b
    inc hl
    nop

jr_001_7cdb:
    jp Jump_001_481c


    ld c, b
    call c, $ad1f
    dec hl
    ld b, $28
    jr z, jr_001_7d10

    add hl, hl
    ld a, [hl+]
    ld c, h
    jr nz, jr_001_7d35

    ld c, e
    nop
    ld c, [hl]
    ld c, c
    ld c, a
    ld e, e
    ret z

    ld [bc], a
    ld l, [hl]
    ld b, l
    and c
    inc d
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld a, [de]
    sbc c
    ld e, $2d
    ld c, h
    and d
    cp c
    inc l
    rst $30
    inc bc
    ld d, $b9
    ld bc, $1838
    add hl, bc
    sub [hl]
    jr c, jr_001_7d28

    ld [de], a
    dec hl

jr_001_7d10:
    di
    ld a, [bc]
    dec a
    inc l
    db $db
    ld bc, $04e2
    call nc, Call_000_1d01
    add hl, de
    and b
    ld d, $8f
    ld b, d
    ld b, e
    nop
    ld b, h
    add e
    add h
    add l
    add [hl]
    ld b, l

jr_001_7d28:
    ld b, [hl]
    ld b, a
    and l
    ld [de], a
    add hl, sp
    add l
    ld d, l
    db $ec
    ld b, $87
    nop
    ld c, h
    add c

jr_001_7d35:
    nop
    ld d, b
    ld d, c
    jp hl


    inc b
    add d
    ld a, [bc]
    nop
    ld d, a
    ld e, b
    ld a, e
    ld a, [de]
    ld [$de1e], sp
    inc bc
    ld d, $08
    jr c, jr_001_7cdb

    ld a, [de]
    ld c, a
    ld [de], a
    rrca
    ld a, e
    dec a
    ld b, $44
    sbc $0c
    db $76
    inc d
    add a
    jp z, Jump_001_7300

    dec a
    nop
    ld d, d
    inc b
    add d
    ld [hl+], a
    nop
    ld e, c
    ld c, a
    add hl, de
    ld [$1e7b], sp
    inc b
    ld d, $cf
    rlca
    jr c, jr_001_7dc5

    inc bc
    ld a, e
    ld [de], a
    rrca
    dec a
    sbc $07
    ld b, h
    dec bc
    db $76
    di
    dec d
    add a
    ld [hl], e
    ret nz

    nop
    nop
    ld [$1800], sp
    nop
    nop
    nop
    ld [$0100], sp
    ld [bc], a
    inc bc
    inc b
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_001_7dc0

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_001_7de1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop

jr_001_7dc0:
    jr nc, jr_001_7df3

    nop
    nop
    nop

jr_001_7dc5:
    ld bc, $0302
    inc b
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    scf
    dec c
    ld c, $00
    nop
    rrca
    db $10
    ld de, $3a38

jr_001_7de1:
    inc d
    dec d
    ld d, $17
    jr jr_001_7e00

    add hl, sp
    dec de
    inc e
    dec e
    nop
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h

jr_001_7df3:
    dec h
    ld h, $27
    jr z, jr_001_7e21

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop

jr_001_7e00:
    jr nc, jr_001_7e33

    nop
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    rrca
    db $10
    ld de, $1312

jr_001_7e21:
    inc d
    dec d
    ld d, $17
    jr jr_001_7e40

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld e, $32
    inc sp
    inc [hl]
    ld [hl+], a
    inc hl
    inc h

jr_001_7e33:
    dec h
    ld h, $35
    ld [hl], $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop

jr_001_7e40:
    jr nc, jr_001_7e73

    nop
    nop
    nop
    stop
    stop
    nop
    nop
    ld [$0000], sp
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_001_7e6b

jr_001_7e6b:
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de

jr_001_7e73:
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_7e79

jr_001_7e79:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_001_7e89

jr_001_7e89:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_001_7ed4

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_001_7eec

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld c, b
    ld c, c

jr_001_7ed4:
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    nop
    nop
    nop
    nop

jr_001_7eec:
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
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
    nop
    nop
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
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    cpl
    jr nc, @+$7b

    ld a, d
    ld a, e
    ld a, h
    dec [hl]
    ld [hl], $00
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    nop
    scf
    jr c, jr_001_7f6c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    ld a, $80
    ldh [rSCX], a
    xor a
    ldh [rSCY], a
    ld [$c552], a
    ld c, $01
    call Call_000_3dbb
    call Call_000_06bd
    call Call_000_2627
    ld hl, $0050
    ld a, l
    ld [$c156], a
    ld a, h
    ld [$c157], a

jr_001_7f6c:
    ld hl, $0070
    ld a, l
    ld [$c154], a
    ld a, h
    ld [$c155], a
    call Call_000_3ff4
    call Call_000_08f8
    xor a

jr_001_7f7e:
    push af
    push af

jr_001_7f80:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_001_7f80

    pop af
    call Call_000_3e5f
    ld e, $ff

jr_001_7f8e:
    push af

jr_001_7f8f:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_001_7f8f

    pop af
    ldh a, [rSCX]
    inc a
    ldh [rSCX], a
    call z, Call_001_7fcc
    call Call_001_7fdd
    ld b, $01
    call Call_000_0937
    dec e
    jr nz, jr_001_7f8e

    pop af
    add $02
    cp $0a
    jr c, jr_001_7f7e

    ld c, $6c
    call Call_000_046b
    call Call_000_0a3a
    push af

jr_001_7fbb:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_001_7fbb

    pop af
    xor a
    ldh [rSCX], a
    ldh [rSCX], a
    jp $ff80


Call_001_7fcc:
    push de
    call Call_000_2622
    ld e, $ff

jr_001_7fd2:
    call Call_001_7fdd
    dec e
    jr nz, jr_001_7fd2

    call Call_000_2627
    pop de
    ret


Call_001_7fdd:
    push de
    call Call_000_0a3a
    call Call_000_263b
    push af

jr_001_7fe5:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_001_7fe5

    pop af
    ld a, $78
    ld [$c1b0], a
    call Call_000_0c55
    call Call_000_0ca1
    call $ff80
    pop de
    ret


    rst $38
    rst $38
