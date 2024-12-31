; Disassembly of "Adventure Island (USA, Europe).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    jr nz, @+$42

    add hl, sp
    ld b, e
    ld hl, $9046
    ld c, c
    ldh a, [$4c]
    rra
    ld d, b
    inc hl
    ld d, e
    or h
    ld d, [hl]
    ld b, $5a
    ld h, b
    ld e, l
    add sp, $60
    add d
    ld h, h
    or l
    ld h, a
    ld hl, sp+$6a
    db $ed
    ld l, l
    ld e, [hl]
    ld [hl], c
    ld d, $16
    ld a, [bc]
    nop
    rrca
    nop
    add hl, de
    ld b, $7f
    ld bc, $037e
    ld a, a
    rra
    ld a, d
    ld a, a
    ld sp, hl
    cp $71
    ld a, [hl]
    ret nc

    rst $38
    ld b, b
    ld a, a
    ld hl, $163f
    ld a, [bc]
    nop

jr_006_403d:
    jr c, jr_006_403f

jr_006_403f:
    ld hl, sp+$18
    ldh [$e0], a
    jr c, jr_006_403d

    inc c
    db $fc
    adc b
    ld [hl], b
    ret c

    add sp, -$28
    add sp, -$74
    ld [hl], h
    ld h, h
    db $fc
    sub h
    db $fc
    rlca
    nop
    inc c
    inc bc
    ccf
    nop
    ccf
    ld bc, $0f3f
    dec a
    ccf
    ld a, h
    ld a, a
    jr c, jr_006_40a2

    ld l, b
    ld a, a
    jr nz, jr_006_40a6

    db $10
    rra
    jr z, jr_006_40aa

    ld b, b
    ld a, a
    add a
    rst $38
    adc b
    rst $38
    ld b, c
    ld a, a
    sbc h
    nop
    db $fc
    inc c
    ldh a, [$f0]
    inc e
    db $fc
    add [hl]
    cp $44
    cp b
    db $ec
    ld [hl], h
    db $ec
    ld [hl], h
    ld b, [hl]
    cp d

jr_006_4085:
    ld [hl-], a
    cp $32
    cp $04
    db $fc
    jr c, jr_006_4085

    inc b
    db $fc
    add d
    cp $0a
    cp $73
    nop
    ld a, [hl]
    ld h, c
    rra
    ld e, $71
    ld a, a
    jp Jump_006_62ff


    ld e, l
    ld [hl], a
    dec sp
    ld [hl], a

jr_006_40a2:
    dec sp
    and d
    db $dd
    sbc b

jr_006_40a6:
    rst $38
    and [hl]
    rst $38
    ld d, b

jr_006_40aa:
    ld a, a
    ld b, [hl]
    ld a, a
    adc c
    rst $38
    sub c
    rst $38
    ld b, d
    ld a, a
    ret nz

    nop
    ld h, b
    add b
    ld hl, sp+$00
    ld hl, sp+$00

jr_006_40bb:
    ld hl, sp-$20
    ld a, b
    ld hl, sp+$7c
    db $fc
    jr c, jr_006_40bb

    inc l
    db $fc
    ld [$1cf8], sp
    db $fc
    ld [hl+], a
    cp $01
    rst $38
    add hl, de
    rst $38
    ld c, $fe
    ld [$16f8], sp
    inc b
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    rrca
    inc c
    rlca
    rlca
    rra
    rra
    rlca
    rlca
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$140f], sp
    rra
    cpl
    ccf
    ccf
    jr nc, @+$08

    nop
    cp $0a
    db $fc
    inc b
    cp $06
    db $fd
    rrca
    db $fd
    rra
    rst $38
    ld a, a
    ldh a, [rIE]
    ldh [rIE], a
    add c
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $82ff
    cp $fc
    ld a, h
    ld d, b
    ld a, a
    add b
    rst $38
    add a
    rst $38
    adc b
    rst $38
    ld b, c
    ld a, a
    ld a, a
    ld a, a
    ccf
    jr nz, jr_006_41a0

    ld b, [hl]
    ld a, c
    ld c, a
    inc [hl]
    scf
    inc b
    rlca
    inc b

jr_006_4129:
    rlca
    inc bc
    inc bc
    ld d, $06
    nop
    jr z, jr_006_4129

    ld [hl], b
    ldh a, [$08]
    ld hl, sp-$7a
    cp $15
    rst $38
    cp $fe
    rst $38
    ld bc, $0dff
    ld a, [$c83a]
    ld hl, sp+$50
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ld d, $06
    nop
    ld d, b
    ld a, a
    add b
    rst $38
    add a
    rst $38
    adc b
    rst $38
    ld b, c
    ld d, $04
    ld a, a
    ld b, h
    ld a, e
    ld c, a
    ld [hl], c
    ld e, a
    ld [hl+], a
    ld a, $24

jr_006_4160:
    inc a
    jr jr_006_417b

    ld d, $08
    nop
    jr z, jr_006_4160

    ld [hl], b
    ldh a, [$08]
    ld hl, sp-$7a
    cp $15
    rst $38
    cp $fe
    rst $38
    ld bc, $25ff
    sbc $f6
    adc b
    ld hl, sp+$44

jr_006_417b:
    ld a, h
    jr c, jr_006_41b6

    ld d, $08
    nop
    ccf
    ccf
    ld a, a
    ld b, h
    ld a, e
    ld e, [hl]
    and e
    cp $8f
    cp $91
    pop af
    ld h, b
    ld h, b
    ld d, $12
    nop
    cp $fe
    cp $02
    db $fc
    inc l
    ld a, [c]
    ld e, [hl]
    or c
    cp a
    add hl, bc
    rrca
    ld b, $06

jr_006_41a0:
    ld d, $12
    nop
    rst $38
    ld a, [$fe97]
    add c
    rst $38
    and a
    rst $38
    db $fc
    db $fc
    ld d, $16
    nop
    cp $06
    cp $7a
    and $ba

jr_006_41b6:
    db $e4
    inc a
    ld a, [c]
    cp $12
    ld e, $11
    rra
    rrca
    rrca
    ld d, $1c
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    call nz, $b8fc
    cp b
    ld d, $0a
    nop
    inc c
    rrca
    inc de
    rra
    db $10
    rra
    jr nz, jr_006_4217

    ld hl, $703f
    ld e, a
    rst $38
    adc a
    rst $38
    and b
    ld e, a
    ld a, b
    ld b, a
    ld a, a
    adc h
    rst $38
    adc c
    rst $38
    sub [hl]
    or $60
    ld h, b
    ld d, $04

jr_006_41ee:
    nop
    dec bc
    rst $38
    ret nz

    rst $38

jr_006_41f3:
    jr nz, @+$01

    ld b, e
    rst $38
    sub d
    cp $0e
    cp $ff
    pop af
    rst $38
    dec b
    cp $ee
    jr nc, jr_006_41f3

    ld b, b
    ret nz

    add b
    add b
    ld d, $08
    nop
    ret nz

    ret nz

    jr nz, jr_006_41ee

    ld b, b
    ret nz

    add b
    add b
    ld d, $18
    nop
    inc c
    rrca

jr_006_4217:
    db $10
    rra
    jr nz, @+$41

    ld [hl+], a
    ccf
    inc a
    ccf
    ld [hl], b
    ld e, a
    rst $38
    adc a
    rst $38
    and b
    ld e, a
    ld a, b
    rst $00
    rst $38
    adc d
    ei
    sub h
    rst $30
    ld h, h
    ld h, a
    inc bc
    inc bc
    ld d, $04
    nop
    ld a, [bc]
    cp $04
    db $fc
    ld [bc], a
    cp $02
    cp $12
    cp $0e
    cp $ff
    pop af
    rst $38
    dec b
    cp $ee
    db $10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld d, $06
    nop
    sbc a
    ld sp, hl
    add a
    db $fc
    ld h, e
    ld a, [hl]
    rra
    rra
    ld d, $18
    nop
    add c
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    ld b, l
    rst $38
    call $3232
    ld d, $14
    nop
    ldh [$a0], a
    ldh a, [rNR10]
    ldh [$a0], a
    ld d, b
    ldh a, [$08]
    ld hl, sp-$7c
    db $fc
    ld a, b
    ld a, b
    ld d, $16
    nop
    add b
    add b
    ld d, $04
    ret nz

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [$78], a
    ld hl, sp-$7c
    db $fc
    add h
    db $fc
    jr @-$06

    ld h, b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rP1], a
    nop
    ld bc, $1a01
    dec de
    ccf
    ld h, $2b
    ld a, $17
    ld a, [de]
    ccf
    ccf
    ld e, a
    ld h, d
    ld e, a
    ld h, d
    cpl
    ld [hl-], a

jr_006_42ab:
    inc de
    rra
    ld c, $0e
    ld d, $0a
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_006_42ab

    db $10
    ldh a, [$f0]
    ldh [rNR41], a
    ldh [$60], a
    ret nc

    or b
    xor b
    ret c

    ld d, h
    ld l, h
    inc l
    inc [hl]
    jr jr_006_42e4

    ld d, $0a
    nop
    ld bc, $0900
    ld [$0f0f], sp
    ld b, $07
    ld b, $07
    ld c, $0f
    ld sp, $403f
    ld a, a
    and h
    rst $38
    db $f4
    rst $38
    ld a, b

jr_006_42e4:
    ld l, a
    sbc h
    rst $30
    cp [hl]
    db $e3
    inc a
    inc bc
    ld h, e
    inc e
    rst $38
    inc bc
    rst $38
    rrca
    ld hl, sp+$3f

jr_006_42f3:
    ld h, [hl]
    rst $38
    ret z

    rst $38
    add [hl]
    ld sp, hl
    ld c, $f3
    ld c, $f3
    add b
    rst $38
    ld h, a
    rst $38
    ld b, $fe
    ld bc, $09ff
    rst $38
    inc bc
    rst $38
    ldh [rNR41], a
    ret nz

    ld b, b
    add sp, -$18
    ldh a, [$f0]
    jr nz, jr_006_42f3

    ld h, b
    ldh [rNR41], a
    ldh [$e0], a
    jr nz, @-$06

    sbc b
    call nc, Call_000_34bc
    db $fc
    ret c

    ld hl, sp+$16
    ld [$df00], sp
    pop de
    rrca
    ld c, $13
    ld e, $23
    ccf
    ld b, h
    ld a, h
    ld b, d
    ld a, [hl]
    ld [hl+], a
    ld a, $1c
    inc e
    ld d, $10
    nop
    ld d, $00
    ld a, [bc]
    cp $fc
    cp $02
    cp $4a
    db $fc
    ld l, h
    sub b
    sub b
    ld a, [bc]
    ld d, $00
    rst $38
    rst $38
    rst $38
    adc b
    rst $30
    sbc h
    ld a, e
    ld e, [hl]
    add hl, hl
    cpl
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0a01
    stop
    db $fc
    db $fc
    cp $22
    call c, $c27c
    cp $71
    rst $38
    ld c, [hl]
    adc $20
    ldh [$e0], a
    ldh [$0a], a
    ld e, $00
    inc bc
    nop
    rrca
    ld bc, $061f
    rra
    inc b
    ld a, $09
    ld a, $09
    ld h, a
    rlca
    ld h, d

Jump_006_437c:
    inc bc
    ld l, [hl]
    rrca
    ld a, [bc]
    inc c
    nop
    rst $38
    nop
    add c
    ld a, [hl]
    ld l, l
    rst $38
    add d
    ld a, a
    ld l, h
    sub e
    xor $19
    xor $39
    xor $31
    nop
    rst $38
    jr c, @+$01

    ld a, [bc]
    ld c, $00
    ret nz

    nop
    ldh a, [$80]
    ld hl, sp-$20
    ld hl, sp-$20
    db $fc
    ldh a, [$bc]
    ldh a, [$b6]
    ldh a, [rNR52]
    ldh [rPCM12], a
    ldh a, [$73]
    rra
    ld h, c
    rra
    ld h, c
    rra
    ld [hl-], a
    rrca
    ld [hl], $0f
    ld a, [de]
    rlca
    ld e, $07
    ld c, $01
    rlca
    nop
    ld bc, $0d0a
    nop
    jr nz, @+$01

    rst $00
    rst $38
    add hl, hl
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub c
    ld a, [hl]
    rst $38
    ld a, [bc]
    rrca
    nop
    ld bc, $0700
    dec b
    rrca
    ld c, $0f
    ld c, $17
    dec e
    scf
    inc a
    ld d, c
    ld a, [hl]
    ld c, b
    ld a, a
    ld b, h
    ld a, a
    inc h
    ccf
    inc de
    rra
    ld [$040f], sp
    rlca
    inc b
    rlca
    ld h, [hl]
    ld h, a
    db $fc
    nop
    adc $30
    ld a, e
    add [hl]
    call $e33f
    sbc a
    db $e4
    db $db
    xor $95
    call nz, Call_006_783b
    rst $38
    db $fc
    rst $38
    call z, $03ff
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld a, [bc]
    stop
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
    ld a, [bc]
    stop
    inc e
    db $10
    inc a
    jr nz, @+$3e

    jr nc, jr_006_444e

    db $10
    inc e
    db $10
    inc e
    db $10
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld a, [bc]
    stop
    inc a
    jr nz, jr_006_44bf

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

jr_006_444e:
    ld a, [bc]
    stop
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
    rst $38
    rst $38
    nop
    nop
    ld bc, $0201
    inc bc
    inc c
    rrca
    rra
    rla
    ld a, $23
    ld a, a
    ld c, c
    ld a, a
    ld b, b
    ld a, a
    ld b, d
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ccf
    jr z, jr_006_44b9

    ld [hl+], a
    rra

Call_006_447c:
    jr @+$09

    rlca
    ld a, [bc]
    inc b
    nop
    ld a, [bc]
    inc b
    ld bc, $0f0f
    dec e
    rla
    inc sp
    cpl
    jr nc, jr_006_44bc

    jr nz, jr_006_44ce

    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_006_44d4

    db $10
    rra
    ld [$070f], sp
    rlca
    ld a, [bc]
    ld b, $00
    rlca
    dec b
    ld bc, $3b01
    dec sp
    ld d, l
    ld l, [hl]
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ccf
    ccf
    add hl, de
    rla
    ld de, $111f
    rra
    rrca
    rrca
    inc b
    rlca
    inc b
    rlca
    inc bc

jr_006_44b9:
    inc bc
    ld a, [bc]
    ld a, [bc]

jr_006_44bc:
    nop
    add b
    add b

jr_006_44bf:
    ldh [$60], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $01ff
    cp $02
    db $fc

jr_006_44ce:
    inc b
    ld hl, sp+$18
    ldh [$60], a
    add b

jr_006_44d4:
    add b
    ld a, [bc]
    ld [$0700], sp
    rlca
    rra
    add hl, de
    ccf
    ld h, $7f
    ld c, h
    rst $38
    add [hl]
    rst $38
    add c
    rst $38
    add d
    rst $38
    add h
    ld a, a
    ld b, d
    ccf
    ld hl, $1a1f
    rlca
    rlca
    ld a, [bc]
    ld [$0700], sp
    rlca
    rra
    jr jr_006_4537

    jr nz, jr_006_4579

    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_006_4527

    jr jr_006_4511

    rlca
    rst $38
    sbc b
    ld [hl], a
    ld a, [hl]
    inc hl
    ccf

jr_006_4511:
    ld b, h
    ld a, a
    adc b
    rst $38
    sbc c
    rst $38
    ld h, [hl]
    ld h, [hl]
    ld a, [bc]
    ld [de], a
    nop
    rst $38
    inc bc
    cp $22
    db $fc
    ld [hl], h
    xor b
    add sp, $40
    ret nz

    add b

jr_006_4527:
    add b
    ld a, [bc]
    inc h
    nop
    ld [hl], e
    ld b, d
    ld [hl], e
    ld b, d
    ld [hl], e
    ld b, d
    ld [hl], e
    ld b, d
    ld [hl], e
    ld b, d
    ld [hl], e
    ld b, d

jr_006_4537:
    ld a, a
    ld h, b
    ccf
    ccf
    ld a, [bc]
    stop
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
    ldh [$e0], a
    ld a, h
    ld a, h
    cp $fe
    rst $10
    rst $38
    rst $28
    sub e
    rst $28
    cp e
    add d
    rst $38
    cp c
    rst $38
    ld b, d
    ld a, [hl]
    add c
    rst $38
    adc c
    rst $38
    sub d
    cp $ff
    adc l
    db $db
    and l
    sub d
    cp $92
    cp $6c
    ld l, h
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, [bc]
    jr jr_006_4579

jr_006_4579:
    cp $fe
    rst $38
    ld bc, $02fe
    db $fc
    db $fc
    ld hl, sp-$28
    xor b
    ld hl, sp-$08
    ret c

    ld [hl], b
    ld [hl], b
    ld a, [bc]
    stop
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
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    cp $fe
    rst $10
    rst $38
    rst $28
    sub e
    ld l, a
    cp e
    ld [bc], a
    rst $38

jr_006_45a8:
    jr c, jr_006_45a8

    ld [bc], a
    ld a, [hl]
    rst $38
    add b
    rst $38
    sbc h
    xor $e8
    inc e
    db $10
    jr c, jr_006_45d6

    jr c, jr_006_45d8

    jr c, jr_006_45da

    jr c, jr_006_45f4

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
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld b, b
    ld a, [hl]
    ld a, b
    inc e
    db $10
    ld a, $20
    ccf
    inc a

jr_006_45d6:
    rst $20
    add h

jr_006_45d8:
    cp $c0

jr_006_45da:
    ld a, [hl]
    ld a, [hl]
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
    ld c, $0e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l

jr_006_45f4:
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    ld [hl], a
    ld a, [hl]
    ld b, b
    rst $38

Jump_006_45ff:
    sbc h
    rst $20
    add h
    rst $38
    ret nz

    ld a, a
    ld a, h
    rrca
    add hl, bc
    ld a, [hl]
    ld b, d
    ld a, h
    ld a, h
    ld a, [bc]
    stop
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld a, [bc]
    nop
    ld [de], a
    ldh [$e0], a
    ld [de], a
    inc b
    ldh a, [$78]
    ld a, b
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld e, l
    rst $38
    adc b
    xor d
    rst $38
    adc b
    rst $38
    ccf
    scf
    ccf
    ld hl, $617f
    ld a, a
    ld b, e
    ld a, h
    ld d, h
    ld a, b
    ld c, b
    ld [hl], b
    ld [hl], b
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    or $f6
    ld [de], a
    inc b
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$50]
    ld hl, sp+$58
    db $fc
    and h
    ld e, b
    ld e, b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld a, a
    ld e, l
    rst $38
    adc b
    xor d
    rst $38
    adc b
    rst $38
    ccf
    scf
    ccf
    ld hl, $617f
    ld a, a
    ld b, e
    ld a, l
    ld d, l
    ld a, b
    ld c, b
    ld [hl], b
    ld [hl], b
    ld [de], a
    ld a, [bc]
    nop
    ld [hl], b
    ld [hl], b
    ei
    ei
    ld [de], a
    ld b, $ff
    db $fc
    db $fc
    cp $7e
    cp $5e
    rst $38
    cp a
    ld e, a
    ld e, a
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $1201
    inc b
    nop
    ld bc, $0701
    ld b, $0f
    ld [$101f], sp
    rra
    db $10
    ld a, a
    ld l, b
    or a
    db $fd
    db $db
    cp $ff
    jp c, $b6ff

    ld l, e
    ld a, a
    inc hl
    ccf
    ld de, $081f
    rrca
    db $10
    rra
    nop
    nop
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $02
    cp $72
    rst $38
    adc c
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    ld b, l
    cp $4a
    cp $32
    db $fc
    inc b
    ld hl, sp-$68
    db $fc
    db $fc
    ld [bc], a
    cp $01
    ld bc, $0607
    rrca
    ld [$101f], sp
    rra
    db $10
    ld a, a
    ld l, b
    or a
    db $fd
    db $db
    cp $ff
    jp c, $b6ff

    ld l, e
    ld a, a
    inc hl
    ccf
    ld de, $081f
    rrca
    ld [$100f], sp
    rra
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $02
    cp $72
    rst $38

jr_006_4700:
    adc c
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    ld b, l
    cp $4a
    cp $32
    db $fc
    inc b
    ld hl, sp-$68
    ldh [$e0], a
    inc a
    db $fc
    ld [bc], a
    cp $0f
    rrca
    db $10
    rra
    ld h, b
    rra
    ld a, e
    rra
    ld a, e
    ld c, [hl]
    jr nz, jr_006_4760

    ld e, a
    ld a, a
    ldh [$9f], a
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    ret nz

    ld a, a
    ld a, a
    ccf
    ld hl, $1f1f
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    jr jr_006_4700

    inc a
    add h
    ld a, h
    ld [hl], h
    db $ec
    or h
    call c, Call_000_3ce4
    add sp, $78
    ret z

    ld hl, sp-$34
    ld a, h
    sub d
    cp $92
    cp $22
    cp $24
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    jr @-$3a

    inc a
    add h
    ld a, h
    ld [hl], h

jr_006_4760:
    db $ec
    or h
    call c, Call_000_3ce4
    add sp, $78
    ret z

    ld hl, sp-$38
    ld a, b
    sub b
    ldh a, [$91]
    pop af
    inc hl
    db $e3
    dec h
    rst $20
    dec h
    rst $20
    rrca
    rrca
    db $10
    rra
    ld h, b
    rra
    ld a, e
    rra
    ld a, e
    ld c, [hl]
    jr nz, jr_006_47c0

    rra
    rra
    ccf
    ccf
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    ret nz

    ld a, a
    ld a, a
    ccf
    ld hl, $1f1f
    rra
    ld de, $0f0f
    rrca
    ld [$0707], sp
    ld [de], a
    jr jr_006_47a0

jr_006_47a0:
    ld e, l
    rst $38
    dec d
    rst $38
    ld a, [c]
    cp $fc
    inc e
    ldh a, [$f0]
    ld [de], a
    jr nz, jr_006_47ad

jr_006_47ad:
    ccf
    ccf
    ld l, l
    ld d, d
    ret nc

    xor a
    sbc $a1
    ld l, h
    ld d, e
    ccf
    ccf
    ld [de], a
    ld [de], a
    nop
    ld [$1408], sp
    inc e

