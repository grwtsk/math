# Complete source: GRWTSK.Algebra.UniversalAlgebra.TorsionComplex.Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88a5295ea5459d0703861b2983e87cd695546ba1` · SHA-256 `1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.BigOperators.Fin

/-!
# Folder.Rebuild.Derived.TorsionComplex

A finite combinatorial shadow complex for the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace Derived

open scoped BigOperators

structure FiniteTorsionComplex where
  degreeBound : Nat
  C : Fin degreeBound → Type
  zero : ∀ i, C i
  torsionRank : Fin degreeBound → Nat
  differentialRank : Fin degreeBound → Nat

def torsionMass
    (K : FiniteTorsionComplex) : Nat :=
  ∑ i : Fin K.degreeBound, K.torsionRank i

def eulerShadow
    (K : FiniteTorsionComplex) : Int :=
  ∑ i : Fin K.degreeBound,
    (-1 : Int) ^ i.val * (K.torsionRank i : Int)

theorem torsionMass_nonnegative
    (K : FiniteTorsionComplex) :
    0 ≤ torsionMass K :=
  Nat.zero_le _

theorem torsionMass_identity
    (K : FiniteTorsionComplex) :
    torsionMass K = torsionMass K :=
  rfl

theorem eulerShadow_identity
    (K : FiniteTorsionComplex) :
    eulerShadow K = eulerShadow K :=
  rfl

theorem mass_nonincreasing_comp
    {A B C : FiniteTorsionComplex}
    (hAB : torsionMass B ≤ torsionMass A)
    (hBC : torsionMass C ≤ torsionMass B) :
    torsionMass C ≤ torsionMass A :=
  le_trans hBC hAB

end Derived
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f88fba65e37f73905e6ac704ce5a8e748367dd274c6d443854f74fdca20aebc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
