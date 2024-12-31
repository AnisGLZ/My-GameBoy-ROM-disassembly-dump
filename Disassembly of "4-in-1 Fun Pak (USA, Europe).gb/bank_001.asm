; Disassembly of "4-in-1 Fun Pak (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    add hl, bc
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    cp $09
    dec b
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    add hl, bc
    dec b

jr_001_402b:
    nop
    db $fc
    nop
    ldh a, [$03]
    add b
    rrca
    inc bc
    ccf
    rrca
    rst $38
    ccf
    inc bc
    nop
    rrca
    inc bc
    inc sp
    inc bc
    ret nz

    add hl, bc
    inc bc
    nop

jr_001_4041:
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    rst $08
    rst $38
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    ld c, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    pop bc
    rst $38
    add a
    rst $38
    ccf
    add hl, bc
    inc bc
    rst $38
    ret nz

    nop
    jr nc, jr_001_402b

    inc c
    ldh a, [$3b]
    db $fc
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    rlca
    rst $38
    add hl, bc
    dec b
    nop
    ld a, a
    nop
    rrca
    ret nz

    inc bc
    jr nc, jr_001_4041

    db $ec
    ldh a, [$c3]
    db $fc
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $7f30
    ld h, c
    rst $38
    rst $08
    rst $38
    rst $18
    add hl, bc
    inc bc
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $08
    ccf
    nop
    add hl, bc
    rrca
    rst $38
    ld b, $ff
    jp $f9ff


    rst $38
    db $fd
    add hl, bc
    dec b
    rst $38
    cp $ff
    ld sp, hl
    cp $09
    inc bc
    nop
    add b
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    pop bc
    add b
    ld b, e
    add c
    ld b, d
    rra
    inc bc
    rra
    inc bc
    ld c, $f1
    ld b, $fb
    ld a, a
    adc a
    rst $38
    rlca
    rst $38
    rlca
    pop hl
    rra
    add hl, bc
    dec b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$09]
    stop
    add hl, bc
    inc bc
    ld bc, $0103
    inc bc
    add hl, bc
    ld b, $00
    jr c, jr_001_4123

    ld hl, sp-$38
    ld hl, sp+$08
    rst $08
    ccf
    nop
    rst $38
    add hl, bc
    ld b, $00
    ldh [$e0], a
    ld hl, sp-$48
    adc h
    db $f4
    adc [hl]
    ld a, [c]
    ld b, $fa
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld l, a
    sbc a
    inc sp
    ld c, a
    inc c
    inc sp
    add hl, bc
    ld c, $ff
    ld a, a
    rst $38
    db $fc
    cp $fe
    rst $38
    cp $09
    rlca
    rst $38
    cp $ff
    db $fd
    cp $03
    nop

jr_001_4123:
    rrca
    inc bc
    ccf
    rrca
    rrca
    add e
    inc bc
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    ld bc, $c3ff
    ccf
    scf
    rrca
    inc c
    inc bc
    rst $08
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ld bc, $07ff
    rst $38
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    inc a
    db $fc
    ld a, a
    add hl, bc
    inc bc
    rst $38
    db $fc
    rst $38
    pop hl
    rst $38
    ld a, $3f
    inc c
    rrca
    inc bc
    inc bc
    add hl, bc
    inc b
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    rra
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    inc sp
    ccf
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    add b
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    ret nz

    ld bc, $c0f0
    ldh a, [$c0]
    ret nz

    add hl, bc
    add hl, bc
    nop
    pop af
    rrca
    ld a, [hl]
    add c
    ld a, a
    add b
    rra
    ld h, b
    rrca
    stop
    rrca
    add hl, bc
    inc b
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    rst $00
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$04
    ret nz

    jr c, jr_001_41c6

jr_001_41c6:
    ret nz

    nop
    nop

jr_001_41c9:
    add c
    ld b, [hl]
    inc bc
    add h
    inc bc
    add h
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0106
    ld [bc], a
    nop
    dec b
    jp nz, $9f21

    ld b, a
    cp a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $06
    cp $06
    ld a, h
    adc h
    ld bc, $0102
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0509

jr_001_41f7:
    nop
    ldh a, [rP1]
    ret nz

    ldh [$e0], a
    ld a, b
    sbc b
    jr c, jr_001_41c9

    ccf
    rst $08
    rra
    ldh [rP1], a
    ccf
    ld b, $7a
    ld b, $1a
    ld a, $3a
    cp $c6
    cp $82
    db $fc
    add h
    ld hl, sp+$08
    jr nz, jr_001_41f7

    inc bc
    inc c
    nop
    inc bc
    add hl, bc
    inc c
    nop
    add e
    ld a, a
    db $fc
    inc bc
    rrca
    ldh a, [rP1]
    rrca
    add hl, bc
    ld [$f200], sp
    db $fd
    inc c
    ld a, [c]
    ldh a, [$0c]
    nop
    ldh a, [$09]
    ld c, $00
    inc bc
    nop
    inc c
    nop
    jr nc, jr_001_423a

jr_001_423a:
    inc c
    nop
    inc bc
    nop
    rrca
    nop
    jr nc, jr_001_4242

jr_001_4242:
    db $fc
    inc a
    jr nc, jr_001_4276

    nop
    nop
    jr nc, jr_001_427a

    db $fc
    db $fc
    jr nc, @+$32

    rrca
    rst $38

jr_001_4250:
    call c, Call_000_303f
    rrca
    inc c
    inc bc
    inc bc
    nop
    jr nc, jr_001_428a

    db $fc
    db $fc
    jr nc, jr_001_428e

    add e
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld [hl], b
    rst $38
    ret nz

    ccf
    jr nc, @+$11

    dec c
    inc bc
    rst $38
    rst $38
    di
    rst $38
    add a
    rst $38
    rrca
    rst $38

jr_001_4276:
    rra
    db $fc
    ld a, h
    di

jr_001_427a:
    ldh a, [$cc]
    ret nz

    jr nc, @+$05

    nop
    call z, $f0c3
    call z, Call_000_30c0
    nop
    ret nz

    jr nc, jr_001_42ba

jr_001_428a:
    db $fc
    db $fc
    add hl, bc
    inc bc

jr_001_428e:
    jr nc, jr_001_4250

    inc c
    nop
    di
    ldh a, [$30]
    jr nc, jr_001_4297

jr_001_4297:
    nop
    jr nc, jr_001_42ca

    db $fc
    db $fc
    inc sp
    jr nc, @+$0b

    ld b, $00
    ret nz

    nop
    scf
    nop
    scf
    ld bc, $03c7
    rlca
    inc bc
    add hl, bc
    ld [$ff00], sp
    nop
    rst $38
    db $ec
    rst $38
    inc c
    rst $38
    rrca
    add hl, bc
    ld [$ff00], sp

jr_001_42ba:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    add hl, bc
    ld [$ff00], sp
    nop
    rst $38
    inc bc
    rst $38
    inc bc

jr_001_42ca:
    rst $38
    ld a, e
    nop
    ld b, $00
    rrca

jr_001_42d0:
    nop
    rrca
    ld bc, $ff1e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, a
    jr jr_001_4316

    jr nc, jr_001_42d0

    ldh [rNR41], a
    ldh [$60], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], $09
    ld [$fc00], sp
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld a, b
    add hl, bc
    ld b, $00
    rra
    nop
    rra
    rrca
    rra
    dec c
    rra
    dec c
    rra
    rrca
    nop
    rrca
    nop
    db $10
    rlca
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sbc h
    rst $38
    ld [hl], $00
    add b

jr_001_4316:
    ld b, b
    ld b, b
    ret nz

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    reti


    rst $38
    db $db
    add hl, bc
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call $6eff
    add hl, bc
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    jr nc, @+$0b

    ld b, $00
    ldh [rP1], a
    ldh [$c0], a
    ldh [rP1], a
    ldh [$c0], a
    ldh [$c0], a
    add hl, bc
    inc c
    nop
    inc bc
    nop
    rrca
    inc bc
    ret nz

    nop
    jr nc, jr_001_4356

jr_001_4356:
    inc c
    nop
    rrca
    nop
    inc sp
    inc bc
    db $fc
    inc a
    inc sp
    inc sp
    rst $08
    rst $08
    nop
    nop
    jr nc, jr_001_4396

    db $fc
    db $fc
    jr nc, @+$32

jr_001_436a:
    ret nz

    nop
    ldh a, [$c0]
    inc a
    jr nc, @-$2f

    call z, Call_000_0003
    jr nc, jr_001_43a6

    db $fc
    db $fc
    jr nc, jr_001_43aa

    nop
    nop
    jr nc, @+$32

    db $fc
    db $fc

jr_001_4380:
    jr nc, jr_001_43b2

    nop
    ret nz

    jr nc, jr_001_43b6

    db $fc
    db $fc
    jr nc, @+$32

    nop
    nop
    jr nc, jr_001_43be

    db $fc
    db $fc
    inc sp
    jr nc, jr_001_4393

jr_001_4393:
    nop
    jr nc, jr_001_43c6

jr_001_4396:
    db $fc
    db $fc
    inc sp
    jr nc, jr_001_43a7

    inc bc
    jr nc, jr_001_43aa

    jp $0f33


    rst $08
    inc c
    nop
    jr nc, jr_001_43a6

jr_001_43a6:
    ret nz

jr_001_43a7:
    nop
    jr nc, jr_001_436a

jr_001_43aa:
    inc c
    nop
    di
    ldh a, [$30]
    jr nc, jr_001_4380

    rst $08

jr_001_43b2:
    rlca
    inc bc
    rlca
    inc bc

jr_001_43b6:
    rlca
    inc bc
    rlca
    ld bc, $0907
    inc bc
    nop

jr_001_43be:
    ret nz

    nop
    jr nc, jr_001_43c2

jr_001_43c2:
    rst $38
    dec c
    rst $38
    dec c

jr_001_43c6:
    rst $38
    dec c
    rst $38
    db $ed
    rst $38
    add hl, bc
    rlca
    nop
    rst $38
    or [hl]
    rst $38
    cp [hl]
    rst $38
    or b
    rst $38
    sbc [hl]
    rst $38
    add hl, bc
    rlca
    nop
    rst $38
    jp $c3ff


    rst $38
    jp Jump_001_7bff


    rst $38
    nop
    inc bc
    inc [hl]
    ld bc, $003a
    dec e
    rst $38
    call $8fff
    rst $38
    call z, Call_001_67ff
    rst $38
    nop
    adc a
    inc de
    rst $38
    nop
    rst $38
    rrca
    rst $38
    cp b
    rst $38
    or b
    rst $38
    jr nc, @+$01

    or b
    rst $38
    nop
    ld hl, sp+$7c
    ldh a, [$fc]
    add sp, -$0c
    db $fc
    ret nz

    db $fc

jr_001_440d:
    ld [hl], b
    db $fc
    jr jr_001_440d

    ldh a, [$fc]
    add hl, bc
    rlca
    nop
    rra
    ld c, $1f
    rrca
    rra
    dec c
    rra
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    rst $38
    ld a, $ff
    jr nc, @+$01

    sbc [hl]
    rst $38
    nop
    inc bc
    cp h
    inc bc
    cp h
    inc bc
    cp h
    inc bc
    call c, $dbff
    rst $38
    ld [hl], e
    rst $38
    ld hl, $00ff
    cp $12
    rst $38
    ld de, $11ff
    rst $38
    ld hl, $ecff
    rst $38
    inc c
    rst $38
    db $ec
    rst $38
    add hl, bc
    add hl, bc
    nop
    rst $38
    inc e
    rst $38
    ld b, $ff
    inc a
    rst $38
    add hl, bc
    add hl, bc
    nop
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$09], a

jr_001_4462:
    add hl, bc
    nop
    inc sp
    inc bc
    inc c
    nop
    inc bc
    add hl, bc
    dec bc
    nop
    inc sp
    inc sp
    db $fc
    db $fc
    inc sp
    inc sp
    rst $08
    rrca
    inc sp
    inc bc
    inc c
    nop
    rrca
    nop
    jr nc, jr_001_447c

jr_001_447c:
    inc sp
    inc sp
    db $fc
    db $fc
    inc sp
    inc sp
    rst $08
    rst $08
    inc sp
    inc sp
    db $fc

jr_001_4487:
    db $fc
    inc sp
    inc sp

jr_001_448a:
    rst $08
    rrca
    ret nz

    nop
    ldh a, [$c0]
    inc a
    jr nc, jr_001_4462

    call z, Call_000_3333
    db $fc
    db $fc
    inc sp
    inc sp
    rst $08
    rst $08
    inc c
    inc bc
    jr nc, jr_001_44ac

    jp $0f33


    rst $08
    inc sp
    inc sp
    db $fc
    db $fc
    inc sp
    inc sp
    rst $08
    rst $08

jr_001_44ac:
    inc sp
    inc sp
    db $fc
    db $fc
    inc sp
    inc sp
    rst $08
    rst $08
    inc sp
    inc sp
    db $fc

jr_001_44b7:
    db $fc
    inc sp
    jr nc, jr_001_4487

    jp Jump_000_3333


    db $fc
    db $fc
    inc sp
    jr nc, @-$32

    ret nz

    jr nc, jr_001_44c6

jr_001_44c6:
    ret nz

    nop
    jr nc, jr_001_448a

    inc c
    nop
    jr nc, jr_001_44ce

jr_001_44ce:
    ret nz

    add hl, bc
    ld c, $00
    ld e, $00
    rrca
    nop
    rlca
    nop
    inc bc
    add hl, bc
    ld [$1f00], sp
    ld h, a
    nop
    sbc a
    ld a, [hl+]
    push de
    ld a, [hl+]
    push de
    ld a, [hl+]
    push de
    nop
    ccf
    add hl, bc
    inc b
    nop
    ret c

    db $e4
    jr nc, jr_001_44b7

    ldh a, [$08]
    ldh [rNR10], a
    ret nz

    jr nz, jr_001_44f6

