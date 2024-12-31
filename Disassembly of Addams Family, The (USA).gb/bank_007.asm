; Disassembly of "Addams Family, The (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    ld a, a
    add b
    ld de, $0500
    ld e, b
    ld bc, $0000
    ld [hl], l
    pop bc
    ret nz

    ld a, [bc]
    and b
    ld [bc], a
    and b
    ld bc, $0302
    nop
    rra
    ret nz

    ld bc, $01c0
    ld [hl], l
    inc c
    nop
    ld l, $c0
    ld [bc], a
    and b
    inc c
    ld [$1001], sp
    nop
    ld [$ea03], sp
    nop
    db $fc
    adc l
    ret nz

jr_007_402c:
    rra
    adc b
    ld b, a
    db $e4
    ld [hl-], a
    jr jr_007_4047

    cp d
    ld d, l
    db $20, $90
    add c
    rst $18
    inc de
    add hl, sp
    sbc b
    dec a
    ldh [$3f], a
    ld h, b
    ld c, d
    ldh [rWX], a
    db $76
    ld h, h
    or $7e

jr_007_4047:
    call z, $bf43
    daa
    ld [hl], b
    ld [hl], e
    ld a, [$8c02]
    ld a, a
    ld h, b
    rrca
    sbc $00
    ld a, [$1120]
    ldh a, [rTIMA]
    ld a, h
    ld d, e
    and $73
    inc bc
    nop
    nop
    cp $00
    ld c, $00
    dec bc
    and b

Call_007_4067:
    ld [bc], a
    xor b
    ld bc, $00ba
    ld a, [hl+]
    jr nz, jr_007_408f

    ld b, c
    db $10
    inc bc
    ld d, h
    nop
    ld bc, $3500
    db $ed
    dec d
    ret nc

    nop
    ld d, h
    nop
    xor [hl]
    nop
    jr z, jr_007_4081

jr_007_4081:
    dec bc
    ld hl, sp-$43
    jp nc, Jump_007_75ef

    cp d
    cp d
    add b
    jr z, jr_007_402c

    ld a, [bc]
    add sp, $03

jr_007_408f:
    dec e
    ld a, l
    nop
    ld [hl], b
    ld e, b
    ld c, e
    ld c, h
    cp a
    rrca
    dec l
    adc b
    nop
    rst $18
    sbc b
    cp h
    ld l, [hl]
    inc sp
    rra
    adc [hl]
    call nz, $9e40
    ret nz

    sub a
    ret z

    dec a
    db $ec
    ld a, [bc]
    ld [hl], h
    dec b
    ld [hl], d
    ld b, b
    ld b, $b0
    and h
    ld d, d
    rst $38
    inc b
    ld c, $1a
    ld h, l
    ld e, h
    db $e3
    ld a, h
    ld b, b
    ccf
    sub h
    jr c, jr_007_40cd

    rst $20
    dec c
    ld d, b
    ld a, [hl]
    sub l
    or b
    rra
    pop de
    or $67
    ld a, [c]
    cp d
    nop

jr_007_40cd:
    and d
    add b
    ld l, $a0
    inc l
    ld b, l
    db $f4
    ld b, $f7
    ld a, [hl]
    add b
    ld a, [hl-]
    add b
    nop
    and b
    rlca
    db $ed
    ld l, a
    adc e
    ret z

jr_007_40e1:
    db $e3
    ld [hl], c
    xor a
    scf
    adc [hl]
    ld l, a
    inc sp
    dec bc
    ret nc

    pop bc
    db $f4
    or b
    ld e, b
    or b
    dec bc
    ei
    xor l
    ret c

    db $eb
    or $a2
    ld c, $90
    sub e
    xor b
    inc hl
    rst $18
    ldh a, [$f8]
    inc a

jr_007_40ff:
    ld a, l
    push af
    ld sp, $14a5
    ld h, l
    db $f4
    ld a, d
    cp l
    ld a, $cf
    ld b, d
    dec a
    ld h, b
    cpl
    ld e, b
    inc bc
    cp $0b
    nop
    ld [hl], d
    call nz, $b15c
    ei
    dec bc
    ld d, $7c
    rrca
    xor $f9
    rst $38
    ld l, a
    ld e, h
    and a
    ld h, $03
    add b
    add [hl]
    or d
    ld b, b
    ld a, [hl+]
    inc [hl]
    ld h, b
    adc b
    jr z, jr_007_40ff

    ld a, [bc]
    dec c
    nop
    cp [hl]
    ld c, $37
    adc $f0
    ld bc, $7aeb
    jp nc, $b804

    rst $38
    inc hl
    inc bc
    jr nc, jr_007_40e1

    or a
    ld [bc], a
    dec bc
    ld a, b
    ld l, [hl]
    dec e
    ld a, [bc]
    inc bc
    ld [hl], e
    jr nz, jr_007_4183

    ld a, [hl-]
    rrca
    ld [hl], h
    ld b, b
    jr nz, jr_007_4189

    jp nz, Jump_007_51b3

    add hl, sp
    add hl, bc
    call $b4b0
    sub $0e
    call z, $dcc0
    ret c

    ld b, h
    nop
    ld b, e
    db $ec
    xor h
    inc d
    db $dd
    ld [hl], c
    jr @-$45

    add hl, hl
    adc l
    sub e
    ld e, h
    ld l, b
    dec de
    rlc [hl]
    dec h
    ld l, $2a
    add l
    ld e, c
    dec d
    ld [bc], a
    ld d, e
    ld [de], a
    rst $10
    ld e, l
    ld b, [hl]
    ld b, b
    adc a
    or b
    db $10
    pop af

jr_007_4183:
    inc bc
    add [hl]
    ld [c], a
    ld b, [hl]
    ld b, e
    ld b, h

jr_007_4189:
    inc h
    ld e, c
    dec e
    ld b, l
    adc d
    ld [bc], a
    di
    ld a, b
    ld hl, $a537
    and d
    add h
    ld e, [hl]
    dec hl
    push bc
    db $e3
    add h
    ld e, $96
    adc b
    ld b, c
    inc e
    dec sp
    ld l, $c5
    ld b, c
    or h
    ld d, l
    ld a, [bc]
    ld b, l
    ret nz

    and h
    ld a, l
    ld a, [bc]
    ld b, a
    ret nz

    inc b
    ld [hl], l
    ld [$8340], sp
    sbc $25
    sbc l
    and d
    ld d, b
    inc [hl]
    ld a, [c]
    dec sp
    ld c, a
    inc h
    call c, Call_000_3cef
    ld [de], a
    push de

Call_007_41c2:
    add hl, de
    rst $10
    ld h, d
    dec e
    ld a, c
    ld d, b
    rst $38
    sub c
    adc l
    ld d, b
    xor c
    ld b, [hl]
    ld c, [hl]
    ld h, h
    ld sp, $bf00
    and e

Call_007_41d4:
    add sp, -$0a

jr_007_41d6:
    add $87
    ld b, h
    dec e
    ld h, b
    jr jr_007_41d6

    ld c, $0c
    ld a, c
    inc b
    ld [hl], h
    ld [hl+], a
    call nz, $e072
    db $f4
    ld c, $cd
    ld [hl], b
    ld h, b
    ld d, h
    ld h, $c5
    ld [hl], d
    ld h, b
    sub h
    ld d, $cb
    pop af
    ld b, c
    ld [bc], a
    inc hl
    rst $00
    inc bc
    cp h
    ld [hl], b
    dec hl
    jp $b402


    ld [hl-], a
    ld a, [hl+]
    ld b, e
    ld h, d
    add b
    ccf
    sub e
    and l
    inc bc
    call c, Call_000_3e08
    ld b, b
    ld l, d
    ld de, $7521
    call $e0f7
    ld e, a
    add hl, bc
    rrca
    cp d
    jr z, jr_007_4290

    ld a, [hl+]
    adc l
    ldh a, [$29]
    cp l
    rla
    ld c, b
    add c
    adc h
    sbc h
    ld l, $04
    ld [hl], d
    ld a, b
    pop hl
    and b
    ret z

    dec d
    ld h, b
    ld a, h
    nop
    rst $00
    ldh [rTMA], a
    ld e, h
    dec sp
    pop bc
    jp hl


    ld [hl], d
    ld h, c
    ld [$c48d], sp
    ld [$3e05], sp
    sub e
    ld sp, $0150
    dec d
    ld b, b
    dec de
    sbc [hl]
    ld [hl], b
    add l
    adc b
    ld [de], a
    inc c
    db $fd
    ld b, b
    and a
    push af
    jr nc, @-$0e

    and b
    inc de
    ld [hl], e
    db $fc
    add b
    and e
    call z, $f910
    adc h
    xor a
    ld c, a
    jr nc, jr_007_428e

    rst $20

jr_007_425f:
    ld b, $0c
    ret nc

    call z, Call_000_189e
    adc e
    ld b, c

jr_007_4267:
    jr nz, jr_007_4267

    nop
    adc c

jr_007_426b:
    pop af
    add b
    rst $08
    inc c
    ld [bc], a
    ld [hl], e
    ld h, d
    cp $16
    add $60
    call nc, $042b
    add b
    ret nc

    db $f4
    ld [hl+], a
    ld l, h
    ld e, e
    ld d, $b8
    ldh [$27], a
    rst $00
    inc bc
    dec a
    dec l
    inc c
    rrca
    ldh a, [$61]
    and c
    ld l, b
    ld c, a

jr_007_428e:
    adc d
    ld d, c

jr_007_4290:
    ld l, $4e
    add b
    nop
    db $fc
    ld b, c
    jr nc, jr_007_42d9

    ld a, [bc]
    dec b
    sbc h
    ld h, c
    ret z

    sub e
    db $e4
    ei
    nop
    inc sp
    ld b, a
    ld b, l
    pop de
    ld h, d
    jr z, jr_007_426b

    nop
    dec a
    jr nc, jr_007_425f

    ret nz

    db $f4
    jp Jump_000_00cc


    ld [bc], a
    ret c

    ld c, c
    ret nc

    jp nz, $ff43

    ld b, c
    ld l, c
    jp c, Jump_007_7c72

    ldh [rLCDC], a
    sbc b
    jp z, $9cfd

    dec d
    ld e, e
    ld [c], a
    jr z, jr_007_4327

    daa
    db $f4
    ld de, $08dc
    jr jr_007_4290

    pop bc
    inc c
    inc a
    ld h, a
    dec e
    db $76
    ld sp, $3f33
    db $dd

jr_007_42d9:
    ld h, b
    nop
    db $e3
    rlca
    rrca
    ld [hl], b
    ld a, h
    ldh a, [rTAC]
    or $64
    ret nz

    inc sp
    scf
    ld c, d
    and e
    jr nc, jr_007_431e

    inc sp
    inc [hl]
    ld [hl], h
    ld b, b
    add a
    ld de, $23d0
    inc c
    inc a
    sub e
    ld [$3c08], sp
    cp a
    inc [hl]
    inc bc
    di
    ld b, e
    ld a, h
    ld sp, $b443
    ld a, a
    ld [hl], d
    ld h, a
    dec b
    ld sp, $8cbd
    nop
    ld hl, sp+$49
    ld d, b
    or b
    dec de
    push bc
    add d
    call c, Call_000_36fc
    db $f4
    add hl, de
    dec c
    inc [hl]
    ld c, l
    inc d
    call nz, Call_007_4aa1
    ld [bc], a

jr_007_431e:
    ld [hl-], a
    ld h, l
    ld c, b
    db $fc
    sub b
    pop de
    ldh [$09], a
    inc d

jr_007_4327:
    ld c, h
    ld d, d
    ld [bc], a
    nop
    add b
    res 7, c

jr_007_432e:
    sbc [hl]
    add l
    db $10
    ld e, b
    call nz, $fc41
    ld hl, $7a0e
    ld [hl], h
    push bc
    cp $6f
    ld c, l
    or $f8
    nop
    rla

Call_007_4341:
    ei
    ld b, b
    nop
    dec e
    jr c, @-$3e

    jp Jump_000_0dcc


    dec a
    ret nz

    jp $bcdf


    rst $28
    add b
    db $d3
    db $db
    jp nz, $8edc

    ld [hl-], a
    jr nz, jr_007_432e

    rlca
    ld a, [bc]
    ld [hl+], a
    ld hl, sp-$80
    rrca
    sbc e

jr_007_4360:
    or b
    ld a, [bc]
    rst $20
    and b
    inc de
    inc sp
    cp h
    ld hl, sp+$03
    rst $08
    adc a
    ld c, a
    push de
    push af
    rst $08
    add h
    dec bc
    ld [$403d], sp
    db $e3
    db $ec
    inc c
    ccf
    ld b, b
    xor a
    add a
    db $e3
    ld [bc], a
    sub b
    dec h
    ld h, b
    and c
    daa
    add h
    db $d3
    ld a, b
    ld bc, $8137
    rst $18
    xor a
    db $ed
    scf
    adc h
    ld h, b
    db $fc
    add [hl]
    ld de, $82c1
    xor h
    inc [hl]
    inc de
    ld b, l
    nop
    or h
    ld d, c
    dec bc
    ld a, a
    xor a
    ldh a, [$f1]
    rlca
    adc a
    ld [hl], b
    ld a, b
    pop af
    rlca
    add e
    ld [hl], e
    ld a, b
    ld sp, $8b37
    ld [hl], e
    ld a, b
    ld sp, $9037
    dec b
    cp e
    ld a, b
    jr nc, jr_007_4360

    ld a, [de]
    sub e
    ld c, d
    ld [bc], a
    jp nc, $b688

    ld de, $860a
    dec bc
    ld b, a
    db $ed
    dec b
    ei
    ld b, d
    ld hl, $8a12
    ld b, h
    ld [c], a
    dec l
    rlca
    ld hl, sp+$01
    adc [hl]
    jr c, jr_007_442e

    sub c
    rrca
    xor b
    ld [hl+], a
    ld [$eaa8], a
    xor d
    ld l, $a2
    adc d
    xor b
    xor b
    db $d3
    ldh a, [rTMA]
    ei
    ld [bc], a
    dec a
    pop bc
    ld [de], a
    ld sp, hl
    ld a, e
    call nc, $f714
    dec b
    ld b, [hl]
    adc a
    add sp, $05
    ret


    add hl, de
    and d
    ld l, $9e
    dec [hl]
    add l
    pop hl
    rlca
    ld a, d
    ld e, c
    sbc $80
    sbc h
    ccf
    ret c

    rrca
    db $f4
    dec b
    jr z, jr_007_4405

jr_007_4405:
    add b
    and [hl]
    ld d, e
    add e
    adc a
    ret nz

    add e
    ret nz

    db $10
    ld hl, sp+$42
    ccf
    ld [bc], a
    ld b, c
    ldh [$08], a
    inc b
    ld bc, $ae5c
    rst $10
    xor e
    call nc, $01a2
    nop
    jr nc, jr_007_4439

    xor a
    reti


    xor e
    push hl
    ldh a, [rTIMA]
    and [hl]
    rst $10
    ld l, d
    or [hl]
    db $db
    rra
    ld b, b

jr_007_442e:
    dec de
    add l
    jp z, Jump_007_74e3

    ld a, l
    call c, $0140
    rst $10
    ld [hl], b

jr_007_4439:
    ld h, l
    call c, $bd1b
    dec sp
    sub e
    ld l, [hl]
    ld [c], a
    ret


    cp b
    ld [hl], $2e
    dec e
    add e
    ld a, [bc]
    and b
    ld [de], a
    and b
    rlca
    db $10
    ld a, h
    nop
    jp $3061


    or c
    ld l, e
    cp l
    ldh a, [rIF]
    ld a, h
    ld h, h
    ld a, [c]
    xor l
    rst $30
    ret nz

    ld e, l
    ldh a, [$df]
    ld a, b
    rlca
    sbc $0f
    ret nc

    ld d, [hl]
    add a
    ld b, d
    rst $38
    inc b
    ld l, b
    db $f4
    ld e, d
    add b
    dec bc
    ld a, b
    ld a, [hl-]
    sbc $d5
    scf
    ld l, e
    ld a, [hl-]
    cp l
    ld l, [hl]
    add $1d
    ld [$803e], sp
    db $76
    sbc c
    ld bc, $7a8b
    dec b
    cp d
    sbc $6e
    db $db
    db $db
    sub $f6
    rst $10
    ld l, a
    sub b
    add a
    nop
    nop
    cpl
    ldh a, [$0c]
    sbc d
    ld d, c
    ld h, $90
    dec d
    ld d, b
    ld e, h
    cp $8a
    add hl, bc
    ld [$ea08], a
    ld [hl], l
    ld h, $5d
    ld e, [hl]
    rst $08
    ld d, b
    and b
    ld l, a
    dec bc
    ld d, b
    dec b
    di
    ldh a, [$80]
    cp a
    cp l
    ld [c], a
    dec bc
    adc e
    ld [$006e], a
    add e
    nop
    ld b, b
    add b
    jr nz, jr_007_450f

    ld l, c
    xor h
    nop
    rlca
    cp d
    rst $08
    ld h, a
    xor l

jr_007_44c4:
    ld a, $80
    rra
    ld a, a
    rst $08
    db $e3
    rst $30
    ld a, [$071d]
    inc bc
    jr nc, jr_007_4541

    scf
    rlca
    jp Jump_007_7e00


    ld [bc], a
    add c
    inc bc
    ld [hl], c
    ld a, h
    ld [hl], c
    ld d, [hl]
    ld b, b
    inc d
    xor h
    rst $38
    ld b, [hl]
    and b
    add sp, $3e
    ld c, $00
    ld bc, $75f6
    sbc a
    add l
    ld c, a
    ld [$175e], sp
    ccf
    add b
    add sp, $3c
    nop
    ccf
    sbc h
    adc b
    ld a, b
    ld bc, $cf87
    ldh [$3c], a
    ld bc, $8f07
    ret nc

    ld a, b
    sbc b
    add hl, de
    ldh [$e3], a
    inc c
    inc a
    add e
    add a
    add d
    inc e
    db $fd
    ccf

jr_007_450f:
    sbc h
    ld [hl], a
    inc h
    nop
    add h
    inc bc
    add e
    ld e, $0e
    nop
    rst $08
    ret nz

    inc a
    adc a
    inc c
    dec c
    ld a, [c]
    call c, $8fdf
    db $e4
    inc d
    ldh [$7f], a
    cpl
    pop de
    and c
    call nc, $8d8c
    and c
    jr z, @+$44

    ld de, $5187
    ld h, h
    ld e, d
    rrca
    ld a, $11
    and e
    ld e, h
    jr nc, jr_007_44c4

    and c
    ret c

    ld [hl], $36
    sub [hl]

jr_007_4541:
    sub c
    and e
    ret nz

    rrca
    add a
    ld b, b
    ld b, e
    db $ed
    ld a, [de]
    jr nc, jr_007_458f

    db $e4
    ld l, b
    add c
    rra
    sub h
    inc de
    call c, $970f
    ld b, e
    ld [hl], e
    inc a
    or b
    inc de
    jp Jump_000_1eb3


    ld a, [hl+]
    ld h, $c6
    ld [hl], a
    cp b
    ld d, l
    dec h
    ld b, l
    ld d, l
    ld d, $79
    sub c
    ld h, a
    sub l
    ld [hl], b
    ld d, l
    sbc a
    and l
    cp d
    ld bc, $561a
    push bc
    ld d, c
    ld d, b
    ld d, l
    and b
    ld l, b
    dec b
    ld [hl], c
    ld c, e
    nop
    ld a, [bc]
    ld bc, $8982
    jr nz, jr_007_4590

    nop
    ret nz

    db $f4
    inc bc
    rlca
    ld h, b
    ldh a, [$65]
    ld c, $06
    ret nc

    ld [c], a

jr_007_458f:
    sub [hl]

jr_007_4590:
    and [hl]
    add hl, hl
    and d
    ldh [$e5], a
    ld c, $0e
    ld [hl], b
    inc a
    ret nc

    add hl, bc
    call nz, $dc72
    ld d, b
    ld bc, $70c5

jr_007_45a2:
    ld e, $a6
    xor d
    ld c, $02
    call c, $3caf
    inc bc
    di
    add b
    cp a
    jr c, jr_007_45db

    ld a, [bc]
    jp z, $acb4

    adc $03
    ld e, b
    ld a, [hl-]
    dec sp
    ld b, e
    inc sp
    ret nc

    dec hl
    xor a
    ld l, e
    ld a, [$c1fa]
    ld c, $8c
    ld d, c
    add sp, $7c
    dec bc
    add l
    dec bc
    inc d
    ld [bc], a
    rra
    inc l
    ld d, b
    ld a, b

jr_007_45d0:
    ld h, b
    rra
    add a
    add b
    call z, $1a54
    ret


    or d
    add h
    ld e, d

jr_007_45db:
    jr z, jr_007_45a2

    cp e
    ld d, [hl]
    rst $10
    jr z, jr_007_45e7

    cp e
    ld e, l
    jr c, jr_007_45f0

    adc l

jr_007_45e7:
    sub e
    xor b
    add hl, de
    ld a, [hl+]
    call $ad83
    inc b
    cp c

jr_007_45f0:
    ld bc, $ac83
    sbc b
    adc b
    and e
    adc b
    ld a, h
    rst $28
    ld a, [bc]
    inc c
    ld [hl], b
    ld [bc], a
    xor $48
    ld b, $d2
    ld c, c
    ld a, [de]
    dec hl
    add $0b
    sbc $f9
    cp [hl]
    cpl
    cp e
    sbc $1d
    jr c, jr_007_45d0

    jp Jump_000_2274


    cpl
    add h
    ld [de], a
    xor b
    ld d, l
    ld a, [hl+]
    push bc
    ld d, d
    cp b
    ld d, h
    sub [hl]
    nop
    inc hl
    and $60
    nop
    rrca
    or b
    ld b, b
    adc e
    inc e
    rrca
    and e
    call nz, Call_000_3c0c
    pop de
    and b
    inc c
    inc a
    inc sp
    pop bc
    jp $0c8c


    dec sp
    ret nz

    call z, $af74
    inc de
    inc de
    add b
    db $fc
    ret nz

    cpl
    call nz, Call_007_7708
    add hl, hl
    nop
    ld [$ec41], sp
    xor l
    ld e, $cc
    ldh a, [$e0]
    db $eb
    rlca
    ld c, $f0
    ld [hl], b
    or $0b
    ld c, l
    ld h, b
    or a
    ld [hl], $8d
    adc e
    sub e
    dec e
    inc e
    dec de
    ld c, a
    ld [c], a
    xor b
    rst $38
    inc [hl]
    adc $f8
    ldh [$db], a
    ccf
    jp nz, Jump_000_0003

    ldh a, [$34]
    ld e, $91
    ld b, b
    ldh [$3c], a
    ld b, $02
    ldh [rBCPS], a
    inc e
    ld a, [bc]
    add c
    and b
    jr nc, jr_007_46aa

    add b
    ld [bc], a
    cp $8b
    nop
    ld a, [bc]
    ldh [rP1], a
    xor b
    nop
    ld a, [bc]
    and l
    jr c, @-$13

    nop
    ld [bc], a
    and b
    inc bc
    ld d, a
    ld [hl+], a
    add b
    inc bc
    xor e
    ld h, e
    nop
    dec bc
    cp l
    ld a, a
    ld h, l
    nop
    ld c, $91
    ldh [$cb], a
    inc e
    dec c

jr_007_46a0:
    or c
    call nz, $1cca
    ld [hl], a
    ld b, e
    xor b
    ld de, $010e

jr_007_46aa:
    ld [bc], a
    cp h
    db $10
    add hl, sp
    jp z, $8073

    rrca
    inc sp
    add $f2
    nop
    ld l, a
    ldh [$f8], a
    ld d, b
    ld a, $6a
    inc bc
    db $eb
    ld d, e
    add b
    ld a, a
    jr c, jr_007_46c8

    cp $34
    ret nz

    rra
    ld sp, hl

jr_007_46c8:
    ld l, $52
    cp l

jr_007_46cb:
    pop de
    db $ec
    dec bc
    nop
    rst $38
    rrca
    pop de
    and b
    jr c, jr_007_4745

    or e
    ld sp, hl
    db $db
    inc d
    ld [hl-], a
    inc de
    inc l
    sub c
    ldh a, [$fb]
    rra
    dec l
    or e
    db $ec
    inc bc
    or [hl]
    db $ed
    xor e
    ld [hl], b
    ld e, e
    nop
    nop
    inc sp
    db $fc
    inc bc
    cp c
    ld l, [hl]
    jr nc, jr_007_46a0

    db $e4
    ld h, $3b
    dec sp
    sbc [hl]
    db $e3
    cp l

Jump_007_46f9:
    dec sp
    or d
    ld c, e
    cp h
    rst $28
    adc c
    dec hl
    db $eb
    pop bc
    cp a
    cpl
    or d
    ld hl, sp+$54
    cpl
    add h
    ld [bc], a
    xor e
    ret z

    ld a, [c]
    cp h
    sub d
    ld b, b
    ld [hl], b
    ld [hl], d
    ld b, b
    or e
    call nz, $3cfb
    nop
    and e
    ret nz

    ei
    inc a
    ld a, l
    ld b, e
    jp hl


    ld d, e
    inc a
    rrca

jr_007_4722:
    di
    ret nz

    db $e3
    inc de
    ld c, $f0
    jr c, jr_007_46cb

    inc bc
    adc [hl]
    pop af
    dec sp
    ld [c], a
    dec hl
    ret nz

    ldh [rTMA], a
    inc e
    add a
    jr z, @+$7e

    xor c
    ld a, [de]
    dec [hl]
    ld b, d
    db $e3
    db $ec
    ld d, $3a
    pop bc
    ld l, a
    rst $00
    di
    ccf
    ld b, c

jr_007_4745:
    cp h
    xor b
    ld l, c
    ccf
    ld d, c
    and c
    add b
    ld a, [c]
    ld b, [hl]
    adc b
    ld bc, $1d2a
    ld [hl], $03
    nop
    ldh a, [rHDMA4]
    ld a, $01
    ld b, d
    ret nc

    sbc b
    dec sp
    ld bc, $7d82
    nop
    ld d, h
    ccf
    nop
    rrca
    ret nc

    ld bc, $0050
    ld e, l
    nop
    inc d
    ld b, b
    dec b
    ld a, b
    jr nc, jr_007_4772

    cp d

jr_007_4772:
    nop
    ld a, [hl+]
    jp nz, Jump_007_7022

    ld d, b
    jr z, jr_007_477a

jr_007_477a:
    ld [$0a00], a
    call nz, VBlankInterrupt
    db $10
    inc bc
    ld e, h
    nop
    add b
    nop
    ld a, [hl+]
    ret nz

    ld [$0380], sp
    cp $4d
    jr z, jr_007_4722

    ret


    rst $00
    nop
    rlca
    ldh a, [rP1]
    dec c
    add hl, hl
    sbc b
    ret


    rst $00
    pop hl
    ld sp, hl
    jr c, jr_007_47a0

    ld h, l
    ld [hl-], a

jr_007_47a0:
    ld a, a
    call $12a7
    and b
    ld bc, $81fd
    dec sp

jr_007_47a9:
    sbc [hl]
    ret nc

    and [hl]
    inc sp
    ld a, d
    inc e
    db $f4
    ld a, b
    jp $cfa0


jr_007_47b4:
    nop
    ld [bc], a
    or $85
    ld a, [hl+]
    adc h
    nop
    dec d
    or [hl]
    add hl, hl
    di
    add e
    ld l, d
    ld c, d
    xor c
    ld b, e
    ld d, a
    sbc b
    dec hl
    inc de
    rla
    add b
    ld a, $b9
    dec a
    sub e
    ld e, b
    dec h
    nop
    rla
    push af
    adc [hl]
    ld c, a
    inc bc
    or e
    add b
    inc bc
    sub e
    ldh [rSB], a
    add d

