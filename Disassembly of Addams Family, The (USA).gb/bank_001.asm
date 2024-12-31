; Disassembly of "Addams Family, The (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld e, h
    ld e, h
    ld e, h
    cp $07
    db $10
    ld b, a
    ld c, a
    ld c, l
    ld b, l
    ld e, d
    rst $38
    ld [bc], a
    ld c, $49
    jr nz, @+$59

    ld b, c
    ld d, e
    jr nz, jr_001_4056

    ld b, d
    ld c, a
    ld d, l
    ld d, h
    jr nz, jr_001_406f

    ld c, a
    jr nz, jr_001_4060

    ld b, l
    cp $08
    rrca
    ld c, b
    ld d, l
    ld d, d
    ld d, h
    ld e, h
    rst $38
    ld b, $0e
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_001_4070

    ld d, d
    ld b, l
    cp $06
    db $10
    ld c, l
    ld e, c
    jr nz, jr_001_4080

    ld b, l
    ld d, d
    ld c, a
    rst $38
    rst $38
    inc b
    dec c
    ld c, a
    ld c, b
    ld c, b
    jr nz, jr_001_4091

    ld e, c
    jr nz, @+$4a

    ld b, l
    ld b, c
    ld b, h
    ld e, l
    ld e, l
    ld e, l
    cp $06
    rrca
    ld b, a
    ld c, a
    ld c, l
    ld b, l
    ld e, d
    ld e, h

jr_001_4056:
    ld e, h
    ld e, h
    rst $38
    ld [bc], a
    dec c
    ld c, a
    ld c, b
    jr nz, jr_001_40ad

    ld c, a

jr_001_4060:
    ld e, h
    jr nz, jr_001_40b7

    ld d, l
    ld c, h
    ld c, h
    ld e, c
    jr nz, jr_001_40b1

    ld b, c
    ld d, e
    cp $03
    ld c, $4d

jr_001_406f:
    ld c, a

jr_001_4070:
    ld d, d
    ld d, h
    ld c, c
    ld b, e
    ld c, c
    ld b, c
    jr nz, @+$4b

    ld c, [hl]
    jr nz, @+$56

    ld c, b
    ld b, l
    cp $03
    rrca

jr_001_4080:
    ld c, h
    ld c, a
    ld d, a
    ld b, l
    ld d, d
    jr nz, jr_001_40ca

    ld c, b
    ld b, c
    ld c, l
    ld b, d
    ld b, l
    ld d, d
    ld e, h
    cp $03
    db $10

jr_001_4091:
    ld d, h
    ld c, a
    jr nz, jr_001_40e9

    ld c, b
    ld b, l
    jr nz, jr_001_40dc

    ld b, l
    ld c, h
    ld c, h
    ld b, c
    ld d, d
    ld e, l
    ld e, l
    ld e, l
    cp $07
    ld de, $5548
    ld d, d
    ld d, d
    ld e, c
    ld e, h
    rst $38
    rst $38
    inc bc

jr_001_40ad:
    dec c
    ld d, a
    ld c, b
    ld b, c

jr_001_40b1:
    ld d, h
    jr nz, jr_001_40ff

    ld b, l
    ld d, b
    ld d, h

jr_001_40b7:
    jr nz, jr_001_4112

    ld c, a
    ld d, l
    ld e, e
    cp $01
    ld c, $49
    jr nz, jr_001_4119

    ld b, c
    ld d, e
    jr nz, jr_001_4108

    ld b, l
    ld b, a
    ld c, c
    ld c, [hl]

jr_001_40ca:
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, @+$56

    ld c, a
    cp $01
    rrca
    ld d, e
    ld c, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_001_4123

    ld b, l

jr_001_40dc:
    ld d, d
    ld b, l
    ld e, h
    jr nz, jr_001_4135

    ld c, b
    ld b, l
    ld d, e
    ld b, l
    cp $01
    db $10
    ld c, b

jr_001_40e9:
    ld c, a
    ld d, h
    jr nz, jr_001_4130

    ld c, a
    ld b, c
    ld c, h
    ld d, e
    jr nz, @+$4f

    ld b, c
    ld e, c
    jr nz, jr_001_413f

    ld b, l
    ld c, h
    ld d, b
    cp $03
    ld de, $4f59

jr_001_40ff:
    ld d, l
    jr nz, jr_001_414e

    ld b, c
    ld d, h
    ld b, l
    ld d, d
    jr nz, jr_001_4157

jr_001_4108:
    ld c, [hl]
    ld e, l
    ld e, l
    rst $38
    rst $38
    nop
    dec c
    ld d, h
    ld c, b
    ld b, c

jr_001_4112:
    ld c, [hl]
    ld c, e
    ld d, e
    jr nz, jr_001_415d

    ld b, c
    ld d, h

jr_001_4119:
    ld c, b
    ld b, l
    ld d, d
    inc l
    jr nz, jr_001_416c

    ld b, c
    ld e, c
    ld b, d
    ld b, l

jr_001_4123:
    cp $01
    ld c, $4d
    ld e, c
    jr nz, jr_001_416c

    ld d, l
    ld c, c
    ld c, h
    ld b, h
    ld c, c
    ld c, [hl]

jr_001_4130:
    ld b, a
    jr nz, jr_001_4175

    ld c, h
    ld c, a

jr_001_4135:
    ld b, e
    ld c, e
    ld d, e
    cp $02
    rrca
    ld d, a
    ld c, c
    ld c, h
    ld c, h

jr_001_413f:
    jr nz, jr_001_4189

    ld b, l
    ld c, h
    ld d, b
    jr nz, jr_001_419f

    ld c, a
    ld d, l
    ld e, l
    ld e, l
    cp $05
    db $10
    ld b, a

jr_001_414e:
    ld c, a
    ld c, a
    ld b, h
    jr nz, jr_001_419f

    ld d, l
    ld b, e
    ld c, e
    ld e, l

jr_001_4157:
    ld e, l
    rst $38
    rst $38
    nop
    dec c
    ld d, h

jr_001_415d:
    ld c, b
    ld b, c
    ld c, [hl]
    ld c, e
    ld d, e
    jr nz, jr_001_41aa

    ld b, c
    ld d, h
    ld c, b
    ld b, l
    ld d, d
    inc l
    jr nz, jr_001_41b5

jr_001_416c:
    jr nz, jr_001_41c5

    ld b, c
    ld d, e
    cp $02
    ld c, $53
    ld d, h

jr_001_4175:
    ld b, c
    ld d, d
    ld d, h
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_001_41d1

    ld c, a
    jr nz, @+$48

    ld b, l
    ld b, l
    ld c, h
    cp $01
    rrca
    ld b, e
    ld c, a
    ld c, l

jr_001_4189:
    ld b, [hl]
    ld c, a
    ld d, d
    ld d, h
    ld b, c
    ld b, d
    ld c, h
    ld b, l
    jr nz, jr_001_41db

    ld b, l
    ld d, d
    ld b, l
    ld e, h
    cp $01
    db $10
    ld c, b
    ld b, l
    ld d, d
    ld b, l
    daa

jr_001_419f:
    ld d, e
    jr nz, jr_001_41e3

    jr nz, @+$49

    ld c, a
    ld c, h
    ld b, [hl]
    jr nz, jr_001_41ec

    ld c, h

jr_001_41aa:
    ld d, l
    ld b, d
    cp $04
    ld de, $4f54
    jr nz, @+$4a

    ld b, l
    ld c, h

jr_001_41b5:
    ld d, b
    jr nz, jr_001_4211

    ld c, a
    ld d, l
    ld e, l
    ld e, l
    rst $38
    ld [bc], a
    dec c
    ld c, c
    jr nz, jr_001_420a

    ld c, a
    ld d, b
    ld b, l

jr_001_41c5:
    jr nz, jr_001_4220

    ld c, a
    ld d, l
    jr nz, jr_001_420e

    ld b, c
    ld c, [hl]
    cp $07
    ld c, $53

jr_001_41d1:
    ld d, a
    ld c, c
    ld c, l
    ld e, h
    ld e, h
    rst $38
    rst $38
    nop
    dec c
    ld d, h

jr_001_41db:
    ld c, b
    ld b, c
    ld c, [hl]
    ld c, e
    jr nz, jr_001_423a

    ld c, a
    ld d, l

jr_001_41e3:
    jr nz, jr_001_4238

    ld c, c
    ld d, d
    inc l
    jr nz, jr_001_4233

    jr nz, @+$45

jr_001_41ec:
    ld b, c
    ld c, [hl]
    cp $01
    ld c, $4f
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld d, d
    jr nz, jr_001_4251

    ld c, a
    ld d, l
    jr nz, jr_001_424a

    ld c, a
    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld b, a
    cp $01
    rrca
    ld b, d
    ld d, l
    ld d, h
    jr nz, jr_001_4257

jr_001_420a:
    ld e, c
    jr nz, jr_001_4254

    ld d, d

jr_001_420e:
    ld b, c
    ld d, h
    ld c, c

jr_001_4211:
    ld d, h
    ld d, l
    ld b, h
    ld b, l
    ld e, l
    ld e, l
    cp $01
    db $10
    ld b, c
    ld c, [hl]
    ld b, h
    jr nz, jr_001_4273

    ld c, b

jr_001_4220:
    ld b, l
    ld d, e
    ld b, l
    jr nz, jr_001_426e

    ld b, e
    ld b, l
    ld b, e
    ld d, l
    ld b, d
    ld b, l
    ld d, e
    rst $38
    rst $38
    ld bc, $540d
    ld c, b
    ld b, l

jr_001_4233:
    jr nz, jr_001_427b

    ld b, c
    ld c, l
    ld c, c

jr_001_4238:
    ld c, h
    ld e, c

jr_001_423a:
    daa
    ld d, e
    jr nz, jr_001_4286

    ld c, a
    ld d, l
    ld d, e
    ld b, l
    cp $01
    ld c, $48
    ld b, c
    ld d, e
    jr nz, jr_001_428c

jr_001_424a:
    ld b, l
    ld b, l
    ld c, [hl]
    jr nz, jr_001_42a1

    ld b, l
    ld b, e

jr_001_4251:
    ld c, h
    ld b, c
    ld c, c

jr_001_4254:
    ld c, l
    ld b, l
    ld b, h

jr_001_4257:
    cp $02
    rrca
    ld d, h
    ld c, b
    ld b, c
    ld c, [hl]
    ld c, e
    ld d, e
    jr nz, jr_001_42b6

    ld c, a
    jr nz, jr_001_42ac

    ld c, a
    ld c, l
    ld b, l
    ld e, d
    daa
    cp $06
    db $10
    ld c, b

jr_001_426e:
    ld b, l
    ld d, d
    ld c, a
    ld c, c
    ld d, e

jr_001_4273:
    ld c, l
    ld e, l
    rst $38
    nop
    dec c
    ld d, h
    ld c, b
    ld b, l

jr_001_427b:
    jr nz, @+$46

    ld b, l
    ld d, h
    ld b, l
    ld d, d
    ld c, l
    ld c, c
    ld c, [hl]
    ld b, c
    ld d, h

jr_001_4286:
    ld c, c
    ld c, a
    ld c, [hl]
    jr nz, jr_001_42da

    ld b, [hl]

jr_001_428c:
    cp $01
    rrca
    ld d, h
    ld c, b
    ld b, l
    jr nz, jr_001_42da

    ld b, c
    ld c, l
    ld c, c
    ld c, h
    ld e, c
    jr nz, jr_001_42e3

    ld b, c
    ld d, e
    jr nz, jr_001_42f6

    ld c, a
    ld c, [hl]

jr_001_42a1:
    cp $02
    ld de, $4854
    ld b, l
    jr nz, jr_001_42ed

    ld b, c
    ld e, c
    ld e, l

jr_001_42ac:
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    rst $38
    dec b
    dec c
    ld d, b

jr_001_42b6:
    ld c, a
    ld c, c
    ld d, e
    ld c, a
    ld c, [hl]
    jr nz, jr_001_4311

    ld c, b
    ld b, l
    ld c, l
    cp $04
    rrca
    ld d, h
    ld c, b
    ld d, d
    ld c, a
    ld d, h
    ld d, h
    ld c, h
    ld b, l
    jr nz, jr_001_4321

    ld c, b
    ld b, l
    ld c, l
    cp $06
    ld de, $5548
    ld d, d
    ld d, h
    jr nz, jr_001_432d

    ld c, b

jr_001_42da:
    ld b, l
    ld c, l
    rst $38
    inc bc
    dec c
    ld d, h
    ld c, b
    ld b, l
    ld e, c

jr_001_42e3:
    jr nz, jr_001_433c

    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_001_432d

    ld c, a
    ld c, l
    ld b, l

jr_001_42ed:
    cp $01
    ld c, $42
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_001_433c

jr_001_42f6:
    ld c, a
    ld d, d
    jr nz, @+$4f

    ld c, a
    ld d, d
    ld b, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    cp $06
    db $10
    ld b, c
    ld c, [hl]
    ld b, h
    jr nz, jr_001_4361

    ld c, b
    ld e, c
    ld e, e
    rst $38
    inc b
    ld c, $42

jr_001_4311:
    ld b, l
    ld b, e
    ld b, c
    ld d, l
    ld d, e
    ld b, l
    jr nz, jr_001_436d

    ld c, b
    ld b, l
    ld e, c
    cp $05
    rrca
    ld c, h
    ld c, c

jr_001_4321:
    ld c, e
    ld b, l
    jr nz, jr_001_436e

    ld d, h
    ld e, h
    ld e, h
    ld e, h
    rst $38
    rlca
    ld c, $54

jr_001_432d:
    jr nz, jr_001_4377

    jr nz, @+$47

    cp $07
    db $10
    ld b, l
    jr nz, jr_001_4385

    jr nz, jr_001_437d

    rst $38
    ld b, $0d

jr_001_433c:
    ld b, e
    ld c, a
    ld b, h
    ld b, l
    ld b, h
    jr nz, jr_001_4385

    ld e, c
    cp $02
    ld c, $47
    ld b, l
    ld d, d
    ld b, c
    ld c, h
    ld b, h
    jr nz, jr_001_43a6

    ld b, l
    ld b, c
    ld d, h
    ld c, b
    ld b, l
    ld d, d
    ld d, l
    ld d, b
    cp $04
    rrca
    ld b, a
    ld d, d
    ld b, c
    ld d, b
    ld c, b
    ld c, c
    ld b, e

jr_001_4361:
    ld d, e
    jr nz, jr_001_43a5

    ld c, [hl]
    ld b, h
    cp $04
    db $10
    ld b, a
    ld b, c
    ld c, l
    ld b, l

jr_001_436d:
    ld d, e

jr_001_436e:
    jr nz, jr_001_43b4

    ld b, l
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    cp $02

jr_001_4377:
    ld de, $5242
    ld c, c
    ld b, c
    ld c, [hl]

jr_001_437d:
    jr nz, @+$4c

    ld e, l
    ld b, [hl]
    ld c, h
    ld b, c
    ld c, [hl]
    ld b, c

jr_001_4385:
    ld b, a
    ld b, c
    ld c, [hl]
    rst $38
    nop
    dec c
    ld b, c
    ld b, h
    ld b, h
    ld c, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, jr_001_43de

    ld d, d
    ld b, c
    ld d, b
    ld c, b
    ld c, c
    ld b, e
    ld d, e
    cp $04
    ld c, $53
    ld c, c
    ld c, l
    ld c, a

jr_001_43a5:
    ld c, [hl]

jr_001_43a6:
    jr nz, jr_001_43ea

    ld d, l
    ld d, h
    ld c, h
    ld b, l
    ld d, d
    cp $02
    rrca
    ld c, l
    ld d, l
    ld d, e
    ld c, c

jr_001_43b4:
    ld b, e
    jr nz, jr_001_43f8

    ld c, [hl]
    ld b, h
    jr nz, jr_001_4400

    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, e
    ld d, h
    ld d, e
    cp $04
    db $10
    ld c, l
    ld b, c
    ld d, d
    ld c, e
    jr nz, jr_001_440d

    ld c, a
    ld c, a
    ld c, e
    ld d, e
    ld b, l
    ld e, c
    rst $38
    inc bc
    ld c, $50
    ld c, h
    ld b, c
    ld e, c
    jr nz, jr_001_442d

    ld b, l
    ld d, e
    ld d, h
    ld b, l
    ld b, h

jr_001_43de:
    jr nz, jr_001_4422

    ld e, c
    cp $05
    rrca
    ld d, h
    ld c, c
    ld c, l
    jr nz, jr_001_4440

    ld b, l

jr_001_43ea:
    ld c, h
    ld b, e
    ld c, b
    cp $04
    db $10
    ld b, a
    ld b, c
    ld d, d
    ld b, l
    ld d, h
    ld c, b
    jr nz, jr_001_443a

jr_001_43f8:
    ld b, l
    ld d, h
    ld d, h
    ld d, e
    rst $38
    ld b, $0d
    ld d, h

jr_001_4400:
    ld c, b
    ld b, c
    ld c, [hl]
    ld c, e
    ld d, e
    jr nz, @+$56

    ld c, a
    cp $08
    ld c, $52
    ld b, l

jr_001_440d:
    ld b, h
    ld b, h
    cp $04
    rrca
    ld d, e
    ld c, c
    ld c, l
    ld c, a
    ld c, [hl]
    jr nz, @+$44

    ld d, l
    ld d, h
    ld c, h
    ld b, l
    ld d, d
    cp $02
    db $10
    ld d, a

jr_001_4422:
    ld b, c
    ld d, d
    ld d, d
    ld b, l
    ld c, [hl]
    jr nz, @+$4e

    ld b, c
    ld c, [hl]
    ld b, e
    ld b, c

jr_001_442d:
    ld d, e
    ld c, b
    ld c, c
    ld d, d
    ld b, l
    cp $04
    ld de, $4f4a
    ld c, h
    ld c, h
    ld e, c

jr_001_443a:
    jr nz, @+$55

    ld d, h
    ld b, l
    ld d, [hl]
    ld b, l

jr_001_4440:
    rst $38
    rst $38
    nop
    rrca
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_001_449e

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_001_44a5

    ld c, a
    jr nz, jr_001_4496

    ld b, l
    ld b, a
    ld c, c
    ld c, [hl]
    rst $38
    rst $38
    ld bc, $540e
    ld c, b
    ld b, l
    jr nz, @+$43

    ld b, h
    ld b, h
    ld b, c
    ld c, l
    ld d, e
    jr nz, jr_001_44ae

    ld b, c
    ld c, l
    ld c, c
    ld c, h
    ld e, c
    cp $01
    rrca
    ld c, b
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_001_44b8

    ld b, l
    ld b, l
    ld c, [hl]
    jr nz, jr_001_44c0

    ld d, [hl]
    ld c, c
    ld b, e
    ld d, h
    ld b, l
    ld b, h
    ld e, h
    rst $38
    ld [bc], a
    ld c, $49
    ld c, [hl]
    jr nz, jr_001_44ca

    jr nz, jr_001_44d7

    ld b, c
    ld d, e
    ld d, h
    jr nz, jr_001_44d4

    ld c, c
    ld d, h
    ld b, e
    ld c, b
    cp $02

jr_001_4496:
    rrca
    ld b, c
    ld d, h
    ld d, h
    ld b, l
    ld c, l
    ld d, b
    ld d, h

jr_001_449e:
    jr nz, jr_001_44f4

    ld c, a
    jr nz, jr_001_44f6

    ld b, c
    ld d, [hl]

jr_001_44a5:
    ld b, l
    cp $02
    db $10
    ld d, h
    ld c, b
    ld b, l
    ld c, c
    ld d, d

jr_001_44ae:
    jr nz, jr_001_44f8

    ld c, a
    ld c, l
    ld b, l
    jr nz, jr_001_44fb

    ld d, d
    ld c, a
    ld c, l

jr_001_44b8:
    rst $38
    inc bc
    dec c
    ld d, h
    ld d, l
    ld c, h
    ld c, h
    ld e, c

jr_001_44c0:
    jr nz, jr_001_4503

    ld c, h
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, h
    inc l
    cp $00

jr_001_44ca:
    ld c, $54
    ld c, b
    ld b, l
    jr nz, jr_001_4516

    ld b, c
    ld c, l
    ld c, c
    ld c, h

jr_001_44d4:
    ld e, c
    jr nz, @+$43

jr_001_44d7:
    ld d, h
    ld d, h
    ld c, a
    ld d, d
    ld c, [hl]
    ld b, l
    ld e, c
    inc l
    cp $02
    rrca
    ld d, a
    ld c, b
    ld c, a
    jr nz, jr_001_4530

    ld d, e
    jr nz, jr_001_452b

    ld b, [hl]
    ld d, h
    ld b, l
    ld d, d
    jr nz, @+$56

    ld c, b
    ld b, l
    cp $02

jr_001_44f4:
    db $10
    ld b, [hl]

jr_001_44f6:
    ld b, c
    ld c, l

jr_001_44f8:
    ld c, c
    ld c, h
    ld e, c

jr_001_44fb:
    jr nz, jr_001_4543

    ld c, a
    ld d, d
    ld d, h
    ld d, l
    ld c, [hl]
    ld b, l

jr_001_4503:
    inc l
    rst $38
    ld [bc], a
    dec c
    ld c, l
    ld c, a
    ld d, d
    ld d, h
    ld c, c
    ld b, e
    ld c, c
    ld b, c
    inc l
    jr nz, jr_001_455e

    ld d, l
    ld d, d
    ld b, e
    ld c, b

jr_001_4516:
    inc l
    cp $00
    ld c, $47
    ld d, d
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld e, c
    inc l
    jr nz, jr_001_4573

    ld d, l
    ld b, a
    ld d, e
    ld c, h
    ld b, l
    ld e, c
    jr nz, jr_001_456c

jr_001_452b:
    ld c, [hl]
    ld b, h
    cp $00
    rrca

jr_001_4530:
    ld d, a
    ld b, l
    ld b, h
    ld c, [hl]
    ld b, l
    ld d, e
    ld b, h
    ld b, c
    ld e, c
    jr nz, jr_001_458d

    ld b, l
    ld d, h
    ld d, l
    ld d, d
    ld c, [hl]
    jr nz, jr_001_4596

    ld c, a

jr_001_4543:
    cp $02
    db $10
    ld d, h
    ld c, a
    jr nz, jr_001_459e

    ld c, b
    ld b, l
    jr nz, jr_001_4596

    ld c, a
    ld d, l
    ld d, e
    ld b, l
    jr nz, jr_001_45a8

    ld c, a
    cp $00
    ld de, $4552
    ld b, c
    ld d, e
    ld c, a
    ld c, [hl]

jr_001_455e:
    jr nz, jr_001_45b7

    ld c, c
    ld d, h
    ld c, b
    jr nz, jr_001_45ad

    ld c, c
    ld c, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l

jr_001_456c:
    rst $38
    nop
    ld c, $47
    ld c, a
    ld c, l
    ld b, l

jr_001_4573:
    ld e, d
    jr nz, jr_001_45b7

    ld d, d
    ld d, d
    ld c, c
    ld d, [hl]
    ld b, l
    ld d, e
    jr nz, jr_001_45bf

    ld d, h
    jr nz, jr_001_45d5

    ld c, b
    ld b, l
    cp $01
    rrca
    ld c, b
    ld c, a
    ld d, l
    ld d, e
    ld b, l
    jr nz, jr_001_45e1

jr_001_458d:
    ld c, a
    jr nz, @+$48

    ld c, c
    ld c, [hl]
    ld b, h
    jr nz, @+$56

    ld c, b

jr_001_4596:
    ld b, l
    cp $01
    db $10
    ld b, [hl]
    ld b, c
    ld c, l
    ld c, c

jr_001_459e:
    ld c, h
    ld e, c
    jr nz, @+$4f

    ld c, c
    ld d, e
    ld d, e
    ld c, c
    ld c, [hl]
    ld b, a

jr_001_45a8:
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l

jr_001_45ad:
    rst $38
    ld [bc], a
    dec c
    ld c, c
    ld d, h
    jr nz, jr_001_45fd

    ld d, e
    jr nz, @+$50

jr_001_45b7:
    ld c, a
    ld d, a
    jr nz, @+$57

    ld d, b
    jr nz, jr_001_4612

    ld c, a

jr_001_45bf:
    cp $00
    ld c, $47
    ld c, a
    ld c, l
    ld b, l
    ld e, d
    jr nz, jr_001_461d

    ld c, a
    jr nz, @+$55

    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    ld c, c
    ld d, d

jr_001_45d5:
    cp $02
    rrca
    ld c, b
    ld c, a
    ld c, l
    ld b, l
    inc l
    jr nz, jr_001_4627

    ld c, c
    ld d, e

jr_001_45e1:
    jr nz, @+$48

    ld b, c
    ld c, l
    ld c, c
    ld c, h
    ld e, c
    cp $00
    db $10
    ld b, c
    ld c, [hl]
    ld b, h
    jr nz, jr_001_4644

    ld c, b
    ld b, l
    ld c, c
    ld d, d
    jr nz, jr_001_4648

    ld c, c
    ld b, e
    ld c, b
    ld b, l
    ld d, e
    ld e, l
    ld e, l

jr_001_45fd:
    ld e, l
    ld e, l
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$c070]
    ld c, a
    ld a, [$c063]
    or a
    ret nz

    ld hl, $c075
    ld b, $ff

Jump_001_4611:
jr_001_4611:
    ld a, [hl]

jr_001_4612:
    cp $ff
    ret z

    and $7f
    cp c
    jr z, jr_001_461d

jr_001_461a:
    inc hl
    jr jr_001_4611

jr_001_461d:
    inc b
    bit 7, [hl]
    jr z, jr_001_461a

    ld a, c
    ld [$c0d1], a
    ld a, b