jr_001_44f6:
    ret nz

    add hl, bc
    dec b
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0409
    nop
    inc bc
    db $e3
    rra
    ldh [$1f], a
    nop
    cp a
    ld e, a
    xor e
    ld d, h
    xor e
    ld d, h
    inc bc
    db $fc
    nop
    rra
    rst $38
    jp Jump_000_05ff


    rst $38
    add hl, sp
    cp $c1
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ret nz

    jr c, jr_001_4527

jr_001_4527:
    ret nz

    nop
    nop
    inc bc
    nop
    inc c
    nop
    jr nc, jr_001_4530

jr_001_4530:
    inc c
    nop
    inc bc
    add hl, bc
    dec b
    nop
    db $fc
    inc a
    jr nc, jr_001_456a

    nop
    nop
    jr nc, @+$32

    db $fc
    db $fc
    jr nc, @+$32

    ret nz

    nop
    jr nc, jr_001_4546

jr_001_4546:
    inc sp
    inc bc
    inc c
    nop
    inc bc
    nop
    jr nc, jr_001_457e

    db $fc
    db $fc
    jr nc, jr_001_4582

    nop
    nop
    jr nc, jr_001_4586

    inc sp
    inc sp
    db $fc
    db $fc
    inc sp
    inc sp
    rst $08
    rrca
    inc sp
    inc bc
    inc c
    nop
    inc bc
    nop
    jr nc, jr_001_4596

    inc sp
    inc sp
    db $fc
    db $fc

jr_001_456a:
    inc sp
    jr nc, @-$32

    jp Jump_000_0c30


    ret nz

    jr nc, jr_001_4573

jr_001_4573:
    ret nz

    add hl, bc
    inc bc
    jr nc, jr_001_4584

    ret nz

    jr nc, jr_001_457b

jr_001_457b:
    ret nz

    jr nc, @+$32

jr_001_457e:
    db $fc
    db $fc
    jr nc, jr_001_45b2

jr_001_4582:
    nop
    nop

jr_001_4584:
    jr nc, @+$32

jr_001_4586:
    di
    ldh a, [$30]
    jr nc, jr_001_458b

jr_001_458b:
    nop
    jr nc, @+$32

    db $fc
    db $fc
    inc sp
    jr nc, jr_001_459f

    nop
    jr nc, jr_001_459f

jr_001_4596:
    inc bc
    nop
    ret nz

    nop
    jr nc, jr_001_459c

jr_001_459c:
    jr nc, jr_001_459e

jr_001_459e:
    ret nz

jr_001_459f:
    add hl, bc
    rrca
    nop
    ld bc, $0000
    ld bc, $0409
    nop
    ld bc, $0703
    rrca
    ld a, $1a
    rst $38
    ld h, c
    ei

jr_001_45b2:
    add c
    rst $38
    ld bc, $8077
    ld a, a
    add b
    ret nz

    ret nz

    and b
    and b
    ldh [$e0], a
    ret nc

    ret nc

    ld [hl], b
    ld [hl], b
    add sp, -$18
    or b
    or b
    ldh [$e0], a
    add hl, bc
    inc b
    nop
    inc bc
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    rrca
    db $10
    dec bc
    db $10
    add hl, bc
    inc b
    nop
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld hl, sp-$08
    db $fc
    db $fc
    db $f4
    inc d
    ld a, h
    jr @+$0e

    nop
    inc bc
    add hl, bc
    dec c
    nop
    db $fc
    db $fc
    jr nc, jr_001_4621

    ret nz

    nop
    jr nc, jr_001_45f5

jr_001_45f5:
    inc c
    nop
    inc bc
    add hl, bc
    dec b
    nop
    db $fc
    db $fc
    jr nc, jr_001_462f

    nop
    nop
    jr nc, jr_001_4633

    db $fc
    db $fc
    jr nc, jr_001_4637

    ret nz

    nop
    jr nc, jr_001_460b

jr_001_460b:
    db $fc
    db $fc
    jr nc, jr_001_463f

    nop
    nop
    jr nc, jr_001_4643

    db $fc
    db $fc
    inc sp
    jr nc, jr_001_4624

    nop
    jr nc, jr_001_461b

jr_001_461b:
    db $fc
    db $fc
    inc sp
    jr nc, @+$0e

    nop

jr_001_4621:
    jr nc, jr_001_4623

jr_001_4623:
    ret nz

jr_001_4624:
    add hl, bc
    rlca
    nop
    ret nz

    add hl, bc
    rrca
    nop
    ld bc, $0100
    nop

jr_001_462f:
    ld bc, $0100
    nop

jr_001_4633:
    ld bc, $0100
    nop

jr_001_4637:
    ld bc, $0100
    nop
    rst $38
    nop
    rst $38
    ld a, d

jr_001_463f:
    rst $38
    jp nz, $c3ff

jr_001_4643:
    rst $38
    jp nz, $c2ff

    rst $38
    jp nz, Jump_001_7aff

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc [hl]
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    ret c

    rst $38
    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld h, c
    rst $38
    jr c, @+$01

    inc c
    rst $38
    ld a, c
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$10
    ld hl, sp-$80
    ld hl, sp-$20
    ld hl, sp+$30
    ld hl, sp-$20
    cpl
    ld b, b
    inc a
    ld b, e
    db $10
    inc l
    nop
    jr nc, jr_001_468d

    add hl, bc
    nop
    ret nz

    add hl, bc
    ld c, $00
    rrca
    db $10
    dec bc

jr_001_468d:
    db $10
    rrca
    db $10
    dec bc
    stop
    rra
    add hl, bc
    ld b, $00
    db $fc
    jr jr_001_4702

    nop
    ld hl, sp+$10
    ld [hl], b
    nop
    db $10
    ldh [$09], a
    ld b, $00
    ld bc, $0f09
    nop
    rst $38
    add hl, bc
    rrca
    nop
    ld hl, sp+$09
    ld [hl], $00
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    add hl, bc
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
    add hl, bc
    rlca
    nop
    rst $38
    nop
    ldh [rIF], a
    ldh [rIF], a
    ldh [$0e], a
    pop hl
    add hl, bc
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    db $fd
    add hl, bc
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld de, $09ee
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    add hl, bc
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    add hl, bc

jr_001_4702:
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    add hl, bc
    rlca
    nop
    rst $38
    nop
    ld bc, $01fc
    db $fc
    ld bc, $39c4
    add hl, bc
    rlca
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$09]
    ld de, $1f00
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    rra
    ldh [$1f], a
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rst $38
    nop
    add hl, bc
    ld c, $ff
    xor $01
    rst $28
    ldh [$ee], a
    pop hl
    xor $e1
    xor $e1
    xor $e1
    xor $e1
    db $ec
    db $e3
    ld [bc], a
    db $fd
    inc sp
    call z, $c13e
    ld a, [hl]
    add c
    ld c, $f1
    ld c, $f1
    ld a, h
    add e
    ld a, h
    add e
    ld de, $33ee
    call z, $dc23
    ld h, e
    sbc h
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, [hl]
    sbc c
    add $39
    ld bc, $99fe
    ld h, [hl]
    sbc c
    ld h, [hl]
    ld sp, $31ce
    adc $33
    call z, $cc33
    inc hl
    call c, Call_001_7f80
    adc $31
    adc h
    ld [hl], e
    sbc h
    ld h, e
    add b
    ld a, a
    add c
    ld a, [hl]
    sbc a
    ld h, b
    rra
    ldh [$60], a
    sbc a
    ld h, [hl]
    sbc c
    ld b, [hl]
    cp c
    ld c, [hl]
    or c
    ret nz

    ccf
    ret nz

    ccf
    adc $31
    sbc h
    ld h, e
    ld [hl], b
    adc a
    ld a, c
    add [hl]
    ld [hl], c
    adc [hl]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, d
    sbc l
    call nz, $9c39
    ld h, c
    inc a
    pop bc
    ld a, h
    add c
    db $fc
    ld bc, $01fc
    ld a, h
    add c
    inc a
    pop bc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$1f]
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    add hl, bc
    inc e
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    add hl, bc
    inc c
    rst $38
    add hl, bc
    inc b
    inc bc
    add hl, bc
    inc c
    rst $38
    add hl, bc
    inc b
    nop
    add hl, bc
    inc c
    rst $38
    add hl, bc
    inc b
    rrca
    add hl, bc
    inc c
    rst $38
    rrca
    rrca
    rlca
    rlca
    db $ec
    db $e3
    add sp, -$19
    add sp, -$19
    rst $28
    add hl, bc
    inc bc
    ldh [$09], a
    ld b, $ff
    db $fc
    inc bc
    ld a, h
    add e
    ld a, [hl]
    add c
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    add hl, bc
    inc b
    ret nz

    adc $31
    inc c
    di
    inc e
    db $e3
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    add hl, bc
    inc b
    inc bc
    ld h, a
    sbc b
    ld b, d
    cp l
    ld b, d
    cp l
    rst $38
    add hl, bc
    inc bc
    nop
    add hl, bc
    ld b, $ff
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIE], a
    add hl, bc
    inc bc
    nop
    add hl, bc
    ld b, $ff
    sbc h
    ld h, e
    ld [$08f7], sp
    rst $30
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    rst $20
    jr jr_001_48a7

    cp h
    ld b, e
    cp h
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    add hl, bc
    inc b
    nop
    inc e
    pop hl
    adc h
    ld [hl], c
    adc h
    ld [hl], c
    db $fc
    ld bc, $0100
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    add hl, bc
    inc b
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    add b
    add b
    add hl, bc
    inc c
    nop
    add hl, bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add hl, bc

jr_001_48a7:
    inc bc
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    add hl, bc
    inc bc
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rlca
    rlca
    inc bc
    inc bc
    add hl, bc
    inc b
    ld bc, $0809
    nop
    add hl, bc
    inc c
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    add hl, bc
    inc bc
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    add hl, bc
    db $10
    inc bc
    add hl, bc
    dec c
    rst $38
    ld hl, sp-$01
    ld hl, sp+$09
    ld b, $ff
    db $fc
    db $fc
    add hl, bc
    inc bc
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ld hl, sp-$40
    ldh a, [$80]
    add b
    add hl, bc
    dec bc
    nop
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    inc e
    db $ec
    nop
    ldh [rP1], a
    add b
    add hl, bc
    ld d, $00
    ld bc, $0700
    add hl, bc
    rlca
    nop
    stop
    jr nc, jr_001_4938

jr_001_4938:
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ccf
    ccf
    rra
    rra
    add hl, bc
    inc b
    rrca
    add hl, bc
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $c001
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$09
    ld b, $ff
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$09
    ld b, $00
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    rra
    add hl, bc
    rrca
    nop
    ldh a, [$09]
    rrca
    nop
    inc bc
    add hl, bc
    rrca
    nop
    rst $38
    ccf
    add hl, bc
    rlca
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    add hl, bc
    dec bc
    nop
    ld [$0c00], sp
    nop
    inc c
    nop
    ld bc, $0901
    ld c, $00
    ret nz

    add b
    ret nz

    add b
    ld b, b
    nop
    ld b, b
    add hl, bc
    add hl, bc
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$40
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    add hl, bc
    ld [$3f00], sp
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    rst $28
    add hl, bc
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add hl, bc
    ld [$f000], sp
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$f0]
    add hl, bc
    ld [$0300], sp
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ld c, $00
    rrca
    ld [$080f], sp
    rrca
    inc c
    rrca
    ld c, $0f
    ld c, $09
    inc b
    rrca
    add hl, bc
    ld b, $00
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    add hl, bc
    rrca
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$09
    dec b
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    add hl, bc
    rlca
    nop
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    nop
    ld bc, $0100
    nop
    ld bc, $1009
    ldh a, [$09]
    db $10
    rrca
    ldh a, [$80]
    ld hl, sp-$40
    ld hl, sp-$40
    db $fc
    ldh [$fe], a
    ldh a, [$fe]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    add hl, bc
    ld c, $00
    add b
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$80]
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    add hl, bc
    inc bc
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    add hl, bc
    ld [$09ff], sp
    inc bc
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    add hl, bc
    inc b
    ldh a, [$09]
    inc b
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    inc b
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    nop
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    add hl, bc
    inc bc
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    nop
    ldh a, [rTAC]
    add hl, bc
    inc b
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    inc b
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    add hl, bc
    inc b
    rrca
    rst $38
    rra
    rst $38
    rra
    add hl, bc
    inc bc
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    db $fc
    rst $38
    cp $09
    inc b
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    add b
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    add hl, bc
    inc b
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    add hl, bc
    inc b
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    add hl, bc
    inc bc
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$09]
    inc bc
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    add b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    inc b
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    ld bc, $0100
    ldh a, [$2f]
    ldh a, [$2f]
    add hl, bc
    inc bc
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$09]
    inc bc
    nop
    ldh a, [$09]
    inc bc
    nop
    ldh a, [$1f]
    rrca
    rra
    dec c
    rra
    dec c
    rra
    rrca
    rra
    dec c
    rra
    dec c
    rra
    rrca
    rra
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp h
    rst $38
    ld b, $ff
    sbc [hl]
    rst $38
    or [hl]
    rst $38
    ld e, $ff
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld a, e
    rst $38
    jp $c3ff


    rst $38
    jp Jump_001_7bff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, a
    rst $38
    call $8dff
    rst $38
    rst $00
    rst $38
    ld h, c
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp h
    rst $38
    add [hl]
    rst $38
    sbc [hl]
    rst $38
    or [hl]
    rst $38
    sbc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $ec
    rst $38
    cp $ff
    sub $ff
    sub $ff
    sub $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    ld [hl], e
    rst $38
    nop
    ldh a, [rP1]
    ldh a, [rTAC]
    ldh a, [$c7]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$67]
    ldh a, [$64]
    ldh a, [$09]
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    ccf
    rrca
    cp $3f
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ret nz

    nop
    or b
    pop bc
    inc c
    ldh a, [$03]
    db $fc
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    nop
    ccf
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    ld bc, $0eff
    ccf
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    dec b
    nop
    add hl, bc
    inc bc
    rst $38
    nop
    rst $38
    add hl, bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    ret nz

    rst $38

