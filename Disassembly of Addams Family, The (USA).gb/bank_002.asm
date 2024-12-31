; Disassembly of "Addams Family, The (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

Jump_002_4000:
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_002_4008

    rst $38

jr_002_4008:
    inc bc
    ld a, a
    jp nz, Jump_002_50a0

    adc b
    ld l, h
    ld e, $15
    db $10
    adc b
    call nz, Call_002_71a2
    rlca
    di
    db $fd
    ld a, [$7dfe]
    ccf
    ld e, $8f
    sub a
    ld c, b
    db $10
    ld [$0306], sp
    dec a
    sbc $0f
    ldh a, [rNR31]
    pop af
    ldh a, [rDIV]
    nop
    ld c, d
    ld h, h
    pop af
    ld sp, hl
    dec bc
    call c, $ff6e
    ld b, b
    rra
    rst $00
    db $e4
    nop
    inc b
    sub $66
    rst $38
    ld a, l
    add c
    rst $18
    ld h, b
    ld b, a
    db $db
    ldh a, [rTMA]
    ld a, a
    ld a, h
    rrca
    rst $18
    ldh [rNR23], a
    ld l, e
    db $fd
    ld a, [hl]
    ret nz

    ld e, a
    sub b
    rla
    rst $20
    db $f4
    inc bc
    db $fc
    ld a, a
    ld b, e
    and d
    jp Jump_000_0fd0


    inc bc
    add d
    inc d
    rst $38
    ld sp, $224e
    db $db
    adc h
    or a
    db $e3
    xor [hl]
    cp h
    inc d
    ld bc, $5ed8
    adc [hl]
    dec sp
    ld [hl+], a
    ld d, c
    ld b, $d4
    ld h, c
    reti


    inc l
    sub [hl]
    dec de
    ld l, e
    adc [hl]
    db $dd
    ld h, e
    or a
    cp b
    pop hl
    db $10
    ret z

    ld e, b
    dec c
    ld a, [$7d06]
    inc bc
    ld e, $81
    sub a
    ld c, e
    call z, $6724
    ld [de], a
    or e
    add hl, bc
    ld l, c
    add h
    cp b
    db $fc
    ld e, [hl]
    ld a, a
    cpl
    or b
    rst $10
    di
    daa
    sbc e
    ld c, c
    adc $a5
    pop bc
    pop hl
    ld [hl], b
    ld hl, sp-$6a
    ld c, $30
    cp $fb
    ld a, a
    cp [hl]
    ld e, a
    ldh [$88], a
    ld l, l
    ld h, d
    and e
    dec c
    rst $00
    ld h, h
    add hl, de
    db $e4
    add h
    cp $18
    ld b, c
    adc c
    and h
    jp nz, $3933

    cp d
    dec [hl]
    ld a, [de]
    ld e, $00
    call z, Call_000_1fbe
    ret nz

    or a
    ld hl, sp+$1d
    cp $70
    ld a, b
    ld [$031c], sp
    rst $00
    push hl
    ld h, e
    ld h, l
    or h
    db $db
    ld l, [hl]
    scf
    ld c, [hl]
    ld bc, $faf3
    or c
    dec l
    sub c
    dec a
    pop hl
    ld c, b
    inc b
    inc bc
    ld bc, $fe80
    adc e
    ccf
    call $e0e5
    sbc b
    cp c
    ld e, b
    or e
    ld a, c
    cp a
    add hl, sp
    cp h
    cp $8c
    add hl, hl
    db $f4
    ld hl, sp+$7a
    ld e, $03
    xor $77
    ld hl, sp+$7f
    cp b
    ret nz

    ld a, [hl]
    ccf
    ld hl, $975c
    cp a
    ld l, $63
    adc $f4
    ld a, [$c0fc]
    nop
    ret z

    dec a
    ldh a, [$ef]
    ld a, b
    dec sp
    db $d3
    add sp, -$0a
    ei
    inc a
    di
    ld a, [hl]
    ld c, [hl]
    di
    db $10
    inc b
    ld sp, $6188
    call c, Call_000_1fb7
    call nc, Call_000_00a2
    ld b, b
    jr nz, jr_002_4137

    ld [c], a
    ld a, [$3e09]
    ret nz

    di
    db $e4

jr_002_4137:
    ld a, a
    ld [hl-], a
    dec bc
    di
    add b
    rst $18
    ld a, a
    inc c
    di
    inc e
    db $fd
    ld a, $91
    ld [hl], b
    dec e
    jr nz, jr_002_4148

jr_002_4148:
    rrca
    ld d, e
    call z, Call_000_3efd
    ret c

    jp $d1ec


    dec sp
    adc l
    ld e, b
    sbc l
    ld [hl], h
    ld b, e
    ret nc

    and e
    inc h
    ld l, l
    ld [hl-], a
    ld d, l
    add c
    db $fc
    sbc a
    rla
    rst $08
    jp nz, $fe10

    dec a
    add c
    ld [hl], e
    sbc h
    ccf
    scf
    ldh [$c3], a
    nop
    ld b, b
    ld [hl], a
    sub b
    or l
    push de
    ld a, [bc]
    add hl, bc
    dec bc
    ld h, b
    sub c
    ld [de], a
    ccf
    nop
    nop
    jr jr_002_417e

jr_002_417e:
    inc a
    rst $08
    inc de
    db $ec
    ld sp, hl
    ld h, $8d
    add d
    ld l, b
    ld hl, sp+$78
    inc c
    or e
    and h
    ld l, $05
    ld b, e
    or b
    ld b, h
    rst $38
    jr nc, jr_002_41b6

    ld b, d
    inc d
    add e
    ld sp, $384c
    sub d
    inc h
    ld h, $c7
    db $d3
    db $ec
    ld a, l
    ld h, $c5
    jp nc, Jump_002_636e

    ld h, $cd
    reti


    xor l
    ld a, [bc]
    ld bc, $3940
    add $22
    sub a
    adc b
    add hl, sp
    ld [hl], d
    daa
    adc d

jr_002_41b6:
    ld c, c
    ld hl, sp+$61
    db $10
    sbc [hl]
    adc c
    db $f4
    ld a, [hl+]
    inc sp
    rla

jr_002_41c0:
    ret


    pop af
    db $fc
    ld l, l
    dec l
    xor b
    ld c, d
    ld a, [de]
    add l
    and d
    jr z, @+$46

    jr z, @-$34

    sub l
    rrca
    adc c
    ld e, b
    srl [hl]
    ld e, [hl]
    inc bc
    jr z, jr_002_41c0

    and e
    inc h
    ld a, [$954e]
    ld a, $65
    ld l, d
    ld [hl-], a
    sub d
    ld a, [hl-]
    add hl, hl
    add hl, bc
    ld l, d
    ld e, b
    adc d
    call z, $7e09
    ld h, c
    ccf
    sbc c
    or a
    xor [hl]
    ld [hl-], a
    adc e
    db $e3
    inc d
    ld b, l
    or b
    ld [hl], d
    ld d, b
    ld [hl], c
    ld [$1842], sp
    ret


    pop bc
    db $fc
    ld a, a
    xor e
    ld [de], a
    add hl, bc
    inc l
    rst $38
    inc b
    dec hl
    sub e
    cp h
    sbc b
    ld h, $1b
    ld [hl], h
    db $fd
    ld de, $6491
    ld a, d
    xor l
    dec bc
    ld a, b
    ld e, $02
    ld l, h
    reti


    ld h, $e9
    ld a, [de]
    inc [hl]
    ld b, $3e
    ld [de], a
    ld e, d
    or [hl]
    inc l
    ld e, l
    db $10
    or h
    db $e4
    rst $38
    ld l, h
    db $d3
    di
    ldh [$f8], a
    inc a
    nop
    di
    add b
    ldh [$50], a
    db $d3
    jr nz, jr_002_42b2

    rst $38
    inc c
    rrca
    nop
    ld l, b
    ld a, [$cf0b]
    ldh a, [rOBP1]
    ld c, $b4
    adc a
    ldh [$0c], a
    ld [bc], a
    ld a, [hl+]
    jp z, $fca3

    cp $2b
    rst $08
    ldh [rTMA], a
    ld a, [c]
    ld b, l
    add b
    nop
    ld a, h
    cp $0c
    ld c, a
    nop
    ld l, [hl]
    db $e4
    ccf
    add c
    dec sp
    jp nc, $42f3

    jr z, @+$24

    ret nz

    ld [hl], b
    ld h, $87
    and d
    cp h
    ld a, a
    inc h
    sub h
    call c, $0d29
    rra
    adc b
    dec sp
    or b
    ld a, [hl+]
    ccf
    rst $00
    ld [c], a
    cp h
    ld a, [hl]
    jr nz, jr_002_42eb

    ld b, c
    ld sp, hl
    ld c, $20
    ld b, b
    ld [bc], a
    ld a, a
    ld a, [de]
    nop
    ld [$737c], sp
    dec de
    ld b, d
    inc bc
    ret nz

    nop
    ld h, [hl]
    nop
    inc b
    inc l
    sub a
    daa
    ret


    or d
    ld c, h
    adc c
    ld [bc], a
    ld b, $00
    nop
    ldh [rP1], a
    ld [bc], a
    nop
    inc c
    or h
    stop
    rlca
    db $e4
    inc c
    call z, Call_002_4c17
    db $d3
    ld [hl], b
    adc $36
    dec c
    sub e
    inc b
    rst $20
    ld bc, $c001

jr_002_42b2:
    nop
    ld sp, hl
    inc b
    rrca
    inc sp
    add b
    or h
    add hl, bc
    ld b, $f1
    nop
    ldh a, [rNR41]
    ld [$00f0], sp
    ccf
    ld b, c
    push af
    inc d
    jr nz, jr_002_42ef

    nop
    ld [bc], a
    ldh a, [rP1]
    rst $08
    jr nz, @+$0f

    db $fd
    ld h, h
    add b
    cpl
    ret nz

    dec c
    ld [hl], a
    ld e, l
    cp d
    dec [hl]
    dec l
    adc c
    ld [$ce47], sp
    ld h, b
    jr @+$21

    nop
    adc $30
    nop
    db $fc
    ld bc, $4414
    add hl, sp
    db $ed

jr_002_42eb:
    ld a, e
    ret z

    inc b
    ret c

jr_002_42ef:
    nop
    cpl
    add hl, bc
    jp Jump_002_4f7c


    dec sp
    ld [bc], a
    ld b, e
    cp c
    ld [hl+], a
    inc b
    rst $08
    ld [hl], h
    sbc b
    ld [$803e], sp
    ld c, $04
    ei
    nop
    ld [hl], l
    db $fd
    ld a, e
    add a
    rla
    ret z

    ld c, $24
    ld l, a
    jr z, jr_002_4312

    di
    nop

jr_002_4312:
    rst $30
    inc [hl]
    rrca
    or e
    and b
    db $fd
    ld bc, $9d11
    cp b
    cp $6c
    ld [hl], $14
    inc hl
    ld d, b
    inc sp
    call nz, $e001
    adc b
    ld l, d
    ret nz

    ld e, $10
    ld a, [$7a00]
    ld c, l
    ei
    ld a, [hl]
    dec sp
    ret nz

    or e
    and c
    or a
    ret c

    cp c
    add e
    db $e4
    ld bc, $01d0
    ret nz

    dec c
    ld [$c136], sp
    ld [hl], d
    push hl

Call_002_4344:
    adc b
    db $10
    inc d
    db $76
    cp l
    dec bc
    ld a, $4f
    ld a, [hl]
    db $f4
    add hl, bc

Call_002_434f:
    ld [hl], d
    db $db
    inc b
    inc h
    rst $38
    daa
    add hl, bc
    ld b, d
    ld a, b
    sub [hl]
    ld l, c
    sbc d
    rst $38
    ld c, $d2
    ld l, h
    dec bc
    pop de
    db $ec
    cp d
    rra
    ld b, l
    ld a, [c]
    ld hl, sp+$5f
    cpl
    db $fc
    call nz, $be2c
    dec hl
    adc [hl]
    db $e3
    ld a, b
    db $fd
    rrca
    rrca
    db $d3
    pop af
    xor h
    ld h, a
    add hl, de
    push hl
    dec a
    dec h
    ld l, e
    or l
    inc h
    jr nz, jr_002_43ff

    inc a

Call_002_4382:
    ld b, e
    db $e3
    call nz, $fa0e
    rst $08
    rra
    ld e, c
    ld [$cf1b], sp
    ld a, a
    call nz, Call_000_3d69
    add $8e
    ei
    rst $30
    ldh a, [$3c]
    ld bc, $f7e4
    ld c, $4f
    ld a, a
    db $e4
    rst $30
    pop af
    ld a, h
    db $76
    sbc b
    sbc a
    inc h
    add hl, bc
    ld a, [c]
    ld a, l
    add sp, $42
    adc a
    add e
    call c, Call_000_3df8
    ret nc

    nop
    ld h, e
    db $ec
    ld b, $fc
    ccf
    cp a
    rst $00
    rst $28
    db $f4
    dec bc
    db $fd
    add b
    rst $38
    add [hl]
    add b
    rra
    ldh a, [$f8]
    add h
    ld a, [de]
    db $10
    ld bc, $3f88
    db $d3
    adc c
    ld b, h
    ld a, [c]
    ld e, c
    ld a, $97
    ld c, a
    and h
    inc de
    jp hl


    db $f4
    inc b
    adc c
    ld bc, $7c20
    cp l
    db $e4
    ret nz

    sub a
    cp h
    and h
    ld a, [c]
    rst $30
    inc e
    cp l
    pop de
    cpl
    db $76
    ld c, e
    sbc $41
    rra
    adc a
    rst $00
    and e
    sub c
    call nz, Call_002_5dca
    jr nc, @-$67

    adc h
    ld b, [hl]
    and a
    inc de
    or h
    add d
    ld h, c
    ld hl, $8e18
    ld c, a

jr_002_43ff:
    and e
    ld [hl], c
    jp c, Jump_000_0e0d

    ld a, [hl]
    sub a
    ld [bc], a
    ld bc, $c000
    ld h, a
    cp e
    sbc $2d
    stop
    ld d, l
    and c
    or h
    ld [$4985], a
    cp $03
    ld a, a
    ccf
    nop
    ldh [$60], a
    jr @+$0b

    add $e2
    add a
    ld b, l
    sbc a
    ret nz

    inc de
    ei
    ld hl, sp+$7e
    cp $82
    ld bc, $4f5f
    scf
    sub c
    call Call_000_33e4
    cp d
    ld e, l
    xor [hl]
    or a
    add a
    sub d
    sub c
    ld [$43a6], sp
    dec [hl]
    ret c

    db $ed
    or $7b
    ld b, c
    add c
    add e
    ld e, [hl]
    daa
    rla
    jp hl


    ld a, [c]
    jr nz, jr_002_445d

    dec c
    ld d, c
    xor c
    cp a
    db $e4
    ld c, h
    ld b, $03
    ld sp, hl
    db $fd
    dec c
    dec c
    add l
    or d
    call $7677

jr_002_445d:
    ld h, l
    ld l, [hl]
    xor a
    ld a, e
    cp e
    db $dd
    ld l, a
    ld a, l
    dec b
    and $ea
    ld sp, $2d79
    adc $a5
    push de
    db $db
    db $fd
    adc a
    dec c
    ld b, $82
    ret nz

    ld b, b
    ld d, a
    xor e
    db $db
    add hl, hl
    sub b
    ret


    ld h, l
    ld hl, $f3ad
    di
    dec a
    ld b, $7c
    ccf
    and b
    rst $18
    adc a
    call z, Call_002_4e8e
    or c
    ld c, a
    add $c3
    db $76
    xor a
    db $e3
    pop af
    db $fc
    ld a, a
    ld c, [hl]
    dec de
    dec c
    adc a
    ld [$c377], sp
    ld [c], a
    xor c
    ld de, $5600
    ld b, b
    ret nc

    di
    pop af
    ei
    xor c
    ld c, $a8
    ld d, [hl]
    sbc [hl]
    rst $28
    rst $10
    ld a, [$0409]
    jp nz, Jump_000_3f61

Jump_002_44b3:
    rra
    sbc $10
    jr c, jr_002_44d4

    ld a, [bc]
    rlca
    add d
    inc bc
    pop bc
    pop hl
    rst $30
    ld bc, $be7c
    add b
    ld a, a
    sbc a
    ret nc

    inc d
    db $e4
    ld [hl-], a
    add hl, de
    add b
    ccf
    ld a, b
    inc a
    rrca
    add b
    dec e
    ret nz

    ld b, l
    ld d, c

jr_002_44d4:
    dec b
    jr c, jr_002_44fd

    add hl, bc
    sub l
    ld h, $50
    and c
    jr z, jr_002_452c

    inc de
    add h
    rst $18
    ccf
    call $fde3
    rst $10
    ld d, [hl]
    ret c

    ld a, [c]
    ld bc, $2f91
    rrca
    jp nz, $fffc

    add hl, de
    add $71
    sub [hl]
    dec de
    ld h, $07
    db $f4
    add hl, de
    push de
    ld b, e
    adc [hl]
    ld b, e

jr_002_44fd:
    sub b
    xor $3b
    adc [hl]
    ret nz

    ld c, l
    ret nz

    ccf
    db $10
    ld b, e
    pop af
    dec d
    ld e, d
    add hl, bc
    ld [hl], c
    cp $30
    adc h
    add hl, bc
    ld h, c
    db $fc
    sbc d
    rra
    call $fca0
    ld a, [$ca07]
    or c
    ld a, h
    adc c
    ld a, $01
    or e
    jp hl


    ld l, h
    dec e
    ld c, a
    pop bc
    add h
    ld hl, sp+$1a
    ld c, a
    adc c
    ld d, $43

jr_002_452c:
    inc hl
    ld b, a
    ld sp, hl
    inc l
    add [hl]
    rra
    call $fc30
    di
    rlca
    res 2, c
    ld a, [hl]
    ld d, h
    sub l
    ld d, $c2
    ld l, h
    ld a, [$cf32]
    and c
    ld h, $48
    ld a, $0a
    inc de
    ldh [$b1], a
    sbc b
    ld c, a
    add e
    db $e4
    rra
    inc [hl]
    ld b, e
    ld a, [c]
    ld [$297f], sp
    ld b, l
    di
    xor h
    rra
    dec a
    add c
    ld a, [c]
    ld d, b
    ld a, a
    inc hl
    rlca
    pop af
    add $5e
    jr c, @+$51

    adc b
    ld a, [$5b40]
    rrca
    ld d, e
    ld a, [c]
    ld [hl], a
    ld [hl+], a
    ld b, a
    ld a, [c]
    and h
    ld e, a
    ld l, $e8
    ld a, [hl+]
    ld [de], a
    ld d, h
    dec hl
    dec b
    ld a, [c]
    jr c, jr_002_45fb

    ld [hl-], a

Jump_002_457d:
    ld c, a
    add e
    ld h, [hl]
    adc h
    and e
    xor b
    or e
    sub l
    dec b
    ccf
    add a
    sub a
    ld c, h
    nop
    jr jr_002_4593

    nop
    call nz, $3931
    rrca
    pop af

jr_002_4593:
    push bc
    rlca
    ccf
    pop bc
    or $3d
    ld c, $38
    ld c, $04
    adc b
    ldh a, [$3f]
    call z, $fc33
    adc a
    ccf
    jp Jump_002_6888


    rst $38
    jr c, jr_002_45fb

    db $d3
    cp $a6
    inc bc
    rst $08
    or $51
    inc b
    ld bc, $948f
    ld b, d
    ld c, $ab
    ld c, $06
    xor [hl]
    sbc a

jr_002_45bd:
    ccf
    ret nz

    di
    ret nz

    jr jr_002_45fc

    pop de
    ld h, b
    nop
    inc c
    inc bc
    dec d
    nop
    ld [hl], b
    rst $38
    inc hl
    adc a
    ei
    inc c
    db $e3
    ccf
    jp Jump_000_3834


    ld [bc], a
    nop
    sub l
    inc bc
    db $ec
    rst $38
    inc e
    rst $08
    ldh a, [rNR34]
    or b
    ccf
    rrca
    di
    ld h, b
    rst $38
    dec bc
    rrca
    ldh a, [$5c]
    rst $38
    ld [hl+], a
    ld c, a

jr_002_45ec:
    di
    add hl, de
    rla
    jr jr_002_45bd

    bit 0, b
    nop
    or [hl]
    jp Jump_002_7295


    or b
    rrca
    rrca

jr_002_45fb:
    pop af

jr_002_45fc:
    ld hl, sp-$7f
    ld [hl], l
    ld c, [hl]
    add b
    ld e, [hl]
    db $f4
    cp l
    ld c, $90
    ld e, b
    push hl
    ld b, $af
    xor e
    add sp, -$0c
    ld [bc], a
    rst $00
    ld [hl], d
    jr c, @-$19

    rlca

jr_002_4613:
    adc h
    db $10
    ld hl, sp-$75
    dec e
    adc c
    pop af
    sbc b
    sub a
    dec de
    or b
    adc h
    jr jr_002_4613

    inc bc
    ld [hl], b
    db $e3
    db $e4
    ld b, $8a
    ld [hl+], a
    add e
    sbc b
    add hl, de
    push bc
    ld [hl], c
    ld e, h
    db $10
    ld h, l
    daa
    add e
    ld d, e
    jr c, jr_002_45ec

    inc de
    or b
    add c
    ld a, h
    and [hl]
    inc de
    bit 5, h
    adc h
    add a
    adc b
    dec hl
    ld b, e
    cp $db
    inc a
    ld c, a
    di
    sbc b
    rst $38
    inc sp
    ld c, a
    ld a, [c]
    ld l, b
    cp $3e

jr_002_464f:
    ld c, a
    add d
    jr c, jr_002_464f

    add hl, bc
    adc $33
    inc a
    rst $00
    inc h
    ld [$8003], sp
    ret nz

    rra
    ld l, $f1

jr_002_4660:
    db $fc
    or l
    ccf
    inc bc
    and e
    ldh [$6f], a
    ld a, [hl-]
    call nz, Call_000_1df3
    add e
    jr jr_002_4672

    ld bc, $3ef8
    ld a, l

jr_002_4672:
    xor l
    ld e, d
    ldh [$08], a
    ld b, l
    sub c
    inc sp
    db $fd
    dec d
    nop
    ld c, a
    db $e3
    xor $db
    ld a, $00
    db $e3
    call nz, Call_000_381c
    rst $00
    add e
    inc e
    ld [hl], c
    inc hl
    adc a
    db $10
    jr c, jr_002_4660

    dec bc
    or l
    sub e
    rst $38
    ld e, e
    inc a
    ld e, a
    dec e
    add b
    ld [hl], b
    inc hl
    adc $00
    ld a, h
    rst $08
    inc c
    add hl, bc
    ld sp, $32b0
    inc sp
    ld c, [hl]
    jr nz, jr_002_471b

    add [hl]
    ld e, $40
    ld b, e
    rst $28
    ld e, [hl]
    inc a
    ld b, b
    ld a, [c]
    dec c
    rst $30
    rra
    ret nc

    ld c, l
    ld [hl], c
    ret nc

    pop bc
    dec de
    ret nz

    inc a
    pop af
    ld b, $ce
    ld [hl], c
    sbc h
    sbc [hl]
    inc sp
    jp Jump_002_70d0


    ei
    ld c, $13
    ld sp, $ffbc
    scf
    call z, $fc32
    add b
    rra
    pop bc
    ld [hl], e
    cp b
    ccf
    inc sp
    ld b, e
    jp Jump_000_186c


    dec a
    push bc
    di
    cp a
    sub [hl]
    jr nc, @+$7b

    sub c
    rst $38
    dec d
    dec sp
    add c
    inc de
    db $f4
    ld [bc], a
    ld a, $80
    ld e, e
    ld a, [$3af8]
    pop bc
    ld b, e
    call z, $230c
    ldh a, [$71]
    sbc b
    rra
    add hl, sp
    or b
    inc c
    dec bc
    inc b
    ld [bc], a
    and $f3
    sbc b
    or $02
    ld a, h
    inc hl
    sub b
    dec de
    pop af
    ld a, h
    ld e, h
    ld d, a

Call_002_470b:
    or l
    reti


    inc bc
    ld [hl], e
    jr c, jr_002_4738

    scf
    cp h
    rst $28
    dec sp
    call z, $ce06
    ld h, d
    inc b
    ld a, [hl]

jr_002_471b:
    ld hl, $e3c7
    db $ec
    ld a, $3e
    ld b, b
    pop hl
    or h
    sub d
    inc d
    jp z, $04cd

    ccf
    ld [hl], $c3
    or e
    inc d
    pop hl
    rlca
    adc a
    or e
    cp h
    ld sp, hl
    dec sp
    pop bc
    add e
    cp h

jr_002_4738:
    jr nz, @-$7b

    add c
    ldh a, [$fc]
    rst $18
    db $10
    ld a, [$ec83]
    xor $3e
    adc $dd
    ld a, e
    ld [hl], b
    push de
    ld de, $3c54
    ei
    rra
    push af
    dec e
    ld c, [hl]
    sbc [hl]

jr_002_4752:
    rst $38
    ld hl, $1417
    rst $30
    ld l, h
    rst $08
    jp nz, $8010

    ld [hl-], a
    ld c, h
    inc bc
    call z, Call_000_39e0
    adc h
    jr nc, jr_002_47a1

    nop
    inc e
    nop
    ld [bc], a
    inc a
    nop
    inc c
    ret nz

    db $e3
    call z, Call_000_0b2e
    rrca
    ret nc

    jr nc, jr_002_4752

    inc sp
    dec c
    db $d3
    sub b
    inc b
    rlca
    sub [hl]
    jr nc, jr_002_477e

jr_002_477e:
    inc a
    add hl, sp
    db $10
    ld bc, $a5bb
    add [hl]
    sbc $65
    or a
    sbc c
    adc l
    ret nc

    jr nz, @+$12

    inc c