jr_006_47c0:
    ldh a, [rSVBK]
    inc c
    db $fc
    ld [hl], $ca
    db $76
    or $0b
    dec c
    ld b, $06
    ld [de], a
    ld c, $00
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$1b1c], sp
    jr c, jr_006_4808

    ld a, $27
    ld h, a
    ld e, e
    ld b, a
    ld a, h
    ld c, [hl]
    ld a, c
    ld a, b
    ld [hl], a
    jr z, @+$41

    ld [hl], $3f
    rrca
    rrca
    ld b, b
    ld b, b
    and c
    pop hl
    and e
    ld [c], a
    and h
    rst $20
    rst $10
    rst $30
    ld e, a
    ld a, a
    ld l, e
    ld a, h
    cp b
    rst $38
    ld b, a
    ld a, a
    dec a
    ld a, $26
    ccf
    ld e, a
    ld a, l
    dec hl
    cpl
    inc d
    inc e
    ld [$0008], sp

jr_006_4808:
    nop
    dec de
    dec de
    ld l, $3f
    inc [hl]
    ccf
    daa
    ccf
    ld b, a
    ld a, [hl]
    ld b, a
    ld a, h
    ccf
    ccf
    ccf
    jr nz, jr_006_4839

    db $10
    ld c, $09
    ld c, $0f
    rla
    dec e
    rla
    dec e
    ld d, $1f
    ld a, [bc]
    rrca
    rlca
    rlca
    dec de
    dec de
    ld l, $3f
    inc [hl]
    ccf

jr_006_482f:
    daa
    ccf
    ld b, a
    ld a, [hl]
    ld b, a
    ld a, h
    ccf
    ccf
    ld a, a
    ld b, b

jr_006_4839:
    ld a, a
    ld b, b
    ccf
    jr nz, jr_006_485c

    rra
    rla
    dec e
    rla
    dec e
    ld d, $1f
    ld a, [bc]
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_006_482f

    ret nc

    ldh a, [$d0]
    ld [hl], b
    sub b
    ldh a, [$08]
    ld hl, sp-$7c
    ld a, h
    inc b
    db $fc
    ld b, d

jr_006_485c:
    cp $26
    cp $29
    rst $38
    ld sp, $22ff
    cp $41
    rst $38
    cp [hl]
    cp [hl]
    nop
    nop
    dec de
    dec de
    ld l, $3f
    inc [hl]
    ccf
    daa
    ccf
    ld b, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    jr nz, jr_006_489b

    db $10
    rrca
    ld c, $09
    rrca
    ld b, $07
    ld bc, $1201
    ld b, $00
    ld hl, sp-$08
    ld h, $fe
    ld de, $e0ff
    rst $38
    ldh [$3f], a
    add $79
    adc a
    ldh a, [$8f]
    ld [hl], b
    rst $00
    dec sp
    db $e4

jr_006_489b:
    inc e
    ld a, [c]
    cp $29
    rst $28
    add $c6
    ld [de], a
    ld a, [bc]
    nop
    jr c, jr_006_48df

    call nz, Call_000_02fc
    cp $3a
    cp $c4
    ld b, h
    add b
    add b
    ld [de], a
    ld [de], a
    nop
    ld c, $0e
    ccf
    ld sp, $407f
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld e, a
    ld h, b
    ld b, a
    ld a, c
    ld sp, $0e3f
    ld c, $12
    ld [$3800], sp
    jr c, jr_006_4950

    ld b, [hl]
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_006_48df:
    ld a, [hl]
    add e
    sbc a
    pop hl
    ld h, d
    ld a, [hl]
    inc e
    inc e
    ld [de], a
    inc c
    nop
    ld bc, $0b01
    ld [bc], a
    ld d, $14
    ld a, [hl-]
    cpl
    ld [hl], d
    ld e, l
    ld [hl], e
    ld e, h
    ld c, e
    ld a, [hl]
    add hl, hl
    scf
    jr c, jr_006_4933

    ld d, h
    ld a, e
    ld c, l
    ld a, d
    inc hl
    inc a
    ld [de], a
    inc b
    nop
    jr nz, jr_006_4927

    ld [hl], b
    ld d, b
    ld d, h
    ld h, h
    sub [hl]
    ld [c], a
    xor b
    sbc $62
    cp [hl]
    ld [hl], $da
    inc [hl]
    call c, Call_006_5ca4
    sbc h
    ld l, h
    sbc [hl]
    ld l, d
    ld [hl], d
    sbc [hl]
    jp z, $9436

    ld l, h
    dec e
    ld e, $1b
    rla
    ld [hl], $2f

jr_006_4927:
    ld c, d
    ld a, e
    ld [hl], c
    ld [hl], c
    ld [de], a
    ld d, $00
    rlca
    rlca
    inc b
    rlca
    rrca

jr_006_4933:
    rrca
    rrca
    ld [$0407], sp
    rrca
    ld [$101f], sp
    add hl, de
    ld d, $18
    rla
    ld a, [de]
    rla
    dec de
    rla
    dec de
    ld d, $1f
    ld d, $1f
    db $10
    rra
    jr jr_006_495c

    rrca
    inc a
    inc a

jr_006_4950:
    ld b, [hl]
    ld a, d
    add e
    db $fd
    cp e
    db $dd
    cp e
    db $dd
    add e
    db $fd
    ld b, d
    ld a, [hl]

jr_006_495c:
    inc l
    inc a
    jr z, jr_006_4998

    ld l, $3e
    inc hl
    dec a
    ld l, $3e
    jr z, jr_006_49a0

    ld l, $3e
    inc hl
    dec a
    ld l, $3e
    nop
    nop
    ccf
    ccf
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld c, h
    ld [hl], e
    ld e, [hl]
    ld [hl], c
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ld a, h
    ld b, a
    ld a, [hl]
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ccf
    ccf
    nop
    nop
    ld [de], a
    nop
    dec c
    rst $30
    rlca
    ld a, [hl]
    rlca
    ccf
    inc bc
    rra

jr_006_4998:
    ld bc, $010f
    inc bc
    ld bc, $0303
    inc c

jr_006_49a0:
    rrca
    ld sp, $473f
    ld a, a
    ccf
    inc a
    dec bc
    ld c, $11
    rra
    ld [hl-], a
    cpl
    ld a, a
    ld b, h
    ld a, a
    ld e, e
    ld [hl], $36
    rst $38
    cp $ff
    call nc, $bcef
    ld l, [hl]
    cp h
    inc d
    db $fc
    adc h
    db $fc
    ld a, [$fd7e]
    scf
    cp $87
    ld hl, sp-$08
    ldh a, [rNR10]
    ldh [$a0], a
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    inc sp
    inc a
    ld l, a
    ld d, b
    ld a, h
    ld c, a
    cp [hl]
    rst $18
    rst $38
    cp [hl]
    rst $38
    cp h
    rst $38
    cp c
    rst $38
    add e
    ld a, l
    ld c, e
    ccf
    jr nc, jr_006_4a04

    rla
    ld a, [de]
    rla
    rrca
    ld a, [bc]
    dec b
    dec b
    ld de, $241f
    ccf
    ld c, [hl]
    ld a, a
    sbc $f6
    ld e, [hl]
    push af
    inc c
    ei
    add h
    rst $38
    ld a, c
    ld a, a
    dec c
    ld [de], a
    nop

jr_006_4a04:
    ld bc, $0201
    inc bc
    rlca
    ld b, $1a
    rra
    ld de, $291f
    scf
    ld d, b
    ld l, a
    ld d, c
    ld l, a
    ld b, e
    ld a, a
    ld l, $3f
    inc sp
    ccf
    ld h, c
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld h, c
    ld a, a
    nop
    nop
    cp a
    cp a
    ld h, d
    rst $38
    and c
    ld a, [hl]
    and b
    ld a, a
    db $10
    rst $38
    ld a, $ff
    jp $80ff


    rst $38
    inc bc
    rst $38
    ld e, $ff
    inc sp
    db $fc
    and c
    ld a, [hl]
    and c
    ld a, [hl]
    ret nz

    rst $38
    add c
    rst $38
    ld e, a
    ld a, a
    ld sp, $383f
    ccf
    inc d
    rra
    dec bc
    rrca
    ld b, $07
    ld bc, $0d01
    ld [de], a
    nop
    add e
    rst $38
    adc $ff
    jr nc, @+$01

    inc e
    rst $38
    ld [hl-], a
    rst $38
    rst $18
    rst $38
    di
    di
    dec c
    ld a, [de]
    nop
    inc b
    inc b
    ld c, $0e
    rra
    inc de
    ccf
    jr nz, jr_006_4aec

    ld b, b
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $090d
    nop
    inc h
    inc h
    dec c
    ld b, $66
    inc a
    inc a
    cp l
    sbc c
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    ld a, [hl]
    rst $38
    db $db
    add c
    add c
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec c
    inc b
    ld d, $3b
    dec hl
    dec sp
    add hl, hl
    ld a, a
    ld c, a
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, a
    ld d, a
    daa
    dec h
    inc b
    inc b
    rrca
    ld [$0b0f], sp
    rrca
    rrca
    inc bc
    inc bc
    rrca
    ld c, $0f
    ld [$0b0f], sp
    rrca
    rrca
    rra
    rra
    ccf
    jr nz, jr_006_4b06

    jr nz, jr_006_4ae8

    rra
    dec c
    ld [$e000], sp
    ldh [$80], a
    add b
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$30]
    ldh [$e0], a
    add b
    add b
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp-$08
    dec c
    ld a, [bc]
    nop

jr_006_4ae8:
    inc bc
    inc bc
    rlca
    dec b

jr_006_4aec:
    ld c, $09
    inc c
    dec bc
    inc e
    inc de
    jr jr_006_4b0b

    jr jr_006_4b0d

    jr @+$19

    jr @+$19

    inc c
    dec bc
    inc c
    dec bc
    ld b, $05
    inc bc
    inc bc
    dec c
    ld [$0300], sp

jr_006_4b06:
    inc bc
    inc c
    rrca
    inc e
    rla

jr_006_4b0b:
    add hl, de
    rra

jr_006_4b0d:
    inc hl
    ld a, $23
    ld a, $21
    ccf
    jr nz, jr_006_4b54

    jr @+$21

    inc e
    rla
    inc c
    rrca
    inc bc
    inc bc
    dec c
    ld a, [bc]
    nop
    ld bc, $0701
    ld b, $09
    rrca
    db $10
    rra
    db $10
    rra
    jr c, jr_006_4b5b

    jr c, jr_006_4b5d

    db $10
    rra
    db $10
    rra
    add hl, bc
    rrca
    rlca
    ld b, $01
    ld bc, $240d
    nop
    inc bc
    inc bc
    rlca
    dec b
    ld c, $09
    inc c
    dec bc
    inc e
    inc de
    jr jr_006_4b5e

    jr jr_006_4b60

    jr jr_006_4b62

    jr jr_006_4b64

    inc c
    dec bc
    inc c
    dec bc
    ld b, $05
    inc bc

jr_006_4b54:
    inc bc
    dec c
    ld [$3e00], sp
    ld a, $61

jr_006_4b5b:
    ld a, a
    ld l, h

jr_006_4b5d:
    ld e, a

jr_006_4b5e:
    cp $93

jr_006_4b60:
    cp $bb

jr_006_4b62:
    cp $bb

jr_006_4b64:
    ld a, h
    ld l, a
    rst $38
    add e
    cp $e7
    rst $38
    sbc e
    ld l, a
    ld l, b
    rla
    inc e
    daa
    inc a
    inc hl
    ccf
    dec c
    inc b
    nop
    jr jr_006_4b91

    inc d
    inc e
    sub h
    sbc h
    sub h
    sbc h
    sub h
    sbc h
    sub d
    sbc [hl]
    or d
    cp [hl]
    ld h, d
    cp $02
    cp $01
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38

jr_006_4b91:
    ld bc, $20ff
    ccf
    jr nz, jr_006_4bd6

    db $10
    rra
    db $10
    rra
    ld [$040f], sp
    rlca
    rrca
    dec bc
    rra
    ld de, $2a3f
    ccf
    ld a, [hl+]
    dec c
    ld b, $00
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $04
    db $fc
    inc b
    db $fc
    cp b
    ld hl, sp+$78
    ld l, b
    cp b
    xor b
    cp b
    xor b
    jr c, jr_006_4bee

    jr c, @+$2a

    ld a, b
    ld a, b
    ld hl, sp-$38
    ld hl, sp-$58
    ld hl, sp-$58
    jr nz, jr_006_4c11

    jr nz, jr_006_4c13

    jr nz, jr_006_4c15

jr_006_4bd6:
    db $10
    rra
    db $10
    rra
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    dec c
    ld [$0301], sp
    inc bc
    rrca
    ld c, $1f
    dec d
    rra
    dec d
    ld bc, $01ff

jr_006_4bee:
    rst $38
    ld bc, $02ff
    cp $9a
    cp $bc
    db $ec
    ld a, [hl]
    jp nz, Jump_006_55ff

    rst $38
    ld d, l
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    inc a
    inc a
    ld b, d
    ld a, [hl]
    add l
    rst $38

jr_006_4c11:
    and c
    rst $38

jr_006_4c13:
    and c
    rst $38

jr_006_4c15:
    sbc c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    dec c
    stop
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    db $fd
    jp $c3ff


    cp $c2
    cp $82
    ld a, h
    ld a, h
    ld a, d
    ld b, [hl]
    ld a, d
    ld h, [hl]
    ld a, [hl-]
    ld h, $3c
    inc h
    inc a
    inc h
    inc a
    inc [hl]
    inc e
    inc d
    inc e
    inc d
    ld [$ff08], sp
    nop
    ld sp, hl
    ld b, $f9
    ld b, $f1
    ld c, $f0
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    inc de
    jr nz, jr_006_4c5b

    dec c

jr_006_4c5b:
    inc b
    nop
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
    dec c
    inc b
    nop
    ret nc

    nop
    ld [c], a
    inc c
    ldh [$0e], a
    ld h, b
    ld c, $20
    rlca
    add b
    ld a, [de]
    ret nz

    inc e
    ldh [rNR24], a
    ld h, b
    dec de
    add b
    inc de
    ret nz

    ld c, $c0
    inc [hl]
    jr nz, jr_006_4cae

    db $10
    dec c
    rlca
    nop
    ld b, e
    inc bc
    daa
    inc b
    rrca
    ld [$181f], sp
    ccf
    inc h
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    inc h

jr_006_4cae:
    rra
    jr jr_006_4cc0

    ld [$0427], sp
    ld b, e
    inc bc
    dec c
    ld [$0e00], sp
    ld c, $1f
    add hl, de
    rra
    db $10
    ccf

jr_006_4cc0:
    jr z, jr_006_4d41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, b
    ccf
    jr nc, jr_006_4ce9

    ld de, $0e0e
    dec c
    ld [$3f00], sp
    ccf
    ld a, a
    ld h, b
    ld a, a
    ld b, c
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld c, l
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, a

jr_006_4ce9:
    ld h, b
    ccf
    ccf
    nop
    nop
    dec c
    nop
    dec bc
    dec bc
    ld b, $00
    inc c
    inc c
    ld e, $12
    ccf
    dec l
    ccf
    dec [hl]
    ccf
    jr nz, @+$81

    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, a
    ld a, d
    ld c, a
    ld a, d
    ld c, a
    ccf
    daa
    rra
    db $10
    rra
    rra
    ccf
    scf
    ld a, a
    ld l, h
    rst $38
    and b
    rst $38
    and b
    rst $38
    add sp, $3f
    jr nz, jr_006_4d3a

    db $10
    ccf
    ccf
    ld a, h
    ld b, h
    adc b
    ld hl, sp-$10
    ldh a, [$0b]
    ld a, [bc]
    nop
    ld hl, sp-$78
    db $fc
    inc b
    cp $22
    rst $38
    ld de, $09ff
    cp $06
    ld hl, sp+$08
    ld hl, sp-$08
    ld a, h
    ld b, h
    ld [hl+], a

jr_006_4d3a:
    ld a, $1e
    ld e, $0b
    ld a, [bc]
    nop
    sbc a

jr_006_4d41:
    ldh a, [$df]
    ldh a, [$9f]
    ldh a, [$7f]
    ld h, b
    ccf
    jr nc, @+$21

    jr jr_006_4d8c

    ld [hl+], a
    ld a, a
    ld b, h
    ld a, a
    ld c, b
    ld a, a
    ld l, c
    ld a, a
    ld b, [hl]
    ccf
    jr nz, jr_006_4d98

    ccf
    rrca
    ld [$1f11], sp
    ld e, $1e
    nop
    nop
    jr jr_006_4d7c

    dec h
    dec a
    ld c, b
    ld a, b
    sbc b
    ld hl, sp-$6a
    cp $8d
    rst $38
    cp b
    rst $38
    ld e, a
    ld a, d
    cpl
    dec a
    ld a, [de]
    rra
    inc h
    ccf
    ld d, e
    ld a, [hl]
    sbc c
    rst $38

jr_006_4d7c:
    and [hl]
    and $40
    ld b, b
    nop
    nop
    ldh a, [$f0]
    ld [$84f8], sp
    db $fc
    ld b, d
    ld a, [hl]
    ld h, d
    ld a, [hl]

jr_006_4d8c:
    or d
    cp $92
    cp $c2
    cp $24
    db $fc
    jr @-$06

    inc h
    db $fc

jr_006_4d98:
    jp z, $997e

    rst $38
    ld h, l
    ld h, a
    ld [bc], a
    ld [bc], a
    jr jr_006_4dba

    inc h
    inc a
    ld c, b
    ld a, b
    sbc b
    ld hl, sp-$6a
    cp $8d
    rst $38
    cp b
    rst $38
    ld e, a
    ld a, d
    cpl
    dec a
    ld a, [hl-]
    ccf
    ld b, h
    ld a, a
    ld d, e
    ld a, [hl]
    ld e, c
    ld a, a

jr_006_4dba:
    ld d, [hl]
    db $76
    ld d, b
    ld [hl], b
    jr nz, jr_006_4de0

    ld a, b
    ld a, b
    add h
    db $fc
    ld b, d
    ld a, [hl]
    ld hl, $313f
    ccf
    ld e, c
    ld a, a
    ret


    rst $38
    and c
    rst $38
    ld [de], a
    cp $1c
    db $fc
    inc h
    db $fc
    jp z, $9a7e

    cp $6a
    ld l, [hl]
    ld a, [bc]
    ld c, $04
    inc b

jr_006_4de0:
    db $10
    rra
    ld h, c
    ld a, a
    add a
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_006_4e29

    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$5f]
    dec hl
    ccf
    add hl, de
    rra
    dec b
    rlca
    dec bc
    inc b
    rrca
    inc b
    nop
    db $f4
    db $f4
    sbc b
    sbc b
    db $e4
    db $fc
    ld [$10f8], sp
    ldh a, [$2e]
    sbc $1f
    rst $28
    rrca
    or $0e
    db $f4
    inc c
    db $f4
    call nz, $e8fc
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [$f0]
    and b
    dec bc
    stop
    rlca
    rlca
    inc b
    rlca
    add hl, bc
    rrca
    add hl, bc

jr_006_4e29:
    rrca
    db $10
    rra
    ld h, e
    ld a, a
    ld b, b
    ld a, a
    jr nz, @+$41

    dec bc
    stop
    or b
    or b
    ret nc

    ldh a, [$b0]
    ldh a, [$30]
    ldh a, [rNR23]
    ld hl, sp+$06
    cp $81
    rst $38
    ld a, $ea
    db $10
    rra
    ld h, c
    ld a, a
    add a
    rst $38
    ld b, e
    ld a, a
    jr nc, jr_006_4e8e

    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    cp h
    rst $38
    cp [hl]
    rst $38
    ld e, a
    ld a, [hl]
    jr c, jr_006_4e9c

jr_006_4e5d:
    ld a, h
    ld a, a
    ld a, e
    ld a, e
    ld [hl], b
    jr nz, jr_006_4e64

jr_006_4e64:
    nop
    db $f4
    db $f4
    add b
    add b
    or b
    or b
    ret z

    ld hl, sp+$10
    ldh a, [rSVBK]
    ldh a, [$28]
    ret c

    jr jr_006_4e5d

    inc c
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc e
    db $fc
    ld a, a
    cp $bf
    cp l
    ld e, $1e
    inc c
    inc c
    nop
    nop
    rrca
    rrca
    rra
    db $10
    ccf
    cpl
    inc a

jr_006_4e8e:
    cpl
    inc a
    cpl
    inc a
    cpl
    inc a
    cpl
    ccf
    cpl
    ccf
    jr nz, jr_006_4ed1

    jr z, jr_006_4ed9

jr_006_4e9c:
    ld a, [hl+]
    ccf
    ld [hl+], a
    ccf
    jr nc, jr_006_4ec1

    rra
    dec bc
    jr jr_006_4ea6

jr_006_4ea6:
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [$010a], sp
    dec b
    ld bc, $0b0d
    jr nc, jr_006_4eb3

jr_006_4eb3:
    inc e
    jr nz, jr_006_4ef4

    ld b, b
    ccf
    ret nz

    cp [hl]
    pop bc
    sbc l
    ld [c], a
    jp Jump_006_62fd


    ld a, [hl]

jr_006_4ec1:
    inc a
    inc a
    dec bc
    stop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_006_4ed1:
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    ld a, [c]
    ld [de], a
    rst $30

jr_006_4ed9:
    ld d, l
    rst $38
    add hl, de
    rst $38
    ld de, $22fe
    cp $c2
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    db $fc
    inc h
    db $fc
    call nz, Call_006_447c

jr_006_4ef4:
    jr c, jr_006_4f2e

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$50]
    ld hl, sp+$18
    db $fc
    inc d
    cp $22
    rst $38
    ret


    rst $38
    dec b
    rst $38
    dec b
    cp $06
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    db $fc
    inc h
    cp $c2
    ld a, [hl]
    ld a, [hl]
    dec bc
    ld [de], a
    nop
    add b
    add b
    or b
    or b
    ld hl, sp-$38
    ld hl, sp-$78
    ldh a, [$90]
    ldh [$a0], a
    ldh [rNR41], a
    dec bc
    ld [de], a
    nop
    inc bc
    inc bc
    rlca
    inc b