jr_007_47dd:
    sub a
    daa
    adc [hl]
    or l

jr_007_47e1:
    ld b, b
    ld bc, $801b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    ld b, b
    jr c, jr_007_481a

    inc d
    ld [$0305], sp
    ld b, c
    and b
    ret nz

    ld [hl], b

jr_007_47f6:
    ld b, b
    inc h
    inc d
    dec bc
    ld b, $44
    and d
    ld b, b
    ret nc

    ld [hl], b
    inc a
    jr nz, jr_007_4814

    adc c
    call nz, Call_007_41c2
    jr nc, jr_007_47a9

    ld d, [hl]
    inc [hl]
    inc c
    dec bc
    dec b
    jp $9901


    inc b
    ld c, b
    inc [hl]

jr_007_4814:
    dec de
    adc a
    ld c, c
    add e
    add c
    ret nc

jr_007_481a:
    db $f4
    sbc b
    add hl, de
    jr z, jr_007_47b4

    rlca
    call nz, Call_000_1102
    db $10
    adc h
    ld c, b
    dec h
    inc de
    add hl, bc
    push bc
    ld [bc], a
    sbc b
    call nc, $2ac4
    ld a, [hl+]
    dec d
    adc e
    dec b
    and d
    pop hl
    ld a, b
    ret nz

    ld h, d
    ld [hl-], a
    add hl, de
    adc l

jr_007_483b:
    ld b, $a3
    ld h, c
    cp b
    ld [c], a
    ld h, c
    add hl, hl
    inc e
    adc [hl]
    add a
    ld h, e
    pop bc
    add sp, -$08
    ld a, [hl]
    ld b, b
    jr nz, jr_007_47dd

    adc b
    ld h, h
    ld b, d
    add hl, hl
    jr jr_007_47e1

    ld c, b
    inc h
    sub d
    and l
    ld hl, $5952
    jr nc, jr_007_47f6

    ld c, [hl]
    daa
    sub h
    ld a, [bc]
    dec h
    ld [hl+], a
    sbc c

Jump_007_4863:
    ld d, b
    xor d
    ld d, [hl]
    dec hl
    sub [hl]
    dec bc
    dec h
    and d
    call c, $b8a4
    ld e, l
    cpl
    rla
    call z, Call_000_1306
    ld de, $c88c
    ld d, e
    ld [hl-], a
    sbc c
    adc h
    and $82
    pop de
    and [hl]
    db $eb
    add hl, hl
    dec [hl]
    ld a, [de]
    call $d386
    ld [hl], c
    cp h
    ldh [$71], a
    add hl, sp
    inc e
    adc $87
    ld d, e
    or c
    call c, Call_007_79f0
    dec a
    ld e, l
    add d
    add [hl]
    and e
    reti


    ldh a, [$fa]
    ld a, [hl]
    ccf
    and b
    db $10
    jr z, jr_007_48c5

    ld a, [de]
    ld de, $860a
    ld b, e
    and d
    ld de, $ab28
    or d
    dec l
    jr jr_007_483b

    ld b, a
    inc hl
    jp nc, $1409

    sub d
    ld c, l
    jr z, @-$69

    ld c, e
    dec h
    db $d3
    add hl, bc
    sub h
    jp nc, Jump_000_386d

    sbc l
    ld c, a
    daa
    call nc, Call_000_150a

jr_007_48c5:
    ld [de], a
    adc l
    ld c, b
    and l
    ld d, e
    add hl, hl
    push de
    ld a, [bc]
    sub l
    ld d, d
    xor l

Jump_007_48d0:
    ld e, b
    and h
    add sp, -$55
    ld d, l
    jp z, $08f8

    ld a, a
    add b
    ld de, $0500
    ld e, b
    ld bc, $0000
    ld [hl], l
    pop bc
    ret nz

    ld a, [bc]
    and b
    ld [bc], a
    and b
    ld bc, $0002
    ld b, h
    nop
    inc bc
    ldh a, [rSC]
    db $fc
    nop
    xor a
    adc e
    nop
    dec b
    pop af
    jr c, @-$6a

    ld a, [bc]
    ccf
    inc de
    sub b
    ld b, b
    add d
    nop
    rlca
    cp b
    ld bc, $0082
    ld l, d
    add b
    ld a, [de]
    jr nz, jr_007_4910

    db $fc
    or h
    rra
    ld de, $bf90

jr_007_4910:
    and $73
    ld c, c
    xor b
    nop
    stop
    ld [hl], a
    add b
    db $10
    ld [hl], b
    ld d, b
    ld [bc], a
    inc l
    nop
    ei
    and b
    inc a
    ld h, $30
    daa
    ldh [rSB], a
    ld a, [$7a00]
    pop de
    ret nz

    rrca
    ld c, b
    sbc b
    ld b, [hl]
    ld d, d
    nop
    nop
    add b
    ld a, [de]
    push af
    db $10
    ld bc, $0054
    dec d
    nop
    dec hl
    add b
    ld a, [bc]
    ld [$ead2], sp
    dec [hl]
    rla
    or b
    adc $40
    ld [$d4f8], sp
    ld [hl], d
    ld b, l
    ld hl, $dab4
    inc h
    dec c
    ldh a, [$7d]
    or [hl]
    rst $18
    ld l, [hl]
    cp b
    call c, $b726
    ld c, e
    xor l
    jp c, $fb6a

    ld a, [hl]
    scf
    call c, $f407
    dec b
    sbc $66
    xor $0f
    ret z

    xor a
    rst $28
    ldh [$0e], a
    ld c, $fe
    rst $38
    ld l, a
    adc a
    sbc $e0
    rst $30
    db $db
    jp $901d


    rst $00
    db $e4
    or d
    ld [hl-], a
    ld h, a
    adc l
    ld l, $9b
    ld l, e
    nop
    dec e
    ld b, b
    nop
    ld e, d
    ld e, c
    db $76
    sub a
    ld c, b
    ret nc

    ret c

    inc [hl]
    db $76
    dec hl
    inc de
    push af
    db $fd
    ld a, c
    ld a, e
    cp [hl]
    dec e
    db $f4
    scf
    dec b
    db $ed
    cp $c0
    ld e, a
    or b
    rra
    and b
    inc a
    ld l, $67
    ld c, $ff
    ccf
    cp a
    rst $10
    rst $20
    db $fc
    ld d, e
    cp h
    ccf
    adc h
    ld a, a
    add c
    db $f4
    ld e, h
    ld c, l
    dec b
    cpl
    db $10
    cp $99
    ld a, [c]
    ld a, c
    scf
    db $e4
    dec b
    or $44
    ld bc, $007f
    xor b
    db $db
    ld [hl], a
    nop
    ld a, [hl]
    sbc a
    ld [de], a
    or l
    ld b, h
    reti


    db $e4
    add b
    dec c
    ld c, e
    or e
    or a
    adc c
    sbc a
    ret z

    inc bc
    pop af
    inc bc
    db $ec
    ld c, $ff
    ld bc, $1fed
    ld hl, sp+$6e
    adc [hl]
    ld a, [de]
    ld b, d
    cp $d3

jr_007_49e7:
    cp a
    rst $18
    sbc a
    ccf
    xor a
    db $d3
    xor $fc
    ld [bc], a
    ld a, $00
    rra
    or a
    ret nz

    jr nz, jr_007_49e7

    nop
    jr nz, jr_007_4a02

    add hl, bc
    reti


    add c
    jr nz, jr_007_4a57

    inc d
    rra
    nop

jr_007_4a02:
    ld bc, $40f0
    rrca
    nop
    nop
    ld [hl], b
    jr nz, jr_007_4a1a

    ld [bc], a
    nop
    or b
    jr nc, jr_007_4a1f

    inc bc
    nop
    ret nc

    add hl, sp
    cp d
    ld l, [hl]
    ld h, c
    sub c
    db $fd
    cp h

jr_007_4a1a:
    ccf
    jp Jump_007_76f8


    rra

jr_007_4a1f:
    ld a, l
    rst $18
    ld h, a
    ret


    srl a
    rst $08
    db $e3
    ret nz

    db $10
    adc c
    rst $08
    add b
    ld h, b
    rst $28
    inc c
    rrca
    ldh a, [$9c]
    rst $38
    inc c
    ld c, $f0
    and b
    push hl
    ld a, [bc]
    ldh [$62], a
    add b
    ld h, b
    ld a, [hl-]
    add hl, bc
    add c
    ret nc

    db $ec
    jr nc, jr_007_4a47

    jp $4ec8


jr_007_4a47:
    add c
    sub c
    jr nz, jr_007_4a57

    ld [bc], a
    inc bc
    add b
    sub b
    ld b, h
    ld e, $00
    add c
    ret nc

    ld a, b
    rra
    sub e

jr_007_4a57:
    inc bc
    ldh a, [$fc]
    ei
    ld sp, $60cc
    db $e4
    ld sp, hl
    ccf
    adc a
    ld d, b

jr_007_4a63:
    jr c, jr_007_4a63

    ld [$2550], sp
    push af
    or d
    ld e, [hl]
    jp c, $dcc3

    ld a, b
    rra
    rst $08
    add l
    and $1f
    add a
    add e
    ld hl, sp+$71
    cp d
    sbc d
    dec de
    and a
    dec h
    adc b
    ld c, l
    ld c, [hl]
    and b
    cp b
    push hl
    ld bc, $22c6
    inc c
    and c
    jr nc, @+$51

    inc bc
    ld b, b
    ret nc

    jr c, jr_007_4a9e

    add hl, bc
    db $e4
    ldh [rNR14], a
    adc e

Jump_007_4a94:
    ldh [$9c], a
    ccf
    ld c, h
    ld c, $53
    sub h
    add hl, bc
    ld [bc], a
    ld e, l

jr_007_4a9e:
    rst $20
    ld a, b
    inc bc

Call_007_4aa1:
    nop
    jp nz, $e060

    dec sp
    rrca
    ld b, e
    ldh [$fc], a
    inc a
    rrca
    inc bc
    ld h, b
    reti


    ld [de], a
    inc l
    dec bc
    nop
    ret nc

    inc a
    add hl, hl
    ld c, l
    or b
    ld l, b
    ld d, $1d
    ld [$c2c3], sp
    nop
    sub b
    ld c, c
    ld a, [c]
    ld [hl], d
    inc d
    inc bc
    and c
    ld h, b
    inc [hl]
    ld a, [bc]
    inc bc
    ld b, b
    ret z

    ld c, b
    dec bc
    rlca
    ld b, c
    or l
    and b
    ld a, [hl]
    jr nz, jr_007_4b1a

    di
    add h
    rst $38
    jr c, jr_007_4b29

    db $d3
    adc h
    db $db
    add hl, de
    rst $20
    and e
    ldh [$e8], a
    ld a, [hl-]
    rrca
    inc bc
    ldh a, [$f4]
    ccf
    rrca
    inc bc
    or b
    ldh a, [$3f]
    adc [hl]
    inc hl
    ld hl, sp-$20
    ld bc, $90ac
    jr jr_007_4afd

    ld h, a
    ld h, h
    db $10
    inc d
    ld b, $06
    add c

jr_007_4afd:
    ldh [$28], a
    ld c, $3d
    add hl, bc
    jp $d860


    db $10
    inc b
    inc bc
    nop
    ret nz

    ld b, h
    adc a
    ld [bc], a
    ld b, d
    ld b, $a1
    ret nz

    jr nc, jr_007_4b31

    db $e3
    cp c
    ld bc, $6470
    ccf
    inc c

jr_007_4b1a:
    rlca
    pop af
    pop bc
    xor h
    ld a, $4e
    ld h, e
    ret c

    rst $28
    scf
    adc $f3
    db $fc
    rst $08
    cpl

jr_007_4b29:
    ld c, h
    scf
    or d
    rst $30
    ld a, e
    ld l, a

jr_007_4b2f:
    add a
    or b

jr_007_4b31:
    rst $18
    xor h
    call z, $c006
    cp [hl]
    jr nc, jr_007_4b88

    ld a, [c]
    rlca
    ld [bc], a
    rra
    ret z

    ld d, $d1
    rst $10
    ld b, $c1
    ld a, [c]
    ld [$3083], sp
    inc b
    ld bc, $a080
    ld l, $0c
    add e
    ldh a, [$c4]
    cpl
    adc l
    ld hl, $e2f8
    ld c, $43
    ld hl, sp-$5e
    ld b, c
    ld d, h
    ld b, b
    dec de
    adc h
    rrca
    inc bc
    ret nz

    ldh [$3e], a
    ld c, d
    ld b, $81
    ret nc

    ret nc

    dec sp
    ld d, $06
    ld [hl], e
    add b
    sbc a
    cpl
    call z, Call_007_7cf1
    xor a
    daa
    add $f0
    db $fc
    rst $08
    call z, $3cf3
    cp a
    cpl
    cp [hl]
    jr nc, jr_007_4bdc

    dec bc
    dec sp
    ret nz

    ret z

    inc de
    ei
    ld a, $72

jr_007_4b88:
    and d
    ld d, a
    ret z

    db $fc
    sbc b
    rst $08
    add [hl]
    xor c
    jp hl


    ld a, d
    ld e, [hl]
    ld [hl], a
    ld [$4cf6], sp
    nop
    db $e3
    or h
    ld e, $3e
    pop bc
    db $d3
    db $fc
    adc h
    ccf
    bit 6, c
    jr c, jr_007_4b2f

    ld sp, $52c4
    inc c
    ld [bc], a
    jr nz, jr_007_4bf4

    jr jr_007_4bbe

    rst $00
    ld de, $c207
    ld c, $e3
    ld [hl], a
    adc b
    ld [bc], a
    inc bc
    ld h, b
    ccf
    adc b
    ld hl, $2080

jr_007_4bbe:
    ld [hl], e
    sbc l
    ld [de], a
    ld [$33fd], sp
    rrca
    inc sp
    ret c

    adc a
    ld sp, $7a84
    ld [hl+], a
    adc b
    call z, Call_007_7341
    cp h
    rrca
    ld h, e
    scf
    ret nc

    inc l
    rst $30
    ld bc, $b0cf
    inc d
    ei

jr_007_4bdc:
    ccf
    ret z

    ld b, $c9
    or b
    ld [c], a
    cpl
    db $e3
    ld bc, $38af
    jr @-$76

    ld h, d
    ld l, b
    ld e, h
    add hl, sp
    db $10
    inc a
    db $db
    inc bc
    ld [de], a
    db $e4
    cp c

jr_007_4bf4:
    dec [hl]
    ld [hl], d
    ld e, d
    and a
    dec a
    ld l, c
    ld l, e
    jr c, @+$79

    ld l, c
    jr nz, @+$35

    inc bc
    daa
    ld c, c
    ld b, [hl]
    ld d, c
    cp d
    jr nc, jr_007_4c10

    cp $00
    ld a, [hl-]
    adc h
    ld [hl], d
    inc b
    ld [hl], a
    sub l

jr_007_4c10:
    ld de, $0000
    jp c, Jump_000_00c4

    add d
    sbc $18
    add hl, bc
    rlca
    ld hl, sp-$10
    ld [bc], a
    rra
    sbc d
    add hl, de
    rst $18
    ld [$02c0], a
    inc e
    ld hl, sp-$11
    call z, $e373
    jp nz, $c71b

    rrca
    inc d
    cpl
    inc c
    ld e, $51
    db $fd
    xor [hl]
    ld [$141e], sp
    ld a, [hl]
    dec de
    ld l, [hl]
    add e
    or $2b
    ld c, d
    ld e, d
    sub a
    or $e9
    cp a
    ld a, c
    push de
    db $f4
    ld e, l
    ld e, l
    ld d, [hl]
    ret nc

    db $f4
    dec [hl]
    ld [$9142], sp
    call nz, Call_007_655d
    ld c, [hl]
    cp [hl]
    inc h
    ld h, c
    ld a, [de]
    push hl
    sub d
    rst $18
    xor e
    jp hl


    ld c, e
    dec c
    db $10
    ld de, $6dec
    cp c
    db $f4
    ld c, [hl]
    ld b, e
    nop
    ld b, b
    jr nz, jr_007_4c88

    inc b
    nop
    ret nz

    ld c, b
    ld b, b
    add a
    ld [hl+], a
    ld bc, $40f2
    adc a
    inc b
    rrca
    add b
    inc de
    and [hl]
    db $fc
    ld e, $f4
    add d
    ldh [rP1], a
    ld h, h
    ld [hl-], a
    inc e
    add h
    inc bc
    ret nc

jr_007_4c88:
    inc b
    ld b, d
    ld a, h
    and b
    rra
    db $10
    rra
    ret z

    rrca
    db $f4
    inc bc
    db $fc
    ld bc, $860b
    jp $0f00


    ldh [$0c], a
    ld a, [hl-]
    daa
    rrca
    add l
    cp [hl]
    sbc $0b
    or e
    add e
    ld l, h
    ld h, b
    ei
    ld [$c23a], sp
    rrca
    or b
    ld [bc], a
    inc l
    nop
    xor e
    nop
    dec a
    nop
    rrca
    ret nc

    inc bc
    call nz, $f700
    sub e
    ld c, d
    nop
    rrca
    ld e, c
    ld a, c
    db $76
    ld e, [hl]
    dec b
    nop
    dec e
    ld b, b
    ld bc, $0150
    ld d, h
    nop
    ld bc, $3500
    ret nz

    ld [$2009], sp
    ld bc, $1511
    and d
    jp nz, $f0c7

    ldh a, [rTIMA]
    ld a, [de]
    sub a
    dec bc
    and l
    ld b, l
    ld hl, $19cc
    ld h, b
    nop
    ld hl, $874c
    xor a
    call nz, $da14
    xor h
    dec l
    cp a
    ld c, c
    xor l
    nop
    db $10
    ld h, b
    rlca
    ld a, b
    nop
    ld de, $7e5e
    ld d, a
    ld l, c
    ldh a, [$f9]
    db $eb
    ld d, h
    nop
    ld de, $40af
    ld b, b
    nop
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_007_4d24

    ld [de], a
    rrca
    ld [$8184], sp
    ld h, b
    add b
    ld h, b
    jr c, jr_007_4d36

    ld [de], a
    ld a, [bc]
    dec b
    ld [bc], a
    pop bc
    sub c
    ld b, b
    ld l, b
    jr c, jr_007_4d3e

    db $10
    adc d
    inc bc
    ld [bc], a

jr_007_4d24:
    ld sp, $9010
    ld c, h
    add hl, hl
    ld de, $4589
    ld [bc], a
    or d
    db $10
    or b
    ld e, [hl]
    add hl, hl
    inc e
    adc b
    add [hl]
    inc h

jr_007_4d36:
    ld de, $9818
    ld h, h
    inc [hl]
    dec de
    ld c, $07

jr_007_4d3e:
    ld b, c
    ld b, c
    jp hl


    ld b, h
    add [hl]
    ld d, a
    ld hl, $8789
    call nz, Call_000_1102
    ld [$228a], sp
    inc hl
    adc l
    call $92e5
    ld hl, $9420
    ld c, h
    daa
    inc d
    ld a, [bc]
    ld b, c
    ld b, d
    xor d
    inc d
    xor d
    adc c
    inc de
    dec d
    adc e
    dec b
    and d
    pop hl
    ld a, b
    ret nz

    ld h, e
    ld [hl], $a7
    adc $62
    add e
    ld hl, $d098
    ld l, d
    ld [hl], $1b
    sub $41
    ld d, e
    adc c
    ld l, h
    ld d, b

jr_007_4d79:
    ld [hl], b
    add hl, sp
    dec e
    ld c, $c7
    add e
    db $db
    dec e
    sub [hl]
    ld b, h
    ld a, $1f
    sub b
    ld [$2224], sp
    add hl, de
    db $10
    adc e
    ld c, [hl]
    or d
    ld d, c
    ld [$72c4], sp
    ld b, c
    inc h
    sub h
    ld c, e
    ld h, $13
    ld c, c
    call nz, $84f2
    and [hl]
    ret z

    ld d, c
    add hl, hl
    ld b, h
    ld c, d
    ld [hl], c
    ld [de], a
    and c
    ld d, h
    xor h
    ld d, a
    inc l
    ld b, h
    ld c, e
    dec h
    xor b
    adc c
    ld l, h
    cp b
    ld e, l
    cpl
    rla
    set 4, [hl]
    inc c
    reti


    ld a, h
    jp nz, $315f

    ld h, a
    adc e
    and $3c
    reti


    sub b
    rlc c
    nop
    ld a, a
    add b
    ld de, $0500
    ld e, b
    ld bc, $0000
    ld [hl], l
    pop bc
    ret nz

    ld a, [bc]
    and b
    ld [bc], a
    and b
    ld bc, $0002
    ld b, h
    nop
    inc bc
    ldh a, [rSC]
    db $fc
    nop
    xor a
    adc e
    nop
    dec b
    pop af
    jr c, jr_007_4d79

    ld a, [bc]
    ccf
    inc de
    sub b
    ld b, b
    add d
    nop
    rlca
    cp b
    ld bc, $0082
    ld l, d
    add b
    ld a, [de]
    jr nz, jr_007_4dfc

    db $fc
    or h
    rra
    ld de, $bf90

jr_007_4dfc:
    and $73
    ld c, c
    xor h
    ld c, d
    ld h, l
    dec [hl]
    ld a, a
    ccf
    rst $18
    ld l, a
    ret


    adc h
    add hl, bc
    ei
    ld a, [hl-]
    ld a, b
    cpl
    ret c

    ld [de], a
    add hl, hl
    cp h
    add hl, bc
    or $07
    and d
    ret z

    inc hl
    ret nz

    inc bc
    ld a, [$9502]
    dec e
    adc c
    cp e
    jp $d0ef


    dec e
    ld b, d
    sbc c
    dec [hl]
    ccf
    cp a
    rst $10
    rst $20
    or $f8
    cp $04
    ld [$3b00], sp
    ret nz

    ld [$2838], sp
    ld bc, $0016
    ld a, l
    jp c, Jump_000_135e

    ldh [$03], a
    ldh a, [rP1]
    db $fd
    nop
    dec a
    ld l, [hl]
    nop
    rlca
    and h
    ld c, h
    inc hl
    add hl, hl
    nop
    nop
    ld b, b
    dec c
    ld a, e
    ret nc

    nop
    xor d
    nop
    ld a, [bc]
    add b
    dec d
    ret nz

    dec b
    inc b
    ld l, c
    ld [hl], l

jr_007_4e5c:
    ld a, [de]
    adc e
    ld [c], a
    xor h
    ld b, b
    inc b
    ld a, h
    ld l, d
    add hl, sp
    ld d, b
    ret z

    ret z

    ld h, d
    ld l, l
    ldh a, [$7e]
    ld d, a
    cpl
    sub [hl]
    call z, Call_000_26e6
    cp c
    call z, $fdeb
    xor $f8
    ld [hl], a
    db $db
    inc e
    dec c
    rst $30
    inc bc
    db $fd
    add c
    ld b, e
    ld a, a
    db $d3
    jp hl


    pop af
    nop
    dec bc
    ldh a, [$08]
    ld hl, sp+$04
    inc a
    ld [bc], a
    ld c, $01
    inc bc
    nop
    add c
    ld [$8973], sp
    ld b, b
    ld b, b
    add hl, hl
    cp [hl]
    ei
    ld a, [hl]
    ccf
    db $10

jr_007_4e9d:
    ld bc, $80c0
    jr nc, jr_007_4ec0

    rst $38
    ld a, a
    ld c, d
    ld b, b
    rra
    ret z

    rlca
    di
    nop
    cp h
    ld h, b
    daa
    inc e
    ccf
    jp Jump_000_37f5


    ld hl, sp+$3d
    rst $28
    jr nc, jr_007_4e5c

    or $9f
    ldh [rPCM34], a
    db $db
    jp $e0bd


jr_007_4ec0:
    rst $28
    ld hl, sp-$44
    ld [hl-], a
    ld h, a
    adc l
    jp nc, Jump_007_50ed

    ld a, [hl-]
    add b
    nop
    or a
    ld b, d
    db $ed
    jp nc, $f0e3

    call nz, $b1fc
    ld a, b
    cp h
    db $ec
    jp hl


    rst $38
    ld a, [hl-]
    ld a, a
    ld d, b
    rra
    rst $28
    jp z, Jump_007_7c74

    ld bc, $e03f
    nop
    dec b
    ld d, l
    add c
    nop
    ld [hl-], a
    ld bc, $6f08
    rst $00
    pop hl
    ld [$27fb], sp
    ld [$1851], sp
    ld [bc], a
    ld e, c
    ld e, h
    ld [hl], h
    sbc $07
    ld l, l
    db $db
    ld e, b
    ld c, c
    scf
    nop
    ld b, b
    rla
    inc c
    rrca
    ld [bc], a
    inc bc
    ld [hl], b
    ldh [$33], a
    rrca

jr_007_4f0c:
    ld [hl+], a
    ld [$7180], sp
    rra
    adc a
    db $10
    jr c, jr_007_4e9d

    dec e
    ret nz

    ld b, e
    db $ed
    ld c, b
    ccf
    push de
    ld l, b
    cp c
    ld d, l
    add b
    ld h, e
    jr jr_007_4f30

    rst $28
    adc l
    rra
    dec d
    push bc
    db $fc
    ld c, a
    rrca
    di
    ld [c], a
    ld a, [hl-]
    adc [hl]
    sbc d

jr_007_4f30:
    inc bc
    db $fd
    ld l, h
    inc a
    dec d
    ld d, e
    ldh a, [rSC]
    sub b
    db $e4
    ld e, c
    ld [de], a
    ld b, a
    sub b
    push bc
    pop af
    add l
    ld b, e
    dec de
    adc c
    di
    inc a
    ccf
    scf
    jp nz, $0804

    cp $22
    rst $00
    ld [hl], c
    db $10
    ld h, b
    jr nz, jr_007_4f5e

    inc bc
    ld b, b
    cp b
    ld e, $0d
    add e
    ldh [$fc], a
    rra
    rrca
    ret nz

jr_007_4f5e:
    ld [hl], b
    db $fc
    inc de
    dec bc
    jp nz, $1e90

    inc b
    ld b, e
    ret nc

    adc b
    ld [hl], $0e
    ld b, [hl]
    or b
    call c, Call_000_2bd3
    add hl, bc
    ld [hl], c
    and b
    cp [hl]
    db $10
    adc $70
    ld d, b
    ldh a, [$03]
    rst $08
    add b
    inc e
    dec e
    jr c, jr_007_4f0c

    db $d3
    ret z

    db $ed
    inc b
    adc a
    ret nc

    ld [$11b9], sp
    add a
    inc bc
    ld a, $01
    ccf

jr_007_4f8e:
    and b
    ld b, $4d
    ld c, d
    ld h, a
    sub e
    dec [hl]
    ld l, b
    rst $38
    ld d, [hl]
    add a
    or $88
    rst $38
    ld l, c
    sbc d
    ld b, [hl]
    sbc c
    xor b
    ld d, c
    ld a, [de]
    or e
    ld hl, sp+$02
    and [hl]
    sub $fa
    ld a, b
    nop
    and [hl]
    rst $08
    and $b4
    inc a
    rrca
    ld hl, $1e77
    and h
    inc bc
    nop
    ret nz

    db $10
    inc b
    ld l, a
    xor d
    or b
    jr nz, jr_007_4fc7

    ld b, $01
    add d
    ld [hl], b
    ld a, h
    inc h
    rlca
    ld a, [bc]