jr_001_4cd4:
    jr c, jr_001_4cd4

    add hl, bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    dec b
    nop
    rst $38
    ld c, $ff
    rra
    rra
    add hl, bc
    inc bc
    nop
    ldh a, [rP1]
    ldh a, [$09]
    dec b
    nop
    ldh a, [rP1]
    ldh a, [$09]
    rlca
    nop
    rra
    nop
    rra
    nop
    rra
    add hl, bc
    dec bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    ld b, $00
    add hl, bc
    nop
    cp $00
    cp $0a
    ld bc, $86fe
    ld [bc], a
    cp $84
    rlca
    cp $0b
    ld a, [bc]
    cp $83
    dec bc
    cp $08
    dec c
    cp $89
    ld c, $fe
    inc c
    ld a, [bc]
    dec bc
    cp $84
    rla
    jr jr_001_4d3d

    dec de
    inc e
    dec de
    cp $89
    dec e
    ld d, $fe
    inc c
    ld a, [bc]
    dec bc
    rla
    cp $84
    ld h, $18
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    cp $87
    dec hl
    ld a, [bc]
    ld [hl-], a

jr_001_4d3d:
    ld d, $fe
    inc c
    ld a, [bc]
    cp $86
    inc sp
    jr jr_001_4d50

    add hl, sp
    ld a, [bc]
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld l, $fe
    add e
    inc a
    ld a, [bc]

jr_001_4d50:
    ld [hl-], a
    ld d, $fe
    inc c
    ld a, [bc]
    ccf
    ld a, [bc]
    cp $84
    ld b, b
    jr jr_001_4d66

    add hl, sp
    ld a, [bc]
    cp $83
    ld b, h
    ld l, $18
    ld b, a
    ld c, b
    ld a, [bc]

jr_001_4d66:
    ld [hl-], a
    ld d, $fe
    inc c
    ld a, [bc]
    cp $86
    ld c, c
    jr jr_001_4d7a

    add hl, sp
    ld a, [bc]
    ld c, a
    ld d, b
    ld a, [bc]
    ld l, $fe
    add e
    ld d, c
    ld a, [bc]

jr_001_4d7a:
    ld d, h
    ld d, $fe
    inc c
    ld a, [bc]
    dec bc
    rla
    jr jr_001_4dd8

    scf
    jr c, jr_001_4d9e

    ld a, [bc]
    add hl, sp
    ld a, [bc]
    cp $83
    ld d, [hl]
    ld l, $59
    ld e, d
    ld a, [bc]
    ld a, [bc]
    ld e, e
    ld d, $fe
    inc c
    ld a, [bc]
    cp $86
    ld e, h
    ld e, [hl]
    cp $89
    ld h, d
    ld h, h

jr_001_4d9e:
    ld h, h
    ld l, e
    ld l, h
    cp $0c
    ld a, [bc]
    cp $86
    ld l, l
    cp $87
    ld [hl], d
    cp $84
    ld a, b
    ld a, b
    ld a, h
    ld a, l
    cp $0c
    ld a, [bc]
    ld a, [hl]
    ld a, a
    cp $84
    ld a, a
    ld a, a
    cp $8d
    add e
    cp $0c
    ld a, [bc]
    cp $93
    sub b
    cp $0d
    ld a, [bc]
    cp $94
    and e
    cp $0c
    ld a, [bc]
    cp $94
    or a
    cp $0c
    ld a, [bc]
    cp $8e
    rrc d
    ld a, [bc]
    cp $83

jr_001_4dd8:
    reti


    cp $0d
    ld a, [bc]
    cp $83
    call c, Call_000_03fe
    ld a, [bc]
    cp $88
    rst $18
    cp $14
    ld a, [bc]
    cp $90
    rst $20
    cp $11
    ld a, [bc]
    cp $84
    rst $30
    ld a, [bc]
    ld a, [bc]
    db $ec
    pop af
    ld a, [bc]
    ld a, [bc]
    ei
    cp $03
    db $fc
    db $fd
    cp $0e
    ld a, [bc]
    cp $00
    add [hl]
    nop
    add [hl]
    ld [de], a
    ld bc, $8602
    inc c
    inc bc
    add [hl]
    add h
    inc b
    add [hl]
    add hl, bc
    rlca
    ld [$0486], sp
    add hl, bc
    ld a, [bc]
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    add [hl]
    add [hl]
    inc c
    ld de, $8386
    ld de, $1111
    inc d
    add [hl]
    inc b
    dec d
    ld d, $0b
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    add [hl]
    adc d
    rla
    add [hl]
    add e
    jr nz, jr_001_4e57

    ld [hl+], a
    inc hl
    ld d, $0b
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    rla
    add [hl]
    adc b
    inc h
    jr nz, jr_001_4e64

    inc l
    add [hl]
    inc bc
    dec l
    ld l, $2f
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    rla
    add [hl]
    adc d
    jr nc, jr_001_4e81

    add [hl]
    inc bc

jr_001_4e57:
    dec l
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    inc a
    add [hl]
    ld a, [bc]
    dec a

jr_001_4e64:
    ld a, $86
    inc bc
    dec l
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    ccf
    add [hl]
    inc b
    dec l
    add [hl]
    add l
    ld b, b
    add [hl]
    dec b
    dec l
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b

jr_001_4e81:
    inc c
    ccf
    add [hl]
    inc b
    dec l
    add [hl]
    adc d
    ld b, l
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    ccf
    add [hl]
    ld a, [bc]
    dec l
    ld c, a
    add [hl]
    inc bc
    dec l
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    ccf
    add [hl]
    inc bc
    dec l
    add [hl]
    adc e
    ld d, b
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    ccf
    add [hl]
    inc bc
    dec l
    add [hl]
    adc e
    ld e, e
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    ccf
    dec l
    dec l
    add [hl]
    add h
    ld h, [hl]
    add [hl]
    inc bc
    dec l
    ld l, d
    ld b, c
    add [hl]
    inc bc
    dec l
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    ccf
    dec l
    dec l
    add [hl]
    adc l
    ld l, e
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    ccf
    add [hl]
    inc c
    dec l
    ld a, b
    dec l
    ld a, [hl-]
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    inc c
    ld a, c
    ld a, d
    add [hl]
    add e
    ld a, d
    add [hl]
    ld a, [bc]
    ld a, h
    ld a, l
    dec sp
    dec bc
    add [hl]
    inc c
    inc bc
    inc b
    ld a, [hl]
    add [hl]
    inc bc
    ld a, a
    add b
    add [hl]
    inc c
    add c
    add d
    dec bc
    add [hl]
    inc c
    inc bc
    add e
    add [hl]
    ld [de], a
    add h
    add l
    add [hl]
    inc c
    inc bc
    add [hl]
    nop
    ld c, $00
    ld c, $12
    ld bc, $0e02
    inc c
    inc bc
    ld c, $84
    inc b
    ld c, $09
    rlca
    ld [$040e], sp
    add hl, bc
    ld a, [bc]
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    dec c
    add [hl]
    add a
    ld c, $08
    ld de, $0e14
    inc b
    dec d
    ld d, $0b
    ld c, $0c
    inc bc
    inc b
    inc c
    rla
    ld c, $86
    adc b
    ld c, $04
    jr nz, jr_001_4f6a

    ld c, $04
    ld [hl+], a
    adc [hl]
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    rla
    ld c, $83
    inc h
    adc a
    jr nz, jr_001_4f68

    add e
    add hl, hl
    jr nz, jr_001_4f7e

    inc l
    ld c, $04
    dec l
    sub b
    dec bc
    ld c, $0c
    inc bc
    inc b

jr_001_4f68:
    inc c
    rla

jr_001_4f6a:
    ld c, $8a
    jr nc, @+$2e

    ld c, $04
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    inc a
    ld c, $0a
    dec a
    ld a, $0e

jr_001_4f7e:
    inc b
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    ccf
    ld c, $04
    dec l
    ld c, $87
    sub d
    ld c, $04
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    ccf
    ld c, $04
    dec l

Jump_001_4f9c:
    ld c, $87
    sbc c
    ld c, $04
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    ccf
    ld c, $03
    dec l
    ld c, $89
    and b
    sbc b
    dec l
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    ccf
    ld c, $03
    dec l
    ld c, $89
    xor c
    sbc a
    dec l
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    ccf
    dec l
    ld c, $8d
    or d
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    ccf
    dec l
    ld c, $8c
    cp a
    rst $00
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    ccf
    ld c, $03
    dec l
    ld c, $89
    rrc [hl]
    inc bc
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    ccf
    ld c, $03
    dec l
    ld c, $89
    call nc, $030e
    dec l
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    inc c
    db $dd
    sbc $de
    ld c, $0d
    rst $18
    sub c
    dec bc
    ld c, $0c
    inc bc
    inc b
    ld a, [hl]
    ld c, $03
    ld a, a
    ld c, $0d
    ldh [$e1], a
    dec bc
    ld c, $0c
    inc bc
    add e
    ld c, $12
    add h
    add l
    ld c, $0c
    inc bc
    ld c, $00
    dec h
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    jr z, jr_001_505e

jr_001_505e:
    ld bc, $0000
    rlca
    daa
    rra
    cp $3f
    ld bc, $0500
    inc bc
    ld b, $1f
    rst $18
    ld a, $3d
    cp $fa
    db $fc
    call z, Call_001_70f0
    add b
    dec h
    ld b, $00
    inc b
    nop
    nop
    ld [$0810], sp
    jr jr_001_5091

    jr nc, jr_001_5093

    dec h
    ld [$0100], sp
    nop
    ld bc, $0301
    ld bc, $0301
    nop
    nop
    ld b, b

jr_001_5091:
    nop
    add b

jr_001_5093:
    nop
    nop
    add b
    nop
    add b
    add b
    dec h
    dec c
    nop
    ld bc, $0100
    inc bc
    ld a, [bc]
    rlca
    dec hl
    inc e
    ld [bc], a
    ld bc, $070b
    rrca
    rra
    rst $18
    ccf
    ld l, e
    rst $30
    and a
    jp Jump_000_0387


    ld [bc], a
    rlca
    ld [hl], e

jr_001_50b5:
    db $fc
    call c, $e0e0
    add b
    nop
    add b
    nop
    add b
    add b
    dec h
    dec b
    nop
    jr nz, @+$32

    jr nc, @+$22

    ld h, b
    jr nz, jr_001_5109

    ld h, b
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    ret nz

    inc bc
    ld [bc], a
    ld b, $02
    ld b, $02
    ld [bc], a
    ld b, $06
    inc b
    ld b, $04
    ld c, $04
    inc c
    inc b
    nop
    nop
    ld bc, $0200
    ld bc, $0702
    ld [de], a
    inc c
    jr nz, jr_001_5106

    db $10
    ld h, b
    ld b, b
    add b
    ld a, b
    jr nc, jr_001_5135

    ldh [rLCDC], a
    add b
    dec h
    ld a, [bc]
    nop
    ld b, $07
    ld b, $07
    ld c, $06
    ld b, $0e
    inc b
    ld c, $0c

jr_001_5106:
    ld c, $1e
    inc c

jr_001_5109:
    inc c
    inc e
    dec h
    dec b
    nop
    ld bc, $2500
    ld b, $01
    inc bc
    ld bc, $c003
    add b
    ret nz

    dec h
    inc bc
    add b
    add c
    add b
    ld b, $80
    adc b
    inc b
    add b
    jr jr_001_50b5

    jr nc, @+$27

    ld [$1000], sp
    nop
    jr nz, jr_001_512d

jr_001_512d:
    nop
    jr nz, @+$62

    jr nz, jr_001_5157

    ld c, $00
    ld [hl+], a

jr_001_5135:
    inc e
    inc b
    inc c
    ld [$080c], sp
    inc c
    inc e
    ld [$081c], sp
    inc c
    jr jr_001_514f

    jr @+$16

    jr jr_001_516c

    ld [$0300], sp
    ld bc, $0703
    inc b
    rrca

jr_001_514f:
    inc d
    ld [$0825], sp
    nop
    ld b, b
    add b
    add c

jr_001_5157:
    ret nz

    ldh [$c1], a
    ld h, b
    pop bc
    inc bc
    nop
    ld b, $03
    ld [bc], a
    rlca
    inc bc
    ld b, $86
    ld b, $0f
    add [hl]
    adc [hl]
    rlca
    rrca
    rlca

jr_001_516c:
    nop
    nop
    ld bc, $0600
    nop
    db $10
    ld [$3040], sp
    ld h, b
    ret nz

    add b
    add b
    dec h
    inc bc
    nop
    ld bc, $0003
    inc b
    nop
    ld [$0925], sp
    nop
    add b
    dec h
    rrca
    nop
    ld [$181c], sp
    inc e
    inc a
    jr jr_001_51a9

    jr c, jr_001_51a3

    jr c, @+$32

    jr c, jr_001_51c7

    jr c, jr_001_5211

    jr nc, jr_001_51c0

    rrca
    nop
    ld bc, $0e25
    nop
    add [hl]
    nop

