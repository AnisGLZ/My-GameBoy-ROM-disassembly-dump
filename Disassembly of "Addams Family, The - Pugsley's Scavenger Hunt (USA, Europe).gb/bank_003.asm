; Disassembly of "Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    nop
    nop
    dec b
    dec b
    db $10
    db $10
    inc de
    ld [de], a
    dec h
    dec h
    inc bc
    ld [bc], a
    add d
    add d
    dec bc
    inc bc
    ld d, l
    ld b, l
    add hl, de
    add hl, de
    ld c, b
    ld c, b
    ld bc, $1000
    db $10
    ld [$0008], sp
    nop
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    nop
    nop
    db $10
    db $10
    ld [$8008], sp
    nop
    ld [de], a
    ld [de], a
    sbc b
    sbc b
    xor d
    add d
    ret nc

    ret nz

    ld b, c
    ld b, c
    ret nz

    ld b, b
    and h
    and h
    ret z

    ld c, b
    nop
    nop
    and b
    and b
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    jr nz, jr_003_4068

    ld d, $14
    ld b, e
    ld b, d
    dec b
    dec b
    adc [hl]
    adc [hl]
    rlca
    rlca
    ld c, b
    ld b, b
    inc c
    inc c
    ld b, h
    ld b, h
    ld [$1008], sp
    db $10
    inc b
    inc b
    ld bc, $8001
    add b
    jr nz, jr_003_4084

    ld [$1008], sp
    db $10

jr_003_4068:
    ld [hl+], a
    ld [hl+], a
    jr nc, jr_003_409c

    ld [de], a
    ld [bc], a
    ldh [$e0], a
    pop bc
    pop bc
    ret nz

    ret nz

    jp nz, Jump_003_6842

    jr z, jr_003_407d

    inc b
    nop
    nop
    ld d, b

jr_003_407d:
    ld d, b
    nop
    nop
    ld bc, $0001
    nop

Call_003_4084:
jr_003_4084:
    inc d
    inc d
    nop
    nop
    ld b, b
    ld b, b
    inc l
    jr nz, jr_003_40e4

    ld d, a
    ld a, [bc]
    ld a, [bc]
    add e
    add e
    inc bc
    inc bc
    dec h
    ld hl, $0206
    ld [hl+], a
    ld [hl+], a
    inc b
    inc b

jr_003_409c:
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    jr nz, @+$22

    ld b, h
    ld b, h
    ld h, b
    ld b, b
    and h
    add h
    ret nz

    ret nz

    pop bc
    pop bc
    ld b, b
    ld b, b
    ld [$34ea], a
    inc d
    ld [bc], a
    ld [bc], a
    nop
    nop
    jr z, jr_003_40e4

    nop
    nop
    add b
    add b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [$2108], sp
    ld hl, $0202
    ld b, c
    ld b, c
    dec c
    ld bc, $5656
    ld a, [bc]
    ld a, [bc]
    add c
    add c
    ld [bc], a
    nop
    inc hl
    ld hl, $0101
    db $10
    db $10
    dec b
    dec b
    nop
    nop
    nop
    nop
    and b
    and b

jr_003_40e4:
    ld [$8008], sp
    add b
    call nz, Call_003_4084
    nop
    add c
    add c
    ld d, b
    ld d, b
    ld l, d
    ld l, d
    or b
    add b
    add d
    add d
    ld b, b
    ld b, b
    add h
    add h
    db $10
    stop
    nop
    ld b, b

Jump_003_40ff:
    ld b, b
    nop

Jump_003_4101:
    nop
    ld bc, $0700
    inc bc
    rrca
    nop
    rrca
    dec b
    ld bc, $4a00
    ld [bc], a
    rst $38
    ld b, e
    ld e, a
    dec de
    rrca
    add hl, bc
    rrca
    inc b
    rlca
    ld [bc], a
    rrca
    ld b, $07
    ld [bc], a
    nop
    ld bc, $0001
    nop
    nop
    ld hl, sp+$40
    db $fc
    add sp, -$02
    ldh a, [$fe]
    ld b, h
    rst $38
    inc [hl]
    rst $38
    ld c, b
    rst $38
    sub b
    cp $a1
    db $fd
    ld [bc], a
    ei
    ld h, h
    and $99
    sbc l
    ld h, d
    ld a, e
    add h
    rst $30
    ld [$18e7], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_003_414c

jr_003_414c:
    ld [hl], b
    jr nz, jr_003_416f

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rNR10], a
    db $10
    ldh [$e8], a
    db $10
    db $ec
    db $10
    db $f4
    ld [$08f6], sp
    inc bc
    nop
    rlca
    nop
    ld b, $01
    ld bc, $0706
    nop
    rrca
    nop
    rrca
    nop
    scf

jr_003_416f:
    ld [$0877], sp
    scf
    ld [$0f10], sp
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc e
    ld h, h
    ld a, l
    add d
    db $fd
    ld [bc], a
    cp $01
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
    rlca
    nop
    add c
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld a, [$fa04]
    inc b
    db $fd
    ld [bc], a
    cp $05
    rst $38
    ld c, $7f
    sbc [hl]
    cp [hl]
    ld a, l
    cp l
    ld c, d
    db $db
    inc h
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rrca
    ldh a, [$f1]
    ld l, [hl]
    cp $f8
    cp $00
    nop
    nop
    nop
    nop
    ld b, c
    nop
    rst $20
    ld b, e
    ld c, a
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    ld c, d
    ld b, d
    rra
    inc bc
    rra

Jump_003_41d3:
    dec de
    rrca
    ld bc, $040f
    rlca
    ld [bc], a

jr_003_41da:
    rrca
    ld b, $07
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    ld sp, hl
    ld b, b
    rst $38
    pop af
    rst $38
    ld hl, sp-$02
    ld b, h
    rst $38

jr_003_41ed:
    inc [hl]
    rst $38

jr_003_41ef:
    ld b, b
    rst $38
    sub b
    cp $a1
    db $fd
    ld [bc], a
    ei
    ld h, h
    and $99
    sbc l
    ld h, d
    ld a, e
    add h
    rst $30
    ld [$0000], sp
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
    jr nz, jr_003_422e

    nop
    nop
    nop
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    jr nz, @-$2e

    ret nc

    jr nz, jr_003_41ed

    jr nz, jr_003_41ef

    jr nz, jr_003_4222

    nop

jr_003_4222:
    inc bc
    nop
    inc bc
    nop
    ld b, $01
    ld bc, $0706
    nop
    rrca
    nop

jr_003_422e:
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop

Call_003_423c:
    nop
    nop
    nop
    nop
    rst $20
    jr jr_003_41da

    ld l, b
    ld a, e
    add h
    rst $30
    ld [$0af7], sp
    rst $30
    rrca
    rst $28
    dec de
    rst $28
    rra
    rst $30
    dec bc
    ei
    inc b
    db $fc
    inc bc
    ld sp, hl
    ld b, $97
    ld l, e
    ld l, a
    ld b, $f0
    nop
    rst $38
    nop
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, $10
    db $ec
    db $10
    db $ec
    db $10
    db $ec
    sub b
    call c, $bca0
    ld b, b
    ld a, h
    add b
    inc c
    ldh a, [$f4]
    ret z

    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    ld [bc], a
    ld c, a
    ld b, b
    rrca
    rlca
    inc bc
    nop
    ld a, [bc]
    ld [bc], a
    ld e, a
    inc bc
    rra
    inc de
    rra
    add hl, bc
    rrca
    inc b
    rlca
    ld [bc], a
    rrca
    ld b, $07
    ld [bc], a
    nop
    ld bc, $0001
    nop
    nop
    ldh a, [rLCDC]
    db $fc
    cp b
    rst $38
    ld a, c
    cp $44
    rst $38
    inc [hl]
    rst $38
    ld c, b
    rst $38
    sub b
    cp $a1
    db $fd
    ld [bc], a
    ei
    ld h, h
    and $99
    sbc l
    ld h, d
    ld a, e
    add h
    rst $30
    ld [$30cf], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_003_42ce

jr_003_42ce:
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $10
    ldh [$e0], a
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    add sp, $10
    ld [bc], a
    ld bc, $0201
    rlca
    ld bc, $010f
    rrca
    rrca
    rrca
    rlca
    rlca
    nop
    jr c, @+$05

    ld a, l
    ld a, [hl-]
    ld a, $0d
    ld c, $05
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    ld b, $e7
    jr jr_003_432c

    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    add b
    add c
    nop
    nop
    nop
    ld bc, $0100
    nop
    add sp, $10
    ret c

    jr nz, jr_003_435d

    ret nz

    db $fc
    nop
    db $fc
    nop
    db $fc
    nop

jr_003_432c:
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    cp $fe
    nop
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    ld bc, $4700
    ld bc, $020f
    rrca
    dec b
    ld bc, $0a00
    ld [bc], a
    rra
    inc bc
    rra
    inc de
    rrca
    ld bc, $040f
    rlca
    ld [bc], a

jr_003_435a:
    rrca
    ld b, $07

jr_003_435d:
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    ldh a, [rLCDC]
    db $fd
    ldh a, [$fe]
    ld hl, sp-$02
    ld b, h
    rst $38

jr_003_436d:
    inc [hl]
    rst $38

jr_003_436f:
    ld b, b
    rst $38
    sub b
    cp $a1
    db $fd
    ld [bc], a
    ei
    ld h, h
    and $99
    sbc l
    ld h, d
    ld a, e
    add h
    rst $30
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
    ldh [rP1], a
    ldh a, [rP1]
    jr nz, @-$2e

    ret nc

    jr nz, jr_003_436d

    jr nz, jr_003_436f

    jr nz, jr_003_43a2

    nop

jr_003_43a2:
    inc bc
    nop
    inc bc
    nop
    ld b, $01
    ld bc, $0706
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
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
    rst $20
    jr jr_003_435a

    ld l, b
    ld a, e
    add h
    rst $30
    ld [$0af7], sp
    rst $30
    rrca
    rst $28
    dec de
    rst $28
    rra
    rst $30
    dec bc
    ei
    inc b
    db $fc
    inc bc
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    inc a
    rst $38
    ld [hl], b
    rst $38
    nop
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, $10
    db $ec
    db $10
    db $ec
    db $10
    db $ec
    sub b
    call c, $bca0
    ld b, b
    ld a, h
    add b
    db $fc
    nop
    db $fc
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
    ld b, b
    ld b, b
    or c
    ld sp, $1f4e
    jr nz, jr_003_4426

    db $10
    rrca
    ld de, $0807
    rlca
    ld [$0807], sp
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_4426:
    nop
    nop
    nop
    db $10
    db $10
    jr z, jr_003_443d

    jr z, @+$3a

    ld b, h
    ld a, b
    add [hl]
    cp $11
    rst $38
    db $10
    rst $38
    jr c, @+$01

    rst $38
    rst $38
    rst $38
    rst $38

jr_003_443d:
    cp $ff
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
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld a, [c]
    ld hl, sp+$04
    ldh a, [$08]
    ldh [$90], a
    ldh [rNR10], a
    ret nz

    jr nz, @-$3e

    jr nz, jr_003_4468

    ld [$100f], sp
    rrca
    ld de, $231f

jr_003_4468:
    ccf
    ld b, b
    rlca
    jr c, @+$03

    ld b, $00
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    rst $38

jr_003_4483:
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38

jr_003_4489:
    ld [hl], b
    rst $38
    jr nz, jr_003_4489

    inc bc
    ldh a, [$0c]
    ldh [rNR10], a
    ld b, b
    and b
    ld b, b
    and b
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
    ret nz

    jr nz, jr_003_4483

    db $10
    ldh [$90], a
    ldh a, [$0c]
    db $fc
    ld [bc], a
    add b
    ld a, h
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
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    ld b, $09
    rrca
    db $10
    rra
    ld [c], a
    rst $38
    rlca
    ccf
    rst $18
    ccf
    ld b, a
    rra
    daa
    rra
    daa
    rra
    inc l
    rra
    jr nz, jr_003_4511

    ld b, a
    jr nz, jr_003_4534

    ld b, b
    and b
    nop
    ld b, b
    nop
    inc b
    inc b
    ld a, [de]
    inc e
    ld [c], a
    ld hl, sp+$04
    ld hl, sp+$24
    ldh a, [$c8]
    ldh a, [$c8]
    ld hl, sp-$1a
    cp $81
    ldh a, [$ce]
    ldh [$50], a
    ldh [rNR10], a
    ld [hl], b
    adc b
    db $10
    ld l, b
    ld [$0014], sp
    ld [$0000], sp
    nop
    nop
    nop
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

jr_003_4511:
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0201
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $1c
    ld a, a
    ld a, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    db $eb
    adc b
    ld [hl], a
    adc b
    ld a, a

jr_003_4534:
    rst $38
    ld [$e1ff], sp
    rst $38
    reti


    rst $38
    jr nz, @+$81

    and d
    cp [hl]
    ld e, l
    nop
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
    add b
    add b
    ret nz

    add b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    add b
    or b
    ld b, b
    or b
    ld c, b
    ld [hl], h
    adc b
    db $ec
    db $10
    dec b

jr_003_4561:
    ld [bc], a
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    nop
    rlca
    ld b, $01
    ld b, $01
    rlca
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    ld bc, $0003
    pop bc
    ld a, $f7
    ld [$08f7], sp
    ld [hl], a
    adc b
    or [hl]
    ld c, c
    pop bc
    ld a, $ff
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
    jr c, jr_003_4561

    rst $10
    dec hl
    rst $28
    sub a
    rst $28
    db $10
    db $ec
    db $10
    sbc $20
    cp [hl]
    ld b, b
    ld a, $c0
    cp [hl]
    ld b, b
    add b
    ld a, [hl]
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    ld e, h
    sbc $2c
    ldh [rNR23], a
    ld hl, sp+$00
    ld [$f0f0], sp
    add sp, -$10
    ld [$08f0], sp
    nop
    ccf
    ccf
    ld e, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ld e, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_003_45dc:
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ld e, a
    nop
    ccf
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ld e, a
    nop
    ccf
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ld e, a
    ccf
    ld c, a
    rra
    inc hl
    rrca
    db $10
    inc bc
    inc c
    nop
    inc bc
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fc
    cp $fe
    rst $38
    cp $ff
    cp $fd
    cp $fd
    db $fc
    ld a, [$f2fc]
    ld hl, sp-$3c
    ldh a, [$08]
    ret nz

    jr nc, jr_003_463f

jr_003_463f:
    ret nz

    nop
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc de
    rrca
    inc de
    rrca
    inc de
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    ld bc, $0002
    ld bc, $0100
    nop
    ld bc, $0000
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$0c
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$e8]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$d0], a
    ret nz

    ldh [$c0], a
    ld h, b
    ret nz

    jr nz, @-$7e

    ld b, b
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
    nop
    nop
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
    ld sp, $1f00
    nop
    rrca
    nop
    rrca
    ld bc, $0007
    rlca
    nop
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

jr_003_46e8:
    nop
    nop
    stop
    stop
    jr c, jr_003_46f0

jr_003_46f0:
    ld a, b
    nop
    cp $10
    rst $38
    db $10
    rst $38
    jr c, jr_003_46e8

    rst $38
    jp $c3ff


    cp $e7
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [$80], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    rlca
    nop
    rrca
    nop
    rrca
    ld bc, $031f
    ccf
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    ld a, [hl]
    db $e3
    cp $cf
    rst $38
    rst $38
    db $fc
    rst $38

jr_003_4749:
    ld [hl], b
    rst $38
    jr nz, jr_003_4749

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ld b, b
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
    ret nz

    nop
    ldh [rP1], a
    ldh [$80], a
    ldh a, [rP1]
    db $fc
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
    inc b
    nop
    inc b
    nop
    ld b, $00
    rrca
    nop
    rra
    ld [bc], a
    rst $38
    rlca
    inc a
    rra
    inc a
    rlca
    ld e, $07
    rra
    rlca
    rra
    inc c
    rra
    nop
    jr c, jr_003_479a

jr_003_479a:
    jr nz, jr_003_479c

jr_003_479c:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc e
    nop
    ld hl, sp+$00
    ld hl, sp+$20
    ldh a, [$c0]
    ld [hl], b
    ret nz

    ld hl, sp-$20
    cp $80
    ldh a, [$c0]
    ldh [rLCDC], a
    ldh [rP1], a
    ld [hl], b
    nop
    stop
    ld [$0000], sp
    nop
    nop
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    add b
    ccf
    ret nz

    nop
    ld a, a
    ccf
    ld b, b
    ccf
    ld a, a
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    nop
    ld a, a
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    dec bc
    rrca
    ld de, $0807
    ld bc, $0106
    rlca
    rlca
    rrca
    rrca
    ld e, $1f
    inc a
    ld a, $79
    ld a, h
    ld a, [c]
    ld a, b
    db $e4
    jr nc, @+$4a

    nop
    jr nc, jr_003_4821

jr_003_4821:
    nop
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ld h, b
    ldh [$f0], a
    ldh a, [$7c]
    db $fc
    ld a, $fe
    rra
    inc a
    adc $38
    call nz, Call_000_2810
    nop
    stop
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
    ld [bc], a
    ld b, b
    nop
    nop
    ld bc, $3883
    ld a, $ee
    or h
    dec b
    ld bc, $1e2e
    nop
    nop
    ccf
    nop
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    jr c, jr_003_48de

    scf
    inc c
    ld bc, $1fcc
    rst $38
    ld bc, $61fe
    rst $38
    nop
    rlca
    rst $38
    ei
    db $ec
    inc c
    ld bc, $1f1f
    nop
    nop
    sbc a
    rrca
    add a
    inc bc
    add c
    nop
    add b
    or $0b
    ld bc, $a415
    ccf
    rlca
    nop
    cp $fe
    ld a, h
    ld d, $00
    jr c, jr_003_48f7

    nop
    add hl, bc
    inc c
    or l
    ld de, $8015
    rra
    rrca
    scf
    scf
    dec bc
    dec sp
    inc b
    rlca
    dec sp
    dec b
    dec a
    inc bc
    sbc e
    ld bc, $6709
    dec c
    ld de, $020f
    ld a, a
    rst $18
    rra
    ret nz

    add b
    nop
    ld bc, $b0cf
    rst $18
    and b
    rst $18
    inc e
    xor d
    rst $18
    cp a
    ld bc, $af72
    add hl, bc
    ld l, [hl]
    ld bc, $3f0b
    rst $38
    jr nz, jr_003_48c7

    add a
    inc hl
    nop
    jr nz, jr_003_48c8

    rst $28
    db $10