jr_007_4fc7:
    call nc, Call_000_1c80
    inc c
    add b
    ldh [$e4], a
    daa
    dec b
    jr nc, jr_007_4f8e

    ld a, e
    add hl, bc
    call nc, Call_007_60d0
    rra
    inc bc
    nop
    ei
    ld d, $c7
    inc bc
    pop bc
    ret nc

    ld a, b
    ld sp, hl
    ld c, [hl]
    add a
    push af
    ld [hl], b
    rst $38
    ld d, a
    db $ed
    dec d
    ld a, c
    db $d3
    or l
    add hl, de
    rst $00
    db $dd
    ld sp, hl
    ld a, [hl]
    rra
    add a
    ld a, [$b78b]
    jr nz, @+$76

    ld hl, $28b7
    ld b, $03
    nop
    ldh [$b9], a
    ld a, [bc]
    dec bc
    sbc b
    and b
    ld b, $00
    add b
    ld [hl], b
    inc d
    inc bc
    ret nz

    sub b
    dec b
    cp h
    cp h

jr_007_5010:
    ld de, $7c20
    ld de, $c71a
    ld [hl], e
    call c, $578f
    sub l
    jp z, $343d

    ld d, h
    db $d3
    add $80
    push af
    ld a, $b0
    inc bc

jr_007_5026:
    db $e4
    or $c0
    ldh a, [rHDMA3]
    reti


    db $d3
    ld [hl], l
    ld d, e
    inc c
    add hl, hl
    ret c

    ld [hl], a
    jr nc, jr_007_5010

    ld h, b
    cp $7d
    add sp, -$25
    ld [hl], c
    ld b, l
    ld d, e
    and b
    ld [hl], d
    inc b
    add c
    or a
    and b
    ld [hl], b
    ld [bc], a
    dec d
    ld [$371b], sp
    dec l
    ld [bc], a
    ld e, $c4
    or b
    ld [hl], b
    inc de
    add l
    ld [c], a
    ret nz

    inc b
    scf
    inc sp
    push de
    ldh [$3c], a
    rrca
    ld bc, $d0f2
    dec e
    push bc
    inc a
    ld c, a
    db $ec
    rst $00
    inc sp
    ccf
    adc a
    inc sp
    ldh a, [$e3]
    ccf
    ld c, $73
    ldh [$cf], a
    ld e, e
    dec e
    cp h
    ld sp, hl
    call c, Call_000_158b
    ld h, [hl]
    xor l
    xor d
    pop de
    ld a, [de]
    cp e
    ld l, l
    or c
    ld l, e
    ldh [rNR13], a
    db $ec

Jump_007_5081:
    ld [bc], a
    ld a, $16
    ldh [rNR12], a
    sbc a
    ld [hl], c
    db $db
    ld [hl], e
    ret nz

    sub b
    ld [hl], b
    ld e, e
    rst $20
    dec d
    push bc
    ld bc, $7080
    inc l
    inc c
    ld [hl], e
    ret nc

    inc l
    adc h
    dec sp
    add hl, bc
    jp c, $a756

    inc de
    ld c, b
    ld h, d
    add sp, -$4a
    jr nc, jr_007_5026

    and e
    inc h
    push hl
    inc sp
    ld a, [hl]
    adc a
    db $eb
    ld hl, sp-$08
    ld l, c
    ld l, c
    ret nc

    add hl, bc
    ld d, l
    and d
    ld [hl], a
    ld d, b
    ld b, $89
    ld c, h
    ld e, h
    ld a, b
    inc e
    ld bc, $7720
    pop bc
    ld [$0dc2], sp
    nop
    pop bc
    and b
    ld e, b
    inc d
    inc bc
    ld [bc], a
    add b
    ldh [$30], a
    inc c
    inc c
    ld l, c
    scf
    ld a, a
    adc b
    nop
    db $fd

Jump_007_50d6:
    call z, Call_000_1110
    ld e, [hl]
    ld c, c
    inc d
    xor b
    jr z, @-$58

    ld c, c
    rra

Jump_007_50e1:
    ld c, l
    dec d
    and l
    ld [hl], b
    db $dd
    rrca
    adc [hl]
    ld [hl], b
    ld h, c
    jr nz, @+$7a

    ld e, [hl]

Jump_007_50ed:
    inc de
    ld l, h
    jr nc, jr_007_514b

    cp d
    ld d, b
    nop
    db $db
    inc bc
    ld [de], a
    xor $a9
    dec l
    db $eb
    ld a, [hl-]
    or b
    ld [$01c2], sp
    inc c
    ld b, d
    db $10
    ld b, h
    jr nz, jr_007_5121

    adc [hl]
    db $db
    or l
    db $ed
    ld l, d
    ld h, l
    add sp, $01
    nop
    ret nz

    jr z, jr_007_5183

    rr a
    call nc, Call_007_41d4
    xor h
    ld d, c
    ld a, d
    ld l, a
    add hl, de
    ld l, c
    ld a, [c]
    ld d, $ae
    xor a

jr_007_5121:
    set 5, e
    ld a, d
    push bc
    rla
    db $76
    ld d, l
    ld c, a
    and b
    add hl, de
    xor a
    db $10
    dec de
    ld a, a
    ld e, b
    sub b
    inc a
    ld c, $45
    cp l
    cp a
    rlca
    pop bc
    nop
    ld a, l
    inc d
    ld [$3f39], sp
    inc bc
    jp nz, Jump_000_1162

    db $76
    add hl, de
    add h
    ld b, e
    ret nc

    call nc, Call_000_0a21
    ld b, a

jr_007_514b:
    ld de, $3976
    ld h, e
    ei
    ld d, c
    add h
    ld l, e
    call z, $12f3
    jp $b045


    ld l, h
    add b
    ld b, $cc
    ldh [rP1], a
    ccf
    add $d4
    ret nz

    add $fb
    and b
    ld [bc], a
    db $eb
    ld e, $04
    inc bc
    ldh a, [$84]
    ldh a, [$7c]
    rra
    dec b
    set 4, h
    add d
    rlca
    dec a
    pop bc
    pop af
    db $fc
    ld [hl], l
    and c
    ld b, $5d
    sub a
    rla
    sbc c
    ld h, $5d
    sub a

jr_007_5183:
    dec d
    call Call_007_7b71
    sub a
    rla
    or c
    ld [$9860], a
    dec b
    db $ed
    ld a, l
    ld b, d
    db $10
    ld h, h
    ld de, $4592
    ld d, [hl]
    sbc $5d
    ld b, [hl]
    reti


    ld [de], a
    add h
    sbc c
    inc h
    ld h, h
    adc h
    dec b
    ld b, l
    sub d
    rra
    ld c, b
    dec [hl]
    or l
    sub c
    ld d, c
    inc d
    ld l, l
    sub c
    ld h, l
    ld e, b
    sub $16
    ld c, c
    ld l, a

Jump_007_51b3:
    ld e, e
    ld d, l
    dec b
    db $ed
    ld a, [hl+]
    ld e, [hl]
    add hl, de
    inc h
    inc b
    nop
    nop
    ld b, b
    ld b, b
    jr nz, @+$1a

    db $10
    ld [$0305], sp
    ld bc, $00c1
    sub b
    ld d, h
    inc e
    rla
    inc b
    ld b, $03
    ld b, c
    ret nz

    ldh a, [$80]
    ld b, b
    ld [hl+], a
    ld [de], a
    add hl, bc
    inc b
    jp nz, Jump_007_5081

    or b
    ld e, h
    ld sp, $0c19
    push bc
    add e
    ld b, c
    or b
    db $e4
    ld e, d
    ld l, $12
    ld c, $87
    add e
    ld [c], a
    ld bc, $8808
    ld b, a
    ld hl, $8993
    inc h
    pop de
    ld l, b
    ret nz

    sub h
    ld c, h
    daa
    inc d
    ld a, [bc]
    ld b, l
    ld b, d
    or c
    ld h, b
    ld c, d
    ld b, l
    ld d, $99
    ret


    db $e3
    ld [bc], a
    pop de
    ld [hl], b
    cp h
    ld h, b
    ld sp, $0419
    ld b, $73
    ld sp, hl
    sub h
    jp nc, Jump_000_342e

    ld a, [de]
    add h
    ld b, $c3
    ld [hl], c
    ret nz

    db $e4
    jr nz, jr_007_5259

    and [hl]
    ret nc

    ld l, c
    pop hl
    ld de, $f0d8
    jr nz, @+$3f

    rra
    rrca
    ret z

    ld bc, $0d02
    ld l, b
    ld hl, $9a42
    add h
    adc b
    ld b, c
    ld [bc], a
    add hl, de
    db $10
    adc d

jr_007_5239:
    ld b, [hl]
    ld [$ec11], sp
    or $98
    cp c
    ld [hl+], a
    inc l
    ld c, c
    dec h
    ld [de], a
    ret


    add c
    ld [bc], a
    ld l, c
    jr c, @-$5f

    ld c, [hl]
    sub e
    sub h
    inc h
    pop hl
    ld [bc], a
    adc c
    ld c, b
    and a
    daa
    ld a, [hl+]
    ld h, b
    ld h, d
    push bc

jr_007_5259:
    ld e, c
    add hl, sp
    ld e, b
    xor [hl]
    ld e, b
    jp nz, $a862

    dec h
    sub d
    call nc, $b758
    daa
    ld l, $17
    ld c, e
    ret c

    ld b, d
    db $fc
    ld e, b
    ret nz

    ld h, c
    ld sp, $cc18
    add [hl]
    ld b, e
    ld l, $90
    ret z

    ld h, [hl]
    inc sp
    sbc d
    inc [hl]
    and $43
    ld c, [hl]
    sub b
    call nc, $806b
    add b
    ld a, a
    add b
    ld de, $0500
    ld e, b
    ld bc, $0000
    ld [hl], l
    pop bc
    ret nz

    ld a, [bc]
    and b
    ld [bc], a
    and b
    ld bc, $0002
    ld b, h
    nop
    inc bc
    ldh a, [rSC]
    db $fc
    nop
    xor a
    adc e
    nop
    dec b
    pop af
    jr c, jr_007_5239

    ld a, [bc]
    ccf
    inc de
    sub b
    ld b, b
    add d
    nop
    rlca
    cp b
    ld bc, $0082
    ld l, d
    add b
    ld a, [de]
    jr nz, jr_007_52bc

    db $fc
    or h
    rra
    ld de, $bf90

jr_007_52bc:
    and $73
    ld c, c
    xor b
    nop
    stop
    ld [hl], a
    add b
    db $10
    ld [hl], b
    ld d, b
    ld [bc], a
    inc l
    nop
    ei
    and b
    inc a
    ld h, $30
    daa
    ldh [rSB], a
    ld a, [$7a00]
    pop de
    ret nz

    rrca
    ld c, b
    sbc b
    ld b, [hl]
    ld d, d
    nop
    nop
    add b
    ld a, [de]
    push af
    db $10
    ld bc, $0054
    dec d
    nop
    dec hl
    add b
    ld a, [bc]
    ld [$ead2], sp
    dec [hl]
    rla
    or b
    adc $40
    ld [$d4f8], sp
    ld [hl], d
    ld b, l
    ld hl, $dab4
    inc h
    dec c
    ldh a, [$7d]
    or [hl]
    rst $18
    ld l, [hl]
    cp b
    call c, $b726
    ld c, e
    xor l
    jp c, $fe6a

    ld a, [hl]
    or l
    db $dd
    rlca
    and h
    dec l
    sbc $66
    xor d
    ld a, [hl+]
    xor h
    adc c
    xor e
    and d
    dec l
    db $fd
    cp $a7
    cpl
    sub e
    sub [hl]
    inc h
    sub l
    or [hl]
    ld e, $66
    ld a, a
    ld a, a
    or a
    rst $08
    rst $28
    or a
    add [hl]
    ld d, a
    cpl
    sub [hl]
    call z, Call_000_24e6
    rst $08
    ld a, [de]
    ld e, l
    ld [hl], $d6
    nop
    ld a, [hl-]
    add b
    nop
    or h
    or d
    db $ed
    ld l, $91
    xor b
    or b
    ld l, d
    xor h
    ld d, [hl]
    dec hl
    set 5, l
    ld hl, sp-$11
    ld a, b
    dec l
    ld e, c
    ld c, l
    dec h
    ld l, d
    xor c
    xor d
    xor c
    ld l, e
    dec c
    ld e, c
    ld c, h
    and c
    xor c

jr_007_5359:
    dec l
    ld l, b
    dec l

jr_007_535c:
    ld l, c
    add hl, bc
    ld e, e
    ld c, d
    ld d, d
    jp nc, $d454

    sub d
    ld [hl], $92
    sub [hl]
    and l
    or l
    ld hl, $4d65
    rst $08
    ld l, $a8
    adc c
    xor e
    inc hl
    ld l, d
    ld c, e
    adc e
    push bc
    add $f3
    ld c, d
    ld c, d
    sbc $e1
    ld e, l
    ld d, b
    ld d, l
    ret nz

    ld hl, sp-$73
    jp hl


    ld a, [c]
    jp c, $aa9d

    dec hl
    ld c, d
    ld a, [de]
    push de
    push bc
    inc de
    ld a, d
    ld e, b
    xor d
    xor l
    ld a, [hl+]
    dec hl
    or b
    ld sp, hl
    dec d
    ld sp, hl
    db $fd
    cp [hl]
    cp a
    call nc, $b4fe
    db $f4
    cp c
    sbc e
    ld sp, hl
    cp $3f
    ld d, e
    inc sp
    db $f4
    cp $3f
    rrca
    and e
    ldh a, [$fd]
    ld a, $c5
    inc sp
    jr nc, jr_007_535c

    dec l
    ld c, c
    ld d, d
    ld l, b
    ld l, $0c
    ld b, l
    pop hl
    add h
    cp a
    jr nc, @+$49

    ld [c], a
    add hl, bc
    ld b, [hl]
    ld [hl], d
    adc $c0
    ld d, b
    jr nz, jr_007_53ff

    inc c
    ld bc, $8000
    ld b, d
    ld de, $8a28
    jr nz, jr_007_5359

    and d
    ld e, b
    sbc c
    ld [de], a
    ld [de], a
    add a
    ld d, b
    jr jr_007_53df

    nop
    ret nz

    jr nc, jr_007_53e4

    cpl

jr_007_53df:
    ld d, h
    and d
    ld h, e
    ld h, h
    daa

jr_007_53e4:
    cpl
    add h
    db $10
    db $fc
    ret nz

    ccf
    ret z

    inc bc
    ld a, h
    ldh [$3f], a
    adc $06
    call nz, Call_000_3ef7
    rlca
    pop af
    ld a, h
    xor a
    daa
    jp $bcf2


    rst $18
    inc de
    rst $08

jr_007_53ff:
    ldh a, [$bc]
    rst $10
    dec bc
    rst $08
    ldh a, [rNR34]
    ld c, [hl]
    ccf

jr_007_5408:
    adc a
    sub e
    db $fc
    ld hl, sp-$6c
    push hl
    ld e, c
    ld d, d
    ld d, a
    sub h
    rst $08
    ret nz

    db $10
    ld hl, sp+$00
    dec h
    jp $08e0


    inc a

jr_007_541c:
    nop
    add hl, bc
    add [hl]
    ld h, e
    adc c
    and $54
    ld c, b
    rrca
    ld [bc], a
    ld h, [hl]
    ld l, c
    xor d
    ld l, e
    adc b
    add a
    ret nz

    db $10
    ld a, a
    ld e, $07
    or c
    ldh a, [$7f]
    rra
    inc bc
    ldh a, [$f0]
    dec a
    rrca

jr_007_543a:
    add e
    ld sp, hl
    db $e4
    ld a, $9e
    ld h, h
    jp hl


    ld hl, sp+$03
    ccf
    add sp, $0a
    ld a, [bc]
    add c
    and b
    ld e, d
    di
    db $fc
    db $fc
    and c
    ldh [$3a], a
    add hl, hl
    rst $38
    add c
    rst $08
    sub e
    ret nz

    db $10
    jr c, jr_007_5459

jr_007_5459:
    inc bc
    adc h
    ld [bc], a
    add hl, sp
    ret nz

    ld b, e
    sbc b
    ld [bc], a
    jr c, jr_007_5465

    inc bc
    inc b

jr_007_5465:
    ld bc, $c031
    ld b, b
    db $fc
    jr nz, @+$41

    ret z

    db $d3
    sbc h
    daa

jr_007_5470:
    jr nz, jr_007_543a

    jr nc, jr_007_54ac

    add hl, bc
    rra
    call nz, $e003
    ld c, $2b
    add a
    jr c, jr_007_541c

jr_007_547e:
    jr nz, jr_007_5408

    inc b
    inc de
    inc b
    add c
    db $10
    ld b, b
    ld [de], a
    ld b, $a9
    rra
    ld b, l
    db $d3
    ret nz

    ldh a, [$3b]
    rst $08
    jr jr_007_547e

    and [hl]
    ld [hl-], a
    call z, $e4e3
    ld hl, sp-$6b
    add hl, de
    db $10
    inc a
    ccf
    add hl, bc
    ret nz

    ldh a, [$2c]
    rst $00
    ld de, $30cf
    ld c, h
    sbc a
    add hl, sp
    rst $08
    di
    xor $84

jr_007_54ac:
    and b
    add a
    jp nc, $ff0c

    ld hl, $724f
    inc [hl]
    rst $38
    ld [hl+], a
    ld l, l
    jp $f8f0


    add d
    rrca
    db $eb
    ld c, h
    ld sp, hl
    add c
    adc a
    ld hl, sp+$06
    rlca
    ccf
    adc h
    ld a, [c]
    inc a
    ld d, b
    inc b
    inc c
    ld [$ee7a], sp
    add a
    add h
    ld bc, $6080
    jr c, jr_007_54e4

    inc bc
    adc h
    db $e3
    ld bc, $4000
    ld hl, $9a38
    ld [c], a
    ldh a, [rP1]
    jr jr_007_54ea

jr_007_54e4:
    ld h, d
    pop af
    add b
    jr nz, jr_007_5470

    adc b

jr_007_54ea:
    db $10
    inc b
    rst $38
    inc de
    adc [hl]
    ld b, e
    sub b
    ld h, d
    jr c, jr_007_547e

jr_007_54f4:
    ld bc, $f080
    inc c
    dec bc
    ld bc, $f840
    ld a, [hl-]
    ld sp, $c043
    ld d, b
    adc e
    ld h, e
    inc c
    ld l, b
    ld bc, $c104
    jr nc, jr_007_5546

    rrca
    ld bc, $7380
    cp h
    sbc c
    ld a, $c9
    ld d, e
    db $fc
    push de
    dec [hl]
    adc $d1
    inc l
    db $fd
    scf
    add $93
    ld [hl], h
    ld l, e
    add hl, sp
    push bc
    or e
    db $fc
    cp $7f
    ret c

    di
    db $fd
    ld e, l
    ld d, a
    ld [hl], c
    ld [hl], e

jr_007_552c:
    ret nz

    jr nz, jr_007_554b

    ld [$c002], sp
    ret nz

    ld [hl], $31
    ld e, d
    ld b, [hl]
    ld h, $00
    add b
    jr z, jr_007_54f4

    rlca
    ld bc, $6000
    add hl, bc
    ld [de], a
    rlca
    pop bc
    dec de
    db $e4

jr_007_5546:
    ld b, $01
    sub c
    ld a, [hl+]
    ld a, [hl]

jr_007_554b:
    adc a
    nop
    ret nz

    jr nz, @+$7e

    add hl, de
    adc c
    pop bc
    add b
    ld b, d
    ld e, d
    ld b, h
    xor [hl]
    db $ed
    ld b, b
    rlca
    ld bc, $1d80
    ld d, $2f
    adc e
    db $76
    ld e, b
    or h
    rlca
    ld bc, $f3c6
    ld c, h
    db $eb
    dec [hl]
    rst $08
    di
    ld e, $47
    ccf
    ret


    rst $30
    ldh [$7f], a
    cpl
    rst $08
    ldh a, [$fc]
    add sp, $3c
    rrca
    jp $fcd0


    inc a
    rrca
    ld h, e
    add sp, -$01
    ld a, $5a
    ld a, [$6b2e]
    ld [hl+], a
    ld [$9083], sp
    ld h, h
    ccf
    jp Jump_007_4a94


    dec l
    rrca
    inc bc
    pop bc
    nop
    ld b, b
    adc c
    db $f4
    cp b
    or h
    jp $c230


    jr nc, jr_007_552c

    ld bc, $e200
    cp l
    jr nz, @+$11

    ld [bc], a
    inc bc
    ret nz

    adc a
    ld hl, $4003
    ldh [$ec], a
    inc a
    sub b
    inc hl
    or e
    call c, $0108
    ld c, a
    and b
    inc [hl]
    ld a, [c]
    ld a, l
    cp d
    sub $44
    ccf
    scf
    jp $bcf3


    rra
    dec a
    ret nz

    di
    xor $4f
    ld h, e
    rst $18
    ld a, [$fc18]
    ld l, e
    db $e4
    ld b, $c6
    dec sp
    cpl
    db $e3
    add h
    add h
    inc c
    ccf
    ld a, [$dcf3]
    scf
    and e
    push hl
    di
    ld [hl], b
    inc h
    ccf
    add c
    inc hl
    inc e
    ld b, h
    ccf
    or b
    ld [hl], h
    ret nc

    ld a, a
    rra
    ld [c], a
    ld [hl], e
    jp $cc20


    db $fd
    sub d
    inc [hl]
    adc [hl]
    ld [bc], a
    ret nz

    ret nz

    inc e
    add hl, bc
    inc bc
    add c
    jr nz, jr_007_5663

    and $0e
    ld c, h
    pop hl
    db $fc
    sbc h
    ld a, $c3
    jp Jump_007_587c


    dec h
    ret


    add b
    ld a, h
    db $10
    dec bc
    jp $f403


    inc bc
    db $f4
    ld e, d
    inc b
    adc c
    inc [hl]
    ld a, l
    cp e
    ld a, $df
    push af
    ld c, h
    sbc b
    ld a, [hl]
    call nz, Call_000_313b
    rst $10
    dec b
    or h
    db $db
    inc bc
    dec c
    ldh [rDIV], a
    ret c

    ld bc, $00cd
    inc a
    ret nc

    ld c, h
    dec a
    sbc a
    inc b
    db $e3
    rlca
    nop
    di
    ret nz

    rra
    jr c, jr_007_5661

    ld [hl], b
    ld a, h
    ldh [$8e], a
    rst $38
    ld h, l
    and h
    rst $28
    ld [bc], a
    ld c, a
    ld [hl], b
    ld d, b
    ld sp, hl
    ld [bc], a
    ld c, a
    ldh [$09], a
    and b
    push de
    ld c, b
    ld [hl-], a
    ld bc, $7b00
    add l
    rlca
    ld [c], a
    inc b
    ld a, d
    ld hl, $00fe
    add h
    ld b, d
    rla

jr_007_5661:
    add h
    ld b, a

jr_007_5663:
    add b
    ld b, c
    jp nz, Jump_007_6121

    nop
    rst $18
    and d
    ld h, a
    ret c

    ld [de], a
    inc d
    nop
    cpl
    sbc b
    rla
    db $ec
    inc bc
    ld a, [$3102]
    jr nz, jr_007_567a

jr_007_567a:
    ld hl, $0ccf
    ld bc, $80fb
    ld a, $f0
    rlca
    cp [hl]
    nop
    ld a, [c]
    cp c
    ld c, h
    sbc h
    or $f0
    ld [hl], l
    add h
    inc bc
    ld l, [hl]
    nop
    ld e, e
    jp nz, Jump_000_386d

    sbc e
    cp h
    rla
    ld b, b
    dec b
    ld hl, sp+$01
    ld b, b
    nop
    ld d, a
    nop
    dec d
    nop
    dec b
    ld d, b
    ld bc, $0000
    ld [hl], l
    add b
    dec b
    di
    ret nc

    ld [bc], a
    inc a
    nop
    rst $28
    and l
    db $d3
    ld d, l
    db $f4
    sub $80
    ld a, $ad
    ld e, b
    xor e
    add e
    db $db
    ldh [rTMA], a
    adc l
    ld [hl], h
    add hl, bc
    inc l
    nop
    cp a
    and c
    ld [hl], $29
    ld h, b
    ld a, l
    ret nz

    ccf
    ld h, b
    ld e, c
    db $e3
    ld de, $0de9
    cp d
    inc de
    ld [hl], b
    or a
    nop
    ld l, l
    ldh a, [$a1]
    ld [c], a
    dec e
    ld [$0103], sp
    ld b, d
    rra
    add b
    add hl, sp
    inc a
    xor l
    db $fd
    ld [hl], e
    cp b
    pop de
    rst $08
    ld hl, sp+$28
    ld d, d
    nop
    rst $38
    dec h
    sub e
    adc $71
    ld l, a
    rlca
    ret c

    ld bc, $0016
    ld d, l
    add b
    ld e, $80
    rlca
    add sp, $01
    ld [c], a
    nop
    ld a, e
    db $e4
    ld a, [c]
    and b
    rlca
    xor [hl]
    ld [hl], b
    cp e
    sbc h
    ld [bc], a
    add b
    ld c, $a0
    nop
    xor b
    nop
    xor d
    nop
    nop
    add b
    ld a, [de]
    db $f4
    ld a, h
    adc b
    ld bc, $8511
    pop bc
    rrca
    xor $00
    dec c
    adc l
    cp a
    ld l, e
    ld [hl], h
    nop
    jr nc, jr_007_579a

    jr nz, jr_007_5729

jr_007_5729:
    add [hl]
    jp c, $0fe0

    ld a, b
    ld b, d
    scf
    dec de
    rst $30
    push af
    db $eb
    ld l, e
    cp a
    add h
    ld l, d
    cp b
    ld a, h
    sub b
    inc b
    sbc a
    sbc c
    cp c
    ld b, c
    call nc, RST_00
    adc [hl]
    ld l, e
    di
    ld l, c
    call Call_000_35d5
    ld b, b
    ld bc, $6c1e
    inc b
    nop
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_007_576e

    ld [de], a
    rrca
    ld [$8184], sp
    ld h, b
    add b
    ld h, b
    jr c, jr_007_5780

    ld [de], a
    ld a, [bc]
    dec b
    ld [bc], a
    pop bc
    sub c
    ld b, b
    ld l, b
    jr c, jr_007_5788

    db $10
    adc d

jr_007_576c:
    inc bc
    ld [bc], a

jr_007_576e:
    ld sp, $9010
    ld c, h
    add hl, hl
    ld de, $4589

jr_007_5776:
    ld [bc], a
    and c
    ld h, b
    cp b
    ld h, b
    ld [hl-], a
    ld a, [de]
    adc d
    ld b, a
    ld [hl+], a

jr_007_5780:
    ld hl, $04b9
    ld b, [hl]
    ld h, $1c
    ld c, $87

jr_007_5788:
    add e
    ld [c], a
    ld bc, $8a08
    ld d, l
    ld hl, $c896
    ld h, d
    ld h, d
    ld sp, $9420
    ld c, h
    daa
    inc d
    ld a, [bc]

jr_007_579a:
    ld h, a
    ld [de], a
    ret


    ld [hl], h
    adc b
    ld d, h
    dec hl
    ld d, $0b
    ld b, l
    jp nz, $85f1

    db $10
    dec d
    ld a, [hl-]
    sub a
    add e
    ld b, $23
    ld hl, $d098
    ld l, d
    ld [hl], $1b
    db $d3
    ld [$2132], a
    ret nz

    db $e4
    ld [hl], h
    dec sp
    ld e, $0f
    ld b, a
    push de
    cp d
    inc [hl]
    ld c, h
    jr jr_007_5804