jr_002_478e:
    ld b, $7b
    cp l
    rst $18
    rst $20
    ld a, [c]
    nop
    ld bc, $8040
    ld l, a
    inc de
    adc l
    ld [$4071], a
    inc d
    sbc b
    dec b

jr_002_47a1:
    ld l, [hl]
    inc hl
    ld h, e
    set 0, b
    db $ec
    add [hl]
    ld b, [hl]
    dec e
    add h
    ld c, c
    sbc e
    or d
    ld a, c
    ld c, e
    db $76
    ld c, c
    ld hl, $478f
    sbc l
    adc d
    ld d, a
    ld h, e
    dec d
    add sp, -$2f
    add h
    inc sp
    db $db
    inc c
    sub $e4
    db $dd
    sub h
    ret nc

    ld h, a
    dec [hl]
    add hl, de
    call Call_002_7386
    ld [hl], h
    ld e, b
    call nz, Call_000_345b
    sub d
    xor $36
    ei
    xor l
    sub h
    ldh a, [$a6]
    ld d, e
    add hl, de
    ld l, a
    add hl, de
    inc [hl]
    sub [hl]
    ld d, b
    dec e
    ld d, [hl]
    rlca
    ld e, l
    add l
    sub $64
    sub h
    cp e
    ld c, [hl]
    ld a, b
    ld d, h
    ld a, [de]
    xor $36
    and e
    add c
    ld e, b
    ret z

    ld d, a

jr_002_47f3:
    ld sp, $e98b
    ld a, b
    ld d, h
    ld [hl-], a
    inc e

jr_002_47fa:
    rst $38
    ld a, a
    jr nz, jr_002_478e

    inc c
    ld b, [hl]
    inc bc
    push hl
    ldh [$f3], a
    ld [hl], b
    ld b, d
    add c
    ldh [rTAC], a
    add d
    ld bc, $001e
    add hl, de
    add e
    sbc [hl]
    ld h, d
    pop hl
    ld h, e
    db $f4
    jr jr_002_47f3

    inc de
    nop
    db $e3
    ld c, h
    call nz, $b92c
    dec de
    inc l
    ld c, $86
    add c
    ld l, $d0
    jr nz, jr_002_489e

    inc b
    db $e3
    nop
    adc a
    ld e, h
    sub b
    jr z, jr_002_4852

    add hl, de
    sbc [hl]
    call c, Call_000_0fa9
    ld bc, $f2ac
    ld bc, $10e0
    cp a
    ld c, b
    scf
    ret


    and $c5
    jr nz, jr_002_47fa

    adc h
    or a
    ld l, c
    jp nc, $8e1b

    adc d
    db $ed
    ld b, c
    ld l, b
    inc h
    scf
    sub b
    cpl
    ld d, a
    set 6, [hl]

jr_002_4852:
    inc bc
    dec b
    add h
    add l
    add hl, sp
    add b
    pop bc
    ldh a, [rNR31]
    adc h
    nop
    inc a
    call z, $e040
    xor l
    db $ec
    ld l, h
    add h
    cp b
    adc l
    and $1b
    inc d
    and d
    add $2c
    sbc [hl]
    ld l, a
    add hl, sp
    sbc l
    rst $08
    ld h, a
    db $ed
    adc c
    and e
    jp hl


    jp nc, $02fd

    ccf
    sbc a
    ld c, a
    ldh a, [$0d]
    or h
    nop
    rst $38
    ld a, a
    add b
    jr z, @+$5b

    call z, $83f6
    ld b, h
    adc b
    di
    ld c, d
    ld l, d
    ld [hl], l
    xor d
    or l
    ld h, d
    or l
    ld d, b
    xor b
    ld [hl-], a
    sbc [hl]
    ccf
    ld a, e
    dec b
    add c
    ld e, [hl]
    bit 2, h

jr_002_489e:
    ld sp, $c5cc
    ld h, h
    ld e, l
    ld c, [hl]
    ld d, h
    inc bc
    ld h, h
    pop bc
    add hl, sp
    ret nz

    ld b, b
    ld [hl], b
    inc bc
    ld a, c
    add l
    or d
    ld e, h
    cp c
    dec bc
    pop de
    inc de
    db $fc
    cp a
    ld a, c
    sbc [hl]
    ld d, a
    sub c
    and $01
    ret nc

    or b
    nop
    push af
    inc a
    rrca
    jp $bed0


    inc hl
    adc a
    di
    ld a, h
    ei
    cpl
    ret


    pop bc
    db $fd
    and $00
    ld hl, $4054
    ld c, c
    dec bc
    ld b, d
    sub b
    ld a, h
    rst $18
    inc sp
    adc $f3
    sbc [hl]
    ld h, $8a
    rrca

jr_002_48e1:
    ldh a, [$94]
    or [hl]
    add hl, bc
    adc a
    jp $f8f0


    ld a, $4f
    inc de
    ldh a, [rP1]
    add hl, bc
    add b
    inc bc
    ld c, h
    add c
    ld [hl+], a
    ret nz

    db $10
    jr jr_002_48f8

jr_002_48f8:
    inc e
    add a
    inc bc
    db $e4
    ld hl, sp+$3e
    rrca
    or c
    inc a
    ccf
    add hl, bc
    pop bc
    di
    call z, Call_000_3ecf
    ld c, a
    ld [hl], d
    db $10
    add e
    ld sp, $138c
    db $f4
    ld a, [$4f3f]
    or c
    call c, $2ef1
    rst $08
    sub e
    ld [hl], h
    db $fc
    scf
    adc a
    db $e3
    cp h
    cp $1f
    adc a
    ret nz

    db $f4
    ld sp, hl
    ld h, $c7
    jr nc, jr_002_493d

    inc bc
    sbc e
    ld c, a
    ld d, e
    adc $5b
    ld hl, $2348
    ld hl, sp-$40
    ccf
    ld c, l
    inc de
    xor h
    db $d3
    dec [hl]
    jp z, $9c72

jr_002_493d:
    rst $00
    inc sp
    adc b
    ld a, [c]
    ld a, h
    rra
    ld c, $c3
    db $f4
    dec a
    push hl
    ccf
    adc a
    pop af
    call z, $19a3
    ret z

    ld [hl], c
    jr c, jr_002_48e1

    daa
    ld b, c
    pop af
    call z, Call_000_3b7f
    rst $08
    di
    ld e, b
    rst $38
    dec hl
    rrca
    di
    db $e4
    cp $3c
    adc a
    jp $f99c


    ld d, h
    add hl, bc
    and e
    and b
    ld a, [hl+]
    ld [hl-], a
    inc b
    and d
    ldh [$fb], a
    ld e, $4b
    sub e
    ld hl, sp+$73
    ccf
    ld c, [hl]
    ld d, e
    ldh [$ec], a
    dec a
    dec c
    db $e3
    cp b
    cp a
    scf
    rst $00
    ld a, [c]
    db $fc
    sub a
    rra
    call z, $c6a6
    ld c, e
    and a
    add [hl]
    sub c
    jr z, @+$3a

    ld c, $81
    add d
    ld l, b
    adc b
    ld [hl-], a
    call z, $dc10
    rlca
    dec bc
    ret nz

    ld sp, hl
    cp $8f
    add h
    ld h, d
    add hl, bc
    sub b
    db $fc
    dec a
    set 2, e
    ld hl, sp-$05
    ccf
    ld c, a
    ld d, e
    db $e4
    jp hl


    dec a
    ret


    di
    cp h
    ccf
    scf
    call nz, $4808
    nop
    ld bc, $2040
    jr @+$06

    ld a, c
    inc b
    ld hl, $6308
    adc c
    rlca
    ld hl, sp+$54
    nop
    ld [hl], $4b
    di
    cp b
    rst $18
    dec c
    jp z, $acf0

    rst $30
    sub [hl]
    rst $08
    db $e3
    db $f4
    ld bc, $c0a1
    inc bc
    sbc b
    ldh [$3c], a
    adc a
    ld bc, $f8e4
    rra
    rrca
    jp nz, $fefc

    ccf
    adc a
    pop bc
    ld hl, sp-$08
    daa
    rst $00
    ld sp, $2450
    add hl, bc
    and h
    ld e, b
    jp z, $8526

    rrca
    db $f4
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0901], sp
    ld [bc], a
    ld [$0a01], sp
    ld [bc], a
    dec bc
    inc c
    dec c
    ld c, $0b
    inc c
    rrca
    db $10
    ld c, $11
    ld [de], a
    inc de
    inc d
    dec d
    inc de
    inc de
    inc de
    ld d, $13
    rla
    inc de
    ld d, $18
    ld d, $13
    add hl, de
    ld a, [de]
    dec de
    inc e
    inc de
    dec e
    ld e, $1f
    jr nz, jr_002_4a4e

    ld [hl+], a
    inc hl
    inc h
    ld [bc], a
    dec h
    ld h, $27
    jr z, jr_002_4a5f

    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld c, $11
    dec l
    inc l
    ld l, $2f
    cpl
    jr nc, jr_002_4a74

    cpl
    ld [hl-], a
    jr nc, jr_002_4a7a

    inc sp
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_002_4a4e:
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    add hl, sp
    inc a
    dec a
    add hl, sp
    ld a, $3f
    add hl, sp

jr_002_4a5f:
    ld b, b
    ld b, c
    ld b, d
    inc de
    ld d, $13
    inc de
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld c, $47
    ld c, $0e
    ld b, e
    ld b, h
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_002_4a74:
    ld c, h
    ld c, l
    ld c, d
    ld c, [hl]
    ld c, a
    ld d, b

jr_002_4a7a:
    ld c, d
    ld d, c
    ld c, d
    ld d, d
    ld d, e
    ld d, e
    ld c, l
    ld c, l
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    inc de
    ld e, b
    inc de
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld d, $13
    ld e, l
    inc de
    inc de
    ld d, $28
    add hl, hl
    inc de
    ld d, $2c
    inc l
    inc de
    ld d, $5e
    ld e, a
    ld h, b
    ld d, $61
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld c, $47
    db $10
    db $10
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
    ld a, c

Jump_002_4abd:
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc de
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld c, $85
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    inc de
    ld d, $8d
    adc [hl]
    inc de
    ld d, $8f
    sub b
    sub c
    sub d
    sub e
    sub h
    sub d
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sub d
    sbc e
    sbc h
    sub d
    sbc l
    ld [hl], $9e
    sbc d
    sub d
    sbc a
    dec sp
    sub d

jr_002_4af1:
    sbc l
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    inc de
    add hl, de
    xor b
    xor c
    inc e
    inc de
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
    add hl, hl
    or a
    cp b
    inc l
    cp c
    ld a, [bc]
    ret nz

    and b
    ld [hl], b
    ld c, b
    inc l
    ld a, [de]
    ld c, $16
    add h
    jp nz, Jump_002_70a1

    ret z

    ld l, h
    ld a, [hl-]
    rra
    db $10
    add [hl]
    add h
    add e
    ld h, c
    ldh a, [$f0]
    ld a, b
    inc b
    ld [hl+], a
    adc h
    ld b, [hl]
    ld b, h
    ld h, d
    ld h, c
    ld [$406c], sp
    ld [bc], a
    ld bc, $0347
    ld [hl], d
    ld b, b
    jr jr_002_4b41

    ld a, [bc]
    inc de
    add hl, bc
    dec bc

jr_002_4b41:
    add $12
    cp c
    ld l, h
    or d
    ld e, a
    ld l, $97
    dec bc
    ld b, [hl]
    ld d, d
    ld c, c
    xor b
    ld l, [hl]
    ld c, h
    dec b
    rla
    ld c, h
    ld h, $13
    ld de, $c284
    ld d, e
    inc h
    db $10
    rst $00
    and [hl]
    pop bc
    or c
    jr z, jr_002_4af1

    ld a, $22
    adc e
    adc b
    add sp, -$2e
    ld e, c
    jr c, @+$78

    ld d, d
    dec e
    xor b
    call nc, $a383
    ld de, $4eb5
    xor b
    inc sp
    ld a, [de]
    ld d, h
    add l
    call nc, $bd49
    jr c, jr_002_4bda

    ld e, c
    xor e

jr_002_4b7f:
    ret c

    xor d
    ld b, e
    ld e, d
    ld a, h
    ld c, h
    ld [hl], $21
    sub b
    ld b, [hl]
    inc hl
    ld [de], a
    add hl, sp
    jr nz, jr_002_4c0c

    sub [hl]
    inc h
    and [hl]
    add c
    ld b, b
    or $6a
    add sp, $74
    ld e, e
    ld b, h

Jump_002_4b99:
    cp e
    call $9724
    ld a, d
    inc h

jr_002_4b9f:
    ld [c], a
    jp hl


    inc sp
    xor [hl]
    ldh [$83], a
    ld [hl], a
    ld a, d
    ld a, b
    ld c, h
    ld b, h
    ld [hl+], a
    ld c, $45
    pop af
    ld de, $64ca
    rst $10
    dec e
    ld a, a
    jp nz, $714a

    ld [de], a
    jr jr_002_4b9f

    or $6c
    dec e
    xor [hl]
    ld c, l
    ld [hl], d
    rst $30
    jr nz, @+$40

    inc de
    dec [hl]
    add e
    cp h
    adc e
    or b
    jp nc, $4540

    cp h
    ld c, l
    ld b, l
    cp b
    add [hl]
    pop bc
    jr nz, jr_002_4b7f

    db $f4
    sbc a
    dec a
    sub d
    add hl, bc
    ld h, l

jr_002_4bda:
    ld l, $19
    sub b
    ret c

    call c, Call_002_7c71
    ret nc

    ld h, c
    cpl
    add hl, de
    db $dd
    call z, Call_002_6f93
    cp a
    call c, $b86d
    ld e, c
    db $fd
    ld h, $3f
    ld d, l
    dec [hl]
    dec b
    add e
    ld h, $d9
    dec de
    push hl
    ld [bc], a
    ld c, c
    ld c, h
    cp [hl]
    adc [hl]
    ld b, a
    ld d, a
    call $fae6
    cp l
    ld [hl], e
    call Call_000_3aef
    ld [hl], d
    ld c, [hl]
    ldh [$6f], a

jr_002_4c0c:
    cp l

Call_002_4c0d:
    cp e
    db $e3
    ld l, b
    ld b, c
    and b
    jp hl


    xor a
    scf
    sbc l
    ld h, a

Call_002_4c17:
    call z, Call_002_470b
    ld h, e
    pop bc
    add sp, -$05
    ld [hl], a
    ld [$6cec], a
    ld a, [hl-]
    and c
    cp a
    ld h, a

Call_002_4c26:
    cp e
    db $ec
    ld a, $fc
    ld [hl], l
    ld [hl], b
    jp nz, $e87f

    and b
    jr z, @+$81

    ld e, a
    ldh [$9c], a
    rrca

Call_002_4c36:
    inc b
    ld [bc], a
    add b
    xor h
    inc b

jr_002_4c3b:
    nop
    ld b, b
    ld h, b
    ld b, l
    rst $38
    add e
    ld [bc], a
    call nz, Call_000_29a4
    ld a, [bc]
    and c
    nop
    xor h
    add hl, hl
    dec bc
    ld [bc], a
    ldh [$fc], a
    ld b, b
    add l
    pop hl
    ld b, b
    cp d
    ld [de], a
    ld a, [bc]
    pop hl
    ld e, b
    ld [hl+], a
    ld a, [bc]
    add e
    rra
    ld hl, sp+$54
    add hl, hl
    add l
    ld [c], a
    ld e, b
    ld h, d
    daa
    add l
    jp nz, Jump_002_74a8

    ld l, $83
    add c
    ld c, b
    cp d
    cpl
    adc h
    inc hl
    jr jr_002_4c3b

    inc sp
    adc l
    inc hl
    ld e, b
    jp c, $8e37

    ld bc, $0444
    nop
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
    jr @-$42

    inc bc
    ld l, a
    and c
    ld a, e
    ld hl, sp+$27
    ld hl, $4890
    ld [c], a
    db $d3
    ret


    call c, Call_000_00f8
    inc a
    nop
    add hl, de
    add b
    inc b
    ld a, [hl+]
    dec h
    ld a, [de]
    adc e
    ld b, e
    and b
    ret nz

    add e

jr_002_4cd0:
    nop
    ld bc, $00c0
    stop
    and [hl]
    inc b
    nop
    rlca
    add sp, $1d
    inc b
    ld c, b
    nop
    ld b, $53
    ld [$0120], a
    add l
    ld d, d
    xor h
    nop
    ld [hl-], a
    nop
    nop
    add b
    inc bc
    ldh [rP1], a
    pop af
    ld e, e
    ld c, h
    nop
    ld e, $13
    ret z

    inc de
    cp $df
    ld l, [hl]
    sbc [hl]
    push bc
    xor l
    rst $30
    ld c, e
    xor l
    jp c, Jump_002_74ef

    sub c
    ccf
    ld e, a
    rst $08
    and a
    db $e3
    pop de
    ld a, [c]
    jp hl


    ld a, a
    and b
    ld e, $07
    inc b
    inc l
    ld d, c

jr_002_4d13:
    nop
    inc e
    dec b
    and a
    ld de, $9178
    ldh [$ac], a
    jr z, jr_002_4d21

    ld c, d
    jr nz, jr_002_4d13

jr_002_4d21:
    inc bc
    ld b, c
    ld e, $43
    dec h
    sub h
    bit 4, h
    ld [hl], d
    ld h, b
    jr nc, jr_002_4cd0

    adc a
    ld hl, $c89e
    dec a
    inc e
    ld [hl], c
    ld e, e
    ld [hl], l
    ret nz

    ld b, $fd
    inc bc
    ld a, $81
    adc a
    ld b, b
    res 4, l
    and $12
    inc sp
    adc c
    ld e, c
    db $e4
    or h
    ld [$7e5c], a
    cpl
    dec sp
    sub a
    rst $18
    db $eb
    or $e9
    db $fd
    and $d2
    ld [hl], e
    xor c
    db $76
    sbc e
    ld l, l
    add $eb
    ld a, c
    cp [hl]
    or a
    sbc l
    xor $8d
    db $db
    and a
    ld l, $df
    call $70e0
    or [hl]
    adc c
    db $f4
    add [hl]
    ldh [$fe], a
    ld b, b
    sbc $44
    cp c
    ld d, a
    ld e, e
    sbc h

jr_002_4d75:
    adc [hl]
    halt
    ld b, h
    ld [hl+], a
    jr nz, jr_002_4dbe

    ld hl, $0b14
    push bc
    db $e4
    ld de, $b060
    sbc b
    ld l, b
    adc [hl]
    inc h
    jr c, jr_002_4d75

    call nz, $ddbf
    ld a, d
    ld e, [hl]
    push af
    rst $00
    cp a

jr_002_4d92:
    ld [hl], b
    db $d3
    ld b, l
    ld [hl], l
    ld a, [de]
    xor l
    ld h, [hl]
    ld bc, $78e7
    ret nz

    rlca
    sub [hl]
    nop
    ld b, b
    add d
    scf
    sbc c
    pop hl
    ld [hl+], a

jr_002_4da6:
    nop
    ld [hl], b
    nop
    dec l
    add hl, bc
    inc bc

jr_002_4dac:
    ret nc

    jr nc, jr_002_4dac

    cpl
    rrca
    pop de
    ldh a, [$7d]
    ccf
    nop
    jr nc, jr_002_4db8

jr_002_4db8:
    adc l
    ld [hl+], a
    nop
    ret nc

    ld [de], a
    inc c

jr_002_4dbe:
    rlca
    ld b, b
    jp nz, $9cf4

    rrca
    ld b, c
    ret z

    add [hl]
    inc d
    adc c
    rrca
    ret z

    ld d, b
    ld l, l
    ccf
    ld [hl+], a
    adc b
    and b
    ld a, l
    dec sp
    ld bc, $00f0
    pop hl
    nop
    ld bc, $72d2
    daa
    adc d
    ld h, e
    ld e, b
    and b
    ld hl, sp+$00
    nop
    ld [hl], d
    nop
    ld a, c
    ld a, $22
    ld e, b
    xor d
    ld [hl], $90
    ld hl, $f443
    inc e
    cpl
    ld b, c
    jp Jump_002_5cb4


    dec l
    add $c8
    cp $3f
    rra
    rst $08
    pop bc
    cp b
    db $fc
    ld a, $83
    pop bc
    ret nc

    ld a, [de]
    add b
    ld c, $00
    nop
    ld [de], a
    jr nz, jr_002_4d92

    jp Jump_002_72c0


    inc a
    ld hl, $f041
    db $fc
    add c
    jr nz, jr_002_4e3e

    dec e
    add sp, $00
    ld a, [bc]
    jr nz, jr_002_4da6

    dec h
    adc l
    rlca
    db $d3
    ld [hl], d
    ld l, d
    sbc d
    add l
    db $d3
    ldh a, [rLCDC]
    nop
    ld [bc], a
    add d
    jr nz, jr_002_4e9c

    jr c, @+$09

    inc hl
    adc b
    ld e, b
    inc a
    inc b
    jp Jump_002_7ae2


    inc de
    adc a
    and c
    db $f4
    inc a
    dec sp
    ld c, e
    pop bc

jr_002_4e3e:
    or h
    inc a
    dec hl
    ld b, a
    jp z, $8716

    and c
    add a
    jp nz, Jump_002_7cf4

    rrca
    ld h, d
    ld l, d
    ld a, [hl-]
    inc [hl]
    adc a
    add sp, -$76
    ld c, d
    adc c
    and d
    ld [hl+], a
    add c
    call nc, $8aec
    adc $c8
    or d
    sbc e
    and [hl]
    adc [hl]
    jp $2538


    dec de
    adc c
    ld de, $abd4
    ld a, $82
    ld [hl], d
    db $fc
    ld h, c
    ld a, [hl+]
    ld b, l
    add d
    ldh a, [rHDMA2]
    ld a, $80
    ld d, d
    db $e4
    sub h
    ld l, $c8
    inc bc
    ld e, h
    jp z, $4e2b

    ld bc, $c0f0
    db $10
    adc d
    ld b, d
    ld l, b
    ld b, b
    dec hl
    pop bc
    ld bc, $e4e4
    dec e
    adc $81

Call_002_4e8e:
    call nz, Call_000_1eef
    adc $41
    db $e4
    or $1f
    ld c, [hl]
    ld sp, $d998
    dec bc
    adc l

jr_002_4e9c:
    sub e
    inc [hl]
    jr nz, jr_002_4ebd

    ld b, b
    inc bc
    ld d, h
    ret nc

    dec sp
    ld c, b
    inc bc
    or h
    and b
    dec [hl]
    call z, $ac02
    sbc b
    inc e
    call z, $ba89
    rst $18
    ccf
    ld l, $0b
    add d
    inc d
    ld de, $cb8f
    sub [hl]
    push hl

jr_002_4ebd:
    db $10
    rst $08
    pop hl
    ld c, h
    xor $ba
    ld l, [hl]
    cp e
    xor [hl]
    ld l, [hl]
    rla
    rst $08
    jp hl


    cp d
    ld l, l
    cp b
    ld h, d
    ld l, c
    xor h
    call c, $8ebb
    db $eb
    and $eb
    cp d
    ld l, a
    db $d3
    ld a, [$894b]
    xor c
    jp c, $8f6e

    pop bc
    rlca
    di
    nop
    ld h, b
    pop bc
    call z, $9f01
    add hl, bc
    rla
    ld c, e
    ld bc, $a434
    rla
    ld c, e
    ld c, h
    ld b, h
    ld c, l
    jr z, jr_002_4efc

    ld [hl], d

jr_002_4ef7:
    ld b, b
    ld l, e
    ld [hl], $07
    inc hl

jr_002_4efc:
    jr c, jr_002_4ef7

    add hl, bc
    rlca
    sub e
    ret nc

    ld a, e
    dec a
    or c
    ld [$ddfe], a
    ld a, [hl-]
    pop bc
    add d
    ld e, h
    sub b
    rra
    ld c, $31
    cp $3d
    ccf
    ld de, $2453
    nop
    set 6, d
    di
    adc h
    ld b, b
    rlca
    ld c, [hl]
    inc bc
    db $f4
    inc c
    add l
    ld de, $4052
    nop
    adc $c9
    ret nz

    nop
    sbc h
    ld [bc], a
    ld h, $cb
    sbc $e2
    cp l
    ld h, [hl]
    db $eb
    and h
    inc bc
    ccf
    add b
    or e
    db $db
    ld c, d
    db $d3
    rrca
    ld h, c
    cpl
    ld c, [hl]
    or d
    cpl
    ld e, e
    rst $00
    scf
    add a
    ld h, c
    pop de
    rst $30
    jr c, @+$11

    cpl
    db $ed
    ccf
    ld e, d
    dec a
    xor a
    ld [$5f4f], a
    and d
    add a
    call z, Call_000_0b23
    jp nz, $8c30

    ld a, [de]
    sbc h
    adc d
    jr z, jr_002_4fba

    cpl
    ld l, d
    and d
    ld l, b
    cp d
    dec l
    dec d
    sbc d
    jr nc, jr_002_4fb2

    sub l
    dec d
    call z, $1cf3
    pop bc
    inc a
    call c, Call_000_0d74
    add sp, $08
    ret nc

    rrca
    db $fd
    rlca
    ld [hl], d
    rrca

Jump_002_4f7c:
    daa
    cp $08
    inc a
    scf
    ld b, e
    call $fe12
    cp e
    ld l, [hl]
    jp $89fb


    cp d
    ld [hl], h
    ld c, e
    rst $08
    ld b, l
    ccf
    dec c
    ldh a, [$83]
    adc c
    cp [hl]
    rst $28
    xor [hl]
    ld e, c
    push af
    sbc c
    ld d, $d5
    or l
    ld l, a
    ccf
    adc a
    pop hl
    ret nc

    db $fc
    ld a, $0f
    add e
    ld c, b
    ld a, [c]
    jr c, jr_002_4fb8

    ld bc, $c820
    jr nz, jr_002_4fb7

    rlca
    sub a

jr_002_4fb1:
    sbc l