jr_003_48c7:
    rst $38

jr_003_48c8:
    ld [$aaff], sp
    rst $38
    rst $28
    inc e
    ld c, h
    rst $28
    add hl, bc
    ld [hl], e
    nop
    inc bc
    sbc e
    dec b
    nop
    rla
    ld a, b
    db $10
    ldh [$0d], a
    ret nc

    nop

jr_003_48de:
    db $10
    ret nz

    ld a, [$fe04]
    ld [bc], a
    cp $aa
    cp $fa
    rrca
    call z, $0903
    nop
    rst $20
    inc bc
    add hl, sp
    dec b
    rst $30
    xor [hl]
    ei

jr_003_48f4:
    ld a, [de]
    rra
    ld a, [hl]

jr_003_48f7:
    ld bc, $0639
    scf
    dec sp
    cpl
    rla
    rrca
    rrca
    rra
    ld bc, $001b
    ld [$0003], sp
    rlca
    rlca
    inc bc
    ld bc, $9c00
    rst $30
    cp e
    nop
    rra
    ldh [$e7], a
    ret c

    ei
    rst $30
    db $fd
    ld a, [$fc60]
    ld a, [bc]
    db $fc
    cp $3e
    ld a, [hl]
    ld l, [hl]
    cp [hl]
    dec b
    nop
    nop
    ld hl, sp-$08
    ldh a, [$e0]
    ret nz

    add e
    ld bc, $8f39
    rlca
    ld bc, $86c0
    db $ed
    cp $6b
    db $fd
    ld [hl], $7b
    add a
    inc sp
    ld [hl], $e3
    nop
    inc bc
    add h
    nop
    ld bc, $2801
    db $fd
    nop
    add a
    dec b
    ld a, b
    ld a, b
    or a
    cp $fd
    ld l, h
    ld b, a
    nop
    rst $08
    daa
    rst $18
    rst $28
    add h
    ld de, $78fc
    jr nc, jr_003_48f4

    rra
    and a
    ld bc, $fbff
    db $fd
    ld [hl], a
    ei
    ld [hl], a
    adc a
    ret z

    ld c, e
    ld c, c
    nop
    ld b, e
    ret z

    ld b, b
    ld l, h
    push af
    inc bc
    dec e
    ldh a, [rNR31]
    ld l, a
    db $fd
    ei
    ld b, c
    sbc b
    ld b, b
    ld [bc], a
    sbc a
    cp a
    ld [hl], e
    rst $18
    dec sp
    sbc b
    dec a
    add c
    ldh a, [$60]
    ld [hl], $ef
    jr jr_003_49bf

    ld sp, hl
    nop
    ld [$01f7], sp
    cp $f7
    ei
    rst $28
    rst $30
    inc a
    rst $28
    rra
    ld [$fabf], sp
    ld l, h
    ld b, $e3
    ld sp, hl
    ld [bc], a
    ld b, $fc
    ldh [$de], a
    ld hl, sp-$0c
    cpl
    sbc $32
    ld [$ecbf], sp
    rst $38
    rlca
    ld [hl], $7f
    rrca
    ld bc, $0c05
    rlca
    jr c, jr_003_49ef

Jump_003_49b0:
    inc bc
    ld bc, $401f
    ld bc, $0f01
    nop
    add e
    ld bc, $9b07
    ld bc, $7200

jr_003_49bf:
    daa
    inc sp
    ld c, $2d
    inc b
    db $10
    ccf
    ldh a, [$f8]
    ld bc, $e020
    ldh a, [rSB]
    ret nz

    rrca
    ldh [rLCDC], a
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
    ld bc, $0201
    ld bc, $6163
    cp e
    ld a, c
    rst $30
    ld a, l
    ld a, [$fd7f]
    ld a, a
    rst $18
    ld e, a
    rst $30
    ld d, e
    cp l

jr_003_49ef:
    ld de, $006a
    ld de, $0100
    nop
    nop
    nop
    ld a, h
    ld a, h
    cp d
    cp $ff
    cp e
    sub $11
    rst $38
    ld de, $bbff
    rst $38
    rst $38
    rst $38
    rst $00
    cp e
    db $e3
    rst $18
    rst $30
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    adc [hl]
    ld c, $95
    sbc [hl]
    ld l, a
    cp [hl]
    rst $18
    cp $ff
    cp $ff
    or $fb
    ld a, [c]
    rst $18
    ret nc

    ld [$f0c0], a
    ldh [$d0], a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld l, a
    dec h
    ld a, a
    ld hl, $0056
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$d0], a
    ldh [$f0], a
    ldh a, [$e8]
    ldh a, [$e8]
    ldh a, [$f8]
    ld hl, sp-$0c
    ld hl, sp-$04
    ld a, h
    cp d
    inc [hl]
    xor $22
    ld d, l
    nop
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
    inc bc
    ld bc, $0706
    add hl, bc
    ld b, $0d
    dec c
    inc de
    nop
    rra
    rra
    jr z, jr_003_4ac3

    ld d, c
    dec sp
    ld d, h
    jr nc, jr_003_4ad8

    nop
    ccf
    inc c
    inc de
    ld c, $15
    rlca
    add hl, bc
    inc bc
    inc b
    nop
    inc bc
    nop
    rst $38
    rst $38
    xor b
    rst $38
    ret nz

    rra
    ld [c], a
    dec sp
    push de
    ld sp, hl
    ld b, $fd
    ld [hl-], a
    db $fc
    di
    ld hl, sp+$67
    ld h, e
    sbc l
    ccf
    jp z, $f13f

    ld a, a
    xor d
    rst $38
    ret nc

    db $fc
    inc bc
    nop
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

jr_003_4ac3:
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    sub b
    ldh [$d0], a
    ldh a, [$e8]
    ldh a, [rBCPS]
    ld hl, sp+$74
    ld hl, sp+$74
    ld a, h

jr_003_4ad8:
    or d
    ld a, h
    cp d
    ld a, [hl]
    xor c
    ld a, [hl]

jr_003_4ade:
    xor l
    ld a, [hl]
    add l
    ld e, [hl]
    and c
    ld d, [hl]
    cp l
    ld [hl], $c9
    inc l
    ld [hl], d
    ld l, b
    sub h
    ld d, b
    xor b
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0706
    add hl, bc
    ld b, $0d
    dec c
    inc de
    nop
    rra
    rra
    jr z, jr_003_4b43

    ld d, c
    dec sp
    ld d, h
    jr nc, @+$51

    nop
    ccf
    inc c
    inc de

jr_003_4b0d:
    ld c, $15
    rlca
    add hl, bc
    inc bc
    inc b
    nop
    inc bc
    nop
    rst $38
    rst $38
    xor b
    rst $38
    ret nz

    rra
    ld [c], a
    dec sp
    push de
    ld sp, hl
    ld b, $fd
    ld [hl-], a
    db $fc
    di
    ld hl, sp+$67
    ld h, e
    sbc l
    ccf
    jp z, $f13f

    ld a, a
    xor d
    rst $38
    ret nc

    db $fc
    inc bc
    nop
    db $fc
    nop
    and b
    jr nz, jr_003_4b0d

    ld d, h
    xor d
    ld d, h
    xor d
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l

jr_003_4b43:
    ld l, [hl]
    sub c
    ld a, [$de05]
    ld hl, $02fc
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ldh [rNR23], a
    nop
    ldh a, [$60]
    ret nc

    ld h, b
    or b
    ldh [$50], a
    ldh [rNR10], a
    ret nz

    jr nz, jr_003_4ade

    ld b, b
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
    inc bc
    inc bc
    inc c
    rrca
    ld de, $231f
    ccf
    ld b, b
    ccf
    ld b, b
    ld a, a
    add b
    ld a, a
    sbc b
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld e, $65
    nop
    ccf
    ld bc, $001e
    cp $fe
    ld bc, $7eff
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ld c, $ff
    jp Jump_003_40ff


    rst $38
    inc b
    cp $01
    ld a, c
    add [hl]
    add b
    ld a, a
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    ret z

    ld hl, sp-$0c
    db $fc
    ld a, [$fafc]
    cp $fd
    cp $fd
    cp $bf
    cp $57
    cp $0f
    cp $15
    cp $01
    db $fc
    ld [bc], a
    ld [$1bf4], sp
    cpl
    dec de
    dec h
    dec c
    inc de
    ld c, $11
    ld b, $09
    ld b, $09
    ld [bc], a
    dec b
    ld [bc], a
    dec b

jr_003_4be5:
    inc bc
    inc b
    dec b
    ld a, [bc]
    rlca
    ld [$140b], sp
    ld c, $11
    ld e, $21
    scf
    ld c, b
    ld l, l
    sub d
    rst $08
    or a
    rst $38
    adc $7a
    rst $08
    or l
    adc $7b
    sub h
    rst $38
    ld de, $28f7
    rst $20
    ld a, [hl-]
    ld l, a
    or b
    ld l, a
    sub c
    xor a
    ld d, b
    jp $c13d


    ld a, $e0
    rra
    rst $38
    ld bc, $45bf
    inc e
    xor d
    jr c, jr_003_4be5

    cp b
    ld b, h
    ld hl, sp+$14
    ldh a, [$a8]
    ldh [rSVBK], a
    ret nz

    ld h, b
    ret nz

    and b
    ret nz

    and b
    ldh [$50], a
    ldh [$d0], a
    ldh [$50], a
    ldh a, [rBCPS]
    ldh a, [$28]
    ld hl, sp+$54
    db $fc
    xor d
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $231f
    ccf
    ld b, b
    ccf
    ld b, b
    ld a, a
    add b
    ld a, a
    sbc b
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld e, $65
    nop
    ccf
    nop
    nop
    nop
    cp $fe
    ld bc, $7eff
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ld c, $ff
    jp Jump_003_40ff


    rst $38
    inc b
    cp $01
    ld a, c
    add [hl]
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    ret z

    ld hl, sp-$0c
    db $fc
    ld a, [$fafc]
    cp $fd
    cp $fd
    cp $bf
    cp $57
    cp $0f
    cp $15
    cp $01
    db $fc
    ld [bc], a
    dec sp
    ld b, l
    dec de
    cpl
    dec de
    dec h
    dec c
    inc de
    ld c, $11
    ld b, $09
    ld b, $09
    ld [bc], a
    dec b
    ld b, $09

jr_003_4ca7:
    rlca
    ld [$120d], sp
    rrca
    db $10
    dec de
    inc h
    ld a, $41

jr_003_4cb1:
    ld [hl], a
    adc b
    ld l, l
    sub d
    or a
    ld c, d
    rst $08
    or a
    ld a, e
    adc $fe
    rst $08
    or l
    adc $7b
    sub h
    rst $38
    ld de, $28f7
    rst $20
    ld a, [hl-]
    ld l, a
    or b
    ld l, a
    sub c
    xor a
    ld d, b
    rst $00
    jr c, jr_003_4cb1

    ld e, $ff
    nop
    cp a
    ld b, l
    inc e
    and d
    inc e
    xor d
    jr c, jr_003_4ca7

    cp b
    ld b, h
    ld hl, sp+$14
    ldh a, [$a8]
    ldh [rSVBK], a
    ret nz

    ld h, b
    ret nz

    and b
    ldh [$d0], a
    ldh [$50], a
    ldh a, [$a8]
    ldh a, [rBCPS]
    ld hl, sp-$4c
    db $fc
    ld e, d
    db $fc
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_003_4d01:
    inc bc
    ld bc, $0707
    rrca
    rrca
    rra
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
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
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    ld hl, sp-$04
    db $fc
    cp $fc
    cp $fe
    cp $fe
    cp $fe
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    cp $fe
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
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
    ccf
    rra
    ld c, h
    ccf
    ld e, a
    ld h, e

jr_003_4dc6:
    sbc l
    ld c, c
    or a
    ld c, c
    or [hl]
    ld e, l
    xor d
    ld c, l
    or d
    inc hl
    ld e, h
    rlca
    ld a, b
    rra
    rst $20
    nop
    nop
    nop
    nop
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

jr_003_4de4:
    jr nz, jr_003_4dc6

    ret nc

    ldh a, [rBCPS]
    ldh a, [$d8]
    ld hl, sp-$7c
    ld hl, sp+$44
    ldh a, [$08]
    ret nz

    jr nc, jr_003_4de4

    ld c, b
    nop
    ld bc, $3d01
    dec a
    ld a, d
    ld a, [hl]
    call $b14e
    nop
    ld e, a
    ld [$0817], sp
    rla
    inc b
    dec bc
    inc b
    dec bc
    inc bc
    inc b
    nop
    inc bc

jr_003_4e0d:
    nop
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $e700
    jp c, $3cf3

    dec sp
    add $43
    cp h
    ld b, e
    cp h
    ld b, d
    cp l
    ld h, d
    sbc l
    dec h
    jp c, Jump_003_5ba4

    sbc b
    ld h, a
    ld bc, $43fe
    cp h
    ld l, a
    sub b
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    ld b, [hl]
    ld hl, sp-$5c
    ld hl, sp-$7c
    ld hl, sp+$04
    ldh a, [$88]
    ldh [rNR10], a
    and b
    ld d, b
    sub b
    ld l, b
    jr nc, jr_003_4e0d

    ld [hl], b
    xor b
    ldh a, [$08]
    ld hl, sp-$5c
    ld hl, sp-$7c
    ld hl, sp-$6c
    db $fc
    jp nc, $4afc

    cp $65
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rra
    ld l, h
    ccf
    ld e, a
    ld h, e

jr_003_4e68:
    sbc l
    ld c, c
    or a
    ld c, c
    or [hl]
    ld e, l
    xor d
    ld c, l
    or d
    inc hl
    ld e, h
    rlca
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
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

    jr nz, jr_003_4e68

    ret nc

    ldh a, [rBCPS]
    ldh a, [$d8]
    ld hl, sp-$7c
    ld hl, sp+$44
    ldh a, [$08]
    ret nz

    jr nc, jr_003_4e96

jr_003_4e96:
    inc a
    inc a
    ld a, e
    ld a, l
    bit 1, l
    or d
    nop
    ld e, a
    ld [$0817], sp
    rla
    inc b
    dec bc
    inc b
    dec bc
    inc bc
    inc b
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $0102

jr_003_4eb2:
    ld [bc], a
    ld bc, $1f02
    rst $20
    db $e3
    sbc $f3
    inc a
    dec sp
    add $43
    cp h
    ld b, e
    cp h
    ld b, d
    cp l
    ld h, d
    sbc l
    and l
    ld e, d
    inc h
    db $db
    jr jr_003_4eb2

    ld bc, $c3fe
    inc a

jr_003_4ecf:
    rst $28
    ld d, b
    rst $38
    inc b
    rst $38
    ld b, [hl]
    ldh a, [$c8]
    ld hl, sp-$5c
    ld hl, sp-$7c
    ld hl, sp+$04
    ldh a, [$88]
    and b
    ld d, b
    and b
    ld e, b
    sub b
    ld l, b
    jr nc, jr_003_4ecf

    ld [hl], b
    adc b
    ld hl, sp+$24
    ld hl, sp-$7c
    ld hl, sp-$6c
    db $fc
    jp nc, $4afc

    cp $65
    nop
    nop
    nop
    ld e, $16
    add hl, hl
    cpl
    ld d, b
    ld e, a
    and b
    inc de
    rst $38
    inc de
    rst $38
    ld e, a
    rst $38
    cpl
    ld a, a
    rla
    ld a, $1f
    jr nz, jr_003_4f1b

    db $10
    rrca
    db $10
    rlca
    ld [$0601], sp
    nop
    ld bc, $0c00
    inc c
    ld e, $1e
    inc sp

jr_003_4f1b:
    ld e, $f3
    sbc h
    db $76
    ret c

    cp h
    call nc, $febe
    xor l
    cp $1f
    cp $0f
    cp $05
    db $fc
    ld b, $fc
    ld [bc], a
    ld hl, sp+$04
    ldh [rNR23], a
    nop
    ldh [rP1], a
    nop
    nop
    ld e, $16
    add hl, hl
    cpl
    ld d, b
    ld e, a
    and b
    inc de
    rst $38
    inc de
    rst $38
    ld e, a
    rst $38
    cpl
    ld a, a
    rla
    ld a, $1f
    jr nz, jr_003_4f5b

    db $10
    rrca
    db $10
    rlca
    ld [$0601], sp
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_003_4f5b:
    nop
    ldh [$a0], a
    ld e, b
    ld hl, sp-$4c
    db $fc
    xor [hl]
    sbc $b5
    sbc $3b
    sbc $35
    sbc $33
    sbc $33

jr_003_4f6d:
    db $ec
    ld e, $f0
    inc c
    ldh [rNR23], a
    nop
    ldh [rP1], a
    dec c
    dec c
    ld [de], a

jr_003_4f79:
    dec de
    inc h
    rla
    add hl, hl
    dec bc
    dec a
    inc bc
    inc e
    dec c
    ld [de], a
    ld a, [de]
    dec h
    dec de
    inc h
    dec c
    ld [de], a
    ld bc, $030e
    inc b
    rlca
    ld a, [bc]
    rlca
    dec bc
    inc bc
    inc b
    nop
    inc bc
    nop
    call z, Call_000_32cc
    cp $cd
    ld a, [hl]

jr_003_4f9c:
    push hl
    db $f4
    jp z, $0cf0

    cp b
    ld b, h
    ld a, h
    adc d
    ld a, h
    sbc d
    jr c, jr_003_4f6d

    ret nz

    jr c, jr_003_4f9c

    ld [$14e8], sp
    sbc h
    ld h, d
    jr c, jr_003_4f79

    nop
    jr c, jr_003_4fb6

jr_003_4fb6:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_003_4fd6

    inc h
    inc a
    ld e, d
    inc h
    ld a, [hl]
    ld b, d
    rst $20
    ld b, d
    rst $20
    inc h
    ld a, [hl]
    inc a
    ld e, d
    jr jr_003_4ff1

    nop
    jr jr_003_4fd0