jr_006_4f2e:
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec bc
    inc d
    nop
    add b
    add b
    or b
    or b
    ld hl, sp-$38
    ld hl, sp-$78
    ldh a, [$90]
    ldh [$a0], a
    cp $02
    cp $02
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ld hl, sp+$48
    db $fc
    ld b, h
    cp $82
    cp $02
    cp $02
    db $fc
    inc b
    ld hl, sp-$08
    ldh a, [$90]
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    dec bc
    stop
    dec bc
    ld b, $01
    rrca
    rrca
    rra
    jr jr_006_4fb1

    ld [hl-], a
    ccf
    ld [hl+], a
    ld a, a
    ld [hl], b
    dec bc
    ld [$0700], sp
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    cpl
    ccf
    dec [hl]
    ccf
    dec d
    rra
    ccf
    inc a
    ld a, a
    ld c, b
    rst $38
    sub b
    ld a, a
    ld a, a
    ccf
    ld l, $06
    ld b, $19
    rra
    ld [hl], e
    ld a, l
    adc l
    rst $38
    adc $f2
    ld [hl], c
    rst $38
    ld a, c
    sbc a
    dec e
    rst $28
    inc bc
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    ld sp, hl
    ld a, a
    ld sp, hl
    ccf
    ld a, [c]
    ld e, $fe
    sbc [hl]
    rst $38

jr_006_4fb1:
    ccf
    dec bc
    ld [$0100], sp
    ld bc, $0303
    inc b
    rlca
    ld [$0e0f], sp
    rrca
    ld de, $201f
    ccf
    jr nc, jr_006_5004

    inc l
    ccf
    inc sp
    ccf
    inc e
    rra
    rlca
    rlca
    dec bc
    ld b, $00
    ret nz

    ret nz

    ld h, b
    and b
    sub b
    ldh a, [rBCPS]
    ld hl, sp+$78
    sbc b
    inc d
    db $ec
    add h
    db $fc
    ld [hl], d
    cp $6e
    sbc [hl]
    inc de
    rst $28
    add c
    rst $38
    ld h, d
    cp $fc
    db $fc
    dec bc
    stop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$d0]
    ldh a, [$50]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    cp $02
    nop
    nop
    ccf
    ccf
    ld a, a
    ld h, b
    ld a, a

jr_006_5004:
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, a
    ld c, l
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld c, l
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld h, b
    ccf
    ccf
    nop
    nop
    dec bc
    nop
    dec c
    nop
    nop
    rlca
    rlca
    jr jr_006_5045

    daa
    ccf
    ld d, b
    ld l, a
    cp b
    rst $00
    cp h
    jp Jump_006_437c


    ld a, $21
    ccf
    jr c, @+$81

    ld b, a
    rst $38
    adc h
    ld a, a
    ld c, b
    ccf
    inc h
    dec de
    ld a, [de]
    ld bc, $0d01
    ld a, [bc]
    nop
    rlca
    rlca

jr_006_5045:
    inc c
    rrca
    rla
    rra
    jr nz, jr_006_508a

    jr z, jr_006_5084

    ld e, b
    ld h, a
    ld e, h
    ld h, e
    ld e, h
    ld h, e
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, $21
    rra
    jr jr_006_509b

    daa
    ld a, a
    ld b, h
    rst $38
    adc b
    rst $38
    adc b
    rst $30
    sub h
    ld [hl], a
    ld d, h
    inc hl
    ld [hl+], a
    ld bc, $0d01
    ld c, $00
    rra
    inc e
    rra
    inc de
    ccf
    ld h, $3f
    inc h
    ld a, a
    ld b, h
    ld a, a
    ld c, h
    ld a, a
    ld c, h
    ld [hl], a
    ld d, h
    ld [hl], e
    ld d, d
    inc hl
    ld [hl+], a
    inc bc
    ld [bc], a

jr_006_5084:
    ld bc, $0d01
    ld d, $00
    inc bc

jr_006_508a:
    nop
    ld c, $00
    add hl, de
    nop
    dec de
    nop
    ld [hl], $00
    ld [hl], $00
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    dec c

jr_006_509b:
    dec c
    nop
    rst $38
    nop
    add c
    nop
    nop
    nop
    add b
    dec c
    dec de
    nop
    ret nz

    nop
    ld [hl], b
    nop
    jr jr_006_50ad

jr_006_50ad:
    jr jr_006_50af

jr_006_50af:
    inc c
    nop
    inc c
    nop
    ld b, $00
    ld b, $00
    ld b, $0d
    dec b
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    ccf
    ccf
    ld a, a
    ld c, a
    ccf
    dec sp
    rlca
    dec b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld h, [hl]
    jr c, jr_006_513e

    jr c, jr_006_5100

    jr jr_006_510a

    db $10
    inc l
    db $10
    jr c, jr_006_50e3

jr_006_50e3:
    jr jr_006_50e5

jr_006_50e5:
    stop
    db $10
    dec c
    rrca
    nop
    cp a
    rra
    rra
    dec c
    inc b
    rrca
    rlca
    rrca
    ld b, $0e
    dec b
    ld c, $05
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    dec b
    inc bc

jr_006_5100:
    rlca
    ld bc, $0103
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop

jr_006_510a:
    rst $38
    sbc $ff
    cp h
    or $78
    db $e4
    ld a, b
    db $e4
    cp b
    db $ec
    or b
    db $ec
    sub b
    ld l, b
    ret nc

    ld a, b
    ret nz

    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$10
    ld hl, sp-$10
    ret nc

    ldh [$d0], a
    ldh [$90], a
    ldh [rP1], a
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_006_5173

    jr nz, jr_006_5175

    ld c, a
    ld a, a
    ld b, b
    ld a, a
    adc h
    rst $38
    sbc [hl]
    rst $30

jr_006_513e:
    sbc [hl]
    rst $38
    ld a, [hl]
    ld a, a
    rra
    rra
    dec c
    ld a, [bc]
    nop
    or b
    or b
    ld c, h
    db $fc
    ld b, e
    rst $38
    add c

jr_006_514e:
    rst $38
    cp d
    rst $38
    adc $ff
    adc d
    rst $38
    ld c, c
    rst $38
    add hl, hl
    rst $38
    ld sp, $eeff
    xor $0d
    inc c
    nop
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    jr nz, jr_006_514e

    db $10
    ldh a, [$c8]
    ld hl, sp+$30

jr_006_5173:
    jr nc, jr_006_5182

jr_006_5175:
    ld [$9e00], sp
    sbc [hl]
    ld h, c
    rst $38
    ld d, c
    rst $38
    adc c
    rst $38
    adc e
    rst $38
    db $fc

jr_006_5182:
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, e
    rst $38
    inc l
    db $fc
    db $10
    ldh a, [$f0]
    ldh a, [$0d]
    ld b, $00
    jr c, jr_006_51cc

    call nz, $88fc
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$90], a
    ldh a, [$88]
    ld hl, sp-$1c
    db $fc
    jr jr_006_51be

    dec c
    inc a
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $20
    sbc c
    jp $c3bd


    cp l
    rst $20
    sbc c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    dec c
    ld [$0300], sp
    inc bc

jr_006_51be:
    rrca
    inc c
    rra
    ld e, $3f
    inc hl
    ld a, a
    ld b, c
    rst $38
    pop af
    rst $38
    sbc e
    rst $38
    adc [hl]

jr_006_51cc:
    rst $38
    add d
    rst $38
    cp $57
    ld a, a
    ld b, l
    ld a, a
    dec c
    ld [$c000], sp
    ret nz

    ldh a, [$30]
    db $fc
    inc e
    cp $1a
    rst $38
    di
    rst $38
    and c
    rst $38
    inc de
    rst $38
    ld e, a
    rst $38
    sbc c
    rst $38
    pop af
    rst $38
    inc sp
    cp $96
    ld l, h
    ld a, a
    jr nc, jr_006_5232

    ld c, [hl]
    ld a, a
    ld d, l
    ld [hl], a
    ld e, d
    ld a, e
    dec h
    dec a
    add hl, de
    rra
    ld b, $06
    dec c
    stop
    ld hl, sp-$08
    add $c6
    add hl, sp
    rst $38
    add $fe
    ld hl, sp-$08
    jr nz, @-$1e

    ret nc

    ldh a, [rNR41]
    jr nz, jr_006_5220

    stop
    ld l, h
    ld a, a
    jr c, jr_006_5258

    ld [de], a
    rra
    dec d
    rra
    dec d
    rra
    ld a, [bc]

jr_006_5220:
    rrca
    dec bc
    rrca
    inc b
    rlca
    inc bc
    inc bc
    dec c
    ld c, $00
    db $fc
    db $fc
    ret nz

    ret nz

    ld e, h
    call c, $fe22

jr_006_5232:
    adc h
    db $fc
    ld [hl], d
    cp $8e
    adc [hl]
    add b
    add b
    dec c
    ld [de], a
    nop
    inc c
    inc c
    ld e, $12
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    inc b
    rra
    inc e
    cpl
    jr c, @+$61

    ld [hl], b
    ld c, a
    ld a, b
    ld b, a
    ld a, [hl]
    and c
    rst $38
    sbc b
    rst $38
    add a
    rst $38
    ld b, b

jr_006_5258:
    ld a, a
    ccf
    ccf
    dec c
    ld [$1c00], sp
    inc e
    ld a, $22
    ld a, a
    ld c, c
    rst $38
    sub b
    ld a, a
    ld a, b
    ld c, a
    ld a, [hl]
    ld b, c
    ld a, a
    and b
    rst $38
    sbc b
    rst $38
    add a
    rst $38
    ld b, b
    ld a, a
    ccf
    ccf
    dec c
    ld b, $00
    ld bc, $0301
    ld [bc], a
    ld a, a
    ld a, a
    add e
    rst $38
    ld a, c
    ld a, a
    ld b, $07
    ld bc, $0001
    nop
    dec c
    inc b
    ld bc, $0203
    inc bc
    inc bc
    rlca
    inc b
    jr nz, jr_006_52b4

    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    adc b
    ld hl, sp-$3c
    ld a, h
    call nz, $d27c
    ld a, [hl]
    sub d
    cp $3a
    cp $f2
    sbc $f4
    db $fc
    db $e4
    inc a
    add sp, -$08
    ret z

    ld a, b
    call nz, $c4fc
    ld a, h
    rlca
    rlca

jr_006_52b4:
    rlca
    inc b
    inc bc
    inc bc
    ld bc, $0d01
    inc b
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0d01
    inc c
    nop
    db $e4
    db $fc
    db $e4
    inc a
    ld a, [c]
    cp $f2
    ld e, $fa
    cp $7a
    ld c, [hl]
    ld [hl-], a
    ld a, $94
    sbc h
    db $e4
    db $fc
    ld [$f0f8], sp
    ldh a, [$0d]

Call_006_52df:
    ld a, [bc]
    nop
    rlca
    rlca
    inc b
    rlca
    rrca
    rrca
    rrca
    ld [$0407], sp
    rrca
    ld [$101f], sp
    add hl, de
    ld d, $18
    rla
    ld a, [de]
    rla
    dec de
    rla
    dec de
    ld d, $1f
    ld d, $1f
    db $10
    rra
    jr jr_006_530f

    rrca
    nop
    nop
    ccf
    ccf
    ld a, a
    ld h, b
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, e
    ld a, h
    ld b, a
    ld a, b
    ld c, a

jr_006_530f:
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ld a, h
    ld b, a
    ld a, [hl]
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ccf
    ccf
    nop
    nop
    dec c
    nop
    dec b
    dec b
    ld [$1c00], sp
    inc e
    ld h, e
    ld a, a
    add h
    rst $38
    adc b
    rst $38
    ld hl, sp-$01
    dec c
    rrca
    ld a, a
    ld [hl], a
    adc a
    rst $30
    rst $08
    rst $38
    dec a
    dec a
    dec b
    ld b, $00
    rlca
    rlca
    ld [$070f], sp
    rlca
    nop
    nop
    rst $30
    rst $30
    add hl, bc
    rst $38
    inc a
    rst $38
    call nz, Call_000_02ff
    rst $38
    ld [hl-], a
    rst $38
    ld d, e
    rst $18
    ld d, h
    call c, $b8a8
    jr nc, jr_006_538a

    dec b
    inc b
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$d0]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
    dec b
    ld c, $00
    jr c, jr_006_53ae

    ld b, h
    ld a, h
    add d
    cp $f3
    rst $38
    inc d
    rra
    ld a, b
    ld a, a
    adc b
    rst $38
    call Call_000_3fff
    scf
    rrca
    rlca
    rrca
    rrca

jr_006_538a:
    dec c
    dec c
    ld bc, $0001
    nop
    rlca
    rlca
    dec bc
    inc c
    inc b
    rlca
    dec bc
    rrca
    inc d
    dec de
    cpl
    jr nc, jr_006_53c4

    jr c, jr_006_53f7

    ld a, a
    ld e, a
    ld h, a
    ld e, a
    ld h, b
    ld e, a
    ld a, b
    daa
    ccf
    jr nz, jr_006_53e9

    dec de
    inc e
    rlca
    rlca

jr_006_53ae:
    nop
    nop
    rst $20
    rst $20
    db $db
    inc a
    ld h, [hl]
    sbc c
    add c
    rst $38
    ld a, [hl]
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    ld a, [hl]
    add c
    add c
    rst $38
    rst $38
    ld a, [hl]

jr_006_53c4:
    rst $38
    nop
    rst $38
    jp $ff3c


    jp $7e3c


    add c
    rst $38
    rst $38
    inc a
    inc a
    ld e, d
    ld h, [hl]
    ld c, a
    ld [hl], c
    ld sp, $4c3e
    ld a, a
    ld e, a
    ld h, e
    and a
    ld hl, sp-$65
    db $fc
    cp h
    rst $00
    cp a
    db $e3
    ld e, a
    ld [hl], b
    ld c, a
    ld a, h
    inc hl

jr_006_53e9:
    ccf
    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    dec b
    stop
    rst $20
    rst $20
    cp l
    db $db

jr_006_53f7:
    rst $38
    and l
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    rst $38
    and l
    cp l
    db $db
    rst $20
    rst $20
    nop
    nop
    inc e
    inc e
    ld a, $22
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    rst $38
    add b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    ld a, a
    ld h, b
    ccf
    inc h
    ccf
    inc h
    rra
    inc e
    rlca
    inc b
    rlca
    inc b
    inc bc
    inc bc
    sbc a
    sbc a
    rst $38
    ld h, b
    rst $38
    scf
    rst $38
    ld c, b
    rst $38
    ld e, h
    rst $38
    ld e, h
    or a
    rst $38
    add b
    rst $38
    add d
    rst $38
    call $f37f
    ld a, $ff
    adc h
    rst $38
    or b
    ld c, a
    ld a, a
    xor b
    ld hl, sp-$58
    ld hl, sp+$01
    ld bc, $8687
    rst $38
    ld a, b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    add c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld a, c
    sub [hl]
    or $a8
    ld hl, sp-$58
    ld hl, sp+$05
    inc b
    nop
    ld bc, $0701
    ld b, $0f
    ld [$101f], sp
    rra
    db $10
    ccf
    ld [hl+], a
    ccf
    inc h
    ld a, a
    ld b, h
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ccf
    add hl, sp
    rrca
    add hl, bc
    rlca
    rlca
    ld bc, $0001
    nop
    rra
    rra
    cp a
    and b
    rst $38
    ld [hl], a
    rst $38
    ld c, b
    rst $38
    ld e, h

jr_006_548c:
    rst $38
    ld e, h
    or a
    rst $38
    add b
    rst $38
    add d
    rst $38
    call $f37f
    cp [hl]
    rst $38
    inc l
    rst $38
    jr nc, jr_006_548c

    ccf
    add sp, $38
    add sp, -$08
    nop
    nop
    sbc a
    sbc a
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    and b
    rst $38
    or b
    rst $38
    ld d, d
    rst $38
    adc d
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld a, c
    sub a
    push af
    xor a
    db $fc
    xor a
    db $fc
    rlca
    inc b
    rlca
    rlca
    dec b
    ld [de], a
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    ld c, $13
    ld e, $21
    ccf
    ld b, b
    ld a, a
    dec b
    ld [de], a
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$38
    ld hl, sp-$68
    ld hl, sp-$68
    ld hl, sp+$38
    db $fc
    db $fc
    dec b
    stop
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
    ld a, [hl]
    ld a, [hl]
    dec b
    ld a, [bc]
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    inc d
    rra
    inc d
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, $23
    ccf
    inc hl
    ld a, [hl-]
    ld h, $24
    inc a
    inc e
    inc e
    nop
    ld bc, $0301
    rrca
    ld c, $1f
    ld de, $151f
    rra
    ld de, $3fef
    rra
    inc e
    scf
    rra
    call z, Call_000_180f
    rrca
    ld l, a
    rrca
    adc c

jr_006_5529:
    rrca
    inc c
    rrca
    ld b, $07
    ld bc, $0001
    nop
    nop
    add b
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$58
    ei
    jr jr_006_5529

    ld hl, sp-$01
    ld a, h
    cp a
    rst $30
    ld d, $f0
    cpl
    cp $e9
    ld sp, hl
    ret z

    ld hl, sp+$14
    db $fc
    jr c, @-$06

    ldh [$e0], a
    nop
    nop
    ccf
    ccf
    ld a, a
    ld h, b
    ld a, a
    ld b, c
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld c, l
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld h, b
    ccf
    ccf
    dec b
    inc b
    nop
    ccf
    ccf
    ld a, a
    ld h, b
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, e
    ld a, h
    ld b, a
    ld a, b
    ld c, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ld a, h
    ld b, a
    ld a, [hl]
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ccf
    ccf
    dec b
    inc b
    nop
    ccf
    ccf
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld c, h
    ld [hl], e
    ld e, [hl]
    ld [hl], c
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ld a, h
    ld b, a
    ld a, [hl]
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ccf
    ccf
    dec b
    inc b
    nop
    ccf
    ccf
    ld a, a
    ld h, b
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, a
    ld c, l
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld c, l
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld h, b
    ccf
    ccf
    dec b
    ld [de], a
    nop
    dec de
    dec de
    ccf
    inc h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    rst $38
    add h
    rst $38
    add h
    add h
    rst $38
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    ld de, $1f1f
    rra
    ccf
    jr c, jr_006_5666

    ld l, b
    ld a, a
    ld d, b
    rst $38
    or b
    rst $18
    ret nc

    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr jr_006_5610

    inc e
    daa
    ccf
    inc a
    inc a
    nop

Jump_006_55ff:
    nop
    db $10
    db $10
    ld a, c
    ld l, c
    sbc l
    push af
    adc d
    ei
    ld e, [hl]
    ld a, a
    ld [hl+], a
    ccf
    ld b, c
    ld a, a
    ld e, c
    ld a, a

jr_006_5610:
    cp $a7
    db $fc
    and a
    ld e, b
    ld e, a
    adc a
    adc a
    call c, Call_006_52df
    ld d, e
    ld bc, $7001
    ld [hl], b
    adc b
    ld hl, sp+$46
    cp [hl]
    add a
    ld a, l
    adc a
    ld a, c
    rra
    pop af
    ld a, $e2
    ld a, h
    call nz, $88f8
    ld [hl], b
    ldh a, [rLCDC]
    ret nz

    and b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
    db $10
    jr @+$3a

    jr c, jr_006_5697

    ld l, h
    and d
    sbc $bd
    rst $38
    ld d, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    add e
    rst $38
    pop bc
    cp a
    db $e3
    sbc l
    rst $30
    xor e
    or a
    ret


    add c
    rst $38
    sbc c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    db $fc
    db $fc
    db $fc
    cp h
    db $fc
    ld a, h
    db $fc
    inc a

jr_006_5666:
    cp $1e
    cp $0e
    rst $38
    daa
    rst $38
    inc sp
    rst $38
    ccf
    cp $1e
    db $fd
    dec e
    rst $38
    rrca
    cp $7e
    call z, $84fc
    db $fc
    ld a, h
    ld a, h

jr_006_567e:
    dec b
    ld c, $00
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    inc bc
    dec b
    inc b
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b

jr_006_5697:
    ret nz

    ld d, b
    ldh a, [rNR50]
    db $ec
    jr nz, jr_006_567e

    db $10
    ldh a, [$ca]
    cp $24
    db $fc

jr_006_56a4:
    inc h
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    jr z, jr_006_56a4

    ret nc

    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    dec b
    nop
    ld [hl+], a
    ld a, a
    ld a, a
    ld de, $1f1f
    rra
    ccf
    jr c, jr_006_573d

    ld l, b
    rst $38
    sub b
    rst $38
    ldh a, [$1f]
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr jr_006_56e7

    inc e
    daa
    ccf
    inc a
    inc a
    db $fc
    db $fc
    db $fc
    cp h
    cp $7e
    cp $1e
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    add hl, sp
    rst $38
    ccf
    db $fc
    inc a

jr_006_56e7:
    db $fd
    dec e
    rst $38
    rra
    rst $38
    rrca
    cp $7e
    call z, $84fc
    db $fc
    ld a, h
    ld a, h
    ccf
    ccf
    ld c, $0f
    ld a, c
    ld a, a
    rst $38
    adc [hl]
    rst $38
    ret z

    ccf
    jr nc, jr_006_5721

    db $10
    rra
    db $10
    rra
    db $10
    ccf
    jr nc, jr_006_5769

    ld [hl], c
    ld c, a
    ld a, c
    ld c, a
    ld a, c
    ld h, a
    ld a, h
    dec sp
    dec sp
    nop
    nop
    db $fc
    db $fc
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld bc, $03ff
    cp $0e

jr_006_5721:
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fd
    db $fd
    ccf
    rst $38
    ccf
    rst $38
    ld a, $fe
    sbc h
    db $fc
    ld hl, sp-$08
    ld [hl+], a
    ld [$0100], sp
    ld bc, $0f0e
    ld [hl], b
    ld a, a
    add b

jr_006_573d:
    rst $38
    ld a, b
    ld a, a
    rra
    ld e, $3f
    jr nz, jr_006_5764

    rra
    ld [hl+], a
    ld c, $00
    ccf
    ccf
    ret nz

    rst $38
    ld [hl], b
    adc a
    ld hl, sp+$77
    ld hl, sp+$77
    ld [hl], b
    adc a
    nop
    rst $38
    rst $00
    jr c, @+$01

    add b
    ld a, a
    ld a, [hl]
    ld bc, $2201
    ld a, [bc]
    nop
    ld a, h
    ld a, h

jr_006_5764:
    sub e
    rst $38
    ld l, b
    rst $10
    inc a

jr_006_5769:
    rst $38
    nop
    rst $38