jr_002_4fb2:
    rst $20
    ld a, [$c013]
    rrca

jr_002_4fb7:
    jp hl


jr_002_4fb8:
    ld c, h
    nop

jr_002_4fba:
    rst $38
    xor c
    ld a, [hl]
    ld h, [hl]
    ld c, b
    ld c, $08
    nop
    ld bc, $0010
    dec de
    sbc b
    ld h, b
    ld sp, $0800
    ld a, [hl-]
    ld d, $b0
    ld [$00e2], sp
    ld bc, $00f2
    sbc a
    pop af
    ld a, h
    sbc a
    jr @-$7e

    ld a, d
    ld b, b
    inc bc
    nop
    ld [$4280], sp
    ld [hl+], a
    adc e
    adc $02
    dec d
    add hl, bc
    adc d
    ld h, c
    ld [$0402], sp
    dec bc
    xor c
    ld b, b
    cp l
    sub h
    inc c
    rlca
    ld bc, $f0c1
    ld [hl], b
    inc a
    inc c
    rlca
    nop
    add h
    ld h, c
    jr @-$30

    ld sp, $c30c
    or $fc
    ret nz

    inc bc
    sbc $ee
    ld h, $21
    adc b
    ld [c], a

Call_002_500c:
    ld sp, hl
    jp $c711


    db $e3
    ld hl, sp+$63
    sub b
    ld [$0806], sp
    ld [bc], a
    ld [hl], h
    inc c
    ret nz

    jr nc, @+$1a

    ld b, c
    ldh [rNR23], a
    rlca
    nop
    add b
    jr nc, jr_002_4fb1

    inc hl
    adc b
    ld b, d
    add hl, de
    ld [bc], a
    inc b
    stop
    add b
    nop
    nop
    ld [bc], a
    ld bc, $e040
    ldh a, [rLCDC]
    ld [de], a
    ld sp, $081c
    ld b, $06
    inc bc
    add a
    inc bc
    jp $e001


    nop
    ld h, b
    jr z, @+$1e

    ld bc, $fcd7
    ld [hl+], a
    rlca
    dec b
    add c
    add h
    jr nz, jr_002_5090

    ld [bc], a
    ld de, $0408

jr_002_5054:
    ld b, $45
    inc hl
    and h
    add d
    ld bc, $0418
    ld [bc], a
    adc c
    ld b, h
    ret nz

    call nz, $2542
    ei
    db $fd
    ld l, [hl]
    rst $38
    sbc c
    rla
    ld e, a
    di
    add e
    cp h
    pop hl
    cp $dd
    ld a, a
    or b
    jr @+$08

    add a
    ld b, e
    add c
    ret nz

    jp nc, Jump_000_3c79

    ld e, $07
    add a
    push bc
    dec c
    add h
    ld [c], a
    ccf
    sbc a
    jp nc, $f9e9

    ld a, b
    adc d
    ld b, $88
    ld b, h
    ld d, h
    and a
    ldh [$8a], a

jr_002_5090:
    or b
    ld [bc], a
    ld h, c
    ld d, h
    xor l
    ld d, a
    inc hl
    ld c, b
    ld bc, $fcfa
    ld b, [hl]
    and d
    ld de, $44a8

Jump_002_50a0:
    ld [$3251], a
    adc d
    call nc, $8d00
    ld e, e
    ld e, a
    add sp, $04
    inc b
    inc c
    add b
    ld b, b
    add e
    add [hl]
    dec b
    jp z, Jump_002_72a1

    sbc b
    ld e, b
    and h
    inc d
    jr z, jr_002_50ea

    add e
    push bc
    dec h
    xor b
    ld c, b
    and d
    cp d
    sub b
    ret nz

    ld h, l
    ret nz

    push hl
    call nc, $70c0
    ld e, a
    jr nz, jr_002_5054

    ld h, h
    ld b, c
    ret nz

    ld c, $db
    inc bc
    sbc h
    inc bc
    nop
    add b
    ld b, b
    ld b, $64
    inc c
    ld [bc], a
    add hl, bc
    ld b, $32
    add b
    rla
    db $e3
    db $f4
    ld [$d205], sp
    ld l, c
    or h

jr_002_50e8:
    and b

jr_002_50e9:
    ld e, b

jr_002_50ea:
    inc sp
    adc c
    ret nz

    ld [hl+], a
    inc e
    rlca
    add e
    sub b
    inc sp
    pop hl
    add l
    db $fc
    add b
    scf
    dec b
    inc [hl]
    ld a, [$2074]
    rla
    ld [hl], l
    cp d
    jp nc, $940f

    ld h, d
    ld b, l
    jr z, jr_002_50e8

    ld b, b
    inc a
    ld d, b
    rrca
    cp b
    call c, $ff81
    jr jr_002_5111

jr_002_5111:
    db $10
    ld c, [hl]
    nop
    ret nz

    ld h, d
    ld h, c
    jr nc, jr_002_5145

    inc b
    ld de, $8300
    ld de, $3182
    rlca
    dec hl
    or [hl]
    and b
    xor $58
    add b
    rla
    daa
    ld a, [$4489]
    db $d3
    ld hl, $c2b0
    ld l, [hl]
    add b
    inc bc
    ret nz

    add hl, bc
    jr c, @-$7b

    cp a
    rst $08
    ldh [rNR44], a
    adc b
    ret z

    ld b, h
    jr nz, jr_002_50e9

    cp c
    sub d
    inc c
    pop hl
    add d

jr_002_5145:
    sub c
    ldh a, [$f2]
    ld b, d
    ld l, [hl]
    ld a, [de]
    add a
    db $fd
    and h
    ld a, [hl-]
    dec bc
    ld [hl], e
    ld d, h
    ld a, [$4619]
    and b
    ldh a, [rNR44]
    ld a, [de]
    dec b
    ld [hl], a
    or l
    sub l
    ld l, c
    inc c
    ld b, c
    inc d
    call nc, Call_002_4c0d
    ld b, b
    or $14
    ld l, b
    add b
    nop
    dec b
    sub h
    nop
    dec d
    ld d, h
    cp l
    ld a, [hl+]
    nop
    ret z

    and d
    inc a
    inc b
    inc bc
    jp nz, $fc90

    nop
    inc bc
    ret z

    ld a, [c]
    db $fc
    jr nc, jr_002_51c0

    call z, $fc63
    inc e
    ccf
    ld b, a
    jp $f8f4


Call_002_518a:
    ld a, $4f
    inc bc
    call nz, Call_000_070b
    ret


    ld [hl], d
    db $fc

jr_002_5193:
    rla
    rrca
    jp nz, $fcf1

    ld l, $1f
    adc d
    jp Jump_000_28f0


    ld e, $02
    sub c
    db $e4
    ldh [$38], a
    ld c, h
    ld b, e
    inc d
    adc b
    ld [hl+], a
    ld b, c
    ld b, b
    ld d, h
    inc l
    dec bc
    ld b, l
    pop bc
    ld [hl], h
    cp h
    cpl
    ld b, a
    add c
    db $e4
    nop
    ld d, b
    rst $08
    add b
    ld h, b
    cp $8b
    rrca
    inc de
    db $fc

jr_002_51c0:
    db $fc
    ccf
    rst $08
    db $e4
    db $ed
    ld e, l
    ld d, h
    sbc [hl]
    ld [bc], a
    jr nz, jr_002_5193

    db $10
    ld a, [de]
    jp $fec8


    ccf
    adc a
    jp $f8f0


    ld a, $0f
    inc de
    call nz, Call_000_38e2
    adc h
    ld d, e
    inc d

jr_002_51de:
    adc e

jr_002_51df:
    ld [hl+], a
    ret


    ld [hl], d
    ld e, h
    and b
    inc a
    dec b
    ld bc, $90e0

jr_002_51e9:
    ld l, $04
    and c
    ld a, b
    ret z

    scf
    jr z, jr_002_521b

    ld [$37ca], sp
    add d
    and c
    add sp, -$53
    ccf
    ld b, d
    or c
    xor $3c
    sub b
    adc d
    inc bc
    cp $3c
    adc a
    rrca
    ld b, e
    call nc, Call_000_3bec
    ld c, l
    jp Jump_002_5276


    add [hl]
    ld d, $d9
    add c
    and d
    adc a
    ld a, [bc]
    ld a, [$7f44]
    and h
    add a
    ld a, [$3c82]

jr_002_521b:
    adc a
    sbc d
    jr z, jr_002_51e9

    inc [hl]
    sub c
    and h
    adc c
    ld a, [hl+]
    ld c, h
    sub e
    adc d
    ld a, [c]
    cp h
    rst $18
    scf
    set 6, h
    ret


    ld [hl], b
    ld a, b
    ld d, e
    or e
    cp $84
    and b
    call $18ca

jr_002_5238:
    ld [$0007], sp
    add e
    ldh a, [$e8]
    ccf
    jr z, @+$6c

    pop hl
    jr c, jr_002_51de

    and [hl]
    ret


    cp d
    ld [hl], b
    sbc h
    xor b
    ld [hl+], a
    jr nz, jr_002_51e9

    xor a
    add b
    and b
    ld a, b
    ld c, b
    rla
    inc l
    db $db
    ld c, d
    add [hl]
    dec bc
    rlca
    jp nz, $f8a0

    sub c
    jr z, jr_002_51df

    or h
    ld a, l
    ld a, [hl+]
    rst $08
    cp d
    jr c, jr_002_52de

    sub h
    dec h
    ld hl, $7df0
    ld l, b
    xor [hl]
    ld [hl], e
    or $17

jr_002_5270:
    nop
    ld b, d
    ld bc, $32fd
    nop

Jump_002_5276:
    rlca
    ldh a, [rSB]
    ld [hl], l
    rra
    ret z

    ld [bc], a
    cp $63
    sbc b
    ld d, [hl]
    and $51
    ld l, [hl]
    ld c, h
    daa
    ld c, c
    jp c, $ac78

    dec hl
    ld a, [hl+]
    pop de
    jr c, @+$5e

    ld l, e
    xor d
    inc d
    sbc $c1
    dec c
    bit 0, d
    ret nz

    ld a, $0f
    ret nz

    nop
    db $fc
    ld c, c
    jr nc, jr_002_5270

    nop
    ld hl, sp-$68
    pop hl
    or l
    ld a, b
    inc hl
    nop
    nop
    ld [hl-], a
    jr nz, jr_002_5238

    nop
    nop
    add b
    adc b
    ld [hl-], a
    sbc b
    sub l
    or d
    adc c
    dec d
    ld [hl+], a
    ld a, [bc]
    add a
    jr nc, jr_002_52dd

    ld a, [bc]
    add b
    ld bc, $1bc2
    nop
    ld [$0890], sp
    add a
    nop
    ld c, b
    ld sp, $c000
    jr nz, jr_002_52d8

    dec bc
    push bc
    inc bc
    ld [bc], a
    ld h, $61
    sbc b
    ld b, d
    ld a, [de]
    call nz, $a001

jr_002_52d8:
    jr nz, @+$0e

    ld de, $51bc

jr_002_52dd:
    cpl

jr_002_52de:
    add hl, bc
    add b
    ld [bc], a
    jr z, jr_002_52e3

jr_002_52e3:
    inc e
    pop bc
    jr nz, @+$81

    rla
    rst $00
    push de
    call $c304
    nop
    adc a
    jp hl


    adc b
    stop
    or d
    ld [hl], c
    jr nc, jr_002_530f

    daa
    add e
    ret nz

    db $fd
    ld c, [hl]
    jp nc, Jump_000_38d5

    ld l, l
    ld l, $21
    add b
    inc bc
    rst $28
    ld c, e
    jr @-$3e

    inc c
    add h
    inc a
    ld [bc], a
    rlca
    adc h
    push bc

jr_002_530f:
    ld d, h
    inc hl
    add b
    ld b, e
    inc [hl]
    nop
    ld a, [bc]
    ld b, b
    nop
    and e
    ld a, $46
    pop bc
    jp nz, $be70

    inc de
    ld b, $e0
    jr nc, jr_002_5372

    inc bc
    ld [$30e0], sp
    ld c, $06
    add c
    db $ed
    db $fc
    jr nz, @+$1a

    inc c

jr_002_5330:
    inc bc
    add b
    db $10
    inc c
    ld [bc], a
    add b
    ldh [rSC], a
    inc bc
    adc b
    jp nz, $133f

    ret nc

    db $10
    ld sp, $cf24
    ld hl, $dd0f
    ld sp, $0408
    ld bc, $18e0
    scf
    ld bc, $70c6
    ld e, b
    or a
    ld [$3283], sp
    nop
    ldh [rP1], a
    pop bc
    jr nc, jr_002_5376

    rrca
    nop

jr_002_535c:
    add b
    ld [hl], c
    nop
    ld a, d
    ld a, [bc]
    ld c, $c4
    inc hl
    and e
    jr nz, jr_002_5330

Jump_002_5367:
    ld a, $8c
    dec hl
    ld c, $c1
    db $10
    ld h, h
    add c
    ld [hl+], a
    ld b, b
    ld d, b

jr_002_5372:
    inc [hl]
    jr z, @+$0d

    ld [bc], a

jr_002_5376:
    inc de
    cp a
    dec hl
    ld de, $c20c
    nop
    rst $00
    ld b, l
    call z, $8c03
    ldh [$3d], a
    inc c
    inc bc
    add [hl]
    cp b
    jr nz, @-$2f

    pop af
    jr nc, jr_002_535c

    ld [hl], e
    jp nc, Jump_000_20b4

    add d
    inc hl
    adc h
    inc bc
    ld b, e
    add h
    call z, $02c0
    db $e4
    xor c
    dec sp
    call nz, $0c21
    ld [bc], a
    nop
    db $fd
    ld [bc], a
    inc c
    nop
    jr nz, jr_002_5330

    cpl
    add l
    inc bc
    ld hl, sp+$44
    ld c, b
    ld h, b
    add hl, bc
    dec sp
    ret nz

    ld d, b
    sbc h
    ld b, l
    add hl, de
    ret nz

    or e
    inc a
    dec bc
    inc bc
    pop bc
    ld [hl], d
    ld a, h
    rrca
    rla
    pop bc
    ld a, l

jr_002_53c2:
    daa
    ld b, b
    sub l
    adc $13
    db $f4
    ldh [$3e], a
    call z, $eba3
    adc a
    push bc
    ret nz

    jr nc, jr_002_53c2

    rst $38
    db $10
    add a
    db $e4
    pop bc
    inc de
    ld [hl-], a
    rrca
    add h
    ld c, h
    jp nz, $893c

    inc bc
    ret nz

    adc b
    ld a, [hl-]
    ld a, [hl-]
    db $10
    adc b
    ld [c], a
    ld b, e
    jp $f040


    jr nc, jr_002_53fb

    ld b, $21
    res 4, c
    ld d, [hl]
    ld d, l
    inc h
    sub c
    dec bc
    ld b, c
    ld [bc], a
    inc l
    ld e, c
    inc l

jr_002_53fb:
    ld c, e
    sub b
    nop
    nop
    adc b
    ld b, h
    add b
    ld h, b
    db $10
    jr jr_002_5406

jr_002_5406:
    inc b
    nop
    nop
    add b
    adc d
    ld e, l
    add h
    inc de
    push bc
    and $fa
    dec a
    sbc [hl]
    cpl
    scf
    and c
    call nc, $30e0
    sbc b
    add h
    ld d, d
    nop
    ld [bc], a
    ld [hl+], a
    ld de, $0860
    db $10
    adc d
    ld b, e
    inc h
    ld [$9f24], sp
    add $c7
    ld a, b
    inc c
    ld b, $8e
    ld b, a
    adc [hl]
    ld e, a
    pop hl
    or b
    ld hl, sp+$30
    rra
    inc sp
    inc c
    rlca
    call c, $f08f
    set 7, l
    ldh a, [$fe]
    ld a, c
    ccf
    sbc b
    rst $28
    ld a, [$0a0d]
    add h
    ld a, [hl]
    ccf
    add [hl]
    dec de
    ret nz

    ld hl, $c1d3
    ld hl, sp-$20
    ld a, h
    jr nc, jr_002_5474

    ld [$1027], sp
    ld bc, $0880
    ld b, h
    ld c, b
    ld h, b
    ld [hl], l
    ld [hl-], a
    ld b, e
    ld [hl+], a
    ld [de], a
    and d
    ld d, c
    ld c, b
    ld d, c
    dec d
    ld l, c
    db $10
    ld bc, $21ff
    or d
    ld d, b
    xor h
    or h
    ld d, $eb

jr_002_5474:
    cp $02
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld a, [bc]
    ld c, $0b
    dec c
    ld a, [bc]
    rrca
    dec bc
    db $10
    ld de, $1312
    db $10
    ld de, $1514
    ld d, $16
    rla
    jr @+$18

    ld d, $18
    jr jr_002_54c5

    ld d, $19
    ld de, $1b1a
    inc e
    dec e
    ld e, $1f
    jr nz, jr_002_54db

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_002_54eb

    ld a, [hl+]
    dec hl
    inc l

jr_002_54c5:
    dec l
    ld l, $2f
    jr nc, jr_002_54fb

    jr z, jr_002_54fe

    jr z, jr_002_5501

    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_002_550d

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_002_54db:
    ld b, c
    ccf
    ccf
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld d, $16
    ld b, [hl]
    ld b, [hl]
    inc de
    inc de
    inc de
    inc de
    inc de

jr_002_54eb:
    inc de
    dec d
    dec d
    inc de
    ld b, a
    ld b, a
    ld d, $13
    ld b, a
    ld c, b
    ld b, [hl]
    ld d, $16
    ld d, $16
    ld c, c

jr_002_54fb:
    ld c, d
    ld c, e
    ld c, h

jr_002_54fe:
    ld c, l
    ld c, [hl]
    ld c, a

jr_002_5501:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, $55
    ld d, $16
    ld d, [hl]
    ld d, a
    ld e, b

jr_002_550d:
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
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_002_551e:
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
    ld a, l
    add b
    ld d, $16
    ld d, $81
    ld d, $16
    add d
    ld d, $16
    ld d, $83
    add h
    ld d, $16
    add l

jr_002_5545:
    add [hl]
    ld d, $16
    add a
    adc b
    ld d, $16
    adc c
    adc d
    ld d, $16
    adc e
    ld d, $8c
    adc l

Call_002_5554:
    ld d, $16
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
    ld d, $99
    ld d, $16
    ld d, $9a
    sbc e
    ld d, $9c
    sbc l
    sbc [hl]

Jump_002_556c:
    sbc a
    and b
    and c
    ld d, $16
    ld d, $a2
    and d
    inc de
    inc de
    ld bc, $a0c0
    ld [hl], b
    ld c, b
    inc l
    ld a, [de]
    rrca
    ld [$c284], sp
    and b
    ld h, b
    ld c, b
    ld l, h
    ld a, [hl-]
    rra
    db $10
    adc b
    call nz, Call_002_70a2
    ldh [$08], a
    cp $2f
    jr jr_002_551e

    add $a3
    ld [hl], c
    sub b
    ld b, b
    inc e
    dec d
    inc e
    sub b
    ret z

    and h
    ld [hl], d
    ld c, c
    inc c
    ld a, d
    ld b, c
    inc hl
    nop
    add b
    ld b, e
    add d
    add hl, bc
    ld l, h
    cp d
    ld e, a
    jr nc, jr_002_5545

    bit 4, h
    pop hl
    jp hl


    sub h
    jp c, Jump_000_386f

    sbc h
    call z, $93a6
    sbc c
    ld d, h
    or d
    ld [hl], l
    scf
    sbc [hl]
    ld d, b
    jr z, jr_002_5636

    ld c, d
    inc c
    ld a, [hl]
    ld l, e
    dec a
    sub l
    adc $06
    ld b, e
    ld sp, $d4a0
    ld l, l
    ld sp, $4ba1
    add $03
    ld a, [de]
    ld e, l
    ld [hl], $9f
    ld b, l
    and b
    ld d, h
    and l
    or l
    ld c, c
    adc h
    ld hl, sp+$40
    ld [hl+], a
    ld de, $85cb
    ld b, d
    cp c
    ld l, b
    call c, Call_000_3970
    dec e
    ld c, $e6
    inc d
    jr nz, jr_002_5669

    ld b, b
    inc hl
    dec l
    inc de
    add hl, bc
    push hl
    sub $19
    ld l, l
    sub b
    ld b, c
    ld h, a
    or h
    jp c, $f2ee

    db $db
    xor l
    or $c5
    db $76
    or d
    ldh [$6d], a
    sub h
    ld a, c
    adc l
    jp z, Jump_002_4abd

    ld [de], a
    add hl, bc
    ld h, l
    jp nz, Jump_002_6cc1

    cp b
    ld a, b
    dec a
    rra
    ld h, c
    ld bc, $8154
    nop
    ld c, b
    ld h, $14
    sub [hl]
    adc d
    dec b
    ld [hl-], a
    db $ec
    ld d, h
    or a
    dec de
    dec l
    ret z

    ld h, h
    add h
    ld a, [de]

jr_002_562e:
    add hl, bc
    ld l, [hl]
    ld a, e
    ld c, l
    adc e
    rst $08

jr_002_5634:
    db $e3
    or l

jr_002_5636:
    ld d, d
    ld a, [$bbdc]
    scf
    adc b
    sbc a
    set 0, l
    jp nz, $c5f9

    ld l, h
    ld a, [hl+]
    ld d, $0b
    adc $76
    sub e
    dec l
    ldh [$80], a
    ld b, e
    jr c, jr_002_562e

    ld [$5a38], sp
    jp hl


    adc a
    ld [bc], a
    ld e, l
    ld a, [hl+]
    ld c, $86
    ld sp, hl
    ld a, h
    adc $6f
    dec sp
    sub [hl]
    add hl, bc
    inc bc
    add d
    jp $e0fc


    ret nz

    ld h, h
    dec [hl]
    rst $08

jr_002_5669:
    db $ec
    or $83
    ld h, b
    ret nz

    ld l, b
    dec sp
    or a
    ldh [$e8], a
    db $f4
    db $fc
    dec e
    sbc $ff
    jr nc, jr_002_567c

    ld [bc], a
    db $f4

jr_002_567c:
    ld a, [$7ebd]
    rst $08
    ld l, a
    cp e
    rst $18
    ldh a, [$f7]
    add c
    ld a, [hl]
    ld a, a
    rra
    xor a
    ret c

    dec c
    ld hl, sp-$0a
    ld b, b
    ld b, b
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    inc l
    dec c
    db $10
    adc b
    add c
    ld [$5084], sp
    jr z, jr_002_56e3

    jr z, jr_002_56e5

    rst $38
    add c
    cp a
    ld [c], a
    ld [hl], b
    jr z, jr_002_5634

    ld e, b
    ld bc, $8c13
    add $a3

jr_002_56ae:
    ld [hl], c
    ret z

    db $d3
    ld sp, hl
    cp $fd
    ld a, a
    ld a, $9f
    adc a
    ld b, a
    res 4, [hl]
    ld h, $77
    adc h
    or a
    ld h, e
    ld [hl-], a
    sbc b
    sbc h
    xor l
    db $fc
    cp $3a
    ccf
    rra
    rrca
    add [hl]
    sub e
    ret


    ret nz

    ldh [rNR50], a
    ld [hl-], a
    db $10
    ld [$5c08], sp
    jp nz, Jump_000_3465

    ld a, b
    inc bc
    rst $20
    inc c
    ld bc, $f2fc
    jr z, jr_002_56e1

jr_002_56e1:
    add a
    ld b, l

jr_002_56e3:
    ld h, d
    ld d, c

jr_002_56e5:
    ld e, b

jr_002_56e6:
    sbc d
    ld bc, $70e0
    ld b, d
    sbc a
    rst $18
    add sp, $00
    ldh [$2d], a
    jr c, @-$73

    xor e
    rrca
    dec b
    ld h, c
    ld b, b
    ld a, [de]
    ld d, c
    rlca
    ld e, l
    ld a, [de]
    ld [$b5eb], sp
    ei
    dec c
    adc [hl]
    cp l
    ld h, b
    ld bc, $1c85
    ld [hl], l
    db $db
    ld e, l
    ld [hl], l
    add sp, -$1d
    adc b
    db $d3
    ld h, d
    jr nz, @+$39

    add sp, $19
    db $f4
    inc c
    ld a, d
    ld b, $5d
    cpl
    jr nc, jr_002_56ae

    sbc h
    ld c, d
    rst $08
    dec h
    and a
    ld d, d
    db $e3
    pop af
    ld a, c
    call c, $ffbe
    ld e, a
    or a
    ld c, a
    rst $28
    ld [hl], $93
    sbc l
    ld c, e
    add c
    pop bc
    pop hl
    ld [hl], b
    ld hl, sp-$64
    ld e, [hl]
    scf
    rra
    add c
    ld c, a
    and h
    jr nc, jr_002_56e6

    ld a, [c]
    ld b, $25
    ld bc, $7f53
    bit 4, d
    sub c
    sbc b
    call nz, $a95a
    ld d, b
    xor c
    rra
    ld [$b5a0], a
    ld [c], a
    xor l
    ld hl, sp-$15
    rrca
    cp d
    xor $5a
    ld l, e
    sub h
    ld e, [hl]
    dec [hl]
    ld [de], a
    adc d
    ld e, l
    ld l, [hl]
    rst $30
    sbc c
    inc [hl]
    ld [hl], $12
    nop
    add l
    rst $28
    ret nz

    ld bc, $0010
    ld l, a
    add a
    pop bc
    add [hl]
    db $10
    ld bc, $800e
    inc bc
    ret nz

    inc b
    ld [c], a
    nop
    rlca
    ret nc

    add hl, bc
    cp $97
    ld e, e
    and [hl]
    add b
    add a
    add b
    jr jr_002_5787