jr_003_4fd0:
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_4fd6:
    nop
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
    inc b
    rlca
    dec bc
    rrca
    ld d, $1f
    jr z, jr_003_5029

    ld d, b
    ccf
    ld b, b
    ld a, a
    add b
    ld a, a
    add b

jr_003_4ff1:
    ld a, a
    add b
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_003_5004:
    add e
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

    jr nz, jr_003_5004

    ret nc

    ldh a, [rBCPS]
    ld hl, sp+$34

jr_003_5029:
    db $fc
    ld a, [de]
    db $fc
    ld a, [bc]
    cp $0d
    cp $0d
    cp $05
    cp $05
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    jr nz, jr_003_5053

    db $10
    rlca
    ld [$0403], sp
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

jr_003_5053:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    cp $05
    cp $05
    cp $05
    cp $0d
    db $fc
    ld a, [bc]
    db $fc
    ld a, [de]
    ld hl, sp+$14
    ldh a, [$28]
    ldh [$50], a
    ret nz

    jr nz, jr_003_508a

jr_003_508a:
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
    rst $38
    ld a, a
    rst $38
    ld b, b
    cp a
    ld e, a
    cp a
    ld e, a
    and b
    ld d, b
    xor a
    ld d, a
    xor b
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    pop bc
    cp [hl]
    add c
    cp $a1
    sbc $b1
    adc $b1
    adc $b1
    adc $b1
    adc $00
    rst $38
    cp $ff
    ld [bc], a
    rst $38
    ld a, [$faff]
    rrca
    ld a, [de]
    rst $28
    jp c, Jump_003_5a2f

    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    xor e
    ld d, a
    xor e
    ld d, a
    xor b
    ld d, b
    xor a
    ld e, a
    and b
    ld b, b
    cp a
    ld a, a
    add b
    nop
    rst $38
    or c
    adc $b1
    adc $b1
    adc $b1
    adc $b1
    adc $b9
    add $83
    db $fc
    rst $38
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    ld e, d
    xor a
    jp c, $daaf

    cpl
    ld a, [de]
    rst $28
    ld a, [$020f]
    rst $38
    cp $03
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
    ld b, $06
    rrca
    rrca
    rra
    rra
    jr nz, jr_003_51a5

    ld l, a
    ld [hl], b
    rst $28
    ld [hl], a
    add sp, $36
    ld l, e
    ld d, $2b
    ld d, $2b
    ld [hl], $6b
    db $76
    db $eb
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_003_5198

    inc a
    inc a
    rst $38
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
    rst $38
    nop
    pop bc
    cp [hl]
    add c
    cp $a1
    sbc $00
    nop
    nop

jr_003_5198:
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$f0]
    ld hl, sp-$08
    inc b

jr_003_51a5:
    db $fc
    or $1e
    rst $30
    sbc $37
    ld e, h
    or [hl]
    ld e, b
    or h
    ld e, b
    or h
    ld e, h
    or [hl]
    ld e, [hl]
    or a
    db $76
    db $eb
    ld [hl], $6b
    ld d, $2b
    ld d, $2b
    ld [hl], $6b
    ld [hl], a
    db $eb
    ld [hl], a
    add sp, $30
    ld l, a
    rra
    jr nz, @+$11

    rra
    ld b, $0f
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or c
    adc $b9
    add $83
    db $fc
    rst $38
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    inc a
    rst $38
    jr jr_003_5227

    nop
    jr jr_003_51ee

jr_003_51ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    or a
    ld e, h
    or [hl]
    ld e, b
    or h
    ld e, b
    or h
    ld e, h
    or [hl]
    sbc $b7
    sbc $37
    inc e
    or $f8
    inc b
    ldh a, [$f8]
    ld h, b
    ldh a, [rP1]
    ld h, b
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
    inc c
    rrca
    db $10
    rra
    jr nz, jr_003_525d

    ld b, b
    ccf
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_003_5227:
    ld a, a
    add b
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    jr nz, @+$11

    db $10
    inc bc
    inc c
    nop
    inc bc
    dec b
    rst $08
    adc $31
    rst $38
    dec b
    cp $71
    db $fc
    ld a, [$fafc]
    cp $f9
    cp $71
    cp $01
    cp $01
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ldh a, [$08]
    ret nz

    jr nc, jr_003_5254

jr_003_5254:
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_525d:
    nop
    inc a
    inc a
    ld b, d
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    inc a
    ld b, d
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1e01
    ld e, $3f
    ccf
    ld a, a
    ccf
    ld a, a
    inc de
    ccf
    nop
    inc de
    nop
    ld bc, $0300
    ld bc, $0107
    rlca
    ld bc, $050f
    dec bc
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    sub b
    ld l, b
    ret c

    ld h, l
    ld a, h
    add e

jr_003_52a3:
    cp h

jr_003_52a4:
    jp nz, $e29c

    ld a, b
    add [hl]
    ldh [$1f], a
    dec b
    rst $38
    push hl
    rst $38
    dec b
    rst $38
    ld h, l
    sbc a
    xor h
    rst $18
    nop
    ld [bc], a
    ld [bc], a
    ccf
    ld [hl], $4d

jr_003_52bb:
    ld a, h
    add d
    ld c, [hl]
    or l
    xor b
    ld [hl], a
    xor [hl]
    ld d, c
    inc c
    ld a, [c]
    jr nc, jr_003_52a3

    ld e, b
    xor h
    ld l, h
    sub $b6
    ld l, c
    db $ec
    ld a, d
    ld e, b
    or h
    jr nc, jr_003_52bb

    ld h, b
    sub b
    nop
    ld a, a
    ld a, a
    xor d
    nop
    ld a, a
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0003
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
    inc bc
    inc bc
    rlca
    rlca
    rrca
    nop
    rlca
    nop
    rst $38
    cp $ab
    nop
    rst $38
    db $eb
    rra
    add sp, -$61
    db $eb
    call c, $906f
    rra
    ld h, b
    ld a, $41
    add hl, sp
    ld b, [hl]
    ld [hl], c
    adc d
    ld [hl], b
    adc c
    ld [hl], b
    adc b
    ldh a, [$f8]
    ldh a, [$f8]
    nop
    ldh a, [$c0]
    rst $38
    sbc $ff
    ret nz

    rst $38
    nop
    ldh a, [$e0]
    db $10
    ldh [rNR10], a
    ret nz

    jr nz, jr_003_52a4

    ld c, b
    ld [$bcfc], sp
    ld e, [hl]
    db $fc
    ld c, $fc
    ld c, $0c
    cp $0c
    ld e, $04
    ld c, $00
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $1e01
    ld e, $3f
    ccf
    ld a, a
    ccf
    ld a, a
    inc de
    ccf
    nop
    inc de
    nop
    ld bc, $0300
    ld bc, $0107
    rlca
    ld bc, $050f
    dec bc
    dec b
    rrca
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    sub b
    ld l, b
    ret c

    ld h, h
    ld a, h
    add d
    cp h
    jp $e39c


jr_003_5365:
    ld a, b
    add [hl]
    ldh [rNR23], a
    nop
    ldh a, [$e0]
    rst $38
    dec b
    rst $38
    ld b, l
    cp a
    ld h, l
    sbc a
    add l

jr_003_5374:
    rst $38
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ccf
    ld [hl], $4d

jr_003_537d:
    ld a, h
    add d
    ld c, [hl]
    or l
    xor b
    ld [hl], a
    xor [hl]
    ld d, c
    inc c
    ld a, [c]
    jr nc, jr_003_5365

    ld e, b
    xor h
    ld l, h
    sub $b6
    ld l, c
    db $ec
    ld a, d
    ld e, b
    or h
    jr nc, jr_003_537d

    ld b, $0d
    nop
    ld a, a
    ld a, a
    xor d
    nop
    ld a, a
    inc bc
    rlca
    ld bc, $0003
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
    db $fc
    rst $38
    nop

jr_003_53b8:
    rst $38
    cp $ab
    nop
    rst $38
    db $eb
    sbc a
    add sp, -$21
    ld l, e
    sbc h
    add hl, bc
    ld a, [hl]
    ld bc, $0d3e
    ld [de], a
    nop

jr_003_53ca:
    rrca
    nop
    ld bc, $0700
    rlca
    rrca
    rrca
    rra
    nop
    rrca
    ld h, b
    ldh a, [$c0]
    rst $38
    sbc $ff
    ret nz

    rst $38
    nop
    ldh [$e0], a
    db $10
    ret nz

    jr nc, jr_003_5374

    ld a, b
    ret nc

    jr c, jr_003_53b8

jr_003_53e8:
    jr c, jr_003_53ca

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$f0], a
    ldh [$f0], a
    nop
    ldh [rP1], a
    ld bc, $0201
    inc bc
    inc a
    dec a
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    daa
    ld a, a
    nop
    daa
    ld bc, $0002
    rlca
    inc bc
    rlca
    ld [bc], a
    rlca
    inc bc
    rrca
    dec b
    dec bc
    ld b, $0f
    rlca
    rrca
    nop
    ret nz

    ret nz

    jr nz, @+$22

    ret nc

    or b
    ret z

    ld hl, sp+$04
    ld a, b
    add l
    jr c, jr_003_53e8

jr_003_5423:
    ldh a, [$0c]
    ret nz

    jr nc, jr_003_5428

jr_003_5428:
    ldh [$c0], a
    rst $30
    dec b
    rst $38
    dec h
    rst $18
    push bc
    rst $38
    ld a, l
    rst $38
    add h
    ld a, a
    nop
    ld [bc], a
    ld [bc], a
    ccf
    ld [hl], $4d

jr_003_543b:
    ld a, h
    add d
    ld c, [hl]
    or l
    xor b
    ld [hl], a
    xor [hl]
    ld d, c
    inc c
    ld a, [c]
    jr nc, jr_003_5423

    ld e, b
    xor h
    ld l, h
    sub $b6
    ld l, c
    db $ec
    ld a, d
    ld e, b
    or h
    jr nc, jr_003_543b

    ld h, b
    sub b
    nop
    ld a, a
    ld a, a
    xor d
    nop
    ld a, a
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0200
    ld [bc], a
    rlca
    rlca
    rrca
    rlca
    rrca
    ld bc, $0007
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp $ab
    nop
    rst $38
    db $eb
    sbc a
    add sp, -$61
    db $eb
    call c, $dc2b
    dec bc
    ld a, h
    ld h, c
    sbc d
    pop hl

jr_003_5488:
    sub d
    ldh [$d1], a
    ldh [$f0], a
    ld h, b
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    nop
    ret nz

    rst $38
    sbc $ff
    ret nz

    rst $38
    nop
    ldh [$e0], a
    db $10
    ldh [rNR10], a
    ret nz

    jr nz, @-$7e

    ld h, b
    ret nz

    jr nz, jr_003_5488

    ld e, $fe
    rlca
    ld a, $c7
    ld b, $3f

Call_003_54af:
    ld a, $7f
    ld a, h
    cp $00
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    xor $37
    ld e, h
    ld a, [hl]
    rst $30
    nop
    ld b, $06
    add hl, bc
    add hl, bc
    db $76
    ld [hl], a

jr_003_54dc:
    adc [hl]
    push af
    xor $fc
    di
    db $fd
    ld a, [$ac73]
    nop
    ld a, a
    rra
    jr nc, jr_003_5528

    ld h, c
    ld a, h
    and d
    cp $61
    cp $61
    ld a, a
    ldh [$7f], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    ld c, h
    adc h
    db $76
    jr c, @-$10

    cp $1f
    sbc h
    ld a, d
    ld [$089c], sp
    inc d
    nop
    ld [$0000], sp
    nop
    add b
    add b
    ld h, b
    jr jr_003_5595

    jr @+$36

    jr jr_003_5548

    nop
    jr jr_003_551e

jr_003_551e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_5528:
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    ld a, d

jr_003_5537:
    dec c
    ld a, [c]
    ret c

    daa
    scf
    ret z

    jr nc, @+$51

    db $10
    add hl, hl
    add hl, de
    daa
    ld [$0d15], sp
    ld [hl], d
    ld l, l

jr_003_5548:
    rst $38
    db $fd
    cp $fd
    sub $01
    cp $3f
    ld e, a
    rra
    ld l, $00
    rra
    and b
    ld d, b
    ld h, b
    sub b
    ret nz

    jr nz, jr_003_54dc

    ld b, b
    nop
    ret nz

    ld b, b
    ldh [$80], a
    ret nc

    ld d, b
    xor b
    jr nz, jr_003_5537

    add b
    ld h, b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ld b, b
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
    ld bc, $0201
    inc bc
    dec b
    ld bc, $0002
    ld [hl], c
    ld [hl], b
    xor b
    jr jr_003_55fe

    ld a, c
    cp $1f
    ld a, b
    jr c, @+$59

    db $10
    jr z, jr_003_5592

jr_003_5592:
    stop
    nop

jr_003_5595:
    nop
    ld b, $06
    add hl, bc
    add hl, bc
    db $76
    ld [hl], a

jr_003_559c:
    adc [hl]
    push af
    xor $fc
    di
    db $fd
    ld a, [$ac73]
    nop
    ld a, a
    ld e, h
    or e
    cp a
    ld h, b
    ld a, h
    and e
    ld a, [hl]
    pop hl
    ld a, [hl]
    pop hl
    ld a, a
    ldh [$7f], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    ld b, $06
    sbc e
    sbc h
    db $76
    cp $1f
    inc e
    ld [$1c08], a
    nop
    adc b
    add b
    ld h, b
    nop
    ld bc, $0000
    nop
    ld bc, $0300
    inc bc
    rlca
    rlca
    rrca
    rlca
    ld c, $00
    rlca
    ld bc, $0003
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
    or l
    ld a, d
    dec d
    ld [$13ec], a
    dec bc
    db $f4
    ld e, b

jr_003_55fe:
    rst $20
    sbc $e1
    add e
    db $fc
    inc b
    ei
    call c, $3bef
    rst $10
    scf
    ld a, a
    scf
    ld a, [hl]
    jr c, jr_003_5686

    ccf
    ld e, l
    rra
    ld l, $00
    rra
    and b
    ld d, b
    ld h, b
    sub b
    ret nz

    jr nz, jr_003_559c

    ld b, b
    nop
    add b
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_003_5686

    sub b
    ld h, b
    ldh a, [$e0]
    ldh a, [$e0]
    or b
    nop
    ldh a, [$f0]
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, c
    jp nc, Jump_003_7523

    ld [hl], c
    ld a, [$5f38]
    rra
    jr c, jr_003_5679

    ld l, [hl]
    nop
    ld sp, $0000
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
    add hl, bc

jr_003_5659:
    add hl, bc
    db $76
    ld [hl], a
    adc [hl]
    push af
    xor $fc
    di
    db $fd
    ld a, [$ac73]
    nop
    rst $38
    call c, Call_000_3f33
    ldh [$7c], a
    and e
    ld a, [hl]
    pop hl
    ld a, [hl]
    pop hl
    ld a, a
    ldh [$7f], a
    ldh a, [rP1]
    nop
    nop
    nop

jr_003_5679:
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop

jr_003_5686:
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    jr nc, jr_003_5659

    ld a, [de]
    xor l
    ld c, $9f
    sbc h
    ld a, [hl]
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
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec [hl]
    ld a, d
    dec d
    ld [$13ec], a
    ld e, b
    and a
    inc de
    ld l, h
    ld a, $41
    add hl, sp
    ld b, a
    inc bc
    ccf
    dec de
    ld l, a
    inc a
    rst $18
    cp e
    push af
    or [hl]
    rst $38
    add hl, sp
    rst $30
    ccf
    ld e, a
    rra
    ld l, $00
    rra
    sub [hl]
    ld a, e
    ld h, b
    sub [hl]
    ret nz

    jr nz, jr_003_56dc

jr_003_56dc:
    ret nz

    ret nz

    ld h, b
    ld h, b
    ldh a, [$e0]
    ldh a, [$d0]
    ld hl, sp-$60
    ldh a, [rLCDC]
    ldh [$80], a
    ld b, b
    nop

Jump_003_56ec:
    ret nz

    add b
    ret nz

    add b
    ld b, b
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
    ld bc, $0201
    inc bc
    dec b
    ld bc, $0002
    ld [hl], c
    ld [hl], b
    xor b
    jr jr_003_577e

    ld a, c
    cp $1f
    ld a, b
    jr c, jr_003_5766

    db $10
    jr z, jr_003_5712

jr_003_5712:
    stop
    nop
    nop
    ld b, $06
    add hl, bc
    add hl, bc
    db $76
    ld [hl], a
    adc [hl]
    push af

jr_003_571e:
    xor $fc
    di
    db $fd
    ld a, [$ac73]
    nop
    ld a, a
    ld e, h
    or e
    cp a
    ld h, b
    ld a, h
    and e
    ld a, [hl]
    pop hl
    ld a, [hl]
    pop hl
    ld a, a
    ldh [$7f], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    ld b, $06
    sbc e
    sbc h
    db $76
    cp $1f
    inc e
    ld [$1c08], a
    nop
    adc b
    add b
    ld h, b
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rlca
    ld c, $00

jr_003_5766:
    rlca
    ld bc, $0003
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    inc c
    sbc l
    ld h, d
    pop bc
    ld a, $40
    cp a
    ld l, a

jr_003_577e:
    sub b
    ld h, b
    rst $38
    db $e4
    ei
    push hl
    cp [hl]
    inc b
    ei
    di
    rst $38
    rlca
    ei
    dec hl
    ld a, l
    dec [hl]
    ld a, a
    ld a, e
    or l
    ld a, a
    rst $38
    nop
    ld a, a
    add b
    ld h, b
    and b
    ld d, b
    ld h, b
    sub b
    ret nz

    jr nz, jr_003_571e

    ld b, b
    nop
    add b
    nop
    add b
    nop
    ret nz

    ld b, b
    and b
    nop
    ldh [$a0], a
    ldh a, [$a0]
    ldh a, [$a0]
    ldh a, [$c0]
    and b
    ret nz

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
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    db $fc
    db $e3
    ld hl, sp-$19
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7f
    ld hl, sp+$7f
    ldh [$7f], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, h
    add e
    ld [hl], b
    adc h
    ld b, b
    or b
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [$0c]
    ret nz

    jr nc, jr_003_584c