jr_001_4627:
    ld [$c0d2], a
    ld a, l
    ld [$c0d7], a
    ld a, h
    ld [$c0d8], a
    ld hl, $46bc
    ld a, $ff
    ldh [$b2], a

jr_001_4639:
    ld a, [hl]
    cp $ff
    jp z, Jump_000_1782

    cp c
    jr nz, jr_001_464a

    ldh a, [$b2]

jr_001_4644:
    inc a
    ldh [$b2], a
    cp b

jr_001_4648:
    jr z, jr_001_4650

jr_001_464a:
    ld de, $0006
    add hl, de
    jr jr_001_4639

jr_001_4650:
    inc hl
    ld a, [$dc8e]
    dec a
    ld c, a
    ld a, [hl+]
    cpl
    inc a
    add c
    ld [$c0d5], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ldh [$b2], a
    ld a, [$c0d5]
    ld hl, $d5e0
    call Call_000_1b67
    ld d, $00
    add hl, de
    ld a, [$dc8b]
    ld e, a
    ldh a, [$b2]

jr_001_4678:
    push hl
    push bc

jr_001_467a:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_001_467a

    pop bc
    pop hl
    add hl, de
    dec b
    jr nz, jr_001_4678

    ld a, [$c0d7]
    ld l, a
    ld a, [$c0d8]
    ld h, a
    inc hl
    ld a, [$c0d1]
    ld c, a
    ld a, [$c0d2]
    ld b, a
    jp Jump_001_4611


Call_001_4699:
    ld e, a
    ld hl, $c075
    ld b, $00

jr_001_469f:
    ld a, [hl]
    cp $ff
    ret z

    and $7f
    cp e
    jr nz, jr_001_46b1

    ld a, b
    inc b
    cp c
    jr nz, jr_001_46b1

    ld a, [hl]
    xor $80
    ld [hl], a

jr_001_46b1:
    inc hl
    jr jr_001_469f

    nop
    nop
    ld [bc], a
    inc b
    dec b
    dec b
    dec bc
    rst $38
    nop
    inc bc
    inc c
    inc bc
    ld [bc], a
    ld b, c
    nop
    ld [bc], a
    ld b, a
    ld [bc], a
    ld [bc], a
    rla
    ld [bc], a
    inc bc
    ld b, b
    inc bc
    ld [bc], a
    ld c, c
    inc b
    inc bc
    inc de
    inc bc
    inc bc
    ld b, d
    dec b
    ld [bc], a
    dec bc
    ld [bc], a
    ld [bc], a
    db $10
    dec b
    inc b
    ld d, h
    inc bc
    ld [bc], a
    inc d
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc a
    rst $38
    ld a, [$dcb7]
    or a
    ret z

    ld c, $00
    ld a, [$dc80]
    bit 1, a
    jr z, jr_001_46f7

    ld c, $fe

jr_001_46f7:
    bit 0, a
    jr z, jr_001_46fd

    ld c, $02

jr_001_46fd:
    ld a, [$d3c5]
    add c
    ld b, a
    ld a, [$c070]
    cp $09
    jr nz, jr_001_471f

    ld a, [$dc84]
    cp $14
    ret nz

    ld a, b
    cp $99
    ld c, $00
    jr nc, jr_001_471b

    cp $07
    ld c, $01
    ret nc

jr_001_471b:
    ld a, c
    jp Jump_001_6285


jr_001_471f:
    cp $0a
    jr nz, jr_001_4731

    ld a, [$dc84]
    cp $07
    ret nz

    ld a, b
    cp $07
    ld c, $00
    jr c, jr_001_471b

    ret


jr_001_4731:
    cp $0b
    jr nz, jr_001_4743

    ld a, [$dc84]
    cp $08
    ret nz

    ld a, b
    cp $99
    ld c, $00
    jr nc, jr_001_471b

    ret


jr_001_4743:
    cp $0d
    jr nz, jr_001_4755

    ld a, [$dc84]
    cp $15
    ret c

    ld a, b
    cp $99
    ld c, $00
    jr nc, jr_001_471b

    ret


jr_001_4755:
    cp $07
    jr nz, jr_001_4767

    ld a, [$dc84]
    cp $09
    ret c

    ld a, b
    cp $07
    ld c, $01
    jr c, jr_001_471b

    ret


jr_001_4767:
    cp $08
    jr nz, jr_001_4778

    ld a, [$dc84]
    or a
    ret nz

    ld a, b
    cp $07
    ld c, $05
    jr c, jr_001_471b

    ret


jr_001_4778:
    cp $0c
    ret nz

    ld a, [$dc84]
    cp $0f
    ret c

    ld a, b
    cp $07
    ld c, $04
    jr c, jr_001_471b

    ret


Call_001_4789:
    ld a, [$c1ed]
    and $7f
    ret z

    ld a, [$c1ea]
    or a
    jr nz, jr_001_4809

    ld a, [$ffa2]
    cp $46
    ret c

    ld hl, $c1d6
    call Call_000_09e1
    ld hl, $ffc7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0048
    add hl, de
    call Call_001_79ee
    ld a, h
    or a
    ret nz

    ld a, l
    add $40
    ld h, a
    ldh a, [$a1]
    cp l
    ret c

    ldh a, [$9a]
    cp $80
    ret c

    ld a, $01
    ldh [$a3], a
    ldh a, [$a1]
    cp h
    jr c, jr_001_47cc

    ld a, $ff
    ldh [$a3], a
    ret


jr_001_47cc:
    ldh a, [$a2]
    cp $60
    ret c

    xor a
    ldh [$a3], a
    ld a, $05
    ld [$c0ec], a
    ld a, $5c
    ld [$c0eb], a
    ld de, $7754
    push de
    ld de, $0050
    ld bc, $0000
    ld hl, $c1ed
    ldh a, [$8c]
    cp $02
    jr nz, jr_001_4801

    ld de, $0200
    ld a, [hl]
    sub $08
    ld [hl], a
    ret nc

    ld [hl], $00
    ld a, $4c
    ld [$c0eb], a
    ret


jr_001_4801:
    dec [hl]
    ret nz

    ld a, $4c
    ld [$c0eb], a
    ret


jr_001_4809:
    cp $01
    jr nz, jr_001_4858

    ldh a, [$a2]
    cp $40
    ret c

    ld a, [$c1eb]
    bit 6, a
    ret nz

    ldh a, [$9a]
    cp $80
    ret nc

    ld hl, $c1d6
    call Call_000_09e1
    ld hl, $ffc7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0054
    add hl, de
    call Call_001_79ee
    ld a, h
    or a
    ret nz

    ld a, l
    add $40
    ld h, a
    ldh a, [$a1]
    cp l
    ret c

    xor a
    ldh [$a3], a
    inc a
    ld [$c1dd], a
    ld a, [$c1eb]
    set 1, a
    ld [$c1eb], a
    ld hl, $c1ed
    dec [hl]
    ret z

    ld de, $0050
    ld bc, $0000
    jp Jump_001_7754


jr_001_4858:
    cp $02
    jr nz, jr_001_48c0

    ldh a, [$a2]
    cp $60
    ret c

    ldh a, [$9a]
    cp $80
    ret nc

    ld hl, $c1d6
    call Call_000_09e1
    ld hl, $ffc7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0054
    add hl, de
    call Call_001_79ee
    ld a, h
    or a
    ret nz

    ld a, l
    add $18
    ld h, a
    ldh a, [$a1]
    cp l
    ret c

    cp h
    ret nc

    ld a, $01
    ldh [$a3], a
    ld a, [$c1e3]
    or a
    ret nz

    ldh a, [$9a]
    cp $80
    ret nc

    xor a
    ldh [$a3], a
    ld a, [$c1eb]
    bit 1, a
    ret nz

    ld a, $01
    ld [$c1dd], a
    ldh a, [$8c]
    cp $01
    ld a, $01
    jr z, jr_001_48ac

    ld a, $02

jr_001_48ac:
    ld [$c1ec], a
    ld a, [$c1eb]
    set 1, a
    ld [$c1eb], a
    ld de, $0050
    ld bc, $0000
    jp Jump_001_7754


jr_001_48c0:
    cp $03
    jr nz, jr_001_4908

    ld hl, $d3cb
    call Call_000_09e1
    ldh a, [$a3]
    or a
    ret z

    call Call_001_762b
    ldh a, [$b6]
    add $20
    ld [$ffb7], a
    ldh a, [$b8]
    add $28
    ldh [$b9], a
    call Call_001_4a10
    call Call_001_76e8
    ret nc

    ld a, $01
    ldh [$a3], a
    ldh a, [$c9]
    cp $02
    ret nc

    ld de, $0050
    ld bc, $0000
    call Call_001_7754
    xor a
    ldh [$a3], a
    ld hl, $d3e2
    dec [hl]
    ret nz

    ld de, $0000
    ld bc, $0001
    jp Jump_001_7754


jr_001_4908:
    cp $04
    jr nz, jr_001_494c

    ld hl, $d3e6
    call Call_000_09e1
    ldh a, [$a3]
    dec a
    ret z

    call Call_001_762b
    ldh a, [$b6]
    add $28
    ld [$ffb7], a
    ldh a, [$b8]
    add $10
    ldh [$b9], a
    call Call_001_4a10
    call Call_001_76e8
    ret nc

    ld a, $01
    ldh [$a3], a
    ld de, $0050
    ld bc, $0000
    call Call_001_7754
    xor a
    ldh [$a3], a
    ld hl, $d3fd
    dec [hl]
    ret nz

    inc [hl]
    ld de, $0000
    ld bc, $0001
    jp Jump_001_7754


jr_001_494c:
    cp $06
    ret nz

    ld hl, $d3cb
    call Call_000_09e1
    ldh a, [$a3]
    or a
    ret z

    call Call_001_762b
    ldh a, [$b6]
    add $10
    ld [$ffb7], a
    ldh a, [$b8]
    add $04
    ldh [$b8], a
    add $1c
    ldh [$b9], a
    ldh a, [$ce]
    bit 2, a
    jr z, jr_001_497d

    ldh a, [$b8]
    add $0c
    ldh [$b8], a
    add $10
    ldh [$b9], a

jr_001_497d:
    call Call_001_4a10
    call Call_001_76e8
    ret nc

    ld a, $01
    ldh [$a3], a
    ld de, $0050
    ld bc, $0000
    call Call_001_7754
    xor a
    ldh [$a3], a
    ld hl, $d3e2
    dec [hl]
    ret nz

    inc [hl]
    ret


Jump_001_499b:
    ldh a, [$8c]
    cp $03
    ret nc

    ldh a, [$a1]
    cp $ff
    jr nz, jr_001_49ab

    ldh a, [$a2]
    cp $ff
    ret z

jr_001_49ab:
    ld a, [$c063]
    or a
    call nz, Call_001_4789
    ld hl, $d3cb
    ld b, $0f

jr_001_49b7:
    ld a, [hl]
    cp $ff
    jr z, jr_001_4a08

    push bc
    push hl
    ld de, $0019
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_001_4a06

    ld de, $ffe7
    add hl, de
    call Call_000_09e1
    ldh a, [$d8]
    cp $05
    jr z, jr_001_4a06

    cp $07
    jr c, jr_001_49f3

    cp $0c
    jr c, jr_001_4a06

    cp $13
    jr z, jr_001_4a06

    cp $1c
    jr z, jr_001_4a06

    cp $1e
    jr z, jr_001_4a06

    cp $1f
    jr z, jr_001_4a06

    cp $2d
    jr z, jr_001_4a06

    cp $36
    jr z, jr_001_4a06

jr_001_49f3:
    call Call_001_762b
    call Call_001_4a10
    call Call_001_76e8
    jr nc, jr_001_4a06

    call Call_001_4a2b
    pop hl
    push hl
    call Call_000_09f4

jr_001_4a06:
    pop hl
    pop bc

jr_001_4a08:
    ld de, $001b
    add hl, de
    dec b
    jr nz, jr_001_49b7

    ret


Call_001_4a10:
    ldh a, [$8c]

Call_001_4a12:
    ld hl, $4a25
    call Call_000_1b67
    ldh a, [$a2]
    add h
    ld d, a
    add l
    ld h, a
    ldh a, [$a1]
    ld e, a
    add $10
    ld l, a
    ret


    add hl, bc
    inc b
    rlca
    dec b
    ld a, [bc]
    inc b

Call_001_4a2b:
    xor a
    ldh [$a3], a
    ldh a, [$db]
    inc a
    jr z, jr_001_4a49

    ld hl, $ffdb
    dec [hl]
    ld a, [hl]
    and $3f
    ret nz

    ldh a, [$d8]
    ld hl, $4a4c
    call Call_000_1b74
    ld bc, $0000
    jp Jump_001_7754


jr_001_4a49:
    ld a, $01
    ldh [$a3], a
    ret


    nop
    ld bc, $0100
    ld d, b
    ld [bc], a
    ld d, b
    ld [bc], a
    nop
    inc b
    nop
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
    ld bc, $0100
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0250
    nop
    ld bc, $0100
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    ld [$0400], sp
    nop
    ld [$0400], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [bc], a
    ld d, b
    ld bc, $0300
    nop
    ld bc, $0050
    ld d, b
    nop
    nop
    nop
    ld d, b
    ld bc, $0075

Call_001_4abe:
Jump_001_4abe:
    ld a, [$c0ca]
    or a
    ret nz

    call Call_001_76d3
    ret nc

Call_001_4ac7:
Jump_001_4ac7:
    ld a, [$c0ca]
    or a
    ret nz

    ldh a, [$a0]
    ld hl, $4b02
    call Call_000_1b61
    ld a, [hl]
    or a
    ret z

    srl a
    ret z

    ld [$c0cc], a
    ld a, $01
    ld [$c0ca], a
    ld a, $20
    ld [$c0ce], a
    ld a, [$dca2]
    cp $02
    ret z

    cp $01
    ret z

    ldh a, [$96]
    bit 0, a
    ld a, $04
    jr nz, jr_001_4afa

    ld a, $84

jr_001_4afa:
    ld [$c0d0], a
    ld a, $04
    ld [$c0cf], a
    ret


    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [$0404], sp
    inc b
    nop
    inc b
    nop
    nop
    nop
    ld [bc], a
    db $10
    db $10
    stop
    inc b
    nop
    nop
    nop
    ld [$0008], sp
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
    rrca
    nop
    nop
    ld [bc], a
    inc bc
    dec b
    dec b
    inc b
    inc b
    ld [$0404], sp
    ld hl, $c07f
    call Call_000_1b61
    ld a, [hl]
    cp $ff
    jr nz, jr_001_4b51

    xor a
    ld [$c086], a
    ld hl, $c07f
    call Call_000_1b61
    ld a, [hl]

jr_001_4b51:
    ld [$c071], a
    ld a, $ff
    ld [$c1fe], a
    ld a, [$c086]
    ld hl, $c087
    call Call_000_1b61
    ld a, [hl]
    ld [$c1fa], a
    ret


    ld a, [$c063]
    or a
    ret nz

    ld a, [$dcb7]
    or a
    jr z, jr_001_4b88

    ld a, [$dc85]
    ld c, a
    ld a, [$dc83]
    ld [$dc85], a
    cp c
    jr nz, jr_001_4b88

    ld a, [$dc86]
    ld c, a
    ld a, [$dc84]
    cp c
    ret z

jr_001_4b88:
    ld a, [$dc84]
    ld [$dc86], a
    ld hl, $d680
    xor a
    ld [$c0d7], a

Jump_001_4b95:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    ld [$c0d5], a
    bit 1, a
    jp nz, Jump_001_4d03

    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, d
    or e
    jr z, jr_001_4bb2

    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_001_4d03


jr_001_4bb2:
    inc hl
    ld a, [hl+]
    ld [$c0d1], a
    ld c, a
    ld a, [$dcb7]
    or a
    jr nz, jr_001_4bf2

    ld a, [$dc8d]
    ld b, a
    ld a, [$dc83]
    inc a
    cp b
    jr c, jr_001_4bca

    sub b

jr_001_4bca:
    sub c
    jr nc, jr_001_4bd6

    cpl
    inc a
    cp $0e
    jp nc, Jump_001_4d03

    jr jr_001_4bdb

jr_001_4bd6:
    cp $05
    jp nc, Jump_001_4d03

jr_001_4bdb:
    ld a, [hl+]
    ld [$c0d2], a
    ld c, a
    ld a, [$dc8e]
    ld b, a
    sub c
    ld c, a
    ld a, [$dc84]
    add $0c
    cp c
    jp c, Jump_001_4d03

    jp Jump_001_4cae


jr_001_4bf2:
    ldh a, [$be]
    and $08
    srl a
    srl a
    srl a
    ld e, a
    ld a, [$dc8d]
    ld b, a
    ld a, [$dc83]
    inc a
    cp b
    jr c, jr_001_4c09

    sub b

jr_001_4c09:
    sub c
    jr nc, jr_001_4c25

    ld c, a
    ld a, [$dca8]
    bit 1, a

Call_001_4c12:
    jp nz, Jump_001_4d03

    ld a, c
    add e
    cpl
    inc a
    cp $0c
    jp c, Jump_001_4c54

    cp $0e
    jp nc, Jump_001_4d03

    jr jr_001_4c3a

jr_001_4c25:
    add e
    ld c, a
    ld a, [$dca8]
    bit 0, a
    jp nz, Jump_001_4d03

    ld a, c
    cp $02
    jp c, Jump_001_4d03

    cp $05
    jp nc, Jump_001_4c54

jr_001_4c3a:
    ld a, [hl+]
    ld [$c0d2], a
    ld c, a
    ld a, [$dc8e]
    ld b, a
    sub c
    ld c, a
    ld a, [$dc84]
    inc a
    cp b
    jr c, jr_001_4c8a

    ld a, c
    cp $09
    jp nc, Jump_001_4d03

    jr jr_001_4cae

Jump_001_4c54:
    ld a, [hl+]
    ld [$c0d2], a
    ld c, a
    ld a, [$dc8e]
    ld b, a
    sub c
    ld c, a
    ld a, b
    sub $02
    ld e, a
    ld a, [$dc84]
    ld b, a
    cp e
    jr c, jr_001_4c6c

    ld b, $00

jr_001_4c6c:
    ld a, b
    cp c
    jr nc, jr_001_4c7e

    add $09
    cp c
    jp c, Jump_001_4d03

    add $04
    cp c
    jp nc, Jump_001_4d03

    jr jr_001_4cae

jr_001_4c7e:
    ld a, b
    cp $04
    jr c, jr_001_4c85

    sub $04

jr_001_4c85:
    cp c
    jr nc, jr_001_4d03

    jr jr_001_4cae

jr_001_4c8a:
    ld a, [$dc84]
    add $09
    cp c
    jr nc, jr_001_4c99

    add $04
    cp c
    jr c, jr_001_4d03

    jr jr_001_4cae

jr_001_4c99:
    ld a, [$dc84]
    inc a
    cp c
    jr z, jr_001_4ca2

    jr nc, jr_001_4d03

jr_001_4ca2:
    ld a, [$dc84]
    cp $04
    jr c, jr_001_4cab

    sub $04

jr_001_4cab:
    cp c
    jr nc, jr_001_4d03

Jump_001_4cae:
jr_001_4cae:
    ld a, [hl]
    call Call_001_7db4
    jr c, jr_001_4d03

    ld de, $0001
    add hl, de
    ld e, l
    ld d, h
    ld a, [$c0d2]
    ld c, a
    ld a, [$dc8e]
    sub c
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, [$c0d1]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $0008
    add hl, bc
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, $06
    call Call_000_1b5b
    ld a, [$c0d1]
    ld c, a
    ld a, [$dc83]
    cp c
    ld a, $01
    jr c, jr_001_4cf4

    dec a

jr_001_4cf4:
    ld [de], a
    ld a, $07
    call Call_000_1b5b
    ld a, [$c0d7]
    ld [de], a
    pop hl
    set 1, [hl]
    jr jr_001_4d04

Jump_001_4d03:
jr_001_4d03:
    pop hl

jr_001_4d04:
    ld de, $0006
    add hl, de
    ld a, [$c0d7]
    inc a
    ld [$c0d7], a
    jp Jump_001_4b95


    ld a, [$c063]
    or a
    ret nz

    ld hl, $d3cb
    ld a, $01
    ldh [$b2], a
    ld b, $0f

jr_001_4d20:
    ld a, [hl]
    cp $ff
    jr z, jr_001_4d31

    push bc
    push hl
    ld bc, $0006
    add hl, bc
    ld a, [hl]
    or a
    jr z, jr_001_4d3e

    pop hl
    pop bc

jr_001_4d31:
    ldh a, [$b2]
    inc a
    ldh [$b2], a
    ld de, $001b
    add hl, de
    dec b
    jr nz, jr_001_4d20

    ret


jr_001_4d3e:
    ld bc, $fffa
    add hl, bc
    call Call_000_0a1a
    ldh a, [$9d]
    cp $ff
    jr z, jr_001_4d61

    or a
    ld hl, $d680
    jr z, jr_001_4d58

    ld de, $0006

jr_001_4d54:
    add hl, de
    dec a
    jr nz, jr_001_4d54

jr_001_4d58:
    res 1, [hl]
    inc hl
    ld de, $0002
    ld [hl], e
    inc hl
    ld [hl], d

jr_001_4d61:
    ldh a, [$b2]
    ld hl, $d630
    add a
    call Call_000_1b61
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    pop hl
    push hl
    ld bc, $001b
    ld a, $ff
    call Call_000_1b90
    ld hl, $4d2f
    push hl

Call_001_4d7c:
    ld de, $d670
    ld b, $10

jr_001_4d81:
    ld a, [de]
    ld c, a
    ldh a, [$b2]
    cp c
    jr nz, jr_001_4da8

    ld a, $ff
    ld [de], a
    ld a, b
    cpl
    inc a
    add $10
    ld hl, $4d7c
    cp $11
    jp nc, Jump_000_1782

    ld hl, $c08e
    call Call_000_1b67
    ld c, $02
    xor a

jr_001_4da1:
    ld [hl+], a
    ld [hl+], a
    inc l
    inc l
    dec c
    jr nz, jr_001_4da1

jr_001_4da8:
    inc de
    dec b
    jr nz, jr_001_4d81

    ret


Call_001_4dad:
    ld hl, $d670
    ld b, $10
    ldh [$b2], a

jr_001_4db4:
    cp [hl]
    jr nz, jr_001_4de4

    ld a, b
    cpl
    inc a
    add $10
    ld de, $4dad
    cp $11
    jp nc, Jump_000_1782

    add a
    ld de, $c08e
    jr nc, jr_001_4dcb

    inc d

jr_001_4dcb:
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld d, a
    ld e, c
    ld c, $02
    xor a

jr_001_4dd9:
    ld [de], a
    inc e
    ld [de], a
    inc e
    inc e
    inc e
    dec c
    jr nz, jr_001_4dd9

    ldh a, [$b2]

jr_001_4de4:
    inc hl
    dec b
    jr nz, jr_001_4db4

    ret


    ld c, a
    ld a, [$c068]
    sub c
    jr c, jr_001_4df1

    xor a

jr_001_4df1:
    ld [$c068], a
    ret


Call_001_4df5:
    ld a, [$dc80]
    bit 5, a
    jr z, jr_001_4e16

    ld a, [$dc92]
    bit 5, a
    ret nz

    set 5, a
    ld [$dc92], a
    ld a, [$c067]
    add $05
    cp $30
    jr c, jr_001_4e12

    ld a, $2f

jr_001_4e12:
    ld [$c067], a
    ret


jr_001_4e16:
    ld a, [$dc92]
    res 5, a
    ld [$dc92], a
    ret


    ld hl, $c1f9
    dec [hl]
    ret nz

    ld [hl], $20
    ld a, [$dcb2]
    or a
    jr z, jr_001_4e3f

    ld a, [$dca2]
    cp $05
    jr z, jr_001_4e35

    ld [hl], $08

jr_001_4e35:
    ld a, [$c067]
    or a
    ret z

    dec a
    ld [$c067], a
    ret


jr_001_4e3f:
    ld a, [$c067]
    inc a
    cp $30
    jr c, jr_001_4e49

    ld a, $2f

jr_001_4e49:
    ld [$c067], a
    ret


jr_001_4e4d:
    xor a
    ld a, [hl]
    inc a
    ret z

    ld de, $001b
    add hl, de
    dec b
    jr nz, jr_001_4e4d

    scf
    ret


    ld a, [$dcb7]
    or a
    ret z

    ld b, $02
    ld hl, $c1a0

jr_001_4e64:
    push bc
    push hl
    ld a, [hl]
    inc a
    jr z, jr_001_4e84

    push hl
    call Call_000_0a1a
    ldh a, [$a3]
    cp $ff
    jp nz, $3e28

    ldh a, [$8c]
    ld hl, $4e8e
    call Call_000_1b67
    call Call_000_1a64
    pop hl
    call Call_000_0a07

jr_001_4e84:
    pop hl
    pop bc
    ld de, $001b
    add hl, de
    dec b
    jr nz, jr_001_4e64

    ret


    rst $00
    ld c, [hl]
    rst $00
    ld c, [hl]
    rst $00
    ld c, [hl]
    db $f4
    ld c, [hl]
    db $f4
    ld c, [hl]
    sbc h
    ld c, [hl]
    rst $00
    ld c, [hl]
    ld hl, $ff95
    dec [hl]
    ret nz

    ld [hl], $05
    ldh a, [$91]
    or a
    jr z, jr_001_4ead

    ld a, $05
    call Call_000_1a0f

jr_001_4ead:
    ldh a, [$91]
    inc a
    cp $05
    jr c, jr_001_4eb8

    xor a
    ldh [$a3], a
    ret