jr_007_57c5:
    jr nz, jr_007_57d7

    ld c, b
    ld b, h
    ld [hl-], a
    dec h
    sub [hl]
    db $76
    inc c
    ld [hl+], a
    sub c
    adc b
    db $e4
    add d
    ld c, c
    jr z, jr_007_576c

    ld c, h

jr_007_57d7:
    ld h, $ca
    ld [$6214], a
    ld [hl], c
    inc a
    and b
    ld a, [bc]
    jr z, jr_007_5776

    adc d
    ld h, l
    ld c, b
    adc c
    ld d, h
    xor l
    add hl, sp
    dec hl
    sub [hl]
    ld [hl+], a
    dec h
    sub d
    pop de
    ld l, h
    inc d
    ld e, h
    ld l, $c8
    ld c, e
    push bc
    di
    inc b
    ld b, h
    jp nz, $3162

    sbc c
    inc c
    and [hl]
    ld d, e
    ld sp, $389f
    ld l, b

jr_007_5804:
    inc [hl]
    rst $20
    inc sp
    add [hl]
    and e
    ld e, [hl]
    ld [hl], b
    ret c

    ld l, l
    add b
    add b
    nop
    ld a, a
    add b
    ld de, $0500
    ld e, b
    ld bc, $0000
    ld [hl], l
    pop bc
    ret nz

    ld a, [bc]
    and b
    ld [bc], a
    and b
    ld bc, $0002
    ld b, h
    nop
    inc bc
    ldh a, [rSC]
    db $fc
    nop
    xor a
    adc e
    nop
    dec b
    pop af
    jr c, jr_007_57c5

    ld a, [bc]
    ccf
    inc de
    sub b
    ld b, b
    add h
    nop
    rlca
    ld a, b
    ld bc, $0106
    ld d, l
    add b
    ld d, h
    ld h, b
    dec d
    db $fc
    or h
    ccf
    ld de, $bf90
    and $73
    ld c, c
    xor h
    ld c, d
    ld h, l
    dec [hl]
    ld a, l
    cp a
    dec de
    xor [hl]
    add hl, sp
    adc h
    ld a, l
    cp $f7
    ld a, h
    ld l, $98
    call $8001
    ld a, h
    rlca
    ld a, $00
    rra
    ret nc

    ld a, [bc]
    inc de
    inc c
    ld c, b
    ld c, $01
    ld [hl], c
    adc b
    xor c
    dec hl
    di
    ld sp, hl
    push af
    ld b, $0b
    ld b, $00
    add b
    ld l, e
    push bc
    dec h
    ld h, $6a
    ld a, a

Jump_007_587c:
    ld a, a
    or a
    rst $00
    ld [$fcf6], a
    ld [$0004], sp
    ld a, l
    add b
    inc e
    inc c
    rlca
    ld d, e
    ld bc, $c0c4
    ld a, a
    ld e, h
    ld e, a
    sub h
    sub a
    ldh [rSB], a
    ld a, [$7a00]
    db $dd
    ret nz

    rrca
    ld c, b
    sbc b
    ld b, h
    nop
    push de
    nop
    nop
    ld b, b
    dec c
    ld a, h
    stop
    xor d
    nop
    ld a, [bc]
    add b
    dec d
    ret nz

    dec b
    inc b
    ld l, c
    ld [hl], l
    ld a, [de]
    adc e
    db $e4
    and h
    and b
    inc b
    ld a, h
    ld l, d
    add hl, sp
    ld [hl+], a
    sub b
    and $b3
    ld [hl-], a
    dec b
    ld hl, sp+$7f
    dec a
    and b
    rst $08
    add sp, -$4c
    cpl
    rst $10
    di
    reti


    ld a, [c]
    add sp, $7b
    or h
    db $dd
    ld [$f356], a
    add hl, bc
    ld a, d
    and $4c
    or e
    ld d, $6e
    add b
    pop bc
    db $fd
    db $e4
    ld a, [c]
    ld h, [hl]
    or c
    rlca
    ld h, b
    rla
    ld hl, sp+$05
    db $fc
    ld hl, $126f
    ld d, [hl]
    rst $08
    ld [hl], h
    and e
    jr c, @-$6a

    ld a, h
    ld a, d
    ccf
    dec de
    adc [hl]
    sub l
    inc bc
    xor c
    inc b
    ld a, [$3f48]
    sub b
    adc b
    inc d
    inc c
    ld c, b
    inc c
    ld [bc], a
    dec e
    ld [bc], a
    dec de
    ld b, l
    ld b, $50

jr_007_5909:
    ld bc, $20d4
    ld [hl], a
    add c
    ld e, c
    db $e4
    sub [hl]
    inc bc
    nop
    add $22
    inc d
    ld [bc], a
    inc d
    and b
    dec b
    ld l, b
    ld hl, $48fa
    ld a, a
    sub d
    add e
    ld h, d
    ld [hl], b
    xor b
    ld l, l
    sub h
    ld c, l
    ld a, [hl]
    xor c
    adc a
    add l
    inc sp
    ldh a, [$a4]
    ld a, a
    dec c
    rrca
    ld a, [c]

jr_007_5932:
    jr z, jr_007_5932

    ccf
    jr nz, jr_007_597f

    db $10
    ld a, [hl]
    ccf
    dec bc
    pop hl
    ldh a, [$5e]
    cpl
    inc bc
    db $e3

Jump_007_5941:
    ld [hl], b
    xor [hl]
    rla
    rrca
    ld [hl], b
    nop
    pop af
    ld e, [hl]
    rst $10
    sub $70
    nop
    dec e
    ld b, b
    nop
    dec d
    ld a, e
    rla
    ld d, a
    or l
    ld [c], a
    rra
    ld h, h
    ld h, d
    ld d, $4d
    sub e
    ld a, $08
    ld [hl], d
    ldh [$c7], a
    ccf
    ld c, h
    jr z, jr_007_5909

    rst $38
    jr nc, jr_007_598a

    jp $e07c


    ccf
    adc $03
    ld l, h
    inc h
    adc h
    call $81f0
    ld [bc], a
    ccf
    sbc e
    ret nc

    inc b
    ei
    ld bc, $d04f
    inc e
    rst $38

jr_007_597f:
    jr nz, @+$50

    ldh a, [rLCDC]
    ret


    dec c
    adc b
    or c
    call c, $1bd4

jr_007_598a:
    dec b
    add e
    and b
    ret c

    sub d
    adc $82
    db $fc
    ld d, c
    dec l
    call nz, $bca1
    sub b
    ld [hl], $ca
    ld [hl], h
    sbc $57

jr_007_599d:
    ld b, h
    nop
    and d
    db $fc
    ld b, d

Call_007_59a2:
    dec bc
    adc l
    ld d, e
    or b
    sub e
    inc c
    jp nz, Jump_000_19e6

    scf
    scf
    jp z, $94a9

    db $dd
    ld a, [bc]
    adc c
    pop de
    adc b
    ld l, l
    inc [hl]
    adc c
    ld [hl], d
    ld h, b
    dec c
    nop
    add b
    ld d, b
    ld [$0bde], sp
    dec b
    ld h, d
    or b
    ld l, [hl]
    dec h
    daa
    add e
    ret c

    inc c
    dec sp
    add c
    ret z

    ld a, [hl+]
    ld [$2888], sp
    jr jr_007_5a4c

    ld a, e
    adc h
    ld c, [hl]
    di
    ret nz

    rst $38
    and c
    rst $08
    dec b
    inc b
    rst $38
    ld a, $28
    jp z, $0f38

    ccf
    pop bc
    ld [hl], e
    cp $90
    and h
    add b
    cp d
    ld b, h
    rst $38
    and l
    add c
    ld [hl], e
    ld b, b
    add sp, $3a
    rrca
    ld a, [bc]
    db $76
    sbc a
    inc a
    add hl, hl
    cp c
    jr nc, jr_007_599d

    inc [hl]
    ld h, l
    adc d
    sbc c
    scf
    ld a, $0f
    adc d
    sbc [hl]
    xor e
    nop
    nop
    ld [hl], b
    ld a, [bc]
    xor [hl]
    xor h
    nop
    ld l, d
    jp nz, $01af

    nop
    jr nc, jr_007_5a1e

    ld b, $81
    ld l, e
    sbc d

jr_007_5a18:
    ld [c], a
    rlca
    ccf
    inc d
    inc de
    xor b

jr_007_5a1e:
    di
    dec a
    ld c, [hl]
    inc de
    ret c

    ldh [$3d], a
    db $ec
    ld c, e
    db $10
    ld [c], a
    dec a
    db $d3
    jp c, Jump_007_7f64

    ld [hl+], a
    set 6, e
    ld e, h
    ld a, a
    ld [de], a
    ret


    ldh a, [$9c]
    cp a
    add hl, bc
    call Call_000_14b0
    ld d, e
    inc l
    add [hl]
    ld [hl], d
    sub b
    xor a
    ld a, [de]
    ld c, e
    pop af
    ret nz

    rst $18
    jr z, jr_007_5a18

    di
    ld b, $31

jr_007_5a4c:
    inc sp
    call z, $f083
    inc b
    daa
    ret


    jr nc, jr_007_5a91

    ld [$c13d], sp

jr_007_5a58:
    ld b, h
    ld a, h
    sbc h
    inc hl
    ret z

    add h
    push bc
    ld [de], a
    jr nc, jr_007_5aae

    dec d
    ld c, b
    rst $38
    rlca
    db $10
    inc hl
    sbc h
    ld hl, $c431
    nop
    inc b
    ld bc, $6eaa
    ld [hl], e
    ld a, h
    ld d, e
    cp h
    ld d, c
    ldh a, [$30]
    cp $26
    ld h, b
    and e
    ld hl, sp-$44
    jp nz, $e0cf

    di
    ld c, $9f
    db $eb
    sub e
    call c, $3ee7
    adc $a3
    and h
    pop af
    ccf
    ld c, a
    ld d, e
    ret c

jr_007_5a91:
    ld a, [$cf3e]
    sub $94
    cp $3f
    call z, $4cd0
    xor $0a
    adc [hl]
    ldh [$28], a
    add $12
    adc d
    ld a, [c]
    call nz, $051f
    ld c, c
    or d
    ld b, b
    ei
    jr jr_007_5a58

    ld h, b

jr_007_5aae:
    ld a, h
    db $10
    xor d
    ret z

    ld [bc], a
    nop
    ret nz

    db $10
    ld de, $04f0
    ccf
    ld [$c1c7], sp
    ld de, $bf12
    db $eb
    ld h, b
    inc e
    inc b
    ld sp, $0dcc
    inc d
    rst $00
    ld sp, $330c
    inc b
    di
    inc a
    inc c
    inc sp
    ld [$0081], sp
    ld [hl], e
    ld h, e
    db $fc
    ld [hl], c
    ld l, a
    adc [hl]
    ld [hl], b
    sub h
    ld a, [c]

jr_007_5add:
    inc b
    ld c, b
    ld [hl-], a
    ld [$10c3], sp
    adc h
    ld [hl], b

jr_007_5ae5:
    jr jr_007_5ae5

    cpl
    ld l, e
    cp d
    db $eb
    ld h, e
    add c
    inc de
    ld e, l
    sbc e
    ld h, a

jr_007_5af1:
    ccf
    rst $00
    sub d
    nop
    ld sp, hl
    jr nc, jr_007_5b46

    add e
    ld b, b
    ld hl, sp+$34
    ld c, $c3
    db $10
    db $ec
    jr nc, jr_007_5b10

    ld b, e
    jr nz, jr_007_5af1

    ld [hl-], a
    rrca
    nop
    ld b, c
    cp [hl]
    ccf
    add b
    inc hl
    ldh a, [$80]
    rra

jr_007_5b10:
    nop
    ld b, c
    ldh [rLCDC], a
    ld c, $00
    ld c, $14
    rrca
    ld [bc], a
    ld b, b
    ldh a, [rDIV]
    rra
    dec b
    add c
    add b
    inc hl
    inc [hl]
    call Call_007_612a
    call nz, $3f11
    ret nz

    ldh [$7c], a
    nop
    rlca
    ret nz

    ld a, [hl]
    ld h, h
    rra
    ld c, h
    add hl, bc
    inc sp
    db $fc
    cp l
    ccf
    ld b, e
    or e
    db $fc
    ld a, e
    ld a, $c5
    ld [hl], e
    db $fc
    ld d, a
    dec a
    call nz, $bcf3
    sbc a

jr_007_5b46:
    ccf
    ld a, [$a1cd]
    inc sp
    ret z

    rrca
    di
    ld sp, hl
    and l
    add hl, sp
    scf
    ld d, e
    nop
    and [hl]
    jr nc, jr_007_5add

    ld h, d
    nop
    ld [c], a
    ld bc, $700e
    inc d
    di
    inc d
    dec bc
    db $10
    dec bc
    add l
    ld c, $02
    nop
    ld h, b

jr_007_5b68:
    nop
    rlca
    nop
    ld b, b
    ld [hl], b
    db $10
    inc bc
    nop
    nop
    jr c, jr_007_5b75

    inc hl
    adc b

jr_007_5b75:
    adc d
    jp c, $06eb

    pop bc
    ld [hl], b
    ld hl, sp+$29
    ld [$20c2], sp
    add c
    inc h
    nop
    jr c, jr_007_5b68

    db $fc
    ld h, l
    ccf
    jp $fce2


    ret nz

    sub $8a
    ld [hl], c
    sbc h
    rst $38
    ld c, d
    jr @+$28

    rst $30
    xor h
    ld e, c

jr_007_5b97:
    add l
    di
    rst $38
    xor $fc
    ld d, $25

jr_007_5b9e:
    adc c
    and c
    db $fd
    ld a, [de]
    ld [hl+], a
    db $f4
    ld e, $2d
    pop bc
    add e
    db $fc
    db $fc
    ld c, [hl]
    sub h
    ld a, [de]
    ld a, [de]
    cpl
    ld d, d
    jp nc, $cc02

    ld [hl+], a
    ld [hl], $04
    sub e
    ld h, h
    ld bc, $0137
    ld b, e
    cp b
    ld [hl+], a
    dec sp
    ret nz

    adc e
    db $e3
    sub l
    ld sp, $13c4
    sbc h
    inc h
    inc e
    ret


    ld [hl+], a
    ldh [$c8], a
    scf
    ld c, $43
    cp h
    pop af
    jr nc, jr_007_5b97

    jp $8fc0


    rlca
    add c
    ld [hl+], a
    inc a
    adc h
    jr nz, jr_007_5b9e

    ld a, [hl-]
    sbc c
    nop
    ld h, b
    db $10
    ld e, $01
    rlca
    ld a, [$fe1d]
    ld a, c

jr_007_5bea:
    ld h, e
    or c
    ret nz

    jr nz, jr_007_5bff

    inc b
    jr c, jr_007_5bf3

    inc c

jr_007_5bf3:
    add hl, de
    adc h
    rst $18
    db $ed
    ld hl, sp-$5c
    ld e, d
    ld a, [hl+]
    rst $18
    ld l, a
    xor a
    rst $18

jr_007_5bff:
    db $eb
    push af
    ld sp, hl
    db $fd
    cp $06
    ld a, a
    add b
    rst $18

Jump_007_5c08:
    ldh [$09], a
    inc h
    sbc d
    ld c, e
    jr z, jr_007_5c8d

    jr jr_007_5bea

    ldh [$87], a
    ld a, [de]
    adc c
    ret nz

    nop
    add d
    inc a
    ld h, $20
    rlca
    ret nz

    jr nz, jr_007_5c9d

    pop bc
    rrca
    cp b
    dec e
    pop hl
    inc bc
    ld sp, hl
    nop
    ld a, $10
    rlca
    add d
    jr z, jr_007_5c30

    pop hl
    dec bc
    db $fd

jr_007_5c30:
    sbc c
    ld h, $07
    inc a
    jp nz, Jump_000_314e

    inc de
    call z, $9ba4
    ld [hl], l
    dec e
    pop de
    pop de
    and $f8
    db $fd
    xor $0f
    ld a, [hl]
    ret z

    push hl
    ld [de], a
    ld [hl], a
    di
    ld a, [c]
    cp l
    ld h, b
    ld a, [hl]
    cpl
    adc a
    adc a
    and b
    inc hl
    ld hl, sp+$01

jr_007_5c55:
    ld h, a
    sub e
    cp a
    ret nz

    adc a
    cp c
    ld [$f80d], sp
    ld [bc], a
    ld a, a
    add b
    ld e, a
    ret nz

    rla
    ret nz

    ld bc, $01f2
    or l
    ret


    rst $00
    db $e4
    ld [bc], a
    ld sp, hl
    ret nz

    ld l, $34
    sbc a
    ld e, d
    xor e
    sbc b
    ld c, e
    ld l, h
    sub c
    or $02
    ld a, d
    inc bc
    ld e, l
    jr nz, jr_007_5c55

    db $10
    sbc c
    xor b

Jump_007_5c82:
    ld [hl], $70
    call nz, $92f0
    ld [hl], e
    ld a, [$fe01]
    add b
    cp [hl]

jr_007_5c8d:
    ld e, c
    di
    db $76
    adc h
    xor $72
    adc $ba
    nop
    cpl
    ret nz

    ld a, [bc]
    nop
    ld [bc], a
    cp b
    nop

jr_007_5c9d:
    xor b
    nop
    ld a, [hl+]
    add b
    ld [$0300], sp
    xor h
    nop
    cpl
    pop de
    nop
    ld de, $07e0
    ld a, [hl]
    jp $af64


    reti


    ld l, b
    rst $30
    ld a, e
    xor l
    sub d
    adc h
    nop
    xor e
    nop
    jr z, jr_007_5d12

    ld h, b
    and h
    db $db
    ld b, b
    or d
    add l
    ld h, $b2
    ld bc, $218e
    inc sp
    db $10
    ld c, h
    pop hl
    ld bc, $85df
    db $e3
    dec b
    ld a, [$7e80]
    and b
    ccf
    cp b
    rla
    xor $01
    ld sp, hl
    add d
    db $fc
    ld [$bc1d], a
    rlca
    cpl
    ld d, b
    db $eb
    ldh [rNR23], a
    ld a, [$3f07]
    nop
    rst $08
    ret nc

    dec sp
    ld hl, sp+$07
    ld a, $4f
    push af
    call nc, $f604
    add d
    ld a, l
    and b
    daa
    inc [hl]
    inc de
    call Call_007_7101
    add [hl]
    ld a, l
    sbc [hl]
    ld h, a
    ld c, [hl]
    jr nz, jr_007_5d04

jr_007_5d04:
    ld [$0f00], a
    ld b, b
    nop
    db $fd
    nop
    rrca
    stop
    rst $30
    add c
    ld h, b
    ld [hl], b

jr_007_5d12:
    nop
    push af
    add e
    add l
    ret c

    jr c, jr_007_5d1e

    nop
    rlca
    ld d, b
    nop
    dec d

jr_007_5d1e:
    nop
    dec b
    ld d, h
    ld b, b
    nop
    dec [hl]
    jp c, Jump_000_00c7

    nop
    ld [hl+], a
    add hl, de
    ld b, [hl]
    db $10
    ccf
    ld c, d
    db $10
    and $0e
    daa
    ld b, e
    ld [c], a
    add h
    sub b
    add e
    ld l, l
    ld b, b
    nop
    add d
    ld [hl+], a
    ld c, c
    rst $08
    jr nz, jr_007_5d8d

    inc h

jr_007_5d41:
    adc c
    and e
    nop
    nop
    rra
    inc c
    inc hl
    ld c, b
    reti


    inc h
    ld a, e
    db $e3
    xor b
    xor b
    nop
    ld [$48c3], sp
    ld a, [$4c36]
    rrca
    or b
    nop
    ld [bc], a
    adc [hl]
    ret nz

    inc bc
    ld a, [c]
    dec h
    sub d
    ld d, b
    db $d3
    ld d, h
    nop
    inc b
    ld h, h
    sub h
    inc b
    nop
    nop

jr_007_5d6a:
    ld b, b
    ld d, b
    ld b, b
    db $10
    inc c
    ld [$0305], sp
    ld bc, $00c1
    sub b
    ld d, h
    inc d
    inc b
    dec bc
    ld b, $03
    ld b, c
    ret nz

    ld hl, sp-$58
    inc a
    jr nz, @+$13

    add hl, bc
    inc b

jr_007_5d85:
    jp nz, Jump_007_5081

    or b
    ld e, [hl]
    inc l
    rrca
    inc c

jr_007_5d8d:
    ld b, $43
    ld d, d
    ld [$6cb8], sp
    jr c, jr_007_5db2

    rrca
    rlca
    call nz, $1902
    jr z, @-$74

    ld c, c
    jr nz, jr_007_5da7

    ld [$82c4], sp
    ld d, c
    jr nc, jr_007_5d41

    ld d, b
    add hl, hl

jr_007_5da7:
    sub a
    ld c, h
    ld [hl+], a
    pop bc
    ld bc, $ac50
    ld e, b
    dec l
    rla
    dec bc

jr_007_5db2:
    add $13
    xor c
    jr z, jr_007_5df7

    ld h, d
    ld [hl-], a
    add hl, de
    adc l
    ld b, $a3
    ld h, c
    cp l
    ld d, $62
    jr c, jr_007_5ddf

    adc [hl]
    add a
    ld h, e
    pop bc
    db $ed
    ld a, [hl-]
    ld b, c
    cpl
    and e
    rrca
    add a
    db $e4

jr_007_5dcf:
    ld [bc], a
    add hl, bc
    ld [$5787], sp
    adc e
    ld d, [hl]
    ld h, h
    inc b
    ld b, d
    add hl, hl
    jr jr_007_5d6a

    ld c, b
    inc h
    sub d

jr_007_5ddf:
    xor h
    ld sp, $1c5b
    ld e, d
    ld c, b
    ld c, e
    ld h, $13
    ld c, c
    call nz, $85f2
    ld a, $de
    rrca
    jr z, jr_007_5d85

    adc d
    ld h, l
    ld b, d
    xor c
    ld e, d
    ld e, h

jr_007_5df7:
    ld d, a
    inc l
    ld c, b
    dec bc
    ld sp, $d152
    ld l, h
    cp b
    ld e, l
    cpl
    ld c, b

jr_007_5e03:
    dec bc
    and $03
    add hl, bc
    adc b
    rst $00
    sub b
    ld sp, $3299
    ld b, $53
    ld sp, $d09c
    ld l, c
    ret z

    sbc b
    call $b846
    ld [$7f00], sp
    add b
    ld de, $0500
    ld e, b
    ld bc, $0000
    ld [hl], l
    pop bc
    ret nz

    ld a, [bc]
    and b
    ld [bc], a
    and b
    ld bc, $0002
    ld b, h
    nop
    inc bc
    ldh a, [rSC]
    db $fc
    nop
    xor a
    adc e
    nop
    dec b
    pop af
    jr c, jr_007_5dcf

    ld a, [bc]
    ccf
    inc de
    sub b
    ld b, b
    add d
    nop
    rlca
    cp b
    ld bc, $0082
    ld l, d
    add b
    ld a, [de]
    jr nz, jr_007_5e52

    db $fc
    or h
    rra
    ld de, $bf90

jr_007_5e52:
    and $73
    ld c, c
    xor h
    ld c, d
    ld h, l
    dec [hl]
    ld a, a
    ccf
    rst $18
    ld l, a
    ret


    adc h
    ld a, [hl]
    db $76
    db $fc
    ld l, a
    jr c, jr_007_5e03

    ld bc, $0204
    ld [bc], a
    ld a, l
    db $10
    sbc l
    add c
    pop bc
    ldh [$80], a
    ld [$3d06], sp
    scf
    sbc a
    call z, $efcf
    or $f8
    db $fc
    xor $4f
    add c
    ld [bc], a
    nop
    ld c, $f0
    ld [bc], a
    ld c, $0a
    nop
    ld b, l
    add b
    rra
    db $76
    scf
    add l
    ld hl, $00f8
    ld a, [hl]
    add b
    ld e, $b6
    sub b
    inc bc
    jp nc, Jump_000_1126

    sub h
    add b
    add hl, hl
    db $ed
    ld a, e
    sbc b
    nop
    xor d
    nop
    ld a, [bc]
    add b
    dec d
    ret nz

    dec b
    inc b
    ld l, c
    ld [hl], l
    ld a, [de]
    adc e
    ldh [$ab], a
    add b
    inc b
    ld a, h
    ld l, d
    add hl, sp
    ld [hl+], a
    sub b
    ld [c], a
    or c
    ld [hl-], a
    ld b, $f8
    ccf
    dec e
    sub b
    rst $00
    db $e4
    or d
    inc sp
    ld e, h
    xor [hl]
    ld e, e
    cpl
    inc sp
    sbc l
    ccf
    ld e, a
    rst $08
    or a
    db $eb
    reti


    db $f4
    xor $79
    ld [hl], $1d
    dec bc
    ld b, $81
    add c
    ld b, b
    ret nz

    jr nz, jr_007_5f2a

    and [hl]
    ld a, [$6ecd]
    cp d
    inc h
    dec e
    add hl, bc
    add c
    add b
    and b
    jr nc, jr_007_5efb

    dec sp
    ld e, a
    ld c, c
    xor c
    cp a
    rst $10
    rst $20
    or $fa
    db $fc
    sbc $5f
    dec de
    adc e
    jp Jump_007_7761


jr_007_5ef7:
    db $db
    jp $c88d


jr_007_5efb:
    db $e3
    ld a, [c]
    cp c
    ld [hl-], a
    ld h, a
    adc l
    or [hl]
    rst $18
    adc h
    nop
    dec e
    ld b, b
    nop
    ld e, e
    ld l, c
    db $76
    db $db
    ld l, d
    db $ec
    ldh [$7b], a
    ld a, b
    inc a
    dec de
    or c
    add sp, -$08
    ld [hl], h
    ld l, b
    sbc $0d
    dec c
    dec hl
    add c
    ld b, c
    rst $20
    push de
    ld l, e
    ld bc, $8000
    ret nz

    ld b, b
    jr nc, @+$0a

    sub d
    ld a, h

jr_007_5f2a:
    add b
    nop
    ret nc

    ld e, [hl]
    call z, $060e
    inc bc
    add b
    add b
    ei
    ld b, b
    ld c, $d5
    ld c, a
    ld h, l
    sub l
    ld b, e
    db $fc
    ld a, a
    ld l, a
    dec de
    or [hl]
    ld sp, hl
    jp c, $1d82

    add l
    or l
    sub [hl]
    ld c, [hl]
    adc a
    db $f4
    ld [$830f], a
    sbc d
    sbc b
    ld c, b
    ld b, b
    ld l, d
    ld d, h
    ld l, b
    ld e, d
    ld d, $49
    ld bc, $2ca0
    add hl, de
    inc b
    push de
    or b
    inc h
    ld bc, $0002
    dec [hl]
    ld l, l
    ld e, e
    jr nz, jr_007_5ef7

    pop hl
    db $10
    rst $00
    ld a, d
    rst $08
    add d
    ld b, b
    sbc a
    ld l, e
    add c
    inc bc
    ret nz

    jr nz, jr_007_5fbb

    ld d, e
    ld [hl], b
    add b
    ldh [rNR10], a
    rlca
    rst $30
    xor h
    rrca
    ld bc, $8416
    call c, Call_007_7e04
    adc a
    db $e4
    ld c, b
    add l
    ccf
    inc b
    sub e
    dec [hl]
    or a
    nop
    inc b
    ld hl, $33fa
    ld b, h
    add c
    nop
    ld a, l
    ld d, l
    ccf
    push bc
    di
    cp h
    ld e, a
    ccf
    jp z, Jump_007_46f9

    ld d, e
    sub h
    and l
    jr z, @+$42

    cp $83
    ld d, e
    inc sp
    add b
    pop af
    inc [hl]
    ld c, d
    db $e3
    ld a, [bc]
    rla
    add l
    add b
    ld [$a94d], sp
    ld a, c
    push de
    or b
    jr z, @+$05