jr_003_584c:
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    add e
    ld a, [$fc05]
    inc bc
    cp $01
    db $fc
    inc bc
    ldh a, [$0c]
    ret nz

    jr nc, jr_003_5864

jr_003_5864:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_003_5896

    inc h
    inc a
    ld e, d
    inc h
    ld a, [hl]
    ld b, d
    rst $20
    ld b, d
    rst $20
    inc h
    ld a, [hl]
    inc a
    ld e, d
    jr jr_003_58b1

    nop
    jr jr_003_5890

jr_003_5890:
    nop
    nop

jr_003_5892:
    nop
    nop
    nop
    nop

jr_003_5896:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_003_58b8

    dec l
    dec c
    ld [de], a
    ld a, [bc]
    dec d
    dec b
    ld a, [bc]
    dec b

jr_003_58b0:
    ld a, [bc]

jr_003_58b1:
    add hl, bc
    ld d, $1d
    ld l, d
    nop
    nop
    nop

jr_003_58b8:
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
    jr z, jr_003_58d4

    jr c, jr_003_58fe

    ld d, h
    ld a, h
    sbc e
    cp e
    ld b, h
    rst $00
    jr c, @+$01

    inc c
    rst $38
    ld e, $df
    ld h, $bf

jr_003_58d4:
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$22

    ret nc

    ret nz

    ld h, b
    ld b, b
    and b
    add b
    ld b, b
    ret nz

    jr nz, jr_003_58b0

    jr nz, jr_003_5892

    ld d, b
    ld [hl], b
    xor h
    ld a, l
    sbc d
    inc e
    ld h, e
    ld [$0417], sp
    dec bc
    inc b

jr_003_58fe:
    dec bc
    ld [bc], a
    dec b
    dec b
    ld a, [bc]
    ld b, $09
    ld [$0016], sp
    jr jr_003_590a

jr_003_590a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp e
    ld c, h
    cp e
    ld b, h
    rst $00
    jr c, @+$81

    add b
    ld e, $e1
    nop
    rst $38
    cp e
    ld b, h
    ld a, h
    adc e
    jr c, jr_003_597b

    db $10
    jr z, jr_003_593a

    jr z, jr_003_592c

jr_003_592c:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    cp d
    ld [hl], b
    adc h
    and b

jr_003_593a:
    ld d, b
    ret nz

    jr nz, jr_003_597e

jr_003_593e:
    and b
    and b
    ld d, b
    ld h, b
    or b
    db $10
    ld l, b
    nop
    jr jr_003_5948

jr_003_5948:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_003_5981

    inc h
    dec sp
    ld c, [hl]
    ccf
    ld b, h
    ccf
    ld [hl], b
    ccf
    ld a, [hl]
    ccf
    ld a, b
    ccf
    ld b, b
    dec e
    ld [hl+], a
    ld b, $19
    nop
    rlca
    nop
    ld h, b
    ld b, b
    and b
    add b
    ld b, b

jr_003_597b:
    add b
    ld b, b
    add b

jr_003_597e:
    ld b, [hl]
    add h
    ld c, d

jr_003_5981:
    call nz, $ec2a
    ld [de], a
    db $fc
    ld [bc], a
    ld hl, sp+$04
    xor b
    ld d, h
    ld e, h
    and d
    xor h
    ld d, d
    ld b, h
    xor d
    add h
    ld c, d
    nop
    add [hl]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    jr jr_003_59c1

    inc h
    dec sp
    ld l, [hl]
    rra
    inc [hl]
    rra
    inc a
    rra
    ld a, $1f

jr_003_59ac:
    inc a
    ccf
    ld [hl], b
    dec e
    ld [hl+], a
    ld b, $19
    nop
    rlca
    nop
    nop
    nop
    ld h, b
    ld h, b
    sub b
    ret nz

    jr nz, jr_003_593e

    ld b, e
    add d
    ld b, l

jr_003_59c1:
    add $29
    db $ec
    ld [de], a
    db $fc
    ld [bc], a
    ld hl, sp+$04

jr_003_59c9:
    xor b
    ld d, h
    ld e, h
    and d
    xor h
    ld d, d
    ld b, [hl]
    xor c
    add d
    ld b, l
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $7120
    ld sp, $397a
    ld h, [hl]
    add hl, sp
    ld h, [hl]
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld h, [hl]
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld h, [hl]
    add hl, sp
    ld b, [hl]
    jr c, jr_003_5a3a

    ld b, h
    cp e
    nop
    ld c, $0e
    ld sp, $5c3f
    ld a, [hl]
    or c
    cp $41
    rst $20
    jr jr_003_59c9

    dec sp
    xor a
    ld [hl], e
    ld e, $e7
    ld a, $c3
    ld a, $c7
    ld [hl], $c9
    add hl, sp
    add $3e
    pop bc
    nop
    rst $38
    ld a, [hl]
    add c
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $f4
    ldh [$58], a
    ldh a, [$e8]
    ret nz

    or b
    ldh [$d0], a
    add b
    ld h, b
    ret nz

    jr nz, @+$42

    and b
    ret nz

    jr nz, jr_003_59ac

    ld [hl], b
    ld [hl], b
    ret z

Jump_003_5a2f:
    nop
    rst $38
    cp $e7
    cp $e7
    ld [hl], c
    adc [hl]
    dec c
    ld a, e
    ld l, l

jr_003_5a3a:
    db $d3
    ld [hl], d
    call Call_003_6936
    jr nc, jr_003_5aaf

    nop
    jr nc, jr_003_5a44

jr_003_5a44:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    xor l
    ld l, [hl]
    sub c
    add b
    ld a, a
    sbc [hl]
    ld l, c
    nop
    sbc a
    ld a, [bc]
    dec d
    ld bc, $0e0e
    dec d
    rrca
    inc e
    ld c, $11
    ld bc, $000e

jr_003_5a6c:
    inc bc
    ld bc, $3b3e
    ld d, h
    ld a, b
    add a
    nop
    ld a, a

jr_003_5a75:
    cp $01
    cp $01
    cp $e7
    cp $e7
    cp $67
    ld a, [hl]
    push hl
    ld a, h
    and [hl]
    inc a
    jp nz, $e418

    ldh [$58], a

jr_003_5a89:
    ret nz

    or b
    jr nc, jr_003_5a75

    ldh a, [$c8]
    ldh [rNR10], a
    nop
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
    ld hl, $7120
    ld sp, $397a
    ld h, [hl]
    add hl, sp
    ld h, [hl]
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld h, [hl]
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld h, [hl]

jr_003_5aaf:
    add hl, sp
    ld b, [hl]
    jr c, jr_003_5afa

    ld b, h
    cp e
    nop
    ld c, $0e
    ld sp, $5c3f
    ld a, [hl]
    or c
    cp $41
    rst $20
    jr jr_003_5a89

    dec sp
    xor a
    ld [hl], e
    ld e, $e7
    ld a, $c3
    ld a, $c7
    ld [hl], $c9
    add hl, sp
    add $3e
    pop bc
    nop
    rst $38
    ld a, [hl]
    add c
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $f4
    ldh [$58], a
    ldh a, [$e8]
    ret nz

    or b
    ldh [$d0], a
    add b
    ld h, b
    ret nz

    jr nz, @+$42

    and b
    ret nz

    jr nz, jr_003_5a6c

    ld [hl], b
    ld [hl], b
    ret z

    nop
    rst $38
    cp $e7
    cp $e7
    ld [hl], c
    adc [hl]
    dec c
    ld a, e
    ld l, l

jr_003_5afa:
    db $d3
    ld [hl], d
    call Call_003_6936
    jr nc, jr_003_5b6f

    nop
    ld a, $0e
    dec e
    rra
    jr nc, jr_003_5b17

    db $10
    inc bc
    inc c
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld a, [hl]
    xor l

jr_003_5b17:
    ld l, [hl]
    sub c
    add b
    ld a, a
    sbc [hl]
    ld l, c
    nop
    cp a
    ld a, [hl+]
    ld [hl], l
    scf
    ld c, b
    ld c, b
    rst $30
    ld [hl], c
    jp z, Jump_003_49b0

    ret nz

    jr nc, @-$1e

    db $10
    ldh [rNR10], a
    nop
    ldh [rP1], a
    ld bc, $0000
    cp $01
    cp $01
    cp $e7
    cp $e7
    cp $67
    ld a, [hl]
    push hl
    ld a, h
    and [hl]
    inc a
    jp nz, Jump_003_6498

    ld b, b
    cp [hl]
    ld h, [hl]
    sbc c
    ld b, $79

jr_003_5b4d:
    ld b, $79
    ld a, [hl]
    or c
    db $fc
    ld [bc], a
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop

jr_003_5b5a:
    jr nz, jr_003_5b7c

    ld [hl], b
    jr nc, jr_003_5bd7

    jr c, jr_003_5bc5

    jr c, jr_003_5bc8

    jr c, jr_003_5baa

    add hl, sp
    ld h, [hl]
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld h, [hl]
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, [hl]

jr_003_5b6f:
    ld b, l
    cp d
    ld [hl], c
    adc [hl]
    dec c
    ld a, d
    nop
    nop
    nop
    nop
    nop
    ld c, $0e

jr_003_5b7c:
    ld sp, $5c3f
    ld a, [hl]
    or c
    cp $41
    rst $20
    jr jr_003_5b4d

    dec sp
    xor a
    ld [hl], e
    ld e, $e7
    ld a, $c3
    ld a, $c7
    ld [hl], $c9
    jr c, jr_003_5b5a

    ld a, $c1
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $f4
    ldh [$58], a
    ldh a, [$e8]
    ret nz

Jump_003_5ba4:
    or b
    ldh [$d0], a
    add b
    ld h, b
    ret nz

jr_003_5baa:
    jr nz, @+$42

    and b
    nop
    rst $38
    cp $e7
    cp $e7
    cp $01
    ld l, h
    db $d3
    ld [hl], e
    call z, Call_003_6837
    jr nc, jr_003_5c2c

    nop
    jr nc, jr_003_5bc0

jr_003_5bc0:
    nop
    nop
    ld bc, $0301

jr_003_5bc5:
    ld bc, $0003

jr_003_5bc8:
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    nop
    rra
    rra
    cpl
    ccf
    ld b, b
    nop
    ld a, a
    nop
    rst $38

jr_003_5bd7:
    ld a, [hl]
    xor l
    ld l, [hl]
    sub c
    nop
    ld a, a
    ld e, $29
    nop
    ccf
    ccf
    call c, $a0df
    ret c

    daa
    ld hl, $c6de
    add hl, hl
    add $2d
    ld b, b
    and a
    add b
    ld h, b
    ret nz

    jr nz, jr_003_5bf4

jr_003_5bf4:
    ldh [$fe], a
    ld bc, $e7fe
    cp $e7
    cp $67
    ld a, [hl]
    push hl
    ld a, h
    and [hl]
    inc a
    jp nz, Jump_003_6498

    nop
    ld hl, sp+$70
    adc b
    cp b
    ld b, h
    cp b
    ld h, h

jr_003_5c0d:
    jr c, @-$1a

    jr c, jr_003_5c55

    jr jr_003_5c37

    nop
    jr jr_003_5c16

jr_003_5c16:
    nop
    nop
    nop
    nop

jr_003_5c1a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0102
    ld [bc], a
    ld bc, $0102

jr_003_5c2c:
    ld [bc], a
    ld bc, $0102
    ld c, $0d
    ld a, d
    ld l, l
    jp nc, RST_00

jr_003_5c37:
    nop
    nop
    nop
    ld c, $0e
    ld sp, $5c3f
    ld a, [hl]
    or c
    cp $41
    rst $20
    jr jr_003_5c0d

    dec sp
    xor a
    ld [hl], e
    ld e, $e7
    ld a, $c3
    ld a, $c7
    ld [hl], $c9
    jr c, jr_003_5c1a

    ld a, $c1

jr_003_5c55:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $f4
    ldh [$58], a
    ldh a, [$e8]
    ret nz

    or b
    ldh [$d0], a
    add b
    ld h, b
    ret nz

    jr nz, jr_003_5cac

jr_003_5c6c:
    and b
    nop
    rst $38
    cp $e7
    cp $e7
    cp $01
    ld h, b
    rst $18
    inc bc
    ld a, h
    scf
    ld l, b
    jr nc, jr_003_5cec

    nop
    jr nc, jr_003_5c80

jr_003_5c80:
    nop
    nop

jr_003_5c82:
    ld bc, $0301
    ld bc, $0003
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    nop
    rra
    rra
    cpl
    ccf
    ld b, b
    nop
    ld a, a
    nop
    rst $38
    ld a, [hl]
    xor l
    ld l, [hl]
    sub c
    nop
    ld a, a
    ld e, $29
    nop
    ccf
    ccf
    call c, $a0df
    ret c

    daa
    jr nz, jr_003_5c82

    ret nz

    jr nz, jr_003_5c6c

jr_003_5cac:
    jr nz, @+$42

    and b
    add b
    ld h, b
    ret nz

    ld hl, $e100
    cp $01
    cp $e7
    cp $e7
    cp $67
    ld a, [hl]
    push hl
    ld a, h
    and [hl]
    inc a
    jp nz, Jump_003_6498

    nop
    ld hl, sp-$40
    jr c, jr_003_5d02

    call nz, Call_003_423c
    nop
    ld a, [hl]
    ld a, h
    add d
    cp $01
    nop
    rst $38
    nop
    ld [hl], b
    ld [hl], b
    cp b
    ld a, b
    sbc h
    inc a
    ld c, [hl]
    ld e, $27
    rrca
    inc de
    rlca
    add hl, bc
    inc bc
    inc b
    ld bc, $0002
    ld bc, $0000
    nop

jr_003_5cec:
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_003_5d02:
    ret z

    ret z

    db $f4
    ld hl, sp+$64
    ldh a, [$08]
    ld a, b
    sbc h
    db $fc
    ld c, $9e
    ld h, e
    ld c, $91
    inc b
    ld a, [bc]
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    nop
    ld bc, $0100
    ld bc, $0303
    rlca
    rlca
    ld c, $0f
    inc e
    ld e, $39
    inc a
    ld [hl], d
    ld a, b
    db $e4
    ld [hl], b
    ret z

    ld h, b
    sub b
    nop
    ld h, b
    nop
    inc c
    inc c
    ld a, [de]
    ld e, $b1
    cp h
    ld [hl], d
    ld hl, sp+$24
    ldh a, [$88]
    ldh a, [$88]
    ret c

    inc h
    add b
    ld e, b
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
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld a, l
    rst $38
    add hl, hl
    ld a, a
    ld a, [hl+]
    ld a, l
    rla
    ld l, c
    ccf
    ld h, b
    dec a
    ld b, d
    add hl, hl
    ld d, [hl]
    ld [$0035], sp
    ld [$ff00], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    ld c, e
    rst $38
    ld l, d
    rst $18
    cp $13
    rst $38
    nop
    ld [hl], a
    adc b
    ld d, e
    xor h
    ld b, d
    or l
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    daa
    ld hl, sp+$50
    rst $38
    cpl
    ld a, a
    rra
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    ld [bc], a
    dec b
    dec b
    ld a, [de]
    inc de
    inc l
    ld l, $d1
    db $dd
    inc hl
    db $e3
    rra
    dec e
    rst $38
    di
    rst $38
    xor h
    rst $38
    nop
    nop
    nop
    db $10
    db $10
    jr z, jr_003_5ddc

jr_003_5ddc:
    sbc h
    inc b
    cp $b2
    rst $38
    inc c
    rst $38
    and h
    ld e, a
    ld d, b
    xor [hl]
    xor b
    ld d, [hl]
    inc e
    ld [c], a
    xor h
    ld a, [c]
    ld d, h
    ei
    and $f9
    db $f4
    ei
    ld h, [hl]
    ld sp, hl
    rlca
    rra
    nop
    rlca
    ld [bc], a
    ccf
    inc d
    ld a, a
    jr nz, @+$01

    jr @+$01

    ccf
    ld a, a
    ld c, $3f
    ld bc, $001f
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
    nop
    nop
    nop
    ldh a, [rIE]
    nop
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    dec c
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    or b
    rst $38
    ld b, c
    cp $00
    rst $20
    nop
    rrca
    rlca
    jr jr_003_5e36

    rla
    ld [$0814], sp
    inc d
    nop
    inc e
    ld [hl], h

jr_003_5e36:
    ei
    xor d
    push af
    ld h, h
    ei
    ret c

    and $94
    ld [$d628], a
    ld d, b
    xor h
    and b
    ld e, a
    ld [bc], a
    db $fd
    ld h, h
    sbc d
    adc b
    ld [hl], h
    db $10
    add sp, $60
    sub b
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    add hl, de
    ld a, $0e
    ccf
    dec c
    rra
    ld b, $0f
    ld bc, $0007
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
    add b
    add b
    ld [hl], b
    ret nc

    cpl
    dec a
    jp nz, $f1ce

    or e
    db $fc
    call z, $33ff
    rst $38
    ld e, $3f
    inc bc
    ccf
    db $10
    ccf
    jr nz, jr_003_5f14

    nop
    inc b
    inc b
    ld a, [bc]
    nop
    ld c, [hl]
    nop
    ld l, [hl]
    inc b
    ld l, [hl]
    ld c, h
    cp $5c
    cp $04
    rst $38
    xor d
    ld e, a
    ld d, [hl]
    xor a
    and d
    ld e, a
    ld a, d
    add a
    cp b
    rst $00
    call nc, $c8ea
    or $54
    ld [$0000], a
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0203
    rlca
    inc b
    rrca
    ld [$081f], sp
    rra
    rlca
    rra
    inc bc
    rrca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_003_5f56

    ld b, c
    rst $38
    add c
    rst $38
    add d
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    cp $7a

jr_003_5ee6:
    db $fd
    ldh [rIE], a
    add c
    and $02
    adc l
    inc b
    ld a, [de]
    ld [$0814], sp
    inc d
    nop
    inc e
    ret z

    or $98
    db $e4
    or b
    call z, $dea0
    db $e4
    sbc e
    ld c, b
    or a
    jp nz, $843d

    ld a, e
    jr nz, jr_003_5ee6

    ld d, h
    xor d
    add h
    ld a, d
    nop
    call z, RST_00
    nop
    nop
    nop
    nop
    nop