jr_001_4eb8:
    ldh [$91], a
    ld de, $7b7a
    ld b, $20
    ld c, $05
    ld hl, $80c0
    jp Jump_000_3e91


    ldh a, [$96]
    bit 0, a
    ld a, $03
    ld c, $08
    jr z, jr_001_4ed5

    ld c, $04
    ld a, $fd

jr_001_4ed5:
    ldh [$9a], a
    ldh a, [$94]
    inc a
    jr z, jr_001_4ee7

    sub $02
    ldh [$94], a
    jr nz, jr_001_4ee7

    xor a
    ld [$ffa3], a
    ret


jr_001_4ee7:
    ld b, $08
    call Call_000_0de7
    jp nc, Jump_001_499b

    ld a, $01
    ldh [$a3], a
    ret


    ld hl, $ff9e
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld [hl], d
    dec hl
    ld [hl], e
    ld a, d
    or e
    jr nz, jr_001_4f1b

    inc [hl]
    ldh a, [$96]
    bit 4, a
    jr nz, jr_001_4f1b

    set 4, a
    ldh [$96], a
    ld a, $01
    ldh [$9d], a
    ldh a, [$8c]
    cp $03
    jr nz, jr_001_4f1b

    ld a, $02
    ldh [$91], a

jr_001_4f1b:
    call Call_001_6fd4
    ld a, $ff
    ldh [$9c], a
    ldh a, [$96]
    bit 0, a
    ld c, $02
    jr z, jr_001_4f2c

    ld c, $0f

jr_001_4f2c:
    ld b, $10
    push bc
    call Call_000_0f2e
    ldh [$b2], a
    jr nc, jr_001_4f39

    call Call_001_6afd

jr_001_4f39:
    pop bc
    ldh a, [$96]
    bit 6, a
    ldh a, [$b2]
    jr nz, jr_001_4f47

    ld b, $00
    call Call_000_0f2e

jr_001_4f47:
    ld c, a
    ldh a, [$8c]
    cp $03
    jp nz, Jump_001_4fd9

    ld a, c
    cp $07
    jr z, jr_001_4f59

    cp $09
    jp nz, Jump_001_4fd9

jr_001_4f59:
    ldh a, [$96]
    bit 6, a
    jr nz, jr_001_4f78

    set 6, a
    res 3, a
    ldh [$96], a
    ld a, $04
    ldh [$93], a
    ldh a, [$8d]
    and $f8
    ld [$dcb3], a
    ldh a, [$8e]
    ld [$dcb4], a
    xor a
    ldh [$95], a

jr_001_4f78:
    ld hl, $ff93
    dec [hl]
    jr nz, jr_001_4fc1

    ld [hl], $04
    ldh a, [$97]
    bit 0, a
    ld a, $01
    ld c, $11
    jr z, jr_001_4f8e

    ld a, $ff
    ld c, $ff

jr_001_4f8e:
    ldh [$9a], a
    ld b, $08
    call Call_000_0de7
    jr nc, jr_001_4f9d

    ldh a, [$97]
    xor $01
    ldh [$97], a

jr_001_4f9d:
    ldh a, [$96]
    bit 5, a
    jr z, jr_001_4fb2

    ldh a, [$95]
    dec a
    ldh [$95], a
    jr nz, jr_001_4fc1

    ldh a, [$96]
    res 5, a
    ldh [$96], a
    jr jr_001_4fc1

jr_001_4fb2:
    ldh a, [$95]
    inc a
    ldh [$95], a
    cp $08
    jr c, jr_001_4fc1

    ldh a, [$96]
    set 5, a
    ldh [$96], a

jr_001_4fc1:
    ld a, [$dcb3]
    ldh [$8d], a
    ld a, [$dcb4]
    ldh [$8e], a
    xor a
    ldh [$9c], a
    ldh a, [$96]
    res 7, a
    ldh [$96], a
    ldh a, [$95]
    call Call_001_7968

Jump_001_4fd9:
    ldh a, [$96]
    bit 6, a
    jr nz, jr_001_5031

    bit 3, a
    jr z, jr_001_5031

    ldh a, [$8c]
    cp $03
    jr nz, jr_001_5031

    ldh a, [$95]
    or a
    jr z, jr_001_5009

    ldh a, [$95]
    ldh [$9a], a
    ld hl, $ff93
    dec [hl]
    jr nz, jr_001_5031

    ld [hl], $04
    ld hl, $ff95
    ldh a, [$95]
    cp $80
    jr c, jr_001_5005

    inc [hl]
    inc [hl]

jr_001_5005:
    dec [hl]
    ld a, [hl]
    ldh [$9a], a

jr_001_5009:
    ldh a, [$9a]
    or a
    jr z, jr_001_5031

    ldh a, [$97]
    bit 0, a
    ld c, $10
    jr z, jr_001_5018

    ld c, $00

jr_001_5018:
    ld b, $08
    ldh a, [$9a]
    add c
    ld c, a
    call Call_000_0de7
    jr nc, jr_001_5031

    ldh a, [$96]
    xor $01
    ldh [$96], a
    ldh a, [$95]
    cpl
    inc a
    ldh [$95], a
    ldh [$9a], a

jr_001_5031:
    ldh a, [$96]
    bit 4, a
    jr z, jr_001_505b

    ld hl, $ff9d
    dec [hl]
    jr nz, jr_001_505b

    ld [hl], $05
    ldh a, [$91]
    inc a
    ldh [$91], a
    cp $05
    jr nz, jr_001_504b

    xor a
    ldh [$a3], a

jr_001_504b:
    ld de, $7c1a
    ld hl, $8080
    ld a, $05
    ld c, a
    ld b, $40
    ldh a, [$91]
    call Call_000_3e90

jr_001_505b:
    ld a, [$d3c0]
    dec a
    jr z, jr_001_50cb

    ldh a, [$96]
    res 2, a
    ldh [$96], a
    ldh a, [$a1]
    ldh [$b6], a
    add $10
    ldh [$b7], a
    ldh a, [$a2]
    ldh [$b8], a
    add $08
    ldh [$b9], a
    ld a, [$d3c5]
    ld e, a
    add $10
    ld l, a
    ld a, [$d3bf]
    ld c, a
    ld a, [$d3c6]
    add c
    add $18
    ld d, a
    add $08
    ld h, a
    call Call_001_76e8
    jr nc, jr_001_50cb

    ldh a, [$8c]
    cp $03
    jr z, jr_001_50a1

    ldh a, [$96]
    bit 4, a
    jr nz, jr_001_50a1

    ld a, $01
    ldh [$9d], a

jr_001_50a1:
    ldh a, [$96]
    set 2, a
    set 4, a
    ldh [$96], a
    ldh a, [$8d]
    ld l, a
    ldh a, [$8e]
    ld h, a
    ld de, $ffe1
    add hl, de
    ld a, l
    ld [$d3b1], a
    ld a, h
    ld [$d3b2], a
    xor a
    ld [$d3bf], a
    ld [$d3c0], a
    ld a, [$d3c1]
    or $02
    ld [$d3c1], a
    ret


jr_001_50cb:
    ldh a, [$96]
    bit 6, a
    ret nz

    bit 2, a
    ret nz

    call Call_001_7678
    call Call_001_76b1
    ld a, [$d3be]
    ld c, a
    ld a, e
    add c
    ld e, a
    ld a, l
    add c
    ld l, a
    call Call_001_76e8
    ret nc

    ld a, $04
    ldh [$93], a
    ldh a, [$96]
    set 3, a
    ldh [$96], a
    ld hl, $ff97
    res 0, [hl]
    ld a, $03
    ldh [$95], a
    ld a, [$d3be]
    ldh [$9a], a
    ldh a, [$8c]
    cp $03
    jr nz, jr_001_5109

    ld a, $03
    ldh [$9a], a

jr_001_5109:
    ld a, [$d3be]
    cp $80
    ret c

    set 0, [hl]
    ld a, $fd
    ldh [$95], a
    ldh a, [$8c]
    cp $03
    ret nz

    ld a, $fd
    ldh [$9a], a
    ret


    ld a, [$dcb3]
    ld l, a
    ld a, [$dcb4]
    ld h, a
    add hl, de
    ld a, l
    ld [$dcb3], a
    ld a, h
    ld [$dcb4], a
    ret


    ld b, $02
    ld hl, $c1a0

Jump_001_5136:
    push bc
    ld a, b
    ldh [$b2], a
    push hl
    ld a, [hl]
    cp $ff
    jp z, Jump_001_5212

    push hl
    call Call_000_0a1a
    ldh a, [$9a]
    call Call_001_7985
    ldh a, [$9b]
    call Call_001_7968
    xor a
    ldh [$9a], a
    ldh [$9b], a
    ldh [$92], a
    pop hl
    call Call_000_0a07
    call Call_001_79e8
    ld a, h
    cp $ff
    jr nz, jr_001_5167

    ld a, l
    cp $f0
    jr nc, jr_001_5170

jr_001_5167:
    ld a, h
    or a
    jr nz, jr_001_5187

    ld a, l
    cp $b8
    jr nc, jr_001_5187

jr_001_5170:
    ldh [$b6], a
    call Call_001_79d0
    ld a, h
    cp $ff
    jr nz, jr_001_517e

    ld a, l
    or a
    jr nc, jr_001_5194

jr_001_517e:
    ld a, h
    or a
    jr nz, jr_001_5187

    ld a, l
    cp $b0
    jr c, jr_001_5194

jr_001_5187:
    pop hl
    push hl
    ld a, $ff
    ld bc, $001b
    call Call_000_1b90
    jp Jump_001_5212


jr_001_5194:
    ldh [$b8], a
    pop hl
    push hl
    ld de, $0015
    add hl, de
    ldh a, [$b6]
    ldh [$a1], a
    ld [hl+], a
    ldh a, [$b8]
    ldh [$a2], a
    ld [hl], a
    ld de, $fff0
    add hl, de
    ld [hl], $01
    ldh a, [$a0]
    ld hl, $3042
    call Call_000_1b67
    ld de, $0002
    add hl, de
    ld a, [hl]
    ldh [$b4], a
    ld b, a
    ld de, $0006
    add hl, de
    ldh a, [$b2]
    dec a
    ld de, $d318
    jr z, jr_001_51cb

    ld de, $d310

jr_001_51cb:
    ldh a, [$96]
    bit 0, a
    jr z, jr_001_51fd

    ldh a, [$b4]
    ld c, a
    srl a
    add c
    cp $01
    jr z, jr_001_51dd

    and $fe

jr_001_51dd:
    ld c, a
    ld b, $00
    add hl, bc
    ldh a, [$b4]
    ld b, a

jr_001_51e4:
    ldh a, [$b8]
    add [hl]
    ld [de], a
    inc hl
    inc e
    ldh a, [$b6]
    add [hl]
    ld [de], a
    inc e
    inc e
    ld a, [de]
    or $20
    ld [de], a
    inc e
    dec hl
    dec hl
    dec hl
    dec b
    jr nz, jr_001_51e4

    jr jr_001_5212

jr_001_51fd:
    ldh a, [$b8]
    add [hl]
    ld [de], a
    inc hl
    inc e
    ldh a, [$b6]
    add [hl]
    ld [de], a
    inc hl
    inc e
    inc e
    ld a, [de]
    and $df
    ld [de], a
    inc e
    dec b
    jr nz, jr_001_51fd

Jump_001_5212:
jr_001_5212:
    pop hl
    pop bc
    ld de, $001b
    add hl, de
    dec b
    jp nz, Jump_001_5136

    ld a, [$c1bb]
    cp $05
    ret nz

    ld a, [$d31f]
    or $20
    ld [$d31f], a
    ret


    ld a, [$dca2]
    cp $04
    jr z, jr_001_523d

    ld a, [$dcb2]
    inc a
    jr z, jr_001_5243

    xor a
    ld [$dc95], a
    ret


jr_001_523d:
    ld a, [$d3ba]
    bit 2, a
    ret nz

jr_001_5243:
    ld hl, $dc90
    ld a, [$dc80]
    and $10
    ld c, a
    jr z, jr_001_526a

    ld a, [$dc8f]
    cp c
    jr z, jr_001_526a

    ld a, c
    ld [$dc8f], a
    inc [hl]
    ld a, [hl]
    cp $02
    ret nz

    ld [hl], $00
    ld a, $01
    ld [$dc95], a
    ld a, $0a
    ld [$dc93], a
    ret


jr_001_526a:
    ld a, c
    ld [$dc8f], a
    ld hl, $dc93
    dec [hl]
    ret nz

    ld [hl], $01
    xor a
    ld [$dc95], a
    ret


    ld a, [$d3b8]
    or a
    jp z, Jump_001_52fd

    srl a
    and $03
    ld hl, $52f9
    call Call_000_1b61
    ld a, $ff
    ld [$dc9b], a
    ld a, [hl]
    or a
    ld c, $02
    jr nz, jr_001_5298

    ld c, $01

jr_001_5298:
    ld a, [$dc80]
    and $03
    jr z, jr_001_52d6

    and c
    jp nz, Jump_001_5355

    ld a, [hl]
    ld [$dc9b], a
    ld a, [$dc9c]
    dec a
    ld [$dc9c], a
    ret nz

    ld a, $10
    ld [$dc9c], a
    call Call_001_52c5
    xor a
    ld [$dca0], a
    ld c, $04
    ld a, [hl]
    or a
    jp nz, Jump_001_538b

    jp Jump_001_53ab


Call_001_52c5:
    ld a, [$dc9d]
    cp $04
    jr z, jr_001_52cf

    cp $fc
    ret nz

jr_001_52cf:
    ld a, [$dcbb]
    ld [$dcba], a
    ret


jr_001_52d6:
    ld a, [hl]
    ld [$dc9b], a
    ld a, [$dc9c]
    dec a
    ld [$dc9c], a
    ret nz

    ld a, $10
    ld [$dc9c], a
    xor a
    ld [$dca0], a
    ld c, $04
    ld de, $52c5
    push de
    ld a, [hl]
    or a
    jp nz, Jump_001_538b

    jp Jump_001_53ab


    ld bc, $0100
    nop

Jump_001_52fd:
    ld a, [$d3ba]
    bit 2, a
    jr nz, jr_001_531c

    ld a, [$dc9d]
    or a
    jr nz, jr_001_5315

    ld a, $ff
    ld [$dc9b], a
    ld a, [$dcbc]
    ld [$dcba], a

jr_001_5315:
    ld a, [$dc80]
    and $03
    jr nz, jr_001_5355

jr_001_531c:
    ld hl, $dc9c
    dec [hl]
    ret nz

    ld [hl], $10
    ld hl, $dc9d
    ld a, [hl]
    or a
    ret z

    cp $80
    jr c, jr_001_532f

    inc [hl]
    inc [hl]

jr_001_532f:
    dec [hl]
    ld a, [$dcbc]
    ld [$dcba], a
    ld a, [hl]
    cp $04
    jr c, jr_001_533d

    jr jr_001_5343

jr_001_533d:
    cp $02
    jr c, jr_001_5347

    jr jr_001_5398

jr_001_5343:
    cp $fe
    jr c, jr_001_5398

jr_001_5347:
    ld a, $01
    ld [$dcba], a
    jr jr_001_5398

    ld a, [$dcbc]
    ld [$dcba], a
    ret


Jump_001_5355:
jr_001_5355:
    ld a, [$dc9b]
    cp $ff
    jr z, jr_001_537b

    ld a, [$dcbb]
    ld [$dcba], a
    ld a, [$dc9d]
    cp $fc
    jr z, jr_001_537b

    cp $04
    jr z, jr_001_537b

    ld a, [$dcbc]
    ld [$dcba], a
    ld [$dcbb], a
    ld a, $ff
    ld [$0008], a

jr_001_537b:
    ld hl, $dc9c
    dec [hl]
    ret nz

    ld [hl], $08
    ld c, $04
    ld a, [$dc80]
    bit 1, a
    jr nz, jr_001_53ab

Jump_001_538b:
    ld a, [$dc9d]
    cp $80
    jr nc, jr_001_5394

    cp c
    ret nc

jr_001_5394:
    inc a
    ld [$dc9d], a

jr_001_5398:
    ld a, [$dc9d]
    cp $80
    jr c, jr_001_53a1

    cpl
    inc a

jr_001_53a1:
    ld c, a
    ld a, $04
    sub c
    srl a
    ld [$dca0], a
    ret


Jump_001_53ab:
jr_001_53ab:
    ld a, c
    cpl
    inc a
    ld c, a
    ld a, [$dc9d]
    dec a
    cp $80
    jr c, jr_001_53b9

    cp c
    ret c

jr_001_53b9:
    ld [$dc9d], a
    jr jr_001_5398

    ld hl, $d770
    ld b, $04
    ld de, $0006

jr_001_53c6:
    ld a, [hl]
    cp $ff
    call nz, Call_001_53d1
    add hl, de
    dec b
    jr nz, jr_001_53c6

    ret


Call_001_53d1:
    push hl
    push de
    push bc
    dec [hl]
    jr nz, jr_001_53ee

    ld [hl], $04
    inc hl
    dec [hl]
    call z, Call_001_53f2
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [de]
    inc a
    ld [de], a
    ld c, a
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, c
    call Call_000_12d5

jr_001_53ee:
    pop bc
    pop de
    pop hl
    ret


Call_001_53f2:
    ld [hl], $ff
    dec hl
    ld [hl], $ff
    inc hl
    push hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, a
    ld b, h
    ld a, [$dc8b]
    cpl
    inc a
    ld e, a
    ld d, $ff
    add hl, de
    ld a, [hl]
    dec a
    ld [bc], a
    pop hl
    ret


jr_001_540d:
    bit 7, [hl]
    jr nz, jr_001_5418

    set 7, [hl]
    ld a, [$d3ba]
    ldh [$97], a

jr_001_5418:
    ldh a, [$97]
    bit 0, a
    ld a, $10
    jr z, jr_001_5422

    ld a, $f0

jr_001_5422:
    ldh [$9a], a
    jp Jump_001_5569


Call_001_5427:
    ld a, [$dc99]
    or a
    ld c, $08
    jr z, jr_001_5430

    dec c

jr_001_5430:
    inc a
    ld e, a
    ld a, b
    cpl
    inc a
    add c
    add a
    add e
    ld [$c2c2], a
    ret


Jump_001_543c:
    call Call_001_5427
    ldh a, [$a0]
    cp $1d
    jp z, Jump_001_54cf

    ld hl, $ffa3
    bit 6, [hl]
    jr nz, jr_001_540d

    bit 7, [hl]
    jr nz, jr_001_54b4

    set 7, [hl]
    ldh a, [$a5]
    or a
    jr z, jr_001_54cf

    ld a, $02
    call Call_000_1a0f
    ld hl, $d650
    ld a, [$c2c2]
    call Call_000_1b61
    ld [hl], $ff
    ld hl, $d660
    ld a, [$c2c2]
    call Call_000_1b61
    ld [hl], $ff
    xor a
    ldh [$91], a
    ld a, $05
    ldh [$95], a
    ld a, [$c2c2]
    ldh [$b2], a
    call Call_001_4dad
    ld a, [$c2c2]
    ld hl, $d631
    add a
    call Call_000_1b61
    ld de, $7378
    ld c, $07
    ld b, $00
    ld a, [hl]
    cp $06
    ld a, $02
    jr c, jr_001_54a3

    ld de, $7380
    ld c, $1d
    ld b, $01
    ld a, $06

jr_001_54a3:
    ld [hl], a
    ld a, e
    ldh [$9e], a
    ld a, d
    ldh [$9f], a
    ld a, $01
    ldh [$a6], a
    ld a, c
    ldh [$a0], a
    ld a, b
    ldh [$94], a

jr_001_54b4:
    ld hl, $ff95
    dec [hl]
    jp nz, Jump_001_5569

    ld [hl], $05
    ldh a, [$94]
    or a
    ld c, $04
    jr z, jr_001_54c6

    ld c, $03

jr_001_54c6:
    ldh a, [$91]
    inc a
    ldh [$91], a
    cp c
    jp nz, Jump_001_5569

Jump_001_54cf:
jr_001_54cf:
    ldh a, [$9d]
    inc a
    jr z, jr_001_54e5

    ldh a, [$9d]
    or a
    ld hl, $d680
    jr z, jr_001_54e3

    ld de, $0006

jr_001_54df:
    add hl, de
    dec a
    jr nz, jr_001_54df

jr_001_54e3:
    res 1, [hl]

jr_001_54e5:
    ld a, [$c2c2]
    ld hl, $d630
    add a
    call Call_000_1b61
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    pop hl
    ld [hl], $ff
    ld e, l
    ld d, h
    inc de
    ld bc, $001a
    call Call_000_1ace
    ld a, [$c2c2]
    ldh [$b2], a
    call Call_001_4d7c
    pop hl
    pop bc
    ld de, $0036
    jr jr_001_5572

    ld a, [$dcb7]
    or a
    ret z

    ld hl, $d3b0
    call Call_000_0a1a
    ldh a, [$a3]
    cp $ff
    jr nz, jr_001_5577

    call Call_001_616e
    ld hl, $d3b0
    call Call_000_0a07
    ld a, [$d3c7]
    inc a
    ret nz

    ld a, [$dc99]
    xor $01
    ld [$dc99], a
    ld b, $08
    ld hl, $d3cb
    jr z, jr_001_5541

    ld hl, $d3e6
    ld b, $07

jr_001_5541:
    ld de, $0036

jr_001_5544:
    ld a, [hl]
    cp $ff
    jr z, jr_001_5572

    cp $f0
    jr z, jr_001_5572

    push bc
    push hl
    push hl
    call Call_000_0a1a
    ldh a, [$a3]
    cp $ff
    jr z, jr_001_555e

    and $3f
    jp z, Jump_001_543c

jr_001_555e:
    ldh a, [$8c]
    ld hl, $5646
    call Call_000_1b67
    call Call_000_1a64

Jump_001_5569:
    pop hl
    call Call_000_0a07
    pop hl
    pop bc
    ld de, $0036

jr_001_5572:
    add hl, de
    dec b
    jr nz, jr_001_5544

    ret


jr_001_5577:
    ld hl, $5522
    push hl
    ld a, [$c063]
    or a
    jr z, jr_001_5586

    ld a, $01
    ld [$c073], a

jr_001_5586:
    ld hl, $ffa3
    ld a, [hl]
    bit 7, a
    jr nz, jr_001_55a3

    set 7, [hl]
    xor a
    ldh [$9c], a
    ld a, $0a
    ldh [$93], a
    ld a, $20
    ldh [$95], a
    ld a, $01
    call Call_000_1a1b
    ld hl, $ffa3

jr_001_55a3:
    ld a, [hl]
    and $7f
    jr nz, jr_001_55a9

    ret


jr_001_55a9:
    cp $01
    jr nz, jr_001_55c2

    ld a, $01
    ldh [$9b], a
    ld hl, $ff95
    dec [hl]
    ret nz

    inc [hl]
    xor a
    ldh [$9b], a
    ld hl, $ff93
    dec [hl]
    ret nz

    jp Jump_000_07e3


jr_001_55c2:
    cp $02
    jr nz, jr_001_55ce

    ld hl, $ff93
    dec [hl]
    ret nz

    jp Jump_000_07e3


jr_001_55ce:
    cp $03
    jr nz, jr_001_5600

    ldh a, [$91]
    cp $2d
    jr nc, jr_001_55ee

    ld a, $2c
    ldh [$91], a
    ld a, $01
    ldh [$95], a
    call Call_001_6fd4
    ld c, $00
    ld b, $20
    call Call_000_0f2e
    ret nc

    call Call_001_6afd

jr_001_55ee:
    ld hl, $ff95
    dec [hl]
    ret nz

    ld [hl], $05
    ldh a, [$91]
    inc a
    ldh [$91], a
    cp $32
    ret c

    jp Jump_000_07e3


jr_001_5600:
    cp $04
    ret nz

    ldh a, [$91]
    cp $32
    jr nc, jr_001_561f

    ld a, $32
    ldh [$91], a
    xor a
    ldh [$93], a
    inc a
    ldh [$95], a
    ld hl, $ff96
    res 7, [hl]
    ld b, $03
    ld c, $00
    call Call_001_6f82

jr_001_561f:
    ldh a, [$9c]
    cp $ff
    jr nz, jr_001_562a

    call Call_001_6fd4
    jr jr_001_562d

jr_001_562a:
    call Call_001_6f9c

jr_001_562d:
    ld hl, $ff95
    dec [hl]
    ret nz

    ld [hl], $07
    ldh a, [$93]
    inc a
    and $03
    ldh [$93], a
    add $32
    ldh [$91], a
    ldh a, [$a5]
    or a
    ret nz

    jp Jump_000_07e3


    ld l, [hl]
    ld h, c
    ld c, $6c
    adc [hl]
    ld l, [hl]
    dec d
    ld [hl], b
    add e
    ld [hl], c
    inc d
    ld [hl], h
    sbc e
    ld [hl], h
    ld a, [bc]
    ld [hl], l
    add hl, hl
    ld l, e
    cpl
    ld l, e
    ld l, l
    ld l, e
    or $60
    ld e, d
    ld e, h
    or h
    ld e, h
    db $e4
    ld e, d
    rst $18
    ld e, d
    rra
    ld e, e
    sub l
    ld e, e
    adc [hl]
    ld e, e
    ld d, [hl]
    ld e, d
    add hl, hl
    ld h, b
    sbc l
    ld e, [hl]
    rlca
    ld e, a
    ld a, d
    ld e, a
    ld a, l
    ld e, c
    ccf
    ld e, c
    rlca
    ld e, c
    ldh a, [$57]
    sbc [hl]
    ld d, a
    sbc l
    ld d, a
    ld b, [hl]
    ld d, a
    ld hl, $d257
    ld d, [hl]
    adc d
    ld d, [hl]
    ldh a, [$91]
    or a
    jr nz, jr_001_56c0

    ld d, $10
    ld a, $10
    call Call_001_5e0a
    ret nz

    cp d
    ret nc

    ld a, $07
    call Call_000_1a0f
    ld a, $01
    ldh [$91], a
    ld a, $05
    ldh [$93], a
    ld a, $fc
    ldh [$95], a
    call Call_001_7678
    ldh a, [$b6]
    add $0c
    ldh [$b6], a
    add $0c
    ldh [$b7], a
    call Call_001_76b1
    call Call_001_76e8
    call c, Call_001_4ac7

