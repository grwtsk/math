/-
Actual cubic Jacobi wrong-sign rejection control.
Imported OpenAI/Mathlib Apache-2.0 credit and contribution limits remain retained.
Human mathematical direction: grwtsk contributors; formalization: OpenAI Codex.
-/
import GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi.Checks.Negative

open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters

/-- Intended rejection: the accepted producer proves J+1 divisibility, not the false J-1 claim. -/
example (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    lambda ^ 2 ∣ jacobiSum (cubicChar P hgood) (cubicChar P hgood) - 1 :=
  lambda_sq_dvd_cubicJacobi_add_one P hgood

end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi.Checks.Negative