jr_003_5f14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_003_5f58

    ld b, h
    ld a, h
    sbc d
    ld a, h
    sbc d
    ld a, h
    add d
    ld a, h
    add d
    jr c, @+$46

    nop
    jr c, jr_003_5f2e

jr_003_5f2e:
    nop
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
    ld bc, $070f
    ccf
    jr jr_003_5f7e

    ld [hl-], a
    ld a, l
    add hl, sp
    rst $38
    ld h, [hl]
    rst $38
    ld [hl], b
    rst $38
    ld [hl+], a
    ld a, a
    nop
    ccf
    nop
    rrca
    ld b, $1f
    dec b
    rra
    nop
    rrca
    nop
    dec b
    nop

jr_003_5f56:
    ldh a, [$60]

jr_003_5f58:
    ldh a, [$90]
    ld hl, sp+$60
    sbc h
    sub b
    db $ec
    add b
    ld hl, sp+$40
    and b
    nop
    ret nz

    add b
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [rSVBK]
    ld hl, sp+$50
    ld hl, sp-$70
    db $fc
    sub b
    db $fc

jr_003_5f73:
    jr jr_003_5f73

    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop

jr_003_5f7e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub $f9
    sub d
    db $fd

jr_003_5f99:
    jr c, jr_003_5f99

    jr jr_003_6019

    ld [$0e3e], sp
    dec e
    ld b, $09
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a

jr_003_5faa:
    dec b
    ld [bc], a
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rlca
    rra
    ld [$123f], sp
    ld a, l
    add hl, sp
    ld a, a
    ld [hl], d
    rst $38
    ld [hl], h
    rst $38
    ld a, [hl+]
    ld a, a
    nop
    ccf
    ld [bc], a
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
    ret nz

    add b
    pop hl
    ret nz

    di
    ld [c], a
    cp a
    cp [hl]

jr_003_5fe8:
    db $dd
    inc e
    ld [c], a
    nop
    db $fc
    and b
    ldh a, [$50]
    ld hl, sp-$60
    ld hl, sp+$70
    ld hl, sp+$07
    rrca
    dec b
    rrca
    ld [bc], a
    rrca
    nop
    ld b, $00
    ld c, $06
    dec bc
    ld b, $09
    inc bc
    ld b, $01
    ld [bc], a
    ld bc, $0003
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    db $fc
    ret c

    db $fc

jr_003_6019:
    sbc b
    db $fc
    ld [$26fe], sp
    ld sp, hl
    ld a, [hl]
    ld sp, hl
    ldh a, [$fe]
    ret nz

    ld a, h
    ret nz

    jr nc, jr_003_5fe8

    jr nz, jr_003_5faa

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
    ld bc, $0f01
    rlca
    rra
    ld [$003f], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$e0]
    ld hl, sp-$70
    ld hl, sp+$60
    sbc h
    sbc b
    db $e4
    ld [de], a
    ld a, l
    add hl, sp
    ld a, a
    db $76
    rst $38
    ld l, b
    rst $38
    ld [hl-], a
    ld a, a
    rlca
    ccf
    dec b
    rrca
    ld [bc], a
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    add b
    ld hl, sp+$00
    ldh [rLCDC], a
    or b
    ldh [$78], a
    ld [hl], b
    ld hl, sp+$58
    db $fc
    ret c

    db $fc
    sbc b
    db $fc
    ld [$26fe], sp
    ld sp, hl
    ld a, $f9
    ld [hl], b
    cp $18
    ld h, h
    ld l, h
    ld a, [c]
    db $fc
    ld [de], a
    nop
    cp $00
    nop
    nop
    nop
    nop
    jr c, jr_003_60f4

    ld a, [hl]
    inc h
    rst $38
    ld a, h
    rst $38
    ld h, d
    rst $38
    ld h, h
    rst $38
    ld [hl], d
    rst $38
    dec d
    rst $38
    dec b
    ccf
    add hl, bc
    ccf
    dec b
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rra
    ld e, $7f
    ld h, [hl]
    rst $38
    ld d, e
    rst $38
    xor [hl]
    rst $38
    ld c, e
    rst $38
    add [hl]
    rst $38
    ld l, $df
    ld a, h
    rst $38
    add h
    rst $38
    or l
    rst $38
    jp hl


    rst $38
    xor b
    rst $38
    ld sp, $62ff
    rst $38
    ld h, c

jr_003_60f4:
    rst $38
    nop
    nop
    nop
    nop
    nop
    cp h

jr_003_60fb:
    jr jr_003_60fb

    db $f4
    cp $5c
    cp $8c
    cp $0c
    cp [hl]
    ld [$04fe], sp
    cp $08
    cp $00
    cp $80
    db $fc
    ld b, b
    ldh a, [$80]
    ldh a, [$80]
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
    ld bc, $0300
    ld bc, $0003
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
    ld [bc], a
    rst $28
    dec b
    rrca
    ld [bc], a
    rrca
    ld bc, $000f
    rrca
    rrca
    db $10
    rrca
    ret nc

    sbc h
    db $e3
    call c, $68e3
    push af
    jr nc, @-$02

    jr @+$7e

    jr jr_003_618b

    nop
    inc e
    nop
    nop
    nop
    nop
    ret nz

    ldh a, [rLCDC]
    ldh a, [$e0]
    ldh a, [rP1]
    ldh a, [$60]
    sub b
    ldh [rNR10], a
    ldh [rNR10], a
    db $10
    rst $38
    ld [$761f], a
    adc a
    ld a, d
    add a
    ld a, [de]
    daa
    ld [bc], a
    ld a, a
    ld a, $7f
    inc l
    ld a, [hl]
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
    nop
    add hl, sp
    jr c, jr_003_6204

    inc h
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38

jr_003_618b:
    ld h, l
    rst $38
    ld [hl], e
    rst $38
    dec d
    rst $38
    inc bc
    ccf
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    rra
    ld e, $7f
    ld h, [hl]
    rst $38
    ld d, e
    rst $38
    sbc [hl]
    rst $38
    dec hl
    rst $38
    ld b, [hl]
    rst $38
    adc [hl]
    rst $38
    ld l, h
    rst $18
    add h
    rst $38
    ld [hl], l
    rst $38
    add sp, -$01
    adc c
    rst $38
    ld [$00bf], sp
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
    add b
    nop
    cp h

jr_003_61c3:
    jr jr_003_61c3

    db $f4
    cp $5c
    cp $0c
    cp $08
    cp [hl]
    inc b
    cp $08
    cp $80
    cp $80
    db $fc
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
    nop
    nop
    nop
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
    rrca
    dec b
    rrca
    nop
    rrca
    ld de, $317f
    rst $38
    ld h, d
    rst $38
    ld h, c
    rst $38
    ld [bc], a
    ld l, a
    nop
    rra
    inc e
    inc hl
    ccf

jr_003_6204:
    ld b, b
    dec a
    ld b, d
    ld a, c
    add [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc d
    ld [hl], b
    ld sp, hl
    ldh [$f8], a
    ldh a, [$f8]
    nop
    ld hl, sp-$80
    ldh a, [rLCDC]
    ldh a, [$c0]
    ldh a, [rLCDC]

Jump_003_621c:
    ldh a, [$80]
    ldh a, [rNR41]
    ret nc

    ld h, b
    sbc b
    ret nc

    inc a
    sbc b
    ld a, h
    sbc b
    ld a, [hl]
    db $fc
    ld e, $dc
    ld a, $0c
    cp $08
    ld e, $0c
    ld e, $00
    ld c, $00
    nop
    nop
    nop
    nop
    jr c, jr_003_6274

    ld a, [hl]
    inc h
    rst $38
    ld a, h
    rst $38
    ld h, d
    rst $38
    ld h, h
    rst $38
    ld [hl], d
    rst $38
    dec d
    rst $38
    dec b
    ccf
    add hl, bc
    ccf
    dec b
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rra
    ld e, $7f
    ld h, [hl]
    rst $38
    ld d, e
    rst $38
    xor [hl]
    rst $38
    ld c, e
    rst $38
    add [hl]
    rst $38
    ld l, $df
    ld a, h
    rst $38
    add h
    rst $38
    or l
    rst $38
    jp hl


    rst $38
    xor b
    rst $38
    ld sp, $62ff
    rst $38
    ld h, c

jr_003_6274:
    rst $38
    nop

jr_003_6276:
    nop
    nop
    nop
    nop
    cp h

jr_003_627b:
    jr jr_003_627b

    db $f4
    cp $5c
    cp $8c
    cp $0c
    cp [hl]
    ld [$04fe], sp
    cp $08
    cp $00
    cp $80
    db $fc
    ld b, b
    ldh a, [$80]
    ldh a, [$80]
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

jr_003_62aa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_62b4:
    nop
    ld bc, $02ef
    rrca
    ld bc, $020f
    rrca
    nop
    rrca
    nop
    rlca
    inc bc

jr_003_62c2:
    inc b
    nop
    rlca
    nop
    rlca
    ld [bc], a
    dec b
    nop
    inc bc
    nop

jr_003_62cc:
    ld bc, $0f00
    rrca
    rra
    rla
    ccf
    nop
    rra
    ld b, b
    ldh a, [$c0]
    ldh a, [rLCDC]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [$e0]
    jr nc, jr_003_62c2

    jr c, jr_003_62b4

    jr c, jr_003_6276

    ld a, b
    ret nc

    jr c, jr_003_62aa

    jr c, jr_003_62cc

    jr @-$1e

    db $10
    ret nz

    ldh a, [$e0]
    ldh a, [rP1]
    ldh a, [rP1]
    rla
    rla
    add hl, sp
    rra
    scf
    inc sp
    ld c, a
    dec a
    ld c, a
    ld [hl], a
    adc e
    inc hl
    db $dd
    ld [hl], l
    sbc [hl]
    ld a, c
    sbc [hl]
    cpl
    ld d, a
    ld d, $29
    ld a, [bc]
    rla
    dec c
    ld [de], a
    ld b, $09
    inc bc
    dec b
    nop
    inc bc
    nop
    rlca
    dec b
    dec de
    dec e
    inc hl
    inc a
    ld c, e
    dec a
    ld c, e
    ld a, l
    sbc e
    ld a, l
    sub e
    ld a, e
    add a
    dec sp
    ld b, a
    dec e
    inc hl
    ld b, $19
    ld [bc], a
    dec b
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ldh [rSVBK], a
    ldh a, [$78]
    or b
    ld e, b
    sbc b
    ld l, h
    xor h
    db $76
    call z, $feb2
    rst $38
    cp h
    jp z, $bcc8

    ret nz

    ld a, b
    ldh [$58], a
    ldh a, [$28]
    ld a, b
    sbc h
    nop
    ld a, b
    nop
    rla
    rla
    jr c, jr_003_6379

    inc hl
    ccf
    ld b, a
    ccf
    ld c, a
    ld a, a
    adc a
    rra
    rst $20
    ld e, a
    and a
    ld l, a
    sub e
    inc sp
    ld c, h
    inc e
    inc hl
    rrca
    db $10
    rrca
    db $10
    rlca
    ld [$0403], sp
    nop
    inc bc
    nop
    nop
    nop
    nop

jr_003_6379:
    nop
    rra
    inc b
    ccf
    add hl, bc
    ld a, a
    inc de
    rst $38
    dec hl
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    ld [de], a
    rst $38
    add hl, bc
    ld a, a
    ld [bc], a
    ccf
    nop
    rrca
    nop
    ld bc, $0200
    nop
    db $e4
    nop
    rst $38
    and c
    rst $38
    ld d, d
    rst $38
    cp c
    rst $38
    cp l
    rst $38
    cp a
    rst $30
    cp a
    ld sp, hl
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rra
    ld a, [$fd5b]
    adc d
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rNR41]
    db $fc
    sub b

jr_003_63be:
    cp $98
    cp $dc
    rst $38
    ret c

    rst $28
    db $ec
    rst $18
    ld hl, sp-$01
    call c, $f8ff
    ld a, [hl]
    ldh a, [$ae]
    ldh a, [$dc]
    nop
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    dec b
    ld bc, $0706
    ld [$0807], sp
    rlca
    add hl, bc
    rrca
    inc de
    rrca
    inc de
    rrca
    inc de
    dec c
    inc de
    ld [bc], a
    dec c
    ld bc, $0006
    inc bc
    nop
    add b
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_003_63be

    jr nz, @-$1e

    db $10
    ldh [$90], a
    ldh [$90], a
    ldh [$d0], a
    ldh a, [$c8]
    ldh a, [$c8]
    ldh a, [$88]
    ret nc

    xor b
    and b
    ld d, b
    ld b, b
    and b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [$0b00], sp
    ld bc, $011b
    dec de
    db $10
    add hl, sp
    db $10
    jr c, jr_003_6464

    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add c
    rst $38
    rst $38
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    jr nz, jr_003_64d0

    ld [hl], b
    reti


    ld l, b
    db $dd
    ld [hl], h
    cp [hl]
    ld l, b
    cp a
    ld [hl], h
    cp a
    ld l, b
    cp a
    ld [hl], b

jr_003_6464:
    ld hl, sp+$70
    ld hl, sp+$40
    ei
    nop
    ld c, e
    nop
    ld b, d
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    cp l
    db $db
    and l
    rst $38
    inc a
    rst $38
    inc a
    rst $20
    jr jr_003_64fd

    ld b, d
    rst $38
    ld h, [hl]
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    add c
    rst $20
    nop
    rst $20
    nop
    and l
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_003_6498:
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld d, $00
    ld d, $00
    scf
    dec h
    ld a, a
    ld [hl+], a
    ld a, a
    ld [hl], h
    cp a
    ld a, b
    cp a
    ld [hl], h
    cp a
    ld a, b
    cp a
    ld [hl], h
    cp a
    ld d, e
    cp a
    ld h, a
    cp $0f
    ei
    dec sp
    push af
    inc a
    ei
    add hl, de
    rst $38
    rrca
    ld a, a
    inc e
    ld a, a
    db $10
    inc a
    nop
    jr nc, jr_003_64d0

jr_003_64d0:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    or b
    ld a, a
    or l
    ld a, a
    or a
    ld a, a
    or l
    ld a, a
    or b
    ld a, a
    or e
    ld a, a
    or c
    ld a, a
    or b
    ld a, a
    or l
    ld a, a
    or a
    ld a, a
    or b
    nop
    rst $38
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    nop
    db $fc
    ld hl, sp+$04
    ld hl, sp-$2c
    ldh a, [$7c]

jr_003_64fd:
    db $ec
    sbc $de
    ccf
    sbc $ff
    sbc $6d
    db $ec
    ld [de], a
    ldh a, [$bc]
    ld hl, sp-$2c
    ld hl, sp+$04
    nop
    db $fc
    ld b, b
    ldh [$e0], a
    ldh a, [$f0]
    add sp, $00
    nop
    nop
    rst $38
    ld a, a
    or b

Jump_003_651b:
    ld a, a
    or l
    ld a, a
    or a
    ld a, a
    or l
    ld a, a
    or b
    ld a, a
    or e
    ld a, a
    or c
    ld a, a
    or b
    ld a, a
    or l
    ld a, a
    or a
    ld a, a
    or b
    nop
    rst $38
    ld a, $4f
    ld a, a
    cp [hl]
    nop
    nop
    nop
    db $fc
    ld hl, sp+$04
    ld hl, sp-$2c
    ldh a, [$7c]
    db $ec
    sbc $de
    ccf
    sbc $ff
    sbc $6d
    db $ec
    ld [de], a
    ldh a, [$bc]
    ld hl, sp-$2c
    ld hl, sp+$04
    ld [bc], a
    cp $3e
    ld e, $7c
    cp h
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
    ld hl, sp-$21
    ld hl, sp+$3b
    inc a
    dec l
    ld a, $37
    cpl
    ld e, e
    ld h, a
    ld l, [hl]
    ld e, a
    or c
    pop af
    pop bc
    pop bc
    nop
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
    ld bc, $0307
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
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
    ret nz

    add b
    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

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
    rlca
    inc bc
    rrca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
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
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
    rrca
    rrca
    rra
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rlca
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
    ldh [$c0], a
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh [$c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
    rrca
    rrca
    rra
    rla
    ccf
    ccf
    ccf
    ccf
    ccf
    inc de
    rra
    rrca
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rlca
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    add b
    ret nz

    ret nz

    ld hl, sp-$28
    db $fc
    db $fc
    cp $fc
    cp $fe
    cp $fe
    cp $ec
    db $fc
    ldh a, [$f8]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$e0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld c, $1f
    rra
    rra
    rra
    rra
    ld e, $1f
    inc c
    inc bc
    ld bc, $0307
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
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
    ld hl, sp+$70
    ld hl, sp-$08
    ld hl, sp+$38
    ld hl, sp-$28
    ld hl, sp-$20
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$c0], a
    nop
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
    ld [$1c1c], sp
    inc e
    ld [$0000], sp
    nop
    nop
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    inc a
    jr jr_003_671a

    inc a
    inc a
    inc a
    inc a
    jr jr_003_66e4

jr_003_66e4:
    nop
    ret nz

    add b
    call z, $dec0
    call z, $ccde
    call z, Call_000_0080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
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

jr_003_671a:
    nop
    stop
    jr c, jr_003_672f

    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld c, $04
    inc b
    nop

jr_003_672f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    rrca
    dec [hl]
    ld [hl-], a
    ld l, a
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld c, c
    rst $30
    ld c, c
    rst $30
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl-], a
    ld l, a
    dec c
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$78
    add a
    cp [hl]
    ret


    cp [hl]
    ld e, l
    ld a, $dd
    cp [hl]
    ld e, l
    cp [hl]
    ld e, l
    cp [hl]
    ld e, l
    cp [hl]
    ld c, c
    ld a, $c1
    cp [hl]
    ld b, c
    inc e
    db $e3
    nop
    nop
    nop
    nop
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

    jr nz, @-$1e

    sub b
    ldh [$d8], a
    add sp, -$2c
    db $ec
    jp nc, Jump_003_56ec

    xor $15
    xor $11
    ld b, h
    cp d
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
    dec b
    rlca
    ld a, [de]
    add hl, de
    scf
    ccf
    ld a, e
    ccf