jr_002_5787:
    adc [hl]
    nop
    adc c
    ld b, l
    db $db
    inc b
    ld [bc], a
    dec sp
    ld b, b
    add hl, bc
    db $e3
    ld b, c
    and b
    xor b
    ld d, h
    ld a, c
    db $fd
    dec l
    ld b, [hl]
    and h
    jp nz, Jump_002_7ffb

    ld h, [hl]
    ld [de], a
    inc de
    add hl, bc
    ld bc, $8080
    call nc, $cf4a
    sbc a
    ldh [$5e], a
    ld l, a
    ld b, a
    xor b
    ret nc

    jr z, jr_002_57bb

    inc bc
    nop
    ret z

    jr c, jr_002_57c4

    rst $10
    ldh a, [$80]
    ld a, c
    ret nc

jr_002_57bb:
    add d
    nop
    and b
    nop
    rlca
    nop
    nop
    ld hl, sp+$01

jr_002_57c4:
    adc a
    ld h, b

jr_002_57c6:
    nop
    rrca
    jr nz, @+$0a

    di
    nop
    rst $08
    jr z, jr_002_57d9

    ld hl, sp+$5e
    ld bc, $537b
    nop
    nop
    ldh [rPCM12], a
    pop bc

jr_002_57d9:
    ld [bc], a
    ld b, b
    ld [$2132], sp
    rst $30
    adc d
    dec e

Jump_002_57e1:
    ccf
    add c
    di
    db $fc
    jr nc, jr_002_5823

    ld bc, $e8a3
    cpl
    ccf
    pop bc
    ld h, $dd
    ld d, $3f
    add b
    jr nc, jr_002_57fc

    xor e
    ld a, [hl+]
    adc a
    di
    ld hl, sp-$51
    ccf
    add b

jr_002_57fc:
    jr @-$09

    rra
    ld [hl], h
    adc a
    ldh [$c4], a
    ldh a, [rTMA]
    ld [c], a
    di
    ld hl, sp+$13
    adc a
    db $e3
    db $e4
    ld b, h
    sbc a
    rra
    rlc c
    ret nz

    sbc d
    ld e, $8a
    pop af
    db $fc
    sub d
    ld l, d
    push hl
    ld d, h
    ld e, b
    ld a, [hl]
    jr nz, @-$1b

    ld [hl], b
    xor b
    rst $38
    rra

jr_002_5823:
    adc d
    pop af
    ld hl, sp-$7f
    sub a
    rst $00
    and $dd
    jr jr_002_57c6

    ld h, $34
    ld b, h
    inc a
    nop
    ld b, $60
    nop
    ld b, d
    sbc d
    and $d9
    or d
    ld l, d
    sbc d
    db $10
    jr nz, jr_002_589f

    nop
    ld c, $00
    rlca
    adc [hl]
    ld [hl], e
    inc b
    nop
    ld bc, $03f9
    sbc d
    ld [bc], a
    ld b, b
    nop
    inc c
    sbc l
    add b
    add hl, bc
    call z, $9e30
    and a
    ret nz

    nop
    ld h, h
    nop
    nop
    ld b, b
    nop
    ld a, h
    nop
    rlca
    adc d
    inc b
    sbc b
    ld [hl], e
    sub c
    add l
    dec a
    ld d, c
    ld d, h
    jp c, $b8c6

    call c, $db32
    dec b
    cp l
    ld l, h
    ld e, d
    xor c
    jp nc, $a3d0

    ld e, h
    ld d, $b5
    ld d, b
    add b
    db $10
    add hl, bc
    ld [hl], b
    ld h, c
    reti


    cpl
    jp nz, $8002

    jr @+$2a

    add c
    ld a, [c]
    add d
    ld a, [hl+]
    ld d, e
    inc d
    or b
    add b
    pop hl
    ld [$308e], sp
    ld b, b
    di
    xor e
    db $eb
    sbc d
    cp d
    cp e
    xor [hl]
    xor d
    ldh a, [$50]
    rst $30

jr_002_589f:
    ld [bc], a
    rrca
    ei
    ld b, $65
    or c
    inc d
    adc c
    sub c
    ld c, e
    inc c
    rlca
    ld [$18b0], sp
    ld a, $0f
    ldh a, [rDIV]
    ld bc, $8e00
    sub b
    ld h, b
    ld bc, $0f00
    ret nc

    db $10
    dec c
    ld [de], a
    ld [$0053], sp
    dec b
    jr nz, jr_002_58c5

    sub e

jr_002_58c5:
    db $e4
    inc c
    ccf
    ld b, b
    db $e3
    db $fc
    inc b
    cp b
    and $6b
    ld [hl], b
    dec b
    or [hl]
    adc $00
    ld d, $ea
    inc a
    nop
    ld e, e
    or [hl]
    rst $28
    or c
    ld l, a
    add hl, de
    sbc d
    ld a, [c]
    ld b, [hl]
    inc hl
    db $eb
    cp d
    rst $30
    cp e
    rst $28
    adc e
    cp b
    push hl
    inc b
    nop
    inc hl
    db $f4
    rra
    jr c, jr_002_58f3

    and e
    ld l, a

jr_002_58f3:
    nop
    cp a
    and e
    jp hl


    sub h
    dec d
    ld [$5001], sp
    nop
    sub l
    nop
    jr nc, @-$52

    ld [hl+], a
    db $fc
    cp [hl]
    dec hl
    jp c, Jump_000_1ff0

    xor d
    ld l, d
    ld b, l
    ld d, d
    db $f4
    or c

jr_002_590e:
    sub c
    dec de

jr_002_5910:
    ld [$c7f9], a
    cpl
    and e
    ldh [rTIMA], a
    rst $00
    ld a, [c]
    dec de
    ld e, d
    ret nc

    or e
    sbc h
    add b
    add b
    jr nz, @-$7d

    ret nc

    inc l
    sbc l
    inc bc
    ld bc, $70c0
    ld a, h
    inc e
    rrca
    inc l
    sub b
    add h
    ld h, c
    jr @-$30

    ld sp, $c30c
    jp z, Jump_000_0c40

    xor l
    ld c, c
    ld [hl], a
    add d
    ld hl, $e288
    call z, $11c3
    rst $00
    jr nc, jr_002_5910

    add b
    nop
    inc e
    ld [bc], a
    ld bc, $0082
    sbc l
    inc bc
    jr nc, jr_002_595c

    dec b
    ld b, b
    ld a, b
    ld b, $01
    ret nz

    jr nz, jr_002_5964

    inc hl
    ld [$10e2], sp

jr_002_595c:
    add [hl]
    ld b, b
    add c
    add hl, bc
    db $e4
    nop
    nop
    add b

jr_002_5964:
    inc h
    dec de
    ld e, l
    push de
    ld [hl], l
    dec a
    ld b, h
    ld [hl], b
    ld e, $34
    rst $20
    ld l, h
    and b
    jr c, @+$03

    sub $d1
    inc bc
    rst $10
    ld [hl], l
    sbc l
    ld l, h
    ld b, d
    db $10
    or h
    add d
    jr z, jr_002_590e

    jp nc, Jump_000_0002

    adc [hl]
    rst $08
    ld [hl+], a
    ld c, b
    sub h
    inc a
    cp a
    ccf
    bit 6, [hl]
    inc h
    rst $38
    rla
    ld d, d
    call nz, $ffa8
    db $d3
    ld b, [hl]
    add e
    and c
    jr c, jr_002_59e7

    adc a
    inc bc
    ret nz

    ld a, b
    ld a, $13
    add e
    ld [$1fe2], sp
    rst $00
    ld a, [c]
    ld e, l
    push de
    ld [hl], d
    ld e, h
    add h
    cpl
    ld c, l
    ld [hl], a
    ld e, [hl]
    ld b, l
    add hl, hl
    jp nz, $10cf

    xor l
    call c, Call_000_2203
    adc b
    ldh a, [rNR10]
    rrca
    ld a, [bc]
    ld b, e
    ld hl, sp+$4c
    adc a
    cpl
    jp $fc03


    add $3f
    pop bc
    jp Jump_002_7cf4


    ccf
    ld c, a
    add e
    db $e4
    ldh a, [$3c]
    ld b, b
    or b
    ld a, h
    sub a
    cpl
    pop bc
    db $76
    ld [hl], b
    ld l, $1f
    adc d
    jp Jump_000_28f0


    ld e, $02
    sub c
    db $e4
    ldh [$38], a
    ld c, h
    ld b, e

jr_002_59e7:
    inc d
    adc b
    ld [hl+], a
    ld b, c
    ld b, b
    ld d, h
    inc l
    dec bc
    ld b, l
    pop bc
    ld [hl], h
    cp h
    cpl
    ld b, a
    add c
    and $1f
    jr c, jr_002_5a09

    add b
    ld h, b
    cp $eb
    rrca
    inc de
    db $fc
    db $fc
    adc [hl]
    sbc d
    ld e, [hl]
    ld [hl], a
    sub l
    jr nz, @+$0a

jr_002_5a09:
    add e
    jr nz, jr_002_5a4c

    jr c, jr_002_5a10

    inc hl
    ret


jr_002_5a10:
    jr nc, jr_002_5a51

    inc de
    inc sp
    ldh [$f1], a
    inc a
    ld c, [hl]
    inc hl
    adc b
    push bc
    ld sp, $b248
    inc l
    sub a
    dec h
    jp z, $c003

    ld d, b
    ld e, $09
    ld [bc], a
    ldh [rWY], a
    rla
    adc h
    add e
    ld [hl], e
    cp $ff
    adc h
    and e
    ld a, b
    ld a, [hl+]
    ld e, $8a
    db $d3
    db $f4
    dec hl
    ld e, $c2
    pop af
    rst $38
    ret nz

    jr z, jr_002_5a50

    rlca
    ld hl, sp-$44
    rst $38
    inc bc
    ld a, d
    dec a
    ld e, l
    adc [hl]
    sub $e3
    ld [hl], l

jr_002_5a4c:
    ld a, b
    cp l
    nop
    nop

jr_002_5a50:
    ld b, b

jr_002_5a51:
    rrca
    rst $30
    di
    db $fd
    ld hl, sp-$03
    add c
    xor e
    ldh [$50], a
    ld c, b
    call z, $065e
    ld l, $3f
    ld b, l
    rra
    rrca
    sub a
    add e
    push bc
    ret nz

    pop hl
    ld h, d
    ld sp, $0851
    sub b
    and b
    ld d, h
    ld e, b
    dec l
    ld d, a
    xor e
    db $db
    db $ed
    push af
    ld a, [$fefd]
    rst $38
    ld b, b
    jr nz, jr_002_5aa0

    inc de
    ld c, c
    and e

jr_002_5a81:
    ld hl, $3bb9
    sbc l
    or d
    sbc e
    ret nz

    add b
    ldh [rNR42], a
    ld hl, sp-$18
    ld a, [hl]
    ld c, a
    rst $20
    inc sp
    sub a
    di
    ld sp, hl
    ld hl, sp-$04
    ld a, h
    ld a, $1e
    cpl
    rla
    inc de
    adc d
    db $76
    adc b
    ld c, [hl]

jr_002_5aa0:
    ld d, b
    ld b, c
    ld b, c
    ld [c], a
    ld b, c
    ld [hl], d
    xor e
    ld e, d
    sbc a
    adc e
    rrca
    adc d
    add a
    ret nz

    and h
    ld a, [c]
    ld a, [hl+]
    dec a
    dec bc
    ld c, a
    xor d
    or a
    call c, Call_002_500c
    ld a, b
    ld l, $17

jr_002_5abc:
    ld h, c
    add a
    jp $52ec


    and $fd
    adc d
    ld b, e
    add h
    rlca
    ld sp, hl
    sbc b
    nop
    cp $00
    jr nz, jr_002_5b2c

    ret nc

    dec bc
    ldh a, [rP1]
    nop
    ld b, h
    ld [hl+], a
    sbc h
    ccf
    ld [c], a
    jr @+$2e

    ld b, [hl]
    rra
    ld b, $22
    ld h, d
    or c
    ld d, c
    ld l, b

jr_002_5ae2:
    or h
    cp d
    ld e, [hl]
    ld e, l
    jr nc, jr_002_5a81

    ld c, l
    ld h, $d3
    reti


    db $e3
    ld [hl], d
    ld a, a
    sbc c
    sbc l
    sub $28
    ld l, a
    add a
    ldh [rSB], a
    ld hl, sp+$02
    inc bc

jr_002_5afa:
    ld l, b
    ret nz

    rrca
    adc h
    ld d, $10
    nop
    ld [hl], b
    nop
    ld [hl+], a
    nop
    ld [$1290], sp
    inc e
    ld [bc], a
    add e
    jr nz, jr_002_5b3d

    db $10
    inc c
    dec bc
    xor $08
    db $10
    ret z

    jr nz, jr_002_5b2f

    adc b
    ld b, [hl]
    or d
    ld bc, $40a0
    jr nc, jr_002_5ae2

    ld [c], a
    ld d, c
    ld a, [de]
    db $fc
    jr jr_002_5abc

    nop
    adc d
    nop
    inc e
    jp nz, $f041

    nop

jr_002_5b2c:
    rrca
    dec b
    ret z

jr_002_5b2f:
    push de
    ld h, c
    ld [hl], l
    jp c, $18f6

    add hl, bc
    db $fd
    call nc, $84d7
    nop
    ld b, d
    and b

jr_002_5b3d:
    ld bc, $3030
    sbc [hl]
    ld e, $0f
    rst $08
    rst $30
    adc $c7
    ld e, e
    xor b
    adc c
    nop
    ld hl, $0f80
    cp [hl]
    xor $a8
    add $00
    ld d, c
    nop
    rlca
    add b
    add e
    add $db
    xor b
    adc [hl]
    ld [bc], a
    inc sp
    ld b, b
    nop
    and h
    nop
    ld a, [bc]
    inc e
    ld b, a
    jr jr_002_5b67

jr_002_5b67:
    rlca
    add hl, bc
    jp nz, $4cf8

    dec de
    add b
    pop bc
    jr c, jr_002_5b7d

    inc hl
    add b
    ret nz

    jr c, jr_002_5b90

    rlca
    and c
    jr nz, jr_002_5afa

    ld h, b
    jr nc, jr_002_5b8b

jr_002_5b7d:
    nop
    ld b, b
    jr nc, jr_002_5b8b

    inc bc
    add b
    ld [$230e], sp
    ld [$aef7], sp
    dec b
    ld [hl], c

jr_002_5b8b:
    add h
    sub e
    inc a
    add h
    ccf

jr_002_5b90:
    ld e, d
    cp b
    inc d
    db $10
    rlca
    add b
    ld h, b
    call c, Call_000_1907
    pop bc
    ld h, d
    call c, $0c22
    ret z

    inc bc
    add b
    inc bc
    inc b

jr_002_5ba4:
    ret nz

    ld [hl], b

jr_002_5ba6:
    inc a
    ld [bc], a
    ld bc, $01c4
    add sp, $28
    dec sp
    inc e
    ld l, b
    ret c

    add e
    inc h
    db $e3
    ld h, b

jr_002_5bb5:
    xor h
    dec sp
    inc b
    ld b, c
    sub d
    inc b
    adc c

jr_002_5bbc:
    ld bc, $d040
    and b

jr_002_5bc0:
    inc l
    ld [$f64e], sp
    ret nz

    ld b, h
    inc sp
    ld [$1c03], sp
    and b
    jr c, @+$0e

    inc bc
    adc h
    ldh [$3d], a
    inc c
    inc bc
    add l
    ld c, b
    jr nz, jr_002_5ba6

    pop af
    jr nc, @-$2f

    nop

jr_002_5bdb:
    ret nz

    jr nc, @+$07

    rrca
    ld h, d
    ld c, b
    ld [hl+], a
    jr c, jr_002_5ba4

    inc [hl]
    ld hl, $e076
    nop
    ld l, $4a
    sub e
    cp h
    ld b, d
    db $10
    ret nz

    add hl, hl
    sub c
    rrca
    jr nz, jr_002_5bb5

    ld [bc], a
    ld [$9d82], sp
    ret c

    add hl, hl
    call c, Call_002_4344
    add b
    sub e
    cp h
    dec b
    add hl, bc
    call nz, $9c51
    dec bc
    inc sp
    ret nz

    or b
    inc a
    rla
    daa
    ret nz

jr_002_5c0e:
    pop af
    ld a, h
    rla
    ld [hl], h
    ld h, d
    inc hl

jr_002_5c14:
    add b
    ldh [$3e], a
    ld c, $13
    db $f4
    ldh [$3e], a
    call z, $eaa3
    ld [hl+], a
    ld h, b
    and [hl]
    jr nc, jr_002_5c14

    rst $38
    db $10
    add a
    and $10
    ret nz

    inc a
    inc c
    add e
    ld [c], a
    and d
    jr nc, jr_002_5bc0

    ld [hl+], a
    ld b, b
    ldh a, [rNR43]
    ld c, $88
    ret nc

    ld [hl+], a
    jr c, jr_002_5bbc

    add b
    ld [hl], b
    inc [hl]
    rrca
    inc bc
    nop
    ldh [$62], a
    inc e
    and e
    ld b, b
    ld hl, $61c9
    ld a, [de]
    ld d, d
    jr nc, jr_002_5bdb

    nop
    nop
    jr nz, @-$76

    inc hl
    ld b, e
    adc b
    sub a
    or l
    adc h
    ld l, [hl]
    rra
    or h
    call c, $2240
    adc e
    or b
    ld b, b
    sbc [hl]
    rla
    adc l
    ld a, [c]
    inc a
    rst $08
    dec bc
    add $f2
    inc e
    and a
    adc l
    add d
    jr @+$06

    inc b
    ld [hl+], a
    ld [$85b8], sp
    adc c
    inc b
    add hl, bc
    inc hl
    ld hl, sp+$6c
    dec sp
    and $32
    jr c, jr_002_5c0e

    ld c, $4f
    ldh a, [$6c]
    rra
    inc bc
    nop
    ei
    xor h
    jr jr_002_5c91

    adc $43
    db $fc
    add hl, de
    ccf
    rst $08
    add e

jr_002_5c91:
    ld hl, sp-$0e
    ccf
    adc h
    ld [hl], l
    ld [hl+], a
    ld sp, hl
    rra
    add a
    ldh a, [$60]
    sbc $00
    add e
    and e
    ret nz

    db $fc
    and h
    xor d
    ld [hl+], a
    ld [$00e2], sp
    inc c
    ld a, [bc]
    push hl
    db $eb
    jr nc, @+$06

    add e
    jr nz, jr_002_5cb1

jr_002_5cb1:
    jr nz, jr_002_5cbd

    daa

Jump_002_5cb4:
    reti


    ld [$1863], a

Call_002_5cb8:
    add [hl]
    add hl, hl
    inc [hl]
    ld h, b
    sub e

jr_002_5cbd:
    sub e
    ld [hl], l
    adc e
    push bc
    and b
    ld d, d
    xor b
    xor d
    push bc
    sub e
    sub c
    db $fd
    ld [bc], a
    ccf
    push bc
    ld a, h
    adc e
    inc h
    ld a, [bc]
    rst $08
    ldh a, [rTIMA]
    add hl, sp
    ld h, c
    sub h
    add c
    ld d, l
    add a
    add $f0
    ld [c], a
    nop
    ret nc

    inc [hl]
    ld a, [bc]
    add d
    and e
    ld [hl-], a
    call $030c
    db $fc
    adc b
    scf
    jr jr_002_5d0f

    db $db
    ld [hl], $cd
    ld [hl], e
    ld [hl-], a
    and c
    db $10
    ld d, b
    ld b, b
    ld bc, $8050
    scf
    inc c
    inc bc
    call c, $2da0
    inc c
    inc bc
    ld d, e
    ld c, d
    dec [hl]
    rrca
    ld h, d
    adc b
    db $e3
    nop
    ld bc, $1848
    nop
    jp nc, $bd74

    inc [hl]

jr_002_5d0f:
    or h
    db $d3
    push af
    inc e
    di
    ld sp, $33d0
    and $20
    ld a, [bc]
    rst $10
    ld [hl], e
    db $ed
    add c
    add a
    ld [hl], h
    ret nz

    ldh [$03], a
    ld h, d
    ld a, $ca
    ld [bc], a
    xor b
    ret nc

    ld [hl], $b6
    call $f0b8
    ld a, $9a
    ld d, b
    db $10

jr_002_5d32:
    rrca
    ld [bc], a
    rrca
    jp nc, $bda0

    ld [hl-], a
    dec c
    db $dd
    db $e4
    call nc, $da37
    dec e
    adc a
    ld e, a
    scf
    jp z, $f042

    ld [$4d6a], sp
    cp $07
    inc [hl]
    inc b
    dec c
    ld a, [bc]
    xor h
    ld b, b
    rra
    ret nz

    jp $b8b9


    nop
    call nz, Call_000_10f0
    ld c, h
    push hl
    ld a, c
    ld [hl], c
    jr nc, @+$04

    ld de, $809b
    ld d, b
    ld d, $84
    ld bc, $5e40
    db $eb
    rst $20
    ld h, c
    nop
    add b
    inc a
    add h
    cp b
    sbc h
    rst $38
    inc [hl]
    ld [bc], a
    rrca
    ldh a, [rNR41]
    rrca
    ld [$e033], a
    jr nc, @-$02

    ld bc, $c69d
    daa
    xor e
    ld [$f10a], sp
    ld l, h
    rst $18
    inc l
    set 6, e
    ld l, h
    rst $18
    inc a
    rst $08
    ldh a, [rLCDC]
    inc e
    ldh a, [$5a]
    ld [hl], e
    ldh a, [$c0]
    ld sp, $030e

Call_002_5d9a:
    sub e
    ret z

    jr c, @-$70

    ld h, b
    adc b
    ld h, e
    jr z, jr_002_5d32

    ld [hl], d
    nop
    push de
    db $f4
    ld c, l
    inc bc
    db $eb
    inc [hl]
    dec [hl]
    dec c
    ld b, l
    jr z, jr_002_5dd2

    add hl, de
    ret z

    add e
    inc [hl]
    sub h
    scf
    ld [hl], b
    di
    nop
    call c, $bdf5
    add a
    ld [hl], b
    ld a, [bc]
    jr nz, jr_002_5dc9

    xor l
    cp e
    ld [hl], b
    db $db
    jp z, Jump_002_44b3

    db $db

jr_002_5dc9:
    inc a

Call_002_5dca:
    ld e, a
    db $10
    inc c
    add b
    inc l
    ld a, [bc]
    inc bc
    and b

jr_002_5dd2:
    xor b
    dec sp
    ld b, $23
    sbc b
    db $f4
    dec a
    adc a
    inc bc
    set 7, h
    nop
    ld b, b
    or d
    inc b
    adc e
    inc [hl]
    dec c
    cp l
    ret nz

    call nc, $d4f8
    xor a
    di
    db $fc
    cp $bf
    adc a
    db $db
    db $f4
    ld sp, $450f
    jr z, jr_002_5dfb

    ld bc, $92c8
    inc a
    push de

jr_002_5dfb:
    dec [hl]
    jp z, $bc92

    push de
    dec [hl]
    jp z, $bc92

    sub $35
    rst $08
    jp $f0fc


    dec a
    inc a
    add e
    ret nz

    db $f4
    inc a
    db $10
    rlca
    and e
    jp nz, Jump_000_0405

    ld a, c
    dec a
    add b
    ld b, b
    inc [hl]
    ld [hl+], a
    dec e
    and h
    db $d3
    ld d, [hl]
    dec hl
    jp c, $152d

    ld d, d
    xor l
    xor d
    push de
    ld a, a
    ccf
    ldh [$71], a
    adc b
    ld hl, $e9c1
    dec de
    adc l
    sbc h
    sbc [hl]
    ret nz

    ld b, b
    ld [c], a
    ld de, $c618
    ld l, a
    ld a, [hl+]
    push de
    db $ed
    ld b, $da
    and c
    ld d, h
    call nc, Call_000_3f6a
    sbc a
    call nz, $8103
    nop
    ret nz

    ret nz

    ld a, b
    ld a, [hl+]
    dec e
    dec b
    rlca
    add b
    and c
    ld d, c
    dec l
    sub a
    add b
    ld b, b
    jr z, jr_002_5e7e

    dec de
    ld b, c
    and b
    xor c
    ld d, h
    ret nc

    push de
    inc de
    ret


    ld [hl], e
    ld a, [$f43a]
    ld e, b
    dec a
    nop
    rrca
    jp z, Jump_000_263d

    ld e, [hl]
    ccf
    ld a, a
    and b
    rla
    db $ec
    ld b, [hl]
    ld [c], a
    sub c
    ld e, c
    ld e, c
    xor l
    sub $5e
    adc a
    rst $00

jr_002_5e7e:
    jp $a1f2


    ld sp, $1a24
    inc l
    and [hl]
    add d
    ld hl, $bcd0
    ld a, [hl]
    sub b
    ret z

    ret c

    adc l
    ld [$02db], a
    or l
    ld e, h
    ld l, [hl]
    ret c

    ld h, $33
    dec sp
    ld b, l
    and d
    push de
    ld l, h
    ld a, c
    add h
    adc h
    ld [c], a
    ld d, [hl]
    ld a, c
    dec l
    ld a, $97
    rra
    adc e
    adc $e5
    rst $30
    ld e, d
    db $fd
    ld [bc], a

jr_002_5eae:
    ld a, a
    ld a, c
    or h
    sbc h
    ld [$165c], a
    inc de
    dec c
    adc b
    push bc
    ld h, e
    dec h
    rst $20
    rst $00
    ldh [$a1], a
    ldh a, [$58]
    ld a, h
    inc c
    ld e, $06

