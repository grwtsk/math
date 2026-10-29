namespace Color

abbrev Byte := Nat

structure RGB where
  red : Byte
  green : Byte
  blue : Byte
deriving Repr, DecidableEq

def RGB.black : RGB := { red := 0, green := 0, blue := 0 }

def RGB.white : RGB := { red := 255, green := 255, blue := 255 }

def RGB.redPrimary : RGB := { red := 255, green := 0, blue := 0 }

def RGB.greenPrimary : RGB := { red := 0, green := 255, blue := 0 }

def RGB.bluePrimary : RGB := { red := 0, green := 0, blue := 255 }

theorem RGB.white_red_eq : RGB.white.red = 255 := rfl

end Color