jr_001_51a3:
    ld bc, $0203
    dec h
    inc b
    inc bc

jr_001_51a9:
    rlca
    inc bc
    rlca

jr_001_51ac:
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $04
    ld b, $30
    ld h, b
    ldh [$c0], a
    pop bc
    ret nz

    add e
    add c
    add a
    ld [bc], a
    inc c
    ld b, $04
    inc c

jr_001_51c0:
    inc e
    ld [$0000], sp
    ldh [rP1], a
    ret nc

jr_001_51c7:
    ldh [rNR41], a
    ldh a, [$61]
    jr nc, jr_001_51ee

    ld sp, $2133
    ld h, l
    inc hl
    ld h, [hl]
    ld b, b
    call nc, $4848
    pop af
    jp $81e1


    jp $83c6


    inc bc
    add [hl]
    add d
    ld b, $3e
    ld a, a
    ld e, a
    rst $20
    add a
    jp $8303


    dec h
    inc b
    inc bc
    rlca

jr_001_51ee:
    inc bc
    ld b, $03
    jr nc, jr_001_520b

    jr nc, jr_001_520d

    sbc b
    jr nc, @-$66

    jr nc, @-$66

    jr nc, jr_001_51ac

    jr nc, jr_001_526e

    jr nc, @+$72

    jr nc, jr_001_522a

    db $10
    ld bc, $4520
    inc bc
    rrca
    rlca
    ld c, $19

jr_001_520b:
    jr c, jr_001_521e

jr_001_520d:
    ld [hl], e
    ld hl, $650b

jr_001_5211:
    ld h, d
    pop bc
    ldh [$c3], a
    pop bc
    jp nz, $c287

    jp nz, $8386

    add [hl]
    add a

jr_001_521e:
    add a
    ld c, $87
    inc b
    ld c, $1e
    inc c
    inc a
    inc e
    ld l, h
    inc a
    ret c

jr_001_522a:
    ld l, h
    adc b
    call c, $9c18
    jr c, jr_001_5249

    jr nc, jr_001_52a3

    ld h, b
    ld [hl], b
    ldh [rSVBK], a
    ld h, b
    ldh a, [$60]
    ldh [$60], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [rSB], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    inc e
    rrca

jr_001_5249:
    ld a, [de]
    dec e
    ld [hl], $39
    dec hl
    ld [hl], c
    db $d3
    ld h, c
    rlca
    adc [hl]
    cp [hl]
    sbc a
    sbc [hl]
    rst $38
    and $ff
    rst $00
    and $ce
    add $cc
    add [hl]
    inc b
    adc [hl]
    inc b
    ld c, $04
    ld c, $1e
    inc c
    ld c, $1c
    inc a
    inc e
    inc a
    inc a
    ld a, h

jr_001_526e:
    inc a
    jr z, jr_001_52ed

    ld [$1018], sp
    jr jr_001_528f

    jr nc, jr_001_5289

    ld sp, $3321
    ld h, d
    ld [hl], $66
    inc a
    add hl, hl
    ld a, h
    ld l, e
    ld b, a
    sub a
    rst $08
    sbc d
    adc a
    or [hl]
    dec de

jr_001_5289:
    ld l, a
    ld [hl-], a
    or e
    ld h, [hl]
    rst $08
    ld h, [hl]

jr_001_528f:
    adc [hl]
    add $8c
    ld b, $0c
    ld b, $06
    inc c
    ld b, $0c
    rlca
    inc c
    dec c
    rrca
    ld c, $1f
    dec l
    ld e, $25
    inc bc

jr_001_52a3:
    ld b, $0c
    inc l
    jr @+$52

    jr c, jr_001_530a

    ldh a, [$a0]
    ret nz

    add b
    dec h
    inc bc
    nop
    jr nz, jr_001_5323

    ld hl, $2070
    ld [hl], c
    inc hl
    ld [hl], c
    dec l
    ld [hl], e
    inc sp
    ld a, a
    ccf
    ld a, a
    dec a
    ld a, a
    ld d, l
    res 5, e
    di
    db $d3
    rst $20
    adc a
    rst $00
    rst $18
    adc e
    pop af
    db $db
    ei
    pop af
    pop hl
    ldh a, [rTMA]
    adc [hl]
    adc h
    ld e, $bd
    ld e, $ff
    ccf
    rst $10
    rst $28
    rst $28
    rst $00
    ld b, l
    add d
    add b
    nop
    dec h
    inc bc
    jr c, jr_001_535d

    ldh a, [$78]
    ret nc

    ld hl, sp-$08
    sub b
    db $10
    or b

jr_001_52ed:
    db $10
    dec h
    inc bc
    jr nc, jr_001_52f2

jr_001_52f2:
    ld bc, $2500
    inc bc
    ld bc, $0103
    ld bc, $0103
    dec h
    inc bc
    inc bc
    rlca
    inc bc
    ldh [$c0], a
    pop bc
    pop bc
    add b
    jp $c284


    ret nz

jr_001_530a:
    add h
    add b
    add b
    nop
    add b
    nop
    add b
    add c
    jp $0381


    rlca
    inc bc
    ld b, $03
    rlca
    ld [bc], a
    inc bc
    ld b, $0b
    ld b, $0e
    ld b, $06
    adc h

jr_001_5323:
    inc b
    inc c
    dec c
    inc c
    jr @+$0f

    add hl, bc
    dec e
    dec c
    rra
    ld a, $1f
    ld a, $1f
    ret z

    ld a, h
    ld c, b
    call c, $dc88
    jp z, Jump_001_4f9c

    sbc h
    adc a
    rra
    sbc a
    rrca
    sub [hl]
    rrca
    ld sp, $3379
    ld [hl], c
    ld [hl], $73
    ld a, [$fe76]
    db $fc
    cp b
    db $fc
    ld [hl], b
    sbc b
    sbc b
    nop
    inc d
    adc [hl]
    ld d, $0e
    ld d, $0f
    dec bc
    rlca
    rlca
    dec h
    rlca
    nop

jr_001_535d:
    ld a, b
    inc a
    ld hl, sp+$7c
    sbc h
    ret c

    inc e
    sbc b
    inc a
    jr jr_001_539c

    jr jr_001_537e

    jr c, jr_001_537c

    jr c, jr_001_53c6

    dec a
    jr nz, jr_001_5389

    dec h
    inc c
    nop
    ret nz

    ldh [rLCDC], a
    add b
    dec h
    inc c
    nop
    ld h, b

jr_001_537c:
    jr nc, jr_001_53de

jr_001_537e:
    jr nc, jr_001_53b0

    ld h, b
    ld [hl], b
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a

jr_001_5389:
    ld b, b
    ldh [$03], a
    rlca
    inc bc
    dec h
    dec b
    rlca
    ld b, $0f
    ld b, $0f
    rlca
    ld c, $0f
    ld c, $00
    add b
    add b

jr_001_539c:
    dec h
    add hl, bc
    nop
    ld [bc], a
    ld bc, $070b
    inc c
    ld b, $04
    ld c, $16
    inc c
    ld e, $0c
    ld e, $0c
    sbc [hl]
    inc c
    adc d

jr_001_53b0:
    inc b
    add b
    nop
    ccf
    ld e, $2d
    ld e, $1a
    inc c
    inc c
    dec h
    add hl, bc
    nop
    dec bc
    inc b
    dec h
    ld c, $00
    jr nc, jr_001_53fc

    jr nc, jr_001_53fe

jr_001_53c6:
    ld [hl], b
    jr c, @+$7a

    jr nc, @+$7a

    jr nc, @+$7a

    jr nc, @+$3a

    ld [hl], b
    jr c, jr_001_5442

    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0103

jr_001_53de:
    inc bc
    ld bc, $0301
    ld b, b
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a

jr_001_53f0:
    ldh [$c0], a
    dec h
    inc c
    nop
    ld bc, $0200
    ld bc, $0e1e
    rrca

jr_001_53fc:
    ld e, $0f

jr_001_53fe:
    dec h
    inc b
    rra
    ccf
    ld a, [hl]
    ccf

jr_001_5404:
    jr c, jr_001_5404

    ldh [$f8], a
    cpl
    rra
    cp [hl]
    ld a, a
    ld sp, hl
    cp $e0
    ld hl, sp-$10
    ret nz

    ret nz

    dec h
    dec b
    nop
    add b
    nop
    add b
    dec h

jr_001_541a:
    dec c
    nop
    ld h, b
    jr nc, jr_001_548f

    dec h
    dec c
    nop
    ld bc, $0103
    inc bc
    inc bc
    dec h
    dec bc
    nop
    ldh [$c0], a
    ldh [$c0], a
    jr nz, jr_001_53f0

    dec h
    ld [de], a
    nop
    ld bc, $0200
    ld bc, $070b
    dec d
    ld c, $05
    inc bc

jr_001_543d:
    rla
    rrca
    dec l
    ld e, $54

jr_001_5442:
    jr c, jr_001_54a4

    ldh a, [$a0]
    ret nz

    add b
    dec h
    inc bc
    nop
    add b
    ldh [rLCDC], a
    add b
    dec h
    jr jr_001_5452

jr_001_5452:
    db $fc
    ld hl, sp-$24
    add h
    dec h
    ld b, $00
    ld b, $04
    ld b, $04
    ld b, $04
    rra
    rra
    ld b, $04
    dec h
    inc c
    nop
    ret nz

    ret nz

    dec h
    ld b, $00
    ld bc, $0400
    inc bc
    add hl, bc
    ld b, $10
    inc c
    jr z, @+$12

    ld b, b
    jr nz, jr_001_549c

    jr jr_001_541a

    ld [hl], b
    jr nz, jr_001_543d

    ld b, b
    add b
    dec h
    ld [$c600], sp
    add d
    add $82
    add $82
    call z, $fc84
    ld hl, sp-$40
    add b
    ret nz

jr_001_548f:
    add b
    ret nz

    add b
    cp b
    cp b
    db $ed
    call nz, $81c5
    pop bc
    add c
    pop bc
    add c

jr_001_549c:
    pop bc
    add c
    pop bc
    add b
    ret nz

    add b
    ld sp, hl
    ld [hl], b

jr_001_54a4:
    ret


    adc c
    adc l
    dec b
    db $fc
    db $fc
    add b
    nop
    add b
    nop
    call $f985
    ld a, b
    ld sp, hl
    ldh a, [$9b]
    add hl, bc
    inc bc
    ld [bc], a
    di
    di
    dec de
    ld a, [bc]
    dec bc
    ld a, [bc]
    sbc e
    add hl, bc
    pop af
    ldh a, [$e2]
    ld [c], a
    inc de
    inc de
    dec de
    ld a, [bc]
    ei
    ld a, [$0203]
    inc bc
    ld [bc], a
    sbc e
    ld a, [bc]
    di
    ld a, [c]
    rst $20
    db $e4
    sub a
    dec d
    rla
    dec d
    ld d, $14
    ld d, $14
    ld d, $14
    rla
    dec d
    ld d, $14
    ld hl, sp-$10
    sbc b
    ld [$0000], sp
    ldh a, [$f0]
    jr jr_001_5511

    inc bc
    ld [$0898], sp
    ldh a, [$f0]
    ld b, b
    nop
    add b
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld a, a
    nop
    dec h
    ld h, c
    nop
    dec h
    nop
    rst $38
    rst $38
    ld h, [hl]
    nop
    ld bc, $0002
    inc bc
    rst $38
    inc bc
    nop

jr_001_5511:
    inc b
    dec b
    rst $38
    dec d
    nop
    ld b, $07
    ld [$0000], sp
    add hl, bc
    rst $38
    inc bc
    nop
    ld a, [bc]
    rst $38
    dec d
    nop
    dec bc
    inc c
    dec c
    nop
    nop
    ld c, $0f
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $ff
    stop
    rla
    jr jr_001_5538

jr_001_5538:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_5562

    ld [hl+], a
    inc hl
    inc h
    rst $38
    inc de
    nop
    ld a, [de]
    dec h
    ld h, $27
    jr z, jr_001_5576

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$01

    inc de
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_5560

jr_001_5560:
    add hl, sp
    ld a, [hl-]

jr_001_5562:
    nop
    dec sp
    rst $38
    inc de
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    ld b, c
    rst $38
    inc bc
    nop
    ld b, d
    ld b, e
    rst $38
    ld [de], a