jr_001_56c0:
    ld hl, $ff95
    call Call_001_5dcd
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $05
    ld a, $02
    ldh [$91], a
    ret


    ldh a, [$96]
    bit 0, a
    ld a, $02
    ld c, $02
    jr z, jr_001_56e0

    ld c, $0e
    ld a, $fe

jr_001_56e0:
    ldh [$9a], a
    ld b, $00
    call Call_000_0de7
    jr nc, jr_001_56f1

    ld a, $1d
    ldh [$a0], a
    xor a
    ldh [$a3], a
    ret


jr_001_56f1:
    ldh a, [$a0]
    cp $34
    jr nz, jr_001_570a

    call Call_001_4abe
    ldh a, [$93]
    inc a
    and $03
    ldh [$93], a
    ret nz

    ldh a, [$91]
    inc a
    and $07
    ldh [$91], a
    ret


jr_001_570a:
    ld a, $08
    ldh [$91], a
    call Call_001_7678
    ldh a, [$b8]
    add $06
    ldh [$b9], a
    call Call_001_76b1
    call Call_001_76e8
    ret nc

    jp Jump_001_4ac7


    ldh a, [$96]
    bit 0, a
    ld a, $03
    jr z, jr_001_572b

    ld a, $fd

jr_001_572b:
    ldh [$9a], a
    call Call_001_7678
    ldh a, [$b6]
    add $12
    ldh [$b7], a
    ldh a, [$b8]
    add $12
    ldh [$b9], a
    call Call_001_76b1
    call Call_001_76e8
    ret nc

    jp Jump_001_4ac7


    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_5754

    set 7, a
    ldh [$96], a
    ld a, $40
    ldh [$98], a

jr_001_5754:
    ld hl, $ff98
    dec [hl]
    jr nz, jr_001_5762

    ld [hl], $40
    ldh a, [$96]
    xor $01
    ldh [$96], a

jr_001_5762:
    ldh a, [$96]
    bit 0, a
    ld a, $01
    ld c, $02
    jr z, jr_001_576f

    ld c, e
    ld a, $ff

jr_001_576f:
    ldh [$9a], a
    ld b, $08
    call Call_000_0de7
    jr nc, jr_001_5781

    ldh a, [$96]
    xor $01
    ldh [$96], a
    xor a
    ldh [$9a], a

jr_001_5781:
    ldh a, [$93]
    inc a
    and $03
    ldh [$93], a
    ret nz

    call Call_001_4abe
    ldh a, [$95]
    inc a
    and $03
    ldh [$95], a
    ldh [$91], a
    cp $03
    ret nz

    ld a, $01
    ldh [$91], a
    ret


    ret


    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_57b0

    set 7, a
    ldh [$96], a
    ld a, $0c
    ldh [$93], a
    ld a, $05
    ldh [$95], a

jr_001_57b0:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $0c
    ld hl, $d41d
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $ff95
    dec [hl]
    jr z, jr_001_57cc

    ldh a, [$91]
    and $01
    xor $01
    ldh [$91], a
    ret


jr_001_57cc:
    inc [hl]
    ldh a, [$91]
    inc a
    cp $03
    jr c, jr_001_57e1

    cp $05
    jr z, jr_001_57e1

    ld hl, $d41d
    ldh a, [$8d]
    ld [hl+], a
    ldh a, [$8e]
    ld [hl], a

jr_001_57e1:
    ld hl, $ff91
    inc [hl]
    ld a, [hl]
    cp $05
    ret c

    ld [hl], $00
    ld a, $05
    ldh [$95], a
    ret


    ldh a, [$a3]
    dec a
    jr nz, jr_001_5830

    ldh a, [$91]
    cp $04
    jr z, jr_001_580f

    ld a, $04
    ldh [$91], a
    ld a, $20
    ldh [$93], a
    xor a
    ldh [$96], a
    ld de, $0000
    ld bc, $0005
    jp Jump_001_7754


jr_001_580f:
    ldh a, [$9c]
    or a
    call nz, Call_001_6fd4
    ld b, $20
    ld c, $00
    call Call_000_0f2e
    ret nc

    call Call_001_6afd
    ld hl, $ff93
    dec [hl]
    ret nz

    ld a, $80
    ld [$c1ed], a
    ld a, $01
    ld [$c064], a
    ret


jr_001_5830:
    call Call_001_76d3
    jr nc, jr_001_583a

    ld a, $1f
    ld [$c0cc], a

jr_001_583a:
    ld a, [$c1e3]
    or a
    jr z, jr_001_585b

    ld a, $01
    ldh [$9a], a
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $05
    ldh a, [$8f]
    cp $48
    jp c, Jump_001_58df

    xor a
    ld [$c1e3], a
    ldh [$9a], a
    inc a
    ldh [$94], a

jr_001_585b:
    ldh a, [$9c]
    or a
    jr nz, jr_001_58b7

    ld hl, $ff96
    res 2, [hl]
    ld a, [$c1a1]
    cp $ff
    jr z, jr_001_5884

    ld a, $01
    ldh [$91], a
    ld a, [$c1aa]
    bit 0, a
    ret z

    ld a, [$c1a1]
    cp $70
    jr nc, jr_001_58b7

    set 2, [hl]
    ld a, $05
    ldh [$91], a
    ret


Call_001_5884:
jr_001_5884:
    ld a, $03
    ldh [$91], a
    ld hl, $ff94
    dec [hl]
    ret nz

    inc [hl]
    ld a, $01
    ldh [$91], a
    ldh a, [$8f]
    ld [$c1d9], a
    ldh a, [$90]
    ld [$c1da], a
    ldh a, [$8d]
    ld [$c1d7], a
    ldh a, [$8e]
    ld [$c1d8], a
    ld b, $0d
    ld c, $0b
    call Call_000_2a00
    ret c

    ld a, $0a
    ldh [$94], a
    ld a, $03
    ldh [$91], a
    ret


jr_001_58b7:
    ld a, $02
    ldh [$91], a
    ldh a, [$9c]
    cp $02
    jp c, Jump_001_6f9c

    ldh a, [$9c]
    cp $ff
    call z, Call_001_6fd4
    ld a, $01
    ldh [$91], a
    ld b, $20
    ld c, $00
    call Call_000_0f2e
    ret nc

    ld a, $01
    ldh [$94], a
    call Call_001_5884
    jp Jump_001_6afd


Jump_001_58df:
    ldh a, [$97]
    inc a
    and $03
    ldh [$97], a
    ld hl, $58f0
    call Call_000_1b61
    ld a, [hl]
    ldh [$91], a
    ret


    nop
    ld bc, $0102

jr_001_58f4:
    ld a, $01
    call Call_000_16d1
    ld a, $0c
    call Call_000_1a0f
    ld c, $00
    ld a, $02
    call Call_001_4699
    jr jr_001_596c

    call Call_001_76d3
    ret nc

    ldh a, [$a0]
    cp $39
    jr z, jr_001_58f4

    cp $29
    jr z, jr_001_592c

    cp $2a
    jr z, jr_001_592c

    sub $2b
    ld hl, $c0cd
    ld a, $10
    jr z, jr_001_5924

    ld a, $08

jr_001_5924:
    ld [hl], a
    ld a, $0b
    call Call_000_1a0f
    jr jr_001_596c

jr_001_592c:
    sub $29
    ld hl, $c1fc
    ld a, $40
    jr z, jr_001_5937

    ld a, $20

jr_001_5937:
    ld [hl], a
    ld a, $0b
    call Call_000_1a0f
    jr jr_001_596c

    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_5958

    set 7, a
    res 0, a
    ldh [$96], a
    ldh a, [$a0]
    sub $24
    ld hl, $5978
    call Call_000_1b61
    ld a, [hl]
    ldh [$91], a

jr_001_5958:
    call Call_001_76d3
    ret nc

    ldh a, [$a0]
    sub $24
    jr nz, jr_001_5963

    dec a

jr_001_5963:
    inc a
    ld [$dca2], a
    ld a, $0c
    call Call_000_1a0f

jr_001_596c:
    xor a
    ldh [$a3], a
    ld a, $1d
    ldh [$a0], a
    ld a, $ff
    ldh [$9d], a
    ret


    nop
    ld [bc], a
    inc bc
    ld bc, $fa04
    ret


    db $d3
    or a
    jr nz, jr_001_598e

    ld a, $01
    ld [$c064], a
    ld hl, $c1ed
    set 7, [hl]
    ret


jr_001_598e:
    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_59de

    set 7, [hl]
    ld a, $04
    ldh [$95], a
    xor a
    ldh [$9b], a
    ldh [$a4], a
    ldh [$9c], a
    ld a, $32
    ldh [$94], a
    bit 6, [hl]
    jr nz, jr_001_59b6

    set 6, [hl]
    ldh a, [$8f]
    ldh [$98], a
    ldh a, [$8d]
    ldh [$99], a
    jr jr_001_5a24

jr_001_59b6:
    xor a
    ldh [$90], a
    ldh [$8e], a
    ld c, $00
    ldh a, [$a0]
    cp $23
    jr nz, jr_001_59d3

    ldh a, [$96]
    xor $02
    ldh [$96], a
    and $02
    jr nz, jr_001_59d3

    ld c, $40
    ld a, $32
    ldh [$94], a

jr_001_59d3:
    ldh a, [$98]
    add c
    ldh [$8f], a
    ldh a, [$99]
    ldh [$8d], a
    jr jr_001_5a24

jr_001_59de:
    ldh a, [$a0]
    cp $23
    jr nz, jr_001_59ea

    ld hl, $ff94
    dec [hl]
    ret nz

    inc [hl]

jr_001_59ea:
    call Call_001_76d3
    jr nc, jr_001_5a0c

    ld a, $0c
    call Call_000_1a0f
    ld bc, $0000
    ld de, $0100
    ld hl, $ff96
    res 7, [hl]
    ld hl, $7754
    push hl
    ldh a, [$a0]
    cp $23
    ret nz

    ld de, $0250
    ret


jr_001_5a0c:
    ldh a, [$9c]
    or a
    jr z, jr_001_5a1c

    inc a
    jr z, jr_001_5a1c

    ld a, $ff
    ldh [$9c], a
    ld a, $fd
    ldh [$a4], a

jr_001_5a1c:
    ldh a, [$a2]
    add $10
    cp $a0
    jr nc, jr_001_59b6

jr_001_5a24:
    ldh a, [$a4]
    ldh [$9b], a
    ld hl, $ff95
    dec [hl]
    jr nz, jr_001_5a42

    ld [hl], $04
    ldh a, [$a4]
    cp $04
    jr nz, jr_001_5a3d

    ldh [$9b], a
    xor a
    ldh [$9c], a
    jr jr_001_5a42

jr_001_5a3d:
    inc a
    ldh [$a4], a
    ldh [$9b], a

jr_001_5a42:
    ldh a, [$a0]
    cp $23
    ret z

    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $03
    ldh a, [$91]
    inc a
    and $03
    ldh [$91], a
    ret


    call Call_001_4abe
    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_5a6d

    set 7, [hl]
    ld a, $fe
    ldh [$98], a
    xor a
    ldh [$99], a
    ld a, $08
    ldh [$93], a

jr_001_5a6d:
    ld hl, $ff93
    dec [hl]
    jr nz, jr_001_5acc

    ld bc, $0000
    call Call_000_0f4d
    ld a, [$dca6]
    ld l, a
    ld a, [$dca7]
    ld h, a
    ld a, [hl]
    cp $12
    jr nz, jr_001_5a96

    ldh a, [$98]
    cpl
    inc a
    ld c, a
    ldh a, [$99]
    cpl
    inc a
    ldh [$98], a
    ld a, c
    ldh [$99], a
    jr jr_001_5ac8

jr_001_5a96:
    cp $13
    jr nz, jr_001_5aa6

    ldh a, [$98]
    ld c, a
    ldh a, [$99]
    ldh [$98], a
    ld a, c
    ldh [$99], a
    jr jr_001_5ac8

jr_001_5aa6:
    cp $14
    jr nz, jr_001_5ab6

    ldh a, [$98]
    ld c, a
    ldh a, [$99]
    ldh [$98], a
    ld a, c
    ldh [$99], a
    jr jr_001_5ac8

jr_001_5ab6:
    cp $15
    jr nz, jr_001_5ac8

    ldh a, [$98]
    cpl
    inc a
    ld c, a
    ldh a, [$99]
    cpl
    inc a
    ldh [$98], a
    ld a, c
    ldh [$99], a

jr_001_5ac8:
    ld a, $08
    ldh [$93], a

jr_001_5acc:
    ldh a, [$98]
    ldh [$9a], a
    ldh a, [$99]
    ldh [$9b], a
    ldh a, [$93]
    and $01
    ret nz

    ldh a, [$91]
    inc a
    and $03
    ret


    ld bc, $2810
    jr jr_001_5ae7

    ld bc, $2810

jr_001_5ae7:
    ldh a, [$96]
    bit 4, a
    ret nz

    push bc
    call Call_001_4abe
    pop de
    ldh a, [$96]
    bit 3, a
    jr nz, jr_001_5b03

    ld a, e
    call Call_001_5e0a
    ret nz

    cp d
    ret nc

    ld hl, $ff96
    set 3, [hl]

jr_001_5b03:
    call Call_001_6fd4
    ld a, $ff
    ldh [$9c], a
    ldh a, [$9b]
    add a
    ldh [$9b], a
    ld bc, $100f
    call Call_000_0f2e
    ret nc

    call Call_001_6afd
    ld hl, $ff96
    set 4, [hl]
    ret


    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_5b76

    call Call_001_5427
    ld a, $19
    call Call_001_7db4
    jr nc, jr_001_5b33

    xor a
    ldh [$a3], a
    ret


jr_001_5b33:
    ld de, $0001
    add hl, de
    ldh a, [$8d]
    ld [hl+], a
    ldh a, [$8e]
    ld [hl+], a
    ldh a, [$8f]
    ld [hl+], a
    ldh a, [$90]
    ld [hl], a
    ld de, $0004
    add hl, de
    ld a, [$c2c2]
    ld [hl], a
    push hl
    ld a, $1b
    call Call_001_7db4
    jr nc, jr_001_5b5d

    pop hl
    xor a
    ldh [$a3], a
    ld de, $0017
    ld [hl], $00
    ret


jr_001_5b5d:
    ld de, $0001
    add hl, de
    ldh a, [$8d]
    ld [hl+], a
    ldh a, [$8e]
    ld [hl+], a
    ldh a, [$8f]
    ld [hl+], a
    ldh a, [$90]
    ld [hl], a
    ld de, $0004
    add hl, de
    ld a, [$c2c2]
    ld [hl], a
    pop hl

jr_001_5b76:
    call Call_001_4abe
    ld a, $1f
    jr jr_001_5b9a

Call_001_5b7d:
    ldh a, [$94]
    ld hl, $c2a0
    call Call_000_1b67
    ld a, [hl]
    cp $10
    ret z

    xor a
    ldh [$a3], a
    pop hl
    ret


    call Call_001_5b7d
    ld a, $14
    jr jr_001_5b9a

    call Call_001_5b7d
    ld a, $0c

jr_001_5b9a:
    ld e, a
    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_5bb0

    set 7, [hl]
    ldh a, [$8f]
    ldh [$98], a
    ldh a, [$90]
    ldh [$99], a
    ldh a, [$8d]
    ldh [$9c], a

jr_001_5bb0:
    call Call_001_5c31
    ldh [$95], a
    ld b, $ff

jr_001_5bb7:
    inc b
    sub $2d
    jr nc, jr_001_5bb7

    add $2d
    ld c, a
    push bc
    ld hl, $5e6f
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl]
    ld l, e
    push de
    call Call_001_5e5e
    ld l, h
    ld h, b
    pop de
    push hl
    ld hl, $5e6f
    ld a, $2c
    sub c
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl]
    ld l, e
    call Call_001_5e5e
    ld e, h
    ld d, b
    pop bc
    pop af
    or a
    jr z, jr_001_5c0b

    cp $02
    jr z, jr_001_5bfa

    jr nc, jr_001_5c02

    call Call_001_5c46
    ld a, c
    ld c, e
    ld e, a
    ld a, b
    ld b, d
    ld d, a
    jr jr_001_5c0b

jr_001_5bfa:
    call Call_001_5c46
    call Call_001_5c50
    jr jr_001_5c0b

jr_001_5c02:
    call Call_001_5c50
    ld a, c
    ld c, e
    ld e, a
    ld a, b
    ld b, d
    ld d, a

jr_001_5c0b:
    ldh a, [$98]
    add c
    ldh [$8f], a
    ldh a, [$99]
    adc b
    ldh [$90], a
    ldh a, [$9c]
    add e
    ldh [$8d], a
    xor a
    ldh [$8e], a
    ldh a, [$a0]
    cp $18
    ret nz

    ldh a, [$a5]
    or a
    ret z

    ldh a, [$95]
    sub $02
    jr nc, jr_001_5c2e

    ld a, $b3

jr_001_5c2e:
    ldh [$95], a
    ret


Call_001_5c31:
    ldh a, [$a0]
    cp $18
    ldh a, [$95]
    ret z

    ldh a, [$94]
    ld hl, $c2a0
    call Call_000_1b67
    ld bc, $0009
    add hl, bc
    ld a, [hl]
    ret


Call_001_5c46:
    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    inc c
    ret nz

    inc b
    ret


Call_001_5c50:
    ld a, e
    cpl
    ld e, a
    ld a, d
    cpl
    ld d, a
    inc e
    ret nz

    inc d
    ret


    call Call_001_4abe
    ld hl, $ff96
    bit 6, [hl]
    jr nz, jr_001_5c80

    bit 7, [hl]
    jr nz, jr_001_5c76

    ldh a, [$a5]
    or a
    ret z

    set 7, [hl]
    ld a, $32
    ldh [$93], a
    xor a
    ldh [$91], a
    ret


jr_001_5c76:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld hl, $ff96
    set 6, [hl]

jr_001_5c80:
    ld c, $01
    call Call_001_5e2f
    ld a, c
    ldh [$9b], a
    ld hl, $ff95
    call Call_001_5dcd
    jr nz, jr_001_5c95

    ld [hl], $0f
    call Call_001_5df1

jr_001_5c95:
    ld c, $01
    call Call_001_5dd2
    ld hl, $ff93
    call Call_001_5dcd
    ret nz

    ld [hl], $03
    ldh a, [$91]
    inc a
    cp $04
    jr c, jr_001_5cb1

    ld a, $04
    call Call_000_1a0f
    ld a, $01

jr_001_5cb1:
    ldh [$91], a
    ret


    call Call_001_4abe
    ldh a, [$a0]
    cp $03
    jr z, jr_001_5ce1

    ld hl, $ff95
    bit 7, [hl]
    jr z, jr_001_5ce1

Jump_001_5cc4:
    ld c, $01
    call Call_001_5dd2
    ld a, $02
    ldh [$9b], a
    ldh a, [$a0]
    cp $30
    call z, Call_001_5da1
    call Call_001_5e41
    ret nz

    cp $08
    ret nc

    xor a
    ldh [$91], a
    ldh [$95], a
    ret


Jump_001_5ce1:
jr_001_5ce1:
    ld c, $01
    call Call_001_5e2f
    bit 7, c
    jr nz, jr_001_5d1a

    call Call_001_5e41
    ld b, a
    ldh a, [$a0]
    cp $04
    jr nz, jr_001_5d0c

    ld a, b
    cp $19
    ld c, $01
    jr nc, jr_001_5d1a

    ld a, [$d3c0]
    or a
    ld c, $00
    jr nz, jr_001_5d1a

    ld a, b
    cp $14
    jr nc, jr_001_5d24

    ld c, $ff
    jr jr_001_5d1a

jr_001_5d0c:
    ld a, b
    cp $23
    ld c, $01
    jr nc, jr_001_5d1a

    ld a, b
    cp $1e
    jr nc, jr_001_5d24

    ld c, $ff

jr_001_5d1a:
    ld a, c
    ldh [$9b], a
    ldh a, [$a0]
    cp $30
    call z, Call_001_5da1

jr_001_5d24:
    ld hl, $ff95
    call Call_001_5dcd
    jr nz, jr_001_5d67

    ld [hl], $23
    ldh a, [$a0]
    cp $04
    jr nz, jr_001_5d36

    ld [hl], $32

jr_001_5d36:
    call Call_001_5df1
    ldh a, [$a0]
    cp $03
    jr z, jr_001_5d67

    xor a
    call Call_001_5e0a
    jr nz, jr_001_5d67

    cp $14
    jr nc, jr_001_5d67

    ld c, $02
    call Call_001_5e2f
    bit 7, c
    jr nz, jr_001_5d67

    ld a, c
    ldh [$9b], a
    ld a, $80
    ldh [$95], a
    ldh a, [$a0]
    cp $04
    jp z, Jump_001_5cc4

    ld a, $03
    ldh [$91], a
    jp Jump_001_5cc4


jr_001_5d67:
    ld c, $01
    call Call_001_5dd2
    ld hl, $ff93
    call Call_001_5dcd
    ret nz

    ld [hl], $05
    ldh a, [$a0]
    cp $04
    jr z, jr_001_5d9a

    cp $30
    jr nz, jr_001_5d81

    ld [hl], $01

jr_001_5d81:
    ldh a, [$91]
    inc a
    cp $03
    jr nz, jr_001_5d89

    xor a

jr_001_5d89:
    ldh [$91], a
    ld c, a
    ldh a, [$a0]
    cp $15
    ret nz

    ld a, c
    cp $03
    ret nz

    ld a, $04
    jp Jump_000_1a0f


jr_001_5d9a:
    ldh a, [$91]
    xor $01
    ldh [$91], a
    ret


Call_001_5da1:
    ldh a, [$9b]
    cp $80
    ld b, $08
    jr nc, jr_001_5dad

    ld b, $10
    ld c, $08

jr_001_5dad:
    call Call_000_0f4d
    ld a, e
    or a
    ret z

    cp $0c
    ret nc

    ldh a, [$9b]
    cpl
    inc a
    cp $80
    jr nc, jr_001_5dbf

    xor a

jr_001_5dbf:
    ldh [$9b], a
    ldh a, [$91]
    cp $03
    ret nz

    xor a
    ldh [$91], a
    ldh [$95], a
    pop hl
    ret


Call_001_5dcd:
    inc [hl]
    dec [hl]
    ret z

    dec [hl]
    ret


Call_001_5dd2:
    ldh a, [$96]
    bit 0, a
    ld a, c
    ld c, $10
    jr z, jr_001_5ddf

    cpl
    inc a
    ld c, $00

jr_001_5ddf:
    ldh [$9a], a
    ld b, $08
    call Call_000_0de7
    ret nc

    ldh a, [$96]
    xor $01
    ldh [$96], a
    xor a
    ldh [$9a], a
    ret


Call_001_5df1:
    ldh a, [$96]
    ld c, a
    set 0, c
    ldh a, [$90]
    ld hl, $d3b4
    cp [hl]
    jr nz, jr_001_5e02

    dec hl
    ldh a, [$8f]
    cp [hl]

jr_001_5e02:
    jr nc, jr_001_5e06

    res 0, c

jr_001_5e06:
    ld a, c
    ldh [$96], a
    ret


Call_001_5e0a:
    ld c, a
    ldh a, [$8f]
    add c
    push af
    ld hl, $d3b3
    sub [hl]
    ld c, a
    inc hl
    ldh a, [$90]
    sbc [hl]
    ld b, a
    pop af
    jr nc, jr_001_5e1d

    inc b

jr_001_5e1d:
    ld a, b
    bit 7, a
    jr z, jr_001_5e2b

    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc c
    jr nz, jr_001_5e2b

    inc b

jr_001_5e2b:
    ld a, b
    or a
    ld a, c
    ret


Call_001_5e2f:
    ldh a, [$8e]
    ld hl, $d3b2
    cp [hl]
    jr nz, jr_001_5e3b

    dec hl
    ldh a, [$8d]
    cp [hl]

jr_001_5e3b:
    ret c

    ld a, c
    cpl
    inc a
    ld c, a
    ret


Call_001_5e41:
    ldh a, [$8d]
    ld hl, $d3b1
    sub [hl]
    ld c, a
    inc hl
    ldh a, [$8e]
    sbc [hl]
    ld b, a
    bit 7, a
    jr z, jr_001_5e2b

    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc c
    jr nz, jr_001_5e5a

    inc b

jr_001_5e5a:
    ld a, b
    or a
    ld a, c
    ret


Call_001_5e5e:
    ld d, $00
    ld e, l
    ld hl, $0000
    ld b, $08

jr_001_5e66:
    add hl, hl
    rla
    jr nc, jr_001_5e6b

    add hl, de