jr_003_67a8:
    ld a, e
    inc h
    ld a, e
    inc h
    ld a, e
    dec sp
    ld a, a
    dec sp
    ld a, a
    add hl, de
    scf
    ld b, $19
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$48
    rst $00
    sbc $e9
    ld e, [hl]
    xor l
    sbc [hl]
    db $ed
    sbc $ad
    sbc $ad
    sbc $ad
    sbc $a9
    sbc [hl]
    pop hl
    ld e, [hl]
    and c
    adc h
    ld [hl], e
    nop
    nop
    nop
    nop
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

    jr nz, jr_003_67a8

    or b
    ret nc

    xor b
    ret c

    and h
    ret c

    xor h
    call c, $dc2a
    ld [hl+], a
    adc b
    ld [hl], h
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
    dec c
    inc c
    dec de
    rra
    dec a
    rra

jr_003_6808:
    dec a
    ld [de], a
    dec a
    ld [de], a
    dec a
    dec e
    ccf
    dec e
    ccf
    inc c
    dec de
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
    db $fc
    call c, $eee3
    ld [hl], l
    xor [hl]
    rst $10
    adc $f7
    xor $d7
    ld l, [hl]
    rst $10
    ld l, [hl]
    rst $10
    xor $d5
    adc $f1
    xor [hl]
    pop de
    ld b, h
    cp e
    nop
    nop

Call_003_6837:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_003_6842:
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_003_6808

    or b
    ret nc

    xor b
    ret nc

    xor b
    ret c

    or h
    ret c

    inc [hl]
    ret c

    inc h
    sub b
    ld l, b
    nop
    nop
    ccf
    rlca
    ld a, a
    rrca
    ld a, a
    rrca
    ccf
    rlca
    rrca
    nop
    ccf
    inc bc
    ccf
    inc bc
    rra
    ld bc, $011f
    rra
    ld bc, $000f
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    db $fc
    ld hl, sp-$02
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    nop
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f8]

jr_003_6888:
    ldh a, [$f8]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    ldh [rLCDC], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_68aa:
    nop
    nop
    nop
    ld [$b508], sp
    inc d
    ld h, a
    ld h, e
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_68c6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    jr nc, jr_003_68aa

    jp z, Jump_000_0404

    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld h, e
    ld b, e
    db $fd
    ld bc, $03c2
    inc b
    inc bc
    inc b
    ld bc, $43c2
    db $fd
    ccf
    ld h, e
    ccf
    ld a, a
    rra
    ccf
    rlca
    rra
    nop
    rlca
    nop
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fc
    add $c2
    cp a
    add b
    ld b, e
    ret nz

    jr nz, jr_003_68c6

    jr nz, jr_003_6888

    ld b, e
    jp nz, $fcbf

    add $fc
    cp $f8
    db $fc
    ldh [$f8], a
    nop
    ldh [rP1], a
    ld b, $04
    ld e, $18
    inc a
    jr c, @+$76

    jr c, jr_003_6993

    ld a, b
    push af
    ld a, l
    ld a, [$fc7f]
    ld a, a
    db $fc
    ld a, l
    ld a, [$f578]
    jr c, @+$76

    jr c, jr_003_69a3

    jr jr_003_696d

    inc b
    ld e, $00
    ld b, $00

Call_003_6936:
    ld h, b
    jr nz, jr_003_69b1

    jr jr_003_6977

    inc e
    ld l, $1c
    ld l, $1e
    xor a
    cp [hl]
    ld e, a
    cp $3f
    cp $3f
    cp [hl]
    ld e, a
    ld e, $af
    inc e
    ld l, $1c
    ld l, $18
    inc a
    jr nz, jr_003_69cb

    nop
    ld h, b
    nop
    db $10
    db $10
    jr z, jr_003_6972

    inc h
    inc d
    ld a, [hl+]
    ld [bc], a
    dec a
    add hl, sp
    ld b, [hl]
    inc h
    ld e, e
    ld [hl+], a
    ld d, l
    ld hl, $0756
    ld a, b
    inc a
    ld b, e
    jr nc, jr_003_69ba

jr_003_696d:
    jr nz, jr_003_69c8

    jr nz, jr_003_69cc

    ld [hl+], a

jr_003_6972:
    ld e, l
    inc sp
    ld c, h
    nop
    nop

jr_003_6977:
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    ld c, $ff
    rra
    rst $38
    ld c, $ff
    nop
    db $e3
    inc e
    ld a, [hl]
    add c
    sbc l
    db $e3
    jp $a5ff


    rst $38

jr_003_6993:
    ld h, [hl]
    rst $38
    inc de
    inc l
    add hl, de
    ld h, $08
    dec d
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    nop
    ld b, $00
    nop

jr_003_69a3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_69b1:
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    add b

jr_003_69ba:
    ld a, a
    ld h, e
    cp [hl]
    ld a, $c1
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_69c8:
    nop
    nop
    nop

jr_003_69cb:
    nop

jr_003_69cc:
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    rra
    jr jr_003_6a20

    ld d, $3f
    rrca
    rra
    rlca
    rra
    dec bc
    rra
    inc bc
    rra
    ld b, $1f
    nop
    ld a, a
    ld [hl], b
    adc a
    ld h, $5f
    ld e, $3f
    nop
    nop
    nop
    nop
    nop
    cp h
    cp h
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, c
    rst $38
    ld e, [hl]
    pop hl
    cp a
    ret nz

    or e
    call z, $d22d
    adc [hl]
    pop af
    sbc [hl]
    pop hl
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$78
    db $fc
    sbc b

jr_003_6a20:
    db $fc
    sbc b
    db $fc
    ret c

    db $fc
    ret z

    db $fc
    ret z

    db $fc
    ret nz

    add sp, $40
    ldh a, [$30]
    ret z

    ld [hl], b
    adc b
    ld h, b
    sub b
    db $10
    add sp, $1e
    ccf
    rra
    ccf
    rra
    ccf
    ld c, $1f
    ld de, $0f2e
    db $10
    rrca
    db $10
    rlca
    ld [$0601], sp
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
    ld bc, $e3dc
    ld e, l
    ld [c], a
    ld b, e
    db $fc
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, $ff
    nop
    nop
    rst $38
    ld a, [hl]
    sbc l
    nop
    ld a, [hl]
    ld a, [hl]
    sbc l
    nop
    ld a, [hl]
    ld a, [hl]
    cp l
    rst $38
    ld a, [hl]
    ld a, b
    add h
    ld hl, sp+$04
    ld hl, sp+$24
    ld hl, sp+$64
    ld hl, sp-$3c
    ldh a, [$c8]
    ldh a, [$88]
    ldh [rNR10], a
    add b
    ld h, b
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
    inc bc
    inc bc
    rrca
    rrca
    rra
    jr jr_003_6aec

    ld d, $3f
    rrca
    rra
    rlca
    rra
    dec bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    cp h
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld h, b
    rst $38
    ld d, a
    add sp, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$78
    db $fc
    sbc b

jr_003_6aec:
    db $fc
    sbc b
    db $fc
    ret c

    db $fc
    ret z

    db $fc
    ld c, b
    db $fc
    inc bc
    rra
    nop
    ccf
    ccf
    ld b, b
    ld de, $0e2e
    ld de, $201f

jr_003_6b01:
    rra
    jr nz, jr_003_6b23

    jr nz, jr_003_6b25

    jr nz, jr_003_6b27

    jr nz, jr_003_6b19

    db $10
    rrca
    db $10
    rlca
    ld [$0601], sp
    nop
    ld bc, $0100
    dec hl
    call nc, $ef90

jr_003_6b19:
    rrca
    rst $38
    add b
    ld a, a
    rst $28
    rra
    rra
    rst $38
    rst $10
    ccf

jr_003_6b23:
    rst $28
    rra

jr_003_6b25:
    ldh a, [rIF]

jr_003_6b27:
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, $ff
    nop
    nop
    rst $38
    rst $38
    ld a, [hl]
    add b
    ld a, b
    jr nc, jr_003_6b01

    ret nc

    add sp, $00
    ret nc

    ret nc

    add sp, -$28
    db $e4
    ret c

    db $e4
    cp b
    db $e4
    ld a, b
    db $e4
    ld hl, sp-$3c
    ldh a, [$c8]
    ldh a, [$88]
    ldh [rNR10], a
    add b
    ld h, b
    nop
    add b
    nop
    add b
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    jr jr_003_6b9c

    nop
    ccf
    ccf
    ld b, b
    ld de, $0e2e
    ld de, $201f
    rra
    jr nz, jr_003_6b89

    jr nz, jr_003_6b8b

    jr nz, jr_003_6b7d

    db $10
    rrca
    db $10
    rlca
    ld [$0601], sp
    nop
    cp h
    cp h
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38

jr_003_6b7d:
    ld h, c
    rst $38
    ld h, b
    rst $38
    adc a
    ld a, a
    rst $18
    ccf
    rra
    rst $38
    rst $28
    rra

jr_003_6b89:
    ldh a, [rIF]

jr_003_6b8b:
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, $ff
    nop
    nop
    ld a, b
    ld a, b
    db $fc
    ld c, h
    cp $8c

jr_003_6b9c:
    cp $b4
    adc $74
    adc [hl]
    and b
    call c, $e890
    cp b
    call nz, $a478
    ld hl, sp+$64
    ld hl, sp-$3c
    ldh a, [$c8]
    ldh a, [$88]
    ldh [rNR10], a
    add b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_003_6bd6

    inc l
    inc a
    ld b, [hl]
    inc h
    ld e, d
    ld b, d
    and l
    ld b, d
    and l
    inc h
    ld e, d
    inc a
    ld b, [hl]
    jr jr_003_6bf9

    nop
    jr jr_003_6bd0

jr_003_6bd0:
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_6bd6:
    nop
    nop
    nop
    nop
    ld h, b
    jr nz, jr_003_6c38

    ld a, [de]
    dec h
    dec d
    ld a, [hl+]
    rrca
    db $10
    ld de, $0c2e
    inc sp
    inc de
    ld l, h
    ld sp, $1a4e
    ld h, a
    add hl, hl
    ld d, a
    inc e

jr_003_6bf0:
    ld h, e
    ld l, $51

jr_003_6bf3:
    rra

jr_003_6bf4:
    ld h, b
    nop
    nop
    nop
    nop

jr_003_6bf9:
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    jp nz, $e53d

    ld a, [de]
    rst $28
    db $10
    ld a, [hl]
    add c
    jr jr_003_6bf0

    sbc c
    ld h, [hl]
    jr jr_003_6bf4

    db $db
    rst $20
    or l
    bit 4, [hl]
    sbc c
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    jp c, $a458

    xor b
    ld d, h
    ldh a, [$08]
    adc b
    ld [hl], h
    jr nc, jr_003_6bf3

    ret z

    ld [hl], $8c
    ld [hl], d
    ld e, b
    and $94
    ld [$c638], a
    ld [hl], h
    adc d
    ld hl, sp+$06
    rla
    ld l, b
    dec de

jr_003_6c38:
    inc h
    inc c
    inc sp
    ld b, $19
    inc bc
    inc c
    ld bc, $0006
    inc bc
    nop
    nop
    nop
    nop

jr_003_6c47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp Jump_000_003c


    rst $38
    ld [hl], $c9
    inc e
    db $e3
    adc c
    db $76
    ld b, d
    cp l
    cp l
    ld b, d
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
    add sp, $16
    ret c

    inc h
    jr nc, jr_003_6c47

    ld h, b
    sbc b
    ret nz

    jr nc, @-$7e

    ld h, b
    nop
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
    inc c
    rrca
    db $10
    rra
    jr nz, jr_003_6cd5

    ld c, b
    cpl
    ld d, b
    ld e, a
    and b
    cpl
    ret nc

    ld e, a
    and b
    cpl
    ret nc

    rla

jr_003_6caa:
    ld l, b
    dec hl
    ld d, h
    dec d
    ld a, [hl+]
    ld a, [bc]
    dec d
    ld bc, $000e
    inc bc
    nop
    ret nz

    ret nz

    jr nc, jr_003_6caa

    ld [$74f8], sp
    db $fc
    ld a, [$fafc]
    cp $f9
    cp $71
    cp $01
    cp $01
    db $fc
    ld [bc], a
    db $ec
    ld [de], a
    ld e, b
    and h
    and b
    ld e, b
    ld b, b
    or b
    nop
    ret nz

jr_003_6cd5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    add hl, de
    rra
    jr nz, jr_003_6d42

    ld h, l
    jr nc, @+$51

    nop
    jr nc, jr_003_6d0e

jr_003_6d0e:
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

jr_003_6d1a:
    nop
    nop
    nop
    nop
    ld b, $06
    ret


    ret z

    or $7c
    jp nz, Jump_000_06f8

    db $f4
    ld a, [bc]
    add sp, $14
    ld d, b
    xor b
    ld h, b
    sub b
    ld d, b
    xor b
    ld h, b
    sbc b
    ret nc

    jr z, jr_003_6d36

jr_003_6d36:
    nop
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

jr_003_6d42:
    inc b
    ld bc, $0102
    ld [bc], a
    ld bc, $0002
    ld bc, $0100
    nop
    nop
    nop
    dec c
    dec c
    ld [de], a
    rla
    jr z, @+$03

    ld b, $07
    ld [$100f], sp
    rlca
    jr jr_003_6d7a

    db $e3
    pop af
    ld c, $82
    ld a, l
    ld [bc], a
    add l
    ld [bc], a
    add l
    inc bc
    add h
    add d
    ld b, l
    add b
    ld b, d
    ld b, b
    and b
    ld b, b
    and b
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR23], a
    ret nc

    jr z, jr_003_6d1a

jr_003_6d7a:
    ld e, b
    ld b, b
    or b
    and b
    ld d, b
    ld b, b
    and h
    inc b
    jp c, Jump_003_621c

    db $76
    adc c
    add $39
    ld [bc], a
    push bc
    ld b, $09
    inc b
    dec bc
    ld [bc], a
    dec b
    nop
    ld [bc], a

Jump_003_6d93:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    add hl, de
    rra
    jr nz, jr_003_6e02

    ld h, l
    jr nc, @+$51

    nop
    jr nc, jr_003_6dce

jr_003_6dce:
    nop
    nop

jr_003_6dd0:
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop

jr_003_6dda:
    nop
    nop
    nop
    nop
    ld b, $06
    ret


    ret z

    or $7c
    jp nz, Jump_000_06f8

    db $f4
    ld a, [bc]
    add sp, $14
    ld d, b
    xor b
    ld h, b
    sub b
    ld d, b
    xor b
    ld h, b
    sbc b
    ret nc

    jr z, jr_003_6df6

jr_003_6df6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_6e02:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0706
    ld [$100f], sp
    rrca
    db $10
    ld a, [bc]
    dec d
    dec b
    ld a, [bc]
    ld a, [bc]
    dec d
    ld [de], a
    dec l
    ccf
    ld b, b
    ld bc, $013e
    ld [bc], a
    nop
    ld bc, $0201
    ld bc, $1a1a
    dec h
    cpl
    ld d, b
    ldh [rNR23], a
    ret nc

    jr z, jr_003_6dda

    ld e, b
    ld b, b
    or b
    and b
    ld d, b
    ld b, b
    and b
    nop
    ret nz

    nop
    and $e6
    add hl, de
    inc a
    jp nz, $e418

    ld [hl], b
    adc b
    ret nz

    jr nc, jr_003_6dd0

    ld b, b
    ld b, b
    and b
    ldh [rNR10], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_6e63:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    add hl, de
    rra
    jr nz, jr_003_6ec2

    ld h, l
    jr nc, jr_003_6eda

    nop
    jr nc, jr_003_6e8e

jr_003_6e8e:
    nop
    nop
    ld b, b
    ld b, b
    and b
    ld h, b
    sub c
    nop
    nop
    nop
    nop
    nop

jr_003_6e9a:
    nop
    nop
    nop
    nop
    ld b, $06
    ret


    ret z

    or $7c
    jp nz, Jump_000_06f8

    db $f4
    ld a, [bc]
    add sp, $14
    ld d, b
    xor b
    ld h, b
    sub b
    ld d, b
    xor b
    ld h, b
    sbc b
    ret nc

    jr z, jr_003_6eb6

jr_003_6eb6:
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld sp, $4e31
    rra

jr_003_6ec2:
    jr nz, jr_003_6ecb

    jr @+$03

    ld b, $00
    ld bc, $0000

jr_003_6ecb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    adc d
    ld e, e
    and h
    rst $08

jr_003_6eda:
    jr nc, jr_003_6e63

    ld c, b
    adc d
    ld d, l
    adc l
    ld d, d
    rlca
    adc b
    ld bc, $0186
    add d
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rNR23], a
    ret nc

    jr z, jr_003_6e9a

    ld e, b
    ld b, b
    or b
    and b
    ld d, b
    ld b, b
    and b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ldh a, [$f0]
    inc c
    inc e
    ld [c], a
    ld b, $19
    ld b, $19
    ld e, $21
    ld l, $51
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld h, b
    ld a, a
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    jr nz, jr_003_6f77

    ld [bc], a

jr_003_6f77:
    inc bc
    inc b
    inc bc
    inc b
    rlca
    ld [$0906], sp
    ld c, $11
    rrca
    ld de, $110f
    rlca
    add hl, bc
    rlca
    ld [$0403], sp
    ld bc, $0e1f
    dec a
    rra
    jr z, jr_003_6fb1

    jr nz, jr_003_6f94

jr_003_6f94:
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld [hl], e
    adc h
    inc hl
    call c, Call_003_54af
    ld [hl], a
    call c, $dc77
    rst $38
    adc b
    rst $38
    inc bc
    rst $38
    adc a
    cp $ff
    ld a, h
    rst $38

jr_003_6fb1:
    add c
    ld a, [hl]
    nop
    db $e3
    ldh [$90], a
    ldh a, [$c8]
    ldh a, [rBCPS]
    ld hl, sp+$24
    ld hl, sp+$34
    db $fc
    ld a, [de]
    db $fc
    ld a, [bc]
    db $fc
    ld a, [bc]
    db $fc
    ld [bc], a
    db $fc
    ld [hl], d
    ld hl, sp-$04
    nop
    ld hl, sp+$70
    adc h
    db $fc
    ld a, [de]
    db $fc
    ld [bc], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_6ff0:
    ld bc, $0100
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, $4c3f
    ld a, a
    add e
    rst $38
    ld bc, $00ff
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
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_003_6ff0

    and b
    ldh [$90], a
    ldh [$50], a
    ld bc, $0202
    dec b
    ld [bc], a
    dec b
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0003
    rra
    rrca
    inc a
    rra
    jr z, jr_003_7071

    jr nz, jr_003_7054