jr_007_5fbb:
    ld [bc], a
    ld h, d
    jr nz, jr_007_5fc0

    ld e, e

jr_007_5fc0:
    ld a, e
    add c
    sub b
    inc h
    jr nc, jr_007_5fce

    inc d
    ld [hl], c
    dec b
    jr z, @+$6d

    ld [c], a
    pop hl
    ld a, b

jr_007_5fce:
    ld h, d
    ld l, d
    db $d3
    ld d, $e0
    nop
    nop
    add b
    jr nc, jr_007_5fde

    ld a, d
    ld d, e
    sub h
    ld hl, sp-$5b
    ld [de], a

jr_007_5fde:
    rrca
    jp nz, $ec13

    sbc d
    ld l, d
    ld d, c
    ld hl, $4000
    ccf
    rr c
    ld d, b
    rst $38
    inc hl
    jp hl


    ld [bc], a
    db $fc
    rst $08
    rra
    call nz, $cc30
    ld bc, $420d
    and e
    db $fc
    and c
    scf
    ret z

    ld b, e
    ld l, h
    adc d
    ld a, [hl-]
    ld c, d
    ld [de], a
    and b
    ret nz

    dec sp
    ld c, h
    ld d, e
    or h
    ret z

    dec a
    ld e, d
    ld h, b
    add b
    ld h, b
    db $10
    dec bc
    ld [bc], a
    ld b, d
    cpl
    ld a, $08
    add e
    ret nz

    jr @+$3b

    ld [bc], a
    jp Jump_000_0e28


    inc c
    ld b, c
    ld de, $449c
    dec de
    call nz, $fc81
    ld d, b
    dec c

jr_007_602a:
    jp nz, $ec81

    ld l, h
    ld bc, $40c0
    ld [hl], h
    ld e, $74
    ld c, a
    ldh [rDIV], a
    and $12
    rrca
    db $e3
    nop
    cp $18
    adc b
    ld [hl+], a
    ld [$08e2], sp
    adc a
    ldh [$30], a
    rst $38
    nop
    ld l, h
    and c
    db $fc
    add c
    ld d, $86
    ld b, e
    ret nc

    adc [hl]
    ld d, e
    add c
    jr nc, @+$4a

    rla
    ld bc, $f003
    and b
    rst $18
    jr c, jr_007_6060

    ldh [$84], a
    rra

jr_007_6060:
    nop
    ld b, c
    or $2d
    ld hl, $0b01
    or b
    ld [$227b], sp
    adc b
    ld [hl], d
    db $10
    cp e
    add hl, hl
    dec bc
    ld [hl], b
    or b
    db $fd
    dec de
    adc a
    ldh a, [$b4]
    ei
    dec bc
    ld c, a
    ret nc

    xor h
    rst $38
    ld a, [bc]
    adc $f1

Jump_007_6081:
    ld l, h
    rst $10
    jr c, @-$2f

    ld [hl], e
    sub h
    ei
    ld a, [hl-]
    ld c, [hl]
    or e
    ret z

    db $fc
    dec a
    rrca
    jp $a1c1


    ccf
    adc [hl]
    inc bc
    inc h
    rrca
    dec sp
    ld a, [bc]
    di
    and b
    adc e
    jr c, jr_007_602a

    ld sp, $4180
    ld [$1000], sp
    add h
    ld bc, $010c
    nop
    adc h
    ld [hl+], a
    ld hl, $61c8
    inc h

jr_007_60af:
    ret


    sbc b
    and e
    ld sp, $f040
    ld b, d
    ret z

    inc bc
    add h
    ld hl, $c81f
    ld [bc], a
    ld a, b
    ld h, c
    jr c, jr_007_610a

    ldh [$e8], a
    dec h
    ld l, e
    adc a
    and b
    jr z, @-$0c

    inc b
    adc [hl]
    nop
    add d
    dec d
    jr nz, jr_007_60d0

Call_007_60d0:
jr_007_60d0:
    jr nz, jr_007_60da

    inc b
    ld bc, $4003
    jp nc, $06ee

    ret nz

jr_007_60da:
    ld b, b
    ld h, h
    ld b, $06
    nop
    ld [hl], b
    ld l, b
    rlca
    ld b, $01
    ld d, b
    inc [hl]
    add hl, bc
    ld bc, $2480
    adc b
    ld bc, $881f
    ld [hl+], a
    inc b
    add c
    inc bc
    add b
    sub b
    inc d
    ld b, $5c
    rst $08
    or e
    ld e, h
    rst $38
    dec [hl]
    rst $00
    pop af
    ld e, h
    xor a
    dec [hl]
    jp nz, $b4fd

    rst $10
    jp c, $f0cd

    cp l
    sbc b

jr_007_610a:
    ld h, [hl]
    ld c, a
    or $6d
    inc a
    scf
    adc $13
    db $fc
    ret nz

    cpl
    call z, $fc03
    add b
    call $9958
    ret nz

    ret nc

    jr c, jr_007_6153

    inc bc

Jump_007_6121:
    ldh [$08], a
    ld a, $00
    ld c, $24
    db $fc
    adc [hl]
    ld d, c

Call_007_612a:
    ld [hl+], a
    nop
    inc bc
    jr nz, jr_007_60af

jr_007_612f:
    ld [hl-], a
    inc b
    ld [bc], a
    jr nz, jr_007_6134

jr_007_6134:
    ld h, d
    db $10
    ld b, $20
    add b
    ld b, d
    inc bc
    sbc d
    ld l, e
    inc d
    and $d5
    db $fc
    inc bc
    add b
    and b
    ld [hl], b
    inc d
    ld e, $04
    add c
    ld bc, $38a7
    ld b, $03
    add b
    ld [c], a
    jr nc, @-$7b

    ld [hl], b

jr_007_6153:
    ld d, h
    ccf
    ld [$f001], sp
    ld b, d
    push bc
    ld bc, $6000
    ld a, [de]
    inc a
    ld bc, $c054
    ld a, b
    ld de, $8e3f
    inc de
    ldh a, [$03]
    ld a, $00
    ld a, c
    ld de, $2112
    adc b
    inc hl
    inc e
    ld b, l
    jr @-$34

    db $10
    call z, $04d1
    adc $1d
    ret z

    ld l, a
    daa
    db $db
    and $ef
    db $d3
    cpl
    db $fd
    ld b, [hl]
    ld b, l
    adc [hl]
    scf
    ld b, b
    db $e4
    cp e
    db $db
    ld c, e
    ld d, d
    ld d, e
    ld [c], a
    add sp, -$20
    ld l, [hl]
    db $f4

jr_007_6194:
    add hl, bc
    ld l, b
    ccf
    add b
    jr z, jr_007_6194

    ld a, $b6
    jr jr_007_612f

    db $10
    ret nz

    ld hl, $000c
    jr jr_007_61e7

    add hl, bc
    add [hl]
    ld b, c
    ld [$0460], sp
    jp $8c12


    or d
    inc h
    ld bc, $8011
    jr nz, jr_007_61c5

    nop
    nop
    inc a
    rrca
    dec c
    add e
    sbc e
    adc b
    db $10
    inc b
    ld [$2592], sp
    ld [$6700], sp

jr_007_61c5:
    ret nc

jr_007_61c6:
    add hl, bc
    ld [hl], e
    rst $10
    ret nc

    dec b
    ld bc, $fa81
    add e
    dec b
    add e
    jr jr_007_61df

Call_007_61d3:
    rlca
    add b
    inc a
    ld [bc], a
    rst $38
    ld b, e
    cp a
    rst $00
    jp $d8f1


    pop af

jr_007_61df:
    cp [hl]
    ldh [$71], a
    rlca
    ld c, [hl]
    and a
    or b
    sbc e

jr_007_61e7:
    add h
    ld l, $e5
    ld sp, $5aa5
    ld h, e
    ld d, [hl]
    ld l, b
    xor l
    ld c, d
    ld l, e
    dec c
    dec [hl]
    pop bc
    ld l, l
    ld h, l
    ld sp, hl
    db $fd
    rst $38
    dec hl
    ccf
    jp z, $e39f

    or $f8
    db $fd
    cp $1f
    ld d, a
    sub a
    db $db
    ldh [$09], a
    call nz, Call_007_73ea
    inc a
    sbc l

jr_007_620f:
    or b
    ld c, b
    ld l, $01
    inc bc
    ret nz

    jr nz, jr_007_620f

    inc b
    ccf
    nop
    adc a
    ldh [rNR13], a
    cp $18
    nop
    ld h, b
    db $10
    jr jr_007_622c

    inc bc
    nop
    add b
    ld b, b
    ld b, b
    jr c, jr_007_623f

    ld [bc], a

jr_007_622c:
    ld [bc], a
    ld bc, $a1c0
    jr jr_007_61c6

    inc e
    ld c, $13
    pop hl
    and $39
    dec e
    sbc $af
    ccf
    sub [hl]
    rlca
    add d

jr_007_623f:
    ld b, b
    dec b
    xor b
    nop
    cp e
    ld h, e
    cp e
    jp $e7ef


    ei
    or $e2
    dec b
    rrca
    add [hl]
    pop bc
    ldh [$f0], a
    jr c, @+$1e

    xor d
    adc $1b
    xor e
    dec d
    ld h, c
    push bc
    ld a, d
    ld h, b
    adc $58
    rla
    sub h
    dec de
    jp z, $f212

    add l
    ld l, $6f
    ld c, l
    sbc c
    pop bc
    xor a
    jr nc, jr_007_62ea

    dec hl
    ld h, $06
    ld a, h
    add c
    rst $18
    rrca
    db $fc
    adc $6a
    ld d, a
    ld [hl-], a
    dec sp
    and e
    jp Jump_000_34ae


    add hl, sp
    pop hl
    or $f0
    jp nc, $b469

    cp d
    adc l
    ld [hl+], a
    db $ec
    ldh [$d6], a
    dec l
    ld a, [hl-]
    push bc

Jump_007_628f:
    xor a
    ld d, b
    or e
    add sp, $16
    db $fd
    ld [bc], a
    jp nc, Jump_007_6f69

    ei
    ld e, l
    xor c
    nop
    add b
    and a
    dec e
    jp nc, $f6eb

    nop
    cp h
    ld h, b
    add c
    ld b, b
    add c
    add b
    ldh [$50], a
    inc [hl]
    jr @+$30

    jr jr_007_6320

    jr c, jr_007_6312

    ld b, b
    ld [hl], a
    ld l, b
    ld a, c
    xor $f8
    ld l, a
    ld [$c457], sp
    dec d
    pop hl
    inc c
    ld hl, sp-$7d
    xor $3f
    nop
    ld l, a
    adc h
    cp l
    db $eb
    jp Jump_000_01e4


    cp a
    inc b
    ld l, l
    rst $08
    ld b, a
    and b
    ld b, h
    db $dd
    ld h, b
    rrca
    call c, $fc01
    sbc b
    ccf
    jp Jump_007_7fdf


    nop
    ld a, [hl]
    call $81b1
    db $ed
    nop
    dec de
    ld [hl], b
    ld [bc], a
    rst $08
    rlca

jr_007_62ea:
    cp $01
    add b
    rrca
    ld [bc], a
    add sp, $00
    cpl
    ret nz

    ld [bc], a
    add b
    nop
    dec hl
    add b
    ld [bc], a
    and b
    nop
    ld a, [hl+]

jr_007_62fc:
    add b
    ld [bc], a
    nop
    nop
    ld a, [hl-]
    ret nz

    nop
    cp [hl]
    ld b, $00
    ld [$00f0], sp
    rst $28
    add l
    ld hl, $be62
    ld d, $4e
    pop hl
    db $f4

jr_007_6312:
    ldh a, [$d1]
    nop
    dec c
    db $10
    db $10
    and a
    add hl, de
    db $db
    sbc b
    and b
    nop
    adc d
    ld h, d

jr_007_6320:
    sub h
    ld d, d
    dec hl
    adc d
    and d
    ld hl, sp-$5b
    db $e4
    ld a, b
    sbc a
    jr z, jr_007_62fc

    rrca
    ld a, e
    inc bc
    inc hl
    inc [hl]
    inc sp
    inc sp
    rlca
    ld [de], a
    ld a, [hl-]
    inc a
    adc a
    rrca
    sub b
    add hl, de
    pop hl
    add hl, sp
    pop bc
    add c
    call z, $1c8c
    ld [$e0f0], sp
    rst $00
    rrca
    inc c
    jr nc, jr_007_63c2

    pop hl
    rlca
    adc $06
    ld c, c
    rst $38
    ld [hl-], a
    jp $ac03


    db $10
    add b
    adc a
    or b
    nop
    adc e
    nop
    ld a, [bc]
    or b
    nop
    db $f4
    nop
    rrca
    ret nc

    nop
    pop af
    nop
    rrca
    ld a, c
    db $76
    ld e, a
    nop
    rrca
    ld e, c
    sbc b
    ld e, l
    sbc c
    add b
    ld d, b
    nop
    ld [hl], l
    nop
    ld bc, $0050
    ld d, l
    nop
    nop
    stop
    rst $10
    add h
    dec h

jr_007_637f:
    or b
    nop
    adc b
    adc h
    daa
    or [hl]
    db $e4
    ccf
    adc e
    sub $a8
    cp d
    add c
    ld e, d

jr_007_638d:
    add sp, $26
    db $e4
    pop bc
    sbc b
    ret nz

    nop
    ld b, d
    ld a, h
    sbc [hl]
    rst $08
    db $10
    add hl, sp
    cp c
    and b
    jr z, @-$58

    push hl
    pop hl
    and e
    xor c
    ld [$08bc], sp
    dec a
    jp hl


    ld a, [hl-]
    stop
    jr nz, jr_007_638d

    sub b
    nop
    ld [$1ba5], sp
    sub e
    ld a, [c]
    ld a, a
    and a
    rst $20
    jr nc, jr_007_63b8

jr_007_63b8:
    push de
    nop
    ld bc, $8d1a
    ld bc, $0000
    ld b, b
    ld b, b

jr_007_63c2:
    jr nz, jr_007_63dc

    ld [de], a
    ld c, $05
    inc bc
    ld bc, $10c1
    ld [hl], b
    jr nz, jr_007_63f4

    ld [$050a], sp
    add e

jr_007_63d2:
    ld bc, $e0a0
    ld [hl], b
    inc a
    jr nz, jr_007_63e9

    ld [$8284], sp

jr_007_63dc:
    ld h, c
    jr nc, jr_007_637f

    ld d, [hl]
    jr nc, jr_007_63f8

    adc d
    add l
    jp $9801


    xor h
    ld e, d

jr_007_63e9:
    jr nc, jr_007_6405

    dec c
    rst $00
    ld [bc], a
    ld h, c
    ret nz

    add sp, $42
    ld b, e
    dec d

jr_007_63f4:
    rrca
    ld c, c
    ld h, d
    or c

jr_007_63f8:
    ld [hl], b
    ld hl, sp-$80
    ld b, d
    ld [hl+], a
    ld de, $0489
    and d
    ld l, c
    ld a, h
    sbc d
    ld h, l

jr_007_6405:
    ld h, $8b
    adc c
    push bc
    ld [bc], a
    sub c
    ld d, b
    xor h
    ld e, b
    dec l
    rla
    ld c, a
    and [hl]
    inc sp
    add hl, sp
    jr c, jr_007_63d2

    ld h, b
    ld sp, $0c19
    add $83
    ld d, c
    or l
    inc l
    dec e
    ld b, b
    sbc d
    inc b
    ld b, $e3
    add c
    ret z

    add sp, $76
    inc a
    ld e, $8f
    xor d
    push af
    sbc b
    or b
    db $fc
    add b
    ld b, c
    ld hl, $c810
    add h
    ld d, d
    ld sp, $c91e

jr_007_643b:
    ld c, l
    inc h
    ld [de], a
    ld b, c
    call nz, Call_007_59a2
    jr nc, @-$64

    ld c, [hl]
    daa
    sub h
    ld l, $12
    ld h, d
    adc h
    sbc b
    and h
    ld d, e
    ld a, [hl+]
    dec d
    ld c, d
    push bc
    ld [hl], d
    pop bc
    ld h, [hl]
    ld a, a
    ld c, l
    cp a
    ld c, c
    adc e
    ld b, l
    or d
    pop hl
    ld [hl], h
    cp h
    ld e, a
    jr nc, @+$51

    call z, Call_000_2826
    xor c
    adc [hl]
    ld c, l
    dec d
    ld [hl-], a
    add hl, de
    ld c, h
    add $73
    ld b, c
    and [hl]

jr_007_6470:
    ld a, [hl+]
    ld l, d
    dec [hl]
    sbc e
    dec c
    and [hl]
    db $e3
    ld [hl], c
    cp a
    ld c, e
    xor b
    jp nc, Jump_000_0e9c

    daa
    inc hl
    sbc [hl]
    sub h
    add sp, $75
    add b
    add b
    ld a, a
    add b
    ld de, $0500
    ld e, b
    ld bc, $0000
    ld [hl], l
    pop bc
    ret nz

    ld a, [bc]
    and b
    ld [bc], a
    and b
    ld bc, $0002
    ld b, h
    nop
    inc bc
    ldh a, [rSC]
    db $fc
    nop
    xor a
    adc e
    nop
    dec b
    pop af
    jr c, jr_007_643b

    ld a, [bc]
    ccf
    inc de
    sub b
    ld b, b
    add d
    nop
    rlca
    cp b
    ld bc, $0082
    ld l, d
    add b
    ld a, [de]
    jr nz, jr_007_64be

    ld hl, sp+$01
    and b
    rrca
    adc b
    rst $00

jr_007_64be:
    ld h, h
    ld d, d
    add hl, de
    sub h
    ld b, [hl]
    ld b, h
    rrca
    ld a, b
    rra
    db $10
    sub e
    ld l, b
    ldh a, [rNR11]
    or $0a
    ld a, b
    cp d
    add d
    daa
    jp nc, $f624

    jr nz, jr_007_6517

    ld e, a
    xor b
    ld b, e
    res 2, b
    inc sp
    jr c, jr_007_6470

    ld b, a
    ld a, a
    and h
    dec c
    and $e0
    add hl, bc
    call z, $dd24
    ld d, b
    ld d, h
    ld b, b
    rst $28
    add b
    ld l, e
    ret nc

    call nc, Call_007_6d91
    db $10
    ld l, d
    ld [hl-], a
    db $10
    ld c, e
    ret c

    xor l
    ld e, d
    adc c
    ld c, h
    db $e4
    jr nz, jr_007_6527

    ld [$f51c], a
    ld h, h
    sub c
    ld [$f01b], sp
    jr nz, jr_007_654a

    ld bc, $00de
    ld b, c
    pop bc
    ld b, b
    ld [$03b0], sp
    db $ec
    nop
    dec bc
    ld a, b

jr_007_6517:
    ld c, a
    ld e, a
    add b
    rlca
    add sp, $01
    db $eb
    add l
    nop
    dec a
    ld [hl+], a
    ld h, c
    add hl, de
    ld c, b
    nop
    ld [bc], a

jr_007_6527:
    nop
    ld l, e
    db $e3
    ret nz

    dec b
    ld d, b
    nop
    ld d, h
    nop
    xor [hl]
    nop
    jr z, jr_007_6557

    ld c, e
    xor b
    call nc, Call_000_3f5f
    ld [hl], a
    nop
    inc hl
    db $e3
    ld d, c
    ret


    and [hl]
    sbc d
    ld b, e
    xor b
    add c
    ld c, h
    dec [hl]
    ld h, b
    db $fd
    ld h, [hl]
    cp b

jr_007_654a:
    rra
    xor c
    ret c

    cp a
    jp Jump_000_398e


    ld [$ce61], sp
    dec [hl]
    ld l, c
    ld a, [bc]

jr_007_6557:
    ld e, b
    jp nz, Jump_007_50d6

    db $dd
    xor b

Call_007_655d:
    inc de
    ld [hl], c
    ld l, $c1
    ld c, l
    ld h, d
    dec hl
    call c, Call_007_6f04
    inc b
    and a
    sub d
    rrca
    ldh a, [$0b]
    db $fc
    inc b
    rst $00
    ld [hl+], a
    and a
    add d
    ld b, [hl]
    push af
    ld b, e
    call c, $feaa
    dec [hl]
    ccf
    ld d, [hl]
    inc [hl]
    ld d, h
    jp c, $fe49

    ld l, l
    ld a, e
    and c
    rst $18
    daa
    inc bc
    pop af
    add hl, bc
    sbc $a8
    ld h, a
    sub e
    rla
    db $eb
    rst $00
    ei
    add hl, bc
    adc $24
    ld a, c
    add b
    sbc l
    jp nz, $c096

    dec e
    or b
    ld b, a
    ld l, [hl]
    and d
    sbc h
    ld [$7957], a
    inc l
    rst $38
    ld c, $8a
    ret nc

    ld d, b
    and l
    ld b, $0d
    pop de
    db $10
    ld e, e
    ld [hl+], a
    ld c, e
    ld [hl], b
    call z, Call_000_22eb
    adc b
    ld [hl], b
    inc d
    ld a, a
    db $10
    bit 4, b
    nop
    cp e
    ld [bc], a
    ld h, b
    ld h, c
    db $ec
    ld b, b
    add hl, sp
    jp nz, $f423

    ld h, h
    dec a
    ret


    ld b, e
    ld hl, sp+$62
    ld sp, $874b
    ld [hl], h
    adc d
    dec sp
    add d
    ld b, c
    call nz, Call_000_3c85
    ld b, [hl]
    ld b, e
    or h
    ret z

    ld [hl], $c9
    ld hl, $afc0
    ld c, h
    inc bc
    nop
    cp h
    ldh [$27], a
    ret z

    add c
    call c, Call_000_0adc

jr_007_65ec:
    jp z, $44a2

    ld c, d
    inc c
    ld e, b
    jr jr_007_65ec

    ldh a, [$8f]
    db $e4
    inc de
    pop bc
    ld h, $3c
    ld e, b
    sub [hl]
    dec l
    and a
    dec e
    ld b, b
    nop
    dec d
    adc c
    rla
    ld e, b
    sub [hl]
    ld a, [de]
    ld c, a
    ld h, a
    and l
    ld d, $81
    and b
    inc c
    adc l
    ld de, $a3b0
    inc d
    ld c, b
    pop hl
    ld c, b
    adc h
    ld d, $89
    ld b, c
    cp h
    and c
    dec de
    ret z

    add d
    call c, Call_000_0714
    adc $d0
    jr c, @-$0c

    ld bc, $924f
    jr c, jr_007_66a2

    ld h, $c6
    and c
    call c, $2315
    adc b
    and e
    ldh a, [rDIV]
    rra
    rst $00
    ld [c], a
    inc a
    adc [hl]
    rra
    call nz, $fc73
    add e
    ld sp, $40c4
    dec b
    sub b
    nop
    rlca
    push af
    adc h
    sbc d
    rlca
    ret nz

    ld d, e
    ret c

    inc d
    dec sp
    adc d
    and e
    db $f4
    push hl
    inc a
    add c
    inc hl
    pop af
    db $ed
    inc sp
    adc e
    ld a, [c]
    db $fc
    ld b, a
    ld de, $f209
    ld c, h
    cp a
    dec hl
    inc bc
    ldh [rBCPS], a
    ld a, h
    dec d
    rrca
    sub d
    call nz, Call_000_16cb
    adc a
    ld a, [c]
    ld d, h
    rst $38
    db $10
    adc a
    ld a, [c]
    inc b
    rst $38
    jr jr_007_66c8

    ld a, [c]
    adc b
    ld a, a
    inc d
    adc a
    ldh a, [rOBP0]
    rst $38
    dec b
    ld e, a
    inc bc
    ldh [$c8], a
    ccf
    rl e
    db $ec
    ld l, d
    inc l
    dec d
    ld sp, $fc20
    add hl, hl
    rrca
    ldh a, [$60]
    rst $08
    ld [de], a
    ld hl, $fcd0
    inc hl
    ld a, h
    inc bc
    ldh [$08], a
    db $e3
    ld [$f187], sp

jr_007_66a2:
    inc h
    sbc l
    dec h
    dec bc
    or b
    and b
    db $76
    dec d
    rrca
    ldh a, [$a1]
    ld d, d
    ld [hl], $44
    sub d
    ld hl, sp-$70
    rra
    jp $fc63


    ld l, h
    dec e
    add b
    ld d, d
    or b
    add e
    scf
    nop
    or d
    ret c

    dec h
    ld a, $84
    sub e
    ld l, b
    xor c
    dec e

jr_007_66c8:
    add l
    ld e, e
    ld [bc], a
    ld b, d
    cp e
    rrca
    inc bc
    inc l
    jr nc, @-$6a

    cpl
    add hl, de
    add hl, sp
    adc c
    ld l, e
    rst $28
    ld d, b
    inc a
    push de
    ld [bc], a
    adc e
    sub b
    inc h
    sbc $10
    add [hl]
    ld [hl], d
    add b
    add hl, sp
    ld [hl-], a
    ld h, [hl]
    ld [hl], b
    ld a, h
    pop hl
    inc a
    pop bc
    ld [hl+], a
    inc [hl]
    adc l
    ld a, $40
    sub e
    call z, Call_000_3fd0
    add e
    inc hl
    ldh [$08], a
    inc a
    add hl, bc
    dec bc
    inc c
    add a
    ld hl, $010c
    ld [bc], a
    ret z

    jr nz, jr_007_674d

    inc d
    ld c, d
    jp $4d87


    pop hl
    ld c, b
    cp e
    ld a, [hl+]
    add a
    ld [hl], c
    ld d, h
    rst $38
    inc e
    ld c, a
    ld [bc], a
    ret nz

    ld sp, hl
    ld [hl-], a
    ld c, a
    di
    call nz, Call_000_1eff
    rrca
    jp nz, $fb0c

    dec b
    rst $08
    ld [hl], d
    cp h
    ld [hl+], a
    inc c

jr_007_6727:
    ld b, l
    ld [hl], c
    call nc, Call_000_3a2c
    add e
    ldh [$98], a
    db $ec
    rlca
    rrca
    inc sp
    ret z

    ret nz

    jr nc, @+$03

    ldh a, [rLCDC]
    rst $38
    ld bc, $f34f
    adc b
    rra
    dec b
    ret nz

    sub b
    dec h
    ld [de], a
    jr c, @+$04

    ld bc, $48e0
    daa
    ret


    inc bc
    db $f4

jr_007_674d:
    dec [hl]
    ld a, $c2
    and c
    call c, $2fa5
    adc h
    inc hl
    cp h
    di
    dec e
    rst $00
    and c
    db $ec
    ld c, h
    ccf
    ld b, e
    db $e3
    xor $fb
    inc d
    add b
    ldh a, [rNR41]
    di
    inc h
    adc a
    pop bc
    sub b
    adc a
    ld [hl+], a

jr_007_676d:
    rst $08
    di
    jr nc, jr_007_676d

    dec l
    rlca
    ldh [rOBP0], a
    ld sp, hl
    ld a, [de]
    ld c, a
    ld [hl], e
    ld d, b
    xor $0a
    add e
    ldh a, [$87]
    dec b
    jr nz, jr_007_678a

    inc bc
    ldh [$88], a
    rrca
    rra
    db $10
    ld c, b

jr_007_6789:
    adc a