jr_002_5ec5:
    add a
    ld b, c
    ld d, d
    sub h
    rst $38
    ld a, a
    sbc a
    rst $18
    ld [c], a
    rst $30
    ld sp, hl
    ld e, a
    ld d, c
    xor d
    sub $8a
    rst $18
    ld sp, hl
    adc h
    db $d3
    ld [c], a
    ld [hl], d
    jr z, jr_002_5eae

    dec [hl]
    inc [hl]
    ld h, a
    rst $20
    ldh a, [rTAC]
    ld c, d
    rst $38
    call z, $e7e6
    ld [hl+], a
    and a
    ld d, [hl]
    sbc h
    nop
    rst $38
    ld d, b
    rlca
    call nc, $b581
    ld d, b
    ld b, l
    ld [hl], d
    ld [$075e], sp
    rra
    jp $b9e7


    db $fc
    ld [hl], d
    rst $38
    ld a, [bc]
    dec a
    pop bc
    rrca
    cp $c7
    ld de, $7f00
    jr nz, jr_002_5f1a

    call nc, $f609
    add e
    inc a
    ld [hl-], a
    ld sp, hl
    ld b, $3f
    ld b, c
    rst $08
    ldh a, [$2b]
    ld hl, sp+$0c

jr_002_5f1a:
    db $fc
    ld [bc], a
    ld a, $01
    cpl
    db $10
    sbc e
    adc h
    ld a, [bc]
    add b
    ld [hl+], a
    and b
    inc d
    and b
    nop
    xor b
    nop
    ld a, [de]
    nop
    ld [hl], d
    cp b
    rrca
    inc sp
    ret nz

    pop af
    dec a
    adc c
    pop hl

jr_002_5f36:
    db $fc
    rst $08
    rrca
    jp z, Jump_002_7c70

    or e
    inc bc
    jp z, $5d90

    ret z

    jr z, jr_002_5ec5

    jp nc, $1e84

    ld a, [hl-]
    ld c, $71
    ret nc

    di
    ld l, $8f
    sub d
    db $f4
    db $fc
    scf
    adc a
    jp $f9f4


    ld e, $cf
    jr nc, jr_002_5f36

    rst $20
    ld [hl], c
    and d
    jr nc, @+$80

    ld de, $8128
    jp nz, Jump_000_1994

    ld a, [hl+]
    pop bc
    ld [hl-], a
    call c, $2b07
    call nz, $38f1
    adc a
    daa
    ld b, c
    ldh a, [$fc]
    ccf
    dec e
    rst $00
    di
    cp l
    or b
    ccf
    rst $08
    db $d3
    ld hl, sp+$27
    ld sp, $f8c4
    ret z

    rra
    ld c, $c3
    di
    sbc h
    rst $38
    scf
    adc a
    ld a, [c]
    or b
    rst $38
    ld d, $4f
    db $e3
    call z, Call_000_39fc
    ld c, a
    add e
    inc [hl]
    ldh a, [rNR51]
    ld c, [hl]
    nop
    sub h
    ret nc

jr_002_5f9c:
    ld de, $024b
    inc d
    ld [hl], b
    add hl, sp
    ld b, c
    ld bc, $fdc8
    add hl, sp
    rst $08
    add e
    jr z, jr_002_5f9c

    ld [hl], $4e
    add d
    ldh a, [$dc]
    rra
    adc e
    and $99
    xor c
    dec b
    ld b, d
    rlca
    add sp, -$6b
    ld a, [hl]
    ld b, b
    ld [bc], a
    ld d, h
    jr nz, jr_002_5fd9

    ld b, c
    nop
    sub h
    db $10
    dec h
    ld c, b
    ld [bc], a
    cp h
    rrca
    scf
    pop bc
    ld hl, sp-$32
    ld b, e
    ld l, c
    adc a
    ldh [$fc], a
    cp h
    rlca
    res 2, b
    jr c, @+$7c

    ccf

jr_002_5fd9:
    ld c, a
    ld b, e
    db $ec
    add sp, $3d
    call $bc03
    jr nz, jr_002_601a

    call nz, $fd02
    call c, Call_000_0a71
    and b
    ld d, l
    ret z

    adc c
    inc e
    ld h, d
    db $fc
    jr nz, @+$22

    inc b
    dec b
    ld e, b
    or e
    rra
    push bc
    jp nc, Jump_000_2efc

    scf
    pop bc
    ld h, e
    cp h
    dec bc
    dec a
    ret nz

    ld d, e
    db $ec
    ld [bc], a

Jump_002_6005:
    ccf
    ld b, b
    inc de
    ld hl, sp-$33
    jr nc, jr_002_602b

    add sp, $00
    ld sp, hl
    ld a, $07
    ld hl, sp+$70
    ld hl, sp+$3f
    ld c, a
    nop
    call nc, Call_000_29e0

jr_002_601a:
    ld b, l
    ld bc, $b814
    ld bc, $8a4f
    cp $bf
    ccf

Jump_002_6024:
    ld b, b
    ld b, b
    inc b
    ld [bc], a
    ccf
    ret nz

    inc d

jr_002_602b:
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0209], sp
    ld a, [bc]
    inc bc
    add hl, bc
    ld [bc], a
    dec bc
    inc bc
    inc c
    dec c
    ld c, $05
    inc c
    dec c
    rrca
    db $10
    ld bc, $1101
    ld [de], a
    ld bc, $1201
    ld [de], a
    ld bc, $1301
    dec c
    inc d
    dec d
    ld d, $17
    jr jr_002_6076

    ld de, $1812
    jr @+$14

    ld [de], a
    jr jr_002_607e

    inc de
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld bc, $0801
    ld [$0605], sp
    ld b, $01
    ld e, $1f

jr_002_6076:
    rra
    jr nz, jr_002_609a

    rra
    ld [hl+], a
    jr nz, jr_002_60a0

    inc hl

jr_002_607e:
    inc hl
    inc hl
    inc h
    inc h
    inc h
    inc h
    dec h
    dec h
    dec h
    dec h
    ld h, $26
    ld h, $26
    daa
    daa
    daa
    daa
    jr z, jr_002_6094

    add hl, hl
    inc bc

jr_002_6094:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_002_609a:
    jr nc, jr_002_60cd

    inc l
    ld [hl-], a
    inc l
    ld [hl-], a

jr_002_60a0:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $2c
    ld [hl-], a
    scf
    jr c, jr_002_60db

Jump_002_60a9:
    add hl, sp
    jr c, @+$3c

    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld bc, $0143
    ld bc, $4544
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

jr_002_60cd:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, e
    ld e, [hl]
    ld bc, $5f01
    ld h, b
    ld bc, $6101

jr_002_60db:
    ld h, d
    ld bc, $6301
    ld h, h
    ld bc, $6501
    ld h, [hl]
    ld bc, $6701
    ld bc, $6968
    ld bc, $6a01
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_002_60f4:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld bc, $0175
    ld bc, $7601
    ld [hl], a
    ld bc, $7978
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld bc, $0101
    ld a, [hl]
    ld a, [hl]
    dec b
    dec b
    jr jr_002_6126

    jr jr_002_6128

jr_002_6110:
    jr jr_002_612a

    ld a, a
    ld a, a
    add b
    add b
    add c

jr_002_6117:
    add c
    add b
    add b
    add b
    add b
    add d
    add e

jr_002_611e:
    add h
    add l
    add [hl]
    add a
    adc b

jr_002_6123:
    adc c
    adc d
    adc e

jr_002_6126:
    adc h
    adc l

jr_002_6128:
    adc [hl]
    adc a

jr_002_612a:
    sub b
    sub c
    sub d
    sub e
    jr jr_002_6148

    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d

jr_002_6137:
    sbc e
    sbc h
    sbc l
    jr jr_002_6154

    sbc [hl]
    sbc a

jr_002_613e:
    jr jr_002_6158

    and b
    and c
    and d
    and e
    inc c
    and h

Jump_002_6146:
    and l
    add b

jr_002_6148:
    add b
    and [hl]
    and [hl]
    jr jr_002_60f4

    xor b
    xor c
    ld a, a
    ld a, [hl+]
    dec hl
    xor d
    xor e

jr_002_6154:
    ld l, $2f
    xor h
    xor l

jr_002_6158:
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
    jr c, jr_002_611e

    cp d
    jr c, jr_002_6123

    ld a, [bc]
    ret nz

    and b
    ld [hl], b

Call_002_616c:
    ld c, b
    inc l
    ld a, [de]
    rrca
    ld [$c284], sp
    add d
    and c
    ld l, b
    ld l, h
    ld a, [hl-]
    rra
    db $10
    adc b
    call nz, Call_002_4382
    ld a, b
    xor h
    ld e, d
    cpl
    jr jr_002_6110

    add $a2
    ldh [rLCDC], a
    db $10
    ld a, [de]
    scf
    jr nz, jr_002_6117

    add h
    jp nz, $b943

    inc l
    sbc d
    ld c, a
    jr z, jr_002_612a

    jp z, Jump_002_6024

    add hl, de
    ld l, h
    cp d
    ld e, a
    jr nc, jr_002_6137

    call z, $d1a5
    ret nc

    jr nc, jr_002_61eb

    ld h, a
    jr c, jr_002_613e

    ret z

    rst $00
    inc de
    ret


    db $ec
    ld a, [$407f]
    sbc a
    ld c, $e5
    sub e
    sbc c
    ld [hl], b
    add b
    ld b, e
    cpl
    and e
    pop de
    xor c
    ld [de], a
    reti


    xor h
    sbc $93
    ld c, h
    sub [hl]
    jp nc, Jump_002_60a9

    add hl, de
    db $dd
    ld b, $af
    ld e, b
    and c
    add h
    and [hl]
    ld [bc], a
    and c
    ld e, b
    or b
    ld e, d
    ld l, $97
    adc b
    add h
    db $76
    dec hl
    inc h
    or [hl]
    rst $00
    ld c, l
    adc a
    ld d, e
    db $ec
    or [hl]
    ret


    ld [hl], l
    and d
    xor l
    ld e, b
    cp b
    ret nc

    and l
    add d
    ld b, c

jr_002_61eb:
    inc l
    or h
    ld e, [hl]
    jr nc, jr_002_6208

    adc h
    add [hl]
    ld h, b
    dec de
    xor h
    cp d
    db $fd
    jr c, @-$57

    ld c, e
    ld [hl], b
    ld [de], a
    db $fc
    inc h
    jp z, Jump_002_57e1

    ld e, $0f
    ld b, a
    jp $8dfb


    ld l, b

jr_002_6208:
    ld [bc], a
    ld h, $13
    res 0, [hl]
    add e
    ld d, c
    or h
    or a
    inc hl
    ld l, $cc
    ld c, h
    ldh a, [$59]
    ld a, h
    sub h
    jp Jump_000_3335


    call nz, Call_002_434f
    ld b, c
    cp c
    pop hl
    nop
    add d
    ld b, l
    ld hl, $a563
    add d
    add c
    ld c, h
    call nz, $0116
    sub $cb
    or [hl]
    ld d, e
    inc l
    db $e4
    or a
    ld l, c
    cpl
    call c, $c261
    ld d, h
    db $10
    ldh [rPCM12], a
    ld a, b
    rrca
    inc e
    db $10
    ret z

    sbc d
    or b
    sub b
    ld b, e
    adc a
    ret z

    db $e3
    add d
    ld bc, $ae20
    ld c, a
    dec sp
    sbc h
    dec b
    ld bc, $c001
    ld a, h
    cp $af
    ld e, e
    sub e
    inc hl
    inc e
    or $bb
    ld h, e
    sub b
    ldh a, [$7c]
    ld [hl], d
    inc c
    ld b, $83
    cp e
    sbc [hl]
    ld c, [hl]
    ret c

    add sp, $26
    inc d
    db $f4
    ld a, [$41bd]
    ld a, a
    ld l, a

jr_002_6273:
    xor a
    rst $18
    ldh a, [$f8]
    db $fc
    cp [hl]
    ld a, a
    ld c, a
    add b
    ld h, e
    rst $28
    push af
    push af
    ld b, b
    ld b, b
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_002_6289

jr_002_6289:
    xor d
    ld d, l
    ld de, $a108
    ld [$4484], sp
    ld [hl+], a
    dec d
    inc c
    ld b, h
    ccf
    ldh [$6f], a
    ld hl, sp-$54
    ld a, [bc]
    daa
    jr jr_002_629e

jr_002_629e:
    ld b, l
    ld h, e
    ld [hl], c
    ret z

    db $ec
    ld a, d

jr_002_62a4:
    jr c, jr_002_62a4

    ld a, a
    cp a
    ld e, a
    rst $08
    and a
    db $e3
    pop de
    ld a, [c]
    jp hl


    inc b
    ld [bc], a
    ld [bc], a
    add c
    ld b, c
    ld d, b
    xor d
    db $10
    xor d
    ld d, l
    ld b, d
    dec h
    jp nc, $fac7

    ld bc, $70e0
    ld b, d
    sbc a
    rst $08
    add sp, $00
    ldh [$2d], a
    ld a, b
    xor e
    ld a, [hl]
    ld a, [hl-]
    jp $b8ee


    sbc h
    ld e, [hl]
    dec l
    ld a, [de]
    and h
    rst $00
    ld [hl+], a
    sub c
    ld h, b
    dec de
    db $f4
    inc c
    ld a, [$4906]
    db $dd
    cpl
    jr nc, jr_002_6273

    sbc h
    ld c, d
    call z, Call_000_2624
    ld [de], a
    db $e3
    ld bc, $8001
    cp [hl]
    ret nz

    ld b, b
    ccf
    rst $08
    di

Call_002_62f2:
    ld l, c
    call nz, Call_002_6dea
    ld b, b
    ld l, $12
    rst $00
    add d
    cp c
    ldh a, [$50]
    rlca
    ld l, a
    ld a, [de]
    ld [$84ca], sp
    dec [hl]
    and d
    adc [hl]
    jp hl


    ld [hl], d
    or a
    pop de
    and e
    ld d, h
    jp c, Jump_002_457d

    add sp, $19
    xor d
    ld d, l
    add h
    xor h
    jp nc, Jump_002_695a

    ld l, $35
    rla
    sbc d
    adc e
    db $ed
    ld d, l
    ei
    xor h
    cp $f3
    ld l, c
    add hl, sp
    call nc, Call_002_5cb8
    ld a, $27
    rla
    adc l
    rst $00
    cp l
    rst $18
    db $f4
    ld d, [hl]
    xor e
    db $fd
    ld d, h
    rst $38

jr_002_6336:
    ld a, [hl+]
    rst $20
    rst $18
    ld sp, hl
    ld [$be2d], a
    ld [c], a
    inc hl
    ld a, [bc]
    jr c, jr_002_6336

    ld a, [$1bb0]
    pop de
    rst $00
    ld h, l
    sbc h
    reti


    db $10
    dec b
    rst $00
    ld e, d
    pop af
    sub $dc
    ld [hl], l
    ret nc

    or l
    ld a, [$a3f6]
    adc l
    ld l, b
    db $e3
    ld a, [hl+]
    ld l, a
    call c, $ed7b
    ld a, [hl]
    ld b, a
    daa
    add l
    ld c, a
    and h
    rlca
    ld [c], a
    di
    ld sp, hl
    ld bc, $bffe
    ld b, b
    rra

Jump_002_636e:
    di
    ld a, c
    ret c

    or h
    ld l, [hl]
    ld sp, hl
    ld a, [de]
    rrca
    cp a
    add $0f
    nop
    db $d3
    add sp, $5e
    rst $38
    add hl, bc
    ld b, [hl]
    ld a, d
    rst $08
    ldh [rNR23], a
    add hl, bc
    ld d, a
    and b
    ld a, a
    dec hl
    rst $18
    ret nz

jr_002_638b:
    rra
    ld h, h

jr_002_638d:
    add h
    nop
    rra
    ld a, a
    inc c
    ld e, [hl]
    ld bc, $fbbe
    ld hl, sp+$27
    xor $f6
    call nz, $e7d3
    push af
    add c
    ret nz

    sbc d
    ld e, $8a
    pop af
    db $fc
    sub d
    ld c, a
    jr nz, jr_002_63fd

    ld h, b
    ld a, [hl]
    jr nz, jr_002_638b

    ld [hl], b
    xor b
    rst $38
    rra
    adc d
    pop af
    ld hl, sp-$7f
    add e
    rst $00
    rst $20
    adc l
    ld c, d
    add l
    ld hl, $8c37
    inc bc
    ccf
    ret nz

    ld [hl], e
    db $fc
    inc e
    ccf
    pop bc
    rlca
    ld l, [hl]
    ld d, $30
    rrca
    pop af
    jp nz, $891d

    ld hl, $82e0
    rra
    add a
    ld hl, $5588
    ld a, [de]
    inc c
    rrca
    ld hl, sp-$64
    ld h, b
    ccf
    ld [c], a
    jr jr_002_638d

    rst $38
    add [hl]
    nop
    ld h, e
    db $fc
    inc b
    add l
    sub h
    and e
    ldh [rIE], a
    ld [bc], a
    inc hl
    ret z

    ld a, [$8b1e]
    ld h, d
    ld a, b
    add h
    ld bc, $6386
    sbc b
    add b
    rst $38
    ld e, $24

jr_002_63fd:
    ld h, b
    ld bc, $4b2a
    ld [de], a
    pop hl
    ld d, b
    ld d, l
    ld a, [hl+]
    ld c, d
    or c
    ld c, b
    ld d, a
    add hl, bc
    ld [bc], a
    ldh a, [rNR50]
    rra
    nop
    nop
    ldh a, [$3c]
    ccf
    adc e
    ld c, h
    ld l, b
    ld l, h
    db $fd
    rra
    rrca
    db $d3
    ldh [$f9], a
    inc a
    rrca
    db $10
    inc l
    rra
    dec b
    jp $a5f9


    call $8f2b
    ldh [$b0], a
    ld a, h
    ld a, [bc]
    rlca
    add b
    and h
    ld a, c
    jr c, jr_002_6442

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

jr_002_6442:
    dec bc
    pop de
    ldh [$79], a
    ld [bc], a
    ld c, $83
    sub b
    db $fc
    ld b, $0f
    jp hl


    ld a, b
    pop af
    ccf
    rst $08
    jp $21fd


    ld b, l
    ld h, h
    call nz, Call_000_2fb5
    dec d
    ld b, d
    and d
    xor b
    sub l
    dec [hl]
    ld b, h
    and e
    xor b
    inc h
    dec a
    rrca
    db $e3
    ld hl, sp-$04
    ccf
    rrca
    add e
    ldh [$f1], a
    inc a
    ld c, [hl]
    inc hl
    adc b
    push bc
    ld sp, $b248
    inc l
    sub a
    dec h
    jp z, $e083

    ld d, h
    rra
    add hl, bc
    ld [hl+], a
    add sp, $49

jr_002_6482:
    rla
    ld c, h
    and e
    ld a, b
    ret


    scf
    ld l, e
    ld h, e
    jr nz, @-$22

    ld a, [bc]
    add a
    and b
    or h
    ld a, l
    ld a, [bc]
    rst $00
    or a
    ld [hl], $ae
    ld [$f707], sp
    dec [hl]
    call Call_000_0f3d
    ld d, e
    or b
    db $ed
    scf
    dec c
    jp c, Jump_000_0004

    nop
    ld d, c
    and h
    add h
    db $fc
    ccf
    ld l, h
    ld a, e
    ld a, [de]
    rst $10
    dec hl
    rst $08
    ei
    ld e, b
    ld l, $1f
    xor l
    ld c, c
    adc [hl]
    ld h, l
    sbc l
    ld h, a
    ld a, c
    and $7b
    sbc a
    ld c, d
    ld a, [c]
    cp h
    rst $18
    scf
    set 6, d
    db $fd
    dec d
    jr nz, @+$0a

    dec b
    pop af
    dec de
    xor [hl]
    db $eb
    cp d
    jp c, $02b8

    add c
    ldh [rNR50], a
    db $fd
    ld a, [hl-]
    adc a
    ld [$1eed], a
    and a
    xor d
    ld a, [bc]
    adc d
    and h
    xor c
    xor e
    or d
    jr nz, jr_002_6482

    cp l
    ld b, b
    sub b
    ld [hl], h
    ld c, d
    rla
    adc b
    sub d
    ld [hl], a
    ld [$e6ae], sp
    ld sp, hl
    add $73
    xor a
    ld c, d
    db $d3
    or $c1
    ld [hl], e
    ld h, a
    add hl, de
    cp $81
    rra
    rlca
    db $db
    ld d, e
    dec de
    ccf
    ld l, l
    ld c, e
    ld b, d
    push bc
    rrca
    rst $00
    ldh a, [$03]
    ld [hl+], a
    db $10
    ld d, $21
    nop
    ld a, a
    ld c, l
    ld bc, $bd4b
    ld c, c
    ld b, l
    pop de
    xor h
    and [hl]
    xor b
    xor d
    xor d
    res 3, d
    add sp, -$46
    xor [hl]
    jp nz, $f102

    scf
    cpl
    ld a, [hl-]
    and $b7
    adc $c0
    add b
    ld [hl], b
    ld [$4fa8], sp
    ret nz

    add hl, bc
    db $ec
    ld bc, $3074
    inc d
    db $fd
    jp z, $c472

    ld h, c
    ld c, b
    ld l, b
    rst $00
    db $76
    adc h
    db $dd
    db $d3
    ld [hl], h
    db $fd
    ld b, [hl]
    sub d
    ld c, e
    or d
    call Call_000_1929
    ld d, d
    or h
    add $94
    rst $38
    dec a
    adc a
    db $e3
    and b
    db $fc
    inc [hl]
    adc a
    and d
    sub h
    push af
    and [hl]
    xor c
    add h
    push bc
    inc l
    rst $10
    ld [hl], l
    db $fd
    add h
    ldh a, [$03]
    adc $03
    add b
    ret nz

    rrca
    xor $d4
    ld d, h
    ld a, [bc]
    ld [bc], a
    add c
    ld h, b
    ld e, c
    ld l, $15
    add l
    ld h, h
    rst $00
    ld a, c
    ld c, e
    or a
    ld h, b
    call nc, Call_000_08b5
    adc d
    dec l
    db $fc
    jr z, @+$2c

    scf
    cp $07
    add e
    ld a, [hl+]
    rrca
    ld d, e
    db $fc
    jp hl


    ld l, c
    rrca
    ld a, [c]
    and l
    and c
    db $e3
    cp b
    sbc $30
    jp z, $cd1f

    pop de
    rst $38
    sub h
    dec [hl]
    ld sp, hl
    ld a, [hl]
    ld d, a
    sbc d
    and $42
    ld [bc], a
    add b
    ccf
    cpl
    ld sp, hl
    xor $80
    jr nz, jr_002_65de

    ld a, [$980e]
    cp a
    db $dd
    scf
    ld h, h
    cp e
    ld b, e
    nop
    cp d
    db $d3
    ei
    xor [hl]
    ccf
    cp d
    ld a, [hl]
    res 4, l
    add sp, $79
    ld a, [c]
    rst $38
    ld d, h
    and l
    inc de
    inc d
    inc a
    ld a, [hl+]
    nop
    nop
    sbc $e1
    ld [$8a22], sp
    and b
    inc d
    ld [hl], l
    nop
    adc a
    and b
    db $10
    db $f4
    sub [hl]
    ld h, l
    sub b

jr_002_65de:
    add b
    cpl
    db $10
    inc b
    ld a, [c]
    add b
    xor a
    inc d
    dec b
    inc c

Jump_002_65e8:
    and [hl]
    add l
    dec b
    dec c
    ld c, d
    ld e, b
    dec d
    dec [hl]
    ld b, b
    and e
    xor b
    dec d
    dec b
    ld [hl], h
    sub a
    ld h, c
    ret c

    ld b, [hl]
    jp nc, $8513

    ld b, [hl]
    db $d3
    dec [hl]
    adc e
    cp h
    sbc a
    ccf
    pop bc
    ld a, [c]
    ld a, h
    add c
    jr c, @+$50

    ld a, [bc]
    ld a, c
    rst $10
    cp e
    pop de
    push de
    inc sp
    db $e4
    db $fd
    inc d
    ld [hl], h
    ld l, b
    ccf
    rrca
    ret nz

    inc sp
    inc c
    ret nz

    ccf
    ccf
    ld l, a
    add c
    ld e, $a3
    sub c
    ld e, d
    jr c, jr_002_6629

    cp $3f
    inc b

jr_002_6629:
    ld d, l
    dec sp
    ld e, c
    ld de, $d1ff
    sub $75

jr_002_6631:
    cp [hl]
    ld b, a
    or h
    ld e, $f8
    db $f4
    cp l
    cpl
    dec hl
    ld b, [hl]
    add [hl]
    ld [bc], a
    ld a, h
    ldh [$1f], a
    rst $00

jr_002_6641:
    ld [c], a
    ld a, h
    rra
    jr c, @+$60

    call c, $16ae
    db $fc
    dec e
    db $76
    add l
    add hl, bc
    ld b, d
    push bc
    ld d, h
    dec [hl]
    nop
    ld a, [hl+]
    sub l
    ld b, h
    ld b, d
    jr z, jr_002_666c

    pop hl
    db $10
    ld d, a
    dec hl
    ld [$25c4], sp
    ld h, d
    and d
    dec a
    jr jr_002_66bb

    add hl, hl
    add hl, bc
    ld b, h
    ld de, $7b18
    ld a, h

jr_002_666c:
    and [hl]
    ld a, [bc]
    ld b, $3f
    ret nz

    and e
    pop af
    ret


    ld [hl], h
    inc e
    ld e, a
    dec b
    ld b, a
    rst $10
    db $eb
    sub d
    cp c
    ld d, h

jr_002_667e:
    ld a, [$7340]
    add hl, hl
    jr @-$3a

    ld c, c
    ld h, e
    jr c, @+$1a

    or $5d
    ld l, $40
    ld sp, $6ab4
    ld hl, $01f6
    ld bc, $0400
    jp nz, $3040

    sub b
    ld e, [hl]
    ld c, $7f
    ccf
    and b
    ld c, a
    jr nz, jr_002_6631

    db $f4
    ld e, d
    jr @+$0a

    rlca
    ld b, d
    and e
    and c
    sub e
    ld [hl], l
    jp c, Jump_000_08e8

    daa
    ld b, e
    add hl, hl
    ret nc

    jp nz, Jump_000_3078

    sbc h
    inc c
    ld a, $90
    adc e
    pop hl