jr_003_7054:
    ccf
    rst $38
    nop
    ei
    inc b
    ld [hl], e
    adc h
    daa
    ret c

    xor a
    ld d, h
    ld [hl], a
    call c, $dc77
    rst $38
    adc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    cp $ff
    ld a, h
    rst $38
    add c
    ld a, [hl]

jr_003_7071:
    pop bc
    ld [hl+], a
    nop
    db $e3
    ldh a, [rBCPS]
    ldh a, [$28]
    ldh a, [$28]
    ldh a, [$28]
    ldh a, [$28]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$e8]
    ldh [$f0], a
    add b
    ldh a, [rSVBK]
    adc b
    ld hl, sp+$04
    db $fc
    ld a, [de]
    db $fc
    ld [bc], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld h, b
    ccf
    jp nz, $837f

    rst $38

jr_003_70d4:
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
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_003_70d4

    sub b
    nop
    inc bc
    ld bc, $0106
    ld b, $03
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld [bc], a
    dec b
    nop
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    inc bc
    dec b
    nop
    rra
    rrca
    inc a
    rra
    jr z, jr_003_7131

    jr nz, jr_003_7114

jr_003_7114:
    ccf
    ld [hl], e
    adc h
    daa
    call c, $d8ff
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_003_7129:
    inc bc
    rst $38
    adc a
    rst $38
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]

jr_003_7131:
    pop bc
    ld a, $00
    db $e3
    ldh [$d0], a
    ldh a, [rOBP0]
    ldh a, [rBCPS]
    ldh a, [$28]
    ld hl, sp+$34
    ld hl, sp+$14
    ld a, b
    add h
    jr jr_003_7129

    ld [$f8f4], sp
    db $f4
    adc b
    db $f4
    ld [hl], b
    adc b
    ld hl, sp+$04
    db $fc
    ld a, [de]
    db $fc
    ld [bc], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld h, b
    dec a
    jp nz, Jump_003_6d93

    rst $38
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    and b
    ldh [$d0], a
    ld bc, $0302
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    nop
    rlca
    nop
    rlca
    ld [bc], a
    dec b

jr_003_71c5:
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    inc bc
    dec b
    nop
    rra
    rrca
    inc a
    rra
    jr z, jr_003_71f1

    jr nz, jr_003_71d4

jr_003_71d4:
    ccf
    rst $38
    nop
    rlca
    ld hl, sp+$03
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

jr_003_71e7:
    nop
    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]

jr_003_71f1:
    pop bc
    ld a, $00
    db $e3
    ldh [$50], a
    ldh a, [rBCPS]
    ldh a, [$28]
    ldh a, [$38]
    ld a, b
    sub h
    jr c, jr_003_71c5

    jr jr_003_71e7

    ld [$08f4], sp
    db $f4
    ld hl, sp-$0c
    adc b
    db $f4
    ld [hl], b
    adc b
    ld hl, sp+$04
    db $fc
    ld a, [de]
    db $fc
    ld [bc], a
    nop
    cp $00
    jr nz, jr_003_7238

    ld d, a
    ld h, a
    sbc a
    dec de
    ld h, a
    ld l, e
    sub a
    ld h, $5f
    cpl
    rst $18
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    nop
    rra
    nop
    nop
    nop

jr_003_7238:
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    inc l
    cp $fc
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    cp $fc
    cp $f8
    db $fc
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
    db $10
    db $10
    cp d
    ld a, [hl-]
    rst $38
    ld l, h
    cp $38
    ld a, h
    inc h
    ld a, [hl]
    ld b, d
    rst $20
    nop
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ccf
    db $d3
    ld a, a
    xor l
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    or [hl]
    ccf
    call z, $9b76
    add hl, sp
    add $46
    cp c
    add hl, de
    and $00
    rst $38
    nop
    ld a, a
    nop
    rst $38
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    or d
    rst $38
    ld h, h
    cp $d9
    ld a, e
    and [hl]
    add $39
    inc sp
    call z, $ff00
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr c, jr_003_72f4

    ld a, [hl]
    inc h
    rst $38
    ld a, h
    rst $38
    ld h, d
    rst $38
    ld h, h
    rst $38
    ld [hl], d
    rst $38
    dec d
    rst $38
    dec b
    ccf
    add hl, bc
    ccf
    dec b
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rra
    ld e, $7f
    ld h, [hl]
    rst $38
    ld d, e
    rst $38
    xor [hl]
    rst $38
    ld c, e
    rst $38
    add [hl]
    rst $38
    ld l, $df
    ld a, h
    rst $38
    add h
    rst $38
    or l
    rst $38
    jp hl


    rst $38
    xor b
    rst $38
    ld sp, $62ff
    rst $38
    ld h, c

jr_003_72f4:
    rst $38
    nop
    nop
    nop
    nop
    nop
    cp h

jr_003_72fb:
    jr jr_003_72fb

    db $f4
    cp $5c
    cp $8c
    cp $0c
    cp [hl]
    ld [$04fe], sp
    cp $08
    cp $00
    cp $80
    db $fc
    ld b, b
    ldh a, [$80]
    ldh a, [$80]
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
    ld bc, $0300
    ld bc, $0003
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
    ld [bc], a
    rst $28
    dec b
    rrca
    ld [bc], a
    rrca
    ld bc, $000f
    rrca
    dec b
    rra
    ld a, [bc]
    rst $18
    sub h
    rst $38
    call c, $68ff
    db $fd
    jr nc, @-$02

    jr @+$7e

    jr jr_003_738b

    nop
    inc e
    nop
    nop
    nop
    nop
    ret nz

    ldh a, [rLCDC]
    ldh a, [$e0]
    ldh a, [rLCDC]
    ldh a, [$a0]
    ldh a, [rLCDC]
    ldh a, [$a0]
    ldh a, [rP1]
    cp $a8
    rst $38
    ld d, $ff
    ld a, [bc]
    ccf
    ld [de], a
    ccf
    ld [bc], a
    ld a, a
    ld a, $7f
    inc l
    ld a, [hl]
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
    nop
    add hl, sp
    jr c, jr_003_7404

    inc h
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38

jr_003_738b:
    ld h, l
    rst $38
    ld [hl], e
    rst $38
    dec d
    rst $38
    inc bc
    ccf
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    rra
    ld e, $7f
    ld h, [hl]
    rst $38
    ld d, e
    rst $38
    sbc [hl]
    rst $38
    dec hl
    rst $38
    ld b, [hl]
    rst $38
    adc [hl]
    rst $38
    ld l, h
    rst $18
    add h
    rst $38
    ld [hl], l
    rst $38
    add sp, -$01
    adc c
    rst $38
    ld [$00bf], sp
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
    add b
    nop
    cp h

jr_003_73c3:
    jr jr_003_73c3

    db $f4
    cp $5c
    cp $0c
    cp $08
    cp [hl]
    inc b
    cp $08
    cp $80
    cp $80
    db $fc
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
    nop
    nop
    nop
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
    rrca
    dec b
    rrca
    nop
    rrca
    ld de, $317f
    rst $38
    ld h, d
    rst $38
    ld h, c
    rst $38
    ld [bc], a
    ld l, a
    nop
    rra
    dec d
    ccf
    ld a, [hl+]

jr_003_7404:
    ld a, a
    dec d
    ld a, a
    jr z, @+$01

    ld d, c
    rst $38
    jr nz, @-$03

    ld d, b
    ld hl, sp-$20
    ld hl, sp-$10
    ld hl, sp+$00
    ld hl, sp-$80
    ldh a, [rLCDC]
    ldh a, [$c0]
    ldh a, [rLCDC]
    ldh a, [$80]
    ldh a, [$a0]
    ldh a, [$60]
    ld hl, sp-$40
    db $fc
    db $10
    db $fc
    xor b
    cp $14
    cp $08
    sbc [hl]
    inc b
    ld e, $08
    ld e, $0c
    ld e, $00
    ld c, $00
    nop
    nop
    nop
    nop
    jr c, jr_003_7474

    ld a, [hl]
    inc h
    rst $38
    ld a, h
    rst $38
    ld h, d
    rst $38
    ld h, h
    rst $38
    ld [hl], d
    rst $38
    dec d
    rst $38
    dec b
    ccf
    add hl, bc
    ccf
    dec b
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rra
    ld e, $7f
    ld h, [hl]
    rst $38
    ld d, e
    rst $38
    xor [hl]
    rst $38
    ld c, e
    rst $38
    add [hl]
    rst $38
    ld l, $df
    ld a, h
    rst $38
    add h
    rst $38
    or l
    rst $38
    jp hl


    rst $38
    xor b
    rst $38
    ld sp, $62ff
    rst $38
    ld h, c

jr_003_7474:
    rst $38
    nop
    nop
    nop
    nop
    nop
    cp h

jr_003_747b:
    jr jr_003_747b

    db $f4
    cp $5c
    cp $8c
    cp $0c
    cp [hl]
    ld [$04fe], sp
    cp $08
    cp $00
    cp $80
    db $fc
    ld b, b
    ldh a, [$80]
    ldh a, [$80]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $02ef
    rrca
    ld bc, $020f
    rrca
    nop
    rrca
    ld [bc], a
    rlca
    nop
    rlca
    ld [bc], a
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    rrca
    rrca
    rra
    rla
    ccf
    nop
    rra
    ld b, b
    ldh a, [$c0]
    ldh a, [rLCDC]
    ldh a, [$80]
    ldh a, [$c0]
    ldh a, [$60]
    ldh a, [$a0]
    ld hl, sp+$50
    ld hl, sp-$70
    ld hl, sp+$50
    ld hl, sp-$70
    ld hl, sp+$40
    ld hl, sp-$60
    ldh a, [$c0]
    ldh a, [$e0]
    ldh a, [rP1]
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

Jump_003_7523:
    nop
    nop
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

    ld b, b
    ldh [rNR41], a
    ld [hl], b
    jr nc, jr_003_75ad

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_7557:
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$0906], sp
    ld [$0017], sp
    rra
    ld bc, $061f
    rrca
    inc bc
    rrca
    ld b, $0f
    nop
    rlca
    ld bc, $0002
    rrca
    nop
    nop
    nop
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    rst $38

jr_003_757c:
    ld bc, $7f83
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $c0ff
    ccf
    ldh [rNR24], a
    jr c, jr_003_7557

    nop
    ccf
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_003_757c

    ret nc

    ldh a, [$e8]
    ld hl, sp-$3c
    ld hl, sp+$04
    db $fc
    ld [bc], a
    inc e
    ld [c], a
    nop
    cp $f0
    cp $f0
    db $fc

jr_003_75ad:
    inc e
    cp $00
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    ld [$1c08], sp
    inc c
    ld e, $0c
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    dec bc
    inc b
    dec bc
    nop
    rlca
    dec b
    rrca
    ld [bc], a
    rrca
    dec b
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    ld bc, $03ff
    rrca
    pop af
    rlca
    ld hl, sp+$07
    ld hl, sp-$65
    db $fc
    call c, $8eff
    rst $38
    inc bc
    cp a
    nop
    rra
    rrca
    db $10
    ld e, $21
    nop
    ld a, [hl]
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$d0], a
    ldh a, [$e8]
    ld hl, sp-$3c
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    cp $01
    cp $01
    ld a, $c1
    inc c
    di
    nop
    db $fc
    add b
    ld a, b
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
    ld bc, $0600
    inc b
    ld c, $08
    inc e
    jr jr_003_76f3

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    ld [$0807], sp
    rrca
    db $10
    rrca
    db $10
    rlca
    jr jr_003_76e6

jr_003_76e6:
    rrca
    nop
    rrca
    ld b, $0f
    ld [bc], a
    rrca
    nop
    rlca
    nop
    ld bc, $0301

jr_003_76f3:
    nop
    rlca
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    nop
    rst $38
    ldh [$f9], a
    ld hl, sp-$04
    nop
    rst $38
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$c8]
    ldh a, [$e8]
    ld hl, sp-$3c
    ld hl, sp+$04
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ldh a, [$0c]
    inc c
    ld a, [c]
    nop
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld [bc], a
    rlca
    ld b, $0f
    ld b, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$0807], sp
    rrca
    db $10
    rrca
    stop
    rra
    ld b, $1f
    dec b
    rrca
    ld [bc], a
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_77b6:
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    nop
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    jr jr_003_77b6

    ld bc, $073f
    rrca
    nop
    rra
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$c8]
    ld hl, sp-$1c
    db $fc
    jp nz, $02fc

    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld [hl], b
    adc [hl]
    add b
    ldh a, [$e0]
    ldh a, [$f0]
    ld hl, sp+$00
    cp $00
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld a, c
    add hl, de
    ccf
    rlca
    ld e, $03
    rlca
    ld bc, $0102
    inc bc
    inc bc
    ld b, $07
    rra
    jr jr_003_7854

    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    add c
    jp $c381


    jp $efef


    cp e
    rst $38
    ld d, d
    rst $38
    and l
    rst $38
    ld b, d
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    add c
    rst $38
    ld d, [hl]
    rst $38
    xor e
    nop
    ld a, b
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
    nop
    nop
    nop
    nop

jr_003_7854:
    nop
    ld h, [hl]
    rst $38
    ld b, d
    rst $28
    add c
    rst $00
    add c
    jp $8100


    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    rlca
    inc bc
    rlca
    ld bc, $0103
    inc bc
    ld bc, $0003
    add hl, de
    add hl, de
    ld a, a
    rrca
    ld a, $07
    rrca
    inc bc
    ld b, $03
    rlca
    inc bc
    ld b, $07
    rrca
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld b, $0f
    ld b, $cf
    rst $00
    rst $28
    rst $28
    cp e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld b, l
    rst $38
    add d
    rst $38
    ld bc, $82ff
    rst $38
    ld b, l
    rst $38
    xor d
    rst $38
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    ld [$b8bc], sp
    db $fc
    ldh a, [$f8]
    ldh [rSVBK], a
    ret nz

    ldh [$e0], a
    ld a, b
    ld hl, sp-$04
    db $fc
    ld a, [hl]
    ret nz

    db $fc
    add b
    ld b, b
    ld c, $1f
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    xor d
    add hl, sp
    ld a, a
    jr nc, jr_003_7974

    jr nc, jr_003_7975

    jr nz, jr_003_796f

    nop
    jr nz, jr_003_7902

jr_003_7902:
    jr nz, jr_003_7904

jr_003_7904:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ldh [$c0], a
    ldh [$c0], a
    ldh [rNR41], a
    ldh a, [rP1]
    jr nc, jr_003_7920

jr_003_7920:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_003_7948

    ld e, $06
    rrca
    inc bc
    ld b, $03
    dec b
    inc bc

jr_003_7948:
    ld b, $07
    dec e
    rra
    cp $1f
    ld a, l
    rlca
    ld e, $03
    dec b
    inc bc
    ld b, $00
    stop
    stop
    jr jr_003_795c

jr_003_795c:
    jr jr_003_7976

    inc a
    jr jr_003_799d

    inc a
    rst $38
    rst $38
    xor c
    rst $38
    ld d, d
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    add c
    rst $38
    ld b, d

jr_003_796f:
    rst $38
    add c
    rst $38
    ld d, d
    rst $38

jr_003_7974:
    xor c

jr_003_7975:
    inc bc

jr_003_7976:
    rlca
    ld b, $0f
    ld [$001e], sp
    jr jr_003_797e

jr_003_797e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    rst $10
    inc e
    cp [hl]
    jr @+$3e

    jr jr_003_79d9

jr_003_799d:
    nop
    jr jr_003_79a0

jr_003_79a0:
    jr jr_003_79a2

jr_003_79a2:
    stop
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
    rlca
    ld b, b
    nop
    nop
    dec b
    sbc d
    ld d, $2c
    push hl
    ld [hl], $02
    ld bc, $ff1e
    rlca
    nop
    cp b
    ret nz

    ei
    ei
    ld sp, hl
    ld sp, hl
    pop hl
    push hl
    ret nc

    sub $f0
    or $e0
    db $ed

jr_003_79d9:
    ret nz

    call z, $aaa2
    inc de
    ccf
    ccf
    add b
    dec b
    ld a, a
    ld a, a
    rra
    rrca
    sbc a
    ccf
    cp a
    ld l, a
    rlca
    ld b, b
    nop
    add hl, de
    db $fd
    db $fd
    ld [hl], $fe
    cp $05
    inc bc
    ld l, $fc
    db $fd
    ret c

    ldh a, [$f1]
    rst $18
    rst $18
    sbc a
    sbc a
    adc e
    xor e
    rlca
    ld h, a
    rrca
    ld l, a
    rlca
    or a
    inc bc
    inc hl
    ld b, [hl]
    ld d, [hl]
    jp $c6db


    sub $03
    inc sp
    adc l
    xor l
    adc a
    xor a
    rla
    ld d, a
    dec c
    ld c, l
    dec de
    ld e, e
    rra
    ld e, a
    inc bc
    add a
    and a
    ret nz

    dec c
    ld b, l
    ld d, l
    jp nz, $e3da

    ld e, $eb
    ld d, c
    ld d, l
    ld b, $7d
    inc a
    ret nz

    ret nz

    ld [bc], a
    ld e, c
    rrca
    ldh [rP1], a
    inc bc
    inc bc
    ld hl, sp+$62
    ld a, [$c101]
    push bc
    push hl
    pop af
    push af
    ld h, c
    ld l, c
    add d
    sbc d
    rst $00
    rst $10
    ld c, $2e
    pop bc
    reti


    ld h, e
    ld l, e
    ld h, c
    ld l, l
    ret nc

    call nc, $d5d1
    xor [hl]
    rla
    ld a, [hl-]
    ldh a, [$f2]
    ret c

    jp c, Jump_003_4101

    nop
    ld e, [hl]
    nop
    rra
    nop
    jr @+$05

    dec de
    ld bc, $0319
    pop hl
    rlca
    rla
    ld [hl], c
    ld [hl], l
    jr @+$1c

    ld [$0ce8], sp
    db $ec
    inc b
    inc [hl]
    or [hl]
    ld e, a
    ld sp, $0029
    inc a
    inc a
    ld hl, sp-$05
    ld [hl], b
    ld [hl], h
    nop
    ld [$0038], sp
    db $10
    ld bc, $e020
    ld bc, $003f
    ret nz

    ld c, $00
    ld bc, $0700
    jr c, jr_003_7ac4

    ccf
    ld bc, $387f
    nop
    db $fc
    inc bc
    rst $38
    ld l, l
    rra
    db $e3
    rst $18
    call $0001
    ld [hl], b
    ld a, $3e
    rrca
    rst $08
    ld b, $f6
    add b
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    add $01
    ld hl, sp-$04
    cp c
    nop
    jr @+$5a

    db $10
    ld d, l
    jr nc, jr_003_7af0

    jr nz, @+$2e

    jr nc, @+$45

    ld e, e
    ld bc, $b787
    add b
    ld b, $82