jr_001_5e6b:
    dec b
    jr nz, jr_001_5e66

    ret


    nop
    ld [$1a11], sp
    inc hl
    inc l
    dec [hl]
    dec a
    ld b, [hl]
    ld c, a
    ld d, a
    ld e, a
    ld l, b
    ld [hl], b
    ld a, b
    add b
    add a
    adc a
    sub [hl]
    sbc l
    and h
    xor e
    or c
    cp b
    cp [hl]
    call nz, $cfc9
    call nc, $ddd9
    ld [c], a
    and $e9
    db $ed
    ldh a, [$f3]
    or $f8
    ld a, [$fdfc]
    cp $ff
    rst $38
    rst $38
    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_5eea

    set 7, a
    ldh [$96], a
    ld a, $ff
    ldh [$a3], a
    call Call_001_5427
    ld hl, $d650
    call Call_000_1b61
    ld [hl], $ff
    ld a, [$c2c2]
    ld hl, $d660
    call Call_000_1b61
    ld [hl], $ff
    xor a
    ldh [$91], a
    ldh [$95], a
    ld a, $05
    ldh [$93], a
    ld a, [$c2c2]
    ldh [$b2], a
    call Call_001_4dad
    ld a, [$c2c2]
    ld hl, $d631
    add a
    call Call_000_1b61
    ld [hl], $06
    ld a, $80
    ldh [$9e], a
    ld a, $73
    ldh [$9f], a
    ld a, $01
    ldh [$a6], a

jr_001_5eea:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $05
    ld hl, $ff91
    inc [hl]
    ld a, [hl]
    cp $03
    ret c

    ld [hl], $00
    ldh a, [$95]
    inc a
    ldh [$95], a
    cp $04
    ret nz

    xor a
    ldh [$a3], a
    ret


    ldh a, [$96]
    bit 6, a
    jr nz, jr_001_5f23

    ld a, $40
    ldh [$96], a
    xor a
    ld [$c1e3], a
    ldh [$98], a
    ld a, $02
    ldh [$93], a
    ld a, $04
    ldh [$95], a
    ld a, $0a
    ldh [$99], a

jr_001_5f23:
    ld hl, $ff95
    dec [hl]
    jr nz, jr_001_5f69

    ld [hl], $04
    ldh a, [$96]
    bit 1, a
    jr nz, jr_001_5f4e

    ldh a, [$98]
    cp $04
    jr z, jr_001_5f3a

    inc a
    ldh [$98], a

jr_001_5f3a:
    ldh [$9b], a
    ld [$d3f5], a
    ld hl, $ff99
    dec [hl]
    jr nz, jr_001_5f69

    ld [hl], $0a
    ld hl, $ff96
    set 1, [hl]
    jr jr_001_5f69

jr_001_5f4e:
    ldh a, [$98]
    cp $fc
    jr z, jr_001_5f57

    dec a
    ldh [$98], a

jr_001_5f57:
    ldh [$9b], a
    ld [$d3f5], a
    ld hl, $ff99
    dec [hl]
    jr nz, jr_001_5f69

    ld [hl], $0a
    ld hl, $ff96
    res 1, [hl]

jr_001_5f69:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $02
    ldh a, [$91]
    inc a
    and $03
    ldh [$91], a
    jp Jump_001_4abe


    ldh a, [$a3]
    dec a
    jr nz, jr_001_5f9e

    ld a, [$d3cb]
    cp $15
    ret z

    ld a, $15
    ld [$d3cb], a
    ld a, $1d
    ld [$d3df], a
    ld hl, $d3d5
    res 7, [hl]
    xor a
    ldh [$8d], a
    ldh [$8e], a
    ld a, $01
    jp Jump_000_1a0f


jr_001_5f9e:
    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_5fc0

    ld a, [$d3ce]
    ldh [$8f], a
    ld a, [$d3cf]
    ldh [$90], a
    ld a, [$d3cc]
    ld l, a
    ld a, [$d3cd]
    ld h, a
    ld de, $0010
    add hl, de
    ld a, l
    ldh [$8d], a
    ld a, h
    ldh [$8e], a

jr_001_5fc0:
    ld hl, $ff8f
    ld a, [hl+]
    ld [$c1d9], a
    ld a, [hl]
    ld [$c1da], a
    ld hl, $ff8d
    ld a, [hl+]
    ld [$c1d7], a
    ld a, [hl]
    ld [$c1d8], a
    ld a, [$d3da]
    ldh [$9b], a
    ldh a, [$96]
    bit 6, a
    jr nz, jr_001_5fed

    set 6, a
    ldh [$96], a
    ld a, $20
    ldh [$95], a
    ld a, $02
    ldh [$93], a

jr_001_5fed:
    ld hl, $ff95
    dec [hl]
    ret nz

    inc [hl]
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $02
    ldh a, [$96]
    bit 2, a
    jr nz, jr_001_601a

    ldh a, [$91]
    inc a
    ldh [$91], a
    cp $03
    ret c

    dec a
    ldh [$91], a
    ldh a, [$96]
    set 2, a
    ldh [$96], a
    ld [hl], $04
    ld b, $08
    ld c, $10
    jp Jump_000_2a00


jr_001_601a:
    ld hl, $ff91
    dec [hl]
    ret nz

    ld hl, $ff96
    res 2, [hl]
    ld a, $20
    ldh [$95], a
    ret


    ldh a, [$a3]
    dec a
    jr nz, jr_001_6040

    ld a, $15
    ldh [$8c], a
    ld a, $1d
    ldh [$a0], a
    ld hl, $ff96
    res 7, [hl]
    ld a, $01
    jp Jump_000_1a0f


jr_001_6040:
    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_6056

    set 7, a
    ldh [$96], a
    xor a
    ld [$c1e3], a
    ld a, $03
    ldh [$93], a
    ld a, $20
    ldh [$95], a

jr_001_6056:
    call Call_001_7678
    ldh a, [$b6]
    add $20
    ldh [$b7], a
    ldh a, [$b8]
    add $28
    ldh [$b9], a
    call Call_001_76b1
    call Call_001_76e8
    jr nc, jr_001_6072

    ld a, $01
    ld [$c0cc], a

jr_001_6072:
    ld hl, $ff95
    dec [hl]
    jr z, jr_001_6088

    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $03
    ldh a, [$91]
    and $01
    xor $01
    ldh [$91], a
    ret


jr_001_6088:
    inc [hl]
    ldh a, [$96]
    bit 6, a
    jr nz, jr_001_60aa

    set 6, a
    ldh [$96], a
    ld a, $03
    ldh [$93], a
    ld a, [$d3c6]
    cp $90
    jr nc, jr_001_60aa

    ldh [$99], a
    ld a, [$d3c5]
    sub $10
    jr nc, jr_001_60a8

    xor a

jr_001_60a8:
    ldh [$98], a

jr_001_60aa:
    call Call_001_60bd
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $03
    ldh a, [$91]
    or $02
    xor $01
    ldh [$91], a
    ret


Call_001_60bd:
    ldh a, [$98]
    ld c, a
    ldh a, [$a1]
    sub c
    cp $05
    ld a, $00
    jr c, jr_001_60d2

    ldh a, [$a1]
    sub c
    ld a, $02
    jr c, jr_001_60d2

    ld a, $fe

jr_001_60d2:
    ldh [$9a], a
    ld b, a
    ldh a, [$99]
    ld c, a
    ldh a, [$a2]
    sub c
    cp $05
    ld a, $00
    jr c, jr_001_60ea

    ldh a, [$a2]
    sub c
    ld a, $02
    jr c, jr_001_60ea

    ld a, $fe

jr_001_60ea:
    ldh [$9b], a
    or b
    ret nz

    ld hl, $ff96
    res 6, [hl]
    res 7, [hl]
    ret


    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_6105

    set 7, a
    ldh [$96], a
    ld a, $01
    call Call_000_1a0f

jr_001_6105:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $04
    ldh a, [$98]
    ldh [$8f], a
    ldh a, [$99]
    ldh [$90], a
    ldh a, [$91]
    inc a
    ldh [$91], a
    cp $04
    ret nz

    ld [hl], $0a
    xor a
    ld [$ff91], a
    xor a
    ldh [$8f], a
    ldh [$90], a
    ld a, $01
    call Call_000_1a0f
    ld hl, $ff9c
    inc [hl]
    ld a, [hl]
    cp $04
    ret c

    ld a, $01
    ld [$c064], a
    ret


Jump_001_613a:
    ldh a, [$a3]
    inc a
    ret nz

    ld a, $04
    ldh [$a3], a
    ret


Call_001_6143:
    xor a
    ld [$dca2], a
    ld [$d3b9], a
    ld [$d3b5], a
    dec a
    ld [$d650], a
    ld a, $04
    ld [$d631], a
    ld a, $14
    ld [$d3c2], a
    ld a, $59
    ld [$d3c3], a
    ld hl, $d310
    ld b, $04
    xor a

jr_001_6166:
    ld [hl+], a
    ld [hl+], a
    inc l
    inc l
    dec b
    jr nz, jr_001_6166

    ret


Call_001_616e:
    ld a, [$dca3]
    ld c, a
    ld a, [$dca2]
    cp c
    jp nz, Jump_001_62d7

    ld a, [$c068]
    or a
    jp z, Jump_001_613a

    ld c, $08
    ld b, $18
    call Call_000_0f4d
    call Call_000_0e91
    ld [$dcb0], a
    jr nc, jr_001_61dd

    cp $0f
    jp z, Jump_001_613a

    cp $09
    jp z, Jump_001_613a

    cp $0b
    jr z, jr_001_61a5

    cp $0c
    jr z, jr_001_61a5

    cp $07
    jr nz, jr_001_61dd

jr_001_61a5:
    ld a, [$dcb2]
    or a
    call z, Call_000_0634
    ld a, [$dca2]
    cp $05
    ld a, $ff
    jr nz, jr_001_61b7

    ld a, $01

jr_001_61b7:
    ld [$dcb2], a
    ld a, [$c1f8]
    cp $02
    jr nc, jr_001_61c6

    ld a, $01
    ld [$c1f8], a

jr_001_61c6:
    ld a, [$dcb1]
    sub $01
    ld [$dcb1], a
    jr nc, jr_001_61d6

    xor a
    ld [$dcb1], a
    jr jr_001_61fd

jr_001_61d6:
    ld a, $01
    ldh [$9b], a
    jp Jump_001_62d7


jr_001_61dd:
    ld hl, $dcb2
    ld a, [hl]
    ld [hl], $00
    or a
    jr z, jr_001_61fd

    ld a, $0f
    ld [$dcb1], a
    xor a
    ld [$dcb2], a
    ldh [$9c], a
    ld hl, $ff96
    res 7, [hl]
    ld c, $00
    ld b, $06
    jp Jump_001_6f82


jr_001_61fd:
    ld b, $08
    ld c, $02
    call Call_000_0f4d
    call Call_000_0e91
    ldh [$b2], a
    call nc, Call_001_4df5
    ld a, [$dc95]
    or a
    jr nz, jr_001_6226

    ld a, [$dc80]
    bit 2, a
    jp z, Jump_001_62b9

    ld a, [$dca2]
    cp $06
    jp z, Jump_001_62b9

    cp $05
    jr nz, jr_001_6268

jr_001_6226:
    ldh a, [$b2]
    or a
    ld c, $00
    cp $0b
    jr z, jr_001_6265

    cp $01
    jr z, jr_001_6265

    cp $0d
    jr z, jr_001_6265

    cp $0e
    jr z, jr_001_6265

    cp $0c
    jr z, jr_001_6265

    ld b, $08
    ld c, $06
    call Call_000_0f4d
    call Call_000_0e91
    ld c, $ff
    jr nc, jr_001_6265

    ld c, $00
    cp $01
    jr z, jr_001_6265

    cp $0b
    jr z, jr_001_6265

    cp $0d
    jr z, jr_001_6265

    cp $0e
    jr z, jr_001_6265

    cp $0c
    jr z, jr_001_6265

    ld c, $ff

jr_001_6265:
    ld a, c
    ldh [$9b], a

jr_001_6268:
    ld a, [$dc80]
    bit 2, a
    jr z, jr_001_62b9

    ld c, $08
    ld b, $10
    call Call_000_0f4d
    call Call_000_0e91
    jr nc, jr_001_62b9

    cp $14
    jr c, jr_001_62b9

    cp $16
    jr nc, jr_001_62b9

    sub $10

Jump_001_6285:
    ld hl, $c06b
    call Call_001_5dcd
    call Call_000_0773
    call Call_000_14fa
    ld a, [$d3ba]
    ld [$c06e], a
    ld a, [$c086]
    ld hl, $c087
    call Call_000_1b61
    ld a, [$c1fa]
    ld [hl], a
    ld a, [$dca2]
    cp $01
    ld a, $00
    jr z, jr_001_62b0

    ld a, [$dca2]

jr_001_62b0:
    ld [$c06f], a
    call Call_000_14e0
    jp Jump_000_0264


Jump_001_62b9:
jr_001_62b9:
    ld a, [$dc95]
    or a
    jr nz, jr_001_62d7

    ld a, [$dcb2]
    or a
    jr z, jr_001_62d7

    ld a, [$dca2]
    cp $05
    jr nz, jr_001_62d3

    ld a, [$dc80]
    bit 2, a
    jr nz, jr_001_62d7

jr_001_62d3:
    ld a, $01
    ldh [$9b], a

Jump_001_62d7:
jr_001_62d7:
    ld a, [$c070]
    cp $0e
    jr z, jr_001_62e6

    cp $10
    jr c, jr_001_62f4

    cp $13
    jr nc, jr_001_62f4

jr_001_62e6:
    ld c, $08
    ld b, $20
    call Call_000_0f4d
    call Call_000_0e91
    jr c, jr_001_6300

    jr jr_001_630d

jr_001_62f4:
    ldh a, [$9c]
    cp $01
    jr nz, jr_001_630d

    ld a, [$dcb0]
    or a
    jr z, jr_001_630d

jr_001_6300:
    cp $10
    jr c, jr_001_630d

    cp $14
    jr nc, jr_001_630d

    sub $10
    jp Jump_001_6285


jr_001_630d:
    ld a, [$dca3]
    ld c, a
    ld a, [$dca2]
    cp $01
    jr z, jr_001_6377

    cp $06
    jr z, jr_001_6377

    cp c
    jr z, jr_001_6377

    ldh a, [$91]
    cp $19
    jr nc, jr_001_6329

    ld a, $ff
    ldh [$95], a

jr_001_6329:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $04
    ldh a, [$95]
    inc a
    and $03
    ldh [$95], a
    ld hl, $6374
    call Call_000_1b61
    ld a, [hl]
    ldh [$91], a
    xor a
    ld [$c05d], a
    ldh a, [$95]
    cp $03
    ret c

    call Call_001_6354
    xor a
    ldh [$95], a
    inc a
    ldh [$93], a
    jr jr_001_63c2

Call_001_6354:
    ld a, $01
    ld [$dcbc], a
    ld [$dcba], a
    ld [$dcbb], a
    ld a, [$dca2]
    ld [$dca3], a
    cp $03
    ret nz

    ld a, $02
    ld [$dcbc], a
    ld [$dcba], a
    ld [$dcbb], a
    ret


    add hl, de
    ld a, [de]
    add hl, de

jr_001_6377:
    ld a, [$dcb2]
    or a
    jr nz, jr_001_63c2

    ld a, [$dc80]
    bit 3, a
    jr z, jr_001_63c2

    ld a, [$dca2]
    cp $06
    jr z, jr_001_63be

    cp $01
    jr z, jr_001_63c2

    ldh a, [$9c]
    or a
    jr nz, jr_001_63c2

    ldh a, [$94]
    bit 7, a
    jr nz, jr_001_63c2

    ld b, $24
    ld c, $08
    call Call_000_0f4d
    call Call_000_0e91
    cp $12
    jr z, jr_001_63ae

    cp $13
    jr z, jr_001_63ae

    jr jr_001_63b3

jr_001_63ae:
    sub $10
    jp Jump_001_6285


jr_001_63b3:
    ldh a, [$96]
    set 2, a
    ldh [$96], a
    ld a, $04
    jp Jump_001_69db


jr_001_63be:
    xor a
    ld [$dca2], a

jr_001_63c2:
    ldh a, [$96]
    res 2, a
    ldh [$96], a
    ld a, [$dca2]
    cp $01
    jp z, Jump_001_646b

    ld a, [$c0ca]
    or a
    jp nz, Jump_001_64a0

    ld a, [$c071]
    or a
    jp z, Jump_001_64a0

    ld a, [$dca2]
    or a
    jp nz, Jump_001_63f9

    ld a, [$c063]
    or a
    jr z, jr_001_63f2

    ld a, [$c074]
    cp $04
    jr z, jr_001_63f9

jr_001_63f2:
    ld a, [$c071]
    cp $06
    jr z, jr_001_6430

Jump_001_63f9:
jr_001_63f9:
    ld a, [$c071]
    cp $06
    jp z, Jump_001_64a0

    ld a, [$dc80]
    bit 5, a
    jp z, Jump_001_6498

    ld a, [$c063]
    or a
    jr z, jr_001_6416

    ld a, [$c1e3]
    or a
    jp nz, Jump_001_6498

jr_001_6416:
    ld a, [$dc91]
    bit 5, a
    jp nz, Jump_001_64a0

    set 5, a
    ld [$dc91], a
    ld a, [$c1a0]
    inc a
    jp nz, Jump_001_64a0

    call Call_000_069b
    jp Jump_001_64a0


jr_001_6430:
    ld a, [$dca2]
    or a
    jp nz, Jump_001_64a0

    ld a, [$c1a0]
    inc a
    jp nz, Jump_001_64a0

    ld a, [$dcb2]
    or a
    jr nz, jr_001_64a0

    ldh a, [$9c]
    or a
    jr nz, jr_001_64a0

    ld a, [$dc80]
    bit 5, a
    jr z, jr_001_64a0

    ld a, $08
    ld [$d631], a
    ld a, $01
    ld [$dca2], a
    ldh [$93], a
    dec a
    ldh [$95], a
    dec a
    ld [$d650], a
    ld a, $80
    ldh [$9e], a
    ld a, $59
    ldh [$9f], a

Jump_001_646b:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $06
    ldh a, [$95]
    inc a
    ldh [$95], a
    cp $07
    jr c, jr_001_6488

    call Call_001_6143
    ld a, $14
    ldh [$9e], a
    ld a, $59
    ldh [$9f], a
    jr jr_001_64a0

jr_001_6488:
    ld hl, $6491
    call Call_000_1b61
    ld a, [hl]
    ldh [$91], a
    ret


    nop
    ld bc, $0302
    inc b
    inc b

Jump_001_6498:
    ld a, [$dc91]
    res 5, a
    ld [$dc91], a

Jump_001_64a0:
jr_001_64a0:
    ldh a, [$9c]
    cp $01
    jp z, Jump_001_6756

    ldh a, [$9d]
    and $03
    ld a, $00
    jp nz, Jump_001_66d2

    ld a, [$dcb2]
    or a
    jp nz, Jump_001_6667

    ld a, [$dca2]
    cp $06
    jr nz, jr_001_64cf

    ld a, $01
    ldh [$9b], a
    ld a, [$dc80]
    bit 2, a
    jr z, jr_001_64f5

    ld a, $ff
    ldh [$9b], a
    jr jr_001_64f5

jr_001_64cf:
    ld a, [$dca2]
    cp $04
    jr nz, jr_001_64ee

    ldh a, [$96]
    bit 2, a
    jr nz, jr_001_64ee

    ld a, [$dc95]
    or a
    jr z, jr_001_64ee

    ld a, [$dc98]
    or a
    jr nz, jr_001_64f5

    ld a, $ff
    ldh [$9c], a
    jr jr_001_64f5

jr_001_64ee:
    ld a, [$dc98]
    or a
    call z, Call_001_6fd4

jr_001_64f5:
    ldh a, [$94]
    bit 0, a
    ld c, $00
    jp nz, Jump_001_6725

    ld l, $20
    call Call_001_65b4
    jp nc, Jump_001_6667

    sub $03
    and $03
    rlca
    ldh [$94], a
    ld hl, $65ff
    ld bc, $6617
    ld d, $07
    srl a
    srl a
    jr z, jr_001_6523

    ld d, $0f
    ld hl, $662f
    ld bc, $664f

jr_001_6523:
    ldh a, [$94]
    srl a
    and $01
    jr z, jr_001_652d

    ld l, c
    ld h, b

jr_001_652d:
    ldh a, [$9a]
    ld e, a
    ld a, [$d3b8]
    bit 7, a
    jr nz, jr_001_6571

    ldh a, [$94]
    srl a
    and $01
    jr z, jr_001_654a

    ldh a, [$8f]
    and d
    add e
    cp $80
    jr c, jr_001_6575

    and d
    jr jr_001_6575

jr_001_654a:
    ldh a, [$94]
    srl a
    and $03
    cp $02
    jr nc, jr_001_655e

    ldh a, [$8f]
    and d
    add e
    cp d
    jr c, jr_001_6575

    and d
    jr jr_001_6575

jr_001_655e:
    ldh a, [$8f]
    and d
    add e
    ld c, a
    cp d
    jr c, jr_001_6575

    and d
    ld e, a
    ld a, c
    cp $80
    ld a, e
    jr c, jr_001_6575

    ld a, c
    jr jr_001_6575

jr_001_6571:
    ldh a, [$8f]
    and d
    add e

jr_001_6575:
    ld e, a
    ld d, $00
    cp $80
    jr c, jr_001_657e

    ld d, $ff

jr_001_657e:
    add hl, de
    ld a, [hl]
    ld e, a
    ld d, $00
    cp $80
    jr c, jr_001_6589

    ld d, $ff

jr_001_6589:
    ldh a, [$8d]
    and $f8
    ld l, a
    ldh a, [$8e]
    ld h, a
    add hl, de
    ld a, l
    ldh [$8d], a
    ld a, h
    ldh [$8e], a
    ld a, [$dca2]
    cp $06
    ld a, [$dcbc]
    jr z, jr_001_65a4

    add $01

jr_001_65a4:
    ld [$dcbb], a
    ldh a, [$94]
    set 7, a
    set 0, a
    ldh [$94], a
    ld c, $00
    jp Jump_001_6725


Call_001_65b4:
    ld c, $08
    ld b, l
    ldh a, [$94]
    bit 7, a
    jr z, jr_001_65d5

    srl a
    and $01
    ldh a, [$a4]
    jr nz, jr_001_65cb

    bit 0, a
    jr z, jr_001_65d5

    jr jr_001_65cf

jr_001_65cb:
    bit 1, a
    jr z, jr_001_65d5

jr_001_65cf:
    ldh a, [$9a]
    cpl
    inc a
    add c
    ld c, a

jr_001_65d5:
    ldh a, [$9b]
    cpl
    inc a
    add l
    ld b, a
    call Call_000_0f4d
    call Call_000_0e91
    jr nc, jr_001_65f3

    cp $03
    jr z, jr_001_65f5

    cp $04
    jr z, jr_001_65f5

    cp $05
    jr z, jr_001_65f5

    cp $06
    jr z, jr_001_65f5

jr_001_65f3:
    xor a
    ret


jr_001_65f5:
    scf
    ret


    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff00
    cp $fd
    db $fc
    ei
    ld a, [$f8f9]
    db $fc
    db $fc
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0708], sp
    rlca
    ld b, $06
    dec b
    dec b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    db $fc
    db $fc

Jump_001_6667:
    ldh a, [$94]
    res 0, a
    ldh [$94], a
    xor a
    ld [$c2c9], a
    ldh a, [$96]
    bit 0, a
    ld c, $0c
    jr z, jr_001_667b

    ld c, $04

jr_001_667b:
    ld b, $20
    call Call_000_0f4d
    call Call_000_0e91
    ld b, $00
    jp nc, Jump_001_66a0

    cp $12
    jr z, jr_001_66d2

    cp $13
    jr z, jr_001_66d2

    cp $0d
    jr z, jr_001_66d2

    cp $0b
    jr z, jr_001_66d2

    cp $08
    jr z, jr_001_66d2

    cp $03
    jr c, jr_001_66d2

Jump_001_66a0:
    ldh a, [$96]
    bit 0, a
    ld c, $02
    jr z, jr_001_66aa

    ld c, $0f

jr_001_66aa:
    ld b, $20
    call Call_000_0f4d
    call Call_000_0e91
    ld b, $01
    jp nc, Jump_001_6833

    cp $12
    jr z, jr_001_66d2

    cp $13
    jr z, jr_001_66d2

    cp $0d
    jr z, jr_001_66d2

    cp $0b
    jr z, jr_001_66d2

    cp $08
    jr z, jr_001_66d2

    cp $03
    jr c, jr_001_66d2

    jp Jump_001_6833


Jump_001_66d2:
jr_001_66d2:
    ld c, a
    xor a
    ldh [$94], a
    ldh a, [$9d]
    ld b, a
    and $11
    jr z, jr_001_66e5

    bit 3, b
    jr nz, jr_001_66e5

    set 3, a
    jr jr_001_66e7

jr_001_66e5:
    and $f0

jr_001_66e7:
    ldh [$9d], a
    ld a, b
    and $03
    jr nz, jr_001_6725

    ld a, [$dcb2]
    or a
    jr nz, jr_001_6704

    ld a, [$c1f8]
    or a
    jr z, jr_001_6704

    ld a, $ff
    ld [$c1f8], a
    ld a, $2f
    ld [$c067], a

jr_001_6704:
    ldh a, [$9b]
    ld e, a
    ldh a, [$8d]
    add e
    push af
    and $f8
    ldh [$8d], a
    ld a, e
    cp $80
    jr c, jr_001_671e

    pop af
    ccf
    ldh a, [$8e]
    sbc $00
    ldh [$8e], a
    jr jr_001_6725

jr_001_671e:
    pop af
    ldh a, [$8e]
    adc $00
    ldh [$8e], a

Jump_001_6725:
jr_001_6725:
    xor a
    ldh [$9b], a
    ldh [$9c], a
    inc a
    ld [$c2c9], a
    ld hl, $ff96
    res 7, [hl]
    ld a, c
    cp $02
    call z, Call_001_6a72
    ld a, [$dcb2]
    or a
    jp nz, Jump_001_6825

    ld a, [$dca5]
    or a
    jr z, jr_001_6756

    xor a
    ld [$dca5], a
    ld a, [$dc80]
    bit 4, a
    jr z, jr_001_676e

    ld a, $01
    ld [$dca4], a

