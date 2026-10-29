/-
The positive module proves actual nonvacuity and that the value at zero has cube zero.
Original OpenAI/Mathlib Apache-2.0 notices remain attached to the imported source.
-/
import GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicCharacters

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.Checks.Negative

open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction

-- Intended rejection: character equality to the trivial character is not pointwise cube=1 at zero.
example (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood 0 ^ 3 = 1 :=
  cubicChar_pow_three P hgood

end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.Checks.Negative