jr_002_66bb:
    and d
    db $fc
    ld l, l
    ld e, e
    jr z, jr_002_6641

    ld de, $03a0
    sbc b
    nop
    adc $46
    inc hl
    add hl, de
    ld e, c
    adc $c6
    ldh [$8c], a
    ld b, $21
    ld c, a
    cp a
    add e
    ret


    call nz, $8113
    call nz, Call_002_7ffc
    cp [hl]
    rra
    rrca
    nop
    cp b
    dec a
    cp $e0
    ld l, a
    adc b
    ret z

    and $5c
    dec h
    or c
    cp $00
    jr nc, jr_002_667e

    ld e, a
    db $ed
    db $fc
    ld b, b
    and b
    ld h, b
    cpl
    dec de
    db $e3
    ld a, [c]
    cpl
    add b
    ld a, d
    db $fc
    ld l, [hl]
    cp e
    add hl, de
    cp h
    ld bc, $9797
    ei
    cp $f2
    inc bc
    rra

jr_002_6708:
    adc a
    di
    rst $00
    ld a, [c]
    ld [bc], a
    ld bc, $3ffe
    ld e, l
    xor [hl]
    ldh [$4e], a
    rst $20
    ld [hl], h
    dec bc
    ld d, l
    xor h
    rst $10
    dec d
    db $76
    dec b
    ld e, l
    ld l, h
    ld [$8801], sp
    call c, Call_000_1f62
    db $e4
    ld b, a
    ld a, [$fea9]
    ld de, $6fdf
    jr c, @+$5e

    dec e
    cp $f7
    ld a, a
    push bc
    rst $08
    ld l, [hl]
    cp c
    ld h, b
    add b
    ld b, b
    ld d, b
    jr z, @+$2c

    dec d
    ld b, b
    sub l
    ld c, d
    xor b
    rla
    ld b, h
    ld [hl+], a
    rra
    and $88
    add a
    push bc
    db $d3
    ld a, [$e6c9]
    ld a, c
    ld a, h
    ld hl, sp+$4d
    ld l, [hl]
    or c
    pop af
    db $fc
    sbc h
    ld a, a
    ld e, h
    cp [hl]
    ld c, a
    adc a
    jp $fbf3


    call c, Call_002_7dbb
    ld a, [$013b]
    push bc
    or $fc
    add b
    db $76
    jr z, jr_002_6708

    ret c

jr_002_676d:
    cpl
    ld [hl], h
    ld b, e
    db $fc
    ld [$5d32], sp
    rst $10
    dec [hl]
    rst $08
    ld [hl], h
    ld c, l
    ld d, e
    ld d, h
    ld a, [hl+]
    ld [hl], l
    ld h, b
    ld [hl], d
    xor b
    ld b, h
    rra
    inc bc
    sub e
    db $fc
    and $39
    rst $08
    inc de
    call nz, Call_000_3ef9
    ld c, a
    or e
    db $ec
    xor $3b
    pop bc
    sub e
    ld a, [hl]
    inc c
    ld [hl], e
    ld c, c
    ld b, d
    ld d, d
    ld [$6015], sp
    xor b
    add hl, de
    pop de
    ld [hl], e
    db $dd
    cp b
    ld de, $15d2
    ld e, l
    ld b, a
    ld e, b
    ld a, [hl+]
    ld [hl], e
    ret nc

    inc h
    ld de, $2202
    ld [$0884], sp
    ld [c], a
    ld [$508b], sp
    ld d, h
    sbc b
    ld [bc], a
    ld [$14d0], sp
    ld b, [hl]
    nop
    add [hl]
    ld sp, $9104
    jr nz, jr_002_67c9

    add c
    ld b, b
    inc h
    ld b, l
    dec b

jr_002_67c9:
    ld b, d
    ld h, $32
    ld b, b
    ret nc

    ld d, c
    ld d, [hl]
    ld sp, $4535
    ld d, c
    adc b
    ld [hl+], a
    dec c
    ld b, c
    ld d, b
    ld a, b
    ld [$c515], sp
    ld b, b

jr_002_67de:
    sbc b
    ld [hl+], a
    dec d

jr_002_67e1:
    dec b
    ld [bc], a
    jr nc, jr_002_676d

    sub [hl]
    ld d, e
    call nz, Call_002_4c26
    dec d
    ld c, d
    ld [hl], b
    add b
    db $dd
    dec h
    ld b, a
    add c
    jr nz, jr_002_6828

    ld [$a001], sp
    ld b, b
    add c
    jr nz, jr_002_6807

    pop hl
    nop
    ld e, a
    inc d
    ld b, d
    or b

jr_002_6801:
    adc b
    ld e, h
    dec d
    ld [$29e2], sp

jr_002_6807:
    ld h, $0b
    ld b, d
    ld bc, $5164
    inc hl
    ret z

    inc sp
    cp h
    nop
    rrca
    ret nz

    nop
    ld a, [hl]
    add b
    nop
    ld b, $00
    nop
    ret nz

    ld l, [hl]
    rlca
    ld a, [c]
    sub b
    inc h
    sub l
    ld c, [hl]
    jr nz, jr_002_6825

jr_002_6825:
    or $30
    rrca

jr_002_6828:
    jp $f880


    inc l
    dec bc
    nop
    nop
    inc bc
    nop
    adc [hl]
    ld h, b
    ld [de], a
    ld c, l
    jr c, @-$74

    ld hl, $1554
    ld [de], a
    nop
    adc d
    ld a, h
    ld [c], a
    jr jr_002_67e1

    ld l, b
    call nz, Call_000_00ef
    ld c, a
    sub b
    nop
    ldh a, [rP1]
    rrca
    add b
    nop
    rrca
    ld [bc], a
    ret nz

    ld [hl], b
    db $10
    db $e3
    jr c, jr_002_67de

    ld [de], a
    ld b, b
    push af
    ld bc, $2249
    ld [$0935], sp
    ld b, a
    add c
    ld h, b
    push af
    dec c
    ld c, [hl]
    inc hl
    ld [$1975], sp
    ld b, e
    adc d
    adc d
    ld c, c
    adc h
    inc h
    add b
    adc h
    jr nz, @+$17

    ld b, l
    ld [bc], a
    inc h
    add b
    adc e
    and h
    xor b
    call nz, Call_000_1555
    ld [bc], a
    jr nz, jr_002_6801

    ld e, c
    ld a, $09
    ld bc, $4044
    ld [$0180], sp

Jump_002_6888:
    inc d
    ld bc, $0022
    nop
    ld d, h
    dec b
    ld [$2a80], sp
    ld a, h
    adc b
    ld [bc], a
    ld [$10e0], sp
    rst $18
    ld [hl+], a
    add a
    and c
    ld b, b
    di
    jr z, jr_002_68a7

    ld [hl+], a
    ld b, b
    inc c
    nop
    nop
    ld b, e
    pop hl

jr_002_68a7:
    sbc a
    ccf
    rst $08
    and $79
    jp z, Jump_000_1b00

    and [hl]
    push hl
    sbc [hl]
    ld [hl], $c1
    db $10
    call z, $8f00
    ld [$1cf0], sp
    ld c, b
    ld bc, $f0c7
    inc a

jr_002_68c0:
    sub e
    nop
    add c
    inc d
    ld l, b
    ld a, a
    inc [hl]
    add l
    ld h, $a0
    rst $38
    jr nz, jr_002_68db

    or [hl]
    db $fc
    ld a, [hl]
    dec hl
    jp z, $fc83

    ld [bc], a
    rrca
    ld bc, $a1f6
    ld a, c
    inc bc

jr_002_68db:
    jp $cc10


    ld [c], a
    jr c, @+$4e

    ld de, $b801
    jr nz, jr_002_68ed

    ret nc

    ldh a, [rSTAT]
    ld l, c
    jp c, $2473

jr_002_68ed:
    rst $20
    ld bc, $7049
    inc d
    sla b
    sbc b
    add e
    db $e4
    ld hl, sp+$12
    ld b, h
    add e
    call z, Call_002_62f2
    ld a, [bc]
    or [hl]
    db $fc
    rst $38
    dec [hl]
    ld b, c
    ld e, h
    ld d, b
    ld e, e
    ld [bc], a
    inc c
    ret nz

    ld [bc], a
    db $dd
    inc a
    ld c, [hl]
    ld [bc], a
    ld c, b
    ldh [rNR44], a
    add b
    ld [bc], a
    inc h
    ld [hl], b
    ld a, $07
    inc bc
    db $fc
    sbc a
    ld [$22c8], sp
    db $fc
    pop bc
    ccf
    adc $43
    call z, $3de2
    adc [hl]
    ld b, b
    or b
    ld [$e93f], sp
    ld de, $f8e2
    ccf
    pop bc
    ret nz

    nop
    and $01
    ld b, [hl]
    jr nc, jr_002_68c0

    pop bc
    ld h, d
    ret nz

    ld bc, $20c4
    ld a, $c5
    ld de, $0a78
    inc sp
    ret nz

    ld d, c
    jr c, jr_002_6951

    rrca
    ret nz

jr_002_694a:
    push af
    cp h
    ret nz

    rrca
    rrca
    pop bc
    db $fd

jr_002_6951:
    sbc [hl]
    ld l, b
    ld a, [de]
    dec hl
    db $ec
    add b
    and d
    ld l, l
    inc d

Jump_002_695a:
    ld a, [bc]
    ld b, a
    ld c, c
    add d
    ld [hl], b
    adc h
    ld e, e
    dec d
    adc b
    ld a, [c]
    inc e
    ld e, a
    inc d
    inc bc
    ld b, b
    jr nc, jr_002_694a

    rrca
    add a
    inc hl
    ret nz

    rst $30
    dec a
    adc a
    add c
    ldh [$7f], a
    ld c, $0f
    pop hl
    sbc b
    ld d, a
    inc de
    jp $bcf0


    ld l, a
    rla
    set 6, d
    ld a, h
    ld h, h
    ld d, $c2
    and b
    ld b, a
    xor b
    jr z, jr_002_6994

    di
    ldh a, [$dc]
    ld a, $8b
    and e
    db $fc
    cp h
    ccf

jr_002_6994:
    add a
    and e
    ldh a, [$74]
    ld [hl+], a
    rst $00
    ld [hl], d
    jr nz, jr_002_6a14

    ld hl, $b307
    push de
    ld c, h
    ld [$f288], sp
    inc h
    add e
    nop
    adc b
    ld [bc], a
    nop
    rlca
    ld bc, $504e
    add b
    ld [hl], a
    ld de, $6978
    inc l
    adc b
    sub e
    ld h, h
    pop af
    call nc, $0a55
    nop
    add l
    inc h
    inc c
    ld [bc], a
    ld [$0860], sp
    add $21
    ld b, $2b
    ld [hl], b
    nop
    dec e
    add l
    ld b, e
    db $fc
    cp l
    xor a
    ld bc, $0920
    ld c, e
    ld [bc], a
    nop
    inc bc
    or h
    and l
    ld a, [hl+]
    add b
    cpl
    xor [hl]
    ld b, d
    jr jr_002_69e5

    or $40
    ld d, b
    inc de
    ret z

jr_002_69e5:
    add d
    inc e
    ld e, c
    dec d
    add d
    ld b, b
    adc h
    ld d, [hl]
    dec d
    ld h, h
    ld [hl], c
    inc c
    cp h
    db $10
    dec bc
    ldh a, [$80]
    rst $18
    ld h, $06
    ld [hl], c
    inc e
    jr c, jr_002_6a1d

    rlca
    ldh a, [rDIV]
    cp $00
    sub b
    rlca
    db $e3
    inc b
    ld a, h
    jr nc, jr_002_6a10

    sub a
    jp z, $8408

    ld b, c
    ld d, h
    xor d

jr_002_6a10:
    ld [hl+], a
    ld de, $e142

jr_002_6a14:
    cpl
    db $e3
    db $d3
    db $fd
    or $ff
    ld a, e
    cp a
    reti


jr_002_6a1d:
    xor a
    pop de
    jp $fafd


    rst $38
    adc l
    sbc a
    sub l
    xor e
    ld d, a
    sub e
    adc c
    xor d
    push hl
    ld [hl], h
    ld [hl-], a
    ld d, $ad
    ld d, a
    ld [de], a
    adc c
    xor d
    ld d, l
    add h
    cp l
    rst $18
    dec l
    and a
    inc de
    call nc, $092b
    add l
    jp $f061


    xor b
    ld h, h
    ld a, [hl-]
    ld e, e
    add hl, sp
    sbc e
    sub l
    ld de, $8248
    cp c
    ld b, h
    ld d, h
    jr nz, jr_002_6a7c

    sub c
    ld d, l
    ret z

    jp nz, Jump_002_65e8

    ld [hl], h
    ld [hl-], a
    ld a, [hl-]
    sbc c
    ld h, h
    push bc
    ld d, d
    adc b
    xor h
    ld b, [hl]
    ld d, a
    inc hl
    ld d, d
    add hl, hl
    ld d, h
    jp z, $9974

    xor d
    sub l
    ld d, c
    ld c, [hl]
    and $b3
    xor c
    call nz, $bfda
    add hl, sp
    dec d
    ld b, e
    adc b
    ld [$01a4], sp
    ld d, h
    and b

jr_002_6a7c:
    ld a, [hl+]
    ld [de], a
    rla
    ret


    ld a, [bc]
    db $e4
    ld bc, $42f4
    cp d
    ld hl, $401d
    xor d
    add h
    ld b, l
    ld [hl], d
    cp h
    ld d, l
    ld a, [bc]
    xor d
    ld bc, $d917
    cp h
    pop af
    xor d
    dec d
    ld d, c
    nop
    sbc d
    and h
    ld d, a
    ld b, c
    add b
    ld [$1d31], a
    ld b, $0b
    and h
    call nz, Call_000_1a72
    rst $00
    ld h, d
    or b
    bit 0, c
    dec b
    ld [hl], d
    sbc b
    adc h
    ld b, d
    ld d, l
    ld a, [hl+]
    ld e, b
    jr nc, @+$55

    ld e, h
    ld a, [hl+]
    add hl, bc
    xor d
    push bc
    push bc
    ld h, e
    ld sp, $0cd9
    sub [hl]
    ld d, d
    ld a, c
    ld [hl], $01
    dec d
    ld l, a
    add hl, de
    add d
    sub b
    adc b
    ld b, c
    ld l, e
    or h
    call nc, $1074
    xor h
    add hl, hl
    add hl, bc
    ld [$7425], a
    nop
    rrca
    and b
    sub c
    ret nc

    db $10
    cp d
    ld b, c
    ld b, h
    jr nz, @+$22

    jr nz, jr_002_6ae5

jr_002_6ae5:
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    inc bc
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
    ld [$0a09], sp
    ld [bc], a
    dec bc
    inc bc
    inc c
    dec c
    ld c, $0f
    ld a, [bc]
    ld [bc], a
    db $10
    inc bc
    ld de, $1202
    inc bc
    inc c
    dec c
    inc de
    inc d
    dec d
    ld d, $16
    rla
    jr jr_002_6b2c

    add hl, de
    rla
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_002_6b44

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_002_6b54

    ld a, [hl+]

jr_002_6b2c:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_002_6b64

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_002_6b71

    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    dec sp
    dec b
    dec b
    inc a
    inc a

jr_002_6b44:
    dec b
    dec b
    dec b
    dec b
    rrca
    rrca
    rrca
    rrca
    dec a
    dec a
    rrca
    rrca
    rrca
    ld a, $3e
    dec b

jr_002_6b54:
    rrca
    ld a, $3f
    inc a
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, b
    ld b, h
    ld b, l
    ld b, [hl]

jr_002_6b64:
    dec sp
    dec sp
    dec sp
    dec sp
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_002_6b71:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld bc, $0101
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld bc, $5c01
    ld bc, $5e5d
    ld e, a
    ld h, b
    ld h, c
    ld d, b
    ld h, d
    ld d, d
    ld h, e
    ld h, e
    ld h, h
    ld h, h
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    dec b
    ld l, h
    ld l, l
    dec b
    ld l, [hl]
    dec b
    dec b
    ld l, a
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld bc, $7b7a

jr_002_6baf:
    ld a, h
    ld c, e
    ld a, l
    ld c, l
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
    ld d, b
    adc b
    ld d, d
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
    ld bc, $9493
    sub l
    sub [hl]
    ld bc, $0101
    ld bc, $9797
    sbc b
    sbc c
    sbc d
    sbc e
    sbc c
    sbc h
    sbc l
    sbc d
    ld bc, $0101
    sbc [hl]
    sbc a
    and b
    and c
    ld bc, $9f01
    ld bc, $a001
    ld bc, $a101
    and d
    and e
    and h
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
    ret z

    ld l, h
    ld a, [hl-]
    ld c, $0b
    dec c
    ld b, h
    and d

jr_002_6c05:
    ld [hl], c
    ld c, b
    xor h
    ld d, b
    ld [de], a
    ld [bc], a
    inc bc
    push bc
    and e
    ld [hl], c
    ret z

    db $ec
    ld a, b
    ld d, $16
    sub b
    ret z

    and h
    ld [hl], d
    ld c, c
    inc l
    sbc d
    ld c, a
    jr z, jr_002_6baf

    ld [bc], a
    jp $c912


    ld l, h
    cp d
    ld e, a
    dec l
    inc bc
    ld b, [hl]
    ld b, e
    ld [hl], e
    add hl, bc
    xor h
    jp c, Jump_000_376f

    inc c
    add d
    push bc
    ld d, e
    ret


    db $ec
    ld a, [$407f]
    and b
    ret nc

    xor b
    ld [hl], e
    reti


    ld e, h
    ld [c], a
    ld h, c
    ld [hl-], a
    inc bc
    call $f428
    jp z, $b66c

    ld [hl], h
    ld bc, $d4a8
    xor d
    ld [hl], l
    ld c, d
    xor l
    ld e, d
    xor a
    ld e, b
    xor c
    ld d, c
    xor c
    call nc, Call_002_5d9a
    ld a, [hl-]
    cp a
    jr c, jr_002_6c05

    ld d, [hl]
    ld l, h
    db $76
    ld c, e
    jr z, jr_002_6c69

    adc h
    db $10
    ld [$edcb], sp
    ld [hl-], a

jr_002_6c69:
    ld [$c2ec], a
    ret c

    jr jr_002_6c85

    dec bc
    ld b, e
    rla

jr_002_6c72:
    dec bc
    sub l
    jp nc, Jump_002_76d5

    cp b
    ld c, e
    cpl
    ld d, a
    sub b
    adc l
    adc d
    ret z

    ccf

jr_002_6c80:
    jr nz, jr_002_6c8f

    rst $00
    inc bc
    or c

jr_002_6c85:
    push hl
    ld h, b
    ld a, a
    add [hl]
    xor e
    ld h, d
    ld a, [hl+]
    ld a, b
    dec sp
    inc a

jr_002_6c8f:
    or b
    inc h
    inc de
    sub a
    db $e4
    ld h, $33
    add hl, sp
    xor [hl]
    ld c, h
    jr nc, jr_002_6cc9

    rst $00
    db $e4
    ld [hl], e
    add hl, de
    xor h
    ldh [$63], a
    cpl
    sbc l
    sub [hl]
    ld h, [hl]
    ld [hl], e
    pop hl
    jr nc, jr_002_6c72

    ld a, d
    and [hl]
    dec h
    xor h
    db $10
    ld c, b
    ld b, e
    sub c
    ret nc

    db $f4
    ld a, l
    xor b
    xor c
    adc a
    ld c, b
    ld d, l
    ld a, l
    sbc l
    ld c, a
    ld e, e
    adc [hl]
    inc c
    dec b

Jump_002_6cc1:
    ld [bc], a
    or d
    pop de
    ld c, $eb
    ld a, b
    jr jr_002_6c80

jr_002_6cc9:
    ld c, l
    ld [hl], a
    ld [hl], d
    cp $24
    cp e
    adc l
    inc l
    db $e4
    ld l, a
    and $1c
    ld b, b
    db $ed
    ld c, h
    ld c, h
    daa
    xor b
    adc e
    add $03
    ld de, $9395
    and c
    ld d, l
    jp hl


    push af
    ld l, h
    add b
    or b
    cp a
    ld a, e

jr_002_6cea:
    cp [hl]
    inc bc
    ld [bc], a
    ld bc, $e07b
    add b
    db $10
    jr z, jr_002_6d2d

    rst $18
    db $f4
    ld a, [$7ebd]
    rst $08
    ld l, a
    cp e
    jp nc, Jump_000_111f

    ld [$42fe], sp
    add c
    ld c, a
    ret z

    ld h, [hl]
    inc [hl]
    ld a, [de]
    adc l
    cp [hl]
    ld e, a
    rst $08
    sbc a
    ld sp, hl
    db $f4
    ld a, l
    sbc a
    ldh a, [$8d]
    ld hl, sp+$7e
    sbc a
    ret c

    add hl, de
    cp $03
    ld h, b
    sbc b
    jr z, @+$0f

    inc bc
    ldh [$d8], a
    ld l, $0f
    add h
    ld hl, $4a18
    inc de
    add l
    ld hl, $5a58
    rla

jr_002_6d2d:
    add [hl]
    jr nz, @-$5a

    inc b
    nop
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_002_6d3a

    rst $38

jr_002_6d3a:
    inc bc
    ld a, a
    jp nz, Jump_002_50a0

    adc b
    ld l, h
    ld e, $15
    db $10
    adc b
    call nz, Call_002_71a2
    rlca
    di
    db $fd
    ld a, [$7dfe]
    ccf
    ld e, $8f
    sub a
    ld c, e
    db $fd
    nop
    ldh a, [$38]
    ld hl, $f14f
    ldh a, [$e0]
    dec l
    jr c, jr_002_6cea

    sub e
    rrca
    dec b
    ld h, c
    ld b, b
    ld a, [de]
    ld d, c
    rlca
    dec l
    ld a, [de]
    ld [$b2e5], sp
    ld sp, hl
    adc b
    adc [hl]
    ld de, $850c
    add b
    rst $18
    and b
    ld h, a
    ret nc

    ld sp, $19e8
    ld [hl], h
    cp h
    jp nz, Jump_002_6146

    inc hl
    inc a
    sub [hl]
    sbc b
    ld c, b
    inc c
    inc b
    ld b, $22
    inc de
    db $dd
    ld l, [hl]
    and d
    ld de, $da3c
    ld c, [hl]
    ld h, l
    inc hl
    inc [hl]
    sub e
    ld c, c
    and l
    db $d3
    ld l, c
    push af
    jr jr_002_6dad

    ld hl, $dd10
    ld l, [hl]
    rst $10
    ldh [rSCY], a
    ld hl, $dc11
    rst $28
    ld h, l
    xor c
    push de
    ld l, d
    jp hl


    add h
    cp l

jr_002_6dad:
    inc l
    ret nz

    ld e, a
    ld h, b
    jr nz, jr_002_6dd2

    rst $20
    ld a, [$81f5]
    cp e
    rlca
    add h
    adc $68
    ld h, [hl]
    ld [hl], c
    dec hl
    inc a
    sub b
    sbc a
    ld c, e
    adc a
    call nz, $0617
    ld b, d
    db $fd
    cp d
    ld a, a
    xor c
    cp c
    call nc, $e2ac
    ld e, [hl]
    inc b

jr_002_6dd2:
    ld a, [hl]
    cpl
    ld a, $97
    ldh a, [$d8]
    adc b
    ld d, c
    db $dd
    cp $22
    ld a, a
    push hl
    pop hl
    ld c, l
    rst $10
    ld a, [$ff21]
    sbc l
    adc a
    ret z

    ld h, h
    ld h, a

Call_002_6dea:
    db $f4
    inc b
    sbc c
    ld a, b
    xor e
    ld a, [hl]
    ld a, [hl-]
    jp $b9ee


    call nz, Call_002_713e
    ld c, $88
    jp nz, Jump_002_5367

    ret


    db $f4
    ld [hl], d
    add h
    ld [de], a
    cp [hl]
    or e
    add hl, bc
    ld d, $db
    ld a, l
    add $e6
    ld a, a
    rrca
    cp a
    add $0f
    nop
    db $d3
    add sp, $5e
    rst $38
    add hl, bc
    ld l, h
    ld h, c
    xor a
    ldh [rNR23], a
    add hl, bc
    ld d, [hl]
    xor d
    ld a, a
    cp a
    sub l
    rst $28
    ldh [rIF], a
    ld d, [hl]
    inc l
    nop
    rrca
    cp a
    add [hl]
    cpl
    nop
    rst $18
    dec e
    db $fc
    inc de
    db $eb
    push af
    and c
    add hl, bc
    di
    ld a, [$e0c0]
    sbc d
    dec a
    dec hl
    rst $08
    jp hl


    dec l
    cpl
    cp d
    ld a, [de]
    ld a, [hl]
    ld b, c
    di
    push bc
    ld c, a
    di
    ld a, [c]
    cp h
    db $fc
    add c
    db $fc
    rra
    and c
    call z, $0330
    ld a, l
    cp $00
    inc c
    ld a, b
    ld bc, $7fff
    nop
    inc bc
    inc l
    nop
    ld [hl], $e0
    add b
    nop
    db $d3
    nop
    rra

jr_002_6e62:
    ret c

    ld d, $09
    ld a, $e0
    ret c

    ld [bc], a
    ld c, $00
    inc bc
    jr nz, jr_002_6e62

    and [hl]
    ld a, $44
    ld h, e
    db $e4
    inc b
    ccf
    jp nz, $7ce3

    ret nc

    inc c
    ld bc, $c003
    jr @+$40

    ld [$3022], sp
    ld h, d
    ccf
    nop
    inc sp
    ldh a, [rTMA]
    ld a, $40
    add e
    call c, Call_000_30bc
    adc $33
    ld [hl], b
    inc l
    rla
    add b
    di
    db $fc
    rlca
    ld b, a
    rst $00
    rst $30
    db $e4
    ld [bc], a
    ccf
    ld b, h
    ld b, d