Jump_001_6756:
jr_001_6756:
    ld a, [$dcaf]
    or a
    jr nz, jr_001_67b6

    ld a, [$dca4]
    or a
    jr z, jr_001_676e

    ld a, [$dc80]
    bit 4, a
    jp nz, Jump_001_6825

    xor a
    ld [$dca4], a

jr_001_676e:
    ld a, [$dcb2]
    or a
    jp nz, Jump_001_6825

    ld a, [$dcaf]
    or a
    jr nz, jr_001_67b6

    ld a, [$dca2]
    cp $06
    jp z, Jump_001_6825

    ld a, [$c063]
    or a
    jr z, jr_001_6797

    ld a, [$c1ea]
    cp $06
    jr nz, jr_001_6797

    ldh a, [$8f]
    cp $69
    jp c, Jump_001_6825

jr_001_6797:
    ld a, [$dc80]
    bit 4, a
    jp z, Jump_001_6825

    ld a, $01
    ld [$dca5], a
    ld a, [$dca2]
    cp $06
    jr nz, jr_001_67b1

    xor a
    ld [$dca2], a
    jr jr_001_67b6

jr_001_67b1:
    ld a, $0d
    call Call_000_1a03

jr_001_67b6:
    ldh a, [$94]
    res 0, a
    ldh [$94], a
    ld hl, $ff9c
    ld a, [hl]
    cp $80
    jp nc, Jump_001_6833

    ld [hl], $01
    ld hl, $ff96
    res 1, [hl]
    bit 7, [hl]
    jr nz, jr_001_67da

    set 7, [hl]
    ld hl, $ff98
    ld [hl], $00
    inc hl
    ld [hl], $04

jr_001_67da:
    ld hl, $ff98
    ld a, [hl]
    sub $20
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ldh [$b2], a
    cpl
    inc a
    ldh [$9b], a
    ld c, $08
    ld b, $18
    call Call_000_0f4d
    call Call_000_0e91
    jr nc, jr_001_6804

    cp $10
    jr c, jr_001_6804

    cp $14
    jr nc, jr_001_6804

    sub $10
    jp Jump_001_6285


jr_001_6804:
    call Call_001_6a3c
    jr c, jr_001_681d

    ldh a, [$b2]
    or a
    jr nz, jr_001_6833

jr_001_680e:
    ld hl, $ff96
    res 7, [hl]
    ld a, $ff
    ldh [$9c], a
    inc a
    ld [$dcaf], a
    jr jr_001_6833

jr_001_681d:
    ld a, [$dcb2]
    or a
    jr nz, jr_001_6833

    jr jr_001_680e

Jump_001_6825:
    ld hl, $ff9c
    ld a, [hl]
    or a
    jr z, jr_001_6833

    ld [hl], $ff
    ld hl, $ff96
    res 7, [hl]

Jump_001_6833:
jr_001_6833:
    ld a, [$dca2]
    cp $04
    jr nz, jr_001_6859

    ldh a, [$9c]
    inc a
    jr nz, jr_001_6859

    ld a, [$dc95]
    or a
    jr z, jr_001_6859

    ld a, $ff
    ldh [$9b], a
    ld [$dc97], a
    call Call_001_6a3c
    jr nc, jr_001_6868

    xor a
    ldh [$9b], a
    ld [$dc97], a
    jr jr_001_6868

jr_001_6859:
    ld a, [$dc97]
    or a
    jr z, jr_001_6868

    xor a
    ld [$dc97], a
    ld hl, $ff96
    res 7, [hl]

jr_001_6868:
    ld a, [$dcb2]
    or a
    jr z, jr_001_687d

    ld a, [$c067]
    or a
    jr nz, jr_001_687d

    ld a, $01
    ldh [$a3], a
    ld a, $2a
    ldh [$91], a
    ret


jr_001_687d:
    ld a, [$dcb2]
    cp $ff
    jp nz, Jump_001_6915

    ld a, [$dc9a]
    or a
    jr nz, jr_001_68a7

    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $08
    ldh a, [$97]
    bit 3, a
    jr nz, jr_001_68a0

    set 3, a
    ldh [$97], a
    ld a, $28
    ldh [$91], a

jr_001_68a0:
    ldh a, [$91]
    xor $01
    ldh [$91], a
    ret


jr_001_68a7:
    ldh a, [$97]
    bit 3, a
    jr nz, jr_001_68d1

    set 3, a
    ldh [$97], a
    ld a, $10
    ldh [$95], a
    ld a, $04
    ld [$dcb5], a
    ld a, $28
    ldh [$91], a
    ldh a, [$96]
    res 7, a
    res 1, a
    ldh [$96], a
    xor a
    ldh [$9c], a
    inc a
    ldh [$93], a
    ld a, $10
    ld [$dcb6], a

jr_001_68d1:
    ld hl, $ff95
    dec [hl]
    ret nz

    inc [hl]
    xor a
    ldh [$9b], a
    ld a, $2b
    ldh [$91], a
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $08
    ld hl, $dcb6
    dec [hl]
    jr nz, jr_001_68f0

    ld a, $02
    ldh [$a3], a
    ret


jr_001_68f0:
    ld hl, $dcb5
    ldh a, [$97]
    bit 2, a
    jr z, jr_001_6907

    ld a, $01
    ldh [$9b], a
    dec [hl]
    ret nz

    ld [hl], $04
    ld hl, $ff97
    res 2, [hl]
    ret


jr_001_6907:
    ld a, $ff
    ldh [$9b], a
    dec [hl]
    ret nz

    ld [hl], $04
    ld hl, $ff97
    set 2, [hl]
    ret


Jump_001_6915:
    ld a, [$dca2]
    cp $01
    ld a, [$dc80]
    jr nz, jr_001_6922

    bit 5, a
    ret nz

jr_001_6922:
    and $03
    jr nz, jr_001_6956

    xor a
    ldh [$97], a
    inc a
    ldh [$95], a
    ld a, [$dcb2]
    dec a
    jp z, Jump_001_69db

    ld a, [$dca2]
    cp $04
    jr nz, jr_001_6948

    ldh a, [$9c]
    cp $01
    ld a, $00
    jp nz, Jump_001_6a2b

    ld a, $03
    jp Jump_001_6a2b


jr_001_6948:
    ldh a, [$9c]
    cp $01
    ld a, $00
    jp nz, Jump_001_69db

    ld a, $03
    jp Jump_001_6a27


jr_001_6956:
    ld a, [$dc80]
    and $03
    ld c, a
    ldh a, [$94]
    bit 7, a
    jr z, jr_001_6966

    res 0, a
    ldh [$94], a

jr_001_6966:
    ld hl, $ff97
    res 3, [hl]
    ld a, [hl]
    ld [hl], c
    cp c
    jr nz, jr_001_6980

    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $08
    ld a, [$dcbc]
    cp $02
    jr c, jr_001_6980

    ld [hl], $05

jr_001_6980:
    ld a, [$dc80]
    bit 0, a
    jr z, jr_001_69ac

    ld hl, $ff96
    res 0, [hl]
    ld a, [$dcb2]
    dec a
    jr z, jr_001_699a

    ldh a, [$9c]
    or a
    ld a, $03
    jp nz, Jump_001_6a27

jr_001_699a:
    ld a, [$dca2]
    cp $06
    ld a, $04
    jr z, jr_001_69db

    ldh a, [$95]
    inc a
    and $03
    ldh [$95], a
    jr jr_001_69d4

jr_001_69ac:
    ld a, [$dc80]
    bit 1, a
    ret z

    ld hl, $ff96
    set 0, [hl]
    ld a, [$dcb2]
    dec a
    jr z, jr_001_69c4

    ldh a, [$9c]
    or a
    ld a, $03
    jr nz, jr_001_6a27

jr_001_69c4:
    ld a, [$dca2]
    cp $06
    ld a, $04
    jr z, jr_001_69db

    ldh a, [$95]
    dec a
    and $03
    ldh [$95], a

jr_001_69d4:
    ld hl, $6a38
    call Call_000_1b61
    ld a, [hl]

Jump_001_69db:
jr_001_69db:
    ld c, a
    ldh a, [$91]
    ld b, a
    ld a, [$dca2]
    cp $02
    jr c, jr_001_69f3

    cp $06
    jr nc, jr_001_69f3

    ld hl, $6a32
    call Call_000_1b61
    ld a, [hl]
    add c
    ld c, a

jr_001_69f3:
    ld a, c
    ldh [$91], a
    ld a, [$dca2]
    cp $04
    ret nz

    ld a, [$c2c9]
    or a
    ret nz

    ld a, $06
    ldh [$93], a
    ld a, [$c2ca]
    or a
    jr nz, jr_001_6a11

    ld a, [$dc95]
    or a
    jr z, jr_001_6a17

jr_001_6a11:
    inc a
    and $03
    ld [$c2ca], a

jr_001_6a17:
    ld hl, $6a23
    call Call_000_1b61
    ld a, [hl]
    add $36
    ldh [$91], a
    ret


    nop
    ld bc, $0102

Jump_001_6a27:
jr_001_6a27:
    ldh [$95], a
    jr jr_001_69db

Jump_001_6a2b:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $06
    jr jr_001_69db

    dec b
    ld a, [bc]
    rrca
    inc d
    ld [bc], a
    ld bc, $0302

Call_001_6a3c:
    ld a, [$c070]
    cp $10
    ret z

    cp $11
    ret z

    cp $12
    ret z

    ld bc, $0000
    call Call_000_0f4d
    call Call_000_0e91
    jr nc, jr_001_6a5b

    cp $01
    jr z, jr_001_6a70

    cp $0e
    jr z, jr_001_6a70

jr_001_6a5b:
    ld bc, $0008
    call Call_000_0f4d
    call Call_000_0e91
    jr nc, jr_001_6a6e

    cp $01
    jr z, jr_001_6a70

    cp $0e
    jr z, jr_001_6a70

jr_001_6a6e:
    xor a
    ret


jr_001_6a70:
    scf
    ret


Call_001_6a72:
    ld a, b
    ldh [$b2], a
    ld hl, $d770
    ld de, $0006
    ld b, $04

jr_001_6a7d:
    ld a, [hl]
    cp $ff
    jr z, jr_001_6a87

    add hl, de
    dec b
    jr nz, jr_001_6a7d

    ret


jr_001_6a87:
    ld a, $01
    ld [hl+], a
    ld a, [$c070]
    ld de, $39ba
    call Call_000_1b5b
    ld a, [de]
    ld [hl+], a
    ld a, [$dca6]
    ld [hl+], a
    ld a, [$dca7]
    ld [hl+], a
    ldh a, [$b2]
    or a
    ld c, $0b
    jr z, jr_001_6aa6

    ld c, $03

jr_001_6aa6:
    ldh a, [$96]
    bit 0, a
    jr z, jr_001_6ab5

    ldh a, [$b2]
    or a
    ld c, $04
    jr z, jr_001_6ab5

    ld c, $0c

jr_001_6ab5:
    ldh a, [$be]
    ld b, a
    and $08
    srl a
    srl a
    srl a
    add c
    ld c, a
    ldh a, [$a1]
    sub $08
    add c
    add b
    and $f0
    srl a
    srl a
    srl a
    ld c, a
    ldh a, [$9b]
    ld b, a
    ldh a, [$bf]
    add b
    ld b, a
    ldh a, [$a2]
    sub $10
    add $24
    add b
    and $f0
    srl a
    srl a
    srl a
    ld b, a
    push hl
    ld hl, $9800
    jr z, jr_001_6af5

    ld de, $0020

jr_001_6af1:
    add hl, de
    dec b
    jr nz, jr_001_6af1

jr_001_6af5:
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Call_001_6afd:
Jump_001_6afd:
    ldh a, [$9b]
    ld e, a
    ldh a, [$8d]
    add e
    push af
    and $f8
    ldh [$8d], a
    ld a, e
    cp $80
    jr c, jr_001_6b17

    pop af
    ccf
    ldh a, [$8e]
    sbc $00
    ldh [$8e], a
    jr jr_001_6b1e

jr_001_6b17:
    pop af
    ldh a, [$8e]
    adc $00
    ldh [$8e], a

jr_001_6b1e:
    xor a
    ldh [$9b], a
    ldh [$9c], a
    ld hl, $ff96
    res 7, [hl]
    ret


    call Call_001_4abe
    jp Jump_001_6e08


    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_6b49

    set 7, a
    ldh [$96], a
    ld a, $60
    ldh [$95], a
    ld a, $01
    ldh [$93], a
    ldh a, [$8f]
    ldh [$98], a
    ldh a, [$90]
    ldh [$99], a

jr_001_6b49:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $0a
    ld hl, $ff95
    dec [hl]
    jr nz, jr_001_6b60

    ld [hl], $60
    ldh a, [$98]
    ldh [$8f], a
    ldh a, [$99]
    ldh [$90], a

jr_001_6b60:
    ldh a, [$96]
    bit 0, a
    ld a, $ff
    jr nz, jr_001_6b6a

    ld a, $01

jr_001_6b6a:
    ldh [$9a], a
    ret


    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_6b91

    set 7, a
    ldh [$96], a
    ld a, $50
    ldh [$95], a
    ld a, $04
    ldh [$93], a
    ldh a, [$96]
    bit 6, a
    jr nz, jr_001_6b91

    set 6, a
    ldh [$96], a
    ldh a, [$8f]
    ldh [$98], a
    ldh a, [$90]
    ldh [$99], a

jr_001_6b91:
    ld hl, $ff95
    dec [hl]
    jr z, jr_001_6b9f

jr_001_6b97:
    xor a
    ldh [$8f], a
    ldh [$90], a
    ldh [$91], a
    ret


jr_001_6b9f:
    inc [hl]
    ld a, [$c1e3]
    or a
    ret nz

    ldh a, [$98]
    ldh [$8f], a
    ldh a, [$99]
    ldh [$90], a
    ld hl, $ff93
    dec [hl]
    jr nz, jr_001_6bc5

    ld [hl], $04
    ldh a, [$91]
    inc a
    ldh [$91], a
    cp $03
    jr c, jr_001_6bc5

    ld hl, $ff96
    res 7, [hl]
    jr jr_001_6b97

jr_001_6bc5:
    ldh a, [$91]
    or a
    ret z

    ld a, $09
    call Call_000_1a0f
    call Call_001_76d3
    jr nc, jr_001_6bdf

    ld a, [$d3c7]
    cp $ff
    jr nz, jr_001_6bdf

    ld a, $03
    ld [$d3c7], a

jr_001_6bdf:
    ld hl, $c1d6
    call Call_000_09e1
    ld hl, $ffc7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0044
    add hl, de
    call Call_001_79ee
    ld a, h
    or a
    ret nz

    ld a, l
    add $28
    ld h, a
    ldh a, [$a1]
    cp l
    ret c

    cp h
    ret nc

    ld a, [$c0ec]
    or a
    ret nz

    ld a, $10
    ld [$c0ec], a
    ld hl, $c1ed
    dec [hl]
    ret


    call Call_001_4abe
    call Call_001_6fd4
    ld a, $ff
    ldh [$9c], a
    ldh a, [$96]
    bit 0, a
    ld c, $02
    jr z, jr_001_6c22

    ld c, $0f

jr_001_6c22:
    ld b, $10
    ldh a, [$a0]
    cp $33
    jr nz, jr_001_6c2c

    ld b, $20

jr_001_6c2c:
    call Call_000_0f2e
    jr nc, jr_001_6c34

    call Call_001_6afd

jr_001_6c34:
    ldh a, [$a0]
    cp $0d
    call z, Call_001_6f4e
    cp $01
    call z, Call_001_6f4e
    cp $05
    call z, Call_001_6f4e
    ldh a, [$9c]
    or a
    jr nz, jr_001_6c7e

    ldh a, [$96]
    bit 0, a
    ld a, $01
    ld c, $10
    jr z, jr_001_6c58

    ld a, $ff
    ld c, $00

jr_001_6c58:
    ldh [$9a], a
    ld b, $08
    ldh a, [$a0]
    cp $33
    jr nz, jr_001_6c64

    ld b, $18

jr_001_6c64:
    call Call_000_0de7
    jr nc, jr_001_6c7e

    ldh a, [$96]
    xor $01
    set 3, a
    ldh [$96], a
    xor a
    ldh [$9a], a
    ldh a, [$a0]
    cp $01
    ret nz

    ld a, $03
    ldh [$91], a
    ret


jr_001_6c7e:
    ldh a, [$a0]
    cp $33
    jr z, jr_001_6cb7

    ldh a, [$95]
    inc a
    and $07
    ldh [$95], a
    ret nz

Jump_001_6c8c:
    ldh a, [$a0]
    cp $0d
    jr z, jr_001_6cb0

    ld hl, $ff91
    ldh a, [$96]
    bit 3, a
    jr nz, jr_001_6ca7

    inc [hl]
    ld a, [hl]
    cp $03
    ret c

    dec [hl]
    ldh a, [$96]
    set 3, a
    ldh [$96], a

jr_001_6ca7:
    dec [hl]
    ret nz

    ldh a, [$96]
    res 3, a
    ldh [$96], a
    ret


jr_001_6cb0:
    ldh a, [$91]
    xor $01
    ldh [$91], a
    ret


jr_001_6cb7:
    ldh a, [$95]
    inc a
    and $03
    ldh [$95], a
    ret nz

    ldh a, [$93]
    inc a
    and $03
    ldh [$93], a
    ldh [$91], a
    cp $03
    ret nz

    ld a, $01
    ldh [$91], a
    ret


Jump_001_6cd0:
    ldh a, [$a0]
    cp $05
    jp nz, Jump_001_6d5a

    ldh a, [$97]
    or a
    jr nz, jr_001_6cfd

    ld a, $03
    ldh [$91], a
    ldh [$97], a
    ld a, $05
    ld [$dc98], a
    ld a, $0a
    ldh [$95], a
    ldh a, [$8d]
    ld l, a
    ldh a, [$8e]
    ld h, a
    ld de, $ffeb
    add hl, de
    ld a, l
    ld [$dcad], a
    ld a, h
    ld [$dcae], a

jr_001_6cfd:
    ld a, [$dcad]
    ld [$d3b1], a
    ld a, [$dcae]
    ld [$d3b2], a
    xor a
    ld [$d3bf], a
    ld hl, $ff95
    dec [hl]
    ret nz

    inc [hl]
    ld a, $00
    call Call_000_1a0f
    ld a, $0e
    ld hl, $4003
    call Call_000_1a4c
    ld a, $01
    ld [$d3c0], a
    dec a
    ld [$d3bc], a
    ld [$dc98], a
    ldh [$97], a
    ld a, [$d3ba]
    res 1, a
    set 7, a
    ld [$d3ba], a
    ld a, $05
    ld [$d3bd], a
    ldh a, [$96]
    bit 0, a
    ld c, $01
    jr z, jr_001_6d47

    ld c, $81

jr_001_6d47:
    bit 3, a
    ld a, $00
    jr z, jr_001_6d4f

    ld a, $02

jr_001_6d4f:
    ldh [$91], a
    ld a, c
    ld [$dcaf], a
    ld hl, $ffa3
    dec [hl]
    ret


Jump_001_6d5a:
    cp $04
    jr z, jr_001_6d6e

    cp $02
    jr z, jr_001_6d6e

    cp $37
    jp z, Jump_001_6d6e

    cp $38
    jr z, jr_001_6d6e

    jp Jump_001_6ea5


Jump_001_6d6e:
jr_001_6d6e:
    ldh a, [$97]
    or a
    jr nz, jr_001_6db1

    ld a, $02
    ldh [$97], a
    ldh [$91], a
    ldh a, [$a0]
    cp $02
    jr nz, jr_001_6d83

    ld a, $03
    ldh [$91], a

jr_001_6d83:
    ld a, $40
    ldh [$95], a
    ldh a, [$96]
    bit 0, a
    ld a, $01
    jr z, jr_001_6d91

    ld a, $81

jr_001_6d91:
    ld [$dcaf], a
    xor a
    ld [$d3bc], a
    ld a, $02
    ld [$d3bd], a
    ld a, $01
    ld [$d3c0], a
    ld a, [$d3ba]
    res 1, a
    set 7, a
    ld [$d3ba], a
    ld a, $07
    call Call_000_1a0f

jr_001_6db1:
    call Call_001_6fd4
    ld c, $08
    ld b, $10
    call Call_000_0f2e
    jr nc, jr_001_6dc0

    call Call_001_6afd

jr_001_6dc0:
    ld a, [$dca2]
    cp $01
    jr nz, jr_001_6dfc

    ld a, [$d3b5]
    cp $02
    jr nz, jr_001_6dfc

    call Call_001_7678
    call Call_001_76b1
    ld a, e
    add $10
    ld e, a
    ld a, [$d3ba]
    bit 0, a
    jr z, jr_001_6de3

    ld a, e
    sub $18
    ld e, a

jr_001_6de3:
    ld a, d
    add $18
    ld d, a
    add $08
    ld h, a
    ld a, e
    add $04
    ld l, a
    call Call_001_76e8
    jr nc, jr_001_6dfc

    ld a, $08
    call Call_000_1a0f
    ld a, $40
    ldh [$a3], a

jr_001_6dfc:
    ld hl, $ff95
    dec [hl]
    ret nz

    inc [hl]
    xor a
    ldh [$97], a
    ldh [$91], a
    ret


Jump_001_6e08:
    xor a
    ldh [$91], a
    ld hl, $ff93
    dec [hl]
    ret nz

    inc [hl]
    ldh a, [$96]
    bit 7, a
    jr nz, jr_001_6e1e

    ld c, $00
    ld b, $03
    call Call_001_6f82

jr_001_6e1e:
    ldh a, [$a0]
    cp $11
    ld a, $01
    jr nz, jr_001_6e28

    ld a, $02

jr_001_6e28:
    ldh [$91], a
    ldh a, [$96]
    bit 0, a
    ld a, $01
    ld c, $10
    jr z, jr_001_6e38

    ld a, $ff
    ld c, $00

jr_001_6e38:
    ldh [$9a], a
    ld b, $08
    call Call_000_0de7
    jr nc, jr_001_6e4a

    ldh a, [$96]
    xor $01
    ldh [$96], a
    xor a
    ldh [$9a], a

jr_001_6e4a:
    ldh a, [$9c]
    cp $02
    jp c, Jump_001_6f9c

    ldh a, [$9c]
    cp $ff
    call z, Call_001_6fd4
    ld b, $10
    ld c, $00
    call Call_000_0f2e
    jr c, jr_001_6e68

    ld a, e
    cp $07
    ret nc

    cp $03
    ret c

jr_001_6e68:
    call Call_001_6afd
    xor a
    ldh [$91], a
    ld a, $14
    ldh [$93], a
    ret


jr_001_6e73:
    ldh a, [$95]
    bit 7, a
    jp z, Jump_001_5ce1

    ld c, $01
    call Call_001_5dd2
    ld a, $02
    ldh [$9b], a
    call Call_001_5e41
    ret nz

    cp $08
    ret nc

    xor a
    ldh [$95], a
    ret


    ldh a, [$97]
    or a
    jp nz, Jump_001_6cd0

    ld a, [$c0ca]
    or a
    jr nz, jr_001_6ea5

    xor a
    ld a, [$d3c0]
    inc a
    call z, Call_001_75a2
    jp c, Jump_001_6cd0

Jump_001_6ea5:
jr_001_6ea5:
    ld a, [$dcaf]
    or a
    jr nz, jr_001_6eae

    call Call_001_4abe

jr_001_6eae:
    ldh a, [$a0]
    cp $38
    jp z, Jump_001_6e08

    cp $04
    jr z, jr_001_6e73

    call Call_001_6fd4
    ld a, $ff
    ldh [$9c], a
    ldh a, [$96]
    bit 0, a
    ld c, $02
    jr z, jr_001_6eca

    ld c, $17

jr_001_6eca:
    ld b, $10
    call Call_000_0f2e
    jr nc, jr_001_6ed4

    call Call_001_6afd

jr_001_6ed4:
    ldh a, [$a0]
    cp $37
    jr z, jr_001_6eeb

    cp $02
    call z, Call_001_6f4e
    cp $05
    call z, Call_001_6f4e
    ldh a, [$9c]
    or a
    jr nz, jr_001_6f38

    jr jr_001_6f18

jr_001_6eeb:
    ldh a, [$96]
    bit 0, a
    ld a, $01
    ld c, $18
    jr z, jr_001_6ef9

    ld a, $ff
    ld c, $fc

jr_001_6ef9:
    ldh [$9a], a
    ld b, $08
    push bc
    call Call_000_0de7
    pop bc
    jr c, jr_001_6f2f

    ld a, e
    cp $03
    jr c, jr_001_6f0f

    cp $07
    jr nc, jr_001_6f0f

    jr jr_001_6f2f

jr_001_6f0f:
    ld b, $10
    call Call_000_0f2e
    jr c, jr_001_6f38

    jr jr_001_6f2f

jr_001_6f18:
    ldh a, [$96]
    bit 0, a
    ld a, $01
    ld c, $18
    jr z, jr_001_6f26

    ld a, $ff
    ld c, $00

jr_001_6f26:
    ldh [$9a], a
    ld b, $08
    call Call_000_0de7
    jr nc, jr_001_6f38

jr_001_6f2f:
    ldh a, [$96]
    xor $01
    ldh [$96], a
    xor a
    ldh [$9a], a

jr_001_6f38:
    ldh a, [$95]
    inc a
    and $03
    ldh [$95], a
    ret nz

    ldh a, [$a0]
    cp $05
    jp z, Jump_001_6c8c

    ldh a, [$91]
    xor $01
    ldh [$91], a
    ret