jr_001_5576:
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc bc
    nop
    ld c, c
    ld c, d
    rst $38
    ld de, $4b00
    ld c, h
    ld c, l
    rst $38
    inc b
    nop
    ld c, [hl]
    rst $38
    inc b
    nop
    ld c, a
    ld d, b
    rst $38
    ld de, $5100
    ld d, d
    rst $38
    ld b, $00
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    rst $38
    ld de, $5a00
    rst $38
    ld a, a
    nop
    rst $38
    rra
    nop
    rst $38
    nop
    ld a, [bc]
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, [bc]
    inc b
    nop
    rst $38
    ld a, [bc]
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, [bc]
    inc b
    nop
    rst $38
    nop
    nop
    ld [$0832], sp
    ld a, [c]
    ld [$08f2], sp
    ld a, [c]
    ld hl, sp+$02
    nop
    ld [bc], a
    nop
    cp $00
    nop
    and d
    ld b, h
    and e
    ld b, h
    and b
    ld b, a
    and b
    ld b, b
    and b
    ld b, b
    cp a
    ld b, b
    add b
    ld a, a
    rst $38
    ld a, [bc]
    inc bc
    nop
    rst $38
    nop
    nop
    rst $38
    ld a, [bc]
    inc b
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    ld b, l
    ld [hl+], a
    push bc
    ld [hl+], a
    dec b
    ld [c], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    db $fd
    ld [bc], a
    ld bc, $fffe
    nop
    rst $38
    nop
    ld a, [bc]
    ld b, $ff
    db $fc
    db $fc
    pop af
    pop af
    db $e3
    db $e3
    jp $ffc3


    nop
    ld a, [bc]
    ld b, $ff
    ld l, a
    ld l, a
    adc a
    adc a
    rst $08
    rst $08
    rst $28
    rst $28
    ld a, [bc]
    ld a, [bc]
    jp $e1e1


    ld hl, sp-$08
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    inc bc
    inc bc
    add a
    add a
    ld a, [bc]
    inc b
    add [hl]
    scf
    scf
    rst $38
    rst $38
    add e
    add e
    ld sp, $f131
    pop af
    ld bc, $0a01
    inc b
    ld sp, $0808
    rst $38
    rst $38
    add h
    add h
    ret nz

    ret nz

    ld a, [bc]
    ld [$80c4], sp
    add b
    rst $38
    rst $38
    rst $08
    rst $08
    rlca
    rlca
    ld a, [bc]
    ld b, $46
    ld b, a
    ld b, a
    inc bc
    inc bc
    rst $38
    rst $38
    add e
    add e
    ld sp, $0331
    inc bc
    ccf
    ccf
    dec e
    dec e
    inc bc
    inc bc
    add a
    add a
    rst $38
    rst $38
    ld [$08f2], sp
    ld a, [c]
    ld [$08f2], sp
    ld [hl], d
    ld [$0872], sp
    ld [hl], d
    ld [$0872], sp
    ld [hl], d
    ld a, [bc]
    ld a, [bc]
    rst $38
    ld a, [bc]
    ld b, $7f
    ld [$0872], sp
    ld [hl], d
    ld [$0872], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    nop
    rst $38

Call_001_56cc:
    nop
    rst $38
    nop
    rst $38
    ld [$78ff], sp
    rst $38
    jr c, @+$01

    jr c, @+$01

    ccf
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
    rlca
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
    rst $00
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
    rst $20
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
    ldh [rIE], a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    ld a, [c]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc h
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor $ff
    rst $08
    rst $38
    rlca
    rst $38
    ld hl, $c8ff
    rst $38
    adc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, $ff
    adc a
    rst $38
    rst $00
    rst $38
    pop hl
    rst $38
    add sp, -$01
    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    ld c, $ff
    dec a
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    sbc $ff
    adc $ff
    ld c, [hl]
    rst $38
    ld c, a
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
    pop bc
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
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ldh [rIE], a
    ldh [$0a], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
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
    ld [bc], a
    rst $38
    sbc a
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
    ret nz

    rst $38
    rst $20
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    inc a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, [hl]
    rst $38
    adc [hl]
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    rst $38
    di
    rst $38
    inc bc
    rst $38
    adc e
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    call z, $8cff
    rst $38
    add b
    rst $38
    call nz, $fcff
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    and $ff
    db $ec
    rst $38
    cp $ff
    xor $ff
    rst $20
    ld a, [bc]
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, de
    rst $38
    ccf
    rst $38
    jr c, @+$01

    inc a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc $ff
    adc [hl]
    rst $38
    ld c, $ff
    ld c, [hl]
    rst $38
    adc [hl]
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc $ff
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $08ff
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [bc]
    inc bc
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rlca
    rst $38
    adc h
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
    pop bc
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    pop af
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    cp $ff
    call z, Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld a, $ff
    ld [hl], a
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
    rra
    rst $38
    inc sp
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
    ld e, $ff
    adc a
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
    call z, $feff
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
    ld a, e
    rst $38
    ccf
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
    jr nc, @+$01

    ld sp, hl
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
    ld sp, hl
    rst $38
    call c, Call_000_00ff
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
    db $ec
    rst $38
    cp $ff
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    ld a, [bc]
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $08
    rst $38
    call c, $9cff
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    ld [hl], c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, de
    rst $38
    ld bc, $89ff
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret c

    rst $38
    db $fc
    rst $38
    call c, $ceff
    ld a, [bc]
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    rst $38
    ld a, $ff
    jr @+$01

    ld a, h
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    inc bc
    rst $38
    ccf
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    dec a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor $ff
    xor $ff
    xor $ff
    xor $0a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call c, $dcff
    rst $38
    call c, $dcff
    rst $38
    ld sp, hl
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
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
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
    rst $38
    add b
    rst $38
    add b
    rst $38
    add a
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
    rst $08
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
    db $fc
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
    ld a, h
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
    ld d, $0a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld a, b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    di
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rra
    rst $38
    inc e
    rst $38
    sbc [hl]
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    jp Jump_000_03ff


    rst $38
    ld hl, $c1ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    sub c
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    adc $ff
    db $fc
    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $76
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    rrca
    rst $38
    ld b, a
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, h
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    nop
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
    ld a, [bc]
    inc b
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
    rst $38
    nop
    rst $38
    ld a, [bc]
    ld c, $00
    rst $38
    rst $38
    ld a, [bc]
    inc b
    nop
    rst $38
    nop
    nop
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld a, [c]
    ld hl, sp+$02
    nop
    ld [bc], a
    nop
    cp $0a
    ld b, $00
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, [bc]
    inc b
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld b, e
    nop
    rst $38
    nop
    add b
    ld a, a
    cp a
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, a
    and e
    ld b, h
    and d
    ld b, h
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    ld a, [bc]
    inc bc
    nop
    rst $38
    nop
    ld bc, $fdfe
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [c], a
    push bc
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld a, [bc]
    stop
    and d
    ld b, h
    and d
    ld b, h
    and d
    ld b, h
    and d
    ld b, h
    and d
    ld b, h
    and d
    ld b, h
    and d
    ld b, h
    and d
    ld b, h
    ld a, [bc]
    inc bc
    nop
    ld a, a
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld a, [bc]
    inc bc
    nop
    rst $38
    nop
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
    ldh [$0a], a
    inc bc
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    dec b
    nop
    rst $38
    nop
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
    ccf
    ld a, [bc]
    inc bc
    nop
    rst $38
    nop
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
    ld a, [bc]
    inc bc
    nop
    cp $00
    ld [bc], a
    ld hl, sp+$02
    ld [$08f2], sp
    ld a, [c]
    ld [$08f2], sp
    ld a, [c]
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl+], a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rrca
    ldh [rIF], a
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rst $38
    nop
    ld a, [bc]
    ld b, $ff
    ret nz

    ret nz

    ld a, [bc]
    ld b, $e1
    rst $38
    nop
    ld a, [bc]
    ld b, $ff
    rra
    rra
    inc c
    inc c
    ld a, [bc]
    inc b
    add [hl]
    rst $38
    nop
    ld a, [bc]
    ld b, $ff
    cp a
    cp a
    ld a, [bc]
    ld b, $3f
    rst $38
    nop
    ld a, [bc]
    rrca
    rst $38
    nop
    ld a, [bc]
    inc c
    rst $38
    ld a, [$fffa]
    nop
    ld a, [bc]
    inc c
    rst $38
    ld a, a
    ld a, a
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
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
    ld [$08f2], sp
    ld a, [c]
    ld [$08f2], sp
    ld a, [c]
    ld [$08f2], sp
    ld a, [c]
    ld [$08f2], sp
    ld a, [c]
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    pop hl
    pop hl
    ldh [$e0], a
    ld a, [bc]
    ld [$c0e1], sp
    ret nz

    rst $38
    rst $38
    ld c, $0e
    ld e, $1e
    ld a, [bc]
    ld [$fcfe], sp

jr_001_5d17:
    db $fc
    rst $38

jr_001_5d19:
    rst $38
    inc a

jr_001_5d1b:
    inc a
    add hl, sp
    add hl, sp
    ccf
    ccf
    jr c, jr_001_5d5a

    ld a, [bc]
    inc b
    ld sp, $1818
    rst $38
    rst $38
    inc e
    inc e
    adc [hl]
    adc [hl]
    adc a
    adc a
    rrca
    rrca
    ld a, [bc]
    inc b
    adc a
    ld b, a
    ld b, a
    rst $38
    rst $38
    nop
    nop
    ld a, [bc]
    inc b
    add hl, de
    dec bc
    dec bc
    add e
    add e
    jp $c7c3


    rst $00
    ld [hl], a
    ld [hl], a
    ldh [$e0], a
    call z, $80cc
    add b
    adc a
    adc a
    add a
    add a
    ret nz

    ret nz

    pop hl
    pop hl
    rst $38
    rst $38
    ret nz

    ret nz

    ld h, d

jr_001_5d5a:
    ld h, d
    ld a, [bc]
    inc b
    db $e3
    ld h, e
    ld h, e
    db $e3
    db $e3
    pop bc
    pop bc
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, [bc]
    inc e
    rst $38
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    nop
    sbc a
    jr nz, jr_001_5d17

    jr nz, jr_001_5d19

    jr nz, jr_001_5d1b

    jr nz, jr_001_5d7e

jr_001_5d7e:
    rst $38

jr_001_5d7f:
    nop
    rst $38

jr_001_5d81:
    nop
    rst $38

jr_001_5d83:
    nop
    nop

jr_001_5d85:
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
    rlca
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld a, [bc]
    ld a, [bc]
    rst $38
    ldh a, [$f0]
    db $e3
    db $e3
    pop bc
    pop bc
    ld a, [bc]
    ld a, [bc]
    rst $38
    rst $18
    rst $18
    rra
    rra
    sbc a
    sbc a
    ld a, [bc]
    inc c
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ld a, [bc]
    ld [$0aff], sp
    ld b, $7f
    cpl
    cpl
    rrca
    rrca
    ld a, [bc]
    ld a, [de]
    rst $38
    cp $fe
    ld a, [bc]
    ld a, [bc]
    rst $38
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    ld a, [bc]
    inc c
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    sbc a
    jr nz, @-$5f

    jr nz, @-$5f

    jr nz, @-$5f

    jr nz, jr_001_5d7f

    jr nz, jr_001_5d81

    jr nz, jr_001_5d83

    jr nz, jr_001_5d85

    jr nz, @+$01

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
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [$08f2], sp
    ld a, [c]
    ld [$08f2], sp
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    sbc $de
    rst $08
    rst $08
    rst $00
    rst $00
    ret nc

    ret nc

    rst $18
    rst $18
    ld a, h
    ld a, h
    add hl, sp
    add hl, sp
    db $10
    db $10
    ld de, $1011
    db $10
    jr c, jr_001_5e6d

    ld a, h
    ld a, h
    db $fc
    db $fc
    inc e
    inc e
    adc h
    adc h
    inc e
    inc e
    db $fc
    db $fc
    db $ec
    db $ec
    inc e
    inc e
    jr c, jr_001_5e7f

    ld a, a
    ld a, a
    ld a, b
    ld a, b
    ld [hl], e
    ld [hl], e
    ld h, b
    ld h, b
    ld h, e
    ld h, e
    ld h, c
    ld h, c
    ld [hl], b
    ld [hl], b
    jr c, jr_001_5e8f

    rst $38
    rst $38
    inc a
    inc a
    jr @+$1a

    ld sp, $f131
    pop af
    ret nc

    ret nc

    jr c, jr_001_5e9d

    ld a, h
    ld a, h
    db $fc
    db $fc
    jr jr_001_5e83

    ld a, [bc]
    inc b

jr_001_5e6d:
    call z, $fcfc
    db $ec
    db $ec
    inc c
    inc c
    ld e, $1e
    ld a, a

jr_001_5e77:
    ld a, a
    jr nc, jr_001_5eaa

    ld a, [bc]

jr_001_5e7b:
    ld [$5878], sp
    ld e, b

jr_001_5e7f:
    jr nc, jr_001_5eb1

    rst $38
    rst $38

jr_001_5e83:
    ldh [$e0], a
    ld a, [bc]
    ld a, [bc]
    call nz, Call_001_6060
    rst $38
    rst $38
    jp nz, Jump_001_60c2

jr_001_5e8f:
    ld h, b
    ld a, [bc]
    ld [$c062], sp
    ret nz

    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, [bc]
    ld a, [bc]
    ccf
    rra

jr_001_5e9d:
    rra
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

jr_001_5eaa:
    ldh a, [rP1]
    ldh a, [rP1]
    ld [$0832], sp

jr_001_5eb1:
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    ld [$0832], sp
    ld [hl-], a
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    ldh [rP1], a
    ldh [rP1], a
    ei
    ld a, [bc]
    dec bc
    rst $38
    ld a, [bc]
    inc b
    nop
    rst $38
    sbc a
    jr nz, jr_001_5e77

    jr nz, @-$5f

    jr nz, jr_001_5e7b

    jr nz, @-$5f

    jr nz, jr_001_5e7f

    jr nz, jr_001_5f01

    jr nz, jr_001_5f03

    ldh [$03], a
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp-$01
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

jr_001_5f01:
    rst $38
    nop

jr_001_5f03:
    rst $38
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
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ldh [rIE], a
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
    rlca
    rst $38
    inc bc
    rst $38
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
    rst $38
    db $fc
    rst $38
    sbc $ff
    rst $08
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
    ld [$78ff], sp
    rst $38
    jr c, @+$01

    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    sbc $ff
    db $fc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    add hl, sp
    rst $38
    add hl, sp
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    adc $ff
    ld c, $ff
    cp $ff
    adc $ff
    adc $ff
    rst $30
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    add $ff
    rst $08
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    ld [hl], e
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    or b
    rst $38
    ld hl, sp-$01
    or b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld de, $3aff
    rst $38
    ld e, $ff
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
    rlca
    rst $38
    rrca
    rst $38
    ld [$0eff], sp
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    sbc $ff
    rst $08
    rst $38
    rst $08
    rst $38
    sbc $ff
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$78ff], sp
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

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
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    adc $ff
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