jr_006_576c:
    nop
    ld [hl+], a
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [hl+], a
    ld c, $00
    ret nz

    ret nz

    jr nc, jr_006_576c

    rrca
    rst $38
    nop
    ld [hl+], a
    inc b
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ret nz

    ld [hl+], a
    inc c
    nop
    ld bc, $0701
    ld b, $1f
    ld a, [de]
    ccf
    jr nz, jr_006_5812

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, d
    ccf
    inc h
    rra
    inc e
    inc bc
    inc bc
    ld [hl+], a
    ld [$ff00], sp
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    sub h
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    ld [hl], a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    sbc a
    ld a, a
    ld h, b
    rra
    rra
    ld [hl+], a
    inc b
    nop
    rlca
    rlca
    rst $38
    ld hl, sp-$01
    ld [$84ff], sp
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    inc b
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    jp $bcbc


    ld [hl+], a
    ld b, $00
    rlca
    rlca
    jr @+$21

    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, h
    ld a, a
    add h
    rst $38
    add e
    rst $38
    add h
    rst $38
    ld c, e
    ld a, a
    ld c, e
    ld a, a
    inc h
    ccf
    ld e, e
    ld a, a
    or [hl]
    rst $38
    sub d
    rst $38
    ld l, a
    ld l, a
    rlca
    rlca
    jr @+$21

    jr nz, jr_006_5842

    ld b, b
    ld a, a
    ld b, h
    ld a, a
    add h
    rst $38
    add e
    rst $38
    add h
    rst $38
    adc e
    rst $38
    ld c, e
    ld a, a
    ld c, e

jr_006_5812:
    ld a, a
    inc h
    ccf
    rra
    rra
    ld a, [hl+]
    ccf
    ld c, d
    ld a, a
    ld [hl-], a
    ccf
    ld d, $1f
    ld h, $3f
    ld a, [hl+]
    dec sp
    ld de, $2211
    jr jr_006_5828

jr_006_5828:
    inc bc
    inc bc
    rlca
    inc b
    rlca
    ld bc, $161f
    rra
    inc d
    dec bc
    ld a, [bc]
    inc bc
    ld [bc], a
    add hl, de
    ld de, $0808
    inc bc
    ld [bc], a
    ld bc, $2201
    ld a, [bc]
    nop
    inc bc

jr_006_5842:
    inc bc
    inc c
    dec bc
    ld e, $11
    scf
    jr z, jr_006_5884

    dec l
    ld [hl], $25
    rla
    inc d
    ld hl, $3236
    daa
    inc [hl]
    dec h
    db $10
    dec d
    inc b
    dec b
    nop
    nop
    ld bc, $0201
    inc bc
    ld bc, $2201
    add hl, bc
    nop
    ld bc, $0100
    nop
    ld bc, $8100
    nop
    jp Jump_006_7300


    nop
    ld a, e
    db $10
    cpl
    add hl, bc
    ld [hl], $0d
    ld [de], a
    rlca
    jr jr_006_5881

    jr jr_006_5880

    inc bc
    dec b
    ld a, [bc]
    dec b

jr_006_5880:
    ld a, [de]

jr_006_5881:
    ld [bc], a
    dec a
    ld [bc], a

jr_006_5884:
    ld h, l
    inc bc
    inc b
    rlca
    ld [$0807], sp
    dec c
    ld [de], a
    add hl, bc
    ld d, $10
    dec hl
    nop
    inc sp
    nop
    ld h, c
    nop
    ld b, c
    nop
    ld bc, $0a22
    nop

jr_006_589c:
    inc bc
    nop
    inc c
    inc bc
    ld de, $130e
    inc l
    rla
    xor b
    ld h, $d9
    ld h, d
    sbc l
    ld h, b
    sbc a
    pop af
    ld c, $1a
    push hl
    inc b
    ei
    ld [hl], d
    adc l
    ld [hl+], a
    ld [$e000], sp
    nop
    jr jr_006_589c

    db $e4
    add hl, de
    ld a, [c]
    dec c
    add hl, sp
    add $18
    rst $20
    ld [hl-], a
    call $9867
    adc a
    ld [hl], b
    inc de
    db $ec
    db $e3
    inc e
    add e
    ld a, h
    nop
    nop
    ld bc, $1b01
    dec de
    inc d
    rra
    ld [$130f], sp
    rra
    inc h
    ccf
    ld l, c
    ld a, a
    xor b
    rst $38
    ld h, h
    ld a, a
    inc hl
    ccf
    ld [hl], b
    ld e, a
    ld hl, sp-$71
    rst $38
    and a
    rst $38
    ld hl, sp+$3f
    inc hl
    add b
    add b
    ld b, b
    ret nz

    and $e6
    ld a, [de]
    cp $04
    db $fc
    add d
    cp $43
    rst $38
    ld hl, $91ff
    rst $38
    sbc a
    rst $38
    ccf
    db $ed
    ccf
    or $ff
    or $ff
    db $ed
    rst $38
    ld a, a
    rst $38
    jr jr_006_5910

jr_006_5910:
    nop
    ld bc, $1b01
    dec de
    inc d
    rra
    ld [$130f], sp
    rra
    inc h
    ccf
    ld l, c
    ld a, a
    xor b
    rst $38
    ld h, h
    ld a, a
    inc hl
    ccf
    db $10
    rra
    jr c, jr_006_5968

    ld a, a
    ld b, a
    rst $38
    cp [hl]
    rst $00
    push bc
    add b
    add b
    ld b, b
    ret nz

    and $e6
    ld a, [de]
    cp $04
    db $fc
    add d
    cp $43
    rst $38
    ld hl, $91ff
    rst $38
    sbc a
    rst $38
    ccf
    db $ed
    ccf
    or $ff
    or $ff
    db $ed
    rst $38
    scf
    rst $38
    call nz, $1022
    nop
    ld h, [hl]
    ld h, [hl]
    db $db
    cp l
    and l
    rst $38
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    and l
    rst $38
    db $db
    cp l
    ld h, [hl]
    ld h, [hl]
    ld [hl+], a
    stop
    inc a
    inc a
    ld e, d

jr_006_5968:
    ld h, [hl]
    cp l
    db $db
    rst $38
    and l
    rst $38
    and l
    cp l
    db $db
    ld e, d
    ld h, [hl]
    inc a
    inc a
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc c
    nop
    ld a, [bc]
    nop
    add hl, bc
    nop
    inc c
    nop
    rlca
    nop
    inc bc
    ld [hl+], a
    dec b
    nop
    rst $38
    nop
    add $00
    ld [hl], e
    nop
    jr jr_006_599b

jr_006_599b:
    rrca
    ld [hl+], a
    rla
    nop
    rst $38
    nop
    ld l, h
    nop
    ld h, [hl]
    nop
    inc sp
    nop
    inc c
    nop
    ld b, $00
    inc bc
    ld [hl+], a
    add hl, de
    nop
    ld c, $0e
    ccf
    ld sp, $c2fe
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$90]
    ld hl, sp+$38
    cp $06
    rst $38
    pop bc
    ld a, $3e
    ld [hl+], a
    ld b, $00
    inc c
    inc c
    rra
    inc de
    inc e
    inc de
    inc c
    rrca
    ld [de], a
    rra
    ld de, $081f
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca

jr_006_59de:
    inc b
    rlca
    ld [$090f], sp
    rrca
    ld b, $06
    jr nc, jr_006_5a18

    ld hl, sp-$38
    jr c, @-$36

    jr nc, jr_006_59de

    ld c, b
    ld hl, sp-$78
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [hl+], a
    inc b
    add b
    ld [hl+], a
    inc b
    nop
    ld [hl+], a
    nop
    ld [de], a
    ld [de], a
    ld a, [bc]
    nop
    ld bc, $0201
    inc bc
    inc c
    rrca
    db $10
    rra
    inc hl
    ccf
    ld h, b
    ld a, a
    di
    sbc a

jr_006_5a18:
    db $f4
    cp a
    ld a, c
    ld e, a
    inc sp
    ccf
    ld b, d
    ld a, a
    ld [de], a
    inc b
    nop
    jr jr_006_5a3d

    inc l
    inc [hl]
    ld c, [hl]
    db $76
    sbc a
    db $ed
    rra
    ld sp, hl
    daa
    ld sp, hl
    add $ff
    ld a, [de]
    rst $38
    ld h, h
    rst $38
    add h
    rst $38
    ld b, h
    rst $38
    sbc h
    rst $38
    inc a
    rst $30

jr_006_5a3d:
    ld a, h
    rst $08
    ld [de], a

jr_006_5a40:
    ld b, $00
    inc bc
    inc bc
    inc c
    rrca
    jr nc, jr_006_5a87

    ret nz

    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    nop
    rst $38
    nop
    nop
    ld e, $1e
    rst $38
    pop hl
    rra
    pop hl
    ld e, $e6
    jr c, jr_006_5a40

    ld l, [hl]
    xor $bf
    or c
    rst $08
    pop af
    rrca
    pop af
    ld c, $f2
    inc e
    db $e4
    ld a, $de
    rst $20
    ld sp, hl
    rrca
    pop af
    rra
    pop hl
    ld bc, $0601
    rlca
    ld [$100f], sp
    rra
    jr nc, jr_006_5ac5

    inc hl

jr_006_5a87:
    ccf
    daa
    dec a
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    ld c, a
    ld a, [hl]
    sbc e
    ld a, [$f4b7]
    xor a
    jp hl


    ld b, [hl]
    ld b, [hl]
    ld [de], a
    inc b
    nop
    add h
    rst $38
    rrca
    rst $38
    jr @+$01

    ld bc, $03ff
    rst $38
    sbc h
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    rst $00
    ld a, a
    ld hl, sp-$01
    ret nc

    rst $38
    ld e, b
    ld a, a
    ld e, b
    ld a, a
    inc l
    ccf
    ld l, $3f
    ld hl, sp-$41
    ld hl, sp-$31
    ld a, b
    rst $38
    xor b
    rst $38
    sub b
    rst $38

jr_006_5ac5:
    ret nc

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    dec de
    db $fc
    rlca
    rst $38
    rst $18
    ldh [$3f], a
    ld sp, hl
    ld a, $ce
    ldh a, [$d0]
    ld [de], a
    ld b, $00
    ld h, b
    nop
    jr nc, jr_006_5b02

jr_006_5b02:
    add hl, de
    nop
    ld e, e
    ld e, b
    rst $30
    xor a
    and h
    rst $38
    and h
    rst $38
    db $fc
    rst $38
    ld d, l
    ld a, a
    ccf
    ccf
    dec de
    dec de
    ld de, $0a11
    ld a, [bc]
    ld [de], a
    inc b
    nop
    jr nc, jr_006_5b1d

jr_006_5b1d:
    ld [hl], b
    nop
    db $ec
    nop
    ret c

    nop
    or b
    nop
    db $fc
    db $fc
    sub d
    cp $fc
    db $fc
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ld [de], a
    inc b
    ld b, b
    add b
    add b
    ld a, [hl]
    sbc [hl]
    rst $38
    pop hl
    rrca
    pop af
    ld e, $e2
    ld a, h
    sbc h
    cp $e2
    ld a, $c2
    db $fc
    inc c
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    add b
    ld [de], a
    ld a, [bc]
    nop
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    inc de
    inc e
    inc d
    rra
    rla
    rrca
    inc c
    rrca
    add hl, bc
    ld c, $0a
    ld c, $0a
    inc b
    inc b
    ld [de], a
    ld [$1700], sp
    rra
    rla
    rra
    dec bc
    rrca
    sbc l
    sub a
    cp $72
    db $fc
    xor h
    cp $ca
    rst $38
    sbc c
    rst $38
    cp h
    ld a, a
    ld h, d
    ld a, a
    ld c, a
    ld [hl], c
    ld d, c
    jr nz, jr_006_5ba4

    ld bc, $0301
    ld [bc], a
    ld bc, $0001
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    add e
    rst $38
    ld h, a
    ld a, a
    rst $38
    sbc a
    ei
    ld e, d
    pop hl
    and c
    ldh [$60], a
    ldh [rNR41], a
    ldh a, [$90]
    ldh a, [$90]

jr_006_5ba4:
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    ld hl, sp+$78
    adc b
    ld hl, sp+$04
    db $fc
    inc bc
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    rra
    inc e
    rlca
    rlca
    inc bc
    inc bc
    ld [de], a
    inc c
    nop
    rra
    rra
    ccf
    jr nz, jr_006_5c0b

    jr nz, @+$21

    rra
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rra
    rra
    ccf
    jr nz, jr_006_5c1d

    jr nz, jr_006_5bff

    rra
    ld [de], a
    inc d
    nop
    inc b
    inc b
    ld [$130c], sp
    rra
    ld d, $1f
    jr nz, jr_006_5c2d

    ld h, c
    ld a, a
    ld [de], a
    inc d
    nop
    ld a, [hl]
    ld a, [hl]
    add h
    db $fc
    dec c
    db $fd
    ld e, $ff
    add sp, -$01
    pop af
    sbc a

jr_006_5bff:
    ld h, c
    ccf
    ld d, l
    ld a, a
    add b
    rst $38
    cp [hl]
    rst $38
    ld b, a
    ld b, a
    inc bc
    inc bc

jr_006_5c0b:
    rrca
    rrca
    scf
    ccf
    ld a, b
    ld e, a
    cpl
    ccf
    ld [hl], a
    ld e, h
    rra
    rra
    dec b
    ld b, $0e
    rrca
    add hl, de
    rra

jr_006_5c1d:
    dec a
    daa
    di
    rst $28
    ldh a, [rIE]
    db $e4
    rst $38
    dec e
    rst $38
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    db $e4
    rst $38

jr_006_5c2d:
    call c, $3eff
    rst $30
    ld hl, sp-$01
    call c, $ff37
    rst $38
    jp nc, $a93f

    ld a, a
    db $fc
    rst $30
    db $fd
    and a
    ld [de], a
    ld [$8000], sp
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp-$79
    rst $38
    ldh [$7f], a
    ld hl, sp+$3f
    rst $28
    rst $38
    ld [hl], a
    rst $38
    cp c
    rst $38
    adc $ff
    inc sp
    ccf
    inc c
    inc c
    ld [de], a
    ld c, $00
    add b
    add b
    ld a, h
    db $fc
    ld b, $fe

jr_006_5c63:
    inc c
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    jr c, jr_006_5c63

    ret nz

    ret nz

    ld [de], a
    ld a, [de]
    nop
    db $db
    db $db
    rst $38
    inc h
    ld hl, $0cfe
    rst $38
    ld [de], a
    jr jr_006_5c7b

jr_006_5c7b:
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$68
    ld a, h
    call nc, Call_000_0412
    nop
    ld bc, $0701
    ld b, $0e
    add hl, bc
    dec e
    inc de
    dec de
    ld d, $36
    dec l
    ld [hl], $2d
    dec de
    ld d, $1d
    inc de
    ld c, $09
    rlca
    ld b, $01
    ld bc, $0a12
    nop
    ld bc, $0601

Call_006_5ca4:
    dec b
    dec c
    dec bc
    dec bc
    ld b, $16
    dec e
    ld d, $1d
    dec bc
    ld b, $0d
    dec bc
    ld b, $05
    ld bc, $1201
    ld b, $00
    add h
    rst $38
    rrca
    rst $38
    jr @+$01

    ld bc, $03ff
    rst $38
    sbc l
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    rst $00
    ld a, a
    ld hl, sp-$01
    ret nc

    rst $38
    ld e, b
    ld a, a
    ld e, b
    ld a, a
    dec l
    ccf
    cpl
    ccf
    sub e
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [$9f]
    ld hl, sp+$7f
    ld hl, sp+$0f
    ld hl, sp-$01
    ret nc

    rst $38
    and c
    rst $38
    ld hl, $44ff
    rst $38
    ld c, h
    rst $30
    ld sp, hl
    adc [hl]
    rst $38
    adc c
    rst $38
    add hl, bc
    rst $38
    ld de, $f43c
    call c, $38fc
    ld hl, sp+$0c
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $24ff
    rst $38
    sub d
    rst $38
    sbc e
    or $bf
    pop de
    rst $38
    ld de, $19ff
    cp $3e
    ld [de], a
    ld a, [bc]
    nop
    ret nz

    ret nz

    ld a, b
    cp b
    ld a, [hl]
    add $3f
    pop hl
    rst $38
    sbc e
    ld a, [hl]
    add $ff
    ld hl, $13ff
    db $fc
    adc h
    ld [hl], b
    ld [hl], b
    nop
    nop
    rst $38
    ld de, $33fe
    db $ec
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    ld h, a
    ld a, a
    rst $38
    sbc a
    ld a, [$e15b]
    and c
    ldh [$60], a
    ldh [rNR41], a
    ldh a, [$90]
    ldh a, [$90]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    ld [de], a
    ld d, $00
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    inc sp
    ccf
    ld b, d
    ld a, a
    ld [de], a
    nop
    dec d
    dec d
    ld c, $00
    inc bc
    nop
    ld b, $00
    ld bc, $0300
    dec d
    inc b
    nop
    ld b, $21
    inc c
    ld d, e
    jr z, jr_006_5d8b

    ld b, b
    dec d
    ld c, $00
    add b
    ld b, b
    ld h, b
    db $10
    db $10
    adc b
    ld c, b
    jr nz, jr_006_5d81

jr_006_5d81:
    inc b
    ret nz

    add hl, de
    db $e4
    ld a, [bc]
    ld [hl-], a
    ld b, l
    sbc c
    ld [hl+], a
    dec d

jr_006_5d8b:
    dec b
    nop
    ld bc, $0403
    inc b
    ld [$1308], sp
    inc bc
    inc h
    inc c
    db $10
    ld de, $2622
    ld c, b
    adc h
    ld de, $4039
    pop af
    inc b
    ld c, h
    nop
    add hl, de
    nop
    ld [bc], a
    and c
    dec d
    inc b
    nop
    ld b, [hl]
    adc b
    jr jr_006_5dcf

    ld h, e
    add h
    rst $00
    ld [$100e], sp
    ld c, [hl]
    sub b
    sbc b
    jr nz, jr_006_5dba

jr_006_5dba:
    ld b, b
    ldh a, [rP1]
    ret nz

    dec d
    ld b, $00
    add b
    dec d
    inc c
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    ld bc, $0815
    nop

jr_006_5dcf:
    ld b, $21
    inc c
    ld d, e
    jr z, jr_006_5dec

    ld b, b
    dec d
    ld [$c000], sp
    jr nz, jr_006_5e0c

    nop
    db $10
    adc b
    ret z

    inc h
    inc h
    db $10
    sub h
    ld b, d
    ld a, [bc]
    jr nz, jr_006_5dfa

    inc b
    ret nz

    add hl, de
    db $e4

jr_006_5dec:
    ld a, [bc]
    ld [hl-], a
    ld b, l
    sbc c
    ld [hl+], a
    nop
    ld bc, $0403
    inc b
    ld [$1209], sp
    ld [de], a

jr_006_5dfa:
    inc b
    inc l
    ld bc, $0211
    ld h, $08
    ld c, h
    ld de, $2299
    inc hl
    ld b, h
    ld c, e
    sub b
    sbc e
    jr nz, jr_006_5e3c

jr_006_5e0c:
    ld b, b
    ld bc, $0200
    and c
    call z, Call_000_1010
    jr nz, jr_006_5e7a

    adc b
    adc h
    db $10
    inc e
    jr nz, @-$42

    nop
    jr c, jr_006_5e5f

    nop
    nop
    nop
    ldh a, [$e0]
    nop
    ret nz

    nop
    add b
    dec d
    ld b, $00
    add b
    nop
    nop
    scf
    ld b, b
    ld [hl], a
    nop
    ld [hl], e
    nop
    ld hl, $0800
    ld [bc], a
    ld de, $124c
    adc c

jr_006_5e3c:
    jr nz, @+$18

    ld b, b
    jr nz, @+$06

    ld a, [bc]
    ld [bc], a
    inc b
    ld bc, $0002
    ld bc, $0615

jr_006_5e4a:
    nop
    sbc c
    ld [hl+], a
    ld hl, sp+$03
    ldh a, [rTAC]
    ldh [rTAC], a
    jr jr_006_5e57

    ld b, b

jr_006_5e56:
    dec b

jr_006_5e57:
    ld [$0030], sp
    dec de
    inc b
    ld l, c
    nop
    add b

jr_006_5e5f:
    inc b
    ld c, b
    ld [$1010], sp
    ld hl, $2201
    nop
    ld [bc], a
    nop
    nop
    inc c
    and d
    db $10
    and h
    jr @-$5c

    jr jr_006_5ed6

    jr nz, @-$23

    nop
    rst $30
    nop
    ld c, [hl]
    add c

jr_006_5e7a:
    ld a, $42
    sbc h
    inc b
    reti


    nop
    inc hl
    ld b, c
    sbc [hl]
    add b
    jr @+$03

    ld b, $02
    inc d
    inc b
    db $10
    dec d
    add hl, bc
    nop
    add b
    nop
    nop
    add b
    ld h, b
    nop
    jr nc, jr_006_5e96

jr_006_5e96:
    add b
    add b
    ld b, b
    add b
    dec d
    inc d
    nop
    ld bc, $0300
    nop
    rlca
    nop
    dec bc
    add hl, de
    inc b
    inc e
    ld [hl+], a
    inc e
    ld bc, $2308
    jr nc, @+$49

    ld h, b
    dec bc
    ld e, c
    inc b
    inc a
    ld [bc], a
    dec d
    rlca
    nop
    jr nz, jr_006_5f29

    inc b
    jr nz, jr_006_5e4a

    ld b, c
    sbc [hl]
    add d
    inc l
    ld h, h
    db $10
    pop af
    ld [$0471], sp
    jr nz, jr_006_5e56

    ld b, c
    sbc [hl]
    add d
    inc l
    ld h, l
    db $10
    di
    ld [$0615], sp
    nop
    ld bc, $0200

jr_006_5ed6:
    ld bc, $0304
    ld [$1003], sp
    dec c
    jr nz, jr_006_5efb

    ld bc, $4238
    ld sp, $610c
    db $10
    ld c, l
    jr nz, jr_006_5f05

    ld bc, $0c70
    inc bc
    nop
    ld bc, $4100
    nop
    ld h, c
    nop
    ld sp, $3d00
    nop
    rra
    inc b
    dec de

jr_006_5efb:
    inc bc
    inc c
    ld bc, $030e
    inc e
    inc b
    dec de
    nop
    ccf

jr_006_5f05:
    nop
    add hl, sp
    nop
    ld h, c
    dec d
    ld [$6700], sp
    ld h, a
    sbc b
    rst $38
    add sp, -$01
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    ld a, l
    add e
    rst $38
    add b
    rst $38
    add c

jr_006_5f1d:
    rst $38
    add a
    cp $7f
    ld a, b
    ccf
    ld [hl+], a
    rra
    inc e
    rlca
    inc b
    dec d