jr_007_678a:
    ld [hl+], a
    rlca
    pop de
    inc d
    ei
    jr z, jr_007_6727

    inc hl
    ret c

    add l
    inc bc
    nop
    or c
    xor h
    ld d, b
    ld l, $c2
    ld bc, $806c
    ld [hl], $c0
    ld bc, $a0ac
    ld c, $cc
    ld [$dbfc], sp
    nop
    ld c, l
    ret nz

    db $10
    rst $10
    ld [bc], a
    dec c
    db $10
    jr c, jr_007_6789

    ld [bc], a
    ld a, c
    db $e3
    ld l, h
    ld a, [bc]
    dec [hl]
    ret nz

    ld d, c
    call z, $3f53
    ret z

    rst $00
    inc a
    jp $8010


    ld h, b
    db $10
    cp $22
    adc a
    pop de
    sub h
    inc sp
    inc b
    adc a
    db $10
    ld b, h
    rst $18
    db $10
    dec bc
    jp nc, Jump_007_7794

    dec d
    ld c, $f2
    xor h
    rst $18
    dec d
    dec bc
    ldh [$8b], a
    jr z, jr_007_681b

    add b
    and e
    or h
    and l
    ld [hl], $c5
    ld [hl+], a
    db $fc
    xor l
    ccf
    ret


    or e
    ld a, h
    ld d, d
    rrca
    jp nz, $fca3

    ld a, [de]
    dec a
    adc d
    db $e3
    or b
    ld e, h
    scf
    dec bc
    jp nz, $7964

    daa
    rlca
    ldh a, [$c8]
    cp $0e
    rrca
    add b
    call nz, $9ff1
    pop de
    ld hl, $7c10
    ld a, [bc]
    ld c, [hl]
    ld a, [c]
    ld [$1e83], sp
    ld b, a
    sub d
    ld hl, sp-$3f
    rra
    set 5, l
    inc [hl]
    ld a, a

jr_007_681b:
    inc d
    inc bc
    nop
    add b
    ld [de], a
    nop
    add hl, bc
    inc hl
    nop
    ld d, d
    inc [hl]
    inc c
    inc hl
    nop
    add c
    db $10
    ld b, e
    ldh a, [$98]
    cp $07
    ret nz

    ldh a, [$3c]
    inc de
    rlca
    ret nc

    ld bc, $fd68
    and h
    ld [hl], e
    ld e, [hl]
    rra
    ld d, e
    and $37
    ld a, d
    xor l
    xor $14
    ccf
    and b
    ld c, l
    ld l, c
    and e
    xor d
    ld [hl], b
    or $8f
    ld a, $a3
    rst $18
    and b
    ld [hl], l
    jp hl


    push de
    cp [hl]
    ld a, b
    ld [hl], h
    ld l, $0e
    ld b, l
    push hl
    and d
    ld e, l
    ld h, b
    jr nz, jr_007_68ac

    ld [bc], a
    dec de
    and l
    ld d, a
    ld hl, sp+$01
    ld b, $82
    db $10
    adc a
    ld d, e
    rst $08
    and d
    dec sp
    db $10
    ld a, d
    inc hl
    add hl, sp
    sub h
    sbc h
    ld [hl+], a
    ld de, $415b
    or [hl]
    nop
    ld e, l
    adc b
    rrca
    ld h, h
    rlca
    ld e, b
    nop
    ld [hl], $10
    ld a, l
    add b
    dec d
    ld h, l
    ld b, $f0
    ld bc, $08bc
    ld l, b
    nop
    dec de
    and b
    ld d, [hl]
    ld hl, sp+$01
    cp [hl]
    add hl, bc
    ld l, h
    add b
    ld a, [de]
    ld h, b
    inc hl
    add hl, sp
    ld de, $92bc
    ld e, h
    ld a, [bc]
    ld e, $65
    scf
    ld h, d
    or c
    and [hl]
    ld d, d
    ld e, a
    xor h
    ld c, a
    inc h
    sbc b

jr_007_68ac:
    ld h, c
    ld hl, sp-$6c
    ld l, h
    ld a, [hl-]
    ld hl, $40df
    jr nc, jr_007_68d9

    ldh [rNR10], a
    rra
    add hl, bc
    jp z, $ea9d

    ld h, [hl]
    ld sp, hl
    ld e, c
    ld a, [hl]
    inc l
    ld a, a
    daa
    ld e, e
    push bc
    sub c
    ldh a, [$c5]
    db $fc
    pop bc
    ld a, a
    inc c
    ld c, l
    adc $b1
    db $eb
    sbc b
    ret nz

    ldh [rNR22], a
    cp d
    ld c, $4f
    ld [hl-], a

jr_007_68d9:
    add e
    ld b, e
    inc h
    ld [$3f64], sp
    ret nz

    dec l
    ret nc

    jr nc, jr_007_68ac

    sub [hl]
    adc a
    ld c, b
    dec sp
    push bc
    db $eb
    and $08
    db $fc

jr_007_68ed:
    ld a, [hl]
    inc bc
    ld bc, $54b0
    ld c, $32
    inc de
    sbc b
    ld c, d
    sub $7a
    adc l
    sbc [hl]
    xor a
    ld d, a
    or d
    call $1364
    add hl, bc
    cpl

jr_007_6903:
    res 5, a
    ldh a, [rNR12]
    ld hl, sp+$1a
    ld a, l
    ld b, l
    sub [hl]
    call c, $d3eb
    pop af
    db $fd
    inc sp
    cp a
    ld a, l
    ld bc, $e8de
    rst $00
    db $f4
    ld e, l
    ld e, $fb
    and $73
    ld de, $d4c7
    ld [hl], e
    dec a
    db $10
    ld h, b
    ld d, b
    inc a
    jp nz, $f44f

    dec bc
    ret nz

    and b
    cp c
    inc d
    and a
    jp nc, $e408

    ld d, d
    ld a, c
    inc h
    di
    ld b, [hl]

jr_007_6938:
    cp a
    call z, Call_000_3000
    ld de, $88f0
    rst $38
    inc e
    and c
    ret nc

    add a
    jr nc, jr_007_695a

    ldh a, [rPCM12]
    jr nz, jr_007_68ed

    ld [hl], $ca
    dec bc
    or l
    dec b
    inc bc
    ld a, [c]
    sla b
    dec [hl]
    add b
    ld b, e
    ld a, b
    ld [bc], a
    ld d, e
    sub l

jr_007_695a:
    add l
    ld d, b
    call c, Call_000_1401
    push hl
    jr c, @-$17

    add hl, hl
    inc c
    pop hl
    jr z, jr_007_6903

    dec b
    ld [$6492], sp
    ld hl, $010c
    jr nc, jr_007_6938

    ld b, e
    jr jr_007_69bb

    inc hl
    add b
    sbc a
    inc h
    ld b, a
    add c
    ld [hl+], a
    ld a, [bc]
    scf
    push bc
    ld [hl-], a
    db $ec
    xor d
    dec c
    pop bc
    ld d, c
    sbc b
    ld b, d
    dec de
    ld b, d
    sub b
    ld hl, sp+$21
    ld a, $88
    ld d, e
    ret c

    ld c, c
    ld a, [hl-]
    adc c
    ld d, d
    ld c, b
    ld l, l
    add hl, sp
    adc l
    sbc b
    call z, Call_000_0c4f
    nop
    ld b, e
    sub b
    ld [hl], b
    inc a
    inc bc
    add e
    ldh [rNR23], a
    ld a, $04
    add e
    ldh [$61], a
    ld a, $44
    inc sp
    ld [$3043], sp
    ld b, b
    ld b, b
    db $10
    ld [$0002], sp
    db $10
    dec b
    jp hl


    ld bc, $53c0
    ld a, b

jr_007_69bb:
    ld e, d
    cpl
    dec bc
    ld c, b
    ld [hl], b
    ld b, $01
    pop bc
    db $10
    ld b, h
    pop af
    inc e
    ld c, b
    db $10
    inc b
    ld a, [$cf12]
    di
    ret nz

    rra
    dec b
    pop bc

jr_007_69d2:
    ret nc

    ld h, h
    rst $38
    rra
    set 6, c
    cp $67
    scf
    set 6, e
    inc [hl]
    cp a
    ld [$f34d], sp
    ld c, h
    rst $28
    inc a
    adc $f1
    reti


    call z, $ce01
    ldh [rLY], a
    rst $20
    ld b, $0f
    jr nc, @+$32

    ei
    ld bc, $900f
    jr @-$0d

    inc bc
    adc l
    pop de
    ld d, b
    ld a, e
    ld [hl+], a
    ld c, a
    db $e3
    add hl, bc
    ld a, [de]
    rrca
    call $7c81
    db $e4
    rra
    adc $b1
    cp h
    db $f4
    ld a, $40
    db $10
    ld hl, sp+$1a
    ccf
    sbc $61
    ld e, b
    db $f4
    jr z, @+$51

    jp nc, $fea4

    db $10
    adc a
    di
    ld h, l
    ld b, [hl]
    ld [hl-], a
    rlc c
    xor l
    ld hl, sp+$20
    dec bc
    or b

jr_007_6a28:
    ld b, b
    db $db
    db $10
    rrca
    or d
    ld bc, $34f4
    add b
    inc sp
    ld b, h
    rrca
    inc [hl]
    ld b, b
    inc de
    ld d, b
    rlca
    inc [hl]
    add b
    push hl
    ld a, [hl-]
    or a
    dec [hl]
    nop
    ldh a, [$88]
    ldh [rNR41], a
    adc h
    ld bc, $c610
    jr nz, jr_007_69d2

    ld h, b
    jr nz, jr_007_6a59

    dec b
    ld bc, $20c1
    ld a, b
    ld [$114e], sp
    jr nc, @+$06

    ld [de], a
    ld b, b

jr_007_6a59:
    ld de, $26bc
    ld a, [bc]
    add h
    sub b
    call z, Call_000_2f50
    adc [hl]
    and c
    ld [hl], h
    push de
    ld b, $88
    and e
    inc a
    or b
    daa
    add [hl]
    db $10
    cp b
    pop de
    scf
    ld b, d
    jr nz, jr_007_6a28

    jp nc, $c458

    ldh [$c6], a
    add sp, -$6f
    adc d
    ld sp, $a188
    jr jr_007_6ac5

    ld [bc], a
    add b
    jr nc, jr_007_6ab9

    add hl, bc
    add c
    and b
    xor b
    inc e
    dec b
    jp nz, Jump_007_48d0

    ld c, $05
    ret nz

    call z, Call_000_1167
    ld b, d
    jr nc, jr_007_6a9f

    jr nc, jr_007_6a9d

    inc bc
    jr nc, jr_007_6a28

    ld a, c

jr_007_6a9d:
    ld d, $46

jr_007_6a9f:
    ld d, b
    sub h
    nop
    nop
    ld bc, $f893
    db $10
    ld a, [hl+]
    ret z

    ld d, c
    cp b
    cp $20
    ld b, b
    ldh a, [$3c]
    add b
    ccf
    rst $08
    db $e3
    db $fc
    ld [$dc3d], a
    ld h, e

jr_007_6ab9:
    ld c, h
    ld l, $25
    ld b, [hl]
    ld [c], a
    or h
    or $a4
    ld b, l
    ld [hl], e
    or b
    xor e

jr_007_6ac5:
    scf
    ld c, $90
    ld a, b
    jp nc, $ce0f

    or b
    call c, Call_000_0af7
    adc $d1
    ld l, h
    jp c, $4b0f

    ld d, c
    add sp, -$13
    inc e
    adc a
    pop bc
    ret nc

    rst $30
    ld e, $0b
    pop bc
    ldh [$5e], a
    ld l, $8b
    ld [hl], e
    jr nc, @-$15

jr_007_6ae8:
    dec a
    rlca
    ld d, e
    db $e4
    cp $0e
    adc [hl]
    ld [hl-], a
    adc d
    rra
    rrca
    add d
    add e
    db $fc
    sub l
    ccf
    add $83
    db $f4
    sub l
    ld a, $86
    and e
    call c, Call_007_7d15
    adc $b0
    add c
    ld b, d
    ld [hl], $d4
    ld d, d
    ld [bc], a
    xor d
    xor e
    ld bc, $00b0
    reti


    inc bc
    call Call_000_2ea0
    ld b, $55
    dec d
    adc b
    jr nz, jr_007_6b1a

jr_007_6b1a:
    xor h
    ret nz

    jr nz, jr_007_6b2a

    ld c, c
    inc sp
    ret z

    ld b, e
    di
    ld a, [bc]
    jr c, jr_007_6ae8

    ld hl, $41fc
    inc bc

jr_007_6b2a:
    add b
    ldh [rDIV], a
    cp $2d
    ld a, [bc]
    ld b, b
    call nc, $1b15
    call nz, $f8c3
    cp d
    dec sp
    ld b, [hl]
    ld d, e
    ld l, h
    db $d3
    rrca
    jp nz, $c4f3

    ld [de], a
    or a
    ld c, c
    pop af
    add b
    rra
    add [hl]
    ld c, [hl]
    ld [bc], a
    cp h
    ret nc

    db $e4
    ld b, h
    ld a, [c]
    ret nz

    rst $08
    inc c

jr_007_6b52:
    ld a, [bc]
    db $e3
    ld l, e
    inc h
    add hl, sp
    ld b, a
    jp nc, Jump_007_7ed8

    ld [hl], $43
    db $d3
    or b
    ld a, [de]
    dec a
    add b
    db $d3
    db $ec
    ld b, $10
    inc b
    ld [bc], a
    ld b, h
    sub c
    inc a
    ld [bc], a
    inc bc
    add sp, -$56
    rra
    sub a
    or d
    and h
    rra
    dec b
    add h
    inc de
    inc b
    jp $e430


    call Call_000_07b0
    ld bc, $903b
    db $10
    cp $00
    ld c, a
    ld b, b
    inc l
    rst $10
    ld l, $05
    ld [hl], d
    ldh [$ef], a
    inc c
    jr c, jr_007_6b52

    db $fc
    ld b, b
    dec de
    ret


    inc bc
    db $fc
    db $10
    dec a
    ret nz

    add e
    ld [hl], b
    ld h, e
    ld l, $87
    db $d3
    or h
    ld e, $3d
    ld b, b
    db $e3
    xor b
    dec e
    scf
    jp $fc03


    jr nz, @-$0d

    adc e
    ld h, c

jr_007_6bae:
    ld d, b
    sub d
    jr jr_007_6bb9

    and d
    and b
    ld l, l
    inc l
    ld c, e
    or c
    ret z

jr_007_6bb9:
    ld l, e
    inc a
    rlca
    ld [hl], e
    sub h
    rst $18
    ld a, [bc]
    ld h, b
    and c
    ld [hl], b
    inc d
    ccf
    ret z

    ret z

    jr nc, @-$62

    dec h
    rrca
    add e
    jr nz, jr_007_6bae

    ld [$130c], sp
    dec b
    ld b, [hl]
    ld d, b

Call_007_6bd4:
    dec [hl]
    ld [hl], d
    inc bc
    ld h, b
    ret c

    ld a, [hl+]
    rst $00
    or $b5
    ld [hl], $80
    db $e3
    ld d, h
    dec c
    ld [hl], $c0
    and e
    ld c, h
    ld bc, $cd7f
    ld h, b
    ld [$00d4], sp
    rrca
    di
    add h
    pop af
    inc h
    ld c, h
    ld [hl], c
    ld de, $07e1
    ld bc, $7440
    dec b
    rrca

jr_007_6bfc:
    jp nz, $088c

    rst $38
    jr c, jr_007_6c11

    or b
    jr z, jr_007_6bfc

jr_007_6c05:
    dec [hl]
    ld d, b
    inc bc
    ld [hl], c
    jr z, jr_007_6c05

    dec h
    ld a, c
    add h
    sub c
    add sp, -$7f

jr_007_6c11:
    ld hl, sp-$67
    adc [hl]
    cp b
    add [hl]
    ld sp, $08c7
    ld [hl], e
    jp $f01c


    rst $08
    jr c, jr_007_6c4b

    sbc $0b
    rst $30
    inc bc
    db $f4
    ld b, $fe
    nop
    cp a
    ret nz

    ld de, $0cf9
    add d
    ld b, [hl]
    db $d3
    add hl, de
    ccf
    ret c

    add h
    ld [hl], $0b
    ld c, b
    ld h, b
    ld a, [$4803]
    and e
    db $ec
    ld d, c
    jp nc, Jump_000_2c75

    ld a, e
    ld h, $1d
    rst $00
    dec b
    di
    inc b
    adc c
    ld l, [hl]
    sub b

jr_007_6c4b:
    ld a, a
    add d
    ld e, $e0
    add a
    ld hl, sp+$11
    or $04
    and c
    ld d, c
    rra
    and b
    daa
    db $fd
    inc h
    jr nz, @+$01

    ld [$c63b], sp
    cpl
    ldh a, [$2d]
    ld b, l
    rst $38
    ld l, $a4
    add b
    rst $08
    db $ec
    and a
    ei
    push de
    cp $7b
    ld a, a
    sbc a
    ld e, a
    db $eb
    rst $20
    sla l
    cp $f1
    ld [hl], c
    sbc b
    sbc b
    ld l, h
    daa
    ld a, b
    and h
    ld hl, sp+$44
    ld bc, $9980
    db $e4
    sub a
    ldh [rNR11], a
    ld [c], a
    sub c
    ld a, a
    sbc b
    sub e
    ld l, b
    nop
    ret c

    ld b, b
    ld d, $00
    ld h, l
    add b
    rrca
    ld h, h
    rlca
    jp c, $f641

    ld h, b
    ld b, l
    and b
    dec de
    and b
    sub [hl]
    ld hl, sp+$01
    cp [hl]
    ld bc, $826c
    dec de
    ret nz

    ld b, $98
    add hl, bc
    and [hl]
    rrca
    ld l, d
    ld bc, $e8e3
    ld [hl], h
    jr nz, jr_007_6cb9

    ld [bc], a
    rst $00
    ld [hl+], a
    dec sp

jr_007_6cb9:
    sub l
    ld b, a
    jp nz, $e4a2

    ld d, d
    rst $10
    ld [hl+], a
    dec a
    jp nz, $e4a9

    sbc e
    db $f4
    ld e, $ff
    ld a, b
    ld e, $c8
    xor $f5
    ld h, e
    ld a, h
    or [hl]
    cp l
    ld e, d
    sub a
    call c, $f60e
    add e
    ld a, h
    ld b, b
    scf
    ld h, h
    dec a
    push bc
    ld c, $36
    db $e3
    call $f978
    cpl
    ld c, e
    db $e4
    ld a, h
    ld a, d
    ld b, h
    adc c
    ld [c], a
    add hl, bc
    ld a, a
    nop
    ld e, $41
    scf
    ld h, h
    ld a, d
    ld b, [hl]
    ld l, a
    nop
    ld [hl], l
    ld d, a
    jp hl


    ld bc, $207b
    add sp, -$1c
    sub $ac
    rst $10
    ld b, $47
    rst $20
    jr z, jr_007_6d0b

    db $fd
    nop
    rra
    db $fc

jr_007_6d0b:
    adc b
    rlca
    ret c

    jr @-$08

    nop
    ld a, [hl]
    and c
    ld a, [hl+]
    ld [hl], d
    ldh [rNR31], a
    rst $38
    and a
    rst $00
    ld a, b
    ld c, a
    ld e, b
    cpl
    or c
    ld d, c
    ld hl, sp-$5c
    dec sp
    inc d
    daa
    adc b
    ld [hl+], a
    ld l, h
    db $10
    inc sp
    inc b
    ld d, e
    adc h
    and b
    dec e
    push bc
    ld d, e
    db $fc
    ld h, e
    ccf
    ret z

    ld h, e
    db $fc
    ld e, c
    ccf
    ld a, [bc]

jr_007_6d3a:
    ld b, e
    db $fc
    ret nc

    cpl
    jp nz, $ecb3

    ret nz

    ld a, [hl-]
    jp nz, Jump_007_5c08

jr_007_6d46:
    db $eb
    jr nc, jr_007_6d4c

    or b
    ld b, b
    dec sp

jr_007_6d4c:
    ld [$8317], sp
    ld l, h
    ld b, b
    ld l, $80
    ld [bc], a
    db $fc
    nop
    jr z, jr_007_6d58

jr_007_6d58:
    ld [bc], a
    cp b
    nop
    ld a, [hl+]
    nop
    ld [bc], a
    xor b
    nop
    jr nz, jr_007_6d62

jr_007_6d62:
    inc bc
    xor h
    nop
    dec bc
    ld [c], a
    ld b, b
    nop
    adc a
    nop
    ld c, $f8
    jp z, $2b34

    db $e3
    ld b, e
    ld b, h
    ld bc, $4037
    ld d, e
    ld a, h
    ld [$1934], sp
    db $10
    dec c
    adc d
    inc [hl]
    ld b, b
    inc bc
    ld b, h
    inc b
    rla
    adc c
    inc hl
    add h
    ld hl, $8d3f
    db $e3
    db $fc
    rst $20
    rra
    push bc
    add e
    cp h

Call_007_6d91:
    dec l
    dec h
    adc c
    jr nz, jr_007_6d46

    jr z, @+$18

    call nz, $dca2
    and h
    ld e, $c5
    db $d3
    ret c

    jr c, jr_007_6dcd

    adc e
    ld b, c
    ld l, h
    ld [hl], c
    ld c, $c6
    and d
    ld b, h
    ret nz

    cpl
    ld bc, $f8f2
    cpl
    scf
    add l
    inc sp
    jr jr_007_6d3a

    jr @-$3c

    ld hl, $50c4
    ld c, $42
    sub d
    ld a, b
    sub d
    inc e
    ld c, b
    ldh [rNR32], a
    ld hl, sp+$47
    rst $00
    ld a, [c]
    ld bc, $03bd
    rst $08
    add hl, bc
    db $fc

jr_007_6dcd:
    ld b, b
    ld sp, $43c3
    ld l, h
    db $10
    adc h
    ld c, [hl]
    or b
    db $10
    rst $18
    ld d, e

jr_007_6dd9:
    inc e
    add b
    nop
    di
    ld [bc], a
    rrca
    sub b
    jr nc, jr_007_6dd9

    nop
    ld c, $d0
    ld h, b
    rst $20
    ld [bc], a
    dec c
    ret nc

    ret nz

    rst $08
    inc b
    dec bc
    call nc, $90ea
    ld c, b
    ld b, b
    dec d
    ret z

    ei
    ld [bc], a
    adc a
    ld [hl], b
    db $10
    call z, Call_000_0c10
    pop hl
    ld [$008e], sp
    adc c
    jp nc, Jump_000_3d44

    ld [$d107], sp
    inc b
    xor $00
    sub b
    ld h, d
    ld a, h
    dec d
    inc sp
    call nz, $b463
    jr z, jr_007_6e4e

    ld b, d
    inc bc
    inc a
    ld c, d
    rlca
    add c
    ld b, e
    ld hl, sp+$04
    rrca
    nop
    add e

jr_007_6e21:
    ld l, h
    sub b
    ld a, [de]
    jp nz, $ac01

    ld h, b
    ld l, $c1
    ld [bc], a
    db $ec
    jr nz, @+$40

    ret nz

    ld [bc], a
    inc l
    nop
    ld a, [hl+]
    ret nz

    inc bc
    pop de
    db $ed
    nop
    rrca
    db $10
    ld [bc], a
    sub [hl]
    or [hl]
    ld e, [hl]
    ld d, e
    sub $da
    rla
    ld l, l
    and b
    inc d
    nop
    dec e

jr_007_6e47:
    ld b, b
    nop
    ld d, h
    nop
    dec d
    ld b, b
    nop

jr_007_6e4e:
    inc b
    nop
    dec [hl]
    ld [c], a
    db $eb
    ld e, b
    nop
    ld [hl+], a
    ld a, [hl+]
    ld a, [hl+]
    ld b, b
    ccf
    ld c, b
    ret nz

    dec bc
    pop de
    rst $00
    ld b, a
    rst $28
    adc e
    jp hl


    inc hl
    jr nc, @+$6f

    ret nc

    nop
    db $10
    cp [hl]
    ld d, d
    jr nc, jr_007_6e21

    dec h
    cp [hl]
    ldh a, [$34]
    ld a, h
    ld d, c
    jr nc, @+$72

    ld a, e
    push af
    rra
    ld h, a
    ld [hl], b
    call z, $080d
    call nz, $d22f
    ld a, h
    jr nz, jr_007_6e47

    rst $28
    ld c, d
    ld e, e
    rla
    ld [hl], c
    rst $08
    adc e
    rst $18
    ld [$0800], sp
    jr c, @-$22

jr_007_6e90:
    nop
    ld [bc], a
    ld sp, $f3e3
    dec e
    jp $c06e


    nop
    push de
    nop
    ld bc, $791c
    ld bc, $0000
    ld b, b
    ld b, b
    jr nz, jr_007_6ebe

    db $10
    ld [$0305], sp
    ld bc, $00c1
    sub b
    ld d, b
    inc l
    jr jr_007_6ebf

    add d
    inc bc
    add c
    pop hl
    nop
    adc b
    ld c, b
    inc h
    inc de
    ld a, [bc]
    dec b
    ld b, d

jr_007_6ebe:
    pop bc

jr_007_6ebf:
    ld [hl], b
    ret nz

    ld h, h
    inc [hl]
    dec de
    ld c, $07
    ld b, e
    pop de
    ld [hl], b
    ld hl, sp-$80
    ld b, e
    rla
    adc h
    ld [$6284], sp
    ld b, c
    jr z, @-$66

    ld c, [hl]
    jr z, jr_007_6eeb

    adc d
    add l
    ld h, d
    ret


    ld c, b
    or [hl]
    ld d, c
    rla
    rla
    dec bc
    add $03

jr_007_6ee3:
    ld de, $cc90
    ld l, b
    dec [hl]
    dec de
    dec c
    rst $00

jr_007_6eeb:
    inc bc
    sbc c
    or h
    ldh [rNR50], a
    ld a, [hl-]
    dec e
    adc a
    rlca
    and e
    pop hl
    ld sp, hl
    nop
    add d
    ld b, d
    ld hl, $0891
    or h
    ld l, c
    ld c, c
    jr jr_007_6e90

    ld c, b
    inc h

Call_007_6f04:
    sub d
    adc c
    ld h, h
    jp nz, Jump_000_3869

    sbc [hl]
    ld d, b

jr_007_6f0c:
    jr z, jr_007_6ee3

    ld h, d
    push hl
    ld [hl+], a
    sbc c
    ld d, b
    xor d
    ld d, [hl]
    dec hl
    sub [hl]
    dec bc
    dec h
    and d
    reti


    ld [hl], b
    cp e
    ld h, e

jr_007_6f1e:
    add hl, bc
    rla
    adc e
    and $03
    add hl, bc
    adc b
    add $64
    ld [hl-], a
    sbc c
    adc h
    and $83
    ld c, l
    call nz, Call_007_6bd4
    ld [hl], $1b
    ld c, l
    add $f3
    add c
    call nz, $73e4
    ld a, [hl-]
    dec e
    ld l, [hl]
    daa
    ld h, e
    cp c
    ldh [$f2], a
    ld a, d
    dec a
    sbc a
    rrca
    and a
    db $e3
    ld a, [$0301]
    ld [hl], c
    ld b, c
    jr nz, jr_007_6f1e

    adc b
    ld d, h
    ld [hl-], a
    dec e
    db $10
    adc c
    ld b, l
    ld [hl+], a
    pop de
    adc b
    reti


    or d
    add hl, sp
    rra
    rla
    ld c, b
    inc h
    ld d, d
    ld c, c
    inc [hl]
    and b
    ld c, c
    ld a, [hl+]
    sub [hl]
    ld c, e
    and [hl]
    inc de