Call_001_6060:
    nop
    rst $38
    ld a, a
    rst $38
    inc a
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
    db $e3
    rst $38
    add $ff
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
    rst $20
    rst $38
    ld [hl], e
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
    or b
    rst $38
    ld sp, hl
    rst $38
    or e
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
    ld hl, sp-$01
    adc b
    rst $38
    ld b, $ff
    ld c, $ff
    rra
    rst $38
    rra
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ret z

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38

Jump_001_60c2:
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    jr c, @+$01

    add hl, sp
    rst $38
    add hl, sp
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    cp $ff
    adc $ff
    adc $ff
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld de, $3aff
    rst $38
    ld e, $ff
    rst $08
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    add c
    rst $38
    add b
    rst $38
    add d
    rst $38
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, b
    rst $38
    jr c, @+$01

    ldh a, [rIE]
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
    rrca
    rst $38
    rra
    rst $38
    ld de, $00ff
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
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    rlca
    rst $38
    inc e
    rst $38
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
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ld h, b
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
    ld bc, $00ff
    rst $38
    dec e
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    dec e
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld hl, $f0ff
    rst $38
    ldh [rIE], a
    add b
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    rrca
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld bc, $f8ff
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    sub c
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    sbc h
    rst $38
    inc e
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    xor $ff
    nop
    rst $38
    or $ff
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    ld a, [bc]
    inc bc
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    pop af
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld hl, sp-$01
    sbc h
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    call nz, $f8ff
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    xor $ff
    xor $ff
    xor $ff
    xor $ff
    xor $ff
    db $fc
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    xor $ff
    xor $ff
    xor $ff
    xor $ff
    xor $ff
    ld a, h
    rst $38
    nop
    ld a, [bc]
    inc bc
    rst $38
    ld a, c
    rst $38
    add hl, sp
    rst $38
    dec a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld c, $ff
    nop
    rst $38
    rst $18
    rst $38
    cp b
    rst $38
    cp [hl]
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    ccf
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [rP1]
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], h
    rst $38
    inc a
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
    inc bc
    ld hl, sp+$03
    ld hl, sp+$00
    ld hl, sp+$00
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
    ld a, [bc]
    inc b
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
    ld a, [bc]
    inc b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    rst $38
    nop
    rst $38
    ld a, [bc]
    dec c
    nop
    ldh a, [rP1]
    ldh a, [$0a]
    dec c
    nop
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    nop
    ld b, b
    nop
    ld a, a
    ld a, [bc]
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, [bc]
    inc b
    nop
    rst $38
    nop
    nop
    ld a, [bc]
    nop
    ld bc, $7f01
    nop
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $0012
    db $fc
    db $fc
    ld bc, $620a
    db $fc
    db $fc
    nop
    nop
    cp $fe
    ld h, d
    ld h, d
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    ld h, d
    ld h, d
    cp $fe
    nop
    nop
    inc a
    inc a
    ld [hl], d
    ld [hl], d
    ld [hl], b
    ld [hl], b
    inc a
    inc a
    ld c, $0e
    ld c, [hl]
    ld c, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld bc, $180a
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    ld l, [hl]
    ld l, [hl]
    ld bc, $6204
    ld a, $3e
    nop
    nop
    rst $20
    rst $20
    ld bc, $7204
    ld l, d
    ld l, d
    ld bc, $6604
    ld [c], a
    ld [c], a
    ld bc, $000a
    ld bc, $1804
    jr nc, jr_001_6399

    ld bc, $0012
    rst $30
    rst $30
    ld bc, $6208
    inc [hl]
    inc [hl]
    jr jr_001_638d

    nop
    nop
    ldh a, [$f0]
    ld bc, $6006
    ld h, d
    ld h, d
    ld h, [hl]
    ld h, [hl]
    cp $fe
    nop
    nop
    inc a
    inc a
    ld bc, $620a
    inc a
    inc a
    nop
    nop

jr_001_638d:
    db $fc
    db $fc
    ld bc, $6604
    ld a, h
    ld a, h
    ld bc, $6004
    ldh a, [$f0]

jr_001_6399:
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    jr jr_001_63c5

    jr c, jr_001_63e7

    ld bc, $1808
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    inc e
    inc e
    jr nc, jr_001_63f0

    ld h, d
    ld h, d
    ld a, [hl]
    ld a, [hl]
    nop

jr_001_63c5:
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    inc a
    inc a
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc c
    inc c
    inc e
    inc e
    inc [hl]
    inc [hl]
    ld h, h
    ld h, h
    ld a, [hl]
    ld a, [hl]
    inc c
    inc c
    ld e, $1e
    nop
    nop
    ld a, [hl]

jr_001_63e7:
    ld a, [hl]
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld b, $06

jr_001_63f0:
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld bc, $6604
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, $0e
    inc e
    inc e
    ld bc, $1806
    nop
    nop
    inc a
    inc a
    ld bc, $6604
    inc a
    inc a
    ld bc, $6604
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld bc, $6604
    ld a, $3e
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld bc, $d804
    ld [hl], b
    ld [hl], b
    jp c, $ccda

    call z, Call_001_7676
    nop
    nop
    inc a
    inc a
    ld h, d
    ld h, d
    ld bc, $6006
    ld h, d
    ld h, d
    inc a
    inc a
    nop
    nop
    rst $30
    rst $30
    ld b, d
    ld b, d
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    ld bc, $1806
    nop
    nop
    db $fc
    db $fc
    ld bc, $6604
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, d
    ld h, d
    rst $30
    rst $30
    nop
    nop
    rst $30
    rst $30
    ld bc, $6204
    ld a, [hl]
    ld a, [hl]
    ld bc, $6204
    rst $30
    rst $30
    nop
    nop
    rst $38
    rst $38
    db $db
    db $db
    sbc c
    sbc c
    ld bc, $1806
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    sbc c
    sbc c
    sub c
    sub c
    adc c
    sbc c
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld l, b
    ld l, b
    ld a, h
    ld a, h
    ld h, d
    ld h, d
    ld h, c
    ld h, c
    di
    di
    nop
    nop
    db $fc
    db $fc
    ld bc, $6604
    ld a, h
    ld a, h
    ld bc, $6604
    db $fc
    db $fc
    nop
    nop
    cp $fe
    ld h, d
    ld h, d
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    db $e3
    db $e3
    db $76
    db $76
    ld l, d
    ld l, d
    ld bc, $6206
    rst $30
    rst $30
    nop
    nop
    db $e3
    db $e3
    ld [c], a
    ld [c], a
    ld h, d
    ld h, d
    ld l, d
    ld l, d
    db $76
    db $76
    ld h, d
    ld h, d
    ld b, d
    ld b, d
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc c
    inc c
    jr jr_001_64fd

    jr nc, jr_001_6517

    ld h, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop
    ld e, $1e
    ld bc, $0c04
    db $ec
    db $ec
    ld bc, $4c04
    jr c, jr_001_6531

    nop
    nop
    ldh a, [$f0]

jr_001_64fd:
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld a, b
    ld a, b
    ld h, h
    ld h, h
    ld h, d
    ld h, d
    rst $30
    rst $30
    nop
    nop
    inc a
    inc a
    ld bc, $6206
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    dec a
    dec a
    nop

jr_001_6517:
    nop
    rst $30
    rst $30
    ld bc, $620a
    inc a
    inc a
    nop
    nop
    xor $ee
    ld h, h
    ld h, h
    jr c, @+$3a

    jr @+$1a

    inc l
    inc l
    ld b, [hl]
    ld b, [hl]
    rst $28
    rst $28
    nop
    nop

jr_001_6531:
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    inc c
    inc c
    jr jr_001_6551

    jr nc, @+$32

    ld h, d
    ld h, d
    ld a, [hl]
    ld a, [hl]
    ld bc, $000c
    ld bc, $1804
    ld bc, $0008
    ld bc, $7e04
    ld bc, $007f
    ld bc, $007f

jr_001_6551:
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $007f
    ld bc, $005e
    ld bc, $2b00
    nop
    ld bc, $0302
    inc b
    dec b
    ld bc, $0600
    rlca
    nop
    ld bc, $0108
    add hl, bc
    ld a, [bc]
    dec bc
    ld bc, $2b00
    inc bc
    rlca
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    rlca
    ld d, $07
    rla
    ld a, [bc]
    dec bc
    jr @+$1b

    inc bc
    inc b
    ld a, [de]
    dec de
    rlca
    inc e
    dec c
    dec d
    dec d
    ld c, $2b
    inc b
    rlca
    dec e
    ld e, $17
    nop
    ld bc, $041f
    ld a, [de]
    dec hl
    inc bc
    rlca
    ld e, $01
    dec e
    jr nz, jr_001_65bb

    ld [bc], a
    ld a, [bc]
    rra
    dec de
    ld hl, $191d

jr_001_65bb:
    ld bc, $0b07
    ld [hl+], a
    add hl, bc
    dec hl
    inc b
    rlca
    inc bc
    inc hl
    inc h
    add hl, bc
    jr nz, jr_001_65ce

    ld a, [bc]
    dec bc
    dec hl
    jr @+$09

jr_001_65ce:
    dec h
    add hl, de
    ld [bc], a
    dec de
    ld h, $08
    ld hl, $2b27
    ld b, $07
    dec bc
    add hl, de
    ld a, [bc]
    nop
    ld h, $17
    ld bc, $0700
    ld e, $18
    dec hl
    rlca
    rlca
    jr jr_001_6611

    add hl, hl
    inc c
    dec c
    ld c, $0f
    db $10
    dec hl
    rlca
    rlca
    inc bc
    dec b
    dec de
    ld bc, $0b19
    add hl, bc
    dec e
    jr jr_001_6627

    ld [$1107], sp
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $1c
    ld [hl+], a
    dec hl
    ld b, $07
    dec bc
    add hl, de
    ld a, [bc]
    nop
    ld h, $17
    dec de
    inc bc

jr_001_6611:
    ld a, [bc]
    dec b
    ld [bc], a
    dec hl
    rlca
    rlca
    ld d, $2a
    dec hl
    dec hl
    rlca
    rla
    ld a, [de]
    ld bc, $0202
    rlca
    dec e
    add hl, bc
    inc b
    ld a, [bc]
    add hl, de

jr_001_6627:
    inc bc
    dec de
    ld a, [de]
    jr nz, jr_001_6657

    ld [de], a
    rlca
    nop
    ld d, $24
    rlca
    ld [bc], a
    dec bc
    add hl, de
    dec e
    rla
    inc h
    add hl, bc
    ld bc, $2b05
    inc de
    rlca
    ld [bc], a
    dec e
    add hl, de
    inc b
    ld a, [bc]
    dec b
    rlca
    inc e
    dec c
    dec d
    inc d
    dec d
    dec hl
    ld de, $0207
    dec bc
    inc bc
    dec b
    dec b
    dec e
    inc h
    ld bc, $0719

jr_001_6657:
    ld [bc], a
    ld a, [bc]
    rra
    dec de
    ld hl, $191d
    ld bc, $2d2b
    rlca
    ld e, $1d
    rla
    inc h
    inc b
    dec e
    jr nz, jr_001_668a

    ld a, [bc]
    dec b
    rlca
    dec e
    add hl, bc
    inc b
    ld a, [bc]
    add hl, de
    inc bc
    dec de
    ld a, [de]
    jr nz, jr_001_66a2

    dec c
    rlca
    inc hl
    ld a, [bc]
    ld bc, $0407
    dec e
    dec de
    ld bc, $0a21
    ld a, [bc]
    nop
    rlca
    inc e
    dec c
    dec d
    inc d

jr_001_668a:
    ld de, $4d2b
    rlca
    add hl, bc
    inc bc
    rla
    ld bc, $0205
    ld bc, $0700
    ld e, $18
    rlca
    dec b
    inc bc
    dec b
    dec de
    ld bc, $0005
    ld a, [bc]