jr_006_5f29:
    ld b, $00
    add b
    add b
    ld b, b
    dec d
    rlca
    ret nz

    and b
    ldh [rNR41], a
    ldh [$a0], a
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    jr nz, jr_006_5f1d

    ld b, b
    ret nz

    ld b, b
    ret nz

    dec d
    inc b
    nop
    ld h, a
    ld h, a
    sbc b
    rst $38
    add sp, -$01
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    ld a, l
    add e
    rst $38
    add b
    rst $38
    add e
    rst $38
    rst $38
    cp $7f
    ld a, h
    ccf
    ld [hl+], a
    rra
    inc e
    rlca
    inc b
    ld b, $05
    ld c, $09
    inc e
    inc de
    jr jr_006_5f7f

    jr c, jr_006_5f91

    jr c, jr_006_5f93

    inc a
    inc hl
    inc a
    inc hl
    ld e, [hl]
    ld [hl], c
    ld e, a
    ld [hl], b
    adc a
    db $fc
    adc e
    ei

jr_006_5f78:
    sub b
    ldh a, [$a0]
    ldh [$80], a
    ret nz

    ld b, b

jr_006_5f7f:
    ld b, b
    inc a
    ld [bc], a
    jr c, jr_006_5f8a

    ld b, b
    dec e
    nop
    ld b, e
    inc e
    ld b, c

jr_006_5f8a:
    inc a
    ld [bc], a
    inc a
    ld [bc], a
    jr jr_006_5fb6

    nop

jr_006_5f91:
    dec e
    nop

jr_006_5f93:
    inc bc
    ld [$0405], sp
    ld [bc], a
    ld [bc], a
    dec d
    rlca
    nop
    pop af
    ld a, [bc]
    pop hl
    ld a, [de]
    nop
    ld [hl], l
    nop
    adc [hl]
    ld [hl], c
    inc b
    pop af
    ld a, [bc]
    pop af
    ld a, [bc]
    ld h, c
    sbc d
    nop
    ld [hl], l
    nop
    adc [hl]
    ld [hl], c
    inc b
    ld a, [$7001]
    adc d

jr_006_5fb6:
    nop
    ld [hl], b
    dec d
    inc b
    nop
    inc c
    inc bc
    ld [hl], b
    nop
    dec c
    ld [hl], b
    nop
    ld a, l
    ld b, b
    dec a
    jr nz, jr_006_5fe2

    ld e, b
    inc bc
    inc hl
    ld b, b
    inc e
    ld h, b
    ld b, e
    jr c, jr_006_6010

    scf
    jr nz, jr_006_5fea

    inc d
    inc bc
    ld b, $01
    inc bc
    nop
    nop
    nop
    jr nz, jr_006_5f78

    ld a, [hl-]
    ld bc, $0083
    ld a, b

jr_006_5fe2:
    add b
    inc bc
    ld hl, sp+$00
    rst $30
    nop
    rst $28
    nop

jr_006_5fea:
    rst $28
    add sp, $07
    rlca
    nop
    or b
    nop
    nop
    ld [hl], a
    nop
    ld [hl], a
    ld b, h
    inc sp
    ld [hl], a
    nop
    nop
    nop
    ld a, h
    db $fc
    add e
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop

jr_006_6004:
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ld [$07ff], sp
    db $fc
    inc bc
    cp $83

jr_006_6010:
    rst $38
    pop bc
    rst $38
    ld hl, $113f
    rra
    add hl, bc
    rrca
    ld b, $06
    dec d
    inc b
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_006_6004

    db $10
    ldh a, [rNR23]
    ld hl, sp+$14
    db $fc
    add d
    ld a, [hl]
    ld [c], a
    ld a, $e1
    rst $38
    ld de, $091f
    rrca
    dec b
    rlca

jr_006_6036:
    inc bc
    inc bc
    dec d
    inc b
    nop
    ld d, a
    jr nz, @-$32

    inc hl
    adc b
    ld h, a
    adc b
    ld h, a
    ret z

    daa
    ld d, a
    jr nz, jr_006_6073

    stop
    nop
    ld d, a
    jr nz, @-$32

    inc hl
    adc b
    ld h, a
    adc b
    ld h, a
    ret z

    daa
    ld [hl], a
    nop
    dec hl
    stop
    nop
    rla
    jr nz, @+$4e

    inc hl
    adc b
    ld h, a
    adc b
    ld h, a
    ld c, b
    daa
    rla
    jr nz, jr_006_607d

    inc b
    nop
    rla
    jr nz, jr_006_60b9

    inc hl
    adc b
    ld h, a
    adc b
    ld h, a
    ld c, b

jr_006_6073:
    daa
    scf
    dec d
    dec b
    nop
    scf
    nop
    ld h, c
    ld d, $40

jr_006_607d:
    scf
    nop
    ld [hl], a
    nop
    cp e
    nop
    cp b
    inc bc
    nop
    ld l, h
    inc bc
    add b
    ld l, a
    nop
    rst $30
    nop
    rst $30

jr_006_608e:
    nop
    ret nz

    dec de
    nop
    and b
    dec de
    nop
    cp e
    dec d
    stop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    stop
    jr nz, jr_006_60bd

    jr nz, jr_006_60bf

    ld b, b
    jr c, jr_006_60f2

    jr c, jr_006_60f4

    jr c, jr_006_6036

    ld a, b
    add b
    ld a, h

jr_006_60b9:
    nop
    db $fc
    nop
    db $fc

jr_006_60bd:
    add b
    ld a, [hl]

jr_006_60bf:
    ret nz

    ld a, $60
    ld e, $30
    adc a
    jr jr_006_608e

    inc c
    db $e3
    nop
    nop
    jr nz, jr_006_60cd

jr_006_60cd:
    stop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $1501
    ld b, $00
    dec d
    nop
    ld [de], a

jr_006_60e9:
    ld [de], a
    ld d, $00
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_006_60f2:
    ld [de], a
    inc b

jr_006_60f4:
    ld bc, $0c12
    nop
    add hl, de
    add hl, de
    rra

jr_006_60fb:
    ld d, $17
    dec de
    dec bc
    dec c
    rrca
    rrca
    sbc a
    sub b
    rst $18
    ld e, h
    ld h, e
    cp a
    jr nc, jr_006_60e9

    jr jr_006_60fb

    inc bc
    inc bc
    ld h, $25
    ld e, l
    ld a, d
    ld e, c
    db $76
    ld [hl], b
    ld l, a
    ldh [$9f], a
    ld hl, sp+$47
    ccf
    ld hl, sp-$79
    ld a, a
    add c
    ld a, [hl]
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    nop
    add [hl]
    add [hl]
    ld e, d
    sbc $24
    db $fc
    sub h
    ld a, h
    adc b
    ld a, b
    db $ed
    dec e
    ld a, [$f477]
    rst $08
    push hl
    ld e, $63
    sbc a
    ld h, b

jr_006_6143:
    sbc a
    ld a, a
    add e
    rst $38
    inc a
    cp $c1
    ld a, h
    add e
    nop
    nop
    ld [$1000], sp
    ld [$1020], sp
    jr nz, jr_006_6166

    ld b, b
    jr nc, jr_006_6199

    jr nz, jr_006_615b

jr_006_615b:
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rLCDC]
    cp b
    jr nz, jr_006_6143

    db $10
    ld l, a

jr_006_6166:
    inc c
    ld [hl], e
    nop
    ccf
    nop
    ld e, $12
    ld a, [bc]
    nop
    ld [$0800], sp
    stop
    jr c, jr_006_6186

    ld h, b
    nop
    jr nc, jr_006_617a

jr_006_617a:
    ret nz

    ld b, b
    and b
    add b
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    ld b, b
    nop

jr_006_6186:
    ld bc, $0700
    inc b
    ld a, [bc]
    ld [$1014], sp
    inc c
    ld de, $002a
    dec sp
    nop
    dec sp
    nop
    add hl, sp
    db $10
    dec l

jr_006_6199:
    db $10
    inc l
    ld [$0417], sp
    dec de
    ld [bc], a
    dec c
    nop
    rlca
    nop
    nop
    nop
    ret nz

    ld [de], a
    ld a, [bc]
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ld h, b
    nop
    nop
    inc bc
    inc bc
    dec b
    rlca
    ld [$110f], sp
    ld e, $26
    add hl, sp
    ld c, h
    ld [hl], e
    ld b, b
    ld a, a
    add c
    rst $38
    adc a
    cp $f6
    push af
    ld b, $05
    rlca
    dec b
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    adc b
    rst $38
    add sp, $5f
    ldh a, [$3f]
    ldh a, [$8f]
    rst $38
    ldh a, [$3f]
    rst $38
    ld e, a
    rst $38
    add $bd
    db $eb
    sbc $51
    rst $38
    add hl, sp
    rst $30
    ld l, $fb
    and $ff
    dec h
    cp $94
    ld a, a
    rst $28
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld sp, hl
    cp $07
    ld hl, sp-$01
    ld hl, $47fe
    ld hl, sp-$4a
    ret


    ld [hl], b
    adc a
    pop hl
    rra
    add $3f
    sbc b
    ld a, a
    ld a, h
    rst $38
    rst $08
    rst $08
    add hl, de
    rst $20
    add hl, de
    rst $20
    ld a, h
    add e
    rst $38
    ccf
    ret nz

    rst $38

jr_006_6228:
    ld e, $e1
    ld a, b
    add a
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    db $fc
    jr jr_006_6228

    or b
    ret nc

    ldh a, [$f0]
    sbc b
    add sp, -$34
    db $f4
    ld h, $fa
    ld d, $fa
    ld a, [bc]
    cp $04
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$14
    db $fc
    ld h, d
    cp $d2
    sbc $0c
    inc c
    ld [de], a
    inc c
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ld [de], a
    ld b, $80
    ret c

    ret c

    inc h
    db $fc
    ld c, h
    db $f4
    sbc h
    db $e4
    nop
    nop
    nop
    add b
    ld [de], a
    ld [$1000], sp
    nop
    ld [$0400], sp
    ld bc, $0400
    nop
    add d
    inc e
    add b
    inc a
    add c
    inc a
    add c
    inc e
    pop bc
    nop
    inc hl
    cp $82
    call c, Call_006_64fc
    db $fc
    ret z

    ld hl, sp-$50
    ldh a, [$e8]
    ld hl, sp+$48
    ld hl, sp+$24
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    adc h
    db $f4
    db $fc
    db $fc
    ld hl, sp+$00
    nop
    nop
    add $12
    rla
    nop
    inc b
    inc b
    ld a, [bc]
    ld c, $13
    rra
    ld d, $1f
    jr nz, jr_006_62f6

    ld h, c
    ld a, a
    inc e
    nop
    rra
    jr @+$09

    rlca
    inc e
    rra
    jr nc, jr_006_6302

    ld de, $1b0e
    rla
    dec de
    rla
    ld sp, $262e
    ccf
    ld a, [hl]
    ld a, a
    call nz, Call_000_0dff
    rst $38
    ld e, $ff
    add sp, -$01
    pop af
    sbc a
    ld h, c
    ccf
    ld d, l
    ld a, a
    add b
    rst $38
    cp [hl]
    rst $38
    ld b, a
    ld b, a
    inc bc
    inc bc
    rrca
    rrca
    scf
    ccf
    ld a, b
    ld e, a
    cpl
    ccf
    ld [hl], a
    ld e, h
    rra
    rra
    dec b
    ld b, $0e
    rrca
    dec e

jr_006_62f6:
    rla
    dec a
    daa
    di
    rst $28
    ldh a, [rIE]

Jump_006_62fd:
    db $e4
    rst $38

Jump_006_62ff:
    dec e
    rst $38
    ld sp, hl

jr_006_6302:
    rst $38
    ld a, [c]
    rst $38
    db $e4
    rst $38
    call c, $3eff
    rst $30
    ld hl, sp-$01
    call c, $ff37
    rst $38
    jp nc, $a93f

    ld a, a
    db $fc
    rst $30
    db $fd
    daa
    ld [de], a
    inc c
    nop
    ld [de], a
    ld [$0001], sp
    nop
    rra
    rra
    ld a, l
    ld h, e
    ldh [$9f], a
    add b
    rst $38
    ld h, b
    ld a, a
    ld [de], a
    inc c
    nop
    add c
    add c
    jp Jump_006_6743


    and h
    ld a, h
    sbc e
    adc b

jr_006_6337:
    rst $38
    sub e
    db $fc
    rst $38
    ld h, e
    rst $38
    sbc a
    rst $38
    db $e3
    ld a, a
    pop bc
    nop
    nop
    inc bc
    inc bc
    dec b
    rlca
    push bc
    rst $00
    rst $28
    xor a
    cp a
    ret nc

    jr c, jr_006_6337

    cp $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp $e1
    rst $38
    cp $ff
    add a

jr_006_6360:
    rst $38
    inc bc
    rlca
    rlca
    ccf
    jr c, jr_006_6360

    add $c1
    ld a, $e3
    db $fc
    sbc a
    ld a, [hl]
    ld bc, $00ff
    rst $38
    pop bc
    cp $3f
    ld hl, sp+$0f
    rst $30
    rlca
    ld hl, sp+$01
    cp $83
    ld a, h
    rst $30
    adc b
    rst $38
    ldh a, [$71]
    ld a, a
    ld h, c
    ccf
    ld b, c
    ld a, a
    sub h
    rst $38
    add b
    rst $38
    ld h, c
    ld a, a
    ld e, $1f
    ldh a, [$bf]
    ld c, a
    ld a, a
    push de
    cp [hl]
    ld a, e
    ld a, h
    rrca
    rrca
    ccf
    nop
    rlca
    ld [de], a
    dec b
    nop
    di
    sbc a
    ldh a, [$ef]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    jr @+$01

    cp $f7
    cp b
    ld a, a
    call c, $ff37
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    inc bc
    nop
    ld a, h
    nop
    inc e
    rra
    inc bc
    inc bc
    inc c
    rrca
    ld de, $fe1f
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    rra
    rra
    inc bc
    ld [bc], a
    ld b, $05
    inc c
    dec bc
    inc c
    dec bc
    rrca
    rrca
    dec c
    dec bc
    dec c
    dec bc
    ld b, $06
    ld a, a
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    cp a
    di
    rra
    rst $38
    ld a, h
    rst $38
    ret z

    rst $38
    sub c
    ld a, a
    cp d
    rst $28
    ld h, [hl]
    rst $18
    ld h, l
    sbc $fd
    cp $b4
    xor a
    scf
    cpl
    inc [hl]
    inc l
    jr jr_006_6418

    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $87fe
    ld hl, sp-$21
    ld h, c
    cp $c7
    ld hl, sp+$36
    ret


    ld [hl], b
    adc a
    ldh [$1f], a
    jp $0f3f


    rst $38

jr_006_6418:
    ld a, a
    rst $38
    adc d
    ei
    ld e, d
    ld a, e
    ld hl, $ff21
    db $fc
    rst $38
    rst $38
    add c
    rst $38
    inc e
    db $e3
    ld [hl], b
    adc a
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    jr @+$01

    db $f4
    rst $38
    add sp, -$01
    ret nc

    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add e
    rst $38
    db $fc
    db $fc
    db $fc
    ld c, h
    ld a, [$e23e]
    sbc [hl]
    ld [hl], c
    rst $28
    add hl, sp
    rst $30
    ld e, $fa
    ld c, $fe
    dec bc
    db $fd
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld c, $fe
    inc d
    db $fc
    inc d
    db $fc
    ld h, d
    cp $92
    sbc [hl]
    inc c
    inc c
    nop
    nop
    sbc b
    sbc b
    ld l, b
    ld hl, sp-$70
    ldh a, [$50]
    ldh a, [$a0]
    ld h, b
    rst $10
    rst $30
    ld sp, hl
    ccf
    di
    dec e
    and $3a
    sbc $32
    call z, $d2bc
    ld a, [hl]
    and d
    ld a, [hl]
    add $fa
    adc h
    db $f4
    ld [de], a
    nop
    ld a, [bc]
    ld a, [bc]
    rrca
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    ld c, $00
    ccf
    ld h, b
    sbc a
    add b

jr_006_6496:
    ld a, a
    ld a, [bc]
    rrca
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld a, l
    nop
    cp l
    nop
    db $dd
    nop
    ret


    ld a, [bc]
    dec b
    nop
    rlca
    nop
    rra
    rlca
    jr c, jr_006_64d0

    ld h, e
    jr nz, jr_006_6496

    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    dec b
    nop
    ld hl, sp+$38
    add $06

jr_006_64d0:
    ld sp, hl
    ld bc, $01fe
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
    nop
    rst $38
    ld a, [bc]
    dec bc
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    adc $00
    rst $18
    nop
    rst $18
    nop
    db $db
    nop

Call_006_64fc:
    sub e
    nop
    adc c
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    ld e, $00
    cp [hl]
    nop
    db $fc
    nop
    ld [hl], b
    ld a, [bc]
    dec b
    nop
    ld bc, $0700
    nop
    nop
    nop
    rst $28
    nop
    db $e3
    nop
    push bc
    nop
    add [hl]
    nop
    adc [hl]
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    db $10
    ld c, $10
    ld c, $20
    inc e

jr_006_6535:
    ld b, b
    inc a
    nop
    ld hl, sp+$00
    ldh [rP1], a

jr_006_653c:
    nop
    nop
    db $e3
    nop
    pop hl
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    pop af
    nop
    ld a, c
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    add hl, bc
    nop
    ld e, $00
    ld a, [hl]
    nop
    db $fc
    ld bc, $0000
    ld bc, $070a
    nop
    ld bc, $0300
    ld a, [bc]
    dec b
    nop
    ld bc, $0a01
    inc c
    nop
    ldh [$80], a
    ld [hl], e
    ld b, b
    xor a
    nop
    ld e, $00
    ld a, [hl]
    db $10
    db $ec
    db $10
    db $ec
    db $10
    ld l, [hl]
    ld [$48b6], sp
    sub a
    inc b
    dec de
    ld [bc], a
    dec c
    ld bc, $0006
    inc bc
    nop
    ld bc, $050a
    nop
    add b
    ld a, [bc]
    ld [$0200], sp
    nop
    inc b
    nop
    inc b
    ld bc, $0400
    nop
    add d
    inc e
    add b
    inc a
    add c
    inc a
    add c
    inc e
    pop bc
    nop
    inc hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_006_6535

    ld c, b
    ld [bc], a
    ld c, b
    inc bc
    jr nc, jr_006_653c

    nop
    call z, $3b00
    nop
    rst $00
    nop
    rst $30
    nop
    rst $30
    nop
    jp Jump_000_0300


    nop
    ld bc, $0000
    nop
    rst $38
    nop
    sbc a
    ld h, b
    ld c, $90
    inc b
    sub b
    dec b
    ld h, b
    dec c
    nop
    sub l
    nop
    ld h, d
    nop
    sbc a
    nop
    rst $18
    nop
    rst $08
    nop
    rst $28
    nop
    rst $20
    nop
    pop hl
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    inc a
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    cp $00
    cp $00
    sbc $00
    sbc $00
    rst $18
    nop
    ld c, a
    nop
    add a
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    ld a, h
    ld a, [bc]
    rra
    nop
    rra
    nop
    ld a, a
    ld a, [bc]
    jr nz, jr_006_660e

jr_006_660e:
    ld [$080f], sp
    rrca
    inc sp
    ccf
    scf
    rra
    daa
    dec a
    daa
    ccf
    inc hl
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    adc a
    cp $bf
    ld hl, sp-$31
    rst $08
    ld a, [bc]
    ld b, $00
    ld h, l
    rst $20
    add hl, hl
    rst $28
    cp e
    cp $d3
    ld a, [hl]
    rst $10
    ld a, h
    rst $10
    db $fc
    and c
    cp $20
    rst $38
    ldh a, [$af]
    ld hl, sp-$79
    rst $38
    dec h
    rst $38
    push af
    sbc a
    sbc l
    inc bc
    inc bc
    ld a, [bc]
    inc b
    nop
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc

jr_006_6651:
    inc b
    db $fc
    inc c
    ld a, [$ee0e]
    ld e, $00
    cp $02
    cp $7c
    db $fc
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    add b
    add b
    ld a, [bc]
    inc e
    nop
    ldh [$e0], a
    jr nz, @-$1e

    jr nz, @-$1e

    jr nz, jr_006_6651

    ld a, [bc]
    inc de
    nop
    ld bc, $0100
    nop
    ld bc, $3100
    nop
    ld a, c
    nop
    cp l
    nop
    db $dd
    ld a, [bc]
    add hl, bc
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    db $ec
    nop
    sbc $00
    cp [hl]
    ld a, [bc]
    dec b
    nop
    ld bc, $0100
    nop
    inc bc
    ld [bc], a
    ld bc, $0300
    ld [bc], a
    ld bc, $0102
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    ld c, $00
    ld a, $00
    ld hl, sp+$30
    rst $08
    ld b, b
    cp a
    add b
    ld [hl], c
    nop
    push hl
    nop
    adc $00
    adc $00
    sbc [hl]
    nop
    sbc [hl]
    nop
    cp [hl]
    nop
    cp h
    nop
    reti


    nop
    db $d3
    nop
    jp $e700


    nop
    ld h, [hl]
    nop
    inc [hl]
    ld h, b
    ldh [rNR41], a
    ldh [$a0], a
    ldh [$d1], a
    ld [hl], c

jr_006_66e1:
    sub $77
    reti


    rst $38

jr_006_66e5:
    and e
    cp $21
    cp $f0
    xor a
    ld hl, sp-$79
    rst $38
    dec h
    rst $38
    push af
    sbc a
    sbc l
    inc bc
    inc bc
    ld a, [bc]
    inc b
    nop
    ld b, $06
    add hl, de
    rra
    ld h, a
    ld a, a
    sbc a
    ld sp, hl
    ld a, a
    pop hl
    cp $82
    cp $02
    db $fc
    inc b
    ld [bc], a
    cp $7c
    db $fc
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    add b
    add b
    ld a, [bc]
    inc b
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    ld bc, $0100
    ld a, [bc]
    ld d, $00
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    inc b
    ret nz

    add h
    ld e, b
    ld e, b
    ld a, [bc]
    ld [de], a
    nop
    db $eb
    nop
    pop hl
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    pop af
    nop
    ld sp, hl
    nop
    ld sp, hl