jr_003_7ac4:
    nop
    ld l, d
    nop
    ld hl, sp+$6f
    cp b
    ld l, l
    ret nz

    ret c

    ret nz

    ret z

    add b
    sbc b
    ld h, b
    ld l, b
    inc bc
    inc de
    dec b
    dec d
    ld [hl], l
    pop hl
    cp b
    add hl, de
    push af
    daa
    rst $10
    dec l
    ld a, [de]
    ldh a, [$f4]
    ldh [$e4], a
    ret c

jr_003_7ae5:
    ret c

    ldh a, [$f0]
    db $ec
    db $ec
    cp $fe
    xor $ee
    db $f4
    db $f4

jr_003_7af0:
    add hl, sp
    ld [hl], e
    ld b, b
    ld bc, $0067
    inc e
    ld l, l
    ld bc, $dc01
    dec b
    add hl, bc
    rst $08
    ld bc, $043f
    jr c, @-$01

    ld a, a
    add l
    ld hl, sp-$1f
    ld [hl], e
    ld hl, sp-$02
    ld b, $01
    ldh a, [rSB]
    nop
    db $fc
    ldh [$fc], a
    dec bc
    dec hl
    rrca
    cpl
    rra
    ldh [rP1], a
    ccf
    ccf
    ld a, a
    ld bc, $777f
    ld [hl], a
    ld l, $2e
    ldh [$e8], a
    add a
    ld [hl], a
    and b
    xor b
    pop hl
    ld h, b
    sbc e
    pop af
    push af
    pop de
    push de
    ret nz

    ld l, e
    ld c, $2e
    add [hl]
    and [hl]
    adc h
    jr jr_003_7ae5

    add b
    or e
    ld bc, $d3c0
    inc bc
    call nz, $84d5
    sub l
    and b
    and b
    nop
    rst $20
    ld bc, $06f9
    and $17
    sub a
    ld e, e
    ld l, l
    ld e, e
    ld sp, $0035
    ld [hl], d
    ret nz

    ret nz

    ldh [$e0], a
    ret c

    sub c
    nop
    ldh [$e2], a
    pop bc
    cpl
    nop
    rrca
    nop
    inc bc
    ld c, h
    add a
    rlca
    ldh a, [$82]
    ld b, $07
    ld b, a
    adc c
    nop
    ld h, h
    rlca
    rra
    jr nc, jr_003_7b80

    ld sp, hl
    nop
    ldh [$03], a
    dec e
    inc bc
    rlca
    rlca
    add [hl]
    ld a, h
    adc a
    rlca
    rst $20
    rlca
    cp b

jr_003_7b80:
    ld [c], a
    dec b
    dec b
    nop
    ld [$9d80], sp
    ldh [$e7], a
    add sp, -$17
    sbc $de
    db $fc
    db $fc
    ld a, [$75fa]
    ld d, c
    ld d, l
    push hl
    ld de, $0195
    call Call_003_4d01
    inc bc
    ld c, e
    ld hl, $22a9
    xor d
    ret nz

    reti


    ldh [$e9], a
    ret nz

    ret


    and b
    xor c
    and c
    dec b
    ld sp, hl
    adc h
    inc bc
    ld e, a
    ld e, a
    ld [hl], l
    ld l, a
    ld b, h
    ld l, a
    ld h, e
    add hl, hl
    inc bc
    cpl
    xor a
    jr nc, jr_003_7bc0

    pop bc
    nop
    push bc
    add c
    adc l

jr_003_7bc0:
    ret nz

    ld bc, $1d01
    nop
    inc e
    nop
    ld [hl], e
    ld e, $01
    jr nz, jr_003_7c2d

    add b
    adc a
    ld hl, sp+$01
    ret c

    db $fc
    call z, $cfff
    cp $ce
    dec l
    inc d
    ld [hl], c
    ld bc, $0701
    ld b, $0f
    inc c
    ccf
    inc a
    rra
    inc e
    inc hl
    inc hl
    ld h, e
    ld h, e
    pop hl
    jp hl


    add $01
    ldh [$ec], a
    pop hl
    db $e3
    ld bc, $a1dc
    ld d, l
    db $fc
    add b
    inc bc
    db $f4
    push af
    ld hl, sp-$07
    db $fc
    db $fd
    ret c

    inc bc
    rlca
    inc hl
    xor e
    inc bc
    dec b
    sub l
    inc bc
    sub e
    rlca
    sub a
    nop
    ld bc, $2f0f
    rlca
    daa
    dec bc
    dec hl
    add sp, $11
    ld [$fdfd], a
    ld d, $7b
    push bc
    ld b, e
    rrca
    rst $08
    jp $5f1f


    dec bc
    ld l, e
    add a
    or a
    rst $00
    rst $10
    add e
    sbc e
    ld h, b
    ld l, h
    ld [hl], b
    xor l
    ld [hl], c
    rrca

jr_003_7c2d:
    add b
    ld bc, $808f
    add [hl]

jr_003_7c32:
    add b
    add a
    ret nz

jr_003_7c35:
    pop bc
    jr jr_003_7c3d

    jr c, @+$3a

    db $ec
    db $fd
    add a

jr_003_7c3d:
    cp b
    ld l, [hl]
    nop
    cp $00
    inc bc
    ld [$0c88], sp
    db $ec
    inc c
    dec l
    rlca
    rst $00
    rst $28
    call z, Call_000_3f09
    dec b
    ld [$0907], sp
    jr jr_003_7c70

    jr jr_003_7c32

    nop
    and l
    jr c, jr_003_7c5c

    ld sp, hl

jr_003_7c5c:
    ld bc, $0159
    jr @-$6d

    inc bc
    inc hl
    dec de
    rrca
    rrca
    ld a, [hl-]
    ld hl, sp-$05
    nop
    ld h, a
    or $c1
    call $ebe3

jr_003_7c70:
    pop bc
    ld b, $d9
    ld b, $36
    adc a
    xor a
    ld e, l
    ld [hl+], a
    sbc a
    sbc a
    ld l, h
    dec bc
    ld l, a
    rrca
    ldh [$e2], a
    ld hl, sp-$08
    inc b
    sbc $c3
    ld [bc], a
    adc c
    sub b
    nop

jr_003_7c8a:
    inc b
    inc b
    rrca
    add h
    add h
    ei
    ei
    ld [bc], a
    ld bc, $100f
    db $10
    ld de, $ef11
    rst $28

jr_003_7c9a:
    ld sp, hl
    inc bc
    di
    ld a, a
    db $ec
    ld b, $2f
    push de
    rla
    rra
    ld d, a
    ccf
    ccf
    ld [$9526], sp
    db $d3
    db $d3
    ld a, c
    ld l, $05
    dec [hl]
    jr c, jr_003_7c35

    cp e
    ld bc, $803d
    cp [hl]
    add b
    or d
    inc b
    dec [hl]
    adc [hl]
    xor [hl]
    dec b
    ld h, l
    dec c
    ld l, l
    adc e
    rrca
    ld c, a
    add b
    ccf
    ld e, a
    ld e, a
    ccf
    jr jr_003_7c8a

    inc de
    ld d, e
    ld hl, $2d0d
    inc bc
    push bc
    push de
    dec e
    ld e, l
    dec de
    ld e, e
    and l
    inc de
    ld e, $db
    call $010b
    db $10
    ld b, $16
    add [hl]
    and e
    xor e
    pop af
    push af
    ld l, b
    ld l, b
    ld [hl], h
    ld [hl], h
    inc e
    sbc h
    ld c, $ee
    cp a
    daa
    jp $0cdb


    xor a
    inc de
    inc bc
    add c
    jr jr_003_7c8a

    add a
    sub a
    ld bc, $6860
    dec c
    ldh a, [$f0]
    add sp, -$18
    jp Jump_003_651b


    jr jr_003_7d08

jr_003_7d08:
    call c, Call_003_45dc
    rlca
    daa
    jr nc, jr_003_7c9a

    xor e
    dec b
    inc c
    inc l
    add [hl]
    ld l, l
    and [hl]
    ld h, l
    inc bc
    adc e
    dec de
    jr nz, jr_003_7d3c

    adc [hl]
    add b
    sbc h
    ld [bc], a
    ld a, d
    rlca
    rst $30
    dec bc
    db $eb
    rra
    rst $18
    cpl
    xor a
    adc h
    xor h
    ld a, [bc]
    ld a, [hl+]
    rla
    ret nz

    dec b
    add $d6
    jp $86d3


    ld [hl-], a
    sub [hl]
    ld b, a
    xor e
    cp a
    db $db
    jp hl


jr_003_7d3c:
    ld l, h
    or a
    adc l
    sub c
    pop hl
    ld bc, $c3e9
    set 4, e
    db $eb
    rst $20
    rst $20
    and e
    ld c, e
    ld [hl], c
    sub a
    rst $08
    ld c, a
    or h
    rla
    dec d
    sbc b
    dec de
    ld d, a
    add a
    and a
    ret c

    rst $18
    ld e, e
    rst $00
    rst $10
    rst $18
    ld bc, $ac04
    inc bc
    nop
    inc [hl]
    rst $10
    rst $10
    add hl, sp
    jr nc, @-$79

    add hl, bc
    ld a, [c]
    ld a, [c]
    db $fc
    rlca
    db $fd
    ret c

    db $db
    ldh [$e6], a
    ld b, b
    rst $20
    ret c

    add c
    cp l
    cp b
    ld b, h
    ld bc, $007d
    call z, $ad21
    ld [hl], c
    ld [hl], l
    pop hl
    push hl
    ld d, b
    ld d, h
    call c, $3083
    add hl, bc
    add hl, bc
    rra
    rra
    inc a
    inc a
    jr z, jr_003_7dbb

    ld b, b
    ld b, a
    nop
    inc c
    dec d
    add sp, -$16
    cp b
    ld bc, $d8ba
    jp c, $0200

    nop
    ld a, [c]
    ld [de], a
    sub a
    ld [bc], a
    ld d, $02
    ld a, [bc]
    ld a, [bc]
    sbc h
    cpl
    nop
    ld e, a
    ld [de], a
    ld e, a
    and b
    xor b
    sbc h
    ld sp, $8005
    ld l, l
    adc b
    inc bc
    rlca
    ld [hl], b
    scf
    scf
    dec c

jr_003_7dbb:
    dec c
    dec b
    dec b
    add e
    sbc e
    ldh [$ec], a
    ret nc

    rst $10
    ret c

    ld h, c
    ld h, l
    pop bc
    ret


    ret c

    or c
    inc bc
    ld h, c
    ld l, c
    jp c, $cb05

    ld [hl+], a
    ld d, a
    pop de
    ld h, a
    and l
    dec b
    dec de
    ld [hl], e
    ld de, $1560
    add hl, de
    ld b, e
    ld d, e
    dec b
    dec h
    ret c

    cp c
    ld bc, $2303
    adc d
    add sp, $75
    ld [hl], c
    xor [hl]
    sub l
    adc l
    dec c
    pop af
    push af
    ldh a, [$f4]
    call $d3a2
    cp b
    push de
    rst $18
    cp a
    cp a
    add [hl]
    jp $c6fd


    ld c, c
    add a
    sub a
    rst $18
    adc l
    ld b, e
    or a
    dec d
    inc de
    ret nz

    dec c
    ld a, a
    add [hl]
    nop
    rst $30
    nop
    ld [$0c08], sp
    adc h
    inc c
    call z, $2404
    xor b
    ld a, a
    ld b, b
    jr nc, jr_003_7e2a

    jr @+$1b

    rst $00
    ld bc, $1310
    ret nz

    ld bc, $b17f
    inc bc
    ld h, e
    add sp, $7f
    rra

jr_003_7e2a:
    adc a
    db $fc
    db $fc
    rlca
    ld c, $4f
    inc h
    sub c
    ld b, c
    add h
    ret nz

    jp Jump_003_41d3


    ld d, b
    ld [hl], a
    db $10
    ld [hl], h
    ld [de], a
    add b
    ld a, $10
    ld bc, $03e1
    inc bc
    rrca
    rrca
    sub l
    cp $ab
    ld [$5135], sp
    nop
    adc $cc
    call z, $b1b2
    ld [hl], h
    ld [hl], e
    ld b, h
    ld b, e
    or [hl]
    or c
    ld l, e
    ld l, b
    ld e, b
    ld e, b
    db $db
    reti


    sub $d2
    or $f2
    ei
    ld hl, sp-$03
    db $fc
    pop de
    xor e
    ld [hl], e
    inc sp
    inc sp
    dec c
    call $ee0e
    ld [bc], a
    ld [c], a
    dec l
    call Call_000_16d6
    ld a, [de]
    ld a, [de]
    db $eb
    res 6, e
    and e
    or a
    and a
    rst $28
    rrca
    rst $18
    rra
    adc b
    add a
    ei
    ld [$effb], sp
    ld [$0a00], sp
    ld a, h
    ccf
    ld b, b
    ld a, a
    xor c
    ld b, b
    jr jr_003_7eec

    ld [hl], c
    adc h
    xor l
    add $d6
    ret nz

    pop de
    ret nz

    sub $81
    cp c
    ld bc, $b049
    or [hl]
    ld hl, sp-$07
    add b
    ld e, a
    nop
    nop
    rst $38
    and [hl]
    ld bc, $b800
    ld h, b
    ldh a, [$f3]
    ld b, b
    ld c, [hl]
    nop
    or d
    nop
    push bc
    nop
    ld a, [hl+]
    pop bc
    reti


    daa
    add b
    and c
    nop
    ld c, [hl]
    scf
    ld bc, $b3f1
    adc e
    ld [bc], a
    rra
    rrca
    rst $08
    sub a
    ld [bc], a
    ld [hl], d
    nop
    ld c, l
    nop
    and e
    nop
    ld d, h
    add e
    sbc e
    ld h, e
    ld l, e
    ld bc, $0085
    ld [hl], d
    add b
    adc l
    ld a, [c]
    ld a, [c]
    ld d, h
    sbc b
    ld [bc], a
    cp $e9
    xor [hl]
    add c
    ld e, a
    ld sp, $80b5
    rla
    inc bc
    adc e
    inc bc
    ld l, e

jr_003_7eec:
    add c
    sbc l
    ld a, [hl-]
    add b
    sub d
    ld de, $9ffd
    or b
    pop hl
    rla
    ld b, $79
    ld b, b
    jr jr_003_7f1b

    ld h, b
    rra
    add d
    inc bc
    ld a, h
    ld bc, $1c63
    ld b, b
    ccf
    ld a, d
    dec b
    ld b, b
    rst $10
    push de

jr_003_7f0b:
    ld bc, $7a05
    ld [hl], b
    rrca
    ld b, e
    inc e
    ld a, a
    ld d, l
    ld e, e
    inc h
    add b
    ld a, a
    ld h, d
    inc c
    or c

jr_003_7f1b:
    ld c, [hl]
    rst $30
    ld [$b805], sp
    ld b, b
    ld b, a
    dec bc
    rrca
    ldh a, [rDIV]
    rra
    ldh [$fb], a
    inc b
    rst $38
    xor d
    ld a, h
    rst $38
    inc c
    ld a, a
    add b
    sub e
    ld l, h
    dec b
    ld [hl], h
    ld [de], a
    adc e
    ld hl, sp+$07
    nop
    add hl, hl
    rlca
    ld hl, sp-$20
    rra
    ld bc, $f4fe
    ld c, h
    dec bc
    rra
    cp $0e
    jr c, jr_003_7f0b

    inc c
    ld a, [c]
    inc bc
    add d
    cp $0e
    ldh a, [rSC]
    db $fc
    ld b, $05
    xor $10
    ld e, [hl]
    and b
    dec b
    ld [$e01e], sp
    ld [$78f2], sp
    sub l
    nop
    ld de, $7f7f
    call Call_003_7f67

Call_003_7f67:
    push de
    call Call_000_0469
    pop de
    call Call_000_3b7e
    ld c, $ff

jr_003_7f71:
    ldh a, [rSCY]
    inc a
    ldh [rSCY], a
    ld b, $03
    call Call_000_0937
    dec c
    jr nz, jr_003_7f71

    ret


    add e
    ld [de], a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$22

    ld h, [hl]
    ld a, b
    jr nz, jr_003_7fee

    ld a, c
    add e
    inc d
    ld h, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, @+$6e

    ld h, l
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, $ff
    add h
    ld [de], a
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, h
    ld [hl], l
    ld h, e
    ld h, l
    ld h, h
    jr nz, @+$64

    ld a, c
    add d
    inc d
    ld h, h
    ld h, c
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, @+$6f

    ld h, l
    ld l, h
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, l
    inc l
    add c
    ld d, $65
    ld l, [hl]
    ld l, c
    ld h, a
    ld l, l
    ld h, c
    jr nz, @+$78

    ld h, c
    ld [hl], d
    ld l, c
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $85
    ld a, [de]
    ld h, h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, @+$64

    ld a, c
    add h
    inc e
    ld h, e
    ld l, a
    ld l, h
    ld l, c
    ld l, [hl]
    jr nz, @+$69

    ld l, a
    ld [hl], d
    ld h, h
    ld l, a
    ld l, [hl]
    inc l
    add e

jr_003_7fee:
    ld e, $6f
    ld h, e
    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, @+$75

    ld l, a
    ld h, [hl]
    ld [hl], h
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l
    ld l, $ff
    rst $38