jr_001_66a2:
    dec hl
    inc c
    rlca
    dec hl
    nop
    ld a, [bc]
    ld a, [bc]
    ld b, $ff
    ld [hl], a
    ld [hl], a
    daa
    daa
    ld d, a
    ld d, a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld [hl], l
    ld a, [bc]
    ld b, $ff
    sbc l
    sbc l
    xor d
    xor d
    sbc b
    sbc b
    ld a, [bc]
    inc b
    cp d
    ld a, [bc]
    ld b, $ff
    sbc e
    sbc e
    xor d
    xor d
    sbc c
    sbc c
    ld a, [bc]
    inc b
    xor d
    ld a, [bc]
    ld b, $ff
    ret


    ret


    cp d
    cp d
    sbc c
    sbc c
    cp d
    cp d
    adc d
    adc d
    ld a, [bc]
    ld b, $ff
    ld [hl], l
    ld [hl], l
    dec h
    dec h
    ld d, l
    ld d, l
    ld [hl], l
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld b, $ff
    ld h, l
    ld h, l
    ld e, l
    ld e, l
    ld l, l
    ld l, l
    ld [hl], l
    ld [hl], l
    ld b, l
    ld b, l
    ld a, [bc]
    ld b, $ff
    sbc a
    sbc a
    ld a, [bc]
    ld b, $7e
    sbc [hl]
    sbc [hl]
    ld a, [bc]
    ld b, $ff
    ld h, [hl]
    ld h, [hl]
    xor d
    xor d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    inc b
    xor d
    ld a, [bc]
    ld b, $ff
    ld a, [hl]
    ld a, [hl]
    cp l
    cp l
    cp [hl]
    cp [hl]
    cp a
    cp a
    ld a, h
    ld a, h
    ld a, [bc]
    ld b, $ff
    ld h, l
    ld h, l
    db $dd
    db $dd
    adc $ce
    ld a, [bc]
    inc b
    ld e, l
    ld a, [bc]
    ld b, $ff
    ld a, [bc]
    inc b
    ld a, a
    rst $38
    rst $38
    ld a, [bc]
    inc b
    ld a, a
    ld a, [bc]
    ld b, $ff
    cp h
    cp h
    ld e, l
    ld e, l
    dec e
    dec e
    ld e, l
    ld e, l
    ld d, h
    ld d, h
    ld a, [bc]
    ld b, $ff
    db $ed
    db $ed
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    ld d, l
    ld d, l
    sub $d6
    ld a, [bc]
    ld b, $ff
    ld e, c
    ld e, c
    ld d, a
    ld d, a
    ld d, e
    ld d, e
    ld d, a
    ld d, a
    pop de
    pop de
    ld a, [bc]
    ld b, $ff
    or l
    or l
    ld a, [bc]
    ld b, $55
    ld sp, $0a31
    ld b, $ff
    or [hl]
    or [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, $16
    ld d, [hl]
    ld d, [hl]
    ld d, d
    ld d, d
    ld a, [bc]
    ld b, $ff
    adc d
    adc d
    jp c, $d8da

    ret c

    sbc $de
    reti


    reti


    ld a, [bc]
    ld b, $ff
    pop af
    pop af
    ld a, [bc]
    ld [$0afb], sp
    ld b, $ff
    inc d
    inc d
    ld a, [bc]
    ld [$0ab5], sp
    ld b, $ff
    cp l
    cp l
    ld e, l
    ld e, l
    dec e
    dec e
    ld e, l
    ld e, l
    ld d, h
    ld d, h
    ld a, [bc]
    ld b, $ff
    reti


    reti


    xor d
    xor d
    adc d
    adc d
    ld a, [bc]
    inc b
    xor d
    ld a, [bc]
    ld b, $ff
    set 1, e
    cp c
    cp c
    cp d
    cp d
    cp e
    cp e
    set 1, e
    ld a, [bc]
    ld b, $ff
    or [hl]
    or [hl]
    ld a, [hl+]
    ld a, [hl+]
    and d
    and d
    ld a, [bc]
    inc b
    xor d
    ld a, [bc]
    ld b, $ff
    ld a, a
    ld a, a
    ld a, [bc]
    ld [$dfbf], sp
    rst $18
    ld a, [bc]
    inc b
    rst $38
    inc sp
    inc sp
    ld d, l
    ld d, l
    inc sp
    inc sp
    ld a, [bc]
    inc b
    ld [hl], l
    ld a, [bc]
    ld b, $ff
    inc de
    inc de
    ld a, [bc]
    ld b, $55
    inc de
    inc de
    ld a, [bc]
    ld b, $ff
    ld e, c
    ld e, c
    ld a, [bc]
    ld b, $57
    add hl, de
    add hl, de
    ld a, [bc]
    ld b, $ff
    sub e
    sub e
    ld [hl], l
    ld [hl], l
    inc de
    inc de
    ld [hl], l
    ld [hl], l
    dec d
    dec d
    inc sp
    inc sp
    ld d, l
    ld d, l
    inc sp
    inc sp
    ld a, [bc]
    inc b
    ld [hl], l
    ld a, [bc]
    ld b, $ff
    sbc c

Call_001_67ff:
    sbc c
    ld [hl], a
    ld [hl], a
    dec sp
    dec sp
    ld a, l
    ld a, l
    ld de, $0a11
    ld b, $ff
    sbc a
    sbc a
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $18
    rra
    rra
    ld a, [bc]
    ld b, $ff
    sub c
    sub c
    ld a, e
    ld a, e
    cp e
    cp e
    db $db
    db $db
    dec de
    dec de
    ld a, [bc]
    ld b, $ff
    or e
    or e
    ld d, l
    ld d, l
    inc de
    inc de
    ld a, [bc]
    inc b
    ld d, l
    ld a, [bc]
    ld b, $ff
    rra
    rra
    ld a, [bc]
    ld [$0abf], sp
    ld b, $ff
    ld de, $0a11
    ld b, $b5
    or c
    or c
    ld a, [bc]
    ld b, $ff
    di
    di
    push af
    push af
    di
    di
    ld a, [bc]
    inc b
    rst $30
    ld a, [bc]
    ld b, $ff
    db $76
    db $76
    ld l, d
    ld l, d
    ld h, d
    ld h, d
    ld l, e
    ld l, e
    dec hl
    dec hl
    ld a, [bc]
    ld b, $ff
    ld a, [bc]
    inc b
    cp a
    ccf
    ccf
    ld a, [bc]
    inc b
    ld a, a
    ld a, [bc]
    ld b, $ff
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]

jr_001_687d:
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    ld a, a
    nop
    ld a, [bc]
    dec hl
    nop
    ld a, [bc]
    inc d
    rst $38
    cp $ff
    db $fc
    rst $38
    di
    db $fc
    rst $20
    ld hl, sp-$31
    ldh a, [$8f]

jr_001_6899:
    ldh a, [$e3]
    db $fc
    sbc l
    ld [c], a
    ld a, h
    add d
    ld sp, hl
    nop
    di
    inc b
    rst $00
    jr z, @-$6f

    ld d, b
    rra
    and b
    adc [hl]
    ld de, $433d
    jp $f73f


    rrca
    rst $28
    rra
    ld e, a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, [bc]
    stop
    ld a, [bc]
    ld a, [bc]
    rst $38
    ldh [rIE], a
    rst $30
    rst $38
    ei
    ld a, [bc]
    dec bc
    rst $38
    nop
    ld a, [bc]
    rrca
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    ld a, [bc]
    inc bc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    cp $f3
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$35
    db $f4
    ld l, $d1
    ld l, h
    sub d
    add sp, $15
    ld [hl], c
    adc d
    ld h, e
    sub h
    rst $00
    jr z, jr_001_687d

    ld d, c
    jr jr_001_6899

    ld a, $41
    ld [hl], c
    adc a
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    ld a, a
    ld a, [bc]
    inc bc
    rst $38
    db $fd
    rst $38
    cp $0a
    dec bc
    rst $38
    ldh a, [$0a]
    dec b
    rst $38
    ld a, a
    rst $38
    cp a
    ld [$f5df], a
    rst $28
    ld a, [c]
    rst $30
    ld hl, sp+$03
    db $fc
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    pop af
    rst $28
    or c
    rst $28
    ld d, b
    rst $20
    sbc b
    rst $30
    ld [$08f7], sp
    ld a, [bc]
    dec c
    rst $38
    ld a, a
    rst $38
    ld a, a
    xor $d1
    cp [hl]
    ret nz

    cp h
    jp nz, $85f8

    ld [hl], c
    adc d
    ld [hl], e
    add h
    inc hl
    call nc, $e986
    dec a
    ld b, e
    ld a, e
    add a
    ld [hl], a
    adc a
    rst $08
    ccf
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    ld a, [bc]
    inc bc
    rst $38
    ei
    db $fc
    db $fd
    cp $fe
    ld a, [bc]
    inc c
    rst $38
    nop
    rst $38
    nop
    xor d
    ld d, l
    dec d
    ld [$f5ca], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ei
    inc b
    ei
    inc b
    xor e
    ld d, h
    ld d, l
    xor d
    xor b
    ld d, [hl]
    nop
    cp $00
    rst $20
    nop
    pop af
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rrca
    ld de, $0100
    ld a, [bc]
    inc b
    nop
    ld a, [bc]
    dec bc
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, [bc]
    ld [$feff], sp
    cp $fc
    db $fc
    ld hl, sp-$08
    ei
    ld a, [$080a]
    rst $38
    rra
    rra
    rrca
    rrca
    rst $20
    rlca
    rst $20
    rlca
    ld a, [bc]
    ld [$9fff], sp
    sbc a
    rra
    rra
    ld e, a
    ld c, a
    ld e, h
    inc c
    ld a, [bc]
    inc b
    rst $38
    cp $ff
    cp $ff
    cp $fe
    ld a, [bc]
    inc bc
    db $fc
    db $fd
    db $fd
    rst $38
    ld bc, $1fff
    cp a
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
    ld a, [bc]
    rlca
    rst $38
    db $fc
    rst $38
    cp $0a
    dec c
    rst $38
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp-$80
    db $fc
    ldh [$fc], a
    ldh a, [$fe]
    ld hl, sp-$02
    db $fc
    add e
    ccf
    ld e, a
    ccf
    rra
    rra
    daa
    rra
    inc hl
    rra
    ld hl, $211f
    ccf
    ld b, b
    ccf
    ld b, b
    ld a, [bc]
    ld [$c3ff], sp
    jp $8181


    add hl, de
    ld bc, $003b
    ld a, [bc]
    ld [$f2ff], sp
    ld a, [c]
    ret nz

    ret nz

    sbc h
    sub b
    cp h
    and b
    ld a, [bc]
    ld [$84ff], sp
    add h
    add b
    add b
    sbc e
    ld [bc], a
    sbc e
    nop
    ld a, [bc]
    ld [$7fff], sp
    ld a, a
    ld a, [bc]
    dec b
    ccf
    rra
    ld sp, hl
    ld a, [bc]
    inc bc
    ld hl, sp-$04
    db $fc
    cp $fc
    rst $38
    cp $0a
    ld b, $ff
    rst $30
    ld [hl], e
    rst $38
    di
    ld a, a
    ld a, e
    rra
    rra
    adc a
    rrca
    add $06
    push hl
    push bc
    pop hl
    pop hl
    ld a, [bc]
    ld [$0fff], sp
    rrca
    daa
    daa
    ret nz

    add b
    db $e3
    inc bc
    ld e, h
    inc c
    ld e, b
    ld [$0818], sp
    jr c, jr_001_6a70

    jr nc, jr_001_6a54

    inc bc
    nop
    inc e
    jr jr_001_6a8b

    nop
    ld a, [bc]
    inc bc
    rst $38
    ld a, a

jr_001_6a54:
    rst $38
    ld a, a
    rst $08
    ld c, a
    adc a
    rrca
    rra
    rlca
    cp a
    rlca
    cp c
    add hl, bc
    ld a, [bc]
    ld [$78ff], sp
    ld a, b
    jr nc, jr_001_6a97

    add [hl]
    add b
    adc a
    add b
    ld a, [bc]
    ld [$b4ff], sp
    or h

jr_001_6a70:
    jr nc, jr_001_6aa2

    inc sp
    ld [de], a
    inc sp
    db $10
    ld a, [bc]
    ld [$e1ff], sp
    pop hl
    ld b, b
    ld b, b
    inc c
    nop
    sbc l
    nop
    ld a, [bc]
    rrca
    rst $38
    ld a, a
    add b
    nop
    ld hl, sp-$01
    ld hl, sp-$80

jr_001_6a8b:
    add b
    nop
    ld hl, sp-$01
    ld hl, sp-$80
    add b
    nop
    ld hl, sp-$01
    nop
    nop

jr_001_6a97:
    ld bc, $0a82
    dec b
    nop
    ldh [$0a], a
    dec b
    nop
    ldh a, [$7f]

jr_001_6aa2:
    add b
    rst $38
    nop
    ld a, a
    nop
    rra
    ld bc, $110f
    rlca
    add hl, bc
    rlca
    dec bc
    inc bc
    dec b
    rlca
    inc b
    ld e, $1c
    add c
    add c
    jp $ff83


    ret nz

    rst $38
    pop hl
    ld a, [bc]
    inc b
    rst $38
    inc a
    inc c
    sbc h
    sbc h
    ret nz

    add b
    ld [c], a
    ld b, d
    rst $38
    ldh [rIE], a
    pop af
    ld a, [bc]
    inc b
    rst $38
    sbc e
    add hl, bc
    sbc e
    add hl, bc
    dec de
    add hl, bc
    ld a, a
    ld c, l
    rst $38
    dec c
    rst $38
    ccf
    ld a, [bc]
    inc b
    rst $38
    ccf
    rra
    ccf
    ld a, [bc]
    inc bc
    rra
    ccf
    rra
    rst $38
    adc a
    rst $38
    sbc a
    ld a, [bc]
    inc b
    rst $38
    ld sp, hl
    ld sp, hl
    ei
    ei
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    cp $0a
    inc b
    rst $38
    pop hl
    ldh [$c4], a
    ret nz

    ld c, $00
    rra
    ld [bc], a
    rst $38
    rlca
    rst $38
    rrca
    ld a, [bc]
    inc b
    rst $38
    di
    ldh [$f7], a
    pop af
    ld c, $08
    ld e, $1a
    cp $06
    cp $8e
    ld a, [bc]
    inc b
    cp $1c
    inc c
    inc e
    inc e
    ld e, h
    inc c
    ld e, h
    inc c
    ld e, a
    ld c, $5f
    ld c, $5f
    rrca
    rra
    rrca
    cp c
    add hl, de
    sub c
    db $10
    add h
    inc b
    adc $48
    rst $38
    ld b, d
    rst $38
    ld h, a
    ld a, [bc]
    inc b
    rst $38
    adc a
    add e
    daa
    rlca
    ld [hl], b
    ld b, b
    ld a, b
    db $10
    rst $38
    jr c, @+$01

    inc a
    rst $38
    rst $38
    db $fc
    db $fc
    scf
    ld de, $0127
    rla
    inc de
    sub a
    sub e
    rst $38
    dec bc
    rst $38
    ld c, e
    rst $38
    rst $38
    nop
    nop
    add e
    add d
    adc a
    adc [hl]
    ret nz

    ret nz

    pop hl
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rlca
    rlca
    rst $38
    ld a, [bc]
    inc bc
    ld a, a
    ld a, [bc]
    inc bc
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, [bc]
    ld b, $ff
    ld hl, sp-$80
    add b
    nop
    ld hl, sp-$01
    ld hl, sp-$80
    add b
    nop
    ld hl, sp-$01
    ld hl, sp-$80
    add b
    ld a, [bc]
    ld b, $00
    db $fc
    ld a, [bc]
    dec b
    nop
    cp $0a
    inc b
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_001_6c1e

    add b
    ld a, [bc]
    inc bc
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ld a, [bc]
    inc c
    rst $38
    ld hl, sp-$08
    add e
    add e
    cp $fe
    ld a, [bc]
    ld b, $ff
    ld hl, sp-$08
    add e
    add e
    ccf
    inc a
    rst $38
    pop bc
    ccf
    cpl
    rst $38
    rrca
    ld hl, sp+$18
    add c
    add c
    ccf
    inc a
    rst $38
    ret nz

    rst $38
    rra
    ld a, [bc]
    inc b
    rst $38
    ldh [$e0], a
    rlca
    rlca
    rst $38
    ldh a, [rIE]
    inc bc
    ld a, [bc]
    ld b, $ff
    nop
    nop
    rrca
    ld c, $ff
    add b
    rst $38
    rlca
    ld a, [bc]
    ld [$1fff], sp
    rra
    rst $38
    nop
    rst $38
    rrca
    ld a, [bc]
    ld a, [bc]
    rst $38
    ld hl, sp-$08
    rst $38
    inc bc
    rst $38
    db $fc
    ld a, [bc]
    ld a, [bc]
    rst $38
    ccf
    ccf
    sbc a
    sbc a
    rst $38
    rra
    rst $38
    rst $08
    ld a, [bc]
    ld [$fcff], sp
    ld a, [$feff]
    ld a, [bc]
    dec b
    rst $38
    cp $0a
    ld b, $ff
    nop
    rlca
    rst $38
    nop
    ld a, [bc]
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38