Jump_007_6f69:
    add hl, hl
    xor b
    cp d
    ld l, l
    jr c, jr_007_6f0c

    ld c, a
    daa
    db $d3
    ld [$0a05], a
    adc c
    ld b, [hl]
    and h
    db $dd
    xor c
    ld d, h
    ret


    push af
    ld a, [hl-]
    and e
    db $76
    xor c
    ld d, l
    ld b, b
    ld b, b
    nop
    nop
    inc bc
    pop hl
    ldh a, [$80]
    ld b, b
    ld hl, sp+$7c
    ld a, [hl+]
    dec d
    dec bc
    add l
    jp nz, Jump_000_3804

jr_007_6f94:
    add c
    ld [bc], a
    ld a, a
    cp a
    ldh [rHDMA1], a
    ld c, b
    xor h
    ld e, c
    ldh a, [$f8]
    inc b
    ld [bc], a
    rlca
    jp Jump_007_50e1


    xor b
    ld [hl], h
    ld a, [hl-]
    ld bc, $8048
    ld d, b
    ld sp, hl
    inc l
    sbc d
    ld c, e
    ld d, $94
    push bc
    add b

jr_007_6fb4:
    ldh [rOBP0], a
    jr z, jr_007_6fb4

    ld b, d
    add hl, sp
    inc b
    sbc h
    jp z, $f146

    add hl, de
    ld c, b
    nop
    ld l, d
    db $10
    ccf
    ret nz

    ld sp, $fa37
    ld sp, $14ec
    ld [hl], a
    ld [bc], a
    rra
    pop bc
    ld a, [bc]
    inc de
    sbc d
    jr z, @-$1e

    db $10
    ld a, $41
    rrca
    db $f4
    inc b
    cp [hl]
    ld a, [hl+]
    rst $20
    ld b, d
    ld b, l
    ld d, b
    nop
    ld a, [bc]
    and h
    and l
    ld bc, $9556
    nop
    nop
    ld b, b
    nop
    jr nc, jr_007_6ffe

    inc e
    ld a, [bc]
    sub c
    ret c

jr_007_6ff2:
    xor h
    db $76
    ld [hl+], a
    ld a, c
    jr nz, jr_007_6ff2

    ld h, b
    inc a
    sub b
    dec c
    ldh [$03], a

jr_007_6ffe:
    ld hl, sp+$30
    add $22
    jr nz, jr_007_6f94

    ld h, c
    pop de
    dec [hl]
    db $fc
    inc e
    ld c, b
    ret c

    inc b
    ld [hl], $90
    ld b, $e1
    ld b, c
    ret c

    and b
    inc a
    sbc l
    nop
    ld [hl+], a
    ld h, a
    ld a, [c]
    inc b
    inc d
    ld e, $00
    call nz, Call_007_4341
    ldh [rTAC], a

Jump_007_7022:
    ldh [rNR11], a
    ldh [rNR10], a
    and h
    or b
    nop
    add hl, de
    inc a
    sbc l
    dec h
    ret nz

    nop
    ccf
    inc d
    add a
    add d
    ld c, d
    push de
    ld b, b
    ld [bc], a
    rst $20
    nop
    add hl, sp
    ret nz

    inc [hl]
    ld a, d
    dec sp
    cp h
    ld [de], a
    rst $28
    nop
    inc a
    inc [hl]
    ld b, b
    rlca
    ld a, d
    jr z, @-$24

    nop
    or [hl]
    rra
    jp nz, $f007

    ld b, c
    call c, $0229
    ld h, b
    db $10
    add hl, hl
    add hl, hl
    nop
    ld bc, $a1c0
    sub d
    jr nz, @+$58

    dec h
    jr nz, @+$12

    inc c
    or b
    ld e, $08
    call nz, $8207

jr_007_7068:
    ld b, c
    ret nc

    inc h
    ld [$827f], sp
    sbc [hl]
    add b
    ld de, $88e8
    dec d
    ld h, a
    ld hl, $e93b
    db $76
    xor e
    jr nz, jr_007_707c

jr_007_707c:
    jr jr_007_7089

    or l
    add e
    ldh a, [$87]
    jr nz, jr_007_7068

    ld b, a
    ret nz

    ld [bc], a
    inc sp
    xor e

jr_007_7089:
    ret z

    ld h, [hl]
    add hl, hl
    dec [hl]
    xor [hl]
    ld e, b
    db $ec
    ld d, d
    scf
    add hl, bc
    add hl, bc
    add b
    ld e, b
    call z, Call_007_4067
    ld a, [hl]
    inc b
    dec e
    add b
    ccf
    ld b, e
    or b
    dec d
    xor c
    db $eb
    nop
    jr nz, jr_007_70ac

    ld b, c
    jp hl


    ld l, d
    sbc c
    db $e4
    add hl, bc

jr_007_70ac:
    push bc
    ld [hl], a
    sub c
    ld d, b
    jr c, jr_007_70ba

    dec bc
    jp nz, $bc11

    ld b, d
    dec sp
    ret z

    adc b

jr_007_70ba:
    ld bc, $3f98
    add b
    inc h
    ld h, h
    ld a, [c]
    inc b
    adc [hl]
    ld h, b
    sub b
    adc $12
    ld bc, $40e0
    ld a, $08
    nop
    ldh [rP1], a
    jr c, jr_007_70d9

    inc bc
    sub b
    jr nz, jr_007_7108

    nop
    inc bc
    ld [hl], b
    inc b

jr_007_70d9:
    dec [hl]
    nop
    inc bc
    sub b
    and h
    rra
    ld bc, $5390
    inc b
    ld bc, $cc38
    ld [hl+], a
    db $fc
    sub b
    rrca
    jp nz, Jump_007_5c82

    inc b
    inc l
    jp nz, $cc03

    ld d, b
    jr c, @-$2b

    and b
    ld [hl+], a
    inc b
    sub c
    jr nz, @+$58

    xor l
    dec a
    jr nz, jr_007_715f

    ld h, [hl]
    push hl

Call_007_7101:
    db $10
    sub d
    adc h
    rlca
    ld [hl], c
    add hl, hl
    ld c, b

jr_007_7108:
    push de
    rst $10
    add hl, sp
    ld d, $46
    add c
    add b
    ld b, d
    inc h
    ld e, $04
    inc bc
    ldh [$80], a
    add hl, bc
    ret nz

    ld d, b
    call z, $0e12
    jp nz, $cca1

    ld d, b
    ld e, h
    ld c, $72
    sub b
    cp a
    inc b
    ld c, a
    ld h, a
    ld hl, sp+$08
    inc a
    ld c, b
    inc bc
    call nz, $8101
    ld de, $3a96
    dec d
    sbc h
    ld b, b
    add a
    sbc d
    ld [hl], a
    ld a, c
    rst $20
    sbc c
    add hl, hl
    inc d
    ld [hl], d
    pop hl
    jr c, jr_007_7148

    ld a, a
    add b
    ld c, $10
    ld b, $22

jr_007_7148:
    and c
    nop
    ld a, [bc]
    ld d, $85
    dec sp
    add d
    ld [$2118], sp
    ld [$3146], sp
    add hl, bc
    ld d, c
    sbc [hl]
    reti


    jp $82fc


    sbc [hl]
    rst $08
    ld [bc], a

jr_007_715f:
    ld b, c
    xor e
    ld [hl], d
    jr nz, @+$63

    ret c

    ld d, h
    ccf
    adc b
    add d
    inc c
    add b
    nop
    db $dd
    jp c, $a18a

    xor c
    ld a, [hl+]
    ld h, $ac
    rst $30
    ld bc, $f50f
    ld sp, $44e1

jr_007_717b:
    ldh [rBGP], a
    ld a, c
    ldh [$4e], a
    ret c

    rst $20
    inc d
    ld a, e
    ld [de], a
    sbc e
    and l
    ld d, c
    jp $0845


    ld b, d
    db $10
    adc h
    ld [bc], a
    add hl, bc
    ldh a, [rWY]
    ld a, e
    inc a
    ret


    ld a, [hl+]
    xor b
    ld b, $a1
    add b
    adc b
    adc d
    ld e, $57
    sub d
    inc hl
    jr jr_007_71e6

    inc sp
    add b
    add b
    ld [c], a
    inc hl
    or h
    inc l
    ei
    ld c, d
    ret nc

    ld c, $40
    dec d

jr_007_71af:
    sub c
    ld h, h
    jr nc, jr_007_717b

    inc hl
    inc e
    inc b
    daa
    ld b, b
    ld d, b
    ld h, h
    ld [$4000], sp
    dec bc
    add [hl]
    pop hl
    ld [hl], a
    xor d
    ld d, e
    db $fc
    ld de, $c033
    adc e
    ld l, h
    jp $a300


    ld [hl], $55
    jp nz, Jump_007_4863

    ld b, e
    ldh a, [$80]
    ccf
    jr @-$23

    jp c, $1ff3

    add b
    ld hl, $40f8
    ld c, e
    jp $b4f5


    ld c, h
    inc e
    ret nz

    inc hl

jr_007_71e6:
    call nz, Call_000_3890
    ld b, b
    inc c
    rla
    dec b
    jr c, jr_007_71af

    inc hl
    adc l
    and d
    ld bc, $161a
    sbc h
    xor $00
    ld sp, $410c
    ld b, h
    ccf
    add b
    inc bc
    ld hl, sp-$40
    adc b
    ld bc, $03e0
    ld a, [de]
    rst $00
    ld a, [de]
    ret nc

    ld hl, $3ba9
    ret nz

    add [hl]
    add a
    inc hl
    ld l, e
    ld a, [de]
    inc d
    db $f4
    jr nz, jr_007_723d

    adc b
    jr nz, jr_007_7289

    nop
    jp z, $dcf2

    or b
    nop
    sbc e
    rst $08
    ld [hl-], a
    ld [$0177], sp
    rlca
    ld [hl], b
    inc bc
    ld [hl], $ce
    nop
    ld c, h
    rlca
    dec d
    add l
    ld c, a
    pop bc
    ld de, $6458
    daa
    jr nc, @+$0d

    dec d
    xor c
    ld [hl], h
    ld e, d
    adc [hl]
    and [hl]

jr_007_723d:
    add c
    ld h, [hl]
    di
    call nz, Call_000_3c00
    ret nz

    inc hl
    rst $08
    ld c, h
    call nc, $f20f
    ld de, $0c3d
    ld l, $93
    inc e
    ld b, b
    ld hl, $0dc0
    ld h, a
    ld e, c
    cpl
    jp nz, $fc02

    nop
    cpl
    add d
    ld [hl+], a
    ld [hl], b
    nop
    ret c

    or $5d
    sub d
    xor h
    jr nz, @-$77

    sub b
    jr nz, jr_007_72db

    nop
    ld [hl], $cd
    cp e
    ld l, l
    nop
    dec c
    ldh [rLCDC], a
    sbc $dc
    ld b, c
    inc bc
    jr c, jr_007_7279

jr_007_7279:
    db $dd
    rst $30
    sbc l
    pop hl
    ei
    nop
    sbc a
    ret nz

    ld [$8b39], sp
    ld a, b
    ld e, $03
    add b
    cp d

jr_007_7289:
    ld c, l
    ldh a, [rSCX]
    ld d, [hl]
    nop
    inc c
    ld a, [hl]
    daa
    adc e
    ld [c], a
    sub d
    ld [hl], h
    sub h
    ld b, e
    db $10
    add l
    pop af
    ld b, b
    ld [hl], a
    ld de, $142a
    or b
    rlca
    ld b, b
    db $db
    ld b, c
    ld bc, $56d2
    dec hl
    ld [hl], l
    ld d, l

jr_007_72aa:
    sub h
    ld l, [hl]
    jp nz, Jump_000_1e0c

    ld bc, $0320
    ldh [$03], a
    and [hl]
    jp hl


    xor a
    or e
    db $fc
    add c
    ld [hl], h
    sbc b
    ld d, e
    call nz, Call_000_3e10
    ret nz

    xor l
    ld c, b
    ld a, a
    ld e, e
    ld l, a
    ret nz

    dec b
    bit 0, b
    adc [hl]
    ldh a, [rTIMA]
    xor c
    ccf
    pop bc
    inc b
    ld c, [hl]
    xor b
    jp nz, Jump_000_19cc

    daa
    dec de
    ret c

    ld a, [bc]
    inc bc

jr_007_72db:
    db $fc
    ld b, c
    ld [hl], h
    sub h
    ld b, e
    or b
    jr z, jr_007_7323

    cp d
    cp $c4
    rst $38
    xor d
    ld a, e
    ld d, b
    rst $38
    or a
    xor a
    jp c, $87cc

    cp l
    ld c, a
    ld d, h
    ret nz

    ld h, b
    rst $28
    jr z, jr_007_7308

    inc l
    cp e
    rst $18
    ret c

    ld a, [bc]
    ld [hl+], a
    ld sp, hl
    inc d
    inc e
    ld b, b
    ld de, $bec1
    nop
    rlca
    add b

jr_007_7308:
    jr nz, @+$7a

    nop
    rlca
    ret nz

    ld [de], a
    ld sp, hl
    ld l, l

jr_007_7310:
    ld d, e
    or [hl]
    dec d
    ret nc

    ld a, l
    ld d, b
    jr nc, jr_007_731e

    jr nz, jr_007_7359

    adc h
    dec l
    ld a, [de]
    and c

jr_007_731e:
    ld b, c
    ld b, e
    jr nc, jr_007_72aa

    dec a

jr_007_7323:
    ld bc, $e043
    ld l, e
    ld c, a
    db $d3
    db $f4
    db $dd
    ld l, $6f
    add c
    dec bc
    ld c, $24
    ld b, b
    dec sp
    jp nz, Jump_007_628f

    xor h
    ld bc, $442b
    dec bc
    ld h, [hl]
    cpl
    cpl
    ld h, e
    ld [hl], b
    nop

Call_007_7341:
    daa
    add b
    ld l, $99
    ld [bc], a
    db $db
    or $fd
    or b
    ld sp, hl
    ld [hl+], a
    rrca
    sbc e
    adc e
    ld a, e
    sbc $b7
    and e
    ld a, h
    ld de, $d937
    ld c, [hl]
    dec bc

jr_007_7359:
    add d
    ldh [rBGP], a
    pop de
    inc d
    ld a, h
    ld b, l
    jr c, jr_007_7310

    rla
    cp [hl]
    ld [hl], h
    ld b, b
    add e
    call c, $e690
    dec c
    ld [c], a
    add hl, hl
    adc [hl]
    scf
    ld b, h
    ld d, c
    ld e, a
    sub c
    db $10
    ld d, b
    ld [bc], a
    add c
    ld [bc], a
    rlca
    inc bc
    rrca
    add h
    rra
    ld [$0186], sp
    ld bc, $8000
    nop
    ld b, e
    and c
    ldh a, [$e7]
    nop
    add d
    ld hl, $0014
    nop
    ld h, d
    ldh [rSB], a
    ld hl, sp-$7e
    inc c
    rrca
    inc b
    ld bc, $00c0
    ld [hl], b
    jr nz, @+$0e

    nop
    di
    ld [$c51b], sp
    ld de, $6408
    ld [hl], $1a
    rst $18
    jr z, jr_007_73e8

    nop
    sub c
    jr z, jr_007_7359

    ld b, c
    ldh a, [$08]
    rrca
    add h
    ld e, a
    ldh a, [$d9]
    sub h
    ld d, [hl]
    dec d
    dec d
    adc e
    add b
    ld b, b
    nop
    jr nc, jr_007_73d3

    add h
    ld e, $09
    ld a, c
    and h
    sbc h
    nop
    ld a, [bc]
    ld b, h
    ld c, c
    add b
    nop
    add l
    ld b, e
    ld hl, $49d3
    call nc, Call_000_3c40

jr_007_73d3:
    db $10
    inc de
    add hl, bc
    nop
    ld b, b
    ld a, [bc]
    push bc
    ld h, b
    inc c
    inc b
    ld bc, $0001
    ret nz

    jr nz, @+$6a

    ld h, $10
    ld hl, sp+$40
    cpl

jr_007_73e8:
    nop
    adc e

Call_007_73ea:
    db $e4
    ld de, $81fc
    ld a, [de]
    ld c, a
    sub b
    dec de
    add $29
    call nc, $2532
    ld c, a
    and b
    nop
    and h
    ld [hl], d
    add hl, sp
    inc c
    ld a, [hl]
    adc b
    ld e, $09
    rrca
    inc b
    sub h
    ldh [rDIV], a
    xor [hl]

Call_007_7408:
    ld [hl], e
    dec d
    cp l
    add d
    ld bc, $10e0
    ld [hl], b
    ld [bc], a
    ld a, [$113e]
    rra
    adc b

jr_007_7416:
    rst $08
    and h
    ld d, h
    cp $7f
    ld b, c
    ld bc, $4480
    ld h, d
    ld bc, $50b8
    ld a, h
    ld [bc], a
    cp a
    sbc a
    ld c, b
    xor b
    inc [hl]
    inc de
    inc e
    adc e
    ld h, b
    ld h, [hl]
    ld [de], a
    inc de
    adc c
    ld b, c
    add sp, -$6b
    sbc $88
    ld [hl], e
    add c
    rra

jr_007_743a:
    pop hl
    rla
    ld [c], a
    db $10
    ldh a, [$08]
    ld a, $01
    rra
    jp z, $f926

    ld b, l
    rrca
    jr nc, jr_007_73d3

    call nc, $cca1
    ld [hl-], a

jr_007_744e:
    inc de
    add c
    ld b, b
    ld h, b
    jr nz, jr_007_7460

    ld [bc], a
    inc bc
    ld bc, $2407
    ldh [$50], a
    pop hl
    rst $08
    ld hl, $8af1

jr_007_7460:
    sub l
    db $f4
    ld hl, sp+$44
    ld a, b
    inc b
    scf
    db $e3
    pop af
    ld h, b
    ret c

    inc h
    daa
    nop
    add hl, bc
    ret nz

    cp l
    or c
    ldh a, [$b0]
    ld a, $16
    and d
    ld hl, $0951
    or b
    sub d
    inc l
    jr nz, jr_007_7416

    ld [bc], a
    rrca
    jp $f107


    inc bc
    db $fc
    inc bc
    or d
    sub a
    call $d43a
    cp b
    ld e, [hl]
    ld [de], a
    and l
    rla
    and b
    ret z

    ld b, c
    ldh a, [rDIV]
    jr c, jr_007_7498

jr_007_7498:
    inc b
    ld [hl], b
    nop
    rst $38
    ld bc, $9001
    inc h
    db $fd
    ld bc, $110c
    ld bc, $433f
    sub [hl]

jr_007_74a8:
    or e
    call z, $5312
    inc e
    ld de, $107c
    ld c, e
    rst $08
    ld [de], a
    ld b, h
    db $e3
    jr z, jr_007_744e

    jr nc, jr_007_743a

    ld [$c03f], sp
    ld [bc], a
    ld a, h
    sub b
    ld [hl], l
    dec e
    ld h, h
    add hl, hl
    rla
    ld c, b
    ld d, c
    and a
    call $45d6
    ld c, a
    jr nz, @+$4a

    ld [c], a
    ld [$218c], sp
    ld [$8c02], sp
    and e
    jr c, jr_007_74a8

    dec e
    ld l, a
    pop de
    ld [bc], a
    ld [hl], h
    nop
    dec a
    ret


    ld c, b
    db $dd
    rrca
    ld a, [hl]

Jump_007_74e3:
    push de
    inc hl
    db $fc
    add c
    adc a
    ld d, b
    push hl
    ld b, $43
    nop
    ld [hl+], a
    xor c
    inc c
    ld [hl], b
    nop
    inc c
    ld [hl], b
    db $10
    sbc [hl]
    nop
    dec bc
    dec b
    ld h, $3f
    ld b, e
    rst $08
    ret nz

    nop
    ld [$0000], sp
    ldh a, [rNR10]
    ld c, $00
    add b
    jp hl


    ld e, c
    rrca
    jr nc, @-$3e

    inc bc
    inc c
    ld b, c
    ld sp, $4384
    jr jr_007_7554

    ld sp, $2380
    or b
    xor b
    rra
    ld bc, $c840
    ld b, $5d
    ld h, e
    pop de
    db $f4
    nop
    ld c, $42
    add b
    ld b, h
    nop
    sbc l
    ld d, e
    and e
    ret z

    ld [bc], a
    inc a
    adc d
    ld hl, $0248
    inc b
    and e
    ld c, d
    nop
    ld de, $e407
    ld h, h
    ld [de], a
    add l
    and c
    add l
    pop bc
    ld [hl], b
    ld d, h
    dec d
    jr z, jr_007_754e

    jr nc, jr_007_7548

    ld c, $83

jr_007_7548:
    and b
    xor b
    ld a, [hl+]
    rra
    rlca
    ret nz

jr_007_754e:
    ld b, b
    db $10
    rlca
    add sp, $34
    ld a, [hl-]

jr_007_7554:
    rra
    and [hl]
    and b
    ld d, h
    ld b, b
    rst $38
    add a
    jp hl


    sbc d
    ld [hl], d
    sbc d
    rrca
    add e
    ldh [rNR41], a
    ld [$0f3e], sp
    add h
    ld a, $9b

jr_007_7569:
    and [hl]
    sub b
    stop
    nop
    ld h, b
    ld [hl], b
    ld c, b
    inc l
    ld a, [de]
    ld [$0102], sp
    add c
    ld hl, $4060
    jr z, jr_007_7594

    ld c, $08
    add [hl]
    ld b, e
    ld bc, $c030
    ld d, b
    inc l
    jr jr_007_7594

    rlca
    ld bc, $e101
    nop
    adc b
    ld c, d
    ld d, $13
    ld a, [bc]
    dec b
    ld b, d
    pop bc

jr_007_7594:
    ld a, b
    xor b
    inc c
    jr nc, jr_007_75b2

    dec c
    ld b, $c3
    add c
    ret c

    sub b
    ld a, b
    ld a, $20
    db $10
    adc b
    add b
    add d
    ld sp, $2820
    ld b, $25
    inc de
    add hl, bc
    push bc
    ld [bc], a
    sub c
    ld d, b
    and b

jr_007_75b2:
    ld d, [hl]
    inc l
    ld d, $8b
    add l
    db $e3
    ld bc, $c888
    ld h, [hl]
    inc [hl]
    ld a, [de]
    adc l
    add b
    ld h, e
    ld [hl], c
    ret nz

    db $e4
    ld [hl], h
    dec sp
    ld e, $0e
    add a
    and e
    pop hl
    ld sp, hl
    nop
    add d
    ld b, d
    ld hl, $0891
    and h
    ld h, d
    add hl, sp
    jr nz, jr_007_7569

    ld c, d
    dec h
    sub e
    add hl, bc
    and h
    ld [c], a
    ld a, c

jr_007_75de:
    ld b, b
    and d

jr_007_75e0:
    ld d, d
    add hl, hl
    sub l
    ld a, [bc]
    and l
    ld h, d
    cp c
    ld h, b
    or d
    ld e, d
    dec l
    sub a
    dec bc
    and l
    ld [c], a

Jump_007_75ef:
    ld sp, hl
    add b
    jp nz, $3162

    jp nz, $86cc

    ld d, e
    ld sp, $d09c
    ld l, c
    ld [bc], a
    ld a, [de]
    adc l
    ld h, b
    ld b, e
    ld h, h
    jr z, jr_007_75de

    ld l, [hl]
    scf
    sbc h
    ld c, $20
    ld b, e
    sub c
    call z, Call_007_7408

jr_007_760e:
    ld a, [hl-]
    sbc l

jr_007_7610:
    adc [hl]
    rst $20
    add e
    ret


    add sp, -$0a
    ld a, h
    add l
    rra
    ld c, a
    rst $00
    db $f4
    inc b
    ld c, b
    ld [$4181], sp
    ld bc, $6810
    ld b, h
    ld a, [hl+]
    add hl, de
    ld c, $88
    add l
    ld h, a
    push af
    ld [hl], b
    call nz, Call_000_2c4c
    inc d
    adc d
    sub $6c
    and c
    adc b
    or h
    ld h, d
    scf
    ld l, a
    cp b
    call c, $b7ee
    ld [$08e8], sp
    nop
    rst $28
    nop
    rst $00
    jr z, jr_007_760e

    db $10
    sub e
    ld b, h
    rst $00
    ld b, h
    cp e
    nop
    cp e
    xor d
    rst $38
    nop
    add c
    add d
    sbc l
    jr nz, jr_007_7610

    inc b
    add c
    ld [bc], a
    cp c
    inc b
    sbc l
    jr nz, jr_007_75e0

    add d
    rst $38
    nop
    add a
    ld b, h
    inc de
    xor b

jr_007_7666:
    ccf
    ld b, b
    ld a, a
    nop
    ccf
    ld b, b
    inc de
    xor b
    add a
    ld b, h
    rst $38
    nop
    add e
    add h
    or c
    ld a, [bc]
    cp c
    inc b

jr_007_7678:
    cp l
    nop
    cp c
    inc b
    or c
    ld a, [bc]
    add e
    add h
    rst $38
    nop
    add c
    add b
    cp a
    ld [bc], a
    cp a
    nop

jr_007_7688:
    add a
    inc b
    cp a
    nop
    cp a
    ld [bc], a
    add c
    add b
    rst $38
    nop
    add e
    add d

jr_007_7694:
    cp l
    nop
    cp a
    nop
    adc a
    ld [$00bf], sp
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    add a
    ld b, h
    dec de
    and b
    ccf
    ld b, b
    ld b, a
    inc h
    dec sp
    ld b, b
    inc de
    xor b
    add a
    ld b, h
    rst $38
    nop
    cp e
    xor d
    cp e
    nop

jr_007_76b6:
    cp e
    nop
    add e
    nop

jr_007_76ba:
    cp e
    nop
    cp e
    nop
    cp e
    xor d
    rst $38
    nop
    rst $00
    ld b, h
    xor e
    ld b, h
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    xor e
    ld b, h
    rst $00
    ld b, h
    rst $38
    nop
    jp $f742


    nop
    rst $30
    nop
    rst $30
    nop
    or a
    nop
    sub a
    jr nz, jr_007_7666

    ld c, b
    rst $38
    nop
    cp e
    adc b
    and a
    db $10
    add a
    jr z, jr_007_7678

    db $10
    add a
    jr z, jr_007_7694

    db $10
    cp e
    adc b
    rst $38
    nop
    cp a
    and b
    cp a
    nop
    cp a
    nop

Jump_007_76f8:
    cp a
    nop
    cp a
    nop
    cp a
    inc b
    add e
    add b
    rst $38
    nop
    sub e
    jr z, jr_007_7688

    db $10
    add e
    nop

Call_007_7708:
    add e
    jr z, jr_007_76b6

    nop
    cp e
    db $10
    cp e
    add d
    rst $38
    nop

jr_007_7712:
    cp l
    and l
    adc l
    db $10
    add l
    jr z, jr_007_76ba

    inc d
    or c
    ld [$04b9], sp
    cp l
    and l
    rst $38
    nop
    jp $9924


    ld b, d
    sbc c
    inc h
    cp l
    nop
    sbc c
    inc h

jr_007_772c:
    sbc c
    ld b, d
    jp $ff24


    nop
    add c
    add d
    cp l
    nop
    cp l
    nop
    add c
    ld [bc], a

jr_007_773a:
    cp a
    nop
    cp a
    nop

jr_007_773e:
    cp a
    and b
    rst $38
    nop
    add a
    ld c, b
    inc sp
    add h
    inc sp
    ld c, b
    ld a, e
    nop
    inc sp
    ld e, b
    inc hl
    sub h
    add e
    ld b, b
    rst $38
    nop
    add e
    add h