Jump_006_6743:
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ccf
    nop
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    add b
    ld a, [bc]
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_006_66e1

    ld c, b
    ld [bc], a
    ld c, b
    inc bc
    jr nc, jr_006_66e5

    nop
    rlc b
    dec sp
    nop
    rst $00
    nop
    rst $30
    nop
    rst $20
    nop
    add e
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    sbc [hl]
    ld h, b
    ld c, $90
    dec b
    sub b
    dec b
    ld h, b
    ld [$0700], sp
    nop
    xor a
    nop
    rst $10
    nop
    rst $10
    nop
    pop bc
    nop
    call c, $fc00
    nop
    db $fc
    nop
    ld hl, sp+$00
    pop af
    nop
    ld a, [hl]
    nop
    add $00
    ld [hl-], a
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld a, [hl]
    nop
    sbc [hl]
    nop
    xor $00
    db $f4
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld a, [hl]
    nop
    ld e, $00
    ld a, $00
    ld a, h
    nop
    ld hl, sp+$0a
    nop
    ld [de], a
    nop
    dec de
    ld [$0801], sp
    ld bc, $0100
    nop
    ld bc, $1201
    dec d
    nop
    ld [bc], a
    add c
    pop bc
    jr nc, @+$0a

    ld d, $02
    ld hl, $1800
    inc b
    ld [bc], a
    ld bc, $1012
    nop
    inc bc
    nop
    ld bc, $8000
    add b
    ld b, b
    ld b, b
    ld hl, $9120
    add c
    ld a, d
    add hl, sp
    ld [bc], a
    ld b, $d8
    ld b, d
    inc l
    ld bc, $0006
    add hl, bc
    nop
    sub b
    ld b, $49
    ld [$0013], sp
    dec [hl]
    nop
    jr nz, jr_006_67f6

jr_006_67f6:
    adc a
    ld [de], a
    ld [de], a
    nop
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    add [hl]
    ld [hl], c
    ld h, e
    jr jr_006_6825

    nop
    ld bc, $0006
    dec b
    ld [hl-], a
    inc b
    ld b, e
    inc [hl]
    sbc c
    ld h, d
    jr nz, @-$3b

    ld b, b
    sbc h
    add b
    ld a, $00
    ld a, h
    nop
    ld hl, sp+$00
    ldh a, [rP1]

jr_006_6825:
    ldh [rP1], a
    ret nz

    ld [$00c0], sp
    rst $20
    nop
    db $fc
    inc bc
    ld h, b
    inc e
    add e
    ld h, b
    sbc a
    nop
    ld a, a
    add c
    ld h, [hl]
    sbc b
    ld b, e
    dec c
    ldh [rDIV], a
    ld [hl], c
    nop
    dec sp
    nop
    dec d

jr_006_6842:
    nop
    dec b
    jr jr_006_6849

    jr nc, jr_006_6848

jr_006_6848:
    ld b, b

jr_006_6849:
    inc a
    ld b, b
    jr c, jr_006_688d

    jr c, jr_006_686f

    jr jr_006_6871

    db $10
    jr nz, jr_006_6865

    add hl, bc
    ld b, $06
    ld [de], a
    ld de, $2000
    db $10
    db $10
    ld [$1c12], sp
    nop
    jr nz, jr_006_68a3

    ld b, b
    add b

jr_006_6865:
    add c
    ld b, $80
    inc e
    inc b
    dec sp
    nop
    ld h, c
    nop
    ret nz

jr_006_686f:
    nop
    ret nz

jr_006_6871:
    add b
    nop
    ld b, b
    adc b
    nop
    sbc b
    nop
    jr nc, jr_006_687a

jr_006_687a:
    and b
    db $10
    ret nz

    nop
    ld h, [hl]
    nop
    xor h
    nop
    jr jr_006_6884

jr_006_6884:
    ldh a, [rP1]
    jr nc, jr_006_6888

jr_006_6888:
    jr nz, jr_006_688a

jr_006_688a:
    ld h, b
    ld b, b
    add b

jr_006_688d:
    ld [de], a
    inc d
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld c, $07
    jr c, jr_006_68d9

    nop
    nop

jr_006_68a3:
    nop
    jr nz, jr_006_68be

    jr @+$06

    inc b
    ld [bc], a
    ld [de], a
    ld b, $00
    jr z, jr_006_6842

    inc [hl]
    adc c
    inc [hl]
    adc c
    sbc b
    ld b, e
    nop
    ldh [$83], a
    ld [hl], b
    add a
    ld h, b
    nop
    nop
    ld b, c

jr_006_68be:
    jr nz, jr_006_6900

    jr nz, jr_006_68c2

jr_006_68c2:
    ld b, b
    add b
    ld b, b
    nop
    add b
    inc bc
    add b
    nop
    rra
    nop
    nop
    ld hl, $02d8
    ld hl, sp+$23
    ret c

    ld b, $f0
    dec b
    ldh [$0b], a
    nop

jr_006_68d9:
    and c
    db $10
    db $10
    inc c
    adc h
    ld b, d
    ld b, d
    ld sp, $1c20
    nop
    ld [bc], a
    jr nc, jr_006_68f3

    ret nz

    jr c, jr_006_68ea

jr_006_68ea:
    ret nz

    ld [de], a
    inc d
    nop
    inc c
    nop
    nop
    ld [bc], a
    nop

jr_006_68f3:
    ld bc, $0830
    nop
    ld b, $00
    ld bc, $0812
    nop
    jr jr_006_68ff

jr_006_68ff:
    nop

jr_006_6900:
    inc c
    nop
    ld b, $00
    inc bc
    ret nz

    ld bc, $6000
    nop
    ld sp, $1a01
    nop
    adc e
    nop
    ld b, b
    nop
    ld c, a
    inc bc
    inc e
    nop
    ld b, a
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], c
    ld d, c
    dec sp
    ld a, [hl+]
    ccf
    inc h
    rra
    db $10
    rra
    db $10
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_006_69ab

    ld a, h
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $1201
    inc b
    nop
    ld bc, $0100
    ld bc, $0000
    ld bc, $0301
    inc bc
    nop
    ld bc, $0001
    ld bc, $0200
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0401
    inc b
    rrca
    dec bc
    rra
    inc d
    ccf
    jr z, jr_006_69d4

    ld h, b
    rst $08
    nop
    ld sp, hl
    add [hl]
    ld a, a
    ld a, b
    rst $08
    db $fc
    ld d, a
    rst $38
    xor c
    ld [hl], a
    db $dd
    rst $28
    call c, $88ef
    ld [hl], a
    jr nz, @+$01

    jr c, @+$01

    db $fc
    rst $00
    db $fd
    rrca
    rst $38
    ld e, $ff
    ld [$e1ff], sp
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ldh [$e0], a
    ldh a, [$f0]
    pop hl
    pop hl
    or d
    di
    inc h
    rst $20
    ld a, a
    ei
    rrca
    db $fc
    add a
    db $fc
    rst $00
    ld a, h
    add a
    db $fc
    rlca
    db $fc
    ld [de], a
    ld c, $00
    ret nz

    ret nz

    jr nz, @-$1e

    ld c, h
    call z, $9e92
    ld [c], a
    cp $e4
    inc a
    ret z

    ld a, b
    sub b
    ldh a, [$e0]
    ld h, b

jr_006_69ab:
    ld [$01d3], sp
    inc [hl]
    nop
    jr nz, jr_006_69b2

jr_006_69b2:
    ld e, $1c
    ld h, e
    ld [hl+], a
    push bc
    nop
    ld e, e
    nop
    ld bc, $fc00
    ld [hl], b
    adc a
    ld c, $f1
    nop
    inc e
    nop
    ld l, e
    nop
    adc h
    add b
    ld h, a
    ret nz

    ld a, [hl-]
    nop
    ret c

    nop
    ldh [rNR10], a
    ret nz

    nop
    ld b, [hl]
    nop

jr_006_69d4:
    sbc h
    nop
    ld [hl], b
    nop
    add b
    inc d
    ldh [$0a], a
    ldh [rTMA], a
    nop
    ld bc, $0130
    ldh [rP1], a
    add b
    ld h, b
    nop
    ld b, b
    nop
    ret nc

    nop
    or b
    nop
    ld h, b
    nop
    jr jr_006_69f1

jr_006_69f1:
    ld [$0000], sp
    nop
    add b
    nop
    ld b, b
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nz, jr_006_6a11

    dec c
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld [bc], a
    nop
    inc b
    inc bc

jr_006_6a11:
    ld [$0806], sp
    inc b
    nop
    nop
    ld [$0800], sp
    inc b
    ld [$0404], sp
    ld [bc], a
    nop
    nop
    ld e, a
    ld [hl], c
    ld a, a
    ld h, c
    ld a, a
    ld b, c
    rst $38
    sub h
    rst $38
    add b
    rst $38
    jp $3c3f


    rra
    db $10
    rrca
    rrca
    ld [de], a
    ld a, [bc]

jr_006_6a35:
    nop
    ld [de], a
    inc b
    ld bc, $f39f
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
    rst $38
    ld [bc], a
    rst $38
    jp nz, Jump_000_34ff

    rst $38
    rrca
    rst $38
    ld sp, hl
    add a
    db $fc
    ld b, e
    ld a, [hl]
    dec a
    ccf
    ld h, c
    ld a, a
    cp a
    rst $18
    dec a
    rst $28
    rst $30
    rst $30
    rst $00
    db $fd
    rst $28
    jr c, @-$2f

    ld a, e
    db $f4
    db $f4
    ld hl, sp+$08
    db $fc
    inc b
    cp $32
    cp $c2
    ld a, a
    rst $00
    rst $38
    db $fc
    rst $38
    db $10
    ld hl, sp+$4f
    rst $38
    add a
    ld a, [hl]
    jp nz, $e23e

    db $fc
    db $fc
    ret nz

    ret nz

    add b
    add b
    ld [de], a
    ld [$0700], sp
    rlca
    ccf
    add hl, sp
    ld sp, hl
    rst $00
    and $1e
    sbc b
    ld a, b
    ld h, b
    ldh [$80], a
    add b
    ld [de], a
    ld b, $00

jr_006_6a91:
    ld bc, $0103
    inc bc
    ld bc, $0003
    ld bc, $0100
    nop
    ld bc, $1412
    nop
    jr z, jr_006_6a35

    inc [hl]
    adc c
    inc [hl]
    adc c
    sbc b
    ld b, e
    nop
    ldh [$83], a
    ld [hl], b
    add a
    ld h, b
    nop
    nop
    ld b, c
    jr nz, @+$42

    jr nz, jr_006_6ab5

jr_006_6ab5:
    ld b, b
    add b
    ld b, b
    nop
    add b
    ld bc, $0280
    ld bc, $0708
    ld hl, $02d8
    ld hl, sp+$23
    ret c

    ld b, $f0
    dec b
    ldh [$0b], a
    nop
    add c
    jr nc, jr_006_6aef

    jr jr_006_6ae1

    adc h
    adc b
    ld b, h
    ld b, b
    jr nz, jr_006_6ad7

jr_006_6ad7:
    ld b, h
    add h
    ld c, b
    nop
    call z, $9800
    nop
    jr nc, jr_006_6a91

jr_006_6ae1:
    nop
    ld h, b
    nop
    jr jr_006_6ae6

jr_006_6ae6:
    ld [$0000], sp
    nop
    add b
    nop
    ld b, b
    nop
    ret nz

jr_006_6aef:
    nop
    ld h, b
    nop
    jr nz, @+$14

    dec c
    nop
    ld [de], a
    nop
    ld [de], a
    inc b
    ld [$1008], sp
    ld [$0030], sp
    nop
    db $10

jr_006_6b02:
    jr z, @+$12

    inc l
    ld [$0a14], sp
    ld de, $0106
    inc d
    dec bc
    inc d
    dec bc
    inc d
    dec bc
    db $10
    ld [$0106], sp
    inc d
    adc e
    inc d
    adc e
    add [hl]
    ld [hl], c
    ld h, e
    jr jr_006_6b36

    nop
    ld bc, $0006
    dec b
    ld [bc], a
    inc b
    inc bc
    inc b
    add hl, bc
    ld [bc], a
    nop
    dec bc
    db $10
    inc c
    inc h
    add hl, de
    ld [$5033], sp
    daa
    jr nz, jr_006_6b83

    ld b, b

jr_006_6b36:
    ld e, $00
    inc a
    ld [$00c0], sp
    rst $20
    nop
    db $fc
    inc bc
    ld h, b
    inc e
    add e
    ld h, b
    sbc a
    nop
    ld a, a
    add c
    ld h, [hl]
    sbc b
    ld b, e
    dec c
    ldh [rDIV], a
    ld [hl], c
    nop
    dec sp
    nop
    dec d
    nop
    dec b
    jr jr_006_6b5a

    jr nc, @+$14

    rlca

jr_006_6b5a:
    nop
    ld [bc], a
    nop
    ld bc, $0100
    ld [de], a

jr_006_6b61:
    dec b
    nop
    ld [$0400], sp
    nop
    ld [bc], a
    nop
    ld bc, $1512
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_006_6b77

jr_006_6b77:
    db $10
    jr nz, jr_006_6b02

    db $10
    ld b, h
    ld [$2400], sp
    nop
    db $10
    inc bc
    nop

jr_006_6b83:
    ld d, $01
    dec d
    ld [bc], a
    rla
    nop
    inc d
    ld [de], a
    inc b
    nop
    dec d
    nop
    ld h, $00
    ld l, $00
    jr jr_006_6b96

    ld [bc], a

jr_006_6b96:
    nop
    nop
    inc c
    inc bc
    db $10
    ld c, $00
    ld a, b
    nop
    nop
    nop
    ld c, $86
    add hl, de
    add e
    inc e
    ld bc, $005e
    xor a
    ld bc, $006e
    add e
    nop
    jr z, @+$43

    inc l
    add c
    ld l, h
    ld [hl+], a
    pop bc
    ld c, d
    add c
    nop
    nop
    nop
    rlca
    ld b, $09
    jr jr_006_6c20

    ld bc, $0102
    db $76
    jr nz, jr_006_6b61

    db $10
    xor e
    db $10
    xor l
    nop
    cp b
    nop
    ld [hl], $00
    adc a
    nop
    xor [hl]

jr_006_6bd2:
    ld bc, $17a8
    add b
    ld d, $c0
    nop
    ld b, b
    nop
    ld b, b
    ld [de], a
    inc b
    nop
    inc c
    or d
    ld [$80d5], sp
    ld e, e
    nop
    add [hl]
    ld bc, $034c
    add sp, $47
    or b
    ld [hl+], a
    ld e, b
    db $10
    ld l, b
    ld [$8036], sp
    ccf
    nop
    add hl, de
    nop
    ld d, $00
    rlca
    ld b, $01
    ld bc, $3000
    add b
    ld h, b
    nop
    jr nz, jr_006_6c05

jr_006_6c05:
    ret nz

    nop
    ret nz

    nop
    add b
    ld [de], a
    stop
    add b
    nop
    ldh [$80], a
    ld a, a
    nop
    ld sp, $0804
    ld [bc], a
    inc e
    nop
    ld e, $00
    stop
    rrca
    ld b, $19

jr_006_6c20:
    nop
    rra
    nop
    stop
    rrca
    ld b, $19
    ld bc, $011e
    ld h, $00
    add hl, sp
    jr nc, jr_006_6c7c

    jr jr_006_6c98

    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    nop
    nop
    jr nz, jr_006_6c7e

    jr nz, jr_006_6c80

    db $10
    and b
    db $10
    and b
    db $10
    jr nz, jr_006_6c47

jr_006_6c47:
    add b
    db $10
    and b
    db $10
    jr nz, @+$12

    ld b, b
    db $10
    ld b, b

jr_006_6c50:
    jr nc, jr_006_6bd2

    ld [de], a
    ld b, $00
    ld bc, $0006
    rra
    ld [de], a
    inc c
    nop
    ld [$0404], sp
    inc bc
    inc bc
    ld [de], a
    ld a, [bc]
    nop
    ldh a, [$e0]
    inc e
    jr jr_006_6c50

    ld b, $f9
    ld bc, $001e
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld bc, $fa01
    ld bc, $f0fa

jr_006_6c7c:
    dec c
    ld [de], a

jr_006_6c7e:
    dec c
    nop

jr_006_6c80:
    add b
    nop
    ret nz

    add b
    ld b, b
    ld b, b
    and b
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    or b
    add h
    ld b, b
    add d
    ld e, b
    ld [$04b4], sp
    add hl, sp
    ld [de], a
    ld [hl], $00

jr_006_6c98:
    inc b
    inc b
    rrca
    dec bc
    rra
    inc d
    ccf
    jr z, jr_006_6d20

    ld h, b
    ld [de], a
    inc d
    nop
    jr c, jr_006_6cdf

    db $fc
    call nz, Call_000_0dfd
    rst $38
    ld e, $ff
    ld [$e1ff], sp
    ld [de], a
    jr jr_006_6cb4

jr_006_6cb4:
    add b
    add b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    ld e, a
    ld [hl], c
    ld a, a
    ld h, c
    ld a, a
    ld b, c
    rst $38
    sub h
    rst $38
    add b
    rst $38
    jp $3c3f


    rra
    db $10
    rrca
    rrca
    ld [de], a
    ld a, [bc]
    nop
    ld [de], a
    inc b
    ld bc, $0512
    nop
    rlca
    ld [de], a
    ld [de], a
    nop
    ld [$0704], sp
    nop

jr_006_6cdf:
    nop
    inc bc
    ld [de], a
    dec b
    nop
    db $fc
    inc c
    di
    ld [bc], a
    dec a
    ld bc, $000e
    inc bc
    nop
    ld bc, $0100
    ld [de], a
    rlca
    nop
    ld bc, $0201
    ld bc, $f0fa
    dec c
    nop
    cp $12
    rlca
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @+$42

    and b
    ld b, b
    or b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    and b
    add h
    ld b, b
    add d
    ld e, b
    ld [$04b4], sp
    add hl, sp
    ld [de], a
    jr jr_006_6d1c

jr_006_6d1c:
    ld a, b
    nop
    add a
    ld [de], a

jr_006_6d20:
    dec c
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    dec e
    inc e
    inc hl
    ccf
    jr nz, jr_006_6d6f

    jr jr_006_6d51

    inc b
    rlca
    inc bc
    inc bc
    ld [de], a
    inc b

jr_006_6d38:
    ld bc, $001f
    ld a, a
    ld [$00ff], sp
    rst $38
    nop
    ld hl, sp+$07
    rst $30
    rrca
    or $4d
    or a
    db $db
    or a
    db $db
    ld [c], a
    dec a
    pop hl
    rst $18
    jr c, jr_006_6d38

jr_006_6d51:
    rra
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    add b
    rst $38
    rra
    nop
    ld h, b
    nop
    add b
    ld [de], a
    ld h, $00
    inc bc
    ld bc, $0306
    inc c
    ld b, $19
    inc c
    inc de
    ld [$1037], sp
    inc l
    nop

jr_006_6d6f:
    ld a, e
    nop
    ld [hl], b
    nop
    ld l, h
    nop
    ld b, b
    ld [de], a
    rlca
    nop
    ccf
    rra
    ldh [rSVBK], a
    adc a
    ret nz

    inc a
    add b
    ld a, e
    inc bc
    db $f4
    inc bc
    call nz, Call_000_0300
    nop
    inc e
    inc c
    di
    nop
    rst $38
    ld [de], a
    inc b
    nop
    inc bc
    nop
    ld [$1300], sp
    nop
    jr nz, jr_006_6da4

    ld [$10d3], sp
    call $cd00
    nop
    ld d, b
    nop
    or b
    nop

jr_006_6da4:
    or b
    ld b, b
    jr nc, @-$7e

    ld h, b
    nop
    ret nz

    ld [de], a
    ld b, $00
    ret c

    nop
    ld b, $18
    inc bc
    call nz, $ba01
    nop
    cp l
    ld [$1074], sp
    ld l, e
    jr nz, jr_006_6dd5

    ld bc, $020e
    dec c
    inc b
    ld a, [bc]
    nop
    add hl, bc
    nop
    rlca
    inc bc
    inc c
    nop
    inc hl
    jr nz, @+$5b

    ld [de], a
    ld b, $00
    add b
    nop
    nop
    nop

jr_006_6dd5:
    ld b, b
    add b
    jr nz, @+$42

    jr nz, jr_006_6e1b

    db $10
    and b
    db $10
    and b
    db $10
    jr nz, jr_006_6de2

jr_006_6de2:
    add b
    ld [$08d0], sp
    ret nc

    adc b
    jr nc, @+$12

    and b
    ld [de], a
    nop
    dec d
    dec d
    ld d, $00
    inc b
    inc b
    dec bc
    rrca
    ld [de], a
    rra
    inc d
    rra
    jr nz, @+$41

    inc e
    nop
    rra
    jr @+$09

    rlca
    inc e
    rra
    jr nc, jr_006_6e44

    ld de, $1b0e
    rla
    dec de
    rla
    ld sp, $262e
    ccf
    add hl, sp
    ccf
    call nz, Call_000_0dff
    rst $38
    ld e, $ff
    ld [$e1ff], sp
    rst $38

jr_006_6e1b:
    ldh a, [rP1]
    sbc b
    ld h, b
    cp $80
    ld a, [hl]
    ret nz

    cp $f8
    ld e, [hl]
    cp $9f
    ld a, a
    adc [hl]
    ld a, [hl]
    dec bc
    rst $38
    ld [bc], a
    cp $84
    db $fc
    ld [$84f8], sp
    db $fc
    ld b, h
    db $fc
    db $ec
    db $fc
    cp $12
    ld [hl], c
    ld a, a
    ld h, c
    ccf
    ld b, c
    ld a, a
    sub h
    rst $38
    add b

jr_006_6e44:
    rst $38
    ld h, c
    ld a, a
    ld e, $1f
    ld [hl], b
    ld e, a
    cpl
    ccf
    ld [hl], l
    ld e, [hl]
    dec sp
    inc a
    rrca
    rrca
    dec e
    ld e, $36
    ccf
    ld h, e
    ld a, a
    db $e4
    cp h