jr_001_6c1e:
    ld hl, sp+$0a
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $0fff
    ld a, [bc]
    dec b
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [bc]
    jr @+$01

    db $fc
    db $fc
    ld a, [bc]
    ld [$feff], sp
    cp $f0
    ldh a, [$87]
    add a
    ccf
    jr c, @+$0c

    inc b
    rst $38
    db $fc
    db $fc
    pop hl
    pop hl
    rrca
    ld c, $ff
    ldh a, [rIE]
    rlca
    rst $38
    ld a, a
    ld hl, sp-$08
    pop bc
    pop bc
    rra
    inc e
    rst $38
    ldh [rIE], a
    rrca
    ld a, [bc]
    ld b, $ff
    ccf
    inc a
    rst $38
    pop bc
    rst $38
    rra
    ld a, [bc]
    dec bc
    rst $38
    rra
    ld a, [bc]
    inc d
    rst $38
    inc a
    inc a
    ld e, l
    ld e, l
    inc a
    inc a
    ld e, l
    ld e, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld b, $ff
    reti


    reti


    ld d, a
    ld d, a
    rst $10
    rst $10
    ld d, a
    ld d, a
    ld e, c
    ld e, c
    ld a, [bc]
    ld b, $ff
    ld e, e
    ld e, e
    ld d, l
    ld d, l
    ld de, $0a11
    inc b
    ld d, l
    ld a, [bc]
    ld b, $ff
    inc sp
    inc sp
    ld d, l
    ld d, l
    dec [hl]
    dec [hl]
    ld d, l
    ld d, l
    ld d, e
    ld d, e
    ld a, [bc]
    ld b, $ff
    sbc a
    sbc a
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $18
    rra
    rra
    rst $38
    jp Jump_000_1fff


    ld a, [bc]
    ld b, $ff
    ret nz

    ret nz

    ld a, [bc]
    ld a, [bc]
    rst $38
    inc sp
    inc sp
    ld d, l
    ld d, l
    inc sp
    inc sp
    ld a, [bc]
    inc b
    ld [hl], l
    ld a, [bc]
    ld b, $ff
    add hl, de
    add hl, de
    ld a, [bc]
    inc b
    ld d, a
    ld d, l
    ld d, l
    ld de, $0a11
    ld b, $ff
    dec sp
    dec sp
    ld d, l
    ld d, l
    ld sp, $0a31
    inc b
    ld d, l
    ld a, [bc]
    ld b, $ff
    ld [hl], l
    ld [hl], l
    inc h
    inc h
    ld d, l
    ld d, l
    ld a, [bc]
    inc b
    ld [hl], l
    ld a, [bc]
    ld b, $ff
    call nc, $95d4
    sub l
    ld d, l
    ld d, l
    ld a, [bc]
    inc b
    push de
    ld a, [bc]
    ld b, $ff
    rst $20
    rst $20
    ld a, [bc]
    inc b
    ld e, a
    ld d, a
    ld d, a
    ld b, a
    ld b, a
    ld a, [bc]
    ld b, $ff
    inc a
    inc a
    ld e, e
    ld e, e
    dec a
    dec a
    ld a, [hl]
    ld a, [hl]
    ld l, b
    ld l, b
    ld a, [bc]
    ld b, $ff
    ld a, [bc]
    inc b
    xor d
    adc d
    adc d
    ld a, [bc]
    inc b
    xor d
    ld a, [bc]
    ld b, $ff
    ld l, [hl]
    ld l, [hl]
    xor l
    xor l
    ld l, h
    ld l, h
    xor l
    xor l
    and h
    and h
    ld a, [bc]
    ld b, $ff
    ld d, a
    ld d, a
    rst $10
    rst $10
    rst $00
    rst $00
    rst $28
    rst $28
    ld l, a
    ld l, a
    ld a, [bc]
    ld a, [bc]
    rst $38
    ret nz

    ret nz

    ld a, [bc]
    ld a, [bc]
    rst $38
    sub l
    sub l
    ld [hl], l
    ld [hl], l
    ld [hl], c
    ld [hl], c
    ld [hl], l
    ld [hl], l
    sub l
    sub l
    ld a, [bc]
    ld b, $ff
    sbc c
    sbc c
    ld [hl], a
    ld [hl], a
    dec sp
    dec sp
    ld a, l
    ld a, l
    ld de, $0a11
    ld b, $ff
    sub c
    sub c
    ld a, [bc]
    ld b, $75
    sub c
    sub c
    ld a, [bc]
    ld b, $ff
    dec [hl]
    dec [hl]
    ld a, [bc]
    ld b, $55
    ld e, e
    ld e, e
    ld a, [bc]
    ld b, $ff
    sub e
    sub e
    ld [hl], l
    ld [hl], l
    inc sp
    inc sp
    ld [hl], l
    ld [hl], l
    dec d
    dec d
    ld a, [bc]
    ld b, $ff
    sub h
    sub h
    ld [hl], l
    ld [hl], l
    or l
    or l
    push de
    push de
    inc d
    inc d
    ld a, [bc]
    ld b, $ff
    ld c, a
    ld c, a
    ld a, [bc]
    ld [$0a57], sp
    ld b, $ff
    sbc l
    sbc l
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    ld e, l
    ld e, l
    dec d
    dec d
    ld a, [bc]
    ld b, $ff
    ld b, l
    ld b, l
    ld a, [bc]
    ld b, $55
    ld b, h
    ld b, h
    ld a, [bc]
    ld b, $ff
    cp e
    cp e
    or l
    or l
    or c
    or c
    or l
    or l
    sub l
    sub l
    ld a, [bc]
    ld b, $ff
    inc sp
    inc sp
    ld a, [bc]
    ld b, $55
    ld d, e
    ld d, e
    ld a, [bc]
    ld b, $ff
    or e
    or e
    ld d, l
    ld d, l
    inc de
    inc de
    ld a, [bc]
    inc b
    ld d, l
    ld a, [bc]
    ld b, $ff
    rla
    rla
    or a
    or a
    or l
    or l
    or d
    or d
    or a
    or a
    ld a, [bc]
    ld b, $ff
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    ld a, [bc]
    ld b, $ff
    rst $18
    rst $18
    ld d, a
    ld d, a
    rst $08
    rst $08
    ld a, [bc]
    inc b
    ld d, a
    ld a, [bc]
    ld b, $ff
    or e
    or e
    ld d, l
    ld d, l
    dec d
    dec d
    ld a, [bc]
    inc b
    ld d, l
    ld a, [bc]
    ld b, $ff
    inc a
    inc a
    ld a, [bc]
    inc b
    ld e, e
    ld e, d
    ld e, d
    jr c, jr_001_6e33

    ld a, [bc]
    ld b, $ff
    sbc l
    sbc l
    xor d
    xor d
    sbc b
    sbc b
    ld a, [bc]
    inc b
    xor d
    ld a, [bc]
    ld b, $ff
    sbc d
    sbc d
    xor d
    xor d
    sbc b
    sbc b
    ld a, [bc]
    inc b
    cp d
    ld a, [bc]
    ld b, $ff
    or e
    or e
    xor [hl]
    xor [hl]
    ld a, [bc]
    inc b
    xor a
    or d
    or d
    ld a, [bc]
    ld b, $ff
    ccf
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    ccf
    ccf
    ld a, [bc]
    ld b, $ff
    dec a
    dec a
    ld e, h
    ld e, h

jr_001_6e33:
    dec a
    dec a
    ld a, l
    ld a, l
    ld l, l
    ld l, l
    ld a, [bc]
    ld b, $ff
    call nc, $96d4
    sub [hl]
    ld d, [hl]
    ld d, [hl]
    ld a, [bc]
    inc b
    sub $0a
    ld b, $ff
    ld h, l
    ld h, l
    db $dd
    db $dd
    call c, $dddc
    db $dd
    push hl
    push hl
    ld a, [bc]
    ld b, $ff
    ld h, l
    ld h, l
    ld e, l
    ld e, l
    ld c, l
    ld c, l
    ld e, l
    ld e, l
    ld b, h
    ld b, h
    ld a, [bc]
    ld b, $ff
    ld a, [bc]
    ld [$9fbf], sp
    sbc a
    ld a, [bc]
    ld b, $ff
    sbc [hl]
    sbc [hl]
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    ld e, l
    ld e, l
    dec d
    dec d
    ld a, [bc]
    ld b, $ff
    call z, Call_001_56cc
    ld d, [hl]
    ld c, [hl]
    ld c, [hl]
    ld a, [bc]
    inc b
    ld d, [hl]
    ld a, [bc]
    ld b, $ff
    ld d, l
    ld d, l
    push de
    push de
    push bc
    push bc
    push de
    push de
    call nc, Call_000_0ad4
    ld b, $ff
    ld c, a
    ld c, a
    ld d, a
    ld d, a
    ld c, a
    ld c, a
    ld a, [bc]
    inc b
    ld d, a
    ld a, [bc]
    nop
    xor a
    xor a
    stop
    ld bc, $0302
    nop
    xor a
    inc c
    inc b
    dec b
    ld b, $07
    xor a
    inc c
    nop
    ld [$0a09], sp
    nop
    nop
    xor a
    inc c
    inc b
    dec bc
    inc c
    dec c
    ld c, $af
    dec bc
    nop
    rrca
    db $10
    xor a
    inc bc
    nop
    xor a
    inc c
    inc b
    ld de, $1312
    inc d
    dec d
    xor a
    inc b
    nop
    ld d, $17
    nop
    jr jr_001_6ed0

jr_001_6ed0:
    add hl, de
    ld a, [de]
    xor a
    inc b
    nop
    xor a
    inc c
    inc b
    nop
    dec de
    inc e
    inc b
    dec e
    ld e, $1f
    jr nz, jr_001_6f02

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_001_6f12

    ld a, [hl+]
    nop
    nop
    xor a
    inc c
    inc b
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_001_6f29

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_6f39

    ld a, [hl-]
    nop

jr_001_6f02:
    nop
    xor a
    inc c
    inc b
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $af
    inc b
    nop
    ccf
    ld b, b
    ld b, c

jr_001_6f12:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    xor a
    inc c
    inc b
    nop
    nop
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
    xor a

jr_001_6f29:
    ld [$af00], sp
    inc c
    inc b
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    ld d, a
    ld e, b

jr_001_6f39:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    xor a
    dec b
    nop
    xor a
    inc c
    inc b
    nop
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    ld h, c
    nop
    ld h, d
    ld h, e
    ld d, l
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    xor a
    inc bc
    nop
    xor a
    inc c
    inc b
    nop
    nop
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    nop
    ld h, c
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    xor a
    inc c
    inc b
    nop
    nop
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld h, c
    nop
    ld h, d
    ld h, e
    ld d, l
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    xor a
    inc b
    nop
    xor a
    inc c
    inc b
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    ld h, c
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    xor a
    rlca
    nop
    xor a
    inc c
    inc b
    nop
    nop
    add b
    add c
    add d
    add e
    nop
    ld h, c
    nop
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    xor a
    inc b
    nop
    xor a
    inc c
    inc b
    nop
    nop
    adc e
    adc h
    adc l
    nop
    nop
    ld h, c
    nop
    adc [hl]
    adc a
    sub b
    sub c
    ld h, e
    sub d
    ld e, h
    xor a
    inc b
    nop
    xor a
    inc c
    inc b
    nop
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld h, c
    nop
    sbc b
    sbc c
    sbc d
    sbc e
    xor a
    rlca
    nop
    xor a
    inc c
    inc b
    xor a
    inc d
    nop
    xor a
    inc c
    inc b
    xor a
    dec b
    nop
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
    xor a
    dec b
    nop
    xor a
    inc c
    inc b
    xor a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_001_70f0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_001_7676:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_001_7aff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_001_7bff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_001_7f80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