Call_001_6f4e:
    push af
    ldh a, [$a0]
    ld hl, $3048
    call Call_000_1b67
    ld de, $0002
    add hl, de
    ld a, [hl+]
    add a
    add a
    add a
    ld c, a
    ld a, [hl]
    add a
    add a
    add a
    add $08
    ld b, a
    ldh a, [$96]
    bit 0, a
    jr z, jr_001_6f6f

    ld c, $fc

jr_001_6f6f:
    call Call_000_0f2e
    jr c, jr_001_6f80

    ldh a, [$96]
    xor $01
    ldh [$96], a
    ldh a, [$9a]
    cpl
    inc a
    ldh [$9a], a

jr_001_6f80:
    pop af
    ret


Call_001_6f82:
Jump_001_6f82:
    ldh a, [$9c]
    cp $80
    ret nc

    ld hl, $ff96
    bit 7, [hl]
    ret nz

    res 1, [hl]
    set 7, [hl]
    ld a, $01
    ldh [$9c], a
    ld hl, $ff98
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Call_001_6f9c:
Jump_001_6f9c:
    ldh a, [$9c]
    cp $80
    ret nc

    ld a, $01
    ldh [$9c], a
    ld hl, $ff96
    res 1, [hl]
    bit 7, [hl]
    jr nz, jr_001_6fb8

    set 7, [hl]
    ld hl, $ff98
    ld [hl], $00
    inc hl
    ld [hl], $04

jr_001_6fb8:
    ld hl, $ff98
    ld a, [hl]
    sub $20
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    cpl
    inc a
    ldh [$9b], a
    ret nz

    ld hl, $ff96
    set 1, [hl]
    res 7, [hl]
    ld a, $ff
    ldh [$9c], a
    ret


Call_001_6fd4:
    ld hl, $ff96
    set 1, [hl]
    bit 7, [hl]
    jr nz, jr_001_6ffd

    ld hl, $ff99
    ldh a, [$9c]
    or a
    jr z, jr_001_6fe9

    ld a, [hl]
    or a
    jr nz, jr_001_6ff5

jr_001_6fe9:
    ld [hl], $01
    dec hl
    ld [hl], $00
    ld hl, $ff96
    set 7, [hl]
    jr jr_001_6ffd

jr_001_6ff5:
    dec [hl]
    ld c, [hl]
    ld a, c
    cpl
    inc a
    ldh [$9b], a
    ret


jr_001_6ffd:
    ld hl, $ff98
    ld a, [hl]
    add $20
    ld [hl+], a
    ld a, [hl]
    adc $00
    cp $04
    jr c, jr_001_700d

    ld a, $04

jr_001_700d:
    ld [hl], a
    ldh [$9b], a
    ld a, $ff
    ldh [$9c], a
    ret


    xor a
    ldh [$9c], a
    ldh a, [$a0]
    cp $21
    jr nz, jr_001_7048

    call Call_001_5427
    ld a, [$d3c0]
    cp $01
    jr z, jr_001_7079

    xor a
    ldh [$9c], a
    call Call_001_7678
    ldh a, [$b6]
    inc a
    ldh [$b6], a
    add $0e
    ldh [$b7], a
    ldh a, [$b8]
    add $06
    ldh [$b9], a
    call Call_001_75c8
    jr nc, jr_001_7079

    ld a, $01
    ldh [$9c], a
    jr jr_001_7056

jr_001_7048:
    ld a, [$d3c0]
    cp $01
    ret z

    call Call_001_75a2
    ret nc

    ld a, $01
    ldh [$9c], a

jr_001_7056:
    ldh a, [$8d]
    ld l, a
    ldh a, [$8e]
    ld h, a
    ld de, $ffe1
    add hl, de
    ld a, l
    ld [$d3b1], a
    ld a, h
    ld [$d3b2], a
    xor a
    ld [$d3bf], a
    ld [$d3c0], a
    ld a, [$d3c1]
    or $01
    ld [$d3c1], a
    jr jr_001_70c9

jr_001_7079:
    ld b, $10
    ld hl, $d3df

jr_001_707e:
    ld a, [hl]
    cp $22
    push hl
    call z, Call_001_708f
    pop hl
    ld de, $001b
    add hl, de
    dec b
    jr nz, jr_001_707e

    jr jr_001_70c9

Call_001_708f:
    ld de, $ffec
    add hl, de
    push hl
    ld de, $0010
    add hl, de
    ld a, [hl]
    or a
    pop hl
    ret nz

    push hl
    ld de, $0015
    add hl, de
    ld a, [hl+]
    ldh [$b6], a
    add $10
    ldh [$b7], a
    ld a, [hl]
    ldh [$b8], a
    add $10
    ldh [$b9], a
    ldh a, [$a1]
    add $08
    ld e, a
    add $10
    ld l, a
    ldh a, [$a2]
    ld d, a
    add $06
    ld h, a
    call Call_001_76e8
    pop hl
    ret nc

    ld de, $0010
    add hl, de
    ld [hl], $01
    ret


jr_001_70c9:
    ldh a, [$a0]
    cp $09
    jp z, Jump_001_714f

    cp $0a
    jr z, jr_001_70ef

    cp $0b
    jr z, jr_001_70dd

    cp $21
    jr z, jr_001_7125

    ret


jr_001_70dd:
    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_70f9

    ld a, [$d3ba]
    and $01
    rlca
    set 7, a
    ld [hl], a
    jr jr_001_70f9

jr_001_70ef:
    ld a, [$d3ba]
    ld hl, $ff96
    and $01
    rlca
    ld [hl], a

jr_001_70f9:
    bit 1, [hl]
    ld c, $01
    jr z, jr_001_710c

    res 1, [hl]
    ld c, $ff
    ldh a, [$a1]
    cp $09
    ret c

    set 1, [hl]
    jr jr_001_7115

jr_001_710c:
    set 1, [hl]
    ldh a, [$a1]
    cp $98
    ret nc

    res 1, [hl]

jr_001_7115:
    ld a, c
    ldh [$9a], a
    ldh a, [$a0]
    cp $0b
    ret z

    ld a, [$d3be]
    add c
    ld [$d3be], a
    ret


jr_001_7125:
    ld hl, $ff96
    bit 1, [hl]
    ld a, $01
    ld c, $0e
    jr nz, jr_001_7134

    ld c, $ff
    ld a, $ff

jr_001_7134:
    ldh [$9a], a
    ld a, $28
    ldh [$98], a
    ld b, $00
    call Call_000_0de7
    ldh a, [$9a]
    jr nc, jr_001_7166

    cpl
    inc a
    ldh [$9a], a
    ldh a, [$96]
    xor $02
    ldh [$96], a
    jr jr_001_7166

Jump_001_714f:
    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_715e

    set 7, [hl]
    res 1, a
    ld a, $28
    ldh [$98], a

jr_001_715e:
    bit 1, [hl]
    ld a, $01
    jr z, jr_001_7166

    ld a, $ff

jr_001_7166:
    ldh [$9a], a
    ld c, a
    ldh a, [$9c]
    or a
    ret z

    ld a, [$d3be]
    add c
    ld [$d3be], a
    ldh a, [$98]
    dec a
    ldh [$98], a
    ret nz

    ld a, $28
    ldh [$98], a
    ld a, [hl]
    xor $02
    ld [hl], a
    ret


    ld a, [$c1ea]
    cp $00
    jp z, Jump_001_7352

    cp $01
    jp z, Jump_001_72c4

    cp $02
    jp z, Jump_001_7208

    cp $04
    jp z, Jump_001_7208

    cp $06
    ret nz

    ldh a, [$94]
    or a
    jr nz, jr_001_71ab

    xor a
    ldh [$a6], a
    inc a
    ldh [$91], a
    jp Jump_001_720d


jr_001_71ab:
    ldh a, [$a5]
    or a
    jp z, Jump_001_720d

    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_71dc

    set 7, [hl]
    ld hl, $c1d9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    ldh a, [$98]
    ld e, a
    add hl, de
    ld a, l
    ldh [$8f], a
    ld a, h
    ldh [$90], a
    ld hl, $c1d7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$99]
    ld e, a
    add hl, de
    ld a, l
    ldh [$8d], a
    ld a, h
    ldh [$8e], a

jr_001_71dc:
    ld a, $03
    ldh [$9a], a
    ld a, $01
    call Call_001_4a12
    ld a, e
    ldh [$b6], a
    ld a, l
    ldh [$b7], a
    ld a, d
    ldh [$b8], a
    ld a, h
    ldh [$b9], a
    call Call_001_76b1
    call Call_001_76e8
    ret nc

    ld a, [$d3c7]
    inc a
    ret nz

    ld a, [$c0cc]
    or a
    ret nz

    ld a, $10
    ld [$c0cc], a
    ret


Jump_001_7208:
    ldh a, [$94]
    or a
    jr nz, jr_001_721d

Jump_001_720d:
jr_001_720d:
    xor a
    ldh [$8d], a
    ldh [$8e], a
    ldh [$8f], a
    ldh [$90], a
    ldh [$96], a
    ldh [$94], a
    ldh [$a5], a
    ret


jr_001_721d:
    ldh a, [$a5]
    or a
    jr z, jr_001_720d

    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_7257

    set 7, [hl]
    ld hl, $c1d9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    ldh a, [$98]
    ld e, a
    add hl, de
    ld a, l
    ldh [$8f], a
    ld a, h
    ldh [$90], a
    ld hl, $c1d7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$99]
    ld e, a
    add hl, de
    ld a, l
    ldh [$8d], a
    ld a, h
    ldh [$8e], a
    ld a, $05
    ldh [$95], a
    xor a
    ldh [$91], a
    inc a
    ldh [$93], a

jr_001_7257:
    ld hl, $ff95
    dec [hl]
    jr nz, jr_001_726e

    ld [hl], $02
    ldh a, [$a0]
    cp $20
    jr z, jr_001_726e

    ldh a, [$91]
    cp $03
    jr z, jr_001_726e

    inc a
    ldh [$91], a

jr_001_726e:
    xor a
    ldh [$9b], a
    ld a, $fe
    ldh [$9a], a
    call Call_001_7678
    ldh a, [$b8]
    add $06
    ldh [$b9], a
    ldh a, [$b6]
    add $08
    ldh [$b7], a
    call Call_001_76b1
    call Call_001_76e8
    jr nc, jr_001_729e

    ld a, [$d3c7]
    cp $ff
    jr nz, jr_001_729e

    ld a, [$c0ca]
    or a
    jr nz, jr_001_729e

    ld a, $03
    ld [$d3c7], a

jr_001_729e:
    ld hl, $ff93
    dec [hl]
    ret nz

    ldh a, [$a4]
    and $07
    ld hl, $72b4
    call Call_000_1b67
    ld a, l
    ldh [$9b], a
    ld a, h
    ldh [$93], a
    ret


    nop
    inc b
    ld bc, $ff04
    inc b
    ld bc, $0004
    inc b
    rst $38
    inc b
    ld bc, $ff04
    inc b

Jump_001_72c4:
    call Call_001_4abe
    ld a, [$c1eb]
    bit 6, a
    jr nz, jr_001_72d6

    xor a
    ldh [$8d], a
    ldh [$8e], a
    ldh [$96], a
    ret


jr_001_72d6:
    ld a, [$c1eb]
    bit 0, a
    ld hl, $0070
    jr nz, jr_001_72e3

    ld hl, $0080

jr_001_72e3:
    ld a, l
    ldh [$8d], a
    ld a, h
    ldh [$8e], a
    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_7300

    set 7, [hl]
    res 0, [hl]
    ld hl, $ff97
    ld [hl], $00
    ld a, $0a
    ldh [$93], a
    xor a
    ldh [$98], a

jr_001_7300:
    ldh a, [$97]
    bit 1, a
    jr z, jr_001_732f

    ld hl, $ff93
    inc [hl]
    ld a, [hl]
    cp $0b
    jr c, jr_001_731a

jr_001_730f:
    ld a, $01
    ld [$c1ec], a
    xor a
    ldh [$93], a
    ldh [$98], a
    ret


jr_001_731a:
    ld de, $0054
    call Call_001_7404
    ld hl, $ff93
    ldh a, [$98]
    sub [hl]
    ldh [$98], a
    jr c, jr_001_730f

    cpl
    inc a
    jp Jump_001_7985


jr_001_732f:
    ld hl, $ff93
    dec [hl]
    jr nz, jr_001_733f

    ld [hl], $00
    ldh a, [$97]
    set 1, a
    ldh [$97], a
    jr jr_001_7300

jr_001_733f:
    ld de, $0054
    call Call_001_7404
    ld hl, $ff93
    ldh a, [$98]
    add [hl]
    ldh [$98], a
    cpl
    inc a
    jp Jump_001_7985


Jump_001_7352:
    call Call_001_4abe
    ld a, [$c0ea]
    or a
    ld c, $00
    jr z, jr_001_735f

    ld c, $80

jr_001_735f:
    ld a, [$d323]
    and $7f
    or c
    ld [$d323], a
    ld [$d327], a
    ld hl, $ff96
    bit 7, [hl]
    jr nz, jr_001_7385

    set 7, [hl]
    res 0, [hl]
    ld hl, $ff97
    ld [hl], $00
    ld a, $0b
    ldh [$93], a
    xor a
    ldh [$98], a
    ld [$c0ea], a

jr_001_7385:
    ldh a, [$97]
    bit 1, a
    jr z, jr_001_73d3

    ld hl, $ff93
    inc [hl]
    ld a, [hl]
    cp $0c
    jr c, jr_001_73a8

jr_001_7394:
    ld a, $0b
    ldh [$93], a
    xor a
    ldh [$98], a
    ld hl, $ff97
    res 1, [hl]
    ldh a, [$96]
    xor $01
    ldh [$96], a
    jr jr_001_7385

jr_001_73a8:
    call Call_001_7401
    ld hl, $ff93
    ldh a, [$96]
    bit 0, a
    jr z, jr_001_73c2

    xor a
    ld [$c0ea], a
    ldh a, [$98]
    sub [hl]
    ldh [$98], a
    jr c, jr_001_7394

    jp Jump_001_7985


jr_001_73c2:
    ld a, $01
    ld [$c0ea], a
    ldh a, [$98]
    sub [hl]
    ldh [$98], a
    jr c, jr_001_7394

    cpl
    inc a
    jp Jump_001_7985


jr_001_73d3:
    ld hl, $ff93
    dec [hl]
    jr nz, jr_001_73e3

    ld [hl], $00
    ldh a, [$97]
    set 1, a
    ldh [$97], a
    jr jr_001_7385

jr_001_73e3:
    call Call_001_7401
    ld hl, $ff93
    ldh a, [$96]
    bit 0, a
    jr z, jr_001_73f7

    ldh a, [$98]
    add [hl]
    ldh [$98], a
    jp Jump_001_7985


jr_001_73f7:
    ldh a, [$98]
    add [hl]
    ldh [$98], a
    cpl
    inc a
    jp Jump_001_7985


Call_001_7401:
    ld de, $0050

Call_001_7404:
    ld a, [$c1d9]
    ld l, a
    ld a, [$c1da]
    ld h, a
    add hl, de
    ld a, l
    ldh [$8f], a
    ld a, h
    ldh [$90], a
    ret


    call Call_001_4abe
    ldh a, [$9c]
    or a
    jr z, jr_001_7429

    cp $ff
    jr z, jr_001_7459

    ld a, $02
    ldh [$91], a
    call Call_001_6f9c
    jr jr_001_7478

jr_001_7429:
    ld hl, $ff93
    dec [hl]
    ret nz

    ld [hl], $14
    ld hl, $ff95
    ld a, [hl]
    or a
    jr z, jr_001_7449

    dec [hl]
    jr nz, jr_001_743e

    xor a
    ldh [$91], a
    ret


jr_001_743e:
    ldh a, [$91]
    xor $02
    ldh [$91], a
    ld a, $04
    ldh [$93], a
    ret


jr_001_7449:
    ldh a, [$91]
    xor $01
    ldh [$91], a
    ret nz

    ld c, $00
    ld b, $04
    call Call_001_6f82
    jr jr_001_7478

jr_001_7459:
    call Call_001_6fd4
    ldh a, [$96]
    bit 0, a
    ld c, $02
    jr z, jr_001_7466

    ld c, $17

jr_001_7466:
    ld b, $20
    call Call_000_0f2e
    jr nc, jr_001_7478

    ld a, $01
    ldh [$93], a
    ld a, $04
    ldh [$95], a
    jp Jump_001_6afd


jr_001_7478:
    ldh a, [$96]
    bit 0, a
    ld a, $02
    ld c, $18
    jr z, jr_001_7486

    ld a, $fe
    ld c, $00

jr_001_7486:
    ldh [$9a], a
    ld b, $18
    call Call_000_0de7
    ret nc

    ldh a, [$96]
    xor $01
    ldh [$96], a
    ldh a, [$9a]
    cpl
    inc a
    ldh [$9a], a
    ret


    call Call_001_4abe
    ldh a, [$9c]
    cp $01
    call z, Call_001_6f9c
    ldh a, [$9c]
    or a
    jr z, jr_001_74c5

    cp $ff
    jr nz, jr_001_74d0

    call Call_001_6fd4
    ldh a, [$96]
    bit 0, a
    ld c, $02
    jr z, jr_001_74bb

    ld c, $0f

jr_001_74bb:
    ld b, $10
    call Call_000_0f2e
    jr nc, jr_001_74d0

    call Call_001_6afd

jr_001_74c5:
    ld b, $04
    ld c, $00
    call Call_001_6f82
    ld a, $02
    ldh [$93], a

jr_001_74d0:
    cp $0f
    jr nz, jr_001_74d8

    xor a
    ldh [$a3], a
    ret


jr_001_74d8:
    ldh a, [$95]
    xor $01
    ldh [$95], a
    jr nz, jr_001_74e7

    ldh a, [$91]
    inc a
    and $03
    ldh [$91], a

jr_001_74e7:
    ldh a, [$96]
    bit 0, a
    ld a, $02
    ld c, $08
    jr z, jr_001_74f5

    ld a, $fe
    ld c, $00

jr_001_74f5:
    ldh [$9a], a
    ld b, $08
    call Call_000_0de7
    ret nc

    ldh a, [$96]
    xor $01
    ldh [$96], a
    ldh a, [$9a]
    cpl
    inc a
    ldh [$9a], a
    ret


    ldh a, [$9c]
    or a
    jr nz, jr_001_756a

jr_001_750f:
    xor a
    ldh [$9c], a
    ld a, [$d3c0]
    cp $01
    jr nz, jr_001_755e

    ldh a, [$92]
    or a
    ret z

    ld a, [$dca2]
    cp $06
    jr z, jr_001_755e

    ld a, [$dcb7]
    or a
    ret z

    call Call_001_76b1
    ldh a, [$a2]
    add $18
    ldh [$b8], a
    add $08
    ldh [$b9], a
    ldh a, [$a1]
    add $07
    ldh [$b6], a
    add $01
    ldh [$b7], a
    call Call_001_76e8
    jr nc, jr_001_755e

    ld a, $06
    ldh [$9c], a
    ld [$dca2], a
    ld a, [$d3ba]
    res 7, a
    ld [$d3ba], a
    ld a, $ff
    ld [$d3c0], a
    ld a, $04
    ld [$d3b5], a

jr_001_755e:
    ldh a, [$95]
    inc a
    and $07
    ldh [$95], a
    ret nz

    xor a
    ldh [$91], a
    ret


jr_001_756a:
    ld a, [$dca2]
    cp $06
    jr nz, jr_001_750f

    ld a, [$d3be]
    ldh [$9a], a
    ld a, [$d3bf]
    ldh [$9b], a
    ld a, $04
    ld [$d3b5], a
    ld a, [$d3b3]
    ld l, a
    ld a, [$d3b4]
    ld h, a
    ld a, l
    ldh [$8f], a
    ld a, h
    ldh [$90], a
    ld a, [$d3b1]
    ld l, a
    ld a, [$d3b2]
    ld h, a
    ld de, $fff8
    add hl, de
    ld a, l
    ldh [$8d], a
    ld a, h
    ldh [$8e], a
    jr jr_001_755e

Call_001_75a2:
    ldh a, [$92]
    dec a
    jp nz, Jump_001_770f

    ldh a, [$a0]
    ld hl, $3048
    call Call_000_1b67
    ld de, $0002
    add hl, de
    ld a, [hl+]
    add a
    add a
    add a
    ld c, a
    ldh a, [$a1]
    ldh [$b6], a
    add c
    ldh [$b7], a
    ldh a, [$a2]
    ldh [$b8], a
    add $06
    ldh [$b9], a

Call_001_75c8:
    ld a, [$d3c5]
    ld e, a
    add $10
    ld l, a
    ld a, [$d3bf]
    ld c, a
    ld a, [$d3c6]
    add c
    add $1c
    ld d, a
    add $04
    ld h, a
    jp Jump_001_76e8


    ldh a, [$92]
    dec a
    jp nz, Jump_001_770f

    ldh a, [$a0]
    ld hl, $3048
    call Call_000_1b67
    ld de, $0002
    add hl, de
    ld a, [hl+]
    add a
    add a
    add a
    ld c, a
    ldh a, [$9a]
    ld b, a
    ldh a, [$a1]
    add b
    ldh [$b6], a
    add c
    ldh [$b7], a
    ldh a, [$9b]
    ld b, a
    ldh a, [$a2]
    add b
    ldh [$b8], a
    add $04
    ldh [$b9], a
    ld a, [$d3be]
    ld b, a
    ld a, [$d3c5]
    add b
    ld e, a
    add $10
    ld l, a
    ld a, [$d3bf]
    ld b, a
    ld a, [$d3c6]
    add b
    add $1c
    ld d, a
    add $04
    ld h, a
    jp Jump_001_76e8


Call_001_762b:
    ldh a, [$d8]
    ld hl, $3048
    call Call_000_1b67
    ld de, $0002
    add hl, de
    ld a, [hl+]
    add a
    add a
    add a
    ld c, a
    ldh a, [$d9]
    ldh [$b6], a
    add c
    ldh [$b7], a
    ld b, $08
    ld c, $08
    ldh a, [$a0]
    cp $37
    jr z, jr_001_765d

    cp $02
    jr z, jr_001_765d

    cp $38
    jr z, jr_001_765d

    ld a, [hl]
    add a
    add a
    add a
    add a
    ld c, a
    ld b, $00

jr_001_765d:
    ld a, [$c063]
    or a
    jr z, jr_001_766f

    ld a, [$c1ea]
    ld hl, $3a30
    call Call_000_1b61
    ld c, [hl]
    ld b, $00

jr_001_766f:
    ldh a, [$da]
    add b
    ldh [$b8], a
    add c
    ldh [$b9], a
    ret


Call_001_7678:
    ldh a, [$a0]
    ld hl, $3048
    call Call_000_1b67
    ld de, $0002
    add hl, de
    ld a, [hl+]
    add a
    add a
    add a
    ld c, a
    ldh a, [$a1]
    ldh [$b6], a
    add c
    ldh [$b7], a
    ld a, [hl]
    add a
    add a
    add a
    add a
    ld c, a
    ldh a, [$a2]
    ldh [$b8], a
    ldh a, [$a0]
    cp $15
    jr z, jr_001_76aa

    cp $30
    jr z, jr_001_76aa

    ldh a, [$b8]
    add c
    ldh [$b9], a
    ret


jr_001_76aa:
    ldh a, [$b8]
    add $08
    ldh [$b9], a
    ret


Call_001_76b1:
    ld a, [$d3c5]
    ld e, a
    add $10
    ld l, a
    ld a, [$d3ba]
    bit 2, a
    jr z, jr_001_76c9

    ld a, [$d3c6]
    add $10
    ld d, a
    add $10
    ld h, a
    ret


jr_001_76c9:
    ld a, [$d3c6]
    add $04
    ld d, a
    add $1c
    ld h, a
    ret


Call_001_76d3:
    xor a
    ld a, [$d3c9]
    dec a
    ret nz

    ldh a, [$a5]
    dec a
    ret nz

    ld a, [$d3c7]
    inc a
    ret nz

    call Call_001_7678
    call Call_001_76b1

Call_001_76e8:
Jump_001_76e8:
    ldh a, [$b6]
    sub e
    jr nc, jr_001_76f4

    ldh a, [$b7]
    sub e
    jr nc, jr_001_76f9

    jr jr_001_770f

jr_001_76f4:
    ldh a, [$b6]
    sub l
    jr nc, jr_001_770f

jr_001_76f9:
    ldh a, [$b8]
    sub d
    jr nc, jr_001_7705

    ldh a, [$b9]
    sub d
    jr nc, jr_001_770b

    jr jr_001_770f

jr_001_7705:
    ld a, [$ffb8]
    sub h
    jr nc, jr_001_770f

jr_001_770b:
    scf
    ld a, $ff
    ret


Jump_001_770f:
jr_001_770f:
    xor a
    ret


    ld a, [$c0e0]
    dec a
    ret nz

    ld [$c0e0], a
    ld hl, $9c0c
    ld c, $f6
    ld de, $c05f
    ld b, $02

jr_001_7723:
    ldh a, [rLCDC]
    and $80
    jr z, jr_001_7736

jr_001_7729:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_001_7729

jr_001_7730:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_7730

jr_001_7736:
    ld a, [de]
    and $f0
    swap a
    add c
    ld [hl+], a
    ld a, [de]
    and $0f
    add c
    ld [hl+], a
    inc de
    ld a, [de]
    and $f0
    swap a
    add c
    ld [hl+], a
    ld a, [de]
    and $0f
    add c
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_001_7723

    ret