jr_006_6e5b:
    di
    sbc a
    ldh a, [$ef]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    jr @+$01

    cp $ef
    or b
    ld a, a
    ld hl, sp+$2f
    rst $38
    rst $38
    pop de
    ccf
    db $f4
    ccf
    cp $eb
    ld a, $2b
    cp $82
    call c, Call_006_64fc
    db $fc
    ret z

    ld hl, sp-$50
    ldh a, [rBCPS]
    ld hl, sp+$48
    ld hl, sp+$24
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    adc h
    db $f4
    jr c, jr_006_6e5b

    ldh a, [rNR10]
    ldh [$e0], a
    dec d
    inc b
    add b
    dec d
    ld d, $00
    inc b
    inc b
    dec bc
    rrca
    ld [de], a
    rra
    inc d
    rra
    jr nz, @+$41

    inc e
    nop
    rra
    jr @+$09

    rlca
    inc e
    rra
    jr nc, jr_006_6ef0

    ld de, $1b0e
    rla
    dec de
    rla
    ld sp, $262e
    ccf
    ld a, $3f
    call nz, Call_000_0dff
    rst $38
    ld e, $ff
    ld [$e1ff], sp
    rst $38
    ldh a, [rP1]
    sbc b
    ld h, b
    cp $80
    ld a, [hl]
    ret nz

    cp $f8
    ld e, [hl]
    cp $9f
    ld a, a
    adc [hl]
    ld a, [hl]
    dec bc
    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld [$84f8], sp
    db $fc
    ld b, h
    db $fc
    db $ec
    db $fc
    cp $12
    ld [hl], c
    ld a, a
    ld h, c
    ccf
    ld b, c
    ld a, a
    sub h
    rst $38
    add b

jr_006_6ef0:
    rst $38
    ld h, c
    ld a, a
    ld e, $1f
    ldh a, [$bf]
    ld c, a
    ld a, a
    push de
    cp [hl]
    ld a, e
    ld a, h
    rrca
    rrca
    dec b
    ld b, $0e
    rrca
    dec de
    rra
    add hl, sp
    cpl

jr_006_6f07:
    di
    sbc a
    ldh a, [$ef]
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
    rst $38
    rst $38
    rst $30
    cp b
    ld a, a
    call c, $ff37
    rst $38
    and d
    ld a, a
    pop af
    rst $38
    ld hl, sp-$51
    ld hl, sp+$4f
    cp $82
    call c, Call_006_64fc
    db $fc
    ret z

    ld hl, sp-$50
    ldh a, [$e8]
    ld hl, sp+$48
    ld hl, sp+$24
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    adc h
    db $f4
    jr c, jr_006_6f07

    ldh a, [rNR10]
    ldh [$e0], a
    dec d
    inc b
    add b
    ld [hl], c
    ld a, a
    ld h, c
    ccf
    ld d, l
    ld a, a
    add b
    rst $38
    cp h
    rst $38
    ld b, e
    ld b, e
    rlca
    rlca
    ld a, b
    ld e, a
    daa
    ccf
    ld [hl], l
    ld e, [hl]
    dec sp
    inc a
    rst $38
    xor a
    adc d
    rst $38
    ld b, a
    ld a, a
    inc h
    inc a
    jr jr_006_6f7e

    di
    sbc a
    ldh a, [$ef]
    ldh a, [rIE]
    push hl
    rst $38
    add hl, de
    rst $38
    ld a, [c]
    rst $38
    call nz, Call_000_1cff
    rst $38
    cp $f7
    cp b
    ld a, a
    call c, $ff37
    rst $38

jr_006_6f7e:
    db $d3
    ccf
    ld [hl], c
    cp a
    ret c

    rst $18
    rrca
    ld a, [bc]
    di
    rst $28
    ldh a, [rIE]
    db $e4
    rst $38
    dec e
    rst $38
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    db $e4
    rst $38
    call c, $3eff
    rst $30
    ld hl, sp-$01
    call c, $ff37
    rst $38
    rst $38
    nop
    cp $00
    nop
    nop
    ld hl, sp+$15
    dec b
    nop
    ld h, a
    ld h, a
    sbc b
    rst $38
    add sp, -$01
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    ld a, l
    add e
    rst $38
    add b
    rst $38
    add c
    rst $38
    add a
    cp $7f
    ld a, b
    ccf
    ld [hl+], a
    rra
    inc e
    rlca
    inc b
    inc e
    nop
    rra
    jr @+$09

    rlca
    sbc h
    sbc a
    ld [hl], b
    rst $38
    pop de
    adc $db
    rst $10
    db $db
    rst $10
    or c
    xor $26
    rst $38
    xor c
    ld a, a
    cp b
    ld a, a
    and b
    ld a, a
    ld hl, $43ff
    rst $38
    ld c, h
    rst $38
    ldh a, [rP1]
    sbc b
    ld h, b
    cp $80
    ld a, [hl]
    ret nz

    cp $f8
    ld e, [hl]
    cp $9f
    ld a, a
    adc [hl]
    ld a, [hl]

jr_006_6ff4:
    dec bc
    rst $38
    ld [bc], a
    cp $04
    db $fc
    jr jr_006_6ff4

    ld [$24f8], sp
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    ld b, $05
    ld c, $09
    inc e
    inc de
    jr jr_006_7023

    jr c, jr_006_7035

    jr c, jr_006_7037

    jr c, jr_006_7039

    jr c, jr_006_704b

    ld e, h
    ld [hl], e
    adc a
    ld hl, sp-$01
    db $fc
    inc bc
    inc bc
    dec d
    ld [$7800], sp
    rst $08
    cp a
    rst $30

jr_006_7023:
    adc a
    ld hl, sp+$13
    cp $79
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    add b
    add b

jr_006_7035:
    dec d
    ld a, [bc]

jr_006_7037:
    nop
    ld a, h

jr_006_7039:
    db $fc
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld d, h
    xor b
    add sp, $10
    ldh a, [$2c]
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ld sp, hl

jr_006_704b:
    cp a
    rrca
    rrca
    dec d
    ld a, [bc]
    nop
    ld h, c
    ccf
    ld d, l
    ld a, a
    add b
    rst $38
    cp [hl]
    rst $38
    ld b, a
    ld b, a
    inc bc
    inc bc
    rrca
    rrca
    rst $30
    cp a
    ld c, b
    ld a, a
    rst $08
    cp a
    ld [hl], a
    ld a, h
    rra
    rra
    ccf
    nop
    rrca
    nop
    nop
    nop
    rlca
    dec d
    rlca
    nop
    jr z, jr_006_7075

jr_006_7075:
    ld a, [hl+]
    jr z, jr_006_707a

    ld [bc], a
    ld e, h

jr_006_707a:
    ld e, h
    cp $a2
    cp $a2
    ld e, h
    ld e, h
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    jr z, jr_006_70ae

    dec d
    dec bc
    nop
    inc a
    jr nc, jr_006_710a

    inc e
    rst $38
    ld [c], a
    rra
    add hl, de
    ld a, a
    ld h, l
    rst $38
    adc d
    rst $38
    adc d
    ld a, a
    ld h, l
    rra
    add hl, de
    rst $38
    ld [c], a
    ld a, [hl]
    inc e
    inc a
    jr nc, jr_006_70b7

    inc b
    nop
    ld b, $05
    ld c, $09
    inc e
    inc de
    jr jr_006_70c3

    jr c, jr_006_70d5

jr_006_70ae:
    jr c, jr_006_70d7

    jr c, jr_006_70d9

    ld e, b
    ld [hl], a
    sbc h
    di
    rst $38

jr_006_70b7:
    ld hl, sp+$07
    inc b
    inc bc
    inc bc
    dec d
    ld [$7800], sp
    rst $08
    cp a
    rst $30

jr_006_70c3:
    adc a
    ld hl, sp+$13
    cp $21
    rst $38
    ld e, $ff
    ld sp, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_006_70d5:
    dec d
    ld a, [bc]

jr_006_70d7:
    nop
    ld a, h

jr_006_70d9:
    db $fc
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld d, h
    xor b
    add sp, $4c
    db $fc
    add d
    cp $41
    rst $38
    ld hl, $3fff
    rst $38
    ldh [$e0], a
    dec d
    ld a, [bc]
    nop
    ld b, $05
    ld c, $09
    inc e
    inc de
    jr jr_006_7110

    jr c, jr_006_7122

    jr c, jr_006_7124

    inc a
    inc hl
    inc a
    inc hl
    ld e, [hl]
    ld [hl], c
    ld e, a
    ld [hl], b
    adc a
    db $fc
    adc e
    ei
    sub b

jr_006_710a:
    ldh a, [$a0]
    ldh [$a0], a
    ldh [rLCDC], a

jr_006_7110:
    ld b, b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    inc a
    inc hl
    jr c, @+$29

    inc a
    inc sp
    rra
    jr jr_006_712f

    rrca
    ld [bc], a

jr_006_7122:
    inc bc
    ld [bc], a

jr_006_7124:
    inc bc
    ld [hl-], a
    inc sp
    ld c, d
    ld a, e
    ld b, [hl]
    ld a, a
    sub d
    rst $38
    ld l, b
    ld l, a

jr_006_712f:
    rlca
    rlca
    dec d
    ld a, [de]
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    dec d
    jr jr_006_713d

jr_006_713d:
    db $e3
    db $e3
    inc h
    rst $20
    ld h, $e7
    inc h
    rst $20
    dec d
    inc c
    nop
    inc b
    inc b
    ld a, [bc]
    ld c, $17
    dec e
    cpl
    add hl, sp
    ld e, a
    ld [hl], c
    cp a
    pop hl
    ld a, [hl]
    jp nz, $c27e

    db $fc
    add h
    db $fc
    add h
    dec d
    nop
    dec c
    ld a, b
    rst $08
    cp a
    rst $30
    adc a
    ld hl, sp+$13
    cp $21
    rst $38
    ld e, $ff
    ld [hl], b
    rst $38
    ld [$07ff], sp
    db $fc
    inc bc
    cp $83
    rst $38
    pop bc
    rst $38
    ld hl, $113f
    rra
    add hl, bc
    rrca
    ld b, $06
    ld a, h
    db $fc
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld d, h
    xor b
    add sp, $10
    ldh a, [rNR23]
    ld hl, sp+$14
    db $fc
    add d
    ld a, [hl]
    ld [c], a
    ld a, $e1
    rst $38
    ld de, $091f
    rrca
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld b, $05
    ld c, $09
    inc e
    inc de
    jr jr_006_71be

    jr c, jr_006_71d0

    jr c, jr_006_71d2

    inc a
    inc hl
    ld a, h
    ld h, e
    ld e, [hl]
    ld [hl], c
    sbc a
    ldh a, [$8f]
    db $fc
    adc e
    ei
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    jr z, @+$3a

    db $10

jr_006_71be:
    db $10
    ld a, b
    rst $08
    cp a
    rst $30
    adc a
    ld hl, sp+$13
    cp $21
    rst $38
    ld e, $ff
    jr nz, @+$01

    db $10
    rst $38
    adc a

jr_006_71d0:
    ld hl, sp-$79

jr_006_71d2:
    db $fc
    add a
    rst $38
    add h
    db $fc
    adc b
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [$e0]
    ldh [$7c], a
    db $fc
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld d, h
    xor b
    add sp, $10
    ldh a, [rNR23]
    ld hl, sp+$14
    db $fc
    add d
    ld a, [hl]
    ld [c], a
    ld a, $e2
    cp $22
    ld a, $24
    inc a
    inc h
    inc a
    jr z, jr_006_7235

    jr nc, jr_006_722f

    ld b, $05
    ld c, $09
    inc e
    inc de
    jr jr_006_721e

    jr c, jr_006_7230

    jr c, jr_006_7232

    jr c, jr_006_7234

    ld e, b
    ld [hl], a
    ld e, h
    ld [hl], e
    adc a
    ld hl, sp-$71
    db $fc
    di
    di
    dec c
    ld [$7800], sp
    rst $08
    cp a
    rst $30

jr_006_721e:
    adc a
    ld hl, sp+$13
    cp $21
    rst $38
    ld e, $ff
    inc a
    rst $38
    jp nz, Jump_000_01ff

    rst $38
    nop
    rst $38
    add b

jr_006_722f:
    rst $38

jr_006_7230:
    ld a, a
    ld a, a

jr_006_7232:
    dec c
    inc c

jr_006_7234:
    nop

jr_006_7235:
    ld h, a
    ld h, a
    sbc b
    rst $38
    add sp, -$01
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    ld a, l
    add e
    rst $38
    add b
    rst $38
    add e
    rst $38
    rst $38
    cp $7f
    ld a, h
    ccf
    ld [hl+], a
    rra
    inc e
    rlca
    inc b
    ldh a, [rP1]
    sbc b
    ld h, b
    cp $80
    ld a, [hl]
    ret nz

    cp $f8
    ld e, [hl]
    cp $9f
    ld a, a
    adc [hl]
    ld a, [hl]

jr_006_7261:
    dec bc
    rst $38
    ld [bc], a
    cp $04
    db $fc
    jr jr_006_7261

    ld [$24f8], sp
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    inc e
    nop
    rra
    jr @+$09

    rlca
    sbc h
    sbc a
    ld [hl], e
    rst $38
    pop de
    adc $db
    rst $10
    db $db
    rst $10
    or c
    xor $2c
    rst $38
    xor h
    ld a, a
    or b
    ld a, a
    and b
    ld a, a
    ld hl, $43ff
    rst $38
    ld c, h
    rst $38
    ld a, h
    db $fc
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld d, h
    xor b
    add sp, $10
    ldh a, [$2c]
    db $fc
    ld [bc], a
    cp $01
    rst $38
    pop hl
    cp a
    rst $18
    rst $18
    add b
    add b
    dec c
    ld [$0600], sp
    dec b
    ld c, $09
    inc e
    inc de
    jr jr_006_72cb

    jr c, jr_006_72dd

    jr c, jr_006_72df

    inc a
    inc hl
    inc a
    inc hl
    ld e, [hl]
    ld [hl], c
    ld e, a
    ld [hl], b
    adc a
    db $fc
    di
    di
    dec c
    ld [$7800], sp
    rst $08
    cp a
    rst $30

jr_006_72cb:
    adc a
    ld hl, sp+$13
    cp $21
    rst $38
    ld e, $ff
    ld [hl], b
    rst $38
    ld [$07ff], sp
    db $fc
    inc bc
    cp $81
    rst $38

jr_006_72dd:
    pop hl
    rst $38

jr_006_72df:
    rra
    rra
    dec c
    ld b, $00
    ld a, h
    db $fc
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld d, h
    xor b
    add sp, $10
    ldh a, [rNR23]
    ld hl, sp+$14
    db $fc
    add d
    ld a, [hl]
    pop hl
    ccf
    ld sp, hl
    rst $38
    rlca
    rlca
    dec c
    jr z, jr_006_72ff

jr_006_72ff:
    cp [hl]

Jump_006_7300:
    ld [c], a
    ld e, a
    ld [hl], c
    cpl
    add hl, sp
    rla
    dec e
    ld a, [bc]
    ld c, $04
    inc b
    dec c
    ld [hl+], a
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc sp
    ccf
    scf
    rra
    daa
    dec a
    daa
    ccf
    nop
    nop
    inc e
    nop
    rra
    jr @+$09

    rlca
    inc e
    rra
    jr nc, @+$41

    pop de
    adc $3b
    rst $30
    dec sp
    rst $30
    ld sp, $66ee
    rst $38
    add hl, sp
    rst $38
    sbc [hl]
    rst $38
    pop de
    ld a, a
    ret c

    ld a, a
    jp nc, Jump_000_00ff

    nop
    ldh a, [rP1]
    sbc b
    ld h, b
    cp $80
    ld a, [hl]
    ret nz

    cp $f8
    ld e, [hl]
    cp $9f
    ld a, a
    adc [hl]
    ld a, [hl]
    dec bc
    rst $38
    ld [bc], a
    cp $84
    db $fc
    inc c
    db $fc
    add d
    cp $49
    rst $38
    ld [hl], c
    rst $38
    dec c
    inc c
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc sp
    ccf
    scf
    rra
    daa
    dec a
    daa
    ccf
    inc hl
    ccf
    inc e
    nop
    rra
    jr @+$09

    rlca
    inc e
    rra
    jr nc, @+$41

    pop de
    adc $3b
    rst $30
    dec sp
    rst $30
    ld sp, $66ee
    rst $38
    add hl, sp
    rst $38
    sub b
    rst $38
    call c, $d07f
    ld a, a
    ret nc

    rst $38
    and c
    rst $38
    ldh a, [rP1]
    sbc b
    ld h, b
    cp $80
    ld a, [hl]
    ret nz

    cp $f8
    ld e, [hl]
    cp $9f
    ld a, a
    adc [hl]
    ld a, [hl]
    dec bc
    rst $38
    ld [bc], a
    cp $84
    db $fc
    inc c
    db $fc
    ld [bc], a
    cp $09
    rst $38
    ld de, $23ff
    rst $38
    dec c
    inc h
    nop
    ld [hl], e
    nop
    ld a, [hl]
    ld h, c
    rra
    ld e, $71
    ld a, a
    jp Jump_006_45ff


    dec sp
    ld l, [hl]
    ld e, l
    ld l, [hl]
    ld e, l
    call nz, $88bb
    rst $38
    db $eb
    rst $38
    inc h
    rst $38
    ld [hl], $ff
    inc l
    rst $38
    inc hl
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    adc a
    cp $bf
    ld sp, hl
    rst $08
    rst $08
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop

jr_006_73f0:
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    or a
    db $fd
    daa
    db $fc
    rst $20
    cp h
    rst $28
    sbc b
    rst $28
    jr jr_006_73f0

    ret c

    rst $08
    cp c
    rst $20
    ld a, c
    and $da
    and $3a
    db $e4
    db $fc
    db $e4
    inc e
    ld a, [c]
    cp $22
    cp $4e
    cp $b0
    or b
    inc hl
    rst $38
    cp a
    db $fd
    sbc a
    pop af
    rst $18
    ld [hl], l
    db $db
    ld a, a
    jp nc, $ec7e

    inc a
    add sp, $38
    add sp, -$48
    add sp, -$48
    ld l, b
    ld a, b
    db $10
    db $10
    dec c
    ld [hl+], a
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld b, $05
    ld c, $09
    inc e
    inc de
    jr jr_006_7456

    jr c, jr_006_7468

    jr c, jr_006_746a

    inc a
    inc hl
    ld a, h
    ld h, e
    ld e, [hl]
    ld [hl], c
    sbc a
    ldh a, [$8f]
    db $fc
    adc e
    ei
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    jr z, jr_006_748d

    db $10

jr_006_7456:
    db $10
    ld a, h
    db $fc
    add e
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop

jr_006_7460:
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    adc a

jr_006_7468:
    ld hl, sp-$79

jr_006_746a:
    db $fc
    add a
    rst $38
    add h
    db $fc
    adc b
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [$e0]
    ldh [$0d], a
    inc b
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_006_7460

    db $10
    ldh a, [rNR23]
    ld hl, sp+$14
    db $fc
    add d
    ld a, [hl]
    ld [c], a
    ld a, $e2
    cp $22

jr_006_748d:
    ld a, $24
    inc a
    inc h
    inc a
    jr z, jr_006_74cc

    jr nc, jr_006_74c6

    ld b, $05
    ld c, $09
    inc e
    inc de
    jr jr_006_74b5

    jr c, jr_006_74c7

    jr c, jr_006_74c9

    jr c, jr_006_74cb

    jr c, jr_006_74dd

    inc a
    inc sp
    ld e, a
    ld a, b
    adc a
    db $fc
    di
    di
    dec c
    ld [$0d00], sp
    nop
    nop
    nop

jr_006_74b5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_74c6:
    nop

jr_006_74c7:
    nop
    nop

jr_006_74c9:
    nop
    nop

jr_006_74cb:
    nop

jr_006_74cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_74dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    ld a, c
    and h
    ld a, c
    xor c
    ld a, c
    cp l
    ld a, c
    jp nz, $ca79

    ld a, c
    jp z, $d879

    ld a, c
    ld a, [c]
    ld a, c
    nop
    ld a, d
    ld c, $7a
    inc de
    ld a, d
    inc h
    ld a, d
    ld c, $7a
    ld h, $7a
    ret c

    ld a, c
    scf
    ld a, d
    ld d, c
    ld a, d
    ld e, a
    ld a, d
    ld h, h
    ld a, d
    ld l, a
    ld a, d
    ld h, h
    ld a, d
    sub d
    ld a, d
    and d
    ld a, c
    and d
    ld a, c
    xor c
    ld a, d
    or h
    ld a, d
    cp c
    ld a, d
    ld [c], a
    ld a, d
    or h

Call_006_783b:
    ld a, d
    db $ed
    ld a, d
    and d
    ld a, c
    cp $7a
    rrca
    ld a, e
    inc d
    ld a, e
    rra
    ld a, e
    dec l
    ld a, e
    cp $7a
    dec sp
    ld a, e
    and d
    ld a, c
    ld e, b
    ld a, e
    ld l, a
    ld a, e
    db $76
    ld a, e
    ld a, [hl]
    ld a, e
    ld [hl], c
    ld a, e
    adc h
    ld a, e
    adc h
    ld a, e
    and d
    ld a, c
    sbc d
    ld a, e
    xor e
    ld a, e
    or e
    ld a, e
    call nz, $de7b
    ld a, e
    xor e
    ld a, e
    ei
    ld a, e
    and d
    ld a, c
    add hl, bc
    ld a, h
    add hl, hl
    ld a, h
    ld sp, $457c
    ld a, h
    ld d, e
    ld a, h
    ld sp, $737c
    ld a, h
    add a
    ld a, h
    sub d
    ld a, b
    sub d
    ld a, b
    add $78
    db $fd
    ld a, b
    ld sp, $6b79
    ld a, c
    xor c
    ld a, h
    jp c, Jump_000_307c

    ld a, [hl]
    adc $00
    inc b
    adc $04
    inc b
    adc $08
    inc b
    adc $0c
    inc b
    adc $10
    inc b
    adc $14
    inc b
    adc $18
    ld b, $ce
    ld a, [hl+]
    ld b, $ce
    jr c, @+$04

    jp z, Jump_000_021e

    jp z, $0420

    jp z, Jump_000_0424

    jp z, Jump_000_0228

    jp z, Jump_000_0430

    jp z, Jump_000_0434

    jp Jump_000_043a


    ret


    ld a, $02
    nop
    rst $20
    nop
    inc b
    rst $20
    inc b
    inc b
    rst $20
    ld [$e704], sp
    db $10
    inc b
    rst $20
    inc d
    inc b
    rst $20
    jr jr_006_78dc

    xor a
    inc c
    inc b
    xor a

jr_006_78dc:
    inc e
    ld [bc], a
    call z, Call_000_021e
    call z, $0420
    call z, Call_000_0424
    call z, $0428
    call z, Call_000_042c
    call z, Call_000_0430
    call z, Call_000_0434
    adc $38
    ld [bc], a
    jp Jump_000_043a


    ret


    ld a, $02
    nop
    rst $08
    nop
    inc b
    rst $08
    inc b
    inc b
    rst $08
    ld [$cf04], sp
    inc c
    inc b
    rst $08
    db $10
    inc b
    rst $08
    inc d
    inc b
    rst $08
    jr jr_006_7918

    rst $08
    ld a, [hl+]
    ld b, $ce
    ld e, $02

