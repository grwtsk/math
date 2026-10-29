# Divisor Sum — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3601cbd227fcc663339d52ebac04da6552e7a747` · SHA-256 `8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Data.Finset.NatDivisors

/-!
# Folder.Rebuild.NumberTheory.DivisorSum

Finite divisor sums for arithmetic functions.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

noncomputable def divisorSum
    [AddCommMonoid R]
    (f : ArithFn R) : ArithFn R :=
  fun n => ∑ d ∈ Nat.divisors n, f d

theorem divisorSum_one
    [AddCommMonoid R]
    (f : ArithFn R) :
    divisorSum f 1 = f 1 := by
  simp [divisorSum]

theorem divisorSum_congr
    [AddCommMonoid R]
    {f g : ArithFn R}
    (h : ∀ n, f n = g n) :
    divisorSum f = divisorSum g := by
  funext n
  simp [divisorSum, h]

end NumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03340c8802466ee54e710a8478655cedb04fbef74ea5c08c9b9977a1b3225160 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