Call_001_7754:
Jump_001_7754:
    ld a, [$c062]
    add e
    daa
    ld [$c062], a
    ld a, [$c061]
    adc d
    daa
    ld [$c061], a
    ld a, [$c060]
    adc c
    daa
    ld [$c060], a
    ld a, [$c05f]
    adc b
    daa
    ld [$c05f], a
    ld a, $01
    ld [$c0e0], a
    ret


    ld a, [$c1f8]
    dec a
    call z, Call_000_05b2
    ld a, [$c1fd]
    ld c, a
    ld a, [$c067]
    cp $30
    jr c, jr_001_778e

    ld a, $2f

jr_001_778e:
    cp c
    ret z

    ld [$c1fd], a
    inc a
    ldh [$b2], a
    ld hl, $9c21
    ldh a, [$b2]
    srl a
    srl a
    srl a
    ld b, a
    cpl
    inc a
    add $05
    cp $80
    jr c, jr_001_77ab

    xor a

jr_001_77ab:
    ld e, a
    or a
    jr nz, jr_001_77bb

    ldh a, [$b2]
    and $07
    jr nz, jr_001_77bb

    ld a, b
    cp $06
    jr z, jr_001_77bb

    inc e

jr_001_77bb:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_001_77bb

jr_001_77c2:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_77c2

    ld a, b
    or a
    jr z, jr_001_77d2

    ld a, $ec

jr_001_77ce:
    ld [hl+], a
    dec b
    jr nz, jr_001_77ce

jr_001_77d2:
    ldh a, [$b2]
    and $07
    jr z, jr_001_77db

    ld [hl], $ef
    inc hl

jr_001_77db:
    ld a, e
    or a
    jr z, jr_001_77f2

jr_001_77df:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_001_77df

jr_001_77e6:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_77e6

    ld a, $ee

jr_001_77ee:
    ld [hl+], a
    dec e
    jr nz, jr_001_77ee

jr_001_77f2:
    ldh a, [$b2]
    and $07
    ret z

    ld hl, $7926
    call Call_000_1b61
    ld c, [hl]
    ld hl, $8ec2
    ld de, $8ef2

jr_001_7804:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_001_7804

jr_001_780b:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_780b

    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e

jr_001_7829:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_001_7829

jr_001_7830:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_7830

    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ret


    and $e6
    rst $20
    add sp, -$17
    ld [$e6e6], a
    db $eb
    db $ec
    db $ec
    db $ec
    db $ec
    db $ec
    db $ec
    db $ed
    ld a, [$c1fb]
    or a
    jr z, jr_001_7869

    dec a
    ld [$c1fb], a
    ld hl, $c1fa
    ld a, [hl]
    or a
    jr z, jr_001_7869

    dec [hl]

jr_001_7869:
    ld a, [$c1fc]
    or a
    jr z, jr_001_7881

    dec a
    ld [$c1fc], a
    ld hl, $c1fa
    ld a, [hl]
    inc [hl]
    cp $3f
    jr nz, jr_001_7881

    dec [hl]
    xor a
    ld [$c1fc], a

jr_001_7881:
    ld a, [$c1fe]
    ld c, a
    ld a, [$c1fa]
    and $3f
    cp c
    ret z

    ld [$c1fe], a
    inc a
    ldh [$b2], a
    ld hl, $9c2c
    srl a
    srl a
    srl a
    ld b, a
    cpl
    inc a
    add $07
    cp $80
    jr c, jr_001_78a5

    xor a

jr_001_78a5:
    ld e, a
    ldh a, [$b2]
    and $07
    jr nz, jr_001_78b1

    ld a, e
    or a
    jr z, jr_001_78b1

    inc e

jr_001_78b1:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_001_78b1

jr_001_78b8:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_78b8

    ld a, b
    or a
    jr z, jr_001_78c8

    ld a, $e3

jr_001_78c4:
    ld [hl+], a
    dec b
    jr nz, jr_001_78c4

jr_001_78c8:
    ldh a, [$b2]
    and $07
    jr z, jr_001_78d1

    ld [hl], $e5
    inc hl

jr_001_78d1:
    ld a, e
    or a
    jr z, jr_001_78e8

jr_001_78d5:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_001_78d5

jr_001_78dc:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_78dc

    ld a, $e4

jr_001_78e4:
    ld [hl+], a
    dec e
    jr nz, jr_001_78e4

jr_001_78e8:
    ldh a, [$b2]
    and $07
    ret z

    ld hl, $7926
    call Call_000_1b61
    ld c, [hl]
    ld hl, $8e34
    ld de, $8e54

jr_001_78fa:
    ldh a, [rSTAT]
    cpl
    and $03
    jr nz, jr_001_78fa

jr_001_7901:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_001_7901

    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    inc e
    ld a, [hl+]
    and c
    ld [de], a
    ret


    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$04
    cp $4f
    cp $80
    jr c, jr_001_793f

    ldh a, [$c0]
    add c
    ldh [$c0], a
    ret c

    ldh a, [$c1]
    dec a
    ldh [$c1], a
    ret


jr_001_793f:
    ldh a, [$c0]
    add c
    ldh [$c0], a
    ret nc

    ldh a, [$c1]
    inc a
    ldh [$c1], a
    ret


    ld c, a
    cp $80
    jr c, jr_001_795c

    ldh a, [$c2]
    add c
    ldh [$c2], a
    ret c

    ldh a, [$c3]
    dec a
    ldh [$c3], a
    ret


jr_001_795c:
    ldh a, [$c2]
    add c
    ldh [$c2], a
    ret nc

    ldh a, [$c3]
    inc a
    ldh [$c3], a
    ret


Call_001_7968:
    ld c, a
    cp $80
    jr c, jr_001_7979

    ldh a, [$8d]
    add c
    ldh [$8d], a
    ret c

    ldh a, [$8e]
    dec a
    ldh [$8e], a
    ret


jr_001_7979:
    ldh a, [$8d]
    add c
    ldh [$8d], a
    ret nc

    ldh a, [$8e]
    inc a
    ldh [$8e], a
    ret


Call_001_7985:
Jump_001_7985:
    ld c, a
    cp $80
    jr c, jr_001_7996

    ldh a, [$8f]
    add c
    ldh [$8f], a
    ret c

    ldh a, [$90]
    dec a
    ldh [$90], a
    ret


jr_001_7996:
    ldh a, [$8f]
    add c
    ldh [$8f], a
    ret nc

    ldh a, [$90]
    inc a
    ldh [$90], a
    ret


    push af
    ld a, c
    cp $80
    jr c, jr_001_79b1

    pop af
    ccf
    ldh a, [$8e]
    sbc $00
    ldh [$8e], a
    ret


jr_001_79b1:
    pop af
    ldh a, [$8e]
    adc $00
    ldh [$8e], a
    ret


    push af
    ld a, c
    cp $80
    jr c, jr_001_79c8

    pop af
    ccf
    ldh a, [$90]
    sbc $00
    ldh [$90], a
    ret


jr_001_79c8:
    pop af
    ldh a, [$90]
    adc $00
    ldh [$90], a
    ret


Call_001_79d0:
    ldh a, [$8d]
    ld l, a
    ldh a, [$8e]
    ld h, a
    ldh a, [$c3]
    cpl
    ld d, a
    ldh a, [$c2]
    cpl
    inc a
    ld e, a
    jr nz, jr_001_79e6

    ld a, d
    or a
    jr z, jr_001_79e6

    inc d

jr_001_79e6:
    add hl, de
    ret


Call_001_79e8:
    ldh a, [$8f]
    ld l, a
    ldh a, [$90]
    ld h, a

Call_001_79ee:
    ld a, [$ffc1]
    cpl
    ld d, a
    ldh a, [$c0]
    cpl
    inc a
    ld e, a
    jr nz, jr_001_79ff

    ld a, d
    or a
    jr z, jr_001_79ff

    inc d

jr_001_79ff:
    add hl, de
    ret


    ld a, $a0
    ld [$c0d7], a
    ld a, $d3
    ld [$c0d8], a
    ld b, $10

Jump_001_7a0d:
    push bc
    ld a, b
    cpl
    inc a
    add $10
    ld c, a
    ldh [$b4], a
    add a
    ld hl, $d630
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_001_7ae3

    inc hl
    ld a, [hl]
    ldh [$b2], a
    ld b, $10
    ld hl, $d670

jr_001_7a2e:
    ld a, [hl]
    cp c
    jr z, jr_001_7a3d

    inc hl
    dec b
    jr nz, jr_001_7a2e

    ld hl, $7a2e
    jp Jump_001_7ad6


    ret


Jump_001_7a3d:
jr_001_7a3d:
    ld a, b
    ldh [$b5], a
    cpl
    inc a
    add $10
    ld de, $7a3d
    cp $11
    jp nc, Jump_000_1782

    add a
    ld de, $c08e
    jr nc, jr_001_7a53

    inc d

jr_001_7a53:
    add e
    ld e, a
    adc d
    sub e
    ld d, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld d, a
    ld e, c
    inc de
    inc de
    ld a, [$c0d7]
    ld c, a
    ld a, [$c0d8]
    ld b, a
    ld a, [bc]
    bit 7, a
    jr z, jr_001_7a72

    res 7, a
    xor $01
    ld [bc], a

jr_001_7a72:
    bit 0, a
    ld c, $00
    jr z, jr_001_7a7a

    ld c, $40

jr_001_7a7a:
    ldh a, [$b5]
    cpl
    inc a
    add $10
    ld hl, $c0b6
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, c
    add [hl]
    ld c, a
    ldh a, [$b2]
    ld l, $ff

jr_001_7a8f:
    sub $02
    inc l
    jr nc, jr_001_7a8f

    ld a, l
    or a
    ldh a, [$b2]
    jr z, jr_001_7a9c

    ld a, $02

jr_001_7a9c:
    ld b, a
    ld a, c

jr_001_7a9e:
    ld [de], a
    inc e
    inc e
    inc e
    inc e
    add $02
    dec b
    jr nz, jr_001_7a9e

    ldh a, [$b2]
    sub $02
    ldh [$b2], a
    jr z, jr_001_7adb

    jr c, jr_001_7adb

    ldh a, [$b5]
    dec a
    ldh [$b5], a
    ld hl, $7ab7
    jr z, jr_001_7ad6

    ld b, a
    cpl
    inc a
    add $10
    ld hl, $d670
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ldh a, [$b4]

jr_001_7acb:
    cp [hl]
    jp z, Jump_001_7a3d

    inc hl
    dec b
    jr nz, jr_001_7acb

    ld hl, $7acb

Jump_001_7ad6:
jr_001_7ad6:
    pop bc
    jp Jump_000_177a


    ret


jr_001_7adb:
    ld a, [$c0d7]
    ld l, a
    ld a, [$c0d8]
    ld h, a

Jump_001_7ae3:
    pop bc
    ld a, [$c0d7]
    add $01
    ld [$c0d7], a
    ld a, [$c0d8]
    adc $00
    ld [$c0d8], a
    dec b
    jp nz, Jump_001_7a0d

    ret


    ld b, $10
    ld hl, $d630

Jump_001_7afe:
jr_001_7afe:
    ld a, [hl+]
    inc a
    jr nz, jr_001_7b0c

    inc hl
    dec b
    jr nz, jr_001_7afe

    ld a, $01
    ld [$d3b6], a
    ret


jr_001_7b0c:
    push hl
    push bc
    ld c, [hl]
    dec a
    ldh [$b2], a
    ld hl, $c2a0
    call Call_000_1b67
    ld a, c
    ldh [$b3], a
    ld a, b
    cpl
    inc a
    add $10
    ldh [$b5], a
    push hl
    ld de, $000e
    add hl, de
    ld b, [hl]
    ld [hl], $00
    inc hl
    ld c, [hl]
    ld [hl], $00
    ld de, $fff2
    add hl, de
    ld a, c
    cp $80
    jr c, jr_001_7b41

    ld a, [hl]
    add c
    ld [hl+], a
    ldh [$8d], a
    jr c, jr_001_7b49

    dec [hl]
    jr jr_001_7b49

jr_001_7b41:
    ld a, [hl]
    add c
    ld [hl+], a
    ldh [$8d], a
    jr nc, jr_001_7b49

    inc [hl]

jr_001_7b49:
    ld a, [hl+]
    ldh [$8e], a
    ld a, b
    cp $80
    jr c, jr_001_7b59

    ld a, [hl]
    add b
    ld [hl+], a
    jr c, jr_001_7b5f

    dec [hl]
    jr jr_001_7b5f

jr_001_7b59:
    ld a, [hl]
    add b
    ld [hl+], a
    jr nc, jr_001_7b5f

    inc [hl]

jr_001_7b5f:
    push hl
    ld de, $0002
    add hl, de
    ld a, [hl]
    ldh [$92], a
    ld [hl], $00
    pop hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ffc1]
    cpl
    ld d, a
    ldh a, [$c0]
    cpl
    inc a
    ld e, a
    jr nz, jr_001_7b7f

    ld a, d
    or a
    jr z, jr_001_7b7f

    inc d

jr_001_7b7f:
    add hl, de
    ld a, h
    cp $ff
    jr nz, jr_001_7b8a

    ld a, l
    cp $b0
    jr nc, jr_001_7b93

jr_001_7b8a:
    ld a, h
    or a
    jr nz, jr_001_7bbf

    ld a, l
    cp $e0
    jr nc, jr_001_7bbf

jr_001_7b93:
    ldh [$b6], a
    ldh a, [$8d]
    ld l, a
    ldh a, [$8e]
    ld h, a
    ldh a, [$c3]
    cpl
    ld d, a
    ldh a, [$c2]
    cpl
    inc a
    ld e, a
    jr nz, jr_001_7bab

    ld a, d
    or a
    jr z, jr_001_7bab

    inc d

jr_001_7bab:
    add hl, de
    ld a, h
    cp $ff
    jr nz, jr_001_7bb6

    ld a, l
    cp $a0
    jr nc, jr_001_7bd4

jr_001_7bb6:
    ld a, h
    or a
    jr nz, jr_001_7bbf

    ld a, l
    cp $e0
    jr c, jr_001_7bd4

jr_001_7bbf:
    ldh a, [$b5]
    ld hl, $d660
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ldh a, [$92]
    cp [hl]
    ld [hl], a
    pop hl
    jp z, Jump_001_7d65

    jp Jump_001_7d72


jr_001_7bd4:
    ldh [$b8], a
    pop hl
    ld de, $0015
    add hl, de
    ldh a, [$b6]
    ldh [$a1], a
    ld [hl+], a
    ldh a, [$b8]
    ldh [$a2], a
    ld [hl], a
    ld de, $fff0
    add hl, de
    ld [hl], $01
    ld de, $0013
    add hl, de
    ld [hl], $00
    push hl
    call Call_000_0f10
    pop hl
    jp c, Jump_001_7d65

    ld [hl], $01
    ld de, $fff1
    add hl, de
    ld a, [hl]
    ldh [$96], a
    ld de, $000a
    add hl, de
    ld a, [hl]
    ldh [$a0], a
    ldh a, [$b5]
    ld hl, $d660
    call Call_000_1b61
    ld [hl], $01
    ldh a, [$a0]
    or a
    jr nz, jr_001_7c27

    ld hl, $30bc
    ld a, [$dca2]
    cp $01
    jr nz, jr_001_7c2d

    ld hl, $30e4
    jr jr_001_7c2d

jr_001_7c27:
    ld hl, $3048
    call Call_000_1b67

jr_001_7c2d:
    ld de, $0002
    add hl, de
    ld a, [hl]
    ldh [$b4], a
    ld de, $0006
    add hl, de
    push hl
    ldh a, [$b5]
    call Call_000_1da1

Jump_001_7c3e:
    ld a, b
    ld [$c0d2], a
    ld a, c
    ld [$c0d1], a
    cp $11
    ld hl, $7c3e
    jp nc, Jump_000_1782

    ld hl, $c08e
    add a
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    ldh a, [$b3]
    cp $02
    jr c, jr_001_7c63

    ld a, $02

jr_001_7c63:
    ld b, a
    ld [$c0d3], a
    ldh a, [$96]
    bit 0, a
    jp z, Jump_001_7d1b

    ldh a, [$b4]
    dec a
    jp z, Jump_001_7d1b

    ldh a, [$b4]
    dec a
    add a
    ld c, a
    ld a, l
    ld [$c0d5], a
    ld a, h
    ld [$c0d6], a
    ld b, $00
    add hl, bc
    ldh a, [$b4]
    ld [$c0d4], a
    ld a, [$c0d3]
    ld b, a

Jump_001_7c8d:
jr_001_7c8d:
    ldh a, [$b8]
    add [hl]
    ld [de], a
    inc hl
    inc e
    ldh a, [$b6]
    add [hl]
    ld [de], a
    inc e
    inc e
    ld a, [de]
    or $20
    ld [de], a
    inc e
    dec hl
    dec hl
    dec hl
    ld a, [$c0d4]
    dec a
    ld [$c0d4], a
    jr nz, jr_001_7cbf

    ld a, [$c0d5]
    ld l, a
    ld a, [$c0d6]
    ld h, a
    ldh a, [$b4]
    ld [$c0d4], a
    add a
    add c
    ld c, a
    add l
    ld l, a
    adc h
    sub l
    ld h, a

jr_001_7cbf:
    dec b
    jr nz, jr_001_7c8d

    ld a, [$c0d3]
    ld b, a
    ldh a, [$b3]
    sub b
    jp z, Jump_001_7d65

    jp c, Jump_001_7d65

    ldh [$b3], a
    ld a, [$c0d2]
    ld b, a
    dec a
    jp z, Jump_001_7d65

    jp c, Jump_001_7d65

    push bc
    ld a, [$c0d1]
    ld c, a
    push hl
    inc a
    ld hl, $d670
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ldh a, [$b5]
    ld e, a
    call Call_000_1da9
    ld a, b
    ld [$c0d2], a
    ld a, c
    ld [$c0d1], a
    cp $11
    jp nc, Jump_000_1782

    ld hl, $c08e
    add a
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    pop bc
    ldh a, [$b3]
    cp $02
    jr c, jr_001_7d14

    ld a, $02

jr_001_7d14:
    ld b, a
    ld [$c0d3], a
    jp Jump_001_7c8d


Jump_001_7d1b:
jr_001_7d1b:
    ldh a, [$b8]
    add [hl]
    ld [de], a
    inc hl
    inc e
    ldh a, [$b6]
    add [hl]
    ld [de], a
    inc hl
    inc e
    inc e
    ld a, [de]
    and $df
    ld [de], a
    inc e
    dec b
    jr nz, jr_001_7d1b

    ld a, [$c0d3]
    ld c, a
    ldh a, [$b3]
    sub c
    jr z, jr_001_7d65

    jr c, jr_001_7d65

    ldh [$b3], a
    ld a, [$c0d2]
    ld b, a
    dec a
    jr z, jr_001_7d65

    jr c, jr_001_7d65

    ld a, [$c0d1]
    ld c, a
    push hl
    inc a
    ld hl, $d670
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ldh a, [$b5]
    ld e, a

jr_001_7d57:
    inc c
    dec b
    ld a, [hl+]
    cp e
    jp z, Jump_001_7c3e

    ld a, b
    or a
    jr nz, jr_001_7d57

    jp Jump_001_7c3e


Jump_001_7d65:
jr_001_7d65:
    pop bc
    pop hl
    inc hl
    dec b
    jp nz, Jump_001_7afe

    ld a, $01
    ld [$d3b6], a
    ret


Jump_001_7d72:
    ldh a, [$b5]
    ld e, a
    ld hl, $d670
    ld b, $10
    ld c, $ff

jr_001_7d7c:
    inc c
    dec b
    ld a, [hl+]
    cp e
    jr z, jr_001_7d88

    ld a, b
    or a
    jr nz, jr_001_7d7c

    jr jr_001_7d65

jr_001_7d88:
    push bc
    push hl
    ld a, c
    cp $10
    ld hl, $7d88
    jp nc, Jump_000_1782

    ld hl, $c08e
    add a
    jr nc, jr_001_7d9a

    inc h

jr_001_7d9a:
    add l
    ld l, a
    adc h
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld b, $02

jr_001_7da3:
    ld l, a
    ld [hl], $00
    add $04
    dec b
    jr nz, jr_001_7da3

    pop hl
    pop bc
    ld a, b
    or a
    jp z, Jump_001_7d65

    jr jr_001_7d7c

Call_001_7db4:
    ldh [$b2], a
    ld b, $10
    ld de, $001b
    ld hl, $d3b0

jr_001_7dbe:
    ld a, [hl]
    cp $ff
    jr z, jr_001_7dc9

    add hl, de
    dec b
    jr nz, jr_001_7dbe

    scf
    ret


jr_001_7dc9:
    ld a, b
    cpl
    inc a
    add $10
    ldh [$b3], a
    ld a, l
    ld [$c0d5], a
    ld e, a
    ld a, h
    ld [$c0d6], a
    ld d, a
    ld hl, $1dc4
    ld bc, $001b
    call Call_000_1ace
    push de
    ldh a, [$b2]
    ld hl, $3048
    call Call_000_1b67
    ld a, e
    sub $09
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    push hl
    ld b, $10
    ld hl, $d630

jr_001_7dff:
    ld a, [hl]
    cp $ff
    jr z, jr_001_7e26

    inc hl
    inc hl
    dec b
    jr nz, jr_001_7dff

    pop hl
    pop hl
    ld a, [$c0d5]
    ld l, a
    ld a, [$c0d6]
    ld h, a
    ld e, l
    ld d, h
    inc de
    ld bc, $001a
    ld [hl], $ff
    call Call_000_1ace
    scf
    ret


    ld hl, $7dff
    jp Jump_000_177a


jr_001_7e26:
    ld a, l
    ld [$c0d9], a
    ld a, h
    ld [$c0da], a
    ldh a, [$b3]
    ld [hl+], a
    pop de
    inc de
    inc de
    ld a, [de]
    ldh [$b4], a
    ld [hl], a
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ldh [$b5], a
    pop hl
    ld de, $ffe5
    add hl, de
    ld [hl], c
    push hl
    ld de, $0014
    add hl, de
    ldh a, [$b2]
    ld [hl], a
    ld de, $0003
    add hl, de
    ld [hl], b
    ld de, $0003
    add hl, de
    ldh a, [$b5]
    ld [hl], a
    ld c, $00

jr_001_7e5e:
    ld a, c
    add $02
    ld c, a
    ld hl, $d670
    ld b, $10

jr_001_7e67:
    ld a, [hl]
    cp $ff
    jr z, jr_001_7e99

    inc hl
    dec b
    jr nz, jr_001_7e67

    pop hl
    ld a, [$c0d5]
    ld l, a
    ld a, [$c0d6]
    ld h, a
    ld e, l
    ld d, h
    inc de
    ld bc, $001a
    ld [hl], $ff
    call Call_000_1ace
    ld a, [$c0d9]
    ld l, a
    ld a, [$c0da]
    ld h, a
    ld [hl], $ff
    inc hl
    ld [hl], $ff
    scf
    ret


    ld hl, $7e93
    jp Jump_000_177a


jr_001_7e99:
    ldh a, [$b3]
    ld [hl], a
    ldh a, [$b4]
    cp c
    jr z, jr_001_7ea3

    jr nc, jr_001_7e5e

jr_001_7ea3:
    ldh a, [$b3]
    ld hl, $d650
    call Call_000_1b61
    ld [hl], $ff
    pop hl
    xor a
    ret


    ldh [rP1], a
    rst $18
    ld [bc], a
    cp a
    ld [bc], a
    cp a
    ld [bc], a
    and b
    nop
    ld a, l
    dec b
    ld d, a
    db $10
    ld b, l
    nop
    ccf
    nop
    rst $18
    nop
    rst $28
    add b
    rst $28
    nop
    cpl
    nop
    rst $30
    nop
    ld d, a
    ld b, b
    rla
    nop
    and a
    dec b
    ld c, a
    ld [bc], a
    ld b, b
    nop
    ld h, a
    jr nz, @-$4e

    db $10
    rst $18
    dec b
    rst $28
    nop
    ldh a, [rP1]
    cpl
    nop
    sub a
    nop
    rla
    nop
    or a
    jr nz, jr_001_7f58

    ld b, b
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    ldh a, [$08]
    di
    inc b
    rst $30
    nop
    ldh a, [$08]
    rst $38
    nop
    ei
    ld [$04f0], sp
    rst $38
    nop
    jr nc, @-$76

    ld h, d
    ld d, l
    rst $20
    ld [$402f], sp
    daa
    adc b
    and d
    dec d
    jr nc, jr_001_7f56

    rst $38
    nop
    pop hl
    sub d
    ld c, h
    ld hl, $12cc
    sbc $00
    call z, Call_001_4c12
    ld hl, $92e1
    rst $38
    nop
    pop bc
    ld b, d
    db $dd
    nop
    db $dd
    nop
    pop bc
    ld [bc], a
    db $dd
    nop
    db $dd
    nop
    db $dd
    ld d, l
    rst $38
    nop
    add c
    add b
    cp a
    ld [bc], a
    cp a
    nop
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
    ei
    ld a, [bc]
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld hl, sp+$08
    rst $38
    nop
    pop af
    ld de, $11ea
    ei
    nop

jr_001_7f56:
    ei
    nop

jr_001_7f58:
    ei
    nop
    ld [$3151], a
    ld de, $00ff
    db $dd
    ld b, c
    db $dd
    nop
    ret


    inc d
    ret


    ld [hl+], a
    db $e3
    ld [$14e3], sp
    rst $30
    nop
    rst $38
    nop
    ret nz

    ld b, b
    rst $18
    ld bc, $00df
    jp $df02


    nop
    rst $18
    ld bc, $40c0
    rst $38
    nop
    add c
    ld b, h
    sbc e
    ld [hl+], a
    cp a
    nop
    add c
    ld b, d
    ld sp, hl
    inc b
    db $dd
    ld b, b
    add c
    ld [hl+], a
    rst $38
    nop
    ld sp, hl
    inc b
    db $dd
    ld b, b
    add c
    ld [hl+], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