jr_002_6e9f:
    db $ec
    ld a, c
    ld hl, $92cf
    inc e
    ld c, $3f

jr_002_6ea7:
    call nz, $fce2
    add $0f
    call $f810
    ccf
    ld [hl], $0d
    inc hl
    or b
    ld l, h
    inc e
    add d
    add b
    call c, Call_000_1330
    add a
    ld bc, $1138
    dec de
    call $bc03
    db $10
    dec bc
    jp $bc00


    dec de
    add hl, bc
    dec c
    db $e3
    add h
    ld h, e
    rra
    call z, $fc33
    sub b
    dec sp
    jp Jump_000_1c83


    ld c, h
    inc l
    adc d
    ld h, c
    ldh [$64], a
    ld a, [hl-]
    adc h
    ld b, e
    jr z, jr_002_6e9f

    jr c, jr_002_6ea7

    sub e
    ld e, $40
    ld [hl+], a
    rlca
    ld [hl], d
    db $10
    adc e
    ld hl, $80c8
    jr z, jr_002_6efe

    inc b

jr_002_6ef2:
    add c
    jp nc, $9858

    ld a, [hl+]
    dec bc

jr_002_6ef8:
    ld [hl], e
    jr nz, jr_002_6ef2

    ld b, $4e
    ld [hl], c

jr_002_6efe:
    ldh [$87], a
    ld sp, $b003
    ld [$00f1], sp
    adc $c2
    ld c, b
    ld l, l
    inc hl
    rst $00
    ld [bc], a
    inc e
    ld a, b
    inc hl
    rlca
    jr nc, jr_002_6f7f

    ld h, a
    inc e
    nop
    ld [c], a
    call nz, $044f
    ld c, [hl]
    ldh a, [$74]
    db $fd
    rlca
    adc a
    ldh [rNR23], a
    or $20
    rst $00
    pop af
    nop
    cp a
    jr z, jr_002_6f37

    pop af
    ld b, b
    ld l, a
    sub a
    ld b, c
    inc bc
    cp h

Call_002_6f31:
    jr jr_002_6f6c

    pop bc
    jp $be8c


jr_002_6f37:
    db $10
    ld c, a
    db $10
    jr c, jr_002_6fac

    inc hl
    jp nz, $7e03

    cp [hl]
    dec hl
    dec bc
    ld sp, $ef4c
    add hl, hl
    adc l
    pop hl
    inc d
    cp l
    inc hl
    sbc a
    ld de, $c0fc
    rrca
    db $ec
    ret nz

    db $e4
    scf
    ld bc, $b000
    inc e
    add hl, bc
    sbc a
    ld b, h
    di
    ret nz

    ld sp, $8e33
    nop
    ld a, h
    daa
    scf
    push de
    ld a, [c]
    jr z, jr_002_6ef8

    ld [$c4cf], sp

jr_002_6f6c:
    ld [hl+], a
    call z, $2c20
    or b
    db $fc
    ld b, h
    cpl
    dec l
    ret nz

    ret nc

    call z, $8e04
    ldh [$64], a
    ld h, a
    rlca
    adc d

jr_002_6f7f:
    db $10
    add h
    sbc [hl]
    jr nc, jr_002_6fc7

    ld [c], a
    inc h
    ld a, a
    or c
    ld c, l
    inc sp
    cp h
    ld l, c
    dec e
    ret nz

jr_002_6f8e:
    ret nz

    adc $b4
    inc a
    nop

Call_002_6f93:
    ldh a, [$8c]
    rst $18
    inc a
    rst $08
    ld a, [c]
    jr nc, jr_002_6f8e

    or [hl]
    xor h
    swap b
    pop bc
    rrca
    ldh a, [$30]
    ld c, h
    rst $28
    ld [hl-], a
    rst $08
    ld [hl], b
    adc b
    sbc $98
    ld [hl], b

jr_002_6fac:
    di
    add [hl]
    ld h, a
    daa
    pop bc
    ldh [$64], a
    rla
    ld b, $1d
    sub b
    or b
    inc sp
    dec de
    add a
    add hl, de
    ld l, b
    jr c, jr_002_6ff6

    call $fc30
    ld d, a
    dec hl
    jp $3c73


jr_002_6fc7:
    ld a, b
    add hl, sp
    add $11
    db $fc
    ld b, d
    ccf
    adc [hl]
    jr nz, jr_002_7049

    jr nz, @+$39

    adc e
    inc bc
    inc a
    xor b
    dec [hl]
    call nz, $c0f2
    rst $00
    ld l, $d7
    ld d, e
    add b
    jr nz, jr_002_700e

    ld b, e
    ld de, $7f90
    inc c
    ld b, e
    db $fd
    jr @+$61

    ld e, l
    ld b, e
    db $f4
    jr nz, @-$1e

    jr c, @+$0a

    inc b
    add b
    rst $38
    sbc c

jr_002_6ff6:
    adc b
    di
    db $fc
    jr c, jr_002_703a

    add $73
    db $fc
    ld hl, $075d
    ldh a, [$c0]
    ccf
    inc de
    rst $00
    ld sp, hl
    ld l, $2a
    ld hl, $9487
    ld a, h
    rst $18

jr_002_700e:
    call nc, $f3cf
    add b
    rst $38
    ld sp, $f7cf
    ld [$880f], sp
    adc $74
    jr c, jr_002_7024

    ld bc, $c2c8
    jr nc, jr_002_7049

    ccf
    ret z

jr_002_7024:
    db $e3
    cp $e2
    ld a, $4f
    ldh a, [$0d]
    dec bc
    ld b, c
    rla
    jr nc, jr_002_70a1

    ld [hl], h
    jp c, $f00f

    db $e4
    rst $38
    sub c
    scf
    sub d
    dec e

jr_002_703a:
    push af
    ccf
    rst $08
    inc bc
    cp $b4
    inc c
    inc c
    db $f4
    ld hl, $3016
    ld d, b
    ret nc

    pop af

jr_002_7049:
    jp nc, $c73f

    jp nz, $c60c

    ldh [$d7], a
    sub b
    jr nc, jr_002_7060

    ld bc, $6d80
    rst $38
    db $76
    db $db
    adc [hl]
    inc sp
    db $fc
    inc sp
    ld [hl], h
    add b

jr_002_7060:
    nop
    inc c
    nop
    ld bc, $d3d3
    db $f4
    ld [hl], b
    ccf
    ret nz

    ld h, e
    or $e2
    cp b
    adc l
    add e
    db $fc
    inc l
    ccf
    pop bc
    ld [hl], e
    db $fc
    adc c
    ccf
    call z, $fc63
    sbc h
    jr @-$32

    adc $90
    nop
    cp b
    add e
    and e
    push af
    rlca
    cp b
    cp c
    scf
    pop hl
    sub $3f
    sub a
    sub [hl]
    rst $00
    jp z, Jump_000_0ff3

    ldh a, [rTAC]
    adc $f4
    inc a
    rst $38
    ld c, e
    pop de
    ld b, c
    or a
    jp nc, Jump_002_4000

    db $10
    inc [hl]

Jump_002_70a1:
jr_002_70a1:
    db $e3

Call_002_70a2:
    ld b, b
    ret nc

    ld a, [hl-]
    adc [hl]
    and e
    rst $38
    ld c, d
    nop
    rrca
    sub b
    inc b
    ei
    ld c, [hl]
    db $fc
    ldh a, [rP1]
    ld e, a
    rst $30
    rst $08
    rst $38
    and b
    cp a
    ccf
    ret


    di
    db $fc
    xor [hl]
    rra
    call $fe40
    jp c, $ce37

    rrca
    rst $10
    rst $30
    jr c, jr_002_70f5

    cp b
    push hl
    ld [hl], e
    nop
    rrca
    ld [hl], b
    inc hl

Jump_002_70d0:
    set 6, d
    ret nc

    add e
    db $ec
    rlca
    ld a, $c0
    ld [hl], e
    db $ec
    rlca
    ld a, $c0
    ld [hl], a
    scf
    adc $75
    ld d, b
    add e
    db $eb
    ld [hl], a
    ccf
    rst $08
    and h
    ld e, h
    rst $38
    sbc $47
    ld d, e
    ld hl, sp+$2a
    ccf
    ld b, b
    ld d, e
    rst $28
    set 6, d

jr_002_70f5:
    sbc $23
    xor h
    rla
    dec a
    ret nz

    di
    cp h
    rra
    scf
    jp $fdf2


    nop
    ccf
    sbc a
    rst $18
    ldh a, [rOBP0]
    inc hl
    or c
    and $fc
    ld a, c
    cp a
    pop hl
    db $10
    xor b
    ld l, e
    pop af
    pop hl
    dec bc
    ld [hl], c
    adc a
    ret c

    db $e3
    rst $30
    ld a, b
    db $fd
    cp [hl]
    ccf
    ld a, a
    add $63
    ld [hl], c
    and b
    ld h, b
    ld [bc], a
    inc a
    rrca
    ld bc, $83c7
    add c
    ld bc, $8060
    cp b
    ld d, b
    add a
    or c
    ld b, b
    xor h
    jr nc, jr_002_7151

    sub h
    ld a, [hl+]
    jp nc, Jump_000_3d01

    add h
    rst $08
    and c

Call_002_713e:
    ld d, e
    call nc, $da4a
    dec b
    ld c, c
    inc hl
    db $d3
    ret z

    db $fc
    ld a, [$fc7a]
    ld c, $36
    ld bc, $000d
    inc bc

jr_002_7151:
    ret nz

    ld bc, $7845
    ld [$5429], sp
    xor c
    db $ec
    and c
    ld e, b
    and b
    add a
    ret


    adc l
    add [hl]
    dec b
    ld [c], a
    jp nz, Jump_002_4b99

    db $10
    jr c, jr_002_7169

jr_002_7169:
    inc c
    ld a, [bc]
    push hl
    ld a, d
    cp d
    ld a, h
    jr c, jr_002_7194

    db $10
    inc de
    db $db
    inc l
    ld sp, hl
    and b
    db $10
    ld [hl], l
    ld a, [bc]
    and e
    ld c, h
    jr nz, jr_002_7191

    inc b
    inc bc
    dec l
    or a
    bit 3, a
    ld [hl], b
    or a
    db $fd
    jp nc, $ea14

    ld a, a
    or l
    ld e, a
    ld [$f8a7], a
    dec c

jr_002_7191:
    cp $fa
    ld a, a

jr_002_7194:
    cp a
    jr nc, @+$11

    rst $30
    db $eb
    db $fd
    ld a, [c]
    rst $38
    ld a, [hl-]
    cp a
    db $ed
    ld h, b
    ld d, a
    ei

Call_002_71a2:
    xor [hl]
    db $eb
    adc b
    jp Jump_000_303e


    xor a
    rst $30
    or $09
    cp $a3
    ld a, a
    or c
    rst $18
    ld [$f9f7], a
    ld a, l
    cp $bf
    ld a, a
    ret nz

    ldh [$ba], a
    ld c, b
    inc l
    ld c, $32
    sub a
    ld a, a
    add d
    sbc a
    push hl
    ld e, h
    ld h, $0f
    ld [bc], a
    db $f4
    ld a, a
    db $e4
    sbc $af
    push af
    ld e, e
    db $fc
    xor h
    rst $38
    ld [hl], h
    ccf
    or $38
    inc e
    ld [hl], $f7
    add hl, bc
    add [hl]
    nop
    ccf
    push af
    ld a, [hl-]
    inc e
    db $fc
    ld h, a
    ld c, a
    and d
    jp nz, Jump_002_556c

    rrca
    ld a, [c]
    add e
    db $fc
    inc b
    rst $38
    ld l, [hl]

jr_002_71ee:
    ccf
    db $d3
    rst $08
    ld a, [c]
    ld h, $97
    xor a
    inc bc
    ret nc

    ret nz

    ret nc

    ld a, b
    sbc l
    db $76
    ld d, a
    cpl
    sub e
    jp $df0b


    pop hl
    ld d, a
    ei
    ld bc, $bdfe
    ld a, a
    sbc a
    or d
    ld sp, hl
    ld l, l
    ld a, [hl]
    ld d, e
    ld h, c
    add h
    jp c, $5f3a

    db $ed
    jr jr_002_71ee

    daa
    rst $00
    push hl
    ld [hl], b
    ccf
    or $8e
    scf
    ld sp, hl
    ld e, h
    rst $38
    jr z, jr_002_7233

    pop af
    dec e
    and b
    ld [hl], d
    ld d, b
    ld [hl], $8d
    dec b
    ld [bc], a
    rst $10
    and [hl]
    jr c, @+$01

    ld b, h
    dec de

jr_002_7233:
    ld [hl], $c9
    ei
    ccf
    ret nz

    ld b, b
    db $10
    inc c
    inc bc
    ld hl, $5028
    dec d
    dec b
    ld b, d
    and b

jr_002_7243:
    xor b
    ld d, l
    dec d
    ld c, a
    jp Jump_000_05f0


    ld bc, $3040
    ld c, $20
    nop
    add b
    jr nz, jr_002_726b

    ld b, $22
    adc b
    and e
    ld d, h
    push de
    ld a, $8f
    and b
    ld d, b
    inc d
    add l

jr_002_725f:
    ld [hl+], a
    ld a, b
    sub h
    rlca
    ld bc, $50e2
    inc b
    ld bc, $8588
    pop bc

jr_002_726b:
    ld [hl], b
    jr c, jr_002_727c

    dec b
    ld bc, $a040
    jr z, @+$06

    ld bc, $8000
    jr nz, jr_002_7279

jr_002_7279:
    add hl, bc
    ld a, [de]
    ld b, a

jr_002_727c:
    sub d
    inc h
    ld b, e
    nop
    ret nz

    ld a, [de]
    ld b, $83
    call nc, Call_000_2af5
    adc d
    xor b
    add d
    ld [hl+], a
    adc b
    nop
    or b
    ld l, $34
    ld [bc], a
    add b
    and c
    ld d, b
    ld d, h

Jump_002_7295:
    ld a, [hl+]
    ld c, d
    sub b

jr_002_7298:
    ld e, h
    rla
    sub l
    and d
    ld b, b
    ld a, [bc]
    ld h, d
    sbc b
    sub b

Jump_002_72a1:
    ld c, c
    ld [hl], $42
    sub b
    inc h
    cp c
    jr z, @-$3e

    sub c
    dec h
    ld d, b
    inc l
    ld d, a
    dec d
    jp z, $bcf2

    db $fd
    ccf
    ld b, d
    jr nc, jr_002_7243

    ld h, c
    jr jr_002_7305

    or d
    db $ec
    ld a, h
    rra
    ld [hl+], a
    sbc c

Jump_002_72c0:
    ld c, h
    inc bc
    adc l
    ld [c], a
    jr z, jr_002_7298

    dec h
    inc [hl]
    dec c
    inc bc
    xor b
    ld [$c30f], a
    pop af
    ld [$2042], sp
    ld c, b
    jr jr_002_725f

    add c
    adc b
    ret nz

    ld e, b
    sub [hl]

Call_002_72da:
    ld l, [hl]
    adc b
    dec h
    sub b
    ld e, b
    ld d, $0b
    add d
    jp hl


    xor b
    add b
    and c
    ld l, b
    ld [hl], b
    ld a, h
    rra
    sub [hl]
    ld b, c
    ret nz

    ld [hl], b
    xor b
    ld a, [hl+]
    dec b
    pop af
    ld a, h
    cp b
    ld l, $24
    add hl, hl
    ld [de], a
    xor e
    sub c
    ld h, h
    ld [hl], e
    ret nc

    db $f4
    add [hl]
    and d
    ldh a, [$3c]
    rrca
    sub [hl]
    nop

jr_002_7305:
    xor d
    sub $46
    ld [hl+], a
    ld [$7483], sp
    db $dd
    xor [hl]
    ld h, h
    ld h, b
    adc b
    ld [hl+], a
    inc e
    ld b, a
    ld d, b
    add b
    ld h, $ae
    dec hl
    xor d
    ldh a, [$88]
    nop
    ld bc, $0800
    ld a, [hl-]
    nop
    ld b, a
    ret nc

    ld [$00fa], sp
    nop
    ld [hl], d
    nop
    add a
    inc [hl]
    dec c
    ld a, e
    ld c, [hl]
    pop de
    ld [$0102], sp
    call c, $af77
    call nc, Call_000_2060

jr_002_7339:
    add sp, $07
    ld c, l
    db $db
    ld a, l
    ld b, [hl]
    adc c
    ld l, l
    cp e
    ld [hl], h
    rst $38
    sub c
    xor [hl]
    add h
    ld d, $e9
    ld [hl+], a
    rrca
    di
    ld [hl], l
    dec b
    dec e
    rst $08
    ldh a, [$89]
    inc b
    ld [hl], b
    xor a
    ld c, e
    jp c, $aec5

    ret z

    add d
    ld h, $38
    ld [$7182], sp
    ret nc

    ld a, a
    ld a, [bc]
    ld b, e
    ldh a, [rP1]
    rrca
    inc hl
    set 6, b
    ret nz

    rst $38
    ld sp, $f08f
    ld [hl], b
    db $fd
    rra
    rrca
    db $d3
    ldh [$f9], a
    inc a
    rrca
    db $10
    inc l
    rra
    dec h
    set 6, e
    ld e, l
    sbc h
    ccf
    jp nz, $f8e1

    inc l
    rra

Call_002_7386:
    ld [bc], a
    add c
    ldh [$29], a
    ld e, $4e
    inc bc
    add h
    call nz, Call_002_6f31
    and b
    ld d, b
    dec d
    dec bc
    ld [bc], a
    pop de
    ld [hl], b
    ld e, l
    cpl
    dec bc
    pop de
    ldh [$79], a
    nop
    ld c, $03
    add b
    ld hl, sp+$06
    ld [hl], b
    add e
    db $fc
    pop af
    ld a, e
    ld l, $b0
    ld [bc], a
    cp c
    cp [hl]
    ld l, h
    add d
    nop
    and d
    jr c, jr_002_7339

    ld [hl], e
    call c, Call_000_3c22
    adc a
    db $e3
    ld a, [$3e1e]
    rrca
    add e
    call nz, $38f1
    adc [hl]
    inc hl
    inc d
    push bc
    ld [hl+], a
    ret z

    or d
    ld e, h
    sub a
    jr z, @+$11

    ld bc, $7840
    dec h
    ld c, e
    pop de
    jr nz, @+$5e

    ld [hl-], a
    dec c
    jp $de28


    ld [hl-], a
    call Call_002_7cfd
    ld a, [hl+]
    ld e, $8a
    db $d3
    db $f4
    xor e
    ld a, $d9
    call c, Call_000_2078
    rra
    jp nz, $b4fd

    ld a, a
    dec a
    rrca
    ld d, e
    or b
    db $ed
    scf
    dec c
    call c, Call_000_00b4
    nop
    ld e, h
    daa
    or h
    db $fd
    db $db
    sbc c
    db $dd
    ld hl, sp-$01
    db $db
    cp b
    ld de, $1aff
    ccf
    jr nc, @-$12

    ld b, b
    pop af
    ret z

    or d
    ld c, h
    sbc e
    jr z, jr_002_741d

    ld h, a
    inc hl
    ld a, h
    rst $18
    cpl
    jp c, $fe13

    ld b, h
    cp l
    ld d, b

jr_002_741d:
    ld e, l
    ld [hl], a
    ld e, l
    ld [hl-], a
    ld c, l
    db $dd
    ld [hl], h
    ld [$0007], sp
    and e
    ld sp, hl
    adc a

Call_002_742a:
    rst $10
    db $dd
    ld a, l
    dec de
    ld c, b
    jp nc, $c3b4

    adc e
    ld e, l
    ld [hl+], a
    add hl, bc
    ret nz

    inc h
    dec e
    rst $20
    dec [hl]
    or d
    jr z, @-$60

    ld [de], a
    push bc
    db $fd
    ld a, a
    inc e
    ld a, [hl+]
    rrca
    add d
    and h
    ld sp, hl
    ld a, [hl+]
    adc a
    and b
    or h
    ld a, l
    ld a, [bc]
    rst $00
    cp l
    cp e
    ld e, $ca
    ld a, [c]
    pop de
    ldh a, [$7d]
    pop hl
    ld a, h
    ld d, e
    rst $30
    add l
    sbc $36
    add $84
    add b
    db $e4
    push de
    pop de
    db $fc
    nop
    rrca
    xor $60

Jump_002_7469:
    adc e
    sub l
    ld [hl], b
    and h
    ld a, e
    xor e
    jp nc, $f5d3

    dec e
    ld c, a
    adc [hl]
    db $e4
    add hl, sp
    add hl, hl
    inc de
    sub a
    scf
    add hl, sp
    sbc a
    add e
    ld e, a
    ret c

    ld b, b
    and b
    ld a, b
    ld [$0f3f], sp
    add e
    ldh a, [rSB]
    ccf
    ld b, b
    nop

jr_002_748c:
    stop
    ccf
    inc l
    rst $38

Jump_002_7491:
    ld c, e
    push de
    jr nz, @+$05

    ld a, [c]
    db $fc
    jr nz, jr_002_74c1

    ld [bc], a
    ld [bc], a
    add h
    ld hl, $3f28
    ret nz

    adc h
    and d
    push af
    ld l, a
    ld d, l
    dec e
    ld e, e
    ld d, a

Jump_002_74a8:
    ld c, h
    ld bc, $f800
    inc d
    ld [bc], a
    ld [hl-], a
    add b
    inc hl
    jr z, jr_002_74c3

    ld bc, $801a
    ld b, [hl]
    and h
    inc de
    xor b
    jr nz, jr_002_748c

    add l
    inc bc
    ldh a, [$d0]
    cp b

jr_002_74c1:
    ld c, $2d

jr_002_74c3:
    add e
    ld c, c
    ld h, b
    or d
    nop
    ld bc, $6113
    nop
    sbc h
    ld [bc], a
    nop
    inc bc
    db $fc
    ld bc, $7f1a
    adc a
    add b
    ld bc, $00e9
    ld b, b
    ld a, $11
    dec de
    add d
    inc hl
    ld b, b
    nop
    dec bc
    pop af
    ld a, [$0204]
    bit 4, l
    ld a, [c]
    ldh [$29], a
    call c, $a710
    ld a, h

Jump_002_74ef:
    dec a
    pop bc
    inc b
    db $76
    ret nz

    dec e
    db $10
    rla
    ld l, h
    ccf
    adc $0f
    ld [hl], a
    call nz, $5ac2
    add h
    ld b, d
    and c
    nop
    or h
    ld a, d
    dec sp
    db $10
    adc d
    cpl
    ld d, h
    dec bc
    call nc, $fa14
    adc l
    ld b, d
    and [hl]
    ccf
    ld e, b
    jr nc, jr_002_7515

jr_002_7515:
    inc c
    jr nc, jr_002_751c

    ld h, c
    ret nz

    nop
    ld a, h

jr_002_751c:
    ld [bc], a
    ld e, $e0
    ld b, a
    add l
    ld [hl], h
    db $10
    ccf
    ld d, b
    ld e, c
    ld l, h
    or $6b
    ld [hl-], a
    cp $29
    ld a, [de]
    ld a, b
    add d
    ld e, a
    dec d
    db $db
    adc l
    pop bc
    rst $38
    dec de
    adc [hl]
    ccf
    add sp, $2f
    ld [hl], e
    pop bc
    db $fc
    ldh [$2f], a
    jr jr_002_7560

    ret z

    ld de, $fbb5
    nop
    ld a, $80
    ld h, d
    ld bc, $d870
    add b
    dec hl
    sub b
    ld c, d
    db $e4
    push bc
    ld h, e
    add e
    ldh [$0c], a
    add b
    db $fc
    ld b, b
    ccf
    nop
    rra
    db $e3
    or c
    ret z

    db $d3

jr_002_7560:
    ret nc

    ld a, [de]
    db $fc
    ld [bc], a
    rst $20
    ld [hl], e
    ld sp, hl
    rst $20
    db $ec
    and [hl]
    ld d, c
    dec de
    ld b, b
    rrca
    rst $10
    ld [c], a

jr_002_7570:
    dec [hl]
    db $10
    adc l
    ld b, d
    daa
    ld d, d
    adc c
    sub h
    ld e, d
    ld sp, hl
    ld b, h
    ld [hl], l
    ld bc, $0013
    db $10
    ld [$9019], sp
    ret nz

    cp c
    ld d, h
    ld l, $53
    dec bc
    inc d
    add d
    add l
    ld b, $fc
    ld a, b
    and h
    rst $10
    adc c
    inc d
    ld e, e
    add d
    jr jr_002_75a3

    cp b
    inc e
    call c, Call_000_0e18
    dec bc
    db $e4
    db $10
    db $ec
    adc b
    jr c, jr_002_75a4

jr_002_75a3:
    db $ec

jr_002_75a4:
    xor [hl]
    add b
    ret nz

    jr nz, jr_002_75b9

    ld bc, $03db
    nop
    add d
    ld b, c
    add b
    db $10
    ld bc, $e0c4
    ld de, $030e
    pop bc
    ret z