jr_006_7918:
    adc $20
    inc b
    adc $24
    inc b
    adc $28
    ld [bc], a
    adc $30
    inc b
    adc $34
    inc b
    adc $38
    ld [bc], a
    jp Jump_000_043a


    ret


    ld a, $02
    nop
    ldh [rP1], a
    inc b
    ldh [rDIV], a
    inc b
    ldh [$08], a
    inc b
    ldh [$0c], a
    inc b
    ldh [rNR10], a
    inc b
    ldh [rNR14], a
    inc b
    ldh [rNR23], a
    inc b
    db $e4
    inc e
    ld [bc], a
    db $e4
    inc l
    ld [bc], a
    rst $08
    ld e, $02
    rst $08
    jr nz, jr_006_7956

    rst $08
    inc h
    inc b
    rst $08

jr_006_7956:
    jr z, jr_006_795c

    rst $08
    ld l, $02
    rst $08

jr_006_795c:
    jr nc, @+$06

    rst $08
    inc [hl]
    inc b
    adc $38
    ld [bc], a
    jp Jump_000_043a


    ret


    ld a, $02
    nop
    xor a
    nop
    inc b
    xor a
    inc b
    inc b
    xor a
    ld [$af02], sp
    jr z, jr_006_797d

    pop hl
    inc c
    inc b
    pop hl
    db $10
    inc b

jr_006_797d:
    pop hl
    inc d
    inc b
    pop hl
    jr @+$06

    pop hl
    inc e
    ld [bc], a
    ldh [rNR34], a
    ld [bc], a
    ldh [rNR41], a
    inc b
    ldh [rNR50], a
    inc b
    db $e4
    ld l, $02
    call Call_000_0430
    db $e3
    inc [hl]
    inc b
    adc $38
    ld [bc], a
    jp Jump_000_043a


    ret


    ld a, $02
    nop
    jp nz, $c200

    jp Jump_000_023e


    nop
    jp nz, Jump_000_00c3

    inc b
    jp Jump_000_0404


    jp Jump_000_0408


    jp $040c


    jp Jump_000_0610


    jp Jump_000_0430


    nop
    jp nz, Jump_000_30c3

    inc b
    nop
    jp nz, $1cc3

    inc b
    jp Jump_000_023e


    nop
    ret


    rst $00
    jr nz, jr_006_79d2

    rst $00
    inc h
    inc b
    ret z

jr_006_79d2:
    jr nc, jr_006_79d8

    jp Jump_000_043a


    nop

jr_006_79d8:
    ld [c], a
    jp $0216


    jp Jump_000_0218


    ret z

    ld e, $02
    add $20
    ld [bc], a
    add $24
    inc b
    add $28
    inc b
    add $2c
    inc b
    push bc
    inc a
    ld [bc], a
    nop
    jp nz, $08c3

    inc b
    jp $040c


    jp Jump_000_0430


    jp Jump_000_023e


    nop
    jp nz, $10c4

    inc b
    call nz, Call_000_0414
    call nz, $0618
    push bc
    ld a, $02
    nop
    jp $3cc5


    inc b
    nop
    jp nz, Jump_000_16c7

    ld [bc], a
    rst $00
    jr @+$06

    call nz, Call_000_0434
    call nz, Call_000_0438
    jp nz, Jump_000_023e

    nop
    push bc
    nop
    jp z, Jump_000_08c5

    ld b, $c9
    ld e, $02
    rst $00
    jr nz, jr_006_7a34

    rst $00
    inc h
    inc b
    rst $00

jr_006_7a34:
    jr nc, jr_006_7a3a

    nop
    jp nz, Jump_000_00c4

jr_006_7a3a:
    inc b
    call nz, Call_000_0404
    ret z

    db $10
    ld b, $c3
    ld d, $02
    jp Jump_000_0218


    ret z

    ld e, $02
    call nz, Call_000_0430
    call nz, Call_000_023c
    nop
    jp Jump_000_20c2


    ld [bc], a
    jp nz, Jump_000_0434

    jp nz, Jump_000_0238

    jp nz, $043c

    nop
    jp nz, $22c3

    ld [bc], a
    nop
    jp nz, $08c3

    inc b
    jp $040c


    jp Jump_000_023e


    nop
    add $c3
    ld [$c304], sp
    inc c
    inc b
    jp $041c


    jp nz, $0420

    jp Jump_000_0424


    jp $0428


    jp Jump_000_042c


    jp Jump_000_0430


    jp nz, Jump_000_0434

    jp nz, Jump_000_0438

    jp nz, $043c

    nop
    set 1, d
    ld [$ca04], sp
    inc c
    inc b
    jp z, Jump_000_021c

    ret


    ld e, $02
    rst $00
    jr nz, jr_006_7aa6

    rst $00
    inc h
    inc b
    rst $00

jr_006_7aa6:
    jr nc, jr_006_7aac

    nop
    jp nz, $10c4

jr_006_7aac:
    inc b
    call nz, Call_000_0414
    call nz, $0618
    nop
    push bc
    jp nz, Jump_000_0220

    nop
    add $c7
    nop
    inc b
    rst $00
    inc b
    inc b
    jp Jump_000_0408


    jp $040c


    jp nz, Jump_000_0220

    call nz, Call_000_0622
    call nz, $0428
    call nz, Call_000_042c
    jp Jump_000_0230


    jp nz, Jump_000_0434

    jp nz, Jump_000_0238

    jp nz, Jump_000_023c

    call nz, Call_000_023e
    nop
    jp Jump_000_10c5


    ld b, $c2
    jr nz, @+$04

    jp nz, Jump_000_023e

    nop
    set 0, l
    db $10
    ld b, $c9
    ld e, $02
    rst $00
    jr nz, jr_006_7afb

    rst $00
    inc h
    inc b
    rst $00

jr_006_7afb:
    jr nc, jr_006_7b01

    nop
    jp nz, $08c3

jr_006_7b01:
    inc b
    jp $040c


    jp $021a


    jp Jump_000_0430


    call nz, Call_000_023e
    nop
    jp Jump_000_3ec2


    ld [bc], a
    nop
    jp nz, $10c4

    inc b
    call nz, Call_000_0414
    call nz, $0618
    nop
    jp Jump_000_1cc7


    inc b
    jp nz, Jump_000_0220

    jp nz, Jump_000_0434

    jp nz, Jump_000_0638

    nop
    push bc
    jp Jump_000_0610


    jp nz, Jump_000_0220

    call nz, Call_000_0434
    call nz, Call_000_0438
    nop
    ret


    call $0600
    call z, $0206
    call z, Call_000_0408
    call z, $040c
    rst $00
    jr nz, jr_006_7b4f

    rst $00
    inc h
    inc b
    rst $00

jr_006_7b4f:
    jr nc, @+$06

    swap h
    inc b
    call z, Call_000_0238
    nop
    jp nz, $08c4

    inc b
    call nz, $040c
    rst $00
    ld d, $02
    rst $00
    jr @+$06

    call nz, Call_000_0434
    call nz, Call_000_0438
    push bc
    inc a
    ld [bc], a
    nop
    push bc
    nop
    jp nz, $10c7

    ld b, $00
    jp Jump_000_20c2


    ld [bc], a
    jp nz, Jump_000_023a

    nop
    jp nz, $10c4

    inc b
    call nz, Call_000_0414
    call nz, $0618
    jp Jump_000_0222


    nop
    ret z

    ret


    ld e, $02
    rst $00
    jr nz, jr_006_7b97

    rst $00
    inc h
    inc b
    rst $00

jr_006_7b97:
    jr nc, jr_006_7b9d

    nop
    jp nz, Jump_000_08c7

jr_006_7b9d:
    inc b
    rst $00
    inc c
    inc b
    rst $00
    ld d, $02
    rst $00
    jr jr_006_7bab

    rst $00
    ld a, [hl-]
    ld [bc], a
    nop

jr_006_7bab:
    jp nz, $08c3

    inc b
    jp $040c


    nop
    jp nz, $10c4

    inc b
    call nz, Call_000_0414
    call nz, $0618
    jp Jump_000_0222


    jp Jump_000_023e


    nop
    jp Jump_000_1cc7


    inc b
    jp nz, $0420

    jp nz, Jump_000_0424

    jp nz, $0428

    jp nz, Jump_000_042c

    jp nz, Jump_000_0434

    jp nz, Jump_000_0438

    jp nz, $043c

    nop
    jp nz, $08c3

    inc b
    jp $040c


    rst $00
    inc e
    inc b
    rst $00
    jr z, @+$06

    rst $00
    inc l
    inc b
    add $30
    inc b
    add $34
    inc b
    add $38
    inc b
    add $3c
    inc b
    nop
    call Call_000_1ec9
    ld [bc], a
    rst $00
    jr nz, jr_006_7c06

    rst $00
    inc h
    inc b
    rst $00

jr_006_7c06:
    jr nc, jr_006_7c0c

    nop
    add $c7
    nop

jr_006_7c0c:
    inc b
    rst $00
    inc b
    inc b
    jp Jump_000_0408


    jp $040c


    jp nz, Jump_000_0220

    call nz, Call_000_0622
    call nz, $0428
    call nz, Call_000_042c
    jp nz, Jump_000_0434

    jp nz, Jump_000_0238

    nop
    push bc
    jp Jump_000_0610


    jp nz, Jump_000_0220

    nop
    jp nz, $08c3

    inc b
    jp $040c


    rst $00
    inc e
    inc b
    add $34
    inc b
    add $38
    inc b
    add $3c
    inc b
    nop
    push bc
    jp Jump_000_0610


    jp nz, Jump_000_0220

    call nz, Call_000_0434
    call nz, Call_000_0438
    nop
    jp nz, Jump_000_00c3

    inc b
    jp Jump_000_0404


    add $08
    inc b
    add $0c
    inc b
    jp Jump_000_0610


    add $22
    ld [bc], a
    add $30
    ld [bc], a
    rst $00
    ld [hl-], a
    ld b, $c7
    jr c, jr_006_7c71

    rst $00
    inc a

jr_006_7c71:
    inc b
    nop
    call z, Call_000_1ec9
    ld [bc], a
    rst $00
    jr nz, jr_006_7c7e

    rst $00
    inc h
    inc b
    rst $00

jr_006_7c7e:
    jr nc, jr_006_7c84

    rst $00
    inc [hl]
    inc b
    rst $00

jr_006_7c84:
    jr c, jr_006_7c88

    nop
    ret


jr_006_7c88:
    nop
    inc b
    ret


    inc b
    inc b
    ret


    ld [$c904], sp
    inc c
    inc b
    ret


    db $10
    inc b
    ret


    inc d
    inc b
    ret


    jr jr_006_7ca0

    ret


    inc e
    inc b
    ret


jr_006_7ca0:
    jr z, jr_006_7ca6

    ret


    inc l
    inc b
    ret


jr_006_7ca6:
    ld a, [hl-]
    ld b, $00
    and $00
    inc b
    and $04
    inc b
    and $08
    inc b
    and $0c
    inc b
    and $10
    inc b
    and $14
    inc b
    and $18
    inc b
    and $1c
    inc b
    push hl
    jr nz, jr_006_7cc8

    push hl
    inc h
    inc b
    push hl

jr_006_7cc8:
    jr z, jr_006_7cce

    push hl
    inc l
    inc b
    push hl

jr_006_7cce:
    jr nc, jr_006_7cd4

    push hl
    inc [hl]
    inc b
    push hl

jr_006_7cd4:
    jr c, jr_006_7cda

    push hl
    inc a
    inc b
    nop

jr_006_7cda:
    inc d
    ld [de], a
    inc h
    inc h
    ld a, l
    ld a, l
    ld a, l
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    inc h
    inc h
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc h
    inc h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    inc h
    inc h
    inc h
    inc h
    ld [hl], e
    inc b
    dec b
    ld b, $24
    inc h
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc h
    inc h
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, l
    ld a, l
    inc h
    inc h
    inc d
    dec d
    ld d, $07
    inc h
    ld a, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc h
    ld a, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    inc h
    ld a, l
    inc c
    inc h
    inc h
    dec h
    ld h, $17
    ld a, l
    ld a, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld a, l
    inc h
    ld a, l
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc h
    ld a, l
    inc h
    inc c
    inc [hl]
    dec [hl]
    ld [hl], $27
    ld a, l
    ld a, l
    ld a, l
    inc h
    inc h
    inc h
    ld a, l
    ld a, l
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    inc h
    inc h
    inc h
    inc h
    inc h
    ld a, l
    ld a, l
    inc h
    inc h
    inc h
    inc h
    ld a, [hl]
    ld a, a
    inc h
    inc h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    inc h
    inc h
    inc h
    inc h
    ld a, l
    ld a, l
    ld a, l
    inc h
    ld bc, $2e2d
    rra
    ld l, h
    ld l, l
    dec sp
    ld a, l
    ld a, l
    ld a, l
    inc h
    ld a, l
    inc h
    inc h
    inc h
    inc h
    ld bc, $0302
    ld a, l
    ld c, h
    dec a
    ld a, $2f
    ld a, d
    ld a, e
    inc c
    scf
    ld [$0a09], sp
    ld a, l
    inc h
    ld a, l
    ld a, l
    db $10
    ld de, $1312
    ld a, l
    ld e, h
    ld c, l
    ld c, [hl]
    ccf
    ld l, [hl]
    ld e, a
    inc h
    jr jr_006_7db9

    ld a, [de]
    dec bc
    inc h
    inc h
    inc h
    ld a, l
    jr nz, jr_006_7dc9

    ld [hl+], a
    inc hl
    inc h
    ld a, l
    ld e, l
    ld e, [hl]
    ld c, a
    ld a, h
    ld l, a
    ld a, l
    jr z, jr_006_7ddd

    ld a, [hl+]
    dec de
    inc h
    inc h
    inc h

jr_006_7db9:
    inc h
    jr nc, jr_006_7ded

    ld [hl-], a
    inc sp
    inc h
    ld a, l
    inc h
    inc h
    ld a, l
    inc h
    ld a, l
    ld a, l
    jr c, jr_006_7e01

    ld a, [hl-]

jr_006_7dc9:
    dec hl
    ld a, l
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld a, l
    ld a, [hl]
    ld a, a
    inc h
    inc h
    inc h
    ld a, l
    ld a, l
    inc h
    ld a, l
    inc h
    inc h

jr_006_7ddd:
    inc h
    ld a, l
    inc h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld c, b
    ld c, c
    ld a, l
    inc h
    ld a, l
    ld a, l
    ld a, l

jr_006_7ded:
    dec sp
    ld a, l
    dec sp
    ld a, l
    dec sp
    ld a, l
    inc h
    inc h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld e, b
    ld e, c
    ld c, d
    ld c, e
    ld a, l
    inc h
    inc h
    inc e

jr_006_7e01:
    dec e
    dec sp
    inc e
    dec sp
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld a, l
    ld a, l
    ld l, b
    ld l, c
    ld e, d
    ld e, e
    ld a, l
    ld a, l
    inc c
    inc l
    ld c, $0d
    inc h
    inc c
    inc e
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld a, l
    ld a, b
    ld a, c
    ld l, d
    ld l, e
    ld a, l
    ld a, l
    inc h
    inc a
    rrca
    ld e, $1c
    ld a, l
    ld a, l
    inc h
    inc h
    inc d
    ld de, $4948
    ld c, d
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$5808], sp
    ld e, c
    ld e, d
    ld [$2829], sp
    add hl, hl
    jr z, jr_006_7e78

    jr z, jr_006_7e7a

    jr z, jr_006_7e7c

    jr z, @+$2b

    jr z, jr_006_7e80

    jr z, jr_006_7e82

    jr z, jr_006_7eb3

    ld e, c
    ld e, d
    ld [$3839], sp
    add hl, sp
    jr c, jr_006_7e9c

    jr c, @+$3b

    jr c, @+$3b

    jr c, jr_006_7ea2

    jr c, jr_006_7ea4

    jr c, @+$3b

    jr c, @+$5a

    ld e, c
    ld e, d
    ld [$2928], sp
    jr z, jr_006_7e9f

    jr z, jr_006_7ea1

jr_006_7e78:
    jr z, jr_006_7e84

jr_006_7e7a:
    dec bc
    inc c

jr_006_7e7c:
    dec c
    ld c, $0f
    add hl, hl

jr_006_7e80:
    jr z, jr_006_7eab

jr_006_7e82:
    ld l, b
    ld l, c

jr_006_7e84:
    ld l, d
    ld [$3938], sp
    jr c, @+$3b

    jr c, @+$3b

    jr c, @+$1c

    dec de
    inc e
    dec e
    ld e, $1f
    add hl, sp
    jr c, jr_006_7ecf

    ld e, b
    ld e, c
    ld e, d
    ld [$2829], sp

jr_006_7e9c:
    add hl, hl
    jr z, jr_006_7ec8

jr_006_7e9f:
    jr z, jr_006_7eca

jr_006_7ea1:
    ld a, [hl+]

jr_006_7ea2:
    dec hl
    inc l

jr_006_7ea4:
    dec l
    ld l, $2f
    jr z, jr_006_7ed2

    jr z, jr_006_7f03

jr_006_7eab:
    ld e, c
    ld e, d
    ld [$3839], sp
    add hl, sp
    jr c, jr_006_7eec

jr_006_7eb3:
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    jr c, @+$3b

    jr c, @+$5a

    ld e, c
    ld e, d
    ld [$2928], sp
    jr z, jr_006_7eef

    jr z, jr_006_7ef1

jr_006_7ec8:
    jr z, @+$6d

jr_006_7eca:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_006_7ecf:
    add hl, hl
    jr z, jr_006_7efb

jr_006_7ed2:
    ld l, b
    ld l, c
    ld l, d
    ld [$3938], sp
    jr c, @+$3b

    jr c, @+$3b

    jr c, jr_006_7f59

    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add hl, sp
    jr c, @+$3b

    ld e, b
    ld e, c
    ld e, d
    ld [$2829], sp

jr_006_7eec:
    add hl, hl
    jr z, jr_006_7f18

jr_006_7eef:
    jr z, jr_006_7f1a

jr_006_7ef1:
    jr z, jr_006_7f1c

    jr z, jr_006_7f1e

    jr z, jr_006_7f20

    jr z, jr_006_7f22

    jr z, jr_006_7f53

jr_006_7efb:
    ld e, c
    ld e, d
    ld [$3839], sp
    add hl, sp
    jr c, jr_006_7f3c

jr_006_7f03:
    jr c, jr_006_7f3e

    jr c, jr_006_7f40

    jr c, jr_006_7f42

    jr c, jr_006_7f44

    jr c, jr_006_7f46

    jr c, jr_006_7f67

    ld e, c
    ld e, d
    ld [$2928], sp
    jr z, jr_006_7f3f

    jr z, jr_006_7f41

jr_006_7f18:
    jr z, jr_006_7f43

jr_006_7f1a:
    jr z, jr_006_7f45

jr_006_7f1c:
    jr z, jr_006_7f47

jr_006_7f1e:
    jr z, jr_006_7f49

jr_006_7f20:
    jr z, jr_006_7f4b

jr_006_7f22:
    ld a, b
    ld a, c
    ld a, d
    ld [$3938], sp
    jr c, jr_006_7f63

    jr c, jr_006_7f65

    jr c, jr_006_7f67

    jr c, jr_006_7f69

    jr c, jr_006_7f6b

    jr c, jr_006_7f6d

    jr c, jr_006_7f6f

    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l

jr_006_7f3c:
    ld l, [hl]
    ld l, a

jr_006_7f3e:
    ld l, h

jr_006_7f3f:
    ld l, l

jr_006_7f40:
    ld l, [hl]

jr_006_7f41:
    ld l, a

jr_006_7f42:
    ld l, h

jr_006_7f43:
    ld l, l

jr_006_7f44:
    ld l, [hl]

jr_006_7f45:
    ld l, a

jr_006_7f46:
    ld l, h

jr_006_7f47:
    ld l, l
    ld l, [hl]

jr_006_7f49:
    ld l, a
    ld a, h

jr_006_7f4b:
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h

jr_006_7f53:
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]

jr_006_7f59:
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add hl, de
    jr jr_006_7f7a

    jr jr_006_7f7c

jr_006_7f63:
    jr jr_006_7f7e

jr_006_7f65:
    jr jr_006_7f80

jr_006_7f67:
    jr jr_006_7f82

jr_006_7f69:
    jr jr_006_7f84

jr_006_7f6b:
    jr jr_006_7f86

jr_006_7f6d:
    jr jr_006_7f88

jr_006_7f6f:
    jr jr_006_7f8a

    jr jr_006_7f8b

    add hl, de
    jr jr_006_7f8f

    jr jr_006_7f91

    jr jr_006_7f93

jr_006_7f7a:
    jr jr_006_7f95

jr_006_7f7c:
    jr jr_006_7f97

jr_006_7f7e:
    jr jr_006_7f99

jr_006_7f80:
    jr jr_006_7f9b

jr_006_7f82:
    jr jr_006_7f9d

jr_006_7f84:
    jr jr_006_7f9f

jr_006_7f86:
    db $fc
    db $fc

jr_006_7f88:
    rst $38
    rst $38

jr_006_7f8a:
    rst $38

jr_006_7f8b:
    rst $38
    rst $38
    rst $38
    rst $38

jr_006_7f8f:
    rst $38
    nop

jr_006_7f91:
    nop
    nop

jr_006_7f93:
    nop
    nop

jr_006_7f95:
    nop
    db $fc

jr_006_7f97:
    db $fc
    rst $38

jr_006_7f99:
    rst $38
    rst $38

jr_006_7f9b:
    rst $38
    rst $38

jr_006_7f9d:
    rst $38
    rst $38

jr_006_7f9f:
    rst $38
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
    ld hl, sp-$08
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
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    rst $38
    rst $38
    dec [hl]
    inc e
    dec [hl]
    inc e
    db $10
    inc c
    db $10
    inc c
    add hl, bc
    inc c
    ld c, $00
    nop
    nop
    rst $38
    rst $38
    inc e
    ld h, e
    inc e
    ld h, e
    inc c
    dec sp
    inc c
    ccf
    inc c
    inc de
    nop
    ld c, $00
    nop
    rst $38
    rst $38
    ld b, b
    nop
    ld b, c
    ld bc, $0383
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    ret nz

    ld bc, $03c1
    add e
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