jr_007_7754:
    cp e
    nop
    cp e
    nop
    add e
    inc b

jr_007_775a:
    cp e
    nop
    cp e
    nop
    cp e
    xor d
    rst $38

Jump_007_7761:
    nop
    inc bc
    adc b
    scf
    ld b, h
    ld a, a
    nop
    inc bc
    add h

jr_007_776a:
    di
    ld [$80bb], sp
    inc bc
    ld b, h
    rst $38
    nop
    ld bc, $ef00
    add d
    rst $28
    nop
    rst $28
    nop

jr_007_777a:
    rst $28
    nop
    rst $28
    nop
    rst $28
    jr z, @+$01

    nop
    cp e
    xor d
    cp e
    nop

jr_007_7786:
    cp e
    nop
    cp e
    nop
    cp e
    nop
    sub e
    jr z, jr_007_7712

    ld b, h
    rst $38
    nop
    cp e
    add d

Jump_007_7794:
    cp e
    nop
    sub e
    jr z, jr_007_772c

    ld b, h
    rst $00
    db $10
    rst $00
    jr z, @-$0f

    nop
    rst $38
    nop
    cp e
    add d
    cp e
    db $10
    add e
    jr z, jr_007_7754

    jr z, jr_007_773e

    db $10
    xor e
    jr c, jr_007_7786

    ld l, h
    rst $38
    nop
    cp e
    xor d
    sub e
    jr z, jr_007_773a

    ld d, h
    rst $00
    jr z, jr_007_773e

    ld d, h

jr_007_77bc:
    sub e
    jr z, jr_007_777a

    xor d

jr_007_77c0:
    rst $38
    nop
    cp e
    add d
    sub e
    jr z, jr_007_775a

    ld b, h
    rst $00
    nop
    rst $00
    jr z, jr_007_77bc

    nop

jr_007_77ce:
    rst $28
    jr z, @+$01

    nop
    inc bc
    ld [bc], a
    pop af
    adc d
    db $e3
    inc d
    rst $00
    jr z, jr_007_776a

    ld d, b
    rra
    and d
    add c
    add b
    rst $38
    nop
    add e
    ld b, h
    sub e
    jr z, jr_007_77ce

    inc d
    rst $20
    ld [$00ef], sp
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $00
    jr z, jr_007_77bc

    nop
    rst $28
    jr z, jr_007_77c0

    jr z, @-$0f

    nop
    rst $38
    nop
    rst $00
    jr z, @+$01

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

jr_007_780c:
    ccf
    add b
    ccf
    add b
    rst $38
    nop
    rst $08
    nop
    or a
    nop
    rst $08
    nop
    or a
    nop
    or l
    nop
    sub e
    nop
    call $ff00
    nop
    add e
    nop
    add hl, sp
    nop
    ld b, l
    nop
    ld e, l
    nop
    ld b, l
    nop
    add hl, sp
    nop
    add e
    nop

jr_007_7830:
    rst $38
    nop
    add e
    ld b, h
    ld de, $39aa
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    ld de, $83aa
    ld b, h
    rst $38
    nop
    rst $00
    jr nz, jr_007_780c

    nop
    rst $00
    jr nz, jr_007_7830

    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $38
    nop
    inc bc
    add b
    add hl, sp
    nop
    pop af
    ld [$32d1], sp
    add e
    ld b, h
    rla
    sbc b
    ld bc, $ff00
    nop
    ld bc, $7182
    ld c, b
    ld sp, hl
    nop
    pop hl
    ld [hl+], a
    ld sp, hl
    nop
    ld [hl], c
    ld c, b
    ld bc, $ff82
    nop
    db $e3
    db $10
    jp $8320


    ld d, b
    inc sp
    add b
    ld bc, $f300
    nop
    di
    nop
    rst $38
    nop
    ld bc, $3f02
    nop
    add c
    add d
    pop af
    ld [$00f9], sp
    ld de, $0128
    add d
    rst $38
    nop
    pop bc
    ld [hl+], a
    add a
    ld c, b
    rrca
    sub b
    ld bc, $3902
    nop
    add hl, sp
    nop
    ld bc, $ff82
    nop
    add e
    add d
    add hl, sp
    nop
    ld sp, hl
    ld a, [bc]
    di
    inc d
    rst $20
    jr z, @-$2f

    nop
    rst $08
    nop
    rst $38
    nop
    ld bc, $1182
    jr z, jr_007_78f0

    nop
    ld bc, $3982
    nop
    ld de, $0128
    add d
    rst $38
    nop
    ld bc, $3982
    nop
    add hl, sp
    nop
    ld bc, $f180
    ld [bc], a
    di
    inc d
    rlca
    adc b
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
    rst $08
    db $10
    rst $08
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

jr_007_78f0:
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
    sbc a
    ld b, b
    sbc a
    ld b, b
    ccf
    add b
    nop
    ld b, b
    and b
    ld [hl], b
    ld c, b
    jr z, jr_007_790a

    rst $38

jr_007_790a:
    rlca
    add h
    ld b, d
    ld h, b
    adc a
    ld hl, sp+$54
    ld [hl], $1b
    rlca
    add l
    jp nz, Jump_000_0fe1

    ldh a, [$33]
    push hl
    ldh [rIF], a
    adc e
    inc a
    ld bc, $0820
    db $e4
    ld e, [hl]
    inc sp
    rla
    ld a, a
    cp l
    add c
    rst $28
    ld h, b
    ld c, e
    reti


    ld a, [c]
    ld b, $07
    cp h
    dec h
    db $10
    add h
    nop
    ld bc, $8080
    jr nc, @+$12

    ld d, $0a
    ld [bc], a
    pop bc
    ld b, b
    ld e, b
    jr z, jr_007_798d

    dec h
    add hl, bc
    ld h, h
    and l
    ld a, [hl+]
    sub l
    and h
    jp nc, $ba34

    ld b, [hl]
    adc a
    ld b, h
    pop de
    add sp, -$66
    cp l
    ld d, e
    rla
    sbc d
    ld h, d
    di
    ld c, b
    ld e, h
    ld l, b
    dec bc
    dec c
    ld bc, $a041
    jr nz, jr_007_7992

    inc b
    ld b, $00
    nop
    ret nz

    rst $18
    and $04
    db $fc
    xor d
    cp d
    rrca
    ld c, b
    nop
    inc l
    ld d, l

Call_007_7972:
    rst $20
    add l
    add c
    cp $6f
    ld a, b
    dec de
    jp nc, $f406

    ld sp, hl
    add d
    ld sp, $846e
    ld c, a
    adc c
    ld h, h
    or h
    or d
    ld e, h
    ld e, b
    cpl
    inc l
    sub a
    sub [hl]
    ld c, e

jr_007_798d:
    db $d3
    add hl, hl
    jp hl


    sub [hl]
    db $f4

jr_007_7992:
    ld c, e
    ld a, [hl-]
    dec b
    adc l
    ld [bc], a
    jp nz, Jump_007_6081

    ld b, b
    jr nc, jr_007_79bd

    jr jr_007_799f

jr_007_799f:
    add hl, bc
    ld [hl], h
    ld a, [bc]
    or h
    inc bc
    nop
    add c
    add b
    ld b, b
    ret nc

    jr z, jr_007_7a13

    inc d
    inc [hl]
    ld a, [bc]
    ld a, [de]
    ld b, l
    dec l
    ld [hl+], a
    sub [hl]
    inc a
    ld bc, $ab58
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [bc]
    ld [hl], l
    ld [hl-], a

jr_007_79bd:
    sub l
    ld c, b
    and e
    ld d, c
    jr z, jr_007_7a17

    dec bc
    sbc c
    ld a, [hl+]
    ld [hl], l
    jr c, @-$63

    ld c, l
    ld h, $53
    add hl, bc
    ld [hl], l
    inc sp
    ld l, [hl]
    cpl
    call c, $856e
    di
    call $2be9
    ld a, l
    ret nz

    dec h
    ld b, d
    add hl, hl
    ld d, h
    xor b
    ld b, [hl]
    xor $99
    ld [$f242], sp
    sub b

Call_007_79e6:
    or b
    adc [hl]
    inc c
    ldh a, [$f4]
    ld a, [$bf3e]
    ld c, a
    rst $08

Call_007_79f0:
    db $e3
    ei
    rst $38
    xor b
    ld a, h
    ld a, [hl]
    sub a
    dec de
    and b
    push bc
    ld l, d
    ld bc, $4000
    jr nz, jr_007_7a77

    db $fc
    ld [hl+], a
    dec b
    ld [bc], a
    ld b, c
    and b
    ld [$2524], sp
    ld a, [de]
    add d
    ld h, e
    or c
    ld c, l
    or a
    rst $28
    jr z, @-$48

    ld b, h

jr_007_7a13:
    rlca
    jr nz, jr_007_7a28

    sbc h

jr_007_7a17:
    inc b
    daa
    ld [de], a
    cp a
    ld b, l
    ld c, d
    and e
    ld hl, $fa90
    ld a, $8f
    db $d3
    db $f4
    ld hl, sp+$3e
    add l

jr_007_7a28:
    ld hl, $f85d
    ld a, [hl]
    sub b
    ld h, h
    dec d
    ld e, d
    ld d, [hl]
    add d
    jr @+$2b

    ld [bc], a
    ld [hl], a
    ret c

    rst $00
    adc b
    ret nz

    ld [$0107], sp
    ld b, b
    ret c

    add l
    pop hl
    ld [hl], a
    ret nc

    add d
    ld a, l
    rst $18
    sub e
    push af
    adc l
    ld b, b
    add c
    nop
    ld b, b
    nop
    ld [$0001], sp
    ret z

    ld [bc], a
    dec b
    ldh [$83], a
    db $f4
    ccf
    jr c, @+$05

    db $d3
    or l
    ld [$452b], sp
    jp nc, Jump_000_0db4

    ld b, d
    ld [bc], a
    ld d, c
    ld d, [hl]
    ld [hl], $3d
    nop
    ld d, b
    ldh a, [rSB]
    ccf
    nop
    ld de, $01b0
    adc [hl]
    rst $08
    ldh [rDIV], a
    ld a, $90

jr_007_7a77:
    ret nz

    db $10
    or h
    adc l
    adc h
    dec b
    db $d3
    db $f4
    dec c
    rrca
    call z, Call_000_3400
    and c
    add hl, bc
    rst $00
    ld bc, $de4c
    rra
    nop
    inc de
    ld d, b
    dec b
    dec b
    dec h
    add b
    dec d
    ld [$4205], sp
    ld b, b
    call c, Call_000_3f60
    add b
    inc [hl]
    ld d, c
    ld de, $e698
    ld d, [hl]
    dec [hl]
    rst $18
    jr nz, jr_007_7ab0

    ld [bc], a
    ret nz

    add b
    jr z, jr_007_7ab3

    ld b, d
    ret nc

    and h
    cpl
    ld h, $86

jr_007_7ab0:
    add hl, sp
    ld [bc], a
    inc c

jr_007_7ab3:
    inc bc
    ld [$1490], sp
    dec c
    ld [bc], a
    ld b, b
    pop af
    inc b
    sbc h
    add h
    inc bc
    nop
    ld h, b
    jr c, jr_007_7ac8

    inc bc
    ld b, d
    add b
    and b
    xor b

jr_007_7ac8:
    ld b, e
    ld b, b
    ld l, b
    ld a, [hl-]
    rlca
    inc bc
    jp nz, $a288

    add a
    add e
    ldh [$74], a
    dec a
    dec e
    ld bc, $fcf0
    ld [hl], h
    inc b
    db $d3
    db $f4
    db $76
    dec [hl]
    add [hl]
    or e
    ld a, h
    ld e, e
    add hl, sp
    db $dd
    ld h, h
    ld b, l
    inc bc
    sbc l
    ld h, [hl]
    pop bc
    ld d, b
    ld [hl], h
    sbc h
    dec c
    ld b, e
    ld d, c
    ld de, $884b
    nop
    ld b, c
    ld h, d
    jr z, jr_007_7afb

    ld b, d

jr_007_7afb:
    ret nc

    jr nz, @+$30

    daa
    ld [$86ae], a
    and d
    jr z, jr_007_7b2f

    ld [hl+], a
    sub b
    ld [hl], h
    rlca
    ld d, e
    push de
    inc b
    adc b
    and a
    ld [hl], b
    ret nc

    jr nz, @+$10

    db $10
    ld b, a
    ld b, c
    jp nc, Jump_000_1d75

    ld l, e
    jr @+$01

    or c
    sbc $37
    adc c
    ldh [rNR10], a
    ld a, [bc]
    ld [bc], a
    add b
    ret nc

    inc [hl]
    ld a, [bc]
    add d
    and d
    and [hl]
    or c
    call nz, $fcf3
    ld [hl], a

jr_007_7b2f:
    dec [hl]
    jp hl


    xor d
    ld [hl], d
    sbc [hl]
    ccf
    jp z, $a8a2

    push hl
    add hl, sp
    ld h, b
    ld [$fe08], sp
    ccf
    sub b
    ld sp, hl
    adc l
    inc bc
    or d
    adc c
    ld d, d
    ld d, h
    ld [$913a], a
    inc b
    ld a, [hl+]
    ld hl, $c288
    add hl, bc
    ldh [$a0], a
    ld l, $2a
    ld l, d
    ld a, l
    ld [bc], a
    nop
    push de
    add b
    add hl, bc
    ld d, a
    nop
    sub l
    adc b
    dec a
    inc bc
    ld a, b
    ld h, a
    db $e4
    jr @+$57

    dec d
    ld c, d
    add d
    xor h
    ld d, a
    dec d
    ld c, a
    db $eb
    adc [hl]
    xor $40

Call_007_7b71:
    sbc [hl]
    dec de
    jr c, jr_007_7bea

    dec e
    ld c, d
    and e
    xor b
    cp l
    rra
    ld l, [hl]
    jp hl


    rl a
    sbc d
    ld h, $a9
    or d
    ld l, [hl]
    sbc h
    ld sp, $628c
    rst $38
    xor b
    daa
    ld l, e
    jp z, $9e79

    ld a, [c]
    nop
    nop
    dec l
    ccf
    ld [hl], d
    adc h
    xor e
    add hl, hl
    swap d
    or b
    db $10
    dec b
    set 6, e
    inc e
    jp $cc33


    sub b
    stop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0203
    inc b
    dec b
    nop
    ld b, $05
    rlca
    ld b, $00
    rlca
    ld [$0901], sp

jr_007_7bbd:
    ld [bc], a
    ld a, [bc]
    dec bc
    dec bc
    nop
    nop
    inc c
    inc c
    ld a, [bc]
    nop
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    nop
    db $10
    ld de, $1110
    ld [de], a
    inc de
    db $10
    ld de, $1514
    ld d, $17
    jr jr_007_7bf5

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_007_7c04

    jr nz, jr_007_7c06

    ld hl, $2322
    nop

jr_007_7bea:
    inc h
    nop
    dec h
    ld h, $27
    nop
    jr z, jr_007_7bf2

jr_007_7bf2:
    nop
    add hl, hl
    nop

jr_007_7bf5:
    nop
    ld a, [hl+]

jr_007_7bf7:
    dec hl
    inc l
    dec l
    nop
    nop
    ld l, $2f
    jr nc, jr_007_7c31

    nop
    nop
    nop
    nop

jr_007_7c04:
    ld [hl-], a
    inc sp

jr_007_7c06:
    inc [hl]
    nop
    dec [hl]
    nop
    nop
    ld [hl], $00
    scf
    jr c, jr_007_7c49

    jr c, jr_007_7c4b

    add hl, bc
    dec b
    add d
    ld [hl], b
    jr z, jr_007_7c38

    ld e, b
    ld hl, $0502
    ld b, c
    ld h, b
    ld d, b
    adc b
    inc e
    inc l
    dec [hl]
    dec bc
    add a
    ld b, c
    ld [c], a
    jr nc, jr_007_7c89

    add b
    ld l, d
    dec h
    dec d
    adc d
    ld b, b
    and e
    ld d, c

jr_007_7c31:
    jr z, jr_007_7c9f

    ld a, [de]
    inc sp
    jr jr_007_7bbd

    ld b, a

jr_007_7c38:
    inc h
    ld [hl], d
    db $10
    or h
    ld [hl], d
    ld a, [hl+]
    inc d
    dec bc
    add l
    ld h, l
    ld [hl-], a
    or b
    cp b
    ld b, [hl]
    ld d, d
    ld a, [bc]
    sub [hl]

jr_007_7c49:
    ld c, d
    ld h, l

jr_007_7c4b:
    ld a, [c]
    xor c
    sub b
    ld l, d
    ld h, l
    dec [hl]
    sub a
    ld c, [hl]
    dec h
    and c
    db $10
    call nc, Call_007_79e6
    dec sp
    sub h
    ret nc

    ld h, a
    inc sp
    ld c, c
    ld l, l
    ld [bc], a
    ld a, a
    inc sp
    and c
    jp nc, Jump_000_01a9

    ld a, d
    inc e
    ld a, [c]
    dec [hl]
    rra
    dec b
    ld b, a
    pop hl
    ld [hl], c
    jr jr_007_7bf7

Jump_007_7c72:
    ld c, [hl]
    and a

Jump_007_7c74:
    ld c, $87
    pop bc
    ld a, [hl+]
    pop af
    xor d
    add h
    ld l, $b1
    inc b
    adc l
    ld b, h
    ld hl, $00d6
    sub l
    ld a, d
    ret


    daa
    xor a
    ret nc

jr_007_7c89:
    ld l, b
    ret nz

    xor d
    inc [hl]
    jp z, Jump_000_3771

    or a
    ld e, e
    and [hl]
    or e
    ld l, c
    ld e, l
    jp z, $6b83

    sbc c
    ld e, h
    push hl
    ld [hl], h
    add hl, de
    cp h

jr_007_7c9f:
    sub $f6
    inc d
    cp h
    rst $18
    jp hl


    rst $10
    xor b
    db $e4
    inc [hl]
    ld [$8903], sp
    ld bc, $3840
    call z, Call_000_386e
    dec b
    inc c
    adc a
    ld b, b
    or c
    ld a, b
    db $ec
    xor [hl]
    ld e, e
    inc l
    inc bc
    add hl, bc
    add h
    inc sp

jr_007_7cc0:
    ld a, b
    ld l, h
    call c, Call_000_2537
    rlca
    adc e
    push bc
    ld [hl], h
    ld a, [de]
    ld c, l
    inc l
    ld b, a
    ld b, c
    ld [bc], a
    and c
    pop de
    ld [hl], c
    inc de
    jp z, $cf2c

    ld e, l
    ld l, $97
    add d
    push af
    or e
    adc c
    db $ec
    db $e3
    ld l, e
    inc [hl]
    call nz, $7704
    ld a, d
    xor l
    call c, Call_007_61d3
    dec a
    and d
    ld [hl], b
    scf
    inc e
    ld c, d
    ld h, $dc

Call_007_7cf1:
    ld l, $12
    call Call_007_7972
    ld [hl], c
    adc h
    ld b, b
    ld c, b
    ld bc, $e45b

jr_007_7cfd:
    jp nz, Jump_000_323a

    inc e
    ld b, l
    and e
    sub l
    inc b
    or c
    rst $10
    dec l
    nop
    inc c
    ld b, a
    ld d, e
    or a
    pop de
    db $ec
    ld [hl], d
    ld [hl], h
    ld d, l
    rst $38
    cpl
    adc d

Call_007_7d15:
    or c
    sub h
    nop
    add b
    xor e
    ld a, [hl]
    sbc h
    ld l, b
    ld d, b
    dec hl
    cpl
    cp e
    ld c, [hl]
    ei
    cp b
    ret nz

    rla
    cp a
    rst $18
    pop af
    ei
    push hl
    nop
    ld d, a
    ld l, l
    ld h, a
    db $dd
    ldh a, [$7d]
    rst $10
    push hl
    db $dd
    add e
    ld a, h
    jr jr_007_7cc0

    db $dd
    ld c, b
    ld e, l
    ldh [rTIMA], a
    reti


    ld a, $80
    rst $18
    jr z, jr_007_7d6e

    rlca
    add e
    ld h, c
    dec b
    adc l
    jp c, Jump_007_5941

    call nz, $d30d
    ld b, e
    ld d, d
    ld h, h
    add hl, de
    ei
    add l
    add c
    xor b
    ld h, b
    ld [de], a
    ld [hl], l
    sub [hl]
    ld [$157a], sp
    ld [hl], h
    sbc [hl]
    ld h, h
    ld de, $8588
    sbc [hl]
    jr nz, jr_007_7d67

jr_007_7d67:
    nop
    add [hl]
    sub c
    ld b, h
    ld e, d
    inc h
    ld [hl], d

jr_007_7d6e:
    add c
    ld l, b
    or l
    jr jr_007_7cfd

    ld h, c
    ld hl, sp-$36
    dec h
    dec b
    sub a
    add sp, $09
    inc l
    ld l, a
    ld [de], a
    and a
    push bc
    xor [hl]
    ld d, c
    and b
    ret z

    db $f4
    ld a, [de]
    adc a
    jp nc, Jump_000_2096

    add hl, de
    ld c, [hl]
    db $e4
    ld b, h
    or b
    dec bc
    ld a, e
    db $e4
    add $0d
    add hl, sp
    ld bc, $2400
    pop de
    db $ed
    nop
    ld [c], a
    or b
    ld d, c
    db $ed
    ld h, e
    db $e3
    rst $20
    pop hl
    ld a, d
    ld c, [hl]
    db $e3
    ret c

    add hl, hl
    jp $c105


    and b
    inc a
    rrca
    adc b
    push de
    cp b
    reti


    rst $18
    inc b
    ld bc, $6680
    ld l, c
    ld b, $41
    and a
    ld h, c
    ld [$9c9b], sp
    add $68
    inc b
    ld h, l
    sbc $a4
    jr nz, jr_007_7dcf

    ld [bc], a
    ld e, h
    sbc b
    and d
    dec h
    inc b
    and $68

jr_007_7dcf:
    pop hl
    reti


    adc b
    dec h
    ld d, a
    ld l, $7d
    sbc a
    add hl, de
    inc h
    ld a, l
    ld [$c19a], sp
    jr nz, jr_007_7e45

    add l
    ld a, c
    ld h, c
    ld a, d
    add hl, hl
    db $d3
    sbc b
    and [hl]
    ld b, a
    and $5f
    ld c, h
    add b
    db $76
    ld e, l
    db $fc
    ld b, $a9
    ld c, d
    ld h, [hl]
    db $10
    sub c
    ld d, a
    ld l, b
    cp $78
    ld d, c
    and b
    ld l, b
    ld bc, $917f
    ld d, e

Jump_007_7e00:
    ld d, l
    add $74
    ld a, a

Call_007_7e04:
    rla
    xor d
    sub l
    ld a, [c]
    sub [hl]
    and b
    ld a, [$4f52]
    and l
    ld bc, $455a
    ld d, [hl]
    ld [hl], h
    rst $20
    inc h
    ld [$0107], sp
    sub l
    ld a, [hl-]
    jp nc, $9671

    nop
    ld a, [hl-]
    jp c, $747e

    ld h, a
    add l
    ld d, b
    ld d, $77
    sbc l
    ld a, [hl+]
    push de
    ld e, e
    ld b, a
    pop hl
    ld b, b
    ld c, [hl]
    sub [hl]
    ld a, l
    ld e, l
    rst $30
    sub [hl]
    cp l
    and b
    push de
    add hl, bc
    ld h, c
    sub [hl]
    sub [hl]
    ld [$aec4], a
    cp b
    ld d, d
    rla
    inc d
    or $ac
    ld e, a

jr_007_7e45:
    sbc a
    add sp, $12
    sub e
    xor b
    ld d, $f4
    xor d
    and d
    ld l, [hl]
    db $ed
    jr nc, jr_007_7e56

    inc bc
    xor h
    xor c
    ld d, b

jr_007_7e56:
    ld a, [de]
    dec hl
    ld e, h
    ld h, c
    nop
    dec l
    ld a, [hl+]
    ld l, h
    push hl
    ret nz

    ld d, l
    cp $60
    jr nz, @-$26

    cp $2e
    ld b, e
    ld l, e
    add a
    ld h, $e6
    ld h, e
    add hl, de
    sub [hl]
    ld [hl], d
    ld l, [hl]
    ld b, d
    inc e
    add sp, -$38
    dec bc
    ld b, c
    dec e
    inc b
    ld d, $c2
    and e
    sub b
    ld l, b
    ret


    sub $46
    pop hl
    ld [hl], h
    ld e, c
    inc bc
    ld b, d
    sub [hl]
    jr nc, jr_007_7ee3

    ld a, [$1d8b]
    and b
    dec l
    ld [$8004], sp
    and h
    inc hl
    ld a, [de]
    ld b, b
    and e
    inc h
    ld a, l
    sbc $8d
    ld h, e
    adc h
    ld a, d
    rra
    ld h, [hl]
    and a
    ld d, [hl]
    jr nc, jr_007_7ea9

    xor c
    ld l, c
    sub [hl]
    pop af
    dec hl
    ld e, e

jr_007_7ea9:
    ld e, e
    call z, $efa9
    ld h, d
    ld bc, $5c70
    ld a, [bc]
    ld b, $40
    or b
    inc bc
    dec [hl]
    dec b
    rst $20
    add l
    dec d
    ld sp, hl
    call z, $b8a2
    add hl, de
    ld c, l
    adc a
    sbc h
    db $10
    ld d, l
    ld sp, $ab5f
    add b
    ld c, l
    inc l
    add b
    add b
    and h
    cp h
    inc d
    jp nc, $c4b4

    pop de
    ld a, [hl+]
    ret nc

    ld [de], a
    cp c

Jump_007_7ed8:
    db $d3
    ld h, $00
    or e
    ld a, [hl+]
    or [hl]
    rst $30
    inc b
    push de
    ld h, a
    adc l

jr_007_7ee3:
    rst $08
    pop bc
    ld [hl], l
    call nc, Call_000_2b42
    rst $10
    db $10
    xor b
    xor a
    ld e, c
    rst $10
    inc e
    sub h
    jr z, jr_007_7f06

    call $a700
    ld b, c
    ld d, d
    ret c

    add c
    inc a
    dec de
    ld h, b
    pop bc
    or b
    or [hl]
    ld h, a
    ld e, h
    ld [hl], h
    dec d
    ld l, h
    ld b, [hl]

jr_007_7f06:
    rlc c
    sbc h
    rst $30
    ld b, e
    ld h, h
    jp c, Jump_000_1df6

    sbc e
    ld h, l
    db $db
    push af
    sbc $03
    ld e, l
    ld [hl], h
    nop
    dec c
    sub a
    add d
    inc bc
    nop
    ret nc

    dec sp
    adc c
    ld [c], a
    ld a, b
    or b
    inc [hl]
    dec c
    ld [c], a
    ld a, c
    ld c, $3f
    adc [hl]
    db $e4
    add b
    ret nc

    dec hl
    sub c
    ld [c], a
    cp c
    ld e, $27
    sub a
    push hl
    cp c
    sbc $77
    sbc h
    db $e3
    ld sp, hl
    ld e, [hl]
    ld l, e
    and c
    ld [bc], a
    cp c
    ld e, [hl]
    ld c, a
    sbc e
    inc bc
    nop
    ld [$a6e3], a
    and $78
    cp $83
    sbc h
    add sp, $3a
    ld a, $8b
    adc a
    db $ec
    cp d
    ld e, $8f
    sbc d
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

Jump_007_7f64:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7fdf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