jr_002_75b9:
    pop hl
    ldh a, [$c2]
    cp $40
    dec de
    add d
    sub h
    add hl, sp
    adc l
    ld h, $91
    ld sp, $281f
    call nz, Call_002_518a
    jp nz, Jump_002_7880

    and b
    rra
    ld a, a
    ld e, a
    push af
    sub l
    rra
    inc b
    add hl, bc
    ret nz

    inc c
    inc bc
    add hl, bc
    add d
    ld h, b
    inc l
    ld [bc], a
    inc b
    ld b, b
    db $10
    jr nc, jr_002_7570

    ld [$02c2], sp
    adc b
    and d
    inc [hl]
    call nz, Call_000_0c33
    inc de
    ld a, [hl-]
    nop
    inc bc
    ret nz

    inc b
    ld e, l
    add hl, de
    sub e
    db $fc
    ld a, a
    nop
    add a
    db $10
    ret z

    ld [hl+], a
    ld [$2002], sp
    nop
    and $24
    inc c
    ldh [$c0], a
    and h
    ld a, $0f
    ld [hl+], a
    ld de, $8bf1
    sub e
    inc de
    and b
    or a
    dec [hl]
    ld c, a
    and c
    sub h
    ld l, d
    rrca
    ld [bc], a
    ld sp, $57a0
    add [hl]
    rst $10
    ld h, h
    or l
    ld c, e
    dec [hl]
    inc bc
    ld d, e
    db $10
    dec a
    sub b
    ld d, d
    or [hl]
    adc l
    dec de
    ld l, c
    ld e, d
    ld [hl], b
    add b
    and b
    ld [$3650], sp
    xor c
    inc bc
    jr z, @+$1f

    ld a, b
    ld l, h
    cp $00
    ld c, a
    ldh a, [$08]
    add c
    jr nz, @+$42

    db $10
    inc b
    ld [hl+], a
    jr z, jr_002_766a

    xor c
    ld l, b
    ld hl, $6493
    cp c
    ld l, $49
    sub [hl]
    dec h
    add h
    ld [hl], b
    add a
    jr nz, jr_002_7661

    pop af

jr_002_7655:
    nop
    rst $28
    ld bc, $520c
    inc d
    ld [de], a
    inc b
    dec h
    dec b
    ld a, c
    ld [hl], b

jr_002_7661:
    ccf
    nop
    ld b, c
    ldh a, [$80]
    ccf
    ld [$f002], sp

jr_002_766a:
    ret nz

    sbc l
    set 4, e
    nop
    cp $31
    rrca
    pop bc
    add b
    or $3a
    ld bc, $3080
    inc e
    rlca
    and h
    sbc c
    ld h, $61
    jr z, jr_002_76a9

    adc d
    ld l, $4a
    jr z, jr_002_76ae

    ld d, c
    ldh a, [$60]
    dec a
    ret z

    db $e3
    db $fc
    ld h, c
    ld [bc], a
    ret nz

    sub d
    and h
    add hl, sp
    db $10
    ld b, b
    ld de, $820c
    ld a, [bc]
    ld c, e
    ld h, b
    call nz, $08ae
    ld c, e
    ldh [$8c], a
    cp h

jr_002_76a2:
    ld a, [bc]
    dec bc
    db $76
    sbc l
    ld l, h
    ccf
    ret


jr_002_76a9:
    pop de
    adc b
    db $fd
    nop
    ld c, a

jr_002_76ae:
    ldh [$0c], a
    db $fc
    xor h
    ld b, b
    jr c, jr_002_76a2

    ld a, [de]
    dec b
    ld bc, $c081
    ld e, b
    ccf
    dec bc
    inc bc
    ret c

    db $ec
    dec sp
    dec c
    or e
    ld h, h
    or [hl]
    inc l
    ld b, $f0
    add b
    sbc a
    adc e
    call nc, Call_000_1835
    dec b
    db $10
    add hl, de
    ld e, c
    jr jr_002_7655

    rra

Jump_002_76d5:
    adc b
    ld bc, $b5fe
    ccf
    and $b2
    sub b
    ld d, l
    ld hl, $d007
    ld de, $3f2c
    ld h, h
    ld b, b
    dec b
    ld a, [de]
    daa
    ld b, c
    sub d
    ld [hl], h
    jr jr_002_7715

    add c
    add d
    ld [hl], b
    jr jr_002_7731

jr_002_76f3:
    adc b
    ld [bc], a
    add sp, $30
    cpl
    jp $9c6b


    ld d, c
    nop
    ld [$00d0], sp
    ld [hl], e
    nop
    ld b, $71
    jr jr_002_774c

    add hl, de
    inc c
    db $e3
    or b
    db $dd
    ld [$20c0], sp
    add b
    inc bc
    nop
    adc b
    and d
    jr nz, jr_002_76f3

jr_002_7715:
    scf
    nop
    inc hl
    ldh a, [rIF]
    ld [bc], a
    ld bc, $c083
    rla
    inc bc
    rst $08
    di
    add b
    sbc $08
    xor a
    ld h, c
    inc e
    ld h, l

jr_002_7729:
    inc sp
    adc [hl]
    call nc, Call_002_616c
    db $10
    ld c, a
    di

jr_002_7731:
    ld a, l
    dec de
    ld a, [bc]
    inc bc
    inc c
    ld l, h
    dec l
    dec c
    ld [hl], c
    or l
    ld a, b

jr_002_773c:
    cp d
    inc c
    adc e
    ldh a, [$dc]
    ld a, [c]
    ld [bc], a
    sub c
    jp nz, $8820

    scf
    ld c, l
    call nc, $80a0

jr_002_774c:
    jr nc, jr_002_7765

    ld a, [c]
    nop
    rst $38
    rrca
    rst $28
    ld [c], a
    inc l
    adc c
    ret nz

    adc b
    ld a, [c]
    ld sp, $09de
    ld b, d
    ld bc, $72d8
    add hl, bc
    jp nz, Jump_002_7843

    ld d, d

jr_002_7765:
    ld [bc], a
    add b
    jp Jump_000_05fc


    rrca
    jp Jump_002_7491


Call_002_776e:
    ld c, $17
    ret nz

    xor l
    inc h
    cp a
    ld l, $40
    ld [hl], b
    inc d
    db $fd
    jr nc, @+$10

    ld h, d
    sub b
    add $11
    dec [hl]
    ld h, e
    jr c, jr_002_778f

    dec a
    adc e
    and d
    and $53

jr_002_7788:
    ld bc, $d248
    jr nz, jr_002_7788

jr_002_778d:
    nop
    ld e, [hl]

jr_002_778f:
    jr nz, jr_002_7729

    inc h
    ld bc, $4082
    cp h
    ld c, $3f
    adc a
    db $e4
    ld [hl], b
    ld hl, sp+$06
    inc bc

jr_002_779e:
    ret nc

    or h
    jr jr_002_77a6

    scf
    jr nz, jr_002_778d

    ld [hl-], a

jr_002_77a6:
    scf
    adc $f3
    xor b
    ld [de], a
    jp z, $a332

    ld [hl], a
    add hl, hl
    ld b, a
    ld [bc], a
    jr nz, jr_002_773c

    ld [hl], a
    dec e
    rst $08
    and d
    jr z, @-$2e

    inc [hl]
    ld c, $a3
    xor b
    ccf
    rrca
    call nz, Call_000_0a21
    ld d, [hl]
    cp a
    sbc [hl]
    jr nz, jr_002_77d8

    ld [bc], a
    ld a, [hl-]
    rla
    ld [hl], e
    ldh [$dd], a
    jr c, jr_002_779e

    ld d, d
    inc c
    or l
    inc e
    ld sp, hl
    xor [hl]
    ld [hl], b
    ld [hl], e

jr_002_77d8:
    ld a, $00
    ld [hl], b
    sbc h
    nop
    ld a, [hl+]
    ld c, c
    add d

jr_002_77e0:
    or h
    sbc h
    jp hl


    ld a, d
    ld a, [hl]
    sbc b
    sbc h
    ld a, [hl-]
    rst $08
    pop af
    call z, Call_000_36ff
    ld b, e
    ldh a, [$f4]
    rrca
    ld [de], a
    inc c
    ld [hl], c
    or h
    db $e3
    ld a, [de]
    adc [hl]
    ld de, $e4a4
    ld bc, $a080
    jr z, jr_002_7806

    inc bc
    add c
    ld h, b
    ld e, e
    cp a
    inc bc

jr_002_7806:
    adc c
    ld h, d
    jr c, jr_002_77e0

    inc sp
    adc a
    ld h, e
    cp b
    ld d, [hl]
    inc de
    add e
    ld h, b
    cp e
    jp z, $8a2d

    rst $28
    dec hl
    call nz, Call_002_7cf0
    ld e, $68
    or h
    and $c7
    ld [hl+], a
    rst $10
    ret c

    or $bd
    sbc [hl]
    ld l, e
    and l
    ld a, $52
    ret nc

    nop
    push af
    inc [hl]
    dec c
    ld d, d
    inc bc
    db $e4
    ld sp, hl
    rrca
    ret nc

    sub e
    reti


    dec l
    add a
    ld [bc], a
    ret nc

    ld [hl], c
    cpl
    ld b, a
    add d
    ld hl, sp+$75
    cpl
    rst $00

Jump_002_7843:
    ld e, a
    call nz, Call_000_1ebf
    adc a
    ldh a, [$88]
    ld [hl], e
    ld [$900f], sp
    sub b
    dec h
    ld h, $0a
    and d
    ld [hl], b
    xor [hl]
    daa
    ld a, [bc]
    xor [hl]
    sbc b
    sbc b
    xor $46
    and e
    sbc b
    ld l, d
    add hl, sp
    add [hl]
    or e
    sbc l
    nop
    dec [hl]
    cp c
    ldh [rDMA], a
    or a
    inc [hl]
    dec d
    adc d
    dec b
    ld h, c
    add b
    pop hl
    inc b
    jr nz, jr_002_7884

    jr jr_002_7881

    ld c, d
    dec b
    dec a
    ld b, d
    and l
    and b
    ld d, h
    ld d, $2f
    ld b, $73

Jump_002_7880:
    cp d

jr_002_7881:
    call z, $b8f1

jr_002_7884:
    call c, $f809
    xor h
    ld a, h
    ld a, [hl+]
    ld e, $01
    inc bc
    nop
    add b
    add b
    nop
    sub h
    ld c, d
    add b
    ld bc, $7460
    or [hl]
    ld e, a
    ld l, $07
    dec h
    sub c
    push bc
    ld h, d
    ld [hl], h
    call $ceac
    ld a, e
    dec sp
    add [hl]
    jp nz, $ace9

    adc $60
    rra
    nop
    dec l
    adc [hl]
    ld l, e
    ld [hl], e
    adc d
    call nc, $b5e4
    add hl, sp
    jp nc, Jump_002_7469

    and e
    sbc e
    and h
    xor b
    di
    ld b, b
    dec sp
    ld c, h
    rlca
    ld d, h
    ld h, d
    or l
    add hl, sp
    ld d, a
    xor h
    and a
    add hl, hl
    sub l
    jp z, Jump_000_256d

    cp $00
    xor l
    ld e, b
    xor e
    ld d, $4b
    inc b
    ld [de], a
    rlca
    ld l, b
    adc h
    ld b, [hl]
    dec h
    ld [hl], d
    or a
    nop
    nop
    and b
    nop
    ld a, b
    jr z, jr_002_7913

    ld d, c
    ld a, e
    ld c, l
    jp c, Jump_002_6005

    or a
    ld a, [de]
    add c
    ld b, a
    pop af
    db $fc
    inc [hl]
    add d
    ld bc, $8021
    ldh a, [rNR10]
    xor b
    ld [$0000], sp
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    ld bc, $0205
    ld b, $07
    ld [$0609], sp
    rlca
    ld a, [bc]
    dec bc
    ld b, $0c
    dec c
    ld c, $09

jr_002_7913:
    add hl, bc
    rrca
    db $10
    add hl, bc
    add hl, bc
    db $10
    db $10
    add hl, bc
    add hl, bc
    ld de, $0912
    add hl, bc
    dec bc
    dec bc
    inc de
    inc d
    inc d
    dec d
    ld d, $14
    rla
    dec d
    jr @+$1a

    jr jr_002_7946

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
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
    jr z, jr_002_796e

    ld a, [hl+]

jr_002_7946:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_002_797e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_002_798e

    ld a, [hl-]
    dec sp
    dec sp
    dec sp
    dec sp
    inc a
    dec a
    dec sp
    ld a, $3f
    ld b, b
    ld b, c
    dec sp
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    inc de
    inc d
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_002_796e:
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
    ld e, e

jr_002_797e:
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
    dec a
    ld l, c
    ld l, d

jr_002_798e:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld c, $0e
    ld c, $0e
    ld [hl], e
    ld [hl], e
    ld c, $0e
    ld c, $0e
    ld [hl], h
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
    adc b
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

jr_002_79ca:
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    sub c
    and c
    and d
    and e
    and h
    sub [hl]
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
    sub c
    xor a
    and a
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
    add hl, bc
    cp l
    dec bc
    cp [hl]
    cp a
    ret nz

    pop bc
    add hl, bc
    add hl, bc
    jp nz, Jump_000_0909

    add hl, bc
    add hl, bc
    jp Jump_000_3d68


    ld l, c
    call nz, Call_002_5554
    push bc
    add $13
    inc d
    rst $00
    ld b, a
    ld h, b
    ret z

    ld h, d
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    ld l, b
    jp nc, $d369

    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, Jump_000_06db

    ret nz

    and b
    ld [hl], b
    ld c, b
    inc l
    ld a, [de]
    rrca
    ld [$c284], sp
    and c
    ld [hl], b
    ret z

    jr nz, @+$3e

    inc h
    inc de
    adc b
    ld b, h
    add d
    ld d, c
    jr z, jr_002_79ca

    ld e, d
    ld a, [hl+]
    ld a, [bc]
    inc d
    add $a3
    ld [hl], c
    ret z

    db $ec
    ld a, d
    jr c, jr_002_7a4c

    nop
    add c

jr_002_7a4c:
    ld h, e
    ld a, [c]
    ld c, c
    inc l
    ld a, h
    ld d, $19
    dec c
    ld [$1244], sp
    cp c
    ld l, h
    or d
    ld e, a
    ld l, $96
    add d
    add h
    db $d3
    ld c, c
    xor h
    jp c, Jump_000_386f

    sbc d
    ret z

    ld b, b
    ld [hl], e
    sbc c
    db $ec
    ld a, [$2872]
    dec b
    add l
    jp Jump_000_3102


    dec d
    ld d, $8f
    ld b, [hl]
    and h
    jp nc, $a128

    ld sp, hl
    sbc h
    cp $9e
    ld h, $9d
    call nc, Call_002_742a
    nop
    ld e, b
    ld d, b
    inc l
    dec h
    xor h
    adc c
    inc b
    or l
    cp d
    db $ed
    ld [hl], d
    cp a
    ld e, l
    and [hl]
    push de
    daa
    or l
    dec hl
    dec e
    sbc b
    ld c, l
    ld b, c
    sub [hl]
    ld d, a
    jp hl


    ld hl, $a840
    ld e, d
    sub l
    ld [hl], b
    db $10
    db $d3
    add l
    ld h, d
    ret


    ret nz

    call nc, Call_000_3e6d
    or d
    adc [hl]
    ld b, a
    ld d, e
    ld e, e
    and b
    sbc b
    ld h, d
    ld [hl-], a
    sbc d
    ld e, a
    and [hl]
    rst $10
    db $eb
    cp [hl]
    ld a, [bc]
    db $eb
    dec [hl]
    and b
    rst $10
    db $ed
    or l
    add c

jr_002_7ac4:
    inc h
    cp [hl]
    cp l
    sub b
    rrca
    add [hl]
    and $82
    pop de
    ld [hl], h
    ldh [$6e], a
    jr c, @-$64

    sub b
    ld h, [hl]
    sub $51
    jr nc, jr_002_7ac4

    ld a, c
    dec [hl]
    jp z, $8689

    ld h, e
    ld c, h
    and [hl]
    ld e, d
    ld l, l

Jump_002_7ae2:
    and d
    call z, $a669
    call nc, Call_000_3c1a
    cp [hl]
    sub a
    ld [hl], b
    and l
    add a
    ld h, $82
    pop af
    add h
    call nc, Call_000_394f
    rra
    sub b
    ld h, $99
    reti


    add $d6
    ld l, a
    cp a
    sbc e
    ld [hl], b
    ld h, [hl]
    cp h
    dec sp
    ld b, b
    ld l, $c1
    ret z

    ret z

    ld [hl], d
    ld b, h
    and c
    ret nc

    ld c, a
    dec sp
    sbc [hl]
    ld b, $03
    add d
    add hl, sp
    db $fc
    pop af
    add sp, -$08
    inc de
    ld hl, $7502
    dec sp
    ld a, l
    adc $ef
    ld a, e
    cp d
    ld a, [hl+]
    dec b
    add e
    inc a
    ld a, [hl]
    ld c, a
    cpl
    sbc e
    rst $08
    add sp, $07
    ld a, d
    cp l
    ld e, $cf
    ld l, a
    cp e
    rst $18
    rst $20
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
    add b
    add b
    ldh [$e0], a
    nop
    nop
    nop
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
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
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
    nop
    ret nz

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
    inc bc
    inc bc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    rrca
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
    ret nz

    ret nz

    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    rrca
    rrca
    rra
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
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7c70:
    rst $38

Call_002_7c71:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld sp, hl
    ld hl, sp+$0b
    add hl, bc
    rlca
    inc bc
    ld a, a
    ld a, e
    ld a, $36
    inc c
    inc b
    inc e
    inc c
    ei
    ld a, e
    ld sp, hl
    ld sp, hl
    adc b
    ld [$0080], sp
    rst $38
    cp a
    rst $38
    rst $18
    ld h, e
    ld b, e
    ld [hl], b
    ld h, b
    ld hl, sp-$18
    ld hl, sp-$18
    jr jr_002_7ca4

    inc c
    inc b
    ld a, [hl]
    db $76
    ccf
    dec sp
    rra
    nop

jr_002_7ca4:
    inc d
    inc c
    dec sp
    dec hl
    add hl, sp
    add hl, hl
    ld a, b
    ld l, b
    ld h, b
    ld b, b
    rst $38
    rst $18
    rst $38
    cp a
    pop af
    ld bc, $6050
    rst $38
    ldh a, [$f4]
    db $ec
    inc d
    inc c
    ld a, [bc]
    ld b, $7a
    db $76
    dec a
    dec sp
    ld [bc], a
    inc bc
    rlca
    rlca
    ei
    dec de
    ld e, c
    ld l, c
    ld e, b
    ld l, b
    and b
    ret nz

    cp a
    rst $18
    ld a, a
    cp a
    add e
    add e
    ret nz

    ret nz

    db $f4
    rst $38
    or $ff
    rla
    rra
    rra
    rra
    ld h, b
    ld a, a
    jr nz, @+$41

    ld c, $0f
    rra
    rra
    dec de
    ei
    add hl, de
    ld sp, hl
    ld hl, sp-$08
    ldh a, [$f0]
    adc a
    rst $38

Call_002_7cf0:
    rst $08
    rst $38
    pop hl
    pop hl

Jump_002_7cf4:
    ldh a, [$f0]
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0208], sp

Call_002_7cfd:
    nop
    ld a, a
    ld a, [hl]
    ccf
    dec a
    inc bc
    ld bc, $0307
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [$0008], sp
    nop
    ld a, a
    ld a, a
    cp a
    ccf
    jp $c083


    add b
    cp $f6
    db $fc
    db $f4
    inc e
    inc c
    inc e
    inc c
    ld a, h
    ld [hl], h
    ld a, $36
    rra
    nop
    inc d
    inc c
    ei
    db $db
    ld a, c
    ld e, c
    ld a, b
    ld l, b
    jr nc, jr_002_7d4e

    ld a, a
    ld e, a
    rst $38
    rst $18
    pop af
    ld bc, $6050
    rst $38
    ldh a, [$f4]
    db $ec
    inc d

jr_002_7d3b:
    inc c
    ld a, [bc]
    ld b, $7a
    db $76
    dec a
    dec sp
    ld [bc], a
    inc bc
    rlca
    rlca
    ei
    dec de
    ld e, c
    ld l, c
    ld e, b
    ld l, b
    and b
    ret nz

jr_002_7d4e:
    cp a
    rst $18
    ld a, a
    cp a
    add e
    add e
    ret nz

    ret nz

    db $f4
    rst $38
    or $ff
    rla
    rra
    rra
    rra
    ld [hl], b
    ld a, a
    jr nz, @+$41

    ld e, $1f
    nop
    nop
    dec de
    ei
    add hl, de
    ld sp, hl
    ld hl, sp-$08
    ldh a, [$f0]
    sbc a
    rst $38
    rst $08
    rst $38
    pop af
    pop af
    nop
    nop
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, @+$03

    cp $7f
    ld l, a
    adc a
    ret c

    jp Jump_000_18d7


    ld a, c
    jp nz, $701f

    ld b, h
    ld h, d
    ld l, a
    ld hl, sp-$55
    cp $0f
    rlca
    ld b, b
    rra
    db $e3
    rrca
    ldh a, [rNR31]
    ld a, [$c024]
    rra
    ret z

    rlca
    ld a, [c]
    ld d, $28
    ld [$172f], a
    nop
    cp a
    push hl
    ld d, c
    add sp, -$10
    add hl, de
    ei
    jr z, jr_002_7d3b

    ld b, l
    and b
    ldh [$87], a
    cp b
    ld d, c
    rst $30
    scf
    dec b
    ccf
    ld b, b
    sub c
    ld l, b
    xor b

Call_002_7dbb:
    ld e, $3b
    ld b, b
    ld bc, $5fd0
    pop af
    xor b
    call nc, Call_000_0e72
    ld a, [$cc02]
    ld l, b
    ld b, h
    dec [hl]
    ld a, [$be8d]
    db $e3
    ld c, a
    jp z, Jump_000_2b88

    rst $30
    db $ec
    ld a, b
    ld [bc], a
    add b

jr_002_7dd9:
    ld b, b
    jr nc, jr_002_7df4

    inc c
    ld h, $13
    add l
    jp nz, $b0e0

    ret c

    xor h
    jr nc, jr_002_7e4f

    dec d
    ld h, [hl]
    ld [$0001], sp
    ret c

    ld l, e
    db $76

jr_002_7def:
    cp d
    db $db
    ld bc, $c58a

jr_002_7df4:
    sbc [hl]
    jp c, Jump_000_202d

    db $10
    db $10
    ld a, [bc]
    ld a, e
    dec d
    add e
    ld [bc], a
    ld bc, $4b00
    add sp, $12
    db $ed
    ld h, [hl]
    xor h
    and b
    jr nz, jr_002_7dd9

    and a
    push de
    ret z

    nop
    ld b, b
    jr nz, jr_002_7e19

    inc b
    ld b, $03
    inc b
    dec bc
    ld [de], a
    db $fc
    ld a, [hl]

jr_002_7e19:
    ccf
    sbc a
    sub $5b
    inc l
    ld d, [hl]
    jp hl


    sbc b
    call z, Call_002_72da
    ld sp, hl
    xor h
    ret z

    nop
    ld e, $e8
    ld a, h
    ld h, [hl]
    add b
    rla
    ld d, b
    jr jr_002_7e49

    ld c, $0e
    rlca
    cp h
    rra
    pop hl
    ld bc, $9c80
    adc $4f
    ld h, a
    add a
    pop hl
    ld c, a
    pop af
    cp $d7
    ld l, a
    sub l
    add d
    push bc
    db $f4
    sbc c

jr_002_7e49:
    call c, Call_000_04cb
    cp a
    dec de
    add e

jr_002_7e4f:
    sbc $38
    ld [hl], c
    ld d, c
    nop
    pop bc
    jr nz, jr_002_7def

    ld h, h
    inc sp
    inc e
    adc [hl]
    ld h, a
    add e
    res 3, l
    adc $78
    cp h
    push af

jr_002_7e63:
    dec a
    ld b, b
    ld a, a
    ld d, a
    xor d
    ld hl, sp-$25
    db $ed
    cp e
    ld a, l
    xor l
    cp b
    ld a, l
    cp $07
    ldh a, [$f8]
    add b
    ld a, [hl]
    ld c, a
    cpl
    sub c
    ld hl, sp-$01
    rst $28
    ld a, [$e89f]
    rst $38
    ld h, a
    cp e
    db $db
    ccf
    ld [c], a
    ld a, h
    sbc a
    db $fd
    cpl
    xor e
    rst $08
    db $ed
    jp nc, $bd7a

    call c, Call_002_776e
    inc bc
    sub c
    cp $3a
    ld c, $c3
    db $10
    call z, Call_000_0c30
    adc b

jr_002_7e9d:
    inc d
    ret nc

    ld [hl], $08
    push af
    ld c, c
    sbc [hl]
    ld h, l
    adc a
    di
    ld e, $0e
    add h
    ld c, $33
    cp $12
    add l
    ld [de], a
    or e
    db $fc
    ld [hl], c
    rra
    pop hl
    adc b
    ld h, b
    jr c, jr_002_7ec8

    pop hl
    ret z

    ld a, c
    inc h
    ld a, h
    call c, Call_002_4c36
    add c
    inc h
    ld h, d
    ld b, d
    add h
    or c
    inc b

jr_002_7ec8:
    ld b, e
    db $10
    inc b
    ld hl, $c48a
    ld de, $3f84
    rra
    reti


    jr c, jr_002_7e9d

    cp $64
    ld e, c
    inc [hl]
    xor c
    ld b, a
    db $10
    jr jr_002_7e63

    ld l, b
    ld b, b
    jr nc, jr_002_7ee2

jr_002_7ee2:
    ld b, $0e
    ccf
    ld b, l
    ld d, b
    stop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    ld c, $0f
    db $10
    ld de, $1011
    db $10
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_002_7f22

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1d
    rra
    jr nz, jr_002_7f33

    ld de, $2322
    inc h
    dec h
    ld h, $00
    ld b, b
    and b
    ld [hl], b
    ld c, b
    db $10
    ld [$0703], sp
    add h

jr_002_7f22:
    jp nz, $2000

    nop
    jr jr_002_7f3a

    dec e
    db $10
    add a
    add c
    nop
    nop
    ld e, b
    xor h
    ld e, d
    cpl
    inc d

jr_002_7f33:
    adc e
    add $a2
    add b
    ld h, b
    jr c, @+$18

jr_002_7f3a:
    dec sp
    rra
    adc a
    ld b, l
    ld bc, $9000
    inc l
    sub d
    ld c, l
    dec h
    adc d
    ld [bc], a
    add c
    ld h, b
    ld e, c
    ld e, h
    or [hl]
    ld e, b
    nop
    add l
    jp nz, $30a1

    ld e, c
    xor h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_002_7ffb:
    nop

Call_002_7ffc:
    nop
    nop
    nop
    nop
